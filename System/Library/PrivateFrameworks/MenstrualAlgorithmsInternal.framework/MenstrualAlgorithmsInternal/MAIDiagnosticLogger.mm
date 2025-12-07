@interface MAIDiagnosticLogger
- (BOOL)notifyState;
- (MAIDiagnosticLogger)init;
- (id).cxx_construct;
- (shared_ptr<nlohmann::basic_json<>>)inputJson;
- (shared_ptr<nlohmann::basic_json<>>)outputJson;
- (shared_ptr<std::ofstream>)inputFile;
- (shared_ptr<std::ofstream>)outputFile;
- (void)appendDay:;
- (void)appendDay:(id)day;
- (void)beginPhase:(unsigned __int8)phase onJulianDay:(unsigned int)day;
- (void)dealloc;
- (void)endPhase:(unsigned __int8)phase onJulianDay:(unsigned int)day;
- (void)init;
- (void)removeOldFiles;
- (void)setInputFile:(shared_ptr<std::ofstream>)file;
- (void)setInputJson:(shared_ptr<nlohmann::basic_json<>>)json;
- (void)setNotifyState:(BOOL)state;
- (void)setOutputFile:(shared_ptr<std::ofstream>)file;
- (void)setOutputJson:(shared_ptr<nlohmann::basic_json<>>)json;
@end

@implementation MAIDiagnosticLogger

- (BOOL)notifyState
{
  state64 = 0;
  notify_get_state([(MAIDiagnosticLogger *)self notifyToken], &state64);
  return state64 != 0;
}

- (void)setNotifyState:(BOOL)state
{
  notify_set_state([(MAIDiagnosticLogger *)self notifyToken], state);
  notificationName = [(MAIDiagnosticLogger *)self notificationName];
  notify_post([notificationName UTF8String]);
}

- (void)removeOldFiles
{
  v38[1] = *MEMORY[0x277D85DE8];
  v2 = ha_get_log(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2588F5000, v2, OS_LOG_TYPE_DEFAULT, "removing old JSON files", buf, 2u);
  }

  v24 = *MEMORY[0x277CBE798];
  v38[0] = *MEMORY[0x277CBE798];
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:1];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [MEMORY[0x277CBEBC0] URLWithString:@"/var/mobile/Library/Logs/CycleTracking"];
  v21 = [defaultManager enumeratorAtURL:v4 includingPropertiesForKeys:v22 options:1 errorHandler:0];

  date = [MEMORY[0x277CBEAA8] date];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v21;
  v5 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v5)
  {
    v6 = *v30;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v30 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v29 + 1) + 8 * i);
        pathExtension = [v8 pathExtension];
        v10 = [pathExtension isEqualToString:@"json"];

        if (v10)
        {
          v27 = 0;
          v28 = 0;
          [v8 getResourceValue:&v28 forKey:v24 error:&v27];
          v11 = v28;
          v12 = v27;
          if (v11 && ([date timeIntervalSinceDate:v11], v13 > 86400.0))
          {
            defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
            v26 = v12;
            v15 = [defaultManager2 removeItemAtURL:v8 error:&v26];
            v16 = v26;

            if (v15)
            {
              v18 = ha_get_log(v17);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                lastPathComponent = [v8 lastPathComponent];
                *buf = 138543362;
                v34 = lastPathComponent;
                _os_log_impl(&dword_2588F5000, v18, OS_LOG_TYPE_DEFAULT, "deleted %{public}@", buf, 0xCu);
              }
            }

            else
            {
              v18 = ha_get_log(v17);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                lastPathComponent2 = [v8 lastPathComponent];
                *buf = 138543618;
                v34 = lastPathComponent2;
                v35 = 2114;
                v36 = v16;
                _os_log_impl(&dword_2588F5000, v18, OS_LOG_TYPE_DEFAULT, "failed to delete %{public}@ with error: %{public}@", buf, 0x16u);
              }
            }
          }

          else
          {
            v16 = v12;
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v5);
  }
}

- (MAIDiagnosticLogger)init
{
  v15 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = MAIDiagnosticLogger;
  v2 = [(MAIDiagnosticLogger *)&v14 init];
  v3 = v2;
  if (v2)
  {
    v2->_notifyToken = -1;
    p_notifyToken = &v2->_notifyToken;
    notificationName = [(MAIDiagnosticLogger *)v2 notificationName];
    v6 = notificationName;
    if (notificationName)
    {
      v7 = notificationName;
      notify_register_check([v6 UTF8String], v3 + 2);
      if (*p_notifyToken != -1)
      {
        is_enabled = [v3 notifyState];
        if (is_enabled & 1) != 0 || (is_enabled = ha_sensitive_logging_is_enabled(), (is_enabled))
        {
          v9 = ha_get_log(is_enabled);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_2588F5000, v9, OS_LOG_TYPE_DEFAULT, "logging is enabled", buf, 2u);
          }

          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(&__p, 0, 0, 0, 2);
        }

        v10 = ha_get_log(is_enabled);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2588F5000, v10, OS_LOG_TYPE_DEFAULT, "logging is disabled", buf, 2u);
        }

        [v3 removeOldFiles];
      }
    }
  }

  return 0;
}

- (void)beginPhase:(unsigned __int8)phase onJulianDay:(unsigned int)day
{
  v12 = *MEMORY[0x277D85DE8];
  objc_msgSend_inputJson(self, a2);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  if (v10)
  {
    objc_msgSend_inputJson(self);
    objc_msgSend_jsonObjectName(self);
    v5 = std::string::append(&v7, ".beginPhase", 0xBuLL);
    v6 = *&v5->__r_.__value_.__l.__data_;
    v9 = v5->__r_.__value_.__r.__words[2];
    *v8 = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<std::string,std::string,0>(&v10, v8);
  }
}

- (void)endPhase:(unsigned __int8)phase onJulianDay:(unsigned int)day
{
  v12 = *MEMORY[0x277D85DE8];
  objc_msgSend_inputJson(self, a2);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  if (v10)
  {
    objc_msgSend_inputJson(self);
    objc_msgSend_jsonObjectName(self);
    v5 = std::string::append(&v7, ".endPhase", 9uLL);
    v6 = *&v5->__r_.__value_.__l.__data_;
    v9 = v5->__r_.__value_.__r.__words[2];
    *v8 = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<std::string,std::string,0>(&v10, v8);
  }
}

- (void)appendDay:(id)day
{
  v7[8] = *MEMORY[0x277D85DE8];
  dayCopy = day;
  objc_msgSend_inputJson(self);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  if (v5)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[10],char [10],0>(v7, "julianDay");
  }
}

- (void)appendDay:
{
  v4 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[12],char [12],0>(v3, "sampleCount");
}

- (void)dealloc
{
  objc_msgSend_inputFile(self, a2);
  if (*buf)
  {
    objc_msgSend_inputJson(self);
    v3 = v8 != 0;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v9);
    }
  }

  else
  {
    v3 = 0;
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  if (v3)
  {
    objc_msgSend_inputFile(self);
    objc_msgSend_inputJson(self);
    nlohmann::operator<<(*buf, v8);
  }

  objc_msgSend_outputFile(self);
  if (*buf)
  {
    objc_msgSend_outputJson(self);
    v4 = v8 != 0;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v9);
    }
  }

  else
  {
    v4 = 0;
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  if (v4)
  {
    objc_msgSend_outputFile(self);
    objc_msgSend_outputJson(self);
    nlohmann::operator<<(*buf, v8);
  }

  notifyToken = [(MAIDiagnosticLogger *)self notifyToken];
  if (notifyToken != -1)
  {
    v6 = ha_get_log(notifyToken);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2588F5000, v6, OS_LOG_TYPE_DEFAULT, "clearing the logging notification state", buf, 2u);
    }

    [(MAIDiagnosticLogger *)self setNotifyState:0];
    notify_cancel([(MAIDiagnosticLogger *)self notifyToken]);
  }

  v7.receiver = self;
  v7.super_class = MAIDiagnosticLogger;
  [(MAIDiagnosticLogger *)&v7 dealloc];
}

- (shared_ptr<nlohmann::basic_json<>>)inputJson
{
  cntrl = self->_inputJson.__cntrl_;
  *v2 = self->_inputJson.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)setInputJson:(shared_ptr<nlohmann::basic_json<>>)json
{
  v4 = *json.__ptr_;
  v3 = *(json.__ptr_ + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_inputJson.__cntrl_;
  self->_inputJson.__ptr_ = v4;
  self->_inputJson.__cntrl_ = v3;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](cntrl);
  }
}

- (shared_ptr<nlohmann::basic_json<>>)outputJson
{
  cntrl = self->_outputJson.__cntrl_;
  *v2 = self->_outputJson.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)setOutputJson:(shared_ptr<nlohmann::basic_json<>>)json
{
  v4 = *json.__ptr_;
  v3 = *(json.__ptr_ + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_outputJson.__cntrl_;
  self->_outputJson.__ptr_ = v4;
  self->_outputJson.__cntrl_ = v3;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](cntrl);
  }
}

- (shared_ptr<std::ofstream>)inputFile
{
  cntrl = self->_inputFile.__cntrl_;
  *v2 = self->_inputFile.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)setInputFile:(shared_ptr<std::ofstream>)file
{
  v4 = *file.__ptr_;
  v3 = *(file.__ptr_ + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_inputFile.__cntrl_;
  self->_inputFile.__ptr_ = v4;
  self->_inputFile.__cntrl_ = v3;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](cntrl);
  }
}

- (shared_ptr<std::ofstream>)outputFile
{
  cntrl = self->_outputFile.__cntrl_;
  *v2 = self->_outputFile.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)setOutputFile:(shared_ptr<std::ofstream>)file
{
  v4 = *file.__ptr_;
  v3 = *(file.__ptr_ + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_outputFile.__cntrl_;
  self->_outputFile.__ptr_ = v4;
  self->_outputFile.__cntrl_ = v3;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](cntrl);
  }
}

- (id).cxx_construct
{
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 1) = 0u;
  *(self + 2) = 0u;
  return self;
}

- (void)init
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  selfCopy = self;
  _os_log_error_impl(&dword_2588F5000, a2, OS_LOG_TYPE_ERROR, "failed to create directory: %{public}@", &v2, 0xCu);
}

@end