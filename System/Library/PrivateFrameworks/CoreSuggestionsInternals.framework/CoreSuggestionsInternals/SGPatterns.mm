@interface SGPatterns
+ (id)calculateCurrentLanguagesFromPreferredLocaleCodes:(id)codes;
+ (id)calculateLangResolutionOrder;
+ (id)countryCodeFromLanguageCode:(id)code;
+ (id)languagePartOfLanguageCode:(id)code;
+ (id)patternsForClass:(Class)class;
+ (id)patternsForIdentifier:(id)identifier;
+ (void)changeLanguageOrPatternData;
+ (void)forceLanguagesTo:(id)to;
+ (void)initialize;
+ (void)pauseCacheEvictionTemporarily;
+ (void)setPatternsDictForTesting:(id)testing;
+ (void)useAllLanguagesAtOnce:(BOOL)once;
- (SGPatterns)init;
- (id)rawValueForKey:(id)key;
- (id)rawValueOrDataForKey:(id)key;
- (id)rawValuesForKey:(id)key;
- (id)regex2ForKey:(id)key;
- (id)stringSetMatcherForKey:(id)key;
- (void)_becomeImmuneToDeath;
- (void)_clearRegexCache;
- (void)dealloc;
- (void)resetIfNeeded;
@end

@implementation SGPatterns

- (void)_becomeImmuneToDeath
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __34__SGPatterns__becomeImmuneToDeath__block_invoke;
  v2[3] = &unk_27894D160;
  v2[4] = self;
  [globalPatternsData runWithLockAcquired:v2];
}

void __34__SGPatterns__becomeImmuneToDeath__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = *(*(a1 + 32) + 40);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(a1 + 32) + 24) objectForKey:{*(*(&v10 + 1) + 8 * v8), v10}];
        if (v9)
        {
          [v3[7] addObject:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)_clearRegexCache
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __30__SGPatterns__clearRegexCache__block_invoke;
  v2[3] = &unk_27894D160;
  v2[4] = self;
  [globalPatternsData runWithLockAcquired:v2];
}

- (id)regex2ForKey:(id)key
{
  v77 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v5 = objc_opt_new();
  v69 = 0;
  v70 = &v69;
  v71 = 0x3032000000;
  v72 = __Block_byref_object_copy__10187;
  v73 = __Block_byref_object_dispose__10188;
  v74 = 0;
  v63 = 0;
  v64 = &v63;
  v65 = 0x3032000000;
  v66 = __Block_byref_object_copy__10187;
  v67 = __Block_byref_object_dispose__10188;
  v68 = 0;
  v6 = globalPatternsData;
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __27__SGPatterns_regex2ForKey___block_invoke;
  v58[3] = &unk_27894D220;
  selfCopy = self;
  v58[4] = self;
  v61 = &v63;
  v43 = keyCopy;
  v59 = v43;
  v62 = &v69;
  v36 = v5;
  v60 = v36;
  [v6 runWithLockAcquired:v58];
  v7 = v64[5];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v56 = 0u;
    v57 = 0u;
    v55 = 0u;
    v54 = 0u;
    obj = v36;
    v9 = [obj countByEnumeratingWithState:&v54 objects:v76 count:16];
    if (v9)
    {
      v40 = *v55;
      while (2)
      {
        v10 = 0;
        v41 = v9;
        do
        {
          if (*v55 != v40)
          {
            objc_enumerationMutation(obj);
          }

          v45 = v10;
          v11 = *(*(&v54 + 1) + 8 * v10);
          v44 = objc_autoreleasePoolPush();
          v46 = [v11 objectForKey:v43];
          if (v46)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              context = objc_autoreleasePoolPush();
              if (([v43 hasSuffix:@"/F"] & 1) == 0)
              {
                currentHandler = [MEMORY[0x277CCA890] currentHandler];
                [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"SGPatterns.m" lineNumber:376 description:{@"Non-prefiltered regexp was array: %@", v43}];
              }

              v12 = [v43 stringByAppendingString:@".filt"];
              v13 = [v11 objectForKeyedSubscript:v12];
              v42 = dereferenceData(v13, 1);

              if (!v42)
              {
                currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
                [currentHandler2 handleFailureInMethod:a2 object:selfCopy file:@"SGPatterns.m" lineNumber:378 description:{@"Data not found for prefiltered regexp: %@", v43}];
              }

              v39 = [[SGRe2PrefilterTree alloc] initWithData:v42];
              v14 = v46;
              v15 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:objc_msgSend_count(v14)];
              v52 = 0u;
              v53 = 0u;
              v50 = 0u;
              v51 = 0u;
              v16 = v14;
              v17 = [v16 countByEnumeratingWithState:&v50 objects:v75 count:16];
              if (v17)
              {
                v18 = *v51;
                do
                {
                  for (i = 0; i != v17; ++i)
                  {
                    if (*v51 != v18)
                    {
                      objc_enumerationMutation(v16);
                    }

                    v20 = dereferenceData(*(*(&v50 + 1) + 8 * i), 0);
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v21 = [SGRe2 re2WithRegexpLazy:v20];
                    }

                    else
                    {
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        goto LABEL_41;
                      }

                      v21 = [SGRe2 re2WithRegexpDataLazy:v20];
                    }

                    v22 = v21;
                    [v15 addObject:v21];
                  }

                  v17 = [v16 countByEnumeratingWithState:&v50 objects:v75 count:16];
                }

                while (v17);
              }

              v23 = v70[5];
              v24 = [SGRe2 re2WithSubregexps:v15 prefilter:v39];
              [v23 addObject:v24];

              objc_autoreleasePoolPop(context);
            }

            else
            {
              v25 = dereferenceData(v46, 0);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v26 = [SGRe2 re2WithRegexp:v25];
              }

              else
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
LABEL_41:
                  __break(1u);
                  goto LABEL_42;
                }

                v26 = [SGRe2 re2WithRegexpData:v25];
              }

              v27 = v26;
              [v70[5] addObject:v26];
            }
          }

          objc_autoreleasePoolPop(v44);
          v10 = v45 + 1;
        }

        while (v45 + 1 != v41);
        v9 = [obj countByEnumeratingWithState:&v54 objects:v76 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    if (!objc_msgSend_count(v70[5]))
    {
LABEL_42:
      currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler3 handleFailureInMethod:a2 object:selfCopy file:@"SGPatterns.m" lineNumber:409 description:{@"Could not find raw asset value for key %@", v43}];
    }

    if (objc_msgSend_count(v70[5]) == 1)
    {
      [v70[5] objectAtIndexedSubscript:0];
    }

    else
    {
      [SGRe2 re2WithSubregexps:v70[5]];
    }
    v30 = ;
    objc_storeStrong(v64 + 5, v30);

    v31 = globalPatternsData;
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __27__SGPatterns_regex2ForKey___block_invoke_2;
    v47[3] = &unk_27894D1F8;
    v47[4] = selfCopy;
    v49 = &v63;
    v48 = v43;
    [v31 runWithLockAcquired:v47];
    v8 = v64[5];
  }

  _Block_object_dispose(&v63, 8);
  _Block_object_dispose(&v69, 8);

  return v8;
}

void __27__SGPatterns_regex2ForKey___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) resetIfNeeded];
  v4 = [*(*(a1 + 32) + 24) objectForKey:*(a1 + 40)];
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    [*(*(a1 + 32) + 40) addObject:*(a1 + 40)];
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:objc_msgSend_count(*(*(a1 + 32) + 16))];
    v8 = *(*(a1 + 64) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = *(*(a1 + 32) + 16);
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        v14 = 0;
        do
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [v3[1] objectForKeyedSubscript:{*(*(&v17 + 1) + 8 * v14), v17}];
          v16 = [v15 objectForKeyedSubscript:*(*(a1 + 32) + 8)];

          if (v16)
          {
            [*(a1 + 48) addObject:v16];
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }
  }
}

- (id)stringSetMatcherForKey:(id)key
{
  keyCopy = key;
  v5 = [SGAhoCorasick alloc];
  v6 = [(SGPatterns *)self rawValueForKey:keyCopy];

  v7 = dereferenceData(v6, 1);
  v8 = [(SGAhoCorasick *)v5 initWithBytecode:v7];

  return v8;
}

- (id)rawValueOrDataForKey:(id)key
{
  v3 = [(SGPatterns *)self rawValueForKey:key];
  v4 = dereferenceData(v3, 1);

  return v4;
}

- (id)rawValueForKey:(id)key
{
  keyCopy = key;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__10187;
  v16 = __Block_byref_object_dispose__10188;
  v17 = 0;
  [(SGPatterns *)self resetIfNeeded];
  v5 = globalPatternsData;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __29__SGPatterns_rawValueForKey___block_invoke;
  v9[3] = &unk_27894D1F8;
  v9[4] = self;
  v11 = &v12;
  v6 = keyCopy;
  v10 = v6;
  [v5 runWithLockAcquired:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __29__SGPatterns_rawValueForKey___block_invoke(void *a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *(a1[4] + 16);
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [v3[1] objectForKeyedSubscript:{*(*(&v14 + 1) + 8 * i), v14}];
        v10 = [v9 objectForKeyedSubscript:*(a1[4] + 8)];

        if (v10)
        {
          v11 = [v10 objectForKeyedSubscript:a1[5]];
          v12 = *(a1[6] + 8);
          v13 = *(v12 + 40);
          *(v12 + 40) = v11;

          if (*(*(a1[6] + 8) + 40))
          {

            goto LABEL_12;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:
}

- (id)rawValuesForKey:(id)key
{
  keyCopy = key;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__10187;
  v16 = __Block_byref_object_dispose__10188;
  v17 = 0;
  [(SGPatterns *)self resetIfNeeded];
  v5 = globalPatternsData;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __30__SGPatterns_rawValuesForKey___block_invoke;
  v9[3] = &unk_27894D1F8;
  v11 = &v12;
  v9[4] = self;
  v6 = keyCopy;
  v10 = v6;
  [v5 runWithLockAcquired:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __30__SGPatterns_rawValuesForKey___block_invoke(void *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x277CBEB40]) initWithCapacity:objc_msgSend_count(*(a1[4] + 16))];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = *(a1[4] + 16);
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [v3[1] objectForKeyedSubscript:{*(*(&v15 + 1) + 8 * v11), v15}];
        v13 = [v12 objectForKeyedSubscript:*(a1[4] + 8)];

        if (v13)
        {
          v14 = [v13 objectForKeyedSubscript:a1[5]];
          if (v14)
          {
            [*(*(a1[6] + 8) + 40) addObject:v14];
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

- (void)resetIfNeeded
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __27__SGPatterns_resetIfNeeded__block_invoke;
  v2[3] = &unk_27894D160;
  v2[4] = self;
  [globalPatternsData runWithLockAcquired:v2];
}

void __27__SGPatterns_resetIfNeeded__block_invoke(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 32);
  v4 = a2[6];
  if (*(v3 + 48) != v4)
  {
    *(v3 + 48) = v4;
    v9 = a2;
    v6 = +[SGPatterns calculateLangResolutionOrder];
    v7 = *(a1 + 32);
    v8 = *(v7 + 16);
    *(v7 + 16) = v6;

    [*(*(a1 + 32) + 24) removeAllObjects];
  }
}

- (void)dealloc
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __21__SGPatterns_dealloc__block_invoke;
  v4[3] = &unk_27894D160;
  v4[4] = self;
  [globalPatternsData runWithLockAcquired:v4];
  v3.receiver = self;
  v3.super_class = SGPatterns;
  [(SGPatterns *)&v3 dealloc];
}

void __21__SGPatterns_dealloc__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

- (SGPatterns)init
{
  v11.receiver = self;
  v11.super_class = SGPatterns;
  v2 = [(SGPatterns *)&v11 init];
  if (v2)
  {
    v3 = objc_opt_new();
    compiledRegexes2 = v2->_compiledRegexes2;
    v2->_compiledRegexes2 = v3;

    v5 = objc_opt_new();
    regexpKeysSeen = v2->_regexpKeysSeen;
    v2->_regexpKeysSeen = v5;

    v7 = globalPatternsData;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __18__SGPatterns_init__block_invoke;
    v9[3] = &unk_27894D160;
    v10 = v2;
    [v7 runWithLockAcquired:v9];
  }

  return v2;
}

+ (id)countryCodeFromLanguageCode:(id)code
{
  codeCopy = code;
  v4 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x277CBEAF8] componentsFromLocaleIdentifier:codeCopy];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277CBE690]];

  objc_autoreleasePoolPop(v4);

  return v6;
}

+ (id)languagePartOfLanguageCode:(id)code
{
  codeCopy = code;
  v4 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x277CBEAF8] componentsFromLocaleIdentifier:codeCopy];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277CBE6C8]];

  objc_autoreleasePoolPop(v4);

  return v6;
}

+ (void)pauseCacheEvictionTemporarily
{
  [globalPatternsData runWithLockAcquired:&__block_literal_global_123];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__SGPatterns_pauseCacheEvictionTemporarily__block_invoke_124;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __43__SGPatterns_pauseCacheEvictionTemporarily__block_invoke_124(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __43__SGPatterns_pauseCacheEvictionTemporarily__block_invoke_2;
  v2[3] = &__block_descriptor_40_e29_v16__0__SGPatternGlobalData_8l;
  v2[4] = *(a1 + 32);
  return [globalPatternsData runWithLockAcquired:v2];
}

void __43__SGPatterns_pauseCacheEvictionTemporarily__block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__SGPatterns_pauseCacheEvictionTemporarily__block_invoke_3;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = *(a1 + 32);
  if (kSqlEventFired_block_invoke__pasOnceToken7 != -1)
  {
    dispatch_once(&kSqlEventFired_block_invoke__pasOnceToken7, block);
  }

  v1 = kSqlEventFired_block_invoke__pasExprOnceResult;
  dispatch_suspend(v1);
  v2 = dispatch_time(0, 50000000000);
  dispatch_source_set_timer(v1, v2, 0xFFFFFFFFFFFFFFFFLL, 0x4A817C800uLL);
  dispatch_resume(v1);
}

void __43__SGPatterns_pauseCacheEvictionTemporarily__block_invoke_3(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"SGPatterns-deathTimer" qosClass:17];
  v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v3);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __43__SGPatterns_pauseCacheEvictionTemporarily__block_invoke_4;
  handler[3] = &__block_descriptor_40_e5_v8__0l;
  handler[4] = *(a1 + 32);
  dispatch_source_set_event_handler(v4, handler);
  dispatch_resume(v4);

  v5 = kSqlEventFired_block_invoke__pasExprOnceResult;
  kSqlEventFired_block_invoke__pasExprOnceResult = v4;

  objc_autoreleasePoolPop(v2);
}

void __43__SGPatterns_pauseCacheEvictionTemporarily__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = v2[5];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v10 + 1) + 8 * v7++) _becomeImmuneToDeath];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v16 count:16];
    }

    while (v5);
  }

  v8 = sgLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = objc_msgSend_count(v2[7]);
    *buf = 67109120;
    v15 = v9;
    _os_log_debug_impl(&dword_231E60000, v8, OS_LOG_TYPE_DEBUG, "Pausing death for %i objects", buf, 8u);
  }
}

void __29__SGPatterns__reinstateDeath__block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = sgLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = objc_msgSend_count(v2[7]);
    v5[0] = 67109120;
    v5[1] = v4;
    _os_log_debug_impl(&dword_231E60000, v3, OS_LOG_TYPE_DEBUG, "Reinstating death for %i objects", v5, 8u);
  }

  [v2[7] removeAllObjects];
}

void __33__SGPatterns_clearAllRegexCaches__block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a2 + 40);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) _clearRegexCache];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

+ (void)useAllLanguagesAtOnce:(BOOL)once
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __36__SGPatterns_useAllLanguagesAtOnce___block_invoke;
  v3[3] = &__block_descriptor_33_e29_v16__0__SGPatternGlobalData_8l;
  onceCopy = once;
  [globalPatternsData runWithLockAcquired:v3];
}

+ (id)calculateLangResolutionOrder
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__10187;
  v9 = __Block_byref_object_dispose__10188;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__SGPatterns_calculateLangResolutionOrder__block_invoke;
  v4[3] = &unk_27894D1B0;
  v4[4] = &v5;
  [globalPatternsData runWithLockAcquired:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __42__SGPatterns_calculateLangResolutionOrder__block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*(v3 + 48) == 1)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = [MEMORY[0x277CBEB40] orderedSetWithObjects:{@"nolang", @"base", @"eu-me", @"w-europe", @"e-europe", @"asia", @"middleeast", 0}];
    v6 = *(v3 + 1);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __42__SGPatterns_calculateLangResolutionOrder__block_invoke_2;
    v28[3] = &unk_27894D188;
    v29 = v5;
    v7 = v5;
    [v6 enumerateKeysAndObjectsUsingBlock:v28];
    v8 = [v7 array];
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v22 = a1;
    v11 = objc_opt_new();
    v12 = objc_opt_new();
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = *(v3 + 4);
    v13 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v25;
      do
      {
        v16 = 0;
        do
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v24 + 1) + 8 * v16);
          if (v17)
          {
            do
            {
              if (([v12 containsObject:v17] & 1) == 0)
              {
                [v11 addObject:v17];
                [v12 addObject:v17];
              }

              v18 = [*(v3 + 1) objectForKeyedSubscript:v17];
              v19 = [v18 objectForKeyedSubscript:@".."];

              v17 = v19;
            }

            while (v19);
          }

          ++v16;
        }

        while (v16 != v14);
        v14 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
      }

      while (v14);
    }

    v20 = *(*(v22 + 32) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v11;
  }
}

void __42__SGPatterns_calculateLangResolutionOrder__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@".."];
  if (v6)
  {
    v7 = v6;
    v8 = objc_msgSend_count(v5);

    if (v8 >= 2)
    {
      [*(a1 + 32) addObject:v9];
    }
  }
}

+ (void)setPatternsDictForTesting:(id)testing
{
  testingCopy = testing;
  v4 = globalPatternsData;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__SGPatterns_setPatternsDictForTesting___block_invoke;
  v6[3] = &unk_27894D160;
  v7 = testingCopy;
  v5 = testingCopy;
  [v4 runWithLockAcquired:v6];
}

+ (id)patternsForClass:(Class)class
{
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:class_getName(class)];
  v5 = [self patternsForIdentifier:v4];

  return v5;
}

+ (id)patternsForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = objc_opt_new();
  v5 = v4[1];
  v4[1] = identifierCopy;

  [v4 resetIfNeeded];

  return v4;
}

+ (void)forceLanguagesTo:(id)to
{
  toCopy = to;
  v6 = globalPatternsData;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __31__SGPatterns_forceLanguagesTo___block_invoke;
  v8[3] = &unk_27894D138;
  v10 = a2;
  selfCopy = self;
  v9 = toCopy;
  v7 = toCopy;
  [v6 runWithLockAcquired:v8];
}

void __31__SGPatterns_forceLanguagesTo___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!*(v3 + 1))
  {
    v4 = +[SGAsset asset];
    v5 = [v4 filesystemPathForAssetDataRelativePath:@"CompiledPatterns.plist"];

    if (!v5)
    {
      v19 = [MEMORY[0x277CCA890] currentHandler];
      [v19 handleFailureInMethod:*(a1 + 40) object:*(a1 + 48) file:@"SGPatterns.m" lineNumber:170 description:@"filesystemPathForAssetDataRelativePath returned nil"];
    }

    v6 = sgLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v27 = v5;
      _os_log_impl(&dword_231E60000, v6, OS_LOG_TYPE_INFO, "Loading pattern data from path %@", buf, 0xCu);
    }

    v7 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:v5];
    v8 = *(v3 + 1);
    *(v3 + 1) = v7;

    if (!*(v3 + 1))
    {
      v20 = [MEMORY[0x277CCA890] currentHandler];
      [v20 handleFailureInMethod:*(a1 + 40) object:*(a1 + 48) file:@"SGPatterns.m" lineNumber:173 description:@"Could not load pattern data"];
    }
  }

  v9 = [*(a1 + 32) copy];
  v10 = *(v3 + 4);
  *(v3 + 4) = v9;

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = *(v3 + 4);
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v21 + 1) + 8 * i);
        v17 = [*(v3 + 1) objectForKeyedSubscript:v16];

        if (!v17)
        {
          v18 = [MEMORY[0x277CCA890] currentHandler];
          [v18 handleFailureInMethod:*(a1 + 40) object:*(a1 + 48) file:@"SGPatterns.m" lineNumber:177 description:{@"Language not found: %@", v16}];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  ++*(v3 + 6);
}

+ (id)calculateCurrentLanguagesFromPreferredLocaleCodes:(id)codes
{
  codesCopy = codes;
  v4 = objc_opt_new();
  v5 = globalPatternsData;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__SGPatterns_calculateCurrentLanguagesFromPreferredLocaleCodes___block_invoke;
  v11[3] = &unk_27894D110;
  v12 = codesCopy;
  v6 = v4;
  v13 = v6;
  v7 = codesCopy;
  [v5 runWithLockAcquired:v11];
  v8 = v13;
  v9 = v6;

  return v6;
}

void __64__SGPatterns_calculateCurrentLanguagesFromPreferredLocaleCodes___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = *(a1 + 32);
  v22 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v22)
  {
    goto LABEL_22;
  }

  v5 = *v24;
  v6 = 0x278948000uLL;
  v19 = v4;
  v20 = a1;
  v21 = v3;
  while (2)
  {
    for (i = 0; i != v22; ++i)
    {
      if (*v24 != v5)
      {
        objc_enumerationMutation(v4);
      }

      v8 = *(*(&v23 + 1) + 8 * i);
      v9 = objc_autoreleasePoolPush();
      v10 = [v8 lowercaseString];
      v11 = [v3[1] objectForKeyedSubscript:v10];

      if (v11)
      {
        v12 = v10;
        if (!v12)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v13 = v5;
        v14 = [*(v6 + 3960) languagePartOfLanguageCode:v8];
        v15 = [v14 lowercaseString];

        v16 = [v3[1] objectForKeyedSubscript:v15];

        if (v16)
        {
          v12 = v15;
        }

        else
        {
          v17 = [*(v6 + 3960) countryCodeFromLanguageCode:v8];
          v18 = [*(v6 + 3960) fallbackLanguageCodeForCountryCode:v17];
          if (v18)
          {
            v12 = [v21[1] objectForKeyedSubscript:v18];

            if (v12)
            {
              v12 = v18;
            }
          }

          else
          {
            v12 = 0;
          }

          v4 = v19;
        }

        v5 = v13;
        a1 = v20;
        v3 = v21;
        v6 = 0x278948000;
        if (!v12)
        {
          goto LABEL_18;
        }
      }

      [*(a1 + 40) addObject:{v12, v19}];
      if (objc_msgSend_count(*(a1 + 40)) == 5)
      {

        objc_autoreleasePoolPop(v9);
        goto LABEL_22;
      }

LABEL_18:

      objc_autoreleasePoolPop(v9);
    }

    v22 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v22)
    {
      continue;
    }

    break;
  }

LABEL_22:

  if (!objc_msgSend_count(*(a1 + 40)))
  {
    [*(a1 + 40) addObject:@"en"];
  }
}

+ (void)changeLanguageOrPatternData
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __41__SGPatterns_changeLanguageOrPatternData__block_invoke;
  v2[3] = &__block_descriptor_48_e29_v16__0__SGPatternGlobalData_8l;
  v2[4] = a2;
  v2[5] = self;
  [globalPatternsData runWithLockAcquired:v2];
}

void __41__SGPatterns_changeLanguageOrPatternData__block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = +[SGAsset asset];
  v6 = [v5 filesystemPathsForAssetDataRelativePaths:&unk_28474A5B8];

  v7 = [v6 objectForKeyedSubscript:@"CompiledPatterns.plist"];
  v8 = sgLogHandle();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  v10 = @"(nil path)";
  if (v9)
  {
    if (v7)
    {
      v10 = v7;
    }

    *buf = 138412290;
    v34 = v10;
    _os_log_impl(&dword_231E60000, v8, OS_LOG_TYPE_INFO, "Loading pattern plist, path: %@", buf, 0xCu);
  }

  v32 = 0;
  v11 = [MEMORY[0x277D425E0] dictionaryWithPath:v7 error:&v32];
  v12 = v32;
  if (!v11)
  {
    v31 = v12;
    v13 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v7 options:1 error:&v31];
    v14 = v31;

    if (v13)
    {
      v30 = 0;
      v11 = [MEMORY[0x277CCAC58] propertyListWithData:v13 options:0 format:0 error:&v30];
      v12 = v30;

      if (v11)
      {
        goto LABEL_11;
      }

      v14 = v12;
    }

    else
    {
      v12 = v14;
    }

    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"SGPatterns.m" lineNumber:101 description:{@"Could not read pattern plist from %@: %@", v7, v14}];

    v11 = 0;
  }

LABEL_11:
  objc_storeStrong(v3 + 1, v11);
  v16 = [v3[1] objectForKeyedSubscript:@"nolang"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v26 = [MEMORY[0x277CCA890] currentHandler];
    v27 = *(a1 + 32);
    v29 = *(a1 + 40);
    v28 = [v3[1] allKeys];
    [v26 handleFailureInMethod:v27 object:v29 file:@"SGPatterns.m" lineNumber:103 description:{@"Invalid pattern plist: no nolang locale found! Keys: %@", v28}];
  }

  v18 = [v6 objectForKeyedSubscript:@"CompiledPatterns.pldat"];
  v19 = sgLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = @"(nil path)";
    if (v18)
    {
      v20 = v18;
    }

    *buf = 138412290;
    v34 = v20;
    _os_log_impl(&dword_231E60000, v19, OS_LOG_TYPE_INFO, "Loading pattern pldat, path: %@", buf, 0xCu);
  }

  v21 = [[SGPatternDataFile alloc] initWithPath:v18];
  v22 = v3[2];
  v3[2] = v21;

  v23 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v24 = [SGPatterns calculateCurrentLanguagesFromPreferredLocaleCodes:v23];
  v25 = v3[4];
  v3[4] = v24;

  ++*(v3 + 6);
  objc_autoreleasePoolPop(v4);
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v3 = objc_opt_new();
    v4 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v3];
    v5 = globalPatternsData;
    globalPatternsData = v4;

    v6 = +[SGAsset asset];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __24__SGPatterns_initialize__block_invoke;
    v8[3] = &__block_descriptor_40_e20_v16__0___PASAsset2_8l;
    v8[4] = self;
    v7 = [v6 registerUpdateHandler:v8];

    [self changeLanguageOrPatternData];
    [globalPatternsData runWithLockAcquired:&__block_literal_global_11182];
  }
}

void __24__SGPatterns_initialize__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAA50];
  v3 = a2;
  v4 = [v2 weakObjectsHashTable];
  v5 = v3[5];
  v3[5] = v4;

  v6 = objc_opt_new();
  v7 = v3[7];
  v3[7] = v6;
}

@end