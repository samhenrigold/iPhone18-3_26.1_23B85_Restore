@interface CAReportingPerformanceObject
- (CAReportingPerformanceObject)initWithProcessIdentifiers:(id)identifiers;
- (id).cxx_construct;
- (id)endAndReturnPerformanceMetrics;
- (void)abandon;
- (void)begin;
- (void)setConfiguration:(id)configuration;
- (void)setSessions:(void *)sessions;
@end

@implementation CAReportingPerformanceObject

- (CAReportingPerformanceObject)initWithProcessIdentifiers:(id)identifiers
{
  v22 = *MEMORY[0x29EDCA608];
  identifiersCopy = identifiers;
  if (CAReportingUtilityIsInternalBuild())
  {
    v20.receiver = self;
    v20.super_class = CAReportingPerformanceObject;
    v5 = [(CAReportingPerformanceObject *)&v20 init];
    if (v5)
    {
      v6 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
      [(CAReportingPerformanceObject *)v5 setProcessIdentifiers:v6];

      v7 = objc_alloc_init(MEMORY[0x29EDBA020]);
      [(CAReportingPerformanceObject *)v5 setSessionsLock:v7];

      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v8 = identifiersCopy;
      v9 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
      if (v9)
      {
        v10 = *v17;
        do
        {
          v11 = 0;
          do
          {
            if (*v17 != v10)
            {
              objc_enumerationMutation(v8);
            }

            v12 = *(*(&v16 + 1) + 8 * v11);
            processIdentifiers = [(CAReportingPerformanceObject *)v5 processIdentifiers];
            [processIdentifiers addObject:v12];

            ++v11;
          }

          while (v9 != v11);
          v9 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
        }

        while (v9);
      }
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)setConfiguration:(id)configuration
{
  v22 = *MEMORY[0x29EDCA608];
  configurationCopy = configuration;
  sessionsLock = [(CAReportingPerformanceObject *)self sessionsLock];
  [sessionsLock lock];

  objc_storeStrong(&self->_configuration, configuration);
  v7 = [(NSDictionary *)self->_configuration objectForKey:@"CAReportingPerfProcesses"];

  if (v7)
  {
    [(NSDictionary *)self->_configuration objectForKey:@"CAReportingPerfProcesses"];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v8 = v18 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = *v18;
      do
      {
        v11 = 0;
        do
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v17 + 1) + 8 * v11);
          processIdentifiers = [(CAReportingPerformanceObject *)self processIdentifiers];
          v14 = [processIdentifiers containsObject:v12];

          if ((v14 & 1) == 0)
          {
            processIdentifiers2 = [(CAReportingPerformanceObject *)self processIdentifiers];
            [processIdentifiers2 addObject:v12];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }
  }

  sessionsLock2 = [(CAReportingPerformanceObject *)self sessionsLock];
  [sessionsLock2 unlock];
}

- (void)begin
{
  v62 = *MEMORY[0x29EDCA608];
  sessionsLock = [(CAReportingPerformanceObject *)self sessionsLock];
  [sessionsLock lock];

  sessions = [(CAReportingPerformanceObject *)self sessions];
  if (sessions[1] != *sessions)
  {
    v4 = 0;
    do
    {
      [(CAReportingPerformanceObject *)self sessions];
      v5 = pc_session_destroy();
      if (v5)
      {
        v6 = *AA_PerformanceUtilityCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v46.__r_.__value_.__r.__words[0] = strerror(v5);
          caulk::slog::detail::string_converter::string_converter<char *>(&__p, &v46.__r_.__value_.__l.__data_);
          LODWORD(buf.__r_.__value_.__l.__data_) = 136315906;
          *(buf.__r_.__value_.__r.__words + 4) = "CAReportingPerformanceUtility.mm";
          WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = 100;
          WORD1(buf.__r_.__value_.__r.__words[2]) = 1024;
          HIDWORD(buf.__r_.__value_.__r.__words[2]) = v5;
          v56 = 2080;
          *v57 = *&v60[6];
          _os_log_impl(&dword_296C89000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d pc_session_destroy failed { (*__error())=%i, strerror=%s }", &buf, 0x22u);
          if (v59 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }
      }

      sessions2 = [(CAReportingPerformanceObject *)self sessions];
      ++v4;
    }

    while (v4 < (sessions2[1] - *sessions2) >> 3);
  }

  sessions3 = [(CAReportingPerformanceObject *)self sessions];
  sessions3[1] = *sessions3;
  sessions4 = [(CAReportingPerformanceObject *)self sessions];
  processIdentifiers = [(CAReportingPerformanceObject *)self processIdentifiers];
  std::vector<pc_session *>::reserve(sessions4, [processIdentifiers count]);

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  processIdentifiers2 = [(CAReportingPerformanceObject *)self processIdentifiers];
  v12 = [processIdentifiers2 countByEnumeratingWithState:&v51 objects:v61 count:16];
  if (v12)
  {
    v13 = *v52;
    v43 = processIdentifiers2;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v52 != v13)
        {
          objc_enumerationMutation(processIdentifiers2);
        }

        v15 = *(*(&v51 + 1) + 8 * i);
        __errnum = 0;
        v16 = pc_session_create();
        if (!v16)
        {
          v18 = *AA_PerformanceUtilityCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v19 = __errnum;
            v49 = strerror(__errnum);
            caulk::slog::detail::string_converter::string_converter<char *>(&buf, &v49);
            v20 = *&v57[6];
            v21 = __error();
            v45 = strerror(*v21);
            caulk::slog::detail::string_converter::string_converter<char *>(&v46, &v45);
            LODWORD(__p.__r_.__value_.__l.__data_) = 136316162;
            *(__p.__r_.__value_.__r.__words + 4) = "CAReportingPerformanceUtility.mm";
            WORD2(__p.__r_.__value_.__r.__words[1]) = 1024;
            *(&__p.__r_.__value_.__r.__words[1] + 6) = 133;
            WORD1(__p.__r_.__value_.__r.__words[2]) = 1024;
            HIDWORD(__p.__r_.__value_.__r.__words[2]) = v19;
            v59 = 2080;
            *v60 = v20;
            *&v60[8] = 2080;
            *&v60[10] = v48;
            _os_log_impl(&dword_296C89000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d pc_session_create failed { (*__error())=%i, strerror=%s, strerror((*__error()))=%s }", &__p, 0x2Cu);
            if (v47 == 1 && SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v46.__r_.__value_.__l.__data_);
            }

            if (v56 == 1 && SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf.__r_.__value_.__l.__data_);
            }
          }

          goto LABEL_21;
        }

        [v15 intValue];
        v17 = pc_session_set_procpid();
        if (v17)
        {
          v18 = *AA_PerformanceUtilityCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v46.__r_.__value_.__r.__words[0] = strerror(v17);
            caulk::slog::detail::string_converter::string_converter<char *>(&__p, &v46.__r_.__value_.__l.__data_);
            LODWORD(buf.__r_.__value_.__l.__data_) = 136315906;
            *(buf.__r_.__value_.__r.__words + 4) = "CAReportingPerformanceUtility.mm";
            WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
            *(&buf.__r_.__value_.__r.__words[1] + 6) = 111;
            WORD1(buf.__r_.__value_.__r.__words[2]) = 1024;
            HIDWORD(buf.__r_.__value_.__r.__words[2]) = v17;
            v56 = 2080;
            *v57 = *&v60[6];
            _os_log_impl(&dword_296C89000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d pc_session_set_procpid failed { (*__error())=%i, strerror=%s }", &buf, 0x22u);
            if (v59 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

LABEL_21:

          continue;
        }

        v22 = pc_session_add_metric();
        if (v22)
        {
          v23 = *AA_PerformanceUtilityCategory();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v46.__r_.__value_.__r.__words[0] = strerror(v22);
            caulk::slog::detail::string_converter::string_converter<char *>(&__p, &v46.__r_.__value_.__l.__data_);
            LODWORD(buf.__r_.__value_.__l.__data_) = 136315906;
            *(buf.__r_.__value_.__r.__words + 4) = "CAReportingPerformanceUtility.mm";
            WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
            *(&buf.__r_.__value_.__r.__words[1] + 6) = 117;
            WORD1(buf.__r_.__value_.__r.__words[2]) = 1024;
            HIDWORD(buf.__r_.__value_.__r.__words[2]) = v22;
            v56 = 2080;
            *v57 = *&v60[6];
            _os_log_impl(&dword_296C89000, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d pc_session_add_metric for kPCMetricDirtyMemRecentPeakID failed { (*__error())=%i, strerror=%s }", &buf, 0x22u);
            if (v59 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }
        }

        pc_session_add_metric();
        if (v22)
        {
          v24 = *AA_PerformanceUtilityCategory();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            v46.__r_.__value_.__r.__words[0] = strerror(v22);
            caulk::slog::detail::string_converter::string_converter<char *>(&__p, &v46.__r_.__value_.__l.__data_);
            LODWORD(buf.__r_.__value_.__l.__data_) = 136315906;
            *(buf.__r_.__value_.__r.__words + 4) = "CAReportingPerformanceUtility.mm";
            WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
            *(&buf.__r_.__value_.__r.__words[1] + 6) = 122;
            WORD1(buf.__r_.__value_.__r.__words[2]) = 1024;
            HIDWORD(buf.__r_.__value_.__r.__words[2]) = v22;
            v56 = 2080;
            *v57 = *&v60[6];
            _os_log_impl(&dword_296C89000, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d pc_session_add_metric for kPCMetricDirtyMemPeakDeltaID failed { (*__error())=%i, strerror=%s }", &buf, 0x22u);
            if (v59 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }
        }

        v25 = pc_session_begin();
        if (v25)
        {
          v26 = *AA_PerformanceUtilityCategory();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v46.__r_.__value_.__r.__words[0] = strerror(v25);
            caulk::slog::detail::string_converter::string_converter<char *>(&__p, &v46.__r_.__value_.__l.__data_);
            LODWORD(buf.__r_.__value_.__l.__data_) = 136315906;
            *(buf.__r_.__value_.__r.__words + 4) = "CAReportingPerformanceUtility.mm";
            WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
            *(&buf.__r_.__value_.__r.__words[1] + 6) = 127;
            WORD1(buf.__r_.__value_.__r.__words[2]) = 1024;
            HIDWORD(buf.__r_.__value_.__r.__words[2]) = v25;
            v56 = 2080;
            *v57 = *&v60[6];
            _os_log_impl(&dword_296C89000, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d pc_session_begin failed { (*__error())=%i, strerror=%s }", &buf, 0x22u);
            if (v59 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }
        }

        else
        {
          sessions5 = [(CAReportingPerformanceObject *)self sessions];
          v28 = sessions5;
          v30 = sessions5[1];
          v29 = sessions5[2];
          if (v30 >= v29)
          {
            v32 = (v30 - *sessions5) >> 3;
            if ((v32 + 1) >> 61)
            {
              std::vector<pc_session *>::__throw_length_error[abi:ne200100]();
            }

            v33 = v29 - *sessions5;
            v34 = v33 >> 2;
            if (v33 >> 2 <= (v32 + 1))
            {
              v34 = v32 + 1;
            }

            if (v33 >= 0x7FFFFFFFFFFFFFF8)
            {
              v35 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v35 = v34;
            }

            if (v35)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<pc_session *>>(sessions5, v35);
            }

            v36 = (8 * v32);
            *v36 = v16;
            v31 = 8 * v32 + 8;
            v37 = sessions5[1] - *sessions5;
            v38 = v36 - v37;
            memcpy(v36 - v37, *sessions5, v37);
            v39 = *v28;
            *v28 = v38;
            v28[1] = v31;
            v28[2] = 0;
            if (v39)
            {
              operator delete(v39);
            }

            processIdentifiers2 = v43;
          }

          else
          {
            *v30 = v16;
            v31 = (v30 + 1);
          }

          v28[1] = v31;
        }
      }

      v12 = [processIdentifiers2 countByEnumeratingWithState:&v51 objects:v61 count:16];
    }

    while (v12);
  }

  [(CAReportingPerformanceObject *)self setHostApplicationDisplayID:@"unknown"];
  v40 = [(NSDictionary *)self->_configuration objectForKeyedSubscript:@"HostApplicationDisplayID"];
  [(CAReportingPerformanceObject *)self setHostApplicationDisplayID:v40];

  v41 = *AA_PerformanceUtilityCategory();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
    *(__p.__r_.__value_.__r.__words + 4) = "CAReportingPerformanceUtility.mm";
    WORD2(__p.__r_.__value_.__r.__words[1]) = 1024;
    *(&__p.__r_.__value_.__r.__words[1] + 6) = 142;
    _os_log_impl(&dword_296C89000, v41, OS_LOG_TYPE_DEFAULT, "%25s:%-5d CAReportingPerformanceObject action=begin", &__p, 0x12u);
  }

  sessionsLock2 = [(CAReportingPerformanceObject *)self sessionsLock];
  [sessionsLock2 unlock];
}

- (id)endAndReturnPerformanceMetrics
{
  v48 = *MEMORY[0x29EDCA608];
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy_;
  v35 = __Block_byref_object_dispose_;
  v36 = objc_opt_new();
  if ([CAReportingPerformanceObject endAndReturnPerformanceMetrics]::once != -1)
  {
    [CAReportingPerformanceObject endAndReturnPerformanceMetrics];
  }

  sessionsLock = [(CAReportingPerformanceObject *)self sessionsLock];
  [sessionsLock lock];

  v4 = 0;
  *&v5 = 136315394;
  v29 = v5;
  while (1)
  {
    sessions = [(CAReportingPerformanceObject *)self sessions];
    if (v4 >= (sessions[1] - *sessions) >> 3)
    {
      break;
    }

    if (*(*[(CAReportingPerformanceObject *)self sessions]+ 8 * v4))
    {
      [(CAReportingPerformanceObject *)self sessions];
      v7 = pc_session_end();
      if (v7)
      {
        v8 = *AA_PerformanceUtilityCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v30 = strerror(v7);
          caulk::slog::detail::string_converter::string_converter<char *>(&__p, &v30);
          *buf = 136315906;
          v41 = "CAReportingPerformanceUtility.mm";
          v42 = 1024;
          v43 = 172;
          v44 = 1024;
          v45 = v7;
          v46 = 2080;
          v47 = v39;
          _os_log_impl(&dword_296C89000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d pc_session_end failed { (*__error())=%i, strerror=%s }", buf, 0x22u);
          if (v38 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }
      }

      [(CAReportingPerformanceObject *)self sessions];
      procname = pc_session_get_procname();
      if (procname)
      {
        v10 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:procname];
        if (v10)
        {
          v11 = v10;
        }

        else
        {
          v11 = @"Unknown";
        }

        v12 = objc_alloc_init(MEMORY[0x29EDB8E00]);
        [v32[5] setObject:v12 forKeyedSubscript:v11];

        [(CAReportingPerformanceObject *)self sessions];
        v13 = v11;
        values = pc_session_get_values();
        if (values)
        {
          v15 = *AA_PerformanceUtilityCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v30 = strerror(values);
            caulk::slog::detail::string_converter::string_converter<char *>(&__p, &v30);
            *buf = 136315906;
            v41 = "CAReportingPerformanceUtility.mm";
            v42 = 1024;
            v43 = 199;
            v44 = 1024;
            v45 = values;
            v46 = 2080;
            v47 = v39;
            _os_log_impl(&dword_296C89000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d pc_session_get_values failed { (*__error())=%i, strerror=%s }", buf, 0x22u);
            if (v38 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }
        }

        if ([CAReportingPerformanceObject endAndReturnPerformanceMetrics]::perfWriterEnabled == 1)
        {
          hostApplicationDisplayID = [(CAReportingPerformanceObject *)self hostApplicationDisplayID];
          v17 = [v32[5] objectForKeyedSubscript:v13];
          [v17 setObject:hostApplicationDisplayID forKeyedSubscript:@"HostApplicationDisplayID"];

          v18 = CAReportingUtilityGenerateServiceNameFromServiceType(self->_serviceType);
          v19 = [v32[5] objectForKeyedSubscript:v13];
          [v19 setObject:v18 forKeyedSubscript:@"serviceType"];
        }
      }

      else
      {
        v21 = *AA_PerformanceUtilityCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          LODWORD(__p.__r_.__value_.__l.__data_) = v29;
          *(__p.__r_.__value_.__r.__words + 4) = "CAReportingPerformanceUtility.mm";
          WORD2(__p.__r_.__value_.__r.__words[1]) = 1024;
          *(&__p.__r_.__value_.__r.__words[1] + 6) = 207;
          _os_log_impl(&dword_296C89000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d pc_session_get_procname failed", &__p, 0x12u);
        }
      }

      [(CAReportingPerformanceObject *)self sessions];
      v22 = pc_session_destroy();
      if (v22)
      {
        v23 = *AA_PerformanceUtilityCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v30 = strerror(v22);
          caulk::slog::detail::string_converter::string_converter<char *>(&__p, &v30);
          *buf = 136315906;
          v41 = "CAReportingPerformanceUtility.mm";
          v42 = 1024;
          v43 = 212;
          v44 = 1024;
          v45 = v22;
          v46 = 2080;
          v47 = v39;
          _os_log_impl(&dword_296C89000, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d pc_session_destroy failed { (*__error())=%i, strerror=%s }", buf, 0x22u);
          if (v38 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }
      }
    }

    else
    {
      v20 = *AA_PerformanceUtilityCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        LODWORD(__p.__r_.__value_.__l.__data_) = v29;
        *(__p.__r_.__value_.__r.__words + 4) = "CAReportingPerformanceUtility.mm";
        WORD2(__p.__r_.__value_.__r.__words[1]) = 1024;
        *(&__p.__r_.__value_.__r.__words[1] + 6) = 166;
        _os_log_impl(&dword_296C89000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d Attempting to end invalid pc_session", &__p, 0x12u);
      }
    }

    ++v4;
  }

  sessions2 = [(CAReportingPerformanceObject *)self sessions];
  sessions2[1] = *sessions2;
  v25 = *AA_PerformanceUtilityCategory();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(__p.__r_.__value_.__l.__data_) = v29;
    *(__p.__r_.__value_.__r.__words + 4) = "CAReportingPerformanceUtility.mm";
    WORD2(__p.__r_.__value_.__r.__words[1]) = 1024;
    *(&__p.__r_.__value_.__r.__words[1] + 6) = 218;
    _os_log_impl(&dword_296C89000, v25, OS_LOG_TYPE_DEFAULT, "%25s:%-5d CAReportingPerformanceObject action=destroy", &__p, 0x12u);
  }

  sessionsLock2 = [(CAReportingPerformanceObject *)self sessionsLock];
  [sessionsLock2 unlock];

  v27 = v32[5];
  _Block_object_dispose(&v31, 8);

  return v27;
}

BOOL __62__CAReportingPerformanceObject_endAndReturnPerformanceMetrics__block_invoke()
{
  result = CAReportingUtilityReadBooleanPref(&cfstr_CareportingEna.isa, &cfstr_ComAppleCoreau_0.isa);
  [CAReportingPerformanceObject endAndReturnPerformanceMetrics]::perfWriterEnabled = result;
  return result;
}

void __62__CAReportingPerformanceObject_endAndReturnPerformanceMetrics__block_invoke_24(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v20[2] = *MEMORY[0x29EDCA608];
  v12 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:{a7, a5, a6}];
  if (v12)
  {
    if ([CAReportingPerformanceObject endAndReturnPerformanceMetrics]::perfWriterEnabled == 1)
    {
      v19[0] = @"value";
      v13 = [MEMORY[0x29EDBA070] numberWithDouble:a2];
      v19[1] = @"unit";
      v20[0] = v13;
      v14 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:a9];
      v20[1] = v14;
      v15 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
      v16 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:*(a1 + 32)];
      [v16 setObject:v15 forKeyedSubscript:v12];
    }

    else
    {
      v13 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:*(a1 + 32)];
      v17 = v12;
      v14 = [MEMORY[0x29EDBA070] numberWithDouble:a2];
      v18 = v14;
      v15 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      [v13 addEntriesFromDictionary:v15];
    }
  }
}

- (void)abandon
{
  v32 = *MEMORY[0x29EDCA608];
  sessionsLock = [(CAReportingPerformanceObject *)self sessionsLock];
  [sessionsLock lock];

  sessions = [(CAReportingPerformanceObject *)self sessions];
  if (*sessions != sessions[1])
  {
    sessions2 = [(CAReportingPerformanceObject *)self sessions];
    if (sessions2[1] != *sessions2)
    {
      v7 = 0;
      *&v6 = 136315906;
      v19 = v6;
      do
      {
        [(CAReportingPerformanceObject *)self sessions];
        v8 = pc_session_end();
        if (v8)
        {
          v9 = *AA_PerformanceUtilityCategory();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            v20 = strerror(v8);
            caulk::slog::detail::string_converter::string_converter<char *>(&__p, &v20);
            *buf = v19;
            v25 = "CAReportingPerformanceUtility.mm";
            v26 = 1024;
            v27 = 239;
            v28 = 1024;
            v29 = v8;
            v30 = 2080;
            v31 = v23;
            _os_log_impl(&dword_296C89000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d pc_session_end failed { (*__error())=%i, strerror=%s }", buf, 0x22u);
            if (v22 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }
        }

        [(CAReportingPerformanceObject *)self sessions];
        v10 = pc_session_destroy();
        if (v10)
        {
          v11 = *AA_PerformanceUtilityCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            v20 = strerror(v10);
            caulk::slog::detail::string_converter::string_converter<char *>(&__p, &v20);
            *buf = v19;
            v25 = "CAReportingPerformanceUtility.mm";
            v26 = 1024;
            v27 = 244;
            v28 = 1024;
            v29 = v10;
            v30 = 2080;
            v31 = v23;
            _os_log_impl(&dword_296C89000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d pc_session_destroy failed { (*__error())=%i, strerror=%s }", buf, 0x22u);
            if (v22 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }
        }

        sessions3 = [(CAReportingPerformanceObject *)self sessions];
        ++v7;
      }

      while (v7 < (sessions3[1] - *sessions3) >> 3);
    }

    sessions4 = [(CAReportingPerformanceObject *)self sessions];
    sessions4[1] = *sessions4;
  }

  processIdentifiers = [(CAReportingPerformanceObject *)self processIdentifiers];
  v15 = [processIdentifiers count] == 0;

  if (!v15)
  {
    processIdentifiers2 = [(CAReportingPerformanceObject *)self processIdentifiers];
    [processIdentifiers2 removeAllObjects];
  }

  v17 = *AA_PerformanceUtilityCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
    *(__p.__r_.__value_.__r.__words + 4) = "CAReportingPerformanceUtility.mm";
    WORD2(__p.__r_.__value_.__r.__words[1]) = 1024;
    *(&__p.__r_.__value_.__r.__words[1] + 6) = 254;
    _os_log_impl(&dword_296C89000, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d CAReportingPerformanceObject action=abandon", &__p, 0x12u);
  }

  sessionsLock2 = [(CAReportingPerformanceObject *)self sessionsLock];
  [sessionsLock2 unlock];
}

- (void)setSessions:(void *)sessions
{
  p_sessions = &self->_sessions;
  if (p_sessions != sessions)
  {
    std::vector<pc_session *>::__assign_with_size[abi:ne200100]<pc_session **,pc_session **>(&p_sessions->__begin_, *sessions, *(sessions + 1), (*(sessions + 1) - *sessions) >> 3);
  }
}

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 8) = 0;
  *(self + 9) = 0;
  return self;
}

@end