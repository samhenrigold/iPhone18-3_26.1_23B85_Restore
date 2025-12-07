@interface DEExtensionProvider
- (DEExtensionProvider)init;
- (id)_getHostname;
- (id)filesInDir:(id)dir matchingPattern:(id)pattern excludingPattern:(id)excludingPattern;
- (void)beginRequestWithExtensionContext:(id)context;
- (void)isExtensionEnhancedLoggingStateOnWithHandler:(id)handler;
- (void)setupWithParameters:(id)parameters;
- (void)teardownWithParameters:(id)parameters;
@end

@implementation DEExtensionProvider

- (DEExtensionProvider)init
{
  v6.receiver = self;
  v6.super_class = DEExtensionProvider;
  v2 = [(DEExtensionProvider *)&v6 init];
  v3 = v2;
  if (v2)
  {
    loggingConsent = v2->_loggingConsent;
    v2->_loggingConsent = 0;

    v3->_isEnhancedLoggingStateOn = 0;
  }

  return v3;
}

- (void)beginRequestWithExtensionContext:(id)context
{
  v17 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = +[DELogging fwHandle];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v16 = contextCopy;
    _os_log_impl(&dword_248AB3000, v5, OS_LOG_TYPE_INFO, "Started extension with context: %@", buf, 0xCu);
  }

  _auxiliaryConnection = [contextCopy _auxiliaryConnection];
  v7 = [_auxiliaryConnection valueForEntitlement:@"com.apple.DiagnosticExtensions.extensionHost"];

  if (!v7 || ([v7 BOOLValue] & 1) == 0)
  {
    v8 = +[DELogging fwHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(DEExtensionProvider *)self beginRequestWithExtensionContext:v8];
    }

    v9 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA450];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Diagnostic Extension (%@) doesn't have com.apple.DiagnosticExtensions entitlement", self];
    v14 = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v12 = [v9 errorWithDomain:@"DEExtensionErrorDomain" code:-1 userInfo:v11];
    [contextCopy cancelRequestWithError:v12];
  }
}

- (void)setupWithParameters:(id)parameters
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = +[DELogging fwHandle];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[DEExtensionProvider setupWithParameters:]";
    _os_log_impl(&dword_248AB3000, v4, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  [(DEExtensionProvider *)self setIsEnhancedLoggingStateOn:1];
}

- (void)teardownWithParameters:(id)parameters
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = +[DELogging fwHandle];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[DEExtensionProvider teardownWithParameters:]";
    _os_log_impl(&dword_248AB3000, v4, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  [(DEExtensionProvider *)self setIsEnhancedLoggingStateOn:0];
}

- (void)isExtensionEnhancedLoggingStateOnWithHandler:(id)handler
{
  v8 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = +[DELogging fwHandle];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[DEExtensionProvider isExtensionEnhancedLoggingStateOnWithHandler:]";
    _os_log_impl(&dword_248AB3000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  handlerCopy[2](handlerCopy, [(DEExtensionProvider *)self isEnhancedLoggingStateOn]);
}

- (id)filesInDir:(id)dir matchingPattern:(id)pattern excludingPattern:(id)excludingPattern
{
  v59[2] = *MEMORY[0x277D85DE8];
  dirCopy = dir;
  patternCopy = pattern;
  excludingPatternCopy = excludingPattern;
  v40 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = patternCopy;
  v11 = v10;
  if (!v10)
  {
    v11 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"*" options:1 error:0];
  }

  v53 = 0;
  v12 = [dirCopy checkResourceIsReachableAndReturnError:&v53];
  v13 = v53;
  v14 = v13;
  if (v12)
  {
    v35 = v13;
    v36 = v10;
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v16 = *MEMORY[0x277CBE8E8];
    v17 = *MEMORY[0x277CBE868];
    v59[0] = *MEMORY[0x277CBE8E8];
    v59[1] = v17;
    v43 = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:2];
    v37 = dirCopy;
    v19 = [defaultManager enumeratorAtURL:dirCopy includingPropertiesForKeys:v18 options:5 errorHandler:0];

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v20 = v19;
    v44 = [v20 countByEnumeratingWithState:&v49 objects:v58 count:16];
    if (v44)
    {
      v41 = *MEMORY[0x277CBE838];
      v42 = *v50;
      v38 = *MEMORY[0x277CBE7B0];
      v39 = v16;
      do
      {
        for (i = 0; i != v44; ++i)
        {
          if (*v50 != v42)
          {
            objc_enumerationMutation(v20);
          }

          v22 = *(*(&v49 + 1) + 8 * i);
          v48 = 0;
          [v22 getResourceValue:&v48 forKey:v16 error:0];
          v23 = v48;
          v47 = 0;
          [v22 getResourceValue:&v47 forKey:v43 error:0];
          v24 = v47;
          v46 = 0;
          [v22 getResourceValue:&v46 forKey:v41 error:0];
          v25 = v46;
          if (([v24 BOOLValue] & 1) == 0)
          {
            if (!v11 || ([v11 firstMatchInString:v23 options:0 range:{0, objc_msgSend(v23, "length")}], v26 = objc_claimAutoreleasedReturnValue(), v26, v26))
            {
              if (!excludingPatternCopy || ([excludingPatternCopy firstMatchInString:v23 options:0 range:{0, objc_msgSend(v23, "length")}], v27 = objc_claimAutoreleasedReturnValue(), v27, !v27))
              {
                v45 = 0;
                [v22 getResourceValue:&v45 forKey:v38 error:0];
                v28 = v45;
                [v22 lastPathComponent];
                v29 = v20;
                v30 = v11;
                v32 = v31 = excludingPatternCopy;
                v33 = [DEAttachmentItem attachmentWithPath:v22 withDisplayName:v32 modificationDate:v28 andFilesize:v25];

                [v40 addObject:v33];
                excludingPatternCopy = v31;
                v11 = v30;
                v20 = v29;
                v16 = v39;
              }
            }
          }
        }

        v44 = [v20 countByEnumeratingWithState:&v49 objects:v58 count:16];
      }

      while (v44);
    }

    v10 = v36;
    dirCopy = v37;
    v14 = v35;
  }

  else
  {
    v20 = +[DELogging fwHandle];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v55 = dirCopy;
      v56 = 2112;
      v57 = v14;
      _os_log_impl(&dword_248AB3000, v20, OS_LOG_TYPE_DEFAULT, "Unable to reach %@. Reason: %@", buf, 0x16u);
    }
  }

  return v40;
}

- (id)_getHostname
{
  if (_getHostname_onceToken != -1)
  {
    [DEExtensionProvider _getHostname];
  }

  v3 = _getHostname_hostname;

  return v3;
}

void __35__DEExtensionProvider__getHostname__block_invoke()
{
  v3 = *MEMORY[0x277D85DE8];
  memset(v2, 0, sizeof(v2));
  if (!gethostname(v2, 0x100uLL))
  {
    v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:v2];
    v1 = _getHostname_hostname;
    _getHostname_hostname = v0;
  }

  if (!_getHostname_hostname)
  {
    _getHostname_hostname = @"localhost";
  }
}

- (void)beginRequestWithExtensionContext:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_248AB3000, a2, OS_LOG_TYPE_ERROR, "Provider has no entitlement: %@", &v2, 0xCu);
}

@end