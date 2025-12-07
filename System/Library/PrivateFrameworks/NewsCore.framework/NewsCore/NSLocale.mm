@interface NSLocale
@end

@implementation NSLocale

void __50__NSLocale_FCAdditions__fc_preferredLanguageCodes__block_invoke()
{
  v16 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DFA0] orderedSet];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v1 = [MEMORY[0x1E695DF58] preferredLanguages];
  v2 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v12;
    v5 = *MEMORY[0x1E695D9B0];
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v7 = [MEMORY[0x1E695DF58] componentsFromLocaleIdentifier:*(*(&v11 + 1) + 8 * v6)];
        v8 = [v7 objectForKey:v5];

        if (v8)
        {
          [v0 addObject:v8];
        }

        ++v6;
      }

      while (v3 != v6);
      v3 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v3);
  }

  v9 = [v0 array];
  v10 = _MergedGlobals_200;
  _MergedGlobals_200 = v9;
}

@end