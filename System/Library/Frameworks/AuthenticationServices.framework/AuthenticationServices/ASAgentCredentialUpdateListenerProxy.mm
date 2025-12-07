@interface ASAgentCredentialUpdateListenerProxy
@end

@implementation ASAgentCredentialUpdateListenerProxy

void __58___ASAgentCredentialUpdateListenerProxy__setUpConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXAuthorization(WeakRetained, v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __58___ASAgentCredentialUpdateListenerProxy__setUpConnection___block_invoke_cold_1(v4);
    }

    [v3[1] invalidate];
    v5 = v3[1];
    v3[1] = 0;
  }
}

void __76___ASAgentCredentialUpdateListenerProxy__remoteObjectProxyWithErrorHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __76___ASAgentCredentialUpdateListenerProxy__remoteObjectProxyWithErrorHandler___block_invoke_cold_1(v5, v3);
  }

  (*(*(a1 + 32) + 16))();
}

void __150___ASAgentCredentialUpdateListenerProxy_reportPublicKeyCredentialUpdateForRelyingParty_userHandle_newName_credentialUpdaterOptions_completionHandler___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __150___ASAgentCredentialUpdateListenerProxy_reportPublicKeyCredentialUpdateForRelyingParty_userHandle_newName_credentialUpdaterOptions_completionHandler___block_invoke_2;
  v9[3] = &unk_1E7AF8610;
  v5 = a1[6];
  v10 = v3;
  v11 = v5;
  v6 = v3;
  os_activity_apply(v4, v9);
  (*(a1[5] + 16))(a1[5], v6, v7, v8);
}

void __150___ASAgentCredentialUpdateListenerProxy_reportPublicKeyCredentialUpdateForRelyingParty_userHandle_newName_credentialUpdaterOptions_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = WBS_LOG_CHANNEL_PREFIXAuthorization(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __150___ASAgentCredentialUpdateListenerProxy_reportPublicKeyCredentialUpdateForRelyingParty_userHandle_newName_credentialUpdaterOptions_completionHandler___block_invoke_2_cold_1(a1, v3);
  }
}

void __170___ASAgentCredentialUpdateListenerProxy_reportAllAcceptedPublicKeyCredentialsForRelyingParty_userHandle_acceptedCredentialIDs_credentialUpdaterOptions_completionHandler___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __170___ASAgentCredentialUpdateListenerProxy_reportAllAcceptedPublicKeyCredentialsForRelyingParty_userHandle_acceptedCredentialIDs_credentialUpdaterOptions_completionHandler___block_invoke_2;
  v9[3] = &unk_1E7AF8610;
  v5 = a1[6];
  v10 = v3;
  v11 = v5;
  v6 = v3;
  os_activity_apply(v4, v9);
  (*(a1[5] + 16))(a1[5], v6, v7, v8);
}

void __170___ASAgentCredentialUpdateListenerProxy_reportAllAcceptedPublicKeyCredentialsForRelyingParty_userHandle_acceptedCredentialIDs_credentialUpdaterOptions_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = WBS_LOG_CHANNEL_PREFIXAuthorization(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __150___ASAgentCredentialUpdateListenerProxy_reportPublicKeyCredentialUpdateForRelyingParty_userHandle_newName_credentialUpdaterOptions_completionHandler___block_invoke_2_cold_1(a1, v3);
  }
}

void __145___ASAgentCredentialUpdateListenerProxy_reportUnknownPublicKeyCredentialForRelyingParty_credentialID_credentialUpdaterOptions_completionHandler___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __145___ASAgentCredentialUpdateListenerProxy_reportUnknownPublicKeyCredentialForRelyingParty_credentialID_credentialUpdaterOptions_completionHandler___block_invoke_2;
  v9[3] = &unk_1E7AF8610;
  v5 = a1[6];
  v10 = v3;
  v11 = v5;
  v6 = v3;
  os_activity_apply(v4, v9);
  (*(a1[5] + 16))(a1[5], v6, v7, v8);
}

void __145___ASAgentCredentialUpdateListenerProxy_reportUnknownPublicKeyCredentialForRelyingParty_credentialID_credentialUpdaterOptions_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = WBS_LOG_CHANNEL_PREFIXAuthorization(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __150___ASAgentCredentialUpdateListenerProxy_reportPublicKeyCredentialUpdateForRelyingParty_userHandle_newName_credentialUpdaterOptions_completionHandler___block_invoke_2_cold_1(a1, v3);
  }
}

void __133___ASAgentCredentialUpdateListenerProxy_reportUnusedPasswordCredentialForDomain_username_credentialUpdaterOptions_completionHandler___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __133___ASAgentCredentialUpdateListenerProxy_reportUnusedPasswordCredentialForDomain_username_credentialUpdaterOptions_completionHandler___block_invoke_2;
  v9[3] = &unk_1E7AF8610;
  v5 = a1[6];
  v10 = v3;
  v11 = v5;
  v6 = v3;
  os_activity_apply(v4, v9);
  (*(a1[5] + 16))(a1[5], v6, v7, v8);
}

void __133___ASAgentCredentialUpdateListenerProxy_reportUnusedPasswordCredentialForDomain_username_credentialUpdaterOptions_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = WBS_LOG_CHANNEL_PREFIXAuthorization(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __150___ASAgentCredentialUpdateListenerProxy_reportPublicKeyCredentialUpdateForRelyingParty_userHandle_newName_credentialUpdaterOptions_completionHandler___block_invoke_2_cold_1(a1, v3);
  }
}

void __76___ASAgentCredentialUpdateListenerProxy__remoteObjectProxyWithErrorHandler___block_invoke_cold_1(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_1B1C8D000, v3, OS_LOG_TYPE_ERROR, "Remote proxy object error handler invoked with error: %{public}@", &v5, 0xCu);
}

void __150___ASAgentCredentialUpdateListenerProxy_reportPublicKeyCredentialUpdateForRelyingParty_userHandle_newName_credentialUpdaterOptions_completionHandler___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_4(a1, a2);
  v4 = OUTLINED_FUNCTION_2();
  NSStringFromSelector(v4);
  objc_claimAutoreleasedReturnValue();
  v5 = [OUTLINED_FUNCTION_3() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_3(&dword_1B1C8D000, v6, v7, "Could not create AuthenticationServicesAgent proxy object in %{public}@: %{public}@", v8, v9, v10, v11);
}

@end