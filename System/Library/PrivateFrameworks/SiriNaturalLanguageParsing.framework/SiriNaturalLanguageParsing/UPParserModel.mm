@interface UPParserModel
+ (UPParserModel)modelWithLoadedModelConfiguration:(id)configuration error:(id *)error;
- (UPInferenceResult)forwardWithSpanLabels:(SEL)labels embeddings:(UPGenericTensor *)embeddings utterance:(UPGenericTensor *)utterance;
- (UPParserModel)initWithLoadedModelConfiguration:(id)configuration;
- (id)_candidateForBeamSequence:(const void *)sequence utterance:(const void *)utterance outputTokens:(const void *)tokens resolver:(void *)resolver sharedEntityResolution:(id)resolution;
- (id)_candidateForUtterance:(const void *)utterance probability:(float)probability labelledSpans:(const void *)spans intent:(id)intent sharedEntityResolution:(id)resolution;
- (id)_resultFromInferenceResult:(const void *)result query:(id)query outputTokens:(const void *)tokens resolver:(void *)resolver sharedEntityResolution:(id)resolution;
- (id)predictionFromQuery:(id)query error:(id *)error;
- (id)predictionFromQuery:(id)query preprocessorOutput:(id)output error:(id *)error;
@end

@implementation UPParserModel

- (id)predictionFromQuery:(id)query preprocessorOutput:(id)output error:(id *)error
{
  v49 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  outputCopy = output;
  v9 = SNLPOSLoggerForCategory(7);
  v10 = os_signpost_id_generate(v9);

  v11 = SNLPOSLoggerForCategory(7);
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22284A000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "UaaP Prediction", "", buf, 2u);
  }

  v13 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22284A000, v13, OS_LOG_TYPE_DEFAULT, "BEGIN UaaP Prediction", buf, 2u);
  }

  v14 = [UPSharedEntityResolution alloc];
  spans = [queryCopy spans];
  v16 = [(UPSharedEntityResolution *)v14 initWithMatchingSpans:spans];

  spanLabelsTensor = [outputCopy spanLabelsTensor];
  v31 = 0;
  v32 = 0;
  v33 = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v31, *spanLabelsTensor, *(spanLabelsTensor + 8), (*(spanLabelsTensor + 8) - *spanLabelsTensor) >> 3);
  v34 = 0;
  v35 = 0;
  v36 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v34, *(spanLabelsTensor + 24), *(spanLabelsTensor + 32), (*(spanLabelsTensor + 32) - *(spanLabelsTensor + 24)) >> 2);
  embeddingsTensor = [outputCopy embeddingsTensor];
  v25 = 0;
  v26 = 0;
  v27 = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v25, *embeddingsTensor, *(embeddingsTensor + 8), (*(embeddingsTensor + 8) - *embeddingsTensor) >> 3);
  __p = 0;
  v29 = 0;
  v30 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, *(embeddingsTensor + 24), *(embeddingsTensor + 32), (*(embeddingsTensor + 32) - *(embeddingsTensor + 24)) >> 2);
  utterance = [queryCopy utterance];
  objc_msgSend_forwardWithSpanLabels_embeddings_utterance_(self);

  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }

  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }

  v20 = -[UPParserModel _resultFromInferenceResult:query:outputTokens:resolver:sharedEntityResolution:](self, "_resultFromInferenceResult:query:outputTokens:resolver:sharedEntityResolution:", buf, queryCopy, [outputCopy outputTokens], -[UPLoadedModelConfiguration resolver](self->__loadedModelConfiguration, "resolver"), v16);
  if (v47)
  {
    v48 = v47;
    operator delete(v47);
  }

  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }

  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  if (v41)
  {
    v42 = v41;
    operator delete(v41);
  }

  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }

  if (*buf)
  {
    v38 = *buf;
    operator delete(*buf);
  }

  v21 = SNLPOSLoggerForCategory(7);
  v22 = v21;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22284A000, v22, OS_SIGNPOST_INTERVAL_END, v10, "UaaP Prediction", "", buf, 2u);
  }

  v23 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22284A000, v23, OS_LOG_TYPE_DEFAULT, "END UaaP Prediction", buf, 2u);
  }

  return v20;
}

- (id)_candidateForBeamSequence:(const void *)sequence utterance:(const void *)utterance outputTokens:(const void *)tokens resolver:(void *)resolver sharedEntityResolution:(id)resolution
{
  v68 = *MEMORY[0x277D85DE8];
  resolutionCopy = resolution;
  intentVocabPath = [(UPLoadedModelConfiguration *)self->__loadedModelConfiguration intentVocabPath];
  std::string::basic_string[abi:ne200100]<0>(v56, [intentVocabPath UTF8String]);
  bioLabelsVocabPath = [(UPLoadedModelConfiguration *)self->__loadedModelConfiguration bioLabelsVocabPath];
  v14 = bioLabelsVocabPath;
  std::string::basic_string[abi:ne200100]<0>(&v58, [bioLabelsVocabPath UTF8String]);
  memset(v60, 0, sizeof(v60));
  std::vector<nl_featurization::Token>::__init_with_size[abi:ne200100]<nl_featurization::Token*,nl_featurization::Token*>(v60, *tokens, *(tokens + 1), 0xAAAAAAAAAAAAAAABLL * ((*(tokens + 1) - *tokens) >> 4));

  v49 = *(sequence + 2);
  v50 = 0;
  v51 = 0;
  v52 = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v50, *(sequence + 7), *(sequence + 8), (*(sequence + 8) - *(sequence + 7)) >> 3);
  v53 = 0;
  v54 = 0;
  v55 = 0;
  std::vector<std::optional<unsigned long>>::__init_with_size[abi:ne200100]<std::optional<unsigned long>*,std::optional<unsigned long>*>(&v53, *(sequence + 13), *(sequence + 14), (*(sequence + 14) - *(sequence + 13)) >> 4);
  nl_featurization::postprocessing::base::postProcessBaseModel(&v46, v56, &v49);
  v15 = SNLPOSLoggerForCategory(3);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    *&buf[4] = 0x4EC4EC4EC4EC4EC5 * ((v48 - v47) >> 3);
    _os_log_impl(&dword_22284A000, v15, OS_LOG_TYPE_DEBUG, "%ld", buf, 0xCu);
  }

  sequenceCopy = sequence;
  v44 = 0;
  v45 = 0uLL;
  v16 = v47;
  v17 = v48;
  while (v16 != v17)
  {
    u16Substring(utterance, *(v16 + 16), *(v16 + 24), &v43);
    uaap_orchestration::resolution::Resolver::lookupSemanticValueForLabel(resolver, (v16 + 32), &__p, &v43);
    if (v42 == 1)
    {
      v18 = *(v16 + 16);
      *buf = *v16;
      v62 = v18;
      if (*(v16 + 55) < 0)
      {
        std::basic_string<char16_t>::__init_copy_ctor_external(&v63, *(v16 + 32), *(v16 + 40));
      }

      else
      {
        v19 = *(v16 + 32);
        v63.__r_.__value_.__r.__words[2] = *(v16 + 48);
        *&v63.__r_.__value_.__l.__data_ = v19;
      }

      v25 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::basic_string<char16_t>::__init_copy_ctor_external(&v64, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        v64 = __p;
      }

      v65 = 1;
      v26 = *(v16 + 96);
      v66 = *(v16 + 88);
      v67 = v26;
      v27 = v45;
      if (v45 >= *(&v45 + 1))
      {
        v28 = std::vector<nl_featurization::postprocessing::LabelledSpan>::__emplace_back_slow_path<nl_featurization::postprocessing::LabelledSpan>(&v44, buf);
      }

      else
      {
        std::vector<nl_featurization::postprocessing::LabelledSpan>::__construct_one_at_end[abi:ne200100]<nl_featurization::postprocessing::LabelledSpan>(&v44, buf);
        v28 = v27 + 104;
      }

      *&v45 = v28;
      if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v64.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v63.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v20 = v45;
      if (v45 >= *(&v45 + 1))
      {
        v23 = 0x4EC4EC4EC4EC4EC5 * ((v45 - v44) >> 3) + 1;
        if (v23 > 0x276276276276276)
        {
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
        }

        if (0x9D89D89D89D89D8ALL * ((*(&v45 + 1) - v44) >> 3) > v23)
        {
          v23 = 0x9D89D89D89D89D8ALL * ((*(&v45 + 1) - v44) >> 3);
        }

        if ((0x4EC4EC4EC4EC4EC5 * ((*(&v45 + 1) - v44) >> 3)) >= 0x13B13B13B13B13BLL)
        {
          v24 = 0x276276276276276;
        }

        else
        {
          v24 = v23;
        }

        v63.__r_.__value_.__r.__words[0] = &v44;
        if (v24)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<nl_featurization::postprocessing::LabelledSpan>>(v24);
        }

        *buf = 0;
        *&buf[8] = 8 * ((v45 - v44) >> 3);
        v62 = *&buf[8];
        std::allocator_traits<std::allocator<nl_featurization::postprocessing::LabelledSpan>>::construct[abi:ne200100]<nl_featurization::postprocessing::LabelledSpan,nl_featurization::postprocessing::LabelledSpan const&,0>(*&buf[8], v16);
        *&v62 = v62 + 104;
        v29 = *&buf[8] + v44 - v45;
        std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nl_featurization::postprocessing::LabelledSpan>,nl_featurization::postprocessing::LabelledSpan*>(&v44, v44, v45, v29);
        v30 = v44;
        v31 = *(&v45 + 1);
        v44 = v29;
        v40 = v62;
        v45 = v62;
        *&v62 = v30;
        *(&v62 + 1) = v31;
        *buf = v30;
        *&buf[8] = v30;
        std::__split_buffer<nl_featurization::postprocessing::LabelledSpan>::~__split_buffer(buf);
        v22 = v40;
        v21 = v42;
      }

      else
      {
        std::allocator_traits<std::allocator<nl_featurization::postprocessing::LabelledSpan>>::construct[abi:ne200100]<nl_featurization::postprocessing::LabelledSpan,nl_featurization::postprocessing::LabelledSpan const&,0>(v45, v16);
        v21 = 0;
        v22 = v20 + 104;
      }

      *&v45 = v22;
      v25 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((v21 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    if (v25 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

LABEL_33:
    if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v43.__r_.__value_.__l.__data_);
    }

    v16 += 104;
  }

  v32 = *sequenceCopy;
  v33 = [UPUtilities stdU16ToNSString:&v46, v60];
  *&v34 = v32;
  v35 = [(UPParserModel *)self _candidateForUtterance:utterance probability:&v44 labelledSpans:v33 intent:resolutionCopy sharedEntityResolution:v34];

  *buf = &v44;
  std::vector<nl_featurization::postprocessing::LabelledSpan>::__destroy_vector::operator()[abi:ne200100](buf);
  *buf = &v47;
  std::vector<nl_featurization::postprocessing::LabelledSpan>::__destroy_vector::operator()[abi:ne200100](buf);
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (v53)
  {
    v54 = v53;
    operator delete(v53);
  }

  if (v50)
  {
    v51 = v50;
    operator delete(v50);
  }

  *buf = v37;
  std::vector<nl_featurization::Token>::__destroy_vector::operator()[abi:ne200100](buf);
  if (v59 < 0)
  {
    operator delete(v58);
  }

  if (v57 < 0)
  {
    operator delete(v56[0]);
  }

  return v35;
}

- (id)_resultFromInferenceResult:(const void *)result query:(id)query outputTokens:(const void *)tokens resolver:(void *)resolver sharedEntityResolution:(id)resolution
{
  v60 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  resolutionCopy = resolution;
  v9 = SNLPOSLoggerForCategory(7);
  v10 = os_signpost_id_generate(v9);

  v11 = SNLPOSLoggerForCategory(7);
  v12 = v11;
  spid = v10;
  v38 = v10 - 1;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22284A000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "UaaP Post-Processing", "", buf, 2u);
  }

  v13 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22284A000, v13, OS_LOG_TYPE_DEFAULT, "BEGIN UaaP Post-Processing", buf, 2u);
  }

  utterance = [queryCopy utterance];
  objc_msgSend_nSStringToU16String_(UPUtilities);

  beamMaskInput = [(UPLoadedModelConfiguration *)self->__loadedModelConfiguration beamMaskInput];
  v16 = 0xAAAAAAAAAAAAAAABLL * ((beamMaskInput[1] - *beamMaskInput) >> 3);
  v47 = 0;
  v48 = 0;
  v49 = 0;
  std::vector<double>::reserve(&v47, v16);
  v17 = *(result + 3);
  v18 = *(result + 4);
  while (v17 != v18)
  {
    *buf = *v17;
    std::vector<double>::push_back[abi:ne200100](&v47, buf);
    ++v17;
  }

  v20 = *tokens;
  v19 = *(tokens + 1);
  [(UPLoadedModelConfiguration *)self->__loadedModelConfiguration beamMaskInput];
  v39 = 0xAAAAAAAAAAAAAAABLL * ((v19 - v20) >> 4);
  memset(v46, 0, sizeof(v46));
  if (v19 != v20)
  {
    if (v39 <= 0xAAAAAAAAAAAAAAALL)
    {
      v55 = v46;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<double>>>(v39);
    }

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  *buf = 0.0;
  v53 = 0;
  v54 = 0;
  std::vector<double>::reserve(buf, v39);
  beamMaskInput2 = [(UPLoadedModelConfiguration *)self->__loadedModelConfiguration beamMaskInput];
  nl_featurization::beam_search::beamSearch(&v47, v46, buf, beamMaskInput2, beamMaskInput2 + 3, beamMaskInput2 + 6, (beamMaskInput2 + 9), (beamMaskInput2 + 14), __p, 5uLL);
  v22 = SNLPOSLoggerForCategory(3);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    *v56 = 134217984;
    *&v56[4] = (__p[1] - __p[0]) >> 7;
    _os_log_impl(&dword_22284A000, v22, OS_LOG_TYPE_DEBUG, "Number of BEAM sequences = %lu", v56, 0xCu);
  }

  v23 = [MEMORY[0x277CBEB18] arrayWithCapacity:(__p[1] - __p[0]) >> 7];
  for (i = __p[0]; i != __p[1]; i = (i + 128))
  {
    v25 = SNLPOSLoggerForCategory(3);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      nl_featurization::beam_search::BeamSequence::toString(i);
      v26 = v57 >= 0 ? v56 : *v56;
      *v58 = 136315138;
      v59 = v26;
      _os_log_impl(&dword_22284A000, v25, OS_LOG_TYPE_DEBUG, "Processing BEAM sequence: %s", v58, 0xCu);
      if (v57 < 0)
      {
        operator delete(*v56);
      }
    }

    v27 = [(UPParserModel *)self _candidateForBeamSequence:i utterance:&v50 outputTokens:tokens resolver:resolver sharedEntityResolution:resolutionCopy];
    v28 = SNLPOSLoggerForCategory(3);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      annotatedString = [v27 annotatedString];
      *v56 = 138412290;
      *&v56[4] = annotatedString;
      _os_log_impl(&dword_22284A000, v28, OS_LOG_TYPE_DEBUG, "Produced candidate: %@", v56, 0xCu);
    }

    [v23 addObject:v27];
  }

  v30 = SNLPOSLoggerForCategory(7);
  v31 = v30;
  if (v38 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
  {
    *v56 = 0;
    _os_signpost_emit_with_name_impl(&dword_22284A000, v31, OS_SIGNPOST_INTERVAL_END, spid, "UaaP Post-Processing", "", v56, 2u);
  }

  v32 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *v56 = 0;
    _os_log_impl(&dword_22284A000, v32, OS_LOG_TYPE_DEFAULT, "END UaaP Post-Processing", v56, 2u);
  }

  v33 = [UPResult alloc];
  uuid = [queryCopy uuid];
  v35 = [(UPResult *)v33 initWithCandidates:v23 queryUUID:uuid];

  *v56 = __p;
  std::vector<nl_featurization::beam_search::BeamSequence>::__destroy_vector::operator()[abi:ne200100](v56);
  if (*buf != 0.0)
  {
    v53 = *buf;
    operator delete(*buf);
  }

  *buf = COERCE_DOUBLE(v46);
  std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](buf);
  if (v47)
  {
    v48 = v47;
    operator delete(v47);
  }

  if (v51 < 0)
  {
    operator delete(v50);
  }

  return v35;
}

- (UPInferenceResult)forwardWithSpanLabels:(SEL)labels embeddings:(UPGenericTensor *)embeddings utterance:(UPGenericTensor *)utterance
{
  v10 = SNLPOSLoggerForCategory(7);
  v11 = os_signpost_id_generate(v10);

  v12 = SNLPOSLoggerForCategory(7);
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22284A000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "UaaP EspressoInference", "", buf, 2u);
  }

  v14 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22284A000, v14, OS_LOG_TYPE_DEFAULT, "BEGIN UaaP EspressoInference", buf, 2u);
  }

  parserEspressoModule = [(UPLoadedModelConfiguration *)self->__loadedModelConfiguration parserEspressoModule];
  uaap::EspressoModule::reshape(parserEspressoModule, utterance, embeddings);
  uaap::EspressoModule::buildPlan(parserEspressoModule);
  buf[23] = 12;
  strcpy(buf, "span_indices");
  uaap::EspressoModule::setInput(parserEspressoModule, buf, &embeddings->data, embeddings);
  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  buf[23] = 16;
  strcpy(buf, "token_embeddings");
  uaap::EspressoModule::setInput(parserEspressoModule, buf, &utterance->data, utterance);
  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  uaap::EspressoModule::executePlan(parserEspressoModule);
  std::string::basic_string[abi:ne200100]<0>(&v42, "intent_softmax");
  std::string::basic_string[abi:ne200100]<0>(&v40, "bio_labels_softmax");
  std::string::basic_string[abi:ne200100]<0>(&v38, "group_labels_softmax");
  uaap::EspressoModule::getOutput(buf);
  uaap::EspressoModule::getOutput(v31);
  uaap::EspressoModule::getOutput(v27);
  *&retstr->var0.shape.__begin_ = *buf;
  retstr->var0.shape.__cap_ = *&buf[16];
  v16 = *v36;
  v36[0] = 0;
  memset(buf, 0, sizeof(buf));
  v17 = v37;
  *&retstr->var0.data.__begin_ = v16;
  retstr->var0.data.__cap_ = v17;
  v36[1] = 0;
  v37 = 0;
  v18 = v32;
  *&retstr->var1.shape.__begin_ = *v31;
  retstr->var1.shape.__cap_ = v18;
  v31[0] = 0;
  v31[1] = 0;
  v19 = v34;
  *&retstr->var1.data.__begin_ = *v33;
  retstr->var1.data.__cap_ = v19;
  v32 = 0;
  v33[0] = 0;
  v33[1] = 0;
  v34 = 0;
  v20 = v28;
  *&retstr->var2.shape.__begin_ = *v27;
  retstr->var2.shape.__cap_ = v20;
  v27[0] = 0;
  v27[1] = 0;
  v21 = v30;
  *&retstr->var2.data.__begin_ = *__p;
  retstr->var2.data.__cap_ = v21;
  v28 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v30 = 0;
  uaap::EspressoModule::cleanPlan(parserEspressoModule);
  v22 = SNLPOSLoggerForCategory(7);
  v23 = v22;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    *v26 = 0;
    _os_signpost_emit_with_name_impl(&dword_22284A000, v23, OS_SIGNPOST_INTERVAL_END, v11, "UaaP EspressoInference", "", v26, 2u);
  }

  v24 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *v26 = 0;
    _os_log_impl(&dword_22284A000, v24, OS_LOG_TYPE_DEFAULT, "END UaaP EspressoInference", v26, 2u);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v27[0])
  {
    v27[1] = v27[0];
    operator delete(v27[0]);
  }

  if (v33[0])
  {
    v33[1] = v33[0];
    operator delete(v33[0]);
  }

  if (v31[0])
  {
    v31[1] = v31[0];
    operator delete(v31[0]);
  }

  if (v36[0])
  {
    v36[1] = v36[0];
    operator delete(v36[0]);
  }

  result = *buf;
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  if (v39 < 0)
  {
    operator delete(v38);
  }

  if (v41 < 0)
  {
    operator delete(v40);
  }

  if (v43 < 0)
  {
    operator delete(v42);
  }

  return result;
}

- (id)_candidateForUtterance:(const void *)utterance probability:(float)probability labelledSpans:(const void *)spans intent:(id)intent sharedEntityResolution:(id)resolution
{
  intentCopy = intent;
  resolutionCopy = resolution;
  array = [MEMORY[0x277CBEB18] array];
  if (*(utterance + 23) >= 0)
  {
    v11 = *(utterance + 23);
  }

  else
  {
    v11 = *(utterance + 1);
  }

  if (v11)
  {
    v12 = 0;
    v46 = v11;
    spansCopy = spans;
    do
    {
      v13 = *spans;
      v14 = *(spans + 1);
      if (*spans != v14)
      {
        v15 = 0;
        do
        {
          if (v12 == *(v13 + 16))
          {
            v15 = v13;
          }

          v13 += 104;
        }

        while (v13 != v14);
        if (v15)
        {
          u16Substring(utterance, *(v15 + 16), *(v15 + 24), &__p);
          v50 = [UPUtilities stdU16ToNSString:&__p];
          if (*(v15 + 80) == 1)
          {
            v16 = (v15 + 56);
            if (*(v15 + 79) < 0)
            {
              v16 = *v16;
            }

            if (*v16)
            {
              v17 = 0;
              do
              {
                v18 = v16 + 2 * v17++;
              }

              while (*(v18 + 1));
              if (v17 >= 0x7FFFFFFFFFFFFFF8)
              {
                std::basic_string<char16_t>::__throw_length_error[abi:ne200100]();
              }

              if (v17 >= 0xB)
              {
                if ((v17 | 3) == 0xB)
                {
                  v20 = 13;
                }

                else
                {
                  v20 = (v17 | 3) + 1;
                }

                std::__allocate_at_least[abi:ne200100]<std::allocator<char16_t>>(v20);
              }

              *(&__dst.__r_.__value_.__s + 23) = v17;
              if (v17)
              {
                memmove(&__dst, v16, 2 * v17);
              }
            }

            else
            {
              v17 = 0;
              *(&__dst.__r_.__value_.__s + 23) = 0;
            }

            *(&__dst.__r_.__value_.__l.__data_ + v17) = 0;
            v19 = [UPUtilities stdU16ToNSString:&__dst];
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            v19 = 0;
          }

          v21 = [UPUtilities stdU16ToNSString:v15 + 32];
          if (*(v15 + 96))
          {
            v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(v15 + 88)];
          }

          else
          {
            v22 = 0;
          }

          v23 = [UPUtilities rangeFromStart:*v15 end:*(v15 + 8)];
          v25 = v24;
          v26 = MEMORY[0x277CCACA8];
          toString(v15 + 32, &__dst);
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_dst = &__dst;
          }

          else
          {
            p_dst = __dst.__r_.__value_.__r.__words[0];
          }

          v28 = [v26 stringWithUTF8String:p_dst];
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          utteranceCopy = utterance;
          v30 = [resolutionCopy resolveSharedEntityForTokenRange:v23 valueType:{v25, v28}];
          v31 = [UPUtilities rangeFromStart:*(v15 + 16) end:*(v15 + 24)];
          v33 = [[UPResultCandidateEntity alloc] initWithRange:v31 label:v32 text:v21 groupId:v50 semanticValue:v22 sharedEntityGraph:v19, v30];
          [array addObject:v33];
          v36 = v15 + 16;
          v35 = *(v15 + 16);
          v34 = *(v36 + 8);

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v12 += v34 + ~v35;
          utterance = utteranceCopy;
          v11 = v46;
          spans = spansCopy;
        }
      }

      ++v12;
    }

    while (v12 < v11);
  }

  v37 = [UPUtilities stdU16ToNSString:utterance];
  usoSerializer = self->__usoSerializer;
  appBundleId = [(UPModelIdentifier *)self->_identifier appBundleId];
  v40 = [(UPUsoSerializer *)usoSerializer serializeFromIntent:intentCopy andEntities:array forBundleId:appBundleId];

  v41 = [objc_alloc(MEMORY[0x277D5F5E0]) initWithTask:v40];
  v42 = [[UPResultCandidate alloc] initWithUncalibratedProbability:0 calibratedProbability:v37 utterance:intentCopy intent:array entities:self->_identifier modelIdentifier:v41 task:probability];

  return v42;
}

- (id)predictionFromQuery:(id)query error:(id *)error
{
  queryCopy = query;
  preprocessor = [(UPLoadedModelConfiguration *)self->__loadedModelConfiguration preprocessor];
  v13 = 0;
  v8 = [preprocessor preprocess:queryCopy error:&v13];
  v9 = v13;

  if (v8)
  {
    v10 = [(UPParserModel *)self predictionFromQuery:queryCopy preprocessorOutput:v8 error:error];
  }

  else if (error)
  {
    v11 = v9;
    v10 = 0;
    *error = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (UPParserModel)initWithLoadedModelConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v6 = SNLPOSLoggerForCategory(7);
  v7 = os_signpost_id_generate(v6);

  v8 = SNLPOSLoggerForCategory(7);
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22284A000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "UaaP UPParserModelInit initWithLoadedModelConfiguration", "", buf, 2u);
  }

  v10 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22284A000, v10, OS_LOG_TYPE_DEFAULT, "BEGIN UaaP UPParserModelInit initWithLoadedModelConfiguration", buf, 2u);
  }

  v23.receiver = self;
  v23.super_class = UPParserModel;
  v11 = [(UPParserModel *)&v23 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->__loadedModelConfiguration, configuration);
    v13 = [UPModelIdentifier alloc];
    bundleId = [(UPLoadedModelConfiguration *)v12->__loadedModelConfiguration bundleId];
    v15 = [(UPModelIdentifier *)v13 initWithAppBundleId:bundleId];
    identifier = v12->_identifier;
    v12->_identifier = v15;

    v17 = objc_alloc_init(UPUsoSerializer);
    usoSerializer = v12->__usoSerializer;
    v12->__usoSerializer = v17;
  }

  v19 = SNLPOSLoggerForCategory(7);
  v20 = v19;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22284A000, v20, OS_SIGNPOST_INTERVAL_END, v7, "UaaP UPParserModelInit initWithLoadedModelConfiguration", "", buf, 2u);
  }

  v21 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22284A000, v21, OS_LOG_TYPE_DEFAULT, "END UaaP UPParserModelInit initWithLoadedModelConfiguration", buf, 2u);
  }

  return v12;
}

+ (UPParserModel)modelWithLoadedModelConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  v6 = [[UPParserModel alloc] initWithLoadedModelConfiguration:configurationCopy];
  v7 = v6;
  if (error && !v6)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA738] code:0 userInfo:0];
  }

  return v7;
}

@end