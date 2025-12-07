@interface TTSPhonemeSupport
+ (id)_getPhonemeMapForSynth:(id)synth language:(id)language;
+ (id)_ipaVectorFromString:(id)string;
+ (id)_phonemesFromIPA:(id)a language:(id)language synth:(id)synth;
+ (id)applebetPhonemesFromIPA:(id)a;
+ (id)eloquencePhonemesFromIPA:(id)a language:(id)language;
+ (id)supportedIPAPhonemeLanguages;
@end

@implementation TTSPhonemeSupport

+ (id)applebetPhonemesFromIPA:(id)a
{
  v3 = [self lhPhonemesFromIPA:a language:@"en-US"];
  v4 = [TTSLHPhonemeToApplebetPhonemeMapper convertLHToApplebet:v3];

  return v4;
}

+ (id)_getPhonemeMapForSynth:(id)synth language:(id)language
{
  synthCopy = synth;
  languageCopy = language;
  if (qword_1EB390FF0 != -1)
  {
    sub_1A95788B8();
  }

  [qword_1EB390FE8 lock];
  v7 = [qword_1EB390FE0 objectForKeyedSubscript:synthCopy];
  v8 = [v7 objectForKeyedSubscript:languageCopy];

  if (!v8)
  {
    v8 = _TTSLoadIPAToNativePhonemeMapForLanguage(languageCopy, synthCopy);
    if (v8)
    {
      v9 = [qword_1EB390FE0 objectForKeyedSubscript:synthCopy];

      if (!v9)
      {
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        [qword_1EB390FE0 setObject:dictionary forKeyedSubscript:synthCopy];
      }

      v11 = [qword_1EB390FE0 objectForKeyedSubscript:synthCopy];
      [v11 setObject:v8 forKeyedSubscript:languageCopy];
    }
  }

  [qword_1EB390FE8 unlock];

  return v8;
}

+ (id)_ipaVectorFromString:(id)string
{
  v3 = [string stringByReplacingOccurrencesOfString:@"ˌ" withString:&stru_1F1CFF8D8];
  v4 = [v3 length];
  array = [MEMORY[0x1E695DF70] array];
  if (v4 >= 1)
  {
    v6 = 0;
    do
    {
      v7 = [v3 rangeOfComposedCharacterSequenceAtIndex:v6];
      v9 = v8;
      v10 = [v3 substringWithRange:{v7, v8}];
      v11 = v10;
      if (v9 == 2 && [v10 characterAtIndex:1] == 865 && v4 >= v6 + 2)
      {
        v12 = [v3 substringWithRange:{v7, 3}];

        ++v6;
        v11 = v12;
      }

      [array addObject:v11];
      v6 += v9;
    }

    while (v6 < v4);
  }

  return array;
}

+ (id)_phonemesFromIPA:(id)a language:(id)language synth:(id)synth
{
  aCopy = a;
  languageCopy = language;
  synthCopy = synth;
  if (!languageCopy)
  {
    languageCopy = TTSPreferencesCopyDefaultOutputLanguageIdentifierForUserPreferences();
  }

  v10 = [TTSPhonemeSupport _getPhonemeMapForSynth:synthCopy language:languageCopy];
  if (v10)
  {
    v24 = synthCopy;
    v25 = aCopy;
    v11 = [TTSPhonemeSupport _ipaVectorFromString:aCopy];
    v12 = objc_alloc_init(MEMORY[0x1E696AD60]);
    if ([v11 count])
    {
      v13 = 0;
      do
      {
        v14 = [v11 objectAtIndexedSubscript:v13];
        v15 = [v10 objectForKeyedSubscript:v14];
        v16 = v13 + 1;
        if (v13 + 1 < [v11 count])
        {
          v17 = [v11 objectAtIndexedSubscript:v13 + 1];
          v18 = [v14 stringByAppendingString:v17];

          v19 = [v10 objectForKeyedSubscript:v18];
          v20 = v19;
          if (v19)
          {
            v21 = v19;

            v15 = v21;
            v13 = v16;
          }
        }

        if (v15)
        {
          v22 = v15;
        }

        else
        {
          v22 = v14;
        }

        [v12 appendString:v22];

        ++v13;
      }

      while (v13 < [v11 count]);
    }

    synthCopy = v24;
    aCopy = v25;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)eloquencePhonemesFromIPA:(id)a language:(id)language
{
  aCopy = a;
  languageCopy = language;
  if (([aCopy containsString:@"ˈ"] & 1) != 0 || objc_msgSend(aCopy, "containsString:", @"'"))
  {
    v8 = [self _phonemesFromIPA:aCopy language:languageCopy synth:@"Kona"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)supportedIPAPhonemeLanguages
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v2 pathsForResourcesOfType:@"json" inDirectory:@"PhonemeMaps"];

  v15 = [MEMORY[0x1E695DFA8] set];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        if ([v9 rangeOfString:@"Vocalizer"] != 0x7FFFFFFFFFFFFFFFLL)
        {
          v10 = [v9 componentsSeparatedByString:@"Vocalizer-"];
          lastObject = [v10 lastObject];

          v12 = [lastObject componentsSeparatedByString:@"."];
          firstObject = [v12 firstObject];

          if (firstObject)
          {
            [v15 addObject:firstObject];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  return v15;
}

@end