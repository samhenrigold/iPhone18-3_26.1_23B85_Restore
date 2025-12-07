float KB::ContinuousPathDetector::Parameters::user_value_for_key(const __CFString *this, const __CFString *a2, float a3, float a4, float a5)
{
  v8 = CFPreferencesCopyAppValue(this, @"com.apple.keyboard");
  v9 = v8;
  valuePtr = a3;
  if (v8 && CFNumberGetValue(v8, kCFNumberFloatType, &valuePtr))
  {
    a3 = valuePtr;
  }

  if (a3 > a5)
  {
    v10 = a5;
  }

  else
  {
    v10 = a3;
  }

  if (a3 >= a4)
  {
    a4 = v10;
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return a4;
}

float KB::ContinuousPathDetector::AnnotatedPath::normalized_length(KB::ContinuousPathDetector::AnnotatedPath *this)
{
  v1 = *(this + 6);
  v2 = *(this + 15);
  v3 = *(this + 16);
  if (v1)
  {
    v4 = TI::Favonius::KeyboardLayout::median_key_half_width(*(this + 6));
    v5 = TI::Favonius::KeyboardLayout::median_key_half_height(v1);
  }

  else
  {
    v5 = 22.0;
    v4 = 15.0;
  }

  return hypotf(v2 / v4, v3 / v5);
}

uint64_t __Block_byref_object_copy__21712(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

uint64_t __Block_byref_object_dispose__21713(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return WTF::RefCounted<TI::Favonius::Key>::deref(result);
  }

  return result;
}

uint64_t ___ZNK2KB22ContinuousPathDetector13AnnotatedPath10key_stringEv_block_invoke(uint64_t result, atomic_uint **a2)
{
  v2 = *a2;
  if (*(*(result + 40) + 76) == *(*a2 + 31))
  {
    v3 = *(*(result + 32) + 8);
    atomic_fetch_add(v2, 1u);
    result = *(v3 + 40);
    *(v3 + 40) = v2;
    if (result)
    {
      return WTF::RefCounted<TI::Favonius::Key>::deref(result);
    }
  }

  return result;
}

BOOL KB::ContinuousPathDetector::looks_like_continuous_path(KB::ContinuousPathDetector *this, int a2)
{
  v2 = *(this + 1);
  if (!v2)
  {
    return 0;
  }

  v4 = (this + 8);
  do
  {
    if (v2[8] >= a2)
    {
      v4 = v2;
    }

    v2 = *&v2[2 * (v2[8] < a2)];
  }

  while (v2);
  if (v4 == (this + 8) || v4[8] > a2)
  {
    return 0;
  }

  if (v4[29] == -2)
  {
    return 1;
  }

  v6 = KB::ContinuousPathDetector::AnnotatedPath::normalized_length((v4 + 10));
  v7 = *(this + 11);
  v8 = *(this + 9);
  v9 = (*(this + 14) + (*(this + 8) * (1.0 - ((v7 - *(this + 10)) / (v7 - v8))))) / ((*(this + 14) + *(this + 8)) + (*(this + 7) * *(this + 15)));
  return v6 > ((v7 * v9) + ((1.0 - v9) * v8)) && v4[28] == 3;
}

uint64_t *std::__tree<std::__value_type<int,KB::ContinuousPathDetector::AnnotatedPath>,std::__map_value_compare<int,std::__value_type<int,KB::ContinuousPathDetector::AnnotatedPath>,std::less<int>,true>,std::allocator<std::__value_type<int,KB::ContinuousPathDetector::AnnotatedPath>>>::erase(uint64_t **a1, uint64_t *a2)
{
  v3 = a2[1];
  if (v3)
  {
    do
    {
      v4 = v3;
      v3 = *v3;
    }

    while (v3);
  }

  else
  {
    v5 = a2;
    do
    {
      v4 = v5[2];
      v6 = *v4 == v5;
      v5 = v4;
    }

    while (!v6);
  }

  if (*a1 == a2)
  {
    *a1 = v4;
  }

  v7 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(v7, a2);
  v8 = a2[11];
  if (v8)
  {
    WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v8);
  }

  v9 = a2[8];
  if (v9)
  {
    a2[9] = v9;
    operator delete(v9);
  }

  v10 = a2[5];
  if (v10)
  {
    a2[6] = v10;
    operator delete(v10);
  }

  operator delete(a2);
  return v4;
}

id mecabraCreationQueue()
{
  if (mecabraCreationQueue_onceToken != -1)
  {
    dispatch_once(&mecabraCreationQueue_onceToken, &__block_literal_global_22185);
  }

  v1 = mecabraCreationQueue___queue;

  return v1;
}

void __mecabraCreationQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v0 = dispatch_queue_create("com.apple.TextInput.mecabra.creation", v2);
  v1 = mecabraCreationQueue___queue;
  mecabraCreationQueue___queue = v0;
}

uint64_t _doesWordEntryContainDiacritics(void *a1, char a2)
{
  v3 = a1;
  v4 = [v3 keyboardState];
  v5 = [v4 inputMode];
  v6 = TIInputModeGetLanguageWithRegion();

  if ([&unk_28400BB68 containsObject:v6])
  {
    doesStringContainDiacritics = 0;
  }

  else
  {
    if (a2)
    {
      v8 = [v3 acceptedCandidate];
      v9 = [v8 input];
    }

    else
    {
      v9 = [v3 acceptedString];
    }

    doesStringContainDiacritics = _doesStringContainDiacritics(v9);
  }

  return doesStringContainDiacritics;
}

uint64_t _doesStringContainDiacritics(void *a1)
{
  v1 = [a1 decomposedStringWithCanonicalMapping];
  v2 = [v1 stringByApplyingTransform:*MEMORY[0x277CBE760] reverse:0];
  isEqualToString = objc_msgSend_isEqualToString_(v1);

  return isEqualToString ^ 1u;
}

BOOL _doesWordEntryContainApostrophe(void *a1, char a2)
{
  if (a2)
  {
    v2 = [a1 acceptedCandidate];
    v3 = [v2 input];
  }

  else
  {
    v3 = [a1 acceptedString];
  }

  doesStringContainApostrophe = _doesStringContainApostrophe(v3);

  return doesStringContainApostrophe;
}

BOOL _doesStringContainApostrophe(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"'’"];
  if (v2)
  {
    v3 = [v1 rangeOfCharacterFromSet:v2] != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t _doesWordEntryHaveLeftHandContext(void *a1)
{
  v1 = a1;
  v2 = [v1 documentState];
  v3 = [v2 contextBeforeInput];

  if (v3)
  {
    v4 = [v1 documentState];
    v5 = [v4 contextBeforeInput];
    if (v5)
    {
      v6 = [v1 documentState];
      v7 = [v6 contextBeforeInput];
      v8 = objc_msgSend_isEqualToString_(v7) ^ 1;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

__CFString *_capitalizationForStringUsingLocale(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 decomposedStringWithCanonicalMapping];
  v5 = [v4 lowercaseStringWithLocale:v3];
  if (objc_msgSend_isEqualToString_(v4))
  {
    v6 = kTIACRACapitalizationLower;
  }

  else
  {
    v7 = [v4 capitalizedStringWithLocale:v3];

    if (objc_msgSend_isEqualToString_(v4))
    {
      v6 = kTIACRACapitalizationTitle;
      v5 = v7;
    }

    else
    {
      v5 = [v4 uppercaseStringWithLocale:v3];

      isEqualToString = objc_msgSend_isEqualToString_(v4);
      v6 = kTIACRACapitalizationMixed;
      if (isEqualToString)
      {
        v6 = kTIACRACapitalizationUpper;
      }
    }
  }

  v9 = *v6;
  v10 = *v6;

  return v9;
}

unint64_t _wordLengthBucketForString(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 length];
  if (!v3 || ([v3 languageCode], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "hasPrefix:", @"zh"), v5, !v6))
  {
    if (v4 < 2)
    {
      v4 = 0;
      goto LABEL_16;
    }

    if (v4 == 2)
    {
      v4 = 1;
      goto LABEL_16;
    }

    if (v4 != 3)
    {
      goto LABEL_5;
    }

LABEL_11:
    v4 = 2;
    goto LABEL_16;
  }

  if (v4 < 2)
  {
    goto LABEL_16;
  }

  if (v4 < 4)
  {
    goto LABEL_11;
  }

LABEL_5:
  if (v4 >= 6)
  {
    if (v4 >= 8)
    {
      v4 = 5;
    }

    else
    {
      v4 = 4;
    }
  }

  else
  {
    v4 = 3;
  }

LABEL_16:

  return v4;
}

uint64_t _revisionCountBucketForWordEntry(void *a1)
{
  v1 = a1;
  v2 = [v1 allEdits];
  v3 = [v2 count];

  v4 = [v1 deleted];
  if (v3 + v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v3 + v4;
  }
}

id _primaryInputModeForTypingSession(void *a1)
{
  v1 = [a1 sessionParams];
  v2 = [v1 activeInputModes];
  v3 = [v2 objectAtIndexedSubscript:0];
  v4 = [v3 normalizedIdentifier];

  return v4;
}

id _secondaryInputModeForTypingSession(void *a1)
{
  v1 = [a1 sessionParams];
  v2 = [v1 activeInputModes];

  if ([v2 count] == 1)
  {
    v3 = 0;
  }

  else
  {
    v4 = [v2 objectAtIndexedSubscript:1];
    v3 = [v4 normalizedIdentifier];
  }

  return v3;
}

id _capitalizationForWordEntry(void *a1, char a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [v3 keyboardState];
  v5 = [v4 inputMode];
  v6 = TIInputModeGetLanguageWithRegion();

  v7 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v6];
  if (!v7)
  {
    v8 = IXADefaultLogFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s A valid locale could not be determined from the keyboard state in context for the supplied word entry.", "_capitalizationForWordEntry"];
      *buf = 138412290;
      v15 = v13;
      _os_log_error_impl(&dword_22CA55000, v8, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }
  }

  if (a2)
  {
    v9 = [v3 acceptedCandidate];
    v10 = [v9 input];
  }

  else
  {
    v10 = [v3 acceptedString];
  }

  v11 = _capitalizationForStringUsingLocale(v10, v7);

  return v11;
}

id _editDistanceBucketForOriginalAndRevisedWordEntries(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  if (a3)
  {
    v7 = [v5 acceptedCandidate];
    v8 = [v7 input];
  }

  else
  {
    v8 = [v5 acceptedString];
  }

  if ([v6 deleted])
  {
    v9 = &stru_283FDFAF8;
  }

  else
  {
    v9 = [v6 acceptedString];
  }

  v10 = [(__CFString *)v9 _editDistanceFrom:v8];
  v11 = kTIACRAEditDistanceBucketNone;
  v12 = kTIACRAEditDistanceBucketShort;
  v13 = kTIACRAEditDistanceBucketLong;
  if (v10 < 6)
  {
    v13 = kTIACRAEditDistanceBucketMedium;
  }

  if (v10 >= 3)
  {
    v12 = v13;
  }

  if (v10)
  {
    v11 = v12;
  }

  v14 = *v11;
  v15 = *v11;

  return v14;
}

id _textForWordEntry(void *a1, char a2)
{
  v3 = a1;
  if (([v3 wordEntryType] & 4) != 0 || (objc_msgSend(v3, "wordEntryType") & 0xC0) != 0 || (objc_msgSend(v3, "wordEntryType") & 0x100) != 0 || (a2 & 1) == 0)
  {
    v4 = [v3 acceptedString];
  }

  else
  {
    v6 = [v3 acceptedCandidate];
    v4 = [v6 input];
  }

  return v4;
}

unint64_t _wordLengthBucketForWordEntry(void *a1, char a2)
{
  v3 = a1;
  v4 = [v3 keyboardState];
  v5 = [v4 inputMode];

  v6 = TIInputModeGetNormalizedIdentifier();
  v7 = _textForWordEntry(v3, a2);

  v8 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v6];
  v9 = _wordLengthBucketForString(v7, v8);

  return v9;
}

__CFString *_inputModalityForWordEntry(void *a1, int a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [v3 acceptedCandidate];
  v5 = [v4 isContinuousPathConversion];

  if (v5)
  {
    v6 = kTIACRAModalityPathed;
    goto LABEL_7;
  }

  if (([v3 wordEntryType] & 4) != 0)
  {
    v6 = kTIACRAModalityCandidateBar;
    goto LABEL_7;
  }

  if (([v3 wordEntryType] & 0xC0) != 0)
  {
    v6 = kTIACRAModalityRevisionBubble;
    goto LABEL_7;
  }

  if (([v3 wordEntryType] & 0x100) != 0)
  {
    v6 = kTIACRAModalityInlineCompletion;
    goto LABEL_7;
  }

  if (!a2)
  {
LABEL_21:
    v6 = kTIACRAModalityTapped;
    goto LABEL_7;
  }

  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = [v3 allKeyboardInputsM];
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (!v11)
  {
LABEL_18:

    goto LABEL_21;
  }

  v12 = v11;
  v13 = *v16;
LABEL_12:
  v14 = 0;
  while (1)
  {
    if (*v16 != v13)
    {
      objc_enumerationMutation(v10);
    }

    if ([*(*(&v15 + 1) + 8 * v14) isBackspace])
    {
      break;
    }

    if (v12 == ++v14)
    {
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v12)
      {
        goto LABEL_12;
      }

      goto LABEL_18;
    }
  }

  if ([v3 cancelled])
  {
    goto LABEL_21;
  }

  v6 = kTIACRAModalityTappedWithBackspace;
LABEL_7:
  v7 = *v6;
  v8 = *v6;

  return v7;
}

__CFString *_sourceForWordEntry(void *a1)
{
  v1 = a1;
  if ([v1 cancelled])
  {
    v2 = @"Uncommitted";
    v3 = @"Uncommitted";
  }

  else
  {
    v4 = [v1 acceptedCandidate];
    if (v4)
    {
      v5 = [v1 acceptedCandidate];
      [v5 sourceMask];
    }

    v2 = TIStatisticCandidateSourceAsString();
  }

  return v2;
}

id _addGenericMetadataToPayloadFromKeyboardSession(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v4 userActionHistory];
  v6 = [v5 lastObject];
  v7 = [v6 keyboardState];

  v8 = [TIKBAnalyticsMetricsContext alloc];
  v9 = [v4 sessionParams];
  v10 = [v9 activeInputModes];
  v11 = [v4 sessionParams];
  v12 = [v11 testingParameters];
  v13 = [(TIKBAnalyticsMetricsContext *)v8 initWithKeyboardState:v7 activeInputModes:v10 testingParameters:v12];

  v14 = [(TIAnalyticsMetricsContext *)v13 inputLanguage];
  [v3 setObject:v14 forKeyedSubscript:kFeatureStringKeyboardLanguage];

  v15 = [(TIAnalyticsMetricsContext *)v13 inputRegion];
  [v3 setObject:v15 forKeyedSubscript:kFeatureStringKeyboardRegion];

  v16 = [(TIKBAnalyticsMetricsContext *)v13 inputVariant];
  [v3 setObject:v16 forKeyedSubscript:kFeatureStringKeyboardVariant];

  v17 = [(TIKBAnalyticsMetricsContext *)v13 secondaryLanguage];
  [v3 setObject:v17 forKeyedSubscript:kFeatureStringKeyboardSecondaryLanguage];

  v18 = [(TIKBAnalyticsMetricsContext *)v13 secondaryRegion];
  [v3 setObject:v18 forKeyedSubscript:kFeatureStringKeyboardSecondaryRegion];

  v19 = [(TIKBAnalyticsMetricsContext *)v13 layoutName];
  [v3 setObject:v19 forKeyedSubscript:kFeatureStringKeyboardLayout];

  v20 = [TIKBAnalyticsMetricsContext keyboardTypeEnumToString:[(TIKBAnalyticsMetricsContext *)v13 keyboardType]];
  [v3 setObject:v20 forKeyedSubscript:kFeatureStringKeyboardType];

  v21 = [v4 sessionParams];
  v22 = [v21 assetAvailabilityStatus];
  v23 = @"Installed";
  if (!v22)
  {
    v23 = @"Unavailable";
  }

  v24 = v23;
  [v3 setObject:v24 forKeyedSubscript:kFeatureStringAssetAvailabilityStatus];

  v25 = [v4 featureUsageMetricsCache];

  v26 = [v25 featureUsageMetricFromName:kFeatureKeyboardUsage forContext:v13];
  [v3 setObject:v26 forKeyedSubscript:kFeatureKeyboardUsage];

  v27 = [v25 featureUsageMetricFromName:kFeatureContinuousPathUsage forContext:v13];
  [v3 setObject:v27 forKeyedSubscript:kFeatureContinuousPathUsage];

  v28 = [v25 featureUsageMetricFromName:kFeatureCandidateBarUsage forContext:v13];
  [v3 setObject:v28 forKeyedSubscript:kFeatureCandidateBarUsage];

  v29 = [v25 featureUsageMetricFromName:kFeatureAutocorrectionUsage forContext:v13];
  [v3 setObject:v29 forKeyedSubscript:kFeatureAutocorrectionUsage];

  v30 = [v25 featureUsageMetricFromName:kFeatureMultilingualUsage forContext:v13];
  [v3 setObject:v30 forKeyedSubscript:kFeatureMultilingualUsage];

  v31 = [v25 featureUsageMetricFromName:kFeatureStringTypingSpeed forContext:v13];
  [v3 setObject:v31 forKeyedSubscript:kFeatureStringTypingSpeed];

  return v3;
}

id _revisionMetricPayloadFromOriginalAndRevisedWordEntries(void *a1, void *a2)
{
  v53 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if ([v3 origin] == 1)
  {
    v6 = 1;
    if (v4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = [v3 origin] == 3;
    if (v4)
    {
      goto LABEL_7;
    }
  }

  if (v6)
  {
    v4 = v3;
  }

LABEL_7:
  if (v6)
  {
    [v5 setObject:@"OriginalText" forKeyedSubscript:@"enteredModality"];
  }

  else
  {
    v7 = _inputModalityForWordEntry(v3, 1);
    [v5 setObject:v7 forKeyedSubscript:@"enteredModality"];

    v8 = _sourceForWordEntry(v3);
    [v5 setObject:v8 forKeyedSubscript:@"enteredSource"];

    v9 = _capitalizationForWordEntry(v3, 1);
    [v5 setObject:v9 forKeyedSubscript:@"enteredCapitalization"];

    v10 = [MEMORY[0x277CCABB0] numberWithBool:{_doesWordEntryContainDiacritics(v3, 1)}];
    [v5 setObject:v10 forKeyedSubscript:@"enteredDiacritics"];

    v11 = [MEMORY[0x277CCABB0] numberWithBool:{_doesWordEntryContainApostrophe(v3, 1)}];
    [v5 setObject:v11 forKeyedSubscript:@"enteredApostrophe"];

    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{_wordLengthBucketForWordEntry(v3, 1)}];
    [v5 setObject:v12 forKeyedSubscript:@"enteredWordLength"];
  }

  v13 = [v3 wordEntryType] & !v6;
  if (v13 != 1)
  {
    goto LABEL_27;
  }

  v14 = _sourceForWordEntry(v3);
  [v5 setObject:v14 forKeyedSubscript:@"correctedSource"];

  v15 = _capitalizationForWordEntry(v3, 0);
  [v5 setObject:v15 forKeyedSubscript:@"correctedCapitalization"];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:{_doesWordEntryContainDiacritics(v3, 0)}];
  [v5 setObject:v16 forKeyedSubscript:@"correctedDiacritics"];

  v17 = [MEMORY[0x277CCABB0] numberWithBool:{_doesWordEntryContainApostrophe(v3, 0)}];
  [v5 setObject:v17 forKeyedSubscript:@"correctedApostrophe"];

  v18 = 1;
  v19 = _editDistanceBucketForOriginalAndRevisedWordEntries(v3, v3, 1);
  [v5 setObject:v19 forKeyedSubscript:@"correctedEditDistance"];

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{_wordLengthBucketForWordEntry(v3, 0)}];
  [v5 setObject:v20 forKeyedSubscript:@"correctedWordLength"];

  v21 = [MEMORY[0x277CCABB0] numberWithBool:_doesWordEntryHaveLeftHandContext(v3)];
  [v5 setObject:v21 forKeyedSubscript:@"correctedHasLeftHandContext"];

  v22 = v3;
  v23 = [v22 acceptedCandidate];
  if (v23)
  {
    v24 = [v22 acceptedCandidate];
    v18 = [v24 usageTrackingMask];
  }

  v25 = [MEMORY[0x277CBEB18] array];
  v26 = v25;
  if ((v18 & 0x400) != 0)
  {
    [v25 addObject:@"KeyTransposition"];
    if ((v18 & 0x800) == 0)
    {
LABEL_15:
      if ((v18 & 0x1000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_45;
    }
  }

  else if ((v18 & 0x800) == 0)
  {
    goto LABEL_15;
  }

  [v26 addObject:@"KeyInsertion"];
  if ((v18 & 0x1000) == 0)
  {
LABEL_16:
    if ((v18 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_46;
  }

LABEL_45:
  [v26 addObject:@"KeyDeletion"];
  if ((v18 & 0x4000) == 0)
  {
LABEL_17:
    if ((v18 & 0x8000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_47;
  }

LABEL_46:
  [v26 addObject:@"AdjacentKeySubstitution"];
  if ((v18 & 0x8000) == 0)
  {
LABEL_18:
    if ((v18 & 0x10) == 0)
    {
      goto LABEL_19;
    }

LABEL_48:
    [v26 addObject:@"WordSplit"];
    if ((v18 & 0x200000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_47:
  [v26 addObject:@"FarKeySubstitution"];
  if ((v18 & 0x10) != 0)
  {
    goto LABEL_48;
  }

LABEL_19:
  if ((v18 & 0x200000) != 0)
  {
LABEL_20:
    [v26 addObject:@"WordJoin"];
  }

LABEL_21:
  if (![v26 count])
  {
    [v26 addObject:@"Unknown"];
  }

  v27 = [v26 componentsJoinedByString:{@", "}];

  [v5 setObject:v27 forKeyedSubscript:@"correctedOperationType"];
  v28 = [v22 acceptedCandidate];
  [v28 typingEngine];
  v29 = TIKeyboardCandidateTypingEngineTypeToString();
  [v5 setObject:v29 forKeyedSubscript:kFeatureStringTypingEngine];

  if (IXACanLogMessageAtLevel())
  {
    v30 = IXADefaultLogFacility();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      v47 = MEMORY[0x277CCACA8];
      v50 = [v22 acceptedCandidate];
      v48 = [v50 input];
      v49 = [v47 stringWithFormat:@"%s Autocorrection of %@ -> %@", "_revisionMetricPayloadFromOriginalAndRevisedWordEntries", v22, v48];
      *buf = 138412290;
      v52 = v49;
      _os_log_debug_impl(&dword_22CA55000, v30, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

LABEL_27:
  v31 = v3;
  if (!v4)
  {
    goto LABEL_34;
  }

  if ([v3 isEqual:v4])
  {
    v31 = v4;
    if (!v6)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v32 = [v3 wasRevised];
    v31 = v4;
    if (((v6 | v32) & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  v33 = [v4 deleted];
  v31 = v4;
  if ((v33 & 1) == 0)
  {
    v34 = _inputModalityForWordEntry(v4, 0);
    [v5 setObject:v34 forKeyedSubscript:@"revisedModality"];

    v35 = _sourceForWordEntry(v4);
    [v5 setObject:v35 forKeyedSubscript:@"revisedSource"];

    v36 = _capitalizationForWordEntry(v4, 1);
    [v5 setObject:v36 forKeyedSubscript:@"revisedCapitalization"];

    v37 = [MEMORY[0x277CCABB0] numberWithBool:{_doesWordEntryContainDiacritics(v4, 1)}];
    [v5 setObject:v37 forKeyedSubscript:@"revisedDiacritics"];

    v38 = [MEMORY[0x277CCABB0] numberWithBool:{_doesWordEntryContainApostrophe(v4, 1)}];
    [v5 setObject:v38 forKeyedSubscript:@"revisedApostrophe"];

    v39 = _editDistanceBucketForOriginalAndRevisedWordEntries(v3, v4, 1);
    [v5 setObject:v39 forKeyedSubscript:@"revisedEditDistance"];

    v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{_wordLengthBucketForWordEntry(v4, 1)}];
    [v5 setObject:v40 forKeyedSubscript:@"revisedWordLength"];

    v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:_revisionCountBucketForWordEntry(v3)];
    [v5 setObject:v41 forKeyedSubscript:@"revisedWordRevisionCount"];

    v31 = v4;
  }

LABEL_34:
  v42 = v31;
  if ([v42 deleted])
  {
    [v5 setObject:@"Deleted" forKeyedSubscript:@"revisedModality"];
    v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:_revisionCountBucketForWordEntry(v3)];
    [v5 setObject:v43 forKeyedSubscript:@"revisedWordRevisionCount"];
  }

  if (IXACanLogMessageAtLevel())
  {
    v44 = IXADefaultLogFacility();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s originalWordEntry: %@, revisedWordEntry:%@, isAutocorrected: %d, isDeleted: %d, payload: %@", "_revisionMetricPayloadFromOriginalAndRevisedWordEntries", v3, v4, v13, objc_msgSend(v42, "deleted"), v5];
      *buf = 138412290;
      v52 = v46;
      _os_log_debug_impl(&dword_22CA55000, v44, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  return v5;
}

id _allUserEditEventIndexesForSession(void *a1)
{
  v1 = [a1 userActionHistory];
  v2 = objc_alloc_init(MEMORY[0x277CCAB58]);
  if ([v1 count])
  {
    v3 = 0;
    do
    {
      v4 = [v1 objectAtIndexedSubscript:v3];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = [v4 editedEntry];

        if (v5)
        {
          [v2 addIndex:v3];
        }
      }

      ++v3;
    }

    while (v3 < [v1 count]);
  }

  v6 = [v2 copy];

  return v6;
}

id _allNonEditEventIndexesForSession(void *a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v31 = v1;
  v3 = [v1 userActionHistory];
  v29 = objc_alloc_init(MEMORY[0x277CCAB58]);
  if ([v3 count])
  {
    v4 = 0;
    v30 = v2;
    while (1)
    {
      v5 = [v3 objectAtIndexedSubscript:v4];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

LABEL_27:

      if (++v4 >= [v3 count])
      {
        goto LABEL_28;
      }
    }

    v6 = v5;
    v7 = [v6 editedEntry];
    if (v7)
    {
      v8 = [v6 allEdits];
      [v2 addObjectsFromArray:v8];

LABEL_26:
      goto LABEL_27;
    }

    if ([v2 containsObject:v6])
    {
      goto LABEL_26;
    }

    v9 = v6;
    v10 = [v31 sessionParams];
    v11 = [v10 wordSeparator];

    v12 = [v9 acceptedCandidate];

    v13 = [v12 input];

    isEqualToString = objc_msgSend_isEqualToString_(v11);
    v15 = v9;
    v16 = [v15 acceptedString];
    v17 = [v16 length];

    if (v17)
    {

      v2 = v30;
      v18 = v15;
      if (isEqualToString)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v28 = isEqualToString;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v19 = [v15 allKeyboardInputs];
      v20 = [v19 countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v20)
      {
        v21 = v20;
        v27 = v15;
        v22 = 0;
        v23 = *v33;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v33 != v23)
            {
              objc_enumerationMutation(v19);
            }

            if ([*(*(&v32 + 1) + 8 * i) isBackspace])
            {
              --v22;
            }

            else
            {
              ++v22;
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v32 objects:v36 count:16];
        }

        while (v21);

        v18 = v27;
        v2 = v30;
        if (v28)
        {
          goto LABEL_26;
        }

        if (v22 > 0)
        {
          goto LABEL_9;
        }
      }

      else
      {

        v2 = v30;
        v18 = v15;
        if (isEqualToString)
        {
          goto LABEL_26;
        }
      }

      if (![v18 cancelled])
      {
        goto LABEL_26;
      }
    }

LABEL_9:
    if ([v18 origin] != 2)
    {
      [v29 addIndex:v4];
    }

    goto LABEL_26;
  }

LABEL_28:
  v25 = [v29 copy];

  return v25;
}

id _allUserCursorMovementEditEventsAndAssociatedWordEntriesForSession(void *a1)
{
  v18 = a1;
  v1 = [v18 userActionHistory];
  v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([v1 count])
  {
    v2 = 0;
    do
    {
      v3 = [v1 objectAtIndexedSubscript:v2];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = v3;
        v5 = [v4 inWord];
        if (v5)
        {
          v21 = v4;
          v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
          if ((v2 - 1) < 0)
          {
LABEL_10:
            v8 = 0;
          }

          else
          {
            v6 = v2;
            while (1)
            {
              v7 = [v1 objectAtIndexedSubscript:--v6];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v8 = v7;
                v9 = [v8 acceptedString];
                isEqualToString = objc_msgSend_isEqualToString_(v5);

                if (isEqualToString)
                {
                  break;
                }
              }

              if (v6 <= 0)
              {
                goto LABEL_10;
              }
            }
          }

          v11 = v2 + 1;
          if (v2 + 1 >= [v1 count])
          {
            v12 = 0;
            v15 = v20;
          }

          else
          {
            v12 = 0;
            do
            {
              v13 = [v1 objectAtIndexedSubscript:v11];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v14 = v13;

                v12 = v14;
              }

              ++v11;
            }

            while (v11 < [v1 count]);
            v15 = v20;
            if (v8 && v12)
            {
              [v20 addObject:v8];
              [v20 addObject:v12];
              [v19 addObject:v20];

              v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
              v8 = 0;
              v12 = 0;
            }
          }

          v4 = v21;
        }
      }

      ++v2;
    }

    while (v2 < [v1 count]);
  }

  v16 = [v19 copy];

  return v16;
}

id _analyzeEditEvents(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__22247;
  v26[4] = __Block_byref_object_dispose__22248;
  v27 = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__22247;
  v24[4] = __Block_byref_object_dispose__22248;
  v25 = 0;
  v5 = [v3 userActionHistory];
  v6 = _allUserEditEventIndexesForSession(v3);
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = ___analyzeEditEvents_block_invoke;
  v17 = &unk_2787334A8;
  v22 = v26;
  v23 = v24;
  v18 = v5;
  v19 = v3;
  v20 = v4;
  v21 = v7;
  v8 = v7;
  v9 = v4;
  v10 = v3;
  v11 = v5;
  [v6 enumerateIndexesUsingBlock:&v14];
  v12 = [v8 copy];

  _Block_object_dispose(v24, 8);
  _Block_object_dispose(v26, 8);

  return v12;
}

uint64_t __Block_byref_object_copy__22247(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___analyzeEditEvents_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  v4 = *(*(a1 + 64) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(*(*(a1 + 64) + 8) + 40) editedEntry];
  v7 = *(*(a1 + 72) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = _revisionMetricPayloadFromOriginalAndRevisedWordEntries(*(*(*(a1 + 64) + 8) + 40), *(*(*(a1 + 72) + 8) + 40));
  _addGenericMetadataToPayloadFromKeyboardSession(v9, *(a1 + 40));
  objc_claimAutoreleasedReturnValue();

  [v9 addEntriesFromDictionary:*(a1 + 48)];
  [*(a1 + 56) addObject:v9];
}

id _analyzeNonEditEvents(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = __Block_byref_object_copy__22247;
  v20[4] = __Block_byref_object_dispose__22248;
  v21 = 0;
  v5 = [v3 userActionHistory];
  v6 = _allNonEditEventIndexesForSession(v3);
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = ___analyzeNonEditEvents_block_invoke;
  v14[3] = &unk_2787334D0;
  v18 = v7;
  v19 = v20;
  v15 = v5;
  v16 = v3;
  v17 = v4;
  v8 = v7;
  v9 = v4;
  v10 = v3;
  v11 = v5;
  [v6 enumerateIndexesUsingBlock:v14];
  v12 = [v8 copy];

  _Block_object_dispose(v20, 8);

  return v12;
}

void ___analyzeNonEditEvents_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  v4 = *(*(a1 + 64) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = _revisionMetricPayloadFromOriginalAndRevisedWordEntries(*(*(*(a1 + 64) + 8) + 40), 0);
  _addGenericMetadataToPayloadFromKeyboardSession(v6, *(a1 + 40));
  objc_claimAutoreleasedReturnValue();

  [v6 addEntriesFromDictionary:*(a1 + 48)];
  [*(a1 + 56) addObject:v6];
}

id _analyzeDeletedOriginalWordEvents(void *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [v3 originalWords];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        if ([v11 deleted])
        {
          v12 = [v11 allEdits];
          v13 = [v12 count];

          if (!v13)
          {
            v14 = _revisionMetricPayloadFromOriginalAndRevisedWordEntries(v11, 0);
            _addGenericMetadataToPayloadFromKeyboardSession(v14, v3);
            objc_claimAutoreleasedReturnValue();

            [v14 addEntriesFromDictionary:v4];
            [v5 addObject:v14];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = [v5 copy];

  return v15;
}

id _analyzeUserCursorMovementEditEvents(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = _allUserCursorMovementEditEventsAndAssociatedWordEntriesForSession(a1);
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        if ([v8 count] == 2)
        {
          v9 = [v8 objectAtIndexedSubscript:0];
          v10 = [v8 objectAtIndexedSubscript:1];
          v11 = _revisionMetricPayloadFromOriginalAndRevisedWordEntries(v9, v10);
          [v2 addObject:v11];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v12 = [v2 copy];

  return v12;
}

uint64_t macKeyCompare(unsigned int *a1, int *a2)
{
  v2 = MacCompareStartMem + *a2;
  v3 = *a1;
  if (*a1)
  {
    v4 = 0;
    while (1)
    {
      v5 = *(v2 + 4 * v4);
      if (v3 > v5)
      {
        return 1;
      }

      if (v3 < v5)
      {
        return 0xFFFFFFFFLL;
      }

      v6 = v4 + 1;
      v3 = a1[++v4];
      if (!v3)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    v6 = 0;
LABEL_9:
    if (*(v2 + 4 * v6))
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }
}

BOOL TIIsLexiconIDEnglish(int a1)
{
  _TISharedLexiconIDManager();
  explicit = atomic_load_explicit(&_TISharedLexiconIDManager(void)::lexicon_id_manager, memory_order_acquire);
  if (!explicit)
  {
    return 0;
  }

  while (*(explicit + 24) != a1)
  {
    explicit = *(explicit + 32);
    if (!explicit)
    {
      return 0;
    }
  }

  return ((*(explicit + 23) & 0x80000000) == 0 || (explicit = *explicit) != 0) && *explicit == 101 && *(explicit + 1) == 110;
}

uint64_t *TITokenIDsToWordIDs(uint64_t *result, uint64_t a2, int a3, _DWORD *a4, void *a5)
{
  *a5 = 0;
  if (a2 >= 1)
  {
    v5 = 0;
    v6 = &result[a2];
    v7 = a4;
    do
    {
      v8 = *result;
      if (*result >> 34 < 0x7D || v8 == a3)
      {
        *v7++ = HIDWORD(v8);
        ++v5;
      }

      else
      {
        v5 = 0;
        v7 = a4;
      }

      *a5 = v5;
      ++result;
    }

    while (result < v6);
  }

  return result;
}

BOOL KB::InputSegmentFilter::character_is_letter_modifier(KB::InputSegmentFilter *this, UChar32 c)
{
  result = 1;
  if (c <= 729)
  {
    if ((c - 168) <= 0xC && ((1 << (c + 88)) & 0x1081) != 0)
    {
      return result;
    }

    return u_charType(c) == 4;
  }

  if (c != 730 && c != 732 && c != 901)
  {
    return u_charType(c) == 4;
  }

  return result;
}

uint64_t KB::InputSegmentFilter::word_is_acceptable_for_input(KB::InputSegmentFilter *this, KB::Word *a2, const KB::String *a3)
{
  v6 = 0;
  LODWORD(result) = KB::InputSegmentFilter::string_preserves_surface_form_features(this, a2, a3, &v6, 0);
  if (*(a2 + 12) > 0.0)
  {
    result = result;
  }

  else
  {
    result = 0;
  }

  if (result == 1)
  {
    if (v6)
    {
      v5 = 0x200000;
    }

    else
    {
      v5 = 0;
    }

    *(a2 + 26) = *(a2 + 26) & 0xFFDFFFFF | v5;
  }

  return result;
}

uint64_t KB::InputSegmentFilter::string_preserves_surface_form_features(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, _BYTE *a4, std::vector<unsigned int> *a5)
{
  v48 = *MEMORY[0x277D85DE8];
  v10 = *(a2 + 1);
  v37 = a2 + 8;
  if (!v10)
  {
    v10 = a2 + 8;
  }

  *&v42 = v10;
  v11 = *a2;
  DWORD2(v42) = 0;
  HIDWORD(v42) = v11;
  c[0] = 0;
  KB::String::iterator::initialize(&v42);
  v12 = *(a3 + 1);
  if (!v12)
  {
    v12 = a3 + 8;
  }

  *buf = v12;
  v13 = *a3;
  *&buf[8] = 0;
  *&buf[12] = v13;
  *&buf[16] = 0;
  KB::String::iterator::initialize(buf);
  v41[0] = *&buf[16];
  v40 = *buf;
  v41[1] = 0;
  if (a5)
  {
    v14 = a3[2];
    if (!a3[2])
    {
      KB::String::compute_length(a3);
      v14 = a3[2];
    }

    std::vector<unsigned int>::reserve(a5, v14);
  }

  v15 = v41[0];
  if (!v41[0])
  {
    v17 = 0;
LABEL_80:
    v28 = c[0];
    v29 = 1;
    if (c[0])
    {
      do
      {
        is_free_insertion = KB::character_is_free_insertion(v28);
        if (a4 && is_free_insertion)
        {
          *a4 = 1;
        }

        if (a5)
        {
          *buf = -1;
          std::vector<unsigned int>::push_back[abi:nn200100](a5, buf);
        }

        KB::String::iterator::operator++(&v42);
        v28 = c[0];
      }

      while (c[0]);
      if (v41[0])
      {
        if (TICanLogMessageAtLevel_onceToken != -1)
        {
          dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
        }

        v31 = TIOSLogFacility();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          v33 = *(a2 + 1);
          if (!v33)
          {
            v33 = v37;
          }

          if (*a2)
          {
            v34 = v33;
          }

          else
          {
            v34 = "";
          }

          v35 = *(a3 + 1);
          if (!v35)
          {
            v35 = a3 + 8;
          }

          if (*a3)
          {
            v36 = v35;
          }

          else
          {
            v36 = "";
          }

          *buf = 136315906;
          *&buf[4] = "string_preserves_surface_form_features";
          *&buf[12] = 2080;
          *&buf[14] = v34;
          *&buf[22] = 2080;
          v45 = v36;
          v46 = 1024;
          v47 = v17;
          _os_log_debug_impl(&dword_22CA55000, v31, OS_LOG_TYPE_DEBUG, "%s warning: string_preserves_surface_form_features([%s], [%s]) iterated %d times without reaching end of input", buf, 0x26u);
        }
      }

      return 1;
    }

    return v29;
  }

  v16 = c[0];
  if (!c[0])
  {
    v17 = 0;
    goto LABEL_78;
  }

  v17 = 0;
  do
  {
    if (v17 == 100)
    {
      v17 = 101;
      break;
    }

    if (KB::character_is_free_insertion(v16) && ((*(*a1 + 32))(a1, c[0], v41[0], 0) & 1) == 0)
    {
      KB::String::iterator::operator++(&v42);
      if (a5)
      {
        *buf = -1;
        std::vector<unsigned int>::push_back[abi:nn200100](a5, buf);
      }

      if (a4)
      {
        *a4 = 1;
      }
    }

    else
    {
      if ((*(*a1 + 64))(a1, v41[0]))
      {
        *buf = v42;
        *&buf[16] = *c;
        KB::String::iterator::operator++(buf);
        if ((*(*a1 + 56))(a1, *&buf[16]))
        {
          v18 = v41[0];
          v19 = c[0];
          v38 = v42;
          v39 = *c;
          KB::String::iterator::operator++(&v38);
          if ((*(*a1 + 40))(a1, v18, v19, v39))
          {
            if (a5)
            {
              *buf = v41[1];
              std::vector<unsigned int>::push_back[abi:nn200100](a5, buf);
              *buf = v41[1];
              std::vector<unsigned int>::push_back[abi:nn200100](a5, buf);
            }

            ++v41[1];
            KB::String::iterator::operator++(&v40);
            for (i = 3; i > 1; --i)
            {
              KB::String::iterator::operator++(&v42);
            }

            goto LABEL_38;
          }
        }
      }

      if (KB::character_is_free_insertion(v41[0]) || ((*(*a1 + 64))(a1, v41[0]) & 1) != 0 || (*(*a1 + 48))(a1, v41[0]))
      {
        LOBYTE(v38) = 0;
        if (!(*(*a1 + 32))(a1, c[0], v41[0], &v38))
        {
          return 0;
        }

        if (a4 && (v38 & 1) != 0)
        {
          *a4 = 1;
        }

        KB::String::iterator::operator++(&v42);
        if (a5)
        {
          *buf = v41[1];
          std::vector<unsigned int>::push_back[abi:nn200100](a5, buf);
        }

LABEL_32:
        ++v41[1];
        v21 = &v40;
LABEL_33:
        KB::String::iterator::operator++(v21);
        goto LABEL_38;
      }

      *buf = v40;
      *&buf[16] = *v41;
      KB::String::iterator::operator++(buf);
      if (((*(*a1 + 56))(a1, *&buf[16]) & 1) == 0 && (v38 = v40, v39 = *v41, KB::String::iterator::operator++(&v38), v39 != 39) && v39 != 8217 || !(*(*a1 + 64))(a1, c[0]) || (v22 = c[0], v23 = v41[0], *buf = v40, *&buf[16] = *v41, KB::String::iterator::operator++(buf), !(*(*a1 + 40))(a1, v22, v23, *&buf[16])))
      {
        if ((c[0] | 0x20) != 0x20)
        {
          goto LABEL_54;
        }

        if (v41[0] != 32)
        {
          *buf = v40;
          *&buf[16] = *v41;
          KB::String::iterator::operator++(buf);
          if (*&buf[16] == 32)
          {
            goto LABEL_32;
          }

          if (a5)
          {
            *buf = -1;
            std::vector<unsigned int>::push_back[abi:nn200100](a5, buf);
          }

          goto LABEL_74;
        }

        if (!c[0])
        {
          goto LABEL_32;
        }

LABEL_54:
        if ((*(*a1 + 48))(a1))
        {
          if (a5)
          {
            *buf = v41[1];
            std::vector<unsigned int>::push_back[abi:nn200100](a5, buf);
          }

          for (j = 3; j > 1; --j)
          {
            ++v41[1];
            KB::String::iterator::operator++(&v40);
          }

          if (!a4)
          {
            goto LABEL_74;
          }
        }

        else
        {
          LOBYTE(v38) = 0;
          if (!(*(*a1 + 32))(a1, c[0], v41[0], &v38))
          {
            return 0;
          }

          if (a4 && (v38 & 1) != 0)
          {
            *a4 = 1;
          }

          v26 = c[0];
          if (a5 && c[0])
          {
            *buf = v41[1];
            std::vector<unsigned int>::push_back[abi:nn200100](a5, buf);
            v26 = c[0];
          }

          ++v41[1];
          KB::String::iterator::operator++(&v40);
          v27 = (*(*a1 + 64))(a1, v26);
          if (!a4 || !v27)
          {
            goto LABEL_74;
          }
        }

        *a4 = 1;
LABEL_74:
        v21 = &v42;
        goto LABEL_33;
      }

      KB::String::iterator::operator++(&v42);
      if (a5)
      {
        *buf = v41[1];
        std::vector<unsigned int>::push_back[abi:nn200100](a5, buf);
      }

      for (k = 3; k > 1; --k)
      {
        ++v41[1];
        KB::String::iterator::operator++(&v40);
      }
    }

LABEL_38:
    ++v17;
    v15 = v41[0];
    if (!v41[0])
    {
      goto LABEL_80;
    }

    v16 = c[0];
  }

  while (c[0]);
LABEL_78:
  while (!KB::character_is_free_insertion(v15))
  {
    ++v41[1];
    KB::String::iterator::operator++(&v40);
    v15 = v41[0];
    if (!v41[0])
    {
      goto LABEL_80;
    }
  }

  return 0;
}

void KB::LayoutBasedInputSegmentFilter::swap_case(KB::LayoutBasedInputSegmentFilter *this, UChar32 c)
{
  if (u_isupper(c))
  {

    JUMPOUT(0x2318BF180);
  }

  JUMPOUT(0x2318BF1A0);
}

uint64_t KB::LayoutBasedInputSegmentFilter::allows_substitution(atomic_uint **this, KB *a2, uint64_t a3, BOOL *a4)
{
  if (a2 != a3 && (*(*this + 9))(this, a3) != a2)
  {
    TI::Favonius::KeyboardLayout::key_for_char(&v17, this[2], a2);
    v9 = v17;
    v10 = this[2];
    if (!v17)
    {
      v11 = (*(*this + 9))(this, a2);
      TI::Favonius::KeyboardLayout::key_for_char(&v18, v10, v11);
      v9 = v18;
      v10 = this[2];
    }

    TI::Favonius::KeyboardLayout::key_for_char(&v17, v10, a3);
    v13 = v17;
    if (v17)
    {
      if (v9)
      {
LABEL_8:
        if (v13)
        {
          if (v9 == v13 || !KB::operator==(v9 + 20, v13 + 20) || (*(*this + 10))(this, a2, a3))
          {
            v8 = KB::substitution_allowed(a2, a3, a4, v12);
          }

          else
          {
            v8 = 0;
          }

          WTF::RefCounted<TI::Favonius::Key>::deref(v13);
        }

        else
        {
          v8 = KB::substitution_allowed(a2, a3, a4, v12);
        }

        v13 = v9;
LABEL_19:
        WTF::RefCounted<TI::Favonius::Key>::deref(v13);
        return v8;
      }
    }

    else
    {
      v14 = this[2];
      v15 = (*(*this + 9))(this, a3);
      TI::Favonius::KeyboardLayout::key_for_char(&v18, v14, v15);
      v13 = v18;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    v8 = KB::substitution_allowed(a2, a3, a4, v12);
    if (!v13)
    {
      return v8;
    }

    goto LABEL_19;
  }

  return 1;
}

void KB::LayoutBasedInputSegmentFilter::~LayoutBasedInputSegmentFilter(KB::LayoutBasedInputSegmentFilter *this)
{
  *this = &unk_283FDEB18;
  v1 = *(this + 2);
  if (v1)
  {
    WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v1);
  }

  JUMPOUT(0x2318BE270);
}

{
  *this = &unk_283FDEB18;
  v1 = *(this + 2);
  if (v1)
  {
    WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v1);
  }
}

BOOL KB::AccentKeyInputSegmentFilter::allows_composed_substitution(KB::AccentKeyInputSegmentFilter *this, KB *a2, unsigned int a3, unsigned int a4)
{
  if (KB::String::contains((this + 16), a4) && KB::AccentKeyInputSegmentFilter::character_has_accent_key_accent(this, a2))
  {
    return 1;
  }

  return KB::character_has_diacritic(a2, a4);
}

BOOL KB::AccentKeyInputSegmentFilter::character_has_accent_key_accent(KB::AccentKeyInputSegmentFilter *this, KB *a2)
{
  if (*(this + 3))
  {
    v3 = *(this + 3);
  }

  else
  {
    v3 = this + 32;
  }

  *&v12 = v3;
  v4 = *(this + 8);
  DWORD2(v12) = 0;
  HIDWORD(v12) = v4;
  LODWORD(v13) = 0;
  KB::String::iterator::initialize(&v12);
  v8 = v3;
  v9 = v4;
  v10 = v4;
  v11 = 0;
  KB::String::iterator::initialize(&v8);
  has_diacritic = 0;
  v14 = v12;
  *v15 = v13;
  v6 = v9;
  while (DWORD2(v14) != v6)
  {
    has_diacritic = KB::character_has_diacritic(a2, v15[0]);
    if (has_diacritic)
    {
      break;
    }

    KB::String::iterator::operator++(&v14);
  }

  return has_diacritic;
}

uint64_t KB::AccentKeyInputSegmentFilter::allows_substitution(KB::AccentKeyInputSegmentFilter *this, KB *a2, uint64_t a3, BOOL *a4)
{
  if (KB::String::contains((this + 16), a2) && KB::String::contains((this + 16), a3))
  {
    return 1;
  }

  return KB::substitution_allowed(a2, a3, a4, v8);
}

uint64_t KB::AccentKeyInputSegmentFilter::letter_combines_with_selective_modifier(KB::AccentKeyInputSegmentFilter *this, uint64_t a2, uint64_t a3)
{
  if (KB::String::contains((this + 16), a3))
  {
    return 1;
  }

  return combines_with_selective_modifier();
}

void KB::AccentKeyInputSegmentFilter::~AccentKeyInputSegmentFilter(KB::AccentKeyInputSegmentFilter *this)
{
  *this = &unk_283FDEB80;
  v2 = *(this + 3);
  if (v2 && *(this + 22) == 1)
  {
    free(v2);
  }

  JUMPOUT(0x2318BE270);
}

{
  *this = &unk_283FDEB80;
  v2 = *(this + 3);
  if (v2)
  {
    if (*(this + 22) == 1)
    {
      free(v2);
    }
  }
}

uint64_t __Block_byref_object_copy__23396(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id wordEntryDetailForLog(void *a1, uint64_t a2)
{
  v30 = MEMORY[0x277CCACA8];
  v2 = a1;
  v43 = [v2 candidatesOffered];
  v28 = [v43 count];
  v42 = [v2 allKeyboardInputs];
  v26 = [v42 count];
  v41 = [v2 allTouches];
  v24 = [v41 count];
  v40 = [v2 touchLayouts];
  v23 = [v40 count];
  v39 = [v2 acceptedCandidate];
  v38 = [v39 candidate];
  v48 = formatStringForLog(v38);
  v37 = [v2 acceptedCandidate];
  v36 = [v37 input];
  v47 = formatStringForLog(v36);
  v35 = [v2 acceptedCandidate];
  v34 = [v35 rawInput];
  v46 = formatStringForLog(v34);
  v33 = [v2 inputContext];
  v45 = formatStringForLog(v33);
  v29 = [v2 inputStem];
  v16 = formatStringForLog(v29);
  v27 = [v2 documentState];
  v25 = [v27 contextBeforeInput];
  v44 = formatStringForLog(v25);
  v22 = [v2 documentState];
  v21 = [v22 selectedText];
  v3 = formatStringForLog(v21);
  v20 = [v2 documentState];
  v19 = [v20 contextAfterInput];
  v13 = formatStringForLog(v19);
  v18 = [v2 keyboardState];
  v17 = [v18 documentState];
  v15 = [v17 contextBeforeInput];
  v4 = formatStringForLog(v15);
  v14 = [v2 keyboardState];
  v5 = [v14 documentState];
  v6 = [v5 selectedText];
  v7 = formatStringForLog(v6);
  v8 = [v2 keyboardState];

  v9 = [v8 documentState];
  v10 = [v9 contextAfterInput];
  v11 = formatStringForLog(v10);
  v32 = [v30 stringWithFormat:@"CA detail %d n:<%lu|%lu|%lu|%lu> c:<%@|%@|%@> s:<%@|%@> d:<%@|%@|%@> k:<%@|%@|%@>", a2, v28, v26, v24, v23, v48, v47, v46, v45, v16, v44, v3, v13, v4, v7, v11];

  return v32;
}

__CFString *formatStringForLog(void *a1)
{
  if (a1)
  {
    v1 = [a1 stringByReplacingOccurrencesOfString:@" " withString:@"␣"];
    v2 = [v1 stringByReplacingOccurrencesOfString:@"\n" withString:@"⏎"];
  }

  else
  {
    v2 = @"∅";
  }

  return v2;
}

uint64_t __Block_byref_object_copy__23529(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__23692(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __KeyboardSettingsFeedbackLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  KeyboardSettingsFeedbackLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t __Block_byref_object_copy__23863(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t *KB::Alignment::operator*(uint64_t *a1, void *a2, uint64_t *a3)
{
  result = std::vector<unsigned int>::vector[abi:nn200100](a1, a2);
  v5 = *result;
  v6 = result[1] - *result;
  if (v6)
  {
    v7 = v6 >> 2;
    v8 = *a3;
    v9 = 1;
    do
    {
      v10 = *v5;
      if (v10 != -1)
      {
        *v5 = *(v8 + 4 * v10);
      }

      ++v5;
    }

    while (v7 > v9++);
  }

  return result;
}

void __TICanLogMessageAtLevel_block_invoke()
{
  if (TI_IS_INTERNAL_INSTALL::once_token != -1)
  {
    dispatch_once(&TI_IS_INTERNAL_INSTALL::once_token, &__block_literal_global_3815);
  }

  if (TI_IS_INTERNAL_INSTALL::is_internal_install == 1)
  {
    TICanLogMessageAtLevel_logLevel = CFPreferencesGetAppIntegerValue(@"kbdLogLevel", @"com.apple.keyboard", 0);
  }
}

id TIOSLogFacility()
{
  if (TIOSLogFacility_onceToken != -1)
  {
    dispatch_once(&TIOSLogFacility_onceToken, &__block_literal_global_42);
  }

  v1 = TIOSLogFacility_logFacility;

  return v1;
}

uint64_t __TIOSLogFacility_block_invoke()
{
  v0 = os_log_create("com.apple.TextInput", "KBDLog");
  v1 = TIOSLogFacility_logFacility;
  TIOSLogFacility_logFacility = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id TIProactiveQuickTypeOSLogFacility()
{
  if (TIProactiveQuickTypeOSLogFacility_onceToken != -1)
  {
    dispatch_once(&TIProactiveQuickTypeOSLogFacility_onceToken, &__block_literal_global_46_24107);
  }

  v1 = TIProactiveQuickTypeOSLogFacility_logFacility;

  return v1;
}

uint64_t __TIProactiveQuickTypeOSLogFacility_block_invoke()
{
  v0 = os_log_create("com.apple.TextInput", "ProactiveQuickType");
  v1 = TIProactiveQuickTypeOSLogFacility_logFacility;
  TIProactiveQuickTypeOSLogFacility_logFacility = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id TIPersonalizationNamedEntityOSLogFacility()
{
  if (TIPersonalizationNamedEntityOSLogFacility_onceToken != -1)
  {
    dispatch_once(&TIPersonalizationNamedEntityOSLogFacility_onceToken, &__block_literal_global_48_24110);
  }

  v1 = TIPersonalizationNamedEntityOSLogFacility_logFacility;

  return v1;
}

uint64_t __TIPersonalizationNamedEntityOSLogFacility_block_invoke()
{
  v0 = os_log_create("com.apple.TextInput", "PersonalizationNamedEntity");
  v1 = TIPersonalizationNamedEntityOSLogFacility_logFacility;
  TIPersonalizationNamedEntityOSLogFacility_logFacility = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id TIPersonalizationContactOSLogFacility()
{
  if (TIPersonalizationContactOSLogFacility_onceToken != -1)
  {
    dispatch_once(&TIPersonalizationContactOSLogFacility_onceToken, &__block_literal_global_50);
  }

  v1 = TIPersonalizationContactOSLogFacility_logFacility;

  return v1;
}

uint64_t __TIPersonalizationContactOSLogFacility_block_invoke()
{
  v0 = os_log_create("com.apple.TextInput", "PersonalizationContact");
  v1 = TIPersonalizationContactOSLogFacility_logFacility;
  TIPersonalizationContactOSLogFacility_logFacility = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id TIPersonalizationAppNamesOSLogFacility()
{
  if (TIPersonalizationAppNamesOSLogFacility_onceToken != -1)
  {
    dispatch_once(&TIPersonalizationAppNamesOSLogFacility_onceToken, &__block_literal_global_52);
  }

  v1 = TIPersonalizationAppNamesOSLogFacility_logFacility;

  return v1;
}

uint64_t __TIPersonalizationAppNamesOSLogFacility_block_invoke()
{
  v0 = os_log_create("com.apple.TextInput", "PersonalizationAppNames");
  v1 = TIPersonalizationAppNamesOSLogFacility_logFacility;
  TIPersonalizationAppNamesOSLogFacility_logFacility = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id TIInlineCompletionsOSLogFacility()
{
  if (TIInlineCompletionsOSLogFacility_onceToken != -1)
  {
    dispatch_once(&TIInlineCompletionsOSLogFacility_onceToken, &__block_literal_global_55);
  }

  v1 = TIInlineCompletionsOSLogFacility_logFacility;

  return v1;
}

uint64_t __TIInlineCompletionsOSLogFacility_block_invoke()
{
  v0 = os_log_create("com.apple.TextInput", "InlineTextCompletions");
  v1 = TIInlineCompletionsOSLogFacility_logFacility;
  TIInlineCompletionsOSLogFacility_logFacility = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __TIInputManagerOSLogFacility_block_invoke()
{
  v0 = os_log_create("com.apple.TextInput", "KBDInputManager");
  v1 = TIInputManagerOSLogFacility_logFacility;
  TIInputManagerOSLogFacility_logFacility = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __TIKeyboardActivityOSLogFacility_block_invoke()
{
  v0 = os_log_create("com.apple.TextInput", "KeyboardActivity");
  v1 = TIKeyboardActivityOSLogFacility_logFacility;
  TIKeyboardActivityOSLogFacility_logFacility = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __TIUserDictionaryOSLogFacility_block_invoke()
{
  v0 = os_log_create("com.apple.TextInput", "UserDictionary");
  v1 = TIUserDictionaryOSLogFacility_logFacility;
  TIUserDictionaryOSLogFacility_logFacility = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __TIAssetsOSLogFacility_block_invoke()
{
  v0 = os_log_create("com.apple.TextInput", "Assets");
  v1 = TIAssetsOSLogFacility_logFacility;
  TIAssetsOSLogFacility_logFacility = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id TILanguageModelLogFacility()
{
  if (TILanguageModelLogFacility_onceToken != -1)
  {
    dispatch_once(&TILanguageModelLogFacility_onceToken, &__block_literal_global_70);
  }

  v1 = TILanguageModelLogFacility_logFacility;

  return v1;
}

uint64_t __TILanguageModelLogFacility_block_invoke()
{
  v0 = os_log_create("com.apple.TextInput", "LanguageModel");
  v1 = TILanguageModelLogFacility_logFacility;
  TILanguageModelLogFacility_logFacility = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id TISupplementalLexiconOSLogFacility()
{
  if (TISupplementalLexiconOSLogFacility_onceToken != -1)
  {
    dispatch_once(&TISupplementalLexiconOSLogFacility_onceToken, &__block_literal_global_73);
  }

  v1 = TISupplementalLexiconOSLogFacility_logFacility;

  return v1;
}

uint64_t __TISupplementalLexiconOSLogFacility_block_invoke()
{
  v0 = os_log_create("com.apple.TextInput", "SupplementalLexicon");
  v1 = TISupplementalLexiconOSLogFacility_logFacility;
  TISupplementalLexiconOSLogFacility_logFacility = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id TIAppAutofillOSLogFacility()
{
  if (TIAppAutofillOSLogFacility_onceToken != -1)
  {
    dispatch_once(&TIAppAutofillOSLogFacility_onceToken, &__block_literal_global_76);
  }

  v1 = TIAppAutofillOSLogFacility_logFacility;

  return v1;
}

uint64_t __TIAppAutofillOSLogFacility_block_invoke()
{
  v0 = os_log_create("com.apple.TextInput", "TIAppAutofill");
  v1 = TIAppAutofillOSLogFacility_logFacility;
  TIAppAutofillOSLogFacility_logFacility = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __TITypologyDiagnosticExtensionOSLogFacility_block_invoke()
{
  v0 = os_log_create("com.apple.TextInput", "TITypologyDiagnosticExtension");
  v1 = TITypologyDiagnosticExtensionOSLogFacility_logFacility;
  TITypologyDiagnosticExtensionOSLogFacility_logFacility = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id TIStickerCandidateGeneratorOSLogFacility()
{
  if (TIStickerCandidateGeneratorOSLogFacility_onceToken != -1)
  {
    dispatch_once(&TIStickerCandidateGeneratorOSLogFacility_onceToken, &__block_literal_global_82_24154);
  }

  v1 = TIStickerCandidateGeneratorOSLogFacility_logFacility;

  return v1;
}

uint64_t __TIStickerCandidateGeneratorOSLogFacility_block_invoke()
{
  v0 = os_log_create("com.apple.TextInput", "TIStickerCandidateGenerator");
  v1 = TIStickerCandidateGeneratorOSLogFacility_logFacility;
  TIStickerCandidateGeneratorOSLogFacility_logFacility = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id UnicodeScalar.__ivar_initializer()
{
  if (TISceneTaxonomyGeneratorOSLogFacility_onceToken != -1)
  {
    dispatch_once(&TISceneTaxonomyGeneratorOSLogFacility_onceToken, &__block_literal_global_85);
  }

  v1 = TISceneTaxonomyGeneratorOSLogFacility_logFacility;

  return v1;
}

uint64_t __TISceneTaxonomyGeneratorOSLogFacility_block_invoke()
{
  v0 = os_log_create("com.apple.TextInput", "TISceneTaxonomyGenerator");
  v1 = TISceneTaxonomyGeneratorOSLogFacility_logFacility;
  TISceneTaxonomyGeneratorOSLogFacility_logFacility = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void TIAddressBookFindRecordsMatchingRecipientsAsync(void *a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277CBEB58];
  v5 = a1;
  v6 = [[v4 alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
  v7 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v5, "count")}];
  divideRecipientsIntoEmailAddressesAndPhoneNumbers(v5, v6, v7);

  v8 = __GetAddressBookLookupQueue();
  v12 = v6;
  v13 = v7;
  v14 = v3;
  v9 = v3;
  v10 = v7;
  v11 = v6;
  TIDispatchAsync();
}

void divideRecipientsIntoEmailAddressesAndPhoneNumbers(void *a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [v12 hasPrefix:@"mailto:"];
        v14 = v6;
        if ((v13 & 1) == 0)
        {
          v15 = [v12 hasPrefix:@"tel:"];
          v14 = v7;
          if ((v15 & 1) == 0)
          {
            if ([v12 rangeOfString:@"@"] == 0x7FFFFFFFFFFFFFFFLL)
            {
              v14 = v7;
            }

            else
            {
              v14 = v6;
            }
          }
        }

        [v14 addObject:v12];
      }

      v9 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }
}

id __GetAddressBookLookupQueue()
{
  if (__GetAddressBookLookupQueue_onceToken != -1)
  {
    dispatch_once(&__GetAddressBookLookupQueue_onceToken, &__block_literal_global_24202);
  }

  v1 = __GetAddressBookLookupQueue___queueSingleton;

  return v1;
}

void __TIAddressBookFindRecordsMatchingRecipientsAsync_block_invoke(uint64_t a1)
{
  v3 = objc_alloc_init(MEMORY[0x277CBDAB8]);
  v2 = recordsFromAddressBookMatchingRecipients(v3, *(a1 + 32), *(a1 + 40));
  (*(*(a1 + 48) + 16))();
}

id recordsFromAddressBookMatchingRecipients(void *a1, void *a2, void *a3)
{
  v56[1] = *MEMORY[0x277D85DE8];
  v44 = a1;
  v5 = a2;
  v40 = a3;
  v43 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v40, "count") + objc_msgSend(v5, "count")}];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v50;
    v9 = *MEMORY[0x277CBD018];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v50 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v49 + 1) + 8 * i);
        v12 = v11;
        if ([v11 hasPrefix:@"mailto:"])
        {
          v12 = [v11 substringFromIndex:{objc_msgSend(@"mailto:", "length")}];
        }

        v13 = [v11 rangeOfString:@">" options:14];
        if (v13 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v14 = v13;
          v15 = [v11 rangeOfString:@"<" options:6];
          if (v15 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v17 = [v11 substringWithRange:{v15 + v16, v14 - (v15 + v16)}];

            v12 = v17;
          }
        }

        v18 = MEMORY[0x277CBDA58];
        v19 = v44;
        v20 = [v18 predicateForContactsMatchingEmailAddress:v12];
        v56[0] = v9;
        v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:1];
        v53 = 0;
        v22 = [v19 unifiedContactsMatchingPredicate:v20 keysToFetch:v21 error:&v53];

        v23 = recordsFromAddressBookUIDs(v19, v22);

        if (v23)
        {
          [v43 setObject:v23 forKey:v11];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
    }

    while (v7);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v41 = v40;
  v24 = [v41 countByEnumeratingWithState:&v45 objects:v54 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v46;
    v27 = *MEMORY[0x277CBD018];
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v46 != v26)
        {
          objc_enumerationMutation(v41);
        }

        v29 = *(*(&v45 + 1) + 8 * j);
        v30 = v29;
        if ([v29 hasPrefix:@"tel:"])
        {
          v30 = [v29 substringFromIndex:{objc_msgSend(@"tel:", "length")}];
        }

        v31 = MEMORY[0x277CBDA58];
        v32 = MEMORY[0x277CBDB70];
        v33 = v44;
        v34 = [v32 phoneNumberWithStringValue:v30];
        v35 = [v31 predicateForContactsMatchingPhoneNumber:v34];

        v56[0] = v27;
        v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:1];
        v53 = 0;
        v37 = [v33 unifiedContactsMatchingPredicate:v35 keysToFetch:v36 error:&v53];

        v38 = recordsFromAddressBookUIDs(v33, v37);

        if (v38)
        {
          [v43 setObject:v38 forKey:v29];
        }
      }

      v25 = [v41 countByEnumeratingWithState:&v45 objects:v54 count:16];
    }

    while (v25);
  }

  return v43;
}

id recordsFromAddressBookUIDs(void *a1, void *a2)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:0];
  v29[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v25;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = [*(*(&v24 + 1) + 8 * i) identifier];
        v23 = 0;
        v14 = [v3 unifiedContactWithIdentifier:v13 keysToFetch:v6 error:&v23];
        v15 = v23;

        if (v14)
        {
          if (!v10)
          {
            v10 = [MEMORY[0x277CBEB38] dictionary];
          }

          v16 = [v14 givenName];

          if (v16)
          {
            v17 = [v14 givenName];
            [v10 setObject:v17 forKey:@"firstName"];
          }

          v18 = [v14 familyName];

          if (v18)
          {
            v19 = [v14 familyName];
            [v10 setObject:v19 forKey:@"lastName"];
          }

          v20 = [MEMORY[0x277CBDA78] stringFromContact:v14 style:0];
          if (v20)
          {
            v21 = v20;
            [v10 setObject:v20 forKey:@"compositeName"];

            goto LABEL_19;
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_19:

  return v10;
}

id TIAddressBookFindRecordsMatchingRecipients(void *a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v1 = a1;
  p_cache = TICoreAnalyticsEventDispatcher.cache;
  if (TICanLogMessageAtLevel_onceToken != -1)
  {
    dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
  }

  if (TICanLogMessageAtLevel_logLevel >= 2)
  {
    v3 = TIOSLogFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s CONTACTS: Lookup record(s) for %lu recipient(s)", "TIAddressBookFindRecordsMatchingRecipients", objc_msgSend(v1, "count")];
      LODWORD(v38) = 138412290;
      *(&v38 + 4) = v23;
      _os_log_debug_impl(&dword_22CA55000, v3, OS_LOG_TYPE_DEBUG, "%@", &v38, 0xCu);
    }
  }

  v4 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v5 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v1, "count")}];
  divideRecipientsIntoEmailAddressesAndPhoneNumbers(v1, v4, v5);
  v6 = objc_alloc_init(MEMORY[0x277CCA928]);
  *&v38 = 0;
  *(&v38 + 1) = &v38;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__24212;
  v41 = __Block_byref_object_dispose__24213;
  v42 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v7 = objc_alloc_init(MEMORY[0x277CBDAB8]);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __TIAddressBookFindRecordsMatchingRecipients_block_invoke;
  v25[3] = &unk_278733848;
  v8 = v7;
  v26 = v8;
  v9 = v4;
  v27 = v9;
  v10 = v5;
  v28 = v10;
  v11 = v6;
  v29 = v11;
  v30 = &v32;
  v31 = &v38;
  [v8 requestAccessForEntityType:0 completionHandler:v25];
  v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:120.0];
  [v11 lock];
  if ((v33[3] & 1) == 0)
  {
    v15 = 0x277CCA000uLL;
    do
    {
      if (([v11 waitUntilDate:v12] & 1) == 0)
      {
        *(v33 + 24) = 1;
        if (p_cache[367] != -1)
        {
          dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
        }

        v16 = TIOSLogFacility();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          [*(v15 + 3240) stringWithFormat:@"%s CONTACTS: Timeout while waiting for access to database", "TIAddressBookFindRecordsMatchingRecipients"];
          v24 = v8;
          v17 = v10;
          v18 = p_cache;
          v19 = v9;
          v20 = v1;
          v22 = v21 = v15;
          *buf = 138412290;
          v37 = v22;
          _os_log_debug_impl(&dword_22CA55000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);

          v15 = v21;
          v1 = v20;
          v9 = v19;
          p_cache = v18;
          v10 = v17;
          v8 = v24;
        }
      }
    }

    while (*(v33 + 24) != 1);
  }

  [v11 unlock];
  v13 = *(*(&v38 + 1) + 40);

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v38, 8);

  return v13;
}

uint64_t __Block_byref_object_copy__24212(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __TIAddressBookFindRecordsMatchingRecipients_block_invoke(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    v6 = TIOSLogFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s CONTACTS: Could not access database: %@", "TIAddressBookFindRecordsMatchingRecipients_block_invoke", v5];
      *buf = 138412290;
      v15 = v11;
      _os_log_debug_impl(&dword_22CA55000, v6, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  else if (a2)
  {
    v7 = recordsFromAddressBookMatchingRecipients(*(a1 + 32), *(a1 + 40), *(a1 + 48));
    goto LABEL_10;
  }

  v7 = 0;
LABEL_10:
  [*(a1 + 56) lock];
  v8 = *(*(*(a1 + 64) + 8) + 24);
  if (TICanLogMessageAtLevel_onceToken != -1)
  {
    dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
  }

  if (v8)
  {
    if (TICanLogMessageAtLevel_logLevel >= 2)
    {
      v9 = TIOSLogFacility();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s CONTACTS: Timeout before access handler completed", "TIAddressBookFindRecordsMatchingRecipients_block_invoke"];
        *buf = 138412290;
        v15 = v12;
        _os_log_debug_impl(&dword_22CA55000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  else
  {
    if (TICanLogMessageAtLevel_logLevel >= 2)
    {
      v10 = TIOSLogFacility();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s CONTACTS: Retrieved %lu record(s) from database", "TIAddressBookFindRecordsMatchingRecipients_block_invoke", objc_msgSend(v7, "count")];
        *buf = 138412290;
        v15 = v13;
        _os_log_debug_impl(&dword_22CA55000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    objc_storeStrong((*(*(a1 + 72) + 8) + 40), v7);
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  [*(a1 + 56) broadcast];
  [*(a1 + 56) unlock];
}

id TIAddressBookFindRecordsMatchingRecipientsOnMainThread(void *a1)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__24212;
  v24 = __Block_byref_object_dispose__24213;
  v25 = 0;
  v1 = MEMORY[0x277CBEB58];
  v2 = a1;
  v3 = [[v1 alloc] initWithCapacity:{objc_msgSend(v2, "count")}];
  v4 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v2, "count")}];
  divideRecipientsIntoEmailAddressesAndPhoneNumbers(v2, v3, v4);

  v5 = objc_alloc_init(MEMORY[0x277CBDAB8]);
  v6 = dispatch_semaphore_create(0);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __TIAddressBookFindRecordsMatchingRecipientsOnMainThread_block_invoke;
  v14[3] = &unk_278733870;
  v18 = v6;
  v19 = &v20;
  v15 = v5;
  v16 = v3;
  v17 = v4;
  v7 = v6;
  v8 = v4;
  v9 = v3;
  v10 = v5;
  [v10 requestAccessForEntityType:0 completionHandler:v14];
  v11 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v7, v11);
  v12 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v12;
}

void __TIAddressBookFindRecordsMatchingRecipientsOnMainThread_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    v5 = TIOSLogFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Could not open address book on main thread: %@", "TIAddressBookFindRecordsMatchingRecipientsOnMainThread_block_invoke", v4];
      *buf = 138412290;
      v11 = v9;
      _os_log_debug_impl(&dword_22CA55000, v5, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  else
  {
    v6 = recordsFromAddressBookMatchingRecipients(*(a1 + 32), *(a1 + 40), *(a1 + 48));
    v7 = *(*(a1 + 64) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  dispatch_semaphore_signal(*(a1 + 56));
}

id TIAddressBookGetMeCardWithKeys(void *a1, uint64_t a2)
{
  v4 = 0;
  v2 = [a1 _ios_meContactWithKeysToFetch:a2 error:&v4];

  return v2;
}

id TIAddressBookGetMeCard(void *a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CBDAC8];
  v2 = a1;
  v3 = [v1 descriptorForRequiredKeys];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];

  v5 = TIAddressBookGetMeCardWithKeys(v2, v4);

  return v5;
}

id TIAddressBookGetArrayOfMeCardEmailAddresses(void *a1)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v17[0] = *MEMORY[0x277CBCFC0];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v3 = TIAddressBookGetMeCardWithKeys(v1, v2);

  v4 = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v3 emailAddresses];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) value];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

void TIGetMeCardAsync(void *a1)
{
  v1 = a1;
  v2 = __GetAddressBookLookupQueue();
  v4 = v1;
  v3 = v1;
  TIDispatchAsync();
}

void __TIGetMeCardAsync_block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBDAB8]);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __TIGetMeCardAsync_block_invoke_2;
  v5[3] = &unk_278733898;
  v3 = *(a1 + 32);
  v6 = v2;
  v7 = v3;
  v4 = v2;
  [v4 requestAccessForEntityType:0 completionHandler:v5];
}

void __TIGetMeCardAsync_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    v5 = TIOSLogFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Failed to open address book for Me card: %@", "TIGetMeCardAsync_block_invoke_2", v4];
      *buf = 138412290;
      v10 = v8;
      _os_log_debug_impl(&dword_22CA55000, v5, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = TIAddressBookGetMeCard(*(a1 + 32));
    (*(v6 + 16))(v6, v7);
  }
}

void KB::CollatorWrapper::sortkey_for_string_with_root_collator(KB::CollatorWrapper *this@<X0>, _WORD *a2@<X8>)
{
  v4 = _icu_root_collator();

  _sortkey_for_string_with_collator(a2, this, v4);
}

void _sortkey_for_string_with_collator(_WORD *a1, KB::String *this, uint64_t a3)
{
  if (*this)
  {
    v6 = *(this + 2);
    if (*(this + 2) || (KB::String::compute_length(this), v6 = *(this + 2), *(this + 2)))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<language_modeling::v1::TokenMetadata>>(v6);
    }

    *pErrorCode = 0;
    v7 = *(this + 1);
    if (!v7)
    {
      v7 = this + 16;
    }

    if (*this)
    {
      v8 = v7;
    }

    else
    {
      v8 = "";
    }

    u_strFromUTF8(0, 0, pErrorCode, v8, *this, &pErrorCode[1]);
    v9 = pErrorCode[1];
    if (pErrorCode[1] == U_BUFFER_OVERFLOW_ERROR)
    {
      if (pErrorCode[0])
      {
        if ((pErrorCode[0] & 0x80000000) == 0)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<language_modeling::v1::TokenMetadata>>(pErrorCode[0]);
        }

        std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
      }

      pErrorCode[1] = U_ZERO_ERROR;
      v10 = *(this + 1);
      if (!v10)
      {
        v10 = this + 16;
      }

      if (*this)
      {
        v11 = v10;
      }

      else
      {
        v11 = "";
      }

      u_strFromUTF8(0, 0, pErrorCode, v11, *this, &pErrorCode[1]);
      v9 = pErrorCode[1];
    }

    if (v9 < U_ILLEGAL_ARGUMENT_ERROR && a3)
    {
      if (pErrorCode[0])
      {
        if ((pErrorCode[0] & 0x80000000) == 0)
        {
          operator new();
        }

        std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
      }

      if (ucol_getSortKey())
      {
        operator new();
      }

      *a1 = -1;
      operator new[]();
    }

    *a1 = 0;
  }

  else
  {
    *a1 = 0;
  }
}

void std::__shared_ptr_pointer<UCollator *,void (*)(UCollator *),std::allocator<UCollator>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318BE270);
}

uint64_t std::shared_ptr<UCollator>::~shared_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return a1;
}

uint64_t KB::CollatorWrapper::sortkey_compare_strings_with_root_collator(KB::CollatorWrapper *this, const KB::String *a2, const KB::String *a3)
{
  v5 = _icu_root_collator();

  return _sortkey_compare_strings_with_collator(this, a2, v5);
}

uint64_t _sortkey_compare_strings_with_collator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = ucol_strcollUTF8();
  if (v3)
  {
    v4 = -1;
  }

  else
  {
    v4 = 0;
  }

  if (v3 == 1)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

KB::CollatorWrapper *KB::CollatorWrapper::CollatorWrapper(KB::CollatorWrapper *this)
{
  *this = 0;
  KB::String::String((this + 8), "");
  *(this + 5) = &unk_283FDEF10;
  *(this + 8) = this + 40;
  *(this + 9) = &unk_283FDEF58;
  *(this + 12) = this + 72;
  return this;
}

{
  *this = 0;
  KB::String::String((this + 8), "");
  *(this + 5) = &unk_283FDEF10;
  *(this + 8) = this + 40;
  *(this + 9) = &unk_283FDEF58;
  *(this + 12) = this + 72;
  return this;
}

void std::__function::__func<KB::CollatorWrapper::CollatorWrapper(void)::$_0,std::allocator<KB::CollatorWrapper::CollatorWrapper(void)::$_0>,KB::ByteString ()(KB::String const&)>::operator()(KB::String *a1@<X1>, _WORD *a2@<X8>)
{
  v4 = _icu_root_collator();

  _sortkey_for_string_with_collator(a2, a1, v4);
}

KB::CollatorWrapper *KB::CollatorWrapper::CollatorWrapper(KB::CollatorWrapper *this, CFTypeRef cf, const KB::String *a3)
{
  *this = cf;
  if (cf)
  {
    CFRetain(cf);
    *this = cf;
  }

  KB::String::String((this + 8), a3);
  *(this + 5) = &unk_283FDEFA0;
  *(this + 6) = cf;
  *(this + 8) = this + 40;
  *(this + 9) = &unk_283FDEFE8;
  *(this + 10) = cf;
  *(this + 12) = this + 72;
  return this;
}

uint64_t KB::CollatorWrapper::_sortkey_compare_strings(KB::CollatorWrapper *this, _LXLexicon *a2, const KB::String *a3, const KB::String *a4)
{
  KB::cf_string_impl<KB::String>(&v10, a2);
  v5 = v10;
  KB::cf_string_impl<KB::String>(&v9, a3);
  v6 = v9;
  v7 = LXLexiconCompareStrings();
  if (v6)
  {
    CFRelease(v6);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v7;
}

uint64_t std::__function::__func<KB::CollatorWrapper::CollatorWrapper(_LXLexicon const*,KB::String const&)::$_1,std::allocator<KB::CollatorWrapper::CollatorWrapper(_LXLexicon const*,KB::String const&)::$_1>,int ()(KB::String const&,KB::String const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_283FDEFE8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<KB::CollatorWrapper::CollatorWrapper(_LXLexicon const*,KB::String const&)::$_0,std::allocator<KB::CollatorWrapper::CollatorWrapper(_LXLexicon const*,KB::String const&)::$_0>,KB::ByteString ()(KB::String const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_283FDEFA0;
  a2[1] = v2;
  return result;
}

uint64_t KB::CollatorWrapper::sortkey_compare_strings(KB::CollatorWrapper **this, _LXLexicon *a2, const KB::String *a3, const KB::String *a4)
{
  v6 = *this;
  if (v6)
  {

    return KB::CollatorWrapper::_sortkey_compare_strings(v6, a2, a3, a4);
  }

  else
  {
    v8 = _icu_root_collator();

    return _sortkey_compare_strings_with_collator(a2, a3, v8);
  }
}

BOOL KB::CollatorWrapper::sortkey_starts_with(KB::CollatorWrapper **this, _LXLexicon *a2, _LXLexicon *a3)
{
  KB::CollatorWrapper::sortkey_for_string(&v8, this, a2);
  KB::CollatorWrapper::sortkey_for_string(&v7, this, a3);
  v5 = KB::ByteString::starts_with(&v8, &v7);
  if (v7.var0.var0.var0 >= 0xFu && v7.var0.var0.var1)
  {
    MEMORY[0x2318BE250](v7.var0.var0.var1, 0x1000C8077774924);
  }

  if (v8 >= 0xFu && v9)
  {
    MEMORY[0x2318BE250](v9, 0x1000C8077774924);
  }

  return v5;
}

void *get_file_path_for_bundle_resource(const __CFString *a1, const __CFString *a2)
{
  BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.TextInputCore");
  v5 = BundleWithIdentifier;
  if (BundleWithIdentifier)
  {
    CFRetain(BundleWithIdentifier);
  }

  v6 = CFBundleCopyResourceURL(v5, a1, a2, 0);
  v7 = CFURLCopyFileSystemPath(v6, kCFURLPOSIXPathStyle);
  Length = CFStringGetLength(v7);
  v9 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
  SystemEncoding = CFStringGetSystemEncoding();
  if (!CFStringGetCString(v7, v9, Length + 1, SystemEncoding))
  {
    free(v9);
    v9 = 0;
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v9;
}

void TI::CP::ScoreComponentSerializer::serialize_point(TI::CP::ScoreComponentSerializer *this, CGPoint a2)
{
  y = a2.y;
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"x";
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a2.x];
  v7[1] = @"y";
  v8[0] = v4;
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:y];
  v8[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  *this = v6;
}

uint64_t __Block_byref_object_copy__24466(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

void __Block_byref_object_dispose__24467(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  *(a1 + 40) = 0;
}

void ___ZNK2KB18LexiconWrapperBase16entry_for_stringERKNS_6StringE_block_invoke(uint64_t a1, const void *a2, _BYTE *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  KB::Word::Word(v12, a2, *(a1 + 48));
  KB::Word::capitalized_string(&v10, v12);
  v8 = KB::String::equal(&v10, *(a1 + 40), 1, v6, v7);
  if (v11)
  {
    v9 = BYTE6(v10) == 1;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    free(v11);
  }

  if (v8)
  {
    KB::retain_ptr<__CFDictionary const*>::operator=((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }

  KB::Word::~Word(v12);
}

KB::Candidate *KB::Candidate::Candidate(KB::Candidate *this, const KB::Candidate *a2, size_t *a3)
{
  v6 = WTF::Vector<KB::Word,3ul>::Vector(this, a2);
  *(v6 + 93) = xmmword_22CC88980;
  v6[95] = 0xFF8000003F800000;
  *(v6 + 97) = 0u;
  *(v6 + 99) = 0u;
  *(v6 + 101) = 0u;
  *(v6 + 103) = 0u;
  v6[105] = 0;
  language_modeling::v1::LinguisticContext::LinguisticContext((v6 + 106));
  language_modeling::v1::LinguisticContext::LinguisticContext((this + 856));
  *(this + 110) = 0;
  *(this + 54) = 0u;
  if (!*(a2 + 444))
  {
    KB::Candidate::compute_string(a2);
  }

  KB::String::String((this + 888), (a2 + 888));
  v7 = (this + 920);
  if (*(a2 + 943) < 0)
  {
    std::string::__init_copy_ctor_external(v7, *(a2 + 115), *(a2 + 116));
  }

  else
  {
    v8 = *(a2 + 920);
    *(this + 117) = *(a2 + 117);
    *&v7->__r_.__value_.__l.__data_ = v8;
  }

  *(this + 472) = 0;
  *(this + 240) = 0;
  *(this + 964) = 0;
  *(this + 61) = 0u;
  *(this + 248) = 0;
  KB::Candidate::append(this, a3);
  return this;
}

void KB::Candidate::compute_string(KB::Candidate *this)
{
  KB::String::clear((this + 888));
  if (*this)
  {
    v2 = *(this + 1);
    v3 = 240 * *this;
    do
    {
      KB::String::append((this + 888), v2);
      v2 = (v2 + 240);
      v3 -= 240;
    }

    while (v3);
  }
}

KB::String *KB::Candidate::append(KB::String *this, size_t *a2)
{
  if (!*a2)
  {
    return this;
  }

  v3 = this;
  if (!*(this + 444))
  {
    KB::Candidate::compute_string(this);
  }

  v4 = *v3;
  if (*v3 != *(v3 + 2))
  {
    v10 = *(v3 + 1);
    v11 = a2;
LABEL_24:
    KB::Word::Word((v10 + 240 * v4), v11);
    ++*v3;
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = *(v3 + 1);
  if (v6 <= a2 && v6 + 240 * v4 > a2)
  {
    v7 = a2 - v6;
    if (v4 >= 0x100)
    {
      v8 = v4 + (v4 >> 1);
    }

    else
    {
      v8 = 2 * v4;
    }

    if (v8 <= v5)
    {
      v9 = v5;
    }

    else
    {
      v9 = v8;
    }

    WTF::Vector<KB::Word,3ul>::reserveCapacity(v3, v9);
    v10 = *(v3 + 1);
    v11 = &v7[v10];
    if (!v10)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  if (v4 >= 0x100)
  {
    v12 = v4 + (v4 >> 1);
  }

  else
  {
    v12 = 2 * v4;
  }

  if (v12 <= v5)
  {
    v13 = v5;
  }

  else
  {
    v13 = v12;
  }

  WTF::Vector<KB::Word,3ul>::reserveCapacity(v3, v13);
  v10 = *(v3 + 1);
  v11 = a2;
  if (v10)
  {
LABEL_23:
    v4 = *v3;
    goto LABEL_24;
  }

LABEL_25:
  this = KB::String::append((v3 + 888), a2);
  if (*(v3 + 472) >= 0xFu)
  {
    this = *(v3 + 119);
    if (this)
    {
      this = MEMORY[0x2318BE250](this, 0x1000C8077774924);
    }
  }

  *(v3 + 472) = 0;
  return this;
}

uint64_t KB::Candidate::string(KB::Candidate *this)
{
  if (!*(this + 444))
  {
    KB::Candidate::compute_string(this);
  }

  return this + 888;
}

KB::Candidate *KB::Candidate::Candidate(KB::Candidate *this, const __CFDictionary *a2, const KB::LanguageModelContext *a3)
{
  *this = 0;
  *(this + 1) = this + 24;
  *(this + 2) = 3;
  *(this + 744) = xmmword_22CC88980;
  *(this + 95) = 0xFF8000003F800000;
  *(this + 97) = 0;
  KB::LanguageModelContext::LanguageModelContext((this + 784), a3);
  *(this + 222) = 0x100000;
  *(this + 446) = 0;
  *(this + 894) = 0;
  *(this + 112) = 0;
  *(this + 904) = 0;
  *(this + 115) = 0;
  *(this + 117) = 0;
  *(this + 116) = 0;
  *(this + 472) = 0;
  *(this + 240) = 0;
  *(this + 964) = 0;
  *(this + 122) = a2;
  if (a2)
  {
    CFRetain(a2);
    *(this + 122) = a2;
  }

  *(this + 123) = 0;
  *(this + 248) = 0;
  return this;
}

void KB::Candidate::~Candidate(KB::Candidate *this)
{
  v2 = *(this + 123);
  if (v2)
  {
    CFRelease(v2);
  }

  *(this + 123) = 0;
  v3 = *(this + 122);
  if (v3)
  {
    CFRelease(v3);
  }

  *(this + 122) = 0;
  if (*(this + 472) >= 0xFu)
  {
    v4 = *(this + 119);
    if (v4)
    {
      MEMORY[0x2318BE250](v4, 0x1000C8077774924);
    }
  }

  if (*(this + 943) < 0)
  {
    operator delete(*(this + 115));
  }

  v5 = *(this + 112);
  if (v5 && *(this + 894) == 1)
  {
    free(v5);
  }

  v12 = (this + 864);
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v12);
  language_modeling::v1::LinguisticContext::~LinguisticContext((this + 856));
  language_modeling::v1::LinguisticContext::~LinguisticContext((this + 848));
  v6 = *(this + 100);
  if (v6)
  {
    *(this + 101) = v6;
    operator delete(v6);
  }

  v7 = *(this + 99);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  if (*this)
  {
    v8 = *(this + 1);
    v9 = 240 * *this;
    do
    {
      KB::Word::~Word(v8);
      v8 = (v10 + 240);
      v9 -= 240;
    }

    while (v9);
    *this = 0;
  }

  v11 = *(this + 1);
  if (this + 24 != v11)
  {
    *(this + 1) = 0;
    *(this + 2) = 0;
    free(v11);
  }
}

KB::Candidate *KB::Candidate::Candidate(KB::Candidate *this, const KB::String *a2, unsigned int a3)
{
  v33 = *MEMORY[0x277D85DE8];
  *this = 0;
  *(this + 1) = this + 24;
  *(this + 2) = 3;
  *(this + 744) = xmmword_22CC88980;
  *(this + 95) = 0xFF8000003F800000;
  *(this + 776) = 0u;
  *(this + 792) = 0u;
  *(this + 808) = 0u;
  *(this + 824) = 0u;
  *(this + 105) = 0;
  language_modeling::v1::LinguisticContext::LinguisticContext((this + 848));
  language_modeling::v1::LinguisticContext::LinguisticContext((this + 856));
  *(this + 110) = 0;
  *(this + 54) = 0u;
  *(this + 222) = 0x100000;
  *(this + 446) = 0;
  *(this + 894) = 0;
  *(this + 112) = 0;
  *(this + 904) = 0;
  *(this + 115) = 0;
  *(this + 58) = 0u;
  *(this + 472) = 0;
  *(this + 240) = 0;
  *(this + 964) = 0;
  *(this + 61) = 0u;
  *(this + 248) = 0;
  KB::word_ranges(&v26, a2, 1);
  v6 = *(a2 + 1);
  if (!v6)
  {
    v6 = a2 + 16;
  }

  *&v31 = v6;
  v7 = *a2;
  DWORD2(v31) = 0;
  HIDWORD(v31) = v7;
  LODWORD(v32) = 0;
  KB::String::iterator::initialize(&v31);
  v25[0] = v32;
  v24 = v31;
  v25[1] = 0;
  v8 = v27;
  __p = v26;
  if (v26 != v27)
  {
    v9 = v26;
    do
    {
      v10 = *v9;
      v11 = v9[1];
      while (v25[1] < v10)
      {
        KB::String::String(v28, v25[0]);
        KB::Word::Word(&v31, v28, &kTITokenIDUNK, 0);
        KB::Candidate::append(this, &v31);
        KB::Word::~Word(&v31);
        if (v30)
        {
          v12 = v29 == 1;
        }

        else
        {
          v12 = 0;
        }

        if (v12)
        {
          free(v30);
        }

        v13 = *(this + 1) + 240 * *this;
        *(v13 - 108) |= 0x4000000u;
        ++v25[1];
        KB::String::iterator::operator++(&v24);
      }

      v22 = v24;
      v23 = *v25;
      std::__advance[abi:nn200100]<KB::String::iterator>(&v22, v11);
      KB::String::String(v28, &v24, &v22);
      v21.lexicon_id = a3;
      v21.word_id = 0;
      KB::Word::Word(&v31, v28, &v21, 0);
      KB::Candidate::append(this, &v31);
      KB::Word::~Word(&v31);
      if (v30 && v29 == 1)
      {
        free(v30);
      }

      if ((v11 & 0x80000000) != 0)
      {
        do
        {
          --v25[1];
          KB::String::iterator::operator--(&v24);
        }

        while (!__CFADD__(v11++, 1));
      }

      else if (v11)
      {
        v14 = v11 + 1;
        do
        {
          ++v25[1];
          KB::String::iterator::operator++(&v24);
          --v14;
        }

        while (v14 > 1);
      }

      v9 += 2;
    }

    while (v9 != v8);
  }

  while (1)
  {
    v17 = *a2;
    v18 = *(a2 + 1);
    if (!v18)
    {
      v18 = a2 + 16;
    }

    *&v31 = v18;
    DWORD2(v31) = v17;
    HIDWORD(v31) = v17;
    LODWORD(v32) = 0;
    KB::String::iterator::initialize(&v31);
    if (DWORD2(v24) == DWORD2(v31))
    {
      break;
    }

    KB::String::String(v28, v25[0]);
    KB::Word::Word(&v31, v28, &kTITokenIDUNK, 0);
    KB::Candidate::append(this, &v31);
    KB::Word::~Word(&v31);
    if (v30 && v29 == 1)
    {
      free(v30);
    }

    v16 = *(this + 1) + 240 * *this;
    *(v16 - 108) |= 0x4000000u;
    ++v25[1];
    KB::String::iterator::operator++(&v24);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return this;
}

void KB::Candidate::clear(KB::Candidate *this)
{
  WTF::Vector<KB::Word,3ul>::shrinkCapacity(this);
  KB::String::clear((this + 888));
  if (*(this + 472) >= 0xFu)
  {
    v2 = *(this + 119);
    if (v2)
    {
      MEMORY[0x2318BE250](v2, 0x1000C8077774924);
    }
  }

  *(this + 472) = 0;
}

std::string *KB::Candidate::append(KB::Candidate *this, const KB::Candidate *a2)
{
  if (*a2)
  {
    v4 = *(a2 + 1);
    v5 = 240 * *a2;
    do
    {
      KB::Candidate::append(this, v4);
      v4 += 30;
      v5 -= 240;
    }

    while (v5);
  }

  v6 = *(a2 + 943);
  if (v6 >= 0)
  {
    v7 = a2 + 920;
  }

  else
  {
    v7 = *(a2 + 115);
  }

  if (v6 >= 0)
  {
    v8 = *(a2 + 943);
  }

  else
  {
    v8 = *(a2 + 116);
  }

  return std::string::append((this + 920), v7, v8);
}

void KB::Candidate::pop_last_word(KB::Candidate *this)
{
  v2 = *this - 1;
  KB::Word::~Word((*(this + 1) + 240 * v2));
  *this = v2;
  KB::String::clear((this + 888));
  if (*(this + 472) >= 0xFu)
  {
    v3 = *(this + 119);
    if (v3)
    {
      MEMORY[0x2318BE250](v3, 0x1000C8077774924);
    }
  }

  *(this + 472) = 0;
}

uint64_t KB::Candidate::length(KB::Candidate *this)
{
  if (!*(this + 444))
  {
    KB::Candidate::compute_string(this);
  }

  result = *(this + 446);
  if (!*(this + 446))
  {
    KB::String::compute_length(this + 444);
    return *(this + 446);
  }

  return result;
}

void KB::Candidate::capitalized_string(uint64_t *__return_ptr a1@<X8>, KB::Candidate *this@<X0>)
{
  v8 = *MEMORY[0x277D85DE8];
  *a1 = 0x100000;
  *(a1 + 2) = 0;
  *(a1 + 6) = 0;
  a1[1] = 0;
  *(a1 + 16) = 0;
  if (*this)
  {
    v3 = *(this + 1);
    v4 = 240 * *this;
    do
    {
      KB::Word::capitalized_string(&v6, v3);
      KB::String::append(a1, &v6);
      if (v7)
      {
        v5 = BYTE6(v6) == 1;
      }

      else
      {
        v5 = 0;
      }

      if (v5)
      {
        free(v7);
      }

      v3 = (v3 + 240);
      v4 -= 240;
    }

    while (v4);
  }
}

uint64_t KB::Candidate::sort_key(KB::Candidate *this, uint64_t a2)
{
  if (*(this + 472))
  {
    return this + 944;
  }

  if (!*(this + 444))
  {
    KB::Candidate::compute_string(this);
  }

  v4 = *(a2 + 24);
  if (v4)
  {
    (*(*v4 + 48))(&v8);
    if (*(this + 472) >= 0xFu)
    {
      v5 = *(this + 119);
      if (v5)
      {
        MEMORY[0x2318BE250](v5, 0x1000C8077774924);
      }
    }

    *(this + 59) = v8;
    return this + 944;
  }

  v7 = std::__throw_bad_function_call[abi:nn200100]();
  return KB::Candidate::has_custom_capitalization(v7);
}

BOOL KB::Candidate::has_custom_capitalization(KB::Candidate *this)
{
  if (!*this)
  {
    return 0;
  }

  v1 = 240 * *this - 240;
  v2 = (*(this + 1) + 120);
  do
  {
    v3 = *v2;
    v2 += 60;
    result = v3 != 0;
    if (v3)
    {
      v5 = 1;
    }

    else
    {
      v5 = v1 == 0;
    }

    v1 -= 240;
  }

  while (!v5);
  return result;
}

void KB::Candidate::custom_capitalization(std::vector<unsigned int>::size_type *this@<X0>, std::vector<unsigned int> *a2@<X8>)
{
  a2->__begin_ = 0;
  a2->__end_ = 0;
  a2->__end_cap_.__value_ = 0;
  std::vector<unsigned int>::reserve(a2, *this);
  v4 = *this;
  if (*this)
  {
    v5 = this[1];
    end = a2->__end_;
    value = a2->__end_cap_.__value_;
    begin = a2->__begin_;
    v9 = 240 * v4;
    v10 = (v5 + 120);
    do
    {
      v12 = *v10;
      v10 += 60;
      v11 = v12;
      if (end >= value)
      {
        v13 = end - begin;
        v14 = end - begin;
        v15 = v14 + 1;
        if ((v14 + 1) >> 62)
        {
          a2->__end_ = end;
          a2->__end_cap_.__value_ = value;
          a2->__begin_ = begin;
          std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
        }

        if ((value - begin) >> 1 > v15)
        {
          v15 = (value - begin) >> 1;
        }

        if ((value - begin) >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v16 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v15;
        }

        if (v16)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v16);
        }

        value = 0;
        *(4 * v14) = v11;
        end = (4 * v14 + 4);
        memcpy(0, begin, v13);
        if (begin)
        {
          operator delete(begin);
        }

        begin = 0;
      }

      else
      {
        *end++ = v11;
      }

      v9 -= 240;
    }

    while (v9);
    a2->__end_ = end;
    a2->__end_cap_.__value_ = value;
    a2->__begin_ = begin;
  }
}

void *KB::Candidate::clear_custom_capitalization(void *this)
{
  if (*this)
  {
    v1 = (this[1] + 104);
    v2 = 240 * *this;
    do
    {
      v1[4] = 0;
      *v1 &= ~1u;
      v1 += 60;
      v2 -= 240;
    }

    while (v2);
  }

  return this;
}

void KB::Candidate::commit_custom_capitalization(KB::Candidate *this)
{
  v7 = *MEMORY[0x277D85DE8];
  if (*this)
  {
    v2 = *(this + 1);
    v3 = 240 * *this;
    do
    {
      if (*(v2 + 30))
      {
        KB::Word::capitalized_string(&v5, v2);
        KB::String::operator=(v2, &v5);
        if (v6)
        {
          v4 = BYTE6(v5) == 1;
        }

        else
        {
          v4 = 0;
        }

        if (v4)
        {
          free(v6);
        }
      }

      v2 = (v2 + 240);
      v3 -= 240;
    }

    while (v3);
  }

  KB::String::clear((this + 888));
}

float KB::Candidate::partial_prob(KB::Candidate *this)
{
  if (!*this)
  {
    return 1.0;
  }

  v1 = 240 * *this;
  v2 = (*(this + 1) + 48);
  result = 1.0;
  do
  {
    v4 = *v2;
    v2 += 60;
    result = result * v4;
    v1 -= 240;
  }

  while (v1);
  return result;
}

float KB::Candidate::linguistic_likelihood(KB::Candidate *this)
{
  if (!*this)
  {
    return 1.0;
  }

  v1 = 240 * *this;
  v2 = (*(this + 1) + 52);
  result = 1.0;
  do
  {
    v4 = *v2;
    v2 += 60;
    result = result * v4;
    v1 -= 240;
  }

  while (v1);
  return result;
}

float KB::Candidate::static_linguistic_likelihood(KB::Candidate *this)
{
  if (!*this)
  {
    return 1.0;
  }

  v1 = 240 * *this;
  v2 = (*(this + 1) + 56);
  result = 1.0;
  do
  {
    v4 = *v2;
    v2 += 60;
    result = result * v4;
    v1 -= 240;
  }

  while (v1);
  return result;
}

float KB::Candidate::stem_suffix_correction_factor(KB::Candidate *this)
{
  if (!*this)
  {
    return 1.0;
  }

  v1 = 240 * *this;
  v2 = (*(this + 1) + 100);
  result = 1.0;
  do
  {
    v4 = *v2;
    v2 += 60;
    result = result * v4;
    v1 -= 240;
  }

  while (v1);
  return result;
}

BOOL KB::Candidate::should_suggest(KB::Candidate *this)
{
  v2 = *this;
  v1 = *(this + 1);
  if (*this)
  {
    v3 = *(this + 1);
    v4 = 240 * v2;
    while (1)
    {
      v5 = *(v3 + 104);
      if ((v5 & 0x800012) != 0)
      {
        break;
      }

      v6 = v5 & 0x2042000;
      if ((*(v3 + 104) & 0x2080) == 0x80 || v6 == 0x2000000)
      {
        break;
      }

      v3 += 240;
      v4 -= 240;
      if (!v4)
      {
        v3 = v1 + 240 * v2;
        return v3 == v1 + 240 * v2;
      }
    }
  }

  else
  {
    v3 = *(this + 1);
  }

  return v3 == v1 + 240 * v2;
}

BOOL KB::Candidate::should_predict(KB::Candidate *this)
{
  v1 = *(this + 1);
  v2 = v1 + 240 * *this;
  if (*this)
  {
    v3 = 240 * *this;
    while ((*(v1 + 104) & 0x800000) == 0 && (*(v1 + 104) & 0x2004) != 4)
    {
      v1 += 240;
      v3 -= 240;
      if (!v3)
      {
        v1 = v2;
        return v1 == v2;
      }
    }
  }

  return v1 == v2;
}

uint64_t KB::Candidate::num_words_matching_input(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = 0;
  do
  {
    v9 = v8;
    if (*a2 <= v8)
    {
      break;
    }

    if (*a1 <= v8)
    {
      break;
    }

    v10 = KB::Word::matches_input((a1[1] + 240 * v8), (a2[1] + 240 * v8), a3, a4, a5);
    v8 = v9 + 1;
  }

  while ((v10 & 1) != 0);
  return v9;
}

uint64_t KB::Candidate::num_words_preserving_input(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = 0;
  do
  {
    v9 = v8;
    if (*a2 <= v8)
    {
      break;
    }

    if (*a1 <= v8)
    {
      break;
    }

    v10 = KB::Word::preserves_input((a1[1] + 240 * v8), (a2[1] + 240 * v8), a3, a4, a5);
    v8 = v9 + 1;
  }

  while ((v10 & 1) != 0);
  return v9;
}

uint64_t KB::Candidate::space_count(uint64_t this)
{
  v1 = *this;
  if (!*this)
  {
    return 0;
  }

  v2 = this;
  LODWORD(this) = 0;
  v3 = *(v2 + 8);
  v4 = 240 * v1;
  v5 = (v3 + 16);
  do
  {
    v6 = *(v5 - 1);
    if (!v6)
    {
      v6 = v5;
    }

    v7 = *v6 == 32 && v6[1] == 0;
    this = (v7 + this);
    v5 += 240;
    v4 -= 240;
  }

  while (v4);
  return this;
}

BOOL KB::Candidate::candidate_is_capitalization(KB::Candidate *this, unsigned int a2)
{
  v2 = *(this + 1);
  v3 = v2 + 240 * a2;
  if (*this != a2)
  {
    v4 = 240 * *this - 240 * a2;
    while (!*(v3 + 120) || (*(v3 + 104) & 0x100000) != 0)
    {
      v3 += 240;
      v4 -= 240;
      if (!v4)
      {
        v3 = v2 + 240 * *this;
        return v3 != v2 + 240 * *this;
      }
    }
  }

  return v3 != v2 + 240 * *this;
}

BOOL KB::Candidate::candidate_has_sort_key_preserving_insertion(KB::Candidate *this, unsigned int a2)
{
  v2 = *(this + 1);
  v3 = v2 + 240 * a2;
  if (*this != a2)
  {
    v4 = 240 * *this - 240 * a2;
    while ((*(v3 + 106) & 0x20) == 0)
    {
      v3 += 240;
      v4 -= 240;
      if (!v4)
      {
        v3 = v2 + 240 * *this;
        return v3 != v2 + 240 * *this;
      }
    }
  }

  return v3 != v2 + 240 * *this;
}

BOOL KB::Candidate::is_spell_correction(KB::Candidate *this, unsigned int a2)
{
  v2 = *(this + 1);
  v3 = v2 + 240 * a2;
  if (*this != a2)
  {
    v4 = 240 * *this - 240 * a2;
    while ((*(v3 + 105) & 0x80) == 0)
    {
      v3 += 240;
      v4 -= 240;
      if (!v4)
      {
        v3 = v2 + 240 * *this;
        return v3 != v2 + 240 * *this;
      }
    }
  }

  return v3 != v2 + 240 * *this;
}

BOOL KB::Candidate::has_static(KB::Candidate *this, unsigned int a2)
{
  v2 = *(this + 1);
  v3 = v2 + 240 * a2;
  if (*this != a2)
  {
    v4 = 240 * *this - 240 * a2;
    while ((*(v3 + 106) & 4) == 0)
    {
      v3 += 240;
      v4 -= 240;
      if (!v4)
      {
        v3 = v2 + 240 * *this;
        return v3 != v2 + 240 * *this;
      }
    }
  }

  return v3 != v2 + 240 * *this;
}

BOOL KB::Candidate::has_primary_static(KB::Candidate *this, unsigned int a2)
{
  v2 = *(this + 1);
  v3 = v2 + 240 * a2;
  if (*this != a2)
  {
    v4 = 240 * *this - 240 * a2;
    while ((*(v3 + 106) & 4) == 0 || (*(v3 + 192) & 1) != 0)
    {
      v3 += 240;
      v4 -= 240;
      if (!v4)
      {
        v3 = v2 + 240 * *this;
        return v3 != v2 + 240 * *this;
      }
    }
  }

  return v3 != v2 + 240 * *this;
}

BOOL KB::Candidate::has_secondary_static(KB::Candidate *this, unsigned int a2)
{
  v2 = *(this + 1);
  v3 = v2 + 240 * a2;
  if (*this != a2)
  {
    v4 = 240 * *this - 240 * a2;
    while ((*(v3 + 106) & 4) == 0 || (*(v3 + 192) & 1) == 0)
    {
      v3 += 240;
      v4 -= 240;
      if (!v4)
      {
        v3 = v2 + 240 * *this;
        return v3 != v2 + 240 * *this;
      }
    }
  }

  return v3 != v2 + 240 * *this;
}

BOOL KB::Candidate::has_dynamic(KB::Candidate *this, unsigned int a2)
{
  v2 = *(this + 1);
  v3 = v2 + 240 * a2;
  if (*this != a2)
  {
    v4 = 240 * *this - 240 * a2;
    while ((*(v3 + 104) & 0x80032000) == 0)
    {
      v3 += 240;
      v4 -= 240;
      if (!v4)
      {
        v3 = v2 + 240 * *this;
        return v3 != v2 + 240 * *this;
      }
    }
  }

  return v3 != v2 + 240 * *this;
}

BOOL KB::Candidate::has_primary_dynamic(KB::Candidate *this, unsigned int a2)
{
  v2 = *(this + 1);
  v3 = v2 + 240 * a2;
  if (*this != a2)
  {
    v4 = 240 * *this - 240 * a2;
    while ((*(v3 + 104) & 0x80032000) == 0 || (*(v3 + 192) & 1) != 0)
    {
      v3 += 240;
      v4 -= 240;
      if (!v4)
      {
        v3 = v2 + 240 * *this;
        return v3 != v2 + 240 * *this;
      }
    }
  }

  return v3 != v2 + 240 * *this;
}

BOOL KB::Candidate::has_secondary_dynamic(KB::Candidate *this, unsigned int a2)
{
  v2 = *(this + 1);
  v3 = v2 + 240 * a2;
  if (*this != a2)
  {
    v4 = 240 * *this - 240 * a2;
    while ((*(v3 + 104) & 0x80032000) == 0 || (*(v3 + 192) & 1) == 0)
    {
      v3 += 240;
      v4 -= 240;
      if (!v4)
      {
        v3 = v2 + 240 * *this;
        return v3 != v2 + 240 * *this;
      }
    }
  }

  return v3 != v2 + 240 * *this;
}

BOOL KB::Candidate::has_learned(KB::Candidate *this, unsigned int a2)
{
  v2 = *(this + 1);
  v3 = v2 + 240 * a2;
  if (*this != a2)
  {
    v4 = 240 * *this - 240 * a2;
    while ((*(v3 + 105) & 0x20) == 0)
    {
      v3 += 240;
      v4 -= 240;
      if (!v4)
      {
        v3 = v2 + 240 * *this;
        return v3 != v2 + 240 * *this;
      }
    }
  }

  return v3 != v2 + 240 * *this;
}

BOOL KB::Candidate::has_dynamic_contribution(KB::Candidate *this, unsigned int a2)
{
  v2 = *(this + 1);
  v3 = v2 + 240 * a2;
  if (*this != a2)
  {
    v4 = 240 * *this - 240 * a2;
    while ((*(v3 + 107) & 1) == 0)
    {
      v3 += 240;
      v4 -= 240;
      if (!v4)
      {
        v3 = v2 + 240 * *this;
        return v3 != v2 + 240 * *this;
      }
    }
  }

  return v3 != v2 + 240 * *this;
}

BOOL KB::Candidate::has_secondary_lexicon_contribution(KB::Candidate *this, unsigned int a2)
{
  v2 = *(this + 1);
  v3 = v2 + 240 * a2;
  if (*this != a2)
  {
    v4 = 240 * *this - 240 * a2;
    while ((*(v3 + 192) & 1) == 0)
    {
      v3 += 240;
      v4 -= 240;
      if (!v4)
      {
        v3 = v2 + 240 * *this;
        return v3 != v2 + 240 * *this;
      }
    }
  }

  return v3 != v2 + 240 * *this;
}

BOOL KB::Candidate::has_user_dictionary_word(KB::Candidate *this, unsigned int a2)
{
  v2 = *(this + 1);
  v3 = v2 + 240 * a2;
  if (*this != a2)
  {
    v4 = 240 * *this - 240 * a2;
    while ((*(v3 + 106) & 1) == 0)
    {
      v3 += 240;
      v4 -= 240;
      if (!v4)
      {
        v3 = v2 + 240 * *this;
        return v3 != v2 + 240 * *this;
      }
    }
  }

  return v3 != v2 + 240 * *this;
}

BOOL KB::Candidate::has_recency_contribution(KB::Candidate *this, unsigned int a2)
{
  v2 = *(this + 1);
  v3 = v2 + 240 * a2;
  if (*this != a2)
  {
    v4 = 240 * *this - 240 * a2;
    while ((*(v3 + 107) & 4) == 0)
    {
      v3 += 240;
      v4 -= 240;
      if (!v4)
      {
        v3 = v2 + 240 * *this;
        return v3 != v2 + 240 * *this;
      }
    }
  }

  return v3 != v2 + 240 * *this;
}

BOOL KB::Candidate::has_novel_learned_word(KB::Candidate *this, unsigned int a2)
{
  v2 = *(this + 1);
  v3 = v2 + 240 * a2;
  if (*this != a2)
  {
    v4 = 240 * *this - 240 * a2;
    while ((*(v3 + 104) & 0x2040000) != 0x2000000)
    {
      v3 += 240;
      v4 -= 240;
      if (!v4)
      {
        v3 = v2 + 240 * *this;
        return v3 != v2 + 240 * *this;
      }
    }
  }

  return v3 != v2 + 240 * *this;
}

BOOL KB::Candidate::has_error_correction_type(KB::Candidate *this, unsigned int a2, uint64_t a3)
{
  v3 = a2;
  v5 = *this;
  v4 = *(this + 1);
  v6 = v4 + 240 * a2;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 0x40000000;
  v12 = ___ZNK2KB9Candidate25has_error_correction_typeEjm_block_invoke;
  v13 = &__block_descriptor_tmp_53;
  v14 = a3;
  if (v5 != a2)
  {
    v8 = v4 + 240 * v5;
    v9 = 240 * v5 - 240 * a2;
    while (((v12)(v11, v6) & 1) == 0)
    {
      v6 += 240;
      v9 -= 240;
      if (!v9)
      {
        v6 = v8;
        break;
      }
    }

    v3 = *this;
    v4 = *(this + 1);
  }

  return v6 != v4 + 240 * v3;
}

BOOL KB::Candidate::has_from_supplemental_lexicon(KB::Candidate *this, unsigned int a2)
{
  if (*this == a2)
  {
    return 0;
  }

  v3 = -240 * a2 + 240 * *this - 240;
  v4 = (240 * a2 + *(this + 1) + 224);
  do
  {
    v5 = *v4;
    v4 += 30;
    result = v5 != 0;
    if (v5)
    {
      v6 = 1;
    }

    else
    {
      v6 = v3 == 0;
    }

    v3 -= 240;
  }

  while (!v6);
  return result;
}

uint64_t KB::Candidate::is_phrase_from_supplemental_lexicon(KB::Candidate *this)
{
  v1 = *this;
  if (!*this)
  {
    return 0;
  }

  v2 = *(this + 1);
  if (!*(v2 + 224))
  {
    return 0;
  }

  if (v1 == 1)
  {
    return 1;
  }

  v4 = 1;
  do
  {
    v5 = v2 + 240 * v4;
    if ((*(v5 + 135) & 4) == 0)
    {
      v6 = *(v5 + 224);
      if (v6)
      {
        v7 = (v2 + 240 * (v4 - 1));
        if (v6 == v7[28])
        {
          v8 = (v5 + 216);
          while (1)
          {
            v8 = *v8;
            if (!v8)
            {
              goto LABEL_30;
            }

            v9 = v7[26];
            if (!*&v9)
            {
              return 0;
            }

            v10 = v8[2];
            v11 = vcnt_s8(v9);
            v11.i16[0] = vaddlv_u8(v11);
            if (v11.u32[0] > 1uLL)
            {
              v12 = v8[2];
              if (v10 >= *&v9)
              {
                v12 = v10 % *&v9;
              }
            }

            else
            {
              v12 = (*&v9 - 1) & v10;
            }

            result = *(v7[25] + 8 * v12);
            if (!result)
            {
              return result;
            }

            v13 = *result;
            if (!*result)
            {
              return 0;
            }

            while (1)
            {
              v14 = v13[1];
              if (v10 == v14)
              {
                break;
              }

              if (v11.u32[0] > 1uLL)
              {
                if (v14 >= *&v9)
                {
                  v14 %= *&v9;
                }
              }

              else
              {
                v14 &= *&v9 - 1;
              }

              if (v14 != v12)
              {
                return 0;
              }

LABEL_26:
              v13 = *v13;
              if (!v13)
              {
                return 0;
              }
            }

            if (v13[2] != v10)
            {
              goto LABEL_26;
            }

            result = 0;
            if (v10 != v13[2])
            {
              return result;
            }
          }
        }
      }

      return 0;
    }

LABEL_30:
    v4 = (v4 + 1);
    result = 1;
  }

  while (v1 > v4);
  return result;
}

BOOL KB::Candidate::has_from_named_entities(KB::Candidate *this, unsigned int a2)
{
  v2 = *(this + 1);
  v3 = v2 + 240 * a2;
  if (*this != a2)
  {
    v4 = 240 * *this - 240 * a2;
    while ((*(v3 + 105) & 1) == 0)
    {
      v3 += 240;
      v4 -= 240;
      if (!v4)
      {
        v3 = v2 + 240 * *this;
        return v3 != v2 + 240 * *this;
      }
    }
  }

  return v3 != v2 + 240 * *this;
}

BOOL KB::Candidate::has_from_user_dictionary(KB::Candidate *this, unsigned int a2)
{
  v2 = *(this + 1);
  v3 = v2 + 240 * a2;
  if (*this != a2)
  {
    v4 = 240 * *this - 240 * a2;
    while ((*(v3 + 106) & 1) == 0)
    {
      v3 += 240;
      v4 -= 240;
      if (!v4)
      {
        v3 = v2 + 240 * *this;
        return v3 != v2 + 240 * *this;
      }
    }
  }

  return v3 != v2 + 240 * *this;
}

BOOL KB::Candidate::has_from_address_book(KB::Candidate *this, unsigned int a2)
{
  v2 = *(this + 1);
  v3 = v2 + 240 * a2;
  if (*this != a2)
  {
    v4 = 240 * *this - 240 * a2;
    while ((*(v3 + 106) & 2) == 0)
    {
      v3 += 240;
      v4 -= 240;
      if (!v4)
      {
        v3 = v2 + 240 * *this;
        return v3 != v2 + 240 * *this;
      }
    }
  }

  return v3 != v2 + 240 * *this;
}

BOOL KB::Candidate::has_from_app_names(KB::Candidate *this, unsigned int a2)
{
  v2 = *(this + 1);
  v3 = v2 + 240 * a2;
  if (*this != a2)
  {
    v4 = 240 * *this - 240 * a2;
    while ((*(v3 + 104) & 0x80000000) == 0)
    {
      v3 += 240;
      v4 -= 240;
      if (!v4)
      {
        v3 = v2 + 240 * *this;
        return v3 != v2 + 240 * *this;
      }
    }
  }

  return v3 != v2 + 240 * *this;
}

BOOL KB::Candidate::has_from_transient_lexicon(KB::Candidate *this, unsigned int a2)
{
  v2 = *(this + 1);
  v3 = v2 + 240 * a2;
  if (*this != a2)
  {
    v4 = 240 * *this - 240 * a2;
    while ((*(v3 + 104) & 0x80020100) == 0)
    {
      v3 += 240;
      v4 -= 240;
      if (!v4)
      {
        v3 = v2 + 240 * *this;
        return v3 != v2 + 240 * *this;
      }
    }
  }

  return v3 != v2 + 240 * *this;
}

BOOL KB::Candidate::has_oov(KB::Candidate *this, unsigned int a2)
{
  v2 = *(this + 1);
  v3 = v2 + 240 * a2;
  if (*this != a2)
  {
    v4 = 240 * *this - 240 * a2;
    while ((*(v3 + 106) & 0x80) == 0)
    {
      v3 += 240;
      v4 -= 240;
      if (!v4)
      {
        v3 = v2 + 240 * *this;
        return v3 != v2 + 240 * *this;
      }
    }
  }

  return v3 != v2 + 240 * *this;
}

BOOL KB::Candidate::has_persisted_custom_word(KB::Candidate *this, unsigned int a2)
{
  v2 = *(this + 1);
  v3 = v2 + 240 * a2;
  if (*this != a2)
  {
    v4 = 240 * *this - 240 * a2;
    while ((*(v3 + 107) & 2) == 0)
    {
      v3 += 240;
      v4 -= 240;
      if (!v4)
      {
        v3 = v2 + 240 * *this;
        return v3 != v2 + 240 * *this;
      }
    }
  }

  return v3 != v2 + 240 * *this;
}

BOOL KB::Candidate::has_offensive_word(KB::Candidate *this, unsigned int a2)
{
  v2 = *(this + 1);
  v3 = v2 + 240 * a2;
  if (*this != a2)
  {
    v4 = 240 * *this - 240 * a2;
    while ((*(v3 + 107) & 0x10) == 0)
    {
      v3 += 240;
      v4 -= 240;
      if (!v4)
      {
        v3 = v2 + 240 * *this;
        return v3 != v2 + 240 * *this;
      }
    }
  }

  return v3 != v2 + 240 * *this;
}

BOOL KB::Candidate::has_vulgar_word(KB::Candidate *this, unsigned int a2)
{
  v2 = *(this + 1);
  v3 = v2 + 240 * a2;
  if (*this != a2)
  {
    v4 = 240 * *this - 240 * a2;
    while ((*(v3 + 107) & 8) == 0)
    {
      v3 += 240;
      v4 -= 240;
      if (!v4)
      {
        v3 = v2 + 240 * *this;
        return v3 != v2 + 240 * *this;
      }
    }
  }

  return v3 != v2 + 240 * *this;
}

BOOL KB::Candidate::every_vulgar_word_is_allowlisted(void *a1, void *a2, void *a3, unsigned int a4)
{
  v81 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = a1;
    if (*a1 == a4)
    {
      return 1;
    }

    v5 = a3;
    v6 = a2;
    v7 = a1[1] + 240 * a4;
    __asm { FMOV            V9.2S, #1.0 }

    while (1)
    {
      *buf = 0x100000;
      *v59 = 0;
      v59[2] = 0;
      *&v59[4] = 0;
      v60 = 0;
      v61[0] = 0;
      v62 = 0x3F80000000000000;
      v63 = 1065353216;
      v64 = 0x100000;
      v65 = 0;
      v66 = 0;
      v67 = 0;
      v68 = 0;
      *&v69 = _D9;
      DWORD2(v69) = 0;
      *(&v72 + 1) = 0;
      v70 = 0u;
      v71 = 0u;
      LODWORD(v72) = 0;
      v73 = 0x100000;
      v74 = 0;
      v75 = 0;
      v76 = 0;
      v77 = 0;
      v78 = 0;
      memset(v79, 0, sizeof(v79));
      v80 = 1065353216;
      v13 = *(v7 + 104);
      KB::Word::lowercased_string(&v56, v7);
      v15 = std::__hash_table<std::__hash_value_type<KB::String,unsigned long>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,unsigned long>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,unsigned long>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,unsigned long>>>::find<KB::String>(v5, &v56, v14);
      if (*(&v56 + 1) && BYTE6(v56) == 1)
      {
        free(*(&v56 + 1));
      }

      v39 = v7;
      if (v15)
      {
        KB::Word::lowercased_string(&v56, v7);
        v55.__r_.__value_.__r.__words[0] = &v56;
        v16 = std::__hash_table<std::__hash_value_type<KB::String,KB::Word>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,KB::Word>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,KB::Word>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,KB::Word>>>::__emplace_unique_key_args<KB::String,std::piecewise_construct_t const&,std::tuple<KB::String&&>,std::tuple<>>(v5, &v56, &v55);
        KB::String::operator=(buf, (v16 + 6));
        KB::ByteString::operator=(v61, v16 + 10);
        v62 = v16[12];
        v63 = *(v16 + 26);
        KB::String::operator=(&v64, (v16 + 14));
        v17 = *(v16 + 10);
        v69 = *(v16 + 9);
        v70 = v17;
        v18 = *(v16 + 12);
        v71 = *(v16 + 11);
        v72 = v18;
        KB::String::operator=(&v73, (v16 + 26));
        v78 = *(v16 + 240);
        if (buf != (v16 + 6))
        {
          v80 = *(v16 + 70);
          std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<unsigned long long,void *> *>>(v79, v16[33]);
        }

        if (*(&v56 + 1) && BYTE6(v56) == 1)
        {
          free(*(&v56 + 1));
        }

        if ((v13 & 0x8000000) != 0 && (v39[107] & 0x40) != 0 || (BYTE11(v69) & 0x40) != 0)
        {
          goto LABEL_68;
        }
      }

      else
      {
        if ((v13 & 0x8000000) == 0)
        {
          goto LABEL_62;
        }

        if ((*(v7 + 107) & 0x40) != 0)
        {
          goto LABEL_68;
        }
      }

      if (!v6[1])
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          LODWORD(v56) = 136315138;
          *(&v56 + 4) = "every_vulgar_word_is_allowlisted";
          _os_log_error_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s  Cannot read vulgar word usage database because current app ID is NULL", &v56, 0xCu);
        }

LABEL_68:
        KB::Word::~Word(buf);
        return 0;
      }

      v45 = 0;
      v46 = 0;
      v47 = 0;
      std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>(&v45, v6[2], v6[3], 0xAAAAAAAAAAAAAAABLL * ((v6[3] - v6[2]) >> 3));
      v19 = buf;
      if ((v13 & 0x8000000) != 0)
      {
        v19 = v39;
      }

      v20 = TILocaleIdentifierForLexiconID(*(v19 + 34));
      KB::Word::capitalized_string(&v56, v39);
      v21 = *(&v56 + 1);
      if (!*(&v56 + 1))
      {
        v21 = &v57;
      }

      if (v56)
      {
        v22 = v21;
      }

      else
      {
        v22 = "";
      }

      v43 = 0;
      v44 = 0;
      v42 = 0;
      std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>(&v42, v45, v46, 0xAAAAAAAAAAAAAAABLL * ((v46 - v45) >> 3));
      v41 = v43;
      if (v43 != v42)
      {
        v40 = v20;
        v23 = v42 + 24;
        while (1)
        {
          if (*(v23 - 1) < 0)
          {
            std::string::__init_copy_ctor_external(&v55, *(v23 - 24), *(v23 - 16));
          }

          else
          {
            v55 = *(v23 - 24);
          }

          v24 = v6;
          v25 = v22;
          std::string::basic_string[abi:nn200100]<0>(__p, v22);
          KB::cf_string(__p, &v54);
          v27 = v54;
          v26 = v55.__r_.__value_.__r.__words[0];
          v28 = SHIBYTE(v55.__r_.__value_.__r.__words[2]);
          if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v29 = &v55;
          }

          else
          {
            v29 = v55.__r_.__value_.__r.__words[0];
          }

          std::string::basic_string[abi:nn200100]<0>(v49, v29);
          KB::cf_string(v49, &v51);
          v30 = v51;
          options_with_word_locale(v48, v40);
          v31 = *v48;
          CanAutocorrect = LXVulgarWordUsageDatabaseCanAutocorrect();
          v33 = CanAutocorrect != 0;
          if (v31)
          {
            CFRelease(v31);
          }

          if (v30)
          {
            CFRelease(v30);
          }

          if (v50 < 0)
          {
            break;
          }

          if (v27)
          {
            goto LABEL_41;
          }

LABEL_42:
          if (v53 < 0)
          {
            operator delete(__p[0]);
          }

          v6 = v24;
          if (v28 < 0)
          {
            operator delete(v26);
          }

          if (CanAutocorrect)
          {
            _ZF = v23 == v41;
            v23 += 24;
            v22 = v25;
            if (!_ZF)
            {
              continue;
            }
          }

          goto LABEL_58;
        }

        operator delete(v49[0]);
        if (!v27)
        {
          goto LABEL_42;
        }

LABEL_41:
        CFRelease(v27);
        goto LABEL_42;
      }

      std::string::basic_string[abi:nn200100]<0>(&v55, v22);
      KB::cf_string(&v55, __p);
      v34 = __p[0];
      options_with_word_locale(v49, v20);
      v35 = v49[0];
      v33 = LXVulgarWordUsageDatabaseCanAutocorrect() != 0;
      if (v35)
      {
        CFRelease(v35);
      }

      if (v34)
      {
        CFRelease(v34);
      }

      if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v55.__r_.__value_.__l.__data_);
      }

LABEL_58:
      v55.__r_.__value_.__r.__words[0] = &v42;
      std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v55);
      if (*(&v56 + 1))
      {
        if (BYTE6(v56) == 1)
        {
          free(*(&v56 + 1));
        }
      }

      *&v56 = &v45;
      std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v56);
      v4 = a1;
      v5 = a3;
      if (!v33)
      {
        goto LABEL_68;
      }

LABEL_62:
      KB::Word::~Word(buf);
      v7 = (v39 + 240);
      if (v39 + 240 == (v4[1] + 240 * *v4))
      {
        return 1;
      }
    }
  }

  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 136315138;
    *v59 = "every_vulgar_word_is_allowlisted";
    _os_log_error_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s  Cannot read vulgar word usage database because it has not been provided", buf, 0xCu);
    return 0;
  }

  return result;
}

BOOL KB::Candidate::every_vulgar_word_is_allowlisted_somewhere(void *a1, uint64_t *a2, void *a3, unsigned int a4)
{
  v58 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (*a1 == a4)
    {
      return 1;
    }

    v6 = a1[1] + 240 * a4 + 136;
    __asm { FMOV            V9.2S, #1.0 }

    while (1)
    {
      *buf = 0x100000;
      *v36 = 0;
      v36[2] = 0;
      *&v36[4] = 0;
      v37 = 0;
      v38[0] = 0;
      v39 = 0x3F80000000000000;
      v40 = 1065353216;
      v41 = 0x100000;
      v42 = 0;
      v43 = 0;
      v44 = 0;
      v45 = 0;
      *&v46 = _D9;
      DWORD2(v46) = 0;
      *(&v49 + 1) = 0;
      v47 = 0u;
      v48 = 0u;
      LODWORD(v49) = 0;
      v50 = 0x100000;
      v51 = 0;
      v52 = 0;
      v53 = 0;
      v54 = 0;
      v55 = 0;
      memset(v56, 0, sizeof(v56));
      v57 = 1065353216;
      v12 = *(v6 - 32);
      KB::Word::lowercased_string(&v32, (v6 - 136));
      v14 = std::__hash_table<std::__hash_value_type<KB::String,unsigned long>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,unsigned long>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,unsigned long>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,unsigned long>>>::find<KB::String>(a3, &v32, v13);
      if (v33 && BYTE6(v32) == 1)
      {
        free(v33);
      }

      if (v14)
      {
        KB::Word::lowercased_string(&v32, (v6 - 136));
        __p[0] = &v32;
        v15 = std::__hash_table<std::__hash_value_type<KB::String,KB::Word>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,KB::Word>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,KB::Word>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,KB::Word>>>::__emplace_unique_key_args<KB::String,std::piecewise_construct_t const&,std::tuple<KB::String&&>,std::tuple<>>(a3, &v32, __p);
        KB::String::operator=(buf, (v15 + 6));
        KB::ByteString::operator=(v38, v15 + 10);
        v39 = v15[12];
        v40 = *(v15 + 26);
        KB::String::operator=(&v41, (v15 + 14));
        v16 = *(v15 + 10);
        v46 = *(v15 + 9);
        v47 = v16;
        v17 = *(v15 + 12);
        v48 = *(v15 + 11);
        v49 = v17;
        KB::String::operator=(&v50, (v15 + 26));
        v55 = *(v15 + 240);
        if (buf != (v15 + 6))
        {
          v57 = *(v15 + 70);
          std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<unsigned long long,void *> *>>(v56, v15[33]);
        }

        if (v33 && BYTE6(v32) == 1)
        {
          free(v33);
        }

        if ((v12 & 0x8000000) == 0)
        {
          v18 = &v48 + 2;
          if ((BYTE11(v46) & 0x40) != 0)
          {
            goto LABEL_40;
          }

          goto LABEL_21;
        }

        if ((*(v6 - 29) & 0x40) != 0)
        {
          goto LABEL_40;
        }

        v19 = BYTE11(v46);
      }

      else
      {
        if ((v12 & 0x8000000) == 0)
        {
          goto LABEL_36;
        }

        v19 = *(v6 - 29);
      }

      v18 = v6;
      if ((v19 & 0x40) != 0)
      {
        goto LABEL_40;
      }

LABEL_21:
      v20 = TILocaleIdentifierForLexiconID(*v18);
      KB::Word::capitalized_string(&v32, (v6 - 136));
      v21 = v33;
      if (!v33)
      {
        v21 = &v34;
      }

      if (v32)
      {
        v22 = v21;
      }

      else
      {
        v22 = "";
      }

      std::string::basic_string[abi:nn200100]<0>(__p, v22);
      KB::cf_string(__p, &v31);
      v23 = v31;
      options_with_word_locale(v28, v20);
      v24 = *v28;
      CanAutocorrectSomewhere = LXVulgarWordUsageDatabaseCanAutocorrectSomewhere();
      if (v24)
      {
        CFRelease(v24);
      }

      if (v23)
      {
        CFRelease(v23);
      }

      if (v30 < 0)
      {
        operator delete(__p[0]);
      }

      if (v33)
      {
        if (BYTE6(v32) == 1)
        {
          free(v33);
        }
      }

      if (!CanAutocorrectSomewhere)
      {
LABEL_40:
        KB::Word::~Word(buf);
        return 0;
      }

LABEL_36:
      KB::Word::~Word(buf);
      v26 = v6 + 104;
      v6 += 240;
      if (v26 == a1[1] + 240 * *a1)
      {
        return 1;
      }
    }
  }

  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 136315138;
    *v36 = "every_vulgar_word_is_allowlisted_somewhere";
    _os_log_error_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s  Cannot read vulgar word usage database because it has not been provided", buf, 0xCu);
    return 0;
  }

  return result;
}

BOOL KB::Candidate::has_sensitive_word(KB::Candidate *this, unsigned int a2)
{
  v2 = *(this + 1);
  v3 = v2 + 240 * a2;
  if (*this != a2)
  {
    v4 = 240 * *this - 240 * a2;
    while ((*(v3 + 107) & 0x20) == 0)
    {
      v3 += 240;
      v4 -= 240;
      if (!v4)
      {
        v3 = v2 + 240 * *this;
        return v3 != v2 + 240 * *this;
      }
    }
  }

  return v3 != v2 + 240 * *this;
}

BOOL KB::Candidate::has_no_suggest_entries(KB::Candidate *this, unsigned int a2)
{
  v2 = *(this + 1);
  v3 = v2 + 240 * a2;
  if (*this != a2)
  {
    v4 = 240 * *this - 240 * a2;
    while ((*(v3 + 104) & 0x40000002) != 2)
    {
      v3 += 240;
      v4 -= 240;
      if (!v4)
      {
        v3 = v2 + 240 * *this;
        return v3 != v2 + 240 * *this;
      }
    }
  }

  return v3 != v2 + 240 * *this;
}

uint64_t KB::Candidate::has_part_of_hyphenated_word(KB::Candidate *this, unsigned int a2)
{
  if (*this == a2)
  {
    return 0;
  }

  v3 = -240 * a2 + 240 * *this - 240;
  v4 = (240 * a2 + *(this + 1) + 104);
  do
  {
    v5 = *v4;
    v4 += 60;
    result = (v5 >> 4) & 1;
    if ((v5 & 0x10) != 0)
    {
      break;
    }

    v6 = v3;
    v3 -= 240;
  }

  while (v6);
  return result;
}

CFStringRef KB::Candidate::named_entity_timestamp(KB::Candidate *this)
{
  if (*this)
  {
    v1 = *(this + 1);
    for (i = 240 * *this; i; i -= 240)
    {
      if (*(v1 + 105))
      {
        v3 = TILocaleIdentifierForLexiconID(*(v1 + 136));
        if (TITransientLexiconManagerGetNamedEntitiesForLocale(v3))
        {
          KB::cf_string_impl<KB::String>(&v9, v1);
          v4 = v9;
          LXLexiconGetFirstTokenIDForString();
          if (v4)
          {
            CFRelease(v4);
          }

          v5 = LXLexiconCopyEntryForTokenID();
          if (v5)
          {
            v6 = v5;
            v9 = 0;
            if (LXEntryGetTimestamp())
            {
              v7 = v9;
              CFRelease(v6);
              return v7;
            }

            CFRelease(v6);
          }
        }
      }

      v1 += 240;
    }
  }

  return 0;
}

uint64_t KB::Candidate::length_to_word(KB::Candidate *this, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = 0;
  LODWORD(v4) = 0;
  v5 = 240 * a2;
  do
  {
    v6 = *(this + 1) + v3;
    v7 = *(v6 + 4);
    if (!*(v6 + 4))
    {
      KB::String::compute_length((*(this + 1) + v3));
      v7 = *(v6 + 4);
    }

    v4 = (v4 + v7);
    v3 += 240;
  }

  while (v5 != v3);
  return v4;
}

unint64_t KB::Candidate::index_of_word_containing_position(KB::Candidate *this, unsigned int a2)
{
  if (!*this)
  {
    return 0;
  }

  result = 0;
  v5 = 0;
  v6 = 0;
  while (1)
  {
    v7 = *(this + 1) + 240 * result;
    v8 = *(v7 + 4);
    if (!*(v7 + 4))
    {
      KB::String::compute_length((*(this + 1) + 240 * result));
      v8 = *(v7 + 4);
    }

    v5 += v8;
    if (v5 > a2)
    {
      break;
    }

    result = (v6 + 1);
    v6 = result;
    if (*this <= result)
    {
      return result;
    }
  }

  return v6;
}

BOOL KB::Candidate::does_word_begin_at_position(KB::Candidate *this, int a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*this)
  {
    return 0;
  }

  v3 = 0;
  v4 = *(this + 1);
  v5 = 240 * *this - 240;
  do
  {
    v6 = v4[2];
    if (!v4[2])
    {
      KB::String::compute_length(v4);
      v6 = v4[2];
    }

    v3 += v6;
    result = v3 == a2;
    v8 = v3 == a2 || v5 == 0;
    v5 -= 240;
    v4 += 120;
  }

  while (!v8);
  return result;
}

void KB::Candidate::append_debug_data(KB::Candidate *this, __CFString *a2, int a3, const KB::String *a4)
{
  v53 = *MEMORY[0x277D85DE8];
  v48 = 0x100000;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  if (*this)
  {
    v8 = *(*(this + 1) + 240 * *this - 88);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a4 + 1);
  v10 = a4 + 16;
  if (!v9)
  {
    v9 = a4 + 16;
  }

  if (*a4)
  {
    v11 = v9;
  }

  else
  {
    v11 = "";
  }

  if (a3)
  {
    v42 = a4 + 16;
    KB::Candidate::capitalized_string(&v47, this);
    size = v47.__r_.__value_.__l.__size_;
    if (!v47.__r_.__value_.__l.__size_)
    {
      size = &v47.__r_.__value_.__s.__data_[16];
    }

    if (LOWORD(v47.__r_.__value_.__l.__data_))
    {
      v13 = size;
    }

    else
    {
      v13 = "";
    }

    v14 = expf(*(this + 186));
    v15 = logf(v14);
    v16 = *(this + 190);
    v17 = *(this + 188);
    v18 = *(this + 189);
    v19 = *(this + 187);
    if (*(this + 960))
    {
      v20 = "completion";
    }

    else
    {
      v20 = "";
    }

    v21 = *(this + 248);
    if (v21 > 6)
    {
      v22 = "Unknown";
    }

    else
    {
      v22 = off_2787339C0[v21];
    }

    KB::String::String(v43, v22);
    v29 = v45;
    if (!v45)
    {
      v29 = v46;
    }

    if (v43[0])
    {
      v30 = v29;
    }

    else
    {
      v30 = "";
    }

    KB::String::append_format(&v48, "%s[%s] ln(omega) %.3f = [%.3f*(W %.3f + T %.3f) + G %.3f] %s %lu %s\n", v11, v13, v15, v16, v17, v18, v19, v20, v8, v30);
    if (v45 && v44 == 1)
    {
      free(v45);
    }

    v31 = v47.__r_.__value_.__l.__size_;
    v10 = v42;
    if (!v47.__r_.__value_.__l.__size_)
    {
      goto LABEL_50;
    }

LABEL_48:
    if (v47.__r_.__value_.__s.__data_[6] == 1)
    {
      free(v31);
    }

    goto LABEL_50;
  }

  KB::Candidate::capitalized_string(&v47, this);
  v23 = v47.__r_.__value_.__l.__size_;
  if (!v47.__r_.__value_.__l.__size_)
  {
    v23 = &v47.__r_.__value_.__s.__data_[16];
  }

  if (LOWORD(v47.__r_.__value_.__l.__data_))
  {
    v24 = v23;
  }

  else
  {
    v24 = "";
  }

  v25 = expf(*(this + 186));
  v26 = logf(v25);
  v27 = *(this + 248);
  if (v27 > 6)
  {
    v28 = "Unknown";
  }

  else
  {
    v28 = off_2787339C0[v27];
  }

  KB::String::String(v43, v28);
  v32 = v45;
  if (!v45)
  {
    v32 = v46;
  }

  if (v43[0])
  {
    v33 = v32;
  }

  else
  {
    v33 = "";
  }

  KB::String::append_format(&v48, "%s[%s] ln(omega) %.3f %lu %s\n", v11, v24, v26, v8, v33);
  if (v45 && v44 == 1)
  {
    free(v45);
  }

  v31 = v47.__r_.__value_.__l.__size_;
  if (v47.__r_.__value_.__l.__size_)
  {
    goto LABEL_48;
  }

LABEL_50:
  v34 = v51;
  if (!v51)
  {
    v34 = &v52;
  }

  if (v48)
  {
    v35 = v34;
  }

  else
  {
    v35 = "";
  }

  CFStringAppendCString(a2, v35, 0x8000100u);
  if (a3)
  {
    if (*this)
    {
      v36 = *(this + 1);
      v37 = 240 * *this;
      do
      {
        KB::String::String(&v47, a4);
        KB::String::append(&v47, "\t", 0xFFFFuLL);
        KB::Word::append_debug_data(v36, a2, &v47);
        if (v47.__r_.__value_.__l.__size_)
        {
          v38 = v47.__r_.__value_.__s.__data_[6] == 1;
        }

        else
        {
          v38 = 0;
        }

        if (v38)
        {
          free(v47.__r_.__value_.__l.__size_);
        }

        v36 = (v36 + 240);
        v37 -= 240;
      }

      while (v37);
    }

    v39 = *(this + 195);
    if (v39)
    {
      v40 = *(a4 + 1);
      if (!v40)
      {
        v40 = v10;
      }

      if (*a4)
      {
        v41 = v40;
      }

      else
      {
        v41 = "";
      }

      CFStringAppendFormat(a2, 0, @"%s\tunshift mask: %#x\n", v41, v39);
    }
  }

  if (*(this + 943) < 0)
  {
    std::string::__init_copy_ctor_external(&v47, *(this + 115), *(this + 116));
  }

  else
  {
    v47 = *(this + 920);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (v51)
  {
    if (v50 == 1)
    {
      free(v51);
    }
  }
}

void KB::Candidate::token_ids_as_string(uint64_t *__return_ptr a1@<X8>, KB::Candidate *this@<X0>)
{
  v14 = *MEMORY[0x277D85DE8];
  v10 = 0;
  v3 = 0uLL;
  v9 = 0u;
  if (*this)
  {
    v4 = 240 * *this;
    v5 = *(this + 1) + 136;
    do
    {
      v6 = TILocaleIdentifierForLexiconID(*v5);
      if (v6)
      {
        v8 = v6;
      }

      else
      {
        v8 = "";
      }

      KB::String::format(&v11, "%s:%d", v7, v8, *(v5 + 4));
      std::vector<KB::String>::push_back[abi:nn200100](&v9, &v11);
      if (v12 && BYTE6(v11) == 1)
      {
        free(v12);
      }

      v5 += 240;
      v4 -= 240;
    }

    while (v4);
    v3 = v9;
  }

  WORD2(v11) = 0;
  BYTE6(v11) = 0;
  v12 = ", ";
  LODWORD(v11) = 1048578;
  v13 = 0;
  KB::string_join(a1, v3, *(&v3 + 1), &v11);
  if (v12 && BYTE6(v11) == 1)
  {
    free(v12);
  }

  v11 = &v9;
  std::vector<KB::String>::__destroy_vector::operator()[abi:nn200100](&v11);
}

void KB::Candidate::add_sources_info(KB::Candidate *this, const __CFString *a2, const __CFDictionary *a3)
{
  v6 = *(this + 123);
  if (v6)
  {
    CFRetain(*(this + 123));
    CFRelease(v6);
    Mutable = *(this + 123);
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v8 = *(this + 123);
    if (v8)
    {
      CFRelease(v8);
    }

    *(this + 123) = Mutable;
  }

  CFDictionarySetValue(Mutable, a2, a3);
}

uint64_t *KB::CandidateCollection::scale_scores(uint64_t *this, float a2)
{
  v2 = *this;
  v3 = this[1];
  while (v2 != v3)
  {
    *(v2 + 744) = vmulq_n_f32(*(v2 + 744), a2);
    v2 += 1000;
  }

  return this;
}

BOOL KB::CandidateCollection::contains_secondary_language_candidates(KB::CandidateCollection *this, int *a2, int a3)
{
  v3 = *this;
  v4 = 0x1CAC083126E978D5 * ((*(this + 1) - *this) >> 3);
  if (v4 <= a3)
  {
    v4 = v4;
  }

  else
  {
    v4 = a3;
  }

  if (v4 < 1)
  {
    return 0;
  }

  else
  {
    v5 = 0;
    v6 = 1;
    while (1)
    {
      v7 = *(v3 + 1000 * v5);
      if (v7)
      {
        v8 = 240 * v7;
        v9 = *(v3 + 1000 * v5 + 8);
        while ((*(v9 + 192) & 1) == 0)
        {
          v9 += 240;
          v8 -= 240;
          if (!v8)
          {
            goto LABEL_13;
          }
        }
      }

      else
      {
        v9 = *(v3 + 1000 * v5 + 8);
      }

      if (v9 != *(v3 + 1000 * v5 + 8) + 240 * v7)
      {
        break;
      }

LABEL_13:
      v6 = ++v5 < v4;
      if (v5 == v4)
      {
        return 0;
      }
    }

    *a2 = v5;
  }

  return v6;
}

void KB::CandidateCollection::sort(KB::CandidateCollection *this)
{
  v1 = *(this + 1);
  v2 = 126 - 2 * __clz(0x1CAC083126E978D5 * ((v1 - *this) >> 3));
  if (v1 == *this)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  std::__introsort<std::_ClassicAlgPolicy,KB::CandidateCollection::sort(void)::$_0 &,KB::Candidate *,false>(*this, v1, v3, 1);
}

void std::__introsort<std::_ClassicAlgPolicy,KB::CandidateCollection::sort(void)::$_0 &,KB::Candidate *,false>(uint64_t *a1, KB::Candidate *a2, uint64_t a3, char a4)
{
  v222 = *MEMORY[0x277D85DE8];
LABEL_2:
  v217 = (a2 - 1000);
  v214 = (a2 - 3000);
  v215 = (a2 - 2000);
  v213 = (a2 - 992);
  v7 = a1;
  while (1)
  {
    a1 = v7;
    v8 = a2 - v7;
    v9 = 0x1CAC083126E978D5 * ((a2 - v7) >> 3);
    if (v9 > 2)
    {
      switch(v9)
      {
        case 3uLL:
          std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,KB::CandidateCollection::sort(void)::$_0 &,KB::Candidate *,0>(v7, (v7 + 125), v217);
          return;
        case 4uLL:
          std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,KB::CandidateCollection::sort(void)::$_0 &,KB::Candidate *,0>(v7, (v7 + 125), v7 + 500, v217);
          return;
        case 5uLL:
          std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,KB::CandidateCollection::sort(void)::$_0 &,KB::Candidate *,0>(v7, (v7 + 125), v7 + 500, v7 + 750, v217);
          return;
      }
    }

    else
    {
      if (v9 < 2)
      {
        return;
      }

      if (v9 == 2)
      {
        if (*(a2 - 64) != *(v7 + 186))
        {
          goto LABEL_407;
        }

        v151 = *v217;
        if (*v217)
        {
          v152 = 240 * v151;
          v153 = *v213;
          while ((*(v153 + 105) & 1) == 0)
          {
            v153 += 240;
            v152 -= 240;
            if (!v152)
            {
              goto LABEL_407;
            }
          }
        }

        else
        {
          v153 = *v213;
        }

        if (v153 == *v213 + 240 * v151)
        {
          goto LABEL_407;
        }

        v205 = *v7;
        if (*v7)
        {
          v206 = 240 * v205;
          v207 = v7[1];
          while ((*(v207 + 105) & 1) == 0)
          {
            v207 += 240;
            v206 -= 240;
            if (!v206)
            {
              goto LABEL_407;
            }
          }
        }

        else
        {
          v207 = v7[1];
        }

        if (v207 != v7[1] + 240 * v205 && (v208 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(v217)), v210 = v209, v211 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(v7)), (v210 & 1) != 0) && (v212 & 1) != 0)
        {
          if (v208 <= v211)
          {
            return;
          }
        }

        else
        {
LABEL_407:
          if (*(a2 - 64) <= *(v7 + 186))
          {
            return;
          }
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v7, v217);
        return;
      }
    }

    if (v8 <= 23999)
    {
      break;
    }

    if (!a3)
    {
      std::__partial_sort[abi:nn200100]<std::_ClassicAlgPolicy,KB::CandidateCollection::sort(void)::$_0 &,KB::Candidate *,KB::Candidate *>(v7, a2, a2);
      return;
    }

    v10 = v9 >> 1;
    v11 = &v7[125 * (v9 >> 1)];
    if (v8 < 0x1F401)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,KB::CandidateCollection::sort(void)::$_0 &,KB::Candidate *,0>(v11, v7, v217);
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,KB::CandidateCollection::sort(void)::$_0 &,KB::Candidate *,0>(v7, v11, v217);
      v12 = 125 * v10;
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,KB::CandidateCollection::sort(void)::$_0 &,KB::Candidate *,0>((v7 + 125), &v7[v12 - 125], v215);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,KB::CandidateCollection::sort(void)::$_0 &,KB::Candidate *,0>((v7 + 250), &v7[v12 + 125], v214);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,KB::CandidateCollection::sort(void)::$_0 &,KB::Candidate *,0>(&v7[v12 - 125], v11, &v7[v12 + 125]);
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v7, v11);
    }

    --a3;
    if (a4)
    {
      goto LABEL_41;
    }

    if (*(v7 - 64) != *(v7 + 186))
    {
      goto LABEL_40;
    }

    v13 = *(v7 - 125);
    if (v13)
    {
      v14 = 240 * v13;
      v15 = *(v7 - 124);
      while ((*(v15 + 105) & 1) == 0)
      {
        v15 += 240;
        v14 -= 240;
        if (!v14)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
      v15 = *(v7 - 124);
    }

    if (v15 == *(v7 - 124) + 240 * v13)
    {
      goto LABEL_40;
    }

    v16 = *v7;
    if (*v7)
    {
      v17 = 240 * v16;
      v18 = v7[1];
      while ((*(v18 + 105) & 1) == 0)
      {
        v18 += 240;
        v17 -= 240;
        if (!v17)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
      v18 = v7[1];
    }

    if (v18 != v7[1] + 240 * v16 && (v19 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp((v7 - 125))), v21 = v20, v22 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(v7)), (v21 & 1) != 0) && (v23 & 1) != 0)
    {
      if (v19 > v22)
      {
        goto LABEL_41;
      }

LABEL_34:
      KB::Candidate::Candidate(&v219, v7);
      if (v221 != *(a2 - 64))
      {
        goto LABEL_196;
      }

      if (v219)
      {
        v24 = 240 * v219;
        v25 = v220;
        while ((*(v25 + 105) & 1) == 0)
        {
          v25 += 240;
          v24 -= 240;
          if (!v24)
          {
            goto LABEL_196;
          }
        }
      }

      else
      {
        v25 = v220;
      }

      if (v25 == v220 + 240 * v219)
      {
        goto LABEL_196;
      }

      v86 = *v217;
      if (*v217)
      {
        v87 = 240 * v86;
        v88 = *v213;
        while ((*(v88 + 105) & 1) == 0)
        {
          v88 += 240;
          v87 -= 240;
          if (!v87)
          {
            goto LABEL_196;
          }
        }
      }

      else
      {
        v88 = *v213;
      }

      if (v88 == *v213 + 240 * v86 || (v89 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(&v219)), v91 = v90, v92 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(v217)), (v91 & 1) == 0) || (v93 & 1) == 0)
      {
LABEL_196:
        if (v221 > *(a2 - 64))
        {
          goto LABEL_197;
        }

LABEL_173:
        v7 += 125;
        v94 = a1;
        while (v7 < a2)
        {
          v95 = v7;
          if (v221 != *(v94 + 436))
          {
            goto LABEL_194;
          }

          if (v219)
          {
            v96 = 240 * v219;
            v97 = v220;
            while ((*(v97 + 105) & 1) == 0)
            {
              v97 += 240;
              v96 -= 240;
              if (!v96)
              {
                goto LABEL_194;
              }
            }
          }

          else
          {
            v97 = v220;
          }

          if (v97 == v220 + 240 * v219)
          {
            goto LABEL_194;
          }

          v98 = *v7;
          if (*v7)
          {
            v99 = 240 * v98;
            v100 = v94[126];
            while ((*(v100 + 105) & 1) == 0)
            {
              v100 += 240;
              v99 -= 240;
              if (!v99)
              {
                goto LABEL_194;
              }
            }
          }

          else
          {
            v100 = v94[126];
          }

          if (v100 != v94[126] + 240 * v98 && (v101 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(&v219)), v103 = v102, v104 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(v7)), (v103 & 1) != 0) && (v105 & 1) != 0)
          {
            if (v101 > v104)
            {
              goto LABEL_217;
            }
          }

          else
          {
LABEL_194:
            if (v221 > *(v94 + 436))
            {
              goto LABEL_217;
            }
          }

          v7 += 125;
          v94 = v95;
        }

        goto LABEL_217;
      }

      if (v89 <= v92)
      {
        goto LABEL_173;
      }

      do
      {
LABEL_197:
        while (1)
        {
          v106 = v7;
          v7 += 125;
          if (v221 != *(v106 + 436))
          {
            break;
          }

          if (v219)
          {
            v107 = 240 * v219;
            v108 = v220;
            while ((*(v108 + 105) & 1) == 0)
            {
              v108 += 240;
              v107 -= 240;
              if (!v107)
              {
                goto LABEL_216;
              }
            }
          }

          else
          {
            v108 = v220;
          }

          if (v108 == v220 + 240 * v219)
          {
            break;
          }

          v109 = v106[125];
          if (v109)
          {
            v110 = 240 * v109;
            v111 = v106[126];
            while ((*(v111 + 105) & 1) == 0)
            {
              v111 += 240;
              v110 -= 240;
              if (!v110)
              {
                goto LABEL_216;
              }
            }
          }

          else
          {
            v111 = v106[126];
          }

          if (v111 == v106[126] + 240 * v109)
          {
            break;
          }

          v112 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(&v219));
          v114 = v113;
          v115 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(v7));
          if ((v114 & 1) == 0 || (v116 & 1) == 0)
          {
            break;
          }

          if (v112 > v115)
          {
            goto LABEL_217;
          }
        }

LABEL_216:
        ;
      }

      while (v221 <= *(v106 + 436));
LABEL_217:
      v117 = a2;
      if (v7 < a2)
      {
        v117 = a2;
        do
        {
          while (1)
          {
            v118 = v117;
            v117 = (v117 - 1000);
            if (v221 != *(v118 - 64))
            {
              break;
            }

            if (v219)
            {
              v119 = 240 * v219;
              v120 = v220;
              while ((*(v120 + 105) & 1) == 0)
              {
                v120 += 240;
                v119 -= 240;
                if (!v119)
                {
                  goto LABEL_238;
                }
              }
            }

            else
            {
              v120 = v220;
            }

            if (v120 == v220 + 240 * v219)
            {
              break;
            }

            v121 = *v117;
            if (*v117)
            {
              v122 = 240 * v121;
              v123 = *(v118 - 124);
              while ((*(v123 + 105) & 1) == 0)
              {
                v123 += 240;
                v122 -= 240;
                if (!v122)
                {
                  goto LABEL_238;
                }
              }
            }

            else
            {
              v123 = *(v118 - 124);
            }

            if (v123 == *(v118 - 124) + 240 * v121)
            {
              break;
            }

            v124 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(&v219));
            v126 = v125;
            v127 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(v117));
            if ((v126 & 1) == 0 || (v128 & 1) == 0)
            {
              break;
            }

            if (v124 <= v127)
            {
              goto LABEL_281;
            }
          }

LABEL_238:
          ;
        }

        while (v221 > *(v118 - 64));
      }

LABEL_281:
      while (v7 < v117)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v7, v117);
        do
        {
          while (1)
          {
            v129 = v7;
            v7 += 125;
            if (v221 != *(v129 + 436))
            {
              break;
            }

            if (v219)
            {
              v130 = 240 * v219;
              v131 = v220;
              while ((*(v131 + 105) & 1) == 0)
              {
                v131 += 240;
                v130 -= 240;
                if (!v130)
                {
                  goto LABEL_260;
                }
              }
            }

            else
            {
              v131 = v220;
            }

            if (v131 == v220 + 240 * v219)
            {
              break;
            }

            v132 = v129[125];
            if (v132)
            {
              v133 = 240 * v132;
              v134 = v129[126];
              while ((*(v134 + 105) & 1) == 0)
              {
                v134 += 240;
                v133 -= 240;
                if (!v133)
                {
                  goto LABEL_260;
                }
              }
            }

            else
            {
              v134 = v129[126];
            }

            if (v134 == v129[126] + 240 * v132)
            {
              break;
            }

            v135 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(&v219));
            v137 = v136;
            v138 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(v7));
            if ((v137 & 1) == 0 || (v139 & 1) == 0)
            {
              break;
            }

            if (v135 > v138)
            {
              goto LABEL_261;
            }
          }

LABEL_260:
          ;
        }

        while (v221 <= *(v129 + 436));
        do
        {
LABEL_261:
          while (1)
          {
            v140 = v117;
            v117 = (v117 - 1000);
            if (v221 != *(v140 - 64))
            {
              break;
            }

            if (v219)
            {
              v141 = 240 * v219;
              v142 = v220;
              while ((*(v142 + 105) & 1) == 0)
              {
                v142 += 240;
                v141 -= 240;
                if (!v141)
                {
                  goto LABEL_280;
                }
              }
            }

            else
            {
              v142 = v220;
            }

            if (v142 == v220 + 240 * v219)
            {
              break;
            }

            v143 = *v117;
            if (*v117)
            {
              v144 = 240 * v143;
              v145 = *(v140 - 124);
              while ((*(v145 + 105) & 1) == 0)
              {
                v145 += 240;
                v144 -= 240;
                if (!v144)
                {
                  goto LABEL_280;
                }
              }
            }

            else
            {
              v145 = *(v140 - 124);
            }

            if (v145 == *(v140 - 124) + 240 * v143)
            {
              break;
            }

            v146 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(&v219));
            v148 = v147;
            v149 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(v117));
            if ((v148 & 1) == 0 || (v150 & 1) == 0)
            {
              break;
            }

            if (v146 <= v149)
            {
              goto LABEL_281;
            }
          }

LABEL_280:
          ;
        }

        while (v221 > *(v140 - 64));
      }

      if (v7 - 125 != a1)
      {
        KB::Candidate::operator=(a1, v7 - 125);
      }

      KB::Candidate::operator=(v7 - 125, &v219);
      KB::Candidate::~Candidate(&v219);
      a4 = 0;
    }

    else
    {
LABEL_40:
      if (*(v7 - 64) <= *(v7 + 186))
      {
        goto LABEL_34;
      }

LABEL_41:
      v218 = a3;
      KB::Candidate::Candidate(&v219, v7);
      v26 = v7;
      do
      {
        while (1)
        {
          v27 = v26;
          v26 = (v26 + 1000);
          if (*(v27 + 436) != v221)
          {
            break;
          }

          v28 = *(v27 + 125);
          if (v28)
          {
            v29 = 240 * v28;
            v30 = *(v27 + 126);
            while ((*(v30 + 105) & 1) == 0)
            {
              v30 += 240;
              v29 -= 240;
              if (!v29)
              {
                goto LABEL_61;
              }
            }
          }

          else
          {
            v30 = *(v27 + 126);
          }

          if (v30 == *(v27 + 126) + 240 * v28)
          {
            break;
          }

          if (v219)
          {
            v31 = 240 * v219;
            v32 = v220;
            while ((*(v32 + 105) & 1) == 0)
            {
              v32 += 240;
              v31 -= 240;
              if (!v31)
              {
                goto LABEL_61;
              }
            }
          }

          else
          {
            v32 = v220;
          }

          if (v32 == v220 + 240 * v219)
          {
            break;
          }

          v33 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(v26));
          v35 = v34;
          v36 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(&v219));
          if ((v35 & 1) == 0 || (v37 & 1) == 0)
          {
            break;
          }

          if (v33 <= v36)
          {
            goto LABEL_62;
          }
        }

LABEL_61:
        ;
      }

      while (*(v27 + 436) > v221);
LABEL_62:
      v38 = a2;
      if (v27 == v7)
      {
        if (v26 < a2)
        {
          do
          {
            while (1)
            {
              v50 = a2;
              a2 = (a2 - 1000);
              if (*(v50 - 64) != v221)
              {
                break;
              }

              v51 = *a2;
              if (*a2)
              {
                v52 = 240 * v51;
                v53 = *(v50 - 124);
                while ((*(v53 + 105) & 1) == 0)
                {
                  v53 += 240;
                  v52 -= 240;
                  if (!v52)
                  {
                    goto LABEL_105;
                  }
                }
              }

              else
              {
                v53 = *(v50 - 124);
              }

              if (v53 == *(v50 - 124) + 240 * v51)
              {
                break;
              }

              if (v219)
              {
                v54 = 240 * v219;
                v55 = v220;
                while ((*(v55 + 105) & 1) == 0)
                {
                  v55 += 240;
                  v54 -= 240;
                  if (!v54)
                  {
                    goto LABEL_105;
                  }
                }
              }

              else
              {
                v55 = v220;
              }

              if (v55 == v220 + 240 * v219)
              {
                break;
              }

              v56 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(a2));
              v58 = v57;
              v59 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(&v219));
              if ((v58 & 1) == 0 || (v60 & 1) == 0)
              {
                break;
              }

              if (v56 > v59 || v26 >= a2)
              {
                goto LABEL_110;
              }
            }

LABEL_105:
            v61 = *(v50 - 64) > v221 || v26 >= a2;
          }

          while (!v61);
        }
      }

      else
      {
        do
        {
          while (1)
          {
            v39 = a2;
            a2 = (a2 - 1000);
            if (*(v39 - 64) != v221)
            {
              break;
            }

            v40 = *a2;
            if (*a2)
            {
              v41 = 240 * v40;
              v42 = *(v39 - 124);
              while ((*(v42 + 105) & 1) == 0)
              {
                v42 += 240;
                v41 -= 240;
                if (!v41)
                {
                  goto LABEL_82;
                }
              }
            }

            else
            {
              v42 = *(v39 - 124);
            }

            if (v42 == *(v39 - 124) + 240 * v40)
            {
              break;
            }

            if (v219)
            {
              v43 = 240 * v219;
              v44 = v220;
              while ((*(v44 + 105) & 1) == 0)
              {
                v44 += 240;
                v43 -= 240;
                if (!v43)
                {
                  goto LABEL_82;
                }
              }
            }

            else
            {
              v44 = v220;
            }

            if (v44 == v220 + 240 * v219)
            {
              break;
            }

            v45 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(a2));
            v47 = v46;
            v48 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(&v219));
            if ((v47 & 1) == 0 || (v49 & 1) == 0)
            {
              break;
            }

            if (v45 > v48)
            {
              goto LABEL_110;
            }
          }

LABEL_82:
          ;
        }

        while (*(v39 - 64) <= v221);
      }

LABEL_110:
      v7 = v26;
      if (v26 < a2)
      {
        v62 = a2;
        do
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v7, v62);
          do
          {
            while (1)
            {
              v63 = v7;
              v7 += 125;
              if (*(v63 + 436) != v221)
              {
                break;
              }

              v64 = v63[125];
              if (v64)
              {
                v65 = 240 * v64;
                v66 = v63[126];
                while ((*(v66 + 105) & 1) == 0)
                {
                  v66 += 240;
                  v65 -= 240;
                  if (!v65)
                  {
                    goto LABEL_132;
                  }
                }
              }

              else
              {
                v66 = v63[126];
              }

              if (v66 == v63[126] + 240 * v64)
              {
                break;
              }

              if (v219)
              {
                v67 = 240 * v219;
                v68 = v220;
                while ((*(v68 + 105) & 1) == 0)
                {
                  v68 += 240;
                  v67 -= 240;
                  if (!v67)
                  {
                    goto LABEL_132;
                  }
                }
              }

              else
              {
                v68 = v220;
              }

              if (v68 == v220 + 240 * v219)
              {
                break;
              }

              v69 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(v7));
              v71 = v70;
              v72 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(&v219));
              if ((v71 & 1) == 0 || (v73 & 1) == 0)
              {
                break;
              }

              if (v69 <= v72)
              {
                goto LABEL_133;
              }
            }

LABEL_132:
            ;
          }

          while (*(v63 + 436) > v221);
          do
          {
LABEL_133:
            while (1)
            {
              v74 = v62;
              v62 -= 125;
              if (*(v74 - 64) != v221)
              {
                break;
              }

              v75 = *v62;
              if (*v62)
              {
                v76 = 240 * v75;
                v77 = *(v74 - 124);
                while ((*(v77 + 105) & 1) == 0)
                {
                  v77 += 240;
                  v76 -= 240;
                  if (!v76)
                  {
                    goto LABEL_152;
                  }
                }
              }

              else
              {
                v77 = *(v74 - 124);
              }

              if (v77 == *(v74 - 124) + 240 * v75)
              {
                break;
              }

              if (v219)
              {
                v78 = 240 * v219;
                v79 = v220;
                while ((*(v79 + 105) & 1) == 0)
                {
                  v79 += 240;
                  v78 -= 240;
                  if (!v78)
                  {
                    goto LABEL_152;
                  }
                }
              }

              else
              {
                v79 = v220;
              }

              if (v79 == v220 + 240 * v219)
              {
                break;
              }

              v80 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(v62));
              v82 = v81;
              v83 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(&v219));
              if ((v82 & 1) == 0 || (v84 & 1) == 0)
              {
                break;
              }

              if (v80 > v83)
              {
                goto LABEL_153;
              }
            }

LABEL_152:
            ;
          }

          while (*(v74 - 64) <= v221);
LABEL_153:
          ;
        }

        while (v7 < v62);
      }

      if (v7 - 125 != a1)
      {
        KB::Candidate::operator=(a1, v7 - 125);
      }

      KB::Candidate::operator=(v7 - 125, &v219);
      KB::Candidate::~Candidate(&v219);
      v61 = v26 >= a2;
      a2 = v38;
      a3 = v218;
      if (!v61)
      {
        goto LABEL_160;
      }

      v85 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,KB::CandidateCollection::sort(void)::$_0 &,KB::Candidate *>(a1, v7 - 1000);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,KB::CandidateCollection::sort(void)::$_0 &,KB::Candidate *>(v7, v38))
      {
        a2 = (v7 - 125);
        if (v85)
        {
          return;
        }

        goto LABEL_2;
      }

      if ((v85 & 1) == 0)
      {
LABEL_160:
        std::__introsort<std::_ClassicAlgPolicy,KB::CandidateCollection::sort(void)::$_0 &,KB::Candidate *,false>(a1, (v7 - 125), v218, a4 & 1);
        a4 = 0;
      }
    }
  }

  if ((a4 & 1) == 0)
  {
    if (v7 == a2)
    {
      return;
    }

    v180 = v7 + 125;
    if (v7 + 125 == a2)
    {
      return;
    }

    while (1)
    {
      v181 = a1;
      a1 = v180;
      if (*(v181 + 436) != *(v181 + 186))
      {
        goto LABEL_369;
      }

      v182 = *v180;
      if (*v180)
      {
        v183 = 240 * v182;
        v184 = v181[126];
        while ((*(v184 + 105) & 1) == 0)
        {
          v184 += 240;
          v183 -= 240;
          if (!v183)
          {
            goto LABEL_369;
          }
        }
      }

      else
      {
        v184 = v181[126];
      }

      if (v184 == v181[126] + 240 * v182)
      {
        goto LABEL_369;
      }

      v185 = *v181;
      if (*v181)
      {
        v186 = 240 * v185;
        v187 = v181[1];
        while ((*(v187 + 105) & 1) == 0)
        {
          v187 += 240;
          v186 -= 240;
          if (!v186)
          {
            goto LABEL_369;
          }
        }
      }

      else
      {
        v187 = v181[1];
      }

      if (v187 != v181[1] + 240 * v185 && (v188 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(v180)), v190 = v189, v191 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(v181)), (v190 & 1) != 0) && (v192 & 1) != 0)
      {
        if (v188 > v191)
        {
          goto LABEL_370;
        }
      }

      else
      {
LABEL_369:
        if (*(v181 + 436) > *(v181 + 186))
        {
LABEL_370:
          KB::Candidate::Candidate(&v219, a1);
          v193 = a1;
          do
          {
            while (1)
            {
              v194 = v193;
              v193 = v181;
              KB::Candidate::operator=(v194, v181);
              v181 -= 125;
              if (v221 != *(v193 - 64))
              {
                break;
              }

              if (v219)
              {
                v195 = 240 * v219;
                v196 = v220;
                while ((*(v196 + 105) & 1) == 0)
                {
                  v196 += 240;
                  v195 -= 240;
                  if (!v195)
                  {
                    goto LABEL_390;
                  }
                }
              }

              else
              {
                v196 = v220;
              }

              if (v196 == v220 + 240 * v219)
              {
                break;
              }

              v197 = *v181;
              if (*v181)
              {
                v198 = 240 * v197;
                v199 = *(v193 - 124);
                while ((*(v199 + 105) & 1) == 0)
                {
                  v199 += 240;
                  v198 -= 240;
                  if (!v198)
                  {
                    goto LABEL_390;
                  }
                }
              }

              else
              {
                v199 = *(v193 - 124);
              }

              if (v199 == *(v193 - 124) + 240 * v197)
              {
                break;
              }

              v200 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(&v219));
              v202 = v201;
              v203 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(v181));
              if ((v202 & 1) == 0 || (v204 & 1) == 0)
              {
                break;
              }

              if (v200 <= v203)
              {
                goto LABEL_391;
              }
            }

LABEL_390:
            ;
          }

          while (v221 > *(v193 - 64));
LABEL_391:
          KB::Candidate::operator=(v193, &v219);
          KB::Candidate::~Candidate(&v219);
        }
      }

      v180 = a1 + 125;
      if (a1 + 125 == a2)
      {
        return;
      }
    }
  }

  if (v7 != a2)
  {
    v154 = (v7 + 125);
    if (v7 + 125 != a2)
    {
      v155 = v7;
      do
      {
        v156 = v155;
        v155 = v154;
        if (*(v156 + 1744) != *(v156 + 744))
        {
          goto LABEL_319;
        }

        v157 = *v154;
        if (*v154)
        {
          v158 = 240 * v157;
          v159 = *(v156 + 1008);
          while ((*(v159 + 105) & 1) == 0)
          {
            v159 += 240;
            v158 -= 240;
            if (!v158)
            {
              goto LABEL_319;
            }
          }
        }

        else
        {
          v159 = *(v156 + 1008);
        }

        if (v159 == *(v156 + 1008) + 240 * v157)
        {
          goto LABEL_319;
        }

        v160 = *v156;
        if (*v156)
        {
          v161 = 240 * v160;
          v162 = *(v156 + 8);
          while ((*(v162 + 105) & 1) == 0)
          {
            v162 += 240;
            v161 -= 240;
            if (!v161)
            {
              goto LABEL_319;
            }
          }
        }

        else
        {
          v162 = *(v156 + 8);
        }

        if (v162 != *(v156 + 8) + 240 * v160 && (v163 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(v154)), v165 = v164, v166 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(v156)), (v165 & 1) != 0) && (v167 & 1) != 0)
        {
          if (v163 > v166)
          {
            goto LABEL_320;
          }
        }

        else
        {
LABEL_319:
          if (*(v156 + 1744) > *(v156 + 744))
          {
LABEL_320:
            KB::Candidate::Candidate(&v219, v155);
            v168 = v155;
            while (1)
            {
              v169 = v168;
              v168 = v156;
              KB::Candidate::operator=(v169, v156);
              if (v156 == v7)
              {
                break;
              }

              v156 -= 1000;
              if (v221 != *(v168 - 64))
              {
                goto LABEL_341;
              }

              if (v219)
              {
                v170 = 240 * v219;
                v171 = v220;
                while ((*(v171 + 105) & 1) == 0)
                {
                  v171 += 240;
                  v170 -= 240;
                  if (!v170)
                  {
                    goto LABEL_341;
                  }
                }
              }

              else
              {
                v171 = v220;
              }

              if (v171 == v220 + 240 * v219)
              {
                goto LABEL_341;
              }

              v172 = *v156;
              if (*v156)
              {
                v173 = 240 * v172;
                v174 = *(v168 - 124);
                while ((*(v174 + 105) & 1) == 0)
                {
                  v174 += 240;
                  v173 -= 240;
                  if (!v173)
                  {
                    goto LABEL_341;
                  }
                }
              }

              else
              {
                v174 = *(v168 - 124);
              }

              if (v174 != *(v168 - 124) + 240 * v172 && (v175 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(&v219)), v177 = v176, v178 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp((v168 - 125))), (v177 & 1) != 0) && (v179 & 1) != 0)
              {
                if (v175 <= v178)
                {
                  goto LABEL_344;
                }
              }

              else
              {
LABEL_341:
                if (v221 <= *(v168 - 64))
                {
                  goto LABEL_344;
                }
              }
            }

            v168 = v7;
LABEL_344:
            KB::Candidate::operator=(v168, &v219);
            KB::Candidate::~Candidate(&v219);
          }
        }

        v154 = (v155 + 1000);
      }

      while ((v155 + 1000) != a2);
    }
  }
}

void std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,KB::CandidateCollection::sort(void)::$_0 &,KB::Candidate *,0>(KB::Candidate *a1, KB::Candidate *this, float *a3)
{
  v6 = *(this + 186);
  if (v6 == *(a1 + 186))
  {
    v7 = *this;
    if (*this)
    {
      v8 = 240 * v7;
      v9 = *(this + 1);
      while ((*(v9 + 105) & 1) == 0)
      {
        v9 += 240;
        v8 -= 240;
        if (!v8)
        {
          goto LABEL_33;
        }
      }
    }

    else
    {
      v9 = *(this + 1);
    }

    if (v9 != *(this + 1) + 240 * v7)
    {
      v10 = *a1;
      if (*a1)
      {
        v11 = 240 * v10;
        v12 = *(a1 + 1);
        while ((*(v12 + 105) & 1) == 0)
        {
          v12 += 240;
          v11 -= 240;
          if (!v11)
          {
            goto LABEL_33;
          }
        }
      }

      else
      {
        v12 = *(a1 + 1);
      }

      if (v12 != *(a1 + 1) + 240 * v10)
      {
        v13 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(this));
        v15 = v14;
        v16 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(a1));
        if (v15)
        {
          v6 = *(this + 186);
          if (v17)
          {
            if (v13 <= v16)
            {
              goto LABEL_19;
            }

            goto LABEL_34;
          }
        }

        else
        {
          v6 = *(this + 186);
        }
      }
    }
  }

LABEL_33:
  if (v6 <= *(a1 + 186))
  {
    if (a3[186] != v6)
    {
      goto LABEL_53;
    }

LABEL_19:
    v18 = *a3;
    if (*a3)
    {
      v19 = 240 * v18;
      v20 = *(a3 + 1);
      while ((*(v20 + 105) & 1) == 0)
      {
        v20 += 240;
        v19 -= 240;
        if (!v19)
        {
          goto LABEL_53;
        }
      }
    }

    else
    {
      v20 = *(a3 + 1);
    }

    if (v20 == *(a3 + 1) + 240 * v18)
    {
      goto LABEL_53;
    }

    v21 = *this;
    if (*this)
    {
      v22 = 240 * v21;
      v23 = *(this + 1);
      while ((*(v23 + 105) & 1) == 0)
      {
        v23 += 240;
        v22 -= 240;
        if (!v22)
        {
          goto LABEL_53;
        }
      }
    }

    else
    {
      v23 = *(this + 1);
    }

    if (v23 != *(this + 1) + 240 * v21 && (v30 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(a3)), v32 = v31, v33 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(this)), (v32 & 1) != 0) && (v34 & 1) != 0)
    {
      if (v30 <= v33)
      {
        return;
      }
    }

    else
    {
LABEL_53:
      if (a3[186] <= *(this + 186))
      {
        return;
      }
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(this, a3);
    if (*(this + 186) != *(a1 + 186))
    {
      goto LABEL_93;
    }

    v35 = *this;
    if (*this)
    {
      v36 = 240 * v35;
      v37 = *(this + 1);
      while ((*(v37 + 105) & 1) == 0)
      {
        v37 += 240;
        v36 -= 240;
        if (!v36)
        {
          goto LABEL_93;
        }
      }
    }

    else
    {
      v37 = *(this + 1);
    }

    if (v37 == *(this + 1) + 240 * v35)
    {
      goto LABEL_93;
    }

    v38 = *a1;
    if (*a1)
    {
      v39 = 240 * v38;
      v40 = *(a1 + 1);
      while ((*(v40 + 105) & 1) == 0)
      {
        v40 += 240;
        v39 -= 240;
        if (!v39)
        {
          goto LABEL_93;
        }
      }
    }

    else
    {
      v40 = *(a1 + 1);
    }

    if (v40 != *(a1 + 1) + 240 * v38 && (v53 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(this)), v55 = v54, v56 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(a1)), (v55 & 1) != 0) && (v57 & 1) != 0)
    {
      if (v53 <= v56)
      {
        return;
      }
    }

    else
    {
LABEL_93:
      if (*(this + 186) <= *(a1 + 186))
      {
        return;
      }
    }

    v49 = a1;
    v58 = this;
    goto LABEL_104;
  }

  if (a3[186] != v6)
  {
    goto LABEL_78;
  }

LABEL_34:
  v24 = *a3;
  if (*a3)
  {
    v25 = 240 * v24;
    v26 = *(a3 + 1);
    while ((*(v26 + 105) & 1) == 0)
    {
      v26 += 240;
      v25 -= 240;
      if (!v25)
      {
        goto LABEL_78;
      }
    }
  }

  else
  {
    v26 = *(a3 + 1);
  }

  if (v26 == *(a3 + 1) + 240 * v24)
  {
    goto LABEL_78;
  }

  v27 = *this;
  if (*this)
  {
    v28 = 240 * v27;
    v29 = *(this + 1);
    while ((*(v29 + 105) & 1) == 0)
    {
      v29 += 240;
      v28 -= 240;
      if (!v28)
      {
        goto LABEL_78;
      }
    }
  }

  else
  {
    v29 = *(this + 1);
  }

  if (v29 != *(this + 1) + 240 * v27 && (v41 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(a3)), v43 = v42, v44 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(this)), (v43 & 1) != 0) && (v45 & 1) != 0)
  {
    if (v41 <= v44)
    {
      goto LABEL_72;
    }
  }

  else
  {
LABEL_78:
    if (a3[186] <= *(this + 186))
    {
LABEL_72:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a1, this);
      if (a3[186] != *(this + 186))
      {
        goto LABEL_101;
      }

      v46 = *a3;
      if (*a3)
      {
        v47 = 240 * v46;
        v48 = *(a3 + 1);
        while ((*(v48 + 105) & 1) == 0)
        {
          v48 += 240;
          v47 -= 240;
          if (!v47)
          {
            goto LABEL_101;
          }
        }
      }

      else
      {
        v48 = *(a3 + 1);
      }

      if (v48 == *(a3 + 1) + 240 * v46)
      {
        goto LABEL_101;
      }

      v50 = *this;
      if (*this)
      {
        v51 = 240 * v50;
        v52 = *(this + 1);
        while ((*(v52 + 105) & 1) == 0)
        {
          v52 += 240;
          v51 -= 240;
          if (!v51)
          {
            goto LABEL_101;
          }
        }
      }

      else
      {
        v52 = *(this + 1);
      }

      if (v52 != *(this + 1) + 240 * v50 && (v59 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(a3)), v61 = v60, v62 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(this)), (v61 & 1) != 0) && (v63 & 1) != 0)
      {
        if (v59 <= v62)
        {
          return;
        }
      }

      else
      {
LABEL_101:
        if (a3[186] <= *(this + 186))
        {
          return;
        }
      }

      v49 = this;
      goto LABEL_103;
    }
  }

  v49 = a1;
LABEL_103:
  v58 = a3;
LABEL_104:

  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v49, v58);
}

void std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,KB::CandidateCollection::sort(void)::$_0 &,KB::Candidate *,0>(KB::Candidate *a1, KB::Candidate *a2, float *a3, float *a4)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,KB::CandidateCollection::sort(void)::$_0 &,KB::Candidate *,0>(a1, a2, a3);
  if (a4[186] != a3[186])
  {
    goto LABEL_20;
  }

  v8 = *a4;
  if (*a4)
  {
    v9 = 240 * v8;
    v10 = *(a4 + 1);
    while ((*(v10 + 105) & 1) == 0)
    {
      v10 += 240;
      v9 -= 240;
      if (!v9)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
    v10 = *(a4 + 1);
  }

  if (v10 == *(a4 + 1) + 240 * v8)
  {
    goto LABEL_20;
  }

  v11 = *a3;
  if (*a3)
  {
    v12 = 240 * v11;
    v13 = *(a3 + 1);
    while ((*(v13 + 105) & 1) == 0)
    {
      v13 += 240;
      v12 -= 240;
      if (!v12)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
    v13 = *(a3 + 1);
  }

  if (v13 != *(a3 + 1) + 240 * v11 && (v14 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(a4)), v16 = v15, v17 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(a3)), (v16 & 1) != 0) && (v18 & 1) != 0)
  {
    if (v14 <= v17)
    {
      return;
    }
  }

  else
  {
LABEL_20:
    if (a4[186] <= a3[186])
    {
      return;
    }
  }

  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a3, a4);
  if (a3[186] != *(a2 + 186))
  {
    goto LABEL_40;
  }

  v19 = *a3;
  if (*a3)
  {
    v20 = 240 * v19;
    v21 = *(a3 + 1);
    while ((*(v21 + 105) & 1) == 0)
    {
      v21 += 240;
      v20 -= 240;
      if (!v20)
      {
        goto LABEL_40;
      }
    }
  }

  else
  {
    v21 = *(a3 + 1);
  }

  if (v21 == *(a3 + 1) + 240 * v19)
  {
    goto LABEL_40;
  }

  v22 = *a2;
  if (*a2)
  {
    v23 = 240 * v22;
    v24 = *(a2 + 1);
    while ((*(v24 + 105) & 1) == 0)
    {
      v24 += 240;
      v23 -= 240;
      if (!v23)
      {
        goto LABEL_40;
      }
    }
  }

  else
  {
    v24 = *(a2 + 1);
  }

  if (v24 != *(a2 + 1) + 240 * v22 && (v25 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(a3)), v27 = v26, v28 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(a2)), (v27 & 1) != 0) && (v29 & 1) != 0)
  {
    if (v25 <= v28)
    {
      return;
    }
  }

  else
  {
LABEL_40:
    if (a3[186] <= *(a2 + 186))
    {
      return;
    }
  }

  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a2, a3);
  if (*(a2 + 186) != *(a1 + 186))
  {
    goto LABEL_60;
  }

  v30 = *a2;
  if (*a2)
  {
    v31 = 240 * v30;
    v32 = *(a2 + 1);
    while ((*(v32 + 105) & 1) == 0)
    {
      v32 += 240;
      v31 -= 240;
      if (!v31)
      {
        goto LABEL_60;
      }
    }
  }

  else
  {
    v32 = *(a2 + 1);
  }

  if (v32 == *(a2 + 1) + 240 * v30)
  {
    goto LABEL_60;
  }

  v33 = *a1;
  if (*a1)
  {
    v34 = 240 * v33;
    v35 = *(a1 + 1);
    while ((*(v35 + 105) & 1) == 0)
    {
      v35 += 240;
      v34 -= 240;
      if (!v34)
      {
        goto LABEL_60;
      }
    }
  }

  else
  {
    v35 = *(a1 + 1);
  }

  if (v35 != *(a1 + 1) + 240 * v33 && (v36 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(a2)), v38 = v37, v39 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(a1)), (v38 & 1) != 0) && (v40 & 1) != 0)
  {
    if (v36 <= v39)
    {
      return;
    }
  }

  else
  {
LABEL_60:
    if (*(a2 + 186) <= *(a1 + 186))
    {
      return;
    }
  }

  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a1, a2);
}

void std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,KB::CandidateCollection::sort(void)::$_0 &,KB::Candidate *,0>(KB::Candidate *a1, KB::Candidate *a2, float *a3, float *a4, float *a5)
{
  std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,KB::CandidateCollection::sort(void)::$_0 &,KB::Candidate *,0>(a1, a2, a3, a4);
  if (a5[186] != a4[186])
  {
    goto LABEL_20;
  }

  v10 = *a5;
  if (*a5)
  {
    v11 = 240 * v10;
    v12 = *(a5 + 1);
    while ((*(v12 + 105) & 1) == 0)
    {
      v12 += 240;
      v11 -= 240;
      if (!v11)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
    v12 = *(a5 + 1);
  }

  if (v12 == *(a5 + 1) + 240 * v10)
  {
    goto LABEL_20;
  }

  v13 = *a4;
  if (*a4)
  {
    v14 = 240 * v13;
    v15 = *(a4 + 1);
    while ((*(v15 + 105) & 1) == 0)
    {
      v15 += 240;
      v14 -= 240;
      if (!v14)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
    v15 = *(a4 + 1);
  }

  if (v15 != *(a4 + 1) + 240 * v13 && (v16 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(a5)), v18 = v17, v19 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(a4)), (v18 & 1) != 0) && (v20 & 1) != 0)
  {
    if (v16 <= v19)
    {
      return;
    }
  }

  else
  {
LABEL_20:
    if (a5[186] <= a4[186])
    {
      return;
    }
  }

  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a4, a5);
  if (a4[186] != a3[186])
  {
    goto LABEL_40;
  }

  v21 = *a4;
  if (*a4)
  {
    v22 = 240 * v21;
    v23 = *(a4 + 1);
    while ((*(v23 + 105) & 1) == 0)
    {
      v23 += 240;
      v22 -= 240;
      if (!v22)
      {
        goto LABEL_40;
      }
    }
  }

  else
  {
    v23 = *(a4 + 1);
  }

  if (v23 == *(a4 + 1) + 240 * v21)
  {
    goto LABEL_40;
  }

  v24 = *a3;
  if (*a3)
  {
    v25 = 240 * v24;
    v26 = *(a3 + 1);
    while ((*(v26 + 105) & 1) == 0)
    {
      v26 += 240;
      v25 -= 240;
      if (!v25)
      {
        goto LABEL_40;
      }
    }
  }

  else
  {
    v26 = *(a3 + 1);
  }

  if (v26 != *(a3 + 1) + 240 * v24 && (v27 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(a4)), v29 = v28, v30 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(a3)), (v29 & 1) != 0) && (v31 & 1) != 0)
  {
    if (v27 <= v30)
    {
      return;
    }
  }

  else
  {
LABEL_40:
    if (a4[186] <= a3[186])
    {
      return;
    }
  }

  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a3, a4);
  if (a3[186] != *(a2 + 186))
  {
    goto LABEL_60;
  }

  v32 = *a3;
  if (*a3)
  {
    v33 = 240 * v32;
    v34 = *(a3 + 1);
    while ((*(v34 + 105) & 1) == 0)
    {
      v34 += 240;
      v33 -= 240;
      if (!v33)
      {
        goto LABEL_60;
      }
    }
  }

  else
  {
    v34 = *(a3 + 1);
  }

  if (v34 == *(a3 + 1) + 240 * v32)
  {
    goto LABEL_60;
  }

  v35 = *a2;
  if (*a2)
  {
    v36 = 240 * v35;
    v37 = *(a2 + 1);
    while ((*(v37 + 105) & 1) == 0)
    {
      v37 += 240;
      v36 -= 240;
      if (!v36)
      {
        goto LABEL_60;
      }
    }
  }

  else
  {
    v37 = *(a2 + 1);
  }

  if (v37 != *(a2 + 1) + 240 * v35 && (v38 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(a3)), v40 = v39, v41 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(a2)), (v40 & 1) != 0) && (v42 & 1) != 0)
  {
    if (v38 <= v41)
    {
      return;
    }
  }

  else
  {
LABEL_60:
    if (a3[186] <= *(a2 + 186))
    {
      return;
    }
  }

  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a2, a3);
  if (*(a2 + 186) != *(a1 + 186))
  {
    goto LABEL_80;
  }

  v43 = *a2;
  if (*a2)
  {
    v44 = 240 * v43;
    v45 = *(a2 + 1);
    while ((*(v45 + 105) & 1) == 0)
    {
      v45 += 240;
      v44 -= 240;
      if (!v44)
      {
        goto LABEL_80;
      }
    }
  }

  else
  {
    v45 = *(a2 + 1);
  }

  if (v45 == *(a2 + 1) + 240 * v43)
  {
    goto LABEL_80;
  }

  v46 = *a1;
  if (*a1)
  {
    v47 = 240 * v46;
    v48 = *(a1 + 1);
    while ((*(v48 + 105) & 1) == 0)
    {
      v48 += 240;
      v47 -= 240;
      if (!v47)
      {
        goto LABEL_80;
      }
    }
  }

  else
  {
    v48 = *(a1 + 1);
  }

  if (v48 != *(a1 + 1) + 240 * v46 && (v49 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(a2)), v51 = v50, v52 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(a1)), (v51 & 1) != 0) && (v53 & 1) != 0)
  {
    if (v49 <= v52)
    {
      return;
    }
  }

  else
  {
LABEL_80:
    if (*(a2 + 186) <= *(a1 + 186))
    {
      return;
    }
  }

  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a1, a2);
}

void std::__partial_sort[abi:nn200100]<std::_ClassicAlgPolicy,KB::CandidateCollection::sort(void)::$_0 &,KB::Candidate *,KB::Candidate *>(KB::Candidate *a1, KB::Candidate *this, uint64_t *a3)
{
  v72 = *MEMORY[0x277D85DE8];
  if (a1 != this)
  {
    v4 = this;
    v5 = this - a1;
    v6 = 0x1CAC083126E978D5 * ((this - a1) >> 3);
    if (this - a1 >= 1001)
    {
      v7 = (v6 - 2) >> 1;
      v8 = v7 + 1;
      v9 = a1 + 1000 * v7;
      do
      {
        std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,KB::CandidateCollection::sort(void)::$_0 &,KB::Candidate *>(a1, v6, v9);
        v9 -= 1000;
        --v8;
      }

      while (v8);
    }

    if (v4 != a3)
    {
      v10 = v4;
      while (1)
      {
        if (*(v10 + 186) == *(a1 + 186))
        {
          v11 = *v10;
          if (*v10)
          {
            v12 = 240 * v11;
            v13 = v10[1];
            while ((*(v13 + 105) & 1) == 0)
            {
              v13 += 240;
              v12 -= 240;
              if (!v12)
              {
                goto LABEL_26;
              }
            }
          }

          else
          {
            v13 = v10[1];
          }

          if (v13 != v10[1] + 240 * v11)
          {
            v14 = *a1;
            if (*a1)
            {
              v15 = 240 * v14;
              v16 = *(a1 + 1);
              while ((*(v16 + 105) & 1) == 0)
              {
                v16 += 240;
                v15 -= 240;
                if (!v15)
                {
                  goto LABEL_26;
                }
              }
            }

            else
            {
              v16 = *(a1 + 1);
            }

            if (v16 != *(a1 + 1) + 240 * v14)
            {
              v17 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(v10));
              v19 = v18;
              v20 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(a1));
              if (v19 & 1) != 0 && (v21)
              {
                break;
              }
            }
          }
        }

LABEL_26:
        if (*(v10 + 186) > *(a1 + 186))
        {
          goto LABEL_27;
        }

LABEL_28:
        v10 += 125;
        if (v10 == a3)
        {
          goto LABEL_29;
        }
      }

      if (v17 <= v20)
      {
        goto LABEL_28;
      }

LABEL_27:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v10, a1);
      std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,KB::CandidateCollection::sort(void)::$_0 &,KB::Candidate *>(a1, v6, a1);
      goto LABEL_28;
    }

LABEL_29:
    if (v5 >= 1001)
    {
      v22 = 0x1CAC083126E978D5 * (v5 >> 3);
      do
      {
        v66 = v4;
        v23 = a1;
        KB::Candidate::Candidate(v68, a1);
        v24 = 0;
        do
        {
          v25 = v23;
          v26 = v23 + 1000 * v24;
          v23 = v26 + 1000;
          v27 = 2 * v24;
          v24 = (2 * v24) | 1;
          v28 = v27 + 2;
          if (v27 + 2 >= v22)
          {
            goto LABEL_54;
          }

          if (*(v26 + 1744) != *(v26 + 2744))
          {
            goto LABEL_52;
          }

          v29 = *(v26 + 1000);
          if (v29)
          {
            v30 = 240 * v29;
            v31 = *(v26 + 1008);
            while ((*(v31 + 105) & 1) == 0)
            {
              v31 += 240;
              v30 -= 240;
              if (!v30)
              {
                goto LABEL_52;
              }
            }
          }

          else
          {
            v31 = *(v26 + 1008);
          }

          if (v31 == *(v26 + 1008) + 240 * v29)
          {
            goto LABEL_52;
          }

          v32 = *(v26 + 2000);
          if (v32)
          {
            v33 = 240 * v32;
            v34 = *(v26 + 2008);
            while ((*(v34 + 105) & 1) == 0)
            {
              v34 += 240;
              v33 -= 240;
              if (!v33)
              {
                goto LABEL_52;
              }
            }
          }

          else
          {
            v34 = *(v26 + 2008);
          }

          if (v34 == *(v26 + 2008) + 240 * v32 || (v35 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp((v26 + 1000))), v37 = v36, v38 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp((v26 + 2000))), (v37 & 1) == 0) || (v39 & 1) == 0)
          {
LABEL_52:
            if (*(v26 + 1744) <= *(v26 + 2744))
            {
              goto LABEL_54;
            }

LABEL_53:
            v23 = v26 + 2000;
            v24 = v28;
            goto LABEL_54;
          }

          if (v35 > v38)
          {
            goto LABEL_53;
          }

LABEL_54:
          KB::Candidate::operator=(v25, v23);
        }

        while (v24 <= ((v22 - 2) >> 1));
        v4 = v66 - 125;
        if (v23 == v66 - 125)
        {
          KB::Candidate::operator=(v23, v68);
          goto LABEL_102;
        }

        KB::Candidate::operator=(v23, v66 - 125);
        KB::Candidate::operator=(v4, v68);
        v40 = v23 - a1 + 1000;
        if (v40 < 1001)
        {
          goto LABEL_102;
        }

        v41 = (0x1CAC083126E978D5 * (v40 >> 3) - 2) >> 1;
        v42 = (a1 + 1000 * v41);
        if (*(v42 + 186) != *(v23 + 744))
        {
          goto LABEL_77;
        }

        v43 = *v42;
        if (*v42)
        {
          v44 = 240 * v43;
          v45 = v42[1];
          while ((*(v45 + 105) & 1) == 0)
          {
            v45 += 240;
            v44 -= 240;
            if (!v44)
            {
              goto LABEL_77;
            }
          }
        }

        else
        {
          v45 = v42[1];
        }

        if (v45 == v42[1] + 240 * v43)
        {
          goto LABEL_77;
        }

        v46 = *v23;
        if (*v23)
        {
          v47 = 240 * v46;
          v48 = *(v23 + 8);
          while ((*(v48 + 105) & 1) == 0)
          {
            v48 += 240;
            v47 -= 240;
            if (!v47)
            {
              goto LABEL_77;
            }
          }
        }

        else
        {
          v48 = *(v23 + 8);
        }

        if (v48 != *(v23 + 8) + 240 * v46 && (v49 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp((a1 + 1000 * v41))), v51 = v50, v52 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(v23)), (v51 & 1) != 0) && (v53 & 1) != 0)
        {
          if (v49 <= v52)
          {
            goto LABEL_102;
          }
        }

        else
        {
LABEL_77:
          if (*(v42 + 186) <= *(v23 + 744))
          {
            goto LABEL_102;
          }
        }

        KB::Candidate::Candidate(&v69, v23);
        do
        {
          v54 = v42;
          KB::Candidate::operator=(v23, v42);
          if (!v41)
          {
            break;
          }

          v41 = (v41 - 1) >> 1;
          v42 = (a1 + 1000 * v41);
          if (*(v42 + 186) != v71)
          {
            goto LABEL_98;
          }

          v55 = *v42;
          if (*v42)
          {
            v56 = 240 * v55;
            v57 = v42[1];
            while ((*(v57 + 105) & 1) == 0)
            {
              v57 += 240;
              v56 -= 240;
              if (!v56)
              {
                goto LABEL_98;
              }
            }
          }

          else
          {
            v57 = v42[1];
          }

          if (v57 == v42[1] + 240 * v55)
          {
            goto LABEL_98;
          }

          if (v69)
          {
            v58 = 240 * v69;
            v59 = v70;
            while ((*(v59 + 105) & 1) == 0)
            {
              v59 += 240;
              v58 -= 240;
              if (!v58)
              {
                goto LABEL_98;
              }
            }
          }

          else
          {
            v59 = v70;
          }

          if (v59 != v70 + 240 * v69 && (v60 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp((a1 + 1000 * v41))), v62 = v61, v63 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(&v69)), (v62 & 1) != 0) && (v64 & 1) != 0)
          {
            v65 = v60 <= v63;
          }

          else
          {
LABEL_98:
            v65 = *(v42 + 186) <= v71;
          }

          v23 = v54;
        }

        while (!v65);
        KB::Candidate::operator=(v54, &v69);
        KB::Candidate::~Candidate(&v69);
LABEL_102:
        KB::Candidate::~Candidate(v68);
        v65 = v22-- <= 2;
      }

      while (!v65);
    }
  }
}

uint64_t std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,KB::CandidateCollection::sort(void)::$_0 &,KB::Candidate *>(float *a1, char *a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = 0x1CAC083126E978D5 * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,KB::CandidateCollection::sort(void)::$_0 &,KB::Candidate *,0>(a1, (a1 + 250), a2 - 250);
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,KB::CandidateCollection::sort(void)::$_0 &,KB::Candidate *,0>(a1, (a1 + 250), a1 + 500, a2 - 250);
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,KB::CandidateCollection::sort(void)::$_0 &,KB::Candidate *,0>(a1, (a1 + 250), a1 + 500, a1 + 750, a2 - 250);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = (a2 - 1000);
      if (*(a2 - 64) == a1[186])
      {
        v6 = *v5;
        if (*v5)
        {
          v7 = 240 * v6;
          v8 = *(a2 - 124);
          while ((*(v8 + 105) & 1) == 0)
          {
            v8 += 240;
            v7 -= 240;
            if (!v7)
            {
              goto LABEL_80;
            }
          }
        }

        else
        {
          v8 = *(a2 - 124);
        }

        if (v8 != *(a2 - 124) + 240 * v6)
        {
          v35 = *a1;
          if (*a1)
          {
            v36 = 240 * v35;
            v37 = *(a1 + 1);
            while ((*(v37 + 105) & 1) == 0)
            {
              v37 += 240;
              v36 -= 240;
              if (!v36)
              {
                goto LABEL_80;
              }
            }
          }

          else
          {
            v37 = *(a1 + 1);
          }

          if (v37 != *(a1 + 1) + 240 * v35)
          {
            v39 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp((a2 - 1000)));
            v41 = v40;
            v42 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(a1));
            if (v41 & 1) != 0 && (v43)
            {
              if (v39 <= v42)
              {
                return 1;
              }

              goto LABEL_81;
            }
          }
        }
      }

LABEL_80:
      if (*(a2 - 64) > a1[186])
      {
LABEL_81:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a1, a2 - 125);
      }

      return 1;
    }
  }

  v9 = a1 + 500;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,KB::CandidateCollection::sort(void)::$_0 &,KB::Candidate *,0>(a1, (a1 + 250), a1 + 500);
  v10 = a1 + 750;
  if (a1 + 750 == a2)
  {
    return 1;
  }

  v11 = 0;
  while (1)
  {
    if (v10[186] == v9[186])
    {
      v12 = *v10;
      if (*v10)
      {
        v13 = 240 * v12;
        v14 = *(v10 + 1);
        while ((*(v14 + 105) & 1) == 0)
        {
          v14 += 240;
          v13 -= 240;
          if (!v13)
          {
            goto LABEL_36;
          }
        }
      }

      else
      {
        v14 = *(v10 + 1);
      }

      if (v14 != *(v10 + 1) + 240 * v12)
      {
        v15 = *v9;
        if (*v9)
        {
          v16 = 240 * v15;
          v17 = *(v9 + 1);
          while ((*(v17 + 105) & 1) == 0)
          {
            v17 += 240;
            v16 -= 240;
            if (!v16)
            {
              goto LABEL_36;
            }
          }
        }

        else
        {
          v17 = *(v9 + 1);
        }

        if (v17 != *(v9 + 1) + 240 * v15)
        {
          v18 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(v10));
          v20 = v19;
          v21 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(v9));
          if (v20 & 1) != 0 && (v22)
          {
            break;
          }
        }
      }
    }

LABEL_36:
    if (v10[186] > v9[186])
    {
      goto LABEL_37;
    }

LABEL_63:
    v9 = v10;
    v10 += 250;
    if (v10 == a2)
    {
      return 1;
    }
  }

  if (v18 <= v21)
  {
    goto LABEL_63;
  }

LABEL_37:
  KB::Candidate::Candidate(&v45, v10);
  v23 = v10;
  while (1)
  {
    v24 = v23;
    v23 = v9;
    KB::Candidate::operator=(v24, v9);
    if (v9 == a1)
    {
      break;
    }

    v9 -= 250;
    if (v47 != *(v23 - 64))
    {
      goto LABEL_58;
    }

    if (v45)
    {
      v25 = 240 * v45;
      v26 = v46;
      while ((*(v26 + 105) & 1) == 0)
      {
        v26 += 240;
        v25 -= 240;
        if (!v25)
        {
          goto LABEL_58;
        }
      }
    }

    else
    {
      v26 = v46;
    }

    if (v26 == v46 + 240 * v45)
    {
      goto LABEL_58;
    }

    v27 = *v9;
    if (*v9)
    {
      v28 = 240 * v27;
      v29 = *(v23 - 124);
      while ((*(v29 + 105) & 1) == 0)
      {
        v29 += 240;
        v28 -= 240;
        if (!v28)
        {
          goto LABEL_58;
        }
      }
    }

    else
    {
      v29 = *(v23 - 124);
    }

    if (v29 != *(v23 - 124) + 240 * v27 && (v30 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(&v45)), v32 = v31, v33 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp((v23 - 125))), (v32 & 1) != 0) && (v34 & 1) != 0)
    {
      if (v30 <= v33)
      {
        goto LABEL_61;
      }
    }

    else
    {
LABEL_58:
      if (v47 <= *(v23 - 64))
      {
        goto LABEL_61;
      }
    }
  }

  v23 = a1;
LABEL_61:
  KB::Candidate::operator=(v23, &v45);
  if (++v11 != 8)
  {
    KB::Candidate::~Candidate(&v45);
    goto LABEL_63;
  }

  v38 = v10 + 250 == a2;
  KB::Candidate::~Candidate(&v45);
  return v38;
}

void std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,KB::CandidateCollection::sort(void)::$_0 &,KB::Candidate *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = *MEMORY[0x277D85DE8];
  v3 = a2 - 2;
  if (a2 < 2)
  {
    return;
  }

  v4 = a3;
  v6 = v3 >> 1;
  if ((v3 >> 1) < 0x1CAC083126E978D5 * ((a3 - a1) >> 3))
  {
    return;
  }

  v8 = (0x395810624DD2F1AALL * ((a3 - a1) >> 3)) | 1;
  v9 = (a1 + 1000 * v8);
  v10 = 0x395810624DD2F1AALL * ((a3 - a1) >> 3) + 2;
  if (v10 < a2)
  {
    if (v9[186] != v9[436])
    {
      goto LABEL_23;
    }

    v11 = *v9;
    if (*v9)
    {
      v12 = 240 * v11;
      v13 = *(v9 + 1);
      while ((*(v13 + 105) & 1) == 0)
      {
        v13 += 240;
        v12 -= 240;
        if (!v12)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      v13 = *(v9 + 1);
    }

    if (v13 == *(v9 + 1) + 240 * v11)
    {
      goto LABEL_23;
    }

    v14 = *(v9 + 125);
    if (v14)
    {
      v15 = 240 * v14;
      v16 = *(v9 + 126);
      while ((*(v16 + 105) & 1) == 0)
      {
        v16 += 240;
        v15 -= 240;
        if (!v15)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      v16 = *(v9 + 126);
    }

    if (v16 != *(v9 + 126) + 240 * v14 && (v17 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp((a1 + 1000 * v8))), v19 = v18, v20 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp((v9 + 250))), (v19 & 1) != 0) && (v21 & 1) != 0)
    {
      if (v17 <= v20)
      {
        goto LABEL_25;
      }
    }

    else
    {
LABEL_23:
      if (v9[186] <= v9[436])
      {
        goto LABEL_25;
      }
    }

    v9 += 250;
    v8 = v10;
  }

  if (v9[186] != *(v4 + 744))
  {
    goto LABEL_44;
  }

LABEL_25:
  v22 = *v9;
  if (*v9)
  {
    v23 = 240 * v22;
    v24 = *(v9 + 1);
    while ((*(v24 + 105) & 1) == 0)
    {
      v24 += 240;
      v23 -= 240;
      if (!v23)
      {
        goto LABEL_44;
      }
    }
  }

  else
  {
    v24 = *(v9 + 1);
  }

  if (v24 == *(v9 + 1) + 240 * v22)
  {
    goto LABEL_44;
  }

  v25 = *v4;
  if (*v4)
  {
    v26 = 240 * v25;
    v27 = *(v4 + 8);
    while ((*(v27 + 105) & 1) == 0)
    {
      v27 += 240;
      v26 -= 240;
      if (!v26)
      {
        goto LABEL_44;
      }
    }
  }

  else
  {
    v27 = *(v4 + 8);
  }

  if (v27 != *(v4 + 8) + 240 * v25 && (v28 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(v9)), v30 = v29, v31 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(v4)), (v30 & 1) != 0) && (v32 & 1) != 0)
  {
    if (v28 > v31)
    {
      return;
    }
  }

  else
  {
LABEL_44:
    if (v9[186] > *(v4 + 744))
    {
      return;
    }
  }

  KB::Candidate::Candidate(&v59, v4);
  do
  {
    v33 = v9;
    KB::Candidate::operator=(v4, v9);
    if (v6 < v8)
    {
      break;
    }

    v34 = 2 * v8;
    v8 = (2 * v8) | 1;
    v9 = (a1 + 1000 * v8);
    v35 = v34 + 2;
    if (v34 + 2 < a2)
    {
      if (v9[186] != v9[436])
      {
        goto LABEL_66;
      }

      v36 = *v9;
      if (*v9)
      {
        v37 = 240 * v36;
        v38 = *(v9 + 1);
        while ((*(v38 + 105) & 1) == 0)
        {
          v38 += 240;
          v37 -= 240;
          if (!v37)
          {
            goto LABEL_66;
          }
        }
      }

      else
      {
        v38 = *(v9 + 1);
      }

      if (v38 == *(v9 + 1) + 240 * v36)
      {
        goto LABEL_66;
      }

      v39 = *(v9 + 125);
      if (v39)
      {
        v40 = 240 * v39;
        v41 = *(v9 + 126);
        while ((*(v41 + 105) & 1) == 0)
        {
          v41 += 240;
          v40 -= 240;
          if (!v40)
          {
            goto LABEL_66;
          }
        }
      }

      else
      {
        v41 = *(v9 + 126);
      }

      if (v41 != *(v9 + 126) + 240 * v39 && (v42 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp((a1 + 1000 * v8))), v44 = v43, v45 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp((v9 + 250))), (v44 & 1) != 0) && (v46 & 1) != 0)
      {
        v47 = v42 <= v45;
      }

      else
      {
LABEL_66:
        v47 = v9[186] <= v9[436];
      }

      if (!v47)
      {
        v9 += 250;
        v8 = v35;
      }
    }

    if (v9[186] != v61)
    {
      goto LABEL_87;
    }

    v48 = *v9;
    if (*v9)
    {
      v49 = 240 * v48;
      v50 = *(v9 + 1);
      while ((*(v50 + 105) & 1) == 0)
      {
        v50 += 240;
        v49 -= 240;
        if (!v49)
        {
          goto LABEL_87;
        }
      }
    }

    else
    {
      v50 = *(v9 + 1);
    }

    if (v50 == *(v9 + 1) + 240 * v48)
    {
      goto LABEL_87;
    }

    if (v59)
    {
      v51 = 240 * v59;
      v52 = v60;
      while ((*(v52 + 105) & 1) == 0)
      {
        v52 += 240;
        v51 -= 240;
        if (!v51)
        {
          goto LABEL_87;
        }
      }
    }

    else
    {
      v52 = v60;
    }

    if (v52 != v60 + 240 * v59 && (v53 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(v9)), v55 = v54, v56 = COERCE_DOUBLE(KB::Candidate::named_entity_timestamp(&v59)), (v55 & 1) != 0) && (v57 & 1) != 0)
    {
      v58 = v53 <= v56;
    }

    else
    {
LABEL_87:
      v58 = v9[186] <= v61;
    }

    v4 = v33;
  }

  while (v58);
  KB::Candidate::operator=(v33, &v59);
  KB::Candidate::~Candidate(&v59);
}

float KB::CandidateCollection::sort_by_word_score(KB::CandidateCollection *this, float a2)
{
  v2 = *(this + 1);
  v3 = 126 - 2 * __clz(0x1CAC083126E978D5 * ((v2 - *this) >> 3));
  if (v2 == *this)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return std::__introsort<std::_ClassicAlgPolicy,KB::CandidateCollection::sort_by_word_score(void)::$_0 &,KB::Candidate *,false>(*this, v2, v4, 1, a2);
}

float std::__introsort<std::_ClassicAlgPolicy,KB::CandidateCollection::sort_by_word_score(void)::$_0 &,KB::Candidate *,false>(unint64_t a1, uint64_t *a2, uint64_t a3, char a4, float result)
{
  v77 = *MEMORY[0x277D85DE8];
LABEL_2:
  v73 = (a2 - 156);
  v74 = a2 - 125;
  v72 = (a2 - 281);
  v9 = a1;
  while (1)
  {
    a1 = v9;
    v10 = a2 - v9;
    v11 = 0x1CAC083126E978D5 * ((a2 - v9) >> 3);
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        result = *(a2 - 62);
        if (result <= *(v9 + 752))
        {
          return result;
        }

LABEL_111:
        v60 = v9;
LABEL_112:
        v61 = a2 - 125;
LABEL_113:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v60, v61);
        return result;
      }

      goto LABEL_10;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,KB::CandidateCollection::sort_by_word_score(void)::$_0 &,KB::Candidate *,0>(v9, v9 + 1000, v9 + 2000, v74);
      return result;
    }

    if (v11 == 5)
    {
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,KB::CandidateCollection::sort_by_word_score(void)::$_0 &,KB::Candidate *,0>(v9, v9 + 1000, v9 + 2000, v9 + 3000);
      result = *(a2 - 62);
      if (result <= *(v9 + 3752))
      {
        return result;
      }

      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>((v9 + 3000), v74);
      result = *(v9 + 3752);
      if (result <= *(v9 + 2752))
      {
        return result;
      }

      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>((v9 + 2000), (v9 + 3000));
      result = *(v9 + 2752);
      if (result <= *(v9 + 1752))
      {
        return result;
      }

      v57 = (v9 + 1000);
      v58 = (v9 + 2000);
      goto LABEL_131;
    }

LABEL_10:
    if (v10 <= 23999)
    {
      if (a4)
      {
        if (v9 != a2)
        {
          v62 = v9 + 1000;
          if ((v9 + 1000) != a2)
          {
            v63 = 0;
            v64 = v9;
            do
            {
              result = *(v64 + 1752);
              v65 = *(v64 + 752);
              v64 = v62;
              if (result > v65)
              {
                KB::Candidate::Candidate(v75, v62);
                v66 = v63;
                while (1)
                {
                  KB::Candidate::operator=((v9 + v66 + 1000), (v9 + v66));
                  if (!v66)
                  {
                    break;
                  }

                  v67 = *(v9 + v66 - 248);
                  v66 -= 1000;
                  if (v76 <= v67)
                  {
                    v68 = (v9 + v66 + 1000);
                    goto LABEL_125;
                  }
                }

                v68 = v9;
LABEL_125:
                KB::Candidate::operator=(v68, v75);
                KB::Candidate::~Candidate(v75);
              }

              v62 = v64 + 1000;
              v63 += 1000;
            }

            while ((v64 + 1000) != a2);
          }
        }
      }

      else if (v9 != a2)
      {
        v69 = (v9 + 1000);
        while (v69 != a2)
        {
          v70 = v69;
          result = *(a1 + 1752);
          if (result > *(a1 + 752))
          {
            KB::Candidate::Candidate(v75, v69);
            do
            {
              v71 = a1;
              KB::Candidate::operator=((a1 + 1000), a1);
              a1 -= 1000;
            }

            while (v76 > *(v71 - 62));
            KB::Candidate::operator=(v71, v75);
            KB::Candidate::~Candidate(v75);
          }

          v69 = (v70 + 1000);
          a1 = v70;
        }
      }

      return result;
    }

    if (!a3)
    {
      std::__partial_sort[abi:nn200100]<std::_ClassicAlgPolicy,KB::CandidateCollection::sort_by_word_score(void)::$_0 &,KB::Candidate *,KB::Candidate *>(v9, a2, a2);
      return result;
    }

    v12 = v11 >> 1;
    v13 = v9 + 1000 * (v11 >> 1);
    v14 = *(a2 - 62);
    if (v10 >= 0x1F401)
    {
      v15 = *(v13 + 752);
      if (v15 <= *(a1 + 752))
      {
        if (v14 > v15)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v13, v74);
          if (*(v13 + 752) > *(a1 + 752))
          {
            v16 = a1;
            v17 = v13;
            goto LABEL_26;
          }
        }
      }

      else
      {
        v16 = a1;
        if (v14 > v15)
        {
          goto LABEL_17;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a1, v13);
        if (*(a2 - 62) > *(v13 + 752))
        {
          v16 = v13;
LABEL_17:
          v17 = a2 - 125;
LABEL_26:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v16, v17);
        }
      }

      v21 = a1 + 1000 * v12;
      v22 = v21 - 1000;
      v23 = *(v21 - 248);
      v24 = *v73;
      if (v23 <= *(a1 + 1752))
      {
        if (v24 > v23)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v22, a2 - 250);
          if (*(v22 + 752) > *(a1 + 1752))
          {
            v25 = (a1 + 1000);
            v26 = v22;
            goto LABEL_39;
          }
        }
      }

      else
      {
        v25 = (a1 + 1000);
        if (v24 > v23)
        {
          goto LABEL_31;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v25, v22);
        if (*v73 > *(v22 + 752))
        {
          v25 = v22;
LABEL_31:
          v26 = a2 - 250;
LABEL_39:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v25, v26);
        }
      }

      v27 = a1 + 1000 * v12;
      v28 = v27 + 1000;
      v29 = *(v27 + 1752);
      v30 = *v72;
      if (v29 <= *(a1 + 2752))
      {
        if (v30 > v29)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v28, a2 - 375);
          if (*(v28 + 752) > *(a1 + 2752))
          {
            v31 = (a1 + 2000);
            v32 = v28;
            goto LABEL_48;
          }
        }
      }

      else
      {
        v31 = (a1 + 2000);
        if (v30 > v29)
        {
          goto LABEL_44;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v31, v28);
        if (*v72 > *(v28 + 752))
        {
          v31 = v28;
LABEL_44:
          v32 = a2 - 375;
LABEL_48:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v31, v32);
        }
      }

      v33 = *(v13 + 752);
      v34 = *(v28 + 752);
      if (v33 <= *(v22 + 752))
      {
        if (v34 > v33)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v13, v28);
          if (*(v13 + 752) > *(v22 + 752))
          {
            v35 = v22;
            v36 = v13;
            goto LABEL_57;
          }
        }
      }

      else
      {
        v35 = v22;
        if (v34 > v33)
        {
          goto LABEL_53;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v22, v13);
        if (*(v28 + 752) > *(v13 + 752))
        {
          v35 = v13;
LABEL_53:
          v36 = v28;
LABEL_57:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v35, v36);
        }
      }

      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a1, v13);
      goto LABEL_59;
    }

    v18 = *(a1 + 752);
    if (v18 <= *(v13 + 752))
    {
      if (v14 <= v18)
      {
        goto LABEL_59;
      }

      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a1, v74);
      if (*(a1 + 752) <= *(v13 + 752))
      {
        goto LABEL_59;
      }

      v19 = v13;
      v20 = a1;
    }

    else
    {
      v19 = v13;
      if (v14 <= v18)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v13, a1);
        if (*(a2 - 62) <= *(a1 + 752))
        {
          goto LABEL_59;
        }

        v19 = a1;
      }

      v20 = a2 - 125;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v19, v20);
LABEL_59:
    --a3;
    if ((a4 & 1) != 0 || *(a1 - 248) > *(a1 + 752))
    {
      KB::Candidate::Candidate(v75, a1);
      v37 = a1;
      do
      {
        v38 = v37;
        v37 += 1000;
      }

      while (*(v38 + 1752) > v76);
      v39 = a2;
      if (v38 == a1)
      {
        v42 = a2;
        while (v37 < v42)
        {
          v40 = v42 - 125;
          v43 = *(v42 - 62);
          v42 -= 125;
          if (v43 > v76)
          {
            goto LABEL_71;
          }
        }

        v40 = v42;
      }

      else
      {
        do
        {
          v40 = v39 - 125;
          v41 = *(v39 - 62);
          v39 -= 125;
        }

        while (v41 <= v76);
      }

LABEL_71:
      if (v37 < v40)
      {
        v44 = v40;
        v45 = v37;
        do
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v45, v44);
          do
          {
            v38 = v45;
            v45 += 125;
          }

          while (*(v38 + 1752) > v76);
          do
          {
            v46 = *(v44 - 62);
            v44 -= 125;
          }

          while (v46 <= v76);
        }

        while (v45 < v44);
      }

      if (v38 != a1)
      {
        KB::Candidate::operator=(a1, v38);
      }

      KB::Candidate::operator=(v38, v75);
      KB::Candidate::~Candidate(v75);
      if (v37 < v40)
      {
        goto LABEL_82;
      }

      v47 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,KB::CandidateCollection::sort_by_word_score(void)::$_0 &,KB::Candidate *>(a1, v38);
      v9 = v38 + 1000;
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,KB::CandidateCollection::sort_by_word_score(void)::$_0 &,KB::Candidate *>(v38 + 1000, a2))
      {
        a2 = v38;
        if (!v47)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v47)
      {
LABEL_82:
        result = std::__introsort<std::_ClassicAlgPolicy,KB::CandidateCollection::sort_by_word_score(void)::$_0 &,KB::Candidate *,false>(a1, v38, a3, a4 & 1, result);
        a4 = 0;
        v9 = v38 + 1000;
      }
    }

    else
    {
      KB::Candidate::Candidate(v75, a1);
      if (v76 <= *(a2 - 62))
      {
        v50 = a1 + 1000;
        do
        {
          v9 = v50;
          if (v50 >= a2)
          {
            break;
          }

          v51 = *(v50 + 752);
          v50 += 1000;
        }

        while (v76 <= v51);
      }

      else
      {
        v48 = a1;
        do
        {
          v9 = v48 + 1000;
          v49 = *(v48 + 1752);
          v48 += 1000;
        }

        while (v76 <= v49);
      }

      v52 = a2;
      if (v9 < a2)
      {
        v53 = a2;
        do
        {
          v52 = v53 - 125;
          v54 = *(v53 - 62);
          v53 -= 125;
        }

        while (v76 > v54);
      }

      while (v9 < v52)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v9, v52);
        do
        {
          v55 = *(v9 + 1752);
          v9 += 1000;
        }

        while (v76 <= v55);
        do
        {
          v56 = *(v52 - 62);
          v52 -= 125;
        }

        while (v76 > v56);
      }

      if (v9 - 1000 != a1)
      {
        KB::Candidate::operator=(a1, (v9 - 1000));
      }

      KB::Candidate::operator=((v9 - 1000), v75);
      KB::Candidate::~Candidate(v75);
      a4 = 0;
    }
  }

  result = *(v9 + 1752);
  v59 = *(a2 - 62);
  if (result > *(v9 + 752))
  {
    if (v59 > result)
    {
      goto LABEL_111;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v9, (v9 + 1000));
    result = *(a2 - 62);
    if (result > *(v9 + 1752))
    {
      v60 = (v9 + 1000);
      goto LABEL_112;
    }

    return result;
  }

  if (v59 <= result)
  {
    return result;
  }

  v57 = (v9 + 1000);
  v58 = a2 - 125;
LABEL_131:
  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v57, v58);
  result = *(v9 + 1752);
  if (result > *(v9 + 752))
  {
    v61 = (v9 + 1000);
    v60 = v9;
    goto LABEL_113;
  }

  return result;
}

void std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,KB::CandidateCollection::sort_by_word_score(void)::$_0 &,KB::Candidate *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = *(a2 + 752);
  v9 = *(a3 + 752);
  if (v8 <= *(a1 + 752))
  {
    if (v9 > v8)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a2, a3);
      if (*(a2 + 752) > *(v7 + 752))
      {
        a1 = v7;
        v10 = a2;
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (v9 > v8)
    {
LABEL_5:
      v10 = a3;
LABEL_9:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a1, v10);
      goto LABEL_10;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a1, a2);
    if (*(a3 + 752) > *(a2 + 752))
    {
      a1 = a2;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (*(a4 + 752) > *(a3 + 752))
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a3, a4);
    if (*(a3 + 752) > *(a2 + 752))
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a2, a3);
      if (*(a2 + 752) > *(v7 + 752))
      {

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v7, a2);
      }
    }
  }
}

void std::__partial_sort[abi:nn200100]<std::_ClassicAlgPolicy,KB::CandidateCollection::sort_by_word_score(void)::$_0 &,KB::Candidate *,KB::Candidate *>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  if (a1 != a2)
  {
    v4 = a2;
    v6 = a2 - a1;
    v7 = 0x1CAC083126E978D5 * ((a2 - a1) >> 3);
    if (a2 - a1 >= 1001)
    {
      v8 = (v7 - 2) >> 1;
      v9 = v8 + 1;
      v10 = a1 + 1000 * v8;
      do
      {
        std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,KB::CandidateCollection::sort_by_word_score(void)::$_0 &,KB::Candidate *>(a1, v7, v10);
        v10 -= 1000;
        --v9;
      }

      while (v9);
    }

    if (v4 != a3)
    {
      v11 = v4;
      do
      {
        if (*(v11 + 188) > *(a1 + 752))
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v11, a1);
          std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,KB::CandidateCollection::sort_by_word_score(void)::$_0 &,KB::Candidate *>(a1, v7, a1);
        }

        v11 += 125;
      }

      while (v11 != a3);
    }

    if (v6 >= 1001)
    {
      v12 = 0x1CAC083126E978D5 * (v6 >> 3);
      do
      {
        KB::Candidate::Candidate(v27, a1);
        v13 = 0;
        v14 = a1;
        do
        {
          v15 = &v14[125 * v13];
          v16 = (v15 + 125);
          if (2 * v13 + 2 >= v12)
          {
            v13 = (2 * v13) | 1;
          }

          else
          {
            v17 = *(v15 + 438);
            v18 = *(v15 + 688);
            v19 = (v15 + 250);
            if (v17 <= v18)
            {
              v13 = (2 * v13) | 1;
            }

            else
            {
              v16 = v19;
              v13 = 2 * v13 + 2;
            }
          }

          KB::Candidate::operator=(v14, v16);
          v14 = v16;
        }

        while (v13 <= ((v12 - 2) >> 1));
        v4 -= 125;
        if (v16 == v4)
        {
          KB::Candidate::operator=(v16, v27);
        }

        else
        {
          KB::Candidate::operator=(v16, v4);
          KB::Candidate::operator=(v4, v27);
          v20 = v16 - a1 + 1000;
          if (v20 >= 1001)
          {
            v21 = (0x1CAC083126E978D5 * (v20 >> 3) - 2) >> 1;
            v22 = a1 + 1000 * v21;
            if (*(v22 + 752) > *(v16 + 752))
            {
              KB::Candidate::Candidate(v28, v16);
              do
              {
                v23 = v22;
                KB::Candidate::operator=(v16, v22);
                if (!v21)
                {
                  break;
                }

                v21 = (v21 - 1) >> 1;
                v22 = a1 + 1000 * v21;
                v16 = v23;
              }

              while (*(v22 + 752) > v29);
              KB::Candidate::operator=(v23, v28);
              KB::Candidate::~Candidate(v28);
            }
          }
        }

        KB::Candidate::~Candidate(v27);
        v26 = __OFSUB__(v12, 2);
        v24 = v12 == 2;
        v25 = v12 - 2 < 0;
        --v12;
      }

      while (!(v25 ^ v26 | v24));
    }
  }
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,KB::CandidateCollection::sort_by_word_score(void)::$_0 &,KB::Candidate *>(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v24 = *MEMORY[0x277D85DE8];
  v4 = 0x1CAC083126E978D5 * ((a2 - a1) >> 3);
  if (v4 <= 2)
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      if (*(a2 - 248) > *(a1 + 752))
      {
        v5 = (a2 - 1000);
LABEL_24:
        a1 = v3;
LABEL_31:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a1, v5);
        return 1;
      }

      return 1;
    }

LABEL_16:
    v10 = a1 + 2000;
    v11 = *(a1 + 1752);
    v12 = *(a1 + 2752);
    if (v11 <= *(a1 + 752))
    {
      if (v12 <= v11 || (std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>((a1 + 1000), (a1 + 2000)), *(v3 + 1752) <= *(v3 + 752)))
      {
LABEL_36:
        v14 = v3 + 3000;
        if (v3 + 3000 != a2)
        {
          v15 = 0;
          v16 = 0;
          while (1)
          {
            if (*(v14 + 752) > *(v10 + 752))
            {
              KB::Candidate::Candidate(v22, v14);
              v17 = v15;
              while (1)
              {
                KB::Candidate::operator=((v3 + v17 + 3000), (v3 + v17 + 2000));
                if (v17 == -2000)
                {
                  break;
                }

                v18 = *(v3 + v17 + 1752);
                v17 -= 1000;
                if (v23 <= v18)
                {
                  v19 = (v3 + v17 + 3000);
                  goto LABEL_44;
                }
              }

              v19 = v3;
LABEL_44:
              KB::Candidate::operator=(v19, v22);
              if (++v16 == 8)
              {
                v20 = v14 + 1000 == a2;
                KB::Candidate::~Candidate(v22);
                return v20;
              }

              KB::Candidate::~Candidate(v22);
            }

            v10 = v14;
            v15 += 1000;
            v14 += 1000;
            if (v14 == a2)
            {
              return 1;
            }
          }
        }

        return 1;
      }

      v13 = (v3 + 1000);
      a1 = v3;
    }

    else
    {
      if (v12 <= v11)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a1, (a1 + 1000));
        if (*(v3 + 2752) <= *(v3 + 1752))
        {
          goto LABEL_36;
        }

        a1 = v3 + 1000;
      }

      v13 = (v3 + 2000);
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a1, v13);
    goto LABEL_36;
  }

  if (v4 != 3)
  {
    if (v4 == 4)
    {
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,KB::CandidateCollection::sort_by_word_score(void)::$_0 &,KB::Candidate *,0>(a1, a1 + 1000, a1 + 2000, a2 - 1000);
      return 1;
    }

    if (v4 != 5)
    {
      goto LABEL_16;
    }

    std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,KB::CandidateCollection::sort_by_word_score(void)::$_0 &,KB::Candidate *,0>(a1, a1 + 1000, a1 + 2000, a1 + 3000);
    if (*(a2 - 248) <= *(v3 + 3752))
    {
      return 1;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>((v3 + 3000), (a2 - 1000));
    if (*(v3 + 3752) <= *(v3 + 2752))
    {
      return 1;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>((v3 + 2000), (v3 + 3000));
    if (*(v3 + 2752) <= *(v3 + 1752))
    {
      return 1;
    }

    v6 = (v3 + 1000);
    v7 = (v3 + 2000);
    goto LABEL_22;
  }

  v8 = *(a1 + 1752);
  v9 = *(a2 - 248);
  if (v8 > *(a1 + 752))
  {
    if (v9 <= v8)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(a1, (a1 + 1000));
      if (*(a2 - 248) <= *(v3 + 1752))
      {
        return 1;
      }

      a1 = v3 + 1000;
    }

    v5 = (a2 - 1000);
    goto LABEL_31;
  }

  if (v9 > v8)
  {
    v6 = (a1 + 1000);
    v7 = (a2 - 1000);
LABEL_22:
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<KB::Candidate *&,KB::Candidate *&>(v6, v7);
    if (*(v3 + 1752) > *(v3 + 752))
    {
      v5 = (v3 + 1000);
      goto LABEL_24;
    }
  }

  return 1;
}

void std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,KB::CandidateCollection::sort_by_word_score(void)::$_0 &,KB::Candidate *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2 - 2;
  if (a2 >= 2)
  {
    v4 = a3;
    v6 = v3 >> 1;
    if ((v3 >> 1) >= 0x1CAC083126E978D5 * ((a3 - a1) >> 3))
    {
      v8 = (0x395810624DD2F1AALL * ((a3 - a1) >> 3)) | 1;
      v9 = a1 + 1000 * v8;
      if (0x395810624DD2F1AALL * ((a3 - a1) >> 3) + 2 < a2 && *(v9 + 752) > *(v9 + 1752))
      {
        v9 += 1000;
        v8 = 0x395810624DD2F1AALL * ((a3 - a1) >> 3) + 2;
      }

      if (*(v9 + 752) <= *(a3 + 752))
      {
        KB::Candidate::Candidate(v13, a3);
        do
        {
          v10 = v9;
          KB::Candidate::operator=(v4, v9);
          if (v6 < v8)
          {
            break;
          }

          v11 = 2 * v8;
          v8 = (2 * v8) | 1;
          v9 = a1 + 1000 * v8;
          v12 = v11 + 2;
          if (v12 < a2 && *(v9 + 752) > *(v9 + 1752))
          {
            v9 += 1000;
            v8 = v12;
          }

          v4 = v10;
        }

        while (*(v9 + 752) <= v14);
        KB::Candidate::operator=(v10, v13);
        KB::Candidate::~Candidate(v13);
      }
    }
  }
}

void KB::CandidateCollection::normalize_scores(float32x2_t **this)
{
  v1 = *this;
  v2 = this[1];
  if (*this != v2)
  {
    v3 = v1[93].f32[0];
    v4 = 0x1CAC083126E978D5 * (v2 - v1);
    v5 = 0.0;
    if (v4 >= 2)
    {
      v6 = 2;
      v7 = 1;
      do
      {
        v5 = v5 + expf(v1[125 * v7 + 93].f32[0] - v3);
        v7 = v6;
      }

      while (v4 > v6++);
    }

    *v9.i32 = v3 + log1pf(v5);
    v10 = vdup_lane_s32(v9, 0);
    do
    {
      v1[93] = vsub_f32(v1[93], v10);
      v1 += 125;
    }

    while (v1 != v2);
  }
}

unsigned __int16 *KB::CandidateCollection::debug_data@<X0>(KB::CandidateCollection *this@<X0>, uint64_t a2@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  *a2 = 0x100000;
  *(a2 + 4) = 0;
  *(a2 + 6) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  KB::String::append(a2, "{linguistic={", 0xFFFFuLL);
  v4 = *this;
  if (*(this + 1) != *this)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      KB::Candidate::capitalized_string(&v20, (v4 + 1000 * v5));
      KB::String::append(a2, &v20);
      if (v21)
      {
        v7 = BYTE6(v20) == 1;
      }

      else
      {
        v7 = 0;
      }

      if (v7)
      {
        free(v21);
      }

      v4 = *this;
      v8 = 0x1CAC083126E978D5 * ((*(this + 1) - *this) >> 3);
      if (v8 > v6)
      {
        KB::String::append(a2, ", ", 0xFFFFuLL);
        v4 = *this;
        v8 = 0x1CAC083126E978D5 * ((*(this + 1) - *this) >> 3);
      }

      v5 = v6++;
    }

    while (v8 > v5);
  }

  KB::String::append(a2, "}, proactive={", 0xFFFFuLL);
  v9 = *(this + 6);
  if (*(this + 7) != v9)
  {
    v10 = 0;
    v11 = 1;
    do
    {
      KB::Candidate::capitalized_string(&v20, (v9 + 1000 * v10));
      KB::String::append(a2, &v20);
      if (v21)
      {
        v12 = BYTE6(v20) == 1;
      }

      else
      {
        v12 = 0;
      }

      if (v12)
      {
        free(v21);
      }

      v9 = *(this + 6);
      v13 = 0x1CAC083126E978D5 * ((*(this + 7) - v9) >> 3);
      if (v13 > v11)
      {
        KB::String::append(a2, ", ", 0xFFFFuLL);
        v9 = *(this + 6);
        v13 = 0x1CAC083126E978D5 * ((*(this + 7) - v9) >> 3);
      }

      v10 = v11++;
    }

    while (v13 > v10);
  }

  KB::String::append(a2, "}, exact_typed={", 0xFFFFuLL);
  v14 = *(this + 9);
  if (*(this + 10) != v14)
  {
    v15 = 0;
    v16 = 1;
    do
    {
      KB::Candidate::capitalized_string(&v20, (v14 + 1000 * v15));
      KB::String::append(a2, &v20);
      if (v21)
      {
        v17 = BYTE6(v20) == 1;
      }

      else
      {
        v17 = 0;
      }

      if (v17)
      {
        free(v21);
      }

      v14 = *(this + 9);
      v18 = 0x1CAC083126E978D5 * ((*(this + 10) - v14) >> 3);
      if (v18 > v16)
      {
        KB::String::append(a2, ", ", 0xFFFFuLL);
        v14 = *(this + 9);
        v18 = 0x1CAC083126E978D5 * ((*(this + 10) - v14) >> 3);
      }

      v15 = v16++;
    }

    while (v18 > v15);
  }

  return KB::String::append(a2, "}}", 0xFFFFuLL);
}

uint64_t KB::CandidateCollection::addOnlySupplementalCandidates(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *a2;
  v5 = *(a2 + 8);
  while (v4 != v5)
  {
    if (*v4)
    {
      v6 = (v4[1] + 224);
      v7 = 240 * *v4;
      while (1)
      {
        v8 = *v6;
        v6 += 30;
        if (v8)
        {
          break;
        }

        v7 -= 240;
        if (!v7)
        {
          goto LABEL_9;
        }
      }

      result = std::vector<KB::Candidate>::push_back[abi:nn200100](v3, v4);
    }

LABEL_9:
    v4 += 125;
  }

  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  while (v9 != v10)
  {
    if (*v9)
    {
      v11 = (v9[1] + 224);
      v12 = 240 * *v9;
      while (1)
      {
        v13 = *v11;
        v11 += 30;
        if (v13)
        {
          break;
        }

        v12 -= 240;
        if (!v12)
        {
          goto LABEL_18;
        }
      }

      result = std::vector<KB::Candidate>::push_back[abi:nn200100](v3 + 48, v9);
    }

LABEL_18:
    v9 += 125;
  }

  v15 = *(a2 + 72);
  v14 = *(a2 + 80);
  while (v15 != v14)
  {
    if (*v15)
    {
      v16 = (v15[1] + 224);
      v17 = 240 * *v15;
      while (1)
      {
        v18 = *v16;
        v16 += 30;
        if (v18)
        {
          break;
        }

        v17 -= 240;
        if (!v17)
        {
          goto LABEL_27;
        }
      }

      result = std::vector<KB::Candidate>::push_back[abi:nn200100](v3 + 72, v15);
    }

LABEL_27:
    v15 += 125;
  }

  return result;
}

uint64_t std::vector<KB::Candidate>::push_back[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = 0x1CAC083126E978D5 * ((v3 - *a1) >> 3);
    if ((v7 + 1) > 0x4189374BC6A7EFLL)
    {
      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v8 = 0x1CAC083126E978D5 * ((v4 - *a1) >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x20C49BA5E353F7)
    {
      v10 = 0x4189374BC6A7EFLL;
    }

    else
    {
      v10 = v9;
    }

    v16[4] = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<KB::Candidate>>(v10);
    }

    v11 = 1000 * v7;
    KB::Candidate::Candidate(v11, a2);
    v6 = v11 + 1000;
    v12 = *(a1 + 8);
    v13 = v11 + *a1 - v12;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::Candidate>,KB::Candidate*>(*a1, v12, v13);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11 + 1000;
    v15 = *(a1 + 16);
    *(a1 + 16) = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<KB::Candidate>::~__split_buffer(v16);
  }

  else
  {
    result = KB::Candidate::Candidate(v3, a2);
    v6 = result + 1000;
  }

  *(a1 + 8) = v6;
  return result;
}

void _GLOBAL__sub_I_TIDynamicLexiconCandidateFilters_mm()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(KB::LikelihoodInfo::~LikelihoodInfo, &KB::k_invalid_likelihood_value, &dword_22CA55000);

  objc_autoreleasePoolPop(v0);
}

void _GLOBAL__sub_I_TIKeyboardInputManagerMecabra_mm()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(KB::LikelihoodInfo::~LikelihoodInfo, &KB::k_invalid_likelihood_value, &dword_22CA55000);

  objc_autoreleasePoolPop(v0);
}

void _GLOBAL__sub_I_TIKeyboardInputManager_mul_mm()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(KB::LikelihoodInfo::~LikelihoodInfo, &KB::k_invalid_likelihood_value, &dword_22CA55000);

  objc_autoreleasePoolPop(v0);
}

void _GLOBAL__sub_I_TISmartSelection_mm()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(KB::LikelihoodInfo::~LikelihoodInfo, &KB::k_invalid_likelihood_value, &dword_22CA55000);

  objc_autoreleasePoolPop(v0);
}

void _GLOBAL__sub_I_TILanguageModel_mm()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(KB::LikelihoodInfo::~LikelihoodInfo, &KB::k_invalid_likelihood_value, &dword_22CA55000);

  objc_autoreleasePoolPop(v0);
}

void _GLOBAL__sub_I_TIKeyboardFeatureSpecialization_mm()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(KB::LikelihoodInfo::~LikelihoodInfo, &KB::k_invalid_likelihood_value, &dword_22CA55000);

  objc_autoreleasePoolPop(v0);
}

void _GLOBAL__sub_I_TILanguageResourcesUtil_mm()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(KB::LikelihoodInfo::~LikelihoodInfo, &KB::k_invalid_likelihood_value, &dword_22CA55000);

  objc_autoreleasePoolPop(v0);
}

void _GLOBAL__sub_I_TICandidateFilterFactory_mm()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(KB::LikelihoodInfo::~LikelihoodInfo, &KB::k_invalid_likelihood_value, &dword_22CA55000);

  objc_autoreleasePoolPop(v0);
}

void _GLOBAL__sub_I_TILanguageModelContainer_mm()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(KB::LikelihoodInfo::~LikelihoodInfo, &KB::k_invalid_likelihood_value, &dword_22CA55000);

  objc_autoreleasePoolPop(v0);
}

uint64_t _GLOBAL__sub_I_TIIndicUtils_cpp()
{
  KB::String::String(&kVowelLetterYAPHALAA_beng, "অ‍্য");
  __cxa_atexit(KB::String::~String, &kVowelLetterYAPHALAA_beng, &dword_22CA55000);
  KB::String::String(&kVowelLetterYAPHALAA_orya, "ଅ‍୍ୟ");
  __cxa_atexit(KB::String::~String, &kVowelLetterYAPHALAA_orya, &dword_22CA55000);
  KB::String::String(&kVowelSignYAPHALAA_beng, "‍্য");
  __cxa_atexit(KB::String::~String, &kVowelSignYAPHALAA_beng, &dword_22CA55000);
  KB::String::String(&kVowelSignYAPHALAA_orya, "‍୍ୟ");

  return __cxa_atexit(KB::String::~String, &kVowelSignYAPHALAA_orya, &dword_22CA55000);
}

void _GLOBAL__sub_I_TILanguageModelLoader_mm()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(KB::LikelihoodInfo::~LikelihoodInfo, &KB::k_invalid_likelihood_value, &dword_22CA55000);

  objc_autoreleasePoolPop(v0);
}

uint64_t _GLOBAL__sub_I_TICandidateFilterFlags_cpp()
{
  KB::String::String(&kGenericFlagDesc, "Generic Filter Stack");
  __cxa_atexit(KB::String::~String, &kGenericFlagDesc, &dword_22CA55000);
  KB::String::String(&kPreLMFlagDesc, "Pre LM Filter Stack");
  __cxa_atexit(KB::String::~String, &kPreLMFlagDesc, &dword_22CA55000);
  KB::String::String(&kPostLMFlagDesc, "Post LM Filter Stack");

  return __cxa_atexit(KB::String::~String, &kPostLMFlagDesc, &dword_22CA55000);
}

void _GLOBAL__sub_I_TIKeyboardInputManager_mm()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(KB::LikelihoodInfo::~LikelihoodInfo, &KB::k_invalid_likelihood_value, &dword_22CA55000);

  objc_autoreleasePoolPop(v0);
}

void _GLOBAL__sub_I_TIMutatingCandidateFilters_cpp()
{
  v5[3] = *MEMORY[0x277D85DE8];
  __cxa_atexit(KB::LikelihoodInfo::~LikelihoodInfo, &KB::k_invalid_likelihood_value, &dword_22CA55000);
  std::string::basic_string[abi:nn200100]<0>(v2, "u");
  std::string::basic_string[abi:nn200100]<0>(v3, "you");
  std::string::basic_string[abi:nn200100]<0>(v4, "o");
  std::string::basic_string[abi:nn200100]<0>(v5, "oh");
  KB::RescoreShortWords::short_word_map = 0u;
  *&qword_280FACC78 = 0u;
  dword_280FACC88 = 1065353216;
  if (v2[2] >= 0)
  {
    v0 = v2;
  }

  else
  {
    v0 = v2[0];
  }

  if (v2[2] >= 0)
  {
    v1 = HIBYTE(v2[2]);
  }

  else
  {
    v1 = v2[1];
  }

  std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v0, v1);
  operator new();
}

void _GLOBAL__sub_I_MCDrawInput_mm()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(KB::LikelihoodInfo::~LikelihoodInfo, &KB::k_invalid_likelihood_value, &dword_22CA55000);

  objc_autoreleasePoolPop(v0);
}

void _GLOBAL__sub_I_TIKeyboardInputManagerTransliteration_mm()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(KB::LikelihoodInfo::~LikelihoodInfo, &KB::k_invalid_likelihood_value, &dword_22CA55000);

  objc_autoreleasePoolPop(v0);
}

void _GLOBAL__sub_I_TILanguageModelImplStub_mm()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(KB::LikelihoodInfo::~LikelihoodInfo, &KB::k_invalid_likelihood_value, &dword_22CA55000);

  objc_autoreleasePoolPop(v0);
}

void _GLOBAL__sub_I_TILanguageSelectionController_mm()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(KB::LikelihoodInfo::~LikelihoodInfo, &KB::k_invalid_likelihood_value, &dword_22CA55000);
  v1 = _os_feature_enabled_impl();
  v2 = 2;
  if (v1)
  {
    v2 = 3;
  }

  TILSCMaximumActiveInputModes = v2;

  objc_autoreleasePoolPop(v0);
}

void _GLOBAL__sub_I_TIKeyboardInputManagerIndic_mm()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(KB::LikelihoodInfo::~LikelihoodInfo, &KB::k_invalid_likelihood_value, &dword_22CA55000);

  objc_autoreleasePoolPop(v0);
}

void _GLOBAL__sub_I_TILanguageModelOfflineLearningTask_mm()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(KB::LikelihoodInfo::~LikelihoodInfo, &KB::k_invalid_likelihood_value, &dword_22CA55000);

  objc_autoreleasePoolPop(v0);
}

void _GLOBAL__sub_I_TIKeyboardInputManager_Learning_mm()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(KB::LikelihoodInfo::~LikelihoodInfo, &KB::k_invalid_likelihood_value, &dword_22CA55000);

  objc_autoreleasePoolPop(v0);
}

void _GLOBAL__sub_I_TITypologyLogger_mm()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(KB::LikelihoodInfo::~LikelihoodInfo, &KB::k_invalid_likelihood_value, &dword_22CA55000);

  objc_autoreleasePoolPop(v0);
}

void _GLOBAL__sub_I_TIKeyboardInputManager_InlineCompletions_mm()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(KB::LikelihoodInfo::~LikelihoodInfo, &KB::k_invalid_likelihood_value, &dword_22CA55000);

  objc_autoreleasePoolPop(v0);
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x28210FD68](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

CFRange CFStringTokenizerGetCurrentTokenRange(CFStringTokenizerRef tokenizer)
{
  v1 = MEMORY[0x28210FEB8](tokenizer);
  result.length = v2;
  result.location = v1;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F910](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

uint64_t language_modeling::v1::InlineCompletion::InlineCompletion()
{
  return MEMORY[0x282181B48]();
}

{
  return MEMORY[0x282181B50]();
}

uint64_t language_modeling::v1::LinguisticContext::operator=()
{
  return MEMORY[0x282181BB8]();
}

{
  return MEMORY[0x282181BC0]();
}

uint64_t language_modeling::v1::LanguageModelSession::detailedConditionalProbability()
{
  return MEMORY[0x282181D38]();
}

{
  return MEMORY[0x282181D40]();
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__filename(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2821F73E8](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__root_directory(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2821F7400](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78D0]();
}

{
  return MEMORY[0x2821F78E8]();
}

{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7908]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}