@interface AXSSLanguageManager
+ (id)commonPunctuationCharacters;
+ (id)shared;
+ (id)stringByReplacingFatWidthCharactersWithBasicCharacters:(id)characters;
- (AXSSDialectMap)dialectForCurrentLocale;
- (AXSSDialectMap)dialectForCurrentRegion;
- (AXSSDialectMap)dialectForSystemLanguage;
- (AXSSLanguageManager)init;
- (BOOL)isCharacterCommon:(unsigned __int16)common;
- (BOOL)isCharacterIgnored:(unsigned __int16)ignored;
- (BOOL)isCommonGreekCharacter:(unsigned __int16)character;
- (BOOL)isStringComposedByCommonCharacters:(id)characters;
- (NSArray)languageMaps;
- (NSString)systemLanguageID;
- (id)_preferredLanguage;
- (id)description;
- (id)dialectForLanguageID:(id)d;
- (id)dialectForSpeechSynthesisVoiceID:(id)d;
- (id)dialectThatCanSpeakCharacter:(unsigned __int16)character;
- (id)dialectsThatCanSpeakCharacter:(unsigned __int16)character;
- (id)dialectsThatCanSpeakString:(id)string;
- (void)_handleUserLocaleDidChange:(id)change;
- (void)setDialectForCurrentLocale:(id)locale;
- (void)setDialectForCurrentRegion:(id)region;
- (void)setDialectForSystemLanguage:(id)language;
- (void)updateCachedDialects;
@end

@implementation AXSSLanguageManager

+ (id)shared
{
  if (shared_onceToken != -1)
  {
    +[AXSSLanguageManager shared];
  }

  v3 = shared__shared;

  return v3;
}

uint64_t __29__AXSSLanguageManager_shared__block_invoke()
{
  shared__shared = objc_alloc_init(AXSSLanguageManager);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)commonPunctuationCharacters
{
  if (commonPunctuationCharacters_onceToken != -1)
  {
    +[AXSSLanguageManager commonPunctuationCharacters];
  }

  v3 = commonPunctuationCharacters_charSet;

  return v3;
}

uint64_t __50__AXSSLanguageManager_commonPunctuationCharacters__block_invoke()
{
  commonPunctuationCharacters_charSet = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:{@"~!@#*$%&+|=(){}[]<>, ./?:'_-\"}];;

  return MEMORY[0x1EEE66BB8]();
}

+ (id)stringByReplacingFatWidthCharactersWithBasicCharacters:(id)characters
{
  charactersCopy = characters;
  v4 = [MEMORY[0x1E696AB08] characterSetWithRange:{65296, 75}];
  v5 = [charactersCopy rangeOfCharacterFromSet:v4];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = charactersCopy;
  }

  else
  {
    v7 = v5;
    v8 = [charactersCopy length];
    v9 = MEMORY[0x1E696AD60];
    v10 = [charactersCopy substringToIndex:v7];
    v6 = [v9 stringWithString:v10];

    if (v7 >= v8)
    {
      v11 = v7;
    }

    else
    {
      v11 = v7;
      do
      {
        v12 = [charactersCopy characterAtIndex:v7];
        if ([v4 characterIsMember:v12])
        {
          v13 = v7 - v11;
          if (v7 > v11)
          {
            v14 = [charactersCopy substringWithRange:{v11, v13}];
            [v6 appendString:v14];
          }

          [v6 appendFormat:@"%C ", v13, (v12 + 288)];
          v11 = ++v7;
        }

        else
        {
          ++v7;
        }
      }

      while (v7 != v8);
    }

    if (v8 - 1 > v11)
    {
      v15 = [charactersCopy substringWithRange:{v11, v8 - 1 - v11}];
      [v6 appendString:v15];
    }
  }

  return v6;
}

- (AXSSLanguageManager)init
{
  v14.receiver = self;
  v14.super_class = AXSSLanguageManager;
  v2 = [(AXSSLanguageManager *)&v14 init];
  if (v2)
  {
    autoupdatingCurrentLocale = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    [(AXSSLanguageManager *)v2 setUserLocale:autoupdatingCurrentLocale];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__handleUserLocaleDidChange_ name:*MEMORY[0x1E695D8F0] object:0];

    v5 = objc_alloc_init(MEMORY[0x1E696AD48]);
    whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    [v5 formUnionWithCharacterSet:whitespaceAndNewlineCharacterSet];

    punctuationCharacterSet = [MEMORY[0x1E696AB08] punctuationCharacterSet];
    [v5 formUnionWithCharacterSet:punctuationCharacterSet];

    v8 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"0123456789•■"];
    [v5 formUnionWithCharacterSet:v8];

    controlCharacterSet = [MEMORY[0x1E696AB08] controlCharacterSet];
    [v5 formUnionWithCharacterSet:controlCharacterSet];

    [(AXSSLanguageManager *)v2 setCommonCharacters:v5];
    v10 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"αβγδεζηθικλμνξοπρσςτυφχψωΑΒΓΔΕΖΗΘΙΚΛΜΝΞΟΠΡΣΤΥΦΧΨΩ"];
    [(AXSSLanguageManager *)v2 setCommonGreekCharacters:v10];

    v11 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"\uFFFC"];
    [(AXSSLanguageManager *)v2 setIgnoredCharacters:v11];

    v12 = v2;
  }

  return v2;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  languageMaps = [(AXSSLanguageManager *)self languageMaps];
  v5 = [v3 stringWithFormat:@"AXSSLanguageManager:<%p>. %lu lang maps", self, objc_msgSend(languageMaps, "count")];

  return v5;
}

- (id)_preferredLanguage
{
  preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
  if ([preferredLanguages count])
  {
    v3 = [preferredLanguages objectAtIndex:0];
    v4 = AXSSLanguageConvertToCanonicalForm(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)systemLanguageID
{
  preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
  if ([preferredLanguages count])
  {
    userLocale = [preferredLanguages objectAtIndex:0];
    v5 = AXSSLanguageCanonicalFormToGeneralLanguage(userLocale);
  }

  else
  {
    userLocale = [(AXSSLanguageManager *)self userLocale];
    v6 = [userLocale objectForKey:*MEMORY[0x1E695D9B0]];
    v5 = AXSSLanguageCanonicalFormToGeneralLanguage(v6);
  }

  return v5;
}

- (NSArray)languageMaps
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__AXSSLanguageManager_languageMaps__block_invoke;
  block[3] = &unk_1E8134870;
  block[4] = self;
  if (languageMaps_onceToken != -1)
  {
    dispatch_once(&languageMaps_onceToken, block);
  }

  return self->_languageMaps;
}

uint64_t __35__AXSSLanguageManager_languageMaps__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 32) = +[AXSSLanguageLoader loadLanguages];

  return MEMORY[0x1EEE66BB8]();
}

- (AXSSDialectMap)dialectForSystemLanguage
{
  dialectForSystemLanguage = self->_dialectForSystemLanguage;
  if (!dialectForSystemLanguage)
  {
    [(AXSSLanguageManager *)self updateCachedDialects];
    dialectForSystemLanguage = self->_dialectForSystemLanguage;
  }

  return dialectForSystemLanguage;
}

- (void)setDialectForSystemLanguage:(id)language
{
  languageCopy = language;
  dialectForSystemLanguage = self->_dialectForSystemLanguage;
  p_dialectForSystemLanguage = &self->_dialectForSystemLanguage;
  v8 = languageCopy;
  if (![(AXSSDialectMap *)dialectForSystemLanguage isEqual:?])
  {
    objc_storeStrong(p_dialectForSystemLanguage, language);
  }
}

- (AXSSDialectMap)dialectForCurrentLocale
{
  dialectForCurrentLocale = self->_dialectForCurrentLocale;
  if (!dialectForCurrentLocale)
  {
    [(AXSSLanguageManager *)self updateCachedDialects];
    dialectForCurrentLocale = self->_dialectForCurrentLocale;
  }

  return dialectForCurrentLocale;
}

- (AXSSDialectMap)dialectForCurrentRegion
{
  dialectForCurrentRegion = self->_dialectForCurrentRegion;
  if (!dialectForCurrentRegion)
  {
    [(AXSSLanguageManager *)self updateCachedDialects];
    dialectForCurrentRegion = self->_dialectForCurrentRegion;
  }

  return dialectForCurrentRegion;
}

- (void)setDialectForCurrentLocale:(id)locale
{
  localeCopy = locale;
  dialectForCurrentLocale = self->_dialectForCurrentLocale;
  p_dialectForCurrentLocale = &self->_dialectForCurrentLocale;
  v8 = localeCopy;
  if (![(AXSSDialectMap *)dialectForCurrentLocale isEqual:?])
  {
    objc_storeStrong(p_dialectForCurrentLocale, locale);
  }
}

- (void)setDialectForCurrentRegion:(id)region
{
  regionCopy = region;
  dialectForCurrentRegion = self->_dialectForCurrentRegion;
  p_dialectForCurrentRegion = &self->_dialectForCurrentRegion;
  v8 = regionCopy;
  if (![(AXSSDialectMap *)dialectForCurrentRegion isEqual:?])
  {
    objc_storeStrong(p_dialectForCurrentRegion, region);
  }
}

- (id)dialectForLanguageID:(id)d
{
  v47 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (dCopy)
  {
    v5 = dCopy;
    if ([dCopy hasPrefix:@"zh"])
    {
      v6 = [v5 stringByReplacingOccurrencesOfString:@"Hant-" withString:&stru_1F405A428];

      v5 = [v6 stringByReplacingOccurrencesOfString:@"Hans-" withString:&stru_1F405A428];
    }

    dialectForSystemLanguage = [(AXSSLanguageManager *)self dialectForSystemLanguage];
    specificLanguageID = [dialectForSystemLanguage specificLanguageID];
    v9 = [specificLanguageID hasPrefix:v5];

    if (v9)
    {
      defaultDialect = dialectForSystemLanguage;
    }

    else
    {
      dialectForCurrentLocale = [(AXSSLanguageManager *)self dialectForCurrentLocale];
      specificLanguageID2 = [dialectForCurrentLocale specificLanguageID];
      v13 = [specificLanguageID2 hasPrefix:v5];

      if (v13)
      {
        defaultDialect = dialectForCurrentLocale;
      }

      else
      {
        dialectForCurrentRegion = [(AXSSLanguageManager *)self dialectForCurrentRegion];
        specificLanguageID3 = [dialectForCurrentRegion specificLanguageID];
        v16 = [specificLanguageID3 hasPrefix:v5];

        if (v16)
        {
          defaultDialect = dialectForCurrentRegion;
        }

        else
        {
          v33 = dialectForCurrentRegion;
          v34 = [v5 rangeOfString:@"-"];
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          obj = [(AXSSLanguageManager *)self languageMaps];
          v17 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v42;
            while (2)
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v42 != v19)
                {
                  objc_enumerationMutation(obj);
                }

                v21 = *(*(&v41 + 1) + 8 * i);
                generalLanguageID = [v21 generalLanguageID];
                if ([v5 hasPrefix:generalLanguageID])
                {

LABEL_22:
                  if (v34 != 0x7FFFFFFFFFFFFFFFLL)
                  {
                    v39 = 0u;
                    v40 = 0u;
                    v37 = 0u;
                    v38 = 0u;
                    dialects = [v21 dialects];
                    v25 = [dialects countByEnumeratingWithState:&v37 objects:v45 count:16];
                    if (v25)
                    {
                      v26 = v25;
                      v27 = *v38;
                      while (2)
                      {
                        for (j = 0; j != v26; ++j)
                        {
                          if (*v38 != v27)
                          {
                            objc_enumerationMutation(dialects);
                          }

                          v29 = *(*(&v37 + 1) + 8 * j);
                          specificLanguageID4 = [v29 specificLanguageID];
                          v31 = [specificLanguageID4 isEqualToString:v5];

                          if (v31)
                          {
                            defaultDialect = v29;

                            goto LABEL_34;
                          }
                        }

                        v26 = [dialects countByEnumeratingWithState:&v37 objects:v45 count:16];
                        if (v26)
                        {
                          continue;
                        }

                        break;
                      }
                    }
                  }

                  defaultDialect = [v21 defaultDialect];
LABEL_34:

                  goto LABEL_35;
                }

                alternateLanguageIDs = [v21 alternateLanguageIDs];
                v24 = [alternateLanguageIDs containsObject:v5];

                if (v24)
                {
                  goto LABEL_22;
                }
              }

              v18 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
              if (v18)
              {
                continue;
              }

              break;
            }
          }

          defaultDialect = 0;
LABEL_35:
          dialectForCurrentRegion = v33;
        }
      }
    }
  }

  else
  {
    defaultDialect = 0;
  }

  return defaultDialect;
}

- (id)dialectForSpeechSynthesisVoiceID:(id)d
{
  v35 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (dCopy)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    languageMaps = [(AXSSLanguageManager *)self languageMaps];
    v22 = [languageMaps countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v22)
    {
      v6 = *v30;
      v24 = languageMaps;
      v21 = *v30;
      do
      {
        v7 = 0;
        do
        {
          if (*v30 != v6)
          {
            objc_enumerationMutation(languageMaps);
          }

          v23 = v7;
          v8 = *(*(&v29 + 1) + 8 * v7);
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          dialects = [v8 dialects];
          v10 = [dialects countByEnumeratingWithState:&v25 objects:v33 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v26;
            do
            {
              for (i = 0; i != v11; ++i)
              {
                if (*v26 != v12)
                {
                  objc_enumerationMutation(dialects);
                }

                v14 = *(*(&v25 + 1) + 8 * i);
                voiceIdentifier = [v14 voiceIdentifier];
                if ([voiceIdentifier hasPrefix:dCopy])
                {
                  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
                  speakableCharacters = [v14 speakableCharacters];
                  v18 = [whitespaceCharacterSet isSupersetOfSet:speakableCharacters];

                  if (!v18)
                  {
                    dialectForSystemLanguage = v14;

                    goto LABEL_22;
                  }
                }

                else
                {
                }
              }

              v11 = [dialects countByEnumeratingWithState:&v25 objects:v33 count:16];
            }

            while (v11);
          }

          v7 = v23 + 1;
          languageMaps = v24;
          v6 = v21;
        }

        while (v23 + 1 != v22);
        v22 = [v24 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v22);
    }

    dialectForSystemLanguage = 0;
  }

  else
  {
    dialectForSystemLanguage = [(AXSSLanguageManager *)self dialectForSystemLanguage];
  }

LABEL_22:

  return dialectForSystemLanguage;
}

- (id)dialectsThatCanSpeakString:(id)string
{
  v37 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  array = [MEMORY[0x1E695DF70] array];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  languageMaps = [(AXSSLanguageManager *)self languageMaps];
  v7 = [languageMaps countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v32;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(languageMaps);
        }

        v11 = *(*(&v31 + 1) + 8 * i);
        defaultDialect = [v11 defaultDialect];
        v13 = [defaultDialect canSpeakString:stringCopy];

        if (v13)
        {
          defaultDialect2 = [v11 defaultDialect];
          [array addObject:defaultDialect2];
        }
      }

      v8 = [languageMaps countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v8);
  }

  preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
  array2 = [MEMORY[0x1E695DF70] array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v17 = preferredLanguages;
  v18 = [v17 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v28;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = AXSSLanguageConvertToCanonicalForm(*(*(&v27 + 1) + 8 * j));
        [array2 addObject:v22];
      }

      v19 = [v17 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v19);
  }

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __50__AXSSLanguageManager_dialectsThatCanSpeakString___block_invoke;
  v25[3] = &unk_1E8134FA0;
  v26 = array2;
  v23 = array2;
  [array sortUsingComparator:v25];

  return array;
}

uint64_t __50__AXSSLanguageManager_dialectsThatCanSpeakString___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x1E696AD98];
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = [v5 numberWithUnsignedInteger:{objc_msgSend(v6, "indexOfObject:", a2)}];
  v9 = MEMORY[0x1E696AD98];
  v10 = [*(a1 + 32) indexOfObject:v7];

  v11 = [v9 numberWithUnsignedInteger:v10];
  v12 = [v8 compare:v11];

  return v12;
}

- (id)dialectsThatCanSpeakCharacter:(unsigned __int16)character
{
  characterCopy = character;
  v23[1] = *MEMORY[0x1E69E9840];
  dialectForSystemLanguage = [(AXSSLanguageManager *)self dialectForSystemLanguage];
  if ([dialectForSystemLanguage canSpeakCharacter:characterCopy])
  {
    v23[0] = dialectForSystemLanguage;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
LABEL_3:
    v7 = v6;
    goto LABEL_9;
  }

  dialectForCurrentLocale = [(AXSSLanguageManager *)self dialectForCurrentLocale];

  if ([dialectForCurrentLocale canSpeakCharacter:characterCopy])
  {
    v22 = dialectForCurrentLocale;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
    dialectForSystemLanguage = dialectForCurrentLocale;
  }

  else
  {
    dialectForSystemLanguage = [(AXSSLanguageManager *)self dialectForCurrentRegion];

    if ([dialectForSystemLanguage canSpeakCharacter:characterCopy])
    {
      v21 = dialectForSystemLanguage;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
      goto LABEL_3;
    }

    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__3;
    v19 = __Block_byref_object_dispose__3;
    array = [MEMORY[0x1E695DF70] array];
    languageMaps = [(AXSSLanguageManager *)self languageMaps];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __53__AXSSLanguageManager_dialectsThatCanSpeakCharacter___block_invoke;
    v13[3] = &unk_1E8134FC8;
    v14 = characterCopy;
    v13[4] = &v15;
    [languageMaps enumerateObjectsWithOptions:0 usingBlock:v13];

    preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __53__AXSSLanguageManager_dialectsThatCanSpeakCharacter___block_invoke_2;
    v12[3] = &unk_1E8135018;
    v12[4] = &v15;
    [preferredLanguages enumerateObjectsWithOptions:2 usingBlock:v12];
    v7 = v16[5];

    _Block_object_dispose(&v15, 8);
  }

LABEL_9:

  return v7;
}

void __53__AXSSLanguageManager_dialectsThatCanSpeakCharacter___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 defaultDialect];
  v4 = [v3 canSpeakCharacter:*(a1 + 40)];

  if (v4)
  {
    v5 = [v9 defaultDialect];
    v6 = [v5 isDialectSecondaryForCharacter:*(a1 + 40)];

    if ((v6 & 1) == 0)
    {
      v7 = *(*(*(a1 + 32) + 8) + 40);
      v8 = [v9 defaultDialect];
      [v7 addObject:v8];
    }
  }
}

void __53__AXSSLanguageManager_dialectsThatCanSpeakCharacter___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = AXSSLanguageConvertToCanonicalForm(a2);
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__AXSSLanguageManager_dialectsThatCanSpeakCharacter___block_invoke_3;
  v9[3] = &unk_1E8134FF0;
  v5 = v3;
  v10 = v5;
  v6 = [v4 indexOfObjectPassingTest:v9];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v6;
    v8 = [*(*(*(a1 + 32) + 8) + 40) objectAtIndexedSubscript:v6];
    [*(*(*(a1 + 32) + 8) + 40) removeObjectAtIndex:v7];
    [*(*(*(a1 + 32) + 8) + 40) insertObject:v8 atIndex:0];
  }
}

uint64_t __53__AXSSLanguageManager_dialectsThatCanSpeakCharacter___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 languageMap];
  v4 = [v3 generalLanguageID];
  v5 = [v2 hasPrefix:v4];

  return v5;
}

- (id)dialectThatCanSpeakCharacter:(unsigned __int16)character
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = [(AXSSLanguageManager *)self dialectsThatCanSpeakCharacter:character];
  if ([v3 count] == 1)
  {
    firstObject = [v3 firstObject];
  }

  else
  {
    [MEMORY[0x1E695DF58] preferredLanguages];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v5 = v45 = 0u;
    v31 = [v5 countByEnumeratingWithState:&v42 objects:v48 count:16];
    if (v31)
    {
      v6 = *v43;
      v32 = v5;
      v33 = v3;
      v30 = *v43;
      do
      {
        v7 = 0;
        do
        {
          if (*v43 != v6)
          {
            objc_enumerationMutation(v5);
          }

          v8 = AXSSLanguageConvertToCanonicalForm(*(*(&v42 + 1) + 8 * v7));
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v9 = v3;
          v10 = [v9 countByEnumeratingWithState:&v38 objects:v47 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v39;
            while (2)
            {
              for (i = 0; i != v11; ++i)
              {
                if (*v39 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = *(*(&v38 + 1) + 8 * i);
                languageMap = [v14 languageMap];
                generalLanguageID = [languageMap generalLanguageID];
                v17 = [v8 hasPrefix:generalLanguageID];

                if (v17)
                {
                  firstObject = v14;

                  v5 = v32;
                  v3 = v33;
                  goto LABEL_30;
                }
              }

              v11 = [v9 countByEnumeratingWithState:&v38 objects:v47 count:16];
              if (v11)
              {
                continue;
              }

              break;
            }
          }

          ++v7;
          v5 = v32;
          v3 = v33;
          v6 = v30;
        }

        while (v7 != v31);
        v31 = [v32 countByEnumeratingWithState:&v42 objects:v48 count:16];
      }

      while (v31);
    }

    firstObject2 = [v3 firstObject];
    languageMap2 = [firstObject2 languageMap];
    isAmbiguous = [languageMap2 isAmbiguous];

    if (isAmbiguous)
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v21 = v3;
      v22 = [v21 countByEnumeratingWithState:&v34 objects:v46 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v35;
        while (2)
        {
          for (j = 0; j != v23; ++j)
          {
            if (*v35 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v34 + 1) + 8 * j);
            specificLanguageID = [v26 specificLanguageID];
            v28 = [specificLanguageID isEqualToString:@"en-US"];

            if (v28)
            {
              firstObject = v26;

              goto LABEL_30;
            }
          }

          v23 = [v21 countByEnumeratingWithState:&v34 objects:v46 count:16];
          if (v23)
          {
            continue;
          }

          break;
        }
      }
    }

    firstObject = [v3 firstObject];
LABEL_30:
  }

  return firstObject;
}

- (BOOL)isCharacterCommon:(unsigned __int16)common
{
  commonCopy = common;
  commonCharacters = [(AXSSLanguageManager *)self commonCharacters];
  LOBYTE(commonCopy) = [commonCharacters characterIsMember:commonCopy];

  return commonCopy;
}

- (BOOL)isCommonGreekCharacter:(unsigned __int16)character
{
  characterCopy = character;
  commonGreekCharacters = [(AXSSLanguageManager *)self commonGreekCharacters];
  LOBYTE(characterCopy) = [commonGreekCharacters characterIsMember:characterCopy];

  return characterCopy;
}

- (BOOL)isCharacterIgnored:(unsigned __int16)ignored
{
  ignoredCopy = ignored;
  ignoredCharacters = [(AXSSLanguageManager *)self ignoredCharacters];
  LOBYTE(ignoredCopy) = [ignoredCharacters characterIsMember:ignoredCopy];

  return ignoredCopy;
}

- (BOOL)isStringComposedByCommonCharacters:(id)characters
{
  charactersCopy = characters;
  if ([charactersCopy length])
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (v5 == v8 + v7)
    {
      v8 = v5;
      v7 = v6;
      commonCharacters = [(AXSSLanguageManager *)self commonCharacters];
      v5 = [charactersCopy rangeOfCharacterFromSet:commonCharacters options:1 range:{v6 + v5, objc_msgSend(charactersCopy, "length") - (v6 + v5)}];
      v6 = v10;

      if (v5 + v6 >= [charactersCopy length])
      {
        v11 = v5 != 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_8;
      }
    }

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

LABEL_8:

  return v11;
}

- (void)updateCachedDialects
{
  selfCopy = self;
  v92 = *MEMORY[0x1E69E9840];
  systemLanguageID = [(AXSSLanguageManager *)self systemLanguageID];
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  languageMaps = [(AXSSLanguageManager *)selfCopy languageMaps];
  v5 = [languageMaps countByEnumeratingWithState:&v82 objects:v91 count:16];
  v58 = selfCopy;
  v56 = systemLanguageID;
  if (v5)
  {
    v6 = v5;
    v7 = *v83;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v83 != v7)
        {
          objc_enumerationMutation(languageMaps);
        }

        v9 = *(*(&v82 + 1) + 8 * i);
        generalLanguageID = [v9 generalLanguageID];
        v11 = [systemLanguageID hasPrefix:generalLanguageID];

        if (v11)
        {
          _preferredLanguage = [(AXSSLanguageManager *)selfCopy _preferredLanguage];
          v78 = 0u;
          v79 = 0u;
          v80 = 0u;
          v81 = 0u;
          dialects = [v9 dialects];
          v20 = [dialects countByEnumeratingWithState:&v78 objects:v90 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v79;
            while (2)
            {
              for (j = 0; j != v21; ++j)
              {
                if (*v79 != v22)
                {
                  objc_enumerationMutation(dialects);
                }

                v24 = *(*(&v78 + 1) + 8 * j);
                specificLanguageID = [v24 specificLanguageID];
                v26 = [specificLanguageID isEqual:_preferredLanguage];

                if (v26)
                {
                  selfCopy = v58;
                  [(AXSSLanguageManager *)v58 setDialectForSystemLanguage:v24];
                  goto LABEL_30;
                }

                selfCopy = v58;
              }

              v21 = [dialects countByEnumeratingWithState:&v78 objects:v90 count:16];
              if (v21)
              {
                continue;
              }

              break;
            }
          }

LABEL_30:

          if (!selfCopy->_dialectForSystemLanguage)
          {
            defaultDialect = [v9 defaultDialect];
            [(AXSSLanguageManager *)selfCopy setDialectForSystemLanguage:defaultDialect];
          }

          systemLanguageID = v56;
          goto LABEL_33;
        }

        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        alternateLanguageIDs = [v9 alternateLanguageIDs];
        v13 = [alternateLanguageIDs countByEnumeratingWithState:&v74 objects:v89 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v75;
          while (2)
          {
            for (k = 0; k != v14; ++k)
            {
              if (*v75 != v15)
              {
                objc_enumerationMutation(alternateLanguageIDs);
              }

              if ([systemLanguageID hasPrefix:*(*(&v74 + 1) + 8 * k)])
              {
                defaultDialect2 = [v9 defaultDialect];
                selfCopy = v58;
                [(AXSSLanguageManager *)v58 setDialectForSystemLanguage:defaultDialect2];

                goto LABEL_17;
              }
            }

            v14 = [alternateLanguageIDs countByEnumeratingWithState:&v74 objects:v89 count:16];
            selfCopy = v58;
            if (v14)
            {
              continue;
            }

            break;
          }
        }

LABEL_17:
      }

      v6 = [languageMaps countByEnumeratingWithState:&v82 objects:v91 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_33:

  userLocale = [(AXSSLanguageManager *)selfCopy userLocale];
  v29 = [userLocale objectForKey:*MEMORY[0x1E695D9B0]];

  if (v29)
  {
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    languageMaps2 = [(AXSSLanguageManager *)selfCopy languageMaps];
    v31 = [languageMaps2 countByEnumeratingWithState:&v70 objects:v88 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v71;
      do
      {
        for (m = 0; m != v32; ++m)
        {
          if (*v71 != v33)
          {
            objc_enumerationMutation(languageMaps2);
          }

          v35 = *(*(&v70 + 1) + 8 * m);
          generalLanguageID2 = [v35 generalLanguageID];
          v37 = [v29 hasPrefix:generalLanguageID2];

          if (v37)
          {
            defaultDialect3 = [v35 defaultDialect];
            [(AXSSLanguageManager *)selfCopy setDialectForCurrentLocale:defaultDialect3];
          }
        }

        v32 = [languageMaps2 countByEnumeratingWithState:&v70 objects:v88 count:16];
      }

      while (v32);
    }
  }

  userLocale2 = [(AXSSLanguageManager *)selfCopy userLocale];
  v40 = *MEMORY[0x1E695D978];
  v41 = [userLocale2 objectForKey:*MEMORY[0x1E695D978]];

  if (v41)
  {
    v55 = v29;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    obj = [(AXSSLanguageManager *)selfCopy languageMaps];
    v60 = [obj countByEnumeratingWithState:&v66 objects:v87 count:16];
    if (v60)
    {
      v59 = *v67;
      do
      {
        v42 = 0;
        do
        {
          if (*v67 != v59)
          {
            objc_enumerationMutation(obj);
          }

          v61 = v42;
          v43 = *(*(&v66 + 1) + 8 * v42);
          v62 = 0u;
          v63 = 0u;
          v64 = 0u;
          v65 = 0u;
          dialects2 = [v43 dialects];
          v45 = [dialects2 countByEnumeratingWithState:&v62 objects:v86 count:16];
          if (v45)
          {
            v46 = v45;
            v47 = *v63;
            while (2)
            {
              for (n = 0; n != v46; ++n)
              {
                if (*v63 != v47)
                {
                  objc_enumerationMutation(dialects2);
                }

                v49 = *(*(&v62 + 1) + 8 * n);
                locale = [v49 locale];
                v51 = [locale objectForKey:v40];
                v52 = [v51 hasSuffix:v41];

                if (v52)
                {
                  [(AXSSLanguageManager *)v58 setDialectForCurrentRegion:v49];
                  goto LABEL_60;
                }
              }

              v46 = [dialects2 countByEnumeratingWithState:&v62 objects:v86 count:16];
              if (v46)
              {
                continue;
              }

              break;
            }
          }

LABEL_60:

          v42 = v61 + 1;
        }

        while (v61 + 1 != v60);
        v60 = [obj countByEnumeratingWithState:&v66 objects:v87 count:16];
      }

      while (v60);
    }

    v29 = v55;
    systemLanguageID = v56;
    selfCopy = v58;
  }

  if (!selfCopy->_dialectForSystemLanguage)
  {
    if (selfCopy->_dialectForCurrentLocale)
    {
      dialectForCurrentLocale = [(AXSSLanguageManager *)selfCopy dialectForCurrentLocale];
LABEL_68:
      v54 = dialectForCurrentLocale;
      [(AXSSLanguageManager *)selfCopy setDialectForSystemLanguage:dialectForCurrentLocale];

      goto LABEL_69;
    }

    if (selfCopy->_dialectForCurrentRegion)
    {
      dialectForCurrentLocale = [(AXSSLanguageManager *)selfCopy dialectForCurrentRegion];
      goto LABEL_68;
    }
  }

LABEL_69:
}

- (void)_handleUserLocaleDidChange:(id)change
{
  autoupdatingCurrentLocale = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [(AXSSLanguageManager *)self setUserLocale:autoupdatingCurrentLocale];

  [(AXSSLanguageManager *)self updateCachedDialects];
}

@end