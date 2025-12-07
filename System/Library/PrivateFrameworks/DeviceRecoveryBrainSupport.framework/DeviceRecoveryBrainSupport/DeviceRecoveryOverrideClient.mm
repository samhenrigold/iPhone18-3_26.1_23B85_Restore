@interface DeviceRecoveryOverrideClient
- (DeviceRecoveryOverrideClient)init;
- (NSDictionary)allOverrides;
- (id)fetchOverride:(id)override;
- (int)brainLoadResult;
- (int)brainType;
- (int)issuesScanResult;
- (int)networkAvailableResult;
- (int)recoveryResult;
- (int)userAuthResult;
- (void)allOverrides;
- (void)init;
- (void)removeAllOverrides;
- (void)setBrainLoadResult:(int)result;
- (void)setBrainType:(int)type;
- (void)setIssuesScanResult:(int)result;
- (void)setNetworkAvailableResult:(int)result;
- (void)setOverride:(id)override value:(id)value;
- (void)setRecoveryResult:(int)result;
- (void)setUserAuthResult:(int)result;
@end

@implementation DeviceRecoveryOverrideClient

- (DeviceRecoveryOverrideClient)init
{
  v18.receiver = self;
  v18.super_class = DeviceRecoveryOverrideClient;
  v2 = [(DeviceRecoveryOverrideClient *)&v18 init];
  if (v2)
  {
    v3 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.DeviceRecoveryOverrideService" options:4096];
    [(DeviceRecoveryOverrideClient *)v2 setServiceConnection:v3];

    serviceConnection = [(DeviceRecoveryOverrideClient *)v2 serviceConnection];

    if (serviceConnection)
    {
      v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DeviceRecoveryOverrideServiceInterface];
      if (v5)
      {
        v6 = v5;
        serviceConnection2 = [(DeviceRecoveryOverrideClient *)v2 serviceConnection];
        [serviceConnection2 setRemoteObjectInterface:v6];

        objc_initWeak(&location, v2);
        serviceConnection3 = [(DeviceRecoveryOverrideClient *)v2 serviceConnection];
        [serviceConnection3 setInterruptionHandler:&__block_literal_global_1];

        serviceConnection4 = [(DeviceRecoveryOverrideClient *)v2 serviceConnection];
        v12 = _NSConcreteStackBlock;
        v13 = 3221225472;
        v14 = __36__DeviceRecoveryOverrideClient_init__block_invoke_19;
        v15 = &unk_2C618;
        objc_copyWeak(&v16, &location);
        [serviceConnection4 setInvalidationHandler:&v12];

        v10 = [(DeviceRecoveryOverrideClient *)v2 serviceConnection:v12];
        [v10 activate];

        objc_destroyWeak(&v16);
        objc_destroyWeak(&location);

        return v2;
      }

      [(DeviceRecoveryOverrideClient *)v2 init];
    }

    else
    {
      [(DeviceRecoveryOverrideClient *)v2 init];
    }

    return 0;
  }

  return v2;
}

void __36__DeviceRecoveryOverrideClient_init__block_invoke(id a1)
{
  v1 = DRGetLogHandle(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136446210;
    v3 = "[DeviceRecoveryOverrideClient init]_block_invoke";
    _os_log_impl(&dword_0, v1, OS_LOG_TYPE_DEFAULT, "%{public}s: Device Recovery Override Service connection interrupted", &v2, 0xCu);
  }
}

void __36__DeviceRecoveryOverrideClient_init__block_invoke_19(uint64_t a1)
{
  v2 = DRGetLogHandle(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446210;
    v5 = "[DeviceRecoveryOverrideClient init]_block_invoke";
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: Device Recovery Override Service connection invalidated", &v4, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setServiceConnection:0];
}

- (id)fetchOverride:(id)override
{
  overrideCopy = override;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  serviceConnection = [(DeviceRecoveryOverrideClient *)self serviceConnection];

  if (serviceConnection)
  {
    serviceConnection2 = [(DeviceRecoveryOverrideClient *)self serviceConnection];
    v8 = [serviceConnection2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_22];

    if (v8)
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = __46__DeviceRecoveryOverrideClient_fetchOverride___block_invoke_24;
      v12[3] = &unk_2C660;
      v12[4] = &v13;
      [v8 fetchOverride:overrideCopy callback:v12];
      goto LABEL_4;
    }

    DRGetLogHandle(v9);
    objc_claimAutoreleasedReturnValue();
    [DeviceRecoveryOverrideClient fetchOverride:];
  }

  else
  {
    DRGetLogHandle(v6);
    objc_claimAutoreleasedReturnValue();
    [DeviceRecoveryOverrideClient fetchOverride:];
  }

  v8 = 0;
LABEL_4:
  v10 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v10;
}

void __46__DeviceRecoveryOverrideClient_fetchOverride___block_invoke(id a1, NSError *a2)
{
  v2 = a2;
  v3 = DRGetLogHandle(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __46__DeviceRecoveryOverrideClient_fetchOverride___block_invoke_cold_1();
  }
}

- (void)setOverride:(id)override value:(id)value
{
  overrideCopy = override;
  valueCopy = value;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__1;
  v28 = __Block_byref_object_dispose__1;
  v29 = 0;
  serviceConnection = [(DeviceRecoveryOverrideClient *)self serviceConnection];

  if (!serviceConnection)
  {
    v18 = DRGetLogHandle(v9);
    [(DeviceRecoveryOverrideClient *)v18 setOverride:&v31 value:?];
LABEL_11:
    v16 = v30;
    v11 = v31;
LABEL_12:

    goto LABEL_8;
  }

  serviceConnection2 = [(DeviceRecoveryOverrideClient *)self serviceConnection];
  v11 = [serviceConnection2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_27];

  if (!v11)
  {
    v19 = DRGetLogHandle(v12);
    [(DeviceRecoveryOverrideClient *)v19 setOverride:&v31 value:?];
    goto LABEL_11;
  }

  if (valueCopy)
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = __50__DeviceRecoveryOverrideClient_setOverride_value___block_invoke_30;
    v22[3] = &unk_2C688;
    v22[4] = &v24;
    v13 = [v11 setOverride:overrideCopy value:valueCopy callback:v22];
    if (v25[5])
    {
      v14 = DRGetLogHandle(v13);
      [DeviceRecoveryOverrideClient setOverride:v14 value:?];

      v16 = DRGetLogHandle(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [DeviceRecoveryOverrideClient setOverride:value:];
      }

      goto LABEL_12;
    }
  }

  else
  {
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = __50__DeviceRecoveryOverrideClient_setOverride_value___block_invoke_28;
    v23[3] = &unk_2C688;
    v23[4] = &v24;
    v17 = [v11 removeOverride:overrideCopy callback:v23];
    if (v25[5])
    {
      v20 = DRGetLogHandle(v17);
      [DeviceRecoveryOverrideClient setOverride:v20 value:?];

      v16 = DRGetLogHandle(v21);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [DeviceRecoveryOverrideClient setOverride:value:];
      }

      goto LABEL_12;
    }
  }

LABEL_8:
  _Block_object_dispose(&v24, 8);
}

void __50__DeviceRecoveryOverrideClient_setOverride_value___block_invoke(id a1, NSError *a2)
{
  v2 = a2;
  v3 = DRGetLogHandle(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __50__DeviceRecoveryOverrideClient_setOverride_value___block_invoke_cold_1();
  }
}

- (int)brainType
{
  v2 = [(DeviceRecoveryOverrideClient *)self fetchOverride:@"BrainType"];
  v3 = v2;
  if (v2)
  {
    v4 = DRBrainTypeFromOverride(v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setBrainType:(int)type
{
  if (type)
  {
    v4 = [NSNumber numberWithUnsignedChar:type];
    [(DeviceRecoveryOverrideClient *)self setOverride:@"BrainType" value:v4];
  }

  else
  {

    [(DeviceRecoveryOverrideClient *)self setOverride:@"BrainType" value:0];
  }
}

- (int)userAuthResult
{
  v2 = [(DeviceRecoveryOverrideClient *)self fetchOverride:@"UserAuthResult"];
  v3 = v2;
  if (v2)
  {
    v4 = DRUserAuthResultFromOverride(v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setUserAuthResult:(int)result
{
  if (result)
  {
    v4 = [NSNumber numberWithUnsignedChar:result];
    [(DeviceRecoveryOverrideClient *)self setOverride:@"UserAuthResult" value:v4];
  }

  else
  {

    [(DeviceRecoveryOverrideClient *)self setOverride:@"UserAuthResult" value:0];
  }
}

- (int)networkAvailableResult
{
  v2 = [(DeviceRecoveryOverrideClient *)self fetchOverride:@"NetworkAvailableResult"];
  v3 = v2;
  if (v2)
  {
    v4 = DRNetworkAvailableResultFromOverride(v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setNetworkAvailableResult:(int)result
{
  if (result)
  {
    v4 = [NSNumber numberWithUnsignedChar:result];
    [(DeviceRecoveryOverrideClient *)self setOverride:@"NetworkAvailableResult" value:v4];
  }

  else
  {

    [(DeviceRecoveryOverrideClient *)self setOverride:@"NetworkAvailableResult" value:0];
  }
}

- (int)brainLoadResult
{
  v2 = [(DeviceRecoveryOverrideClient *)self fetchOverride:@"BrainLoadResult"];
  v3 = v2;
  if (v2)
  {
    ResultFromOverride = DRBrainLoadResultFromOverride(v2);
  }

  else
  {
    ResultFromOverride = 0;
  }

  return ResultFromOverride;
}

- (void)setBrainLoadResult:(int)result
{
  if (result)
  {
    v4 = [NSNumber numberWithUnsignedChar:result];
    [(DeviceRecoveryOverrideClient *)self setOverride:@"BrainLoadResult" value:v4];
  }

  else
  {

    [(DeviceRecoveryOverrideClient *)self setOverride:@"BrainLoadResult" value:0];
  }
}

- (int)issuesScanResult
{
  v2 = [(DeviceRecoveryOverrideClient *)self fetchOverride:@"IssuesScanResult"];
  v3 = v2;
  if (v2)
  {
    v4 = DRIssuesScanResultFromOverride(v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setIssuesScanResult:(int)result
{
  if (result)
  {
    v4 = [NSNumber numberWithUnsignedChar:result];
    [(DeviceRecoveryOverrideClient *)self setOverride:@"IssuesScanResult" value:v4];
  }

  else
  {

    [(DeviceRecoveryOverrideClient *)self setOverride:@"IssuesScanResult" value:0];
  }
}

- (int)recoveryResult
{
  v2 = [(DeviceRecoveryOverrideClient *)self fetchOverride:@"RecoveryResult"];
  v3 = v2;
  if (v2)
  {
    v4 = DRRecoveryResultFromOverride(v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setRecoveryResult:(int)result
{
  if (result)
  {
    v4 = [NSNumber numberWithUnsignedChar:result];
    [(DeviceRecoveryOverrideClient *)self setOverride:@"RecoveryResult" value:v4];
  }

  else
  {

    [(DeviceRecoveryOverrideClient *)self setOverride:@"RecoveryResult" value:0];
  }
}

- (NSDictionary)allOverrides
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__1;
  v15 = __Block_byref_object_dispose__1;
  v16 = 0;
  serviceConnection = [(DeviceRecoveryOverrideClient *)self serviceConnection];

  if (serviceConnection)
  {
    serviceConnection2 = [(DeviceRecoveryOverrideClient *)self serviceConnection];
    v6 = [serviceConnection2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_33];

    if (v6)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = __44__DeviceRecoveryOverrideClient_allOverrides__block_invoke_34;
      v10[3] = &unk_2C6B0;
      v10[4] = &v11;
      [v6 fetchOverrides:v10];
      goto LABEL_4;
    }

    DRGetLogHandle(v7);
    objc_claimAutoreleasedReturnValue();
    [DeviceRecoveryOverrideClient allOverrides];
  }

  else
  {
    DRGetLogHandle(v4);
    objc_claimAutoreleasedReturnValue();
    [DeviceRecoveryOverrideClient allOverrides];
  }

  v6 = 0;
LABEL_4:
  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

void __44__DeviceRecoveryOverrideClient_allOverrides__block_invoke(id a1, NSError *a2)
{
  v2 = a2;
  v3 = DRGetLogHandle(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __44__DeviceRecoveryOverrideClient_allOverrides__block_invoke_cold_1();
  }
}

- (void)removeAllOverrides
{
  v1 = DRGetLogHandle(self);
  if (OUTLINED_FUNCTION_5_0(v1))
  {
    v8 = 136447490;
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_11_0(&dword_0, v2, v3, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v4, v5, v6, v7, v8);
  }

  OUTLINED_FUNCTION_6_2();
}

void __50__DeviceRecoveryOverrideClient_removeAllOverrides__block_invoke(id a1, NSError *a2)
{
  v2 = a2;
  v3 = DRGetLogHandle(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __50__DeviceRecoveryOverrideClient_removeAllOverrides__block_invoke_cold_1();
  }
}

- (void)init
{
  v3 = DRGetLogHandle(self);
  if (OUTLINED_FUNCTION_5_0(v3))
  {
    *v12 = 136447490;
    *&v12[4] = "[DeviceRecoveryOverrideClient init]";
    *&v12[12] = 2082;
    *&v12[14] = "[DeviceRecoveryOverrideClient init]";
    *&v12[22] = 2082;
    *v13 = 2082;
    *&v13[2] = "";
    *&v13[10] = 2082;
    *&v13[12] = "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/DeviceRecovery_Framework/DeviceRecoveryOverrideClient.m";
    *&v13[20] = 1026;
    *&v13[22] = 46;
    OUTLINED_FUNCTION_11_0(&dword_0, v4, v5, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v6, v7, v8, v9, *v12, *&v12[16], "self.serviceConnection != nil", *v13, *&v13[16]);
  }

  v11 = DRGetLogHandle(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *v12 = 136446466;
    *&v12[4] = "[DeviceRecoveryOverrideClient init]";
    *&v12[12] = 2114;
    *&v12[14] = @"com.apple.DeviceRecoveryOverrideService";
    _os_log_error_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%{public}s: Couldn't connect to service: %{public}@", v12, 0x16u);
  }
}

- (void)fetchOverride:.cold.1()
{
  OUTLINED_FUNCTION_13();
  if (OUTLINED_FUNCTION_6_1(v0, __stack_chk_guard))
  {
    v7 = 136447490;
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_11_0(&dword_0, v1, v2, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v3, v4, v5, v6, v7);
  }

  OUTLINED_FUNCTION_6_2();
}

- (void)fetchOverride:.cold.2()
{
  OUTLINED_FUNCTION_13();
  if (OUTLINED_FUNCTION_6_1(v0, __stack_chk_guard))
  {
    v7 = 136447490;
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_11_0(&dword_0, v1, v2, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v3, v4, v5, v6, v7);
  }

  OUTLINED_FUNCTION_6_2();
}

void __46__DeviceRecoveryOverrideClient_fetchOverride___block_invoke_cold_1()
{
  v6 = 136446466;
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_5_3(&dword_0, v0, v1, "%{public}s: Error talking to DeviceRecoveryOverrideService: %{public}@", v2, v3, v4, v5, v6);
}

- (void)setOverride:(NSObject *)a1 value:.cold.1(NSObject *a1)
{
  if (OUTLINED_FUNCTION_6_1(a1, __stack_chk_guard))
  {
    v3[0] = 136447490;
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    v4 = "";
    OUTLINED_FUNCTION_4();
    v5 = 121;
    OUTLINED_FUNCTION_5_2(&dword_0, a1, v2, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v3);
  }
}

- (void)setOverride:value:.cold.2()
{
  v3[0] = 136446722;
  OUTLINED_FUNCTION_2_1();
  v4 = v0;
  v5 = v1;
  _os_log_error_impl(&dword_0, v2, OS_LOG_TYPE_ERROR, "%{public}s: Error setting override: %{public}@ -> %{public}@", v3, 0x20u);
}

- (void)setOverride:(NSObject *)a1 value:.cold.3(NSObject *a1)
{
  if (OUTLINED_FUNCTION_6_1(a1, __stack_chk_guard))
  {
    v3[0] = 136447490;
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    v4 = "";
    OUTLINED_FUNCTION_4();
    v5 = 116;
    OUTLINED_FUNCTION_5_2(&dword_0, a1, v2, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v3);
  }
}

- (void)setOverride:value:.cold.4()
{
  v6 = 136446466;
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_5_3(&dword_0, v0, v1, "%{public}s: Error removing override: %{public}@", v2, v3, v4, v5, v6);
}

- (void)setOverride:(void *)a3 value:.cold.5(NSObject *a1, NSObject **a2, void *a3)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v7[0] = 136447490;
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    v8 = "";
    OUTLINED_FUNCTION_4();
    v9 = 110;
    OUTLINED_FUNCTION_5_2(&dword_0, a1, v6, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v7);
  }

  *a3 = 0;
  *a2 = a1;
}

- (void)setOverride:(void *)a3 value:.cold.6(NSObject *a1, NSObject **a2, void *a3)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v7[0] = 136447490;
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    v8 = "";
    OUTLINED_FUNCTION_4();
    v9 = 105;
    OUTLINED_FUNCTION_5_2(&dword_0, a1, v6, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v7);
  }

  *a3 = 0;
  *a2 = a1;
}

void __50__DeviceRecoveryOverrideClient_setOverride_value___block_invoke_cold_1()
{
  v6 = 136446466;
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_5_3(&dword_0, v0, v1, "%{public}s: Error talking to DeviceRecoveryOverrideService: %{public}@", v2, v3, v4, v5, v6);
}

- (void)allOverrides
{
  OUTLINED_FUNCTION_13();
  if (OUTLINED_FUNCTION_6_1(v0, __stack_chk_guard))
  {
    v7 = 136447490;
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_11_0(&dword_0, v1, v2, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v3, v4, v5, v6, v7);
  }

  OUTLINED_FUNCTION_6_2();
}

void __44__DeviceRecoveryOverrideClient_allOverrides__block_invoke_cold_1()
{
  v6 = 136446466;
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_5_3(&dword_0, v0, v1, "%{public}s: Error talking to DeviceRecoveryOverrideService: %{public}@", v2, v3, v4, v5, v6);
}

void __50__DeviceRecoveryOverrideClient_removeAllOverrides__block_invoke_cold_1()
{
  v6 = 136446466;
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_5_3(&dword_0, v0, v1, "%{public}s: Error talking to DeviceRecoveryOverrideService: %{public}@", v2, v3, v4, v5, v6);
}

@end