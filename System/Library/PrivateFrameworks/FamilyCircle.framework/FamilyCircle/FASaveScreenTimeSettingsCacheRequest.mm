@interface FASaveScreenTimeSettingsCacheRequest
- (FASaveScreenTimeSettingsCacheRequest)initWithFamilyMemberDSID:(id)d screentimeObject:(id)object;
- (void)startRequestWithCompletionHandler:(id)handler;
@end

@implementation FASaveScreenTimeSettingsCacheRequest

- (FASaveScreenTimeSettingsCacheRequest)initWithFamilyMemberDSID:(id)d screentimeObject:(id)object
{
  dCopy = d;
  objectCopy = object;
  v12.receiver = self;
  v12.super_class = FASaveScreenTimeSettingsCacheRequest;
  v9 = [(FAFamilyCircleRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_memberDSID, d);
    objc_storeStrong(&v10->_object, object);
  }

  return v10;
}

- (void)startRequestWithCompletionHandler:(id)handler
{
  v15 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __74__FASaveScreenTimeSettingsCacheRequest_startRequestWithCompletionHandler___block_invoke;
  v11[3] = &unk_1E7CA46D8;
  v12 = handlerCopy;
  v5 = handlerCopy;
  v6 = [(FAFamilyCircleRequest *)self serviceRemoteObjectWithErrorHandler:v11];
  v7 = _FALogSystem(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1B70B0000, v7, OS_LOG_TYPE_DEFAULT, "Starting caching of object: %@", buf, 0xCu);
  }

  object = [(FASaveScreenTimeSettingsCacheRequest *)self object];
  memberDSID = [(FASaveScreenTimeSettingsCacheRequest *)self memberDSID];
  requestOptions = [(FAFamilyCircleRequest *)self requestOptions];
  [v6 cacheObjectSettings:object dsid:memberDSID options:requestOptions replyBlock:v5];
}

void __74__FASaveScreenTimeSettingsCacheRequest_startRequestWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _FALogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[FASaveScreenTimeSettingsCacheRequest startRequestWithCompletionHandler:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1B70B0000, v4, OS_LOG_TYPE_DEFAULT, "%s: Error from service - %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

@end