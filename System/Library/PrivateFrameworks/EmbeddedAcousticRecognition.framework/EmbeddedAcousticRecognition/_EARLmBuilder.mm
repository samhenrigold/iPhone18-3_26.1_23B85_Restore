@interface _EARLmBuilder
+ (id)buildLmWithConfig:(id)config root:(id)root data:(id)data dir:(id)dir shouldStop:(id)stop;
+ (id)generateNgramCountsWithConfig:(id)config root:(id)root data:(id)data;
+ (id)loadLmFromDir:(id)dir;
+ (void)removeLmDir:(id)dir;
@end

@implementation _EARLmBuilder

+ (id)buildLmWithConfig:(id)config root:(id)root data:(id)data dir:(id)dir shouldStop:(id)stop
{
  v23 = *MEMORY[0x1E69E9840];
  configCopy = config;
  rootCopy = root;
  dataCopy = data;
  dirCopy = dir;
  stopCopy = stop;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v17 = [defaultManager fileExistsAtPath:configCopy];

  if (v17)
  {
    if (configCopy)
    {
      objc_msgSend_ear_toString(configCopy);
      if (!rootCopy)
      {
        goto LABEL_9;
      }
    }

    else
    {
      buf = 0uLL;
      v22 = 0;
      if (!rootCopy)
      {
LABEL_9:
        quasar::makeLmBuildConfig(&buf);
      }
    }

    objc_msgSend_ear_toString(rootCopy);
    goto LABEL_9;
  }

  v19 = EarLmLogger(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = configCopy;
    _os_log_impl(&dword_1B501D000, v19, OS_LOG_TYPE_DEFAULT, "File does not exist %@", &buf, 0xCu);
  }

  return 0;
}

+ (id)loadLmFromDir:(id)dir
{
  v17 = *MEMORY[0x1E69E9840];
  dirCopy = dir;
  v15[0] = 0;
  v15[1] = 0;
  v16 = 0;
  LOBYTE(v10) = 0;
  v12 = 0;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [defaultManager fileExistsAtPath:dirCopy];

  if (v5)
  {
    if (dirCopy)
    {
      objc_msgSend_ear_toString(dirCopy);
    }

    else
    {
      buf = 0uLL;
      v14 = 0;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "");
    quasar::loadLmFromDirectory(&buf, __p, v15, &v10);
  }

  v7 = EarLmLogger(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = dirCopy;
    _os_log_impl(&dword_1B501D000, v7, OS_LOG_TYPE_DEFAULT, "File does not exist %@", &buf, 0xCu);
  }

  if (v12 == 1 && v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }

  return 0;
}

+ (void)removeLmDir:(id)dir
{
  __p[3] = *MEMORY[0x1E69E9840];
  dirCopy = dir;
  if (dirCopy)
  {
    objc_msgSend_ear_toString(dirCopy);
  }

  else
  {
    memset(__p, 0, 24);
  }

  quasar::removeLm(__p);
}

+ (id)generateNgramCountsWithConfig:(id)config root:(id)root data:(id)data
{
  v11[3] = *MEMORY[0x1E69E9840];
  configCopy = config;
  rootCopy = root;
  dataCopy = data;
  if (configCopy)
  {
    objc_msgSend_ear_toString(configCopy);
    if (!rootCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    memset(v11, 0, 24);
    if (!rootCopy)
    {
LABEL_5:
      quasar::makeLmBuildConfig(v11);
    }
  }

  objc_msgSend_ear_toString(rootCopy);
  goto LABEL_5;
}

@end