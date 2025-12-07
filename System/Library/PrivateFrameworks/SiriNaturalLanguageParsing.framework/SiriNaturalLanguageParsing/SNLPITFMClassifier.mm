@interface SNLPITFMClassifier
+ (id)classifierWithModelBundle:(id)bundle modelInfo:(id)info error:(id *)error;
+ (id)classifierWithModelBundle:(id)bundle modelInfo:(id)info initializationBlock:(id)block error:(id *)error;
+ (unique_ptr<const)_convertRequest:(id)request;
- (SNLPITFMClassifier)initWithModelBundle:(id)bundle modelInfo:(id)info initializationBlock:(id)block error:(id *)error;
- (id).cxx_construct;
- (id)responseForRequest:(id)request error:(id *)error;
- (unique_ptr<snlp::common::asset_logger::SNLPAssetLogger,)_setupAssetLogger;
@end

@implementation SNLPITFMClassifier

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

void __42__SNLPITFMClassifier__initializationBlock__block_invoke(void *a1@<X1>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = a1;
  a2;
  *a3 = 0;
  [v5 versionURL];
  [objc_claimAutoreleasedReturnValue() path];
  v7 = [objc_claimAutoreleasedReturnValue() UTF8String];
  v6 = std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(v8, &v7);
  getAssetDirectoryNCV(v6);
}

- (unique_ptr<snlp::common::asset_logger::SNLPAssetLogger,)_setupAssetLogger
{
  v4 = *MEMORY[0x277D85DE8];
  [(SNLPITFMModelBundle *)self->_modelBundle versionURL];
  [objc_claimAutoreleasedReturnValue() path];
  *buf = [objc_claimAutoreleasedReturnValue() UTF8String];
  std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&__p, buf);
  getAssetDirectoryNCV(&__p);
}

- (id)responseForRequest:(id)request error:(id *)error
{
  v44 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v6 = SNLPOSLoggerForCategory(7);
  v7 = os_signpost_id_generate(v6);

  v8 = SNLPOSLoggerForCategory(7);
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22284A000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "SNLPITFMClassifier responseForRequest", "", buf, 2u);
  }

  v10 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22284A000, v10, OS_LOG_TYPE_DEFAULT, "BEGIN SNLPITFMClassifier responseForRequest", buf, 2u);
  }

  v11 = SNLPOSLoggerForCategory(2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    loggingComponent = [(SNLPITFMModelInfo *)self->_modelInfo loggingComponent];
    v13 = loggingComponent;
    if (loggingComponent >= 8)
    {
      v15 = SNLPOSLoggerForCategory(4);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *v33 = 136315394;
        *&v33[4] = "<UNDEFINED_COMPONENT>";
        v34 = 2048;
        v35 = v13;
        _os_log_impl(&dword_22284A000, v15, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", v33, 0x16u);
      }

      v14 = "<UNDEFINED_COMPONENT>";
    }

    else
    {
      v14 = off_2784B6F30[loggingComponent];
    }

    loggingComponentString = [(SNLPITFMModelInfo *)self->_modelInfo loggingComponentString];
    snlp::common::asset_logger::SNLPAssetLogger::toString(self->_assetLogger.__ptr_);
    if (v36 >= 0)
    {
      v17 = v33;
    }

    else
    {
      v17 = *v33;
    }

    *buf = 136315650;
    v38 = v14;
    v39 = 2112;
    v40 = loggingComponentString;
    v41 = 2080;
    v42 = v17;
    _os_log_impl(&dword_22284A000, v11, OS_LOG_TYPE_DEBUG, "[%s] [%@ Assets] %s", buf, 0x20u);
    if (v36 < 0)
    {
      operator delete(*v33);
    }
  }

  v18 = objc_opt_class();
  if (v18)
  {
    objc_msgSend__convertRequest_(v18);
    v19 = v32[0];
  }

  else
  {
    v19 = 0;
  }

  buf[0] = 0;
  v43 = 0;
  ptr = self->_orchestrator.__ptr_;
  v31 = v19;
  v32[0] = 0;
  (**ptr)(v33);
  std::optional<sirinluinternalitfm::ITFMParserResponse>::operator=[abi:ne200100]<sirinluinternalitfm::ITFMParserResponse,void>(buf);
  MEMORY[0x223DC3310](v33);
  v21 = v31;
  v31 = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  v22 = objc_opt_class();
  if ((v43 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v23 = v22;
  MEMORY[0x223DC32F0](v30, buf);
  v24 = [v23 _convertResponse:v30];
  MEMORY[0x223DC3310](v30);
  v25 = SNLPOSLoggerForCategory(7);
  v26 = v25;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
  {
    *v33 = 0;
    _os_signpost_emit_with_name_impl(&dword_22284A000, v26, OS_SIGNPOST_INTERVAL_END, v7, "SNLPITFMClassifier responseForRequest", "", v33, 2u);
  }

  v27 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *v33 = 0;
    _os_log_impl(&dword_22284A000, v27, OS_LOG_TYPE_DEFAULT, "END SNLPITFMClassifier responseForRequest", v33, 2u);
  }

  if (v43 == 1)
  {
    MEMORY[0x223DC3310](buf);
  }

  v28 = v32[0];
  v32[0] = 0;
  if (v28)
  {
    (*(*v28 + 8))(v28);
  }

  return v24;
}

- (SNLPITFMClassifier)initWithModelBundle:(id)bundle modelInfo:(id)info initializationBlock:(id)block error:(id *)error
{
  bundleCopy = bundle;
  infoCopy = info;
  blockCopy = block;
  v27 = 0;
  (blockCopy)[2](&v28);
  v14 = 0;
  v15 = v14;
  if (v28)
  {
    v26.receiver = self;
    v26.super_class = SNLPITFMClassifier;
    v16 = [(SNLPITFMClassifier *)&v26 init];
    v17 = v16;
    if (v16)
    {
      objc_storeStrong(&v16->_modelBundle, bundle);
      objc_storeStrong(&v17->_modelInfo, info);
      v18 = v28;
      v28 = 0;
      ptr = v17->_orchestrator.__ptr_;
      v17->_orchestrator.__ptr_ = v18;
      if (ptr)
      {
        (*(*ptr + 16))(ptr);
      }

      objc_msgSend__setupAssetLogger(v17);
      v20 = v25;
      v25 = 0;
      std::unique_ptr<snlp::common::asset_logger::SNLPAssetLogger>::reset[abi:ne200100](&v17->_assetLogger, v20);
      std::unique_ptr<snlp::common::asset_logger::SNLPAssetLogger>::reset[abi:ne200100](&v25, 0);
    }

    self = v17;
    selfCopy = self;
  }

  else
  {
    if (!error)
    {
      selfCopy = 0;
      goto LABEL_12;
    }

    v22 = v14;
    selfCopy = 0;
    *error = v15;
  }

  v23 = v28;
  v28 = 0;
  if (v23)
  {
    (*(*v23 + 16))(v23);
  }

LABEL_12:

  return selfCopy;
}

+ (unique_ptr<const)_convertRequest:(id)request
{
  requestCopy = request;
  data = [requestCopy data];
  bytes = [data bytes];

  data2 = [requestCopy data];
  [data2 length];
  PB::Reader::Reader(&v7, bytes);

  operator new();
}

+ (id)classifierWithModelBundle:(id)bundle modelInfo:(id)info error:(id *)error
{
  bundleCopy = bundle;
  infoCopy = info;
  _initializationBlock = [objc_opt_class() _initializationBlock];
  v11 = [[self alloc] initWithModelBundle:bundleCopy modelInfo:infoCopy initializationBlock:_initializationBlock error:error];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else if (error)
  {
    *error = 0;
  }

  return v12;
}

+ (id)classifierWithModelBundle:(id)bundle modelInfo:(id)info initializationBlock:(id)block error:(id *)error
{
  bundleCopy = bundle;
  infoCopy = info;
  blockCopy = block;
  v13 = [[self alloc] initWithModelBundle:bundleCopy modelInfo:infoCopy initializationBlock:blockCopy error:error];

  return v13;
}

@end