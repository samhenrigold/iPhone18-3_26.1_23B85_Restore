@interface CIMCandidateData
+ (BOOL)shouldShowZhuyinSortingMethod;
+ (id)sortTitleFromSortingMethod:(int)method;
- (CIMCandidateData)init;
- (CIMCandidateData)initWithInputMode:(id)mode;
- (id)candidateGroupsFromDictionary:(id)dictionary sortedKeys:(id)keys;
- (id)candidatesSortedByEmoji:(id)emoji;
- (id)candidatesSortedByFrequency:(id)frequency omittingEmoji:(BOOL)emoji;
- (id)candidatesSortedByMethod:(int)method omittingEmoji:(BOOL)emoji;
- (id)candidatesSortedByPinyinOrZhuyin:(id)zhuyin simplified:(BOOL)simplified zhuyin:(BOOL)a5;
- (id)candidatesSortedByRadical:(id)radical simplified:(BOOL)simplified collationLocale:(id)locale;
- (id)candidatesSortedByStrokes:(id)strokes simplified:(BOOL)simplified;
- (id)candidatesSortedByWubi:(id)wubi omittingEmoji:(BOOL)emoji;
- (id)wordPropertyDictionaryForCandidates:(id)candidates isSimplified:(BOOL)simplified;
- (void)addCharacter:(id)character groupLabel:(id)label dictionary:(id)dictionary isSecondary:(BOOL)secondary;
- (void)clearCache;
- (void)sortCharactersByStrokeCount:(id)count wordPropertiesDictionary:(id)dictionary;
@end

@implementation CIMCandidateData

- (id)candidatesSortedByMethod:(int)method omittingEmoji:(BOOL)emoji
{
  emojiCopy = emoji;
  inputMode = [(CIMCandidateData *)self inputMode];
  SetLocaleFromInputMode(inputMode);

  v8 = GetCurrentLocale();
  localeIdentifier = [v8 localeIdentifier];

  if ([localeIdentifier isEqualToString:@"zh-Hans"])
  {
    goto LABEL_2;
  }

  if (([localeIdentifier isEqualToString:@"zh-Hant"] & 1) == 0 && (objc_msgSend(localeIdentifier, "isEqualToString:", @"yue-Hant") & 1) == 0)
  {
    NSLog(&cfstr_UnknownLocaleI.isa, localeIdentifier);
LABEL_2:
    v10 = 1;
    v11 = @"zh@collation=stroke";
    goto LABEL_6;
  }

  v10 = 0;
  v11 = @"zh@collation=unihan";
LABEL_6:
  v12 = objc_autoreleasePoolPush();
  if (method <= 4)
  {
    if (method == 2)
    {
      storedCandidates = [(CIMCandidateData *)self storedCandidates];
      v14 = [(CIMCandidateData *)self candidatesSortedByRadical:storedCandidates simplified:v10 collationLocale:v11];
      goto LABEL_24;
    }

    if (method != 3)
    {
      if (method == 4)
      {
        storedCandidates = [(CIMCandidateData *)self storedCandidates];
        selfCopy2 = self;
        v16 = storedCandidates;
        v17 = v10;
        v18 = 0;
LABEL_20:
        v14 = [(CIMCandidateData *)selfCopy2 candidatesSortedByPinyinOrZhuyin:v16 simplified:v17 zhuyin:v18];
        goto LABEL_24;
      }

LABEL_18:
      storedCandidates = [(CIMCandidateData *)self storedCandidates];
      v14 = [(CIMCandidateData *)self candidatesSortedByFrequency:storedCandidates omittingEmoji:emojiCopy];
      goto LABEL_24;
    }

    storedCandidates = [(CIMCandidateData *)self storedCandidates];
    v14 = [(CIMCandidateData *)self candidatesSortedByStrokes:storedCandidates simplified:v10];
  }

  else
  {
    if (method <= 6)
    {
      if (method != 5)
      {
        storedCandidates = [(CIMCandidateData *)self storedCandidates];
        v14 = [(CIMCandidateData *)self candidatesSortedByEmoji:storedCandidates];
        goto LABEL_24;
      }

      storedCandidates = [(CIMCandidateData *)self storedCandidates];
      selfCopy2 = self;
      v16 = storedCandidates;
      v17 = 0;
      v18 = 1;
      goto LABEL_20;
    }

    if (method != 7)
    {
      if (method == 8)
      {
        storedCandidates = [(CIMCandidateData *)self storedCandidates];
        v14 = [(CIMCandidateData *)self candidatesSortedByWubi:storedCandidates omittingEmoji:emojiCopy];
        goto LABEL_24;
      }

      goto LABEL_18;
    }

    v19 = MEMORY[0x277D6F358];
    storedCandidates = [(CIMCandidateData *)self storedCandidates];
    v14 = [v19 candidatesSortedByFacemarkCategoryFromCandidates:storedCandidates];
  }

LABEL_24:
  v20 = v14;

  objc_autoreleasePoolPop(v12);

  return v20;
}

- (id)candidatesSortedByWubi:(id)wubi omittingEmoji:(BOOL)emoji
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (emoji)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = [wubi _arrayByFilteringEmojiCandidates:v5];
  v7 = objc_alloc(MEMORY[0x277D6F3C8]);
  v8 = [MEMORY[0x277CBEB70] orderedSetWithArray:v6];
  v9 = [v7 initWithTitle:0 candidates:v8];
  v12[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];

  return v10;
}

- (id)candidatesSortedByPinyinOrZhuyin:(id)zhuyin simplified:(BOOL)simplified zhuyin:(BOOL)a5
{
  v35 = a5;
  simplifiedCopy = simplified;
  v63 = *MEMORY[0x277D85DE8];
  zhuyinCopy = zhuyin;
  v38 = [(CIMCandidateData *)self wordPropertyDictionaryForCandidates:zhuyinCopy isSimplified:simplifiedCopy];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = zhuyinCopy;
  v39 = [obj countByEnumeratingWithState:&v55 objects:v62 count:16];
  if (v39)
  {
    v37 = *v56;
    do
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v56 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v55 + 1) + 8 * i);
        label = [v11 label];
        [v38 objectForKeyedSubscript:?];

        v12 = MecabraWordPropertiesGetProperty();
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v13 = [v12 countByEnumeratingWithState:&v51 objects:v61 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v52;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v52 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v51 + 1) + 8 * j);
              if ([v17 length])
              {
                [(CIMCandidateData *)self addCharacter:v11 groupLabel:v17 dictionary:dictionary isSecondary:0];
                [orderedSet addObject:v17];
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v51 objects:v61 count:16];
          }

          while (v14);
        }
      }

      v39 = [obj countByEnumeratingWithState:&v55 objects:v62 count:16];
    }

    while (v39);
  }

  inputMode = [(CIMCandidateData *)self inputMode];
  SetLocaleFromInputMode(inputMode);

  if (v35)
  {
    v19 = &__block_literal_global_71;
  }

  else
  {
    v19 = &__block_literal_global_73;
  }

  v20 = MEMORY[0x26D6BFFC0](v19);
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v21 = dictionary;
  v42 = [v21 countByEnumeratingWithState:&v47 objects:v60 count:16];
  if (v42)
  {
    v40 = *v48;
    do
    {
      for (k = 0; k != v42; ++k)
      {
        if (*v48 != v40)
        {
          objc_enumerationMutation(v21);
        }

        v23 = [v21 objectForKey:*(*(&v47 + 1) + 8 * k)];
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v24 = [v23 countByEnumeratingWithState:&v43 objects:v59 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v44;
          do
          {
            for (m = 0; m != v25; ++m)
            {
              if (*v44 != v26)
              {
                objc_enumerationMutation(v23);
              }

              v28 = [v23 objectForKey:*(*(&v43 + 1) + 8 * m)];
              [v28 sortUsingComparator:v20];
            }

            v25 = [v23 countByEnumeratingWithState:&v43 objects:v59 count:16];
          }

          while (v25);
        }
      }

      v42 = [v21 countByEnumeratingWithState:&v47 objects:v60 count:16];
    }

    while (v42);
  }

  v29 = &selRef_traditionalChineseZhuyinCompare_;
  if (!v35)
  {
    v29 = &selRef_chinesePinyinCompare_;
  }

  v30 = *v29;
  array = [orderedSet array];
  v32 = [array sortedArrayUsingSelector:v30];

  v33 = [(CIMCandidateData *)self candidateGroupsFromDictionary:v21 sortedKeys:v32];

  return v33;
}

uint64_t __71__CIMCandidateData_candidatesSortedByPinyinOrZhuyin_simplified_zhuyin___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 candidate];
  v6 = [v4 candidate];

  v7 = [v5 chinesePinyinCompare:v6];
  return v7;
}

uint64_t __71__CIMCandidateData_candidatesSortedByPinyinOrZhuyin_simplified_zhuyin___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 candidate];
  v6 = [v4 candidate];

  v7 = [v5 traditionalChineseZhuyinCompare:v6];
  return v7;
}

- (id)candidatesSortedByStrokes:(id)strokes simplified:(BOOL)simplified
{
  simplifiedCopy = simplified;
  v28 = *MEMORY[0x277D85DE8];
  strokesCopy = strokes;
  selfCopy = self;
  v7 = [(CIMCandidateData *)self wordPropertyDictionaryForCandidates:strokesCopy isSimplified:simplifiedCopy];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = strokesCopy;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        label = [v14 label];
        [v7 objectForKeyedSubscript:label];

        v16 = MecabraWordPropertiesGetProperty();
        if ([v16 integerValue] >= 1)
        {
          stringValue = [v16 stringValue];
          [(CIMCandidateData *)selfCopy addCharacter:v14 groupLabel:stringValue dictionary:dictionary isSecondary:0];
          [orderedSet addObject:stringValue];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  [orderedSet sortUsingComparator:&__block_literal_global_69];
  array = [orderedSet array];
  v19 = [(CIMCandidateData *)selfCopy candidateGroupsFromDictionary:dictionary sortedKeys:array];

  return v19;
}

uint64_t __57__CIMCandidateData_candidatesSortedByStrokes_simplified___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 integerValue];
  v6 = [v4 integerValue];

  if (v5 < v6)
  {
    return -1;
  }

  else
  {
    return v5 > v6;
  }
}

- (id)candidatesSortedByRadical:(id)radical simplified:(BOOL)simplified collationLocale:(id)locale
{
  simplifiedCopy = simplified;
  v25 = *MEMORY[0x277D85DE8];
  radicalCopy = radical;
  v8 = [(CIMCandidateData *)self wordPropertyDictionaryForCandidates:radicalCopy isSimplified:simplifiedCopy];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = radicalCopy;
  v10 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        label = [v14 label];
        [v8 objectForKeyedSubscript:label];

        v16 = MecabraWordPropertiesGetProperty();
        -[CIMCandidateData addCharacter:groupLabel:dictionary:isSecondary:](self, "addCharacter:groupLabel:dictionary:isSecondary:", v14, v16, dictionary, [MecabraWordPropertiesGetProperty() BOOLValue] ^ 1);
      }

      v11 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  [(CIMCandidateData *)self sortCharactersByStrokeCount:dictionary wordPropertiesDictionary:v8];
  v17 = [(CIMCandidateData *)self candidateGroupsFromDictionary:dictionary sortedKeys:MecabraWordPropertiesGetSortedRadicalList()];

  return v17;
}

- (id)candidatesSortedByEmoji:(id)emoji
{
  v11[1] = *MEMORY[0x277D85DE8];
  emojiCopy = emoji;
  v4 = [emojiCopy indexesOfObjectsPassingTest:&__block_literal_global_197];
  v5 = [emojiCopy objectsAtIndexes:v4];

  v6 = objc_alloc(MEMORY[0x277D6F3C8]);
  v7 = [MEMORY[0x277CBEB70] orderedSetWithArray:v5];
  v8 = [v6 initWithTitle:0 candidates:v7];
  v11[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];

  return v9;
}

uint64_t __44__CIMCandidateData_candidatesSortedByEmoji___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isEmojiCandidate])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isStickerCandidate];
  }

  return v3;
}

- (id)candidatesSortedByFrequency:(id)frequency omittingEmoji:(BOOL)emoji
{
  emojiCopy = emoji;
  v14[1] = *MEMORY[0x277D85DE8];
  _sortedArrayByFrequency = [frequency _sortedArrayByFrequency];
  v6 = _sortedArrayByFrequency;
  if (emojiCopy)
  {
    v7 = 0;
  }

  else
  {
    v7 = 4;
  }

  v8 = [_sortedArrayByFrequency _arrayByFilteringEmojiCandidates:v7];
  v9 = objc_alloc(MEMORY[0x277D6F3C8]);
  v10 = [MEMORY[0x277CBEB70] orderedSetWithArray:v8];
  v11 = [v9 initWithTitle:0 candidates:v10];
  v14[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];

  return v12;
}

- (id)candidateGroupsFromDictionary:(id)dictionary sortedKeys:(id)keys
{
  v35 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  keysCopy = keys;
  array = [MEMORY[0x277CBEB18] array];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = keysCopy;
  v6 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v23 = *v30;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v29 + 1) + 8 * i);
        v10 = [dictionaryCopy objectForKey:v9];
        array2 = [MEMORY[0x277CBEB18] array];
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v12 = [&unk_287EC39B8 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v26;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v26 != v14)
              {
                objc_enumerationMutation(&unk_287EC39B8);
              }

              v16 = [v10 objectForKey:*(*(&v25 + 1) + 8 * j)];
              if ([v16 count])
              {
                [array2 addObjectsFromArray:v16];
              }
            }

            v13 = [&unk_287EC39B8 countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v13);
        }

        if ([array2 count])
        {
          v17 = objc_alloc(MEMORY[0x277D6F3C8]);
          v18 = [MEMORY[0x277CBEB70] orderedSetWithArray:array2];
          v19 = [v17 initWithTitle:v9 candidates:v18];

          [array addObject:v19];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v7);
  }

  return array;
}

- (void)sortCharactersByStrokeCount:(id)count wordPropertiesDictionary:(id)dictionary
{
  v29 = *MEMORY[0x277D85DE8];
  countCopy = count;
  dictionaryCopy = dictionary;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = countCopy;
  v15 = [countCopy countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v15)
  {
    v14 = *v24;
    do
    {
      v7 = 0;
      do
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [obj objectForKey:{*(*(&v23 + 1) + 8 * v7), v14}];
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v9 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v20;
          do
          {
            v12 = 0;
            do
            {
              if (*v20 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = [v8 objectForKey:*(*(&v19 + 1) + 8 * v12)];
              v17[0] = MEMORY[0x277D85DD0];
              v17[1] = 3221225472;
              v17[2] = __73__CIMCandidateData_sortCharactersByStrokeCount_wordPropertiesDictionary___block_invoke;
              v17[3] = &unk_279D9D340;
              v18 = dictionaryCopy;
              [v13 sortUsingComparator:v17];

              ++v12;
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v10);
        }

        ++v7;
      }

      while (v7 != v15);
      v15 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v15);
  }
}

uint64_t __73__CIMCandidateData_sortCharactersByStrokeCount_wordPropertiesDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [a2 candidate];
  [v5 objectForKeyedSubscript:v7];

  v8 = *(a1 + 32);
  v9 = [v6 candidate];

  [v8 objectForKeyedSubscript:v9];
  v10 = [MecabraWordPropertiesGetProperty() integerValue];
  v11 = [MecabraWordPropertiesGetProperty() integerValue];
  if (v10 < v11)
  {
    return -1;
  }

  else
  {
    return v10 > v11;
  }
}

- (id)wordPropertyDictionaryForCandidates:(id)candidates isSimplified:(BOOL)simplified
{
  v19 = *MEMORY[0x277D85DE8];
  candidatesCopy = candidates;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = candidatesCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        label = [*(*(&v14 + 1) + 8 * i) label];
        v12 = MecabraWordPropertiesCreate();
        [dictionary setObject:v12 forKeyedSubscript:label];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return dictionary;
}

- (void)addCharacter:(id)character groupLabel:(id)label dictionary:(id)dictionary isSecondary:(BOOL)secondary
{
  secondaryCopy = secondary;
  characterCopy = character;
  labelCopy = label;
  dictionaryCopy = dictionary;
  v11 = dictionaryCopy;
  if (labelCopy)
  {
    dictionary = [dictionaryCopy objectForKey:labelCopy];
    if (!dictionary)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      [v11 setObject:dictionary forKey:labelCopy];
    }

    v13 = [MEMORY[0x277CCABB0] numberWithBool:secondaryCopy];
    array = [dictionary objectForKey:v13];
    if (!array)
    {
      array = [MEMORY[0x277CBEB18] array];
      [dictionary setObject:array forKey:v13];
    }

    [array addObject:characterCopy];
  }
}

- (void)clearCache
{
  candidateInfoCache = [(CIMCandidateData *)self candidateInfoCache];
  [candidateInfoCache removeAllObjects];
}

- (CIMCandidateData)initWithInputMode:(id)mode
{
  modeCopy = mode;
  v10.receiver = self;
  v10.super_class = CIMCandidateData;
  v6 = [(CIMCandidateData *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_inputMode, mode);
    [(CIMCandidateData *)v7 setSortingMethod:1];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(CIMCandidateData *)v7 setCandidateInfoCache:dictionary];
  }

  return v7;
}

- (CIMCandidateData)init
{
  v3.receiver = self;
  v3.super_class = CIMCandidateData;
  return [(CIMCandidateData *)&v3 init];
}

+ (BOOL)shouldShowZhuyinSortingMethod
{
  v22 = *MEMORY[0x277D85DE8];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v3 = [currentLocale objectForKey:*MEMORY[0x277CBE690]];
  v4 = [v3 isEqualToString:@"TW"];

  if (v4)
  {
    return 1;
  }

  mEMORY[0x277D6F380] = [MEMORY[0x277D6F380] sharedInputModeController];
  enabledInputModeIdentifiers = [mEMORY[0x277D6F380] enabledInputModeIdentifiers];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = enabledInputModeIdentifiers;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = TIInputModeGetBaseLanguage();
        if ([v13 isEqualToString:{@"zh", v17}])
        {
          v14 = TIInputModeGetVariant();
          v15 = [v14 isEqualToString:@"Zhuyin"];

          if (v15)
          {

            v5 = 1;
            goto LABEL_14;
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v5 = 0;
LABEL_14:

  return v5;
}

+ (id)sortTitleFromSortingMethod:(int)method
{
  if ((method - 1) > 7)
  {
    return 0;
  }

  else
  {
    return off_279D9D3A0[method - 1];
  }
}

@end