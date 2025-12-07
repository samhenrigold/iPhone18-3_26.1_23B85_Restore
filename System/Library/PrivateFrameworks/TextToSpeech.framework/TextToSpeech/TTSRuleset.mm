@interface TTSRuleset
+ (TTSRuleset)rulesetWithData:(id)data identifier:(id)identifier priority:(unint64_t)priority;
+ (id)processReplacementStringForSpecialCharacters:(id)characters;
- (NSNumber)ruleCount;
- (TTSRuleset)init;
- (void)addRuleReplacement:(id)replacement;
- (void)addRuleString:(id)string;
- (void)addRules:(id)rules;
- (void)addRulesFromData:(id)data;
@end

@implementation TTSRuleset

- (TTSRuleset)init
{
  v6.receiver = self;
  v6.super_class = TTSRuleset;
  v2 = [(TTSRuleset *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x1E695DF70] array];
    ruleReplacements = v2->_ruleReplacements;
    v2->_ruleReplacements = array;
  }

  return v2;
}

+ (TTSRuleset)rulesetWithData:(id)data identifier:(id)identifier priority:(unint64_t)priority
{
  identifierCopy = identifier;
  dataCopy = data;
  v9 = [[TTSRuleset alloc] init];
  [(TTSRuleset *)v9 addRulesFromData:dataCopy];

  [(TTSRuleset *)v9 setPriority:priority];
  [(TTSRuleset *)v9 setIdentifier:identifierCopy];

  return v9;
}

- (NSNumber)ruleCount
{
  v2 = MEMORY[0x1E696AD98];
  ruleReplacements = [(TTSRuleset *)self ruleReplacements];
  v4 = [v2 numberWithUnsignedInteger:{objc_msgSend(ruleReplacements, "count")}];

  return v4;
}

- (void)addRuleString:(id)string
{
  v8 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v4 = MEMORY[0x1E695DEC8];
  stringCopy2 = string;
  v6 = [v4 arrayWithObjects:&stringCopy count:1];

  [(TTSRuleset *)self addRules:v6, stringCopy, v8];
}

- (void)addRuleReplacement:(id)replacement
{
  replacementCopy = replacement;
  ruleReplacements = [(TTSRuleset *)self ruleReplacements];
  lastObject = [ruleReplacements lastObject];
  group = [lastObject group];

  replacement = [replacementCopy replacement];
  v8 = [replacement containsString:@"_HOMOGRAPH_START"];

  replacement2 = [replacementCopy replacement];
  v10 = [replacement2 containsString:@"_ENG_CORE"];

  if ((v10 & 1) != 0 || v8)
  {
    v11 = @"ENGCORE";
    if (v8)
    {
      v11 = @"HOMOGRAPH";
    }

    v12 = v11;
    if (group && ([group key], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToString:", v12), v13, v14))
    {
      ruleReplacements2 = [(TTSRuleset *)self ruleReplacements];
      [group setEndIndex:{objc_msgSend(ruleReplacements2, "count")}];

      [replacementCopy setGroup:group];
    }

    else
    {
      v16 = objc_alloc_init(TTSRuleGroup);
      [(TTSRuleGroup *)v16 setKey:v12];
      ruleReplacements3 = [(TTSRuleset *)self ruleReplacements];
      -[TTSRuleGroup setStartIndex:](v16, "setStartIndex:", [ruleReplacements3 count]);

      ruleReplacements4 = [(TTSRuleset *)self ruleReplacements];
      -[TTSRuleGroup setEndIndex:](v16, "setEndIndex:", [ruleReplacements4 count]);

      [replacementCopy setGroup:v16];
    }
  }

  [replacementCopy setRuleset:self];
  ruleReplacements5 = [(TTSRuleset *)self ruleReplacements];
  [replacementCopy setIndex:{objc_msgSend(ruleReplacements5, "count")}];

  ruleReplacements6 = [(TTSRuleset *)self ruleReplacements];
  [ruleReplacements6 addObject:replacementCopy];
}

- (void)addRules:(id)rules
{
  v36 = *MEMORY[0x1E69E9840];
  rulesCopy = rules;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v23 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"(.*?)" options:1 error:0];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = rulesCopy;
  v6 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v6)
  {
    v28 = *v30;
    *&v7 = 138412290;
    v22 = v7;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v30 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v29 + 1) + 8 * i);
        v10 = [v9 stringByTrimmingCharactersInSet:{whitespaceAndNewlineCharacterSet, v22}];
        if (([v10 hasPrefix:@"#"] & 1) == 0 && objc_msgSend(v10, "length"))
        {
          v11 = [v10 componentsSeparatedByString:@"-->"];
          if ([v10 containsString:@"-->"] && objc_msgSend(v11, "count") == 2)
          {
            v12 = [v11 objectAtIndexedSubscript:0];
            v13 = [v12 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

            v14 = [v11 objectAtIndexedSubscript:1];
            v26 = [v14 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

            v25 = [v23 matchesInString:v26 options:2 range:{0, objc_msgSend(v26, "length")}];
            if ([v25 count])
            {
              firstObject = [v25 firstObject];
              v16 = [firstObject rangeAtIndex:1];
              [v26 substringWithRange:{v16, v17}];
            }

            else
            {
              firstObject = [v26 componentsSeparatedByString:@"#"];
              [firstObject firstObject];
            }
            v18 = ;

            v19 = [[TTSRegex alloc] initWithPerlPattern:v13];
            if (v19)
            {
              v20 = objc_alloc_init(TTSRuleReplacement);
              [(TTSRuleReplacement *)v20 setRegex:v19];
              [(TTSRuleReplacement *)v20 setRuleset:selfCopy];
              v21 = [TTSRuleset processReplacementStringForSpecialCharacters:v18];
              [(TTSRuleReplacement *)v20 setReplacement:v21];

              [(TTSRuleset *)selfCopy addRuleReplacement:v20];
            }

            else
            {
              v20 = AXTTSLogCommon();
              if (os_log_type_enabled(&v20->super, OS_LOG_TYPE_ERROR))
              {
                *buf = v22;
                v34 = v9;
                _os_log_error_impl(&dword_1A9324000, &v20->super, OS_LOG_TYPE_ERROR, "Invalid rule %@", buf, 0xCu);
              }
            }
          }

          else
          {
            v13 = AXTTSLogCommon();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              *buf = v22;
              v34 = v10;
              _os_log_error_impl(&dword_1A9324000, v13, OS_LOG_TYPE_ERROR, "Invalid rule: %@", buf, 0xCu);
            }
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v6);
  }

  objc_sync_exit(selfCopy);
}

- (void)addRulesFromData:(id)data
{
  v4 = MEMORY[0x1E696AEC0];
  dataCopy = data;
  v6 = [[v4 alloc] initWithData:dataCopy encoding:4];

  v7 = [v6 componentsSeparatedByString:@"[data]"];
  lastObject = [v7 lastObject];

  v8 = [lastObject componentsSeparatedByString:@"\n"];
  [(TTSRuleset *)self addRules:v8];
}

+ (id)processReplacementStringForSpecialCharacters:(id)characters
{
  v3 = [characters stringByReplacingOccurrencesOfString:@"\\\ withString:@"\];
  v4 = [v3 stringByReplacingOccurrencesOfString:@"\\e\ withString:@"\x1B\];

  v5 = [v4 stringByReplacingOccurrencesOfString:@"\\e/+" withString:@"\x1B/+"];

  v6 = [v5 stringByReplacingOccurrencesOfString:@"\x1B\x1Bos" withString:@"\x1B\\eos"];

  return v6;
}

@end