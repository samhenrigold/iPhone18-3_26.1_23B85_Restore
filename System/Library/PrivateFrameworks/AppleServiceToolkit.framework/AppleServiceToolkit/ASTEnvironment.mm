@interface ASTEnvironment
+ (BOOL)isCoreRepairFrameworkAvailable;
+ (BOOL)isInternalBuild;
+ (BOOL)isServicePart;
+ (id)currentEnvironment;
+ (id)environmentWithEnvironmentType:(unint64_t)type;
+ (id)protocolVersion;
- (ASTEnvironment)init;
- (ASTEnvironment)initWithEnvironmentType:(unint64_t)type;
- (BOOL)isDiagnosticsMode;
- (id)_defaultServerURL;
- (id)_generateServerURL;
- (id)environmentServerString;
- (unint64_t)_defaultServerSelection;
- (void)_generateServerURL;
- (void)setAssetURL:(id)l;
- (void)setConfigCode:(id)code;
- (void)setDiagsChannel:(id)channel;
- (void)setEnvironmentType:(unint64_t)type;
- (void)setServer:(unint64_t)server;
- (void)setServerURL:(id)l;
@end

@implementation ASTEnvironment

- (ASTEnvironment)init
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412546;
    selfCopy = self;
    v7 = 2080;
    v8 = "[ASTEnvironment init]";
    _os_log_impl(&dword_240F3C000, v3, OS_LOG_TYPE_DEFAULT, "[%@] %s", &v5, 0x16u);
  }

  return [(ASTEnvironment *)self initWithEnvironmentType:0];
}

- (ASTEnvironment)initWithEnvironmentType:(unint64_t)type
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v14 = 2080;
    v15 = "[ASTEnvironment initWithEnvironmentType:]";
    _os_log_impl(&dword_240F3C000, v5, OS_LOG_TYPE_DEFAULT, "[%@] %s", buf, 0x16u);
  }

  v11.receiver = self;
  v11.super_class = ASTEnvironment;
  v6 = [(ASTEnvironment *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_environmentType = type;
    v6->_server = [(ASTEnvironment *)v6 _defaultServerSelection];
    _generateServerURL = [(ASTEnvironment *)v7 _generateServerURL];
    serverURL = v7->_serverURL;
    v7->_serverURL = _generateServerURL;
  }

  return v7;
}

+ (id)environmentWithEnvironmentType:(unint64_t)type
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    selfCopy = self;
    v10 = 2080;
    v11 = "+[ASTEnvironment environmentWithEnvironmentType:]";
    _os_log_impl(&dword_240F3C000, v5, OS_LOG_TYPE_DEFAULT, "[%@] %s", &v8, 0x16u);
  }

  v6 = [[self alloc] initWithEnvironmentType:type];

  return v6;
}

+ (id)currentEnvironment
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    selfCopy = self;
    v8 = 2080;
    v9 = "+[ASTEnvironment currentEnvironment]";
    _os_log_impl(&dword_240F3C000, v3, OS_LOG_TYPE_DEFAULT, "[%@] %s", &v6, 0x16u);
  }

  if (currentEnvironment_onceToken != -1)
  {
    +[ASTEnvironment currentEnvironment];
  }

  dispatch_sync(ASTEnvironmentSyncQueue, &__block_literal_global_75);
  v4 = ASTCurrentEnvironment;

  return v4;
}

uint64_t __36__ASTEnvironment_currentEnvironment__block_invoke()
{
  ASTEnvironmentSyncQueue = dispatch_queue_create("com.apple.ASTEnvironmentSyncQueue", 0);

  return MEMORY[0x2821F96F8]();
}

void __36__ASTEnvironment_currentEnvironment__block_invoke_2()
{
  if (!ASTCurrentEnvironment)
  {
    ASTCurrentEnvironment = [[ASTEnvironment alloc] initWithEnvironmentType:3];

    MEMORY[0x2821F96F8]();
  }
}

+ (BOOL)isInternalBuild
{
  if (isInternalBuild_onceToken != -1)
  {
    +[ASTEnvironment isInternalBuild];
  }

  return isInternalBuild_isInternal;
}

uint64_t __33__ASTEnvironment_isInternalBuild__block_invoke()
{
  result = os_variant_has_internal_content();
  if (result)
  {
    isInternalBuild_isInternal = 1;
  }

  return result;
}

+ (id)protocolVersion
{
  if (protocolVersion_onceToken != -1)
  {
    +[ASTEnvironment protocolVersion];
  }

  v3 = protocolVersion_protocolVersion;

  return v3;
}

void __33__ASTEnvironment_protocolVersion__block_invoke()
{
  if (+[ASTEnvironment isInternalBuild])
  {
    v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.AppleServiceToolkit"];
    v0 = [v2 objectForKey:@"ProtocolVersion"];
    v1 = v0;
    if (v0 && [v0 length])
    {
      objc_storeStrong(&protocolVersion_protocolVersion, v1);
    }
  }
}

uint64_t __34__ASTEnvironment_resetEnvironment__block_invoke()
{
  [ASTCurrentEnvironment setEnvironmentType:3];
  v0 = [ASTCurrentEnvironment _generateServerURL];
  [ASTCurrentEnvironment setServerURL:v0];

  v1 = [ASTCurrentEnvironment _defaultServerSelection];
  v2 = ASTCurrentEnvironment;

  return [v2 setServer:v1];
}

+ (BOOL)isCoreRepairFrameworkAvailable
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__ASTEnvironment_isCoreRepairFrameworkAvailable__block_invoke;
  block[3] = &unk_278CBCFB0;
  v5 = @"/System/Library/PrivateFrameworks/CoreRepairKit.framework/CoreRepairKit";
  if (isCoreRepairFrameworkAvailable_coreRepairToken != -1)
  {
    dispatch_once(&isCoreRepairFrameworkAvailable_coreRepairToken, block);
  }

  v2 = isCoreRepairFrameworkAvailable_isCoreRepairAvailable;

  return v2;
}

void *__48__ASTEnvironment_isCoreRepairFrameworkAvailable__block_invoke(uint64_t a1)
{
  result = dlopen([*(a1 + 32) UTF8String], 1);
  isCoreRepairFrameworkAvailable_isCoreRepairAvailable = result != 0;
  return result;
}

+ (BOOL)isServicePart
{
  if (!+[ASTEnvironment isCoreRepairFrameworkAvailable])
  {
    return 0;
  }

  v6 = 0;
  v2 = [NSClassFromString(&cfstr_Crrepairstatus.isa) isServicePartWithError:&v6];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 isEqualToString:@"1"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setServerURL:(id)l
{
  lCopy = l;
  if ([objc_opt_class() isInternalBuild])
  {
    self->_server = 5;
    objc_storeStrong(&self->_serverURL, l);
  }
}

- (void)setServer:(unint64_t)server
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    selfCopy = self;
    v10 = 2080;
    v11 = "[ASTEnvironment setServer:]";
    _os_log_impl(&dword_240F3C000, v5, OS_LOG_TYPE_DEFAULT, "[%@] %s", &v8, 0x16u);
  }

  self->_server = server;
  _generateServerURL = [(ASTEnvironment *)self _generateServerURL];
  serverURL = self->_serverURL;
  self->_serverURL = _generateServerURL;
}

- (void)setEnvironmentType:(unint64_t)type
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    selfCopy = self;
    v10 = 2080;
    v11 = "[ASTEnvironment setEnvironmentType:]";
    _os_log_impl(&dword_240F3C000, v5, OS_LOG_TYPE_DEFAULT, "[%@] %s", &v8, 0x16u);
  }

  self->_environmentType = type;
  _generateServerURL = [(ASTEnvironment *)self _generateServerURL];
  serverURL = self->_serverURL;
  self->_serverURL = _generateServerURL;
}

- (void)setDiagsChannel:(id)channel
{
  v14 = *MEMORY[0x277D85DE8];
  channelCopy = channel;
  v6 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    selfCopy2 = self;
    v12 = 2080;
    v13 = "[ASTEnvironment setDiagsChannel:]";
    _os_log_impl(&dword_240F3C000, v6, OS_LOG_TYPE_DEFAULT, "[%@] %s", &v10, 0x16u);
  }

  if (([ASTCurrentDiagsChannel isEqualToString:channelCopy] & 1) == 0)
  {
    v7 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412546;
      selfCopy2 = self;
      v12 = 2112;
      v13 = channelCopy;
      _os_log_impl(&dword_240F3C000, v7, OS_LOG_TYPE_DEFAULT, "[%@] Updating diags channel to: %@", &v10, 0x16u);
    }

    objc_storeStrong(&ASTCurrentDiagsChannel, channel);
    _generateServerURL = [(ASTEnvironment *)self _generateServerURL];
    serverURL = self->_serverURL;
    self->_serverURL = _generateServerURL;
  }
}

- (void)setConfigCode:(id)code
{
  v12 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  v6 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    selfCopy2 = self;
    v10 = 2080;
    v11 = "[ASTEnvironment setConfigCode:]";
    _os_log_impl(&dword_240F3C000, v6, OS_LOG_TYPE_DEFAULT, "[%@] %s", &v8, 0x16u);
  }

  if (([ASTConfigCode isEqualToString:codeCopy] & 1) == 0)
  {
    v7 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412546;
      selfCopy2 = self;
      v10 = 2112;
      v11 = codeCopy;
      _os_log_impl(&dword_240F3C000, v7, OS_LOG_TYPE_DEFAULT, "[%@] Updating config code to: %@", &v8, 0x16u);
    }

    objc_storeStrong(&ASTConfigCode, code);
  }
}

- (void)setAssetURL:(id)l
{
  v16 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v6 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    selfCopy2 = self;
    v14 = 2080;
    v15 = "[ASTEnvironment setAssetURL:]";
    _os_log_impl(&dword_240F3C000, v6, OS_LOG_TYPE_DEFAULT, "[%@] %s", &v12, 0x16u);
  }

  absoluteString = [ASTAssetURL absoluteString];
  absoluteString2 = [lCopy absoluteString];
  v9 = [absoluteString isEqualToString:absoluteString2];

  if ((v9 & 1) == 0)
  {
    v10 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      absoluteString3 = [lCopy absoluteString];
      v12 = 138412546;
      selfCopy2 = self;
      v14 = 2112;
      v15 = absoluteString3;
      _os_log_impl(&dword_240F3C000, v10, OS_LOG_TYPE_DEFAULT, "[%@] Updating asset URL to: %@", &v12, 0x16u);
    }

    objc_storeStrong(&ASTAssetURL, l);
  }
}

- (id)environmentServerString
{
  environmentType = [(ASTEnvironment *)self environmentType];
  if (environmentType - 8 > 2)
  {
    return @"ios";
  }

  else
  {
    return off_278CBD960[environmentType - 8];
  }
}

- (BOOL)isDiagnosticsMode
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.AppleServiceToolkit"];
  if ([v2 BOOLForKey:@"DiagnosticMode"])
  {
    isCheckerBoardActive = 1;
  }

  else
  {
    isCheckerBoardActive = [MEMORY[0x277CF97E8] isCheckerBoardActive];
  }

  return isCheckerBoardActive;
}

- (id)_generateServerURL
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy2 = self;
    v24 = 2080;
    v25 = "[ASTEnvironment _generateServerURL]";
    _os_log_impl(&dword_240F3C000, v3, OS_LOG_TYPE_DEFAULT, "[%@] %s", buf, 0x16u);
  }

  switch([(ASTEnvironment *)self server])
  {
    case 1uLL:
      v4 = @"https://idiagnostics-uat.apple.com/%@/v%@/";
      break;
    case 2uLL:
      v4 = @"https://idiagnostics-it.apple.com/%@/v%@/";
      break;
    case 3uLL:
      v4 = @"https://idiagnostics-qa.apple.com/%@/v%@/";
      break;
    case 4uLL:
      v4 = @"https://diagnostics-dev.swe.apple.com";
      break;
    case 5uLL:
      v4 = @"https://idiagnostics.apple.com/%@/v%@/";
      if ([objc_opt_class() isInternalBuild])
      {
        _defaultServerURL = [(ASTEnvironment *)self _defaultServerURL];
        if (_defaultServerURL)
        {
          v4 = _defaultServerURL;
        }
      }

      break;
    case 6uLL:
      v4 = @"https://idiagnostics-reno.apple.com/%@/v%@/";
      break;
    case 7uLL:
      v4 = @"https://idiagnostics-mdn1.apple.com/%@/v%@/";
      break;
    case 8uLL:
      v4 = @"https://idiagnostics-nwk1.apple.com/%@/v%@/";
      break;
    case 9uLL:
      v4 = @"https://idiagnostics-it1.apple.com/%@/v%@/";
      break;
    case 10uLL:
      v4 = @"https://idiagnostics-it2.apple.com/%@/v%@/";
      break;
    case 11uLL:
      v4 = @"https://idiagnostics-staging.apple.com/%@/v%@/";
      break;
    case 12uLL:
      v4 = @"https://idiagnostics-uat1.apple.com/%@/v%@/";
      break;
    case 13uLL:
      v4 = @"https://idiagnostics-acstage.corp.apple.com/%@/v%@/";
      break;
    case 14uLL:
      v4 = @"https://idiagnostics-stage1.apple.com/%@/v%@/";
      break;
    case 15uLL:
      v4 = @"https://idiagnostics-prod2.apple.com/%@/v%@/";
      break;
    case 16uLL:
      v4 = @"https://idiagnostics-prod2-mdn.apple.com/%@/v%@/";
      break;
    case 17uLL:
      v4 = @"https://idiagnostics-prod2-rno.apple.com/%@/v%@/";
      break;
    case 18uLL:
      v4 = @"https://idiagnostics-it4-ause1.apple.com/%@/v%@/";
      break;
    case 19uLL:
      v4 = @"https://idiagnostics.aweuw1.sbz.apple.com/%@/v%@/";
      break;
    case 20uLL:
      v4 = @"https://idiagnostics.awapse1.sbz.apple.com/%@/v%@/";
      break;
    case 21uLL:
      v4 = @"https://idiagnostics-it5-it.aweuw1.shld.apple.com/%@/v%@/";
      break;
    case 22uLL:
      v4 = @"https://idiagnostics-it5-apse1-it.awapse1.shld.apple.com/%@/v%@/";
      break;
    default:
      v4 = @"https://idiagnostics.apple.com/%@/v%@/";
      break;
  }

  diagsChannel = [(ASTEnvironment *)self diagsChannel];
  v7 = [diagsChannel length];

  if (v7)
  {
    v8 = MEMORY[0x277CCACA8];
    diagsChannel2 = [(ASTEnvironment *)self diagsChannel];
    v10 = [v8 stringWithFormat:@"%@/", diagsChannel2];
    v11 = [(__CFString *)v4 stringByAppendingString:v10];

    v4 = v11;
  }

  v12 = MEMORY[0x277CCACA8];
  v21 = 0;
  environmentServerString = [(ASTEnvironment *)self environmentServerString];
  v14 = +[ASTEnvironment protocolVersion];
  v15 = [v12 stringWithValidatedFormat:v4 validFormatSpecifiers:@"%@%@" error:&v21, environmentServerString, v14];
  v16 = v21;

  if (v16)
  {
    v17 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      [(ASTEnvironment *)v16 _generateServerURL];
    }
  }

  v18 = [MEMORY[0x277CBEBC0] URLWithString:v15];
  v19 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy2 = self;
    v24 = 2112;
    v25 = v18;
    _os_log_impl(&dword_240F3C000, v19, OS_LOG_TYPE_DEFAULT, "[%@] New server URL: %@", buf, 0x16u);
  }

  return v18;
}

- (unint64_t)_defaultServerSelection
{
  if (_defaultServerSelection_onceToken != -1)
  {
    [ASTEnvironment _defaultServerSelection];
  }

  return _defaultServerSelection_server;
}

void __41__ASTEnvironment__defaultServerSelection__block_invoke()
{
  CFPreferencesAppSynchronize(@"com.apple.AppleServiceToolkit");
  v0 = CFPreferencesCopyAppValue(@"Server", @"com.apple.AppleServiceToolkit");
  if (v0)
  {
    cf = v0;
    v1 = CFGetTypeID(v0);
    if (v1 == CFNumberGetTypeID())
    {
      _defaultServerSelection_server = [cf unsignedIntegerValue];
    }

    else
    {
      v3 = ASTLogHandleForCategory(0);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        __41__ASTEnvironment__defaultServerSelection__block_invoke_cold_1(v3);
      }

      CFRelease(cf);
    }
  }

  else
  {
    v2 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __41__ASTEnvironment__defaultServerSelection__block_invoke_cold_2(v2);
    }
  }
}

- (id)_defaultServerURL
{
  if (_defaultServerURL_onceToken != -1)
  {
    [ASTEnvironment _defaultServerURL];
  }

  v3 = _defaultServerURL_server;

  return v3;
}

uint64_t __35__ASTEnvironment__defaultServerURL__block_invoke()
{
  CFPreferencesAppSynchronize(@"com.apple.AppleServiceToolkit");
  _defaultServerURL_server = CFPreferencesCopyAppValue(@"CustomServerURL", @"com.apple.AppleServiceToolkit");

  return MEMORY[0x2821F96F8]();
}

- (void)_generateServerURL
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  selfCopy = self;
  _os_log_fault_impl(&dword_240F3C000, a2, OS_LOG_TYPE_FAULT, "Invalid server format string: %@", &v2, 0xCu);
}

@end