@interface AFMultiUserConnection
+ (id)sharedInstance;
- (AFMultiUserConnection)init;
- (AFMultiUserConnection)initWithConnectionFactory:(id)factory;
- (id)_connection;
- (id)_multiUserServiceWithErrorHandler:(id)handler;
- (void)_clearConnection;
- (void)dealloc;
- (void)downloadVoiceProfileForiCloudAltDSID:(id)d completion:(id)completion;
- (void)getConformingSharedUserIdForHomeUserId:(id)id completion:(id)completion;
- (void)getConformingSharedUserIds:(id)ids;
- (void)getFirstNameForSharedUserId:(id)id completion:(id)completion;
- (void)getHomeUserIdForSharedUserId:(id)id completion:(id)completion;
- (void)getHomeUserIdOfRecognizedUserWithCompletion:(id)completion;
- (void)getLoggableIdentiferForUserWithSharedUserID:(id)d iCloudAltDSID:(id)iD sessionID:(id)sessionID completion:(id)completion;
- (void)getLoggableMultiUserSharedUserIdForSharedUserID:(id)d completion:(id)completion;
- (void)getMultiUserAudioAppSignalsForSharedUserID:(id)d completion:(id)completion;
- (void)getMultiUserSettingsForRecognizedUserWithCompletion:(id)completion;
- (void)getMultiUserSettingsForSharedUserID:(id)d completion:(id)completion;
- (void)getPreferredMediaUserHomeUserIDWithCompletion:(id)completion;
- (void)getPrimaryUserSharedUserInfoWithCompletion:(id)completion;
- (void)getRecognizableUsersConfromingSharedUserIds:(id)ids;
- (void)getSharedUserIdForHomeUserId:(id)id completion:(id)completion;
- (void)getSharedUserIdForiCloudAltDSID:(id)d completion:(id)completion;
- (void)getSharedUserInfoForSharedUserID:(id)d completion:(id)completion;
- (void)getSharedUserInfoForiCloudAltDSID:(id)d completion:(id)completion;
- (void)getSharedUserProfileLimitWithCompletion:(id)completion;
- (void)getUserAgentStringForSharedUserID:(id)d completion:(id)completion;
- (void)getiCloudAltDSIDOfRecognizedUserWithCompletion:(id)completion;
- (void)homeUserIdToNames:(id)names;
- (void)postMessageToMUXWithMultiUserInfo:(id)info completion:(id)completion;
- (void)triggerVoiceProfileUploadWithCompletion:(id)completion completion:(id)a4;
@end

@implementation AFMultiUserConnection

- (void)getLoggableMultiUserSharedUserIdForSharedUserID:(id)d completion:(id)completion
{
  v17 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  v8 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v16 = "[AFMultiUserConnection getLoggableMultiUserSharedUserIdForSharedUserID:completion:]";
    _os_log_debug_impl(&dword_1912FE000, v8, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  targetQueue = self->_targetQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__AFMultiUserConnection_getLoggableMultiUserSharedUserIdForSharedUserID_completion___block_invoke;
  block[3] = &unk_1E73496E8;
  v13 = dCopy;
  v14 = completionCopy;
  block[4] = self;
  v10 = dCopy;
  v11 = completionCopy;
  dispatch_async(targetQueue, block);
}

void __84__AFMultiUserConnection_getLoggableMultiUserSharedUserIdForSharedUserID_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __84__AFMultiUserConnection_getLoggableMultiUserSharedUserIdForSharedUserID_completion___block_invoke_2;
  v4[3] = &unk_1E7348AA8;
  v5 = *(a1 + 48);
  v3 = [v2 _multiUserServiceWithErrorHandler:v4];
  [v3 getLoggableMultiUserSharedUserIdForSharedUserID:*(a1 + 40) completion:*(a1 + 48)];
}

void __84__AFMultiUserConnection_getLoggableMultiUserSharedUserIdForSharedUserID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315394;
    v6 = "[AFMultiUserConnection getLoggableMultiUserSharedUserIdForSharedUserID:completion:]_block_invoke_2";
    v7 = 2112;
    v8 = v3;
    _os_log_debug_impl(&dword_1912FE000, v4, OS_LOG_TYPE_DEBUG, "%s Error in getLoggableMultiUserSharedUserIdForSharedUserID: %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)postMessageToMUXWithMultiUserInfo:(id)info completion:(id)completion
{
  v17 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  completionCopy = completion;
  v8 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v16 = "[AFMultiUserConnection postMessageToMUXWithMultiUserInfo:completion:]";
    _os_log_debug_impl(&dword_1912FE000, v8, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  targetQueue = self->_targetQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__AFMultiUserConnection_postMessageToMUXWithMultiUserInfo_completion___block_invoke;
  block[3] = &unk_1E73496E8;
  v13 = infoCopy;
  v14 = completionCopy;
  block[4] = self;
  v10 = infoCopy;
  v11 = completionCopy;
  dispatch_async(targetQueue, block);
}

void __70__AFMultiUserConnection_postMessageToMUXWithMultiUserInfo_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __70__AFMultiUserConnection_postMessageToMUXWithMultiUserInfo_completion___block_invoke_2;
  v4[3] = &unk_1E7348AA8;
  v5 = *(a1 + 48);
  v3 = [v2 _multiUserServiceWithErrorHandler:v4];
  [v3 postMessageToMUXWithMultiUserInfo:*(a1 + 40) completion:*(a1 + 48)];
}

void __70__AFMultiUserConnection_postMessageToMUXWithMultiUserInfo_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315394;
    v6 = "[AFMultiUserConnection postMessageToMUXWithMultiUserInfo:completion:]_block_invoke_2";
    v7 = 2112;
    v8 = v3;
    _os_log_debug_impl(&dword_1912FE000, v4, OS_LOG_TYPE_DEBUG, "%s Error in postMessageToMUXWithMultiUserInfo:%@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)getLoggableIdentiferForUserWithSharedUserID:(id)d iCloudAltDSID:(id)iD sessionID:(id)sessionID completion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  sessionIDCopy = sessionID;
  completionCopy = completion;
  if (completionCopy)
  {
    v14 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v22 = "[AFMultiUserConnection getLoggableIdentiferForUserWithSharedUserID:iCloudAltDSID:sessionID:completion:]";
      _os_log_debug_impl(&dword_1912FE000, v14, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
    }

    targetQueue = self->_targetQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __104__AFMultiUserConnection_getLoggableIdentiferForUserWithSharedUserID_iCloudAltDSID_sessionID_completion___block_invoke;
    block[3] = &unk_1E7348AF8;
    block[4] = self;
    v20 = completionCopy;
    v17 = dCopy;
    v18 = iDCopy;
    v19 = sessionIDCopy;
    dispatch_async(targetQueue, block);
  }
}

void __104__AFMultiUserConnection_getLoggableIdentiferForUserWithSharedUserID_iCloudAltDSID_sessionID_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __104__AFMultiUserConnection_getLoggableIdentiferForUserWithSharedUserID_iCloudAltDSID_sessionID_completion___block_invoke_2;
  v4[3] = &unk_1E7348AA8;
  v5 = *(a1 + 64);
  v3 = [v2 _multiUserServiceWithErrorHandler:v4];
  [v3 getLoggableIdentiferForUserWithSharedUserID:*(a1 + 40) iCloudAltDSID:*(a1 + 48) sessionID:*(a1 + 56) completion:*(a1 + 64)];
}

void __104__AFMultiUserConnection_getLoggableIdentiferForUserWithSharedUserID_iCloudAltDSID_sessionID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315394;
    v6 = "[AFMultiUserConnection getLoggableIdentiferForUserWithSharedUserID:iCloudAltDSID:sessionID:completion:]_block_invoke_2";
    v7 = 2112;
    v8 = v3;
    _os_log_debug_impl(&dword_1912FE000, v4, OS_LOG_TYPE_DEBUG, "%s Error in getLoggableIdentiferForUserWithSharedUserID:%@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)getUserAgentStringForSharedUserID:(id)d completion:(id)completion
{
  v15 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v14 = "[AFMultiUserConnection getUserAgentStringForSharedUserID:completion:]";
      _os_log_debug_impl(&dword_1912FE000, v8, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
    }

    targetQueue = self->_targetQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70__AFMultiUserConnection_getUserAgentStringForSharedUserID_completion___block_invoke;
    block[3] = &unk_1E73496E8;
    block[4] = self;
    v12 = completionCopy;
    v11 = dCopy;
    dispatch_async(targetQueue, block);
  }
}

void __70__AFMultiUserConnection_getUserAgentStringForSharedUserID_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __70__AFMultiUserConnection_getUserAgentStringForSharedUserID_completion___block_invoke_2;
  v4[3] = &unk_1E7348AA8;
  v5 = *(a1 + 48);
  v3 = [v2 _multiUserServiceWithErrorHandler:v4];
  [v3 getUserAgentStringForSharedUserID:*(a1 + 40) completion:*(a1 + 48)];
}

void __70__AFMultiUserConnection_getUserAgentStringForSharedUserID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315394;
    v6 = "[AFMultiUserConnection getUserAgentStringForSharedUserID:completion:]_block_invoke_2";
    v7 = 2112;
    v8 = v3;
    _os_log_debug_impl(&dword_1912FE000, v4, OS_LOG_TYPE_DEBUG, "%s Error in getUserAgentStringForSharedUserID:%@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)getSharedUserIdForiCloudAltDSID:(id)d completion:(id)completion
{
  v15 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v14 = "[AFMultiUserConnection getSharedUserIdForiCloudAltDSID:completion:]";
      _os_log_debug_impl(&dword_1912FE000, v8, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
    }

    targetQueue = self->_targetQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__AFMultiUserConnection_getSharedUserIdForiCloudAltDSID_completion___block_invoke;
    block[3] = &unk_1E73496E8;
    block[4] = self;
    v12 = completionCopy;
    v11 = dCopy;
    dispatch_async(targetQueue, block);
  }
}

void __68__AFMultiUserConnection_getSharedUserIdForiCloudAltDSID_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __68__AFMultiUserConnection_getSharedUserIdForiCloudAltDSID_completion___block_invoke_2;
  v4[3] = &unk_1E7348AA8;
  v5 = *(a1 + 48);
  v3 = [v2 _multiUserServiceWithErrorHandler:v4];
  [v3 getSharedUserIdForiCloudAltDSID:*(a1 + 40) completion:*(a1 + 48)];
}

void __68__AFMultiUserConnection_getSharedUserIdForiCloudAltDSID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315394;
    v6 = "[AFMultiUserConnection getSharedUserIdForiCloudAltDSID:completion:]_block_invoke_2";
    v7 = 2112;
    v8 = v3;
    _os_log_debug_impl(&dword_1912FE000, v4, OS_LOG_TYPE_DEBUG, "%s Error in getSharedUserIdForiCloudAltDSID:%@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)getSharedUserInfoForiCloudAltDSID:(id)d completion:(id)completion
{
  v15 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v14 = "[AFMultiUserConnection getSharedUserInfoForiCloudAltDSID:completion:]";
      _os_log_debug_impl(&dword_1912FE000, v8, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
    }

    targetQueue = self->_targetQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70__AFMultiUserConnection_getSharedUserInfoForiCloudAltDSID_completion___block_invoke;
    block[3] = &unk_1E73496E8;
    block[4] = self;
    v12 = completionCopy;
    v11 = dCopy;
    dispatch_async(targetQueue, block);
  }
}

void __70__AFMultiUserConnection_getSharedUserInfoForiCloudAltDSID_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __70__AFMultiUserConnection_getSharedUserInfoForiCloudAltDSID_completion___block_invoke_2;
  v4[3] = &unk_1E7348AA8;
  v5 = *(a1 + 48);
  v3 = [v2 _multiUserServiceWithErrorHandler:v4];
  [v3 getSharedUserInfoForiCloudAltDSID:*(a1 + 40) completion:*(a1 + 48)];
}

void __70__AFMultiUserConnection_getSharedUserInfoForiCloudAltDSID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315394;
    v6 = "[AFMultiUserConnection getSharedUserInfoForiCloudAltDSID:completion:]_block_invoke_2";
    v7 = 2112;
    v8 = v3;
    _os_log_debug_impl(&dword_1912FE000, v4, OS_LOG_TYPE_DEBUG, "%s Error in getSharedUserInfoForiCloudAltDSID:%@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)getPrimaryUserSharedUserInfoWithCompletion:(id)completion
{
  v11 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v10 = "[AFMultiUserConnection getPrimaryUserSharedUserInfoWithCompletion:]";
      _os_log_debug_impl(&dword_1912FE000, v5, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
    }

    targetQueue = self->_targetQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __68__AFMultiUserConnection_getPrimaryUserSharedUserInfoWithCompletion___block_invoke;
    v7[3] = &unk_1E7349838;
    v7[4] = self;
    v8 = completionCopy;
    dispatch_async(targetQueue, v7);
  }
}

void __68__AFMultiUserConnection_getPrimaryUserSharedUserInfoWithCompletion___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __68__AFMultiUserConnection_getPrimaryUserSharedUserInfoWithCompletion___block_invoke_2;
  v4[3] = &unk_1E7348AA8;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3 = [v2 _multiUserServiceWithErrorHandler:v4];
  [v3 getPrimaryUserSharedUserInfoWithCompletion:*(a1 + 40)];
}

void __68__AFMultiUserConnection_getPrimaryUserSharedUserInfoWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315394;
    v6 = "[AFMultiUserConnection getPrimaryUserSharedUserInfoWithCompletion:]_block_invoke_2";
    v7 = 2112;
    v8 = v3;
    _os_log_debug_impl(&dword_1912FE000, v4, OS_LOG_TYPE_DEBUG, "%s Error in getPrimaryUserSharedUserInfoWithCompletion:%@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)getSharedUserInfoForSharedUserID:(id)d completion:(id)completion
{
  v15 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v14 = "[AFMultiUserConnection getSharedUserInfoForSharedUserID:completion:]";
      _os_log_debug_impl(&dword_1912FE000, v8, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
    }

    targetQueue = self->_targetQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__AFMultiUserConnection_getSharedUserInfoForSharedUserID_completion___block_invoke;
    block[3] = &unk_1E73496E8;
    block[4] = self;
    v12 = completionCopy;
    v11 = dCopy;
    dispatch_async(targetQueue, block);
  }
}

void __69__AFMultiUserConnection_getSharedUserInfoForSharedUserID_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __69__AFMultiUserConnection_getSharedUserInfoForSharedUserID_completion___block_invoke_2;
  v4[3] = &unk_1E7348AA8;
  v5 = *(a1 + 48);
  v3 = [v2 _multiUserServiceWithErrorHandler:v4];
  [v3 getSharedUserInfoForSharedUserID:*(a1 + 40) completion:*(a1 + 48)];
}

void __69__AFMultiUserConnection_getSharedUserInfoForSharedUserID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315394;
    v6 = "[AFMultiUserConnection getSharedUserInfoForSharedUserID:completion:]_block_invoke_2";
    v7 = 2112;
    v8 = v3;
    _os_log_debug_impl(&dword_1912FE000, v4, OS_LOG_TYPE_DEBUG, "%s Error in getSharedUserInfoForSharedUserID:%@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)homeUserIdToNames:(id)names
{
  v11 = *MEMORY[0x1E69E9840];
  namesCopy = names;
  if (namesCopy)
  {
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v10 = "[AFMultiUserConnection homeUserIdToNames:]";
      _os_log_debug_impl(&dword_1912FE000, v5, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
    }

    targetQueue = self->_targetQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __43__AFMultiUserConnection_homeUserIdToNames___block_invoke;
    v7[3] = &unk_1E7349838;
    v7[4] = self;
    v8 = namesCopy;
    dispatch_async(targetQueue, v7);
  }
}

void __43__AFMultiUserConnection_homeUserIdToNames___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__AFMultiUserConnection_homeUserIdToNames___block_invoke_2;
  v4[3] = &unk_1E7348AA8;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3 = [v2 _multiUserServiceWithErrorHandler:v4];
  [v3 homeUserIdToNames:*(a1 + 40)];
}

void __43__AFMultiUserConnection_homeUserIdToNames___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315394;
    v6 = "[AFMultiUserConnection homeUserIdToNames:]_block_invoke_2";
    v7 = 2112;
    v8 = v3;
    _os_log_debug_impl(&dword_1912FE000, v4, OS_LOG_TYPE_DEBUG, "%s Error in homeUserIdToNames:%@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)getPreferredMediaUserHomeUserIDWithCompletion:(id)completion
{
  v11 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v10 = "[AFMultiUserConnection getPreferredMediaUserHomeUserIDWithCompletion:]";
    _os_log_debug_impl(&dword_1912FE000, v5, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
    if (!completionCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (completionCopy)
  {
LABEL_3:
    targetQueue = self->_targetQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __71__AFMultiUserConnection_getPreferredMediaUserHomeUserIDWithCompletion___block_invoke;
    v7[3] = &unk_1E7349838;
    v7[4] = self;
    v8 = completionCopy;
    dispatch_async(targetQueue, v7);
  }

LABEL_4:
}

void __71__AFMultiUserConnection_getPreferredMediaUserHomeUserIDWithCompletion___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __71__AFMultiUserConnection_getPreferredMediaUserHomeUserIDWithCompletion___block_invoke_2;
  v4[3] = &unk_1E7348AA8;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3 = [v2 _multiUserServiceWithErrorHandler:v4];
  [v3 getPreferredMediaUserHomeUserIDWithCompletion:*(a1 + 40)];
}

void __71__AFMultiUserConnection_getPreferredMediaUserHomeUserIDWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315394;
    v6 = "[AFMultiUserConnection getPreferredMediaUserHomeUserIDWithCompletion:]_block_invoke_2";
    v7 = 2112;
    v8 = v3;
    _os_log_debug_impl(&dword_1912FE000, v4, OS_LOG_TYPE_DEBUG, "%s Error in getPreferredMediaUserHomeUserIDWithCompletion:%@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)getiCloudAltDSIDOfRecognizedUserWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    targetQueue = self->_targetQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __72__AFMultiUserConnection_getiCloudAltDSIDOfRecognizedUserWithCompletion___block_invoke;
    v7[3] = &unk_1E7349838;
    v7[4] = self;
    v8 = completionCopy;
    dispatch_async(targetQueue, v7);
  }
}

void __72__AFMultiUserConnection_getiCloudAltDSIDOfRecognizedUserWithCompletion___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __72__AFMultiUserConnection_getiCloudAltDSIDOfRecognizedUserWithCompletion___block_invoke_2;
  v4[3] = &unk_1E7348AA8;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3 = [v2 _multiUserServiceWithErrorHandler:v4];
  [v3 getiCloudAltDSIDOfRecognizedUserWithCompletion:*(a1 + 40)];
}

void __72__AFMultiUserConnection_getiCloudAltDSIDOfRecognizedUserWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315394;
    v6 = "[AFMultiUserConnection getiCloudAltDSIDOfRecognizedUserWithCompletion:]_block_invoke_2";
    v7 = 2112;
    v8 = v3;
    _os_log_debug_impl(&dword_1912FE000, v4, OS_LOG_TYPE_DEBUG, "%s Error in getiCloudAltDSIDOfRecognizedUserWithCompletion:%@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)getHomeUserIdOfRecognizedUserWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    targetQueue = self->_targetQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __69__AFMultiUserConnection_getHomeUserIdOfRecognizedUserWithCompletion___block_invoke;
    v7[3] = &unk_1E7349838;
    v7[4] = self;
    v8 = completionCopy;
    dispatch_async(targetQueue, v7);
  }
}

void __69__AFMultiUserConnection_getHomeUserIdOfRecognizedUserWithCompletion___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __69__AFMultiUserConnection_getHomeUserIdOfRecognizedUserWithCompletion___block_invoke_2;
  v4[3] = &unk_1E7348AA8;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3 = [v2 _multiUserServiceWithErrorHandler:v4];
  [v3 getHomeUserIdOfRecognizedUserWithCompletion:*(a1 + 40)];
}

void __69__AFMultiUserConnection_getHomeUserIdOfRecognizedUserWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315394;
    v6 = "[AFMultiUserConnection getHomeUserIdOfRecognizedUserWithCompletion:]_block_invoke_2";
    v7 = 2112;
    v8 = v3;
    _os_log_debug_impl(&dword_1912FE000, v4, OS_LOG_TYPE_DEBUG, "%s Error in getHomeUserIdOfRecognizedUserWithCompletion:%@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)getMultiUserSettingsForRecognizedUserWithCompletion:(id)completion
{
  v11 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v10 = "[AFMultiUserConnection getMultiUserSettingsForRecognizedUserWithCompletion:]";
      _os_log_debug_impl(&dword_1912FE000, v5, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
    }

    targetQueue = self->_targetQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __77__AFMultiUserConnection_getMultiUserSettingsForRecognizedUserWithCompletion___block_invoke;
    v7[3] = &unk_1E7349838;
    v7[4] = self;
    v8 = completionCopy;
    dispatch_async(targetQueue, v7);
  }
}

void __77__AFMultiUserConnection_getMultiUserSettingsForRecognizedUserWithCompletion___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __77__AFMultiUserConnection_getMultiUserSettingsForRecognizedUserWithCompletion___block_invoke_2;
  v4[3] = &unk_1E7348AA8;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3 = [v2 _multiUserServiceWithErrorHandler:v4];
  [v3 getMultiUserSettingsForRecognizedUserWithCompletion:*(a1 + 40)];
}

void __77__AFMultiUserConnection_getMultiUserSettingsForRecognizedUserWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315394;
    v6 = "[AFMultiUserConnection getMultiUserSettingsForRecognizedUserWithCompletion:]_block_invoke_2";
    v7 = 2112;
    v8 = v3;
    _os_log_debug_impl(&dword_1912FE000, v4, OS_LOG_TYPE_DEBUG, "%s Error in getMultiUserSettingsForRecognizedUserWithCompletion:%@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)getMultiUserSettingsForSharedUserID:(id)d completion:(id)completion
{
  v15 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v14 = "[AFMultiUserConnection getMultiUserSettingsForSharedUserID:completion:]";
      _os_log_debug_impl(&dword_1912FE000, v8, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
    }

    targetQueue = self->_targetQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__AFMultiUserConnection_getMultiUserSettingsForSharedUserID_completion___block_invoke;
    block[3] = &unk_1E73496E8;
    block[4] = self;
    v12 = completionCopy;
    v11 = dCopy;
    dispatch_async(targetQueue, block);
  }
}

void __72__AFMultiUserConnection_getMultiUserSettingsForSharedUserID_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __72__AFMultiUserConnection_getMultiUserSettingsForSharedUserID_completion___block_invoke_2;
  v4[3] = &unk_1E7348AA8;
  v5 = *(a1 + 48);
  v3 = [v2 _multiUserServiceWithErrorHandler:v4];
  [v3 getMultiUserSettingsForSharedUserID:*(a1 + 40) completion:*(a1 + 48)];
}

void __72__AFMultiUserConnection_getMultiUserSettingsForSharedUserID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315394;
    v6 = "[AFMultiUserConnection getMultiUserSettingsForSharedUserID:completion:]_block_invoke_2";
    v7 = 2112;
    v8 = v3;
    _os_log_debug_impl(&dword_1912FE000, v4, OS_LOG_TYPE_DEBUG, "%s ErrorABCD:%@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)getRecognizableUsersConfromingSharedUserIds:(id)ids
{
  v11 = *MEMORY[0x1E69E9840];
  idsCopy = ids;
  if (idsCopy)
  {
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v10 = "[AFMultiUserConnection getRecognizableUsersConfromingSharedUserIds:]";
      _os_log_debug_impl(&dword_1912FE000, v5, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
    }

    targetQueue = self->_targetQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __69__AFMultiUserConnection_getRecognizableUsersConfromingSharedUserIds___block_invoke;
    v7[3] = &unk_1E7349838;
    v7[4] = self;
    v8 = idsCopy;
    dispatch_async(targetQueue, v7);
  }
}

void __69__AFMultiUserConnection_getRecognizableUsersConfromingSharedUserIds___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __69__AFMultiUserConnection_getRecognizableUsersConfromingSharedUserIds___block_invoke_2;
  v4[3] = &unk_1E7348AA8;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3 = [v2 _multiUserServiceWithErrorHandler:v4];
  [v3 getRecognizableUsersConfromingSharedUserIds:*(a1 + 40)];
}

- (void)getConformingSharedUserIds:(id)ids
{
  v11 = *MEMORY[0x1E69E9840];
  idsCopy = ids;
  if (idsCopy)
  {
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v10 = "[AFMultiUserConnection getConformingSharedUserIds:]";
      _os_log_debug_impl(&dword_1912FE000, v5, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
    }

    targetQueue = self->_targetQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __52__AFMultiUserConnection_getConformingSharedUserIds___block_invoke;
    v7[3] = &unk_1E7349838;
    v7[4] = self;
    v8 = idsCopy;
    dispatch_async(targetQueue, v7);
  }
}

void __52__AFMultiUserConnection_getConformingSharedUserIds___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__AFMultiUserConnection_getConformingSharedUserIds___block_invoke_2;
  v4[3] = &unk_1E7348AA8;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3 = [v2 _multiUserServiceWithErrorHandler:v4];
  [v3 getConformingSharedUserIds:*(a1 + 40)];
}

- (void)getConformingSharedUserIdForHomeUserId:(id)id completion:(id)completion
{
  v15 = *MEMORY[0x1E69E9840];
  idCopy = id;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v14 = "[AFMultiUserConnection getConformingSharedUserIdForHomeUserId:completion:]";
      _os_log_debug_impl(&dword_1912FE000, v8, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
    }

    targetQueue = self->_targetQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__AFMultiUserConnection_getConformingSharedUserIdForHomeUserId_completion___block_invoke;
    block[3] = &unk_1E73496E8;
    block[4] = self;
    v12 = completionCopy;
    v11 = idCopy;
    dispatch_async(targetQueue, block);
  }
}

void __75__AFMultiUserConnection_getConformingSharedUserIdForHomeUserId_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __75__AFMultiUserConnection_getConformingSharedUserIdForHomeUserId_completion___block_invoke_2;
  v4[3] = &unk_1E7348AA8;
  v5 = *(a1 + 48);
  v3 = [v2 _multiUserServiceWithErrorHandler:v4];
  [v3 getConformingSharedUserIdForHomeUserId:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)getSharedUserProfileLimitWithCompletion:(id)completion
{
  v7 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "[AFMultiUserConnection getSharedUserProfileLimitWithCompletion:]";
    _os_log_debug_impl(&dword_1912FE000, v4, OS_LOG_TYPE_DEBUG, "%s ", &v5, 0xCu);
    if (!completionCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (completionCopy)
  {
LABEL_3:
    completionCopy[2](completionCopy, 6, 0);
  }

LABEL_4:
}

- (void)triggerVoiceProfileUploadWithCompletion:(id)completion completion:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = a4;
  v8 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v21 = "[AFMultiUserConnection triggerVoiceProfileUploadWithCompletion:completion:]";
    v22 = 2112;
    v23 = completionCopy;
    _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s sharedUserID: %@", buf, 0x16u);
  }

  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __76__AFMultiUserConnection_triggerVoiceProfileUploadWithCompletion_completion___block_invoke;
  v17 = &unk_1E7348AD0;
  v18 = completionCopy;
  v19 = v7;
  v9 = v7;
  v10 = completionCopy;
  v11 = [(AFMultiUserConnection *)self _multiUserServiceWithErrorHandler:&v14];
  v12 = v11;
  if (v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = &__block_literal_global_15_44605;
  }

  [v11 triggerVoiceProfileUploadWithCompletion:v10 completion:{v13, v14, v15, v16, v17}];
}

void __76__AFMultiUserConnection_triggerVoiceProfileUploadWithCompletion_completion___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v7 = 136315650;
    v8 = "[AFMultiUserConnection triggerVoiceProfileUploadWithCompletion:completion:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s Complete with error: %@ for sharedUserId: %@", &v7, 0x20u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

- (void)downloadVoiceProfileForiCloudAltDSID:(id)d completion:(id)completion
{
  v17 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  v8 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v16 = "[AFMultiUserConnection downloadVoiceProfileForiCloudAltDSID:completion:]";
    _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__AFMultiUserConnection_downloadVoiceProfileForiCloudAltDSID_completion___block_invoke;
  v13[3] = &unk_1E7348AA8;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = [(AFMultiUserConnection *)self _multiUserServiceWithErrorHandler:v13];
  v11 = v10;
  if (v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = &__block_literal_global_44609;
  }

  [v10 downloadVoiceProfileForiCloudAltDSID:dCopy completion:v12];
}

void __73__AFMultiUserConnection_downloadVoiceProfileForiCloudAltDSID_completion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "[AFMultiUserConnection downloadVoiceProfileForiCloudAltDSID:completion:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s Complete with error: %@", &v6, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)getSharedUserIdForHomeUserId:(id)id completion:(id)completion
{
  v17 = *MEMORY[0x1E69E9840];
  idCopy = id;
  completionCopy = completion;
  v8 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v16 = "[AFMultiUserConnection getSharedUserIdForHomeUserId:completion:]";
    _os_log_debug_impl(&dword_1912FE000, v8, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  targetQueue = self->_targetQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__AFMultiUserConnection_getSharedUserIdForHomeUserId_completion___block_invoke;
  block[3] = &unk_1E73496E8;
  v13 = idCopy;
  v14 = completionCopy;
  block[4] = self;
  v10 = idCopy;
  v11 = completionCopy;
  dispatch_async(targetQueue, block);
}

void __65__AFMultiUserConnection_getSharedUserIdForHomeUserId_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __65__AFMultiUserConnection_getSharedUserIdForHomeUserId_completion___block_invoke_2;
  v4[3] = &unk_1E7348AA8;
  v5 = *(a1 + 48);
  v3 = [v2 _multiUserServiceWithErrorHandler:v4];
  [v3 getSharedUserIdForHomeUserId:*(a1 + 40) completion:*(a1 + 48)];
}

uint64_t __65__AFMultiUserConnection_getSharedUserIdForHomeUserId_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)getFirstNameForSharedUserId:(id)id completion:(id)completion
{
  v17 = *MEMORY[0x1E69E9840];
  idCopy = id;
  completionCopy = completion;
  v8 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v16 = "[AFMultiUserConnection getFirstNameForSharedUserId:completion:]";
    _os_log_debug_impl(&dword_1912FE000, v8, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  targetQueue = self->_targetQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__AFMultiUserConnection_getFirstNameForSharedUserId_completion___block_invoke;
  block[3] = &unk_1E73496E8;
  v13 = idCopy;
  v14 = completionCopy;
  block[4] = self;
  v10 = idCopy;
  v11 = completionCopy;
  dispatch_async(targetQueue, block);
}

void __64__AFMultiUserConnection_getFirstNameForSharedUserId_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __64__AFMultiUserConnection_getFirstNameForSharedUserId_completion___block_invoke_2;
  v4[3] = &unk_1E7348AA8;
  v5 = *(a1 + 48);
  v3 = [v2 _multiUserServiceWithErrorHandler:v4];
  [v3 getFirstNameForSharedUserId:*(a1 + 40) completion:*(a1 + 48)];
}

uint64_t __64__AFMultiUserConnection_getFirstNameForSharedUserId_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)getMultiUserAudioAppSignalsForSharedUserID:(id)d completion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  v8 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v16 = "[AFMultiUserConnection getMultiUserAudioAppSignalsForSharedUserID:completion:]";
    v17 = 2112;
    v18 = dCopy;
    _os_log_debug_impl(&dword_1912FE000, v8, OS_LOG_TYPE_DEBUG, "%s Getting music preference data for shared user id %@", buf, 0x16u);
  }

  targetQueue = self->_targetQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__AFMultiUserConnection_getMultiUserAudioAppSignalsForSharedUserID_completion___block_invoke;
  block[3] = &unk_1E73496E8;
  v13 = dCopy;
  v14 = completionCopy;
  block[4] = self;
  v10 = dCopy;
  v11 = completionCopy;
  dispatch_async(targetQueue, block);
}

void __79__AFMultiUserConnection_getMultiUserAudioAppSignalsForSharedUserID_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __79__AFMultiUserConnection_getMultiUserAudioAppSignalsForSharedUserID_completion___block_invoke_2;
  v4[3] = &unk_1E7348AA8;
  v5 = *(a1 + 48);
  v3 = [v2 _multiUserServiceWithErrorHandler:v4];
  [v3 getMultiUserAudioAppSignalsForSharedUserID:*(a1 + 40) completion:*(a1 + 48)];
}

uint64_t __79__AFMultiUserConnection_getMultiUserAudioAppSignalsForSharedUserID_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)getHomeUserIdForSharedUserId:(id)id completion:(id)completion
{
  v17 = *MEMORY[0x1E69E9840];
  idCopy = id;
  completionCopy = completion;
  v8 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v16 = "[AFMultiUserConnection getHomeUserIdForSharedUserId:completion:]";
    _os_log_debug_impl(&dword_1912FE000, v8, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  targetQueue = self->_targetQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__AFMultiUserConnection_getHomeUserIdForSharedUserId_completion___block_invoke;
  block[3] = &unk_1E73496E8;
  v13 = idCopy;
  v14 = completionCopy;
  block[4] = self;
  v10 = idCopy;
  v11 = completionCopy;
  dispatch_async(targetQueue, block);
}

void __65__AFMultiUserConnection_getHomeUserIdForSharedUserId_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __65__AFMultiUserConnection_getHomeUserIdForSharedUserId_completion___block_invoke_2;
  v4[3] = &unk_1E7348AA8;
  v5 = *(a1 + 48);
  v3 = [v2 _multiUserServiceWithErrorHandler:v4];
  [v3 getHomeUserIdForSharedUserId:*(a1 + 40) completion:*(a1 + 48)];
}

uint64_t __65__AFMultiUserConnection_getHomeUserIdForSharedUserId_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (id)_multiUserServiceWithErrorHandler:(id)handler
{
  v11 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (!self->_connection)
  {
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      v9 = 136315138;
      v10 = "[AFMultiUserConnection _multiUserServiceWithErrorHandler:]";
      _os_log_debug_impl(&dword_1912FE000, v5, OS_LOG_TYPE_DEBUG, "%s No connection.", &v9, 0xCu);
    }
  }

  _connection = [(AFMultiUserConnection *)self _connection];
  v7 = [_connection remoteObjectProxyWithErrorHandler:handlerCopy];

  return v7;
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v6 = "[AFMultiUserConnection dealloc]";
    v7 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s %p", buf, 0x16u);
  }

  [(AFMultiUserConnection *)self _clearConnection];
  v4.receiver = self;
  v4.super_class = AFMultiUserConnection;
  [(AFMultiUserConnection *)&v4 dealloc];
}

- (id)_connection
{
  connection = self->_connection;
  if (!connection)
  {
    v4 = [(AFInstanceContext *)self->_instanceContext createXPCConnectionWithMachServiceName:@"com.apple.assistant.multiuser.service" options:0];
    v5 = self->_connection;
    self->_connection = v4;

    [(NSXPCConnection *)self->_connection _setQueue:self->_targetQueue];
    objc_initWeak(&location, self);
    v6 = self->_connection;
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __36__AFMultiUserConnection__connection__block_invoke;
    v13 = &unk_1E7348A80;
    objc_copyWeak(&v14, &location);
    [(NSXPCConnection *)v6 setInvalidationHandler:&v10];
    v7 = self->_connection;
    v8 = AFMultiUserServiceXPCInterface();
    [(NSXPCConnection *)v7 setRemoteObjectInterface:v8, v10, v11, v12, v13];

    [(NSXPCConnection *)self->_connection resume];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
    connection = self->_connection;
  }

  return connection;
}

void __36__AFMultiUserConnection__connection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _clearConnection];
}

- (void)_clearConnection
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315394;
    v6 = "[AFMultiUserConnection _clearConnection]";
    v7 = 2048;
    selfCopy = self;
    _os_log_debug_impl(&dword_1912FE000, v3, OS_LOG_TYPE_DEBUG, "%s %p", &v5, 0x16u);
  }

  [(NSXPCConnection *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;
}

- (AFMultiUserConnection)init
{
  v3 = +[AFInstanceContext defaultContext];
  v4 = [(AFMultiUserConnection *)self initWithConnectionFactory:v3];

  return v4;
}

- (AFMultiUserConnection)initWithConnectionFactory:(id)factory
{
  factoryCopy = factory;
  v12.receiver = self;
  v12.super_class = AFMultiUserConnection;
  v5 = [(AFMultiUserConnection *)&v12 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.assistant.multiuser.connection", v6);

    targetQueue = v5->_targetQueue;
    v5->_targetQueue = v7;

    if (factoryCopy)
    {
      v9 = factoryCopy;
    }

    else
    {
      v9 = +[AFInstanceContext defaultContext];
    }

    instanceContext = v5->_instanceContext;
    v5->_instanceContext = v9;
  }

  return v5;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__AFMultiUserConnection_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_44627 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_44627, block);
  }

  v2 = sharedInstance_singleton_44628;

  return v2;
}

void __39__AFMultiUserConnection_sharedInstance__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "+[AFMultiUserConnection sharedInstance]_block_invoke";
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v5, 0xCu);
  }

  v3 = objc_alloc_init(*(a1 + 32));
  v4 = sharedInstance_singleton_44628;
  sharedInstance_singleton_44628 = v3;
}

@end