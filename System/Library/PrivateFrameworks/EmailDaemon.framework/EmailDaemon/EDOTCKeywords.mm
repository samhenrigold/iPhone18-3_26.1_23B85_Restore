@interface EDOTCKeywords
+ (id)localizedExpressionStrings;
+ (id)log;
@end

@implementation EDOTCKeywords

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __20__EDOTCKeywords_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_71 != -1)
  {
    dispatch_once(&log_onceToken_71, block);
  }

  v2 = log_log_71;

  return v2;
}

void __20__EDOTCKeywords_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_71;
  log_log_71 = v1;
}

+ (id)localizedExpressionStrings
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__EDOTCKeywords_localizedExpressionStrings__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (localizedExpressionStrings_onceToken != -1)
  {
    dispatch_once(&localizedExpressionStrings_onceToken, block);
  }

  v2 = localizedExpressionStrings_otcKeywordsArray;

  return v2;
}

void __43__EDOTCKeywords_localizedExpressionStrings__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v2 = [v1 URLForResource:@"EDOTCLocalizationKeywords" withExtension:@"json"];

  v3 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v2];
  v17 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v3 options:0 error:&v17];
  v5 = v17;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 count])
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __43__EDOTCKeywords_localizedExpressionStrings__block_invoke_20;
    v15 = &unk_1E8255B38;
    v7 = v6;
    v16 = v7;
    [v4 enumerateKeysAndObjectsUsingBlock:&v12];
    v8 = [v7 allObjects];
    v9 = localizedExpressionStrings_otcKeywordsArray;
    localizedExpressionStrings_otcKeywordsArray = v8;
  }

  else
  {
    v10 = +[EDOTCKeywords log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [v4 description];
      __43__EDOTCKeywords_localizedExpressionStrings__block_invoke_cold_1(v11, v5, buf, v10);
    }

    v7 = localizedExpressionStrings_otcKeywordsArray;
    localizedExpressionStrings_otcKeywordsArray = MEMORY[0x1E695E0F0];
  }
}

void __43__EDOTCKeywords_localizedExpressionStrings__block_invoke_20(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 valueForKey:@"expressions"];
  v6 = [v4 valueForKey:@"properties"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = *(a1 + 32);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __43__EDOTCKeywords_localizedExpressionStrings__block_invoke_2;
    v9[3] = &unk_1E8255B10;
    v10 = v6;
    v8 = [v5 ef_map:v9];
    [v7 addObjectsFromArray:v8];
  }
}

id __43__EDOTCKeywords_localizedExpressionStrings__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"no-word-boundaries"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 BOOLValue])
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\\b%@\\b", v3];
  }

  v6 = v5;

  return v6;
}

void __43__EDOTCKeywords_localizedExpressionStrings__block_invoke_cold_1(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "JSON localized keywords file returned empty, check previous logs to see potential issue: %@. Error: %@", buf, 0x16u);
}

@end