@interface PluginDecoder
+ (id)decoderWithData:(uint64_t)data;
+ (id)persistentContext:(id)context;
- (id).cxx_construct;
- (id)GetAppletProperties:(id)properties withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error;
- (id)getAppletStateAndHistory:(id)history withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error;
- (id)getServiceProviderData:(id)data withPackage:(id)package withModule:(id)module withPublicKey:(id)key withEncryptionScheme:(id)scheme withTransceiver:(id)transceiver withError:(id *)error;
- (id)getServiceProviderData:(id)data withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error;
- (id)initWithData:(id)data;
- (id)parseHCIEvent:(id)event withApplet:(id)applet withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error;
- (id)processEndOfTransaction:(id)transaction withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error;
- (void)classChecker;
@end

@implementation PluginDecoder

+ (id)decoderWithData:(uint64_t)data
{
  v2 = a2;
  objc_opt_self();
  v3 = [[PluginDecoder alloc] initWithData:v2];

  return v3;
}

- (id)initWithData:(id)data
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (data)
  {
    v11.receiver = data;
    v11.super_class = PluginDecoder;
    data = objc_msgSendSuper2(&v11, sel_init);
    if (data)
    {
      OVM::Deserialize(v3, v9);
      if (v10)
      {
        v5 = caulk::expected<std::shared_ptr<OVM::Script>,OVM::Error>::value(v9);
        [(PluginDecoder *)data initWithData:v5, v9];
      }

      else
      {
        v6 = ATLLogObject(v4);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          ctu::join<std::__wrap_iter<std::string const*>>(v8, v9[0], v9[1], ", ", 2uLL);
          [(PluginDecoder *)v8 initWithData:buf, v6];
        }

        caulk::__expected_detail::base<std::shared_ptr<OVM::Script>,OVM::Error>::~base(v9);
        data = 0;
      }
    }
  }

  return data;
}

- (id)getAppletStateAndHistory:(id)history withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error
{
  v81[0] = *MEMORY[0x277D85DE8];
  historyCopy = history;
  appletCopy = applet;
  packageCopy = package;
  moduleCopy = module;
  v49 = 3;
  v50 = 0;
  v51 = 2;
  LODWORD(v67) = 3;
  *(&v67 + 1) = historyCopy;
  v68 = 2;
  v69 = 3;
  v70 = appletCopy;
  v71 = 2;
  v72 = 3;
  v73 = packageCopy;
  v74 = 2;
  v75 = 3;
  v76 = moduleCopy;
  v77 = 2;
  v78 = 4;
  v79 = &v49;
  v80 = 3;
  v47 = 0;
  v48 = 0;
  v46 = 0;
  std::vector<OVM::Var>::__init_with_size[abi:ne200100]<OVM::Var const*,OVM::Var const*>(&v46, &v67, v81, 5uLL);
  cntrl = self->script.__cntrl_;
  ptr = self->script.__ptr_;
  v45 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "getAppletStateAndHistory");
  [(PluginDecoder *)self classChecker];
  if (qword_27DA9E998[0] != -1)
  {
    [PluginDecoder getAppletStateAndHistory:withApplet:withPackage:withModule:withError:];
  }

  OVM::Interpreter::RunSubroutine(&ptr, &__p, &v46, &v42, _MergedGlobals, &v67);
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v17 = v45;
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  if ((v69 & 1) == 0)
  {
    v20 = ATLLogObject(v17);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      ctu::join<std::__wrap_iter<std::string const*>>(&__p, v67, *(&v67 + 1), ", ", 2uLL);
      v21 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315138;
      v65 = v21;
      _os_log_impl(&dword_22EEF5000, v20, OS_LOG_TYPE_ERROR, "Script execution failure: %s", buf, 0xCu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v22 = objc_alloc(MEMORY[0x277CCACA8]);
    ctu::join<std::__wrap_iter<std::string const*>>(&__p, v67, *(&v67 + 1), ", ", 2uLL);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v18 = [v22 initWithFormat:@"Script execution failure: %s", p_p];
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if (!error)
      {
        goto LABEL_53;
      }
    }

    else if (!error)
    {
      goto LABEL_53;
    }

    v30 = *error;
    v28 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v31 = *MEMORY[0x277CCA7E8];
      v60[0] = *MEMORY[0x277CCA450];
      v60[1] = v31;
      v61[0] = v18;
      v61[1] = v30;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:v60 count:2];
    }

    else
    {
      v62 = *MEMORY[0x277CCA450];
      v63 = v18;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
    }

    goto LABEL_42;
  }

  if (error)
  {
    if (v49 != 3)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    if (v51 != 2)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v17 = v50;
    *error = v17;
  }

  if (v67 == 3)
  {
    if (v68 != 2)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v18 = *(&v67 + 1);
    if (!v18 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) != 0))
    {
      v18 = v18;
      error = v18;
      goto LABEL_53;
    }

    v33 = ATLLogObject(isKindOfClass);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = objc_opt_class();
      LODWORD(__p.__r_.__value_.__l.__data_) = 138412290;
      *(__p.__r_.__value_.__r.__words + 4) = v34;
      _os_log_impl(&dword_22EEF5000, v33, OS_LOG_TYPE_ERROR, "Plugin returned wrong class %@", &__p, 0xCu);
    }

    v35 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Plugin returned wrong class %@", objc_opt_class()];
    v36 = v35;
    if (error)
    {
      v37 = *error;
      v38 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v39 = *MEMORY[0x277CCA7E8];
        v52[0] = *MEMORY[0x277CCA450];
        v52[1] = v39;
        v53[0] = v35;
        v53[1] = v37;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:2];
      }

      else
      {
        v54 = *MEMORY[0x277CCA450];
        v55 = v35;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
      }
      v40 = ;
      *error = [v38 errorWithDomain:@"ATL" code:8 userInfo:v40];
    }

    goto LABEL_52;
  }

  v24 = ATLLogObject(v17);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    LODWORD(__p.__r_.__value_.__l.__data_) = 67109120;
    HIDWORD(__p.__r_.__value_.__r.__words[0]) = v67;
    _os_log_impl(&dword_22EEF5000, v24, OS_LOG_TYPE_ERROR, "Plugin returned wrong dynamic type %d", &__p, 8u);
  }

  v25 = objc_alloc(MEMORY[0x277CCACA8]);
  v26 = [v25 initWithFormat:@"Plugin returned wrong dynamic type %d", v67];
  v18 = v26;
  if (error)
  {
    v27 = *error;
    v28 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v29 = *MEMORY[0x277CCA7E8];
      v56[0] = *MEMORY[0x277CCA450];
      v56[1] = v29;
      v57[0] = v26;
      v57[1] = v27;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:2];
    }

    else
    {
      v58 = *MEMORY[0x277CCA450];
      v59 = v26;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
    }

    v32 = LABEL_42:;
    *error = [v28 errorWithDomain:@"ATL" code:8 userInfo:v32];

LABEL_52:
    error = 0;
  }

LABEL_53:

  if ((v69 & 1) == 0)
  {
    __p.__r_.__value_.__r.__words[0] = &v67;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  }

  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  return error;
}

- (void)classChecker
{
  if (result)
  {
    if ([PluginDecoder classChecker]::onceToken != -1)
    {
      [PluginDecoder classChecker];
    }

    operator new();
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

- (id)parseHCIEvent:(id)event withApplet:(id)applet withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error
{
  v87[0] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  appletCopy = applet;
  packageCopy = package;
  moduleCopy = module;
  transceiverCopy = transceiver;
  v52 = 3;
  v53 = 0;
  v54 = 2;
  LODWORD(v70) = 3;
  *(&v70 + 1) = eventCopy;
  v71 = 2;
  v72 = 3;
  v73 = appletCopy;
  v74 = 2;
  v75 = 3;
  v76 = packageCopy;
  v77 = 2;
  v78 = 3;
  v79 = moduleCopy;
  v80 = 2;
  v81 = 3;
  v82 = transceiverCopy;
  v83 = 2;
  v84 = 4;
  v85 = &v52;
  v86 = 3;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  std::vector<OVM::Var>::__init_with_size[abi:ne200100]<OVM::Var const*,OVM::Var const*>(&v49, &v70, v87, 6uLL);
  cntrl = self->script.__cntrl_;
  ptr = self->script.__ptr_;
  v48 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "parseHCIEvent");
  [(PluginDecoder *)self classChecker];
  if (qword_27DA9E998[0] != -1)
  {
    [PluginDecoder getAppletStateAndHistory:withApplet:withPackage:withModule:withError:];
  }

  OVM::Interpreter::RunSubroutine(&ptr, &__p, &v49, &v45, _MergedGlobals, &v70);
  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v20 = v48;
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  if ((v72 & 1) == 0)
  {
    v23 = ATLLogObject(v20);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      ctu::join<std::__wrap_iter<std::string const*>>(&__p, v70, *(&v70 + 1), ", ", 2uLL);
      v24 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315138;
      v68 = v24;
      _os_log_impl(&dword_22EEF5000, v23, OS_LOG_TYPE_ERROR, "Script execution failure: %s", buf, 0xCu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v25 = objc_alloc(MEMORY[0x277CCACA8]);
    ctu::join<std::__wrap_iter<std::string const*>>(&__p, v70, *(&v70 + 1), ", ", 2uLL);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v21 = [v25 initWithFormat:@"Script execution failure: %s", p_p];
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if (!error)
      {
        goto LABEL_53;
      }
    }

    else if (!error)
    {
      goto LABEL_53;
    }

    v33 = *error;
    v31 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v34 = *MEMORY[0x277CCA7E8];
      v63[0] = *MEMORY[0x277CCA450];
      v63[1] = v34;
      v64[0] = v21;
      v64[1] = v33;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:v63 count:2];
    }

    else
    {
      v65 = *MEMORY[0x277CCA450];
      v66 = v21;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
    }

    goto LABEL_42;
  }

  if (error)
  {
    if (v52 != 3)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    if (v54 != 2)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v20 = v53;
    *error = v20;
  }

  if (v70 == 3)
  {
    if (v71 != 2)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v21 = *(&v70 + 1);
    if (!v21 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) != 0))
    {
      v21 = v21;
      error = v21;
      goto LABEL_53;
    }

    v36 = ATLLogObject(isKindOfClass);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = objc_opt_class();
      LODWORD(__p.__r_.__value_.__l.__data_) = 138412290;
      *(__p.__r_.__value_.__r.__words + 4) = v37;
      _os_log_impl(&dword_22EEF5000, v36, OS_LOG_TYPE_ERROR, "Plugin returned wrong class %@", &__p, 0xCu);
    }

    v38 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Plugin returned wrong class %@", objc_opt_class()];
    v39 = v38;
    if (error)
    {
      v40 = *error;
      v41 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v42 = *MEMORY[0x277CCA7E8];
        v55[0] = *MEMORY[0x277CCA450];
        v55[1] = v42;
        v56[0] = v38;
        v56[1] = v40;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:2];
      }

      else
      {
        v57 = *MEMORY[0x277CCA450];
        v58 = v38;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
      }
      v43 = ;
      *error = [v41 errorWithDomain:@"ATL" code:8 userInfo:v43];
    }

    goto LABEL_52;
  }

  v27 = ATLLogObject(v20);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    LODWORD(__p.__r_.__value_.__l.__data_) = 67109120;
    HIDWORD(__p.__r_.__value_.__r.__words[0]) = v70;
    _os_log_impl(&dword_22EEF5000, v27, OS_LOG_TYPE_ERROR, "Plugin returned wrong dynamic type %d", &__p, 8u);
  }

  v28 = objc_alloc(MEMORY[0x277CCACA8]);
  v29 = [v28 initWithFormat:@"Plugin returned wrong dynamic type %d", v70];
  v21 = v29;
  if (error)
  {
    v30 = *error;
    v31 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v32 = *MEMORY[0x277CCA7E8];
      v59[0] = *MEMORY[0x277CCA450];
      v59[1] = v32;
      v60[0] = v29;
      v60[1] = v30;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:2];
    }

    else
    {
      v61 = *MEMORY[0x277CCA450];
      v62 = v29;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
    }

    v35 = LABEL_42:;
    *error = [v31 errorWithDomain:@"ATL" code:8 userInfo:v35];

LABEL_52:
    error = 0;
  }

LABEL_53:

  if ((v72 & 1) == 0)
  {
    __p.__r_.__value_.__r.__words[0] = &v70;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  }

  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }

  return error;
}

- (id)GetAppletProperties:(id)properties withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error
{
  v81[0] = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  packageCopy = package;
  moduleCopy = module;
  transceiverCopy = transceiver;
  v49 = 3;
  v50 = 0;
  v51 = 2;
  LODWORD(v67) = 3;
  *(&v67 + 1) = propertiesCopy;
  v68 = 2;
  v69 = 3;
  v70 = packageCopy;
  v71 = 2;
  v72 = 3;
  v73 = moduleCopy;
  v74 = 2;
  v75 = 3;
  v76 = transceiverCopy;
  v77 = 2;
  v78 = 4;
  v79 = &v49;
  v80 = 3;
  v47 = 0;
  v48 = 0;
  v46 = 0;
  std::vector<OVM::Var>::__init_with_size[abi:ne200100]<OVM::Var const*,OVM::Var const*>(&v46, &v67, v81, 5uLL);
  cntrl = self->script.__cntrl_;
  ptr = self->script.__ptr_;
  v45 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "GetAppletProperties");
  [(PluginDecoder *)self classChecker];
  if (qword_27DA9E998[0] != -1)
  {
    [PluginDecoder getAppletStateAndHistory:withApplet:withPackage:withModule:withError:];
  }

  OVM::Interpreter::RunSubroutine(&ptr, &__p, &v46, &v42, _MergedGlobals, &v67);
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v17 = v45;
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  if ((v69 & 1) == 0)
  {
    v20 = ATLLogObject(v17);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      ctu::join<std::__wrap_iter<std::string const*>>(&__p, v67, *(&v67 + 1), ", ", 2uLL);
      v21 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315138;
      v65 = v21;
      _os_log_impl(&dword_22EEF5000, v20, OS_LOG_TYPE_ERROR, "Script execution failure: %s", buf, 0xCu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v22 = objc_alloc(MEMORY[0x277CCACA8]);
    ctu::join<std::__wrap_iter<std::string const*>>(&__p, v67, *(&v67 + 1), ", ", 2uLL);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v18 = [v22 initWithFormat:@"Script execution failure: %s", p_p];
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if (!error)
      {
        goto LABEL_53;
      }
    }

    else if (!error)
    {
      goto LABEL_53;
    }

    v30 = *error;
    v28 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v31 = *MEMORY[0x277CCA7E8];
      v60[0] = *MEMORY[0x277CCA450];
      v60[1] = v31;
      v61[0] = v18;
      v61[1] = v30;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:v60 count:2];
    }

    else
    {
      v62 = *MEMORY[0x277CCA450];
      v63 = v18;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
    }

    goto LABEL_42;
  }

  if (error)
  {
    if (v49 != 3)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    if (v51 != 2)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v17 = v50;
    *error = v17;
  }

  if (v67 == 3)
  {
    if (v68 != 2)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v18 = *(&v67 + 1);
    if (!v18 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) != 0))
    {
      v18 = v18;
      error = v18;
      goto LABEL_53;
    }

    v33 = ATLLogObject(isKindOfClass);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = objc_opt_class();
      LODWORD(__p.__r_.__value_.__l.__data_) = 138412290;
      *(__p.__r_.__value_.__r.__words + 4) = v34;
      _os_log_impl(&dword_22EEF5000, v33, OS_LOG_TYPE_ERROR, "Plugin returned wrong class %@", &__p, 0xCu);
    }

    v35 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Plugin returned wrong class %@", objc_opt_class()];
    v36 = v35;
    if (error)
    {
      v37 = *error;
      v38 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v39 = *MEMORY[0x277CCA7E8];
        v52[0] = *MEMORY[0x277CCA450];
        v52[1] = v39;
        v53[0] = v35;
        v53[1] = v37;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:2];
      }

      else
      {
        v54 = *MEMORY[0x277CCA450];
        v55 = v35;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
      }
      v40 = ;
      *error = [v38 errorWithDomain:@"ATL" code:8 userInfo:v40];
    }

    goto LABEL_52;
  }

  v24 = ATLLogObject(v17);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    LODWORD(__p.__r_.__value_.__l.__data_) = 67109120;
    HIDWORD(__p.__r_.__value_.__r.__words[0]) = v67;
    _os_log_impl(&dword_22EEF5000, v24, OS_LOG_TYPE_ERROR, "Plugin returned wrong dynamic type %d", &__p, 8u);
  }

  v25 = objc_alloc(MEMORY[0x277CCACA8]);
  v26 = [v25 initWithFormat:@"Plugin returned wrong dynamic type %d", v67];
  v18 = v26;
  if (error)
  {
    v27 = *error;
    v28 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v29 = *MEMORY[0x277CCA7E8];
      v56[0] = *MEMORY[0x277CCA450];
      v56[1] = v29;
      v57[0] = v26;
      v57[1] = v27;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:2];
    }

    else
    {
      v58 = *MEMORY[0x277CCA450];
      v59 = v26;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
    }

    v32 = LABEL_42:;
    *error = [v28 errorWithDomain:@"ATL" code:8 userInfo:v32];

LABEL_52:
    error = 0;
  }

LABEL_53:

  if ((v69 & 1) == 0)
  {
    __p.__r_.__value_.__r.__words[0] = &v67;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  }

  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  return error;
}

- (id)processEndOfTransaction:(id)transaction withApplet:(id)applet withPackage:(id)package withModule:(id)module withError:(id *)error
{
  v81[0] = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  appletCopy = applet;
  packageCopy = package;
  moduleCopy = module;
  v49 = 3;
  v50 = 0;
  v51 = 2;
  LODWORD(v67) = 3;
  *(&v67 + 1) = appletCopy;
  v68 = 2;
  v69 = 3;
  v70 = packageCopy;
  v71 = 2;
  v72 = 3;
  v73 = moduleCopy;
  v74 = 2;
  v75 = 3;
  v76 = transactionCopy;
  v77 = 2;
  v78 = 4;
  v79 = &v49;
  v80 = 3;
  v47 = 0;
  v48 = 0;
  v46 = 0;
  std::vector<OVM::Var>::__init_with_size[abi:ne200100]<OVM::Var const*,OVM::Var const*>(&v46, &v67, v81, 5uLL);
  cntrl = self->script.__cntrl_;
  ptr = self->script.__ptr_;
  v45 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "processEndOfTransaction");
  [(PluginDecoder *)self classChecker];
  if (qword_27DA9E998[0] != -1)
  {
    [PluginDecoder getAppletStateAndHistory:withApplet:withPackage:withModule:withError:];
  }

  OVM::Interpreter::RunSubroutine(&ptr, &__p, &v46, &v42, _MergedGlobals, &v67);
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v17 = v45;
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  if ((v69 & 1) == 0)
  {
    v18 = ATLLogObject(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      ctu::join<std::__wrap_iter<std::string const*>>(&__p, v67, *(&v67 + 1), ", ", 2uLL);
      v19 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315138;
      v65 = v19;
      _os_log_impl(&dword_22EEF5000, v18, OS_LOG_TYPE_ERROR, "Script execution failure: %s", buf, 0xCu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v20 = objc_alloc(MEMORY[0x277CCACA8]);
    ctu::join<std::__wrap_iter<std::string const*>>(&__p, v67, *(&v67 + 1), ", ", 2uLL);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v22 = [v20 initWithFormat:@"Script execution failure: %s", p_p];
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if (!error)
      {
        goto LABEL_55;
      }
    }

    else if (!error)
    {
      goto LABEL_55;
    }

    v23 = *error;
    v24 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v25 = *MEMORY[0x277CCA7E8];
      v60[0] = *MEMORY[0x277CCA450];
      v60[1] = v25;
      v61[0] = v22;
      v61[1] = v23;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:v60 count:2];
    }

    else
    {
      v62 = *MEMORY[0x277CCA450];
      v63 = v22;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
    }

    goto LABEL_44;
  }

  if (error)
  {
    if (v49 == 3)
    {
      if (v51 != 2)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v17 = v50;
    }

    else
    {
      v17 = 0;
    }

    *error = v17;
  }

  if (v67 == 3)
  {
    if (v68 != 2)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v22 = *(&v67 + 1);
    if (!v22 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) != 0))
    {
      v22 = v22;
      error = v22;
      goto LABEL_55;
    }

    v33 = ATLLogObject(isKindOfClass);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = objc_opt_class();
      LODWORD(__p.__r_.__value_.__l.__data_) = 138412290;
      *(__p.__r_.__value_.__r.__words + 4) = v34;
      _os_log_impl(&dword_22EEF5000, v33, OS_LOG_TYPE_ERROR, "Plugin returned wrong class %@", &__p, 0xCu);
    }

    v35 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Plugin returned wrong class %@", objc_opt_class()];
    v36 = v35;
    if (error)
    {
      v37 = *error;
      v38 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v39 = *MEMORY[0x277CCA7E8];
        v52[0] = *MEMORY[0x277CCA450];
        v52[1] = v39;
        v53[0] = v35;
        v53[1] = v37;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:2];
      }

      else
      {
        v54 = *MEMORY[0x277CCA450];
        v55 = v35;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
      }
      v40 = ;
      *error = [v38 errorWithDomain:@"ATL" code:8 userInfo:v40];
    }

    goto LABEL_54;
  }

  v28 = ATLLogObject(v17);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    LODWORD(__p.__r_.__value_.__l.__data_) = 67109120;
    HIDWORD(__p.__r_.__value_.__r.__words[0]) = v67;
    _os_log_impl(&dword_22EEF5000, v28, OS_LOG_TYPE_ERROR, "Plugin returned wrong dynamic type %d", &__p, 8u);
  }

  v29 = objc_alloc(MEMORY[0x277CCACA8]);
  v30 = [v29 initWithFormat:@"Plugin returned wrong dynamic type %d", v67];
  v22 = v30;
  if (error)
  {
    v31 = *error;
    v24 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v32 = *MEMORY[0x277CCA7E8];
      v56[0] = *MEMORY[0x277CCA450];
      v56[1] = v32;
      v57[0] = v30;
      v57[1] = v31;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:2];
    }

    else
    {
      v58 = *MEMORY[0x277CCA450];
      v59 = v30;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
    }

    v26 = LABEL_44:;
    *error = [v24 errorWithDomain:@"ATL" code:8 userInfo:v26];

LABEL_54:
    error = 0;
  }

LABEL_55:

  if ((v69 & 1) == 0)
  {
    __p.__r_.__value_.__r.__words[0] = &v67;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  }

  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  return error;
}

- (id)getServiceProviderData:(id)data withPackage:(id)package withModule:(id)module withPublicKey:(id)key withEncryptionScheme:(id)scheme withTransceiver:(id)transceiver withError:(id *)error
{
  v93[0] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  packageCopy = package;
  moduleCopy = module;
  keyCopy = key;
  schemeCopy = scheme;
  transceiverCopy = transceiver;
  v55 = 3;
  v56 = 0;
  v57 = 2;
  LODWORD(v73) = 3;
  *(&v73 + 1) = dataCopy;
  v74 = 2;
  v75 = 3;
  v76 = packageCopy;
  v77 = 2;
  v78 = 3;
  v79 = moduleCopy;
  v80 = 2;
  v81 = 3;
  v82 = keyCopy;
  v83 = 2;
  v84 = 3;
  v85 = schemeCopy;
  v86 = 2;
  v87 = 3;
  v88 = transceiverCopy;
  v89 = 2;
  v90 = 4;
  v91 = &v55;
  v92 = 3;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  std::vector<OVM::Var>::__init_with_size[abi:ne200100]<OVM::Var const*,OVM::Var const*>(&v52, &v73, v93, 7uLL);
  cntrl = self->script.__cntrl_;
  ptr = self->script.__ptr_;
  v51 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "getServiceProviderDataWithEncryptionScheme");
  [(PluginDecoder *)self classChecker];
  if (qword_27DA9E998[0] != -1)
  {
    [PluginDecoder getAppletStateAndHistory:withApplet:withPackage:withModule:withError:];
  }

  OVM::Interpreter::RunSubroutine(&ptr, &__p, &v52, &v48, _MergedGlobals, &v73);
  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v22 = v51;
  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v51);
  }

  if ((v75 & 1) == 0)
  {
    v23 = ATLLogObject(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      ctu::join<std::__wrap_iter<std::string const*>>(&__p, v73, *(&v73 + 1), ", ", 2uLL);
      v24 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315138;
      v71 = v24;
      _os_log_impl(&dword_22EEF5000, v23, OS_LOG_TYPE_ERROR, "Script execution failure: %s", buf, 0xCu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v25 = objc_alloc(MEMORY[0x277CCACA8]);
    ctu::join<std::__wrap_iter<std::string const*>>(&__p, v73, *(&v73 + 1), ", ", 2uLL);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v27 = [v25 initWithFormat:@"Script execution failure: %s", p_p];
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if (!error)
      {
        goto LABEL_54;
      }
    }

    else if (!error)
    {
      goto LABEL_54;
    }

    v28 = *error;
    v29 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v30 = *MEMORY[0x277CCA7E8];
      v66[0] = *MEMORY[0x277CCA450];
      v66[1] = v30;
      v67[0] = v27;
      v67[1] = v28;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:v66 count:2];
    }

    else
    {
      v68 = *MEMORY[0x277CCA450];
      v69 = v27;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
    }

    v31 = LABEL_44:;
    *error = [v29 errorWithDomain:@"ATL" code:8 userInfo:v31];

    goto LABEL_54;
  }

  if (error)
  {
    if (v55 == 3)
    {
      if (v57 != 2)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v22 = v56;
    }

    else
    {
      v22 = 0;
    }

    *error = v22;
  }

  if (v73 != 3)
  {
    v34 = ATLLogObject(v22);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__p.__r_.__value_.__l.__data_) = 67109120;
      HIDWORD(__p.__r_.__value_.__r.__words[0]) = v73;
      _os_log_impl(&dword_22EEF5000, v34, OS_LOG_TYPE_ERROR, "Plugin returned wrong dynamic type %d", &__p, 8u);
    }

    v35 = objc_alloc(MEMORY[0x277CCACA8]);
    v36 = [v35 initWithFormat:@"Plugin returned wrong dynamic type %d", v73];
    v27 = v36;
    if (!error)
    {
      goto LABEL_54;
    }

    v37 = *error;
    v29 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v38 = *MEMORY[0x277CCA7E8];
      v62[0] = *MEMORY[0x277CCA450];
      v62[1] = v38;
      v63[0] = v36;
      v63[1] = v37;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:2];
    }

    else
    {
      v64 = *MEMORY[0x277CCA450];
      v65 = v36;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
    }

    goto LABEL_44;
  }

  if (v74 != 2)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v27 = *(&v73 + 1);
  if (!v27 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) != 0))
  {
    v27 = v27;
    v33 = v27;
    goto LABEL_55;
  }

  v39 = ATLLogObject(isKindOfClass);
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    v40 = objc_opt_class();
    LODWORD(__p.__r_.__value_.__l.__data_) = 138412290;
    *(__p.__r_.__value_.__r.__words + 4) = v40;
    _os_log_impl(&dword_22EEF5000, v39, OS_LOG_TYPE_ERROR, "Plugin returned wrong class %@", &__p, 0xCu);
  }

  v41 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Plugin returned wrong class %@", objc_opt_class()];
  v42 = v41;
  if (error)
  {
    v43 = *error;
    v47 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v44 = *MEMORY[0x277CCA7E8];
      v58[0] = *MEMORY[0x277CCA450];
      v58[1] = v44;
      v59[0] = v41;
      v59[1] = v43;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:2];
    }

    else
    {
      v60 = *MEMORY[0x277CCA450];
      v61 = v41;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
    }
    v45 = ;
    *error = [v47 errorWithDomain:@"ATL" code:8 userInfo:v45];
  }

LABEL_54:
  v33 = 0;
LABEL_55:

  if ((v75 & 1) == 0)
  {
    __p.__r_.__value_.__r.__words[0] = &v73;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  }

  if (v52)
  {
    v53 = v52;
    operator delete(v52);
  }

  return v33;
}

- (id)getServiceProviderData:(id)data withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error
{
  *&v81 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  packageCopy = package;
  moduleCopy = module;
  transceiverCopy = transceiver;
  v49 = 3;
  v50 = 0;
  v51 = 2;
  LODWORD(v67) = 3;
  *(&v67 + 1) = dataCopy;
  v68 = 2;
  v69 = 3;
  v70 = packageCopy;
  v71 = 2;
  v72 = 3;
  v73 = moduleCopy;
  v74 = 2;
  v75 = 3;
  v76 = transceiverCopy;
  v77 = 2;
  v78 = 4;
  v79 = &v49;
  v80 = 3;
  v47 = 0;
  v48 = 0;
  __p = 0;
  std::vector<OVM::Var>::__init_with_size[abi:ne200100]<OVM::Var const*,OVM::Var const*>(&__p, &v67, &v81, 5uLL);
  cntrl = self->script.__cntrl_;
  ptr = self->script.__ptr_;
  v45 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(&v66, "getServiceProviderData");
  [(PluginDecoder *)self classChecker];
  if (qword_27DA9E998[0] != -1)
  {
    [PluginDecoder getAppletStateAndHistory:withApplet:withPackage:withModule:withError:];
  }

  OVM::Interpreter::RunSubroutine(&ptr, &v66, &__p, &v42, _MergedGlobals, &v67);
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v66.__r_.__value_.__l.__data_);
  }

  v17 = v45;
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  if ((v69 & 1) == 0)
  {
    v18 = ATLLogObject(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      ctu::join<std::__wrap_iter<std::string const*>>(&v66, v67, *(&v67 + 1), ", ", 2uLL);
      v19 = (v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v66 : v66.__r_.__value_.__r.__words[0];
      *buf = 136315138;
      v65 = v19;
      _os_log_impl(&dword_22EEF5000, v18, OS_LOG_TYPE_ERROR, "Script execution failure: %s", buf, 0xCu);
      if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v66.__r_.__value_.__l.__data_);
      }
    }

    v20 = objc_alloc(MEMORY[0x277CCACA8]);
    ctu::join<std::__wrap_iter<std::string const*>>(&v66, v67, *(&v67 + 1), ", ", 2uLL);
    if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = &v66;
    }

    else
    {
      v21 = v66.__r_.__value_.__r.__words[0];
    }

    v22 = [v20 initWithFormat:@"Script execution failure: %s", v21];
    if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v66.__r_.__value_.__l.__data_);
      if (!error)
      {
        goto LABEL_55;
      }
    }

    else if (!error)
    {
      goto LABEL_55;
    }

    v23 = *error;
    v24 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v25 = *MEMORY[0x277CCA7E8];
      v60[0] = *MEMORY[0x277CCA450];
      v60[1] = v25;
      v61[0] = v22;
      v61[1] = v23;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:v60 count:2];
    }

    else
    {
      v62 = *MEMORY[0x277CCA450];
      v63 = v22;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
    }

    goto LABEL_44;
  }

  if (error)
  {
    if (v49 == 3)
    {
      if (v51 != 2)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v17 = v50;
    }

    else
    {
      v17 = 0;
    }

    *error = v17;
  }

  if (v67 == 3)
  {
    if (v68 != 2)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v22 = *(&v67 + 1);
    if (!v22 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) != 0))
    {
      v22 = v22;
      error = v22;
      goto LABEL_55;
    }

    v33 = ATLLogObject(isKindOfClass);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = objc_opt_class();
      LODWORD(v66.__r_.__value_.__l.__data_) = 138412290;
      *(v66.__r_.__value_.__r.__words + 4) = v34;
      _os_log_impl(&dword_22EEF5000, v33, OS_LOG_TYPE_ERROR, "Plugin returned wrong class %@", &v66, 0xCu);
    }

    v35 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Plugin returned wrong class %@", objc_opt_class()];
    v36 = v35;
    if (error)
    {
      v37 = *error;
      v38 = MEMORY[0x277CCA9B8];
      if (*error)
      {
        v39 = *MEMORY[0x277CCA7E8];
        v52[0] = *MEMORY[0x277CCA450];
        v52[1] = v39;
        v53[0] = v35;
        v53[1] = v37;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:2];
      }

      else
      {
        v54 = *MEMORY[0x277CCA450];
        v55 = v35;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
      }
      v40 = ;
      *error = [v38 errorWithDomain:@"ATL" code:8 userInfo:v40];
    }

    goto LABEL_54;
  }

  v28 = ATLLogObject(v17);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    LODWORD(v66.__r_.__value_.__l.__data_) = 67109120;
    HIDWORD(v66.__r_.__value_.__r.__words[0]) = v67;
    _os_log_impl(&dword_22EEF5000, v28, OS_LOG_TYPE_ERROR, "Plugin returned wrong dynamic type %d", &v66, 8u);
  }

  v29 = objc_alloc(MEMORY[0x277CCACA8]);
  v30 = [v29 initWithFormat:@"Plugin returned wrong dynamic type %d", v67];
  v22 = v30;
  if (error)
  {
    v31 = *error;
    v24 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v32 = *MEMORY[0x277CCA7E8];
      v56[0] = *MEMORY[0x277CCA450];
      v56[1] = v32;
      v57[0] = v30;
      v57[1] = v31;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:2];
    }

    else
    {
      v58 = *MEMORY[0x277CCA450];
      v59 = v30;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
    }

    v26 = LABEL_44:;
    *error = [v24 errorWithDomain:@"ATL" code:8 userInfo:v26];

LABEL_54:
    error = 0;
  }

LABEL_55:

  if ((v69 & 1) == 0)
  {
    v66.__r_.__value_.__r.__words[0] = &v67;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v66);
  }

  if (__p)
  {
    v47 = __p;
    operator delete(__p);
  }

  return error;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

+ (id)persistentContext:(id)context
{
  contextCopy = context;
  if (+[PluginDecoder(IndirectMethods) persistentContext:]::onceToken != -1)
  {
    +[PluginDecoder(IndirectMethods) persistentContext:];
  }

  dictionary = [+[PluginDecoder(IndirectMethods) persistentContext:]::persistentStore objectForKeyedSubscript:contextCopy];
  if (!dictionary)
  {
    v5 = +[PluginDecoder(IndirectMethods) persistentContext:]::persistentStore;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [v5 setObject:dictionary forKeyedSubscript:contextCopy];
  }

  return dictionary;
}

uint64_t __52__PluginDecoder_IndirectMethods__persistentContext___block_invoke()
{
  +[PluginDecoder(IndirectMethods) persistentContext:]::persistentStore = objc_alloc_init(MEMORY[0x277CBEB38]);

  return MEMORY[0x2821F96F8]();
}

- (uint64_t)initWithData:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 16);
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return caulk::__expected_detail::base<std::shared_ptr<OVM::Script>,OVM::Error>::~base(a3);
}

- (void)initWithData:(os_log_t)log .cold.2(char *a1, uint8_t *buf, os_log_t log)
{
  if (a1[23] >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  *buf = 136315138;
  *(buf + 4) = v4;
  _os_log_impl(&dword_22EEF5000, log, OS_LOG_TYPE_ERROR, "Failed to deserialize script %s", buf, 0xCu);
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }
}

@end