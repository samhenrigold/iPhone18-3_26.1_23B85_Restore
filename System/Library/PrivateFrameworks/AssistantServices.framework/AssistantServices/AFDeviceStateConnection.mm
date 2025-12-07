@interface AFDeviceStateConnection
- (void)fetchSiriKitAppIdentifiersWithNotificationPreviewRestrictionsWithCompletion:(id)completion;
- (void)getPersonalSettingsForSharedUserID:(id)d completion:(id)completion;
@end

@implementation AFDeviceStateConnection

- (void)getPersonalSettingsForSharedUserID:(id)d completion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v17 = "[AFDeviceStateConnection getPersonalSettingsForSharedUserID:completion:]";
    _os_log_debug_impl(&dword_1912FE000, v7, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  v8 = +[AFFlowServiceConnection sharedConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__AFDeviceStateConnection_getPersonalSettingsForSharedUserID_completion___block_invoke;
  v13[3] = &unk_1E7341C88;
  v14 = dCopy;
  v15 = completionCopy;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __73__AFDeviceStateConnection_getPersonalSettingsForSharedUserID_completion___block_invoke_3;
  v11[3] = &unk_1E7348AA8;
  v12 = v15;
  v9 = v15;
  v10 = dCopy;
  [v8 invokeMethodOnRemoteWithBlock:v13 onError:v11];
}

void __73__AFDeviceStateConnection_getPersonalSettingsForSharedUserID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73__AFDeviceStateConnection_getPersonalSettingsForSharedUserID_completion___block_invoke_2;
  v8[3] = &unk_1E7341C60;
  v6 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = v5;
  v7 = v5;
  [a2 getPersonalSettingsForSharedUserID:v6 completion:v8];
}

void __73__AFDeviceStateConnection_getPersonalSettingsForSharedUserID_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFDeviceStateConnection getPersonalSettingsForSharedUserID:completion:]_block_invoke_3";
    v7 = 2112;
    v8 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t __73__AFDeviceStateConnection_getPersonalSettingsForSharedUserID_completion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)fetchSiriKitAppIdentifiersWithNotificationPreviewRestrictionsWithCompletion:(id)completion
{
  v13 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v12 = "[AFDeviceStateConnection fetchSiriKitAppIdentifiersWithNotificationPreviewRestrictionsWithCompletion:]";
    _os_log_debug_impl(&dword_1912FE000, v4, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  v5 = +[AFFlowServiceConnection sharedConnection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __103__AFDeviceStateConnection_fetchSiriKitAppIdentifiersWithNotificationPreviewRestrictionsWithCompletion___block_invoke;
  v9[3] = &unk_1E7341C38;
  v10 = completionCopy;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __103__AFDeviceStateConnection_fetchSiriKitAppIdentifiersWithNotificationPreviewRestrictionsWithCompletion___block_invoke_3;
  v7[3] = &unk_1E7348AA8;
  v8 = v10;
  v6 = v10;
  [v5 invokeMethodOnRemoteWithBlock:v9 onError:v7];
}

void __103__AFDeviceStateConnection_fetchSiriKitAppIdentifiersWithNotificationPreviewRestrictionsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __103__AFDeviceStateConnection_fetchSiriKitAppIdentifiersWithNotificationPreviewRestrictionsWithCompletion___block_invoke_2;
  v7[3] = &unk_1E7341C10;
  v8 = *(a1 + 32);
  v9 = v5;
  v6 = v5;
  [a2 fetchSiriKitApplicationsWithNotificationPreviewRestrictionsWithCompletion:v7];
}

void __103__AFDeviceStateConnection_fetchSiriKitAppIdentifiersWithNotificationPreviewRestrictionsWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[AFDeviceStateConnection fetchSiriKitAppIdentifiersWithNotificationPreviewRestrictionsWithCompletion:]_block_invoke_3";
    v7 = 2112;
    v8 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t __103__AFDeviceStateConnection_fetchSiriKitAppIdentifiersWithNotificationPreviewRestrictionsWithCompletion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

@end