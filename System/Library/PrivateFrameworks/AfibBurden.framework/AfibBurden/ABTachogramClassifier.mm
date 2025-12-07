@interface ABTachogramClassifier
- (ABTachogramClassifier)init;
- (id)classifyTachogram:(id)tachogram;
- (void)logToFileForTacho:(const void *)tacho withClassification:(id)classification;
@end

@implementation ABTachogramClassifier

- (ABTachogramClassifier)init
{
  v3.receiver = self;
  v3.super_class = ABTachogramClassifier;
  if ([(ABTachogramClassifier *)&v3 init])
  {
    espresso_enable_autoinitialize();
    operator new();
  }

  return 0;
}

- (id)classifyTachogram:(id)tachogram
{
  v37[6] = *MEMORY[0x277D85DE8];
  tachogramCopy = tachogram;
  memset(v29, 0, sizeof(v29));
  v31 = 0;
  v32 = &v31;
  v33 = 0x6012000000;
  v34 = __Block_byref_object_copy_;
  v35 = __Block_byref_object_dispose_;
  v36 = "";
  memset(v37, 0, 24);
  v20 = 0;
  v21 = &v20;
  v22 = 0x4812000000;
  v23 = __Block_byref_object_copy__317;
  v24 = __Block_byref_object_dispose__318;
  v25 = "";
  v27 = 0;
  v28 = 0;
  __p = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __43__ABTachogramClassifier_classifyTachogram___block_invoke;
  v19[3] = &unk_278C5CB70;
  v19[4] = &v20;
  v19[5] = &v31;
  v5 = [tachogramCopy _enumerateHeartbeatDataWithBlock:v19];
  if (v21[6] != v21[7])
  {
    v5 = std::vector<std::vector<double>>::push_back[abi:ne200100]((v32 + 6), v21 + 6);
    v21[7] = v21[6];
  }

  if (v32[6] == v32[7])
  {
    v17 = ab_get_framework_log(v5);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      [ABTachogramClassifier classifyTachogram:v17];
    }

    v16 = 0;
  }

  else
  {
    uUID = [tachogramCopy UUID];
    [uUID getUUIDBytes:v32 + 10];

    v8 = ab_get_framework_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      uUID2 = [tachogramCopy UUID];
      LODWORD(buf[0]) = 138412290;
      *(buf + 4) = uUID2;
      _os_log_impl(&dword_23E83E000, v8, OS_LOG_TYPE_DEFAULT, "Classifying tachogram with UUID : %@", buf, 0xCu);
    }

    [tachogramCopy _startTimestamp];
    v11 = v32;
    v32[9] = v10;
    std::vector<Tellurium::tellurium_input_t>::push_back[abi:ne200100](v29, (v11 + 6));
    Tellurium::tellurium_classifier_t::tellurium_classifier_process(self->_classifier.__ptr_, v29);
    outputs = Tellurium::tellurium_classifier_t::tellurium_get_outputs(buf, self->_classifier.__ptr_);
    if (*(&buf[0] + 1) - *&buf[0] == 17)
    {
      v13 = objc_opt_new();
      if (v13)
      {
        uUID3 = [tachogramCopy UUID];
        [v13 setUuid:uUID3];

        startDate = [tachogramCopy startDate];
        [v13 setDate:startDate];

        [v13 setAFibDetected:*(*&buf[0] + 16)];
        [(ABTachogramClassifier *)self logToFileForTacho:v32 + 6 withClassification:v13];
        v13 = v13;
        v16 = v13;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v13 = ab_get_framework_log(outputs);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        [(ABTachogramClassifier *)buf + 1 classifyTachogram:buf, v13];
      }

      v16 = 0;
    }

    if (*&buf[0])
    {
      *(&buf[0] + 1) = *&buf[0];
      operator delete(*&buf[0]);
    }
  }

  _Block_object_dispose(&v20, 8);
  if (__p)
  {
    v27 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&v31, 8);
  v20 = v37;
  std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&v20);
  v31 = v29;
  std::vector<Tellurium::tellurium_input_t>::__destroy_vector::operator()[abi:ne200100](&v31);

  return v16;
}

uint64_t __43__ABTachogramClassifier_classifyTachogram___block_invoke(uint64_t a1, int a2, double a3)
{
  if (a2)
  {
    v5 = *(*(a1 + 32) + 8);
    v7 = *(v5 + 48);
    v8 = *(v5 + 56);
    v6 = (v5 + 48);
    if (v8 != v7)
    {
      std::vector<std::vector<double>>::push_back[abi:ne200100](*(*(a1 + 40) + 8) + 48, v6);
      *(*(*(a1 + 32) + 8) + 56) = *(*(*(a1 + 32) + 8) + 48);
    }
  }

  v9 = *(*(a1 + 32) + 8);
  v11 = v9[7];
  v10 = v9[8];
  if (v11 >= v10)
  {
    v13 = v9[6];
    v14 = v11 - v13;
    v15 = (v11 - v13) >> 3;
    v16 = v15 + 1;
    if ((v15 + 1) >> 61)
    {
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
    }

    v17 = v10 - v13;
    if (v17 >> 2 > v16)
    {
      v16 = v17 >> 2;
    }

    v18 = v17 >= 0x7FFFFFFFFFFFFFF8;
    v19 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v18)
    {
      v19 = v16;
    }

    if (v19)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>((v9 + 6), v19);
    }

    v20 = (v11 - v13) >> 3;
    v21 = (8 * v15);
    v22 = (8 * v15 - 8 * v20);
    *v21 = a3;
    v12 = v21 + 1;
    memcpy(v22, v13, v14);
    v23 = v9[6];
    v9[6] = v22;
    v9[7] = v12;
    v9[8] = 0;
    if (v23)
    {
      operator delete(v23);
    }
  }

  else
  {
    *v11 = a3;
    v12 = v11 + 1;
  }

  v9[7] = v12;
  return 1;
}

- (void)logToFileForTacho:(const void *)tacho withClassification:(id)classification
{
  v27[1] = *MEMORY[0x277D85DE8];
  classificationCopy = classification;
  out_token = -1;
  notify_register_check("com.apple.AfibBurden.ForceAnalysis.WriteToJson", &out_token);
  state64 = 0;
  state = notify_get_state(out_token, &state64);
  if (state64)
  {
    v6 = ab_get_framework_log(state);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0].__r_.__value_.__l.__data_) = 134217984;
      *(buf[0].__r_.__value_.__r.__words + 4) = state64;
      _os_log_impl(&dword_23E83E000, v6, OS_LOG_TYPE_DEFAULT, "ABTachogramClassifier : logging to file. notifyState is set to %llu", buf, 0xCu);
    }

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v26 = *MEMORY[0x277CCA1B0];
    v27[0] = *MEMORY[0x277CCA198];
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v22 = 0;
    v9 = [defaultManager createDirectoryAtPath:@"/var/mobile/Library/Logs/AfBHIDDiagnostics/" withIntermediateDirectories:1 attributes:v8 error:&v22];
    v10 = v22;

    if (v9)
    {
      std::to_string(__p, state64);
      v12 = std::string::insert(__p, 0, "process_tacho_");
      v13 = *&v12->__r_.__value_.__l.__data_;
      buf[0].__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
      *&buf[0].__r_.__value_.__l.__data_ = v13;
      v12->__r_.__value_.__l.__size_ = 0;
      v12->__r_.__value_.__r.__words[2] = 0;
      v12->__r_.__value_.__r.__words[0] = 0;
      v14 = std::string::append(buf, ".json");
      v15 = *&v14->__r_.__value_.__l.__data_;
      v21 = v14->__r_.__value_.__r.__words[2];
      *v20 = v15;
      v14->__r_.__value_.__l.__size_ = 0;
      v14->__r_.__value_.__r.__words[2] = 0;
      v14->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf[0].__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      [@"/var/mobile/Library/Logs/AfBHIDDiagnostics/" UTF8String];
      std::operator+<char>();
      std::ofstream::basic_ofstream(buf, &v19, 1);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v18, 0, 0, 0, 2);
    }

    v16 = ab_get_framework_log(v11);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [ABTachogramClassifier logToFileForTacho:v10 withClassification:v16];
    }

    notify_cancel(out_token);
  }

  else
  {
    notify_cancel(out_token);
  }
}

- (void)classifyTachogram:(os_log_t)log .cold.1(void *a1, void *a2, os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = (*a1 - *a2) / 17;
  v4 = 134217984;
  v5 = v3;
  _os_log_fault_impl(&dword_23E83E000, log, OS_LOG_TYPE_FAULT, "Unexpected length of output classifications received from TelluriumForBeryllium computation. Expected : 1, Observed : %lu", &v4, 0xCu);
}

- (void)logToFileForTacho:(uint64_t)a1 withClassification:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23E83E000, a2, OS_LOG_TYPE_ERROR, "failed to create directory: %@", &v2, 0xCu);
}

@end