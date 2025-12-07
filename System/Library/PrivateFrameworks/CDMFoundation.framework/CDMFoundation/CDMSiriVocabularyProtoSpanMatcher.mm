@interface CDMSiriVocabularyProtoSpanMatcher
+ (id)convertSEMResultToNLUTypesMatchingSpan:(id)span tokenChain:(id)chain;
+ (id)convertSEMSpanResults:(id)results tokenChain:(id)chain;
+ (void)getFirstEntitySpanFromGraph:(id)graph;
- (CDMSiriVocabularyProtoSpanMatcher)initWithOverrideSpans:(id)spans;
- (CDMSiriVocabularyProtoSpanMatcher)initWithSEMSpanMatcher:(id)matcher;
- (CDMSiriVocabularyProtoSpanMatcher)initWithSandboxId:(id)id;
- (id)callSEMSpanMatcher:(id)matcher asrHypothesis:(id)hypothesis;
- (id)createFiltersForItemTypes;
- (id)getItemTypes;
- (id)matchSpansForTokenChain:(id)chain asrHypothesis:(id)hypothesis;
- (id)semSandboxId;
- (void)dealloc;
@end

@implementation CDMSiriVocabularyProtoSpanMatcher

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CDMSiriVocabularyProtoSpanMatcher;
  [(CDMSiriVocabularyProtoSpanMatcher *)&v2 dealloc];
}

- (id)matchSpansForTokenChain:(id)chain asrHypothesis:(id)hypothesis
{
  v21 = *MEMORY[0x1E69E9840];
  chainCopy = chain;
  hypothesisCopy = hypothesis;
  if (self->_overrideSpans)
  {
    v8 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v19 = 136315138;
      v20 = "[CDMSiriVocabularyProtoSpanMatcher matchSpansForTokenChain:asrHypothesis:]";
      _os_log_debug_impl(&dword_1DC287000, v8, OS_LOG_TYPE_DEBUG, "%s SiriVocabularyProtoSpanMatcher is returning override spans!", &v19, 0xCu);
    }

    v9 = self->_overrideSpans;
  }

  else
  {
    v10 = os_signpost_id_generate(CDMLogContext);
    v11 = CDMLogContext;
    v12 = v11;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v19 = 138543362;
      v20 = v14;
      _os_signpost_emit_with_name_impl(&dword_1DC287000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "SpanMatcher", "%{public}@", &v19, 0xCu);
    }

    v15 = [(CDMSiriVocabularyProtoSpanMatcher *)self callSEMSpanMatcher:chainCopy asrHypothesis:hypothesisCopy];
    v9 = [CDMSiriVocabularyProtoSpanMatcher convertSEMSpanResults:v15 tokenChain:chainCopy];
    v16 = CDMLogContext;
    v17 = v16;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      LOWORD(v19) = 0;
      _os_signpost_emit_with_name_impl(&dword_1DC287000, v17, OS_SIGNPOST_INTERVAL_END, v10, "SpanMatcher", "", &v19, 2u);
    }
  }

  return v9;
}

- (id)callSEMSpanMatcher:(id)matcher asrHypothesis:(id)hypothesis
{
  v49 = *MEMORY[0x1E69E9840];
  matcherCopy = matcher;
  hypothesisCopy = hypothesis;
  v6 = MEMORY[0x1E695DF58];
  v35 = matcherCopy;
  locale = [matcherCopy locale];
  v33 = [v6 localeWithLocaleIdentifier:locale];

  if (+[CDMFeatureFlags isPhoneticSpanMatchingEnabled])
  {
    v34 = hypothesisCopy;
    v8 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v45 = "[CDMSiriVocabularyProtoSpanMatcher callSEMSpanMatcher:asrHypothesis:]";
      _os_log_debug_impl(&dword_1DC287000, v8, OS_LOG_TYPE_DEBUG, "%s Creating SEMSpanMatchQueryBuilder with asrHypothesis for Phonetic Span Matching", buf, 0xCu);
    }
  }

  else
  {
    v8 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v45 = "[CDMSiriVocabularyProtoSpanMatcher callSEMSpanMatcher:asrHypothesis:]";
      _os_log_debug_impl(&dword_1DC287000, v8, OS_LOG_TYPE_DEBUG, "%s Creating SEMSpanMatchQueryBuilder without Phonetic Span Matching", buf, 0xCu);
    }

    v34 = 0;
  }

  v9 = objc_alloc(MEMORY[0x1E69CE400]);
  string = [matcherCopy string];
  v38 = [v9 initWithLocale:v33 originalText:string asrHypothesis:v34];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  tokens = [matcherCopy tokens];
  obj = tokens;
  v12 = [tokens countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v12)
  {
    v13 = *v41;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v41 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v40 + 1) + 8 * i);
        value = [v15 value];
        cleanValue = [v15 cleanValue];
        normalizedValues = [v15 normalizedValues];
        begin = [v15 begin];
        v20 = [v15 end];
        isSignificant = [v15 isSignificant];
        LOBYTE(v31) = [v15 isWhiteSpace];
        [v38 addTokenWithValue:value cleanValue:cleanValue normalizedValues:normalizedValues beginIndex:begin endIndex:v20 isSignificant:isSignificant isWhitespace:v31];
      }

      tokens = obj;
      v12 = [obj countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v12);
  }

  build = [v38 build];
  createFiltersForItemTypes = [(CDMSiriVocabularyProtoSpanMatcher *)self createFiltersForItemTypes];
  [build setEntityFilters:createFiltersForItemTypes];
  if (self->_semSandbox)
  {
    v24 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      semSandboxId = [(CDMSiriVocabularyProtoSpanMatcher *)self semSandboxId];
      *buf = 136315394;
      v45 = "[CDMSiriVocabularyProtoSpanMatcher callSEMSpanMatcher:asrHypothesis:]";
      v46 = 2112;
      v47 = semSandboxId;
      _os_log_debug_impl(&dword_1DC287000, v24, OS_LOG_TYPE_DEBUG, "%s SiriVocabulary matching spans with Siri Entity Matcher sandbox ID: %@", buf, 0x16u);
    }
  }

  semSpanMatcher = self->_semSpanMatcher;
  v39 = 0;
  v26 = [(SEMSpanMatcher *)semSpanMatcher matchSpans:build error:&v39];
  v27 = v39;
  if (!v26)
  {
    v28 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v45 = "[CDMSiriVocabularyProtoSpanMatcher callSEMSpanMatcher:asrHypothesis:]";
      v46 = 2112;
      v47 = v27;
      _os_log_impl(&dword_1DC287000, v28, OS_LOG_TYPE_INFO, "%s [WARN]: Nil span match results returned: %@", buf, 0x16u);
    }
  }

  return v26;
}

- (id)createFiltersForItemTypes
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(CDMSiriVocabularyProtoSpanMatcher *)self getItemTypes];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v4 = v18 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v27 count:16];
  if (v5)
  {
    v7 = 0;
    v8 = *v18;
    *&v6 = 136315650;
    v15 = v6;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v4);
        }

        intValue = [*(*(&v17 + 1) + 8 * i) intValue];

        v11 = objc_alloc(MEMORY[0x1E69CE3F0]);
        v16 = 0;
        v12 = [v11 initWithItemType:intValue error:&v16];
        v7 = v16;
        if (v7)
        {
          v13 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = v15;
            v22 = "[CDMSiriVocabularyProtoSpanMatcher createFiltersForItemTypes]";
            v23 = 1024;
            v24 = intValue;
            v25 = 2112;
            v26 = v7;
            _os_log_impl(&dword_1DC287000, v13, OS_LOG_TYPE_INFO, "%s [WARN]: SEM Filter creation error for type %d: %@", buf, 0x1Cu);
          }
        }

        else
        {
          [v3 addObject:v12];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v17 objects:v27 count:16];
    }

    while (v5);
  }

  return v3;
}

- (id)getItemTypes
{
  if ([CDMSiriVocabularyProtoSpanMatcher getItemTypes]::onceToken != -1)
  {
    dispatch_once(&[CDMSiriVocabularyProtoSpanMatcher getItemTypes]::onceToken, &__block_literal_global_10518);
  }

  v3 = [CDMSiriVocabularyProtoSpanMatcher getItemTypes]::itemTypes;

  return v3;
}

uint64_t __49__CDMSiriVocabularyProtoSpanMatcher_getItemTypes__block_invoke()
{
  -[CDMSiriVocabularyProtoSpanMatcher getItemTypes]::itemTypes = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{&unk_1F5819D68, &unk_1F5819D80, &unk_1F5819D98, &unk_1F5819DB0, &unk_1F5819DC8, &unk_1F5819DE0, &unk_1F5819DF8, &unk_1F5819E10, &unk_1F5819E28, &unk_1F5819E40, &unk_1F5819E58, &unk_1F5819E70, &unk_1F5819E88, &unk_1F5819EA0, &unk_1F5819EB8, &unk_1F5819ED0, &unk_1F5819EE8, &unk_1F5819F00, &unk_1F5819F18, &unk_1F5819F30, &unk_1F5819F48, &unk_1F5819F60, &unk_1F5819F78, &unk_1F5819F90, &unk_1F5819FA8, &unk_1F5819FC0, &unk_1F5819FD8, &unk_1F5819FF0, &unk_1F581A008, &unk_1F581A020, &unk_1F581A038, &unk_1F581A050, &unk_1F581A068, &unk_1F581A080, &unk_1F581A098, &unk_1F581A0B0, &unk_1F581A0C8, &unk_1F581A0E0, &unk_1F581A0F8, 0}];

  return MEMORY[0x1EEE66BB8]();
}

- (id)semSandboxId
{
  semSandbox = self->_semSandbox;
  if (semSandbox)
  {
    semSandbox = [semSandbox sandboxId];
    v2 = vars8;
  }

  return semSandbox;
}

- (CDMSiriVocabularyProtoSpanMatcher)initWithOverrideSpans:(id)spans
{
  spansCopy = spans;
  v9.receiver = self;
  v9.super_class = CDMSiriVocabularyProtoSpanMatcher;
  v6 = [(CDMSiriVocabularyProtoSpanMatcher *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_overrideSpans, spans);
  }

  return v7;
}

- (CDMSiriVocabularyProtoSpanMatcher)initWithSandboxId:(id)id
{
  v22 = *MEMORY[0x1E69E9840];
  idCopy = id;
  v17.receiver = self;
  v17.super_class = CDMSiriVocabularyProtoSpanMatcher;
  v5 = [(CDMSiriVocabularyProtoSpanMatcher *)&v17 init];
  if (!v5)
  {
LABEL_6:
    v13 = v5;
    goto LABEL_10;
  }

  v16 = 0;
  v6 = [MEMORY[0x1E69CE3F8] loadWithSandboxId:idCopy error:&v16];
  v7 = v16;
  semSandbox = v5->_semSandbox;
  v5->_semSandbox = v6;

  v9 = v5->_semSandbox;
  if (v9)
  {
    indexMatcher = [(SEMSandbox *)v9 indexMatcher];
    semSpanMatcher = v5->_semSpanMatcher;
    v5->_semSpanMatcher = indexMatcher;

    v12 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v19 = "[CDMSiriVocabularyProtoSpanMatcher initWithSandboxId:]";
      v20 = 2112;
      v21 = idCopy;
      _os_log_debug_impl(&dword_1DC287000, v12, OS_LOG_TYPE_DEBUG, "%s SiriVocabulary span matcher initialized with sandbox Id %@", buf, 0x16u);
    }

    goto LABEL_6;
  }

  v14 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v19 = "[CDMSiriVocabularyProtoSpanMatcher initWithSandboxId:]";
    v20 = 2112;
    v21 = v7;
    _os_log_error_impl(&dword_1DC287000, v14, OS_LOG_TYPE_ERROR, "%s [ERR]: Error when loading Siri Entity Matcher Sandbox for SiriVocabulary: %@", buf, 0x16u);
  }

  v13 = 0;
LABEL_10:

  return v13;
}

- (CDMSiriVocabularyProtoSpanMatcher)initWithSEMSpanMatcher:(id)matcher
{
  matcherCopy = matcher;
  v9.receiver = self;
  v9.super_class = CDMSiriVocabularyProtoSpanMatcher;
  v6 = [(CDMSiriVocabularyProtoSpanMatcher *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_semSpanMatcher, matcher);
  }

  return v7;
}

+ (id)convertSEMSpanResults:(id)results tokenChain:(id)chain
{
  v17 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  chainCopy = chain;
  array = [MEMORY[0x1E695DF70] array];
  v8 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v14 = "+[CDMSiriVocabularyProtoSpanMatcher convertSEMSpanResults:tokenChain:]";
    v15 = 2048;
    v16 = [resultsCopy count];
    _os_log_impl(&dword_1DC287000, v8, OS_LOG_TYPE_INFO, "%s SiriVocabulary matched %tu spanResults", buf, 0x16u);
  }

  for (i = 0; [resultsCopy count] > i; ++i)
  {
    v10 = [resultsCopy objectAtIndexedSubscript:i];
    v11 = [CDMSiriVocabularyProtoSpanMatcher convertSEMResultToNLUTypesMatchingSpan:v10 tokenChain:chainCopy];

    if (v11)
    {
      [array addObject:v11];
    }
  }

  return array;
}

+ (void)getFirstEntitySpanFromGraph:(id)graph
{
  graphCopy = graph;
  v4 = graphCopy;
  if (graphCopy && [graphCopy getCppGraph])
  {
    siri::ontology::UsoGraph::getNodes(&__p, [v4 getCppGraph]);
    v5 = __p;
    v6 = v14;
    if (__p != v14)
    {
      v7 = MEMORY[0x1E69D2618];
      do
      {
        if (v8)
        {
          siri::ontology::UsoEntityNode::getEntitySpans(&v11, v8);
          if (v12 != v11)
          {
            v9 = *v11;
            v12 = v11;
            operator delete(v11);
            goto LABEL_13;
          }

          if (v12)
          {
            v12 = v11;
            operator delete(v11);
          }
        }

        ++v5;
      }

      while (v5 != v6);
    }

    v9 = 0;
LABEL_13:
    if (__p)
    {
      v14 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)convertSEMResultToNLUTypesMatchingSpan:(id)span tokenChain:(id)chain
{
  v35 = *MEMORY[0x1E69E9840];
  spanCopy = span;
  chainCopy = chain;
  v32 = 0;
  v7 = [spanCopy toOntologyGraph:&v32];
  v30 = v32;
  if (!v7)
  {
    v8 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
      *(buf.__r_.__value_.__r.__words + 4) = "+[CDMSiriVocabularyProtoSpanMatcher convertSEMResultToNLUTypesMatchingSpan:tokenChain:]";
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2112;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v30;
      _os_log_impl(&dword_1DC287000, v8, OS_LOG_TYPE_INFO, "%s [WARN]: No ontologyGraph from spanMatchResult: %@", &buf, 0x16u);
    }
  }

  *(&v31.__r_.__value_.__s + 23) = 0;
  v31.__r_.__value_.__s.__data_[0] = 0;
  v9 = [CDMSiriVocabularyProtoSpanMatcher getFirstEntitySpanFromGraph:v7];
  if (v9)
  {
    std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&buf, (v9 + 40));
    if (v34 == 1)
    {
      std::string::operator=(&v31, &buf);
      if ((v34 & 1) != 0 && SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }
    }

    spanInfo = [spanCopy spanInfo];
    v11 = spanInfo;
    if (spanInfo)
    {
      spanRange = [spanInfo spanRange];
      v14 = v13;
      string = [chainCopy string];
      if (spanRange >= [string length])
      {
      }

      else
      {
        string2 = [chainCopy string];
        v17 = v14 > [string2 length] - spanRange;

        if (!v17)
        {
          if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v18 = &v31;
          }

          else
          {
            v18 = v31.__r_.__value_.__r.__words[0];
          }

          v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v18];
          string3 = [chainCopy string];
          v20 = [string3 substringWithRange:{spanRange, v14}];
          LODWORD(v28) = 2;
          v21 = +[CDMProtoSpanMatcherHelper buildMatchingSpanProtoWithLabel:inputStringForDebug:startTokenIndex:endTokenIndex:startCharIndex:endCharIndex:spanMatcherName:](CDMProtoSpanMatcherHelper, "buildMatchingSpanProtoWithLabel:inputStringForDebug:startTokenIndex:endTokenIndex:startCharIndex:endCharIndex:spanMatcherName:", v29, v20, [chainCopy tokenIndexFromCharacterIndex:spanRange], objc_msgSend(chainCopy, "tokenIndexFromCharacterIndex:", (spanRange + v14 - 1)) + 1, spanRange, (spanRange + v14), v28);

          v22 = objc_alloc_init(MEMORY[0x1E69D12E0]);
          v23 = objc_alloc_init(MEMORY[0x1E69D13B8]);
          [v11 matchScore];
          [v23 setMatchScore:v24];
          [v22 setSiriVocabularySpanData:v23];
          [v21 setInternalSpanData:v22];
          if (v7)
          {
            v25 = [MEMORY[0x1E69D1410] convertCppGraph:{objc_msgSend(v7, "getCppGraph")}];
            [v21 setUsoGraph:v25];
          }

          goto LABEL_28;
        }
      }

      v22 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v37.location = spanRange;
        v37.length = v14;
        v26 = NSStringFromRange(v37);
        LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
        *(buf.__r_.__value_.__r.__words + 4) = "+[CDMSiriVocabularyProtoSpanMatcher convertSEMResultToNLUTypesMatchingSpan:tokenChain:]";
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2112;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v26;
        _os_log_impl(&dword_1DC287000, v22, OS_LOG_TYPE_INFO, "%s [WARN]: Invalid SEMSpanInfo in SEMSpanMatchResult, so unable to populate SIRINLUINTERNALMatchingSpan indexes. Given range %@", &buf, 0x16u);
      }
    }

    else
    {
      v22 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
        *(buf.__r_.__value_.__r.__words + 4) = "+[CDMSiriVocabularyProtoSpanMatcher convertSEMResultToNLUTypesMatchingSpan:tokenChain:]";
        _os_log_impl(&dword_1DC287000, v22, OS_LOG_TYPE_INFO, "%s [WARN]: No valid SEMSpanInfo in SEMSpanMatchResult, so unable to populate SIRINLUINTERNALMatchingSpan indexes", &buf, 0xCu);
      }
    }

    v21 = 0;
LABEL_28:

    goto LABEL_29;
  }

  v11 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = "+[CDMSiriVocabularyProtoSpanMatcher convertSEMResultToNLUTypesMatchingSpan:tokenChain:]";
    _os_log_impl(&dword_1DC287000, v11, OS_LOG_TYPE_INFO, "%s [WARN]: No valid UsoEntitySpan in SEMSpanMatchResult graph, so unable to populate span label. Skip adding this span", &buf, 0xCu);
  }

  v21 = 0;
LABEL_29:

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  return v21;
}

@end