@interface RMStoreKeychainController
+ (void)removeTrustForCertificateRef:(id)ref configurationKey:(id)key fullTrust:(BOOL)trust scope:(int64_t)scope completionHandler:(id)handler;
+ (void)setTrustForCertificateRef:(id)ref configurationKey:(id)key fullTrust:(BOOL)trust scope:(int64_t)scope completionHandler:(id)handler;
@end

@implementation RMStoreKeychainController

+ (void)setTrustForCertificateRef:(id)ref configurationKey:(id)key fullTrust:(BOOL)trust scope:(int64_t)scope completionHandler:(id)handler
{
  trustCopy = trust;
  handlerCopy = handler;
  keyCopy = key;
  refCopy = ref;
  v14 = [RMStoreXPCProxy newConnectionWithScope:scope];
  [v14 resume];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __106__RMStoreKeychainController_setTrustForCertificateRef_configurationKey_fullTrust_scope_completionHandler___block_invoke;
  v22[3] = &unk_279B05310;
  v15 = handlerCopy;
  v23 = v15;
  v16 = [v14 remoteObjectProxyWithErrorHandler:v22];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __106__RMStoreKeychainController_setTrustForCertificateRef_configurationKey_fullTrust_scope_completionHandler___block_invoke_6;
  v19[3] = &unk_279B051D0;
  v20 = v14;
  v21 = v15;
  v17 = v14;
  v18 = v15;
  [v16 setTrustForCertificateRef:refCopy configurationKey:keyCopy fullTrust:trustCopy completionHandler:v19];
}

void __106__RMStoreKeychainController_setTrustForCertificateRef_configurationKey_fullTrust_scope_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D45F58] storeKeychainController];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __106__RMStoreKeychainController_setTrustForCertificateRef_configurationKey_fullTrust_scope_completionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __106__RMStoreKeychainController_setTrustForCertificateRef_configurationKey_fullTrust_scope_completionHandler___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D45F58] storeKeychainController];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __106__RMStoreKeychainController_setTrustForCertificateRef_configurationKey_fullTrust_scope_completionHandler___block_invoke_6_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __106__RMStoreKeychainController_setTrustForCertificateRef_configurationKey_fullTrust_scope_completionHandler___block_invoke_6_cold_2(v5);
  }

  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) invalidate];
}

+ (void)removeTrustForCertificateRef:(id)ref configurationKey:(id)key fullTrust:(BOOL)trust scope:(int64_t)scope completionHandler:(id)handler
{
  trustCopy = trust;
  handlerCopy = handler;
  keyCopy = key;
  refCopy = ref;
  v14 = [RMStoreXPCProxy newConnectionWithScope:scope];
  [v14 resume];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __109__RMStoreKeychainController_removeTrustForCertificateRef_configurationKey_fullTrust_scope_completionHandler___block_invoke;
  v22[3] = &unk_279B05310;
  v15 = handlerCopy;
  v23 = v15;
  v16 = [v14 remoteObjectProxyWithErrorHandler:v22];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __109__RMStoreKeychainController_removeTrustForCertificateRef_configurationKey_fullTrust_scope_completionHandler___block_invoke_7;
  v19[3] = &unk_279B051D0;
  v20 = v14;
  v21 = v15;
  v17 = v14;
  v18 = v15;
  [v16 removeTrustForCertificateRef:refCopy configurationKey:keyCopy fullTrust:trustCopy completionHandler:v19];
}

void __109__RMStoreKeychainController_removeTrustForCertificateRef_configurationKey_fullTrust_scope_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D45F58] storeKeychainController];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __109__RMStoreKeychainController_removeTrustForCertificateRef_configurationKey_fullTrust_scope_completionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __109__RMStoreKeychainController_removeTrustForCertificateRef_configurationKey_fullTrust_scope_completionHandler___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D45F58] storeKeychainController];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __109__RMStoreKeychainController_removeTrustForCertificateRef_configurationKey_fullTrust_scope_completionHandler___block_invoke_7_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __109__RMStoreKeychainController_removeTrustForCertificateRef_configurationKey_fullTrust_scope_completionHandler___block_invoke_7_cold_2(v5);
  }

  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) invalidate];
}

@end