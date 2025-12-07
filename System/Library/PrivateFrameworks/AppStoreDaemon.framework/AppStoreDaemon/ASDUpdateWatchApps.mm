@interface ASDUpdateWatchApps
+ (BOOL)updateBundleIDs:(id)ds userInitiated:(BOOL)initiated error:(id *)error;
+ (void)shouldPromptBeforeUpdatingWithResultHandler:(id)handler;
+ (void)updateBundleIDs:(id)ds userInitiated:(BOOL)initiated withResultHandler:(id)handler;
@end

@implementation ASDUpdateWatchApps

+ (void)shouldPromptBeforeUpdatingWithResultHandler:(id)handler
{
  handlerCopy = handler;
  (*(handler + 2))(handlerCopy, [self shouldPromptBeforeUpdating], 0);
}

+ (BOOL)updateBundleIDs:(id)ds userInitiated:(BOOL)initiated error:(id *)error
{
  initiatedCopy = initiated;
  dsCopy = ds;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__13;
  v22 = __Block_byref_object_dispose__13;
  v23 = 0;
  v8 = +[ASDServiceBroker defaultBroker];
  v9 = (v19 + 5);
  obj = v19[5];
  v10 = [v8 getUpdatesServiceWithError:&obj];
  objc_storeStrong(v9, obj);

  if (v10)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __58__ASDUpdateWatchApps_updateBundleIDs_userInitiated_error___block_invoke;
    v16[3] = &unk_1E7CDBB80;
    v16[4] = &v18;
    v11 = [v10 synchronousRemoteObjectProxyWithErrorHandler:v16];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __58__ASDUpdateWatchApps_updateBundleIDs_userInitiated_error___block_invoke_2;
    v15[3] = &unk_1E7CDBB80;
    v15[4] = &v18;
    [v11 compatibilityUpdateForBundleIDs:dsCopy userInitiated:initiatedCopy withReplyHandler:v15];
  }

  v12 = v19[5];
  if (error && v12)
  {
    *error = v12;
    v12 = v19[5];
  }

  v13 = v12 == 0;

  _Block_object_dispose(&v18, 8);
  return v13;
}

+ (void)updateBundleIDs:(id)ds userInitiated:(BOOL)initiated withResultHandler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  v9 = +[ASDServiceBroker defaultBroker];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__ASDUpdateWatchApps_updateBundleIDs_userInitiated_withResultHandler___block_invoke;
  v12[3] = &unk_1E7CDD5C8;
  v13 = dsCopy;
  v14 = handlerCopy;
  initiatedCopy = initiated;
  v10 = dsCopy;
  v11 = handlerCopy;
  [v9 getUpdatesServiceWithCompletionHandler:v12];
}

void __70__ASDUpdateWatchApps_updateBundleIDs_userInitiated_withResultHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __70__ASDUpdateWatchApps_updateBundleIDs_userInitiated_withResultHandler___block_invoke_2;
    v10[3] = &unk_1E7CDB730;
    v11 = *(a1 + 40);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v10];
    v5 = *(a1 + 48);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __70__ASDUpdateWatchApps_updateBundleIDs_userInitiated_withResultHandler___block_invoke_3;
    v8[3] = &unk_1E7CDB730;
    v6 = *(a1 + 32);
    v9 = *(a1 + 40);
    [v4 compatibilityUpdateForBundleIDs:v6 userInitiated:v5 withReplyHandler:v8];
  }

  else
  {
    v7 = *(*(a1 + 40) + 16);

    v7();
  }
}

@end