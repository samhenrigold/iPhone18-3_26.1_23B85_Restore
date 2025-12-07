@interface _PUIPosterSnapshotCapture
- (BOOL)_captureLevelSet:(id)set error:(id *)error;
- (BOOL)_setupCaptureForLevelSet:(id)set error:(id *)error;
- (_PUIPosterSnapshotCapture)init;
- (_PUIPosterSnapshotCapture)initWithScene:(id)scene captureController:(id)controller snapshotDescriptor:(id)descriptor outputURL:(id)l;
- (void)_attemptSnapshot:(id)snapshot;
- (void)_cleanup;
- (void)_finishCaptureWithError:(id)error;
- (void)_fire;
- (void)dealloc;
- (void)invalidate;
- (void)start;
@end

@implementation _PUIPosterSnapshotCapture

- (_PUIPosterSnapshotCapture)init
{
  [(_PUIPosterSnapshotCapture *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (_PUIPosterSnapshotCapture)initWithScene:(id)scene captureController:(id)controller snapshotDescriptor:(id)descriptor outputURL:(id)l
{
  sceneCopy = scene;
  controllerCopy = controller;
  descriptorCopy = descriptor;
  lCopy = l;
  if (!sceneCopy)
  {
    [_PUIPosterSnapshotCapture initWithScene:a2 captureController:self snapshotDescriptor:? outputURL:?];
  }

  if (!descriptorCopy)
  {
    [_PUIPosterSnapshotCapture initWithScene:a2 captureController:self snapshotDescriptor:? outputURL:?];
  }

  v16 = lCopy;
  if (!lCopy)
  {
    [_PUIPosterSnapshotCapture initWithScene:a2 captureController:self snapshotDescriptor:? outputURL:?];
  }

  v24.receiver = self;
  v24.super_class = _PUIPosterSnapshotCapture;
  v17 = [(_PUIPosterSnapshotCapture *)&v24 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_scene, scene);
    objc_storeStrong(&v18->_captureController, controller);
    objc_storeStrong(&v18->_snapshotDescriptor, descriptor);
    objc_storeStrong(&v18->_outputURL, l);
    v19 = objc_opt_new();
    cleanedUpSignal = v18->_cleanedUpSignal;
    v18->_cleanedUpSignal = v19;

    v21 = objc_opt_new();
    future = v18->_future;
    v18->_future = v21;
  }

  return v18;
}

- (void)dealloc
{
  [(_PUIPosterSnapshotCapture *)self _cleanup];
  v3.receiver = self;
  v3.super_class = _PUIPosterSnapshotCapture;
  [(_PUIPosterSnapshotCapture *)&v3 dealloc];
}

- (void)start
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_fire
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_attemptSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  v5 = BSDispatchQueueAssertMain();
  v6 = PUILogSnapshotting(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [_PUIPosterSnapshotCapture _attemptSnapshot:];
  }

  objc_initWeak(&location, self);
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __46___PUIPosterSnapshotCapture__attemptSnapshot___block_invoke;
  v44[3] = &unk_1E7854C68;
  objc_copyWeak(&v46, &location);
  v7 = snapshotCopy;
  v45 = v7;
  v8 = MEMORY[0x1AC5769F0](v44);
  v9 = v8;
  if (self->_sceneIsReadyToSnapshot)
  {
    (*(v8 + 16))(v8);
  }

  else
  {
    hostDescriptor = [(PUIPosterSnapshotDescriptor *)self->_snapshotDescriptor hostDescriptor];
    waitUntilReady = [hostDescriptor waitUntilReady];

    if (waitUntilReady)
    {
      scene = [(_PUIPosterSnapshotCapture *)self scene];
      v43 = 0;
      v14 = [scene pui_sceneIsReadyToSnapshot:&v43];
      v15 = v43;

      if (v14)
      {
        v17 = PUILogSnapshotting(v16);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [_PUIPosterSnapshotCapture _attemptSnapshot:];
        }

        self->_sceneIsReadyToSnapshot = 1;
        v9[2](v9);
      }

      else
      {
        v37 = 0;
        v38 = &v37;
        v39 = 0x3032000000;
        v40 = __Block_byref_object_copy__0;
        v41 = __Block_byref_object_dispose__0;
        v19 = [PUIPosterSnapshotReadinessSceneObserver alloc];
        scene2 = [(_PUIPosterSnapshotCapture *)self scene];
        v42 = [(PUIPosterSnapshotReadinessSceneObserver *)v19 initWithFBSScene:scene2];

        v21 = objc_opt_new();
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __46___PUIPosterSnapshotCapture__attemptSnapshot___block_invoke_48;
        v33[3] = &unk_1E7854C90;
        v35 = &v37;
        objc_copyWeak(&v36, &location);
        v22 = v21;
        v34 = v22;
        v23 = MEMORY[0x1AC5769F0](v33);
        v24 = PUILogSnapshotting(v23);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          [_PUIPosterSnapshotCapture _attemptSnapshot:];
        }

        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __46___PUIPosterSnapshotCapture__attemptSnapshot___block_invoke_52;
        v28[3] = &unk_1E7854CB8;
        objc_copyWeak(&v32, &location);
        v31 = &v37;
        v25 = v22;
        v29 = v25;
        v30 = v9;
        v26 = MEMORY[0x1AC5769F0](v28);
        [v38[5] addSnapshotReadinessObserver:v26];
        v27 = dispatch_time(0, 5000000000);
        dispatch_after(v27, MEMORY[0x1E69E96A0], v23);

        objc_destroyWeak(&v32);
        objc_destroyWeak(&v36);

        _Block_object_dispose(&v37, 8);
      }
    }

    else
    {
      v18 = PUILogSnapshotting(v12);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [_PUIPosterSnapshotCapture _attemptSnapshot:];
      }

      self->_sceneIsReadyToSnapshot = 1;
      v9[2](v9);
      v15 = 0;
    }
  }

  objc_destroyWeak(&v46);
  objc_destroyWeak(&location);
}

- (BOOL)_setupCaptureForLevelSet:(id)set error:(id *)error
{
  setCopy = set;
  BSDispatchQueueAssertMain();
  v6 = [(BSMutableOrderedDictionary *)self->_environmentOverridesForLevelSet objectForKey:setCopy];

  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_lastEmittedEnvironmentOverrides, v6);
    captureController = [(_PUIPosterSnapshotCapture *)self captureController];
    delegate = [captureController delegate];
    captureController2 = [(_PUIPosterSnapshotCapture *)self captureController];
    [delegate captureController:captureController2 needsEnvironmentUpdate:v6];
  }

  return 1;
}

- (BOOL)_captureLevelSet:(id)set error:(id *)error
{
  v110 = *MEMORY[0x1E69E9840];
  setCopy = set;
  BSDispatchQueueAssertMain();
  scene = [(_PUIPosterSnapshotCapture *)self scene];
  settings = [scene settings];
  v8 = PUILogSnapshotting(settings);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.a) = 134218496;
    *(&buf.a + 4) = self;
    WORD2(buf.b) = 2048;
    *(&buf.b + 6) = [settings pui_deviceOrientation];
    HIWORD(buf.c) = 2048;
    *&buf.d = [settings pui_userInterfaceStyle];
    _os_log_impl(&dword_1A8C85000, v8, OS_LOG_TYPE_DEFAULT, "(capture %p) capturing snapshot for interface orientation %lu user interface style %lu", &buf, 0x20u);
  }

  sceneDescriptor = [(PUIPosterSnapshotDescriptor *)self->_snapshotDescriptor sceneDescriptor];
  output = [(PUIPosterSnapshotDescriptor *)self->_snapshotDescriptor output];
  [output persistenceScale];
  v12 = v11;

  displayConfiguration = [settings displayConfiguration];
  v78 = self->_builder;
  [displayConfiguration pointScale];
  v15 = v14;
  interfaceOrientation = [settings interfaceOrientation];
  pui_deviceOrientation = [settings pui_deviceOrientation];
  [displayConfiguration pointScale];
  v17 = v16;
  v76 = displayConfiguration;
  [displayConfiguration bounds];
  v20 = v18;
  v21 = v19;
  v77 = sceneDescriptor;
  if (sceneDescriptor)
  {
    [sceneDescriptor canvasBounds];
  }

  memset(&buf, 0, sizeof(buf));
  CGAffineTransformMakeScale(&buf, v17 * (v18 / v20), v17 * (v19 / v21));
  v22 = self->_snapshotLayerForLevel;
  v101[0] = MEMORY[0x1E69E9820];
  v101[1] = 3221225472;
  v101[2] = __52___PUIPosterSnapshotCapture__captureLevelSet_error___block_invoke;
  v101[3] = &unk_1E7854CE0;
  v23 = v22;
  v102 = v23;
  v24 = scene;
  v103 = v24;
  v104 = buf;
  [setCopy enumerateLevels:v101];
  v25 = objc_opt_new();
  v79 = v24;
  if ([setCopy isCompositeLevelSet])
  {
    v99 = 0uLL;
    v100 = 0uLL;
    v97 = 0uLL;
    v98 = 0uLL;
    allKeys = [(NSMutableDictionary *)v23 allKeys];
    sortedLevels = [allKeys sortedArrayUsingSelector:sel_compare_];

    v28 = [sortedLevels countByEnumeratingWithState:&v97 objects:v108 count:16];
    if (!v28)
    {
      goto LABEL_26;
    }

    v29 = v28;
    v30 = setCopy;
    v31 = *v98;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v98 != v31)
        {
          objc_enumerationMutation(sortedLevels);
        }

        v33 = [(NSMutableDictionary *)v23 objectForKey:*(*(&v97 + 1) + 8 * i)];
        if (v33)
        {
          [v25 addObject:v33];
        }
      }

      v29 = [sortedLevels countByEnumeratingWithState:&v97 objects:v108 count:16];
    }

    while (v29);
  }

  else
  {
    v95 = 0uLL;
    v96 = 0uLL;
    v93 = 0uLL;
    v94 = 0uLL;
    sortedLevels = [setCopy sortedLevels];
    v34 = [sortedLevels countByEnumeratingWithState:&v93 objects:v107 count:16];
    if (!v34)
    {
      goto LABEL_26;
    }

    v35 = v34;
    v30 = setCopy;
    v36 = *v94;
    do
    {
      for (j = 0; j != v35; ++j)
      {
        if (*v94 != v36)
        {
          objc_enumerationMutation(sortedLevels);
        }

        v38 = [(NSMutableDictionary *)v23 objectForKey:*(*(&v93 + 1) + 8 * j)];
        if (v38)
        {
          [v25 addObject:v38];
        }
      }

      v35 = [sortedLevels countByEnumeratingWithState:&v93 objects:v107 count:16];
    }

    while (v35);
  }

  setCopy = v30;
  v24 = v79;
LABEL_26:

  if (![v25 count])
  {
    writeQueue = self->_writeQueue;
    v90[0] = MEMORY[0x1E69E9820];
    v90[1] = 3221225472;
    v90[2] = __52___PUIPosterSnapshotCapture__captureLevelSet_error___block_invoke_2;
    v90[3] = &unk_1E78548A0;
    v44 = v78;
    v91 = v78;
    v92 = setCopy;
    [(NSOperationQueue *)writeQueue addOperationWithBlock:v90];

    capture = 1;
    pui_fallbackSnapshotImage = v91;
    goto LABEL_44;
  }

  v39 = [(NSMutableDictionary *)v23 objectForKey:&unk_1F1C92820];
  if (v39 || [v25 count] != 1)
  {
  }

  else
  {
    v40 = +[PUIPosterLevelSet floatingLevelSet];
    v41 = [setCopy isEqualToLevelSet:v40];

    if (v41)
    {
      pui_fallbackSnapshotImage = [MEMORY[0x1E69DCAB8] pui_fallbackSnapshotImage];
      v43 = +[PUIPosterLevelSet floatingLevelSet];
      v44 = v78;
      [(PUIPosterSnapshotBundleBuilder *)v78 setImage:pui_fallbackSnapshotImage forLevelSet:v43];

      capture = 1;
      v24 = v79;
      goto LABEL_44;
    }
  }

  v46 = MEMORY[0x1E699FC48];
  v24 = v79;
  identifier = [v79 identifier];
  pui_fallbackSnapshotImage = [v46 contextWithSceneID:identifier settings:settings];

  v48 = [objc_alloc(MEMORY[0x1E699F7E8]) initWithFBSContext:pui_fallbackSnapshotImage];
  v49 = [[_PUIFBSSceneSnapshot alloc] initWithScene:v79 snapshotContext:v48 layers:v25];
  capture = [(_PUIFBSSceneSnapshot *)v49 capture];
  if (capture)
  {
    if (!self->_hasCapturedSalientContentRect)
    {
      clientSettings = [v79 clientSettings];
      v75 = setCopy;
      pui_adaptiveTimeMode = [clientSettings pui_adaptiveTimeMode];

      v52 = pui_adaptiveTimeMode == 2;
      setCopy = v75;
      if (v52)
      {
        clientSettings2 = [v79 clientSettings];
        [clientSettings2 pui_preferredSalientContentRectangle];
        v55 = v54;
        v57 = v56;
        v59 = v58;
        v61 = v60;

        IsValidSalientContentRectangle = PUICGRectIsValidSalientContentRectangle(v55, v57, v59, v61);
        if (IsValidSalientContentRectangle)
        {
          v63 = PUILogSnapshotting(IsValidSalientContentRectangle);
          if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
          {
            v111.origin.x = v55;
            v111.origin.y = v57;
            v111.size.width = v59;
            v111.size.height = v61;
            NSStringFromCGRect(v111);
            v64 = log = v63;
            *v105 = 138543362;
            v106 = v64;
            _os_log_impl(&dword_1A8C85000, log, OS_LOG_TYPE_DEFAULT, "Captured preferred salient content rect '%{public}@'", v105, 0xCu);

            v63 = log;
          }

          v112.origin.x = v55;
          v112.origin.y = v57;
          v112.size.width = v59;
          v112.size.height = v61;
          v65 = NSStringFromCGRect(v112);
          [(PUIPosterSnapshotBundleBuilder *)v78 setObject:v65 forKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeySaliencyRect"];

          self->_hasCapturedSalientContentRect = 1;
        }
      }
    }

    v66 = self->_writeQueue;
    v80[0] = MEMORY[0x1E69E9820];
    v80[1] = 3221225472;
    v80[2] = __52___PUIPosterSnapshotCapture__captureLevelSet_error___block_invoke_79;
    v80[3] = &unk_1E7854D08;
    v81 = v49;
    v86 = interfaceOrientation;
    v87 = pui_deviceOrientation;
    v88 = v15;
    v44 = v78;
    v82 = v78;
    v83 = settings;
    v84 = setCopy;
    v89 = v12;
    v85 = v79;
    v67 = v66;
    v24 = v79;
    [(NSOperationQueue *)v67 addOperationWithBlock:v80];

    v48 = v81;
  }

  else
  {
    v69 = PFFunctionNameForAddress();
    *error = PFGeneralErrorFromObjectWithLocalizedFailureReason();

    v44 = v78;
  }

LABEL_44:
  return capture;
}

- (void)_finishCaptureWithError:(id)error
{
  v39 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  selfCopy = self;
  v6 = objc_sync_enter(selfCopy);
  if (selfCopy->_finished)
  {
    v7 = PUILogSnapshotting(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [_PUIPosterSnapshotCapture _finishCaptureWithError:];
    }
  }

  else
  {
    selfCopy->_finished = 1;
    startTime = selfCopy->_startTime;
    v7 = selfCopy->_future;
    v9 = selfCopy->_builder;
    inited = objc_initWeak(&location, selfCopy);
    if (errorCopy)
    {
      v11 = PUILogSnapshotting(inited);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        Current = CFAbsoluteTimeGetCurrent();
        *buf = 134218498;
        v34 = selfCopy;
        v35 = 2114;
        v36 = errorCopy;
        v37 = 2048;
        v38 = Current - startTime;
        _os_log_error_impl(&dword_1A8C85000, v11, OS_LOG_TYPE_ERROR, "(%p) Snapshot failed to capture: %{public}@; capture time %f", buf, 0x20u);
      }

      [v7 finishWithError:errorCopy];
      v12 = dispatch_get_global_queue(17, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __53___PUIPosterSnapshotCapture__finishCaptureWithError___block_invoke;
      block[3] = &unk_1E7854B70;
      objc_copyWeak(&v31, &location);
      dispatch_async(v12, block);

      objc_destroyWeak(&v31);
    }

    else
    {
      builder = selfCopy->_builder;
      selfCopy->_builder = 0;

      v14 = selfCopy->_outputURL;
      scene = [(_PUIPosterSnapshotCapture *)selfCopy scene];
      settings = [scene settings];

      analysis = [(PUIPosterSnapshotDescriptor *)selfCopy->_snapshotDescriptor analysis];
      determineColorStatistics = [analysis determineColorStatistics];

      writeQueue = selfCopy->_writeQueue;
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __53___PUIPosterSnapshotCapture__finishCaptureWithError___block_invoke_2;
      v23[3] = &unk_1E7854D30;
      v29 = determineColorStatistics;
      v24 = v9;
      v20 = settings;
      v25 = v20;
      v21 = v14;
      v26 = v21;
      objc_copyWeak(v28, &location);
      v28[1] = *&startTime;
      v27 = v7;
      [(NSOperationQueue *)writeQueue addOperationWithBlock:v23];

      objc_destroyWeak(v28);
    }

    objc_destroyWeak(&location);
  }

  objc_sync_exit(selfCopy);
}

- (void)_cleanup
{
  v23 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v3 = objc_sync_enter(selfCopy);
  if (selfCopy->_finished)
  {
    signal = [(BSAtomicSignal *)selfCopy->_cleanedUpSignal signal];
    if (signal)
    {
      v5 = PUILogSnapshotting(signal);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v22 = selfCopy;
        _os_log_impl(&dword_1A8C85000, v5, OS_LOG_TYPE_DEFAULT, "(%p) Cleaning up...", buf, 0xCu);
      }

      captureController = selfCopy->_captureController;
      selfCopy->_captureController = 0;

      v7 = selfCopy->_builder;
      p_super = &v7->super;
      if (v7)
      {
        writeQueue = selfCopy->_writeQueue;
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __37___PUIPosterSnapshotCapture__cleanup__block_invoke;
        v19[3] = &unk_1E7854320;
        v20 = v7;
        [(NSOperationQueue *)writeQueue addBarrierBlock:v19];
        builder = selfCopy->_builder;
        selfCopy->_builder = 0;
      }

      v11 = selfCopy->_writeQueue;
      selfCopy->_writeQueue = 0;

      scene = selfCopy->_scene;
      selfCopy->_scene = 0;

      snapshotLayerForLevel = selfCopy->_snapshotLayerForLevel;
      selfCopy->_snapshotLayerForLevel = 0;

      environmentOverridesForLevelSet = selfCopy->_environmentOverridesForLevelSet;
      selfCopy->_environmentOverridesForLevelSet = 0;

      levelSetEnumerator = selfCopy->_levelSetEnumerator;
      selfCopy->_levelSetEnumerator = 0;

      [(RBSAssertion *)selfCopy->_assertion invalidate];
      assertion = selfCopy->_assertion;
      selfCopy->_assertion = 0;

      v18 = PUILogSnapshotting(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v22 = selfCopy;
        _os_log_impl(&dword_1A8C85000, v18, OS_LOG_TYPE_DEFAULT, "(%p) Cleaned up complete", buf, 0xCu);
      }
    }

    else
    {
      p_super = PUILogSnapshotting(signal);
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        [_PUIPosterSnapshotCapture _cleanup];
      }
    }
  }

  else
  {
    p_super = PUILogSnapshotting(v3);
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      [_PUIPosterSnapshotCapture _cleanup];
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)invalidate
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = PUILogSnapshotting(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1A8C85000, v3, OS_LOG_TYPE_DEFAULT, "(%p) Invalidating _PUIPosterSnapshotCapture...", buf, 0xCu);
  }

  v4 = PFFunctionNameForAddress();
  v5 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
  [(_PUIPosterSnapshotCapture *)self _finishCaptureWithError:v5, 0];
}

- (void)initWithScene:(const char *)a1 captureController:(uint64_t)a2 snapshotDescriptor:outputURL:.cold.1(const char *a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"outputURL"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithScene:(const char *)a1 captureController:(uint64_t)a2 snapshotDescriptor:outputURL:.cold.2(const char *a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"snapshotDescriptor"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithScene:(const char *)a1 captureController:(uint64_t)a2 snapshotDescriptor:outputURL:.cold.3(const char *a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"scene"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_attemptSnapshot:.cold.3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end