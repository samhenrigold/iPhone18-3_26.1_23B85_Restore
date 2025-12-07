@interface _DKPerformSyncDownOperation
- (id)initWithParent:(void *)parent localStorage:(void *)storage transport:(void *)transport peers:(void *)peers policy:(void *)policy type:;
- (void)endOperation;
- (void)main;
- (void)performSyncDown;
- (void)performSyncDown2;
@end

@implementation _DKPerformSyncDownOperation

- (void)main
{
  v3 = objc_opt_class();
  if ([_DKSync2Coordinator shouldDeferSyncOperationWithClass:v3 syncType:self->_type transport:self->_transport peer:0 policy:self->_policy])
  {

    [(_DKPerformSyncDownOperation *)self endOperation];
  }

  else
  {

    [(_DKPerformSyncDownOperation *)&self->super.super.super.super.isa performSyncDown];
  }
}

- (void)endOperation
{
  v2.receiver = self;
  v2.super_class = _DKPerformSyncDownOperation;
  [(_DKSyncCompositeOperation *)&v2 endOperation];
}

- (id)initWithParent:(void *)parent localStorage:(void *)storage transport:(void *)transport peers:(void *)peers policy:(void *)policy type:
{
  parentCopy = parent;
  storageCopy = storage;
  transportCopy = transport;
  peersCopy = peers;
  policyCopy = policy;
  if (self)
  {
    v22.receiver = self;
    v22.super_class = _DKPerformSyncDownOperation;
    v17 = objc_msgSendSuper2(&v22, sel_initWithParent_, a2, storageCopy, parentCopy);
    v18 = v17;
    if (v17)
    {
      objc_storeStrong(v17 + 37, parent);
      objc_storeStrong(v18 + 38, storage);
      objc_storeStrong(v18 + 39, transport);
      objc_storeStrong(v18 + 40, peers);
      objc_storeStrong(v18 + 41, policy);
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)performSyncDown
{
  v17 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v2);

    v3 = objc_opt_new();
    if ([self[39] count])
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      obj = self[39];
      v4 = [obj countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        v5 = v4;
        v6 = *v13;
        while (2)
        {
          v7 = 0;
          do
          {
            if (*v13 != v6)
            {
              objc_enumerationMutation(obj);
            }

            v8 = *(*(&v12 + 1) + 8 * v7);
            v9 = objc_opt_class();
            if (([_DKSync2Coordinator canPerformSyncOperationWithClass:v9 syncType:self[41] history:v3 transport:self[38] peer:v8 policy:self[40]]& 1) != 0)
            {

              goto LABEL_15;
            }

            ++v7;
          }

          while (v5 != v7);
          v5 = [obj countByEnumeratingWithState:&v12 objects:v16 count:16];
          if (v5)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {
      v10 = objc_opt_class();
      if (([_DKSync2Coordinator canPerformSyncOperationWithClass:v10 syncType:self[41] history:v3 transport:self[38] peer:0 policy:self[40]]& 1) != 0)
      {
LABEL_15:
        [(_DKPerformSyncDownOperation *)self performSyncDown2];
        goto LABEL_16;
      }
    }

    [self endOperation];
LABEL_16:
  }
}

- (void)performSyncDown2
{
  v63 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v2);

    v3 = 0x1E7366000uLL;
    if (![self[39] count])
    {
      v4 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v36 = [objc_opt_class() description];
        name = [self[38] name];
        *buf = 138543618;
        v53 = v36;
        v54 = 2114;
        v55 = name;
        _os_log_debug_impl(&dword_191750000, v4, OS_LOG_TYPE_DEBUG, "%{public}@: Finding peers for sync down operation on transport %{public}@", buf, 0x16u);
      }

      v5 = +[_DKSyncPeerStatusTracker sharedInstance];
      v6 = [v5 peersWithActiveTransports:{objc_msgSend(self[38], "transportType")}];
      v7 = self[39];
      self[39] = v6;
    }

    v8 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v30 = [objc_opt_class() description];
      v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(self[39], "count")}];
      name2 = [self[38] name];
      *buf = 138543874;
      v53 = v30;
      v54 = 2112;
      v55 = v31;
      v56 = 2114;
      v57 = name2;
      _os_log_debug_impl(&dword_191750000, v8, OS_LOG_TYPE_DEBUG, "%{public}@: Creating %@ sync down subordinate operations on transport %{public}@", buf, 0x20u);
    }

    v9 = objc_opt_new();
    if ([self[39] count])
    {
      [self[38] clearPrewarmedFlag];
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v10 = self[39];
      v11 = [v10 countByEnumeratingWithState:&v48 objects:v62 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = 0;
        v14 = *v49;
        do
        {
          v15 = 0;
          do
          {
            if (*v49 != v14)
            {
              objc_enumerationMutation(v10);
            }

            v16 = *(*(&v48 + 1) + 8 * v15);
            sourceDeviceID = [v16 sourceDeviceID];

            if (sourceDeviceID)
            {
              v18 = [[_DKPerformSyncDownPeerOperation alloc] initWithParent:self localStorage:self[37] transport:self[38] peer:v16 policy:self[40] type:self[41]];

              if ([v9 count])
              {
                lastObject = [v9 lastObject];
                [v18 addDependency:lastObject];
              }

              [v9 addObject:v18];
              v13 = v18;
            }

            else
            {
              v20 = v3;
              syncChannel = [*(v3 + 648) syncChannel];
              if (os_log_type_enabled(syncChannel, OS_LOG_TYPE_DEBUG))
              {
                v47 = [objc_opt_class() description];
                v22 = [v16 me];
                v23 = @"pseudo ";
                if (!v22)
                {
                  v23 = &stru_1F05B9908;
                }

                v44 = v23;
                identifier = [v16 identifier];
                model = [v16 model];
                v25 = &stru_1F05B9908;
                v45 = model;
                if (model)
                {
                  v42 = MEMORY[0x1E696AEC0];
                  model2 = [v16 model];
                  v40 = [v42 stringWithFormat:@" (%@)", model2];
                  v25 = v40;
                }

                v43 = v25;
                name3 = [self[38] name];
                *buf = 138544386;
                v53 = v47;
                v54 = 2114;
                v55 = v44;
                v56 = 2114;
                v57 = identifier;
                v58 = 2114;
                v59 = v43;
                v60 = 2114;
                v61 = name3;
                _os_log_debug_impl(&dword_191750000, syncChannel, OS_LOG_TYPE_DEBUG, "%{public}@: Skipping %{public}@peer %{public}@%{public}@ for sync down operation on transport %{public}@ due to missing source device id", buf, 0x34u);

                if (v45)
                {
                }
              }

              v3 = v20;
            }

            ++v15;
          }

          while (v12 != v15);
          v27 = [v10 countByEnumeratingWithState:&v48 objects:v62 count:16];
          v12 = v27;
        }

        while (v27);
      }

      else
      {
        v13 = 0;
      }
    }

    if ([v9 count])
    {
      [_DKSyncSerializer addOperations:v9 waitUntilFinished:0];
    }

    else
    {
      syncChannel2 = [*(v3 + 648) syncChannel];
      if (os_log_type_enabled(syncChannel2, OS_LOG_TYPE_DEBUG))
      {
        v38 = [objc_opt_class() description];
        name4 = [self[38] name];
        *buf = 138543618;
        v53 = v38;
        v54 = 2114;
        v55 = name4;
        _os_log_debug_impl(&dword_191750000, syncChannel2, OS_LOG_TYPE_DEBUG, "%{public}@: No peers to sync down on transport %{public}@", buf, 0x16u);
      }

      [self endOperation];
    }

    syncChannel3 = [*(v3 + 648) syncChannel];
    if (os_log_type_enabled(syncChannel3, OS_LOG_TYPE_DEBUG))
    {
      v33 = [objc_opt_class() description];
      v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v9, "count")}];
      name5 = [self[38] name];
      *buf = 138543874;
      v53 = v33;
      v54 = 2112;
      v55 = v34;
      v56 = 2114;
      v57 = name5;
      _os_log_debug_impl(&dword_191750000, syncChannel3, OS_LOG_TYPE_DEBUG, "%{public}@: Done queuing %@ subordinate sync down operations on transport %{public}@", buf, 0x20u);
    }
  }
}

@end