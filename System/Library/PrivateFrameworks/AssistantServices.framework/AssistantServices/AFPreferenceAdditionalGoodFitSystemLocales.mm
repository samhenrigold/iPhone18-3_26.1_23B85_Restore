@interface AFPreferenceAdditionalGoodFitSystemLocales
@end

@implementation AFPreferenceAdditionalGoodFitSystemLocales

void ___AFPreferenceAdditionalGoodFitSystemLocales_block_invoke()
{
  v17 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:&unk_1F056FFC0];
  v1 = _AFPreferencesAlternativeLocaleLanguages();
  v2 = [v1 allKeys];
  [v0 addObjectsFromArray:v2];

  v3 = [&unk_1F056F248 allKeys];
  [v0 addObjectsFromArray:v3];

  [v0 removeObject:@"hi-IN"];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v0 copy];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * v8) stringByReplacingOccurrencesOfString:@"-" withString:@"_"];
        [v0 addObject:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v0 copy];
  v11 = _AFPreferenceAdditionalGoodFitSystemLocales_sSpecialCases;
  _AFPreferenceAdditionalGoodFitSystemLocales_sSpecialCases = v10;
}

@end