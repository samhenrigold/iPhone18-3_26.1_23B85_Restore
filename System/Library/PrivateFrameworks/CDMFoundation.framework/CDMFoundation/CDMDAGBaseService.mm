@interface CDMDAGBaseService
+ (void)handleXPCActivity:(id)activity withAssets:(id)assets withSelfMetadata:(id)metadata;
+ (void)handleXPCEvent:(id)event fromStream:(id)stream withAssets:(id)assets withSelfMetadata:(id)metadata;
- (CDMDAGBaseService)initWithConfig:(id)config;
- (id)supportedCommands;
- (void)_handleSetupRequest:(id)request withCallback:(id)callback;
- (void)_handleWarmupRequest:(id)request withCallback:(id)callback;
- (void)handleCommand:(id)command withCallback:(id)callback;
@end

@implementation CDMDAGBaseService

- (id)supportedCommands
{
  v3 = MEMORY[0x1E695DFA8];
  handleRequestCommandTypeNames = [(CDMDAGBaseService *)self handleRequestCommandTypeNames];
  v5 = [v3 setWithSet:handleRequestCommandTypeNames];

  if (objc_opt_respondsToSelector())
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [v5 addObject:v7];
  }

  if (objc_opt_respondsToSelector())
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [v5 addObject:v9];
  }

  v13.receiver = self;
  v13.super_class = CDMDAGBaseService;
  supportedCommands = [(CDMBaseService *)&v13 supportedCommands];
  v11 = [supportedCommands setByAddingObjectsFromSet:v5];

  return v11;
}

- (void)_handleWarmupRequest:(id)request withCallback:(id)callback
{
  v24 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  callbackCopy = callback;
  if (([objc_opt_class() isEnabled] & 1) == 0)
  {
    v8 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      serviceName = [(CDMBaseService *)self serviceName];
      *buf = 136315394;
      v21 = "[CDMDAGBaseService _handleWarmupRequest:withCallback:]";
      v22 = 2112;
      v23 = serviceName;
      _os_log_debug_impl(&dword_1DC287000, v8, OS_LOG_TYPE_DEBUG, "%s Skipping handleWarmupRequest as this service is DISABLED: %@", buf, 0x16u);
    }

    goto LABEL_7;
  }

  if (self->super._serviceState == 4)
  {
    v8 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      serviceName2 = [(CDMBaseService *)self serviceName];
      *buf = 136315394;
      v21 = "[CDMDAGBaseService _handleWarmupRequest:withCallback:]";
      v22 = 2112;
      v23 = serviceName2;
      _os_log_impl(&dword_1DC287000, v8, OS_LOG_TYPE_INFO, "%s [WARN]: Skipping handleWarmupRequest as this service is in failed setup state: %@", buf, 0x16u);
    }

LABEL_7:

    (*(callbackCopy + 2))(callbackCopy, 0, 0);
    goto LABEL_15;
  }

  v10 = os_signpost_id_generate(CDMLogContext);
  v11 = CDMLogContext;
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    serviceName3 = [(CDMBaseService *)self serviceName];
    *buf = 138543362;
    v21 = serviceName3;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "DAGServiceWarmup", "%{public}@ warmup", buf, 0xCu);
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __55__CDMDAGBaseService__handleWarmupRequest_withCallback___block_invoke;
  v17[3] = &unk_1E862F390;
  v17[4] = self;
  v18 = requestCopy;
  v19 = callbackCopy;
  [CDMExceptionUtils runWrappingCppExceptions:v17];

  v14 = CDMLogContext;
  v15 = v14;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v15, OS_SIGNPOST_INTERVAL_END, v10, "DAGServiceWarmup", "", buf, 2u);
  }

LABEL_15:
}

void __55__CDMDAGBaseService__handleWarmupRequest_withCallback___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) warmup:*(a1 + 40)];
  (*(*(a1 + 48) + 16))();
}

- (void)_handleSetupRequest:(id)request withCallback:(id)callback
{
  v41 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  callbackCopy = callback;
  if (([objc_opt_class() isEnabled] & 1) == 0)
  {
    v12 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      serviceName = [(CDMBaseService *)self serviceName];
      *buf = 136315394;
      v38 = "[CDMDAGBaseService _handleSetupRequest:withCallback:]";
      v39 = 2112;
      v40 = serviceName;
      _os_log_debug_impl(&dword_1DC287000, v12, OS_LOG_TYPE_DEBUG, "%s Skipping handleSetupRequest as this service is DISABLED: %@", buf, 0x16u);
    }

    self->super._serviceState = 4;
    createSetupResponseCommand = [(CDMBaseService *)self createSetupResponseCommand];
    goto LABEL_8;
  }

  if (self->super._serviceState != 2)
  {
    goto LABEL_10;
  }

  setupLanguageCode = self->_setupLanguageCode;
  dynamicConfig = [requestCopy dynamicConfig];
  languageCode = [dynamicConfig languageCode];
  v11 = languageCode;
  if (setupLanguageCode != languageCode)
  {

    goto LABEL_10;
  }

  dynamicConfig2 = [requestCopy dynamicConfig];
  v16 = [(CDMDAGBaseService *)self isSetupRerunNeededForRequest:dynamicConfig2];

  if (!v16)
  {
    v29 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      serviceName2 = [(CDMBaseService *)self serviceName];
      *buf = 136315394;
      v38 = "[CDMDAGBaseService _handleSetupRequest:withCallback:]";
      v39 = 2112;
      v40 = serviceName2;
      _os_log_debug_impl(&dword_1DC287000, v29, OS_LOG_TYPE_DEBUG, "%s Skipping handleSetupRequest as this service already in READY state, locale does not change, and the service does not need re-setup: %@", buf, 0x16u);
    }

    createSetupResponseCommand = [(CDMBaseService *)self createSetupResponseCommand];
LABEL_8:
    v14 = createSetupResponseCommand;
    callbackCopy[2](callbackCopy, createSetupResponseCommand, 0);

    goto LABEL_17;
  }

LABEL_10:
  v17 = CDMOSLoggerForCategory(4);
  v18 = os_signpost_id_generate(v17);

  v19 = CDMOSLoggerForCategory(4);
  v20 = v19;
  if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    serviceName3 = [(CDMBaseService *)self serviceName];
    *buf = 138543362;
    v38 = serviceName3;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v18, "DAGServiceSetup", "%{public}@ setup", buf, 0xCu);
  }

  dynamicConfig3 = [requestCopy dynamicConfig];
  languageCode2 = [dynamicConfig3 languageCode];
  v24 = self->_setupLanguageCode;
  self->_setupLanguageCode = languageCode2;

  dynamicConfig4 = [requestCopy dynamicConfig];
  currentConfig = self->_currentConfig;
  self->_currentConfig = dynamicConfig4;

  objc_initWeak(buf, self);
  objc_initWeak(location, callbackCopy);
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __54__CDMDAGBaseService__handleSetupRequest_withCallback___block_invoke;
  v32[3] = &unk_1E862F368;
  objc_copyWeak(&v34, buf);
  v33 = requestCopy;
  objc_copyWeak(&v35, location);
  [CDMExceptionUtils runWrappingCppExceptions:v32];
  objc_destroyWeak(&v35);

  objc_destroyWeak(&v34);
  objc_destroyWeak(location);
  objc_destroyWeak(buf);
  v27 = CDMOSLoggerForCategory(4);
  v28 = v27;
  if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v28, OS_SIGNPOST_INTERVAL_END, v18, "DAGServiceSetup", "", buf, 2u);
  }

LABEL_17:
}

void __54__CDMDAGBaseService__handleSetupRequest_withCallback___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = [WeakRetained setup:*(a1 + 32)];

  if (v6)
  {
    v3 = objc_loadWeakRetained((a1 + 48));

    if (v3)
    {
      v4 = objc_loadWeakRetained((a1 + 48));
      v5 = [v6 cmdError];
      v4[2](v4, v6, v5);
    }
  }
}

- (void)handleCommand:(id)command withCallback:(id)callback
{
  v15 = *MEMORY[0x1E69E9840];
  commandCopy = command;
  callbackCopy = callback;
  v8 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    commandName = [commandCopy commandName];
    *buf = 136315394;
    v12 = "[CDMDAGBaseService handleCommand:withCallback:]";
    v13 = 2112;
    v14 = commandName;
    _os_log_impl(&dword_1DC287000, v8, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CDMDAGBaseService *)self _handleSetupRequest:commandCopy withCallback:callbackCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(CDMDAGBaseService *)self _handleWarmupRequest:commandCopy withCallback:callbackCopy];
    }

    else
    {
      v10.receiver = self;
      v10.super_class = CDMDAGBaseService;
      [(CDMBaseService *)&v10 handleCommand:commandCopy withCallback:callbackCopy];
    }
  }
}

- (CDMDAGBaseService)initWithConfig:(id)config
{
  v4.receiver = self;
  v4.super_class = CDMDAGBaseService;
  return [(CDMBaseService *)&v4 initWithConfig:config];
}

+ (void)handleXPCEvent:(id)event fromStream:(id)stream withAssets:(id)assets withSelfMetadata:(id)metadata
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = 136315138;
    v10 = "+[CDMDAGBaseService handleXPCEvent:fromStream:withAssets:withSelfMetadata:]";
    _os_log_impl(&dword_1DC287000, v8, OS_LOG_TYPE_INFO, "%s [WARN]: handleXPCEvent called on a service that does not implement this method.", &v9, 0xCu);
  }

  [self doesNotRecognizeSelector:a2];
}

+ (void)handleXPCActivity:(id)activity withAssets:(id)assets withSelfMetadata:(id)metadata
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 136315138;
    v9 = "+[CDMDAGBaseService handleXPCActivity:withAssets:withSelfMetadata:]";
    _os_log_impl(&dword_1DC287000, v7, OS_LOG_TYPE_INFO, "%s [WARN]: handleXPCActivity called on a service that does not implement this method.", &v8, 0xCu);
  }

  [self doesNotRecognizeSelector:a2];
}

@end