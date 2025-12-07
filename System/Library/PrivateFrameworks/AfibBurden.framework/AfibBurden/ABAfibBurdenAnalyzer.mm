@interface ABAfibBurdenAnalyzer
+ (void)removeDiagnosticLogFiles;
- (ABAfibBurdenAnalyzer)init;
- (id).cxx_construct;
- (id)determineBurdenForTachogramClassificationBuckets:(id)buckets;
- (id)processResults:(void *)results withAlgsAnalytics:(core_analytics_t *)analytics;
- (void)logToFileForTachoList:(id)list withBurdenResults:(id)results;
@end

@implementation ABAfibBurdenAnalyzer

- (ABAfibBurdenAnalyzer)init
{
  v7.receiver = self;
  v7.super_class = ABAfibBurdenAnalyzer;
  v2 = [(ABAfibBurdenAnalyzer *)&v7 init];
  if (v2)
  {
    out_token = -1;
    v5 = 0;
    notify_register_check("com.apple.AfibBurden.ForceAnalysis.WriteToJson", &out_token);
    notify_get_state(out_token, &v5);
    if (!v5)
    {
      +[ABAfibBurdenAnalyzer removeDiagnosticLogFiles];
    }

    v3 = v2;
  }

  return v2;
}

- (id)processResults:(void *)results withAlgsAnalytics:(core_analytics_t *)analytics
{
  v49 = *MEMORY[0x277D85DE8];
  LOBYTE(v35) = 0;
  v36 = 0;
  LOBYTE(v33) = 0;
  v34 = 0;
  *buf = &v35;
  v48 = &v33;
  v4 = *(results + 1);
  if (v4 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v37 = buf;
  (off_285118900[v4])(&v37, results);
  v7 = objc_opt_new();
  v8 = v7;
  if (!v7)
  {
    goto LABEL_14;
  }

  if (!v36)
  {
    if (v34)
    {
      [v7 setBurdenPercentage:0];
      if ((v34 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v12 = v33;
      goto LABEL_18;
    }

    v15 = ab_get_framework_log(v7);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [ABAfibBurdenAnalyzer processResults:v15 withAlgsAnalytics:?];
    }

LABEL_14:
    v16 = 0;
    goto LABEL_36;
  }

  v9 = v35;
  v10 = v35 / 100.0;
  if (v10 >= 0.0199999996)
  {
    if (modff(v35, buf) <= 0.5)
    {
      *&v13 = floorf(v9) / 100.0;
    }

    else
    {
      *&v13 = ceilf(v9) / 100.0;
    }

    v14 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
    [v8 setBurdenPercentage:v14];
  }

  else
  {
    LODWORD(v10) = 1017370378;
    v11 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
    [v8 setBurdenPercentage:v11];
  }

  v12 = 0;
LABEL_18:
  [v8 setUnavailabilityReason:v12];
  self->_rawBurdenValue.var0.__val_.Afib_burden = v35;
  self->_rawBurdenValue.__engaged_ = v36;
  v38[0] = @"reasonNoReport";
  v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "unavailabilityReason")}];
  v38[1] = @"segmentsCount";
  v30 = v39;
  v40 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[ABAfibBurdenAnalyzer segmentsCount](self, "segmentsCount")}];
  v38[2] = @"segmentsWith5TachCount";
  v29 = v40;
  v41 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[ABAfibBurdenAnalyzer segmentsWith5TachCount](self, "segmentsWith5TachCount")}];
  v38[3] = @"AFBurden";
  v28 = v41;
  if (v36)
  {
    *&v17 = v35;
    [MEMORY[0x277CCABB0] numberWithFloat:v17];
  }

  else
  {
    [MEMORY[0x277CBEB68] null];
  }
  v32 = ;
  v42 = v32;
  v38[4] = @"AFDensity";
  if ((LODWORD(analytics->var1) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    [MEMORY[0x277CBEB68] null];
  }

  else
  {
    *&v18 = analytics->var1;
    [MEMORY[0x277CCABB0] numberWithFloat:v18];
  }
  v31 = ;
  v43 = v31;
  v38[5] = @"timeBetweenTachs";
  if ((LODWORD(analytics->var0) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    [MEMORY[0x277CBEB68] null];
  }

  else
  {
    *&v19 = analytics->var0;
    [MEMORY[0x277CCABB0] numberWithFloat:v19];
  }
  v20 = ;
  v44 = v20;
  v38[6] = @"countTimezoneShifts";
  if ((*&analytics->var2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    [MEMORY[0x277CBEB68] null];
  }

  else
  {
    [MEMORY[0x277CCABB0] numberWithDouble:analytics->var2];
  }
  v21 = ;
  v45 = v21;
  v38[7] = @"highestTimezoneShift";
  if ((*&analytics->var3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    [MEMORY[0x277CBEB68] null];
  }

  else
  {
    [MEMORY[0x277CCABB0] numberWithDouble:analytics->var3 / 3600.0];
  }
  v22 = ;
  v46 = v22;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:v38 count:8];
  [v8 setMetricsForCoreAnalytics:v23];

  v25 = ab_get_framework_log(v24);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    metricsForCoreAnalytics = [v8 metricsForCoreAnalytics];
    [(ABAfibBurdenAnalyzer *)metricsForCoreAnalytics processResults:buf withAlgsAnalytics:v25];
  }

  v16 = v8;
LABEL_36:

  return v16;
}

- (id)determineBurdenForTachogramClassificationBuckets:(id)buckets
{
  v78[8] = *MEMORY[0x277D85DE8];
  bucketsCopy = buckets;
  if ([bucketsCopy count])
  {
    v75 = 0u;
    v76 = 0u;
    *v74 = 0u;
    -[ABAfibBurdenAnalyzer setSegmentsCount:](self, "setSegmentsCount:", [bucketsCopy count]);
    v3 = ab_get_framework_log([(ABAfibBurdenAnalyzer *)self setSegmentsWith5TachCount:0]);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E83E000, v3, OS_LOG_TYPE_DEFAULT, "bucketIndex, timestamp, UUID :", buf, 2u);
    }

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    obj = bucketsCopy;
    v4 = [obj countByEnumeratingWithState:&v63 objects:v73 count:16];
    if (v4)
    {
      v52 = 0;
      v49 = *v64;
      while (2)
      {
        v53 = 0;
        v48 = v4;
        do
        {
          if (*v64 != v49)
          {
            objc_enumerationMutation(obj);
          }

          v5 = *(*(&v63 + 1) + 8 * v53);
          if (![v5 count])
          {
            v44 = ab_get_framework_log(0);
            if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
            {
              [ABAfibBurdenAnalyzer determineBurdenForTachogramClassificationBuckets:v44];
            }

            v34 = 0;
            goto LABEL_56;
          }

          if ([v5 count] >= 5)
          {
            [(ABAfibBurdenAnalyzer *)self setSegmentsWith5TachCount:([(ABAfibBurdenAnalyzer *)self segmentsWith5TachCount]+ 1)];
          }

          v51 = [v5 sortedArrayUsingComparator:&__block_literal_global_0];
          v6 = [v51 isEqualToArray:v5];
          if ((v6 & 1) == 0)
          {
            v7 = ab_get_framework_log(v6);
            if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
            {
              [(ABAfibBurdenAnalyzer *)&v61 determineBurdenForTachogramClassificationBuckets:v62, v7];
            }
          }

          *__p = 0u;
          v60 = 0u;
          v57 = 0u;
          *buf = 0u;
          v54 = 0u;
          v55 = 0u;
          v56 = 0u;
          v8 = v51;
          v9 = [v8 countByEnumeratingWithState:&v54 objects:v72 count:16];
          v10 = v9;
          if (v9)
          {
            v11 = *v55;
            do
            {
              v12 = 0;
              do
              {
                if (*v55 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                v13 = *(*(&v54 + 1) + 8 * v12);
                v14 = ab_get_framework_log(v9);
                if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
                {
                  date = [v13 date];
                  [date timeIntervalSince1970];
                  v17 = v16;
                  uuid = [v13 uuid];
                  *v67 = 67109634;
                  *&v67[4] = v52;
                  v68 = 2048;
                  v69 = v17;
                  v70 = 2112;
                  v71 = uuid;
                  _os_log_impl(&dword_23E83E000, v14, OS_LOG_TYPE_DEFAULT, "%d, %f, %@", v67, 0x1Cu);
                }

                v67[0] = [v13 aFibDetected];
                std::vector<BOOL>::push_back(&__p[1], v67);
                date2 = [v13 date];
                [date2 timeIntervalSince1970];
                v21 = *&buf[8];
                if (*&buf[8] >= __p[0])
                {
                  v23 = *buf;
                  v24 = *&buf[8] - *buf;
                  v25 = (*&buf[8] - *buf) >> 3;
                  v26 = v25 + 1;
                  if ((v25 + 1) >> 61)
                  {
                    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
                  }

                  v27 = __p[0] - *buf;
                  if ((__p[0] - *buf) >> 2 > v26)
                  {
                    v26 = v27 >> 2;
                  }

                  v28 = v27 >= 0x7FFFFFFFFFFFFFF8;
                  v29 = 0x1FFFFFFFFFFFFFFFLL;
                  if (!v28)
                  {
                    v29 = v26;
                  }

                  if (v29)
                  {
                    std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(buf, v29);
                  }

                  *(8 * v25) = v20;
                  v22 = 8 * v25 + 8;
                  memcpy(0, v23, v24);
                  v30 = *buf;
                  *buf = 0;
                  *&buf[8] = v22;
                  __p[0] = 0;
                  if (v30)
                  {
                    operator delete(v30);
                  }
                }

                else
                {
                  **&buf[8] = v20;
                  v22 = v21 + 8;
                }

                *&buf[8] = v22;

                ++v12;
              }

              while (v10 != v12);
              v9 = [v8 countByEnumeratingWithState:&v54 objects:v72 count:16];
              v10 = v9;
            }

            while (v9);
          }

          v31 = v76;
          if (v76 >= *(&v76 + 1))
          {
            v32 = std::vector<std::vector<BOOL>>::__emplace_back_slow_path<std::vector<BOOL> const&>(&v75 + 1, &__p[1]);
          }

          else
          {
            std::vector<BOOL>::vector(v76, &__p[1]);
            v32 = v31 + 24;
          }

          *&v76 = v32;
          std::vector<std::vector<double>>::push_back[abi:ne200100](v74, buf);
          if (__p[1])
          {
            operator delete(__p[1]);
          }

          if (*buf)
          {
            *&buf[8] = *buf;
            operator delete(*buf);
          }

          ++v52;
          ++v53;
        }

        while (v53 != v48);
        v4 = [obj countByEnumeratingWithState:&v63 objects:v73 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

    memset(buf, 0, sizeof(buf));
    __p[0] = 0;
    *v67 = beryllium::process(v74, buf, v33);
    v34 = [(ABAfibBurdenAnalyzer *)self processResults:v67 withAlgsAnalytics:buf];
    [(ABAfibBurdenAnalyzer *)self logToFileForTachoList:obj withBurdenResults:v34];
LABEL_56:
    *buf = &v75 + 8;
    std::vector<std::vector<BOOL>>::__destroy_vector::operator()[abi:ne200100](buf);
    *buf = v74;
    std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](buf);
  }

  else
  {
    v35 = ab_get_framework_log(0);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *v74 = 0;
      _os_log_impl(&dword_23E83E000, v35, OS_LOG_TYPE_DEFAULT, "Empty list of classification buckets received", v74, 2u);
    }

    v34 = objc_opt_new();
    [v34 setBurdenPercentage:0];
    [v34 setUnavailabilityReason:1];
    if (self->_rawBurdenValue.__engaged_)
    {
      self->_rawBurdenValue.__engaged_ = 0;
    }

    [(ABAfibBurdenAnalyzer *)self logToFileForTachoList:bucketsCopy withBurdenResults:v34];
    v77[0] = @"reasonNoReport";
    v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v34, "unavailabilityReason")}];
    v78[0] = v36;
    v77[1] = @"segmentsCount";
    v37 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[ABAfibBurdenAnalyzer segmentsCount](self, "segmentsCount")}];
    v78[1] = v37;
    v77[2] = @"segmentsWith5TachCount";
    v38 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[ABAfibBurdenAnalyzer segmentsWith5TachCount](self, "segmentsWith5TachCount")}];
    v78[2] = v38;
    v77[3] = @"AFBurden";
    null = [MEMORY[0x277CBEB68] null];
    v78[3] = null;
    v78[4] = &unk_285119790;
    v77[4] = @"AFDensity";
    v77[5] = @"timeBetweenTachs";
    v78[5] = &unk_285119790;
    v78[6] = &unk_285119790;
    v77[6] = @"countTimezoneShifts";
    v77[7] = @"highestTimezoneShift";
    v78[7] = &unk_285119790;
    v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v78 forKeys:v77 count:8];
    [v34 setMetricsForCoreAnalytics:v40];

    v42 = ab_get_framework_log(v41);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      metricsForCoreAnalytics = [v34 metricsForCoreAnalytics];
      [(ABAfibBurdenAnalyzer *)metricsForCoreAnalytics processResults:v74 withAlgsAnalytics:v42];
    }
  }

  return v34;
}

uint64_t __73__ABAfibBurdenAnalyzer_determineBurdenForTachogramClassificationBuckets___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 date];
  v6 = [v4 date];
  v7 = [v5 compare:v6];

  return v7;
}

- (void)logToFileForTachoList:(id)list withBurdenResults:(id)results
{
  v30[1] = *MEMORY[0x277D85DE8];
  listCopy = list;
  resultsCopy = results;
  out_token = -1;
  state64 = 0;
  notify_register_check("com.apple.AfibBurden.ForceAnalysis.WriteToJson", &out_token);
  state = notify_get_state(out_token, &state64);
  if (state64)
  {
    v6 = ab_get_framework_log(state);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0].__r_.__value_.__l.__data_) = 134217984;
      *(buf[0].__r_.__value_.__r.__words + 4) = state64;
      _os_log_impl(&dword_23E83E000, v6, OS_LOG_TYPE_DEFAULT, "ABAfibBurdenAnalyzer : logging to file. notifyState is set to %llu", buf, 0xCu);
    }

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v29 = *MEMORY[0x277CCA1B0];
    v30[0] = *MEMORY[0x277CCA198];
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    v25 = 0;
    v9 = [defaultManager createDirectoryAtPath:@"/var/mobile/Library/Logs/AfBHIDDiagnostics/" withIntermediateDirectories:1 attributes:v8 error:&v25];
    v17 = v25;

    if (v9)
    {
      std::to_string(&v20, state64);
      v11 = std::string::insert(&v20, 0, "process_burden_");
      v12 = *&v11->__r_.__value_.__l.__data_;
      buf[0].__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
      *&buf[0].__r_.__value_.__l.__data_ = v12;
      v11->__r_.__value_.__l.__size_ = 0;
      v11->__r_.__value_.__r.__words[2] = 0;
      v11->__r_.__value_.__r.__words[0] = 0;
      v13 = std::string::append(buf, ".json");
      v14 = *&v13->__r_.__value_.__l.__data_;
      v24 = v13->__r_.__value_.__r.__words[2];
      v23 = v14;
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf[0].__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v20.__r_.__value_.__l.__data_);
      }

      [@"/var/mobile/Library/Logs/AfBHIDDiagnostics/" UTF8String];
      std::operator+<char>();
      std::ofstream::basic_ofstream(buf, &__p, 1);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v21, 0, 0, 0, 1);
    }

    v15 = ab_get_framework_log(v10);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [ABTachogramClassifier logToFileForTacho:v17 withClassification:v15];
    }

    notify_cancel(out_token);
  }

  else
  {
    notify_cancel(out_token);
  }
}

+ (void)removeDiagnosticLogFiles
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 138412546;
  v3 = @"/var/mobile/Library/Logs/AfBHIDDiagnostics/";
  v4 = 2112;
  selfCopy = self;
  _os_log_error_impl(&dword_23E83E000, a2, OS_LOG_TYPE_ERROR, "Failed to retrieve files at path : %@ with error : %@", &v2, 0x16u);
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 12) = 0;
  return self;
}

- (void)processResults:(os_log_t)log withAlgsAnalytics:.cold.2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_23E83E000, log, OS_LOG_TYPE_DEBUG, "CA Metrics : %@", buf, 0xCu);
}

- (void)determineBurdenForTachogramClassificationBuckets:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_fault_impl(&dword_23E83E000, log, OS_LOG_TYPE_FAULT, "input tachogram classification bucket is not in ascending order", buf, 2u);
}

@end