@interface PLCameraCaptureTaskConstraints
+ (PLCameraCaptureTaskConstraints)sharedTaskConstraints;
- (PLCameraCaptureTaskConstraints)init;
- (id)stateCaptureDictionary;
- (id)taskConstraintStatus;
- (void)startConstrainingTasksWithCoordinator:(id)coordinator;
- (void)stopConstrainingTasksWithCoordinator:(id)coordinator;
@end

@implementation PLCameraCaptureTaskConstraints

- (id)stateCaptureDictionary
{
  [MEMORY[0x1E695DF70] array];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v5 = v9 = 0;
  PLSafeRunWithUnfairLock();
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:v5 forKeyedSubscript:@"coordinators"];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:*(v7 + 24)];
  [dictionary setObject:v3 forKeyedSubscript:@"photoStreamsPaused"];

  _Block_object_dispose(&v6, 8);

  return dictionary;
}

void __56__PLCameraCaptureTaskConstraints_stateCaptureDictionary__block_invoke(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1[4] + 16);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = a1[5];
        v8 = [*(*(&v9 + 1) + 8 * v6) description];
        [v7 addObject:v8];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  *(*(a1[6] + 8) + 24) = *(a1[4] + 24) != 0;
}

- (id)taskConstraintStatus
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__78803;
  v8 = __Block_byref_object_dispose__78804;
  v9 = 0;
  PLSafeRunWithUnfairLock();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

void __54__PLCameraCaptureTaskConstraints_taskConstraintStatus__block_invoke(uint64_t a1, const char *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_count(*(*(a1 + 32) + 16), a2);
  if (v3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Camera capture task constraints are active (%ld coordinators activated)", v3];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v7 = *(a1 + 32);
    if (*(v7 + 24))
    {
      v8 = [*(*(*(a1 + 40) + 8) + 40) stringByAppendingFormat:@", photo streams are paused"];
      v9 = *(*(a1 + 40) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      v7 = *(a1 + 32);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = *(v7 + 16);
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(*(a1 + 40) + 8) + 40) stringByAppendingFormat:@"\n\t%@", *(*(&v22 + 1) + 8 * i)];
          v17 = *(*(a1 + 40) + 8);
          v18 = *(v17 + 40);
          *(v17 + 40) = v16;
        }

        v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v13);
    }
  }

  else
  {
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Camera capture task constraints are not active"];
    v20 = *(*(a1 + 40) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;
  }
}

- (void)stopConstrainingTasksWithCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  +[PLPhotoLibrary cameraPhotoLibrary];
  v7 = v6 = coordinatorCopy;
  v4 = v7;
  v5 = coordinatorCopy;
  PLSafeRunWithUnfairLock();
}

void __71__PLCameraCaptureTaskConstraints_stopConstrainingTasksWithCoordinator___block_invoke(uint64_t a1, const char *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_count(*(*(a1 + 32) + 16), a2);
  [*(*(a1 + 32) + 16) removeObject:*(a1 + 40)];
  v4 = objc_msgSend_count(*(*(a1 + 32) + 16));
  if (v3 == 1 && v4 == 0)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 48);
    v8 = *(a1 + 40);
    if (v6)
    {
      v9 = v7;
      os_unfair_lock_assert_owner(v6 + 2);
      v10 = PLCameraTaskConstraintsGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138543362;
        v12 = v8;
        _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: resign active for camera activity", &v11, 0xCu);
      }

      [v9 enableOpportunisticTasks];
    }
  }
}

- (void)startConstrainingTasksWithCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  +[PLPhotoLibrary cameraPhotoLibrary];
  v7 = v6 = coordinatorCopy;
  v4 = v7;
  v5 = coordinatorCopy;
  PLSafeRunWithUnfairLock();
}

void __72__PLCameraCaptureTaskConstraints_startConstrainingTasksWithCoordinator___block_invoke(uint64_t a1, const char *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = *(*(a1 + 32) + 16);
  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v5 = *(a1 + 32);
    v6 = *(v5 + 16);
    *(v5 + 16) = v4;

    v3 = *(*(a1 + 32) + 16);
  }

  v7 = objc_msgSend_count(v3, a2);
  [*(*(a1 + 32) + 16) addObject:*(a1 + 40)];
  v8 = objc_msgSend_count(*(*(a1 + 32) + 16));
  if (v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8 == 1;
  }

  if (v9)
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 48);
    v12 = *(a1 + 40);
    if (v10)
    {
      v13 = v11;
      os_unfair_lock_assert_owner(v10 + 2);
      v14 = PLCameraTaskConstraintsGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138543362;
        v16 = v12;
        _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: become active for camera activity", &v15, 0xCu);
      }

      [v13 disableOpportunisticTasks];
    }
  }
}

- (PLCameraCaptureTaskConstraints)init
{
  v8.receiver = self;
  v8.super_class = PLCameraCaptureTaskConstraints;
  v2 = [(PLCameraCaptureTaskConstraints *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_taskConstraintCoordinatorLock._os_unfair_lock_opaque = 0;
    v4 = [objc_alloc(MEMORY[0x1E69BDD80]) initWithProvider:v2];
    stateHandler = v3->_stateHandler;
    v3->_stateHandler = v4;

    v6 = v3;
  }

  return v3;
}

+ (PLCameraCaptureTaskConstraints)sharedTaskConstraints
{
  pl_dispatch_once();
  v2 = sharedTaskConstraints_pl_once_object_15;

  return v2;
}

void __55__PLCameraCaptureTaskConstraints_sharedTaskConstraints__block_invoke()
{
  v0 = objc_alloc_init(PLCameraCaptureTaskConstraints);
  v1 = sharedTaskConstraints_pl_once_object_15;
  sharedTaskConstraints_pl_once_object_15 = v0;
}

@end