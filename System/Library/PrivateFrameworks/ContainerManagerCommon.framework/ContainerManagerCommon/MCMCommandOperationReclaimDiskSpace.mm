@interface MCMCommandOperationReclaimDiskSpace
+ (Class)incomingMessageClass;
- (BOOL)_removeItemOrMoveToTempAtURL:(id)l error:(id *)error;
- (BOOL)preflightClientAllowed;
- (MCMCommandOperationReclaimDiskSpace)initWithAsynchronously:(BOOL)asynchronously context:(id)context resultPromise:(id)promise;
- (MCMCommandOperationReclaimDiskSpace)initWithAsynchronously:(BOOL)asynchronously context:(id)context resultPromise:(id)promise handoffForReply:(id)reply;
- (MCMCommandOperationReclaimDiskSpace)initWithMessage:(id)message context:(id)context reply:(id)reply;
- (MCMCommandOperationReclaimDiskSpace)initWithMessage:(id)message context:(id)context reply:(id)reply asyncResultPromise:(id)promise;
- (void)_deleteContainersAtDeathRowURL:(id)l error:(id *)error;
- (void)_deleteContainersOnDeathRowWithCompletion:(id)completion;
- (void)execute;
@end

@implementation MCMCommandOperationReclaimDiskSpace

- (void)_deleteContainersOnDeathRowWithCompletion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__3962;
  v27 = __Block_byref_object_dispose__3963;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__3962;
  v21 = __Block_byref_object_dispose__3963;
  v22 = 0;
  v5 = containermanager_copy_global_configuration();
  v6 = [v5 dispositionForContainerClass:2] == 1;

  if (v6)
  {
    context = [(MCMCommand *)self context];
    userIdentityCache = [context userIdentityCache];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __81__MCMCommandOperationReclaimDiskSpace__deleteContainersOnDeathRowWithCompletion___block_invoke;
    v16[3] = &unk_1E86AFFE8;
    v16[4] = self;
    v16[5] = &v17;
    v16[6] = &v23;
    [userIdentityCache forEachAccessibleUserIdentitySynchronouslyExecuteBlock:v16];
  }

  v9 = containermanager_copy_global_configuration();
  v10 = [v9 dispositionForContainerClass:1] == 1;

  if (v10)
  {
    v11 = +[MCMContainerClassDeletedPath deletedGlobalURL];
    v12 = v18[5];
    v18[5] = v11;

    v13 = v18[5];
    v14 = v24;
    obj = v24[5];
    [(MCMCommandOperationReclaimDiskSpace *)self _deleteContainersAtDeathRowURL:v13 error:&obj];
    objc_storeStrong(v14 + 5, obj);
  }

  if (completionCopy)
  {
    (completionCopy)[2](completionCopy, v24[5]);
  }

  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);
}

void __81__MCMCommandOperationReclaimDiskSpace__deleteContainersOnDeathRowWithCompletion___block_invoke(void *a1, uint64_t a2)
{
  obj[1] = *MEMORY[0x1E69E9840];
  v3 = [MCMContainerClassDeletedPath deletedURLWithUserIdentity:a2];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = a1[4];
  v7 = *(*(a1[5] + 8) + 40);
  v8 = *(a1[6] + 8);
  obj[0] = *(v8 + 40);
  [v6 _deleteContainersAtDeathRowURL:v7 error:obj];
  objc_storeStrong((v8 + 40), obj[0]);
}

- (void)_deleteContainersAtDeathRowURL:(id)l error:(id *)error
{
  v56 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__3962;
  v45 = __Block_byref_object_dispose__3963;
  v46 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__3962;
  v39 = __Block_byref_object_dispose__3963;
  v40 = 0;
  v6 = MCMSharedDeathrowQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__MCMCommandOperationReclaimDiskSpace__deleteContainersAtDeathRowURL_error___block_invoke;
  block[3] = &unk_1E86B0730;
  v33 = &v41;
  v28 = lCopy;
  v32 = v28;
  v34 = &v35;
  dispatch_sync(v6, block);

  if ([v42[5] count])
  {
    v7 = container_log_handle_for_category();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_5;
    }

    v8 = v42[5];
    *buf = 138412290;
    v53 = v8;
    v9 = "Preparing to delete: %@";
  }

  else
  {
    v7 = container_log_handle_for_category();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_5;
    }

    *buf = 138412290;
    v53 = v28;
    v9 = "There are no items staged for delete at %@.";
  }

  _os_log_debug_impl(&dword_1DF2C3000, v7, OS_LOG_TYPE_DEBUG, v9, buf, 0xCu);
LABEL_5:

  v10 = v42[5];
  if (v10)
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v11 = v10;
    v12 = 0;
    v13 = [v11 countByEnumeratingWithState:&v48 objects:v47 count:16];
    if (v13)
    {
      v14 = *v49;
      do
      {
        v15 = 0;
        v16 = v12;
        do
        {
          if (*v49 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v48 + 1) + 8 * v15);
          v30 = v16;
          v18 = [(MCMCommandOperationReclaimDiskSpace *)self _removeItemOrMoveToTempAtURL:v17 error:&v30, v28];
          v12 = v30;

          if (!v18)
          {
            v19 = container_log_handle_for_category();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              path = [v17 path];
              v21 = v36[5];
              *buf = 138412546;
              v53 = path;
              v54 = 2112;
              v55 = v21;
              _os_log_error_impl(&dword_1DF2C3000, v19, OS_LOG_TYPE_ERROR, "Failed to destroy item at %@: %@", buf, 0x16u);
            }
          }

          ++v15;
          v16 = v12;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v48 objects:v47 count:16];
      }

      while (v13);
    }
  }

  else
  {
    domain = [v36[5] domain];
    if ([domain isEqualToString:*MEMORY[0x1E696A798]])
    {
      v23 = [v36[5] code] == 2;

      if (v23)
      {
        v12 = 0;
        goto LABEL_27;
      }
    }

    else
    {
    }

    v24 = [MCMError alloc];
    v12 = [(MCMError *)v24 initWithNSError:v36[5] url:v28 defaultErrorType:28];
    v11 = container_log_handle_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      path2 = [v28 path];
      v27 = v36[5];
      *buf = 138412546;
      v53 = path2;
      v54 = 2112;
      v55 = v27;
      _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, "Failed to get items for deletion at %@: %@", buf, 0x16u);
    }
  }

  if (error && v12)
  {
    v25 = v12;
    *error = v12;
  }

LABEL_27:

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v41, 8);
}

void __76__MCMCommandOperationReclaimDiskSpace__deleteContainersAtDeathRowURL_error___block_invoke(void *a1)
{
  obj[1] = *MEMORY[0x1E69E9840];
  v2 = +[MCMFileManager defaultManager];
  v3 = a1[4];
  v4 = *(a1[6] + 8);
  obj[0] = *(v4 + 40);
  v5 = [v2 urlsForItemsInDirectoryAtURL:v3 error:obj];
  objc_storeStrong((v4 + 40), obj[0]);
  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (BOOL)_removeItemOrMoveToTempAtURL:(id)l error:(id *)error
{
  v34 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v6 = 1;
  v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/tmp" isDirectory:1];
  v8 = +[MCMFileManager defaultManager];
  v27 = 0;
  v9 = [v8 removeItemAtURL:lCopy error:&v27];
  v10 = v27;

  if (v9)
  {
    goto LABEL_2;
  }

  domain = [v10 domain];
  if ([domain isEqualToString:*MEMORY[0x1E696A798]])
  {
    code = [v10 code];

    if (code == 2)
    {
LABEL_2:
      v11 = 0;
      goto LABEL_17;
    }
  }

  else
  {
  }

  v14 = container_log_handle_for_category();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    path = [lCopy path];
    *buf = 138412546;
    v29 = path;
    v30 = 2112;
    v31 = v10;
    _os_log_debug_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_DEBUG, "Couldn't remove, so moving item to /tmp: %@ : %@", buf, 0x16u);
  }

  v15 = +[MCMFileManager defaultManager];
  lastPathComponent = [lCopy lastPathComponent];
  v17 = [v7 URLByAppendingPathComponent:lastPathComponent];
  v26 = v10;
  v18 = [v15 moveItemIfExistsAtURL:lCopy toURL:v17 error:&v26];
  v19 = v26;

  if (v18)
  {
    v11 = 0;
    v6 = 1;
  }

  else
  {
    v11 = [[MCMError alloc] initWithNSError:v19 url:lCopy defaultErrorType:17];
    v20 = container_log_handle_for_category();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      path2 = [lCopy path];
      path3 = [v7 path];
      *buf = 138412802;
      v29 = path2;
      v30 = 2112;
      v31 = path3;
      v32 = 2112;
      v33 = v19;
      _os_log_error_impl(&dword_1DF2C3000, v20, OS_LOG_TYPE_ERROR, "Failed to move dir %@ to %@: %@", buf, 0x20u);
    }

    v6 = 0;
    if (error && v11)
    {
      v21 = v11;
      v6 = 0;
      *error = v11;
    }
  }

  v10 = v19;
LABEL_17:

  return v6;
}

- (void)execute
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  resultPromise = [(MCMCommand *)self resultPromise];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __46__MCMCommandOperationReclaimDiskSpace_execute__block_invoke;
  v19 = &unk_1E86B0CC8;
  selfCopy = self;
  v21 = resultPromise;
  v5 = resultPromise;
  v6 = _Block_copy(&v16);
  if ([(MCMCommandOperationReclaimDiskSpace *)self asynchronously:v16])
  {
    v7 = MCMSharedSlowWorkloop();
    v8 = v6;
    handoffReply2 = v7;
    MEMORY[0x1E12D4880]();
    *&block = MEMORY[0x1E69E9820];
    *(&block + 1) = 3221225472;
    v23 = __MCMRunTransactionalTask_block_invoke;
    v24 = &unk_1E86B0F40;
    v25 = v8;
    context2 = v8;
    dispatch_async(handoffReply2, &block);
  }

  else
  {
    handoffReply = [(MCMCommandOperationReclaimDiskSpace *)self handoffReply];

    if (!handoffReply)
    {
      handoffReply2 = MCMSharedSlowWorkloop();
      dispatch_async_and_wait(handoffReply2, v6);
      goto LABEL_8;
    }

    v12 = container_log_handle_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      context = [(MCMCommand *)self context];
      clientIdentity = [context clientIdentity];
      LODWORD(block) = 138412290;
      *(&block + 4) = clientIdentity;
      _os_log_debug_impl(&dword_1DF2C3000, v12, OS_LOG_TYPE_DEBUG, "Reply to reclaim handed off to the slow workloop for client [%@]", &block, 0xCu);
    }

    handoffReply2 = [(MCMCommandOperationReclaimDiskSpace *)self handoffReply];
    context2 = [(MCMCommand *)self context];
    clientIdentity2 = [context2 clientIdentity];
    [handoffReply2 handoffToSlowWorkloopforClientIdentity:clientIdentity2 withBlock:v6];
  }

LABEL_8:
  objc_autoreleasePoolPop(v3);
}

void __46__MCMCommandOperationReclaimDiskSpace_execute__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = +[MCMTestLocks sharedInstance];
  [v2 waitOnLock:9];

  v3 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__MCMCommandOperationReclaimDiskSpace_execute__block_invoke_2;
  v4[3] = &unk_1E86AFFC0;
  v4[4] = v3;
  v5 = *(a1 + 40);
  [v3 _deleteContainersOnDeathRowWithCompletion:v4];
}

void __46__MCMCommandOperationReclaimDiskSpace_execute__block_invoke_2(uint64_t a1, void *a2)
{
  v14 = a2;
  if (v14)
  {
    v3 = [[MCMResultBase alloc] initWithError:v14];
  }

  else
  {
    v3 = objc_opt_new();
  }

  v4 = v3;
  v5 = [*(a1 + 32) message];
  if (v5)
  {
    v6 = v5;
    v7 = containermanager_copy_global_configuration();
    if ([v7 runmode] == 2)
    {
    }

    else
    {
      v8 = containermanager_copy_global_configuration();
      v9 = [v8 runmode];

      if (v9 != 3)
      {
        goto LABEL_11;
      }
    }

    v10 = [*(a1 + 32) message];
    v11 = [*(a1 + 32) context];
    v12 = [MCMCommand relayToPrivilegedDaemonMessage:v10 context:v11];

    if (!v15)
    {
      v13 = v12;

      v4 = v13;
    }
  }

LABEL_11:
  [*(a1 + 40) completeWithResult:v4];
}

- (BOOL)preflightClientAllowed
{
  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];

  codeSignInfo = [clientIdentity codeSignInfo];
  entitlements = [codeSignInfo entitlements];

  if ([entitlements allowed] & 1) != 0 || (objc_msgSend(entitlements, "canDelete"))
  {
    canManageUserManagedAssets = 1;
  }

  else
  {
    canManageUserManagedAssets = [entitlements canManageUserManagedAssets];
  }

  return canManageUserManagedAssets;
}

- (MCMCommandOperationReclaimDiskSpace)initWithMessage:(id)message context:(id)context reply:(id)reply
{

  return [(MCMCommandOperationReclaimDiskSpace *)self initWithMessage:message context:context reply:reply asyncResultPromise:0];
}

- (MCMCommandOperationReclaimDiskSpace)initWithMessage:(id)message context:(id)context reply:(id)reply asyncResultPromise:(id)promise
{
  v16 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  replyCopy = reply;
  v15.receiver = self;
  v15.super_class = MCMCommandOperationReclaimDiskSpace;
  v12 = [(MCMCommand *)&v15 initWithMessage:messageCopy context:context reply:replyCopy];
  v13 = v12;
  if (v12)
  {
    v12->_asynchronously = 0;
    objc_storeStrong(&v12->_handoffReply, reply);
    objc_storeStrong(&v13->_message, message);
  }

  return v13;
}

- (MCMCommandOperationReclaimDiskSpace)initWithAsynchronously:(BOOL)asynchronously context:(id)context resultPromise:(id)promise
{

  return [(MCMCommandOperationReclaimDiskSpace *)self initWithAsynchronously:asynchronously context:context resultPromise:promise handoffForReply:0];
}

- (MCMCommandOperationReclaimDiskSpace)initWithAsynchronously:(BOOL)asynchronously context:(id)context resultPromise:(id)promise handoffForReply:(id)reply
{
  v17 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v16.receiver = self;
  v16.super_class = MCMCommandOperationReclaimDiskSpace;
  v12 = [(MCMCommand *)&v16 initWithContext:context resultPromise:promise];
  v13 = v12;
  if (v12)
  {
    v12->_asynchronously = asynchronously;
    message = v12->_message;
    v12->_message = 0;

    objc_storeStrong(&v13->_handoffReply, reply);
  }

  return v13;
}

+ (Class)incomingMessageClass
{

  return objc_opt_class();
}

@end