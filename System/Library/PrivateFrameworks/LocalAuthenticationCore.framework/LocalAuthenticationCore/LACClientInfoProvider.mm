@interface LACClientInfoProvider
+ (LACClientInfoProvider)sharedInstance;
- (BOOL)_isNonUiExtensionPointIdentifier:(id)identifier;
- (BOOL)canCallToDependencies;
- (BOOL)processId:(int)id toAuditToken:(id *)token;
- (id)_infoForClientWithApplicationIdentityData:(id)data;
- (id)_infoForClientWithAuditToken:(id *)token;
- (id)_infoForClientWithAuditTokenData:(id)data;
- (id)_infoForClientWithBundleRecord:(id)record;
- (id)applicationIdentityDataForProcessId:(int)id;
- (id)auditTokenDataForProcessId:(int)id;
- (id)infoForXPCClient:(id)client evaluationOptions:(id)options;
- (int)processIdForAuditToken:(id *)token;
@end

@implementation LACClientInfoProvider

+ (LACClientInfoProvider)sharedInstance
{
  if (sharedInstance_onceToken_7 != -1)
  {
    +[LACClientInfoProvider sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_7;

  return v3;
}

uint64_t __39__LACClientInfoProvider_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_sharedInstance_7;
  sharedInstance_sharedInstance_7 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)infoForXPCClient:(id)client evaluationOptions:(id)options
{
  v28 = *MEMORY[0x1E69E9840];
  clientCopy = client;
  optionsCopy = options;
  canCallToDependencies = [(LACClientInfoProvider *)self canCallToDependencies];
  if (canCallToDependencies)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:1038];
    v10 = [optionsCopy objectForKeyedSubscript:v9];

    v11 = [MEMORY[0x1E696AD98] numberWithInteger:1080];
    v12 = [optionsCopy objectForKeyedSubscript:v11];
    integerValue = [v12 integerValue];

    v14 = [MEMORY[0x1E696AD98] numberWithInteger:1021];
    v15 = [optionsCopy objectForKeyedSubscript:v14];
    if (v15)
    {
      v16 = v15;
      v17 = [clientCopy checkEntitlement:@"com.apple.private.LocalAuthentication.CallerName"];

      if (!v17)
      {
        v18 = 0;
        if (v10)
        {
          goto LABEL_10;
        }

        goto LABEL_14;
      }

      v14 = [MEMORY[0x1E696AD98] numberWithInteger:1021];
      v18 = [optionsCopy objectForKeyedSubscript:v14];
    }

    else
    {
      v18 = 0;
    }

    if (v10)
    {
LABEL_10:
      if ((integerValue & 4) != 0)
      {
        [(LACClientInfoProvider *)self _infoForClientWithApplicationIdentityData:v10];
      }

      else
      {
        [(LACClientInfoProvider *)self _infoForClientWithAuditTokenData:v10];
      }
      v21 = ;
LABEL_19:
      v20 = v21;
      if ([v18 length])
      {
        v22 = [LACClientInfo alloc];
        bundleId = [v20 bundleId];
        v24 = [(LACClientInfo *)v22 initWithBundleId:bundleId displayName:v18];

        v20 = v24;
      }

      goto LABEL_22;
    }

LABEL_14:
    if (clientCopy)
    {
      objc_msgSend_auditToken(clientCopy);
    }

    else
    {
      v26 = 0u;
      v27 = 0u;
    }

    v21 = [(LACClientInfoProvider *)self _infoForClientWithAuditToken:&v26];
    goto LABEL_19;
  }

  v19 = LACLogDefault(canCallToDependencies);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v26) = 67109120;
    DWORD1(v26) = [clientCopy processId];
    _os_log_impl(&dword_1B0233000, v19, OS_LOG_TYPE_DEFAULT, "Skipping resolution of bundle ID for pid %d - migration in progress", &v26, 8u);
  }

  v20 = +[LACClientInfo emptyClientInfo];
LABEL_22:

  return v20;
}

- (id)auditTokenDataForProcessId:(int)id
{
  v10 = *MEMORY[0x1E69E9840];
  memset(v9, 0, sizeof(v9));
  if ([(LACClientInfoProvider *)self processId:*&id toAuditToken:v9])
  {
    v3 = [MEMORY[0x1E696B098] value:v9 withObjCType:"{?=[8I]}"];
    sizep = 0;
    NSGetSizeAndAlignment([v3 objCType], &sizep, 0);
    v4 = &v7 - ((sizep + 15) & 0xFFFFFFFFFFFFFFF0);
    [v3 getValue:v4];
    v5 = [MEMORY[0x1E695DEF0] dataWithBytes:v4 length:sizep];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)applicationIdentityDataForProcessId:(int)id
{
  v3 = *&id;
  v25 = *MEMORY[0x1E69E9840];
  canCallToDependencies = [(LACClientInfoProvider *)self canCallToDependencies];
  if ((canCallToDependencies & 1) == 0)
  {
    v17 = LACLogDefault(canCallToDependencies);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v3;
      _os_log_impl(&dword_1B0233000, v17, OS_LOG_TYPE_DEFAULT, "Skipping resolution of bundle ID for pid %d - migration in progress", buf, 8u);
    }

    goto LABEL_10;
  }

  *buf = 0u;
  v24 = 0u;
  if (![(LACClientInfoProvider *)self processId:v3 toAuditToken:buf])
  {
LABEL_10:
    v16 = 0;
    goto LABEL_22;
  }

  v22 = 0;
  v21[0] = *buf;
  v21[1] = v24;
  v6 = [MEMORY[0x1E6963620] bundleRecordForAuditToken:v21 error:&v22];
  v7 = v22;
  v8 = v7;
  if (v6)
  {
    v9 = objc_alloc(MEMORY[0x1E69635D8]);
    bundleIdentifier = [v6 bundleIdentifier];
    v11 = [v9 initWithBundleIdentifier:bundleIdentifier URL:0 personaUniqueString:0 personaType:4];

    if (v11)
    {
      v20 = v8;
      v13 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v11 requiringSecureCoding:1 error:&v20];
      v14 = v20;

      if (v13)
      {
        v13 = v13;
        v16 = v13;
      }

      else
      {
        v18 = LACLogDefault(v15);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [LACClientInfoProvider applicationIdentityDataForProcessId:];
        }

        v16 = 0;
      }
    }

    else
    {
      v13 = LACLogDefault(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [LACClientInfoProvider applicationIdentityDataForProcessId:];
      }

      v16 = 0;
      v14 = v8;
    }

    v8 = v14;
  }

  else
  {
    v11 = LACLogDefault(v7);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [LACClientInfoProvider applicationIdentityDataForProcessId:];
    }

    v16 = 0;
  }

LABEL_22:

  return v16;
}

- (int)processIdForAuditToken:(id *)token
{
  v3 = *&token->var0[4];
  *v5.val = *token->var0;
  *&v5.val[4] = v3;
  return audit_token_to_pid(&v5);
}

- (BOOL)processId:(int)id toAuditToken:(id *)token
{
  tn = 0;
  v6 = task_name_for_pid(*MEMORY[0x1E69E9A60], id, &tn);
  if (v6)
  {
    v7 = LACLogDefault(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [LACClientInfoProvider processId:toAuditToken:];
    }

    return 0;
  }

  else
  {
    task_info_outCnt = 8;
    v9 = task_info(tn, 0xFu, token, &task_info_outCnt);
    v10 = v9;
    v8 = v9 == 0;
    v11 = LACLogDefault(v9);
    v12 = v11;
    if (v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [LACClientInfoProvider processId:toAuditToken:];
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [LACClientInfoProvider processId:id toAuditToken:v12];
    }
  }

  return v8;
}

- (id)_infoForClientWithAuditTokenData:(id)data
{
  if (data)
  {
    v4 = [MEMORY[0x1E696B098] valueWithBytes:objc_msgSend(data objCType:{"bytes"), "{?=[8I]}"}];
    v5 = v4;
    if (v4)
    {
      v11 = 0u;
      v12 = 0u;
      [v4 getValue:&v11];
      v10[0] = v11;
      v10[1] = v12;
      v6 = [(LACClientInfoProvider *)self _infoForClientWithAuditToken:v10];
    }

    else
    {
      v8 = LACLogDefault(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [LACClientInfoProvider _infoForClientWithAuditTokenData:];
      }

      v6 = +[LACClientInfo emptyClientInfo];
    }

    v7 = v6;
  }

  else
  {
    v7 = +[LACClientInfo emptyClientInfo];
  }

  return v7;
}

- (id)_infoForClientWithApplicationIdentityData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    v17 = 0;
    v5 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:&v17];
    v6 = v17;
    v7 = v6;
    if (v5)
    {
      v16 = v6;
      v8 = [v5 findApplicationRecordWithError:&v16];
      v9 = v16;

      if (v8)
      {
        v11 = [(LACClientInfoProvider *)self _infoForClientWithBundleRecord:v8];
      }

      else
      {
        v14 = LACLogDefault(v10);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [LACClientInfoProvider _infoForClientWithApplicationIdentityData:];
        }

        v11 = +[LACClientInfo emptyClientInfo];
      }

      v12 = v11;

      v7 = v9;
    }

    else
    {
      v13 = LACLogDefault(v6);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [LACClientInfoProvider _infoForClientWithApplicationIdentityData:];
      }

      v12 = +[LACClientInfo emptyClientInfo];
    }
  }

  else
  {
    v12 = +[LACClientInfo emptyClientInfo];
  }

  return v12;
}

- (id)_infoForClientWithAuditToken:(id *)token
{
  v13 = 0;
  v4 = *&token->var0[4];
  v12[0] = *token->var0;
  v12[1] = v4;
  v5 = [MEMORY[0x1E6963620] bundleRecordForAuditToken:v12 error:&v13];
  v6 = v13;
  v7 = v6;
  if (v5)
  {
    v8 = [(LACClientInfoProvider *)self _infoForClientWithBundleRecord:v5];
  }

  else
  {
    v9 = LACLogDefault(v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [LACClientInfoProvider _infoForClientWithAuditToken:];
    }

    v8 = +[LACClientInfo emptyClientInfo];
  }

  v10 = v8;

  return v10;
}

- (id)_infoForClientWithBundleRecord:(id)record
{
  recordCopy = record;
  bundleIdentifier = [recordCopy bundleIdentifier];
  if (recordCopy)
  {
    localizedName = [recordCopy localizedName];
    v7 = localizedName;
    if (localizedName)
    {
      v8 = localizedName;
    }

    else
    {
      localizedShortName = [recordCopy localizedShortName];
      v10 = localizedShortName;
      if (localizedShortName)
      {
        v8 = localizedShortName;
      }

      else
      {
        bundleIdentifier2 = [recordCopy bundleIdentifier];
        v12 = bundleIdentifier2;
        if (bundleIdentifier2)
        {
          v13 = bundleIdentifier2;
        }

        else
        {
          v13 = bundleIdentifier;
        }

        v8 = v13;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = recordCopy;
    v15 = v14;
    if (recordCopy)
    {
      extensionPointRecord = [v14 extensionPointRecord];
      identifier = [extensionPointRecord identifier];

      if ([identifier isEqualToString:@"com.apple.intents-service"])
      {

        bundleIdentifier = @"com.apple.siri";
      }

      if (![(LACClientInfoProvider *)self _isNonUiExtensionPointIdentifier:identifier])
      {
        containingBundleRecord = [v15 containingBundleRecord];
        bundleIdentifier3 = [containingBundleRecord bundleIdentifier];

        v8 = bundleIdentifier3;
      }
    }
  }

  v20 = [[LACClientInfo alloc] initWithBundleId:bundleIdentifier displayName:v8];

  return v20;
}

- (BOOL)_isNonUiExtensionPointIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"com.apple.services"] & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", @"com.apple.ctk-tokens"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [identifierCopy isEqualToString:@"com.apple.Safari.web-extension"];
  }

  return v4;
}

- (BOOL)canCallToDependencies
{
  v2 = +[LACSetUpStateProvider sharedInstance];
  hasCompletedSetup = [v2 hasCompletedSetup];

  return hasCompletedSetup;
}

- (void)applicationIdentityDataForProcessId:.cold.2()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)applicationIdentityDataForProcessId:.cold.3()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)processId:(int)a1 toAuditToken:(NSObject *)a2 .cold.3(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&dword_1B0233000, a2, OS_LOG_TYPE_DEBUG, "Successfully acquired audit token for PID %u", v2, 8u);
}

- (void)_infoForClientWithApplicationIdentityData:.cold.2()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_infoForClientWithAuditToken:.cold.1()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end