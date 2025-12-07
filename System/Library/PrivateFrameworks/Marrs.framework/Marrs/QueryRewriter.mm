@interface QueryRewriter
- (QueryRewriter)initWithLocale:(id)locale filesPath:(id)path predictorType:(int)type status:(id *)status;
- (id)predictWithInput:(id)input status:(id *)status;
@end

@implementation QueryRewriter

- (id)predictWithInput:(id)input status:(id *)status
{
  v40 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  v6 = +[MarrsSiriNLUTypesUtils emptyResponse];
  v7 = MEMORY[0x277D5DEF8];
  cdmRequestId = [inputCopy cdmRequestId];
  v9 = [v7 extractRequestLinkData:cdmRequestId];

  if (v9)
  {
    nluRequestId = [inputCopy nluRequestId];
    v26 = v9;
    trpId = [v9 trpId];
    targetUUID = [v9 targetUUID];
    resultCandidateId = [inputCopy resultCandidateId];
    cdmRequestId2 = [inputCopy cdmRequestId];
    v15 = +[QRSELFLoggingUtils createEventMetadataWithNlId:andWithTrpId:andWithRequestId:andWithResultCandidateId:andWithRequester:](QRSELFLoggingUtils, "createEventMetadataWithNlId:andWithTrpId:andWithRequestId:andWithResultCandidateId:andWithRequester:", nluRequestId, trpId, targetUUID, resultCandidateId, [cdmRequestId2 requester]);

    v9 = v26;
  }

  else
  {
    v16 = QRLoggerForCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "[QueryRewriter predictWithInput:status:]";
      _os_log_error_impl(&dword_2227A9000, v16, OS_LOG_TYPE_ERROR, "%s [ERR]: Failed to generate metadata as RequestLinkData is nil", buf, 0xCu);
    }

    v15 = 0;
  }

  [QRSELFLoggingUtils emitQueryRewriteStartedEventWithMetadata:v15 byPredictorType:self->_predictorType];
  v17 = QRLoggerForCategory(0);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    predictorName = self->_predictorName;
    *buf = 136315394;
    *&buf[4] = "[QueryRewriter predictWithInput:status:]";
    *&buf[12] = 2112;
    *&buf[14] = predictorName;
    _os_log_debug_impl(&dword_2227A9000, v17, OS_LOG_TYPE_DEBUG, "%s Self logging emitted started event for predictor type %@", buf, 0x16u);
  }

  ptr = self->_plugin.__ptr_;
  objc_msgSend_toPluginRequestObj_(MarrsSiriNLUTypesConverter);
  (**ptr)(buf, ptr, v33);
  v32 = &v33[8];
  std::vector<marrs::qr::orchestration::QRInteraction>::__destroy_vector::operator()[abi:ne200100](&v32);
  v19 = [MarrsSiriNLUTypesConverter fromPluginResponseObj:buf];

  memset(v28, 0, sizeof(v28));
  std::vector<marrs::qr::orchestration::QRHypothesis>::__init_with_size[abi:ne200100]<marrs::qr::orchestration::QRHypothesis*,marrs::qr::orchestration::QRHypothesis*>(v28, *buf, *&buf[8], 0x6DB6DB6DB6DB6DB7 * ((*&buf[8] - *buf) >> 3));
  v29 = v37;
  v30 = v38;
  v31 = v39;
  [QRSELFLoggingUtils emitQueryRewriteEvaluatedEventWithResponse:v28 andNLXMetadata:v15 byPredictorType:self->_predictorType];
  *v33 = v28;
  std::vector<marrs::qr::orchestration::QRHypothesis>::__destroy_vector::operator()[abi:ne200100](v33);
  v20 = QRLoggerForCategory(0);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v25 = self->_predictorName;
    *v33 = 136315394;
    *&v33[4] = "[QueryRewriter predictWithInput:status:]";
    v34 = 2112;
    v35 = v25;
    _os_log_debug_impl(&dword_2227A9000, v20, OS_LOG_TYPE_DEBUG, "%s Self logging emitted evaluated event for predictor type %@", v33, 0x16u);
  }

  if (v39)
  {
    v21 = QRLoggerForCategory(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      *v33 = 136315138;
      *&v33[4] = "[QueryRewriter predictWithInput:status:]";
      _os_log_debug_impl(&dword_2227A9000, v21, OS_LOG_TYPE_DEBUG, "%s Removing rewriteHypotheses as rewrite is not needed", v33, 0xCu);
    }

    rewriteHypotheses = [v19 rewriteHypotheses];
    [rewriteHypotheses removeAllObjects];
  }

  *v33 = buf;
  std::vector<marrs::qr::orchestration::QRHypothesis>::__destroy_vector::operator()[abi:ne200100](v33);
  [PredictorUtils reportPredictStatusWithPredictorName:self->_predictorName domain:@"com.apple.siri.marrs.QueryRewrite" code:0 locale:self->_locale];
  if (status)
  {
    *status = [PredictorUtils getPredictStatusWithPredictorName:self->_predictorName domain:@"com.apple.siri.marrs.QueryRewrite" code:0];
  }

  return v19;
}

- (QueryRewriter)initWithLocale:(id)locale filesPath:(id)path predictorType:(int)type status:(id *)status
{
  v29 = *MEMORY[0x277D85DE8];
  localeCopy = locale;
  pathCopy = path;
  v18.receiver = self;
  v18.super_class = QueryRewriter;
  v9 = [(QueryRewriter *)&v18 init];
  v9->_predictorType = type;
  v10 = QRLoggerForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    buf = 136315394;
    buf_4 = "[QueryRewriter initWithLocale:filesPath:predictorType:status:]";
    v21 = 1024;
    LODWORD(v22) = type;
    _os_log_debug_impl(&dword_2227A9000, v10, OS_LOG_TYPE_DEBUG, "%s Marrs Predictor Initializing: Setting up type %d predictor", &buf, 0x12u);
  }

  v11 = QRLoggerForCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    buf = 136315650;
    buf_4 = "[QueryRewriter initWithLocale:filesPath:predictorType:status:]";
    v21 = 2112;
    v22 = pathCopy;
    v23 = 2112;
    v24 = localeCopy;
    _os_log_debug_impl(&dword_2227A9000, v11, OS_LOG_TYPE_DEBUG, "%s Path: %@, locale: %@", &buf, 0x20u);
  }

  if (type <= 1)
  {
    if (!type)
    {
      objc_msgSend_NSString2StdString_(MarrsSiriNLUTypesConverter);
      objc_msgSend_NSString2StdString_(MarrsSiriNLUTypesConverter);
      operator new();
    }

    if (type == 1)
    {
      objc_msgSend_NSString2StdString_(MarrsSiriNLUTypesConverter);
      objc_msgSend_NSString2StdString_(MarrsSiriNLUTypesConverter);
      operator new();
    }
  }

  else
  {
    switch(type)
    {
      case 2:
        objc_msgSend_NSString2StdString_(MarrsSiriNLUTypesConverter);
        objc_msgSend_NSString2StdString_(MarrsSiriNLUTypesConverter);
        operator new();
      case 3:
        objc_msgSend_NSString2StdString_(MarrsSiriNLUTypesConverter);
        objc_msgSend_NSString2StdString_(MarrsSiriNLUTypesConverter);
        operator new();
      case 4:
        objc_msgSend_NSString2StdString_(MarrsSiriNLUTypesConverter);
        objc_msgSend_NSString2StdString_(MarrsSiriNLUTypesConverter);
        operator new();
    }
  }

  [(QueryRewriter *)v9 setLocale:localeCopy];
  v12 = QRLoggerForCategory(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    __p = 136315394;
    __p_4 = "[QueryRewriter initWithLocale:filesPath:predictorType:status:]";
    __sz_4 = 1024;
    __sz_6 = type;
    _os_log_debug_impl(&dword_2227A9000, v12, OS_LOG_TYPE_DEBUG, "%s Marrs Predictor Initializing: %d predictor setup complete", &__p, 0x12u);
  }

  [PredictorUtils reportInitStatusWithPredictorName:v9->_predictorName domain:@"com.apple.siri.marrs.QueryRewrite" code:0 locale:localeCopy];
  if (status)
  {
    *status = [PredictorUtils getInitStatusWithPredictorName:v9->_predictorName domain:@"com.apple.siri.marrs.QueryRewrite" code:0];
  }

  v13 = v9;

  return v13;
}

@end