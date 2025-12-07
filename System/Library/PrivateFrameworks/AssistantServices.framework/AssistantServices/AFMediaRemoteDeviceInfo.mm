@interface AFMediaRemoteDeviceInfo
+ (id)localDeviceInfo;
- (AFMediaRemoteDeviceInfo)init;
- (void)_activeDeviceInfoChanged:(id)changed;
- (void)_getMRDeviceInfoWithCompletion:(id)completion;
- (void)_updateWithRouteIdentifier:(id)identifier groupIdentifier:(id)groupIdentifier;
- (void)getGroupIdentifierWithCompletion:(id)completion;
- (void)getRouteIdentifierWithCompletion:(id)completion;
@end

@implementation AFMediaRemoteDeviceInfo

- (void)getGroupIdentifierWithCompletion:(id)completion
{
  completionCopy = completion;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__AFMediaRemoteDeviceInfo_getGroupIdentifierWithCompletion___block_invoke;
  v7[3] = &unk_1E7349838;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(serialQueue, v7);
}

void __60__AFMediaRemoteDeviceInfo_getGroupIdentifierWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __60__AFMediaRemoteDeviceInfo_getGroupIdentifierWithCompletion___block_invoke_2;
  v2[3] = &unk_1E73449A0;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 _getMRDeviceInfoWithCompletion:v2];
}

void __60__AFMediaRemoteDeviceInfo_getGroupIdentifierWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = [a2 groupUID];
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v5 = 136315395;
    v6 = "[AFMediaRemoteDeviceInfo getGroupIdentifierWithCompletion:]_block_invoke_2";
    v7 = 2113;
    v8 = v3;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s Retrieved groupId: %{private}@", &v5, 0x16u);
  }

  [*(a1 + 32) _updateWithRouteIdentifier:*(*(a1 + 32) + 8) groupIdentifier:v3];
  (*(*(a1 + 40) + 16))();
}

- (void)getRouteIdentifierWithCompletion:(id)completion
{
  completionCopy = completion;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__AFMediaRemoteDeviceInfo_getRouteIdentifierWithCompletion___block_invoke;
  v7[3] = &unk_1E7349838;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(serialQueue, v7);
}

void __60__AFMediaRemoteDeviceInfo_getRouteIdentifierWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __60__AFMediaRemoteDeviceInfo_getRouteIdentifierWithCompletion___block_invoke_2;
  v2[3] = &unk_1E73449A0;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 _getMRDeviceInfoWithCompletion:v2];
}

void __60__AFMediaRemoteDeviceInfo_getRouteIdentifierWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *(*(a1 + 32) + 32);
  v4 = a2;
  dispatch_assert_queue_V2(v3);
  v5 = [v4 deviceUID];

  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v7 = 136315395;
    v8 = "[AFMediaRemoteDeviceInfo getRouteIdentifierWithCompletion:]_block_invoke_2";
    v9 = 2113;
    v10 = v5;
    _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s Retrieved routeId: %{private}@", &v7, 0x16u);
  }

  [*(a1 + 32) _updateWithRouteIdentifier:v5 groupIdentifier:*(*(a1 + 32) + 16)];
  (*(*(a1 + 40) + 16))();
}

- (void)_getMRDeviceInfoWithCompletion:(id)completion
{
  v14 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__AFMediaRemoteDeviceInfo__getMRDeviceInfoWithCompletion___block_invoke;
  v10[3] = &unk_1E7344978;
  v5 = completionCopy;
  v11 = v5;
  v6 = MEMORY[0x193AFB7B0](v10);
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v13 = "[AFMediaRemoteDeviceInfo _getMRDeviceInfoWithCompletion:]";
    _os_log_impl(&dword_1912FE000, v7, OS_LOG_TYPE_INFO, "%s Retrieving MRDeviceInfo for local origin.", buf, 0xCu);
  }

  v8 = MEMORY[0x1E69B0A20];
  localOrigin = [MEMORY[0x1E69B0AA0] localOrigin];
  [v8 deviceInfoForOrigin:localOrigin queue:self->_serialQueue completion:v6];
}

void __58__AFMediaRemoteDeviceInfo__getMRDeviceInfoWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[AFMediaRemoteDeviceInfo _getMRDeviceInfoWithCompletion:]_block_invoke";
      v11 = 2112;
      v12 = v6;
      _os_log_error_impl(&dword_1912FE000, v7, OS_LOG_TYPE_ERROR, "%s Error retrieving MRDeviceInfo: %@", &v9, 0x16u);
    }

    v8 = *(*(a1 + 32) + 16);
  }

  else
  {
    v8 = *(*(a1 + 32) + 16);
  }

  v8();
}

- (void)_updateWithRouteIdentifier:(id)identifier groupIdentifier:(id)groupIdentifier
{
  v34 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  groupIdentifierCopy = groupIdentifier;
  routeIdentifier = self->_routeIdentifier;
  if (routeIdentifier == identifierCopy || (objc_msgSend_isEqualToString_(routeIdentifier) & 1) != 0)
  {
    v9 = 0;
  }

  else
  {
    v18 = [(NSString *)identifierCopy copy];
    v19 = self->_routeIdentifier;
    self->_routeIdentifier = v18;

    v20 = AFSiriLogContextConnection;
    v9 = 1;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v21 = self->_routeIdentifier;
      *buf = 136315394;
      v31 = "[AFMediaRemoteDeviceInfo _updateWithRouteIdentifier:groupIdentifier:]";
      v32 = 2112;
      v33 = v21;
      _os_log_impl(&dword_1912FE000, v20, OS_LOG_TYPE_INFO, "%s Local route identifier: %@", buf, 0x16u);
    }
  }

  groupIdentifier = self->_groupIdentifier;
  if (groupIdentifier == groupIdentifierCopy || (objc_msgSend_isEqualToString_(groupIdentifier) & 1) != 0)
  {
    v11 = 0;
  }

  else
  {
    v22 = [(NSString *)groupIdentifierCopy copy];
    v23 = self->_groupIdentifier;
    self->_groupIdentifier = v22;

    v24 = AFSiriLogContextConnection;
    v11 = 1;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v25 = self->_groupIdentifier;
      *buf = 136315394;
      v31 = "[AFMediaRemoteDeviceInfo _updateWithRouteIdentifier:groupIdentifier:]";
      v32 = 2112;
      v33 = v25;
      _os_log_impl(&dword_1912FE000, v24, OS_LOG_TYPE_INFO, "%s Local group identifier: %@", buf, 0x16u);
    }
  }

  if (v9)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v28 = @"identifier";
    null = identifierCopy;
    if (!identifierCopy)
    {
      null = [MEMORY[0x1E695DFB0] null];
    }

    v29 = null;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    [defaultCenter postNotificationName:@"AFMediaRemoteDeviceInfoRouteIdentifierDidChangeNotification" object:self userInfo:v14];

    if (!identifierCopy)
    {
    }
  }

  if (v11)
  {
    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    v26 = @"identifier";
    null2 = groupIdentifierCopy;
    if (!groupIdentifierCopy)
    {
      null2 = [MEMORY[0x1E695DFB0] null];
    }

    v27 = null2;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    [defaultCenter2 postNotificationName:@"AFMediaRemoteDeviceInfoGroupIdentifierDidChangeNotification" object:self userInfo:v17];

    if (!groupIdentifierCopy)
    {
    }
  }
}

- (void)_activeDeviceInfoChanged:(id)changed
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "[AFMediaRemoteDeviceInfo _activeDeviceInfoChanged:]";
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__AFMediaRemoteDeviceInfo__activeDeviceInfoChanged___block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

void __52__AFMediaRemoteDeviceInfo__activeDeviceInfoChanged___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[AFMediaRemoteDeviceInfo _activeDeviceInfoChanged:]_block_invoke";
      v11 = 2112;
      v12 = a3;
      _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s Unable to fetch local route identifier: %@", &v9, 0x16u);
    }
  }

  else
  {
    v6 = MRPairedDeviceCopyLocalReceiverPairingIdentity();
    v7 = MRPairedDeviceCopyGroupUID();
    v8 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v9 = 136315650;
      v10 = "[AFMediaRemoteDeviceInfo _activeDeviceInfoChanged:]_block_invoke_2";
      v11 = 2112;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s Successfully fetched local route identifier: %@, group identifier: %@", &v9, 0x20u);
    }

    [*(a1 + 32) _updateWithRouteIdentifier:v6 groupIdentifier:v7];
  }
}

- (AFMediaRemoteDeviceInfo)init
{
  v16.receiver = self;
  v16.super_class = AFMediaRemoteDeviceInfo;
  v2 = [(AFMediaRemoteDeviceInfo *)&v16 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_DEFAULT, 0);
    v5 = dispatch_queue_create("com.apple.assistant.MediaRemoteDeviceInfo", v4);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v5;

    v7 = +[AFInstanceContext currentContext];
    instanceContext = v2->_instanceContext;
    v2->_instanceContext = v7;

    if (!v2->_instanceContext)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[AFMediaRemoteDeviceInfo init]"];
      [currentHandler handleFailureInFunction:v13 file:@"AFMediaRemoteDeviceInfo.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"_instanceContext != nil"}];
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__activeDeviceInfoChanged_ name:*MEMORY[0x1E69B0B68] object:0];

    MRMediaRemoteRegisterWantsSystemAppDidSkipTrackNotifications();
    v10 = v2->_serialQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __31__AFMediaRemoteDeviceInfo_init__block_invoke;
    block[3] = &unk_1E73497C8;
    v15 = v2;
    dispatch_async(v10, block);
  }

  return v2;
}

+ (id)localDeviceInfo
{
  if (localDeviceInfo_onceToken != -1)
  {
    dispatch_once(&localDeviceInfo_onceToken, &__block_literal_global_16801);
  }

  v3 = localDeviceInfo_localDeviceInfo;

  return v3;
}

void __42__AFMediaRemoteDeviceInfo_localDeviceInfo__block_invoke()
{
  v0 = objc_alloc_init(AFMediaRemoteDeviceInfo);
  v1 = localDeviceInfo_localDeviceInfo;
  localDeviceInfo_localDeviceInfo = v0;
}

@end