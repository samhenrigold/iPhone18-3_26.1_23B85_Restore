@interface CBBOLTSProvider
- (CBBOLTSProvider)initWithQueue:(id)queue;
- (void)dealloc;
- (void)loadBOLTSModule;
- (void)newBOLTSModule;
@end

@implementation CBBOLTSProvider

- (CBBOLTSProvider)initWithQueue:(id)queue
{
  selfCopy = self;
  v14 = a2;
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = CBBOLTSProvider;
  selfCopy = [(CBModule *)&v12 initWithQueue:queue];
  if (!selfCopy)
  {
    return selfCopy;
  }

  v3 = os_log_create("com.apple.CoreBrightness.CBBOLTSProvider", "default");
  selfCopy->super._logHandle = v3;
  if (selfCopy->super._logHandle)
  {
    v4 = +[CBAgregateSettingsProvider sharedInstance];
    selfCopy->_settingsProvider = v4;
    return selfCopy;
  }

  if (_COREBRIGHTNESS_LOG_DEFAULT)
  {
    inited = _COREBRIGHTNESS_LOG_DEFAULT;
  }

  else
  {
    inited = init_default_corebrightness_log();
  }

  oslog = inited;
  type = OS_LOG_TYPE_ERROR;
  if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
  {
    log = oslog;
    v7 = type;
    __os_log_helper_16_0_0(v9);
    _os_log_error_impl(&dword_1DE8E5000, log, v7, "failed to create log handle", v9, 2u);
  }

  MEMORY[0x1E69E5920](selfCopy);
  return 0;
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  if (self->_boltsModule)
  {
    boltsModule = selfCopy->_boltsModule;
    if (boltsModule)
    {
      (*(*boltsModule + 8))(boltsModule);
    }

    selfCopy->_boltsModule = 0;
  }

  v3.receiver = selfCopy;
  v3.super_class = CBBOLTSProvider;
  [(CBModule *)&v3 dealloc];
}

- (void)newBOLTSModule
{
  v10 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v8 = a2;
  v7 = 0;
  if (objc_opt_respondsToSelector())
  {
    if ([(CBAdaptiveAutoBrightnessSettingsProvider *)selfCopy->_settingsProvider getMLABModelPath])
    {
      getMLABModelPath = [(CBAdaptiveAutoBrightnessSettingsProvider *)selfCopy->_settingsProvider getMLABModelPath];
      CBBOLTS::createFromUncompiledModelPath(getMLABModelPath, v3);
    }
  }

  v4 = +[MLAB URLOfModelInThisBundle];
  CBBOLTS::createUsingModelURL(v4, v5);
}

- (void)loadBOLTSModule
{
  v21 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v17 = a2;
  if (self->_boltsModule)
  {
    v16 = +[MLAB URLOfModelInThisBundle];
    if (objc_opt_respondsToSelector())
    {
      getMLABModelPath = [(CBAdaptiveAutoBrightnessSettingsProvider *)selfCopy->_settingsProvider getMLABModelPath];
      if (getMLABModelPath)
      {
        v14 = CBBOLTS::compileModel(getMLABModelPath, v2);
        if (v14)
        {
          v16 = v14;
        }

        else
        {
          if (selfCopy->super._logHandle)
          {
            logHandle = selfCopy->super._logHandle;
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              inited = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              inited = init_default_corebrightness_log();
            }

            logHandle = inited;
          }

          v13 = logHandle;
          v12 = 16;
          if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
          {
            log = v13;
            type = v12;
            __os_log_helper_16_0_0(v11);
            _os_log_error_impl(&dword_1DE8E5000, log, type, "Failed to compile supplied model, falling back to using bundled model", v11, 2u);
          }
        }
      }
    }

    if (CBBOLTS::switchModel(selfCopy->_boltsModule, v16))
    {
      if (selfCopy->super._logHandle)
      {
        v4 = selfCopy->super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v3 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v3 = init_default_corebrightness_log();
        }

        v4 = v3;
      }

      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_1_8_64(v19, v16);
        _os_log_impl(&dword_1DE8E5000, v4, OS_LOG_TYPE_DEFAULT, "BOLTS switched to a new model: %@", v19, 0xCu);
      }
    }

    else
    {
      if (selfCopy->super._logHandle)
      {
        v6 = selfCopy->super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v5 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v5 = init_default_corebrightness_log();
        }

        v6 = v5;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v20, v16);
        _os_log_error_impl(&dword_1DE8E5000, v6, OS_LOG_TYPE_ERROR, "Failed to switch to a new model: %@", v20, 0xCu);
      }
    }
  }

  else
  {
    selfCopy->_boltsModule = [(CBBOLTSProvider *)selfCopy newBOLTSModule];
  }
}

@end