@interface SCMLTextSanitizer
+ (unsigned)violationCategoryForAdapterLabel:(id)label;
- (SCMLTextSanitizer)initWithConfiguration:(id)configuration error:(id *)error;
- (id).cxx_construct;
- (id)_sanitizeRequestAsynchronously:completionHandler:;
- (uint64_t)_sanitizeRequestAsynchronously:completionHandler:;
- (uint64_t)initWithConfiguration:error:;
- (void)_sanitizeRequestAsynchronously:(id)asynchronously completionHandler:(id)handler;
- (void)_sanitizeRequestAsynchronously:completionHandler:;
- (void)doLLMBackend:(id)backend withText:(id)text isChildPresent:(BOOL)present withResponder:(void *)responder;
- (void)initWithConfiguration:error:;
- (void)sanitizeRequestAsynchronously:(id)asynchronously completionHandler:(id)handler;
- (void)sanitizeTextAsynchronously:(id)asynchronously completionHandler:(id)handler;
@end

@implementation SCMLTextSanitizer

- (SCMLTextSanitizer)initWithConfiguration:(id)configuration error:(id *)error
{
  v46 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  scml::SignpostInterval::SignpostInterval(&v43);
  v4 = v43;
  v5 = v4;
  v6 = v44;
  if (v44 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    LOWORD(buf[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v6, "SCMLTextSanitizer.init", "", buf, 2u);
  }

  v42[0] = &unk_1F37461B0;
  v42[1] = &v43;
  v42[3] = v42;
  std::__function::__value_func<void ()(void)>::operator=[abi:ne200100](&v45, v42);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v42);
  v7 = +[SCMLLog textAnalyzer];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    locale = [configurationCopy locale];
    localeIdentifier = [locale localeIdentifier];
    mode = [configurationCopy mode];
    region = [configurationCopy region];
    backends = [configurationCopy backends];
    modelManagerServicesUseCaseID = [configurationCopy modelManagerServicesUseCaseID];
    onBehalfOfProcessID = [configurationCopy onBehalfOfProcessID];
    buf[0] = 134219523;
    *&buf[1] = self;
    v30 = 2114;
    v31 = localeIdentifier;
    v32 = 1024;
    v33 = mode;
    v34 = 1024;
    v35 = region;
    v36 = 1024;
    v37 = backends;
    v38 = 2113;
    v39 = modelManagerServicesUseCaseID;
    v40 = 1024;
    v41 = onBehalfOfProcessID;
    _os_log_impl(&dword_1B8A3C000, v7, OS_LOG_TYPE_DEFAULT, "Begin SCMLTextSanitizer init inst=%p loc=%{public}@ mode=%d region=%d backends=0x%x useCase=%{private}@ pid=%d", buf, 0x38u);
  }

  v28.receiver = self;
  v28.super_class = SCMLTextSanitizer;
  v26 = [(SCMLTextSanitizer *)&v28 init];
  if (v26)
  {
    locale2 = [configurationCopy locale];
    v16 = *(v26 + 9);
    *(v26 + 9) = locale2;

    *(v26 + 20) = [configurationCopy mode];
    *(v26 + 21) = [configurationCopy granularity];
    mode2 = [configurationCopy mode];
    backends2 = [configurationCopy backends];
    [configurationCopy region];
    if (mode2 == 2)
    {
      v19 = +[SCMLLog textAnalyzer];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [SCMLTextSanitizer initWithConfiguration:v19 error:?];
      }

      backends2 = 37;
    }

    *(v26 + 11) = backends2;
    v20 = [MEMORY[0x1E695E0F0] mutableCopy];
    v21 = *(v26 + 16);
    *(v26 + 16) = v20;

    *(v26 + 96) = [configurationCopy throwInAdapterAsyncHandler];
    objc_claimAutoreleasedReturnValue();
    operator new();
  }

  v22 = +[SCMLLog textAnalyzer];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1B8A3C000, v22, OS_LOG_TYPE_DEFAULT, "End SCMLTextSanitizer init", buf, 2u);
  }

  v27 = 0;
  scml::SignpostInterval::~SignpostInterval(&v43);

  return v27;
}

- (void)sanitizeTextAsynchronously:(id)asynchronously completionHandler:(id)handler
{
  asynchronouslyCopy = asynchronously;
  handlerCopy = handler;
  v7 = objc_alloc_init(SCMLTextSanitizerRequest);
  [(SCMLTextSanitizerRequest *)v7 setText:asynchronouslyCopy];
  [(SCMLTextSanitizer *)self sanitizeRequestAsynchronously:v7 completionHandler:handlerCopy];
}

- (void)doLLMBackend:(id)backend withText:(id)text isChildPresent:(BOOL)present withResponder:(void *)responder
{
  v17 = *MEMORY[0x1E69E9840];
  backendCopy = backend;
  textCopy = text;
  bundleID = [backendCopy bundleID];
  scml::strFromNSString(__p, bundleID);
  scml::strCat<char const(&)[47],std::string const&>("model manager query for model ", __p, v13);
  if (v16 < 0)
  {
    operator delete(*__p);
  }

  v10 = +[SCMLLog textAnalyzer];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v13;
    if (v14 < 0)
    {
      v11 = v13[0];
    }

    *__p = 136446210;
    *&__p[4] = v11;
    _os_log_impl(&dword_1B8A3C000, v10, OS_LOG_TYPE_DEFAULT, "Begin %{public}s", __p, 0xCu);
  }

  scml::SignpostInterval::createAsync(v12);
}

void __72__SCMLTextSanitizer_doLLMBackend_withText_isChildPresent_withResponder___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  v34[0] = &unk_1F37465B0;
  v34[1] = v7;
  v34[3] = v34;
  scml::Deferred::Deferred();
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v34);
  v8 = **(a1 + 48);
  v9 = v8;
  v10 = *(*(a1 + 48) + 8);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    LOWORD(__p) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v9, OS_SIGNPOST_INTERVAL_END, v10, "SCMLTextSanitizer.sanitizeText.llm_backend", "", &__p, 2u);
  }

  v11 = *(a1 + 48);
  v33[0] = &unk_1F3746630;
  v33[3] = v33;
  std::__function::__value_func<void ()(void)>::operator=[abi:ne200100](v11 + 16, v33);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v33);
  v12 = *(a1 + 48);
  if (v12)
  {
    scml::SignpostInterval::~SignpostInterval(v12);
    MEMORY[0x1B8CC7230]();
  }

  v13 = +[SCMLLog textAnalyzer];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = (a1 + 56);
    if (*(a1 + 79) < 0)
    {
      v14 = *v14;
    }

    LODWORD(__p) = 136446210;
    *(&__p + 4) = v14;
    _os_log_impl(&dword_1B8A3C000, v13, OS_LOG_TYPE_DEFAULT, "End %{public}s", &__p, 0xCu);
  }

  if (*(*(a1 + 32) + 96) == 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Forced failure");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (v5)
  {
    v15 = [v5 safe];
    v16 = [v5 labels];
    v17 = [v16 count] == 0;

    if (v17)
    {
      if (v15)
      {
LABEL_28:
        v22 = 0;
        v21 = 0;
        v15 = 1;
        goto LABEL_29;
      }

      v21 = &stru_1F374C020;
    }

    else
    {
      v18 = +[SCMLImageLabelCoder instance];
      v19 = [v5 labels];
      v20 = [v19 objectAtIndexedSubscript:0];
      v21 = [v18 encodeToP1:v20];

      if (!v21)
      {
        v22 = 0;
LABEL_29:
        v29 = [*(*(a1 + 40) + 16) updateSignal:kSCMLTextSanitizationSignalSafetyAdapter[0] withSafe:v15 withLabel:v21];
        [*(*(a1 + 40) + 16) setAdapterViolationCategory:v22];

        goto LABEL_30;
      }
    }

    v28 = [SCMLTextSanitizer violationCategoryForAdapterLabel:v21];
    v22 = v28;
    if ((*(a1 + 80) & 1) != 0 || v28 != 19)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  scml::strCat<char const(&)[47],std::string const&>("Failed ", (a1 + 56), &__p);
  v23 = *(a1 + 40);
  if ((v32 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v32 & 0x80u) == 0)
  {
    v25 = v32;
  }

  else
  {
    v25 = *(&__p + 1);
  }

  v26 = scml::error(0xFu, p_p, v25, v6);
  v27 = *(v23 + 24);
  *(v23 + 24) = v26;

  if (v32 < 0)
  {
    operator delete(__p);
  }

LABEL_30:
  scml::Deferred::~Deferred(v35);
}

- (void)sanitizeRequestAsynchronously:(id)asynchronously completionHandler:(id)handler
{
  v6 = *MEMORY[0x1E69E9840];
  asynchronouslyCopy = asynchronously;
  scml::SignpostInterval::createAsync(handler);
}

void __69__SCMLTextSanitizer_sanitizeRequestAsynchronously_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = +[SCMLLog textAnalyzer];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v5 unsafeReason];
      v9 = [*(a1 + 32) text];
      v11 = scml::strEscape(v9, v10);
      *buf = 138478339;
      v19 = v5;
      v20 = 2117;
      v21 = v8;
      v22 = 2117;
      v23 = v11;
      _os_log_impl(&dword_1B8A3C000, v7, OS_LOG_TYPE_DEFAULT, "End sanitizeText %{private}@ (%{sensitive}@): %{sensitive}@", buf, 0x20u);
    }
  }

  else
  {
    v7 = +[SCMLLog textAnalyzer];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __69__SCMLTextSanitizer_sanitizeRequestAsynchronously_completionHandler___block_invoke_cold_1(v6, v7);
    }
  }

  v12 = **(a1 + 48);
  v13 = v12;
  v14 = *(*(a1 + 48) + 8);
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v13, OS_SIGNPOST_INTERVAL_END, v14, "SCMLTextSanitizer.sanitizeText", "", buf, 2u);
  }

  v15 = *(a1 + 48);
  v17[0] = &unk_1F37466B0;
  v17[3] = v17;
  std::__function::__value_func<void ()(void)>::operator=[abi:ne200100](v15 + 16, v17);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v17);
  v16 = *(a1 + 48);
  if (v16)
  {
    scml::SignpostInterval::~SignpostInterval(v16);
    MEMORY[0x1B8CC7230]();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_sanitizeRequestAsynchronously:(id)asynchronously completionHandler:(id)handler
{
  v122 = *MEMORY[0x1E69E9840];
  asynchronouslyCopy = asynchronously;
  handlerCopy = handler;
  selfCopy = self;
  v84 = asynchronouslyCopy;
  std::mutex::lock((self + 8));
  text = [asynchronouslyCopy text];
  v8 = (*(self + 11) >> 4) & 1;
  v9 = text;
  *buf = 0;
  v10 = [_TtC26SensitiveContentAnalysisML14SCMLNormalizer normalizeText:v9 lite:v8 error:buf];
  v11 = *buf;
  v12 = v11;
  v89 = v10;
  if (!v10)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    scml::makeException("failed to normalize text", 0x18uLL, v12, exception);
  }

  keepGoing = [v84 keepGoing];
  v79 = [[SCMLTextSanitization alloc] initWithGranularOutput:*(self + 21) != 0];
  scml::SignpostInterval::SignpostInterval(&v116);
  v13 = v116;
  v14 = v13;
  v15 = v117;
  if (v117 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v15, "SCMLTextSanitizer.sanitizeText.rules", "", buf, 2u);
  }

  v115[0] = &unk_1F3746730;
  v115[1] = &v116;
  v115[3] = v115;
  std::__function::__value_func<void ()(void)>::operator=[abi:ne200100](v118, v115);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v115);
  v16 = *(self + 15);
  isPersonalized = [v84 isPersonalized];
  isChildPresent = [v84 isChildPresent];
  v77 = v79;
  v18 = scml::strTokenizeWordsForNLP(v89, v17);
  v86 = v77;
  v78 = v18;
  v19 = [v18 componentsJoinedByString:{@" ", v77}];
  if ([v19 length] > 0x3E8 || (scml::MultiwordGazetteer::fullMatchString(*(v16 + 72), v19, v20), v21 = objc_claimAutoreleasedReturnValue(), v22 = v21 == 0, v21, v22))
  {

    if (((keepGoing & 1) != 0 || [(SCMLTextSanitization *)v86 safe]) && ((*(v16 + 96) & 0x20) != 0 || *v16))
    {
      v25 = *(v16 + 80);
      v26 = [v18 componentsJoinedByString:@" "];
      v28 = scml::MultiwordGazetteer::fullMatchString(v25, v26, v27);
      v29 = v28 == 0;

      v30 = [(SCMLTextSanitization *)v86 updateSignal:kSCMLTextSanitizationSignalFullDisallow[0] withSafe:v29];
      if ((keepGoing & 1) != 0 || [(SCMLTextSanitization *)v86 safe])
      {
        if (!isPersonalized || (v31 = *(v16 + 88), [v18 componentsJoinedByString:@" "], v32 = objc_claimAutoreleasedReturnValue(), scml::MultiwordGazetteer::fullMatchString(v31, v32, v33), v34 = objc_claimAutoreleasedReturnValue(), v35 = v34 == 0, v34, v32, v36 = -[SCMLTextSanitization updateSignal:withSafe:](v86, "updateSignal:withSafe:", kSCMLTextSanitizationSignalFullPersonalization[0], v35), (keepGoing & 1) != 0) || -[SCMLTextSanitization safe](v86, "safe"))
        {
          language_modeling::v1::LinguisticContext::LinguisticContext(v95);
          std::string::basic_string[abi:ne200100]<0>(buf, "");
          LODWORD(v121) = 1;
          MEMORY[0x1B8CC6C90](v95, buf);
          if (v120 < 0)
          {
            operator delete(*buf);
          }

          v91 = 0u;
          v92 = 0u;
          v93 = 0u;
          v94 = 0u;
          obj = v18;
          v38 = [obj countByEnumeratingWithState:&v91 objects:buf count:16];
          if (v38)
          {
            hasGazeteerMatch = 0;
            v40 = 0;
            v85 = 0;
            LOBYTE(v41) = 0;
            v87 = *v92;
LABEL_21:
            v42 = 0;
            while (1)
            {
              if (*v92 != v87)
              {
                objc_enumerationMutation(obj);
              }

              v43 = *(*(&v91 + 1) + 8 * v42);
              if (*v16)
              {
                v44 = scml::MultiwordGazetteer::fullMatchString(*(v16 + 64), *(*(&v91 + 1) + 8 * v42), v37);
                v45 = v44 == 0;

                if (v45)
                {
                  v46 = v43;
                  v47 = v86;
                  v110 = 0;
                  v111 = &v110;
                  v112 = 0x2020000000;
                  v113 = 1;
                  v106 = 0;
                  v107 = &v106;
                  v108 = 0x2020000000;
                  v109 = 1;
                  v104[0] = 0;
                  v104[1] = v104;
                  v104[2] = 0x2020000000;
                  v105 = 1;
                  aBlock[0] = MEMORY[0x1E69E9820];
                  aBlock[1] = 3221225472;
                  v97 = ___ZN4scml12_GLOBAL__N_122RuleBasedTextSanitizer20updateWithOvsMatchesEP8NSStringjbP20SCMLTextSanitization_block_invoke;
                  v98 = &unk_1E7EB3D38;
                  v99 = &v110;
                  v100 = &v106;
                  v101 = v104;
                  v102 = v46;
                  v103 = keepGoing;
                  v48 = _Block_copy(aBlock);
                  LXLexiconEnumerateEntriesForString();
                  v49 = [(SCMLTextSanitization *)v47 updateSignal:kSCMLTextSanitizationSignalOVSOffensive[0] withSafe:*(v111 + 24)];
                  v50 = [(SCMLTextSanitization *)v47 updateSignal:kSCMLTextSanitizationSignalOVSVulgar[0] withSafe:*(v107 + 24)];

                  _Block_object_dispose(v104, 8);
                  _Block_object_dispose(&v106, 8);
                  _Block_object_dispose(&v110, 8);

                  if ((keepGoing & 1) == 0 && ![(SCMLTextSanitization *)v47 safe])
                  {
LABEL_59:

                    goto LABEL_65;
                  }
                }
              }

              if ((*(v16 + 96) & 0x20) == 0)
              {
                goto LABEL_53;
              }

              v51 = v38;
              v52 = v43;
              v53 = v86;
              v54 = *(v16 + 8);
              v55 = language_modeling::v1::LinguisticContext::tokenSpan(v95);
              v57 = [(SCMLTextSanitization *)v53 updateSignal:kSCMLTextSanitizationSignalCustomWords[0] withSafe:scml::MultiwordGazetteer::hasGazetteerMatch(v54, v52, v55, v56) ^ 1];
              if (isPersonalized)
              {
                v58 = *(v16 + 56);
                v59 = language_modeling::v1::LinguisticContext::tokenSpan(v95);
                v61 = [(SCMLTextSanitization *)v53 updateSignal:kSCMLTextSanitizationSignalPersonalizationBlocklist[0] withSafe:scml::MultiwordGazetteer::hasGazetteerMatch(v58, v52, v59, v60) ^ 1];
              }

              if (isChildPresent)
              {
                v62 = *(v16 + 16);
                v63 = language_modeling::v1::LinguisticContext::tokenSpan(v95);
                v65 = [(SCMLTextSanitization *)v53 updateSignal:kSCMLTextSanitizationSignalMinorBlocklist[0] withSafe:scml::MultiwordGazetteer::hasGazetteerMatch(v62, v52, v63, v64) ^ 1];
              }

              v38 = v51;
              if ((keepGoing & 1) == 0 && ![(SCMLTextSanitization *)v53 safe])
              {
                goto LABEL_59;
              }

              if (hasGazeteerMatch)
              {
                hasGazeteerMatch = 1;
                if (v40)
                {
                  goto LABEL_37;
                }
              }

              else
              {
                if (v40)
                {
LABEL_37:
                  v40 = 1;
                  goto LABEL_40;
                }
              }

LABEL_40:
              if (v85)
              {
                v66 = 1;
                if (v41)
                {
                  goto LABEL_42;
                }
              }

              else
              {
                if (v41)
                {
LABEL_42:
                  v41 = 1;
                  goto LABEL_45;
                }
              }

LABEL_45:
              if ((hasGazeteerMatch & v40) == 1)
              {
                v67 = [(SCMLTextSanitization *)v53 updateSignal:kSCMLTextSanitizationSignalDesecration[0] withSafe:0];
                if (!keepGoing)
                {
                  goto LABEL_59;
                }
              }

              if (v66)
              {
                if (v41)
                {
                  v68 = [(SCMLTextSanitization *)v53 updateSignal:kSCMLTextSanitizationSignalNationalityFlags[0] withSafe:0];
                  if (!keepGoing)
                  {
                    goto LABEL_59;
                  }

                  v85 = 1;
                  LOBYTE(v41) = 1;
                }

                else
                {
                  v85 = 1;
                }
              }

              else
              {
                v85 = 0;
              }

LABEL_53:
              scml::strFromNSString(aBlock, v43);
              LODWORD(v98) = 0;
              MEMORY[0x1B8CC6C90](v95, aBlock);
              if (SHIBYTE(v97) < 0)
              {
                operator delete(aBlock[0]);
              }

              if (v38 == ++v42)
              {
                v38 = [obj countByEnumeratingWithState:&v91 objects:buf count:16];
                if (v38)
                {
                  goto LABEL_21;
                }

                v69 = v85;
                if (hasGazeteerMatch & v40)
                {
                  goto LABEL_62;
                }

                goto LABEL_61;
              }
            }
          }

          LOBYTE(v41) = 0;
          v69 = 0;
LABEL_61:
          v70 = [(SCMLTextSanitization *)v86 updateSignal:kSCMLTextSanitizationSignalDesecration[0] withSafe:1];
LABEL_62:
          if ((v69 & 1) == 0 || (v41 & 1) == 0)
          {
            v71 = [(SCMLTextSanitization *)v86 updateSignal:kSCMLTextSanitizationSignalNationalityFlags[0] withSafe:1];
          }

LABEL_65:
          language_modeling::v1::LinguisticContext::~LinguisticContext(v95);
        }
      }
    }

    v24 = 0;
    goto LABEL_67;
  }

  v23 = [(SCMLTextSanitization *)v86 updateSignal:kSCMLTextSanitizationSignalFullAllow[0] withSafe:1];

  v24 = 1;
LABEL_67:

  v72 = v116;
  v73 = v72;
  v74 = v117;
  if (v117 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v72))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v73, OS_SIGNPOST_INTERVAL_END, v74, "SCMLTextSanitizer.sanitizeText.rules", "", buf, 2u);
  }

  v114[0] = &unk_1F37467B0;
  v114[3] = v114;
  std::__function::__value_func<void ()(void)>::operator=[abi:ne200100](v118, v114);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v114);
  if ((v24 & 1) == 0 && ((keepGoing & 1) != 0 || [(SCMLTextSanitization *)v86 safe]))
  {
    v86;
    v75 = handlerCopy;
    operator new();
  }

  (*(handlerCopy + 2))(handlerCopy, v86, 0);
  scml::SignpostInterval::~SignpostInterval(&v116);

  std::mutex::unlock((selfCopy + 8));
}

+ (unsigned)violationCategoryForAdapterLabel:(id)label
{
  v11 = *MEMORY[0x1E69E9840];
  labelCopy = label;
  scml::strFromNSString(&__p, labelCopy);
  {
    operator new();
  }

  v4 = +[SCMLTextSanitizer violationCategoryForAdapterLabel:]::violationMap;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v10 = __p;
  }

  v5 = std::__hash_table<std::__hash_value_type<std::string,ik::Tensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::Tensor>>>::find<std::string>(v4, &v10);
  v6 = v5;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
    if (v6)
    {
      goto LABEL_7;
    }
  }

  else if (v5)
  {
LABEL_7:
    v7 = *(v6 + 10);
    goto LABEL_10;
  }

  v7 = 1;
LABEL_10:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v7;
}

- (id).cxx_construct
{
  *(self + 1) = 850045863;
  *(self + 1) = 0u;
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 8) = 0;
  *(self + 14) = 0;
  *(self + 15) = 0;
  *(self + 13) = 0;
  return self;
}

- (uint64_t)initWithConfiguration:error:
{
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

- (void)initWithConfiguration:error:
{
  v2 = **(self + 8);
  v3 = v2;
  v4 = *(*(self + 8) + 8);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v3, OS_SIGNPOST_INTERVAL_END, v4, "SCMLTextSanitizer.init.llm_backend", "", v5, 2u);
  }
}

- (uint64_t)_sanitizeRequestAsynchronously:completionHandler:
{
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

- (void)_sanitizeRequestAsynchronously:completionHandler:
{

  operator delete(self);
}

- (id)_sanitizeRequestAsynchronously:completionHandler:
{
  *a2 = &unk_1F3746830;
  *(a2 + 8) = *(self + 8);
  *(a2 + 16) = *(self + 16);
  result = *(self + 24);
  *(a2 + 24) = result;
  *(a2 + 32) = *(self + 32);
  *(a2 + 36) = 0;
  *(a2 + 33) = 0;
  return result;
}

- (void)initWithConfiguration:(uint64_t)a1 error:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = (*(*a1 + 16))(a1);
  v4 = 136315138;
  v5 = v3;
  _os_log_error_impl(&dword_1B8A3C000, a2, OS_LOG_TYPE_ERROR, "End SCMLTextSanitizer init with error: %s", &v4, 0xCu);
}

void __69__SCMLTextSanitizer_sanitizeRequestAsynchronously_completionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B8A3C000, a2, OS_LOG_TYPE_ERROR, "End sanitizeText with error: %@", &v2, 0xCu);
}

@end