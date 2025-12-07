@interface CDMCATIChildService
- (BOOL)checkFBBloomFilter:(id)filter contains:(id)contains;
- (BOOL)getBloomFilterAt:(id)at;
- (BOOL)getFlatbuffersBFAt:(id)at;
- (BOOL)shouldSuppressCATIInvocationDueTo:(id)to;
- (CDMCATIChildService)initWithAssetBundle:(id)bundle;
- (id).cxx_construct;
- (id)buildCrisisSupportUserParse:(id)parse confidenceScore:(float)score;
- (id)buildLegacyBloomFilterAndExactMatchDictForInvocation:(id)invocation;
- (id)buildSocialConversationUserParse:(id)parse confidenceScore:(float)score;
- (id)buildUserParse:(id)parse confidenceScore:(float)score;
- (id)checkExactMatch:(id)match;
- (id)checkExactMatchForUtterances:(id)utterances;
- (id)checkExactMatchFromPossibleGuids:(id)guids forUtterance:(id)utterance modelType:(unint64_t)type;
- (id)createUserParse:(float)parse;
- (id)getIntentLookup;
- (id)getInvocationInferenceResults:()vector<float;
- (id)getManifestFromPath:(id)path;
- (id)getMultiturnInferenceResults:()vector<float;
- (id)getMultiturnIntentsFromSystemGaveOptions:(id)options;
- (id)getMultiturnIntentsFromSystemInformed:(id)informed;
- (id)getProductAreaName;
- (id)handle:(id)handle assetVersion:(int64_t)version;
- (id)runCATIModelInferenceWithWeights:(id)weights;
- (id)setup:(id)setup assetVersion:(int64_t)version;
- (vector<float,)getCATIEmbeddingTensor:(CDMCATIChildService *)self;
- (void)buildMultiturnFeatures:(id)features;
- (void)constructWeightMatrixForInference:(id)inference numModels:(unint64_t)models guids:(id)guids modelType:(unint64_t)type;
@end

@implementation CDMCATIChildService

- (id).cxx_construct
{
  *(self + 16) = 0;
  *(self + 17) = 0;
  return self;
}

- (id)getProductAreaName
{
  if ([(CDMCATIManifest *)self->_catiManifest usoElementId]== 2550)
  {
    return @"socialConversation";
  }

  if ([(CDMCATIManifest *)self->_catiManifest usoElementId]== 2612)
  {
    return @"crisisSupport";
  }

  return @"oldAssetsOrNewProductArea";
}

- (id)getIntentLookup
{
  getManifest = [(CDMCATIChildService *)self getManifest];
  intentLookup = [getManifest intentLookup];

  return intentLookup;
}

- (id)getManifestFromPath:(id)path
{
  pathCopy = path;
  v4 = [[CDMCATIManifest alloc] initWithPath:pathCopy];

  return v4;
}

- (BOOL)shouldSuppressCATIInvocationDueTo:(id)to
{
  toCopy = to;
  if (![toCopy hasTurnContext])
  {
    goto LABEL_7;
  }

  turnContext = [toCopy turnContext];
  hasLegacyNlContext = [turnContext hasLegacyNlContext];

  if (!hasLegacyNlContext)
  {
    goto LABEL_7;
  }

  turnContext2 = [toCopy turnContext];
  legacyNlContext = [turnContext2 legacyNlContext];
  if (![legacyNlContext dictationPrompt])
  {
    turnContext3 = [toCopy turnContext];
    legacyNlContext2 = [turnContext3 legacyNlContext];
    strictPrompt = [legacyNlContext2 strictPrompt];

    if (strictPrompt)
    {
      goto LABEL_6;
    }

LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

LABEL_6:
  v11 = 1;
LABEL_8:

  return v11;
}

- (id)createUserParse:(float)parse
{
  v5 = objc_alloc_init(MEMORY[0x1E69D1240]);
  v6 = MEMORY[0x1E69D13F8];
  v7 = objc_alloc_init(MEMORY[0x1E696AFB0]);
  v8 = [v6 convertFromUUID:v7];
  [v5 setIdA:v8];

  [v5 setProbability:parse];
  [v5 setParserId:@"com.apple.siri.cati"];
  v9 = objc_alloc_init(MEMORY[0x1E69D11A8]);
  [v9 setAlgorithm:self->_algoType];
  [v9 setParserId:4];
  [v5 setParser:v9];

  return v5;
}

- (id)buildCrisisSupportUserParse:(id)parse confidenceScore:(float)score
{
  parseCopy = parse;
  getIntentLookup = [(CDMCATIChildService *)self getIntentLookup];
  v8 = [getIntentLookup objectForKey:parseCopy];

  if (v8)
  {
    intentName = [v8 intentName];
    ensemble = [v8 ensemble];
    v11 = +[CDMCATIUSOParseHelpers buildCrisisSupportParseWithAppBundleId:guid:intentName:ensembleType:addEntitySpans:](_TtC13CDMFoundation22CDMCATIUSOParseHelpers, "buildCrisisSupportParseWithAppBundleId:guid:intentName:ensembleType:addEntitySpans:", @"com.apple.siri.cati", parseCopy, intentName, ensemble, +[CDMFeatureFlags isUsoEntitySpanEnabled]);

    v12 = objc_alloc_init(MEMORY[0x1E69D1248]);
    [v12 setTask:v11];
    v13 = objc_alloc_init(MEMORY[0x1E69D1238]);
    [v13 setUserStatedTask:v12];
    v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v13, 0}];
    *&v15 = score;
    v16 = [(CDMCATIChildService *)self createUserParse:v15];
    [v16 setUserDialogActs:v14];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)buildSocialConversationUserParse:(id)parse confidenceScore:(float)score
{
  parseCopy = parse;
  getIntentLookup = [(CDMCATIChildService *)self getIntentLookup];
  v8 = [getIntentLookup objectForKey:parseCopy];

  if (v8)
  {
    intentName = [v8 intentName];
    ensemble = [v8 ensemble];
    v11 = +[CDMCATIUSOParseHelpers buildSocialConversationParseWithAppBundleId:guid:intentName:ensembleType:addEntitySpans:](_TtC13CDMFoundation22CDMCATIUSOParseHelpers, "buildSocialConversationParseWithAppBundleId:guid:intentName:ensembleType:addEntitySpans:", @"com.apple.siri.cati", parseCopy, intentName, ensemble, +[CDMFeatureFlags isUsoEntitySpanEnabled]);

    v12 = objc_alloc_init(MEMORY[0x1E69D1248]);
    [v12 setTask:v11];
    v13 = objc_alloc_init(MEMORY[0x1E69D1238]);
    [v13 setUserStatedTask:v12];
    v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v13, 0}];
    *&v15 = score;
    v16 = [(CDMCATIChildService *)self createUserParse:v15];
    [v16 setUserDialogActs:v14];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)buildUserParse:(id)parse confidenceScore:(float)score
{
  v54 = *MEMORY[0x1E69E9840];
  parseCopy = parse;
  usoEntity = self->_usoEntity;
  if (usoEntity && [(NSString *)usoEntity length])
  {
    usoVerb = self->_usoVerb;
    if (usoVerb && [(NSString *)usoVerb length])
    {
      usoEdge = self->_usoEdge;
      if (usoEdge)
      {
        v10 = [(NSString *)usoEdge length];
        if (v10)
        {
          v11 = *(siri::ontology::getSharedUsoVocabManager(v10) + 8);
          if (v11)
          {
            atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
          }

          std::string::basic_string[abi:ne200100]<0>(&__p, -[NSString UTF8String](self->_usoEntity, "UTF8String"));
          siri::ontology::UsoVocabManager::createCustomEntityName();
          if (v51 < 0)
          {
            operator delete(__p);
          }

          std::string::basic_string[abi:ne200100]<0>(&v48, -[NSString UTF8String](self->_usoVerb, "UTF8String"));
          siri::ontology::UsoVocabManager::createCustomVerbName();
          if (v49 < 0)
          {
            operator delete(v48);
          }

          std::string::basic_string[abi:ne200100]<0>(&v46, -[NSString UTF8String](self->_usoEdge, "UTF8String"));
          siri::ontology::UsoVocabManager::createCustomEdgeName();
          if (v47 < 0)
          {
            operator delete(v46);
          }

          buf.__r_.__value_.__r.__words[0] = 0;
          LODWORD(buf.__r_.__value_.__r.__words[1]) = 0;
          MEMORY[0x1E12976A0](v45, &buf);
          TaskNode = siri::ontology::UsoGraph::createTaskNode();
          siri::ontology::oname::graph::ontology_init::Argument_task(TaskNode);
          siri::ontology::UsoGraphNode::setSuccessor();
          EntityNode = siri::ontology::UsoGraph::createEntityNode();
          siri::ontology::oname::graph::ontology_init::Argument_target(EntityNode);
          siri::ontology::UsoGraphNode::setSuccessor();
          memset(&v44, 0, sizeof(v44));
          getIntentLookup = [(CDMCATIChildService *)self getIntentLookup];
          v15 = [getIntentLookup objectForKey:parseCopy];

          if (v15)
          {
            intentName = [v15 intentName];
            v17 = intentName == 0;

            if (!v17)
            {
              intentName2 = [v15 intentName];
              v19 = intentName2;
              MEMORY[0x1E12979B0](&v44, [intentName2 UTF8String]);

              if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&buf, v44.__r_.__value_.__l.__data_, v44.__r_.__value_.__l.__size_);
              }

              else
              {
                buf = v44;
              }

              v53 = 1;
              siri::ontology::UsoGraph::createStringNode();
              if (v53 == 1 && SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(buf.__r_.__value_.__l.__data_);
              }

              siri::ontology::UsoGraphNode::setSuccessor();
              _ZNSt3__111make_uniqueB8ne200100IN4siri8ontology13UsoEntitySpanEJELi0EEENS_10unique_ptrIT_NS_14default_deleteIS5_EEEEDpOT0_(&v43);
            }
          }

          std::string::basic_string[abi:ne200100]<0>(&buf, [&stru_1F5800F50 UTF8String]);
          v53 = 1;
          siri::ontology::UsoGraph::createStringNode();
          if (v53 == 1 && SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          siri::ontology::UsoGraphNode::setSuccessor();
          getManifest = [(CDMCATIChildService *)self getManifest];
          isPreGuidVersion = [getManifest isPreGuidVersion];

          if (isPreGuidVersion)
          {
            v24 = CDMOSLoggerForCategory(0);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
              *(buf.__r_.__value_.__r.__words + 4) = "[CDMCATIChildService buildUserParse:confidenceScore:]";
              _os_log_impl(&dword_1DC287000, v24, OS_LOG_TYPE_INFO, "%s No intent GUIDs available in assets to attach to CATIResponse.", &buf, 0xCu);
            }
          }

          else
          {
            v26 = parseCopy;
            std::string::basic_string[abi:ne200100]<0>(v41, [parseCopy UTF8String]);
            std::string::basic_string[abi:ne200100]<0>(&v38, [@"com.apple.siri.cati" UTF8String]);
            std::string::basic_string[abi:ne200100]<0>(&buf, [*MEMORY[0x1E69D2468] UTF8String]);
            v53 = 1;
            LOBYTE(v43) = 0;
            BYTE4(v43) = 0;
            siri::ontology::UsoEntityNode::addIdentifier();
            if (v53 == 1 && SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf.__r_.__value_.__l.__data_);
            }

            if (v40 < 0)
            {
              operator delete(v38);
            }

            if (v42 < 0)
            {
              operator delete(v41[0]);
            }
          }

          if (v15)
          {
            intentName3 = [v15 intentName];
            v28 = intentName3 == 0;

            if (!v28)
            {
              intentName4 = [v15 intentName];
              v30 = intentName4;
              MEMORY[0x1E12979B0](&v44, [intentName4 UTF8String]);

              std::string::basic_string[abi:ne200100]<0>(v41, [@"com.apple.siri.cati" UTF8String]);
              std::string::basic_string[abi:ne200100]<0>(&buf, [*MEMORY[0x1E69D2480] UTF8String]);
              v53 = 1;
              LOBYTE(v38) = 0;
              v39 = 0;
              siri::ontology::UsoEntityNode::addIdentifier();
              if (v53 == 1 && SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(buf.__r_.__value_.__l.__data_);
              }

              if (v42 < 0)
              {
                operator delete(v41[0]);
              }

              if (+[CDMFeatureFlags isUsoEntitySpanEnabled])
              {
                _ZNSt3__111make_uniqueB8ne200100IN4siri8ontology13UsoEntitySpanEJELi0EEENS_10unique_ptrIT_NS_14default_deleteIS5_EEEEDpOT0_(v41);
              }
            }

            ensemble = [v15 ensemble];
            v32 = ensemble == 0;

            if (!v32)
            {
              ensemble2 = [v15 ensemble];
              v34 = ensemble2;
              std::string::basic_string[abi:ne200100]<0>(v41, [ensemble2 UTF8String]);
              std::string::basic_string[abi:ne200100]<0>(&v38, [@"com.apple.siri.cati" UTF8String]);
              std::string::basic_string[abi:ne200100]<0>(&buf, [*MEMORY[0x1E69D2460] UTF8String]);
              v53 = 1;
              LOBYTE(v43) = 0;
              BYTE4(v43) = 0;
              siri::ontology::UsoEntityNode::addIdentifier();
              if (v53 == 1 && SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(buf.__r_.__value_.__l.__data_);
              }

              if (v40 < 0)
              {
                operator delete(v38);
              }

              if (v42 < 0)
              {
                operator delete(v41[0]);
              }

              if (+[CDMFeatureFlags isUsoEntitySpanEnabled])
              {
                _ZNSt3__111make_uniqueB8ne200100IN4siri8ontology13UsoEntitySpanEJELi0EEENS_10unique_ptrIT_NS_14default_deleteIS5_EEEEDpOT0_(&v38);
              }
            }
          }

          *&v25 = score;
          v35 = [MEMORY[0x1E696AD98] numberWithFloat:v25];
          stringValue = [v35 stringValue];
          v37 = stringValue;
          std::string::basic_string[abi:ne200100]<0>(v41, [stringValue UTF8String]);

          std::string::basic_string[abi:ne200100]<0>(&v38, [@"com.apple.siri.cati" UTF8String]);
          buf.__r_.__value_.__s.__data_[0] = 0;
          v53 = 0;
          LOBYTE(v43) = 0;
          BYTE4(v43) = 0;
          siri::ontology::UsoEntityNode::addIdentifier();
          if (v53 == 1 && SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          if (v40 < 0)
          {
            operator delete(v38);
          }

          if (+[CDMFeatureFlags isUsoEntitySpanEnabled])
          {
            _ZNSt3__111make_uniqueB8ne200100IN4siri8ontology13UsoEntitySpanEJELi0EEENS_10unique_ptrIT_NS_14default_deleteIS5_EEEEDpOT0_(&buf);
          }

          sirinluexternal::UsoGraph::UsoGraph(&buf);
          siri::ontology::UsoGraphProtoWriter::toProtobuf();
          operator new();
        }
      }

      v20 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
        *(buf.__r_.__value_.__r.__words + 4) = "[CDMCATIChildService buildUserParse:confidenceScore:]";
        _os_log_error_impl(&dword_1DC287000, v20, OS_LOG_TYPE_ERROR, "%s [ERR]: CATI did not have a valid usoEdge. Please check the manifest to ensure that this value exists", &buf, 0xCu);
      }
    }

    else
    {
      v20 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
        *(buf.__r_.__value_.__r.__words + 4) = "[CDMCATIChildService buildUserParse:confidenceScore:]";
        _os_log_error_impl(&dword_1DC287000, v20, OS_LOG_TYPE_ERROR, "%s [ERR]: CATI did not have a valid usoVerb. Please check the manifest to ensure that this value exists", &buf, 0xCu);
      }
    }
  }

  else
  {
    v20 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = "[CDMCATIChildService buildUserParse:confidenceScore:]";
      _os_log_error_impl(&dword_1DC287000, v20, OS_LOG_TYPE_ERROR, "%s [ERR]: CATI did not have a valid usoEntity. Please check the manifest to ensure that this value exists", &buf, 0xCu);
    }
  }

  return 0;
}

- (id)getMultiturnInferenceResults:()vector<float
{
  v5 = objc_alloc_init(CATILogisticsRegressionModel);
  v9 = 0;
  v10 = 0;
  __p = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, a3->var0, a3->var1, a3->var1 - a3->var0);
  v6 = [(CATILogisticsRegressionModel *)v5 getBestIntent:&__p numberOfModels:self->_numMultiturnModels weightMatrix:&self->_multiturnWeightPtr guids:self->_multiturnGUIDs usoEdgeKey:self->_usoEdge];
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  return v6;
}

- (id)getInvocationInferenceResults:()vector<float
{
  v5 = objc_alloc_init(CATILogisticsRegressionModel);
  v9 = 0;
  v10 = 0;
  __p = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, a3->var0, a3->var1, a3->var1 - a3->var0);
  v6 = [(CATILogisticsRegressionModel *)v5 getBestIntent:&__p numberOfModels:self->_numModels weightMatrix:&self->_weightPtr guids:self->_invocationGUIDs usoEdgeKey:self->_usoEdge];
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  return v6;
}

- (vector<float,)getCATIEmbeddingTensor:(CDMCATIChildService *)self
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a4;
  embeddingDimensionCATI = self->_embeddingDimensionCATI;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  if (embeddingDimensionCATI)
  {
    std::vector<float>::__vallocate[abi:ne200100](retstr, embeddingDimensionCATI);
  }

  if ([v6 hasNumToken])
  {
    numToken = [v6 numToken];
    v9 = self->_embeddingDimensionCATI;
    if (v9 >= 1)
    {
      v10 = numToken;
      v11 = 0;
      v12 = numToken;
      var0 = retstr->var0;
      do
      {
        if (v10)
        {
          v14 = 0;
          v15 = 0.0;
          do
          {
            values = [v6 values];
            v9 = self->_embeddingDimensionCATI;
            v15 = v15 + *(values + 4 * v9 * v14++ + 4 * v11);
          }

          while (v10 != v14);
        }

        else
        {
          v15 = 0.0;
        }

        var0[v11++] = v15 / v12;
      }

      while (v9 > v11);
    }
  }

  else
  {
    v17 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v19 = 136315138;
      v20 = "[CDMCATIChildService getCATIEmbeddingTensor:]";
      _os_log_error_impl(&dword_1DC287000, v17, OS_LOG_TYPE_ERROR, "%s [ERR]: NLv4EmbeddingTensor has numToken with a value of zero, returning empty CATI embeddingTensor.", &v19, 0xCu);
    }
  }

  return result;
}

- (id)runCATIModelInferenceWithWeights:(id)weights
{
  v94 = *MEMORY[0x1E69E9840];
  objc_msgSend_getCATIEmbeddingTensor_(self, a2, weights);
  if (!self->_multiturnEnabled || !self->_multiturnWeightsEnabled)
  {
    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v73 = 0;
    v74 = 0;
    v75 = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v73, v82, v83, (v83 - v82) >> 2);
    v4 = [(CDMCATIChildService *)self getInvocationInferenceResults:&v73];

    if (v73)
    {
      v74 = v73;
      operator delete(v73);
    }

    v16 = [v4 valueForKey:@"confidence_score"];
    [v16 floatValue];
    v18 = v17;

    if (v18 > self->_confidenceThreshold)
    {
      v19 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *&v20 = v18;
        v21 = [MEMORY[0x1E696AD98] numberWithFloat:v20];
        stringValue = [v21 stringValue];
        *&v23 = self->_confidenceThreshold;
        v24 = [MEMORY[0x1E696AD98] numberWithFloat:v23];
        stringValue2 = [v24 stringValue];
        *buf = 136315650;
        v85 = "[CDMCATIChildService runCATIModelInferenceWithWeights:]";
        v86 = 2112;
        v87 = stringValue;
        v88 = 2112;
        v89 = stringValue2;
        _os_log_impl(&dword_1DC287000, v19, OS_LOG_TYPE_INFO, "%s Invocation inference score is over the threshold: %@ > %@.", buf, 0x20u);
      }

      goto LABEL_15;
    }

    v27 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *&v28 = v18;
      v29 = [MEMORY[0x1E696AD98] numberWithFloat:v28];
      stringValue3 = [v29 stringValue];
      *&v31 = self->_confidenceThreshold;
      v32 = [MEMORY[0x1E696AD98] numberWithFloat:v31];
      stringValue4 = [v32 stringValue];
      *buf = 136315650;
      v85 = "[CDMCATIChildService runCATIModelInferenceWithWeights:]";
      v86 = 2112;
      v87 = stringValue3;
      v88 = 2112;
      v89 = stringValue4;
      _os_log_impl(&dword_1DC287000, v27, OS_LOG_TYPE_INFO, "%s Invocation inference score is under the threshold: %@ < %@.", buf, 0x20u);
    }

    goto LABEL_19;
  }

  __p = 0;
  v80 = 0;
  v81 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, v82, v83, (v83 - v82) >> 2);
  v4 = [(CDMCATIChildService *)self getMultiturnInferenceResults:&__p];
  if (__p)
  {
    v80 = __p;
    operator delete(__p);
  }

  v5 = [v4 valueForKey:@"confidence_score"];
  [v5 floatValue];
  v7 = v6;

  if (v7 > self->_multiturnConfidenceThreshold)
  {
    v8 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *&v9 = v7;
      v10 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
      stringValue5 = [v10 stringValue];
      *&v12 = self->_multiturnConfidenceThreshold;
      v13 = [MEMORY[0x1E696AD98] numberWithFloat:v12];
      stringValue6 = [v13 stringValue];
      *buf = 136315650;
      v85 = "[CDMCATIChildService runCATIModelInferenceWithWeights:]";
      v86 = 2112;
      v87 = stringValue5;
      v88 = 2112;
      v89 = stringValue6;
      _os_log_impl(&dword_1DC287000, v8, OS_LOG_TYPE_INFO, "%s Multiturn inference score is over the threshold: %@ > %@.", buf, 0x20u);
    }

LABEL_15:
    v4 = v4;
    v26 = v4;
    goto LABEL_20;
  }

  if (!self->_invocationWeightsEnabled)
  {
    v51 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
    {
      *&v52 = v7;
      v53 = [MEMORY[0x1E696AD98] numberWithFloat:v52];
      stringValue7 = [v53 stringValue];
      *&v55 = self->_multiturnConfidenceThreshold;
      v56 = [MEMORY[0x1E696AD98] numberWithFloat:v55];
      stringValue8 = [v56 stringValue];
      *buf = 136315650;
      v85 = "[CDMCATIChildService runCATIModelInferenceWithWeights:]";
      v86 = 2112;
      v87 = stringValue7;
      v88 = 2112;
      v89 = stringValue8;
      _os_log_impl(&dword_1DC287000, v51, OS_LOG_TYPE_INFO, "%s CATI multiturn inference score is under the threshold: %@ < %@. Inference for invocation is not enabled.", buf, 0x20u);
    }

LABEL_19:
    v26 = 0;
    goto LABEL_20;
  }

  v35 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v76 = 0;
  v77 = 0;
  v78 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v76, v82, v83, (v83 - v82) >> 2);
  v36 = [(CDMCATIChildService *)self getInvocationInferenceResults:&v76];

  if (v76)
  {
    v77 = v76;
    operator delete(v76);
  }

  v37 = [v36 valueForKey:@"confidence_score"];
  [v37 floatValue];
  v39 = v38;

  if (v39 <= self->_confidenceThreshold)
  {
    v58 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
    {
      *&v59 = v7;
      v70 = [MEMORY[0x1E696AD98] numberWithFloat:v59];
      stringValue9 = [v70 stringValue];
      *&v60 = self->_multiturnConfidenceThreshold;
      v61 = [MEMORY[0x1E696AD98] numberWithFloat:v60];
      stringValue10 = [v61 stringValue];
      *&v63 = v39;
      v64 = [MEMORY[0x1E696AD98] numberWithFloat:v63];
      stringValue11 = [v64 stringValue];
      *&v66 = self->_confidenceThreshold;
      v67 = [MEMORY[0x1E696AD98] numberWithFloat:v66];
      stringValue12 = [v67 stringValue];
      *buf = 136316162;
      v85 = "[CDMCATIChildService runCATIModelInferenceWithWeights:]";
      v86 = 2112;
      v87 = stringValue9;
      v88 = 2112;
      v89 = stringValue10;
      v90 = 2112;
      v91 = stringValue11;
      v92 = 2112;
      v93 = stringValue12;
      _os_log_impl(&dword_1DC287000, v58, OS_LOG_TYPE_INFO, "%s Multiturn inference score is under the threshold: %@ < %@. CATI invocation inference score is also under the threshold: %@ < %@.", buf, 0x34u);
    }

    v26 = 0;
  }

  else
  {
    v40 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      *&v41 = v7;
      v69 = [MEMORY[0x1E696AD98] numberWithFloat:v41];
      stringValue13 = [v69 stringValue];
      *&v42 = self->_multiturnConfidenceThreshold;
      v43 = [MEMORY[0x1E696AD98] numberWithFloat:v42];
      stringValue14 = [v43 stringValue];
      *&v45 = v39;
      v46 = [MEMORY[0x1E696AD98] numberWithFloat:v45];
      stringValue15 = [v46 stringValue];
      *&v48 = self->_confidenceThreshold;
      v49 = [MEMORY[0x1E696AD98] numberWithFloat:v48];
      stringValue16 = [v49 stringValue];
      *buf = 136316162;
      v85 = "[CDMCATIChildService runCATIModelInferenceWithWeights:]";
      v86 = 2112;
      v87 = stringValue13;
      v88 = 2112;
      v89 = stringValue14;
      v90 = 2112;
      v91 = stringValue15;
      v92 = 2112;
      v93 = stringValue16;
      _os_log_impl(&dword_1DC287000, v40, OS_LOG_TYPE_INFO, "%s Multiturn inference score is under the threshold: %@ < %@. CATI invocation inference score is over the threshold: %@ > %@.", buf, 0x34u);
    }

    v26 = v36;
  }

LABEL_20:
  if (v82)
  {
    v83 = v82;
    operator delete(v82);
  }

  return v26;
}

- (id)checkExactMatchFromPossibleGuids:(id)guids forUtterance:(id)utterance modelType:(unint64_t)type
{
  v36 = *MEMORY[0x1E69E9840];
  guidsCopy = guids;
  utteranceCopy = utterance;
  if (![guidsCopy count])
  {
    v25 = 0;
    goto LABEL_22;
  }

  getManifest = [(CDMCATIChildService *)self getManifest];
  v9 = [getManifest getPositiveOverrideGuidsForModelType:type];

  v10 = 0;
  *&v11 = 136315650;
  v24 = v11;
  while (1)
  {
    if ([guidsCopy count] <= v10)
    {
      v25 = 0;
      goto LABEL_21;
    }

    v12 = [guidsCopy objectAtIndexedSubscript:v10];
    if ([v9 containsObject:v12])
    {
      break;
    }

LABEL_17:

    ++v10;
  }

  v13 = [v12 stringByAppendingString:@".json"];
  getPosOverridesDirectoryPath = [(CDMCATIChildService *)self getPosOverridesDirectoryPath];
  v15 = [getPosOverridesDirectoryPath stringByAppendingPathComponent:v13];

  v29 = 0;
  v16 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v15 options:0 error:&v29];
  v17 = v29;
  v18 = v17;
  if (!v16 || v17)
  {
    v19 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = v24;
      v31 = "[CDMCATIChildService checkExactMatchFromPossibleGuids:forUtterance:modelType:]";
      v32 = 2112;
      v33 = v15;
      v34 = 2112;
      v35 = v18;
      _os_log_error_impl(&dword_1DC287000, v19, OS_LOG_TYPE_ERROR, "%s [ERR]: Unable to find or process file (%@) due to %@", buf, 0x20u);
    }
  }

  else
  {
    v28 = 0;
    v19 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v16 options:0 error:&v28];
    v18 = v28;
    if (v19)
    {
      v20 = [v19 valueForKey:utteranceCopy];
      if (v20)
      {
        v25 = [v19 valueForKey:utteranceCopy];

        v21 = 0;
        goto LABEL_16;
      }
    }

    else
    {
      v22 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = v24;
        v31 = "[CDMCATIChildService checkExactMatchFromPossibleGuids:forUtterance:modelType:]";
        v32 = 2112;
        v33 = v15;
        v34 = 2112;
        v35 = v18;
        _os_log_error_impl(&dword_1DC287000, v22, OS_LOG_TYPE_ERROR, "%s [ERR]: Error parsing JSON in file %@: %@", buf, 0x20u);
      }
    }
  }

  v21 = 1;
LABEL_16:

  if (v21)
  {
    goto LABEL_17;
  }

LABEL_21:
LABEL_22:

  return v25;
}

- (id)checkExactMatch:(id)match
{
  v36 = *MEMORY[0x1E69E9840];
  matchCopy = match;
  v5 = [matchCopy dataUsingEncoding:4];
  if (!self->_multiturnEnabled || ([(CDMCATIChildService *)self checkExactMatchFromPossibleGuids:self->_multiturnEnabledExactMatchIntents forUtterance:matchCopy modelType:1], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if (self->_isLegacyCATIOverrideSystem && [(CATIBloomFilter *)self->_positiveOverridesInvocationBloomFilterLegacy contains:v5])
    {
      v6 = [(NSDictionary *)self->_positiveOverridesDictionary valueForKey:matchCopy];
      goto LABEL_34;
    }

    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (self->_isFlatbuffersCATIOverrideSystem)
    {
      v8 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v35 = "[CDMCATIChildService checkExactMatch:]";
        _os_log_debug_impl(&dword_1DC287000, v8, OS_LOG_TYPE_DEBUG, "%s Using Flatbuffers BF override system", buf, 0xCu);
      }

      general_bf = [(FLTCDMCATIBloomFilters *)self->_fbBloomFilters general_bf];
      v10 = [(CDMCATIChildService *)self checkFBBloomFilter:general_bf contains:v5];

      if (!v10)
      {
        goto LABEL_33;
      }

      [(FLTCDMCATIBloomFilters *)self->_fbBloomFilters array_bf];
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v11 = v29 = 0u;
      v12 = [(NSArray *)v11 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v12)
      {
        v13 = *v29;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v29 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = *(*(&v28 + 1) + 8 * i);
            if ([(CDMCATIChildService *)self checkFBBloomFilter:v15 contains:v5])
            {
              name = [v15 name];
              [v7 addObject:name];
            }
          }

          v12 = [(NSArray *)v11 countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v12);
      }
    }

    else
    {
      v17 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v35 = "[CDMCATIChildService checkExactMatch:]";
        _os_log_debug_impl(&dword_1DC287000, v17, OS_LOG_TYPE_DEBUG, "%s Using JSON BF override system", buf, 0xCu);
      }

      if (![self->_positiveOverridesInvocationBloomFilter containsWithData:v5])
      {
        goto LABEL_33;
      }

      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v11 = self->_positiveOverridesInvocationIndividualBloomFilters;
      v18 = [(NSArray *)v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v18)
      {
        v19 = *v25;
        do
        {
          for (j = 0; j != v18; ++j)
          {
            if (*v25 != v19)
            {
              objc_enumerationMutation(v11);
            }

            v21 = *(*(&v24 + 1) + 8 * j);
            if ([v21 containsWithData:{v5, v24}])
            {
              name2 = [v21 name];
              [v7 addObject:name2];
            }
          }

          v18 = [(NSArray *)v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
        }

        while (v18);
      }
    }

LABEL_33:
    v6 = [(CDMCATIChildService *)self checkExactMatchFromPossibleGuids:v7 forUtterance:matchCopy modelType:0, v24];
  }

LABEL_34:

  return v6;
}

- (BOOL)checkFBBloomFilter:(id)filter contains:(id)contains
{
  filterCopy = filter;
  containsCopy = contains;
  v7 = +[MurmurHash3 hash128WithKey:length:seed:](MurmurHash3, "hash128WithKey:length:seed:", [containsCopy bytes], objc_msgSend(containsCopy, "length"), objc_msgSend(filterCopy, "seed"));
  v9 = v8;
  v15 = containsCopy;
  v10 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 1;
  while ([filterCopy number:v15 of:?hashes] > v10)
  {
    v20[0] = 0;
    v20[1] = v20;
    v20[2] = 0x2020000000;
    v20[3] = (v7 + v9 * v10) % [filterCopy number_of_bits];
    bit_vector = [filterCopy bit_vector];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __51__CDMCATIChildService_checkFBBloomFilter_contains___block_invoke;
    v16[3] = &unk_1E862EC88;
    v18 = v20;
    v12 = bit_vector;
    v17 = v12;
    v19 = &v21;
    [v12 data:v16];

    _Block_object_dispose(v20, 8);
    ++v10;
  }

  v13 = *(v22 + 24);
  _Block_object_dispose(&v21, 8);

  return v13;
}

unint64_t __51__CDMCATIChildService_checkFBBloomFilter_contains___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*(a1 + 40) + 8) + 24);
  v4 = *(a2 + (v3 >> [*(a1 + 32) bit_shift]));
  v5 = *(*(*(a1 + 40) + 8) + 24);
  result = [*(a1 + 32) bits_per_block];
  if (((v4 >> (v5 % result)) & 1) == 0)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  return result;
}

- (id)checkExactMatchForUtterances:(id)utterances
{
  v21 = *MEMORY[0x1E69E9840];
  utterancesCopy = utterances;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    normalisedUtterance = [utterancesCopy normalisedUtterance];
    v17 = 136315394;
    v18 = "[CDMCATIChildService checkExactMatchForUtterances:]";
    v19 = 2112;
    v20 = normalisedUtterance;
    _os_log_debug_impl(&dword_1DC287000, v5, OS_LOG_TYPE_DEBUG, "%s CATI normalized utterance: %@", &v17, 0x16u);
  }

  v6 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    originalUtterance = [utterancesCopy originalUtterance];
    v17 = 136315394;
    v18 = "[CDMCATIChildService checkExactMatchForUtterances:]";
    v19 = 2112;
    v20 = originalUtterance;
    _os_log_debug_impl(&dword_1DC287000, v6, OS_LOG_TYPE_DEBUG, "%s CATI original utterance: %@", &v17, 0x16u);
  }

  if ([utterancesCopy hasOriginalUtterance])
  {
    originalUtterance2 = [utterancesCopy originalUtterance];
    lowercaseString = [originalUtterance2 lowercaseString];

    v9 = [(CDMCATIChildService *)self checkExactMatch:lowercaseString];
  }

  else
  {
    v9 = 0;
  }

  hasNormalisedUtterance = [utterancesCopy hasNormalisedUtterance];
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = hasNormalisedUtterance;
  }

  if (v11 == 1)
  {
    normalisedUtterance2 = [utterancesCopy normalisedUtterance];
    lowercaseString2 = [normalisedUtterance2 lowercaseString];

    v9 = [(CDMCATIChildService *)self checkExactMatch:lowercaseString2];
  }

  return v9;
}

- (id)handle:(id)handle assetVersion:(int64_t)version
{
  v65 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  v7 = os_signpost_id_generate(CDMLogContext);
  v8 = CDMLogContext;
  v9 = v8;
  spid = v7;
  v10 = v7 - 1;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    getProductAreaName = [(CDMCATIChildService *)self getProductAreaName];
    *buf = 138412290;
    v58 = getProductAreaName;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "CATI", "invokeHandle (%@)", buf, 0xCu);
  }

  if ([(CDMCATIChildService *)self isMultiTurnEnabled])
  {
    v12 = os_signpost_id_generate(CDMLogContext);
    v13 = CDMLogContext;
    v14 = v13;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      getProductAreaName2 = [(CDMCATIChildService *)self getProductAreaName];
      *buf = 138412290;
      v58 = getProductAreaName2;
      _os_signpost_emit_with_name_impl(&dword_1DC287000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "CATI", "buildMultiTurnFeatures (%@)", buf, 0xCu);
    }

    request = [handleCopy request];
    turnInput = [request turnInput];
    [(CDMCATIChildService *)self buildMultiturnFeatures:turnInput];

    v18 = CDMLogContext;
    v19 = v18;
    if (v12 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1DC287000, v19, OS_SIGNPOST_INTERVAL_END, v12, "CATI", "", buf, 2u);
    }

    if (self->_multiturnEnabled)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v20 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v58 = "[CDMCATIChildService handle:assetVersion:]";
      _os_log_impl(&dword_1DC287000, v20, OS_LOG_TYPE_INFO, "%s [WARN]: Multiturn is disabled", buf, 0xCu);
    }

    self->_multiturnEnabled = 0;
  }

  request2 = [handleCopy request];
  turnInput2 = [request2 turnInput];
  v23 = [(CDMCATIChildService *)self shouldSuppressCATIInvocationDueTo:turnInput2];

  if (v23)
  {
    v24 = CDMLogContext;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      getProductAreaName3 = [(CDMCATIChildService *)self getProductAreaName];
      *buf = 136315650;
      v58 = "[CDMCATIChildService handle:assetVersion:]";
      v59 = 2112;
      v60 = @"cati";
      v61 = 2112;
      v62 = getProductAreaName3;
      _os_log_debug_impl(&dword_1DC287000, v24, OS_LOG_TYPE_DEBUG, "%s [insights-cdm-%@]:\n%@: CATI suppressed due to previous non-CATI turn info, return empty hypothesis", buf, 0x20u);
    }

    v25 = CDMLogContext;
    v26 = v25;
    if (v10 >= 0xFFFFFFFFFFFFFFFELL || !os_signpost_enabled(v25))
    {
      goto LABEL_57;
    }

    *buf = 0;
    goto LABEL_22;
  }

LABEL_23:
  v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
  request3 = [handleCopy request];
  v28 = [(CDMCATIChildService *)self checkExactMatchForUtterances:request3];

  if (!v28)
  {
    if (!self->_invocationWeightsEnabled && !self->_multiturnWeightsEnabled)
    {
      v48 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
      {
        getProductAreaName4 = [(CDMCATIChildService *)self getProductAreaName];
        *buf = 136315394;
        v58 = "[CDMCATIChildService handle:assetVersion:]";
        v59 = 2112;
        v60 = getProductAreaName4;
        _os_log_debug_impl(&dword_1DC287000, v48, OS_LOG_TYPE_DEBUG, "%s %@: There were no override matches and no weights to run inference on so we are returning an empty response.", buf, 0x16u);
      }

      v49 = CDMLogContext;
      v50 = v49;
      if (v10 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v49))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1DC287000, v50, OS_SIGNPOST_INTERVAL_END, spid, "CATI", "", buf, 2u);
      }

      goto LABEL_57;
    }

    request4 = [handleCopy request];
    embeddings = [request4 embeddings];
    v34 = [(CDMCATIChildService *)self runCATIModelInferenceWithWeights:embeddings];

    if (v34)
    {
      v28 = [v34 valueForKey:self->_usoEdge];
      v35 = [v34 valueForKey:@"confidence_score"];
      [v35 floatValue];
      v30 = v36;

      v31 = 2;
      v26 = v34;
      goto LABEL_29;
    }

    v46 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
    {
      getProductAreaName5 = [(CDMCATIChildService *)self getProductAreaName];
      *buf = 136315394;
      v58 = "[CDMCATIChildService handle:assetVersion:]";
      v59 = 2112;
      v60 = getProductAreaName5;
      _os_log_debug_impl(&dword_1DC287000, v46, OS_LOG_TYPE_DEBUG, "%s %@: There were no override matches and the inference results were below the threshold, so we are returning an empty response.", buf, 0x16u);
    }

    v47 = CDMLogContext;
    v26 = v47;
    if (v10 >= 0xFFFFFFFFFFFFFFFELL || !os_signpost_enabled(v47))
    {
LABEL_57:
      v40 = 0;
      goto LABEL_58;
    }

    *buf = 0;
LABEL_22:
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v26, OS_SIGNPOST_INTERVAL_END, spid, "CATI", "", buf, 2u);
    goto LABEL_57;
  }

  v30 = 1.0;
  v31 = 1;
LABEL_29:
  self->_algoType = v31;
  if (version > 3199)
  {
    usoElementId = [(CDMCATIManifest *)self->_catiManifest usoElementId];
    if (usoElementId == 2550)
    {
      *&v39 = v30;
      v37 = [(CDMCATIChildService *)self buildSocialConversationUserParse:v28 confidenceScore:v39];
    }

    else
    {
      *&v39 = v30;
      if (usoElementId == 2612)
      {
        [(CDMCATIChildService *)self buildCrisisSupportUserParse:v28 confidenceScore:v39];
      }

      else
      {
        [(CDMCATIChildService *)self buildUserParse:v28 confidenceScore:v39];
      }
      v37 = ;
    }
  }

  else
  {
    *&v29 = v30;
    v37 = [(CDMCATIChildService *)self buildUserParse:v28 confidenceScore:v29];
  }

  v40 = v37;
  v41 = CDMLogContext;
  v42 = os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG);
  if (v40)
  {
    if (v42)
    {
      getProductAreaName6 = [(CDMCATIChildService *)self getProductAreaName];
      *buf = 136315906;
      v58 = "[CDMCATIChildService handle:assetVersion:]";
      v59 = 2112;
      v60 = @"cati";
      v61 = 2112;
      v62 = getProductAreaName6;
      v63 = 2112;
      v64 = v40;
      _os_log_debug_impl(&dword_1DC287000, v41, OS_LOG_TYPE_DEBUG, "%s [insights-cdm-%@]:\n%@ CATI hypothesis: %@", buf, 0x2Au);
    }
  }

  else if (v42)
  {
    getProductAreaName7 = [(CDMCATIChildService *)self getProductAreaName];
    *buf = 136315650;
    v58 = "[CDMCATIChildService handle:assetVersion:]";
    v59 = 2112;
    v60 = @"cati";
    v61 = 2112;
    v62 = getProductAreaName7;
    _os_log_debug_impl(&dword_1DC287000, v41, OS_LOG_TYPE_DEBUG, "%s [insights-cdm-%@]:\n%@: no CATI hypothesis", buf, 0x20u);
  }

  v44 = CDMLogContext;
  v45 = v44;
  if (v10 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v44))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v45, OS_SIGNPOST_INTERVAL_END, spid, "CATI", "", buf, 2u);
  }

LABEL_58:

  return v40;
}

- (id)getMultiturnIntentsFromSystemInformed:(id)informed
{
  v52 = *MEMORY[0x1E69E9840];
  informedCopy = informed;
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  entities = [informedCopy entities];
  if (entities && [entities count])
  {
    for (i = 0; [entities count] > i; ++i)
    {
      v32 = [entities objectAtIndex:?];
      nodes = [v32 nodes];
      if (!nodes || ![nodes count])
      {
        goto LABEL_42;
      }

      v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
      for (j = 0; [nodes count] > j; ++j)
      {
        v5 = [nodes objectAtIndex:j];
        if ([v5 usoElementId] == self->_usoElementId || (objc_msgSend(v5, "entityLabel"), v6 = objc_claimAutoreleasedReturnValue(), -[CDMCATIChildService getManifest](self, "getManifest"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "usoEntity"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v6, "isEqualToString:", v8), v8, v7, v6, v9))
        {
          v10 = [MEMORY[0x1E696AD98] numberWithInt:j];
          [v41 addObject:v10];
        }
      }

      identifiers = [v32 identifiers];
      for (k = 0; [identifiers count] > k; ++k)
      {
        v12 = [identifiers objectAtIndex:k];
        value = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v12, "nodeIndex")}];
        if ([v41 containsObject:value])
        {
          hasValue = [v12 hasValue];

          if (!hasValue)
          {
            goto LABEL_19;
          }

          value = [v12 value];
          [v3 addObject:value];
        }

LABEL_19:
      }

      if (+[CDMFeatureFlags isUsoEntitySpanEnabled])
      {
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        obj = [v32 spans];
        v15 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
        if (v15)
        {
          v39 = *v47;
          do
          {
            v40 = v15;
            for (m = 0; m != v40; ++m)
            {
              if (*v47 != v39)
              {
                objc_enumerationMutation(obj);
              }

              v17 = *(*(&v46 + 1) + 8 * m);
              v18 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v17, "nodeIndex")}];
              v19 = [v41 containsObject:v18];

              if (v19)
              {
                v44 = 0u;
                v45 = 0u;
                v42 = 0u;
                v43 = 0u;
                properties = [v17 properties];
                v21 = [properties countByEnumeratingWithState:&v42 objects:v50 count:16];
                if (v21)
                {
                  v22 = *v43;
                  do
                  {
                    for (n = 0; n != v21; ++n)
                    {
                      if (*v43 != v22)
                      {
                        objc_enumerationMutation(properties);
                      }

                      v24 = *(*(&v42 + 1) + 8 * n);
                      if ([v24 hasValueString])
                      {
                        valueString = [v24 valueString];
                        value2 = [valueString value];
                        v27 = [v3 containsObject:value2];

                        if ((v27 & 1) == 0)
                        {
                          valueString2 = [v24 valueString];
                          value3 = [valueString2 value];
                          [v3 addObject:value3];
                        }
                      }
                    }

                    v21 = [properties countByEnumeratingWithState:&v42 objects:v50 count:16];
                  }

                  while (v21);
                }
              }
            }

            v15 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
          }

          while (v15);
        }
      }

LABEL_42:
    }
  }

  return v3;
}

- (id)getMultiturnIntentsFromSystemGaveOptions:(id)options
{
  v52 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  choices = [optionsCopy choices];
  if (choices && [choices count])
  {
    for (i = 0; [choices count] > i; ++i)
    {
      v32 = [choices objectAtIndex:?];
      if (![v32 hasUserStatedTask])
      {
        goto LABEL_44;
      }

      userStatedTask = [v32 userStatedTask];
      task = [userStatedTask task];

      nodes = [task nodes];
      if (!nodes || ![nodes count])
      {
        goto LABEL_43;
      }

      v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
      for (j = 0; [nodes count] > j; ++j)
      {
        v6 = [nodes objectAtIndex:j];
        if ([v6 usoElementId] == self->_usoElementId || (objc_msgSend(v6, "entityLabel"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", self->_usoEntity), v7, v8))
        {
          v9 = [MEMORY[0x1E696AD98] numberWithInt:j];
          [v41 addObject:v9];
        }
      }

      identifiers = [task identifiers];
      for (k = 0; [identifiers count] > k; ++k)
      {
        v11 = [identifiers objectAtIndex:k];
        value = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v11, "nodeIndex")}];
        if ([v41 containsObject:value])
        {
          hasValue = [v11 hasValue];

          if (!hasValue)
          {
            goto LABEL_20;
          }

          value = [v11 value];
          [v3 addObject:value];
        }

LABEL_20:
      }

      if (+[CDMFeatureFlags isUsoEntitySpanEnabled])
      {
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        obj = [task spans];
        v14 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
        if (v14)
        {
          v39 = *v47;
          do
          {
            v40 = v14;
            for (m = 0; m != v40; ++m)
            {
              if (*v47 != v39)
              {
                objc_enumerationMutation(obj);
              }

              v16 = *(*(&v46 + 1) + 8 * m);
              v17 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v16, "nodeIndex")}];
              v18 = [v41 containsObject:v17];

              if (v18)
              {
                v44 = 0u;
                v45 = 0u;
                v42 = 0u;
                v43 = 0u;
                properties = [v16 properties];
                v20 = [properties countByEnumeratingWithState:&v42 objects:v50 count:16];
                if (v20)
                {
                  v21 = *v43;
                  do
                  {
                    for (n = 0; n != v20; ++n)
                    {
                      if (*v43 != v21)
                      {
                        objc_enumerationMutation(properties);
                      }

                      v23 = *(*(&v42 + 1) + 8 * n);
                      if ([v23 hasValueString])
                      {
                        valueString = [v23 valueString];
                        value2 = [valueString value];
                        v26 = [v3 containsObject:value2];

                        if ((v26 & 1) == 0)
                        {
                          valueString2 = [v23 valueString];
                          value3 = [valueString2 value];
                          [v3 addObject:value3];
                        }
                      }
                    }

                    v20 = [properties countByEnumeratingWithState:&v42 objects:v50 count:16];
                  }

                  while (v20);
                }
              }
            }

            v14 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
          }

          while (v14);
        }
      }

LABEL_43:
LABEL_44:
    }
  }

  return v3;
}

- (void)buildMultiturnFeatures:(id)features
{
  v44 = *MEMORY[0x1E69E9840];
  featuresCopy = features;
  self->_multiturnEnabled = 0;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  turnContext = [featuresCopy turnContext];
  hasNlContext = [turnContext hasNlContext];

  if (hasNlContext)
  {
    turnContext2 = [featuresCopy turnContext];
    nlContext = [turnContext2 nlContext];
    systemDialogActs = [nlContext systemDialogActs];

    if (systemDialogActs && [systemDialogActs count])
    {
      for (i = 0; [systemDialogActs count] > i; ++i)
      {
        v12 = [systemDialogActs objectAtIndex:i];
        if ([v12 hasGaveOptions])
        {
          v13 = objc_alloc(MEMORY[0x1E695DFA8]);
          gaveOptions = [v12 gaveOptions];
          v15 = [(CDMCATIChildService *)self getMultiturnIntentsFromSystemGaveOptions:gaveOptions];
          v16 = [v13 initWithSet:v15];
        }

        else
        {
          if (![v12 hasInformed])
          {
            goto LABEL_11;
          }

          v17 = objc_alloc(MEMORY[0x1E695DFA8]);
          gaveOptions = [v12 informed];
          v15 = [(CDMCATIChildService *)self getMultiturnIntentsFromSystemInformed:gaveOptions];
          v16 = [v17 initWithSet:v15];
        }

        v18 = v16;

        v5 = v18;
LABEL_11:
      }
    }

    getManifest = [(CDMCATIChildService *)self getManifest];
    v20 = [getManifest getPositiveOverrideGuidsForModelType:1];
    [v5 intersectSet:v20];
  }

  if ([v5 count])
  {
    self->_multiturnEnabled = 1;
    allObjects = [v5 allObjects];
    multiturnEnabledExactMatchIntents = self->_multiturnEnabledExactMatchIntents;
    self->_multiturnEnabledExactMatchIntents = allObjects;

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v35 = [defaultManager contentsOfDirectoryAtPath:self->_weightsDirectoryPath error:0];

    getManifest2 = [(CDMCATIChildService *)self getManifest];
    v34 = [getManifest2 getWeightGuidsForModelType:1];

    v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v26 = os_signpost_id_generate(CDMLogContext);
    v27 = CDMLogContext;
    v28 = v27;
    if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
    {
      getProductAreaName = [(CDMCATIChildService *)self getProductAreaName];
      *buf = 138412290;
      v43 = getProductAreaName;
      _os_signpost_emit_with_name_impl(&dword_1DC287000, v28, OS_SIGNPOST_INTERVAL_BEGIN, v26, "CATI", "processMultiTurnWeightFiles (%@)", buf, 0xCu);
    }

    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __46__CDMCATIChildService_buildMultiturnFeatures___block_invoke;
    v37[3] = &unk_1E862EC60;
    v30 = v35;
    v38 = v30;
    v31 = v34;
    v39 = v31;
    v40 = v5;
    v32 = v25;
    v41 = v32;
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __46__CDMCATIChildService_buildMultiturnFeatures___block_invoke_2;
    v36[3] = &__block_descriptor_40_e5_v8__0l;
    v36[4] = v26;
    [v30 enumerateTaskParallelly:v37 blockCompleteAllTask:v36];
    self->_multiturnWeightsEnabled = 0;
    v33 = [v32 count];
    self->_numMultiturnModels = v33;
    if (v33)
    {
      operator new[]();
    }
  }
}

void __46__CDMCATIChildService_buildMultiturnFeatures___block_invoke(id *a1)
{
  v4 = [a1[4] objectAtIndex:?];
  v2 = [v4 componentsSeparatedByString:@"."];
  v3 = [v2 objectAtIndex:0];
  if ([a1[5] containsObject:v3] && objc_msgSend(a1[6], "containsObject:", v3))
  {
    [a1[7] addObject:v4];
  }
}

void __46__CDMCATIChildService_buildMultiturnFeatures___block_invoke_2(uint64_t a1)
{
  v2 = CDMLogContext;
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CATI", "", v5, 2u);
  }
}

- (id)buildLegacyBloomFilterAndExactMatchDictForInvocation:(id)invocation
{
  invocationCopy = invocation;
  expectedPositiveUtterances = self->_expectedPositiveUtterances;
  getManifest = [(CDMCATIChildService *)self getManifest];
  v7 = [getManifest getPositiveOverrideGuidsForModelType:0];

  if (expectedPositiveUtterances == -1)
  {
    expectedPositiveUtterances = 100 * [v7 count];
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__2016;
  v29 = __Block_byref_object_dispose__2017;
  v30 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__2016;
  v23 = __Block_byref_object_dispose__2017;
  v24 = [[CATIBloomFilter alloc] initWithExceptedNumberOfItems:expectedPositiveUtterances falsePositiveRate:1234 seed:0.01];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __76__CDMCATIChildService_buildLegacyBloomFilterAndExactMatchDictForInvocation___block_invoke;
  v13[3] = &unk_1E862EC38;
  v8 = invocationCopy;
  v14 = v8;
  selfCopy = self;
  v9 = v7;
  v16 = v9;
  v17 = &v25;
  v18 = &v19;
  [v8 enumerateTaskParallelly:v13 blockCompleteAllTask:&__block_literal_global_434];
  v10 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v26[5]];
  [(CDMCATIChildService *)self setPositiveOverridesDictionary:v10];

  if ([(NSDictionary *)self->_positiveOverridesDictionary count])
  {
    self->_invocationOverridesEnabled = 1;
    self->_isLegacyCATIOverrideSystem = 1;
  }

  v11 = v20[5];

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v11;
}

void __76__CDMCATIChildService_buildLegacyBloomFilterAndExactMatchDictForInvocation___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v18 = [*(a1 + 32) objectAtIndex:?];
  v2 = [*(a1 + 40) getPosOverridesDirectoryPath];
  v3 = [v2 stringByAppendingPathComponent:v18];

  v24 = 0;
  v17 = v3;
  v4 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v3 options:0 error:&v24];
  v5 = v24;
  if (v4)
  {
    v23 = v5;
    v6 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v4 options:0 error:&v23];
    v15 = v23;

    if (v6)
    {
      v16 = [v18 componentsSeparatedByString:@"."];
      v7 = [v16 objectAtIndex:0];
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        if ([*(a1 + 48) containsObject:{v7, v15}])
        {
          v21 = 0u;
          v22 = 0u;
          v19 = 0u;
          v20 = 0u;
          v8 = v6;
          v9 = [v8 countByEnumeratingWithState:&v19 objects:v25 count:16];
          if (v9)
          {
            v10 = *v20;
            do
            {
              for (i = 0; i != v9; ++i)
              {
                if (*v20 != v10)
                {
                  objc_enumerationMutation(v8);
                }

                v12 = *(*(&v19 + 1) + 8 * i);
                [*(*(*(a1 + 56) + 8) + 40) setValue:v7 forKey:v12];
                v13 = *(*(*(a1 + 64) + 8) + 40);
                v14 = [v12 dataUsingEncoding:4];
                [v13 add:v14];
              }

              v9 = [v8 countByEnumeratingWithState:&v19 objects:v25 count:16];
            }

            while (v9);
          }
        }
      }
    }

    else
    {
      v16 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v27 = "[CDMCATIChildService buildLegacyBloomFilterAndExactMatchDictForInvocation:]_block_invoke";
        v28 = 2112;
        v29 = v18;
        v30 = 2112;
        v31 = v15;
        _os_log_error_impl(&dword_1DC287000, v16, OS_LOG_TYPE_ERROR, "%s [ERR]: Error parsing JSON in file %@: %@", buf, 0x20u);
      }
    }

    v5 = v15;
  }

  else
  {
    v6 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v27 = "[CDMCATIChildService buildLegacyBloomFilterAndExactMatchDictForInvocation:]_block_invoke";
      v28 = 2112;
      v29 = v18;
      v30 = 2112;
      v31 = v5;
      _os_log_error_impl(&dword_1DC287000, v6, OS_LOG_TYPE_ERROR, "%s [ERR]: Unable to find or process file (%@) due to %@", buf, 0x20u);
    }
  }
}

- (BOOL)getBloomFilterAt:(id)at
{
  v26 = *MEMORY[0x1E69E9840];
  atCopy = at;
  v5 = [atCopy stringByAppendingPathComponent:@"general.bf"];
  v21 = 0;
  v6 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v5 options:0 error:&v21];
  v7 = v21;
  if (v7)
  {
    v8 = v7;
    v9 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "[CDMCATIChildService getBloomFilterAt:]";
      v24 = 2112;
      v25 = v8;
      _os_log_error_impl(&dword_1DC287000, v9, OS_LOG_TYPE_ERROR, "%s [ERR]: CATI: Error parsing General Bloom Filter: %@", buf, 0x16u);
    }

    v10 = 0;
  }

  else
  {
    v11 = objc_alloc_init(_TtC13CDMFoundation27BloomFilterObjectiveCHelper);
    v20 = 0;
    v9 = [(BloomFilterObjectiveCHelper *)v11 getDecodedBFWithData:v6 error:&v20];
    v8 = v20;

    [atCopy stringByAppendingPathComponent:@"array.bf"];
    v17 = v19 = 0;
    v12 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v17 options:0 error:&v19];
    v13 = v19;
    if (v13)
    {
      v14 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v23 = "[CDMCATIChildService getBloomFilterAt:]";
        v24 = 2112;
        v25 = v13;
        _os_log_error_impl(&dword_1DC287000, v14, OS_LOG_TYPE_ERROR, "%s [ERR]: CATI: Error parsing Array Bloom Filter: %@", buf, 0x16u);
      }

      v10 = 0;
    }

    else
    {
      v15 = objc_alloc_init(_TtC13CDMFoundation27BloomFilterObjectiveCHelper);
      v18 = 0;
      v14 = [(BloomFilterObjectiveCHelper *)v15 getDecodedBFArrayWithData:v12 error:&v18];
      v13 = v18;

      v10 = 0;
      if (v9 && v14)
      {
        self->_invocationOverridesEnabled = 1;
        objc_storeStrong(&self->_positiveOverridesInvocationBloomFilter, v9);
        objc_storeStrong(&self->_positiveOverridesInvocationIndividualBloomFilters, v14);
        v10 = 1;
      }
    }
  }

  return v10;
}

- (BOOL)getFlatbuffersBFAt:(id)at
{
  atCopy = at;
  v5 = [atCopy stringByAppendingString:@"/FBBF.bin"];
  v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:v5];
  v10 = 0;
  v7 = [MEMORY[0x1E69D1108] getCATIBloomFiltersFromFileURL:v6 error:&v10];
  v8 = v10;
  if (v7)
  {
    self->_invocationOverridesEnabled = 1;
    self->_isFlatbuffersCATIOverrideSystem = 1;
    objc_storeStrong(&self->_fbBloomFilters, v7);
  }

  return v7 != 0;
}

- (void)constructWeightMatrixForInference:(id)inference numModels:(unint64_t)models guids:(id)guids modelType:(unint64_t)type
{
  inferenceCopy = inference;
  for (i = guids; models; --models)
  {
    [i addObject:@"0"];
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __83__CDMCATIChildService_constructWeightMatrixForInference_numModels_guids_modelType___block_invoke;
  v14[3] = &unk_1E862EC10;
  v12 = inferenceCopy;
  v15 = v12;
  selfCopy = self;
  v13 = i;
  v17 = v13;
  typeCopy = type;
  [v12 enumerateTaskParallelly:v14 blockCompleteAllTask:&__block_literal_global_421];
}

void __83__CDMCATIChildService_constructWeightMatrixForInference_numModels_guids_modelType___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 32) objectAtIndex:?];
  v22 = [v5 componentsSeparatedByString:@"."];
  v24 = [v22 objectAtIndex:0];
  v6 = [*(*(a1 + 40) + 56) stringByAppendingPathComponent:v5];
  v7 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v6];
  v25 = 0;
  v8 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v7 options:0 error:&v25];
  v23 = v25;
  if (v8)
  {
    [*(a1 + 48) replaceObjectAtIndex:a3 withObject:v24];
    v9 = [v8 objectAtIndex:0];
    v10 = [v9 count];
    if (v10 != *(*(a1 + 40) + 16))
    {
      v11 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v20 = [*(a1 + 40) getProductAreaName];
        v21 = *(*(a1 + 40) + 16);
        *buf = 136315906;
        v27 = "[CDMCATIChildService constructWeightMatrixForInference:numModels:guids:modelType:]_block_invoke";
        v28 = 2112;
        v29 = v20;
        v30 = 1024;
        *v31 = v21;
        *&v31[4] = 2112;
        *&v31[6] = v5;
        _os_log_error_impl(&dword_1DC287000, v11, OS_LOG_TYPE_ERROR, "%s [ERR]: %@: Weight vector doesn't have size %d in file %@", buf, 0x26u);
      }

      v10 = *(*(a1 + 40) + 16);
    }

    if (v10 >= 1)
    {
      v12 = 0;
      while (1)
      {
        v13 = [v9 objectAtIndex:v12];
        v14 = v13;
        v15 = *(a1 + 56);
        if (v15 == 1)
        {
          break;
        }

        if (!v15)
        {
          [v13 floatValue];
          v17 = 128;
          v18 = 224;
LABEL_12:
          *(*(*(a1 + 40) + v17) + 4 * *(*(a1 + 40) + 16) * a3 + 4 * v12) = v16;
          *(*(a1 + 40) + v18) = 1;
        }

        if (*(*(a1 + 40) + 16) <= ++v12)
        {
          goto LABEL_17;
        }
      }

      [v13 floatValue];
      v17 = 136;
      v18 = 226;
      goto LABEL_12;
    }
  }

  else
  {
    v9 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v19 = [*(a1 + 40) getProductAreaName];
      *buf = 136315906;
      v27 = "[CDMCATIChildService constructWeightMatrixForInference:numModels:guids:modelType:]_block_invoke";
      v28 = 2112;
      v29 = v19;
      v30 = 2112;
      *v31 = v5;
      *&v31[8] = 2112;
      *&v31[10] = v23;
      _os_log_impl(&dword_1DC287000, v9, OS_LOG_TYPE_INFO, "%s %@: Error parsing JSON for CATI Weight Matrix named %@: %@", buf, 0x2Au);
    }
  }

LABEL_17:
}

- (id)setup:(id)setup assetVersion:(int64_t)version
{
  v75 = *MEMORY[0x1E69E9840];
  setupCopy = setup;
  v6 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    resourcePath = [(NSBundle *)self->_catiAssetBundle resourcePath];
    *buf = 136315394;
    v72 = "[CDMCATIChildService setup:assetVersion:]";
    v73 = 2112;
    v74 = resourcePath;
    _os_log_impl(&dword_1DC287000, v6, OS_LOG_TYPE_INFO, "%s Setting up child service at this path:%@", buf, 0x16u);
  }

  resourcePath2 = [(NSBundle *)self->_catiAssetBundle resourcePath];
  v9 = [resourcePath2 stringByAppendingPathComponent:@"cati_manifest.json"];
  manifestPath = self->_manifestPath;
  self->_manifestPath = v9;

  v11 = [(CDMCATIChildService *)self getManifestFromPath:self->_manifestPath];
  catiManifest = self->_catiManifest;
  self->_catiManifest = v11;

  v13 = os_signpost_id_generate(CDMLogContext);
  v14 = CDMLogContext;
  v15 = v14;
  v16 = v13 - 1;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    getProductAreaName = [(CDMCATIChildService *)self getProductAreaName];
    *buf = 138412290;
    v72 = getProductAreaName;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "CATI", "setupChildService (%@)", buf, 0xCu);
  }

  v18 = self->_catiManifest;
  if (v18 && [(CDMCATIManifest *)v18 manifestValid])
  {
    dynamicConfig = [setupCopy dynamicConfig];
    embeddingConfigs = [dynamicConfig embeddingConfigs];

    v62 = [embeddingConfigs getEmbeddingConfigForFactor:@"com.apple.siri.nl.cati"];
    embeddingModelDimension = [v62 embeddingModelDimension];
    self->_embeddingDimensionCATI = [embeddingModelDimension integerValue];

    self->_embeddingDimensionCATIPlusOne = self->_embeddingDimensionCATI + 1;
    resourcePath3 = [(NSBundle *)self->_catiAssetBundle resourcePath];
    v22 = [resourcePath3 stringByAppendingPathComponent:@"positive_overrides"];
    posOverridesDirectoryPath = self->_posOverridesDirectoryPath;
    self->_posOverridesDirectoryPath = v22;

    resourcePath4 = [(NSBundle *)self->_catiAssetBundle resourcePath];
    v25 = [resourcePath4 stringByAppendingPathComponent:@"weights"];
    weightsDirectoryPath = self->_weightsDirectoryPath;
    self->_weightsDirectoryPath = v25;

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v65 = [defaultManager contentsOfDirectoryAtPath:self->_weightsDirectoryPath error:0];

    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    getPosOverridesDirectoryPath = [(CDMCATIChildService *)self getPosOverridesDirectoryPath];
    v64 = [defaultManager2 contentsOfDirectoryAtPath:getPosOverridesDirectoryPath error:0];

    usoEntity = [(CDMCATIManifest *)self->_catiManifest usoEntity];
    usoEntity = self->_usoEntity;
    self->_usoEntity = usoEntity;

    self->_usoElementId = [(CDMCATIManifest *)self->_catiManifest usoElementId];
    usoVerb = [(CDMCATIManifest *)self->_catiManifest usoVerb];
    usoVerb = self->_usoVerb;
    self->_usoVerb = usoVerb;

    usoEdge = [(CDMCATIManifest *)self->_catiManifest usoEdge];
    usoEdge = self->_usoEdge;
    self->_usoEdge = usoEdge;

    [(CDMCATIManifest *)self->_catiManifest confidenceScoreThreshold];
    self->_confidenceThreshold = v36;
    [(CDMCATIManifest *)self->_catiManifest multiturnConfidenceScoreThreshold];
    self->_multiturnConfidenceThreshold = v37;
    self->_expectedPositiveUtterances = [(CDMCATIManifest *)self->_catiManifest expectedPositiveUtterances];
    if ([v65 count])
    {
      getManifest = [(CDMCATIChildService *)self getManifest];
      v61 = [getManifest getWeightGuidsForModelType:0];

      v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v67[0] = MEMORY[0x1E69E9820];
      v67[1] = 3221225472;
      v67[2] = __42__CDMCATIChildService_setup_assetVersion___block_invoke;
      v67[3] = &unk_1E862EBE8;
      v68 = v65;
      v69 = v61;
      v40 = v39;
      v70 = v40;
      [v68 enumerateTaskParallelly:v67 blockCompleteAllTask:&__block_literal_global_2039];
      self->_numModels = [v40 count];
      operator new[]();
    }

    v44 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      getProductAreaName2 = [(CDMCATIChildService *)self getProductAreaName];
      *buf = 136315394;
      v72 = "[CDMCATIChildService setup:assetVersion:]";
      v73 = 2112;
      v74 = getProductAreaName2;
      _os_log_debug_impl(&dword_1DC287000, v44, OS_LOG_TYPE_DEBUG, "%s %@: There are no weight files for this product area. CATI will run only on overrides, if available", buf, 0x16u);
    }

    self->_invocationOverridesEnabled = 0;
    if ([v64 count])
    {
      resourcePath5 = [(NSBundle *)self->_catiAssetBundle resourcePath];
      v46 = [resourcePath5 stringByAppendingPathComponent:@"bf_files"];

      defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
      v48 = [defaultManager3 contentsOfDirectoryAtPath:v46 error:0];

      v49 = [v48 count];
      if (version >= 3104 && v49)
      {
        if (![(CDMCATIChildService *)self getFlatbuffersBFAt:v46]&& ![(CDMCATIChildService *)self getBloomFilterAt:v46])
        {
          getProductAreaName3 = [(CDMCATIChildService *)self getProductAreaName];
          v41 = [getProductAreaName3 stringByAppendingString:{@": Bloom filter setup failed, service is disabled. Check logs for error message"}];

          v51 = CDMLogContext;
          v52 = v51;
          if (v16 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v51))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1DC287000, v52, OS_SIGNPOST_INTERVAL_END, v13, "CATI", "", buf, 2u);
          }

LABEL_36:
          v43 = embeddingConfigs;
          goto LABEL_37;
        }
      }

      else
      {
        v54 = [(CDMCATIChildService *)self buildLegacyBloomFilterAndExactMatchDictForInvocation:v64];
        positiveOverridesInvocationBloomFilterLegacy = self->_positiveOverridesInvocationBloomFilterLegacy;
        self->_positiveOverridesInvocationBloomFilterLegacy = v54;
      }
    }

    else
    {
      v46 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        getPosOverridesDirectoryPath2 = [(CDMCATIChildService *)self getPosOverridesDirectoryPath];
        *buf = 136315394;
        v72 = "[CDMCATIChildService setup:assetVersion:]";
        v73 = 2112;
        v74 = getPosOverridesDirectoryPath2;
        _os_log_impl(&dword_1DC287000, v46, OS_LOG_TYPE_INFO, "%s [WARN]: Not able to find any CATI positive overrides in %@", buf, 0x16u);
      }
    }

    if ([(CDMCATIChildService *)self getInvocationOverridesEnabled])
    {
      v56 = CDMLogContext;
      v46 = v56;
      if (v16 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v56))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1DC287000, v46, OS_SIGNPOST_INTERVAL_END, v13, "CATI", "", buf, 2u);
      }

      v41 = 0;
    }

    else
    {
      getProductAreaName4 = [(CDMCATIChildService *)self getProductAreaName];
      v41 = [getProductAreaName4 stringByAppendingString:{@": No CATI positive overrides are available, service is disabled."}];

      v58 = CDMLogContext;
      v46 = v58;
      if (v16 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v58))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1DC287000, v46, OS_SIGNPOST_INTERVAL_END, v13, "CATI", "", buf, 2u);
      }
    }

    goto LABEL_36;
  }

  v41 = [@"CATI manifest not found or invalid at " stringByAppendingString:self->_manifestPath];
  v42 = CDMLogContext;
  v43 = v42;
  if (v16 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v42))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v43, OS_SIGNPOST_INTERVAL_END, v13, "CATI", "", buf, 2u);
  }

LABEL_37:

  return v41;
}

void __42__CDMCATIChildService_setup_assetVersion___block_invoke(id *a1)
{
  v4 = [a1[4] objectAtIndex:?];
  v2 = [v4 componentsSeparatedByString:@"."];
  v3 = [v2 objectAtIndex:0];
  if ([a1[5] containsObject:v3])
  {
    [a1[6] addObject:v4];
  }
}

- (CDMCATIChildService)initWithAssetBundle:(id)bundle
{
  bundleCopy = bundle;
  v8.receiver = self;
  v8.super_class = CDMCATIChildService;
  v5 = [(CDMCATIChildService *)&v8 init];
  catiAssetBundle = v5->_catiAssetBundle;
  v5->_catiAssetBundle = bundleCopy;

  return v5;
}

@end