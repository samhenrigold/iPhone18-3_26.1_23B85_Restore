@interface SGLanguageDetection
+ (_NSRange)tokenRangeForText:(id)text maxTruncatedLength:(unint64_t)length tagger:(id)tagger taggerOptions:(unint64_t)options prevTextTokenMaxRange:(unint64_t)range originalLengthShortfall:(unint64_t)shortfall lowercaseText:(id)lowercaseText lowercaseRange:(_NSRange)self0;
+ (id)defaultLanguage;
+ (id)detectLanguageFromLanguageTags:(id)tags;
+ (id)detectLanguageFromLanguageTags:(id)tags withMinimumCount:(unint64_t)count withMinimumAgreement:(double)agreement;
+ (id)detectLanguageFromText:(id)text;
+ (id)detectLanguageFromText:(id)text withMaxLength:(unint64_t)length withMaxTags:(unint64_t)tags withMinimumCount:(unint64_t)count withMinimumAgreement:(double)agreement;
+ (id)dominantLanguageTagFromLanguageTags:(id)tags;
+ (id)dominantLanguageTagFromLanguageTags:(id)tags withMinimumCount:(unint64_t)count withMinimumAgreement:(double)agreement;
+ (id)dominantLanguageTagFromText:(id)text;
+ (id)dominantLanguageTagFromText:(id)text withMaxLength:(unint64_t)length withMaxTags:(unint64_t)tags withMinimumCount:(unint64_t)count withMinimumAgreement:(double)agreement;
+ (id)languageForLocaleIdentifier:(id)identifier;
+ (id)languageTagsFromText:(id)text withMaxLength:(unint64_t)length withMaxTags:(unint64_t)tags;
+ (void)logMatchingForRange:(_NSRange)range lowercaseRange:(_NSRange)lowercaseRange text:(id)text lowercaseText:(id)lowercaseText;
@end

@implementation SGLanguageDetection

+ (void)logMatchingForRange:(_NSRange)range lowercaseRange:(_NSRange)lowercaseRange text:(id)text lowercaseText:(id)lowercaseText
{
  length = lowercaseRange.length;
  location = lowercaseRange.location;
  v9 = range.length;
  v10 = range.location;
  v30 = *MEMORY[0x277D85DE8];
  textCopy = text;
  lowercaseTextCopy = lowercaseText;
  v14 = location + length == [lowercaseTextCopy length];
  if (((v14 ^ (v10 + v9 != [textCopy length])) & 1) == 0)
  {
    v15 = objc_autoreleasePoolPush();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109888;
      *v28 = location + length;
      *&v28[4] = 1024;
      *&v28[6] = [lowercaseTextCopy length];
      *v29 = 1024;
      *&v29[2] = v10 + v9;
      *&v29[6] = 1024;
      *&v29[8] = [textCopy length];
      _os_log_debug_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "SGLanguageDetection: mismatched lowercase rangeEnd %d, stringEnd %d / original rangeEnd %d, stringEnd %d", buf, 0x1Au);
    }

    objc_autoreleasePoolPop(v15);
  }

  if (location == v10 && length != v9)
  {
    v16 = objc_autoreleasePoolPush();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109888;
      *v28 = v10;
      *&v28[4] = 1024;
      *&v28[6] = length;
      *v29 = 1024;
      *&v29[2] = v10;
      *&v29[6] = 1024;
      *&v29[8] = v9;
      _os_log_debug_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "SGLanguageDetection: lowercase tokenRange is loc %d, len %d but original range is loc %d, len %d", buf, 0x1Au);
    }

    v17 = length - v9;
    if (length - v9 < 0)
    {
      v17 = v9 - length;
    }

    if (v17 >= 3)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 67109888;
        *v28 = v10;
        *&v28[4] = 1024;
        *&v28[6] = length;
        *v29 = 1024;
        *&v29[2] = v10;
        *&v29[6] = 1024;
        *&v29[8] = v9;
        _os_log_error_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "SGLanguageDetection: strange! lowercase is loc %d, len %d but original is loc %d, len %d", buf, 0x1Au);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v19 = [lowercaseTextCopy substringWithRange:{location, length}];
        v20 = [lowercaseTextCopy length];
        v21 = [textCopy substringWithRange:{v10, v9}];
        v22 = [textCopy length];
        *buf = 138413058;
        *v28 = v19;
        *&v28[8] = 1024;
        *v29 = v20;
        *&v29[4] = 2112;
        *&v29[6] = v21;
        *&v29[14] = 1024;
        *&v29[16] = v22;
        _os_log_error_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "SGLanguageDetection: possible problem! lowercase '%@' strlen %d and original '%@' strlen %d", buf, 0x22u);
      }
    }

    v18 = [textCopy length];
    if (v18 > [lowercaseTextCopy length] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      v23 = [textCopy length];
      v24 = [lowercaseTextCopy length];
      defaultLanguage = [self defaultLanguage];
      v26 = [MEMORY[0x277CCAAE8] dominantLanguageForString:textCopy];
      *buf = 67109890;
      *v28 = v23;
      *&v28[4] = 1024;
      *&v28[6] = v24;
      *v29 = 2112;
      *&v29[2] = defaultLanguage;
      *&v29[10] = 2112;
      *&v29[12] = v26;
      _os_log_fault_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "SGLanguageDetection: original len %d is longer than the lowercased len %d in locale %@, detected %@", buf, 0x22u);
    }

    objc_autoreleasePoolPop(v16);
  }
}

+ (_NSRange)tokenRangeForText:(id)text maxTruncatedLength:(unint64_t)length tagger:(id)tagger taggerOptions:(unint64_t)options prevTextTokenMaxRange:(unint64_t)range originalLengthShortfall:(unint64_t)shortfall lowercaseText:(id)lowercaseText lowercaseRange:(_NSRange)self0
{
  v56 = *MEMORY[0x277D85DE8];
  textCopy = text;
  taggerCopy = tagger;
  lowercaseTextCopy = lowercaseText;
  [taggerCopy setString:textCopy];
  v43 = 0;
  v44 = &v43;
  v45 = 0x3010000000;
  v46 = &unk_2479DE472;
  v47 = xmmword_2479D4580;
  v17 = [textCopy length];
  if (v17 >= length)
  {
    lengthCopy = length;
  }

  else
  {
    lengthCopy = v17;
  }

  v19 = lengthCopy - range;
  v20 = *MEMORY[0x277CCA408];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __156__SGLanguageDetection_tokenRangeForText_maxTruncatedLength_tagger_taggerOptions_prevTextTokenMaxRange_originalLengthShortfall_lowercaseText_lowercaseRange___block_invoke;
  v35[3] = &unk_278EB8410;
  v21 = textCopy;
  v36 = v21;
  v39 = a2;
  selfCopy = self;
  shortfallCopy = shortfall;
  lowercaseRangeCopy = lowercaseRange;
  v22 = lowercaseTextCopy;
  v37 = v22;
  v38 = &v43;
  [taggerCopy enumerateTagsInRange:range unit:v19 scheme:0 options:v20 usingBlock:{options, v35}];
  v23 = v44;
  v24 = v44[4];
  if (v24 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v25 = MEMORY[0x277D86220];
    v26 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v30 = [v22 length];
      v31 = [v21 length];
      *buf = 67109888;
      v49 = v30;
      v50 = 1024;
      location = lowercaseRange.location;
      v52 = 1024;
      length = lowercaseRange.length;
      v54 = 1024;
      v55 = v31;
      _os_log_debug_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "SGLanguageDetection: lowercase len %d, range loc %d / len %d found no range in original len %d", buf, 0x1Au);
    }

    v23 = v44;
    v24 = v44[4];
  }

  v27 = v23[5];

  _Block_object_dispose(&v43, 8);
  v28 = v24;
  v29 = v27;
  result.length = v29;
  result.location = v28;
  return result;
}

void __156__SGLanguageDetection_tokenRangeForText_maxTruncatedLength_tagger_taggerOptions_prevTextTokenMaxRange_originalLengthShortfall_lowercaseText_lowercaseRange___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = a3 + a4;
  if (a3 + a4 > [*(a1 + 32) length])
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:*(a1 + 56) object:*(a1 + 64) file:@"SGLanguageDetection.m" lineNumber:304 description:{@"Invalid parameter not satisfying: %@", @"NSMaxRange(textTagRange) <= text.length"}];
  }

  if ((*(a1 + 72) + v9) > *(a1 + 80))
  {
    [*(a1 + 64) logMatchingForRange:a3 lowercaseRange:a4 text:? lowercaseText:?];
    v10 = *(*(a1 + 48) + 8);
    *(v10 + 32) = a3;
    *(v10 + 40) = a4;
    *a5 = 1;
  }
}

+ (id)languageTagsFromText:(id)text withMaxLength:(unint64_t)length withMaxTags:(unint64_t)tags
{
  v77 = *MEMORY[0x277D85DE8];
  textCopy = text;
  v10 = [textCopy length];
  if (v10)
  {
    v38 = a2;
    tagsCopy = tags;
    if (v10 > 2 * length)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = [textCopy substringToIndex:2 * length];

      objc_autoreleasePoolPop(v11);
      textCopy = v12;
    }

    v13 = objc_opt_new();
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    v42 = [currentLocale objectForKey:*MEMORY[0x277CBE6C8]];

    if (v42)
    {
      v15 = [self languageForLocaleIdentifier:v42];
      [v13 addObject:v15];
    }

    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
    v17 = [preferredLanguages countByEnumeratingWithState:&v70 objects:v76 count:16];
    if (v17)
    {
      v18 = *v71;
LABEL_8:
      v19 = 0;
      while (1)
      {
        if (*v71 != v18)
        {
          objc_enumerationMutation(preferredLanguages);
        }

        v20 = [self languageForLocaleIdentifier:*(*(&v70 + 1) + 8 * v19)];
        [v13 addObject:v20];

        if ([v13 count] > 2)
        {
          break;
        }

        if (v17 == ++v19)
        {
          v17 = [preferredLanguages countByEnumeratingWithState:&v70 objects:v76 count:16];
          if (v17)
          {
            goto LABEL_8;
          }

          break;
        }
      }
    }

    v21 = objc_alloc(MEMORY[0x277CCAAE8]);
    v75 = *MEMORY[0x277CCA3D8];
    v41 = v75;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v75 count:1];
    v23 = [v21 initWithTagSchemes:v22 options:0];

    v24 = objc_alloc(MEMORY[0x277CCAAE8]);
    v74[0] = *MEMORY[0x277CCA408];
    v74[1] = v41;
    v74[2] = *MEMORY[0x277CCA3F0];
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:3];
    v26 = [v24 initWithTagSchemes:v25 options:0];

    localizedLowercaseString = [textCopy localizedLowercaseString];
    [v23 setString:localizedLowercaseString];
    v68[0] = 0;
    v68[1] = v68;
    v68[2] = 0x3032000000;
    v68[3] = __Block_byref_object_copy__1400;
    v68[4] = __Block_byref_object_dispose__1401;
    v69 = objc_opt_new();
    v62 = 0;
    v63 = &v62;
    v64 = 0x3032000000;
    v65 = __Block_byref_object_copy__1400;
    v66 = __Block_byref_object_dispose__1401;
    v67 = objc_opt_new();
    v61[0] = 0;
    v61[1] = v61;
    v61[2] = 0x2020000000;
    v61[3] = 0;
    v60[0] = 0;
    v60[1] = v60;
    v60[2] = 0x2020000000;
    v60[3] = 0;
    v28 = [localizedLowercaseString length];
    v29 = v28 == [textCopy length];
    uppercaseLetterCharacterSet = [MEMORY[0x277CCA900] uppercaseLetterCharacterSet];
    v31 = [localizedLowercaseString length];
    if (length + 20 >= v31)
    {
      v32 = v31;
    }

    else
    {
      v32 = length + 20;
    }

    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __70__SGLanguageDetection_languageTagsFromText_withMaxLength_withMaxTags___block_invoke;
    v43[3] = &unk_278EB83E8;
    v33 = localizedLowercaseString;
    v44 = v33;
    v53 = v38;
    selfCopy = self;
    lengthCopy = length;
    v39 = v13;
    v45 = v39;
    v49 = &v62;
    v50 = v68;
    v59 = v29;
    textCopy = textCopy;
    v46 = textCopy;
    v56 = length + 20;
    v34 = v26;
    v47 = v34;
    v51 = v61;
    v57 = 536870926;
    v52 = v60;
    v35 = uppercaseLetterCharacterSet;
    v48 = v35;
    v58 = tagsCopy;
    [v23 enumerateTagsInRange:0 unit:v32 scheme:0 options:v41 usingBlock:{536870926, v43}];
    v36 = v63[5];

    _Block_object_dispose(v60, 8);
    _Block_object_dispose(v61, 8);
    _Block_object_dispose(&v62, 8);

    _Block_object_dispose(v68, 8);
  }

  else
  {
    v36 = MEMORY[0x277CBEBF8];
  }

  return v36;
}

void __70__SGLanguageDetection_languageTagsFromText_withMaxLength_withMaxTags___block_invoke(uint64_t a1, void *a2, char *a3, uint64_t a4, _BYTE *a5)
{
  v9 = a2;
  if (&a3[a4] > [*(a1 + 32) length])
  {
    v23 = [MEMORY[0x277CCA890] currentHandler];
    [v23 handleFailureInMethod:*(a1 + 104) object:*(a1 + 112) file:@"SGLanguageDetection.m" lineNumber:217 description:{@"Invalid parameter not satisfying: %@", @"NSMaxRange(lowercaseRange) <= lowercaseText.length"}];
  }

  if (&a3[a4] >= *(a1 + 120))
  {
    *a5 = 1;
  }

  if (!v9)
  {
    v10 = 0;
    goto LABEL_37;
  }

  if ([v9 isEqualToString:@"und"])
  {
    v10 = v9;
    goto LABEL_37;
  }

  v10 = [*(a1 + 112) languageForLocaleIdentifier:v9];

  if (!v10)
  {
    v11 = objc_autoreleasePoolPush();
    goto LABEL_14;
  }

  if (![*(a1 + 40) containsObject:v10])
  {
    v11 = objc_autoreleasePoolPush();
    if (([*(*(*(a1 + 80) + 8) + 40) containsObject:v10] & 1) == 0)
    {
      [*(*(*(a1 + 80) + 8) + 40) addObject:v10];
LABEL_24:
      objc_autoreleasePoolPop(v11);
      goto LABEL_37;
    }

LABEL_14:
    v12 = *(a1 + 152);
    v13 = objc_autoreleasePoolPush();
    if (v12 != 1)
    {
      v14 = [*(a1 + 112) tokenRangeForText:*(a1 + 48) maxTruncatedLength:*(a1 + 128) tagger:*(a1 + 56) taggerOptions:*(a1 + 136) prevTextTokenMaxRange:*(*(*(a1 + 88) + 8) + 24) originalLengthShortfall:*(*(*(a1 + 96) + 8) + 24) lowercaseText:*(a1 + 32) lowercaseRange:{a3, a4}];
      if (v14 == 0x7FFFFFFFFFFFFFFFLL)
      {
        objc_autoreleasePoolPop(v13);
        v16 = 0;
LABEL_23:

        goto LABEL_24;
      }

      a4 = v15;
      *(*(*(a1 + 88) + 8) + 24) = &v14[v15];
      *(*(*(a1 + 96) + 8) + 24) = (a3 - v14) & ~((a3 - v14) >> 63);
      a3 = v14;
    }

    v16 = [*(a1 + 48) substringWithRange:{a3, a4}];
    objc_autoreleasePoolPop(v13);
    if ([v16 rangeOfCharacterFromSet:*(a1 + 64)] == 0x7FFFFFFFFFFFFFFFLL)
    {
      [*(a1 + 56) setString:v16];
      v17 = [*(a1 + 56) string];
      v24[0] = 0;
      v24[1] = [v17 length];

      v18 = [*(a1 + 56) tagAtIndex:0 unit:0 scheme:*MEMORY[0x277CCA3D8] tokenRange:v24];
      if (v18)
      {
        v19 = v18;
        if ([v18 isEqualToString:@"und"])
        {
          v20 = v19;
        }

        else
        {
          v20 = [*(a1 + 112) languageForLocaleIdentifier:v19];

          if ([*(a1 + 40) containsObject:v20])
          {
            [*(*(*(a1 + 72) + 8) + 40) addObject:v20];
          }

          else
          {
            v21 = [*(a1 + 56) tagAtIndex:0 unit:0 scheme:*MEMORY[0x277CCA3F0] tokenRange:v24];
            v22 = v21;
            if (v10 && (!v21 || ([v21 isEqualToString:*MEMORY[0x277CCA390]] & 1) != 0 || objc_msgSend(v22, "isEqualToString:", *MEMORY[0x277CCA3A0])))
            {
              [*(*(*(a1 + 72) + 8) + 40) addObject:v10];
            }
          }
        }
      }

      else
      {
        v20 = 0;
      }

      objc_autoreleasePoolPop(v11);
      goto LABEL_35;
    }

    goto LABEL_23;
  }

  [*(*(*(a1 + 72) + 8) + 40) addObject:v10];
LABEL_35:
  if ([*(*(*(a1 + 72) + 8) + 40) count] >= *(a1 + 144))
  {
    *a5 = 1;
  }

LABEL_37:
}

+ (id)dominantLanguageTagFromLanguageTags:(id)tags withMinimumCount:(unint64_t)count withMinimumAgreement:(double)agreement
{
  v29 = *MEMORY[0x277D85DE8];
  tagsCopy = tags;
  if ([tagsCopy count] >= count && objc_msgSend(tagsCopy, "count"))
  {
    if ([tagsCopy count] == 1)
    {
      firstObject = [tagsCopy firstObject];
    }

    else
    {
      v10 = [objc_alloc(MEMORY[0x277CCA940]) initWithArray:tagsCopy];
      if ([v10 count] == 1)
      {
        firstObject = [tagsCopy firstObject];
      }

      else if ([v10 count] <= 2)
      {
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v23 = v10;
        v11 = v10;
        v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = 0;
          v15 = 0;
          v16 = *v25;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v25 != v16)
              {
                objc_enumerationMutation(v11);
              }

              v18 = *(*(&v24 + 1) + 8 * i);
              v19 = [v11 countForObject:v18];
              if (v19 >= v15)
              {
                v20 = v19;
                v21 = v18;

                v14 = v21;
                v15 = v20;
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
          }

          while (v13);
        }

        else
        {
          v14 = 0;
          v15 = 0;
        }

        v22 = [tagsCopy count];
        if (v15 >= count && v15 / v22 >= agreement)
        {
          firstObject = v14;
        }

        else
        {
          firstObject = 0;
        }

        v10 = v23;
      }

      else
      {
        firstObject = 0;
      }
    }
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

+ (id)dominantLanguageTagFromLanguageTags:(id)tags
{
  tagsCopy = tags;
  v4 = [objc_opt_class() dominantLanguageTagFromLanguageTags:tagsCopy withMinimumCount:0 withMinimumAgreement:0.6];

  return v4;
}

+ (id)dominantLanguageTagFromText:(id)text withMaxLength:(unint64_t)length withMaxTags:(unint64_t)tags withMinimumCount:(unint64_t)count withMinimumAgreement:(double)agreement
{
  textCopy = text;
  v12 = [objc_opt_class() languageTagsFromText:textCopy withMaxLength:length withMaxTags:tags];

  v13 = [objc_opt_class() dominantLanguageTagFromLanguageTags:v12 withMinimumCount:count withMinimumAgreement:agreement];

  return v13;
}

+ (id)dominantLanguageTagFromText:(id)text
{
  textCopy = text;
  v4 = [objc_opt_class() dominantLanguageTagFromText:textCopy withMaxLength:30 withMaxTags:8 withMinimumCount:0 withMinimumAgreement:0.6];

  return v4;
}

+ (id)detectLanguageFromLanguageTags:(id)tags withMinimumCount:(unint64_t)count withMinimumAgreement:(double)agreement
{
  tagsCopy = tags;
  if ([tagsCopy count])
  {
    [self dominantLanguageTagFromLanguageTags:tagsCopy withMinimumCount:count withMinimumAgreement:agreement];
  }

  else
  {
    [objc_opt_class() defaultLanguage];
  }
  v9 = ;

  return v9;
}

+ (id)detectLanguageFromLanguageTags:(id)tags
{
  v3 = [self dominantLanguageTagFromLanguageTags:tags];
  v4 = v3;
  if (v3)
  {
    defaultLanguage = v3;
  }

  else
  {
    defaultLanguage = [objc_opt_class() defaultLanguage];
  }

  v6 = defaultLanguage;

  return v6;
}

+ (id)detectLanguageFromText:(id)text withMaxLength:(unint64_t)length withMaxTags:(unint64_t)tags withMinimumCount:(unint64_t)count withMinimumAgreement:(double)agreement
{
  textCopy = text;
  v12 = [objc_opt_class() dominantLanguageTagFromText:textCopy withMaxLength:length withMaxTags:tags withMinimumCount:count withMinimumAgreement:agreement];

  if (v12)
  {
    defaultLanguage = v12;
  }

  else
  {
    defaultLanguage = [objc_opt_class() defaultLanguage];
  }

  v14 = defaultLanguage;

  return v14;
}

+ (id)detectLanguageFromText:(id)text
{
  v3 = [self dominantLanguageTagFromText:text];
  v4 = v3;
  if (v3)
  {
    defaultLanguage = v3;
  }

  else
  {
    defaultLanguage = [objc_opt_class() defaultLanguage];
  }

  v6 = defaultLanguage;

  return v6;
}

+ (id)defaultLanguage
{
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v3 = [currentLocale objectForKey:*MEMORY[0x277CBE6C0]];

  if (v3 && [v3 length] >= 2)
  {
    v4 = [SGLanguageDetection languageForLocaleIdentifier:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)languageForLocaleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = objc_autoreleasePoolPush();
  if ([identifierCopy length] <= 1)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGLanguageDetection.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"localeIdentifier.length >= 2"}];
  }

  letterCharacterSet = [MEMORY[0x277CCA900] letterCharacterSet];
  v8 = [SGStringSplitter splitString:identifierCopy withCharacterSet:letterCharacterSet];

  firstObject = [v8 firstObject];
  lowercaseString = [firstObject lowercaseString];

  lastObject = [v8 lastObject];
  v12 = [v8 count];
  v13 = [lowercaseString isEqualToString:@"zh"];
  if (v12 == 1)
  {
    if (v13)
    {
      v14 = @"zh-Hans";
      goto LABEL_33;
    }

LABEL_32:
    v14 = lowercaseString;
    goto LABEL_33;
  }

  if (v13)
  {
    v15 = [v8 objectAtIndexedSubscript:1];
    v16 = [v15 isEqualToString:@"Hans"];

    v14 = @"zh-Hans";
    if ((v16 & 1) == 0)
    {
      v17 = [v8 objectAtIndexedSubscript:1];
      v18 = [v17 isEqualToString:@"Hant"];

      if (v18 & 1) != 0 || ([lastObject isEqualToString:@"HK"])
      {
        v14 = @"zh-Hant";
      }

      else
      {
        v14 = @"zh-Hant";
        if (([lastObject isEqualToString:@"MO"] & 1) == 0 && !objc_msgSend(lastObject, "isEqualToString:", @"TW"))
        {
          v14 = @"zh-Hans";
        }
      }
    }
  }

  else
  {
    v14 = @"hi";
    if (![lowercaseString isEqualToString:@"hi"])
    {
      if ([lowercaseString isEqualToString:@"uz"])
      {
        v21 = [v8 objectAtIndexedSubscript:1];
        v22 = [v21 isEqualToString:@"Cyrl"];

        if (v22)
        {
          v14 = @"uz";
          goto LABEL_33;
        }

        v23 = [v8 objectAtIndexedSubscript:1];
        v24 = [v23 isEqualToString:@"Arab"];

        if (v24)
        {
          goto LABEL_23;
        }

        v25 = [v8 objectAtIndexedSubscript:1];
        v26 = [v25 isEqualToString:@"Latn"];

        if (v26 & 1) != 0 || ([lastObject isEqualToString:@"UZ"] & 1) != 0 || (objc_msgSend(lastObject, "isEqualToString:", @"AZ"))
        {
          v14 = @"uz-Latn";
          goto LABEL_33;
        }

        if ([lastObject isEqualToString:@"AF"])
        {
LABEL_23:
          v14 = @"uz-Arab";
          goto LABEL_33;
        }
      }

      if ([lowercaseString isEqualToString:@"sr"])
      {
        v27 = [v8 objectAtIndexedSubscript:1];
        v28 = [v27 isEqualToString:@"Latn"];

        if (v28)
        {
          v14 = @"sr-Latn";
          goto LABEL_33;
        }
      }

      goto LABEL_32;
    }

    v19 = [v8 objectAtIndexedSubscript:1];
    v20 = [v19 isEqualToString:@"Latn"];

    if (v20)
    {
      v14 = @"hi-Latn";
    }
  }

LABEL_33:

  objc_autoreleasePoolPop(v6);

  return v14;
}

@end