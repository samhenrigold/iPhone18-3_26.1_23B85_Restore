@interface NWSAlgosScoreStreamDataCSV
+ (id)streamDataCSV:(BOOL)v;
- (BOOL)matchesMethod:(id)method code:(int64_t)code;
- (BOOL)validMethod:(int64_t)method;
- (id)initIsMusic:(BOOL)music;
- (id)setUpMethods;
- (int)transformer;
@end

@implementation NWSAlgosScoreStreamDataCSV

+ (id)streamDataCSV:(BOOL)v
{
  v3 = [[NWSAlgosScoreStreamDataCSV alloc] initIsMusic:v];

  return v3;
}

- (id)setUpMethods
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_286D2F730, 0}];
  [dictionary setObject:v3 forKeyedSubscript:@"PlayEnded"];

  v4 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_286D2F748, &unk_286D2F760, 0}];
  [dictionary setObject:v4 forKeyedSubscript:@"PlayRateChanged"];

  v5 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_286D2F778, &unk_286D2F790, 0}];
  [dictionary setObject:v5 forKeyedSubscript:@"PlayStalled"];

  v6 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_286D2F7A8, &unk_286D2F7C0, 0}];
  [dictionary setObject:v6 forKeyedSubscript:@"PlayLikelyToKeepUp"];

  v7 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_286D2F7D8, &unk_286D2F7F0, 0}];
  [dictionary setObject:v7 forKeyedSubscript:@"PlayerError"];

  v8 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_286D2F808, &unk_286D2F820, 0}];
  [dictionary setObject:v8 forKeyedSubscript:@"PlayerSwitchComplete"];

  return dictionary;
}

- (BOOL)matchesMethod:(id)method code:(int64_t)code
{
  methodCopy = method;
  methods = [(NWSAlgosScoreStreamDataCSV *)self methods];
  v8 = [methods objectForKey:methodCopy];

  v9 = [MEMORY[0x277CCABB0] numberWithLongLong:code];
  LOBYTE(code) = [v8 containsObject:v9];

  return code;
}

- (BOOL)validMethod:(int64_t)method
{
  v19 = *MEMORY[0x277D85DE8];
  methods = [(NWSAlgosScoreStreamDataCSV *)self methods];
  allValues = [methods allValues];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = allValues;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [MEMORY[0x277CCABB0] numberWithInteger:{method, v14}];
        LOBYTE(v10) = [v10 containsObject:v11];

        if (v10)
        {
          v12 = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (id)initIsMusic:(BOOL)music
{
  musicCopy = music;
  v8.receiver = self;
  v8.super_class = NWSAlgosScoreStreamDataCSV;
  v4 = [(NWSAlgosScoreDataCSV *)&v8 init];
  v5 = v4;
  if (v4)
  {
    [(NWSAlgosScoreStreamDataCSV *)v4 setIsMusic:musicCopy];
    setUpMethods = [(NWSAlgosScoreStreamDataCSV *)v5 setUpMethods];
    [(NWSAlgosScoreStreamDataCSV *)v5 setMethods:setUpMethods];
  }

  return v5;
}

- (int)transformer
{
  v82 = *MEMORY[0x277D85DE8];
  [(NWSAlgosScoreDataCSV *)self clearStreamingData];
  rawStreamData = [(NWSAlgosScoreDataCSV *)self rawStreamData];
  csvData = self->super.csvData;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = [rawStreamData rows];
  v4 = [obj countByEnumeratingWithState:&v72 objects:v81 count:16];
  if (!v4)
  {

    v20 = 0;
    v18 = 0;
    v58 = 0;
    v24 = 0.0;
    v32 = 1.0;
    v31 = 1.0;
    v25 = 0.0;
    v7 = 0.0;
    v8 = 0.0;
LABEL_109:
    rows = [rawStreamData rows];
    v49 = [rows count] == 0;

    if (!v49)
    {
      v52 = nws_algos_log_obj(v50, v51);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
      {
        *__p = 0;
        _os_log_impl(&dword_25BA15000, v52, OS_LOG_TYPE_INFO, "Received no play end messages, inserting fake rate and end", __p, 2u);
      }

      std::string::basic_string[abi:ne200100]<0>(&v71, "rate");
      AlgosScoreStreamCSVFrameRow::AlgosScoreStreamCSVFrameRow(__p, &v71, v18, v20, v25, v8 - v7, v8, v31, v32);
      std::vector<AlgosScoreStreamCSVFrameRow>::push_back[abi:ne200100](csvData, __p);
      if (SHIBYTE(v79) < 0)
      {
        operator delete(*__p);
      }

      if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v71.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:ne200100]<0>(&v71, [@"end" cStringUsingEncoding:4]);
      AlgosScoreStreamCSVFrameRow::AlgosScoreStreamCSVFrameRow(__p, &v71, v18, v20, v25, v24, v8, 1.0, v32);
      std::vector<AlgosScoreStreamCSVFrameRow>::push_back[abi:ne200100](csvData, __p);
      if (SHIBYTE(v79) < 0)
      {
        operator delete(*__p);
      }

      if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v71.__r_.__value_.__l.__data_);
      }
    }

    goto LABEL_120;
  }

  v5 = 0;
  v58 = 0;
  v61 = 0;
  v69 = 0;
  v67 = *v73;
  v62 = -1;
  v63 = -1;
  v6 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  v66 = 0.0;
  v60 = 0.0;
  v64 = -1;
  v65 = -1;
  do
  {
    v68 = v4;
    v9 = 0;
    v10 = v8;
    do
    {
      if (*v73 != v67)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v72 + 1) + 8 * v9);
      v12 = [rawStreamData atRow:v11 col:@"timedelta_ms"];
      [v12 doubleValue];
      v8 = v13;

      [rawStreamData doubleAtRow:v11 col:@"VaRk" defaultValue:v6 * 100.0];
      v15 = v14;
      v16 = [rawStreamData atRow:v11 col:@"IfTy"];
      intValue = [v16 intValue];
      v18 = intValue == 3;

      v19 = [rawStreamData intAtRow:v11 col:@"method" defaultValue:-1];
      v20 = [(NWSAlgosScoreStreamDataCSV *)self matchesMethod:@"PlayerError" code:v19];
      if (v5)
      {
        v21 = @"None";
      }

      else
      {
        v21 = @"start";
      }

      if (!v5)
      {
        v7 = v8;
      }

      [rawStreamData doubleAtRow:v11 col:@"StartupTime" defaultValue:0.0];
      if (v22 == 0.0 && v5 == 0)
      {
        v24 = 0.0;
      }

      else
      {
        v24 = v22;
      }

      v25 = v8 - v10;
      v26 = v15 / 100.0;
      if (![(NWSAlgosScoreStreamDataCSV *)self matchesMethod:@"PlayEnded" code:v19])
      {
        if ([(NWSAlgosScoreStreamDataCSV *)self matchesMethod:@"PlayerError" code:v19])
        {
          if ([(NWSAlgosScoreStreamDataCSV *)self isMusic])
          {
            v31 = 0.3;
          }

          else
          {
            v31 = 1.0;
          }

          v32 = v26;
          v21 = @"error";
          if (v5)
          {
            goto LABEL_90;
          }

          goto LABEL_85;
        }

        if ([(NWSAlgosScoreStreamDataCSV *)self matchesMethod:@"PlayRateChanged" code:v19])
        {
          v33 = [rawStreamData intAtRow:v11 col:@"Rate" defaultValue:-1];
          v24 = v8 - v7;
          if ((v69 & 1) == 0 && !v33)
          {
            v65 = [rawStreamData intAtRow:v11 col:@"IABR" defaultValue:v65];
            v64 = [rawStreamData intAtRow:v11 col:@"VaRk" defaultValue:v64];
            v31 = 1.0;
LABEL_65:
            v32 = v6;
            v21 = @"rate";
            v6 = v26;
            v7 = v8;
            if (v5)
            {
              goto LABEL_90;
            }

LABEL_85:
            if (([(__CFString *)v21 isEqualToString:@"start"]& 1) == 0)
            {
              std::string::basic_string[abi:ne200100]<0>(&v71, "start");
              AlgosScoreStreamCSVFrameRow::AlgosScoreStreamCSVFrameRow(__p, &v71, intValue == 3, v20, v25, v24, v8, v31, v32);
              std::vector<AlgosScoreStreamCSVFrameRow>::push_back[abi:ne200100](csvData, __p);
              if (SHIBYTE(v79) < 0)
              {
                operator delete(*__p);
              }

              if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v71.__r_.__value_.__l.__data_);
              }
            }

            goto LABEL_90;
          }

          if ((v69 & (v33 == 100)) != 1)
          {
            v31 = 1.0;
            if ((v69 & (v33 == 0)) == 1)
            {
              v65 = [rawStreamData intAtRow:v11 col:@"IABR" defaultValue:v65];
              v64 = [rawStreamData intAtRow:v11 col:@"VaRk" defaultValue:v64];
              v69 = 1;
            }

            goto LABEL_65;
          }

          v24 = v8 - v66;
          v31 = 1.0;
          if (v8 - v66 >= 0.5)
          {
            v69 = 0;
          }

          else
          {
            v38 = nws_algos_log_obj(v33, v34);
            if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
            {
              *__p = 134218496;
              *&__p[4] = 0x3FE0000000000000;
              v77 = 2048;
              v78 = v66;
              v79 = 2048;
              v80 = v8;
              _os_log_impl(&dword_25BA15000, v38, OS_LOG_TYPE_INFO, "Unexpected stallduration cannot be less than %1.2f start: %1.2f, stop: %1.2f", __p, 0x20u);
            }

            v69 = 0;
            ++v58;
          }

          v32 = v6;
          v21 = @"stall-end-1";
          v6 = v26;
          v7 = v8;
LABEL_84:
          v60 = v8;
          if (v5)
          {
            goto LABEL_90;
          }

          goto LABEL_85;
        }

        if ([(NWSAlgosScoreStreamDataCSV *)self matchesMethod:@"PlayLikelyToKeepUp" code:v19])
        {
          v35 = [rawStreamData intAtRow:v11 col:@"SwCnt" defaultValue:v62];
          v63 = [rawStreamData intAtRow:v11 col:@"OBRLast" defaultValue:v63];
          v62 = v35;
          v31 = 1.0;
          if (v69)
          {
            isMusic = [(NWSAlgosScoreStreamDataCSV *)self isMusic];
            if ((isMusic & 1) == 0)
            {
              v24 = v8 - v66;
              if (v8 - v66 < 0.5)
              {
                v44 = nws_algos_log_obj(isMusic, v37);
                if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
                {
                  *__p = 134218496;
                  *&__p[4] = 0x3FE0000000000000;
                  v77 = 2048;
                  v78 = v66;
                  v79 = 2048;
                  v80 = v8;
                  _os_log_impl(&dword_25BA15000, v44, OS_LOG_TYPE_INFO, "Unexpected stallduration cannot be less than %1.2f start: %1.2f, stop: %1.2f", __p, 0x20u);
                }

                ++v58;
              }

              v65 = [rawStreamData intAtRow:v11 col:@"IABR" defaultValue:v65];
              v64 = [rawStreamData intAtRow:v11 col:@"VaRk" defaultValue:v64];
              v61 = 0;
              v69 = 0;
              v32 = v26;
              v21 = @"stall-end-2";
              goto LABEL_84;
            }

            v61 = 0;
            v69 = 1;
          }

          else
          {
            v61 = 0;
            v69 = 0;
          }
        }

        else
        {
          if ([(NWSAlgosScoreStreamDataCSV *)self matchesMethod:@"PlayStalled" code:v19])
          {
            if ((v69 & 1) == 0)
            {
              v21 = @"stall";
            }

            v39 = v66;
            if ((v69 & 1) == 0)
            {
              v39 = v8;
            }

            v66 = v39;
            v69 = 1;
          }

          else
          {
            v40 = [(NWSAlgosScoreStreamDataCSV *)self matchesMethod:@"PlayerSwitchComplete" code:v19];
            if (v40)
            {
              v42 = [rawStreamData intAtRow:v11 col:@"SwCnt" defaultValue:v62];
              v63 = [rawStreamData intAtRow:v11 col:@"OBRLast" defaultValue:v63];
              v31 = 1.0;
              v32 = v26;
              v62 = v42;
              if (v5)
              {
                goto LABEL_90;
              }

              goto LABEL_85;
            }

            v43 = nws_algos_log_obj(v40, v41);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
            {
              *__p = 134217984;
              *&__p[4] = v19;
              _os_log_impl(&dword_25BA15000, v43, OS_LOG_TYPE_INFO, "Unused method %lld. Unexpected", __p, 0xCu);
            }
          }

          v31 = 1.0;
        }

        v32 = v26;
        if (v5)
        {
          goto LABEL_90;
        }

        goto LABEL_85;
      }

      v27 = [rawStreamData intAtRow:v11 col:@"TimeWorkingToLTKU" defaultValue:0];
      v29 = v27;
      if (v27 >= 500)
      {
        std::string::basic_string[abi:ne200100]<0>(&v71, "stall-end-4-startup");
        AlgosScoreStreamCSVFrameRow::AlgosScoreStreamCSVFrameRow(__p, &v71, intValue == 3, v20, v25, v29, v8, 0.5, v15 / 100.0);
        v27 = std::vector<AlgosScoreStreamCSVFrameRow>::push_back[abi:ne200100](csvData, __p);
        if (SHIBYTE(v79) < 0)
        {
          operator delete(*__p);
        }

        if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v71.__r_.__value_.__l.__data_);
        }
      }

      if (v69)
      {
        if (v8 - v66 < 0.0)
        {
          v30 = nws_algos_log_obj(v27, v28);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            *__p = 134218240;
            *&__p[4] = v66;
            v77 = 2048;
            v78 = v8;
            _os_log_impl(&dword_25BA15000, v30, OS_LOG_TYPE_INFO, "Unexpected stallduration cannot be less than zero start: %1.2f, stop: %1.2f", __p, 0x16u);
          }

          ++v58;
        }

        std::string::basic_string[abi:ne200100]<0>(&v71, "stall-end-3");
        AlgosScoreStreamCSVFrameRow::AlgosScoreStreamCSVFrameRow(__p, &v71, intValue == 3, v20, v25, v8 - v66, v8, 1.0, v26);
        std::vector<AlgosScoreStreamCSVFrameRow>::push_back[abi:ne200100](csvData, __p);
        if (SHIBYTE(v79) < 0)
        {
          operator delete(*__p);
        }

        if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v71.__r_.__value_.__l.__data_);
        }
      }

      std::string::basic_string[abi:ne200100]<0>(&v71, "rate");
      AlgosScoreStreamCSVFrameRow::AlgosScoreStreamCSVFrameRow(__p, &v71, intValue == 3, v20, v25, v8 - v7, v8, 1.0, v26);
      std::vector<AlgosScoreStreamCSVFrameRow>::push_back[abi:ne200100](csvData, __p);
      if (SHIBYTE(v79) < 0)
      {
        operator delete(*__p);
      }

      if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v71.__r_.__value_.__l.__data_);
      }

      v69 = 0;
      v66 = 0.0;
      v61 = 1;
      v62 = -1;
      v63 = -1;
      v64 = -1;
      v31 = 1.0;
      v32 = v26;
      v21 = @"end";
      v65 = -1;
      v60 = 0.0;
      if (!v5)
      {
        goto LABEL_85;
      }

LABEL_90:
      std::string::basic_string[abi:ne200100]<0>(&v71, -[__CFString cStringUsingEncoding:](v21, "cStringUsingEncoding:", 4));
      AlgosScoreStreamCSVFrameRow::AlgosScoreStreamCSVFrameRow(__p, &v71, intValue == 3, v20, v25, v24, v8, v31, v32);
      std::vector<AlgosScoreStreamCSVFrameRow>::push_back[abi:ne200100](csvData, __p);
      if (SHIBYTE(v79) < 0)
      {
        operator delete(*__p);
      }

      if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v71.__r_.__value_.__l.__data_);
      }

      if (![(__CFString *)v21 isEqualToString:@"rate"])
      {
        v6 = v32;
      }

      ++v5;
      ++v9;
      v10 = v8;
    }

    while (v68 != v9);
    v4 = [obj countByEnumeratingWithState:&v72 objects:v81 count:16];
  }

  while (v4);

  if (v69)
  {
    std::string::basic_string[abi:ne200100]<0>(&v71, [@"fake-stall-end" cStringUsingEncoding:4]);
    AlgosScoreStreamCSVFrameRow::AlgosScoreStreamCSVFrameRow(__p, &v71, intValue == 3, v20, v25, v24, v8, 1.0, v32);
    v45 = std::vector<AlgosScoreStreamCSVFrameRow>::push_back[abi:ne200100](csvData, __p);
    if (SHIBYTE(v79) < 0)
    {
      operator delete(*__p);
    }

    if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v71.__r_.__value_.__l.__data_);
    }

    v47 = nws_algos_log_obj(v45, v46);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
    {
      *__p = 0;
      _os_log_impl(&dword_25BA15000, v47, OS_LOG_TYPE_INFO, "Received no stall end messages", __p, 2u);
    }

    if (v60 < v66)
    {
      v54 = MEMORY[0x277CCA9B8];
      v55 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unexpected stallduration cannot be less than zero start: %1.2f, stop: %1.2f", *&v66, *&v60, 0];
      v56 = [v54 errorWithDomain:v55 code:-1 userInfo:0];
      v57 = v56;

      objc_exception_throw(v56);
    }
  }

  if ((v61 & 1) == 0)
  {
    goto LABEL_109;
  }

LABEL_120:

  return v58;
}

@end