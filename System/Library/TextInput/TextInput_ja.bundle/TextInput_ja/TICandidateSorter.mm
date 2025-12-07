@interface TICandidateSorter
- (BOOL)getInfoForCharacter:(id)character strokeCount:(unint64_t *)count radicals:(id *)radicals yomis:(id *)yomis;
- (BOOL)hasCandidatesFromCandidates:(id)candidates inputString:(id)string sortedBy:(unint64_t)by omittingEmoji:(BOOL)emoji;
- (BOOL)hasCandidatesSortedByEmojiCategoryFromCandidates:(id)candidates;
- (BOOL)hasCandidatesSortedByFacemarkCategoryFromCandidates:(id)candidates;
- (BOOL)hasCandidatesSortedByRadicalFromCandidates:(id)candidates;
- (BOOL)hasCandidatesSortedByYomiFromCandidates:(id)candidates inputString:(id)string;
- (TICandidateSorter)init;
- (id)candidatesFromCandidates:(id)candidates inputString:(id)string sortedBy:(unint64_t)by omittingEmoji:(BOOL)emoji;
- (id)candidatesSortedByDefaultFromCandidates:(id)candidates omittingEmoji:(BOOL)emoji;
- (id)candidatesSortedByEmojiFromCandidates:(id)candidates;
- (id)candidatesSortedByRadicalFromCandidates:(id)candidates;
- (id)candidatesSortedByYomiFromCandidates:(id)candidates inputString:(id)string;
- (void)dealloc;
@end

@implementation TICandidateSorter

- (TICandidateSorter)init
{
  v29 = *MEMORY[0x29EDCA608];
  v27.receiver = self;
  v27.super_class = TICandidateSorter;
  v2 = [(TICandidateSorter *)&v27 init];
  if (v2)
  {
    v3 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
    v4 = [v3 pathForResource:@"CharacterInfo.dictionary" ofType:0 inDirectory:0];

    v5 = *MEMORY[0x29EDB8ED8];
    [MEMORY[0x29EDB8E70] fileURLWithPath:v4 isDirectory:1];
    v6 = IDXCreateIndexObject();
    IDXSetRequestFields();
    [(TICandidateSorter *)v2 setIndex:v6];

    v7 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
    v8 = [v7 pathForResource:@"RadicalInfo-jp.plist" ofType:0 inDirectory:0];

    v22 = v8;
    v9 = [objc_alloc(MEMORY[0x29EDB8DC0]) initWithContentsOfFile:v8];
    v10 = [v9 count];
    Mutable = CFDictionaryCreateMutable(v5, v10, MEMORY[0x29EDB9010], 0);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = v9;
    v13 = [v12 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v24;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v23 + 1) + 8 * i);
          v18 = [v12 objectForKey:v17];
          v19 = [v18 objectAtIndex:0];
          unsignedIntegerValue = [v19 unsignedIntegerValue];

          CFDictionarySetValue(Mutable, v17, unsignedIntegerValue);
        }

        v14 = [v12 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v14);
    }

    [(TICandidateSorter *)v2 setRadicalToSortPosition:Mutable];
  }

  return v2;
}

- (void)dealloc
{
  index = self->_index;
  if (index)
  {
    CFRelease(index);
  }

  radicalToSortPosition = self->_radicalToSortPosition;
  if (radicalToSortPosition)
  {
    CFRelease(radicalToSortPosition);
  }

  v5.receiver = self;
  v5.super_class = TICandidateSorter;
  [(TICandidateSorter *)&v5 dealloc];
}

- (BOOL)getInfoForCharacter:(id)character strokeCount:(unint64_t *)count radicals:(id *)radicals yomis:(id *)yomis
{
  characterCopy = character;
  [(TICandidateSorter *)self index];
  IDXSetSearchString();

  matched = IDXGetMatchDataPtr();
  if (matched >= 1)
  {
    IDXGetFieldDataPtrs();
    if (count)
    {
      *count = MEMORY[0];
    }

    if (radicals)
    {
      *radicals = [MEMORY[0x29EDBA0F8] stringWithCharacters:0 length:v15 >> 1];
    }

    if (yomis)
    {
      v12 = [MEMORY[0x29EDBA0F8] stringWithCharacters:0 length:v16 >> 1];
      v13 = [v12 stringByReplacingOccurrencesOfString:@"/" withString:{@", "}];
      *yomis = [v13 componentsSeparatedByString:{@", "}];
    }
  }

  return matched > 0;
}

- (BOOL)hasCandidatesSortedByRadicalFromCandidates:(id)candidates
{
  v23 = *MEMORY[0x29EDCA608];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  candidatesCopy = candidates;
  v5 = [candidatesCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(candidatesCopy);
        }

        label = [*(*(&v18 + 1) + 8 * i) label];
        _firstGrapheme = [label _firstGrapheme];
        if ([_firstGrapheme length])
        {
          v16 = 0;
          v17 = 0;
          v11 = [(TICandidateSorter *)self getInfoForCharacter:_firstGrapheme strokeCount:&v17 radicals:&v16 yomis:0];
          v12 = v16;
          v13 = v12;
          if (v11 && [v12 length])
          {

            v14 = 1;
            goto LABEL_14;
          }
        }
      }

      v6 = [candidatesCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_14:

  return v14;
}

- (id)candidatesSortedByDefaultFromCandidates:(id)candidates omittingEmoji:(BOOL)emoji
{
  v15[1] = *MEMORY[0x29EDCA608];
  candidatesCopy = candidates;
  if ([(TICandidateSorter *)self liveConversionEnabled])
  {
    [candidatesCopy _sortedArrayByFrequency:2 extensionCandidateIndex:6 maxEmojisPerCandidate:1 ignoreTransliterateCandidate:1];
  }

  else
  {
    [candidatesCopy _sortedArrayByFrequency];
  }
  v7 = ;

  if (emoji)
  {
    v8 = [v7 _arrayByFilteringEmojiCandidates:0];
  }

  else
  {
    v8 = v7;
  }

  v9 = v8;
  v10 = objc_alloc(MEMORY[0x29EDC7078]);
  v11 = [MEMORY[0x29EDB8E30] orderedSetWithArray:v9];
  v12 = [v10 initWithTitle:0 candidates:v11];
  v15[0] = v12;
  v13 = [MEMORY[0x29EDB8D80] arrayWithObjects:v15 count:1];

  return v13;
}

- (id)candidatesSortedByRadicalFromCandidates:(id)candidates
{
  v67 = *MEMORY[0x29EDCA608];
  candidatesCopy = candidates;
  array = [MEMORY[0x29EDB8DE8] array];
  context = objc_autoreleasePoolPush();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], 0);
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  cf = [MEMORY[0x29EDB8E00] dictionary];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = candidatesCopy;
  v6 = [obj countByEnumeratingWithState:&v60 objects:v66 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v61;
    v36 = v55;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v61 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v60 + 1) + 8 * i);
        if (([v10 isTransliterationCandidate] & 1) == 0)
        {
          label = [v10 label];
          _firstGrapheme = [label _firstGrapheme];
          if ([_firstGrapheme length])
          {
            [dictionary setObject:_firstGrapheme forKey:label];
            v58 = 0;
            value = 0;
            v13 = [(TICandidateSorter *)self getInfoForCharacter:_firstGrapheme strokeCount:&value radicals:&v58 yomis:0];
            v14 = v58;
            if (v13)
            {
              CFDictionarySetValue(Mutable, _firstGrapheme, value);
              v15 = [v14 length];
              v54[0] = MEMORY[0x29EDCA5F8];
              v54[1] = 3221225472;
              v55[0] = __61__TICandidateSorter_candidatesSortedByRadicalFromCandidates___block_invoke;
              v55[1] = &unk_29F3793C0;
              v56 = cf;
              v57 = v10;
              [v14 enumerateSubstringsInRange:0 options:v15 usingBlock:{2, v54}];
            }
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v60 objects:v66 count:16];
    }

    while (v7);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v16 = cf;
  v17 = [v16 countByEnumeratingWithState:&v50 objects:v65 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v51;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v51 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [v16 objectForKey:{*(*(&v50 + 1) + 8 * j), context}];
        v47[0] = MEMORY[0x29EDCA5F8];
        v47[1] = 3221225472;
        v47[2] = __61__TICandidateSorter_candidatesSortedByRadicalFromCandidates___block_invoke_2;
        v47[3] = &unk_29F3793E8;
        v48 = dictionary;
        v49 = Mutable;
        [v21 sortUsingComparator:v47];
      }

      v18 = [v16 countByEnumeratingWithState:&v50 objects:v65 count:16];
    }

    while (v18);
  }

  cfa = Mutable;

  radicalToSortPosition = [(TICandidateSorter *)self radicalToSortPosition];
  allKeys = [v16 allKeys];
  v46[0] = MEMORY[0x29EDCA5F8];
  v46[1] = 3221225472;
  v46[2] = __61__TICandidateSorter_candidatesSortedByRadicalFromCandidates___block_invoke_3;
  v46[3] = &__block_descriptor_40_e11_q24__0_8_16l;
  v46[4] = radicalToSortPosition;
  v24 = [allKeys sortedArrayUsingComparator:v46];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v25 = v24;
  v26 = [v25 countByEnumeratingWithState:&v42 objects:v64 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v43;
    do
    {
      for (k = 0; k != v27; ++k)
      {
        if (*v43 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v42 + 1) + 8 * k);
        v31 = objc_alloc(MEMORY[0x29EDC7078]);
        v32 = [v16 objectForKey:v30];
        v33 = [v31 initWithTitle:v30 candidates:v32];

        [array addObject:v33];
      }

      v27 = [v25 countByEnumeratingWithState:&v42 objects:v64 count:16];
    }

    while (v27);
  }

  CFRelease(cfa);
  objc_autoreleasePoolPop(context);

  return array;
}

uint64_t __61__TICandidateSorter_candidatesSortedByRadicalFromCandidates___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 length])
  {
    v3 = [*(a1 + 32) objectForKey:v5];
    if (!v3)
    {
      v3 = [MEMORY[0x29EDB8E10] orderedSet];
      [*(a1 + 32) setObject:v3 forKey:v5];
    }

    [v3 addObject:*(a1 + 40)];
  }

  return MEMORY[0x2A1C71048]();
}

uint64_t __61__TICandidateSorter_candidatesSortedByRadicalFromCandidates___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 label];
  v7 = [v5 label];

  v8 = [*(a1 + 32) objectForKey:v6];
  v9 = [*(a1 + 32) objectForKey:v7];
  if ([v8 isEqualToString:v9])
  {
    v10 = [v6 length];
    v11 = [v7 length];
    v12 = v10 >= v11;
    v13 = v10 > v11;
  }

  else
  {
    Value = CFDictionaryGetValue(*(a1 + 40), v8);
    v15 = CFDictionaryGetValue(*(a1 + 40), v9);
    v12 = Value >= v15;
    v13 = Value > v15;
  }

  v16 = !v12;
  v17 = v13;
  if (v16)
  {
    v18 = -1;
  }

  else
  {
    v18 = v17;
  }

  return v18;
}

uint64_t __61__TICandidateSorter_candidatesSortedByRadicalFromCandidates___block_invoke_3(uint64_t a1, const void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  Value = CFDictionaryGetValue(v5, a2);
  v8 = CFDictionaryGetValue(*(a1 + 32), v6);

  if (Value < v8)
  {
    return -1;
  }

  else
  {
    return Value > v8;
  }
}

- (BOOL)hasCandidatesSortedByYomiFromCandidates:(id)candidates inputString:(id)string
{
  v50 = *MEMORY[0x29EDCA608];
  candidatesCopy = candidates;
  stringCopy = string;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v8 = candidatesCopy;
  v9 = [v8 countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v45;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v45 != v11)
        {
          objc_enumerationMutation(v8);
        }

        label = [*(*(&v44 + 1) + 8 * i) label];
        if ([label _containsJapaneseOnly])
        {
          _firstGrapheme = [label _firstGrapheme];
          if ([_firstGrapheme length])
          {
            v42 = 0;
            v43 = 0;
            v15 = [(TICandidateSorter *)self getInfoForCharacter:_firstGrapheme strokeCount:&v43 radicals:0 yomis:&v42];
            v16 = v42;
            if (v15)
            {
              v40 = 0u;
              v41 = 0u;
              v38 = 0u;
              v39 = 0u;
              v34 = v16;
              v17 = v16;
              v36 = [v17 countByEnumeratingWithState:&v38 objects:v48 count:16];
              if (v36)
              {
                v37 = *v39;
                v32 = v11;
                v33 = v8;
                selfCopy = self;
                v31 = v10;
                v35 = v17;
                while (2)
                {
                  for (j = 0; j != v36; ++j)
                  {
                    if (*v39 != v37)
                    {
                      objc_enumerationMutation(v17);
                    }

                    v19 = *(*(&v38 + 1) + 8 * j);
                    if ([v19 length])
                    {
                      v20 = [v19 rangeOfComposedCharacterSequenceAtIndex:0];
                      v22 = [v19 substringWithRange:{v20, v21}];
                      stringByConvertingKatakanaToHiragana = [v22 stringByConvertingKatakanaToHiragana];

                      v24 = [stringCopy length];
                      v25 = 1;
                      while (v24)
                      {
                        v26 = [stringCopy substringToIndex:v25];
                        v27 = [stringByConvertingKatakanaToHiragana isEqualToString:v26];

                        --v24;
                        ++v25;
                        if (v27)
                        {

                          v10 = v31;
                          v11 = v32;
                          v17 = v35;
                          goto LABEL_19;
                        }
                      }

                      v28 = 1;
                      v8 = v33;
                      goto LABEL_29;
                    }

LABEL_19:
                    ;
                  }

                  v8 = v33;
                  self = selfCopy;
                  v36 = [v17 countByEnumeratingWithState:&v38 objects:v48 count:16];
                  if (v36)
                  {
                    continue;
                  }

                  break;
                }
              }

              v16 = v34;
            }
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v44 objects:v49 count:16];
      v28 = 0;
    }

    while (v10);
  }

  else
  {
    v28 = 0;
  }

LABEL_29:

  return v28;
}

- (id)candidatesSortedByYomiFromCandidates:(id)candidates inputString:(id)string
{
  v105 = *MEMORY[0x29EDCA608];
  candidatesCopy = candidates;
  stringCopy = string;
  array = [MEMORY[0x29EDB8DE8] array];
  context = objc_autoreleasePoolPush();
  theDict = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], 0);
  v7 = [MEMORY[0x29EDB8E00] dictionaryWithCapacity:{objc_msgSend(candidatesCopy, "count")}];
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v9 = candidatesCopy;
  v10 = [v9 countByEnumeratingWithState:&v96 objects:v104 count:16];
  v62 = v9;
  if (v10)
  {
    v11 = v10;
    v12 = *v97;
    v60 = v7;
    selfCopy = self;
    v59 = *v97;
    do
    {
      v13 = 0;
      v64 = v11;
      do
      {
        if (*v97 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v96 + 1) + 8 * v13);
        if (([v14 isTransliterationCandidate] & 1) == 0)
        {
          label = [v14 label];
          if ([label _containsJapaneseOnly])
          {
            _firstGrapheme = [label _firstGrapheme];
            if ([_firstGrapheme length])
            {
              v70 = label;
              [v7 setObject:_firstGrapheme forKey:label];
              v94 = 0;
              value = 0;
              key = _firstGrapheme;
              v17 = [(TICandidateSorter *)self getInfoForCharacter:_firstGrapheme strokeCount:&value radicals:0 yomis:&v94];
              v18 = v94;
              if (v17)
              {
                obj = v13;
                CFDictionarySetValue(theDict, key, value);
                v92 = 0u;
                v93 = 0u;
                v90 = 0u;
                v91 = 0u;
                v66 = v18;
                v19 = v18;
                v20 = [v19 countByEnumeratingWithState:&v90 objects:v103 count:16];
                if (v20)
                {
                  v21 = v20;
                  v22 = *v91;
                  do
                  {
                    for (i = 0; i != v21; ++i)
                    {
                      if (*v91 != v22)
                      {
                        objc_enumerationMutation(v19);
                      }

                      v24 = *(*(&v90 + 1) + 8 * i);
                      if ([v24 length])
                      {
                        v25 = [v24 rangeOfComposedCharacterSequenceAtIndex:0];
                        v27 = [v24 substringWithRange:{v25, v26}];
                        stringByConvertingKatakanaToHiragana = [v27 stringByConvertingKatakanaToHiragana];

                        orderedSet = [dictionary objectForKey:stringByConvertingKatakanaToHiragana];
                        if (!orderedSet)
                        {
                          orderedSet = [MEMORY[0x29EDB8E10] orderedSet];
                          [dictionary setObject:orderedSet forKey:stringByConvertingKatakanaToHiragana];
                        }

                        v30 = [v14 copy];
                        [v30 setAlternativeText:v24];
                        [orderedSet addObject:v30];
                      }
                    }

                    v21 = [v19 countByEnumeratingWithState:&v90 objects:v103 count:16];
                  }

                  while (v21);
                }

                self = selfCopy;
                v9 = v62;
                v12 = v59;
                v7 = v60;
                v11 = v64;
                v18 = v66;
                v13 = obj;
              }

              label = v70;
              _firstGrapheme = key;
            }
          }
        }

        v13 = v13 + 1;
      }

      while (v13 != v11);
      v11 = [v9 countByEnumeratingWithState:&v96 objects:v104 count:16];
    }

    while (v11);
  }

  v87[0] = MEMORY[0x29EDCA5F8];
  v87[1] = 3221225472;
  v87[2] = __70__TICandidateSorter_candidatesSortedByYomiFromCandidates_inputString___block_invoke;
  v87[3] = &unk_29F3793E8;
  v67 = v7;
  v88 = v67;
  v89 = theDict;
  v31 = MEMORY[0x29EDA3C60](v87);
  v32 = [stringCopy length];
  if (v32)
  {
    v33 = v32;
    v34 = 1;
    do
    {
      v35 = [stringCopy substringToIndex:v34];
      [dictionary removeObjectForKey:v35];

      ++v34;
      --v33;
    }

    while (v33);
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v36 = dictionary;
  v37 = [v36 countByEnumeratingWithState:&v83 objects:v102 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v84;
    do
    {
      for (j = 0; j != v38; ++j)
      {
        if (*v84 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = [v36 objectForKey:*(*(&v83 + 1) + 8 * j)];
        [v41 sortUsingComparator:v31];
      }

      v38 = [v36 countByEnumeratingWithState:&v83 objects:v102 count:16];
    }

    while (v38);
  }

  allKeys = [v36 allKeys];
  v65 = v31;
  v43 = [allKeys sortedArrayUsingComparator:v31];

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  obja = v43;
  keya = [obja countByEnumeratingWithState:&v79 objects:v101 count:16];
  if (keya)
  {
    v71 = *v80;
    do
    {
      for (k = 0; k != keya; k = k + 1)
      {
        if (*v80 != v71)
        {
          objc_enumerationMutation(obja);
        }

        v45 = *(*(&v79 + 1) + 8 * k);
        v46 = [v36 objectForKey:v45];
        v75 = 0u;
        v76 = 0u;
        v77 = 0u;
        v78 = 0u;
        v47 = [v46 countByEnumeratingWithState:&v75 objects:v100 count:16];
        if (v47)
        {
          v48 = v47;
          v49 = 0;
          v50 = *v76;
          do
          {
            for (m = 0; m != v48; ++m)
            {
              if (*v76 != v50)
              {
                objc_enumerationMutation(v46);
              }

              v52 = *(*(&v75 + 1) + 8 * m);
              label2 = [v52 label];
              if ([label2 _graphemeCount] == 1)
              {
                v54 = label2;

                v49 = v54;
              }

              else if (v49 && [label2 hasPrefix:v49])
              {
                [v52 setAlternativeText:0];
              }
            }

            v48 = [v46 countByEnumeratingWithState:&v75 objects:v100 count:16];
          }

          while (v48);
        }

        else
        {
          v49 = 0;
        }

        v55 = [objc_alloc(MEMORY[0x29EDC7078]) initWithTitle:v45 candidates:v46];
        [array addObject:v55];
      }

      keya = [obja countByEnumeratingWithState:&v79 objects:v101 count:16];
    }

    while (keya);
  }

  CFRelease(theDict);
  objc_autoreleasePoolPop(context);

  return array;
}

uint64_t __70__TICandidateSorter_candidatesSortedByYomiFromCandidates_inputString___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v5 label];
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v6 label];
  }

  else
  {
    v9 = v6;
  }

  v10 = v9;
  v11 = [v8 substringToIndex:1];
  v12 = [v11 mutableCopy];

  v13 = *MEMORY[0x29EDB8FE0];
  CFStringTransform(v12, 0, *MEMORY[0x29EDB8FE0], 1u);
  v14 = [v10 substringToIndex:1];
  v15 = [v14 mutableCopy];

  CFStringTransform(v15, 0, v13, 1u);
  v16 = [(__CFString *)v12 compare:v15];
  if (!v16)
  {
    v16 = [v8 localizedStandardCompare:v10];
    if (!v16)
    {
      v19 = [*(a1 + 32) objectForKey:v8];
      if (!v19)
      {
        v19 = [v8 _firstGrapheme];
      }

      v20 = [*(a1 + 32) objectForKey:v10];
      if (!v20)
      {
        v20 = [v10 _firstGrapheme];
      }

      Value = CFDictionaryGetValue(*(a1 + 40), v19);
      v22 = CFDictionaryGetValue(*(a1 + 40), v20);

      if (Value < v22)
      {
        v17 = -1;
        goto LABEL_10;
      }

      if (Value > v22)
      {
        v17 = 1;
        goto LABEL_10;
      }

      v16 = [v8 localizedStandardCompare:v10];
    }
  }

  v17 = v16;
LABEL_10:

  return v17;
}

- (id)candidatesSortedByEmojiFromCandidates:(id)candidates
{
  v12[1] = *MEMORY[0x29EDCA608];
  v3 = MEMORY[0x29EDBA0A8];
  candidatesCopy = candidates;
  v5 = [v3 predicateWithBlock:&__block_literal_global_6];
  v6 = [candidatesCopy filteredArrayUsingPredicate:v5];

  v7 = objc_alloc(MEMORY[0x29EDC7078]);
  v8 = [MEMORY[0x29EDB8E30] orderedSetWithArray:v6];
  v9 = [v7 initWithTitle:0 candidates:v8];
  v12[0] = v9;
  v10 = [MEMORY[0x29EDB8D80] arrayWithObjects:v12 count:1];

  return v10;
}

uint64_t __59__TICandidateSorter_candidatesSortedByEmojiFromCandidates___block_invoke(uint64_t a1, void *a2)
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

- (BOOL)hasCandidatesSortedByFacemarkCategoryFromCandidates:(id)candidates
{
  v13 = *MEMORY[0x29EDCA608];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  candidatesCopy = candidates;
  v4 = [candidatesCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(candidatesCopy);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [candidatesCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (BOOL)hasCandidatesSortedByEmojiCategoryFromCandidates:(id)candidates
{
  v13 = *MEMORY[0x29EDCA608];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  candidatesCopy = candidates;
  v4 = [candidatesCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(candidatesCopy);
        }

        if ([*(*(&v8 + 1) + 8 * i) isEmojiCandidate])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [candidatesCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (BOOL)hasCandidatesFromCandidates:(id)candidates inputString:(id)string sortedBy:(unint64_t)by omittingEmoji:(BOOL)emoji
{
  emojiCopy = emoji;
  candidatesCopy = candidates;
  stringCopy = string;
  if (by > 2)
  {
    if (by == 3)
    {
      v12 = [(TICandidateSorter *)self hasCandidatesSortedByFacemarkCategoryFromCandidates:candidatesCopy];
      goto LABEL_13;
    }

    if (by == 4)
    {
      v12 = [(TICandidateSorter *)self hasCandidatesSortedByEmojiCategoryFromCandidates:candidatesCopy];
      goto LABEL_13;
    }
  }

  else
  {
    if (by == 1)
    {
      v12 = [(TICandidateSorter *)self hasCandidatesSortedByRadicalFromCandidates:candidatesCopy];
      goto LABEL_13;
    }

    if (by == 2)
    {
      v12 = [(TICandidateSorter *)self hasCandidatesSortedByYomiFromCandidates:candidatesCopy inputString:stringCopy];
LABEL_13:
      v14 = v12;
      goto LABEL_14;
    }
  }

  if (emojiCopy)
  {
    v13 = [candidatesCopy _arrayByFilteringEmojiCandidates:0];

    candidatesCopy = v13;
  }

  v14 = [candidatesCopy count] != 0;
LABEL_14:

  return v14;
}

- (id)candidatesFromCandidates:(id)candidates inputString:(id)string sortedBy:(unint64_t)by omittingEmoji:(BOOL)emoji
{
  emojiCopy = emoji;
  candidatesCopy = candidates;
  stringCopy = string;
  if (by > 2)
  {
    if (by != 3)
    {
      if (by == 4)
      {
        v12 = [(TICandidateSorter *)self candidatesSortedByEmojiFromCandidates:candidatesCopy];
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v12 = [MEMORY[0x29EDC6FE0] candidatesSortedByFacemarkCategoryFromCandidates:candidatesCopy];
  }

  else
  {
    if (by != 1)
    {
      if (by == 2)
      {
        v12 = [(TICandidateSorter *)self candidatesSortedByYomiFromCandidates:candidatesCopy inputString:stringCopy];
        goto LABEL_11;
      }

LABEL_8:
      v12 = [(TICandidateSorter *)self candidatesSortedByDefaultFromCandidates:candidatesCopy omittingEmoji:emojiCopy];
      goto LABEL_11;
    }

    v12 = [(TICandidateSorter *)self candidatesSortedByRadicalFromCandidates:candidatesCopy];
  }

LABEL_11:
  v13 = v12;

  return v13;
}

@end