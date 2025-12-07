@interface FMStateCapture
- (FMStateCapture)init;
- (os_state_data_s)_stateCapture;
- (os_state_data_s)stateDataForDictionary:(id)dictionary title:(id)title;
- (void)dealloc;
- (void)registerHandlerforStateCapture;
- (void)unregisterHandlerforStateCapture;
@end

@implementation FMStateCapture

- (FMStateCapture)init
{
  v3 = +[FMSystemInfo sharedInstance];
  if ([v3 isInternalBuild])
  {
    v7.receiver = self;
    v7.super_class = FMStateCapture;
    self = [(FMStateCapture *)&v7 init];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v5 = selfCopy;

  if (v5)
  {
    [(FMStateCapture *)v5 registerHandlerforStateCapture];
  }

  return v5;
}

- (void)dealloc
{
  [(FMStateCapture *)self unregisterHandlerforStateCapture];
  v3.receiver = self;
  v3.super_class = FMStateCapture;
  [(FMStateCapture *)&v3 dealloc];
}

- (void)registerHandlerforStateCapture
{
  v3 = LogCategory_Unspecified(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_24A2EE000, v3, OS_LOG_TYPE_DEFAULT, "FMStateCapture: Registering State Capture Handler.", buf, 2u);
  }

  objc_initWeak(buf, self);
  v4 = MEMORY[0x277D85CD0];
  objc_copyWeak(&v5, buf);
  [(FMStateCapture *)self setHandle:os_state_add_handler()];

  objc_destroyWeak(&v5);
  objc_destroyWeak(buf);
}

uint64_t __48__FMStateCapture_registerHandlerforStateCapture__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _stateCapture];

  return v2;
}

- (void)unregisterHandlerforStateCapture
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = LogCategory_Unspecified(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    handle = [(FMStateCapture *)self handle];
    _os_log_impl(&dword_24A2EE000, v3, OS_LOG_TYPE_DEFAULT, "FMStateCapture: Removing State Capture Handler %llu.", &v4, 0xCu);
  }

  if ([(FMStateCapture *)self handle])
  {
    [(FMStateCapture *)self handle];
    os_state_remove_handler();
  }
}

- (os_state_data_s)_stateCapture
{
  v3 = LogCategory_Unspecified(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24A2EE000, v3, OS_LOG_TYPE_DEFAULT, "FMStateCapture: Starting State Capture...", buf, 2u);
  }

  v4 = [&unk_285D75DF0 mutableCopy];
  stateCaptureBlock = [(FMStateCapture *)self stateCaptureBlock];

  if (stateCaptureBlock)
  {
    v7 = LogCategory_Unspecified(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(FMStateCapture *)v7 _stateCapture];
    }

    stateCaptureBlock2 = [(FMStateCapture *)self stateCaptureBlock];
    v9 = stateCaptureBlock2[2]();
    [v4 setValuesForKeysWithDictionary:v9];
  }

  v10 = LogCategory_Unspecified(v6);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 0;
    _os_log_impl(&dword_24A2EE000, v10, OS_LOG_TYPE_DEFAULT, "FMStateCapture: finished capturing state.", v17, 2u);
  }

  v11 = MEMORY[0x277CCACA8];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v14 = [v11 stringWithFormat:@"[%@] state", bundleIdentifier];
  v15 = [(FMStateCapture *)self stateDataForDictionary:v4 title:v14];

  return v15;
}

- (os_state_data_s)stateDataForDictionary:(id)dictionary title:(id)title
{
  v23 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  titleCopy = title;
  v7 = LogCategory_Unspecified(titleCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(FMStateCapture *)titleCopy stateDataForDictionary:dictionaryCopy title:v7];
  }

  if (dictionaryCopy)
  {
    v20 = 0;
    v8 = [MEMORY[0x277CCAC58] dataWithPropertyList:dictionaryCopy format:200 options:0 error:&v20];
    v9 = v20;
    v10 = v9;
    if (v9)
    {
      v11 = LogCategory_Unspecified(v9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v22 = v10;
        _os_log_impl(&dword_24A2EE000, v11, OS_LOG_TYPE_DEFAULT, "Error serializing dictionary for State Capture: %@", buf, 0xCu);
      }

      v12 = 0;
    }

    else
    {
      v13 = [v8 length];
      v14 = malloc_type_calloc(1uLL, v13 + 200, 0x1000040BEF03554uLL);
      v12 = v14;
      if (!v14)
      {
LABEL_17:

        goto LABEL_18;
      }

      v14->var0 = 1;
      v14->var1.var1 = v13;
      v15 = [titleCopy dataUsingEncoding:4];
      v11 = v15;
      if (v15)
      {
        bytes = [v15 bytes];
        v17 = [v11 length];
        if (v17 >= 0x3F)
        {
          v18 = 63;
        }

        else
        {
          v18 = v17;
        }

        memcpy(v12->var3, bytes, v18);
      }

      memcpy(v12->var4, [v8 bytes], v13);
    }

    goto LABEL_17;
  }

  v12 = 0;
LABEL_18:

  return v12;
}

- (void)stateDataForDictionary:(os_log_t)log title:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&dword_24A2EE000, log, OS_LOG_TYPE_DEBUG, "FMStateCapture: Persisting the state for %@ data: \n %@", &v3, 0x16u);
}

@end