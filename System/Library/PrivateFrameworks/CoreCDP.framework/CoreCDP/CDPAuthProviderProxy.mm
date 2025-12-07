@interface CDPAuthProviderProxy
+ (id)proxyWithAuthProvider:(id)provider;
- (void)cdpContext:(id)context performSilentRecoveryTokenRenewal:(id)renewal;
- (void)cdpContext:(id)context verifyMasterKey:(id)key completion:(id)completion;
@end

@implementation CDPAuthProviderProxy

+ (id)proxyWithAuthProvider:(id)provider
{
  providerCopy = provider;
  v4 = objc_alloc_init(CDPAuthProviderProxy);
  authProvider = v4->_authProvider;
  v4->_authProvider = providerCopy;

  return v4;
}

- (void)cdpContext:(id)context performSilentRecoveryTokenRenewal:(id)renewal
{
  contextCopy = context;
  renewalCopy = renewal;
  v8 = _CDPLogSystem(renewalCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DED99000, v8, OS_LOG_TYPE_DEFAULT, "Starting token renewal", buf, 2u);
  }

  if (objc_opt_respondsToSelector())
  {
    authProvider = self->_authProvider;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __69__CDPAuthProviderProxy_cdpContext_performSilentRecoveryTokenRenewal___block_invoke;
    v11[3] = &unk_1E869D600;
    v12 = renewalCopy;
    [(CDPAuthProvider *)authProvider cdpContext:contextCopy performSilentRecoveryTokenRenewal:v11];
    v10 = v12;
LABEL_7:

    goto LABEL_8;
  }

  if (renewalCopy)
  {
    v10 = _CDPStateError(-5200, 0);
    (*(renewalCopy + 2))(renewalCopy, 0, v10);
    goto LABEL_7;
  }

LABEL_8:
}

void __69__CDPAuthProviderProxy_cdpContext_performSilentRecoveryTokenRenewal___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    v7 = (*(v7 + 16))(v7, v5, v6);
  }

  v8 = _CDPLogSystem(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __69__CDPAuthProviderProxy_cdpContext_performSilentRecoveryTokenRenewal___block_invoke_cold_1(v8);
  }
}

- (void)cdpContext:(id)context verifyMasterKey:(id)key completion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  keyCopy = key;
  completionCopy = completion;
  v11 = _CDPLogSystem(completionCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    altDSID = [contextCopy altDSID];
    *buf = 138739971;
    v18 = altDSID;
    _os_log_impl(&dword_1DED99000, v11, OS_LOG_TYPE_DEFAULT, "Starting MRK verification for %{sensitive}@", buf, 0xCu);
  }

  if (objc_opt_respondsToSelector())
  {
    authProvider = self->_authProvider;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __62__CDPAuthProviderProxy_cdpContext_verifyMasterKey_completion___block_invoke;
    v15[3] = &unk_1E869D628;
    v16 = completionCopy;
    [(CDPAuthProvider *)authProvider cdpContext:contextCopy verifyMasterKey:keyCopy completion:v15];
    v14 = v16;
LABEL_7:

    goto LABEL_8;
  }

  if (completionCopy)
  {
    v14 = _CDPStateError(-5200, 0);
    (*(completionCopy + 2))(completionCopy, 0, v14);
    goto LABEL_7;
  }

LABEL_8:
}

void __62__CDPAuthProviderProxy_cdpContext_verifyMasterKey_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    v7 = (*(v7 + 16))(v7, v5, v6);
  }

  v8 = _CDPLogSystem(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __62__CDPAuthProviderProxy_cdpContext_verifyMasterKey_completion___block_invoke_cold_1(v8);
  }
}

@end