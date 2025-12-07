@interface SNLPSSUMatcher
+ (id)matcherWithDirectories:(id)directories initializeModelsPreemptively:(BOOL)preemptively error:(id *)error;
+ (unordered_set<std::string,)_loadAppShortcutAlwaysTriggeredAllowList;
- (BOOL)_performFullCacheUpdateInnerWithUserShortcuts:(id)shortcuts applicationInfos:(id)infos error:(id *)error;
- (BOOL)deregisterApp:(id)app error:(id *)error;
- (BOOL)handleUserShortcutsDatabaseChanged:(id)changed error:(id *)error;
- (BOOL)registerApp:(id)app error:(id *)error;
- (id)_initWithCacheDirectoryURL:(id)l cppMatcher:()unique_ptr<snlp:(std::default_delete<snlp::ssu::matcher::SSUMatcher>>)snlp :ssu::matcher::SSUMatcher;
- (id)responseForRequest:(id)request error:(id *)error;
@end

@implementation SNLPSSUMatcher

+ (unordered_set<std::string,)_loadAppShortcutAlwaysTriggeredAllowList
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = +[SNLPSSUConfig loadAppShortcutAlwaysTriggeredAllowList];
  retstr->var0.var0 = 0u;
  *&retstr->var0.var1.var0 = 0u;
  retstr->var0.var3 = 1.0;
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__rehash<true>(retstr, [v4 count]);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, [*(*(&v12 + 1) + 8 * v8) UTF8String]);
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(retstr, __p, __p);
        if (v11 < 0)
        {
          operator delete(__p[0]);
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return result;
}

- (BOOL)_performFullCacheUpdateInnerWithUserShortcuts:(id)shortcuts applicationInfos:(id)infos error:(id *)error
{
  v94[2] = *MEMORY[0x277D85DE8];
  shortcutsCopy = shortcuts;
  infosCopy = infos;
  selfCopy = self;
  v65 = self->__systemEventLock;
  objc_sync_enter(v65);
  v67 = shortcutsCopy;
  v94[0] = snlp::ssu::selflogging::logBackgroundUpdateStarted(3);
  v94[1] = v8;
  LOBYTE(v82) = 0;
  v84 = 0;
  if (shortcutsCopy)
  {
    v82 = 0;
    v83 = 0uLL;
    v84 = 1;
    std::vector<snlp::ssu::cache::SSUCacheObjectParameter>::reserve(&v82, [shortcutsCopy count]);
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    obj = shortcutsCopy;
    v9 = [obj countByEnumeratingWithState:&v78 objects:v93 count:16];
    if (v9)
    {
      v10 = *v79;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v79 != v10)
          {
            objc_enumerationMutation(obj);
          }

          if ((v84 & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          v12 = *(*(&v78 + 1) + 8 * i);
          identifier = [v12 identifier];
          v14 = identifier;
          std::string::basic_string[abi:ne200100]<0>(buf, [identifier UTF8String]);
          phrase = [v12 phrase];
          v16 = phrase;
          std::string::basic_string[abi:ne200100]<0>(&__p, [phrase UTF8String]);
          v17 = v83;
          if (v83 >= *(&v83 + 1))
          {
            v20 = 0xAAAAAAAAAAAAAAABLL * ((v83 - v82) >> 4);
            v21 = v20 + 1;
            if (v20 + 1 > 0x555555555555555)
            {
              std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
            }

            if (0x5555555555555556 * ((*(&v83 + 1) - v82) >> 4) > v21)
            {
              v21 = 0x5555555555555556 * ((*(&v83 + 1) - v82) >> 4);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((*(&v83 + 1) - v82) >> 4) >= 0x2AAAAAAAAAAAAAALL)
            {
              v22 = 0x555555555555555;
            }

            else
            {
              v22 = v21;
            }

            v86 = &v82;
            if (v22)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<snlp::ssu::cache::SSUCacheObjectParameter>>(v22);
            }

            v23 = 16 * ((v83 - v82) >> 4);
            *v85 = 0;
            *&v85[8] = v23;
            *&v85[24] = 0;
            v24 = *buf;
            *(v23 + 16) = v91;
            *v23 = v24;
            v91 = 0;
            memset(buf, 0, sizeof(buf));
            v25 = *&__p.__r_.__value_.__l.__data_;
            *(v23 + 40) = *(&__p.__r_.__value_.__l + 2);
            *(v23 + 24) = v25;
            memset(&__p, 0, sizeof(__p));
            *&v85[16] = 48 * v20 + 48;
            v26 = 48 * v20 + v82 - v83;
            std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<snlp::ssu::cache::SSUCacheObjectParameter>,snlp::ssu::cache::SSUCacheObjectParameter*>(&v82, v82, v83, v23 + v82 - v83);
            v27 = v82;
            v28 = *(&v83 + 1);
            v82 = v26;
            v70 = *&v85[16];
            v83 = *&v85[16];
            *&v85[16] = v27;
            *&v85[24] = v28;
            *v85 = v27;
            *&v85[8] = v27;
            std::__split_buffer<snlp::ssu::cache::SSUCacheObjectParameter>::~__split_buffer(v85);
            *&v83 = v70;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            v18 = *buf;
            *(v83 + 16) = v91;
            *v17 = v18;
            v91 = 0;
            memset(buf, 0, sizeof(buf));
            v19 = __p.__r_.__value_.__r.__words[2];
            *(v17 + 24) = *&__p.__r_.__value_.__l.__data_;
            *(v17 + 40) = v19;
            memset(&__p, 0, sizeof(__p));
            *&v83 = v17 + 48;
          }

          if (SHIBYTE(v91) < 0)
          {
            operator delete(*buf);
          }
        }

        v9 = [obj countByEnumeratingWithState:&v78 objects:v93 count:16];
      }

      while (v9);
    }
  }

  v76 = 0;
  v77 = 0uLL;
  v29 = [infosCopy count];
  if (v29)
  {
    if (v29 <= 0x555555555555555)
    {
      __p.__r_.__value_.__l.__size_ = &v76;
      std::__allocate_at_least[abi:ne200100]<std::allocator<snlp::ssu::cache::SSUCacheObjectParameter>>(v29);
    }

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  v30 = [MEMORY[0x277CBEB58] set];
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  obja = infosCopy;
  v31 = [obja countByEnumeratingWithState:&v72 objects:v89 count:16];
  if (v31)
  {
    v32 = *v73;
    while (2)
    {
      for (j = 0; j != v31; ++j)
      {
        if (*v73 != v32)
        {
          objc_enumerationMutation(obja);
        }

        v34 = *(*(&v72 + 1) + 8 * j);
        bundleIdentifier = [v34 bundleIdentifier];
        if ([v30 containsObject:bundleIdentifier])
        {
          if (error)
          {
            v57 = *MEMORY[0x277CCA450];
            v88[0] = @"Could not perform full cache update.";
            v58 = *MEMORY[0x277CCA470];
            v87[0] = v57;
            v87[1] = v58;
            v59 = [MEMORY[0x277CCACA8] stringWithFormat:@"There was a duplicate app bundle ID in applicationInfos: %@.", bundleIdentifier];
            v87[2] = *MEMORY[0x277CCA498];
            v88[1] = v59;
            v88[2] = @"Ensure that only unique apps are passed.";
            v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v88 forKeys:v87 count:3];

            *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"SNLPSSUErrorDomain" code:2 userInfo:v60];
          }

          snlp::ssu::selflogging::logBackgroundUpdateFailed(v94);

          v61 = 0;
          goto LABEL_66;
        }

        [v30 addObject:bundleIdentifier];
        bundleIdentifier2 = [v34 bundleIdentifier];
        v37 = bundleIdentifier2;
        std::string::basic_string[abi:ne200100]<0>(buf, [bundleIdentifier2 UTF8String]);
        assetURL = [v34 assetURL];
        path = [assetURL path];
        v40 = path;
        *v85 = [path UTF8String];
        std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&__p, v85);

        v41 = v77;
        if (v77 >= *(&v77 + 1))
        {
          v44 = 0xAAAAAAAAAAAAAAABLL * ((v77 - v76) >> 4);
          v45 = v44 + 1;
          if (v44 + 1 > 0x555555555555555)
          {
            std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
          }

          if (0x5555555555555556 * ((*(&v77 + 1) - v76) >> 4) > v45)
          {
            v45 = 0x5555555555555556 * ((*(&v77 + 1) - v76) >> 4);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((*(&v77 + 1) - v76) >> 4) >= 0x2AAAAAAAAAAAAAALL)
          {
            v46 = 0x555555555555555;
          }

          else
          {
            v46 = v45;
          }

          v86 = &v76;
          if (v46)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<snlp::ssu::cache::SSUCacheObjectParameter>>(v46);
          }

          v47 = 16 * ((v77 - v76) >> 4);
          *v85 = 0;
          *&v85[8] = v47;
          *&v85[24] = 0;
          v48 = *buf;
          *(v47 + 16) = v91;
          *v47 = v48;
          v91 = 0;
          memset(buf, 0, sizeof(buf));
          v49 = *&__p.__r_.__value_.__l.__data_;
          *(v47 + 40) = *(&__p.__r_.__value_.__l + 2);
          *(v47 + 24) = v49;
          memset(&__p, 0, sizeof(__p));
          *&v85[16] = 48 * v44 + 48;
          v50 = &v76[48 * v44 - v77];
          std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<snlp::ssu::cache::SSUCacheObjectParameter>,snlp::ssu::cache::SSUCacheObjectParameter*>(&v76, v76, v77, v50);
          v51 = v76;
          v52 = *(&v77 + 1);
          v76 = v50;
          v71 = *&v85[16];
          v77 = *&v85[16];
          *&v85[16] = v51;
          *&v85[24] = v52;
          *v85 = v51;
          *&v85[8] = v51;
          std::__split_buffer<snlp::ssu::cache::SSUCacheObjectParameter>::~__split_buffer(v85);
          *&v77 = v71;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v42 = *buf;
          *(v77 + 16) = v91;
          *v41 = v42;
          v91 = 0;
          memset(buf, 0, sizeof(buf));
          v43 = __p.__r_.__value_.__r.__words[2];
          *(v41 + 24) = *&__p.__r_.__value_.__l.__data_;
          *(v41 + 40) = v43;
          memset(&__p, 0, sizeof(__p));
          *&v77 = v41 + 48;
        }

        if (SHIBYTE(v91) < 0)
        {
          operator delete(*buf);
        }
      }

      v31 = [obja countByEnumeratingWithState:&v72 objects:v89 count:16];
      if (v31)
      {
        continue;
      }

      break;
    }
  }

  v53 = SNLPOSLoggerForCategory(8);
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    *&buf[4] = 0xAAAAAAAAAAAAAAABLL * ((v77 - v76) >> 4);
    _os_log_impl(&dword_22284A000, v53, OS_LOG_TYPE_DEBUG, "Performing full cache update for %lu applications", buf, 0xCu);
  }

  if (v84 == 1)
  {
    v54 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
    {
      if ((v84 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      *buf = 134217984;
      *&buf[4] = 0xAAAAAAAAAAAAAAABLL * ((v83 - v82) >> 4);
      _os_log_impl(&dword_22284A000, v54, OS_LOG_TYPE_DEBUG, "Performing full cache update for %lu configured user shortcuts", buf, 0xCu);
    }
  }

  snlp::ssu::matcher::SSUMatcher::performFullCacheUpdate(selfCopy->_cppMatcher.__ptr_, &v76, &v82, buf);
  ptr = selfCopy->_cppMatcher.__ptr_;
  if (*(ptr + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v85, *ptr, *(ptr + 1));
  }

  else
  {
    v56 = *ptr;
    *&v85[16] = *(ptr + 2);
    *v85 = v56;
  }

  snlp::ssu::selflogging::logBackgroundUpdateEnded(v94, v85, buf);
  if ((v85[23] & 0x80000000) != 0)
  {
    operator delete(*v85);
  }

  *v85 = buf;
  std::vector<snlp::ssu::selflogging::SSUBackgroundUpdateAppInfo>::__destroy_vector::operator()[abi:ne200100](v85);
  v61 = 1;
LABEL_66:

  *buf = &v76;
  std::vector<snlp::ssu::app::SSUAppParameter>::__destroy_vector::operator()[abi:ne200100](buf);
  if (v84 == 1)
  {
    *buf = &v82;
    std::vector<snlp::ssu::app::SSUAppParameter>::__destroy_vector::operator()[abi:ne200100](buf);
  }

  objc_sync_exit(v65);

  return v61;
}

- (id)_initWithCacheDirectoryURL:(id)l cppMatcher:()unique_ptr<snlp:(std::default_delete<snlp::ssu::matcher::SSUMatcher>>)snlp :ssu::matcher::SSUMatcher
{
  lCopy = l;
  v13.receiver = self;
  v13.super_class = SNLPSSUMatcher;
  v8 = [(SNLPSSUMatcher *)&v13 init];
  objc_storeStrong(v8 + 2, l);
  v9 = objc_alloc_init(MEMORY[0x277D82BB8]);
  v10 = *(v8 + 3);
  *(v8 + 3) = v9;

  v11 = *snlp.__ptr_;
  *snlp.__ptr_ = 0;
  std::unique_ptr<snlp::ssu::matcher::SSUMatcher>::reset[abi:ne200100](v8 + 1, v11);

  return v8;
}

- (id)responseForRequest:(id)request error:(id *)error
{
  v26[2] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v6 = SNLPOSLoggerForCategory(8);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_22284A000, v6, OS_LOG_TYPE_DEBUG, "Handling call to [SNLPSSUMatcher responseForRequest:error:]", buf, 2u);
  }

  v7 = SNLPOSLoggerForCategory(7);
  v8 = os_signpost_id_generate(v7);

  v9 = SNLPOSLoggerForCategory(7);
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22284A000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "SNLPSSUMatcher responseForRequest", "", buf, 2u);
  }

  v11 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22284A000, v11, OS_LOG_TYPE_DEFAULT, "BEGIN SNLPSSUMatcher responseForRequest", buf, 2u);
  }

  objc_msgSend_convertSSURequestFromObjCToCpp_(MEMORY[0x277D5DF00]);
  if (v22)
  {
    if (*(v22 + 48))
    {
      MEMORY[0x223DC30E0](buf);
      snlp::ssu::selflogging::logUserRequestStarted(buf, v12);
    }

    if (!error)
    {
      goto LABEL_16;
    }

    v16 = *MEMORY[0x277CCA470];
    v23[0] = *MEMORY[0x277CCA450];
    v23[1] = v16;
    v24[0] = @"Could not produce an SSU response for the given request.";
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"The SSU request has no request ID"];
    v24[1] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];

    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"SNLPSSUErrorDomain" code:10 userInfo:v18];
  }

  else
  {
    if (!error)
    {
      goto LABEL_18;
    }

    v13 = *MEMORY[0x277CCA470];
    v25[0] = *MEMORY[0x277CCA450];
    v25[1] = v13;
    v26[0] = @"Could not produce an SSU response for the given request.";
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not convert ObjC proto SSU request to C++ proto SSU request"];
    v26[1] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];

    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"SNLPSSUErrorDomain" code:5 userInfo:v15];
  }

  error = 0;
LABEL_16:
  v19 = v22;
  v22 = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

LABEL_18:

  return error;
}

- (BOOL)handleUserShortcutsDatabaseChanged:(id)changed error:(id *)error
{
  v49 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  objc_sync_enter(self->__systemEventLock);
  updated = snlp::ssu::selflogging::logBackgroundUpdateStarted(4);
  v48 = v4;
  v5 = SNLPOSLoggerForCategory(8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = [changedCopy count];
    _os_log_impl(&dword_22284A000, v5, OS_LOG_TYPE_DEBUG, "Handling user shortcuts database changed event with %lu configured user shortcuts", &buf, 0xCu);
  }

  v35 = 0;
  v36 = 0uLL;
  std::vector<snlp::ssu::cache::SSUCacheObjectParameter>::reserve(&v35, [changedCopy count]);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = changedCopy;
  v6 = [obj countByEnumeratingWithState:&v31 objects:v46 count:16];
  if (v6)
  {
    v7 = *v32;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v31 + 1) + 8 * i);
        identifier = [v9 identifier];
        v11 = identifier;
        std::string::basic_string[abi:ne200100]<0>(&buf, [identifier UTF8String]);
        phrase = [v9 phrase];
        v13 = phrase;
        std::string::basic_string[abi:ne200100]<0>(&__p, [phrase UTF8String]);
        v14 = v36;
        if (v36 >= *(&v36 + 1))
        {
          v17 = 0xAAAAAAAAAAAAAAABLL * ((v36 - v35) >> 4);
          v18 = v17 + 1;
          if (v17 + 1 > 0x555555555555555)
          {
            std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
          }

          if (0x5555555555555556 * ((*(&v36 + 1) - v35) >> 4) > v18)
          {
            v18 = 0x5555555555555556 * ((*(&v36 + 1) - v35) >> 4);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((*(&v36 + 1) - v35) >> 4) >= 0x2AAAAAAAAAAAAAALL)
          {
            v19 = 0x555555555555555;
          }

          else
          {
            v19 = v18;
          }

          v40 = &v35;
          if (v19)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<snlp::ssu::cache::SSUCacheObjectParameter>>(v19);
          }

          v20 = 16 * ((v36 - v35) >> 4);
          v37 = 0;
          v38 = v20;
          *(&v39 + 1) = 0;
          v21 = buf;
          *(v20 + 16) = v42;
          *v20 = v21;
          v42 = 0;
          buf = 0uLL;
          v22 = __p;
          *(v20 + 40) = v44;
          *(v20 + 24) = v22;
          v44 = 0;
          __p = 0uLL;
          *&v39 = 48 * v17 + 48;
          v23 = 48 * v17 + v35 - v36;
          std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<snlp::ssu::cache::SSUCacheObjectParameter>,snlp::ssu::cache::SSUCacheObjectParameter*>(&v35, v35, v36, v20 + v35 - v36);
          v24 = v35;
          v25 = *(&v36 + 1);
          v35 = v23;
          v30 = v39;
          v36 = v39;
          *&v39 = v24;
          *(&v39 + 1) = v25;
          v37 = v24;
          v38 = v24;
          std::__split_buffer<snlp::ssu::cache::SSUCacheObjectParameter>::~__split_buffer(&v37);
          *&v36 = v30;
          if (SHIBYTE(v44) < 0)
          {
            operator delete(__p);
          }
        }

        else
        {
          v15 = buf;
          *(v36 + 16) = v42;
          *v14 = v15;
          v42 = 0;
          buf = 0uLL;
          v16 = v44;
          *(v14 + 24) = __p;
          *(v14 + 40) = v16;
          v44 = 0;
          __p = 0uLL;
          *&v36 = v14 + 48;
        }

        if (SHIBYTE(v42) < 0)
        {
          operator delete(buf);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v31 objects:v46 count:16];
    }

    while (v6);
  }

  LOBYTE(buf) = 0;
  v45 = 0;
  snlp::ssu::matcher::SSUMatcher::handleUserShortcutsDatabaseChanged(self->_cppMatcher.__ptr_, &v35);
}

- (BOOL)deregisterApp:(id)app error:(id *)error
{
  v30[2] = *MEMORY[0x277D85DE8];
  appCopy = app;
  v7 = self->__systemEventLock;
  objc_sync_enter(v7);
  v30[0] = snlp::ssu::selflogging::logBackgroundUpdateStarted(2);
  v30[1] = v8;
  v9 = SNLPOSLoggerForCategory(8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 138412290;
    *(buf.__r_.__value_.__r.__words + 4) = appCopy;
    _os_log_impl(&dword_22284A000, v9, OS_LOG_TYPE_DEBUG, "Attempting to deregister app with bundle ID: %@", &buf, 0xCu);
  }

  buf.__r_.__value_.__s.__data_[0] = 0;
  v29 = 0;
  ptr = self->_cppMatcher.__ptr_;
  v11 = appCopy;
  std::string::basic_string[abi:ne200100]<0>(&v18, [appCopy UTF8String]);
  snlp::ssu::matcher::SSUMatcher::deregisterApp(ptr, &v18, &v21);
  std::__optional_storage_base<snlp::ssu::selflogging::SSUBackgroundUpdateAppInfo,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<snlp::ssu::selflogging::SSUBackgroundUpdateAppInfo,false>>(&buf, &v21);
  if (v24[0] == 1)
  {
    if (__p[0])
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (v29)
  {
    v12 = self->_cppMatcher.__ptr_;
    if (*(v12 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v18, *v12, *(v12 + 1));
    }

    else
    {
      v13 = *v12;
      v18.__r_.__value_.__r.__words[2] = *(v12 + 2);
      *&v18.__r_.__value_.__l.__data_ = v13;
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v21, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
    }

    else
    {
      v21 = buf;
    }

    v22 = v26;
    memset(__p, 0, sizeof(__p));
    std::vector<snlp::ssu::selflogging::SSUBackgroundUpdateAppCategoryInfo>::__init_with_size[abi:ne200100]<snlp::ssu::selflogging::SSUBackgroundUpdateAppCategoryInfo*,snlp::ssu::selflogging::SSUBackgroundUpdateAppCategoryInfo*>(__p, v27, v28, (v28 - v27) >> 4);
    memset(v17, 0, sizeof(v17));
    std::vector<snlp::ssu::selflogging::SSUBackgroundUpdateAppInfo>::__init_with_size[abi:ne200100]<snlp::ssu::selflogging::SSUBackgroundUpdateAppInfo const*,snlp::ssu::selflogging::SSUBackgroundUpdateAppInfo const*>(v17, &v21, v24);
  }

  snlp::ssu::selflogging::logBackgroundUpdateFailed(v30);
  if (error)
  {
    v19[0] = *MEMORY[0x277CCA450];
    appCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not deregister app: %@.", appCopy];
    v19[1] = *MEMORY[0x277CCA470];
    v20[0] = appCopy;
    v20[1] = @"A failure was encountered during deregisteration.";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];

    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"SNLPSSUErrorDomain" code:3 userInfo:v15];

    LOBYTE(error) = 0;
  }

  objc_sync_exit(v7);

  return error;
}

- (BOOL)registerApp:(id)app error:(id *)error
{
  v31[2] = *MEMORY[0x277D85DE8];
  appCopy = app;
  v6 = self->__systemEventLock;
  objc_sync_enter(v6);
  v31[0] = snlp::ssu::selflogging::logBackgroundUpdateStarted(1);
  v31[1] = v7;
  v8 = SNLPOSLoggerForCategory(8);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 138412290;
    *(buf.__r_.__value_.__r.__words + 4) = appCopy;
    _os_log_impl(&dword_22284A000, v8, OS_LOG_TYPE_DEBUG, "Attempting to register app with info: %@", &buf, 0xCu);
  }

  bundleIdentifier = [appCopy bundleIdentifier];
  v10 = bundleIdentifier;
  std::string::basic_string[abi:ne200100]<0>(v19, [bundleIdentifier UTF8String]);
  assetURL = [appCopy assetURL];
  path = [assetURL path];
  v13 = path;
  buf.__r_.__value_.__r.__words[0] = [path UTF8String];
  std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v21, &buf);

  buf.__r_.__value_.__s.__data_[0] = 0;
  v30 = 0;
  snlp::ssu::matcher::SSUMatcher::registerApp(self->_cppMatcher.__ptr_, v19, &v22);
  std::__optional_storage_base<snlp::ssu::selflogging::SSUBackgroundUpdateAppInfo,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<snlp::ssu::selflogging::SSUBackgroundUpdateAppInfo,false>>(&buf, &v22);
  if (v25[0] == 1)
  {
    if (__p[0])
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }
  }

  if (v30)
  {
    ptr = self->_cppMatcher.__ptr_;
    if (*(ptr + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v18, *ptr, *(ptr + 1));
    }

    else
    {
      v15 = *ptr;
      v18.__r_.__value_.__r.__words[2] = *(ptr + 2);
      *&v18.__r_.__value_.__l.__data_ = v15;
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v22, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
    }

    else
    {
      v22 = buf;
    }

    v23 = v27;
    memset(__p, 0, sizeof(__p));
    std::vector<snlp::ssu::selflogging::SSUBackgroundUpdateAppCategoryInfo>::__init_with_size[abi:ne200100]<snlp::ssu::selflogging::SSUBackgroundUpdateAppCategoryInfo*,snlp::ssu::selflogging::SSUBackgroundUpdateAppCategoryInfo*>(__p, v28, v29, (v29 - v28) >> 4);
    memset(v17, 0, sizeof(v17));
    std::vector<snlp::ssu::selflogging::SSUBackgroundUpdateAppInfo>::__init_with_size[abi:ne200100]<snlp::ssu::selflogging::SSUBackgroundUpdateAppInfo const*,snlp::ssu::selflogging::SSUBackgroundUpdateAppInfo const*>(v17, &v22, v25);
  }

  snlp::ssu::selflogging::logBackgroundUpdateFailed(v31);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  objc_sync_exit(v6);

  return 0;
}

+ (id)matcherWithDirectories:(id)directories initializeModelsPreemptively:(BOOL)preemptively error:(id *)error
{
  preemptivelyCopy = preemptively;
  v21 = *MEMORY[0x277D85DE8];
  directoriesCopy = directories;
  cacheDirectoryURL = [directoriesCopy cacheDirectoryURL];
  __p[0] = [cacheDirectoryURL fileSystemRepresentation];
  std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v17, __p);
  modelAssetsDirectoryURL = [directoriesCopy modelAssetsDirectoryURL];
  v10 = modelAssetsDirectoryURL;
  v15[0] = [modelAssetsDirectoryURL fileSystemRepresentation];
  std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v18, v15);
  datasetAssetsDirectoryURL = [directoriesCopy datasetAssetsDirectoryURL];
  v12 = datasetAssetsDirectoryURL;
  v14[0] = [datasetAssetsDirectoryURL fileSystemRepresentation];
  std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v19, v14);

  __p[5] = 0;
  objc_msgSend__loadAppShortcutAlwaysTriggeredAllowList(self);
  objc_msgSend_loadUInt32ListFromConfigPListResourceName_(SNLPAssetVersionChecker);
  v20 = xmmword_2229D29E0;
  std::unordered_set<unsigned int>::unordered_set(v14, &v20, 4);
  if (preemptivelyCopy)
  {
    snlp::ssu::matcher::SSUMatcher::buildFromPathsWithImmediateInitialize(__p, v15, v14, &v17);
  }

  snlp::ssu::matcher::SSUMatcher::buildFromPathsWithLazyInitialize(__p, v15, v14, &v17);
}

@end