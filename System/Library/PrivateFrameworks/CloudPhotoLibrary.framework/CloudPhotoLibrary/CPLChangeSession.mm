@interface CPLChangeSession
+ (id)platformImplementationProtocol;
+ (id)stateDescriptionForState:(unint64_t)state;
- (CPLChangeSession)init;
- (CPLChangeSession)initWithLibraryManager:(id)manager;
- (NSString)description;
- (id)createSessionContext;
- (void)beginSessionWithKnownLibraryVersion:(id)version resetTracker:(id)tracker completionHandler:(id)handler;
- (void)dealloc;
- (void)finalizeWithCompletionHandler:(id)handler;
- (void)tearDownWithCompletionHandler:(id)handler;
@end

@implementation CPLChangeSession

- (NSString)description
{
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  shortDescription = [objc_opt_class() shortDescription];
  v4 = [v2 initWithFormat:@"[%@ session]", shortDescription];

  return v4;
}

- (void)tearDownWithCompletionHandler:(id)handler
{
  v12 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLSessionOSLogDomain_22797();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEBUG, "Tearing down %@", buf, 0xCu);
    }
  }

  platformObject = [(CPLChangeSession *)self platformObject];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__CPLChangeSession_tearDownWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E861AA50;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [platformObject tearDownWithCompletionHandler:v8];
}

uint64_t __50__CPLChangeSession_tearDownWithCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setState:6];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)finalizeWithCompletionHandler:(id)handler
{
  v17 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLSessionOSLogDomain_22797();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = NSStringFromSelector(a2);
      *buf = 138412290;
      selfCopy = v7;
      _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_DEBUG, "%@ called", buf, 0xCu);
    }
  }

  if ([(CPLChangeSession *)self state]== 6)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = __CPLSessionOSLogDomain_22797();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = [objc_opt_class() stateDescriptionForState:{-[CPLChangeSession state](self, "state")}];
        *buf = 138412290;
        selfCopy = v9;
        _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_ERROR, "Trying to begin a session that has already been finalized (state: %@)", buf, 0xCu);
      }
    }

    v10 = [CPLErrors incorrectMachineStateErrorWithReason:@"Trying to begin a session that has already been finalized"];
    handlerCopy[2](handlerCopy, v10);
  }

  else
  {
    if ([(CPLChangeSession *)self state]== 1)
    {
      [(CPLChangeSession *)self setState:5];
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v11 = __CPLSessionOSLogDomain_22797();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        selfCopy = self;
        _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_DEBUG, "%@ finalizing", buf, 0xCu);
      }
    }

    platformObject = [(CPLChangeSession *)self platformObject];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __50__CPLChangeSession_finalizeWithCompletionHandler___block_invoke;
    v13[3] = &unk_1E861B618;
    v13[4] = self;
    v14 = handlerCopy;
    [platformObject finalizeWithCompletionHandler:v13];
  }
}

void __50__CPLChangeSession_finalizeWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(a1 + 32) setState:6];
  [*(*(a1 + 32) + 32) discardCurrentSession];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLSessionOSLogDomain_22797();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 32);
      v6 = 138412546;
      v7 = v5;
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEBUG, "%@ finalized with error %@", &v6, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)beginSessionWithKnownLibraryVersion:(id)version resetTracker:(id)tracker completionHandler:(id)handler
{
  v28 = *MEMORY[0x1E69E9840];
  versionCopy = version;
  trackerCopy = tracker;
  handlerCopy = handler;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v12 = __CPLSessionOSLogDomain_22797();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = NSStringFromSelector(a2);
      *buf = 138412290;
      selfCopy = v13;
      _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_DEBUG, "%@ called", buf, 0xCu);
    }
  }

  if ([(CPLChangeSession *)self state])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v14 = __CPLSessionOSLogDomain_22797();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = [objc_opt_class() stateDescriptionForState:{-[CPLChangeSession state](self, "state")}];
        *buf = 138412290;
        selfCopy = v15;
        _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_ERROR, "Trying to begin a session that has already started (state: %@)", buf, 0xCu);
      }
    }

    createSessionContext = [CPLErrors incorrectMachineStateErrorWithReason:@"Trying to begin a session that has already started"];
    handlerCopy[2](handlerCopy, createSessionContext);
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v17 = __CPLSessionOSLogDomain_22797();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        selfCopy = self;
        v26 = 2112;
        v27 = versionCopy;
        _os_log_impl(&dword_1DC05A000, v17, OS_LOG_TYPE_DEBUG, "%@ starting with known library version %@", buf, 0x16u);
      }
    }

    createSessionContext = [(CPLChangeSession *)self createSessionContext];
    v18 = trackerCopy;
    if (!trackerCopy)
    {
      v18 = +[CPLResetTracker currentTracker];
    }

    [createSessionContext setResetTracker:v18];
    platformObject = [(CPLChangeSession *)self platformObject];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __87__CPLChangeSession_beginSessionWithKnownLibraryVersion_resetTracker_completionHandler___block_invoke;
    v20[3] = &unk_1E861FE88;
    v20[4] = self;
    v23 = trackerCopy == 0;
    trackerCopy = v18;
    v21 = trackerCopy;
    v22 = handlerCopy;
    [platformObject beginSessionWithKnownLibraryVersion:versionCopy context:createSessionContext completionHandler:v20];
  }
}

void __87__CPLChangeSession_beginSessionWithKnownLibraryVersion_resetTracker_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v4 = __CPLSessionOSLogDomain_22797();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v5 = *(a1 + 32);
        v8 = 138412546;
        v9 = v5;
        v10 = 2112;
        v11 = v3;
        _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEBUG, "%@ failed to start: %@", &v8, 0x16u);
      }
    }

    [*(a1 + 32) setState:6];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v6 = __CPLSessionOSLogDomain_22797();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v7 = *(a1 + 32);
        v8 = 138412290;
        v9 = v7;
        _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_DEBUG, "%@ started", &v8, 0xCu);
      }
    }

    [*(a1 + 32) setState:1];
    if (*(a1 + 56) == 1)
    {
      [CPLResetTracker discardTracker:*(a1 + 40)];
    }
  }

  (*(*(a1 + 48) + 16))();
}

- (id)createSessionContext
{
  v3 = objc_alloc_init(CPLChangeSessionContext);
  [(CPLChangeSessionContext *)v3 setEstimatedInitialSizeForLocalLibrary:[(CPLLibraryManager *)self->_libraryManager estimatedInitialSizeForLocalLibrary]];
  [(CPLChangeSessionContext *)v3 setEstimatedInitialAssetCountForLocalLibrary:[(CPLLibraryManager *)self->_libraryManager estimatedInitialAssetCountForLocalLibrary]];

  return v3;
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_state != 6 && (_CPLSilentLogging & 1) == 0)
  {
    v3 = __CPLSessionOSLogDomain_22797();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [objc_opt_class() stateDescriptionForState:self->_state];
      *buf = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_ERROR, "session was not properly finalized. Still in %@ state", buf, 0xCu);
    }
  }

  v5.receiver = self;
  v5.super_class = CPLChangeSession;
  [(CPLChangeSession *)&v5 dealloc];
}

- (CPLChangeSession)initWithLibraryManager:(id)manager
{
  v25 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  v22.receiver = self;
  v22.super_class = CPLChangeSession;
  v7 = [(CPLChangeSession *)&v22 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_libraryManager, manager);
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v11 = [uUIDString copy];
    sessionIdentifier = v8->_sessionIdentifier;
    v8->_sessionIdentifier = v11;

    v13 = +[CPLPlatform currentPlatform];
    v14 = [v13 newPlatformImplementationForObject:v8];
    platformObject = v8->_platformObject;
    v8->_platformObject = v14;

    if (!v8->_platformObject)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v17 = __CPLSessionOSLogDomain_22797();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = objc_opt_class();
          *buf = 138412290;
          v24 = v18;
          v19 = v18;
          _os_log_impl(&dword_1DC05A000, v17, OS_LOG_TYPE_ERROR, "No platform object specified for %@", buf, 0xCu);
        }
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLChangeSession.m"];
      [currentHandler handleFailureInMethod:a2 object:v8 file:v21 lineNumber:75 description:{@"No platform object specified for %@", objc_opt_class()}];

      abort();
    }
  }

  return v8;
}

- (CPLChangeSession)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLChangeSession.m"];
  [currentHandler handleFailureInMethod:a2 object:self file:v5 lineNumber:65 description:@"Should not use -init method but -initWithLibraryManager:"];

  abort();
}

+ (id)platformImplementationProtocol
{
  v2 = [objc_opt_class() description];
  v3 = [v2 stringByAppendingString:@"Implementation"];
  v4 = NSProtocolFromString(v3);

  return v4;
}

+ (id)stateDescriptionForState:(unint64_t)state
{
  if (state > 6)
  {
    return @"UNKNOWN";
  }

  else
  {
    return off_1E861FEA8[state];
  }
}

@end