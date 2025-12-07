@interface CACCommandRecognizerDictation
- (__RXLanguageObject)_adLibLanguageObjectFromLanguageModel:(__RXLanguageObject *)model;
- (id)_attributedStringFromResult:(__RXLanguageObject *)result;
- (void)handleDictation:(id)dictation;
- (void)speechRecognizer:(id)recognizer didRecognize:(id)recognize;
@end

@implementation CACCommandRecognizerDictation

- (void)speechRecognizer:(id)recognizer didRecognize:(id)recognize
{
  v50[2] = *MEMORY[0x277D85DE8];
  recognizeCopy = recognize;
  languageObject = [recognizeCopy languageObject];
  if (languageObject)
  {
    v7 = languageObject;
    Type = RXLanguageObjectGetType();
    if (Type == 6)
    {
      v10 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
      speechRecognizer = [(CACCommandRecognizer *)self speechRecognizer];
      [v10 registerSignPostEndProcessingForSpeechRecognizer:speechRecognizer message:@"Close Result."];
      goto LABEL_17;
    }

    if (Type == 5 && RXLanguageObjectGetCount() == 1)
    {
      ObjectAtIndex = RXLanguageObjectGetObjectAtIndex();
      v10 = RXObjectCopyProperty();
      if (![CACSpokenCommandManager commandIdentifierIsDictation:v10])
      {
        [v10 isEqualToString:@"System.IgnoreSiriKeywordAndOptionalPhrase"];
        goto LABEL_18;
      }

      speechRecognizer = [(CACCommandRecognizerDictation *)self _attributedStringFromResult:v7];
      string = [speechRecognizer string];
      v13 = [string length];

      if (v13)
      {
        v36 = v10;
        v14 = CFCopyDescription(v7);
        v15 = +[CACMessageTracerUtilities sharedCACMessageTracerUtilities];
        v49[0] = @"Text";
        v37 = speechRecognizer;
        string2 = [speechRecognizer string];
        v49[1] = @"RXResultDescription";
        v50[0] = string2;
        v35 = v14;
        v50[1] = v14;
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:2];
        [v15 setDictationProperties:v17];

        v18 = +[CACSpeechSystem speechSystem];
        v19 = [v18 resultLanguageModelFromRXLanguageObject:ObjectAtIndex];

        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        obj = self->super._spokenCommandsCache;
        v20 = [(NSArray *)obj countByEnumeratingWithState:&v42 objects:v48 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v43;
          while (2)
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v43 != v22)
              {
                objc_enumerationMutation(obj);
              }

              v24 = *(*(&v42 + 1) + 8 * i);
              identifier = [v24 identifier];
              identifier2 = [v19 identifier];
              v27 = [identifier isEqualToString:identifier2];

              if (v27)
              {
                v28 = [(CACCommandRecognizer *)self commandParametersFromCACLanguageModel:v19];
                v46 = kCACCommandParameterAttributedText;
                v47 = v37;
                v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
                [v28 setObject:v29 forKey:*MEMORY[0x277D655C8]];

                v30 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
                commandExecutionDispatchQueue = [v30 commandExecutionDispatchQueue];
                block[0] = MEMORY[0x277D85DD0];
                block[1] = 3221225472;
                block[2] = __63__CACCommandRecognizerDictation_speechRecognizer_didRecognize___block_invoke;
                block[3] = &unk_279CEB550;
                block[4] = v24;
                v32 = v28;
                v40 = v32;
                v41 = recognizeCopy;
                dispatch_async(commandExecutionDispatchQueue, block);

                v33 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
                [v33 handleRecognizedCommand:v24];

                v34 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
                LODWORD(commandExecutionDispatchQueue) = [v34 dictationRecognizerMode];

                if (commandExecutionDispatchQueue == 3)
                {
                  +[CACCommandRecognizer suspendCloseMatchAccumulatorForCommand];
                }

                goto LABEL_24;
              }
            }

            v21 = [(NSArray *)obj countByEnumeratingWithState:&v42 objects:v48 count:16];
            if (v21)
            {
              continue;
            }

            break;
          }
        }

LABEL_24:

        v10 = v36;
        speechRecognizer = v37;
      }

LABEL_17:

LABEL_18:
    }
  }
}

uint64_t __63__CACCommandRecognizerDictation_speechRecognizer_didRecognize___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setRecognizedParameters:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);

  return [v2 setLanguageObject:v3];
}

- (void)handleDictation:(id)dictation
{
  v107 = *MEMORY[0x277D85DE8];
  dictationCopy = dictation;
  v4 = +[CACSystemStatusManager sharedManager];
  isSystemDictationRunning = [v4 isSystemDictationRunning];

  if (isSystemDictationRunning)
  {
    v7 = CACLogDictationCommands(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [CACCommandRecognizerDictation handleDictation:v7];
    }

    goto LABEL_50;
  }

  v8 = objc_alloc(MEMORY[0x277CCAB48]);
  v74 = dictationCopy;
  recognizedParameters = [dictationCopy recognizedParameters];
  v10 = [recognizedParameters objectForKey:*MEMORY[0x277D655C8]];
  v11 = [v10 objectForKey:kCACCommandParameterAttributedText];
  v7 = [v8 initWithAttributedString:v11];

  v12 = +[VCVocabularyObjC visibleVocabularyEntriesForActiveLocale];
  v13 = objc_opt_new();
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  obj = v12;
  v14 = [obj countByEnumeratingWithState:&v99 objects:v106 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v100;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v100 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v99 + 1) + 8 * i);
        v19 = +[VCVocabularyObjC textKey];
        v20 = [v18 objectForKey:v19];
        [v13 addObject:v20];
      }

      v15 = [obj countByEnumeratingWithState:&v99 objects:v106 count:16];
    }

    while (v15);
  }

  dictationCopy = v74;
  recognizedParameters2 = [v74 recognizedParameters];
  v22 = [recognizedParameters2 objectForKey:kCACCommandParameterTextSequence];
  firstObject = [v22 firstObject];
  v24 = [firstObject objectForKey:kCACCommandParameterTextVariants];

  v26 = CACLogDictationCommands(v25);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    [(CACCommandRecognizerDictation *)v24 handleDictation:v26];
  }

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v27 = v24;
  v79 = v27;
  v83 = [v27 countByEnumeratingWithState:&v95 objects:v105 count:16];
  if (!v83)
  {
    v80 = 0;
    v44 = v27;
LABEL_35:

    goto LABEL_37;
  }

  v80 = 0;
  v81 = 0;
  v82 = *v96;
  v76 = v7;
  v77 = v13;
  do
  {
    for (j = 0; j != v83; ++j)
    {
      if (*v96 != v82)
      {
        objc_enumerationMutation(v27);
      }

      v29 = *(*(&v95 + 1) + 8 * j);
      v91 = 0u;
      v92 = 0u;
      v93 = 0u;
      v94 = 0u;
      v85 = v13;
      v30 = [v85 countByEnumeratingWithState:&v91 objects:v104 count:16];
      if (!v30)
      {
        v42 = v85;
        goto LABEL_28;
      }

      v31 = v30;
      v84 = j;
      v32 = 0;
      v33 = *v92;
      do
      {
        for (k = 0; k != v31; ++k)
        {
          if (*v92 != v33)
          {
            objc_enumerationMutation(v85);
          }

          v35 = [MEMORY[0x277CCAC68] escapedPatternForString:*(*(&v91 + 1) + 8 * k)];
          v36 = MEMORY[0x277CCAC68];
          v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"\\b%@\\b", v35];
          v90 = 0;
          v38 = [v36 regularExpressionWithPattern:v37 options:64 error:&v90];
          v39 = v90;

          v40 = [v38 numberOfMatchesInString:v29 options:0 range:{0, objc_msgSend(v29, "length")}];
          v32 += v40;
        }

        v31 = [v85 countByEnumeratingWithState:&v91 objects:v104 count:16];
      }

      while (v31);

      if (v32 > v81)
      {
        v41 = v29;
        v27 = v79;
        v42 = v80;
        v80 = v41;
        v81 = v32;
        v7 = v76;
        v13 = v77;
        j = v84;
LABEL_28:

        continue;
      }

      v7 = v76;
      v13 = v77;
      v27 = v79;
      j = v84;
    }

    v83 = [v27 countByEnumeratingWithState:&v95 objects:v105 count:16];
  }

  while (v83);

  dictationCopy = v74;
  if (v80)
  {
    v43 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v80];
    v44 = v7;
    v7 = v43;
    goto LABEL_35;
  }

  v80 = 0;
LABEL_37:
  languageObject = [dictationCopy languageObject];
  transcriptionResult = [languageObject transcriptionResult];
  isPartialResult = [transcriptionResult isPartialResult];

  if ((isPartialResult & 1) == 0)
  {
    v48 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
    stagedTextInsertionSpecifier = [v48 stagedTextInsertionSpecifier];
    [stagedTextInsertionSpecifier setInsertedCategoryID:*MEMORY[0x277D655C8]];
  }

  v50 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  dictationRecognizerMode = [v50 dictationRecognizerMode];

  if ((dictationRecognizerMode - 4) <= 0xFFFFFFFD)
  {
    v52 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
    doesCurrentLanguageSupportInterWordSpaces = [v52 doesCurrentLanguageSupportInterWordSpaces];

    if (doesCurrentLanguageSupportInterWordSpaces)
    {
      v78 = v13;
      v54 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
      leadingTextForCurrentSelection = [v54 leadingTextForCurrentSelection];

      languageObject2 = [dictationCopy languageObject];
      transcriptionResult2 = [languageObject2 transcriptionResult];
      preITN_nBestResults = [transcriptionResult2 preITN_nBestResults];
      firstObject2 = [preITN_nBestResults firstObject];

      array = [MEMORY[0x277CBEB18] array];
      v86 = 0u;
      v87 = 0u;
      v88 = 0u;
      v89 = 0u;
      v61 = firstObject2;
      v62 = [v61 countByEnumeratingWithState:&v86 objects:v103 count:16];
      if (v62)
      {
        v63 = v62;
        v64 = *v87;
        do
        {
          for (m = 0; m != v63; ++m)
          {
            if (*v87 != v64)
            {
              objc_enumerationMutation(v61);
            }

            tokenName = [*(*(&v86 + 1) + 8 * m) tokenName];
            [array addObject:tokenName];
          }

          v63 = [v61 countByEnumeratingWithState:&v86 objects:v103 count:16];
        }

        while (v63);
      }

      v67 = [v78 copy];
      v68 = +[CACSpeechSystem speechSystem];
      recognitionLocaleIdentifier = [v68 recognitionLocaleIdentifier];
      [v7 adjustCapsAndSpacingUsingLeadingText:leadingTextForCurrentSelection preITNTokens:array customVocabularies:v67 localeIdentifier:recognitionLocaleIdentifier];

      v13 = v78;
      dictationCopy = v74;
      v27 = v79;
    }
  }

  v70 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  string = [v7 string];
  languageObject3 = [dictationCopy languageObject];
  transcriptionResult3 = [languageObject3 transcriptionResult];
  [v70 insertDictatedString:string provisionally:{objc_msgSend(transcriptionResult3, "isPartialResult")}];

LABEL_50:
}

- (id)_attributedStringFromResult:(__RXLanguageObject *)result
{
  v5 = objc_opt_new();
  if ([(CACCommandRecognizerDictation *)self _adLibLanguageObjectFromLanguageModel:result])
  {
    v6 = +[CACSpeechSystem speechSystem];
    v7 = CFLocaleCreate(0, [v6 recognitionLocaleIdentifier]);

    v8 = RXObjectCopyPropertyWithLocale();
    if (v8)
    {
      v9 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v8];
      [v5 appendAttributedString:v9];
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }

  return v5;
}

- (__RXLanguageObject)_adLibLanguageObjectFromLanguageModel:(__RXLanguageObject *)model
{
  modelCopy = model;
  if (model && RXLanguageObjectGetType() != 4)
  {
    Count = RXLanguageObjectGetCount();
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v6 = Count;
      v7 = 0;
      while (1)
      {
        v8 = [(CACCommandRecognizerDictation *)self _adLibLanguageObjectFromLanguageModel:RXLanguageObjectGetObjectAtIndex()];
        if (v8)
        {
          break;
        }

        if (v6 == ++v7)
        {
          return 0;
        }
      }

      return v8;
    }
  }

  return modelCopy;
}

- (void)handleDictation:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_26B354000, a2, OS_LOG_TYPE_DEBUG, "[handleDictation] textVariants: %@", &v2, 0xCu);
}

@end