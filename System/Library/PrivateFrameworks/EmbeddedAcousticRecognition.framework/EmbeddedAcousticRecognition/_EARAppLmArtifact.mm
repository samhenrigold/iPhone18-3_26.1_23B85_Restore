@interface _EARAppLmArtifact
+ (BOOL)createEmptyArtifact:(id)artifact version:(id)version locale:(id)locale saveTo:(id)to;
+ (BOOL)createPhraseCountsArtifact:(id)artifact version:(id)version locale:(id)locale rawPhraseCountsPath:(id)path customPronunciationsPath:(id)pronunciationsPath saveTo:(id)to;
+ (BOOL)transitionArtifactAt:(id)at toStage:(unint64_t)stage configPath:(id)path dataRoot:(id)root estimationRoot:(id)estimationRoot minimize:(BOOL)minimize saveTo:(id)to;
+ (BOOL)transitionArtifactAt:(id)at toStage:(unint64_t)stage configPath:(id)path ncsRoot:(id)root dataRoot:(id)dataRoot estimationRoot:(id)estimationRoot minimize:(BOOL)minimize saveTo:(id)self0;
+ (id)loadLmHandleFromArtifactAt:(id)at configPath:(id)path;
+ (id)loadLmHandleFromArtifactAt:(id)at configPath:(id)path ncsRoot:(id)root;
+ (id)transitionArtifactAt:(id)at toStage:(unint64_t)stage configPath:(id)path dataRoot:(id)root estimationRoot:(id)estimationRoot minimize:(BOOL)minimize;
+ (id)transitionArtifactAt:(id)at toStage:(unint64_t)stage configPath:(id)path ncsRoot:(id)root dataRoot:(id)dataRoot estimationRoot:(id)estimationRoot minimize:(BOOL)minimize;
- (BOOL)isAdaptableToSpeechModelVersion:(id)version locale:(id)locale;
- (_EARAppLmArtifact)initWithAppLmArtifact:(shared_ptr<quasar::artifact::AppLmArtifact>)artifact;
- (_EARAppLmArtifact)initWithPath:(id)path;
- (_EARAppLmArtifact)initWithVersion:(id)version andLocale:(id)locale;
- (id).cxx_construct;
- (id)loadAppLmData:(id)data dataRoot:(id)root;
- (id)loadAppLmData:(id)data ncsRoot:(id)root dataRoot:(id)dataRoot;
- (id)loadCustomPronData:(id)data dataRoot:(id)root;
- (id)loadCustomPronData:(id)data ncsRoot:(id)root dataRoot:(id)dataRoot;
- (id)loadLmHandleWithWeight:(id)weight;
- (id)loadOovs;
- (shared_ptr<quasar::AppLmData>)_loadRawAppLmData:(id)data ncsRoot:(id)root dataRoot:(id)dataRoot;
- (shared_ptr<quasar::AppLmData>)_tryToLoadCachedLmData:(id)data ncsRoot:(id)root dataRoot:(id)dataRoot;
- (unint64_t)getLifeCycleStage;
- (void)_cacheLmData:(shared_ptr<quasar:(id)data :(id)a5 AppLmData>)a3 configFilepath:(id)filepath ncsRoot:dataRoot:;
@end

@implementation _EARAppLmArtifact

- (_EARAppLmArtifact)initWithVersion:(id)version andLocale:(id)locale
{
  versionCopy = version;
  localeCopy = locale;
  v15.receiver = self;
  v15.super_class = _EARAppLmArtifact;
  if ([(_EARAppLmArtifact *)&v15 init])
  {
    if (versionCopy)
    {
      objc_msgSend_ear_toString(versionCopy);
      if (localeCopy)
      {
LABEL_4:
        objc_msgSend_ear_toString(localeCopy);
        goto LABEL_7;
      }
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      if (localeCopy)
      {
        goto LABEL_4;
      }
    }

    memset(&v10, 0, sizeof(v10));
LABEL_7:
    std::string::basic_string[abi:ne200100]<0>(v9, "_");
    quasar::Locale::fromInternalShortIdentifier(&v10, v9, &v11);
    std::allocate_shared[abi:ne200100]<quasar::artifact::AppLmArtifact,std::allocator<quasar::artifact::AppLmArtifact>,std::string,quasar::Locale,0>();
  }

  return 0;
}

- (_EARAppLmArtifact)initWithPath:(id)path
{
  v11 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v7.receiver = self;
  v7.super_class = _EARAppLmArtifact;
  if ([(_EARAppLmArtifact *)&v7 init])
  {
    if (pathCopy)
    {
      objc_msgSend_ear_toString(pathCopy);
    }

    else
    {
      __p = 0;
      v9 = 0;
      v10 = 0;
    }

    std::allocate_shared[abi:ne200100]<quasar::artifact::AppLmArtifact,std::allocator<quasar::artifact::AppLmArtifact>,std::string,0>();
  }

  v5 = 0;

  return v5;
}

- (_EARAppLmArtifact)initWithAppLmArtifact:(shared_ptr<quasar::artifact::AppLmArtifact>)artifact
{
  var0 = artifact.var0;
  v10.receiver = self;
  v10.super_class = _EARAppLmArtifact;
  v4 = [(_EARAppLmArtifact *)&v10 init:artifact.var0];
  v5 = v4;
  if (v4)
  {
    v6 = *var0;
    if (*var0)
    {
      v7 = *(var0 + 1);
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      cntrl = v4->super._artifact.__cntrl_;
      v5->super._artifact.__ptr_ = v6;
      v5->super._artifact.__cntrl_ = v7;
      if (cntrl)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
      }
    }

    else
    {

      return 0;
    }
  }

  return v5;
}

- (shared_ptr<quasar::AppLmData>)_tryToLoadCachedLmData:(id)data ncsRoot:(id)root dataRoot:(id)dataRoot
{
  v9 = v5;
  dataCopy = data;
  rootCopy = root;
  dataRootCopy = dataRoot;
  if (self->_cachedLmData.__ptr_ && (cachedConfigFilepath = self->_cachedConfigFilepath) != 0 && self->_cachedNcsRoot && self->_cachedDataRoot && [(NSString *)cachedConfigFilepath isEqualToString:dataCopy]&& [(NSString *)self->_cachedNcsRoot isEqualToString:rootCopy]&& [(NSString *)self->_cachedDataRoot isEqualToString:dataRootCopy])
  {
    cntrl = self->_cachedLmData.__cntrl_;
    *v9 = self->_cachedLmData.__ptr_;
    v9[1] = cntrl;
    if (cntrl)
    {
      atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *v9 = 0;
    v9[1] = 0;
  }

  result.__cntrl_ = v15;
  result.__ptr_ = v14;
  return result;
}

- (void)_cacheLmData:(shared_ptr<quasar:(id)data :(id)a5 AppLmData>)a3 configFilepath:(id)filepath ncsRoot:dataRoot:
{
  ptr = a3.__ptr_;
  v10 = a3.__cntrl_;
  dataCopy = data;
  v12 = a5;
  v14 = *ptr;
  v13 = *(ptr + 1);
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_cachedLmData.__cntrl_;
  self->_cachedLmData.__ptr_ = v14;
  self->_cachedLmData.__cntrl_ = v13;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }

  cachedConfigFilepath = self->_cachedConfigFilepath;
  self->_cachedConfigFilepath = v10;
  v20 = v10;

  cachedNcsRoot = self->_cachedNcsRoot;
  self->_cachedNcsRoot = dataCopy;
  v18 = dataCopy;

  cachedDataRoot = self->_cachedDataRoot;
  self->_cachedDataRoot = v12;
}

- (shared_ptr<quasar::AppLmData>)_loadRawAppLmData:(id)data ncsRoot:(id)root dataRoot:(id)dataRoot
{
  v9 = v5;
  v27 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  rootCopy = root;
  dataRootCopy = dataRoot;
  objc_msgSend__tryToLoadCachedLmData_ncsRoot_dataRoot_(self);
  if (v25)
  {
    v13 = *(&v25 + 1);
    *v9 = v25;
    v9[1] = v13;
    v25 = 0uLL;
    goto LABEL_18;
  }

  ptr = self->super._artifact.__ptr_;
  if (ptr)
  {
    if (ptr)
    {
      v15 = ptr;
      cntrl = self->super._artifact.__cntrl_;
      if (cntrl)
      {
        atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
      }

      LifeCycleStage = quasar::artifact::AppLmArtifact::getLifeCycleStage(ptr);
      if (quasar::artifact::AppLmArtifactLifeCycleStage::isTextNormalized(LifeCycleStage))
      {
        v18 = 0;
        if (dataRootCopy)
        {
          goto LABEL_9;
        }
      }

      else
      {
        if (rootCopy)
        {
          objc_msgSend_tokenizerWithNcsRoot_(_EARQuasarTokenizer);
        }

        else
        {
          objc_msgSend_tokenizerWithRecognizerConfigPath_(_EARQuasarTokenizer);
        }

        v18 = *buf;
        if (dataRootCopy)
        {
LABEL_9:
          if (dataCopy)
          {
            objc_msgSend_ear_toString(dataCopy);
          }

          else
          {
            v23 = 0uLL;
            v24 = 0;
          }

          quasar::filesystem::Path::Path(buf, &v23);
          __p[3] = v18;
          objc_msgSend_ear_toString(dataRootCopy);
          quasar::artifact::AppLmArtifact::loadAppLmData(v15);
        }
      }

      if (dataCopy)
      {
        objc_msgSend_ear_toString(dataCopy);
      }

      else
      {
        v23 = 0uLL;
        v24 = 0;
      }

      quasar::filesystem::Path::Path(buf, &v23);
      std::string::basic_string[abi:ne200100]<0>(__p, "app-lm.data");
      quasar::artifact::AppLmArtifact::loadAppLmData(v15);
    }
  }

  v19 = EarArtifactLogger(ptr);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B501D000, v19, OS_LOG_TYPE_DEFAULT, "Failed to dynamic cast Artifact to AppLmArtifact", buf, 2u);
  }

  *v9 = 0;
  v9[1] = 0;
LABEL_18:
  if (*(&v25 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v25 + 1));
  }

  result.__cntrl_ = v21;
  result.__ptr_ = v20;
  return result;
}

- (id)loadAppLmData:(id)data dataRoot:(id)root
{
  v4 = [(_EARAppLmArtifact *)self loadAppLmData:data ncsRoot:0 dataRoot:root];

  return v4;
}

- (id)loadAppLmData:(id)data ncsRoot:(id)root dataRoot:(id)dataRoot
{
  objc_msgSend__loadRawAppLmData_ncsRoot_dataRoot_(self, a2, data, root, dataRoot);
  if (v10)
  {
    v5 = [_EARAppLmData alloc];
    v8 = v10;
    v9 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = [(_EARAppLmData *)v5 initWithAppLmData:&v8];
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  else
  {
    v6 = 0;
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  return v6;
}

- (id)loadCustomPronData:(id)data dataRoot:(id)root
{
  v4 = [(_EARAppLmArtifact *)self loadCustomPronData:data ncsRoot:0 dataRoot:root];

  return v4;
}

- (id)loadCustomPronData:(id)data ncsRoot:(id)root dataRoot:(id)dataRoot
{
  v21 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  rootCopy = root;
  dataRootCopy = dataRoot;
  ptr = self->super._artifact.__ptr_;
  {
    v12 = ptr;
    cntrl = self->super._artifact.__cntrl_;
    if (cntrl)
    {
      atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
    }

    objc_msgSend__loadRawAppLmData_ncsRoot_dataRoot_(self);
    if (*buf)
    {
      quasar::LmData::getSymbolTableData(*buf);
      quasar::artifact::AppLmArtifact::loadCustomPronData(v12, v20);
      v14 = *v20;
      if (*v20)
      {
        operator new();
      }
    }

    else
    {
      v16 = EarArtifactLogger(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 0;
        _os_log_impl(&dword_1B501D000, v16, OS_LOG_TYPE_DEFAULT, "Failed to load app lm data object for use parsing custom prons", v20, 2u);
      }

      v14 = 0;
    }

    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
    }
  }

  else
  {
    v15 = EarArtifactLogger(ptr);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B501D000, v15, OS_LOG_TYPE_DEFAULT, "Failed to dynamic cast Artifact to AppLmArtifact", buf, 2u);
    }

    v14 = 0;
  }

  return v14;
}

- (id)loadOovs
{
  v8[3] = *MEMORY[0x1E69E9840];
  ptr = self->super._artifact.__ptr_;
  if (ptr)
  {
    if (ptr)
    {
      cntrl = self->super._artifact.__cntrl_;
      if (cntrl)
      {
        atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
      }

      quasar::artifact::AppLmArtifact::loadOovs(v8, ptr);
      if (v8[0])
      {
        v5 = EARHelpers::VectorToArray<std::string>(v8[0]);
        std::unique_ptr<std::vector<std::string>>::~unique_ptr[abi:ne200100](v8);
        if (!cntrl)
        {
          goto LABEL_13;
        }
      }

      else
      {
        std::unique_ptr<std::vector<std::string>>::~unique_ptr[abi:ne200100](v8);
        v5 = 0;
        if (!cntrl)
        {
          goto LABEL_13;
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
      goto LABEL_13;
    }
  }

  v6 = EarArtifactLogger(ptr);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8[0]) = 0;
    _os_log_impl(&dword_1B501D000, v6, OS_LOG_TYPE_DEFAULT, "Failed to dynamic cast Artifact to AppLmArtifact", v8, 2u);
  }

  v5 = 0;
LABEL_13:

  return v5;
}

- (id)loadLmHandleWithWeight:(id)weight
{
  v27 = *MEMORY[0x1E69E9840];
  weightCopy = weight;
  ptr = self->super._artifact.__ptr_;
  if (ptr)
  {
    if (ptr)
    {
      v6 = ptr;
      cntrl = self->super._artifact.__cntrl_;
      if (cntrl)
      {
        atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
      }

      v24 = 0;
      v25 = 0;
      if (weightCopy)
      {
        doubleValue = [weightCopy doubleValue];
        v10 = v9;
LABEL_7:
        v11 = EarArtifactLogger(doubleValue);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
          *(buf.__r_.__value_.__r.__words + 4) = v10;
          _os_log_impl(&dword_1B501D000, v11, OS_LOG_TYPE_DEFAULT, "Interpolating app-lm with a weight of %f", &buf, 0xCu);
        }

        quasar::artifact::AppLmArtifact::getLmHandle(v6, &buf);
        std::shared_ptr<kaldi::quasar::LmHandle>::operator=[abi:ne200100]<kaldi::quasar::LmHandle,std::default_delete<kaldi::quasar::LmHandle>,0>(&v24, &buf);
LABEL_10:
        v12 = buf.__r_.__value_.__r.__words[0];
        buf.__r_.__value_.__r.__words[0] = 0;
        if (v12)
        {
          (*(*v12 + 8))(v12);
        }

        v13 = v24;
        if (v24)
        {
          v14 = [_EARLmHandle alloc];
          v20 = v24;
          v21 = v25;
          if (v25)
          {
            atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v6 = [(_EARLmHandle *)v14 _initWithHandle:&v20];
          if (v21)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v21);
          }
        }

        if (v25)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v25);
        }

        if (!v13)
        {
          v6 = 0;
        }

        if (cntrl)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
        }

        goto LABEL_32;
      }

      std::string::basic_string[abi:ne200100]<0>(&buf, "language-model-weight");
      hasInfo = quasar::artifact::Artifact::hasInfo(v6, &buf.__r_.__value_.__l.__data_);
      v17 = hasInfo;
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
        if (v17)
        {
          goto LABEL_22;
        }
      }

      else if (hasInfo)
      {
LABEL_22:
        std::string::basic_string[abi:ne200100]<0>(__p, "language-model-weight");
        quasar::artifact::Artifact::getInfo(v6, __p, &buf);
        v10 = std::stof(&buf, 0);
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        if (v23 < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_7;
      }

      v19 = EarArtifactLogger(hasInfo);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&dword_1B501D000, v19, OS_LOG_TYPE_DEFAULT, "Interpolating app-lm with default weight", &buf, 2u);
      }

      quasar::artifact::AppLmArtifact::getLmHandle(v6, &buf);
      std::shared_ptr<kaldi::quasar::LmHandle>::operator=[abi:ne200100]<kaldi::quasar::LmHandle,std::default_delete<kaldi::quasar::LmHandle>,0>(&v24, &buf);
      goto LABEL_10;
    }
  }

  v15 = EarArtifactLogger(ptr);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_1B501D000, v15, OS_LOG_TYPE_DEFAULT, "Failed to dynamic cast Artifact to AppLmArtifact", &buf, 2u);
  }

  v6 = 0;
LABEL_32:

  return v6;
}

- (BOOL)isAdaptableToSpeechModelVersion:(id)version locale:(id)locale
{
  v22 = *MEMORY[0x1E69E9840];
  versionCopy = version;
  localeCopy = locale;
  ptr = self->super._artifact.__ptr_;
  {
    v9 = ptr;
    cntrl = self->super._artifact.__cntrl_;
    if (cntrl)
    {
      atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
    }

    if (localeCopy)
    {
      objc_msgSend_ear_toString(localeCopy);
    }

    else
    {
      memset(&v18, 0, sizeof(v18));
    }

    std::string::basic_string[abi:ne200100]<0>(v16, "_");
    quasar::Locale::fromInternalShortIdentifier(&v18, v16, &buf);
    if (versionCopy)
    {
      objc_msgSend_ear_toString(versionCopy);
    }

    else
    {
      __p[0] = 0;
      __p[1] = 0;
      v15 = 0;
    }

    isAdaptableToSpeechModelVersion = quasar::artifact::AppLmArtifact::isAdaptableToSpeechModelVersion(v9, &buf, __p);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }

    if (v21 < 0)
    {
      operator delete(v20);
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    if (v17 < 0)
    {
      operator delete(v16[0]);
    }

    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }

    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
    }
  }

  else
  {
    v11 = EarArtifactLogger(ptr);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_1B501D000, v11, OS_LOG_TYPE_DEFAULT, "Failed to dynamic cast Artifact to AppLmArtifact", &buf, 2u);
    }

    isAdaptableToSpeechModelVersion = 0;
  }

  return isAdaptableToSpeechModelVersion;
}

- (unint64_t)getLifeCycleStage
{
  ptr = self->super._artifact.__ptr_;
  {
    cntrl = self->super._artifact.__cntrl_;
    if (cntrl)
    {
      atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
    }

    LifeCycleStage = quasar::artifact::AppLmArtifact::getLifeCycleStage(ptr);
    v6 = quasar::artifact::AppLmArtifactLifeCycleStage::operator int(LifeCycleStage);
    v7 = v6;
    v8 = quasar::artifact::AppLmArtifactLifeCycleStages::get(v6);
    if (v7 == quasar::artifact::AppLmArtifactLifeCycleStage::operator int(v8 + 64))
    {
      v9 = 1;
    }

    else
    {
      v11 = quasar::artifact::AppLmArtifactLifeCycleStage::operator int(LifeCycleStage);
      v12 = v11;
      v13 = quasar::artifact::AppLmArtifactLifeCycleStages::get(v11);
      if (v12 == quasar::artifact::AppLmArtifactLifeCycleStage::operator int(v13 + 128))
      {
        v9 = 2;
      }

      else
      {
        v14 = quasar::artifact::AppLmArtifactLifeCycleStage::operator int(LifeCycleStage);
        v15 = v14;
        v16 = quasar::artifact::AppLmArtifactLifeCycleStages::get(v14);
        if (v15 == quasar::artifact::AppLmArtifactLifeCycleStage::operator int(v16 + 192))
        {
          v9 = 3;
        }

        else
        {
          v17 = quasar::artifact::AppLmArtifactLifeCycleStage::operator int(LifeCycleStage);
          v18 = v17;
          v19 = quasar::artifact::AppLmArtifactLifeCycleStages::get(v17);
          if (v18 == quasar::artifact::AppLmArtifactLifeCycleStage::operator int(v19 + 256))
          {
            v9 = 4;
          }

          else
          {
            v20 = quasar::artifact::AppLmArtifactLifeCycleStage::operator int(LifeCycleStage);
            v21 = v20;
            v22 = quasar::artifact::AppLmArtifactLifeCycleStages::get(v20);
            if (v21 == quasar::artifact::AppLmArtifactLifeCycleStage::operator int(v22 + 320))
            {
              v9 = 5;
            }

            else
            {
              v23 = quasar::artifact::AppLmArtifactLifeCycleStage::operator int(LifeCycleStage);
              v24 = quasar::artifact::AppLmArtifactLifeCycleStages::get(v23);
              quasar::artifact::AppLmArtifactLifeCycleStage::operator int(v24);
              v9 = 0;
            }
          }
        }
      }
    }

    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
    }
  }

  else
  {
    v10 = EarArtifactLogger(ptr);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v26 = 0;
      _os_log_impl(&dword_1B501D000, v10, OS_LOG_TYPE_DEFAULT, "Failed to dynamic cast Artifact to AppLmArtifact", v26, 2u);
    }

    return 0;
  }

  return v9;
}

+ (BOOL)createEmptyArtifact:(id)artifact version:(id)version locale:(id)locale saveTo:(id)to
{
  v18 = *MEMORY[0x1E69E9840];
  artifactCopy = artifact;
  versionCopy = version;
  localeCopy = locale;
  EARLogger::initializeLogging(to);
  if (artifactCopy)
  {
    objc_msgSend_ear_toString(artifactCopy);
    if (versionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    memset(v16, 0, sizeof(v16));
    if (versionCopy)
    {
LABEL_3:
      objc_msgSend_ear_toString(versionCopy);
      if (localeCopy)
      {
LABEL_4:
        objc_msgSend_ear_toString(localeCopy);
        goto LABEL_8;
      }

LABEL_7:
      memset(&v14, 0, sizeof(v14));
LABEL_8:
      std::string::basic_string[abi:ne200100]<0>(v13, "_");
      quasar::Locale::fromInternalShortIdentifier(&v14, v13, &v17);
      quasar::artifact::CreateEmptyArtifact(v16, v15);
    }
  }

  memset(v15, 0, sizeof(v15));
  if (localeCopy)
  {
    goto LABEL_4;
  }

  goto LABEL_7;
}

+ (BOOL)createPhraseCountsArtifact:(id)artifact version:(id)version locale:(id)locale rawPhraseCountsPath:(id)path customPronunciationsPath:(id)pronunciationsPath saveTo:(id)to
{
  v32 = *MEMORY[0x1E69E9840];
  artifactCopy = artifact;
  versionCopy = version;
  localeCopy = locale;
  pathCopy = path;
  pronunciationsPathCopy = pronunciationsPath;
  EARLogger::initializeLogging(to);
  if (artifactCopy)
  {
    objc_msgSend_ear_toString(artifactCopy);
    if (versionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    if (versionCopy)
    {
LABEL_3:
      objc_msgSend_ear_toString(versionCopy);
      if (localeCopy)
      {
LABEL_4:
        objc_msgSend_ear_toString(localeCopy);
        goto LABEL_8;
      }

LABEL_7:
      memset(&v24, 0, sizeof(v24));
LABEL_8:
      std::string::basic_string[abi:ne200100]<0>(v23, "_");
      quasar::Locale::fromInternalShortIdentifier(&v24, v23, &v31);
      if (pathCopy)
      {
        objc_msgSend_ear_toString(pathCopy);
      }

      else
      {
        memset(v21, 0, sizeof(v21));
      }

      quasar::filesystem::Path::Path(&v22, v21);
      if (pronunciationsPathCopy)
      {
        objc_msgSend_ear_toString(pronunciationsPathCopy);
      }

      else
      {
        memset(v19, 0, sizeof(v19));
      }

      quasar::filesystem::Path::Path(&v20, v19);
      quasar::artifact::CreatePhraseCountsArtifact();
    }
  }

  v25 = 0;
  v26 = 0;
  v27 = 0;
  if (localeCopy)
  {
    goto LABEL_4;
  }

  goto LABEL_7;
}

+ (id)transitionArtifactAt:(id)at toStage:(unint64_t)stage configPath:(id)path dataRoot:(id)root estimationRoot:(id)estimationRoot minimize:(BOOL)minimize
{
  LOBYTE(v10) = minimize;
  v8 = [self transitionArtifactAt:at toStage:stage configPath:path ncsRoot:0 dataRoot:root estimationRoot:estimationRoot minimize:v10];

  return v8;
}

+ (id)transitionArtifactAt:(id)at toStage:(unint64_t)stage configPath:(id)path ncsRoot:(id)root dataRoot:(id)dataRoot estimationRoot:(id)estimationRoot minimize:(BOOL)minimize
{
  atCopy = at;
  pathCopy = path;
  rootCopy = root;
  dataRootCopy = dataRoot;
  EARLogger::initializeLogging(estimationRoot);
  if (atCopy)
  {
    objc_msgSend_ear_toString(atCopy);
  }

  operator new();
}

+ (BOOL)transitionArtifactAt:(id)at toStage:(unint64_t)stage configPath:(id)path dataRoot:(id)root estimationRoot:(id)estimationRoot minimize:(BOOL)minimize saveTo:(id)to
{
  atCopy = at;
  pathCopy = path;
  rootCopy = root;
  estimationRootCopy = estimationRoot;
  toCopy = to;
  LOBYTE(v20) = minimize;
  LOBYTE(stage) = [objc_opt_class() transitionArtifactAt:atCopy toStage:stage configPath:pathCopy ncsRoot:0 dataRoot:rootCopy estimationRoot:estimationRootCopy minimize:v20 saveTo:toCopy];

  return stage;
}

+ (BOOL)transitionArtifactAt:(id)at toStage:(unint64_t)stage configPath:(id)path ncsRoot:(id)root dataRoot:(id)dataRoot estimationRoot:(id)estimationRoot minimize:(BOOL)minimize saveTo:(id)self0
{
  toCopy = to;
  LOBYTE(v21) = minimize;
  v17 = [_EARAppLmArtifact transitionArtifactAt:at toStage:stage configPath:path ncsRoot:root dataRoot:dataRoot estimationRoot:estimationRoot minimize:v21];
  v18 = v17;
  if (v17)
  {
    v19 = [v17 write:toCopy];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (id)loadLmHandleFromArtifactAt:(id)at configPath:(id)path
{
  v4 = [self loadLmHandleFromArtifactAt:at configPath:path ncsRoot:0];

  return v4;
}

+ (id)loadLmHandleFromArtifactAt:(id)at configPath:(id)path ncsRoot:(id)root
{
  v13[3] = *MEMORY[0x1E69E9840];
  atCopy = at;
  pathCopy = path;
  if (root)
  {
    objc_msgSend_tokenizerWithNcsRoot_(_EARQuasarTokenizer);
  }

  else
  {
    objc_msgSend_tokenizerWithRecognizerConfigPath_(_EARQuasarTokenizer);
  }

  v9 = v13[0];
  if (atCopy)
  {
    objc_msgSend_ear_toString(atCopy);
    if (pathCopy)
    {
LABEL_6:
      objc_msgSend_ear_toString(pathCopy);
      goto LABEL_9;
    }
  }

  else
  {
    memset(v13, 0, 24);
    if (pathCopy)
    {
      goto LABEL_6;
    }
  }

  memset(__p, 0, sizeof(__p));
LABEL_9:
  v11 = v9;
  quasar::artifact::LoadLmHandleFromArtifact(v13, __p, &v11);
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 4) = 0;
  return self;
}

@end