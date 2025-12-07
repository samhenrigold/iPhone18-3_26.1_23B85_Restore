@interface AXSSLanguageLoader
+ (id)_characterSetForRanges:(id)ranges;
+ (id)loadLanguages;
@end

@implementation AXSSLanguageLoader

+ (id)loadLanguages
{
  v53 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  selfCopy = self;
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 pathForResource:@"SynthesizerLanguageMap" ofType:@"plist"];

  v26 = v4;
  [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v4];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v25 = v50 = 0u;
  obj = [v25 objectForKeyedSubscript:@"languageMaps"];
  v30 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v30)
  {
    v28 = *v48;
    do
    {
      v5 = 0;
      do
      {
        if (*v48 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v37 = v5;
        v6 = *(*(&v47 + 1) + 8 * v5);
        v36 = [v6 objectForKeyedSubscript:@"languageID"];
        v35 = [v6 objectForKeyedSubscript:@"alternateLanguageIDs"];
        v34 = [v6 objectForKeyedSubscript:@"ambiguousWithLanguages"];
        v7 = [v6 objectForKeyedSubscript:@"isAmbiguous"];
        bOOLValue = [v7 BOOLValue];

        v8 = [v6 objectForKeyedSubscript:@"isWestern"];
        bOOLValue2 = [v8 BOOLValue];

        v9 = [v6 objectForKeyedSubscript:@"isRTL"];
        bOOLValue3 = [v9 BOOLValue];

        array2 = [MEMORY[0x1E695DF70] array];
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v38 = [v6 objectForKeyedSubscript:@"localeLanguageMaps"];
        v42 = [v38 countByEnumeratingWithState:&v43 objects:v51 count:16];
        if (v42)
        {
          v40 = *v44;
          do
          {
            for (i = 0; i != v42; ++i)
            {
              if (*v44 != v40)
              {
                objc_enumerationMutation(v38);
              }

              v11 = *(*(&v43 + 1) + 8 * i);
              v12 = [v11 objectForKeyedSubscript:@"localeID"];
              v13 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:v12];
              v14 = [v11 objectForKeyedSubscript:@"voiceName"];
              v15 = [v11 objectForKeyedSubscript:@"languageID"];
              v16 = [v11 objectForKeyedSubscript:@"speakableCharacterRanges"];
              v17 = [selfCopy _characterSetForRanges:v16];
              v18 = [v11 objectForKeyedSubscript:@"supplementaryCharacterRanges"];

              v19 = [selfCopy _characterSetForRanges:v18];
              [v17 formUnionWithCharacterSet:v19];
              v20 = [v11 objectForKeyedSubscript:@"secondaryLanguageRange"];
              v21 = [selfCopy _characterSetForRanges:v20];

              v22 = [[AXSSDialectMap alloc] initWithLocale:v13 voiceName:v14 specificLanguageID:v15 voiceIdentifier:0 speakableCharacters:v17 secondaryLanguageRange:v21];
              [array2 addObject:v22];
            }

            v42 = [v38 countByEnumeratingWithState:&v43 objects:v51 count:16];
          }

          while (v42);
        }

        v23 = [[AXSSLanguageMap alloc] initWithLanguageID:v36 isWestern:bOOLValue2 isAmbiguous:bOOLValue isRTL:bOOLValue3 dialects:array2 alternateLanguageIDs:v35 associatedAmbiguousLanguages:v34];
        [array addObject:v23];

        v5 = v37 + 1;
      }

      while (v37 + 1 != v30);
      v30 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v30);
  }

  return array;
}

+ (id)_characterSetForRanges:(id)ranges
{
  v22 = *MEMORY[0x1E69E9840];
  rangesCopy = ranges;
  v4 = objc_alloc_init(MEMORY[0x1E696AD48]);
  if ([rangesCopy length])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = rangesCopy;
    obj = [rangesCopy componentsSeparatedByString:@" "];
    v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v18;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = [*(*(&v17 + 1) + 8 * i) componentsSeparatedByString:@"-"];
          v10 = [v9 objectAtIndex:0];
          integerValue = [v10 integerValue];
          v12 = [v9 objectAtIndex:1];
          integerValue2 = [v12 integerValue];

          [v4 addCharactersInRange:{integerValue, integerValue2}];
        }

        v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v6);
    }

    rangesCopy = v15;
  }

  return v4;
}

@end