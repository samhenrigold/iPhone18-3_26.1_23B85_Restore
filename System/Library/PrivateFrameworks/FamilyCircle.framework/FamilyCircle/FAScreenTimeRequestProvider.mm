@interface FAScreenTimeRequestProvider
- (BOOL)areContactsManagedForDSID:(id)d;
- (BOOL)isScreenTimeSetupForDSID:(id)d;
- (void)cacheScreenTimeSettingToDiskWithDSID:(id)d screentimeObject:(id)object completionHandler:(id)handler;
- (void)enableScreenTimeSettingsForDSID:(id)d screentimeObject:(id)object completionHandler:(id)handler;
- (void)forceRefreshScreenTimeForDSID:(id)d completionHandler:(id)handler;
- (void)updateScreenTimeServerFlagSettingsForDSID:(id)d ephemeralAuthResults:(id)results enabled:(BOOL)enabled completionHandler:(id)handler;
@end

@implementation FAScreenTimeRequestProvider

- (void)cacheScreenTimeSettingToDiskWithDSID:(id)d screentimeObject:(id)object completionHandler:(id)handler
{
  handlerCopy = handler;
  objectCopy = object;
  dCopy = d;
  v10 = [[FASaveScreenTimeSettingsCacheRequest alloc] initWithFamilyMemberDSID:dCopy screentimeObject:objectCopy];

  [(FASaveScreenTimeSettingsCacheRequest *)v10 startRequestWithCompletionHandler:handlerCopy];
}

- (void)enableScreenTimeSettingsForDSID:(id)d screentimeObject:(id)object completionHandler:(id)handler
{
  handlerCopy = handler;
  objectCopy = object;
  dCopy = d;
  v10 = [[FAEnableScreenTimeSettingsRequest alloc] initWithFamilyMemberDSID:dCopy screentimeModelCache:objectCopy];

  [(FAEnableScreenTimeSettingsRequest *)v10 startRequestWithCompletionHandler:handlerCopy];
}

- (void)updateScreenTimeServerFlagSettingsForDSID:(id)d ephemeralAuthResults:(id)results enabled:(BOOL)enabled completionHandler:(id)handler
{
  enabledCopy = enabled;
  handlerCopy = handler;
  resultsCopy = results;
  dCopy = d;
  v12 = [[FAUpdateFamilyMemberFlagRequest alloc] initWithFamilyMemberDSID:dCopy ephemeralAuthResults:resultsCopy flag:@"FAMemberFlagScreenTime" enabled:enabledCopy];

  [(FAUpdateFamilyMemberFlagRequest *)v12 startRequestWithCompletionHandler:handlerCopy];
}

- (void)forceRefreshScreenTimeForDSID:(id)d completionHandler:(id)handler
{
  v27 = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  v7 = _FALogSystem(handlerCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138477827;
    *(&buf + 4) = dCopy;
    _os_log_impl(&dword_1B70B0000, v7, OS_LOG_TYPE_DEFAULT, "Force screentime refresh dsid: %{private}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__8;
  v25 = __Block_byref_object_dispose__8;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2050000000;
  v8 = getSTPrivateServiceClientClass_softClass;
  v21 = getSTPrivateServiceClientClass_softClass;
  if (!getSTPrivateServiceClientClass_softClass)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __getSTPrivateServiceClientClass_block_invoke;
    v17[3] = &unk_1E7CA4F30;
    v17[4] = &v18;
    __getSTPrivateServiceClientClass_block_invoke(v17);
    v8 = v19[3];
  }

  v9 = v8;
  _Block_object_dispose(&v18, 8);
  v26 = objc_alloc_init(v8);
  v10 = *(*(&buf + 1) + 40);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __79__FAScreenTimeRequestProvider_forceRefreshScreenTimeForDSID_completionHandler___block_invoke;
  v13[3] = &unk_1E7CA5860;
  v11 = dCopy;
  v14 = v11;
  v12 = handlerCopy;
  v15 = v12;
  p_buf = &buf;
  [v10 forceFamilyFetchWithCompletionHandler:v13];

  _Block_object_dispose(&buf, 8);
}

void __79__FAScreenTimeRequestProvider_forceRefreshScreenTimeForDSID_completionHandler___block_invoke(void *a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _FALogSystem(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __79__FAScreenTimeRequestProvider_forceRefreshScreenTimeForDSID_completionHandler___block_invoke_cold_1(a1, v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[4];
    v9 = 138477827;
    v10 = v6;
    _os_log_impl(&dword_1B70B0000, v5, OS_LOG_TYPE_DEFAULT, "Completed screentime refresh. It is now aware of family member with dsid: %{private}@", &v9, 0xCu);
  }

  (*(a1[5] + 16))();
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;
}

- (BOOL)isScreenTimeSetupForDSID:(id)d
{
  dCopy = d;
  v4 = [objc_alloc(getSTUserIDClass()) initWithDSID:dCopy];

  getSTSetupClientClass();
  v5 = objc_opt_new();
  v9 = 0;
  v6 = [v5 currentConfigurationForUser:v4 error:&v9];
  v7 = [v6 screenTimeState] == 1;

  return v7;
}

- (BOOL)areContactsManagedForDSID:(id)d
{
  dCopy = d;
  v4 = [objc_alloc(getSTUserIDClass()) initWithDSID:dCopy];

  getSTSetupClientClass();
  v5 = objc_opt_new();
  v9 = 0;
  v6 = [v5 currentConfigurationForUser:v4 error:&v9];
  v7 = [v6 contactManagementState] == 2;

  return v7;
}

void __79__FAScreenTimeRequestProvider_forceRefreshScreenTimeForDSID_completionHandler___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = 138478083;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1B70B0000, log, OS_LOG_TYPE_ERROR, "Error force refreshing screentime for %{private}@ %@", &v4, 0x16u);
}

@end