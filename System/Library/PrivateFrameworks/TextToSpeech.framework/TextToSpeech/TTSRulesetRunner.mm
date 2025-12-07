@interface TTSRulesetRunner
- (NSNumber)ruleCount;
- (TTSRulesetRunner)init;
- (id)_computeActiveRanges:(id)ranges withIgnoreRanges:(id)ignoreRanges;
- (id)_ignoreRangesForString:(id)string;
- (id)_processSpeechString:(id)string startingAt:(unint64_t)at currentRecursionDepth:(unint64_t)depth;
- (id)_processTemplateReplacementTextForText:(id)text replacement:(id)replacement cString:(const char *)string;
- (id)processText:(id)text;
- (void)_recomputeRuleOrdering;
- (void)cancelProcessing;
- (void)loadRuleSet:(id)set;
- (void)reset;
- (void)unloadRuleset:(id)ruleset;
@end

@implementation TTSRulesetRunner

- (TTSRulesetRunner)init
{
  v12.receiver = self;
  v12.super_class = TTSRulesetRunner;
  v2 = [(TTSRulesetRunner *)&v12 init];
  if (v2)
  {
    array = [MEMORY[0x1E695DF70] array];
    ruleReplacements = v2->_ruleReplacements;
    v2->_ruleReplacements = array;

    array2 = [MEMORY[0x1E695DF70] array];
    ruleSets = v2->_ruleSets;
    v2->_ruleSets = array2;

    v7 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x1E69E96A8], QOS_CLASS_USER_INTERACTIVE, -1);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(v7, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);

    v9 = dispatch_queue_create("ttsruleset.execution", v8);
    regexExecutionQueue = v2->_regexExecutionQueue;
    v2->_regexExecutionQueue = v9;
  }

  return v2;
}

- (void)reset
{
  array = [MEMORY[0x1E695DF70] array];
  ruleReplacements = self->_ruleReplacements;
  self->_ruleReplacements = array;

  self->_ruleSets = [MEMORY[0x1E695DF70] array];

  MEMORY[0x1EEE66BB8]();
}

- (void)loadRuleSet:(id)set
{
  [(NSMutableArray *)self->_ruleSets addObject:set];

  MEMORY[0x1EEE66B58](self, sel__recomputeRuleOrdering);
}

- (void)unloadRuleset:(id)ruleset
{
  [(NSMutableArray *)self->_ruleSets removeObject:ruleset];

  MEMORY[0x1EEE66B58](self, sel__recomputeRuleOrdering);
}

- (void)_recomputeRuleOrdering
{
  v28 = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self->_ruleReplacements removeAllObjects];
  ruleSets = [(TTSRulesetRunner *)self ruleSets];
  [ruleSets sortUsingComparator:&unk_1F1CEDB28];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [(TTSRulesetRunner *)self ruleSets];
  v4 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      v7 = 0;
      do
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v22 + 1) + 8 * v7);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        ruleReplacements = [v8 ruleReplacements];
        v10 = [ruleReplacements countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v19;
          do
          {
            v13 = 0;
            do
            {
              if (*v19 != v12)
              {
                objc_enumerationMutation(ruleReplacements);
              }

              v14 = *(*(&v18 + 1) + 8 * v13);
              ruleReplacements2 = [(TTSRulesetRunner *)self ruleReplacements];
              [v14 setIndex:{objc_msgSend(ruleReplacements2, "count")}];

              ruleReplacements3 = [(TTSRulesetRunner *)self ruleReplacements];
              [ruleReplacements3 addObject:v14];

              ++v13;
            }

            while (v11 != v13);
            v11 = [ruleReplacements countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v11);
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v5);
  }
}

- (id)processText:(id)text
{
  textCopy = text;
  if (textCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(TTSRulesetRunner *)selfCopy setExecuting:1];
    v6 = [[TTSSpeechString alloc] initWithOriginalString:textCopy];
    preRuleWriter = [(TTSRulesetRunner *)selfCopy preRuleWriter];

    if (preRuleWriter)
    {
      preRuleWriter2 = [(TTSRulesetRunner *)selfCopy preRuleWriter];
      v9 = (preRuleWriter2)[2](preRuleWriter2, v6);

      if ([(TTSSpeechString *)v9 finalized])
      {
        v6 = [[TTSSpeechString alloc] initWithParentSpeechString:v9];
      }

      else
      {
        v6 = v9;
      }
    }

    v11 = [(TTSRulesetRunner *)selfCopy _processSpeechString:v6 startingAt:0 currentRecursionDepth:0];
    postRuleWriter = [(TTSRulesetRunner *)selfCopy postRuleWriter];

    if (postRuleWriter)
    {
      if ([v11 finalized])
      {
        v13 = [[TTSSpeechString alloc] initWithParentSpeechString:v11];

        v11 = v13;
      }

      postRuleWriter2 = [(TTSRulesetRunner *)selfCopy postRuleWriter];
      v15 = (postRuleWriter2)[2](postRuleWriter2, v11);

      v11 = v15;
    }

    if ([v11 finalized])
    {
      v16 = [[TTSSpeechString alloc] initWithParentSpeechString:v11];

      v11 = v16;
    }

    v17 = +[TTSRegexCache sharedInstance];
    v18 = [v17 regexForString:@"__AXTTS_SHIELDS_(UP|DOWN)__" atStart:0];

    originalString = [v11 originalString];
    originalString2 = [v11 originalString];
    v21 = [originalString2 length];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = sub_1A9348B04;
    v23[3] = &unk_1E7880458;
    v10 = v11;
    v24 = v10;
    [v18 enumerateMatchesInString:originalString options:2 range:0 usingBlock:{v21, v23}];

    [(TTSRulesetRunner *)selfCopy setExecuting:0];
    objc_sync_exit(selfCopy);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)cancelProcessing
{
  if ([(TTSRulesetRunner *)self executing])
  {
    [(TTSRulesetRunner *)self setShouldAbort:1];
    obj = self;
    objc_sync_enter(obj);
    [(TTSRulesetRunner *)obj setShouldAbort:0];
    objc_sync_exit(obj);
  }
}

- (NSNumber)ruleCount
{
  v2 = MEMORY[0x1E696AD98];
  ruleReplacements = [(TTSRulesetRunner *)self ruleReplacements];
  v4 = [v2 numberWithUnsignedInteger:{objc_msgSend(ruleReplacements, "count")}];

  return v4;
}

- (id)_ignoreRangesForString:(id)string
{
  stringCopy = string;
  v4 = [stringCopy rangeOfString:@"__AXTTS_SHIELDS_UP__"];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    array = MEMORY[0x1E695E0F0];
    goto LABEL_27;
  }

  v7 = v4;
  v8 = v4 + v5;
  array = [MEMORY[0x1E695DF70] array];
  if (v8 >= [stringCopy length])
  {
    goto LABEL_26;
  }

  v24 = array;
  v9 = 1;
  while (1)
  {
    v10 = [stringCopy length];
    v11 = v10 - v8;
    v12 = [stringCopy rangeOfString:@"__AXTTS_SHIELDS_UP__" options:2 range:{v8, v10 - v8}];
    v14 = v13;
    v15 = [stringCopy rangeOfString:@"__AXTTS_SHIELDS_DOWN__" options:2 range:{v8, v11}];
    v17 = v12 == 0x7FFFFFFFFFFFFFFFLL || v12 > v15;
    v18 = v17;
    if (v15 == 0x7FFFFFFFFFFFFFFFLL || !v18)
    {
      break;
    }

    if (--v9)
    {
      v8 = v15 + v16;
      goto LABEL_20;
    }

    v8 = v15 + v16;
    v20 = [MEMORY[0x1E696B098] valueWithRange:{v7, v15 + v16 - v7}];
    [v24 addObject:v20];

    v7 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_24:
    if (v8 >= [stringCopy length])
    {
      goto LABEL_25;
    }
  }

  if (v9)
  {
    v19 = v7;
  }

  else
  {
    v19 = v12;
  }

  if (v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
    ++v9;
    v7 = v19;
    v8 = v12 + v14;
  }

LABEL_20:
  if (v12 != 0x7FFFFFFFFFFFFFFFLL || v15 != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_24;
  }

LABEL_25:
  v21 = v9 == 0;
  array = v24;
  if (!v21)
  {
LABEL_26:
    v22 = [MEMORY[0x1E696B098] valueWithRange:{v7, objc_msgSend(stringCopy, "length") - v7}];
    [array addObject:v22];
  }

LABEL_27:

  return array;
}

- (id)_computeActiveRanges:(id)ranges withIgnoreRanges:(id)ignoreRanges
{
  v34 = *MEMORY[0x1E69E9840];
  ignoreRangesCopy = ignoreRanges;
  v6 = [ranges mutableCopy];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = ignoreRangesCopy;
  v28 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v28)
  {
    v27 = *v30;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v30 != v27)
        {
          objc_enumerationMutation(obj);
        }

        rangeValue = [*(*(&v29 + 1) + 8 * i) rangeValue];
        v10 = v9;
        if ([v6 count])
        {
          v11 = 0;
          v12 = v10 + rangeValue;
          while (1)
          {
            v13 = [v6 objectAtIndexedSubscript:v11];
            rangeValue2 = [v13 rangeValue];
            v16 = v15;

            v36.location = rangeValue2;
            v36.length = v16;
            v37.location = rangeValue;
            v37.length = v10;
            v17 = NSIntersectionRange(v36, v37);
            if (rangeValue2 >= v12)
            {
              goto LABEL_23;
            }

            if (!v17.length)
            {
              goto LABEL_21;
            }

            v18 = rangeValue - rangeValue2;
            if (rangeValue > rangeValue2)
            {
              break;
            }

            if (v17.location != rangeValue2 || v16 != v17.length)
            {
              v21 = MEMORY[0x1E696B098];
              v22 = rangeValue2 + v16 - v12;
              v23 = v10 + rangeValue;
LABEL_20:
              v24 = [v21 valueWithRange:{v23, v22}];
              [v6 setObject:v24 atIndexedSubscript:v11];

LABEL_21:
              ++v11;
              goto LABEL_22;
            }

            [v6 removeObjectAtIndex:{v11, v18}];
LABEL_22:
            if (v11 >= [v6 count])
            {
              goto LABEL_23;
            }
          }

          if (v17.location == rangeValue && v17.length == v10)
          {
            v19 = [MEMORY[0x1E696B098] valueWithRange:{rangeValue2, v18}];
            [v6 setObject:v19 atIndexedSubscript:v11];

            if (v16 + rangeValue2 != v12)
            {
              v20 = [MEMORY[0x1E696B098] valueWithRange:{v10 + rangeValue, v16 + rangeValue2 - v12}];
              [v6 insertObject:v20 atIndex:++v11];
            }

            goto LABEL_22;
          }

          v21 = MEMORY[0x1E696B098];
          v22 = v16 - v17.length;
          v23 = rangeValue2;
          goto LABEL_20;
        }

LABEL_23:
        ;
      }

      v28 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v28);
  }

  return v6;
}

- (id)_processSpeechString:(id)string startingAt:(unint64_t)at currentRecursionDepth:(unint64_t)depth
{
  v101 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  ruleCount = [(TTSRulesetRunner *)self ruleCount];
  unsignedLongValue = [ruleCount unsignedLongValue];

  if (unsignedLongValue > at)
  {
    depthCopy = depth;
    v71 = stringCopy;
    transformedString = [stringCopy transformedString];
    v12 = [(TTSRulesetRunner *)self _ignoreRangesForString:transformedString];
    v78 = [transformedString cStringUsingEncoding:4];
    v66 = transformedString;
    v79 = [transformedString lengthOfBytesUsingEncoding:4];
    array = [MEMORY[0x1E695DF70] array];
    ruleCount2 = [(TTSRulesetRunner *)self ruleCount];
    atCopy = at;
    iterations = [ruleCount2 unsignedLongValue] - at;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    obj = [(TTSRulesetRunner *)self ruleSets];
    v14 = [obj countByEnumeratingWithState:&v94 objects:v100 count:16];
    selfCopy = self;
    if (v14)
    {
      v15 = v14;
      v16 = *v95;
      v17 = 0x1E696B000uLL;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v95 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v94 + 1) + 8 * i);
          v20 = [*(v17 + 152) valueWithPointer:v19];
          array2 = [MEMORY[0x1E695DF70] array];
          activationRegex = [v19 activationRegex];

          if (activationRegex)
          {
            activationRegex2 = [v19 activationRegex];
            v92[0] = MEMORY[0x1E69E9820];
            v92[1] = 3221225472;
            v92[2] = sub_1A93498E8;
            v92[3] = &unk_1E7880328;
            v24 = array2;
            v93 = v24;
            [activationRegex2 enumerateMatchesInCString:v78 length:v79 usingBlock:v92];

            v25 = v93;
          }

          else
          {
            v25 = [*(v17 + 152) valueWithRange:{0, v79}];
            v99 = v25;
            [MEMORY[0x1E695DEC8] arrayWithObjects:&v99 count:1];
            v27 = v26 = v12;
            v24 = [v27 mutableCopy];

            v12 = v26;
            self = selfCopy;
          }

          v28 = [(TTSRulesetRunner *)self _computeActiveRanges:v24 withIgnoreRanges:v12];
          [dictionary setObject:v28 forKeyedSubscript:v20];

          v17 = 0x1E696B000;
        }

        v15 = [obj countByEnumeratingWithState:&v94 objects:v100 count:16];
      }

      while (v15);
    }

    regexExecutionQueue = [(TTSRulesetRunner *)self regexExecutionQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A9349958;
    block[3] = &unk_1E78804A8;
    block[4] = self;
    v89 = atCopy;
    v30 = dictionary;
    v86 = v30;
    v90 = v79;
    v91 = v78;
    v77 = v66;
    v87 = v77;
    v31 = array;
    v88 = v31;
    dispatch_apply(iterations, regexExecutionQueue, block);

    if (![v31 count])
    {
      v37 = AXTTSLogCommon();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        sub_1A9578824(depthCopy);
      }

      stringCopy = v71;
      v36 = v71;
      goto LABEL_42;
    }

    [v31 sortUsingComparator:&unk_1F1CEFCF8];
    v32 = [v31 indexOfObjectPassingTest:&unk_1F1CEFD18];
    v63 = v12;
    obja = v30;
    v69 = v31;
    if (v32 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v33 = v71;
      if (depthCopy <= 0x31)
      {
        v41 = v31;
        v67 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_26;
      }

      effectiveIndex = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v38 = v32;
      v39 = [v31 objectAtIndexedSubscript:v32];
      ruleReplacement = [v39 ruleReplacement];
      effectiveIndex = [ruleReplacement effectiveIndex];

      v33 = v71;
      if (depthCopy < 0x32)
      {
        v42 = [v31 subarrayWithRange:{0, v38}];
        v84[0] = MEMORY[0x1E69E9820];
        v84[1] = 3221225472;
        v84[2] = sub_1A9349D50;
        v84[3] = &unk_1E7880508;
        v67 = effectiveIndex;
        v84[4] = effectiveIndex;
        v43 = [v31 ax_filteredArrayUsingBlock:v84];
        v41 = [v42 arrayByAddingObjectsFromArray:v43];

        goto LABEL_26;
      }
    }

    v67 = effectiveIndex;
    v41 = v31;
LABEL_26:
    v44 = [[TTSSpeechString alloc] initWithParentSpeechString:v33];
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v74 = v41;
    v45 = [v74 countByEnumeratingWithState:&v80 objects:v98 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v81;
      do
      {
        for (j = 0; j != v46; ++j)
        {
          if (*v81 != v47)
          {
            objc_enumerationMutation(v74);
          }

          v49 = *(*(&v80 + 1) + 8 * j);
          v50 = [(TTSRulesetRunner *)selfCopy _processTemplateReplacementTextForText:v77 replacement:v49 cString:v78];
          match = [v49 match];
          utf8Range = [match utf8Range];
          v54 = [TTSUnicodeUtils utf16RangeFromUTF8Range:utf8Range chars:v53 size:v78, v79];
          v56 = v55;

          matchLogger = [(TTSRulesetRunner *)selfCopy matchLogger];

          if (matchLogger)
          {
            matchLogger2 = [(TTSRulesetRunner *)selfCopy matchLogger];
            originalString = [(TTSSpeechString *)v44 originalString];
            ruleReplacement2 = [v49 ruleReplacement];
            (matchLogger2)[2](matchLogger2, originalString, v54, v56, v50, ruleReplacement2);
          }

          [(TTSSpeechString *)v44 transformRange:v54 to:v56, v50];
        }

        v46 = [v74 countByEnumeratingWithState:&v80 objects:v98 count:16];
      }

      while (v46);
    }

    if (depthCopy > 0x31 || v67 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v61 = AXTTSLogCommon();
      v31 = v69;
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
      {
        sub_1A9578824(depthCopy);
      }

      v36 = v44;
      stringCopy = v71;
    }

    else
    {
      v36 = [(TTSRulesetRunner *)selfCopy _processSpeechString:v44 startingAt:v67 + 1 currentRecursionDepth:depthCopy + 1];
      stringCopy = v71;
      v31 = v69;
    }

    v12 = v63;
    v30 = obja;
LABEL_42:

    goto LABEL_43;
  }

  v35 = AXTTSLogCommon();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
  {
    sub_1A9578824(depth);
  }

  v36 = stringCopy;
LABEL_43:

  return v36;
}

- (id)_processTemplateReplacementTextForText:(id)text replacement:(id)replacement cString:(const char *)string
{
  v53 = *MEMORY[0x1E69E9840];
  replacementCopy = replacement;
  replacement = [replacementCopy replacement];
  v6 = [replacement copy];

  v7 = +[TTSRegexCache sharedInstance];
  v8 = [v7 regexForString:@"\\$(?<num>\\d+)(?=\\D|$)|(\\$\\{(?<numbrack>\\d+)\\})" atStart:0];

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v10 = [v6 length];
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = sub_1A934A118;
  v49[3] = &unk_1E7880530;
  v11 = v6;
  v50 = v11;
  v12 = dictionary;
  v51 = v12;
  v39 = v8;
  [v8 enumerateMatchesInString:v11 options:2 range:0 usingBlock:{v10, v49}];
  v44 = v12;
  allKeys = [v12 allKeys];
  v14 = [allKeys sortedArrayUsingComparator:&unk_1F1CEFD38];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v14;
  v15 = [obj countByEnumeratingWithState:&v45 objects:v52 count:16];
  if (v15)
  {
    v16 = v15;
    v43 = *v46;
    v17 = replacementCopy;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        v19 = v11;
        if (*v46 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v45 + 1) + 8 * i);
        v21 = [v44 objectForKeyedSubscript:v20];
        v22 = [v21 unsignedLongValue] - 1;

        rangeValue = [v20 rangeValue];
        v25 = v24;
        match = [v17 match];
        captureGroups = [match captureGroups];
        v28 = [captureGroups count];

        if (v22 >= v28)
        {
          v36 = &stru_1F1CFF8D8;
        }

        else
        {
          match2 = [v17 match];
          captureGroups2 = [match2 captureGroups];
          v31 = [captureGroups2 objectAtIndex:v22];
          utf8Range = [v31 utf8Range];
          v34 = v33;

          if (v34)
          {
            v35 = utf8Range == 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v35 = 1;
          }

          if (v35)
          {
            v36 = &stru_1F1CFF8D8;
          }

          else
          {
            v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:&string[utf8Range] length:v34 encoding:4];
          }

          v17 = replacementCopy;
        }

        v11 = [v19 stringByReplacingCharactersInRange:rangeValue withString:{v25, v36}];
      }

      v16 = [obj countByEnumeratingWithState:&v45 objects:v52 count:16];
    }

    while (v16);
  }

  else
  {
    v17 = replacementCopy;
  }

  v37 = v11;
  return v11;
}

@end