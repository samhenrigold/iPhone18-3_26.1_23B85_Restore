@interface ReducedLanguageIdentifierForKeyboardLanguage
@end

@implementation ReducedLanguageIdentifierForKeyboardLanguage

void *___ReducedLanguageIdentifierForKeyboardLanguage_block_invoke()
{
  v10 = *MEMORY[0x277D85DE8];
  _ReducedLanguageIdentifierForKeyboardLanguage___languageCounts = objc_alloc_init(MEMORY[0x277CCA940]);
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  SupportedLanguages = UIKeyboardGetSupportedLanguages();
  result = [SupportedLanguages countByEnumeratingWithState:&v5 objects:v9 count:16];
  if (result)
  {
    v2 = result;
    v3 = *v6;
    do
    {
      v4 = 0;
      do
      {
        if (*v6 != v3)
        {
          objc_enumerationMutation(SupportedLanguages);
        }

        [_ReducedLanguageIdentifierForKeyboardLanguage___languageCounts addObject:{objc_msgSend(MEMORY[0x277CBEAF8], "baseLanguageFromLanguage:", *(*(&v5 + 1) + 8 * v4), v5)}];
        v4 = v4 + 1;
      }

      while (v2 != v4);
      result = [SupportedLanguages countByEnumeratingWithState:&v5 objects:v9 count:16];
      v2 = result;
    }

    while (result);
  }

  return result;
}

@end