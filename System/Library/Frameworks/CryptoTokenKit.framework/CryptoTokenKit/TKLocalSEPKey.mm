@interface TKLocalSEPKey
+ (id)protectionForKeyClass:(int)class;
+ (int)keyClassForProtection:(id)protection;
+ (int)keybagHandleForceSystemSession:(BOOL)session;
+ (void)setContextErrorHandler:(id)handler;
+ (void)setupKeybagForTesting:(BOOL)testing;
- (BOOL)callerHasEntitlement:(id)entitlement error:(id *)error;
- (BOOL)error:(id *)error withAKSReturn:(int)return ACMHandle:(id)handle AKSOperation:(id)operation params:(id)params message:(id)message;
- (BOOL)evaluateRequirementIgnoringAccessGroups:(__ACMRequirement *)groups;
- (NSString)callerName;
- (id)_initWithAuthContext:(id)context caller:(id)caller;
- (id)_initWithKeyType:(id)type keySize:(int64_t)size accessControl:(__SecAccessControl *)control options:(id)options authContext:(id)context caller:(id)caller forceSystemSession:(BOOL)session error:(id *)self0;
- (id)_initWithObjectID:(id)d authContext:(id)context caller:(id)caller forceSystemSession:(BOOL)session error:(id *)error;
- (id)authContextWithError:(id *)error;
- (id)encodedAccessGroups;
- (id)parametersWithACMHandle:(id)handle;
- (id)valueForEntitlement:(id)entitlement;
- (void)processAccessGroupsOfACLDictionary:(id)dictionary intoGroups:(id)groups callerGroups:(id)callerGroups;
@end

@implementation TKLocalSEPKey

- (id)encodedAccessGroups
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = [(TKLocalSEPKey *)self sac];

  if (v4)
  {
    v5 = [(TKLocalSEPKey *)self valueForEntitlement:@"keychain-access-groups"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = MEMORY[0x1E695E0F0];
    }

    v7 = [v6 mutableCopy];
    v8 = [(TKLocalSEPKey *)self valueForEntitlement:@"application-identifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 addObject:v8];
    }

    if ([v7 count])
    {
      [(TKLocalSEPKey *)self accessControl];
      v9 = SecAccessControlGetConstraints();
      [(TKLocalSEPKey *)self processAccessGroupsOfACLDictionary:v9 intoGroups:array callerGroups:v7];
    }
  }

  v10 = [[TKBERTLVRecord alloc] initWithPropertyList:array];
  data = [(TKTLVRecord *)v10 data];

  return data;
}

- (NSString)callerName
{
  if (!self->_callerName)
  {
    caller = [(TKLocalSEPKey *)self caller];

    if (caller)
    {
      memset(&audittoken, 0, sizeof(audittoken));
      caller2 = [(TKLocalSEPKey *)self caller];
      v5 = caller2;
      if (caller2)
      {
        objc_msgSend_auditToken(caller2);
      }

      else
      {
        memset(&audittoken, 0, sizeof(audittoken));
      }

      processInfo = [MEMORY[0x1E695DF88] dataWithLength:4096];
      v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:objc_msgSend(processInfo length:"bytes") encoding:{proc_pidpath_audittoken(&audittoken, objc_msgSend(processInfo, "mutableBytes"), objc_msgSend(processInfo, "length")), 4}];
      v10 = MEMORY[0x1E696AEC0];
      lastPathComponent = [v9 lastPathComponent];
      caller3 = [(TKLocalSEPKey *)self caller];
      v13 = [v10 stringWithFormat:@"%@<%d>", lastPathComponent, objc_msgSend(caller3, "processIdentifier")];
      callerName = self->_callerName;
      self->_callerName = v13;
    }

    else
    {
      processInfo = [MEMORY[0x1E696AE30] processInfo];
      processName = [processInfo processName];
      v8 = self->_callerName;
      self->_callerName = processName;
    }
  }

  v15 = self->_callerName;

  return v15;
}

- (id)valueForEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  if (_testingCallerEntitlements)
  {
    v5 = [_testingCallerEntitlements objectForKeyedSubscript:entitlementCopy];
  }

  else
  {
    caller = [(TKLocalSEPKey *)self caller];

    if (caller)
    {
      caller2 = [(TKLocalSEPKey *)self caller];
      v5 = [caller2 valueForEntitlement:entitlementCopy];
    }

    else
    {
      if (valueForEntitlement__onceToken != -1)
      {
        [TKLocalSEPKey valueForEntitlement:];
      }

      error = 0;
      v5 = SecTaskCopyValueForEntitlement(valueForEntitlement__selfTask, entitlementCopy, &error);
    }
  }

  return v5;
}

SecTaskRef __37__TKLocalSEPKey_valueForEntitlement___block_invoke()
{
  result = SecTaskCreateFromSelf(*MEMORY[0x1E695E480]);
  valueForEntitlement__selfTask = result;
  return result;
}

- (void)processAccessGroupsOfACLDictionary:(id)dictionary intoGroups:(id)groups callerGroups:(id)callerGroups
{
  groupsCopy = groups;
  callerGroupsCopy = callerGroups;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __76__TKLocalSEPKey_processAccessGroupsOfACLDictionary_intoGroups_callerGroups___block_invoke;
  v12[3] = &unk_1E86B78C0;
  v13 = callerGroupsCopy;
  v14 = groupsCopy;
  selfCopy = self;
  v10 = groupsCopy;
  v11 = callerGroupsCopy;
  [dictionary enumerateKeysAndObjectsUsingBlock:v12];
}

void __76__TKLocalSEPKey_processAccessGroupsOfACLDictionary_intoGroups_callerGroups___block_invoke(id *a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([a2 isEqualToString:@"cag"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      if ([a1[4] containsObject:v6])
      {
        [a1[5] addObject:v6];
      }

LABEL_17:

      goto LABEL_18;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v6 = v5;
      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v13;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v13 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v12 + 1) + 8 * i);
            if ([a1[4] containsObject:{v11, v12}])
            {
              [a1[5] addObject:v11];
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v8);
      }

      goto LABEL_17;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [a1[6] processAccessGroupsOfACLDictionary:v5 intoGroups:a1[5] callerGroups:a1[4]];
    }
  }

LABEL_18:
}

- (id)parametersWithACMHandle:(id)handle
{
  handleCopy = handle;
  v5 = objc_alloc_init(TKAKSParameters);
  [(TKAKSParameters *)v5 setData:handleCopy forKey:3];

  encodedAccessGroups = [(TKLocalSEPKey *)self encodedAccessGroups];
  [(TKAKSParameters *)v5 setData:encodedAccessGroups forKey:1];

  return v5;
}

+ (void)setContextErrorHandler:(id)handler
{
  contextErrorHandler = MEMORY[0x1E12D5690](handler, a2);

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)evaluateRequirementIgnoringAccessGroups:(__ACMRequirement *)groups
{
  Type = ACMRequirementGetType(groups, a2);
  if (Type == 8)
  {
    if (ACMRequirementGetState(groups) == 2)
    {
      return 1;
    }

    return ACMRequirementGetState(groups) == 1;
  }

  else
  {
    if (Type == 7)
    {
      v14 = 0;
      v15 = &v14;
      v16 = 0x2020000000;
      v17 = 0;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __57__TKLocalSEPKey_evaluateRequirementIgnoringAccessGroups___block_invoke;
      v13[3] = &unk_1E86B78E8;
      v13[4] = self;
      v13[5] = &v14;
      ACMRequirementGetSubrequirements(groups, v13);
      v9 = 0;
      v10 = &v9;
      v11 = 0x2020000000;
      v12 = 0;
      ACMRequirementGetProperty();
      v6 = *(v15 + 6) >= *(v10 + 6);
      _Block_object_dispose(&v9, 8);
      _Block_object_dispose(&v14, 8);
      return v6;
    }

    return ACMRequirementGetState(groups) == 2;
  }
}

void *__57__TKLocalSEPKey_evaluateRequirementIgnoringAccessGroups___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) evaluateRequirementIgnoringAccessGroups:a2];
  if (result)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  return result;
}

uint64_t __57__TKLocalSEPKey_evaluateRequirementIgnoringAccessGroups___block_invoke_2(uint64_t result, _DWORD *a2, uint64_t a3)
{
  if (a3 == 4)
  {
    *(*(*(result + 32) + 8) + 24) = *a2;
  }

  return result;
}

- (BOOL)error:(id *)error withAKSReturn:(int)return ACMHandle:(id)handle AKSOperation:(id)operation params:(id)params message:(id)message
{
  v11 = *&return;
  v61[1] = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  operationCopy = operation;
  paramsCopy = params;
  messageCopy = message;
  v16 = messageCopy;
  if (!error)
  {
LABEL_34:
    v42 = TK_LOG_sepkey_0(messageCopy);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      callerName = [(TKLocalSEPKey *)self callerName];
      accessControl = [(TKLocalSEPKey *)self accessControl];
      *buf = 138544898;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = callerName;
      *&buf[22] = 2114;
      v54 = v16;
      v55 = 1024;
      *v56 = v11;
      *&v56[4] = 1024;
      *&v56[6] = v11;
      *v57 = 2114;
      *&v57[2] = accessControl;
      v58 = 2114;
      v59 = paramsCopy;
      _os_log_error_impl(&dword_1DF413000, v42, OS_LOG_TYPE_ERROR, "%{public}@: (%{public}@) %{public}@: error %08x(%d) ACL=%{public}@ params=%{public}@", buf, 0x40u);
    }

    goto LABEL_36;
  }

  v60 = @"AKSError";
  v17 = [MEMORY[0x1E696AD98] numberWithInt:v11];
  v61[0] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:&v60 count:1];
  v19 = [v18 mutableCopy];

  if (v16)
  {
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@", self, v16];
    [v19 setObject:v21 forKeyedSubscript:*MEMORY[0x1E696A278]];
  }

  if (v11 == -536870174)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-25308 userInfo:v19];

    goto LABEL_34;
  }

  if (v11 == -536363000 && operationCopy)
  {
    v22 = TK_LOG_sepkey_0(v20);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [TKLocalSEPKey error:withAKSReturn:ACMHandle:AKSOperation:params:message:];
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v54) = 0;
    v23 = handleCopy;
    v24 = ACMContextCreateWithExternalForm([handleCopy bytes], objc_msgSend(handleCopy, "length"));
    v25 = v24;
    if (v24)
    {
      v26 = [(TKLocalSEPKey *)self sac];
      v48 = SecAccessControlGetConstraint();

      v27 = [[TKBERTLVRecord alloc] initWithPropertyList:v48];
      data = [(TKTLVRecord *)v27 data];

      encodedAccessGroups = [(TKLocalSEPKey *)self encodedAccessGroups];
      v52[0] = 3;
      v30 = encodedAccessGroups;
      v52[1] = [encodedAccessGroups bytes];
      v52[2] = [encodedAccessGroups length];
      v31 = data;
      bytes = [data bytes];
      v33 = [data length];
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __75__TKLocalSEPKey_error_withAKSReturn_ACMHandle_AKSOperation_params_message___block_invoke;
      v51[3] = &unk_1E86B7938;
      v51[4] = self;
      v51[5] = buf;
      ACMContextVerifyAclConstraint(v25, bytes, v33, 1, v52, 1, -1, v51);
      ACMContextDelete(v25, 0);
    }

    if (*(*&buf[8] + 24) == 1)
    {
      v34 = TK_LOG_sepkey_0(v24);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        [TKLocalSEPKey error:withAKSReturn:ACMHandle:AKSOperation:params:message:];
      }

      _Block_object_dispose(buf, 8);
      v35 = -5;
      goto LABEL_29;
    }

    _Block_object_dispose(buf, 8);
    v36 = 0;
  }

  else
  {
    if (v11 == -536870170)
    {
      v35 = -1;
    }

    else
    {
      v35 = -3;
    }

    if (v11 != -536363000 && v11 != -536870194)
    {
      goto LABEL_29;
    }

    v36 = v11 == -536870194;
    if (!operationCopy)
    {
      goto LABEL_25;
    }
  }

  [v19 setObject:operationCopy forKeyedSubscript:@"operation"];
LABEL_25:
  v35 = -9;
  if (handleCopy)
  {
    if (v36)
    {
      v37 = handleCopy;
      v38 = ACMContextCreateWithExternalForm([handleCopy bytes], objc_msgSend(handleCopy, "length"));
      v39 = v38;
      if (v38)
      {
        ACMContextRemovePassphraseCredentialsByPurposeAndScope(v38, 0, 1);
        ACMContextDelete(v39, 0);
      }
    }
  }

LABEL_29:
  if (!*error)
  {
    v40 = MEMORY[0x1E696ABC0];
    v41 = [v19 copy];
    *error = [v40 errorWithDomain:@"CryptoTokenKit" code:v35 userInfo:v41];
  }

  if (v35 != -9)
  {
    goto LABEL_34;
  }

  v42 = TK_LOG_sepkey_0(messageCopy);
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
  {
    callerName2 = [(TKLocalSEPKey *)self callerName];
    accessControl2 = [(TKLocalSEPKey *)self accessControl];
    *buf = 138544386;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = callerName2;
    *&buf[22] = 2114;
    v54 = operationCopy;
    v55 = 2114;
    *v56 = accessControl2;
    *&v56[8] = 2114;
    *v57 = paramsCopy;
    _os_log_debug_impl(&dword_1DF413000, v42, OS_LOG_TYPE_DEBUG, "%{public}@: (%{public}@) authentication needed for operation '%{public}@' ACL=%{public}@ params=%{public}@", buf, 0x34u);
  }

LABEL_36:

  return 0;
}

id *__75__TKLocalSEPKey_error_withAKSReturn_ACMHandle_AKSOperation_params_message___block_invoke(id *result, int a2, char a3, uint64_t a4)
{
  if (!a2 && (a3 & 1) == 0)
  {
    v4 = result;
    result = [result[4] evaluateRequirementIgnoringAccessGroups:a4];
    if (result)
    {
      *(*(v4[5] + 1) + 24) = 1;
    }
  }

  return result;
}

- (id)authContextWithError:(id *)error
{
  v22[1] = *MEMORY[0x1E69E9840];
  authContext = [(TKSEPKey *)self authContext];
  if (authContext)
  {
    v5 = authContext;
    v6 = 0;
LABEL_7:
    externalizedContext = [v5 externalizedContext];
    if (externalizedContext)
    {
      v9 = [[TKAuthContext alloc] initWithLAContext:v5 ACMHandle:externalizedContext sharedResource:v6];
    }

    else
    {
      v10 = TK_LOG_sepkey_0(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        [(TKLocalSEPKey *)v10 authContextWithError:v11, v12, v13, v14, v15, v16, v17];
      }

      if (error)
      {
        v18 = MEMORY[0x1E696ABC0];
        v21 = *MEMORY[0x1E696A578];
        v22[0] = @"LAContext.externalizedContext failed";
        v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
        *error = [v18 errorWithDomain:@"CryptoTokenKit" code:-2 userInfo:v19];
      }

      if (contextErrorHandler)
      {
        (*(contextErrorHandler + 16))();
      }

      v9 = 0;
    }

    goto LABEL_17;
  }

  if (authContextWithError__onceToken != -1)
  {
    [TKLocalSEPKey authContextWithError:];
  }

  v6 = [authContextWithError__sharedResourceSlot resourceWithError:error];
  object = [v6 object];
  if (object)
  {
    v5 = object;
    goto LABEL_7;
  }

  v5 = TK_LOG_sepkey_0(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    [(TKLocalSEPKey *)error authContextWithError:v5];
  }

  v9 = 0;
LABEL_17:

  return v9;
}

uint64_t __38__TKLocalSEPKey_authContextWithError___block_invoke()
{
  v0 = [[TKSharedResourceSlot alloc] initWithName:@"LAContext/ACMHandle temporary default slot"];
  v1 = authContextWithError__sharedResourceSlot;
  authContextWithError__sharedResourceSlot = v0;

  [authContextWithError__sharedResourceSlot setIdleTimeout:3.0];
  [authContextWithError__sharedResourceSlot setCreateObjectBlock:&__block_literal_global_136];
  v2 = authContextWithError__sharedResourceSlot;

  return [v2 setObjectDestroyedBlock:&__block_literal_global_141];
}

id __38__TKLocalSEPKey_authContextWithError___block_invoke_2(uint64_t a1)
{
  atomic_fetch_add(TKAuthContextSerialNumber, 1u);
  v1 = TK_LOG_sepkey_0(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    __38__TKLocalSEPKey_authContextWithError___block_invoke_2_cold_1();
  }

  gotLoadHelper_x8__OBJC_CLASS___LAContext(v2);
  v4 = objc_alloc_init(*(v3 + 3664));

  return v4;
}

void __38__TKLocalSEPKey_authContextWithError___block_invoke_138(uint64_t a1)
{
  v1 = TK_LOG_sepkey_0(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    __38__TKLocalSEPKey_authContextWithError___block_invoke_138_cold_1();
  }
}

+ (int)keybagHandleForceSystemSession:(BOOL)session
{
  if (_enableTesting == 1)
  {
    return _testingKeybagHandle;
  }

  v5 = _testing_keybagHandle;
  if (_testing_keybagHandle)
  {

    return [v5 intValue];
  }

  else if (session)
  {
    v6 = TK_LOG_sepkey_0(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      +[TKLocalSEPKey keybagHandleForceSystemSession:];
    }

    return -6;
  }

  else
  {
    return 0;
  }
}

+ (void)setupKeybagForTesting:(BOOL)testing
{
  if (testing)
  {
    if (!_testingKeybagHandle)
    {
      bag = aks_create_bag();
      if (bag)
      {
        v5 = TK_LOG_sepkey_0(bag);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
        {
          +[TKLocalSEPKey setupKeybagForTesting:];
        }
      }

      v6 = aks_ref_key_enable_test_keys();
      if (v6)
      {
        v7 = TK_LOG_sepkey_0(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
        {
          +[TKLocalSEPKey setupKeybagForTesting:];
        }
      }

      device_state = aks_get_device_state();
      v9 = TK_LOG_sepkey_0(device_state);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        +[TKLocalSEPKey setupKeybagForTesting:];
      }
    }
  }

  else if (_testingKeybagHandle)
  {
    v10 = aks_save_bag();
    if (v10)
    {
      v11 = TK_LOG_sepkey_0(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        +[TKLocalSEPKey setupKeybagForTesting:];
      }
    }

    v12 = aks_unload_bag();
    if (v12)
    {
      v13 = TK_LOG_sepkey_0(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        +[TKLocalSEPKey setupKeybagForTesting:];
      }
    }

    v14 = aks_invalidate_bag();
    if (v14)
    {
      v15 = TK_LOG_sepkey_0(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        +[TKLocalSEPKey setupKeybagForTesting:];
      }
    }
  }

  _enableTesting = testing;
}

+ (id)protectionForKeyClass:(int)class
{
  v3 = *&class;
  if (protectionForKeyClass__once != -1)
  {
    +[TKLocalSEPKey protectionForKeyClass:];
  }

  v4 = protectionForKeyClass__protections;
  v5 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = *MEMORY[0x1E697AC20];
  }

  v8 = v7;

  return v7;
}

void __39__TKLocalSEPKey_protectionForKeyClass___block_invoke()
{
  v10[8] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E697AC20];
  v9[0] = &unk_1F5A84FD0;
  v9[1] = &unk_1F5A84FE8;
  v1 = *MEMORY[0x1E697ABE0];
  v10[0] = v0;
  v10[1] = v1;
  v2 = *MEMORY[0x1E697ABF8];
  v9[2] = &unk_1F5A85000;
  v9[3] = &unk_1F5A85018;
  v3 = *MEMORY[0x1E697AC28];
  v10[2] = v2;
  v10[3] = v3;
  v4 = *MEMORY[0x1E697ABE8];
  v9[4] = &unk_1F5A85030;
  v9[5] = &unk_1F5A85048;
  v5 = *MEMORY[0x1E697AC08];
  v10[4] = v4;
  v10[5] = v5;
  v9[6] = &unk_1F5A85060;
  v9[7] = &unk_1F5A85078;
  v6 = *MEMORY[0x1E697AC10];
  v10[6] = *MEMORY[0x1E697AC18];
  v10[7] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:8];
  v8 = protectionForKeyClass__protections;
  protectionForKeyClass__protections = v7;
}

+ (int)keyClassForProtection:(id)protection
{
  protectionCopy = protection;
  v4 = protectionCopy;
  if (keyClassForProtection__once == -1)
  {
    if (!protectionCopy)
    {
LABEL_6:
      integerValue = 6;
      goto LABEL_7;
    }
  }

  else
  {
    +[TKLocalSEPKey keyClassForProtection:];
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  v5 = [keyClassForProtection__protections objectForKeyedSubscript:v4];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = v5;
  integerValue = [v5 integerValue];

LABEL_7:
  return integerValue;
}

void __39__TKLocalSEPKey_keyClassForProtection___block_invoke()
{
  v7[8] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E697ABE0];
  v6[0] = *MEMORY[0x1E697AC20];
  v6[1] = v0;
  v7[0] = &unk_1F5A84FD0;
  v7[1] = &unk_1F5A84FE8;
  v1 = *MEMORY[0x1E697AC28];
  v6[2] = *MEMORY[0x1E697ABF8];
  v6[3] = v1;
  v7[2] = &unk_1F5A85000;
  v7[3] = &unk_1F5A85018;
  v2 = *MEMORY[0x1E697AC08];
  v6[4] = *MEMORY[0x1E697ABE8];
  v6[5] = v2;
  v7[4] = &unk_1F5A85030;
  v7[5] = &unk_1F5A85048;
  v3 = *MEMORY[0x1E697AC10];
  v6[6] = *MEMORY[0x1E697AC18];
  v6[7] = v3;
  v7[6] = &unk_1F5A85060;
  v7[7] = &unk_1F5A85078;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:8];
  v5 = keyClassForProtection__protections;
  keyClassForProtection__protections = v4;
}

- (id)_initWithAuthContext:(id)context caller:(id)caller
{
  callerCopy = caller;
  v11.receiver = self;
  v11.super_class = TKLocalSEPKey;
  v8 = [(TKSEPKey *)&v11 _initWithAuthContext:context];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 3, caller);
  }

  return v9;
}

- (id)_initWithObjectID:(id)d authContext:(id)context caller:(id)caller forceSystemSession:(BOOL)session error:(id *)error
{
  sessionCopy = session;
  dCopy = d;
  contextCopy = context;
  callerCopy = caller;
  v17 = 0;
  v15 = [[TKLocalSEPSystemKey alloc] _initWithObjectID:dCopy authContext:contextCopy caller:callerCopy isIDUnknown:&v17 error:error];

  if (!v15)
  {
    if (v17 == 1)
    {
      v15 = [[TKLocalSEPRefKey alloc] _initWithObjectID:dCopy authContext:contextCopy caller:callerCopy forceSystemSession:sessionCopy error:error];
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (id)_initWithKeyType:(id)type keySize:(int64_t)size accessControl:(__SecAccessControl *)control options:(id)options authContext:(id)context caller:(id)caller forceSystemSession:(BOOL)session error:(id *)self0
{
  callerCopy = caller;
  contextCopy = context;
  optionsCopy = options;
  typeCopy = type;
  LOBYTE(v22) = session;
  v20 = [[TKLocalSEPRefKey alloc] _initWithKeyType:typeCopy keySize:size accessControl:control options:optionsCopy authContext:contextCopy caller:callerCopy forceSystemSession:v22 error:error];

  return v20;
}

- (BOOL)callerHasEntitlement:(id)entitlement error:(id *)error
{
  entitlementCopy = entitlement;
  v7 = [(TKLocalSEPKey *)self valueForEntitlement:entitlementCopy];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass & 1) != 0 && (isKindOfClass = [v7 BOOLValue], (isKindOfClass))
  {
    v9 = 1;
  }

  else
  {
    v10 = TK_LOG_sepkey_0(isKindOfClass);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [TKLocalSEPKey callerHasEntitlement:error:];
    }

    if (error)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-6 userInfo:0];
      *error = v9 = 0;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (void)error:withAKSReturn:ACMHandle:AKSOperation:params:message:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)error:withAKSReturn:ACMHandle:AKSOperation:params:message:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)authContextWithError:(uint64_t *)a1 .cold.3(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = 138543362;
  v4 = v2;
  _os_log_fault_impl(&dword_1DF413000, a2, OS_LOG_TYPE_FAULT, "failed to create shared resource: %{public}@", &v3, 0xCu);
}

void __38__TKLocalSEPKey_authContextWithError___block_invoke_138_cold_1()
{
  atomic_load(TKAuthContextSerialNumber);
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

+ (void)keybagHandleForceSystemSession:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)callerHasEntitlement:error:.cold.1()
{
  OUTLINED_FUNCTION_7();
  v6 = *MEMORY[0x1E69E9840];
  v3 = [v2 callerName];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_8_1();
  v5 = v1;
  _os_log_fault_impl(&dword_1DF413000, v0, OS_LOG_TYPE_FAULT, "Requested SEP key operation not allowed (%{public}@ is missing '%{public}@' entitlement)", v4, 0x16u);
}

@end