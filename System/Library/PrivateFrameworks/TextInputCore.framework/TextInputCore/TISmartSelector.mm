@interface TISmartSelector
- (TISmartSelector)initWithOptions:(unint64_t)options language:(id)language dataChangedHandler:(id)handler;
- (_NSRange)longestRangeEncapsulatingSubstringInDocument:(id)document containingRange:(_NSRange)range tokenizedRanges:(id)ranges meetingCondition:(id)condition;
- (_NSRange)selectionRangeForTextInDocument:(id)document inRange:(_NSRange)range language:(id)language options:(unint64_t)options;
- (_NSRange)selectionRangeForTextInDocument:(id)document inRange:(_NSRange)range language:(id)language tokenizedRanges:(id)ranges options:(unint64_t)options;
- (void)dealloc;
- (void)loadStaticPhraseDictionary;
- (void)setLanguage:(id)language;
@end

@implementation TISmartSelector

- (_NSRange)selectionRangeForTextInDocument:(id)document inRange:(_NSRange)range language:(id)language options:(unint64_t)options
{
  length = range.length;
  location = range.location;
  documentCopy = document;
  languageCopy = language;
  array = [MEMORY[0x277CBEB18] array];
  v14 = [(__CFString *)documentCopy length];
  v15 = *MEMORY[0x277CBECE8];
  v16 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:languageCopy];
  v27.location = 0;
  v27.length = v14;
  v17 = CFStringTokenizerCreate(v15, documentCopy, v27, 0, v16);
  if (v17)
  {
    v18 = v17;
    while (CFStringTokenizerAdvanceToNextToken(v18))
    {
      CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v18);
      v20 = [MEMORY[0x277CCAE60] valueWithRange:{CurrentTokenRange.location, CurrentTokenRange.length}];
      [array addObject:v20];
    }

    CFRelease(v18);
    options = [(TISmartSelector *)self selectionRangeForTextInDocument:documentCopy inRange:location language:length tokenizedRanges:languageCopy options:array, options];
    v23 = v22;
  }

  else
  {
    v23 = 0;
    options = 0x7FFFFFFFFFFFFFFFLL;
  }

  v24 = options;
  v25 = v23;
  result.length = v25;
  result.location = v24;
  return result;
}

- (void)loadStaticPhraseDictionary
{
  v27 = *MEMORY[0x277D85DE8];
  localeIdentifier = [(NSLocale *)self->_locale localeIdentifier];
  KB::utf8_string(localeIdentifier, v7);
  localeIdentifier2 = [(NSLocale *)self->_locale localeIdentifier];
  v5 = [TIInputMode inputModeWithIdentifier:localeIdentifier2];
  v6 = UIKeyboardPhraseLexiconPathForInputMode(v5);
  KB::utf8_string(v6, &v8);
  v9 = 0x100000;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0x100000;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0x100000;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 1;
  v25 = 0;
  v26 = 1065353216;

  KB::StaticDictionary::create();
}

- (_NSRange)longestRangeEncapsulatingSubstringInDocument:(id)document containingRange:(_NSRange)range tokenizedRanges:(id)ranges meetingCondition:(id)condition
{
  length = range.length;
  location = range.location;
  documentCopy = document;
  rangesCopy = ranges;
  conditionCopy = condition;
  v28 = conditionCopy;
  v12 = 0;
  if ([rangesCopy count])
  {
    v13 = 0;
    v27 = conditionCopy + 16;
    v29 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v14 = [rangesCopy objectAtIndexedSubscript:{v13, v27}];
      rangeValue = [v14 rangeValue];

      if (v13 < [rangesCopy count])
      {
        v16 = v13;
        do
        {
          v17 = [rangesCopy objectAtIndexedSubscript:v16];
          rangeValue2 = [v17 rangeValue];
          v20 = v19;

          v21 = v20 - rangeValue + rangeValue2;
          v31.location = rangeValue;
          v31.length = v21;
          v33.location = location;
          v33.length = length;
          if (v21 >= NSUnionRange(v31, v33).length)
          {
            v22 = [documentCopy substringWithRange:{rangeValue, v20 - rangeValue + rangeValue2}];
            if (v12 < v21)
            {
              v23 = (v28)[2](v28, v22);
              if (v23)
              {
                v12 = v21;
              }

              v24 = v29;
              if (v23)
              {
                v24 = rangeValue;
              }

              v29 = v24;
            }
          }

          ++v16;
        }

        while (v16 < [rangesCopy count]);
      }

      ++v13;
    }

    while (v13 < [rangesCopy count]);
  }

  else
  {
    v29 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v25 = v29;
  v26 = v12;
  result.length = v26;
  result.location = v25;
  return result;
}

- (_NSRange)selectionRangeForTextInDocument:(id)document inRange:(_NSRange)range language:(id)language tokenizedRanges:(id)ranges options:(unint64_t)options
{
  length = range.length;
  location = range.location;
  v104[5] = *MEMORY[0x277D85DE8];
  documentCopy = document;
  languageCopy = language;
  rangesCopy = ranges;
  v16 = [documentCopy length];
  v105.location = 0;
  v105.length = v16;
  v107.location = location;
  v107.length = length;
  if (v16 >= NSUnionRange(v105, v107).length)
  {
    v60 = languageCopy;
    v95 = 0;
    v96 = &v95;
    v97 = 0x4012000000;
    v98 = __Block_byref_object_copy__3300;
    v99 = __Block_byref_object_dispose__3301;
    v100 = "";
    v101 = xmmword_22CC889D0;
    v17 = dispatch_semaphore_create(0);
    v59 = rangesCopy;
    dsema = v17;
    if ((options & self->_options & 0x1FLL) != 0)
    {
      v18 = v17;
      v19 = [objc_alloc(MEMORY[0x277D04228]) initWithScannerType:0 passiveIntent:1];
      [v19 setResultsOptions:1601];
      v20 = MEMORY[0x277D04220];
      v89[0] = MEMORY[0x277D85DD0];
      v89[1] = 3221225472;
      v89[2] = __92__TISmartSelector_selectionRangeForTextInDocument_inRange_language_tokenizedRanges_options___block_invoke;
      v89[3] = &unk_27872FB50;
      v92 = location;
      v93 = length;
      optionsCopy = options;
      v89[4] = self;
      v91 = &v95;
      v90 = v18;
      [v20 scanString:documentCopy range:0 configuration:v16 completionBlock:{v19, v89}];

      rangesCopy = v59;
    }

    else
    {
      dispatch_semaphore_signal(v17);
    }

    options = self->_options;
    if ((options & options & 0x20) != 0)
    {
      v88[0] = MEMORY[0x277D85DD0];
      v88[1] = 3221225472;
      v88[2] = __92__TISmartSelector_selectionRangeForTextInDocument_inRange_language_tokenizedRanges_options___block_invoke_2;
      v88[3] = &unk_278731200;
      v88[4] = self;
      v54 = [(TISmartSelector *)self longestRangeEncapsulatingSubstringInDocument:documentCopy containingRange:location tokenizedRanges:length meetingCondition:rangesCopy, v88];
      v55 = v22;
      options = self->_options;
    }

    else
    {
      v54 = 0x7FFFFFFFFFFFFFFFLL;
      v55 = 0;
    }

    if ((options & options & 0x40) != 0)
    {
      localeIdentifier = [(NSLocale *)self->_locale localeIdentifier];
      isEqualToString = objc_msgSend_isEqualToString_(languageCopy);

      if ((isEqualToString & 1) == 0)
      {
        [(TISmartSelector *)self setLanguage:languageCopy];
      }

      v87[0] = MEMORY[0x277D85DD0];
      v87[1] = 3221225472;
      v87[2] = __92__TISmartSelector_selectionRangeForTextInDocument_inRange_language_tokenizedRanges_options___block_invoke_3;
      v87[3] = &unk_278731200;
      v87[4] = self;
      rangesCopy = v59;
      v56 = [(TISmartSelector *)self longestRangeEncapsulatingSubstringInDocument:documentCopy containingRange:location tokenizedRanges:length meetingCondition:v59, v87];
      v57 = v25;
      options = self->_options;
    }

    else
    {
      v56 = 0x7FFFFFFFFFFFFFFFLL;
      v57 = 0;
    }

    if ((options & options & 0x80) != 0)
    {
      v86[0] = MEMORY[0x277D85DD0];
      v86[1] = 3221225472;
      v86[2] = __92__TISmartSelector_selectionRangeForTextInDocument_inRange_language_tokenizedRanges_options___block_invoke_4;
      v86[3] = &unk_278731200;
      v86[4] = self;
      v26 = [(TISmartSelector *)self longestRangeEncapsulatingSubstringInDocument:documentCopy containingRange:location tokenizedRanges:length meetingCondition:rangesCopy, v86];
      v53 = v27;
    }

    else
    {
      v53 = 0;
      v26 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v79 = 0;
    v80 = &v79;
    v81 = 0x4012000000;
    v82 = __Block_byref_object_copy__3300;
    v83 = __Block_byref_object_dispose__3301;
    v84 = "";
    v85 = xmmword_22CC889D0;
    v28 = dispatch_semaphore_create(0);
    v29 = v28;
    if ((options & self->_options & 0x100) != 0)
    {
      localeIdentifier2 = [(NSLocale *)self->_locale localeIdentifier];
      v31 = objc_msgSend_isEqualToString_(languageCopy);

      if ((v31 & 1) == 0)
      {
        [(TISmartSelector *)self setLanguage:v60];
      }

      v32 = objc_alloc(MEMORY[0x277CBEB98]);
      v33 = [v32 initWithObjects:{*MEMORY[0x277CD8920], *MEMORY[0x277CD8928], *MEMORY[0x277CD8908], 0}];
      v66 = MEMORY[0x277D85DD0];
      v67 = 3221225472;
      v68 = __92__TISmartSelector_selectionRangeForTextInDocument_inRange_language_tokenizedRanges_options___block_invoke_5;
      v69 = &unk_27872FBA0;
      selfCopy = self;
      v76 = v16;
      v77 = location;
      v78 = length;
      v71 = documentCopy;
      v72 = v33;
      v74 = &v79;
      v75 = 0;
      v73 = v29;
      v34 = v33;
      TIDispatchAsync();
    }

    else
    {
      dispatch_semaphore_signal(v28);
    }

    v35 = dispatch_time(0, 3000000000);
    v36 = dispatch_semaphore_wait(dsema, v35);
    v37 = dispatch_semaphore_wait(v29, v35);
    if (v36)
    {
      *(v96 + 3) = xmmword_22CC889D0;
    }

    if (v37)
    {
      *(v80 + 3) = xmmword_22CC889D0;
    }

    *&v102 = location;
    *(&v102 + 1) = length;
    v38 = [MEMORY[0x277CCAE60] valueWithRange:{v96[6], v96[7]}];
    v104[0] = v38;
    v39 = [MEMORY[0x277CCAE60] valueWithRange:{v54, v55}];
    v104[1] = v39;
    v40 = [MEMORY[0x277CCAE60] valueWithRange:{v56, v57}];
    v104[2] = v40;
    v41 = [MEMORY[0x277CCAE60] valueWithRange:{v26, v53}];
    v104[3] = v41;
    v42 = [MEMORY[0x277CCAE60] valueWithRange:{v80[6], v80[7]}];
    v104[4] = v42;
    v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v104 count:5];

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v44 = v43;
    v45 = [v44 countByEnumeratingWithState:&v62 objects:v103 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v63;
      do
      {
        for (i = 0; i != v46; ++i)
        {
          if (*v63 != v47)
          {
            objc_enumerationMutation(v44);
          }

          v61[0] = [*(*(&v62 + 1) + 8 * i) rangeValue];
          v61[1] = v49;
          if (*(&v102 + 1) >= v49)
          {
            v50 = &v102;
          }

          else
          {
            v50 = v61;
          }

          v102 = *v50;
        }

        v46 = [v44 countByEnumeratingWithState:&v62 objects:v103 count:16];
      }

      while (v46);
      length = *(&v102 + 1);
      location = v102;
    }

    _Block_object_dispose(&v79, 8);
    _Block_object_dispose(&v95, 8);
    rangesCopy = v59;
    languageCopy = v60;
  }

  v51 = location;
  v52 = length;
  result.length = v52;
  result.location = v51;
  return result;
}

void __92__TISmartSelector_selectionRangeForTextInDocument_inRange_language_tokenizedRanges_options___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v13 + 1) + 8 * i) coreResult];
        v19.location = DDResultGetRangeForURLification();
        location = v19.location;
        length = v19.length;
        if (v19.length >= NSUnionRange(v19, *(a1 + 56)).length)
        {
          if ((Category = DDResultGetCategory(), v11 = *(a1 + 72) & *(*(a1 + 32) + 32), (v11 & 8) != 0) && (Category & 1) != 0 || (v11 & 4) != 0 && (Category & 2) != 0 || (v11 & 2) != 0 && (Category & 3) != 0 || (v11 & 1) != 0 && (Category & 4) != 0 || (v11 & 0x10) != 0 && (Category & 6) != 0)
          {
            v12 = *(*(a1 + 48) + 8);
            *(v12 + 48) = location;
            *(v12 + 56) = length;
            goto LABEL_21;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:

  dispatch_semaphore_signal(*(a1 + 40));
}

BOOL __92__TISmartSelector_selectionRangeForTextInDocument_inRange_language_tokenizedRanges_options___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 48);
  v3 = a2;
  [v2 namedEntityPhraseLexicon];
  LODWORD(v2) = LXLexiconGetFirstTokenIDForString();

  return v2 != 0;
}

BOOL __92__TISmartSelector_selectionRangeForTextInDocument_inRange_language_tokenizedRanges_options___block_invoke_3(uint64_t a1, KB *this)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 8);
  KB::utf8_string(this, v6);
  v3 = KB::StaticDictionary::contains(v2, v6, 0, 0.0);
  if (v7)
  {
    v4 = v6[6] == 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    free(v7);
  }

  return v3;
}

void __92__TISmartSelector_selectionRangeForTextInDocument_inRange_language_tokenizedRanges_options___block_invoke_5(uint64_t a1)
{
  [*(*(a1 + 32) + 56) setString:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  v4 = [*(v2 + 40) languageCode];
  [v3 setLanguage:v4 range:{*(a1 + 72), *(a1 + 80)}];

  v5 = *(*(a1 + 32) + 56);
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  v8 = *MEMORY[0x277CD8968];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __92__TISmartSelector_selectionRangeForTextInDocument_inRange_language_tokenizedRanges_options___block_invoke_6;
  v11[3] = &unk_27872FB78;
  v14 = *(a1 + 88);
  v9 = *(a1 + 48);
  v10 = *(a1 + 64);
  v12 = v9;
  v13 = v10;
  [v5 enumerateTagsInRange:v6 unit:v7 scheme:0 options:v8 usingBlock:{30, v11}];
  dispatch_semaphore_signal(*(a1 + 56));
}

void __92__TISmartSelector_selectionRangeForTextInDocument_inRange_language_tokenizedRanges_options___block_invoke_6(uint64_t a1, void *a2, NSUInteger a3, NSUInteger a4, _BYTE *a5)
{
  v10 = a2;
  v12.location = a3;
  v12.length = a4;
  if (a4 == NSUnionRange(v12, *(a1 + 48)).length && [*(a1 + 32) containsObject:v10])
  {
    v9 = *(*(a1 + 40) + 8);
    *(v9 + 48) = a3;
    *(v9 + 56) = a4;
    *a5 = 1;
  }
}

- (void)setLanguage:(id)language
{
  v4 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:language];
  locale = self->_locale;
  self->_locale = v4;

  [(TISmartSelector *)self loadStaticPhraseDictionary];
}

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = TIPersonalizationContactOSLogFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s TISmartSelector:dealloc - removing observer", "-[TISmartSelector dealloc]"];
    *buf = 138412290;
    v8 = v4;
    _os_log_impl(&dword_22CA55000, v3, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  [(TITransientLexiconManager *)self->_transientLexiconManager removeContactObserver:self->_contactObserver];
  contactDictionary = self->_contactDictionary;
  if (contactDictionary)
  {
    CFRelease(contactDictionary);
  }

  v6.receiver = self;
  v6.super_class = TISmartSelector;
  [(TISmartSelector *)&v6 dealloc];
}

- (TISmartSelector)initWithOptions:(unint64_t)options language:(id)language dataChangedHandler:(id)handler
{
  v39 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  handlerCopy = handler;
  v35.receiver = self;
  v35.super_class = TISmartSelector;
  v10 = [(TISmartSelector *)&v35 init];
  v11 = v10;
  if (v10)
  {
    v10->_options = options;
    v12 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:languageCopy];
    locale = v11->_locale;
    v11->_locale = v12;

    v14 = _Block_copy(handlerCopy);
    dataChangedHandler = v11->_dataChangedHandler;
    v11->_dataChangedHandler = v14;

    v16 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v17 = dispatch_queue_create("com.apple.TextInput.smart_selection", v16);
    dispatchQueue = v11->_dispatchQueue;
    v11->_dispatchQueue = v17;

    options = v11->_options;
    if ((options & 0x40) != 0)
    {
      [(TISmartSelector *)v11 loadStaticPhraseDictionary];
      options = v11->_options;
    }

    if ((options & 0xA0) != 0)
    {
      v20 = +[TITransientLexiconManager sharedInstance];
      transientLexiconManager = v11->_transientLexiconManager;
      v11->_transientLexiconManager = v20;

      options = v11->_options;
    }

    if ((options & 0x80) != 0)
    {
      objc_initWeak(&location, v11);
      v22 = TIPersonalizationContactOSLogFacility();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s TISmartSelector:initWithOptions - adding observer", "-[TISmartSelector initWithOptions:language:dataChangedHandler:]"];
        *buf = 138412290;
        v38 = v23;
        _os_log_impl(&dword_22CA55000, v22, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
      }

      v24 = v11->_transientLexiconManager;
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __63__TISmartSelector_initWithOptions_language_dataChangedHandler___block_invoke;
      v32[3] = &unk_278732270;
      objc_copyWeak(&v33, &location);
      v25 = [(TITransientLexiconManager *)v24 addContactObserver:v32];
      contactObserver = v11->_contactObserver;
      v11->_contactObserver = v25;

      objc_destroyWeak(&v33);
      objc_destroyWeak(&location);
      options = v11->_options;
    }

    if ((options & 0x100) != 0)
    {
      v27 = objc_alloc(MEMORY[0x277CD89D8]);
      v36 = *MEMORY[0x277CD8968];
      v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
      v29 = [v27 initWithTagSchemes:v28];
      namedEntityTagger = v11->_namedEntityTagger;
      v11->_namedEntityTagger = v29;
    }
  }

  return v11;
}

void __63__TISmartSelector_initWithOptions_language_dataChangedHandler___block_invoke(uint64_t a1, void *a2)
{
  v77 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = TIPersonalizationContactOSLogFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s TISmartSelector:initWithOptions - processing %lu contacts", "-[TISmartSelector initWithOptions:language:dataChangedHandler:]_block_invoke", objc_msgSend(v3, "count")];
    *buf = 138412290;
    v76 = v5;
    _os_log_impl(&dword_22CA55000, v4, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v6 = v3;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, *MEMORY[0x277D23178], @"TextInput-SmartSelectionContacts");
  err = 0;
  Transient = LXLexiconCreateTransient();
  v9 = [v6 allValues];
  v10 = [v9 sortedArrayUsingComparator:&__block_literal_global_8];
  v52 = v6;
  v53 = a1;
  v51 = Mutable;
  if ([v6 count] > 0x1F3)
  {
    v11 = 500;
  }

  else
  {
    v11 = [v6 count];
  }

  v12 = [v10 subarrayWithRange:{0, v11}];

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = v12;
  v56 = [obj countByEnumeratingWithState:&v67 objects:buf count:16];
  if (v56)
  {
    v55 = *v68;
    do
    {
      v13 = 0;
      do
      {
        if (*v68 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v58 = v13;
        v14 = *(*(&v67 + 1) + 8 * v13);
        v15 = [v14 firstName];
        v16 = ___Z34nameVariationsForContactCollectionP12NSDictionaryIP8NSStringP10_ICContactE_block_invoke(v15);

        v17 = [v14 lastName];
        v61 = ___Z34nameVariationsForContactCollectionP12NSDictionaryIP8NSStringP10_ICContactE_block_invoke(v17);

        v18 = [v14 nickname];
        v19 = ___Z34nameVariationsForContactCollectionP12NSDictionaryIP8NSStringP10_ICContactE_block_invoke(v18);

        v20 = [v14 middleName];
        v21 = ___Z34nameVariationsForContactCollectionP12NSDictionaryIP8NSStringP10_ICContactE_block_invoke(v20);

        if ([v21 length])
        {
          v22 = [v21 rangeOfComposedCharacterSequenceAtIndex:0];
          v59 = [v21 substringWithRange:{v22, v23}];
        }

        else
        {
          v59 = 0;
        }

        v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v25 = v24;
        v26 = v61;
        if (v16)
        {
          [v24 addObject:v16];
        }

        if (v19)
        {
          [v25 addObject:v19];
        }

        if (v21)
        {
          [v25 addObject:v21];
        }

        v60 = v19;
        if (v61)
        {
          [v25 addObject:v61];
          if (v16)
          {
            v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v16, v61];
            [v25 addObject:v27];

            v26 = v61;
            v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v61, v16];
            [v25 addObject:v28];

            v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@, %@", v61, v16];
            [v25 addObject:v29];
          }

          if (v19)
          {
            v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v19, v26];
            [v25 addObject:v30];

            v26 = v61;
            v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v61, v19];
            [v25 addObject:v31];

            v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@, %@", v61, v19];
            [v25 addObject:v32];
          }

          if (v16 && v21)
          {
            v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@ %@", v16, v21, v26];
            [v25 addObject:v33];

            v26 = v61;
            v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@ %@", v61, v16, v21];
            [v25 addObject:v34];

            v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@, %@ %@", v61, v16, v21];
            [v25 addObject:v35];
          }

          if (v19 && v21)
          {
            v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@ %@", v19, v21, v26];
            [v25 addObject:v36];

            v26 = v61;
            v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@ %@", v61, v19, v21];
            [v25 addObject:v37];

            v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@, %@ %@", v61, v19, v21];
            [v25 addObject:v38];
          }

          if (v16 && v59)
          {
            v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@ %@", v16, v59, v26];
            [v25 addObject:v39];

            v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@. %@", v16, v59, v26];
            [v25 addObject:v40];
          }

          if (v19 && v59)
          {
            v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@ %@", v19, v59, v26];
            [v25 addObject:v41];

            v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@. %@", v19, v59, v26];
            [v25 addObject:v42];
          }
        }

        v57 = v16;
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v43 = v25;
        v44 = [v43 countByEnumeratingWithState:&v63 objects:v74 count:16];
        if (v44)
        {
          v45 = v44;
          v46 = *v64;
          do
          {
            v47 = 0;
            do
            {
              if (*v64 != v46)
              {
                objc_enumerationMutation(v43);
              }

              v48 = *(*(&v63 + 1) + 8 * v47);
              if (!LXLexiconAdd())
              {
                if (TICanLogMessageAtLevel_onceToken != -1)
                {
                  dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
                }

                if (TICanLogMessageAtLevel_logLevel >= 2)
                {
                  v49 = TIOSLogFacility();
                  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
                  {
                    v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s TISmartSelection: Failed to add %@ to the contact name variations lexicon.", "nameVariationsForContactCollection", v48];
                    *v72 = 138412290;
                    v73 = v50;
                    _os_log_debug_impl(&dword_22CA55000, v49, OS_LOG_TYPE_DEBUG, "%@", v72, 0xCu);
                  }
                }
              }

              ++v47;
            }

            while (v45 != v47);
            v45 = [v43 countByEnumeratingWithState:&v63 objects:v74 count:16];
          }

          while (v45);
        }

        v13 = v58 + 1;
      }

      while (v58 + 1 != v56);
      v56 = [obj countByEnumeratingWithState:&v67 objects:buf count:16];
    }

    while (v56);
  }

  if (v51)
  {
    CFRelease(v51);
  }

  objc_copyWeak(v62, (v53 + 32));
  v62[1] = Transient;
  TIDispatchAsync();
  objc_destroyWeak(v62);
}

uint64_t __63__TISmartSelector_initWithOptions_language_dataChangedHandler___block_invoke_38(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  v10 = WeakRetained;
  if (WeakRetained)
  {
    v4 = _Block_copy(WeakRetained[9]);
    v5 = v10;
    v6 = v4;
    v7 = v10[2];
    if (v7)
    {
      CFRelease(v7);
      v5 = v10;
    }

    v5[2] = *(a1 + 40);
    if (v6)
    {
      v6[2](v6);
    }
  }

  else
  {
    v8 = *(a1 + 40);
    if (!v8)
    {
      goto LABEL_10;
    }

    CFRelease(v8);
  }

  v3 = v10;
LABEL_10:

  return MEMORY[0x2821F96F8](v8, v3);
}

@end