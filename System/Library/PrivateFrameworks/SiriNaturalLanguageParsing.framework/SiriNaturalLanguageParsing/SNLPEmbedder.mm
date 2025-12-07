@interface SNLPEmbedder
+ (const)getTokenCleanValueString:(id)string error:(id *)error;
- (id)getEmbeddings:(id)embeddings;
- (id)getEmbeddingsBySentence:(id)sentence;
- (id)getEmbeddingsBySentenceWithError:(id)error error:(id *)a4;
- (id)getEmbeddingsWithError:(id)error error:(id *)a4;
- (id)initFromAssetDirectoryURL:(id)l;
- (id)initFromAssetDirectoryURLWithError:(id)error error:(id *)a4;
- (id)initFromSourceVocabPath:(id)path bertModelPath:(id)modelPath bertConfigPath:(id)configPath reformulatorPath:(id)reformulatorPath;
- (id)initFromSourceVocabPathWithError:(id)error bertModelPath:(id)path bertConfigPath:(id)configPath reformulatorPath:(id)reformulatorPath error:(id *)a7;
- (void)warmup;
@end

@implementation SNLPEmbedder

- (void)warmup
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = SNLPOSLoggerForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_22284A000, v2, OS_LOG_TYPE_DEBUG, "Warming up SNLPEmbedder", &buf, 2u);
  }

  std::string::basic_string[abi:ne200100]<0>(&__sz, "hello");
  *&v9[8] = 0;
  *v9 = 0;
  *&v9[16] = 5;
  *&v9[24] = 0;
  v9[26] = 0;
  v10 = 0u;
  memset(v11, 0, sizeof(v11));
  std::string::basic_string[abi:ne200100]<0>(&v4, "world");
  *v5 = xmmword_2229D2980;
  *&v5[16] = 11;
  *&v5[24] = 0;
  v5[26] = 0;
  v6 = 0u;
  memset(v7, 0, sizeof(v7));
  if (SHIBYTE(__sz.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&buf, __sz.__r_.__value_.__l.__data_, __sz.__r_.__value_.__l.__size_);
  }

  else
  {
    buf = __sz;
  }

  *v13 = *v9;
  *&v13[11] = *&v9[11];
  memset(v14, 0, sizeof(v14));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v14, v10, SDWORD2(v10), 0xAAAAAAAAAAAAAAABLL * ((*(&v10 + 1) - v10) >> 3));
  v15 = *&v11[1];
  v16 = *&v11[3];
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, v4.__r_.__value_.__l.__data_, v4.__r_.__value_.__l.__size_);
  }

  else
  {
    v17 = v4;
  }

  *v18 = *v5;
  *&v18[11] = *&v5[11];
  memset(v19, 0, sizeof(v19));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v19, v6, SDWORD2(v6), 0xAAAAAAAAAAAAAAABLL * ((*(&v6 + 1) - v6) >> 3));
  v20 = *&v7[1];
  v21 = *&v7[3];
  memset(v3, 0, sizeof(v3));
  std::vector<nlv4_inference_orchestrator::orchestration::Token>::__init_with_size[abi:ne200100]<nlv4_inference_orchestrator::orchestration::Token const*,nlv4_inference_orchestrator::orchestration::Token const*>(v3, &buf, v22, 2uLL);
}

- (id)getEmbeddings:(id)embeddings
{
  v8 = 0;
  v3 = [(SNLPEmbedder *)self getEmbeddingsWithError:embeddings error:&v8];
  v4 = v8;
  if (v4)
  {
    v5 = SNLPOSLoggerForCategory(5);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_22284A000, v5, OS_LOG_TYPE_ERROR, "OWL error in : getEmbeddings", v7, 2u);
    }
  }

  return v3;
}

- (id)getEmbeddingsWithError:(id)error error:(id *)a4
{
  v60 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v4 = SNLPOSLoggerForCategory(7);
  v5 = os_signpost_id_generate(v4);

  v6 = SNLPOSLoggerForCategory(7);
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_22284A000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "OWL Embeddings Overall", "", &buf, 2u);
  }

  v8 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_22284A000, v8, OS_LOG_TYPE_DEFAULT, "BEGIN OWL Embeddings Overall", &buf, 2u);
  }

  v52 = 0;
  v53 = 0;
  v54 = 0;
  tokenChain = [errorCopy tokenChain];
  std::vector<nlv4_inference_orchestrator::orchestration::Token>::reserve(&v52, [tokenChain tokensCount]);

  std::string::basic_string[abi:ne200100]<0>(&v51, "");
  std::string::basic_string[abi:ne200100]<0>(&v50, "");
  text = [errorCopy text];
  v11 = text == 0;

  if (!v11)
  {
    v12 = SNLPOSLoggerForCategory(5);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      text2 = [errorCopy text];
      LODWORD(buf) = 138739971;
      *(&buf + 4) = text2;
      _os_log_impl(&dword_22284A000, v12, OS_LOG_TYPE_DEBUG, "Incoming request.text: %{sensitive}@", &buf, 0xCu);
    }

    text3 = [errorCopy text];
    v15 = text3;
    uTF8String = [text3 UTF8String];

    if (!uTF8String)
    {
      v17 = SNLPOSLoggerForCategory(5);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        text4 = [errorCopy text];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = text4;
        _os_log_impl(&dword_22284A000, v17, OS_LOG_TYPE_ERROR, "Bad request.text: %@", &buf, 0xCu);
      }
    }

    MEMORY[0x223DC46D0](&v51, uTF8String);
    MEMORY[0x223DC46D0](&v50, uTF8String);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  tokenChain2 = [errorCopy tokenChain];
  tokens = [tokenChain2 tokens];

  v21 = [tokens countByEnumeratingWithState:&v46 objects:v59 count:16];
  if (!v21)
  {
LABEL_29:

    if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v42, v51.__r_.__value_.__l.__data_, v51.__r_.__value_.__l.__size_);
    }

    else
    {
      v42 = v51;
    }

    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v43, v50.__r_.__value_.__l.__data_, v50.__r_.__value_.__l.__size_);
    }

    else
    {
      v43 = v50;
    }

    memset(v44, 0, sizeof(v44));
    std::vector<nlv4_inference_orchestrator::orchestration::Token>::__init_with_size[abi:ne200100]<nlv4_inference_orchestrator::orchestration::Token*,nlv4_inference_orchestrator::orchestration::Token*>(v44, v52, v53, 0x6DB6DB6DB6DB6DB7 * ((v53 - v52) >> 4));
    v37 = *(*(self->_cppOrchestrator.__ptr_ + 23) + 8);
    (*(*v37 + 56))(v37);
    nlv4_inference_orchestrator::orchestration::EmbedderOrchestrator::getEmbeddings(self->_cppOrchestrator.__ptr_, &v42);
  }

  v22 = *v47;
LABEL_16:
  v23 = 0;
  while (1)
  {
    if (*v47 != v22)
    {
      objc_enumerationMutation(tokens);
    }

    v24 = *(*(&v46 + 1) + 8 * v23);
    v25 = objc_opt_class();
    v45 = 0;
    v26 = [v25 getTokenCleanValueString:v24 error:&v45];
    v27 = v45;
    v28 = v27;
    if (!v26)
    {
      break;
    }

    if (([v24 isWhitespace] & 1) == 0)
    {
      cleanValue = [v24 cleanValue];
      v30 = [cleanValue length] == 0;

      if (!v30)
      {
        std::string::basic_string[abi:ne200100]<0>(&buf, v26);
        *v57 = 0;
        *&v57[8] = [v24 begin];
        *&v57[16] = [v24 end];
        *&v57[24] = 0;
        v57[26] = 0;
        memset(v58, 0, sizeof(v58));
        v31 = v53;
        if (v53 >= v54)
        {
          v35 = std::vector<nlv4_inference_orchestrator::orchestration::Token>::__emplace_back_slow_path<nlv4_inference_orchestrator::orchestration::Token>(&v52, &buf);
        }

        else
        {
          v32 = buf;
          *(v53 + 16) = v56;
          *v31 = v32;
          v56 = 0;
          buf = 0uLL;
          v33 = *&v57[11];
          *(v31 + 24) = *v57;
          *(v31 + 35) = v33;
          *(v31 + 64) = 0;
          *(v31 + 72) = 0;
          *(v31 + 56) = 0;
          *(v31 + 56) = *v58;
          *(v31 + 72) = *&v58[16];
          memset(v58, 0, 24);
          v34 = *&v58[40];
          *(v31 + 80) = *&v58[24];
          *(v31 + 96) = v34;
          v35 = v31 + 112;
        }

        v53 = v35;
        v42.__r_.__value_.__r.__words[0] = v58;
        std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v42);
        if (SHIBYTE(v56) < 0)
        {
          operator delete(buf);
        }
      }
    }

    if (v21 == ++v23)
    {
      v21 = [tokens countByEnumeratingWithState:&v46 objects:v59 count:16];
      if (!v21)
      {
        goto LABEL_29;
      }

      goto LABEL_16;
    }
  }

  if (a4)
  {
    v36 = v27;
    *a4 = v28;
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  *&buf = &v52;
  std::vector<nlv4_inference_orchestrator::orchestration::Token>::__destroy_vector::operator()[abi:ne200100](&buf);

  return 0;
}

- (id)getEmbeddingsBySentence:(id)sentence
{
  v8 = 0;
  v3 = [(SNLPEmbedder *)self getEmbeddingsBySentenceWithError:sentence error:&v8];
  v4 = v8;
  if (v4)
  {
    v5 = SNLPOSLoggerForCategory(5);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_22284A000, v5, OS_LOG_TYPE_ERROR, "OWL error in : getEmbeddingsBySentence", v7, 2u);
    }
  }

  return v3;
}

- (id)getEmbeddingsBySentenceWithError:(id)error error:(id *)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v46 = 0;
  v45 = 0;
  v47 = 0;
  errorCopy = error;
  tokenChain = [errorCopy tokenChain];
  std::vector<nlv4_inference_orchestrator::orchestration::Token>::reserve(&v45, [tokenChain tokensCount]);

  std::string::basic_string[abi:ne200100]<0>(&__s, "");
  std::string::basic_string[abi:ne200100]<0>(&v43, "");
  text = [errorCopy text];
  v7 = text == 0;

  if (!v7)
  {
    text2 = [errorCopy text];
    v9 = text2;
    MEMORY[0x223DC46D0](&__s, [text2 UTF8String]);

    text3 = [errorCopy text];
    v11 = text3;
    MEMORY[0x223DC46D0](&v43, [text3 UTF8String]);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  tokenChain2 = [errorCopy tokenChain];
  tokens = [tokenChain2 tokens];

  v14 = [tokens countByEnumeratingWithState:&v39 objects:v48 count:16];
  if (!v14)
  {
LABEL_16:

    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v35, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
    }

    else
    {
      v35 = __s;
    }

    if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v36, v43.__r_.__value_.__l.__data_, v43.__r_.__value_.__l.__size_);
    }

    else
    {
      v36 = v43;
    }

    memset(v37, 0, sizeof(v37));
    std::vector<nlv4_inference_orchestrator::orchestration::Token>::__init_with_size[abi:ne200100]<nlv4_inference_orchestrator::orchestration::Token*,nlv4_inference_orchestrator::orchestration::Token*>(v37, v45, v46, 0x6DB6DB6DB6DB6DB7 * ((v46 - v45) >> 4));
    nlv4_inference_orchestrator::orchestration::EmbedderOrchestrator::getEmbeddingsBySentence(self->_cppOrchestrator.__ptr_, &v35);
  }

  v15 = *v40;
LABEL_5:
  v16 = 0;
  while (1)
  {
    if (*v40 != v15)
    {
      objc_enumerationMutation(tokens);
    }

    v17 = *(*(&v39 + 1) + 8 * v16);
    v18 = objc_opt_class();
    v38 = 0;
    v19 = [v18 getTokenCleanValueString:v17 error:&v38];
    v20 = v38;
    v21 = v20;
    if (!v19)
    {
      break;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, v19);
    *v33 = 0;
    *&v33[8] = [v17 begin];
    *&v33[16] = [v17 end];
    *&v33[24] = 0;
    v33[26] = 0;
    memset(v34, 0, 56);
    v22 = v46;
    if (v46 >= v47)
    {
      v26 = std::vector<nlv4_inference_orchestrator::orchestration::Token>::__emplace_back_slow_path<nlv4_inference_orchestrator::orchestration::Token>(&v45, __p);
    }

    else
    {
      v23 = *__p;
      *(v46 + 16) = v32;
      *v22 = v23;
      __p[1] = 0;
      v32 = 0;
      __p[0] = 0;
      v24 = *&v33[11];
      *(v22 + 24) = *v33;
      *(v22 + 35) = v24;
      *(v22 + 64) = 0;
      *(v22 + 72) = 0;
      *(v22 + 56) = 0;
      *(v22 + 56) = v34[0];
      *(v22 + 72) = *&v34[1];
      memset(v34, 0, 24);
      v25 = *(&v34[2] + 8);
      *(v22 + 80) = *(&v34[1] + 8);
      *(v22 + 96) = v25;
      v26 = v22 + 112;
    }

    v46 = v26;
    v35.__r_.__value_.__r.__words[0] = v34;
    std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v35);
    if (SHIBYTE(v32) < 0)
    {
      operator delete(__p[0]);
    }

    if (v14 == ++v16)
    {
      v14 = [tokens countByEnumeratingWithState:&v39 objects:v48 count:16];
      if (!v14)
      {
        goto LABEL_16;
      }

      goto LABEL_5;
    }
  }

  if (a4)
  {
    v27 = v20;
    *a4 = v21;
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  __p[0] = &v45;
  std::vector<nlv4_inference_orchestrator::orchestration::Token>::__destroy_vector::operator()[abi:ne200100](__p);

  return 0;
}

- (id)initFromSourceVocabPath:(id)path bertModelPath:(id)modelPath bertConfigPath:(id)configPath reformulatorPath:(id)reformulatorPath
{
  v12 = 0;
  v6 = [(SNLPEmbedder *)self initFromSourceVocabPathWithError:path bertModelPath:modelPath bertConfigPath:configPath reformulatorPath:reformulatorPath error:&v12];
  v7 = v12;
  v8 = v6;
  if (v7)
  {
    v9 = SNLPOSLoggerForCategory(5);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_impl(&dword_22284A000, v9, OS_LOG_TYPE_ERROR, "OWL error in : initFromSourceVocabPath", v11, 2u);
    }
  }

  return v8;
}

- (id)initFromSourceVocabPathWithError:(id)error bertModelPath:(id)path bertConfigPath:(id)configPath reformulatorPath:(id)reformulatorPath error:(id *)a7
{
  v31 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  pathCopy = path;
  configPathCopy = configPath;
  reformulatorPathCopy = reformulatorPath;
  v30.receiver = self;
  v30.super_class = SNLPEmbedder;
  [(SNLPEmbedder *)&v30 init];
  v15 = errorCopy;
  std::string::basic_string[abi:ne200100]<0>(&v29, [errorCopy UTF8String]);
  v16 = pathCopy;
  std::string::basic_string[abi:ne200100]<0>(&v28, [pathCopy UTF8String]);
  v17 = configPathCopy;
  std::string::basic_string[abi:ne200100]<0>(&v27, [configPathCopy UTF8String]);
  v18 = reformulatorPathCopy;
  std::string::basic_string[abi:ne200100]<0>(&__p, [reformulatorPathCopy UTF8String]);
  v19 = SNLPOSLoggerForCategory(7);
  v20 = os_signpost_id_generate(v19);

  v21 = SNLPOSLoggerForCategory(7);
  v22 = v21;
  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22284A000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v20, "OWL Embedder Orchestrator Init", "", buf, 2u);
  }

  v23 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22284A000, v23, OS_LOG_TYPE_DEFAULT, "BEGIN OWL Embedder Orchestrator Init", buf, 2u);
  }

  operator new();
}

- (id)initFromAssetDirectoryURL:(id)l
{
  v9 = 0;
  v3 = [(SNLPEmbedder *)self initFromAssetDirectoryURLWithError:l error:&v9];
  v4 = v9;
  v5 = v3;
  if (v4)
  {
    v6 = SNLPOSLoggerForCategory(5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_22284A000, v6, OS_LOG_TYPE_ERROR, "OWL error in : initFromAssetDirectoryURL", v8, 2u);
    }
  }

  return v5;
}

- (id)initFromAssetDirectoryURLWithError:(id)error error:(id *)a4
{
  v16 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v15.receiver = self;
  v15.super_class = SNLPEmbedder;
  [(SNLPEmbedder *)&v15 init];
  v6 = errorCopy;
  *buf = [errorCopy fileSystemRepresentation];
  std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&__p, buf);
  v7 = SNLPOSLoggerForCategory(7);
  v8 = os_signpost_id_generate(v7);

  v9 = SNLPOSLoggerForCategory(7);
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22284A000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "OWL Embedder Orchestrator Init", "", buf, 2u);
  }

  v11 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22284A000, v11, OS_LOG_TYPE_DEFAULT, "BEGIN OWL Embedder Orchestrator Init", buf, 2u);
  }

  operator new();
}

+ (const)getTokenCleanValueString:(id)string error:(id *)error
{
  v26[2] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  if (![stringCopy hasCleanValue] || (objc_msgSend(stringCopy, "cleanValue"), v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {
    if (error)
    {
      v16 = MEMORY[0x277CCA9B8];
      v17 = *MEMORY[0x277CCA470];
      v25[0] = *MEMORY[0x277CCA450];
      v25[1] = v17;
      v26[0] = @"Encountered a token without a clean value";
      v26[1] = @"Encountered a token without a clean value";
      string = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
      *error = [v16 errorWithDomain:@"SNLPNaturalLanguageParserErrorDomain" code:2 userInfo:string];
LABEL_10:
    }

LABEL_11:
    uTF8String = 0;
    goto LABEL_12;
  }

  cleanValue = [stringCopy cleanValue];
  uTF8String = [cleanValue UTF8String];

  if (!uTF8String)
  {
    if (error)
    {
      string = [MEMORY[0x277CCAB68] string];
      for (i = 0; ; ++i)
      {
        cleanValue2 = [stringCopy cleanValue];
        v12 = [cleanValue2 length];

        if (i >= v12)
        {
          break;
        }

        cleanValue3 = [stringCopy cleanValue];
        v14 = [cleanValue3 characterAtIndex:i];

        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%x]", v14];
        [string appendString:v15];
      }

      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Hit invalid token clean value: %s", objc_msgSend(string, "UTF8String")];
      v20 = MEMORY[0x277CCA9B8];
      v21 = *MEMORY[0x277CCA470];
      v23[0] = *MEMORY[0x277CCA450];
      v23[1] = v21;
      v24[0] = v19;
      v24[1] = v19;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
      *error = [v20 errorWithDomain:@"SNLPNaturalLanguageParserErrorDomain" code:2 userInfo:v22];

      goto LABEL_10;
    }

    goto LABEL_11;
  }

LABEL_12:

  return uTF8String;
}

@end