@interface TIKeyboardInputManagerTransliteration
+ (id)transliteratorInputCharacterSet;
- (BOOL)acceptsCharacter:(unsigned int)character;
- (BOOL)hasInputToTransliterate;
- (CandidateCollection)autocorrectionCandidateStrings;
- (TIKeyboardInputManagerTransliteration)initWithConfig:(id)config keyboardState:(id)state;
- (TLTransliterator)autocorrectionTransliterator;
- (TLTransliterator)exactStringTransliterator;
- (TLTransliterator)transliterator;
- (id)autocorrectionListForEmptyInputWithDesiredCandidateCount:(unint64_t)count;
- (id)candidateContextFromDocumentStateOnly;
- (id)candidatesForInputString:(id)string;
- (id)candidatesForInputString:(id)string transliterator:(id)transliterator;
- (id)candidatesWithTypedString:(id)string autocorrectedCandidates:(id)candidates;
- (id)candidatesWithTypedString:(id)string autocorrectedString:(id)autocorrectedString;
- (id)dictionaryInputMode;
- (id)generateTypingAutocorrectionsWithCandidateRange:(_NSRange)range;
- (id)handleAcceptedCandidate:(id)candidate keyboardState:(id)state;
- (id)keyEventMap;
- (id)keyboardConfiguration;
- (id)lexiconLocales;
- (id)mecabraCandidatePointerValueWithCandidate:(id)candidate;
- (id)scoreAndResortCandidates:(id)candidates string:(id)string geometryScore:(float)score;
- (id)sortedCandidatesFromTypedStringCandidates:(id)candidates autocorrectedStringCandidates:(id)stringCandidates autocorrectedLatinString:(id)string;
- (shared_ptr<KB::LanguageModel>)loadNewLanguageModel;
- (void)decrementLanguageModelCount:(id)count latinInputString:(id)string tokenID:(TITokenID)d contextTokens:(id)tokens;
- (void)deleteFromInputWithContext:(id)context;
- (void)incrementLanguageModelCount:(id)count latinInputString:(id)string tokenID:(TITokenID)d contextTokens:(id)tokens saveToDifferentialPrivacy:(int)privacy;
- (void)initImplementation;
- (void)loadDictionaries;
- (void)loadFavoniusTypingModel;
- (void)processCandidates:(id)candidates withGeometryScore:(float)score originalLatinString:(id)string context:(void *)context intoCandidateCollection:(void *)collection intoStringCandidateMap:(id)map;
- (void)suspend;
- (void)syncToKeyboardState:(id)state from:(id)from afterContextChange:(BOOL)change;
@end

@implementation TIKeyboardInputManagerTransliteration

- (void)decrementLanguageModelCount:(id)count latinInputString:(id)string tokenID:(TITokenID)d contextTokens:(id)tokens
{
  tokensCopy = tokens;
  countCopy = count;
  [(TIKeyboardInputManager *)self decrementLanguageModelCount:string tokenID:d contextTokens:tokensCopy];
  nativeModelManager = [(TIKeyboardInputManagerTransliteration *)self nativeModelManager];
  v13 = [nativeModelManager findTokenIDForWord:countCopy contextTokens:0 tokenLookupMode:0];

  nativeModelManager2 = [(TIKeyboardInputManagerTransliteration *)self nativeModelManager];
  [nativeModelManager2 decrementLanguageModelCount:countCopy tokenID:v13 contextTokens:tokensCopy];
}

- (void)incrementLanguageModelCount:(id)count latinInputString:(id)string tokenID:(TITokenID)d contextTokens:(id)tokens saveToDifferentialPrivacy:(int)privacy
{
  v7 = *&privacy;
  tokensCopy = tokens;
  countCopy = count;
  [(TIKeyboardInputManager *)self incrementLanguageModelCount:string tokenID:d contextTokens:0 saveToDifferentialPrivacy:v7];
  nativeModelManager = [(TIKeyboardInputManagerTransliteration *)self nativeModelManager];
  v15 = [nativeModelManager findTokenIDForWord:countCopy contextTokens:0 tokenLookupMode:0];

  nativeModelManager2 = [(TIKeyboardInputManagerTransliteration *)self nativeModelManager];
  [nativeModelManager2 incrementLanguageModelCount:countCopy tokenID:v15 contextTokens:tokensCopy saveToDifferentialPrivacy:v7];
}

- (void)processCandidates:(id)candidates withGeometryScore:(float)score originalLatinString:(id)string context:(void *)context intoCandidateCollection:(void *)collection intoStringCandidateMap:(id)map
{
  v37 = *MEMORY[0x277D85DE8];
  candidatesCopy = candidates;
  mapCopy = map;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = candidatesCopy;
  v13 = [candidatesCopy countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v24 + 1) + 8 * i);
        candidate = [v17 candidate];
        KB::String::String(v28, [candidate cStringUsingEncoding:4]);
        KB::Candidate::Candidate(v30, v28, 0);
        if (v29 && v28[6] == 1)
        {
          free(v29);
        }

        objc_opt_class();
        v19 = 0;
        v20 = 0;
        if (objc_opt_isKindOfClass())
        {
          [v17 seq2seqScore];
          v20 = v21;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v17 lmScore];
          v19 = v22;
        }

        v31 = 0;
        v32 = v19;
        v33 = 0x3E80000000000000;
        v34 = v20;
        KB::LanguageModelContext::operator=(&v35, context);
        std::vector<KB::Candidate>::push_back[abi:nn200100](collection, v30);
        [mapCopy setObject:v17 forKeyedSubscript:candidate];
        KB::Candidate::~Candidate(v30);
      }

      v14 = [obj countByEnumeratingWithState:&v24 objects:v36 count:16];
    }

    while (v14);
  }
}

- (id)scoreAndResortCandidates:(id)candidates string:(id)string geometryScore:(float)score
{
  v47 = *MEMORY[0x277D85DE8];
  candidatesCopy = candidates;
  stringCopy = string;
  v44 = 0;
  memset(v42, 0, sizeof(v42));
  memset(v43, 0, sizeof(v43));
  v10 = objc_opt_new();
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  *__p = 0u;
  language_modeling::v1::LinguisticContext::LinguisticContext(&v39);
  language_modeling::v1::LinguisticContext::LinguisticContext(&v40);
  memset(v41, 0, 24);
  v34 = 0;
  nativeModelManager = self->_nativeModelManager;
  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  documentState = [keyboardState documentState];
  contextBeforeInput = [documentState contextBeforeInput];
  KB::utf8_string(contextBeforeInput, &v45);
  [(TIKeyboardInputManager *)nativeModelManager tokenizeString:&v45 context:&v35 sentences:&v34];
  if (v46 && BYTE6(v45) == 1)
  {
    free(v46);
  }

  v32 = stringCopy;
  v33 = candidatesCopy;
  *&v15 = score;
  [(TIKeyboardInputManagerTransliteration *)self processCandidates:candidatesCopy withGeometryScore:stringCopy originalLatinString:&v35 context:v42 intoCandidateCollection:v10 intoStringCandidateMap:v15];
  [(TIKeyboardInputManager *)self->_nativeModelManager scoreCandidates:v42];
  v16 = 0x1CAC083126E978D5 * ((v42[1] - v42[0]) >> 3);
  v17 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v16];
  v18 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:v16];
  v19 = v42[1];
  for (i = v42[0]; i != v19; i += 1000)
  {
    v21 = MEMORY[0x277CCACA8];
    if (*(i + 888))
    {
      if (*(i + 896))
      {
        v22 = *(i + 896);
      }

      else
      {
        v22 = (i + 904);
      }
    }

    else
    {
      KB::Candidate::compute_string(i);
      v23 = *(i + 896);
      if (!v23)
      {
        v23 = (i + 904);
      }

      if (*(i + 888))
      {
        v22 = v23;
      }

      else
      {
        v22 = "";
      }
    }

    v24 = [v21 stringWithUTF8String:v22];
    v25 = [v10 objectForKeyedSubscript:v24];
    if (([v18 containsObject:v24] & 1) == 0)
    {
      if (*i)
      {
        v27 = 240 * *i;
        v28 = (*(i + 8) + 56);
        LODWORD(v26) = 1.0;
        do
        {
          v29 = *v28;
          v28 += 60;
          *&v26 = *&v26 * v29;
          v27 -= 240;
        }

        while (v27);
      }

      else
      {
        LODWORD(v26) = 1.0;
      }

      v30 = [MEMORY[0x277CCABB0] numberWithFloat:v26];
      [v25 setStaticLinguisticLikelihood:v30];

      [v17 addObject:v25];
      [v18 addObject:v24];
    }
  }

  v45 = v41;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v45);
  language_modeling::v1::LinguisticContext::~LinguisticContext(&v40);
  language_modeling::v1::LinguisticContext::~LinguisticContext(&v39);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (*(&v35 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v35 + 1));
  }

  *&v35 = &v43[1] + 8;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v35);
  *&v35 = v43;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v35);
  *&v35 = &v42[3];
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v35);
  *&v35 = v42;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v35);

  return v17;
}

- (id)keyboardConfiguration
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = TIKeyboardInputManagerTransliteration;
  keyboardConfiguration = [(TIKeyboardInputManager *)&v9 keyboardConfiguration];
  config = [(TIKeyboardInputManager *)self config];
  inputMode = [config inputMode];
  languageWithRegion = [inputMode languageWithRegion];
  v10[0] = languageWithRegion;
  v10[1] = @"en_IN";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  [keyboardConfiguration setMultilingualLanguages:v7];

  return keyboardConfiguration;
}

- (id)candidatesForInputString:(id)string transliterator:(id)transliterator
{
  v57 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  transliteratorCopy = transliterator;
  if (![stringCopy length])
  {
    v13 = MEMORY[0x277CBEBF8];
    goto LABEL_32;
  }

  v7 = stringCopy;
  i = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v9 = [v7 rangeOfCharacterFromSet:i options:8];
  v11 = v10;

  v43 = stringCopy;
  v40 = v7;
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v46 = 0;
    v12 = v7;
  }

  else
  {
    v46 = [v7 substringWithRange:{v9, v11}];
    v12 = [v7 substringFromIndex:v9 + v11];
  }

  candidateContextFromDocumentStateOnly = [(TIKeyboardInputManagerTransliteration *)self candidateContextFromDocumentStateOnly];
  v42 = transliteratorCopy;
  v45 = v12;
  v14 = [transliteratorCopy generateCandidatesForInputWord:v12 candidateContextStrings:? maxCandidatesCount:?];
  v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v14, "count")}];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v14;
  v48 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (v48)
  {
    v44 = *v53;
    do
    {
      for (i = 0; i != v48; ++i)
      {
        v15 = v13;
        if (*v53 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v52 + 1) + 8 * i);
        transliteratedWord = [v16 transliteratedWord];
        firstObject = [obj firstObject];
        v19 = firstObject;
        if (v16 == firstObject)
        {

          LODWORD(v20) = 0;
        }

        else
        {
          LODWORD(v20) = [v16 isExtensionCandidate];
        }

        if ([v16 type] == 3)
        {
          v20 = v20 | 2;
        }

        else
        {
          v20 = v20;
        }

        if ([v46 length])
        {
          v21 = [v46 stringByAppendingString:transliteratedWord];

          transliteratedWord = v21;
        }

        v22 = objc_alloc(MEMORY[0x277D6F448]);
        inputString = [(TIKeyboardInputManager *)self inputString];
        v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v16];
        v25 = [v22 initWithCandidate:transliteratedWord forInput:inputString latinCandidate:v45 mecabraCandidatePointerValue:v24 withFlags:v20];

        [v16 lmScore];
        *&v26 = v26;
        [v25 setLmScore:v26];
        transliteratorCandidateByMecabraCandidatePointerValue = [(TIKeyboardInputManagerTransliteration *)self transliteratorCandidateByMecabraCandidatePointerValue];
        v28 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v16];
        [transliteratorCandidateByMecabraCandidatePointerValue setObject:v16 forKey:v28];

        [v16 seq2seqScore];
        *&v29 = v29;
        [v25 setSeq2seqScore:v29];
        v13 = v15;
        [v15 addObject:v25];
      }

      v48 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
    }

    while (v48);
  }

  transliteratorCopy = v42;
  stringCopy = v43;
  if (-[TIKeyboardInputManagerTransliteration prioritizeLatinCandidates](self, "prioritizeLatinCandidates") || ![v13 count])
  {
    v30 = [v13 count];
    if (v30)
    {
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __81__TIKeyboardInputManagerTransliteration_candidatesForInputString_transliterator___block_invoke;
      v50[3] = &unk_278731D60;
      i = &v51;
      v31 = v40;
      v51 = v40;
      v32 = [v13 indexOfObjectPassingTest:v50];
      if (v32 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v37 = v32;
        v38 = [v13 objectAtIndexedSubscript:v32];
        [v13 removeObjectAtIndex:v37];
        [v13 insertObject:v38 atIndex:0];

LABEL_30:
        goto LABEL_31;
      }

      v33 = v13;
    }

    else
    {
      v33 = v13;
      v31 = v40;
    }

    v34 = MEMORY[0x277D6F3D8];
    inputString2 = [(TIKeyboardInputManager *)self inputString];
    v36 = [v34 candidateWithCandidate:v31 forInput:inputString2];

    v13 = v33;
    [v33 insertObject:v36 atIndex:0];

    if (!v30)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_31:

LABEL_32:

  return v13;
}

uint64_t __81__TIKeyboardInputManagerTransliteration_candidatesForInputString_transliterator___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 candidate];
  isEqualToString = objc_msgSend_isEqualToString_(v2);

  return isEqualToString;
}

- (id)autocorrectionListForEmptyInputWithDesiredCandidateCount:(unint64_t)count
{
  nativeModelManager = self->_nativeModelManager;
  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  [(TIKeyboardInputManager *)nativeModelManager syncToKeyboardState:keyboardState];

  v7 = self->_nativeModelManager;

  return [(TIKeyboardInputManager *)v7 autocorrectionListForEmptyInputWithDesiredCandidateCount:count];
}

- (id)generateTypingAutocorrectionsWithCandidateRange:(_NSRange)range
{
  selfCopy = self;
  v75 = *MEMORY[0x277D85DE8];
  v72.receiver = self;
  v72.super_class = TIKeyboardInputManagerTransliteration;
  v4 = [(TIKeyboardInputManager *)&v72 generateTypingAutocorrectionsWithCandidateRange:range.location, range.length];
  v5 = v4;
  v6 = *(selfCopy->super.super.m_impl + 108);
  if ((v6 & 0x80000000) == 0)
  {
    corrections = [v4 corrections];
    autocorrection = [corrections autocorrection];
    candidate = [autocorrection candidate];
    candidate2 = 0;
LABEL_5:

    goto LABEL_6;
  }

  candidate = [(TIKeyboardInputManager *)selfCopy inputString];
  mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];
  autocorrectionEnabled = [mEMORY[0x277D6F470] autocorrectionEnabled];

  if (autocorrectionEnabled)
  {
    corrections = [v5 corrections];
    autocorrection = [corrections autocorrection];
    candidate2 = [autocorrection candidate];
    goto LABEL_5;
  }

  candidate2 = 0;
LABEL_6:
  v66 = candidate2;
  v67 = candidate;
  if (candidate == candidate2)
  {
    v13 = 0;
  }

  else
  {
    v13 = candidate2;
  }

  v14 = [(TIKeyboardInputManagerTransliteration *)selfCopy candidatesWithTypedString:candidate autocorrectedString:v13];
  v15 = [v14 mutableCopy];

  if (![v15 count])
  {
    candidates = [v5 candidates];
    v36 = [candidates count];

    if (v36)
    {
      v37 = v5;
      goto LABEL_59;
    }
  }

  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = v16;
  v63 = v5;
  v64 = selfCopy;
  v62 = v6;
  if ((v6 & 0x80000000) == 0)
  {
    v61 = v16;
    corrections2 = [v5 corrections];
    autocorrection2 = [corrections2 autocorrection];

    if ([v15 count])
    {
      for (i = 0; i < [v15 count]; ++i)
      {
        v21 = [v15 objectAtIndexedSubscript:i];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = v21;
          [v22 setContinuousPathConversion:1];
          [v22 setShouldInsertSpaceAfterSelection:{objc_msgSend(autocorrection2, "shouldInsertSpaceAfterSelection")}];
          if (!i)
          {
            goto LABEL_15;
          }
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_20;
          }

          [v21 setContinuousPathConversion:1];
          if (!i)
          {
LABEL_15:
            [v21 setShouldAccept:{objc_msgSend(autocorrection2, "shouldAccept")}];
          }
        }

LABEL_20:
        if (i)
        {
          candidate3 = [v21 candidate];
          v24 = [v15 objectAtIndexedSubscript:0];
          candidate4 = [v24 candidate];
          v26 = [v21 candidateByReplacingWithCandidate:candidate3 input:candidate4];

          [v15 setObject:v26 atIndexedSubscript:i];
        }
      }
    }

    v17 = v61;
    if ([v15 count])
    {
      if (autocorrection2)
      {
        candidate5 = [autocorrection2 candidate];
        v28 = [v15 objectAtIndexedSubscript:0];
        candidate6 = [v28 candidate];
        v30 = [autocorrection2 candidateByReplacingWithCandidate:candidate5 input:candidate6];

        if (v30)
        {
          [v61 insertObject:v30 atIndex:0];
        }
      }
    }

    selfCopy = v64;
  }

  if (!(*(**(selfCopy->super.super.m_impl + 28) + 232))(*(selfCopy->super.super.m_impl + 28)))
  {
    v33 = 0;
    v34 = v17;
    v17 = v15;
    goto LABEL_34;
  }

  v31 = objc_alloc(MEMORY[0x277D6F348]);
  firstObject = [v15 firstObject];
  v33 = [v31 initWithAutocorrection:firstObject alternateCorrections:0];

  if ([v15 count] >= 2)
  {
    v34 = [v15 subarrayWithRange:{1, objc_msgSend(v15, "count") - 1}];
    [v17 addObjectsFromArray:v34];
LABEL_34:
  }

  v38 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v39 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v40 = v17;
  v41 = [v40 countByEnumeratingWithState:&v68 objects:v74 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v69;
    do
    {
      for (j = 0; j != v42; ++j)
      {
        if (*v69 != v43)
        {
          objc_enumerationMutation(v40);
        }

        v45 = *(*(&v68 + 1) + 8 * j);
        if ([v45 isEmojiCandidate])
        {
          v46 = v39;
        }

        else
        {
          v46 = v38;
        }

        [v46 addObject:v45];
      }

      v42 = [v40 countByEnumeratingWithState:&v68 objects:v74 count:16];
    }

    while (v42);
  }

  if (_os_feature_enabled_impl())
  {
    dictionaryLookup = [(TIKeyboardInputManagerTransliteration *)v64 dictionaryLookup];
    v48 = &stru_283FDFAF8;
    v49 = v66;
    if (!v66)
    {
      v49 = &stru_283FDFAF8;
    }

    if (v67)
    {
      v48 = v67;
    }

    v73[0] = v49;
    v73[1] = v48;
    v50 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:2];
    v51 = [dictionaryLookup translationsForStrings:v50];
    firstObject2 = [v51 firstObject];

    if ([firstObject2 length])
    {
      v53 = MEMORY[0x277D6F3D8];
      autocorrection3 = [v33 autocorrection];
      input = [autocorrection3 input];
      v56 = [v53 candidateWithCandidate:firstObject2 forInput:input];

      if (v62 < 0 || ![v15 count])
      {
        [v38 insertObject:v56 atIndex:0];
      }

      else
      {
        candidate7 = [v56 candidate];
        v57 = [v15 objectAtIndexedSubscript:0];
        candidate8 = [v57 candidate];
        v59 = [v56 candidateByReplacingWithCandidate:candidate7 input:candidate8];

        [v38 insertObject:v59 atIndex:1];
      }
    }
  }

  v37 = [MEMORY[0x277D6F328] listWithCorrections:v33 predictions:v38 emojiList:v39];

  v5 = v63;
LABEL_59:

  return v37;
}

- (id)candidatesForInputString:(id)string
{
  stringCopy = string;
  transliterator = [(TIKeyboardInputManagerTransliteration *)self transliterator];
  v6 = [(TIKeyboardInputManagerTransliteration *)self candidatesForInputString:stringCopy transliterator:transliterator];

  return v6;
}

- (id)sortedCandidatesFromTypedStringCandidates:(id)candidates autocorrectedStringCandidates:(id)stringCandidates autocorrectedLatinString:(id)string
{
  v58 = *MEMORY[0x277D85DE8];
  candidatesCopy = candidates;
  stringCandidatesCopy = stringCandidates;
  stringCopy = string;
  array = [MEMORY[0x277CBEB18] array];
  firstObject = [stringCandidatesCopy firstObject];
  objc_opt_class();
  v45 = stringCandidatesCopy;
  v46 = candidatesCopy;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_10;
  }

  firstObject2 = [stringCandidatesCopy firstObject];

  if (!firstObject2)
  {
LABEL_10:
    [array addObjectsFromArray:candidatesCopy];
    goto LABEL_27;
  }

  firstObject3 = [candidatesCopy firstObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    firstObject4 = [candidatesCopy firstObject];

    if (firstObject4)
    {
      [firstObject4 lmScore];
      v16 = v15;
      [firstObject2 lmScore];
      v43 = firstObject4;
      v44 = firstObject2;
      if (v16 >= v17)
      {
        [array addObjectsFromArray:candidatesCopy];
        v19 = [stringCandidatesCopy objectAtIndex:0];
        [array addObject:v19];

        stringCandidatesCopy = candidatesCopy;
      }

      else
      {
        v18 = [stringCandidatesCopy objectAtIndex:0];
        [array addObject:v18];

        if (_os_feature_enabled_impl())
        {
          [array addObject:stringCopy];
        }

        [array addObjectsFromArray:candidatesCopy];
      }

      v20 = stringCandidatesCopy;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v21 = [v20 countByEnumeratingWithState:&v52 objects:v57 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v53;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v53 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v52 + 1) + 8 * i);
            v26 = [(TIKeyboardInputManagerTransliteration *)self mecabraCandidatePointerValueWithCandidate:v25];
            if (v26)
            {
              transliteratorCandidateByMecabraCandidatePointerValue = [(TIKeyboardInputManagerTransliteration *)self transliteratorCandidateByMecabraCandidatePointerValue];
              v28 = [transliteratorCandidateByMecabraCandidatePointerValue objectForKey:v26];

              if ([v28 type] != 3)
              {
                [array addObject:v25];
              }
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v52 objects:v57 count:16];
        }

        while (v22);
      }

      firstObject2 = v44;
      goto LABEL_26;
    }
  }

  else
  {
  }

  [array addObjectsFromArray:stringCandidatesCopy];
LABEL_26:

LABEL_27:
  array2 = [MEMORY[0x277CBEB18] array];
  array3 = [MEMORY[0x277CBEB18] array];
  v31 = [MEMORY[0x277CBEB58] set];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v32 = array;
  v33 = [v32 countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v49;
    do
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v49 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = *(*(&v48 + 1) + 8 * j);
        candidate = [v37 candidate];
        v39 = [v31 containsObject:candidate];

        if ((v39 & 1) == 0)
        {
          candidate2 = [v37 candidate];
          [v31 addObject:candidate2];

          if ([v37 isExtensionCandidate])
          {
            v41 = array3;
          }

          else
          {
            v41 = array2;
          }

          [v41 addObject:v37];
        }
      }

      v34 = [v32 countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v34);
  }

  [array2 addObjectsFromArray:array3];

  return array2;
}

- (id)candidatesWithTypedString:(id)string autocorrectedCandidates:(id)candidates
{
  v27 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  candidatesCopy = candidates;
  firstObject = [candidatesCopy firstObject];
  candidate = [firstObject candidate];

  if ([stringCopy length])
  {
    v9 = [(TIKeyboardInputManagerTransliteration *)self candidatesForInputString:stringCopy];
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  array = [MEMORY[0x277CBEB18] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = candidatesCopy;
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        candidate2 = [*(*(&v22 + 1) + 8 * i) candidate];
        v17 = [(TIKeyboardInputManagerTransliteration *)self candidatesForInputString:candidate2];
        [array addObjectsFromArray:v17];
      }

      v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }

  v18 = [objc_alloc(MEMORY[0x277D6F3D8]) initWithCandidate:candidate];
  v19 = [(TIKeyboardInputManagerTransliteration *)self sortedCandidatesFromTypedStringCandidates:v9 autocorrectedStringCandidates:array autocorrectedLatinString:v18];

  return v19;
}

- (id)candidatesWithTypedString:(id)string autocorrectedString:(id)autocorrectedString
{
  v14[1] = *MEMORY[0x277D85DE8];
  autocorrectedStringCopy = autocorrectedString;
  if (autocorrectedStringCopy)
  {
    v7 = MEMORY[0x277D6F568];
    stringCopy = string;
    v9 = [[v7 alloc] initWithCandidate:autocorrectedStringCopy];
    v14[0] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    v11 = [(TIKeyboardInputManagerTransliteration *)self candidatesWithTypedString:stringCopy autocorrectedCandidates:v10];
  }

  else
  {
    stringCopy2 = string;
    v11 = [(TIKeyboardInputManagerTransliteration *)self candidatesWithTypedString:stringCopy2 autocorrectedCandidates:MEMORY[0x277CBEBF8]];
  }

  return v11;
}

- (id)mecabraCandidatePointerValueWithCandidate:(id)candidate
{
  candidateCopy = candidate;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mecabraCandidatePointerValue = [candidateCopy mecabraCandidatePointerValue];
  }

  else
  {
    mecabraCandidatePointerValue = 0;
  }

  return mecabraCandidatePointerValue;
}

- (TLTransliterator)transliterator
{
  transliterator = self->_transliterator;
  if (!transliterator)
  {
    v4 = MEMORY[0x277CBEAF8];
    config = [(TIKeyboardInputManager *)self config];
    inputMode = [config inputMode];
    languageWithRegion = [inputMode languageWithRegion];
    v8 = [v4 localeWithLocaleIdentifier:languageWithRegion];

    v9 = [objc_alloc(MEMORY[0x277D73530]) initWithLocale:v8];
    v10 = [objc_alloc(MEMORY[0x277D73528]) initWithParameters:v9];
    v11 = self->_transliterator;
    self->_transliterator = v10;

    transliterator = self->_transliterator;
  }

  return transliterator;
}

- (TLTransliterator)autocorrectionTransliterator
{
  autocorrectionTransliterator = self->_autocorrectionTransliterator;
  if (!autocorrectionTransliterator)
  {
    v4 = MEMORY[0x277CBEAF8];
    config = [(TIKeyboardInputManager *)self config];
    inputMode = [config inputMode];
    languageWithRegion = [inputMode languageWithRegion];
    v8 = [v4 localeWithLocaleIdentifier:languageWithRegion];

    v9 = [objc_alloc(MEMORY[0x277D73530]) initWithLocale:v8];
    [v9 setUseLanguageModel:0];
    [v9 setUseSeq2SeqModel:0];
    v10 = [objc_alloc(MEMORY[0x277D73528]) initWithParameters:v9];
    v11 = self->_autocorrectionTransliterator;
    self->_autocorrectionTransliterator = v10;

    autocorrectionTransliterator = self->_autocorrectionTransliterator;
  }

  return autocorrectionTransliterator;
}

- (TLTransliterator)exactStringTransliterator
{
  exactStringTransliterator = self->_exactStringTransliterator;
  if (!exactStringTransliterator)
  {
    v4 = MEMORY[0x277CBEAF8];
    config = [(TIKeyboardInputManager *)self config];
    inputMode = [config inputMode];
    languageWithRegion = [inputMode languageWithRegion];
    v8 = [v4 localeWithLocaleIdentifier:languageWithRegion];

    v9 = [objc_alloc(MEMORY[0x277D73530]) initWithLocale:v8];
    [v9 setUseLanguageModel:0];
    v10 = [objc_alloc(MEMORY[0x277D73528]) initWithParameters:v9];
    v11 = self->_exactStringTransliterator;
    self->_exactStringTransliterator = v10;

    exactStringTransliterator = self->_exactStringTransliterator;
  }

  return exactStringTransliterator;
}

- (CandidateCollection)autocorrectionCandidateStrings
{
  v18 = *MEMORY[0x277D85DE8];
  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  if (([keyboardState autocorrectionEnabled] & 1) == 0)
  {

    goto LABEL_7;
  }

  keyboardState2 = [(TIKeyboardInputManager *)self keyboardState];
  textInputTraits = [keyboardState2 textInputTraits];
  autocorrectionType = [textInputTraits autocorrectionType];

  if (autocorrectionType == 1)
  {
LABEL_7:
    retstr->var5 = 0;
    *&retstr->var0.var0 = 0u;
    *&retstr->var0.var2 = 0u;
    *&retstr->var1.var1 = 0u;
    *&retstr->var2.var0 = 0u;
    *&retstr->var2.var2 = 0u;
    *&retstr->var3.var1 = 0u;
    return result;
  }

  keyboardState3 = [(TIKeyboardInputManager *)self keyboardState];
  if ([keyboardState3 hardwareKeyboardMode])
  {
    isHardwareKeyboardAutocorrectionEnabled = [(TIKeyboardInputManager *)self isHardwareKeyboardAutocorrectionEnabled];

    if (isHardwareKeyboardAutocorrectionEnabled)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

LABEL_10:
  (*(*self->super.super.m_impl + 16))(v13, self->super.super.m_impl, [(TIKeyboardInputManager *)self shiftContext]);
  KB::CandidateCollection::CandidateCollection(retstr, v13);
  if (v17)
  {
    if (v16[38] == 1)
    {
      free(v17);
    }
  }

  v12 = v16;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v12);
  v12 = &v15;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v12);
  v12 = &v14;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v12);
  v12 = v13;
  std::vector<KB::Candidate>::__destroy_vector::operator()[abi:nn200100](&v12);
  return result;
}

- (void)loadFavoniusTypingModel
{
  config = [(TIKeyboardInputManager *)self config];
  inputMode = [config inputMode];
  autocorrectionLocaleIdentifier = [inputMode autocorrectionLocaleIdentifier];
  v6 = [autocorrectionLocaleIdentifier length];

  if (v6)
  {
    v7.receiver = self;
    v7.super_class = TIKeyboardInputManagerTransliteration;
    [(TIKeyboardInputManager *)&v7 loadFavoniusTypingModel];
  }
}

- (shared_ptr<KB::LanguageModel>)loadNewLanguageModel
{
  v32 = v2;
  v33[1] = *MEMORY[0x277D85DE8];
  config = [(TIKeyboardInputManager *)self config];
  usesWordNgramModel = [config usesWordNgramModel];

  config2 = [(TIKeyboardInputManager *)self config];
  if ([config2 usesAdaptation])
  {
    dynamicResourcePath = [(TIKeyboardInputManager *)self dynamicResourcePath];
  }

  else
  {
    dynamicResourcePath = 0;
  }

  config3 = [(TIKeyboardInputManager *)self config];
  v31 = dynamicResourcePath;
  if ([config3 usesCustomNgramModel])
  {
    config4 = [(TIKeyboardInputManager *)self config];
    ngramModelPath = [config4 ngramModelPath];
    v33[0] = ngramModelPath;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
  }

  else
  {
    v10 = 0;
  }

  languageModelAssets = [(TIKeyboardInputManager *)self languageModelAssets];
  dictionaryInputMode = [(TIKeyboardInputManagerTransliteration *)self dictionaryInputMode];
  v13 = +[TITrialManagerProxy sharedManager];
  locale = [dictionaryInputMode locale];
  v15 = [v13 encodedLMTrialParametersForLocale:locale];

  preferredModelLocaleIdentifier = [dictionaryInputMode preferredModelLocaleIdentifier];
  preferredModelLocaleIsMultilingual = [dictionaryInputMode preferredModelLocaleIsMultilingual];
  inputMode = [(TIKeyboardInputManagerBase *)self inputMode];
  isSiriMode = [inputMode isSiriMode];
  LOBYTE(v29) = [dictionaryInputMode doesSupportInlineCompletion];
  BYTE2(v28) = isSiriMode;
  LOWORD(v28) = 0;
  v20 = [TILanguageModelLoaderManager sharedLanguageModelLoaderForModelLocaleIdentifier:"sharedLanguageModelLoaderForModelLocaleIdentifier:isMultilingualModel:customResourcePaths:dynamicResourcePath:mobileAssets:usesLinguisticContext:isMultiLingualModeEnabled:validEnglishTransformerMultilingualConfig:isSiriMode:trialParameters:isInlineCompletionEnabled:" isMultilingualModel:preferredModelLocaleIdentifier customResourcePaths:preferredModelLocaleIsMultilingual dynamicResourcePath:v10 mobileAssets:v31 usesLinguisticContext:languageModelAssets isMultiLingualModeEnabled:usesWordNgramModel validEnglishTransformerMultilingualConfig:v28 isSiriMode:v15 trialParameters:v29 isInlineCompletionEnabled:?];

  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  clientIdentifier = [keyboardState clientIdentifier];

  keyboardState2 = [(TIKeyboardInputManager *)self keyboardState];
  recipientIdentifier = [keyboardState2 recipientIdentifier];

  lexiconLocales = [(TIKeyboardInputManagerTransliteration *)self lexiconLocales];
  if (v20)
  {
    [v20 loadStubLanguageModelForLanguageLocales:lexiconLocales withModelLocale:0 withAdaptationContext:0];
  }

  else
  {
    *v32 = 0;
    v32[1] = 0;
  }

  result.__cntrl_ = v27;
  result.__ptr_ = v26;
  return result;
}

- (void)loadDictionaries
{
  v42 = *MEMORY[0x277D85DE8];
  if (self->super.super.m_impl)
  {
    inputMode = [(TIKeyboardInputManagerBase *)self inputMode];
    normalizedIdentifier = [inputMode normalizedIdentifier];
    isEqualToString = objc_msgSend_isEqualToString_(normalizedIdentifier);

    if (isEqualToString)
    {
      if (TICanLogMessageAtLevel_onceToken != -1)
      {
        dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
      }

      if (TICanLogMessageAtLevel_logLevel)
      {
        v6 = TIOSLogFacility();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Loading/reloading dictionaries.", "-[TIKeyboardInputManagerTransliteration loadDictionaries]"];
          buf = 138412290;
          *buf_4 = v13;
          _os_log_debug_impl(&dword_22CA55000, v6, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
        }
      }

      m_impl = self->super.super.m_impl;
      dictionaryInputMode = [(TIKeyboardInputManagerTransliteration *)self dictionaryInputMode];
      languageWithRegion = [dictionaryInputMode languageWithRegion];
      KB::utf8_string(languageWithRegion, &buf);
      TIInputManager::set_locale_identifier(m_impl, &buf);
      if (*&buf_4[4])
      {
        if (buf_4[2] == 1)
        {
          free(*&buf_4[4]);
        }
      }

      dictionaryInputMode2 = [(TIKeyboardInputManagerTransliteration *)self dictionaryInputMode];
      objc_msgSend_lexiconInfoForInputMode_(self);

      config = [(TIKeyboardInputManager *)self config];
      [config isTesting];

      v12 = [TIInputMode inputModeWithIdentifier:@"en_IN"];
      objc_msgSend_lexiconInfoForInputMode_(self);

      v41 = 1061997773;
      v34 = 1045220557;
      KB::String::String(&buf, v35);
      KB::String::String(&v17, v36);
      KB::String::String(&v18, &v37);
      KB::String::String(&v19, &v38);
      KB::String::String(v20, &v39);
      v20[4] = v40;
      v21 = v41;
      KB::String::String(&v22, v28);
      KB::String::String(&v23, v29);
      KB::String::String(&v24, &v30);
      KB::String::String(&v25, &v31);
      KB::String::String(v26, &v32);
      v26[4] = v33;
      v27 = v34;
      operator new();
    }

    v14.receiver = self;
    v14.super_class = TIKeyboardInputManagerTransliteration;
    [(TIKeyboardInputManager *)&v14 loadDictionaries];
  }
}

- (id)lexiconLocales
{
  v13[2] = *MEMORY[0x277D85DE8];
  dictionaryInputMode = [(TIKeyboardInputManagerTransliteration *)self dictionaryInputMode];
  locale = [dictionaryInputMode locale];

  inputMode = [(TIKeyboardInputManagerBase *)self inputMode];
  normalizedIdentifier = [inputMode normalizedIdentifier];
  isEqualToString = objc_msgSend_isEqualToString_(normalizedIdentifier);

  if (isEqualToString)
  {
    v8 = [TIInputMode inputModeWithIdentifier:@"en_IN"];
    locale2 = [v8 locale];

    v13[0] = locale;
    v13[1] = locale2;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  }

  else
  {
    v12 = locale;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
  }

  return v10;
}

- (id)dictionaryInputMode
{
  config = [(TIKeyboardInputManager *)self config];
  inputMode = [config inputMode];
  autocorrectionLocaleIdentifier = [inputMode autocorrectionLocaleIdentifier];
  v6 = [autocorrectionLocaleIdentifier length];

  if (v6)
  {
    config2 = [(TIKeyboardInputManager *)self config];
    inputMode2 = [config2 inputMode];
    autocorrectionLocaleIdentifier2 = [inputMode2 autocorrectionLocaleIdentifier];
    v10 = [TIInputMode inputModeWithIdentifier:autocorrectionLocaleIdentifier2];
  }

  else
  {
    v10 = [TIInputMode inputModeWithIdentifier:&stru_283FDFAF8];
  }

  return v10;
}

- (id)candidateContextFromDocumentStateOnly
{
  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  documentState = [keyboardState documentState];
  contextBeforeInput = [documentState contextBeforeInput];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v6 = [contextBeforeInput componentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet];

  if ([v6 count] > 0x20)
  {
    v7 = [v6 subarrayWithRange:{objc_msgSend(v6, "count") - 33, 32}];
  }

  else
  {
    v7 = v6;
  }

  v8 = v7;

  return v8;
}

- (void)deleteFromInputWithContext:(id)context
{
  contextCopy = context;
  transliteratorCandidateByMecabraCandidatePointerValue = [(TIKeyboardInputManagerTransliteration *)self transliteratorCandidateByMecabraCandidatePointerValue];
  [transliteratorCandidateByMecabraCandidatePointerValue removeAllObjects];

  committedCandidates = [(TIKeyboardInputManagerTransliteration *)self committedCandidates];
  [committedCandidates removeAllObjects];

  v7.receiver = self;
  v7.super_class = TIKeyboardInputManagerTransliteration;
  [(TIKeyboardInputManager *)&v7 deleteFromInputWithContext:contextCopy];
}

- (id)handleAcceptedCandidate:(id)candidate keyboardState:(id)state
{
  candidateCopy = candidate;
  stateCopy = state;
  if ([(TIKeyboardInputManager *)self isWordLearningEnabled])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (-[TIKeyboardInputManagerTransliteration transliteratorCandidateByMecabraCandidatePointerValue](self, "transliteratorCandidateByMecabraCandidatePointerValue"), v8 = objc_claimAutoreleasedReturnValue(), [candidateCopy mecabraCandidatePointerValue], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "objectForKey:", v9), committedCandidates2 = objc_claimAutoreleasedReturnValue(), v9, v8, committedCandidates2))
    {
      committedCandidates = [(TIKeyboardInputManagerTransliteration *)self committedCandidates];
      [committedCandidates addObject:committedCandidates2];
    }

    else
    {
      committedCandidates2 = [(TIKeyboardInputManagerTransliteration *)self committedCandidates];
      [committedCandidates2 removeAllObjects];
    }

    committedCandidates3 = [(TIKeyboardInputManagerTransliteration *)self committedCandidates];
    v13 = [committedCandidates3 count];

    if (v13 >= 0xB)
    {
      committedCandidates4 = [(TIKeyboardInputManagerTransliteration *)self committedCandidates];
      committedCandidates5 = [(TIKeyboardInputManagerTransliteration *)self committedCandidates];
      [committedCandidates4 removeObjectsInRange:{0, objc_msgSend(committedCandidates5, "count") - 10}];
    }
  }

  v18.receiver = self;
  v18.super_class = TIKeyboardInputManagerTransliteration;
  v16 = [(TIKeyboardInputManager *)&v18 handleAcceptedCandidate:candidateCopy keyboardState:stateCopy];

  return v16;
}

- (BOOL)acceptsCharacter:(unsigned int)character
{
  v3 = *&character;
  transliteratorInputCharacterSet = [objc_opt_class() transliteratorInputCharacterSet];
  LOBYTE(v3) = [transliteratorInputCharacterSet longCharacterIsMember:v3];

  return v3;
}

- (BOOL)hasInputToTransliterate
{
  inputString = [(TIKeyboardInputManager *)self inputString];
  if ([inputString length])
  {
    v4 = 1;
  }

  else
  {
    v4 = *(self->super.super.m_impl + 108) >= 0;
  }

  return v4;
}

- (void)suspend
{
  transliteratorCandidateByMecabraCandidatePointerValue = [(TIKeyboardInputManagerTransliteration *)self transliteratorCandidateByMecabraCandidatePointerValue];
  [transliteratorCandidateByMecabraCandidatePointerValue removeAllObjects];

  committedCandidates = [(TIKeyboardInputManagerTransliteration *)self committedCandidates];
  [committedCandidates removeAllObjects];

  v5.receiver = self;
  v5.super_class = TIKeyboardInputManagerTransliteration;
  [(TIKeyboardInputManager *)&v5 suspend];
}

- (void)syncToKeyboardState:(id)state from:(id)from afterContextChange:(BOOL)change
{
  changeCopy = change;
  v11.receiver = self;
  v11.super_class = TIKeyboardInputManagerTransliteration;
  stateCopy = state;
  [(TIKeyboardInputManager *)&v11 syncToKeyboardState:stateCopy from:from afterContextChange:changeCopy];
  textInputTraits = [stateCopy textInputTraits];

  keyboardType = [textInputTraits keyboardType];
  [(TIKeyboardInputManagerTransliteration *)self setPrioritizeLatinCandidates:(keyboardType & 0xFFFFFFFFFFFFFFFBLL) == 3];
}

- (id)keyEventMap
{
  keyboardState = [(TIKeyboardInputManager *)self keyboardState];
  hardwareKeyboardMode = [keyboardState hardwareKeyboardMode];

  if (hardwareKeyboardMode)
  {
    v5 = objc_alloc_init([(TIKeyboardInputManagerTransliteration *)self keyEventMapClass]);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)initImplementation
{
  v4.receiver = self;
  v4.super_class = TIKeyboardInputManagerTransliteration;
  [(TIKeyboardInputManagerTransliterationBase *)&v4 initImplementation];
  [(TIKeyboardInputManagerBase *)self inputMode];
  [objc_claimAutoreleasedReturnValue() locale];
  objc_claimAutoreleasedReturnValue();
  operator new();
}

- (TIKeyboardInputManagerTransliteration)initWithConfig:(id)config keyboardState:(id)state
{
  configCopy = config;
  v24.receiver = self;
  v24.super_class = TIKeyboardInputManagerTransliteration;
  v7 = [(TIKeyboardInputManager *)&v24 initWithConfig:configCopy keyboardState:state];
  if (v7)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    transliteratorCandidateByMecabraCandidatePointerValue = v7->_transliteratorCandidateByMecabraCandidatePointerValue;
    v7->_transliteratorCandidateByMecabraCandidatePointerValue = strongToStrongObjectsMapTable;

    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    committedCandidates = v7->_committedCandidates;
    v7->_committedCandidates = v10;

    inputMode = [configCopy inputMode];
    normalizedIdentifier = [inputMode normalizedIdentifier];
    v14 = TIInputModeGetLanguage();

    v15 = [TIInputMode inputModeWithIdentifier:v14];
    v16 = [[TIKeyboardInputManager alloc] initWithInputMode:v15 keyboardState:0];
    nativeModelManager = v7->_nativeModelManager;
    v7->_nativeModelManager = v16;

    v18 = [TIDictionaryLookup alloc];
    v19 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en"];
    v20 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v14];
    v21 = [(TIDictionaryLookup *)v18 initWithSourceLocale:v19 targetLocale:v20];
    dictionaryLookup = v7->_dictionaryLookup;
    v7->_dictionaryLookup = v21;
  }

  return v7;
}

+ (id)transliteratorInputCharacterSet
{
  if (+[TIKeyboardInputManagerTransliteration transliteratorInputCharacterSet]::__onceToken != -1)
  {
    dispatch_once(&+[TIKeyboardInputManagerTransliteration transliteratorInputCharacterSet]::__onceToken, &__block_literal_global_13560);
  }

  v3 = +[TIKeyboardInputManagerTransliteration transliteratorInputCharacterSet]::__transliteratorInputCharacterSet;

  return v3;
}

uint64_t __72__TIKeyboardInputManagerTransliteration_transliteratorInputCharacterSet__block_invoke()
{
  v0 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"];
  v1 = +[TIKeyboardInputManagerTransliteration transliteratorInputCharacterSet]::__transliteratorInputCharacterSet;
  +[TIKeyboardInputManagerTransliteration transliteratorInputCharacterSet]::__transliteratorInputCharacterSet = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end