@interface SLRegexMatcher
- (SLRegexMatcher)initWithConfigFile:(id)file;
- (id)applyPreprocessingOnUtt:(id)utt;
- (void)_compileRegexRulesForPatterns:(id)patterns;
@end

@implementation SLRegexMatcher

- (id)applyPreprocessingOnUtt:(id)utt
{
  v21 = *MEMORY[0x277D85DE8];
  uttCopy = utt;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__112;
  v15 = __Block_byref_object_dispose__113;
  v16 = [uttCopy mutableCopy];
  regexMatchingRules = self->_regexMatchingRules;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __42__SLRegexMatcher_applyPreprocessingOnUtt___block_invoke;
  v10[3] = &unk_279C0E920;
  v10[4] = self;
  v10[5] = &v11;
  [(NSArray *)regexMatchingRules enumerateObjectsUsingBlock:v10];
  v6 = SLLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v18 = "[SLRegexMatcher applyPreprocessingOnUtt:]";
    v19 = 2112;
    v20 = uttCopy;
    _os_log_impl(&dword_26754E000, v6, OS_LOG_TYPE_DEFAULT, "%s Input to regex: %@", buf, 0x16u);
    v6 = SLLogContextFacilityCoreSpeech;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v12[5];
    *buf = 136315394;
    v18 = "[SLRegexMatcher applyPreprocessingOnUtt:]";
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_26754E000, v6, OS_LOG_TYPE_DEFAULT, "%s Output of regex: %@", buf, 0x16u);
  }

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

void __42__SLRegexMatcher_applyPreprocessingOnUtt___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(*(*(a1 + 40) + 8) + 40);
  v6 = a2;
  v7 = [v5 length];
  v8 = [*(*(a1 + 32) + 16) objectAtIndexedSubscript:a3];
  [v6 replaceMatchesInString:v5 options:0 range:0 withTemplate:{v7, v8}];
}

- (void)_compileRegexRulesForPatterns:(id)patterns
{
  patternsCopy = patterns;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy__112;
  v17[4] = __Block_byref_object_dispose__113;
  v18 = 0;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __48__SLRegexMatcher__compileRegexRulesForPatterns___block_invoke;
  v13[3] = &unk_279C0E8F8;
  v16 = v17;
  v7 = array;
  v14 = v7;
  v8 = array2;
  v15 = v8;
  [patternsCopy enumerateObjectsUsingBlock:v13];
  regexMatchingRules = self->_regexMatchingRules;
  self->_regexMatchingRules = v7;
  v10 = v7;

  replaceStrings = self->_replaceStrings;
  self->_replaceStrings = v8;
  v12 = v8;

  _Block_object_dispose(v17, 8);
}

void __48__SLRegexMatcher__compileRegexRulesForPatterns___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"patternMatch"];
  v5 = [v3 objectForKeyedSubscript:@"replaceWith"];

  if ([v4 length])
  {
    v6 = *(*(a1 + 48) + 8);
    obj = *(v6 + 40);
    v7 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v4 options:1 error:&obj];
    objc_storeStrong((v6 + 40), obj);
    v8 = *(*(*(a1 + 48) + 8) + 40);
    if (v8)
    {
      v9 = 1;
    }

    else
    {
      v9 = v7 == 0;
    }

    if (v9 || v5 == 0)
    {
      v11 = SLLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        v12 = v11;
        v13 = [v8 localizedDescription];
        *buf = 136315650;
        v17 = "[SLRegexMatcher _compileRegexRulesForPatterns:]_block_invoke";
        v18 = 2112;
        v19 = v4;
        v20 = 2112;
        v21 = v13;
        _os_log_error_impl(&dword_26754E000, v12, OS_LOG_TYPE_ERROR, "%s Unable to decode pattern %@ with err %@", buf, 0x20u);
      }
    }

    else
    {
      [*(a1 + 32) addObject:v7];
      [*(a1 + 40) addObject:v5];
    }
  }

  else
  {
    v14 = SLLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v17 = "[SLRegexMatcher _compileRegexRulesForPatterns:]_block_invoke";
      _os_log_error_impl(&dword_26754E000, v14, OS_LOG_TYPE_ERROR, "%s Empty pattern, ignore", buf, 0xCu);
    }
  }
}

- (SLRegexMatcher)initWithConfigFile:(id)file
{
  v25[1] = *MEMORY[0x277D85DE8];
  fileCopy = file;
  v19.receiver = self;
  v19.super_class = SLRegexMatcher;
  v5 = [(SLRegexMatcher *)&v19 init];
  if (!v5)
  {
    goto LABEL_12;
  }

  if (SLLogInitIfNeeded_once != -1)
  {
    dispatch_once(&SLLogInitIfNeeded_once, &__block_literal_global);
  }

  v6 = [MEMORY[0x277D01778] decodeJsonFromFile:fileCopy];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 objectForKeyedSubscript:@"rules"];

    if (v8)
    {
LABEL_11:
      v15 = [v7 objectForKeyedSubscript:@"rules"];
      [(SLRegexMatcher *)v5 _compileRegexRulesForPatterns:v15];

LABEL_12:
      v14 = v5;
      goto LABEL_13;
    }
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing config for regex matcher %@", v7];
  v10 = MEMORY[0x277CCA9B8];
  v24 = @"reason";
  v25[0] = v9;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  v12 = [v10 errorWithDomain:@"com.apple.sl" code:115 userInfo:v11];

  if (!v12)
  {

    goto LABEL_11;
  }

  v13 = SLLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v17 = v13;
    localizedDescription = [v12 localizedDescription];
    *buf = 136315394;
    v21 = "[SLRegexMatcher initWithConfigFile:]";
    v22 = 2112;
    v23 = localizedDescription;
    _os_log_error_impl(&dword_26754E000, v17, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
  }

  v14 = 0;
LABEL_13:

  return v14;
}

@end