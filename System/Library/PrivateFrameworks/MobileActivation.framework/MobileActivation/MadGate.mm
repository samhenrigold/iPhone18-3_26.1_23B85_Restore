@interface MadGate
- (BOOL)deactivateDevice:(id *)device;
- (BOOL)deleteLegacyDeviceIdentity:(id *)identity;
- (BOOL)handleActivationInfo:(id)info withError:(id *)error;
- (BOOL)handleActivationInfoWithSession:(id)session activationSignature:(id)signature error:(id *)error;
- (BOOL)isDeviceABrick:(id *)brick;
- (BOOL)isInFieldCollected:(id *)collected;
- (BOOL)isUCRTAvailable:(id *)available;
- (BOOL)issueUCRT:(id)t withError:(id *)error;
- (BOOL)reactivateDevice:(id *)device;
- (BOOL)recertifyDeviceWithError:(id *)error;
- (BOOL)ucrtUpgradeRequired:(id *)required;
- (BOOL)unbrickDevice:(id *)device;
- (MadGate)init;
- (__SecIdentity)copyLegacyDeviceIdentity:(id *)identity;
- (id)copyActivationRecord:(id *)record;
- (id)copyDCRT:(id)t withError:(id *)error;
- (id)copyPCRTToken:(id *)token;
- (id)copyRegionDataForGestalt:(id *)gestalt;
- (id)copyUCRTVersionInfo:(id *)info;
- (id)createActivationInfo:(id *)info;
- (id)createTunnel1ActivationInfo:(id)info options:(id)options error:(id *)error;
- (id)createTunnel1SessionInfo:(id *)info;
- (id)getActivationBuild:(id *)build;
- (id)getActivationState:(id *)state;
- (id)getDCRTState:(id)state withError:(id *)error;
- (id)getUCRTActivationLockState:(id *)state;
- (id)issueClientCertificateLegacy:(id)legacy error:(id *)error;
- (void)dealloc;
- (void)issueCollection:(id)collection withCompletion:(id)completion;
- (void)issueDCRT:(id)t withCompletion:(id)completion;
- (void)updateBasebandTicket:(__SecKey *)ticket baaCert:(__SecCertificate *)cert baaIntermediateCert:(__SecCertificate *)intermediateCert options:(id)options withCompletion:(id)completion;
@end

@implementation MadGate

- (MadGate)init
{
  v7.receiver = self;
  v7.super_class = MadGate;
  v2 = [(MadGate *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286ABAFC8];
    v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.mobileactivationd" options:4096];
    connection = v2->_connection;
    v2->_connection = v4;

    [(NSXPCConnection *)v2->_connection setRemoteObjectInterface:v3];
    [(NSXPCConnection *)v2->_connection resume];
  }

  return v2;
}

- (void)dealloc
{
  connection = [(MadGate *)self connection];
  [(NSXPCConnection *)connection invalidate];

  v4.receiver = self;
  v4.super_class = MadGate;
  [(MadGate *)&v4 dealloc];
}

- (id)getUCRTActivationLockState:(id *)state
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = createMobileActivationError("[MadGate getUCRTActivationLockState:]", 59, @"com.apple.MobileActivation.ErrorDomain", -3, 0, @"SPI not supported on iOS.");
  if (v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&dword_259A60000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", &v7, 0xCu);
  }

  if (state)
  {
    v5 = v4;
    *state = v4;
  }

  return 0;
}

- (id)getActivationState:(id *)state
{
  v26 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  connection = [(MadGate *)self connection];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3254779904;
  v11[2] = __30__MadGate_getActivationState___block_invoke;
  v11[3] = &__block_descriptor_40_e8_32r_e17_v16__0__NSError_8l;
  v11[4] = &v12;
  v5 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v11];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3254779904;
  v10[2] = __30__MadGate_getActivationState___block_invoke_93;
  v10[3] = &__block_descriptor_48_e8_32r40r_e34_v24__0__NSDictionary_8__NSError_16l;
  v10[4] = &v18;
  v10[5] = &v12;
  [v5 getActivationStateWithCompletionBlock:v10];
  if (v13[5] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v13[5];
    *buf = 138543362;
    v25 = v6;
    _os_log_impl(&dword_259A60000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  v7 = v19[5];
  if (state && !v7)
  {
    *state = v13[5];
    v7 = v19[5];
  }

  v8 = v7;

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);

  return v8;
}

void __30__MadGate_getActivationState___block_invoke(uint64_t a1, void *a2)
{
  v3 = createMobileActivationError("[MadGate getActivationState:]_block_invoke", 91, @"com.apple.MobileActivation.ErrorDomain", -1, a2, @"IPC Error.");
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __30__MadGate_getActivationState___block_invoke_93(uint64_t a1, id a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:@"ActivationState"];
  v8 = isNSString(v7);

  if (v8)
  {
    v9 = [v5 objectForKeyedSubscript:@"ActivationState"];
    v10 = [v9 copy];
    v11 = *(*(a1 + 32) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v6;
}

- (id)getActivationBuild:(id *)build
{
  v26 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  connection = [(MadGate *)self connection];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3254779904;
  v11[2] = __30__MadGate_getActivationBuild___block_invoke;
  v11[3] = &__block_descriptor_40_e8_32r_e17_v16__0__NSError_8l;
  v11[4] = &v12;
  v5 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v11];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3254779904;
  v10[2] = __30__MadGate_getActivationBuild___block_invoke_2;
  v10[3] = &__block_descriptor_48_e8_32r40r_e34_v24__0__NSDictionary_8__NSError_16l;
  v10[4] = &v18;
  v10[5] = &v12;
  [v5 getActivationBuildWithCompletionBlock:v10];
  if (v13[5] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v13[5];
    *buf = 138543362;
    v25 = v6;
    _os_log_impl(&dword_259A60000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  v7 = v19[5];
  if (build && !v7)
  {
    *build = v13[5];
    v7 = v19[5];
  }

  v8 = v7;

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);

  return v8;
}

void __30__MadGate_getActivationBuild___block_invoke(uint64_t a1, void *a2)
{
  v3 = createMobileActivationError("[MadGate getActivationBuild:]_block_invoke", 122, @"com.apple.MobileActivation.ErrorDomain", -1, a2, @"IPC Error.");
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __30__MadGate_getActivationBuild___block_invoke_2(uint64_t a1, id a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:@"LastActivated"];
  v8 = isNSString(v7);

  if (v8)
  {
    v9 = [v5 objectForKeyedSubscript:@"LastActivated"];
    v10 = [v9 copy];
    v11 = *(*(a1 + 32) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v6;
}

- (BOOL)isUCRTAvailable:(id *)available
{
  v23 = *MEMORY[0x277D85DE8];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  connection = [(MadGate *)self connection];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3254779904;
  v10[2] = __27__MadGate_isUCRTAvailable___block_invoke;
  v10[3] = &__block_descriptor_40_e8_32r_e17_v16__0__NSError_8l;
  v10[4] = &v11;
  v5 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v10];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3254779904;
  v9[2] = __27__MadGate_isUCRTAvailable___block_invoke_2;
  v9[3] = &__block_descriptor_48_e8_32r40r_e34_v24__0__NSDictionary_8__NSError_16l;
  v9[4] = &v17;
  v9[5] = &v11;
  [v5 copyUCRTWithCompletionBlock:v9];
  if (v12[5] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v12[5];
    *buf = 138543362;
    v22 = v6;
    _os_log_impl(&dword_259A60000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  v7 = *(v18 + 24);
  if (available && (v18[3] & 1) == 0)
  {
    *available = v12[5];
    v7 = *(v18 + 24);
  }

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v17, 8);
  return v7 & 1;
}

void __27__MadGate_isUCRTAvailable___block_invoke(uint64_t a1, void *a2)
{
  v3 = createMobileActivationError("[MadGate isUCRTAvailable:]_block_invoke", 154, @"com.apple.MobileActivation.ErrorDomain", -1, a2, @"IPC Error.");
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __27__MadGate_isUCRTAvailable___block_invoke_2(uint64_t a1, void *a2, id a3)
{
  v5 = a3;
  v6 = [a2 objectForKeyedSubscript:@"UCRTData"];
  v7 = isNSData(v6);

  if (v7)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
}

- (id)copyPCRTToken:(id *)token
{
  v26 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  connection = [(MadGate *)self connection];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3254779904;
  v11[2] = __25__MadGate_copyPCRTToken___block_invoke;
  v11[3] = &__block_descriptor_40_e8_32r_e17_v16__0__NSError_8l;
  v11[4] = &v12;
  v5 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v11];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3254779904;
  v10[2] = __25__MadGate_copyPCRTToken___block_invoke_2;
  v10[3] = &__block_descriptor_48_e8_32r40r_e34_v24__0__NSDictionary_8__NSError_16l;
  v10[4] = &v18;
  v10[5] = &v12;
  [v5 copyPCRTTokenWithCompletionBlock:v10];
  if (v13[5] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v13[5];
    *buf = 138543362;
    v25 = v6;
    _os_log_impl(&dword_259A60000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  v7 = v19[5];
  if (token && !v7)
  {
    *token = v13[5];
    v7 = v19[5];
  }

  v8 = v7;

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);

  return v8;
}

void __25__MadGate_copyPCRTToken___block_invoke(uint64_t a1, void *a2)
{
  v3 = createMobileActivationError("[MadGate copyPCRTToken:]_block_invoke", 186, @"com.apple.MobileActivation.ErrorDomain", -1, a2, @"IPC Error.");
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __25__MadGate_copyPCRTToken___block_invoke_2(uint64_t a1, id a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:@"PCRTToken"];
  v8 = isNSString(v7);

  if (v8)
  {
    v9 = [v5 objectForKeyedSubscript:@"PCRTToken"];
    v10 = [v9 copy];
    v11 = *(*(a1 + 32) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v6;
}

- (BOOL)isDeviceABrick:(id *)brick
{
  v23 = *MEMORY[0x277D85DE8];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 1;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  connection = [(MadGate *)self connection];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3254779904;
  v10[2] = __26__MadGate_isDeviceABrick___block_invoke;
  v10[3] = &__block_descriptor_40_e8_32r_e17_v16__0__NSError_8l;
  v10[4] = &v11;
  v5 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v10];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3254779904;
  v9[2] = __26__MadGate_isDeviceABrick___block_invoke_2;
  v9[3] = &__block_descriptor_48_e8_32r40r_e34_v24__0__NSDictionary_8__NSError_16l;
  v9[4] = &v17;
  v9[5] = &v11;
  [v5 isDeviceBrickedWithCompletionBlock:v9];
  if (v12[5] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v12[5];
    *buf = 138543362;
    v22 = v6;
    _os_log_impl(&dword_259A60000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  v7 = *(v18 + 24);
  if (brick && (v18[3] & 1) != 0)
  {
    *brick = v12[5];
    v7 = *(v18 + 24);
  }

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v17, 8);
  return v7 & 1;
}

void __26__MadGate_isDeviceABrick___block_invoke(uint64_t a1, void *a2)
{
  v3 = createMobileActivationError("[MadGate isDeviceABrick:]_block_invoke", 219, @"com.apple.MobileActivation.ErrorDomain", -1, a2, @"IPC Error.");
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __26__MadGate_isDeviceABrick___block_invoke_2(uint64_t a1, id a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:@"BrickState"];
  v8 = isNSNumber(v7);

  if (v8)
  {
    v9 = [v5 objectForKeyedSubscript:@"BrickState"];
    *(*(*(a1 + 32) + 8) + 24) = [v9 BOOLValue];
  }

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v6;
}

- (id)createTunnel1SessionInfo:(id *)info
{
  v26 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  connection = [(MadGate *)self connection];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3254779904;
  v11[2] = __36__MadGate_createTunnel1SessionInfo___block_invoke;
  v11[3] = &__block_descriptor_40_e8_32r_e17_v16__0__NSError_8l;
  v11[4] = &v12;
  v5 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v11];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3254779904;
  v10[2] = __36__MadGate_createTunnel1SessionInfo___block_invoke_2;
  v10[3] = &__block_descriptor_48_e8_32r40r_e34_v24__0__NSDictionary_8__NSError_16l;
  v10[4] = &v18;
  v10[5] = &v12;
  [v5 createTunnel1SessionInfoWithCompletionBlock:v10];
  if (v13[5] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v13[5];
    *buf = 138543362;
    v25 = v6;
    _os_log_impl(&dword_259A60000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  v7 = v19[5];
  if (info && !v7)
  {
    *info = v13[5];
    v7 = v19[5];
  }

  v8 = v7;

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);

  return v8;
}

void __36__MadGate_createTunnel1SessionInfo___block_invoke(uint64_t a1, void *a2)
{
  v3 = createMobileActivationError("[MadGate createTunnel1SessionInfo:]_block_invoke", 251, @"com.apple.MobileActivation.ErrorDomain", -1, a2, @"IPC Error.");
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __36__MadGate_createTunnel1SessionInfo___block_invoke_2(uint64_t a1, void *a2, id a3)
{
  v5 = a3;
  v6 = [a2 copy];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
}

- (id)createTunnel1ActivationInfo:(id)info options:(id)options error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  optionsCopy = options;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  connection = [(MadGate *)self connection];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3254779904;
  v17[2] = __53__MadGate_createTunnel1ActivationInfo_options_error___block_invoke;
  v17[3] = &__block_descriptor_40_e8_32r_e17_v16__0__NSError_8l;
  v17[4] = &v18;
  v11 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v17];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3254779904;
  v16[2] = __53__MadGate_createTunnel1ActivationInfo_options_error___block_invoke_2;
  v16[3] = &__block_descriptor_48_e8_32r40r_e34_v24__0__NSDictionary_8__NSError_16l;
  v16[4] = &v24;
  v16[5] = &v18;
  [v11 createTunnel1ActivationInfo:infoCopy options:optionsCopy withCompletionBlock:v16];
  if (v19[5] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v12 = v19[5];
    *buf = 138543362;
    v31 = v12;
    _os_log_impl(&dword_259A60000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  v13 = v25[5];
  if (error && !v13)
  {
    *error = v19[5];
    v13 = v25[5];
  }

  v14 = v13;

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v14;
}

void __53__MadGate_createTunnel1ActivationInfo_options_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = createMobileActivationError("[MadGate createTunnel1ActivationInfo:options:error:]_block_invoke", 280, @"com.apple.MobileActivation.ErrorDomain", -1, a2, @"IPC Error.");
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __53__MadGate_createTunnel1ActivationInfo_options_error___block_invoke_2(uint64_t a1, void *a2, id a3)
{
  v5 = a3;
  v6 = [a2 copy];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
}

- (id)createActivationInfo:(id *)info
{
  v26 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  connection = [(MadGate *)self connection];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3254779904;
  v11[2] = __32__MadGate_createActivationInfo___block_invoke;
  v11[3] = &__block_descriptor_40_e8_32r_e17_v16__0__NSError_8l;
  v11[4] = &v12;
  v5 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v11];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3254779904;
  v10[2] = __32__MadGate_createActivationInfo___block_invoke_2;
  v10[3] = &__block_descriptor_48_e8_32r40r_e34_v24__0__NSDictionary_8__NSError_16l;
  v10[4] = &v18;
  v10[5] = &v12;
  [v5 createActivationInfoWithCompletionBlock:v10];
  if (v13[5] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v13[5];
    *buf = 138543362;
    v25 = v6;
    _os_log_impl(&dword_259A60000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  v7 = v19[5];
  if (info && !v7)
  {
    *info = v13[5];
    v7 = v19[5];
  }

  v8 = v7;

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);

  return v8;
}

void __32__MadGate_createActivationInfo___block_invoke(uint64_t a1, void *a2)
{
  v3 = createMobileActivationError("[MadGate createActivationInfo:]_block_invoke", 309, @"com.apple.MobileActivation.ErrorDomain", -1, a2, @"IPC Error.");
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __32__MadGate_createActivationInfo___block_invoke_2(uint64_t a1, void *a2, id a3)
{
  v5 = a3;
  v6 = [a2 copy];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
}

- (BOOL)handleActivationInfo:(id)info withError:(id *)error
{
  v22 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  connection = [(MadGate *)self connection];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3254779904;
  v13[2] = __42__MadGate_handleActivationInfo_withError___block_invoke;
  v13[3] = &__block_descriptor_40_e8_32r_e17_v16__0__NSError_8l;
  v13[4] = &v14;
  v8 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v13];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3254779904;
  v12[2] = __42__MadGate_handleActivationInfo_withError___block_invoke_2;
  v12[3] = &__block_descriptor_40_e8_32r_e34_v24__0__NSDictionary_8__NSError_16l;
  v12[4] = &v14;
  [v8 handleActivationInfo:infoCopy withCompletionBlock:v12];
  v9 = v15[5];
  if (v9)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v10 = v15[5];
      *buf = 138543362;
      v21 = v10;
      _os_log_impl(&dword_259A60000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }

    if (error)
    {
      *error = v15[5];
    }
  }

  _Block_object_dispose(&v14, 8);
  return v9 == 0;
}

void __42__MadGate_handleActivationInfo_withError___block_invoke(uint64_t a1, void *a2)
{
  v3 = createMobileActivationError("[MadGate handleActivationInfo:withError:]_block_invoke", 338, @"com.apple.MobileActivation.ErrorDomain", -1, a2, @"IPC Error.");
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (BOOL)handleActivationInfoWithSession:(id)session activationSignature:(id)signature error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  signatureCopy = signature;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  connection = [(MadGate *)self connection];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3254779904;
  v16[2] = __69__MadGate_handleActivationInfoWithSession_activationSignature_error___block_invoke;
  v16[3] = &__block_descriptor_40_e8_32r_e17_v16__0__NSError_8l;
  v16[4] = &v17;
  v11 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v16];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3254779904;
  v15[2] = __69__MadGate_handleActivationInfoWithSession_activationSignature_error___block_invoke_2;
  v15[3] = &__block_descriptor_40_e8_32r_e34_v24__0__NSDictionary_8__NSError_16l;
  v15[4] = &v17;
  [v11 handleActivationInfoWithSession:sessionCopy activationSignature:signatureCopy completionBlock:v15];
  v12 = v18[5];
  if (v12)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v13 = v18[5];
      *buf = 138543362;
      v24 = v13;
      _os_log_impl(&dword_259A60000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }

    if (error)
    {
      *error = v18[5];
    }
  }

  _Block_object_dispose(&v17, 8);
  return v12 == 0;
}

void __69__MadGate_handleActivationInfoWithSession_activationSignature_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = createMobileActivationError("[MadGate handleActivationInfoWithSession:activationSignature:error:]_block_invoke", 368, @"com.apple.MobileActivation.ErrorDomain", -1, a2, @"IPC Error.");
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (BOOL)deactivateDevice:(id *)device
{
  v19 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  connection = [(MadGate *)self connection];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3254779904;
  v10[2] = __28__MadGate_deactivateDevice___block_invoke;
  v10[3] = &__block_descriptor_40_e8_32r_e17_v16__0__NSError_8l;
  v10[4] = &v11;
  v5 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v10];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3254779904;
  v9[2] = __28__MadGate_deactivateDevice___block_invoke_2;
  v9[3] = &__block_descriptor_40_e8_32r_e34_v24__0__NSDictionary_8__NSError_16l;
  v9[4] = &v11;
  [v5 deactivateDeviceWithCompletionBlock:v9];
  v6 = v12[5];
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v7 = v12[5];
      *buf = 138543362;
      v18 = v7;
      _os_log_impl(&dword_259A60000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }

    if (device)
    {
      *device = v12[5];
    }
  }

  _Block_object_dispose(&v11, 8);
  return v6 == 0;
}

void __28__MadGate_deactivateDevice___block_invoke(uint64_t a1, void *a2)
{
  v3 = createMobileActivationError("[MadGate deactivateDevice:]_block_invoke", 398, @"com.apple.MobileActivation.ErrorDomain", -1, a2, @"IPC Error.");
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (BOOL)reactivateDevice:(id *)device
{
  v19 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  connection = [(MadGate *)self connection];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3254779904;
  v10[2] = __28__MadGate_reactivateDevice___block_invoke;
  v10[3] = &__block_descriptor_40_e8_32r_e17_v16__0__NSError_8l;
  v10[4] = &v11;
  v5 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v10];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3254779904;
  v9[2] = __28__MadGate_reactivateDevice___block_invoke_2;
  v9[3] = &__block_descriptor_40_e8_32r_e34_v24__0__NSDictionary_8__NSError_16l;
  v9[4] = &v11;
  [v5 requestDeviceReactivationWithCompletionBlock:v9];
  v6 = v12[5];
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v7 = v12[5];
      *buf = 138543362;
      v18 = v7;
      _os_log_impl(&dword_259A60000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }

    if (device)
    {
      *device = v12[5];
    }
  }

  _Block_object_dispose(&v11, 8);
  return v6 == 0;
}

void __28__MadGate_reactivateDevice___block_invoke(uint64_t a1, void *a2)
{
  v3 = createMobileActivationError("[MadGate reactivateDevice:]_block_invoke", 428, @"com.apple.MobileActivation.ErrorDomain", -1, a2, @"IPC Error.");
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)copyActivationRecord:(id *)record
{
  v26 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  connection = [(MadGate *)self connection];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3254779904;
  v11[2] = __32__MadGate_copyActivationRecord___block_invoke;
  v11[3] = &__block_descriptor_40_e8_32r_e17_v16__0__NSError_8l;
  v11[4] = &v12;
  v5 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v11];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3254779904;
  v10[2] = __32__MadGate_copyActivationRecord___block_invoke_2;
  v10[3] = &__block_descriptor_48_e8_32r40r_e34_v24__0__NSDictionary_8__NSError_16l;
  v10[4] = &v18;
  v10[5] = &v12;
  [v5 copyActivationRecordWithCompletionBlock:v10];
  if (v13[5] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v13[5];
    *buf = 138543362;
    v25 = v6;
    _os_log_impl(&dword_259A60000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  v7 = v19[5];
  if (record && !v7)
  {
    *record = v13[5];
    v7 = v19[5];
  }

  v8 = v7;

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);

  return v8;
}

void __32__MadGate_copyActivationRecord___block_invoke(uint64_t a1, void *a2)
{
  v3 = createMobileActivationError("[MadGate copyActivationRecord:]_block_invoke", 458, @"com.apple.MobileActivation.ErrorDomain", -1, a2, @"IPC Error.");
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __32__MadGate_copyActivationRecord___block_invoke_2(uint64_t a1, void *a2, id a3)
{
  v5 = a3;
  v6 = [a2 copy];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
}

- (id)copyRegionDataForGestalt:(id *)gestalt
{
  v26 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  connection = [(MadGate *)self connection];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3254779904;
  v11[2] = __36__MadGate_copyRegionDataForGestalt___block_invoke;
  v11[3] = &__block_descriptor_40_e8_32r_e17_v16__0__NSError_8l;
  v11[4] = &v12;
  v5 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v11];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3254779904;
  v10[2] = __36__MadGate_copyRegionDataForGestalt___block_invoke_2;
  v10[3] = &__block_descriptor_48_e8_32r40r_e34_v24__0__NSDictionary_8__NSError_16l;
  v10[4] = &v18;
  v10[5] = &v12;
  [v5 copyRegionDataForGestaltWithCompletionBlock:v10];
  if (v13[5] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v13[5];
    *buf = 138543362;
    v25 = v6;
    _os_log_impl(&dword_259A60000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  v7 = v19[5];
  if (gestalt && !v7)
  {
    *gestalt = v13[5];
    v7 = v19[5];
  }

  v8 = v7;

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);

  return v8;
}

void __36__MadGate_copyRegionDataForGestalt___block_invoke(uint64_t a1, void *a2)
{
  v3 = createMobileActivationError("[MadGate copyRegionDataForGestalt:]_block_invoke", 487, @"com.apple.MobileActivation.ErrorDomain", -1, a2, @"IPC Error.");
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __36__MadGate_copyRegionDataForGestalt___block_invoke_2(uint64_t a1, void *a2, id a3)
{
  v5 = a3;
  v6 = [a2 copy];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
}

- (BOOL)unbrickDevice:(id *)device
{
  v19 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  connection = [(MadGate *)self connection];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3254779904;
  v10[2] = __25__MadGate_unbrickDevice___block_invoke;
  v10[3] = &__block_descriptor_40_e8_32r_e17_v16__0__NSError_8l;
  v10[4] = &v11;
  v5 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v10];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3254779904;
  v9[2] = __25__MadGate_unbrickDevice___block_invoke_2;
  v9[3] = &__block_descriptor_40_e8_32r_e34_v24__0__NSDictionary_8__NSError_16l;
  v9[4] = &v11;
  [v5 unbrickDeviceWithCompletionBlock:v9];
  v6 = v12[5];
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v7 = v12[5];
      *buf = 138543362;
      v18 = v7;
      _os_log_impl(&dword_259A60000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }

    if (device)
    {
      *device = v12[5];
    }
  }

  _Block_object_dispose(&v11, 8);
  return v6 == 0;
}

void __25__MadGate_unbrickDevice___block_invoke(uint64_t a1, void *a2)
{
  v3 = createMobileActivationError("[MadGate unbrickDevice:]_block_invoke", 516, @"com.apple.MobileActivation.ErrorDomain", -1, a2, @"IPC Error.");
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (BOOL)recertifyDeviceWithError:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  connection = [(MadGate *)self connection];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3254779904;
  v10[2] = __36__MadGate_recertifyDeviceWithError___block_invoke;
  v10[3] = &__block_descriptor_40_e8_32r_e17_v16__0__NSError_8l;
  v10[4] = &v11;
  v5 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v10];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3254779904;
  v9[2] = __36__MadGate_recertifyDeviceWithError___block_invoke_2;
  v9[3] = &__block_descriptor_40_e8_32r_e34_v24__0__NSDictionary_8__NSError_16l;
  v9[4] = &v11;
  [v5 recertifyDeviceWithCompletionBlock:v9];
  v6 = v12[5];
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v7 = v12[5];
      *buf = 138543362;
      v18 = v7;
      _os_log_impl(&dword_259A60000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }

    if (error)
    {
      *error = v12[5];
    }
  }

  _Block_object_dispose(&v11, 8);
  return v6 == 0;
}

void __36__MadGate_recertifyDeviceWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = createMobileActivationError("[MadGate recertifyDeviceWithError:]_block_invoke", 546, @"com.apple.MobileActivation.ErrorDomain", -1, a2, @"IPC Error.");
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)issueClientCertificateLegacy:(id)legacy error:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  legacyCopy = legacy;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  connection = [(MadGate *)self connection];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3254779904;
  v14[2] = __46__MadGate_issueClientCertificateLegacy_error___block_invoke;
  v14[3] = &__block_descriptor_40_e8_32r_e17_v16__0__NSError_8l;
  v14[4] = &v15;
  v8 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v14];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3254779904;
  v13[2] = __46__MadGate_issueClientCertificateLegacy_error___block_invoke_2;
  v13[3] = &__block_descriptor_48_e8_32r40r_e34_v24__0__NSDictionary_8__NSError_16l;
  v13[4] = &v21;
  v13[5] = &v15;
  [v8 issueClientCertificateLegacy:legacyCopy WithCompletionBlock:v13];
  if (v16[5] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v16[5];
    *buf = 138543362;
    v28 = v9;
    _os_log_impl(&dword_259A60000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  v10 = v22[5];
  if (error && !v10)
  {
    *error = v16[5];
    v10 = v22[5];
  }

  v11 = v10;

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v11;
}

void __46__MadGate_issueClientCertificateLegacy_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = createMobileActivationError("[MadGate issueClientCertificateLegacy:error:]_block_invoke", 576, @"com.apple.MobileActivation.ErrorDomain", -1, a2, @"IPC Error.");
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __46__MadGate_issueClientCertificateLegacy_error___block_invoke_2(uint64_t a1, void *a2, id a3)
{
  v5 = a3;
  v6 = [a2 objectForKeyedSubscript:@"RKCertification"];
  v7 = isNSData(v6);
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v5;
}

- (BOOL)isInFieldCollected:(id *)collected
{
  v23 = *MEMORY[0x277D85DE8];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  connection = [(MadGate *)self connection];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3254779904;
  v10[2] = __30__MadGate_isInFieldCollected___block_invoke;
  v10[3] = &__block_descriptor_40_e8_32r_e17_v16__0__NSError_8l;
  v10[4] = &v11;
  v5 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v10];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3254779904;
  v9[2] = __30__MadGate_isInFieldCollected___block_invoke_2;
  v9[3] = &__block_descriptor_48_e8_32r40r_e34_v24__0__NSDictionary_8__NSError_16l;
  v9[4] = &v17;
  v9[5] = &v11;
  [v5 isInFieldCollectedWithCompletionBlock:v9];
  if (v12[5] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v12[5];
    *buf = 138543362;
    v22 = v6;
    _os_log_impl(&dword_259A60000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  v7 = *(v18 + 24);
  if (collected && (v18[3] & 1) == 0)
  {
    *collected = v12[5];
    v7 = *(v18 + 24);
  }

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v17, 8);
  return v7 & 1;
}

void __30__MadGate_isInFieldCollected___block_invoke(uint64_t a1, void *a2)
{
  v3 = createMobileActivationError("[MadGate isInFieldCollected:]_block_invoke", 605, @"com.apple.MobileActivation.ErrorDomain", -1, a2, @"IPC Error.");
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __30__MadGate_isInFieldCollected___block_invoke_2(uint64_t a1, id a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:@"CollectionLastPerformed"];
  v8 = isNSNumber(v7);

  if (v8)
  {
    v9 = [v5 objectForKeyedSubscript:@"CollectionLastPerformed"];
    *(*(*(a1 + 32) + 8) + 24) = [v9 BOOLValue];
  }

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v6;
}

- (void)updateBasebandTicket:(__SecKey *)ticket baaCert:(__SecCertificate *)cert baaIntermediateCert:(__SecCertificate *)intermediateCert options:(id)options withCompletion:(id)completion
{
  v42 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  completionCopy = completion;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy_;
  v38 = __Block_byref_object_dispose_;
  v39 = 0;
  if (ticket && cert && intermediateCert)
  {
    v14 = [optionsCopy mutableCopy];
    v15 = (v35 + 5);
    obj = v35[5];
    v33 = 0;
    v16 = security_create_external_representation(ticket, &v33, &obj);
    v17 = v33;
    objc_storeStrong(v15, obj);
    if (v16)
    {
      [v14 setObject:v17 forKeyedSubscript:@"SigningKeyAttributes"];
      v18 = SecCertificateCopyData(cert);
      if (v18)
      {
        v19 = SecCertificateCopyData(intermediateCert);
        if (v19)
        {
          connection = [(MadGate *)self connection];
          v29[0] = MEMORY[0x277D85DD0];
          v29[1] = 3254779904;
          v29[2] = __83__MadGate_updateBasebandTicket_baaCert_baaIntermediateCert_options_withCompletion___block_invoke;
          v29[3] = &__block_descriptor_48_e8_32bs40r_e17_v16__0__NSError_8l;
          v31 = &v34;
          v21 = completionCopy;
          v30 = v21;
          v25 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v29];

          v26[0] = MEMORY[0x277D85DD0];
          v26[1] = 3254779904;
          v26[2] = __83__MadGate_updateBasebandTicket_baaCert_baaIntermediateCert_options_withCompletion___block_invoke_106;
          v26[3] = &__block_descriptor_56_e8_32s40bs48r_e34_v24__0__NSDictionary_8__NSError_16l;
          v28 = &v34;
          v26[4] = self;
          v27 = v21;
          [v25 updateBasebandTicket:v16 baaCertData:v18 baaIntermediateCert:v19 options:v14 withCompletionBlock:v26];

          goto LABEL_17;
        }

        v22 = createMobileActivationError("[MadGate updateBasebandTicket:baaCert:baaIntermediateCert:options:withCompletion:]", 669, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy certificate data.");
      }

      else
      {
        v22 = createMobileActivationError("[MadGate updateBasebandTicket:baaCert:baaIntermediateCert:options:withCompletion:]", 663, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy certificate data.");
        v18 = 0;
      }
    }

    else
    {
      v22 = createMobileActivationError("[MadGate updateBasebandTicket:baaCert:baaIntermediateCert:options:withCompletion:]", 655, @"com.apple.MobileActivation.ErrorDomain", -1, v35[5], @"Failed to encode RK as data.");
      v18 = 0;
      v16 = 0;
    }
  }

  else
  {
    v22 = createMobileActivationError("[MadGate updateBasebandTicket:baaCert:baaIntermediateCert:options:withCompletion:]", 647, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input(s).");
    v18 = 0;
    v14 = 0;
    v16 = 0;
    v17 = 0;
  }

  v23 = v35[5];
  v35[5] = v22;

  if (v35[5] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v24 = v35[5];
    *buf = 138543362;
    v41 = v24;
    _os_log_impl(&dword_259A60000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, v35[5]);
  }

LABEL_17:

  _Block_object_dispose(&v34, 8);
}

uint64_t __83__MadGate_updateBasebandTicket_baaCert_baaIntermediateCert_options_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = createMobileActivationError("[MadGate updateBasebandTicket:baaCert:baaIntermediateCert:options:withCompletion:]_block_invoke", 677, @"com.apple.MobileActivation.ErrorDomain", -1, a2, @"IPC Error.");
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*(*(a1 + 40) + 8) + 40);
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_259A60000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", &v8, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, *(*(*(a1 + 40) + 8) + 40));
  }

  return result;
}

void __83__MadGate_updateBasebandTicket_baaCert_baaIntermediateCert_options_withCompletion___block_invoke_106(uint64_t a1, int a2, id a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  if (*(*(*(a1 + 48) + 8) + 40) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*(*(a1 + 48) + 8) + 40);
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_259A60000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", &v9, 0xCu);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, 0, *(*(*(a1 + 48) + 8) + 40));
  }

  v8 = [*(a1 + 32) connection];
  [v8 invalidate];
}

- (id)getDCRTState:(id)state withError:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  connection = [(MadGate *)self connection];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3254779904;
  v14[2] = __34__MadGate_getDCRTState_withError___block_invoke;
  v14[3] = &__block_descriptor_40_e8_32r_e17_v16__0__NSError_8l;
  v14[4] = &v15;
  v8 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v14];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3254779904;
  v13[2] = __34__MadGate_getDCRTState_withError___block_invoke_2;
  v13[3] = &__block_descriptor_48_e8_32r40r_e34_v24__0__NSDictionary_8__NSError_16l;
  v13[4] = &v21;
  v13[5] = &v15;
  [v8 getDCRTStateWithCompletionBlock:stateCopy withCompletion:v13];
  if (v16[5] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v16[5];
    *buf = 138543362;
    v28 = v9;
    _os_log_impl(&dword_259A60000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  v10 = v22[5];
  if (error && !v10)
  {
    *error = v16[5];
    v10 = v22[5];
  }

  v11 = v10;

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v11;
}

void __34__MadGate_getDCRTState_withError___block_invoke(uint64_t a1, void *a2)
{
  v3 = createMobileActivationError("[MadGate getDCRTState:withError:]_block_invoke", 725, @"com.apple.MobileActivation.ErrorDomain", -1, a2, @"IPC Error.");
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __34__MadGate_getDCRTState_withError___block_invoke_2(uint64_t a1, id a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:@"DCRTState"];
  v8 = isNSString(v7);

  if (v8)
  {
    v9 = [v5 objectForKeyedSubscript:@"DCRTState"];
    v10 = *(*(a1 + 32) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v6;
}

- (id)copyDCRT:(id)t withError:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  tCopy = t;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  connection = [(MadGate *)self connection];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3254779904;
  v14[2] = __30__MadGate_copyDCRT_withError___block_invoke;
  v14[3] = &__block_descriptor_40_e8_32r_e17_v16__0__NSError_8l;
  v14[4] = &v15;
  v8 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v14];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3254779904;
  v13[2] = __30__MadGate_copyDCRT_withError___block_invoke_2;
  v13[3] = &__block_descriptor_48_e8_32r40r_e34_v24__0__NSDictionary_8__NSError_16l;
  v13[4] = &v21;
  v13[5] = &v15;
  [v8 copyDCRTWithCompletionBlock:tCopy withCompletion:v13];
  if (v16[5] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v16[5];
    *buf = 138543362;
    v28 = v9;
    _os_log_impl(&dword_259A60000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  v10 = v22[5];
  if (error && !v10)
  {
    *error = v16[5];
    v10 = v22[5];
  }

  v11 = v10;

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v11;
}

void __30__MadGate_copyDCRT_withError___block_invoke(uint64_t a1, void *a2)
{
  v3 = createMobileActivationError("[MadGate copyDCRT:withError:]_block_invoke", 757, @"com.apple.MobileActivation.ErrorDomain", -1, a2, @"IPC Error.");
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __30__MadGate_copyDCRT_withError___block_invoke_2(uint64_t a1, id a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:@"DCRTData"];
  v8 = isNSData(v7);

  if (v8)
  {
    v9 = [v5 objectForKeyedSubscript:@"DCRTData"];
    v10 = [v9 copy];
    v11 = *(*(a1 + 32) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v6;
}

- (void)issueDCRT:(id)t withCompletion:(id)completion
{
  tCopy = t;
  completionCopy = completion;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy_;
  v21[4] = __Block_byref_object_dispose_;
  v22 = 0;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy_;
  v19[4] = __Block_byref_object_dispose_;
  v20 = 0;
  connection = [(MadGate *)self connection];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3254779904;
  v16[2] = __36__MadGate_issueDCRT_withCompletion___block_invoke;
  v16[3] = &__block_descriptor_48_e8_32bs40r_e17_v16__0__NSError_8l;
  v18 = v19;
  v9 = completionCopy;
  v17 = v9;
  v10 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v16];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3254779904;
  v12[2] = __36__MadGate_issueDCRT_withCompletion___block_invoke_107;
  v12[3] = &__block_descriptor_64_e8_32s40bs48r56r_e34_v24__0__NSDictionary_8__NSError_16l;
  v14 = v21;
  v15 = v19;
  v11 = v9;
  v12[4] = self;
  v13 = v11;
  [v10 issueDCRT:tCopy withCompletionBlock:v12];

  _Block_object_dispose(v19, 8);
  _Block_object_dispose(v21, 8);
}

uint64_t __36__MadGate_issueDCRT_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = createMobileActivationError("[MadGate issueDCRT:withCompletion:]_block_invoke", 792, @"com.apple.MobileActivation.ErrorDomain", -1, a2, @"IPC Error.");
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*(*(a1 + 40) + 8) + 40);
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_259A60000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", &v8, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

void __36__MadGate_issueDCRT_withCompletion___block_invoke_107(uint64_t a1, id a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:@"RKCertification"];
  v8 = isNSData(v7);

  if (v8)
  {
    v9 = [v5 objectForKeyedSubscript:@"RKCertification"];
    v10 = [v9 copy];
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  if (*(*(*(a1 + 56) + 8) + 40) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(*(*(a1 + 56) + 8) + 40);
    v16 = 138543362;
    v17 = v13;
    _os_log_impl(&dword_259A60000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", &v16, 0xCu);
  }

  v14 = *(a1 + 40);
  if (v14)
  {
    (*(v14 + 16))(v14, *(*(*(a1 + 48) + 8) + 40), *(*(*(a1 + 56) + 8) + 40));
  }

  v15 = [*(a1 + 32) connection];
  [v15 invalidate];
}

- (BOOL)issueUCRT:(id)t withError:(id *)error
{
  v22 = *MEMORY[0x277D85DE8];
  tCopy = t;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  connection = [(MadGate *)self connection];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3254779904;
  v13[2] = __31__MadGate_issueUCRT_withError___block_invoke;
  v13[3] = &__block_descriptor_40_e8_32r_e17_v16__0__NSError_8l;
  v13[4] = &v14;
  v8 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v13];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3254779904;
  v12[2] = __31__MadGate_issueUCRT_withError___block_invoke_2;
  v12[3] = &__block_descriptor_40_e8_32r_e34_v24__0__NSDictionary_8__NSError_16l;
  v12[4] = &v14;
  [v8 issueUCRT:tCopy withCompletionBlock:v12];
  v9 = v15[5];
  if (v9)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v10 = v15[5];
      *buf = 138543362;
      v21 = v10;
      _os_log_impl(&dword_259A60000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }

    if (error)
    {
      *error = v15[5];
    }
  }

  _Block_object_dispose(&v14, 8);
  return v9 == 0;
}

void __31__MadGate_issueUCRT_withError___block_invoke(uint64_t a1, void *a2)
{
  v3 = createMobileActivationError("[MadGate issueUCRT:withError:]_block_invoke", 836, @"com.apple.MobileActivation.ErrorDomain", -1, a2, @"IPC Error.");
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)issueCollection:(id)collection withCompletion:(id)completion
{
  collectionCopy = collection;
  completionCopy = completion;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  connection = [(MadGate *)self connection];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3254779904;
  v11[2] = __42__MadGate_issueCollection_withCompletion___block_invoke;
  v11[3] = &__block_descriptor_40_e8_32r_e17_v16__0__NSError_8l;
  v11[4] = &v12;
  v9 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v11];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3254779904;
  v10[2] = __42__MadGate_issueCollection_withCompletion___block_invoke_2;
  v10[3] = &__block_descriptor_40_e8_32r_e34_v24__0__NSDictionary_8__NSError_16l;
  v10[4] = &v12;
  [v9 issueCollection:collectionCopy withCompletionBlock:v10];
  completionCopy[2](completionCopy, v13[5]);

  _Block_object_dispose(&v12, 8);
}

void __42__MadGate_issueCollection_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = createMobileActivationError("[MadGate issueCollection:withCompletion:]_block_invoke", 865, @"com.apple.MobileActivation.ErrorDomain", -1, a2, @"IPC Error.");
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (BOOL)ucrtUpgradeRequired:(id *)required
{
  v23 = *MEMORY[0x277D85DE8];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  connection = [(MadGate *)self connection];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3254779904;
  v10[2] = __31__MadGate_ucrtUpgradeRequired___block_invoke;
  v10[3] = &__block_descriptor_40_e8_32r_e17_v16__0__NSError_8l;
  v10[4] = &v11;
  v5 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v10];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3254779904;
  v9[2] = __31__MadGate_ucrtUpgradeRequired___block_invoke_2;
  v9[3] = &__block_descriptor_48_e8_32r40r_e34_v24__0__NSDictionary_8__NSError_16l;
  v9[4] = &v17;
  v9[5] = &v11;
  [v5 ucrtUpgradeRequiredWithCompletionBlock:v9];
  if (v12[5] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v12[5];
    *buf = 138543362;
    v22 = v6;
    _os_log_impl(&dword_259A60000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  v7 = *(v18 + 24);
  if (required && (v18[3] & 1) == 0)
  {
    *required = v12[5];
    v7 = *(v18 + 24);
  }

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v17, 8);
  return v7 & 1;
}

void __31__MadGate_ucrtUpgradeRequired___block_invoke(uint64_t a1, void *a2)
{
  v3 = createMobileActivationError("[MadGate ucrtUpgradeRequired:]_block_invoke", 885, @"com.apple.MobileActivation.ErrorDomain", -1, a2, @"IPC Error.");
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __31__MadGate_ucrtUpgradeRequired___block_invoke_2(uint64_t a1, id a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:@"UCRTUpgradeRequired"];
  v8 = isNSNumber(v7);

  if (v8)
  {
    v9 = [v5 objectForKeyedSubscript:@"UCRTUpgradeRequired"];
    *(*(*(a1 + 32) + 8) + 24) = [v9 BOOLValue];
  }

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v6;
}

- (__SecIdentity)copyLegacyDeviceIdentity:(id *)identity
{
  v43[2] = *MEMORY[0x277D85DE8];
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy_;
  v38 = __Block_byref_object_dispose_;
  v39 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy_;
  v32 = __Block_byref_object_dispose_;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  error = 0;
  connection = [(MadGate *)self connection];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3254779904;
  v20[2] = __36__MadGate_copyLegacyDeviceIdentity___block_invoke;
  v20[3] = &__block_descriptor_40_e8_32r_e17_v16__0__NSError_8l;
  v20[4] = &v34;
  v5 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v20];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3254779904;
  v19[2] = __36__MadGate_copyLegacyDeviceIdentity___block_invoke_2;
  v19[3] = &__block_descriptor_56_e8_32r40r48r_e34_v24__0__NSDictionary_8__NSError_16l;
  v19[4] = &v28;
  v19[5] = &v22;
  v19[6] = &v34;
  [v5 copyLegacyDeviceIdentityWithCompletionBlock:v19];
  if (!v35[5])
  {
    v10 = v29[5];
    if (v10 && v23[5])
    {
      v8 = SecCertificateCreateWithData(0, v10);
      if (v8)
      {
        v11 = *MEMORY[0x277CDC060];
        v12 = *MEMORY[0x277CDBFE0];
        v42[0] = *MEMORY[0x277CDC028];
        v42[1] = v12;
        v13 = *MEMORY[0x277CDBFF0];
        v43[0] = v11;
        v43[1] = v13;
        v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:2];
        v7 = SecKeyCreateWithData(v23[5], v9, &error);
        if (v7)
        {
          v6 = SecIdentityCreate();
          if (v6)
          {
            goto LABEL_12;
          }

          v14 = createMobileActivationError("[MadGate copyLegacyDeviceIdentity:]", 967, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create identity.");
        }

        else
        {
          v14 = createMobileActivationError("[MadGate copyLegacyDeviceIdentity:]", 961, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to decode private key.");
          v7 = 0;
        }

LABEL_11:
        v16 = v35[5];
        v35[5] = v14;

        v6 = 0;
        goto LABEL_12;
      }

      MobileActivationError = createMobileActivationError("[MadGate copyLegacyDeviceIdentity:]", 951, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to decode certificate.");
    }

    else
    {
      MobileActivationError = createMobileActivationError("[MadGate copyLegacyDeviceIdentity:]", 945, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid response.");
    }

    v14 = MobileActivationError;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    goto LABEL_11;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
LABEL_12:
  if (v35[5] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v17 = v35[5];
    *buf = 138543362;
    v41 = v17;
    _os_log_impl(&dword_259A60000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  if (identity && !v6)
  {
    *identity = v35[5];
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (error)
  {
    CFRelease(error);
  }

  error = 0;

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  _Block_object_dispose(&v34, 8);
  return v6;
}

void __36__MadGate_copyLegacyDeviceIdentity___block_invoke(uint64_t a1, void *a2)
{
  v3 = createMobileActivationError("[MadGate copyLegacyDeviceIdentity:]_block_invoke", 924, @"com.apple.MobileActivation.ErrorDomain", -1, a2, @"IPC Error.");
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __36__MadGate_copyLegacyDeviceIdentity___block_invoke_2(void *a1, id a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:@"LegacyDeviceIdentityCertificateDataBlob"];
  v8 = isNSData(v7);

  if (v8)
  {
    v9 = [v5 objectForKeyedSubscript:@"LegacyDeviceIdentityCertificateDataBlob"];
    v10 = [v9 copy];
    v11 = *(a1[4] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  v13 = [v5 objectForKeyedSubscript:@"LegacyDeviceIdentityPrivateKeyDataBlob"];
  v14 = isNSData(v13);

  if (v14)
  {
    v15 = [v5 objectForKeyedSubscript:@"LegacyDeviceIdentityPrivateKeyDataBlob"];
    v16 = [v15 copy];
    v17 = *(a1[5] + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;
  }

  v19 = *(a1[6] + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v6;
}

- (BOOL)deleteLegacyDeviceIdentity:(id *)identity
{
  v19 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  connection = [(MadGate *)self connection];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3254779904;
  v10[2] = __38__MadGate_deleteLegacyDeviceIdentity___block_invoke;
  v10[3] = &__block_descriptor_40_e8_32r_e17_v16__0__NSError_8l;
  v10[4] = &v11;
  v5 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v10];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3254779904;
  v9[2] = __38__MadGate_deleteLegacyDeviceIdentity___block_invoke_2;
  v9[3] = &__block_descriptor_40_e8_32r_e34_v24__0__NSDictionary_8__NSError_16l;
  v9[4] = &v11;
  [v5 deleteLegacyDeviceIdentityWithCompletionBlock:v9];
  v6 = v12[5];
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v7 = v12[5];
      *buf = 138543362;
      v18 = v7;
      _os_log_impl(&dword_259A60000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }

    if (identity)
    {
      *identity = v12[5];
    }
  }

  _Block_object_dispose(&v11, 8);
  return v6 == 0;
}

void __38__MadGate_deleteLegacyDeviceIdentity___block_invoke(uint64_t a1, void *a2)
{
  v3 = createMobileActivationError("[MadGate deleteLegacyDeviceIdentity:]_block_invoke", 1001, @"com.apple.MobileActivation.ErrorDomain", -1, a2, @"IPC Error.");
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)copyUCRTVersionInfo:(id *)info
{
  v26 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  connection = [(MadGate *)self connection];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3254779904;
  v11[2] = __31__MadGate_copyUCRTVersionInfo___block_invoke;
  v11[3] = &__block_descriptor_40_e8_32r_e17_v16__0__NSError_8l;
  v11[4] = &v12;
  v5 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v11];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3254779904;
  v10[2] = __31__MadGate_copyUCRTVersionInfo___block_invoke_2;
  v10[3] = &__block_descriptor_48_e8_32r40r_e34_v24__0__NSDictionary_8__NSError_16l;
  v10[4] = &v18;
  v10[5] = &v12;
  [v5 copyUCRTVersionInfoWithCompletionBlock:v10];
  if (v13[5] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v13[5];
    *buf = 138543362;
    v25 = v6;
    _os_log_impl(&dword_259A60000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  v7 = v19[5];
  if (info && !v7)
  {
    *info = v13[5];
    v7 = v19[5];
  }

  v8 = v7;

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);

  return v8;
}

void __31__MadGate_copyUCRTVersionInfo___block_invoke(uint64_t a1, void *a2)
{
  v3 = createMobileActivationError("[MadGate copyUCRTVersionInfo:]_block_invoke", 1031, @"com.apple.MobileActivation.ErrorDomain", -1, a2, @"IPC Error.");
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __31__MadGate_copyUCRTVersionInfo___block_invoke_2(uint64_t a1, id a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:@"UCRTVersionInfo"];
  v8 = isNSDictionary(v7);

  if (v8)
  {
    v9 = [v5 objectForKeyedSubscript:@"UCRTVersionInfo"];
    v10 = [v9 copy];
    v11 = *(*(a1 + 32) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v6;
}

@end