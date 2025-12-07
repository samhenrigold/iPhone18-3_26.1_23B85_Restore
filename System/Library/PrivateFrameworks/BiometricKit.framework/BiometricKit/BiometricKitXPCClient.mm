@interface BiometricKitXPCClient
+ (id)clientUUID;
+ (void)clientUUID;
+ (void)initialize;
- (BOOL)fileRadarWithLogs:(id)logs withDescription:(id)description;
- (BOOL)isAriadneSignpostsEnabled;
- (BOOL)isFingerOn;
- (BOOL)isXARTAvailable;
- (BiometricKitXPCClient)init;
- (BiometricKitXPCClient)initWithDeviceType:(int64_t)type clientType:(int64_t)clientType;
- (BiometricKitXPCClientDelegate)delegate;
- (id)getCalibrationDataInfo;
- (id)getIdentitiesDatabaseHashForUser:(unsigned int)user;
- (id)getIdentitiesDatabaseUUIDForUser:(unsigned int)user;
- (id)getIdentityFromUUID:(id)d;
- (id)getLogs:(BOOL)logs withDetails:(id *)details;
- (id)getNodeTopologyForIdentity:(id)identity;
- (id)getProtectedConfigurationForUser:(unsigned int)user;
- (id)getSensorInfo;
- (id)getSystemProtectedConfiguration;
- (id)identities:(id)identities;
- (id)pullAlignmentData;
- (id)pullCalibrationData;
- (id)pullCaptureBuffer;
- (id)pullDebugImageData:(BOOL)data rotated:(BOOL)rotated imageWidth:(unsigned int *)width imageHeight:(unsigned int *)height;
- (id)pullMatchPolicyInfoData;
- (int)completeEnrollment;
- (int)connect;
- (int)diagnostics:(int)diagnostics withOptions:(id)options passed:(BOOL *)passed withDetails:(id *)details;
- (int)dropUnlockToken;
- (int)enableBackgroundFdet:(BOOL)fdet;
- (int)enableMatchAutoRetry:(BOOL)retry;
- (int)enrollContinue;
- (int)forceBioLockoutForUser:(unsigned int)user withOptions:(id)options;
- (int)getBioLockoutState:(int64_t *)state forUser:(unsigned int)user;
- (int)getBiometryAvailability:(int64_t *)availability forUser:(unsigned int)user;
- (int)getCountersignedStoreToken:(id *)token;
- (int)getDeviceHardwareState:(unsigned int *)state;
- (int)getExpressModeState:(int64_t *)state forUser:(unsigned int)user;
- (int)getFreeIdentityCount:(unint64_t *)count forUser:(unsigned int)user accessoryGroup:(id)group;
- (int)getLastMatchEvent:(id *)event;
- (int)getPeriocularMatchState:(unsigned int)state state:(int64_t *)a4;
- (int)getPreferencesValue:(id *)value forKey:(id)key;
- (int)initializeConnection;
- (int)isPeriocularEnrollmentSupported:(BOOL *)supported;
- (int)listAccessories:(id *)accessories;
- (int)pauseFaceDetectTimer:(BOOL)timer;
- (int)prewarmCamera:(unint64_t)camera;
- (int)queryIdentityMigrationFailureForUser:(unsigned int)user failed:(BOOL *)failed clear:(BOOL)clear;
- (int)registerDSID:(unint64_t)d withOptions:(id)options;
- (int)registerStoreToken:(id)token;
- (int)resetAppleConnectCounter;
- (int)setPreferencesValue:(id)value forKey:(id)key;
- (int)setTemplate:(id)template forIdentity:(id)identity;
- (int)setUserDSID:(unint64_t)d withOptions:(id)options;
- (int)startNewMatchAttempt;
- (int)suspendEnrollment:(BOOL)enrollment;
- (int64_t)getDeviceState;
- (int64_t)getFreeIdentityCount:(int)count forUser:(unsigned int)user;
- (int64_t)getMaxIdentityCount:(int)count;
- (int64_t)getProvisioningState;
- (int64_t)getSensorCalibrationStatus;
- (void)cancel;
- (void)completeEnrollment;
- (void)connect;
- (void)dealloc;
- (void)detectPresenceWithOptions:(id)options async:(BOOL)async withReply:(id)reply;
- (void)disconnect;
- (void)dropUnlockToken;
- (void)enroll:(int)enroll forUser:(unsigned int)user withOptions:(id)options async:(BOOL)async withReply:(id)reply;
- (void)enrollContinue;
- (void)getCalibrationDataInfo;
- (void)getDeviceState;
- (void)getProvisioningState;
- (void)getSensorCalibrationStatus;
- (void)getSensorInfo;
- (void)getSystemProtectedConfiguration;
- (void)initializeConnection;
- (void)interruptConnection;
- (void)invalidateConnection;
- (void)isAriadneSignpostsEnabled;
- (void)isFingerOn;
- (void)isXARTAvailable;
- (void)logEventOrCode:(unint64_t)code;
- (void)match:(id)match withOptions:(id)options async:(BOOL)async withReply:(id)reply;
- (void)notifyAppIsBackground:(BOOL)background;
- (void)notifyAppIsInactive:(BOOL)inactive;
- (void)pullAlignmentData;
- (void)pullCalibrationData;
- (void)pullCaptureBuffer;
- (void)pullMatchPolicyInfoData;
- (void)registerDelegate:(BOOL)delegate;
- (void)registerDelegateCall:(BOOL)call;
- (void)removeAllIdentitiesForUser:(unsigned int)user withOptions:(id)options async:(BOOL)async withReply:(id)reply;
- (void)removeIdentity:(id)identity withOptions:(id)options async:(BOOL)async withReply:(id)reply;
- (void)removePeriocularTemplatesWithOptions:(id)options async:(BOOL)async withReply:(id)reply;
- (void)resetAppleConnectCounter;
- (void)setDebugImages:(BOOL)images;
- (void)setProtectedConfiguration:(id)configuration forUser:(unsigned int)user withOptions:(id)options async:(BOOL)async withReply:(id)reply;
- (void)setSystemProtectedConfiguration:(id)configuration withOptions:(id)options async:(BOOL)async withReply:(id)reply;
- (void)startNewMatchAttempt;
- (void)timestampEvent:(unint64_t)event absoluteTime:(unint64_t)time;
- (void)updateIdentity:(id)identity withOptions:(id)options async:(BOOL)async withReply:(id)reply;
@end

@implementation BiometricKitXPCClient

- (BiometricKitXPCClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)dealloc
{
  [(BiometricKitXPCClient *)self invalidateConnection];
  v3 = _clientIDs;
  objc_sync_enter(v3);
  if (self->_clientID)
  {
    v4 = _clientIDs;
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
    [v4 removeObject:v5];
  }

  objc_sync_exit(v3);

  v6.receiver = self;
  v6.super_class = BiometricKitXPCClient;
  [(BiometricKitXPCClient *)&v6 dealloc];
}

- (void)invalidateConnection
{
  obj = self;
  objc_sync_enter(obj);
  WeakRetained = objc_loadWeakRetained(&obj->_connection);
  if (WeakRetained)
  {
    connectionInvalidated = obj->_connectionInvalidated;

    if (!connectionInvalidated)
    {
      if (obj->_connectionInitialized)
      {
        if (!obj->_connectionInterrupted)
        {
          [(BiometricKitXPCClient *)obj disconnect];
        }

        obj->_connectionInitialized = 0;
      }

      v4 = objc_loadWeakRetained(&obj->_connection);
      [v4 removeClient:obj];

      obj->_connectionInvalidated = 1;
    }
  }

  objc_sync_exit(obj);
}

- (int)initializeConnection
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_connectionInterrupted)
  {
    selfCopy->_connectionInterrupted = 0;
    selfCopy->_connectionInitialized = 0;
  }

  else if (selfCopy->_connectionInitialized)
  {
LABEL_5:
    v3 = 0;
    goto LABEL_8;
  }

  if (selfCopy->_connectionInvalidated)
  {
    goto LABEL_5;
  }

  connect = [(BiometricKitXPCClient *)selfCopy connect];
  if (connect)
  {
    [(BiometricKitXPCClient *)connect initializeConnection];
    v3 = v7;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
    -[BiometricKitXPCClient registerDelegateCall:](selfCopy, "registerDelegateCall:", [WeakRetained isDelegate]);

    v3 = 0;
    selfCopy->_connectionInitialized = 1;
  }

LABEL_8:
  objc_sync_exit(selfCopy);

  return v3;
}

- (int)connect
{
  v31 = 0;
  v32[0] = &v31;
  v32[1] = 0x2020000000;
  v33 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy_;
  v29 = __Block_byref_object_dispose_;
  v30 = 0;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  if (isInternalBuild(v6, v7))
  {
    v8 = +[BiometricKitXPCClient clientUUID];
    v9 = v26[5];
    v26[5] = v8;
  }

  if (bundleIdentifier)
  {
    [dictionary setObject:bundleIdentifier forKeyedSubscript:@"BKClientBundleIdentifier"];
  }

  v10 = MEMORY[0x1E696AD98];
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  v12 = [v10 numberWithInt:{objc_msgSend(processInfo, "processIdentifier")}];
  [dictionary setObject:v12 forKeyedSubscript:@"BKClientProcessId"];

  processInfo2 = [MEMORY[0x1E696AE30] processInfo];
  processName = [processInfo2 processName];
  [dictionary setObject:processName forKeyedSubscript:@"BKClientProcessName"];

  v15 = [MEMORY[0x1E696AD98] numberWithInteger:self->_clientType];
  [dictionary setObject:v15 forKeyedSubscript:@"BKClientType"];

  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[BiometricKitXPCClient connectionId](self, "connectionId")}];
  [dictionary setObject:v16 forKeyedSubscript:@"BKClientConnectionId"];

  [dictionary setObject:v26[5] forKeyedSubscript:@"BKClientUUID"];
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  xpcConnection = [WeakRetained xpcConnection];

  if (xpcConnection)
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __32__BiometricKitXPCClient_connect__block_invoke;
    v24[3] = &unk_1E8303DE8;
    v24[4] = &v31;
    v19 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v24];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __32__BiometricKitXPCClient_connect__block_invoke_2;
    v23[3] = &unk_1E8303E10;
    v23[4] = &v25;
    v23[5] = &v31;
    [v19 connect:dictionary client:clientID replyBlock:v23];

    v21 = *(v32[0] + 24);
  }

  else
  {
    [(BiometricKitXPCClient *)v32 connect];
    v21 = 1;
  }

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);
  return v21;
}

+ (id)clientUUID
{
  v20 = *MEMORY[0x1E69E9840];
  memset(v19, 0, sizeof(v19));
  v2 = malloc_type_malloc(0x800uLL, 0x80040B8603338uLL);
  if (v2)
  {
    v3 = v2;
    v4 = backtrace(v2, 256);
    if (v4 <= 0)
    {
      +[BiometricKitXPCClient clientUUID];
    }

    else
    {
      v5 = v4;
      if (v4 >= 0x101)
      {
        +[BiometricKitXPCClient clientUUID];
      }

      else
      {
        v6 = v4;
        v7 = malloc_type_malloc(20 * v4, 0x1000040A86A77D5uLL);
        if (v7)
        {
          v8 = v7;
          backtrace_image_offsets(v3, v7, v5);
          memset(dst, 0, sizeof(dst));
          uuid_copy(dst, v8);
          v9 = &v8[20 * v5 + 20];
          v10 = v6 + 1;
          do
          {
            v11 = uuid_compare(v9 - 40, dst);
            v9 -= 20;
            v12 = v10 - 1;
            if (!v11)
            {
              break;
            }
          }

          while (v10-- != 2);
          if (v12 >= v6)
          {
            +[BiometricKitXPCClient clientUUID];
          }

          else
          {
            uuid_copy(v19, v9);
          }

          free(v3);
          v14 = v8;
          goto LABEL_12;
        }

        +[BiometricKitXPCClient clientUUID];
      }
    }

    v14 = v3;
LABEL_12:
    free(v14);
    goto LABEL_13;
  }

  +[BiometricKitXPCClient clientUUID];
LABEL_13:
  v15 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v19];
  uUIDString = [v15 UUIDString];

  return uUIDString;
}

void __32__BiometricKitXPCClient_connect__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a2 == 266)
  {
    if (isInternalBuild(a1, a2))
    {
      if (__osLog)
      {
        v3 = __osLog;
      }

      else
      {
        v3 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v4 = *(*(*(a1 + 32) + 8) + 40);
        v5 = 138412290;
        v6 = v4;
        _os_log_impl(&dword_1C82AD000, v3, OS_LOG_TYPE_ERROR, "Please adopt new BiometricKit entitlements (see rdar://105770455 for additional details), client UUID %@\n", &v5, 0xCu);
      }
    }

    LODWORD(a2) = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
}

- (void)cancel
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)disconnect
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  xpcConnection = [WeakRetained xpcConnection];
  v4 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global];
  [v4 disconnect:-[BiometricKitXPCClient clientID](self replyBlock:{"clientID"), &__block_literal_global_300}];
}

+ (void)initialize
{
  v3 = objc_opt_self();

  if (v3 == self)
  {
    _clientIDs = objc_alloc_init(MEMORY[0x1E695DFA8]);

    MEMORY[0x1EEE66BB8]();
  }
}

- (BiometricKitXPCClient)init
{
  v3 = isTouchIDPlatform();
  if (v3)
  {
    v5 = 1;
  }

  else if (isFaceIDPlatform(v3, v4))
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  return [(BiometricKitXPCClient *)self initWithDeviceType:v5 clientType:1];
}

- (BiometricKitXPCClient)initWithDeviceType:(int64_t)type clientType:(int64_t)clientType
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = [BiometricKitXPCClientConnection connectionWithDeviceType:type];
  if (!v6)
  {
    if (__osLog)
    {
      v7 = __osLog;
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    *buf = 136316162;
    v20 = "0";
    v21 = 2048;
    v22 = 0;
    v23 = 2080;
    v24 = &unk_1C82F52EE;
    v25 = 2080;
    v26 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/BiometricKit/BiometricKitXPCClient.m";
    v27 = 1024;
    v28 = 531;
LABEL_13:
    _os_log_impl(&dword_1C82AD000, v7, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
    goto LABEL_26;
  }

  if ((clientType - 4) <= 0xFFFFFFFFFFFFFFFCLL)
  {
    if (__osLog)
    {
      v7 = __osLog;
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    *buf = 136316162;
    v20 = "0";
    v21 = 2048;
    v22 = 0;
    v23 = 2080;
    v24 = &unk_1C82F52EE;
    v25 = 2080;
    v26 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/BiometricKit/BiometricKitXPCClient.m";
    v27 = 1024;
    v28 = 536;
    goto LABEL_13;
  }

  v18.receiver = self;
  v18.super_class = BiometricKitXPCClient;
  self = [(BiometricKitXPCClient *)&v18 init];
  if (!self)
  {
    [BiometricKitXPCClient initWithDeviceType:clientType:];
LABEL_30:
    self = self;
    selfCopy = self;
    goto LABEL_27;
  }

  v8 = _clientIDs;
  objc_sync_enter(v8);
  v9 = _clientIDIndex;
  v10 = _clientIDIndex;
  while (!v10)
  {
LABEL_19:
    if (++v10 == v9)
    {
      if (__osLog)
      {
        v13 = __osLog;
      }

      else
      {
        v13 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v20 = "0";
        v21 = 2048;
        v22 = 0;
        v23 = 2080;
        v24 = &unk_1C82F52EE;
        v25 = 2080;
        v26 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/BiometricKit/BiometricKitXPCClient.m";
        v27 = 1024;
        v28 = 549;
        _os_log_impl(&dword_1C82AD000, v13, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
      }

      objc_sync_exit(v8);

      goto LABEL_26;
    }
  }

  v11 = _clientIDs;
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v10];
  LODWORD(v11) = [v11 containsObject:v12];

  if (v11)
  {
    v9 = _clientIDIndex;
    goto LABEL_19;
  }

  v16 = _clientIDs;
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v10];
  [v16 addObject:v17];

  self->_clientID = v10;
  _clientIDIndex = v10 + 1;
  objc_sync_exit(v8);

  self->_connectionID = arc4random();
  if ([v6 addClient:self])
  {
    objc_storeWeak(&self->_connection, v6);
    self->_clientType = clientType;
    goto LABEL_30;
  }

  if (__osLog)
  {
    v7 = __osLog;
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 136316162;
    v20 = "0";
    v21 = 2048;
    v22 = 0;
    v23 = 2080;
    v24 = &unk_1C82F52EE;
    v25 = 2080;
    v26 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/BiometricKit/BiometricKitXPCClient.m";
    v27 = 1024;
    v28 = 562;
    goto LABEL_13;
  }

LABEL_26:
  selfCopy = 0;
LABEL_27:

  return selfCopy;
}

- (void)interruptConnection
{
  v10 = *MEMORY[0x1E69E9840];
  if (__osLog)
  {
    v3 = __osLog;
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    *buf = 134217984;
    connectionId = [(BiometricKitXPCClient *)self connectionId];
    _os_log_impl(&dword_1C82AD000, v4, OS_LOG_TYPE_DEFAULT, "BiometricKitXPCClient::interruptConnection (_cid:%lu)\n", buf, 0xCu);
  }

  self->_connectionInterrupted = 1;
  objc_initWeak(buf, self);
  v5 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__BiometricKitXPCClient_interruptConnection__block_invoke;
  block[3] = &unk_1E8303C80;
  objc_copyWeak(&v7, buf);
  dispatch_async(v5, block);

  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

void __44__BiometricKitXPCClient_interruptConnection__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(WeakRetained + 6);
    [v5 connectionInterrupted];
  }

  objc_autoreleasePoolPop(v2);
}

void *__32__BiometricKitXPCClient_connect__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 code];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (void)registerDelegateCall:(BOOL)call
{
  callCopy = call;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  xpcConnection = [WeakRetained xpcConnection];
  v6 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_302];
  [v6 registerDelegate:callCopy client:-[BiometricKitXPCClient clientID](self replyBlock:{"clientID"), &__block_literal_global_304}];
}

- (void)registerDelegate:(BOOL)delegate
{
  if (self->_connectionInitialized)
  {

    [(BiometricKitXPCClient *)self registerDelegateCall:delegate];
  }

  else if (delegate)
  {
    v4 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __42__BiometricKitXPCClient_registerDelegate___block_invoke;
    block[3] = &unk_1E8303E78;
    block[4] = self;
    dispatch_async(v4, block);
  }
}

void __42__BiometricKitXPCClient_registerDelegate___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) initializeConnection];

  objc_autoreleasePoolPop(v2);
}

- (void)notifyAppIsBackground:(BOOL)background
{
  backgroundCopy = background;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  xpcConnection = [WeakRetained xpcConnection];
  v6 = [xpcConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_306];
  [v6 notifyAppIsBackground:backgroundCopy client:{-[BiometricKitXPCClient clientID](self, "clientID")}];
}

- (void)notifyAppIsInactive:(BOOL)inactive
{
  inactiveCopy = inactive;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  xpcConnection = [WeakRetained xpcConnection];
  v6 = [xpcConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_308];
  [v6 notifyAppIsInactive:inactiveCopy client:{-[BiometricKitXPCClient clientID](self, "clientID")}];
}

- (void)enroll:(int)enroll forUser:(unsigned int)user withOptions:(id)options async:(BOOL)async withReply:(id)reply
{
  asyncCopy = async;
  v9 = *&user;
  v10 = *&enroll;
  optionsCopy = options;
  replyCopy = reply;
  if ([(BiometricKitXPCClient *)self initializeConnection])
  {
    [BiometricKitXPCClient enroll:forUser:withOptions:async:withReply:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    if (asyncCopy)
    {
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __68__BiometricKitXPCClient_enroll_forUser_withOptions_async_withReply___block_invoke;
      v29[3] = &unk_1E8303EA0;
      v16 = replyCopy;
      v30 = v16;
      v17 = [xpcConnection remoteObjectProxyWithErrorHandler:v29];
      clientID = [(BiometricKitXPCClient *)self clientID];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __68__BiometricKitXPCClient_enroll_forUser_withOptions_async_withReply___block_invoke_2;
      v27[3] = &unk_1E8303EC8;
      v28 = v16;
      [v17 enroll:v10 user:v9 options:optionsCopy async:1 client:clientID replyBlock:v27];

      v19 = v30;
    }

    else
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __68__BiometricKitXPCClient_enroll_forUser_withOptions_async_withReply___block_invoke_3;
      v25[3] = &unk_1E8303EA0;
      v20 = replyCopy;
      v26 = v20;
      v21 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v25];
      clientID2 = [(BiometricKitXPCClient *)self clientID];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __68__BiometricKitXPCClient_enroll_forUser_withOptions_async_withReply___block_invoke_4;
      v23[3] = &unk_1E8303EC8;
      v24 = v20;
      [v21 enroll:v10 user:v9 options:optionsCopy async:0 client:clientID2 replyBlock:v23];

      v19 = v26;
    }
  }
}

uint64_t __68__BiometricKitXPCClient_enroll_forUser_withOptions_async_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 code];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

uint64_t __68__BiometricKitXPCClient_enroll_forUser_withOptions_async_withReply___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 code];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (void)match:(id)match withOptions:(id)options async:(BOOL)async withReply:(id)reply
{
  asyncCopy = async;
  matchCopy = match;
  optionsCopy = options;
  replyCopy = reply;
  if ([(BiometricKitXPCClient *)self initializeConnection])
  {
    [BiometricKitXPCClient match:withOptions:async:withReply:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    if (asyncCopy)
    {
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __59__BiometricKitXPCClient_match_withOptions_async_withReply___block_invoke;
      v28[3] = &unk_1E8303EA0;
      v15 = replyCopy;
      v29 = v15;
      v16 = [xpcConnection remoteObjectProxyWithErrorHandler:v28];
      clientID = [(BiometricKitXPCClient *)self clientID];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __59__BiometricKitXPCClient_match_withOptions_async_withReply___block_invoke_2;
      v26[3] = &unk_1E8303EC8;
      v27 = v15;
      [v16 match:matchCopy options:optionsCopy async:1 client:clientID replyBlock:v26];

      v18 = v29;
    }

    else
    {
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __59__BiometricKitXPCClient_match_withOptions_async_withReply___block_invoke_3;
      v24[3] = &unk_1E8303EA0;
      v19 = replyCopy;
      v25 = v19;
      v20 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v24];
      clientID2 = [(BiometricKitXPCClient *)self clientID];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __59__BiometricKitXPCClient_match_withOptions_async_withReply___block_invoke_4;
      v22[3] = &unk_1E8303EC8;
      v23 = v19;
      [v20 match:matchCopy options:optionsCopy async:0 client:clientID2 replyBlock:v22];

      v18 = v25;
    }
  }
}

uint64_t __59__BiometricKitXPCClient_match_withOptions_async_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 code];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

uint64_t __59__BiometricKitXPCClient_match_withOptions_async_withReply___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 code];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (void)detectPresenceWithOptions:(id)options async:(BOOL)async withReply:(id)reply
{
  asyncCopy = async;
  optionsCopy = options;
  replyCopy = reply;
  if ([(BiometricKitXPCClient *)self initializeConnection])
  {
    [BiometricKitXPCClient detectPresenceWithOptions:async:withReply:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    if (asyncCopy)
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __67__BiometricKitXPCClient_detectPresenceWithOptions_async_withReply___block_invoke;
      v25[3] = &unk_1E8303EA0;
      v12 = replyCopy;
      v26 = v12;
      v13 = [xpcConnection remoteObjectProxyWithErrorHandler:v25];
      clientID = [(BiometricKitXPCClient *)self clientID];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __67__BiometricKitXPCClient_detectPresenceWithOptions_async_withReply___block_invoke_2;
      v23[3] = &unk_1E8303EC8;
      v24 = v12;
      [v13 detectPresenceWithOptions:optionsCopy async:1 client:clientID replyBlock:v23];

      v15 = v26;
    }

    else
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __67__BiometricKitXPCClient_detectPresenceWithOptions_async_withReply___block_invoke_3;
      v21[3] = &unk_1E8303EA0;
      v16 = replyCopy;
      v22 = v16;
      v17 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v21];
      clientID2 = [(BiometricKitXPCClient *)self clientID];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __67__BiometricKitXPCClient_detectPresenceWithOptions_async_withReply___block_invoke_4;
      v19[3] = &unk_1E8303EC8;
      v20 = v16;
      [v17 detectPresenceWithOptions:optionsCopy async:0 client:clientID2 replyBlock:v19];

      v15 = v22;
    }
  }
}

uint64_t __67__BiometricKitXPCClient_detectPresenceWithOptions_async_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 code];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

uint64_t __67__BiometricKitXPCClient_detectPresenceWithOptions_async_withReply___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 code];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (void)updateIdentity:(id)identity withOptions:(id)options async:(BOOL)async withReply:(id)reply
{
  asyncCopy = async;
  identityCopy = identity;
  optionsCopy = options;
  replyCopy = reply;
  if ([(BiometricKitXPCClient *)self initializeConnection])
  {
    [BiometricKitXPCClient updateIdentity:withOptions:async:withReply:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    if (asyncCopy)
    {
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __68__BiometricKitXPCClient_updateIdentity_withOptions_async_withReply___block_invoke;
      v28[3] = &unk_1E8303EA0;
      v15 = replyCopy;
      v29 = v15;
      v16 = [xpcConnection remoteObjectProxyWithErrorHandler:v28];
      clientID = [(BiometricKitXPCClient *)self clientID];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __68__BiometricKitXPCClient_updateIdentity_withOptions_async_withReply___block_invoke_2;
      v26[3] = &unk_1E8303EC8;
      v27 = v15;
      [v16 updateIdentity:identityCopy options:optionsCopy async:1 client:clientID replyBlock:v26];

      v18 = v29;
    }

    else
    {
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __68__BiometricKitXPCClient_updateIdentity_withOptions_async_withReply___block_invoke_3;
      v24[3] = &unk_1E8303EA0;
      v19 = replyCopy;
      v25 = v19;
      v20 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v24];
      clientID2 = [(BiometricKitXPCClient *)self clientID];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __68__BiometricKitXPCClient_updateIdentity_withOptions_async_withReply___block_invoke_4;
      v22[3] = &unk_1E8303EC8;
      v23 = v19;
      [v20 updateIdentity:identityCopy options:optionsCopy async:0 client:clientID2 replyBlock:v22];

      v18 = v25;
    }
  }
}

uint64_t __68__BiometricKitXPCClient_updateIdentity_withOptions_async_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 code];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

uint64_t __68__BiometricKitXPCClient_updateIdentity_withOptions_async_withReply___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 code];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (void)removeIdentity:(id)identity withOptions:(id)options async:(BOOL)async withReply:(id)reply
{
  asyncCopy = async;
  identityCopy = identity;
  optionsCopy = options;
  replyCopy = reply;
  if ([(BiometricKitXPCClient *)self initializeConnection])
  {
    [BiometricKitXPCClient removeIdentity:withOptions:async:withReply:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    if (asyncCopy)
    {
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __68__BiometricKitXPCClient_removeIdentity_withOptions_async_withReply___block_invoke;
      v28[3] = &unk_1E8303EA0;
      v15 = replyCopy;
      v29 = v15;
      v16 = [xpcConnection remoteObjectProxyWithErrorHandler:v28];
      clientID = [(BiometricKitXPCClient *)self clientID];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __68__BiometricKitXPCClient_removeIdentity_withOptions_async_withReply___block_invoke_2;
      v26[3] = &unk_1E8303EC8;
      v27 = v15;
      [v16 removeIdentity:identityCopy options:optionsCopy async:1 client:clientID replyBlock:v26];

      v18 = v29;
    }

    else
    {
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __68__BiometricKitXPCClient_removeIdentity_withOptions_async_withReply___block_invoke_3;
      v24[3] = &unk_1E8303EA0;
      v19 = replyCopy;
      v25 = v19;
      v20 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v24];
      clientID2 = [(BiometricKitXPCClient *)self clientID];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __68__BiometricKitXPCClient_removeIdentity_withOptions_async_withReply___block_invoke_4;
      v22[3] = &unk_1E8303EC8;
      v23 = v19;
      [v20 removeIdentity:identityCopy options:optionsCopy async:0 client:clientID2 replyBlock:v22];

      v18 = v25;
    }
  }
}

uint64_t __68__BiometricKitXPCClient_removeIdentity_withOptions_async_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 code];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

uint64_t __68__BiometricKitXPCClient_removeIdentity_withOptions_async_withReply___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 code];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (void)removeAllIdentitiesForUser:(unsigned int)user withOptions:(id)options async:(BOOL)async withReply:(id)reply
{
  asyncCopy = async;
  v8 = *&user;
  optionsCopy = options;
  replyCopy = reply;
  if ([(BiometricKitXPCClient *)self initializeConnection])
  {
    [BiometricKitXPCClient removeAllIdentitiesForUser:withOptions:async:withReply:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    if (asyncCopy)
    {
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __80__BiometricKitXPCClient_removeAllIdentitiesForUser_withOptions_async_withReply___block_invoke;
      v27[3] = &unk_1E8303EA0;
      v14 = replyCopy;
      v28 = v14;
      v15 = [xpcConnection remoteObjectProxyWithErrorHandler:v27];
      clientID = [(BiometricKitXPCClient *)self clientID];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __80__BiometricKitXPCClient_removeAllIdentitiesForUser_withOptions_async_withReply___block_invoke_2;
      v25[3] = &unk_1E8303EC8;
      v26 = v14;
      [v15 removeAllIdentitiesForUser:v8 options:optionsCopy async:1 client:clientID replyBlock:v25];

      v17 = v28;
    }

    else
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __80__BiometricKitXPCClient_removeAllIdentitiesForUser_withOptions_async_withReply___block_invoke_3;
      v23[3] = &unk_1E8303EA0;
      v18 = replyCopy;
      v24 = v18;
      v19 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v23];
      clientID2 = [(BiometricKitXPCClient *)self clientID];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __80__BiometricKitXPCClient_removeAllIdentitiesForUser_withOptions_async_withReply___block_invoke_4;
      v21[3] = &unk_1E8303EC8;
      v22 = v18;
      [v19 removeAllIdentitiesForUser:v8 options:optionsCopy async:0 client:clientID2 replyBlock:v21];

      v17 = v24;
    }
  }
}

uint64_t __80__BiometricKitXPCClient_removeAllIdentitiesForUser_withOptions_async_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 code];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

uint64_t __80__BiometricKitXPCClient_removeAllIdentitiesForUser_withOptions_async_withReply___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 code];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (id)getIdentityFromUUID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  if ([(BiometricKitXPCClient *)self initializeConnection])
  {
    [BiometricKitXPCClient getIdentityFromUUID:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v7 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_316];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __45__BiometricKitXPCClient_getIdentityFromUUID___block_invoke_2;
    v11[3] = &unk_1E8303EF0;
    v11[4] = &v12;
    [v7 getIdentityFromUUID:dCopy client:clientID replyBlock:v11];
  }

  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

- (id)identities:(id)identities
{
  identitiesCopy = identities;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  if ([(BiometricKitXPCClient *)self initializeConnection])
  {
    [BiometricKitXPCClient identities:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v7 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_319];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __36__BiometricKitXPCClient_identities___block_invoke_2;
    v11[3] = &unk_1E8303F18;
    v11[4] = &v12;
    [v7 identities:identitiesCopy client:clientID replyBlock:v11];
  }

  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

- (int64_t)getMaxIdentityCount:(int)count
{
  v3 = *&count;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  if ([(BiometricKitXPCClient *)self initializeConnection])
  {
    [BiometricKitXPCClient getMaxIdentityCount:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v7 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_322];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __45__BiometricKitXPCClient_getMaxIdentityCount___block_invoke_2;
    v11[3] = &unk_1E8303F40;
    v11[4] = &v12;
    [v7 getMaxIdentityCount:v3 client:clientID replyBlock:v11];
  }

  v9 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v9;
}

- (int64_t)getFreeIdentityCount:(int)count forUser:(unsigned int)user
{
  v4 = *&user;
  v5 = *&count;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  if ([(BiometricKitXPCClient *)self initializeConnection])
  {
    [BiometricKitXPCClient getFreeIdentityCount:forUser:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v9 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_325];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __54__BiometricKitXPCClient_getFreeIdentityCount_forUser___block_invoke_2;
    v13[3] = &unk_1E8303F40;
    v13[4] = &v14;
    [v9 getFreeIdentityCount:v5 user:v4 client:clientID replyBlock:v13];
  }

  v11 = v15[3];
  _Block_object_dispose(&v14, 8);
  return v11;
}

- (int)enrollContinue
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  initializeConnection = [(BiometricKitXPCClient *)self initializeConnection];
  *(v13 + 6) = initializeConnection;
  if (initializeConnection)
  {
    [BiometricKitXPCClient enrollContinue];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __39__BiometricKitXPCClient_enrollContinue__block_invoke;
    v11[3] = &unk_1E8303DE8;
    v11[4] = &v12;
    v6 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v11];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __39__BiometricKitXPCClient_enrollContinue__block_invoke_2;
    v10[3] = &unk_1E8303F68;
    v10[4] = &v12;
    [v6 enrollContinue:clientID replyBlock:v10];
  }

  v8 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);
  return v8;
}

void *__39__BiometricKitXPCClient_enrollContinue__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 code];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (id)pullAlignmentData
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  if ([(BiometricKitXPCClient *)self initializeConnection])
  {
    [BiometricKitXPCClient pullAlignmentData];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v5 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_327];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __42__BiometricKitXPCClient_pullAlignmentData__block_invoke_2;
    v9[3] = &unk_1E8303F90;
    v9[4] = &v10;
    [v5 pullAlignmentData:clientID replyBlock:v9];
  }

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (id)pullMatchPolicyInfoData
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  if ([(BiometricKitXPCClient *)self initializeConnection])
  {
    [BiometricKitXPCClient pullMatchPolicyInfoData];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v5 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_330];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __48__BiometricKitXPCClient_pullMatchPolicyInfoData__block_invoke_2;
    v9[3] = &unk_1E8303F90;
    v9[4] = &v10;
    [v5 pullMatchPolicyInfoData:clientID replyBlock:v9];
  }

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (id)getNodeTopologyForIdentity:(id)identity
{
  identityCopy = identity;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  if ([(BiometricKitXPCClient *)self initializeConnection])
  {
    [BiometricKitXPCClient getNodeTopologyForIdentity:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v7 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_332];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __52__BiometricKitXPCClient_getNodeTopologyForIdentity___block_invoke_2;
    v11[3] = &unk_1E8303F90;
    v11[4] = &v12;
    [v7 getNodeTopologyForIdentity:identityCopy client:clientID replyBlock:v11];
  }

  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

- (id)getProtectedConfigurationForUser:(unsigned int)user
{
  v3 = *&user;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  if ([(BiometricKitXPCClient *)self initializeConnection])
  {
    [BiometricKitXPCClient getProtectedConfigurationForUser:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v7 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_334];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __58__BiometricKitXPCClient_getProtectedConfigurationForUser___block_invoke_2;
    v11[3] = &unk_1E8303FB8;
    v11[4] = &v12;
    [v7 getProtectedConfigurationForUser:v3 client:clientID replyBlock:v11];
  }

  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

- (id)getSystemProtectedConfiguration
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  if ([(BiometricKitXPCClient *)self initializeConnection])
  {
    [BiometricKitXPCClient getSystemProtectedConfiguration];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v5 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_337];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __56__BiometricKitXPCClient_getSystemProtectedConfiguration__block_invoke_2;
    v9[3] = &unk_1E8303FB8;
    v9[4] = &v10;
    [v5 getSystemProtectedConfiguration:clientID replyBlock:v9];
  }

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (void)setProtectedConfiguration:(id)configuration forUser:(unsigned int)user withOptions:(id)options async:(BOOL)async withReply:(id)reply
{
  asyncCopy = async;
  v10 = *&user;
  configurationCopy = configuration;
  optionsCopy = options;
  replyCopy = reply;
  if ([(BiometricKitXPCClient *)self initializeConnection])
  {
    [BiometricKitXPCClient setProtectedConfiguration:forUser:withOptions:async:withReply:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    if (asyncCopy)
    {
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __87__BiometricKitXPCClient_setProtectedConfiguration_forUser_withOptions_async_withReply___block_invoke;
      v30[3] = &unk_1E8303EA0;
      v17 = replyCopy;
      v31 = v17;
      v18 = [xpcConnection remoteObjectProxyWithErrorHandler:v30];
      clientID = [(BiometricKitXPCClient *)self clientID];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __87__BiometricKitXPCClient_setProtectedConfiguration_forUser_withOptions_async_withReply___block_invoke_2;
      v28[3] = &unk_1E8303EC8;
      v29 = v17;
      [v18 setProtectedConfiguration:configurationCopy user:v10 options:optionsCopy async:1 client:clientID replyBlock:v28];

      v20 = v31;
    }

    else
    {
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __87__BiometricKitXPCClient_setProtectedConfiguration_forUser_withOptions_async_withReply___block_invoke_3;
      v26[3] = &unk_1E8303EA0;
      v21 = replyCopy;
      v27 = v21;
      v22 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v26];
      clientID2 = [(BiometricKitXPCClient *)self clientID];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __87__BiometricKitXPCClient_setProtectedConfiguration_forUser_withOptions_async_withReply___block_invoke_4;
      v24[3] = &unk_1E8303EC8;
      v25 = v21;
      [v22 setProtectedConfiguration:configurationCopy user:v10 options:optionsCopy async:0 client:clientID2 replyBlock:v24];

      v20 = v27;
    }
  }
}

uint64_t __87__BiometricKitXPCClient_setProtectedConfiguration_forUser_withOptions_async_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 code];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

uint64_t __87__BiometricKitXPCClient_setProtectedConfiguration_forUser_withOptions_async_withReply___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 code];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (void)setSystemProtectedConfiguration:(id)configuration withOptions:(id)options async:(BOOL)async withReply:(id)reply
{
  asyncCopy = async;
  configurationCopy = configuration;
  optionsCopy = options;
  replyCopy = reply;
  if ([(BiometricKitXPCClient *)self initializeConnection])
  {
    [BiometricKitXPCClient setSystemProtectedConfiguration:withOptions:async:withReply:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    if (asyncCopy)
    {
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __85__BiometricKitXPCClient_setSystemProtectedConfiguration_withOptions_async_withReply___block_invoke;
      v28[3] = &unk_1E8303EA0;
      v15 = replyCopy;
      v29 = v15;
      v16 = [xpcConnection remoteObjectProxyWithErrorHandler:v28];
      clientID = [(BiometricKitXPCClient *)self clientID];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __85__BiometricKitXPCClient_setSystemProtectedConfiguration_withOptions_async_withReply___block_invoke_2;
      v26[3] = &unk_1E8303EC8;
      v27 = v15;
      [v16 setSystemProtectedConfiguration:configurationCopy options:optionsCopy async:1 client:clientID replyBlock:v26];

      v18 = v29;
    }

    else
    {
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __85__BiometricKitXPCClient_setSystemProtectedConfiguration_withOptions_async_withReply___block_invoke_3;
      v24[3] = &unk_1E8303EA0;
      v19 = replyCopy;
      v25 = v19;
      v20 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v24];
      clientID2 = [(BiometricKitXPCClient *)self clientID];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __85__BiometricKitXPCClient_setSystemProtectedConfiguration_withOptions_async_withReply___block_invoke_4;
      v22[3] = &unk_1E8303EC8;
      v23 = v19;
      [v20 setSystemProtectedConfiguration:configurationCopy options:optionsCopy async:0 client:clientID2 replyBlock:v22];

      v18 = v25;
    }
  }
}

uint64_t __85__BiometricKitXPCClient_setSystemProtectedConfiguration_withOptions_async_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 code];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

uint64_t __85__BiometricKitXPCClient_setSystemProtectedConfiguration_withOptions_async_withReply___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 code];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (int)getBioLockoutState:(int64_t *)state forUser:(unsigned int)user
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if (state)
  {
    v4 = *&user;
    initializeConnection = [(BiometricKitXPCClient *)self initializeConnection];
    *(v17 + 6) = initializeConnection;
    if (initializeConnection)
    {
      [BiometricKitXPCClient getBioLockoutState:forUser:];
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_connection);
      xpcConnection = [WeakRetained xpcConnection];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __52__BiometricKitXPCClient_getBioLockoutState_forUser___block_invoke;
      v15[3] = &unk_1E8303DE8;
      v15[4] = &v16;
      v10 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
      clientID = [(BiometricKitXPCClient *)self clientID];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __52__BiometricKitXPCClient_getBioLockoutState_forUser___block_invoke_2;
      v14[3] = &unk_1E8303FE0;
      v14[4] = &v16;
      v14[5] = state;
      [v10 getBioLockoutStateForUser:v4 client:clientID replyBlock:v14];
    }
  }

  else
  {
    [BiometricKitXPCClient getBioLockoutState:forUser:];
  }

  v12 = *(v17 + 6);
  _Block_object_dispose(&v16, 8);
  return v12;
}

void *__52__BiometricKitXPCClient_getBioLockoutState_forUser___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 code];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __52__BiometricKitXPCClient_getBioLockoutState_forUser___block_invoke_2(uint64_t result, int a2, uint64_t a3)
{
  v3 = *(result + 40);
  *(*(*(result + 32) + 8) + 24) = a2;
  *v3 = a3;
  return result;
}

- (int)getExpressModeState:(int64_t *)state forUser:(unsigned int)user
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if (state)
  {
    v4 = *&user;
    initializeConnection = [(BiometricKitXPCClient *)self initializeConnection];
    *(v17 + 6) = initializeConnection;
    if (initializeConnection)
    {
      [BiometricKitXPCClient getExpressModeState:forUser:];
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_connection);
      xpcConnection = [WeakRetained xpcConnection];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __53__BiometricKitXPCClient_getExpressModeState_forUser___block_invoke;
      v15[3] = &unk_1E8303DE8;
      v15[4] = &v16;
      v10 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
      clientID = [(BiometricKitXPCClient *)self clientID];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __53__BiometricKitXPCClient_getExpressModeState_forUser___block_invoke_2;
      v14[3] = &unk_1E8303FE0;
      v14[4] = &v16;
      v14[5] = state;
      [v10 getExpressModeStateForUser:v4 client:clientID replyBlock:v14];
    }
  }

  else
  {
    [BiometricKitXPCClient getExpressModeState:forUser:];
  }

  v12 = *(v17 + 6);
  _Block_object_dispose(&v16, 8);
  return v12;
}

void *__53__BiometricKitXPCClient_getExpressModeState_forUser___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 code];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __53__BiometricKitXPCClient_getExpressModeState_forUser___block_invoke_2(uint64_t result, int a2, uint64_t a3)
{
  v3 = *(result + 40);
  *(*(*(result + 32) + 8) + 24) = a2;
  *v3 = a3;
  return result;
}

- (int64_t)getProvisioningState
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if ([(BiometricKitXPCClient *)self initializeConnection])
  {
    [BiometricKitXPCClient getProvisioningState];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v5 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_341];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __45__BiometricKitXPCClient_getProvisioningState__block_invoke_2;
    v9[3] = &unk_1E8303F40;
    v9[4] = &v10;
    [v5 getProvisioningState:clientID replyBlock:v9];
  }

  v7 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v7;
}

- (int)dropUnlockToken
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  initializeConnection = [(BiometricKitXPCClient *)self initializeConnection];
  *(v13 + 6) = initializeConnection;
  if (initializeConnection)
  {
    [BiometricKitXPCClient dropUnlockToken];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __40__BiometricKitXPCClient_dropUnlockToken__block_invoke;
    v11[3] = &unk_1E8303DE8;
    v11[4] = &v12;
    v6 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v11];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __40__BiometricKitXPCClient_dropUnlockToken__block_invoke_2;
    v10[3] = &unk_1E8303F68;
    v10[4] = &v12;
    [v6 dropUnlockToken:clientID replyBlock:v10];
  }

  v8 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);
  return v8;
}

void *__40__BiometricKitXPCClient_dropUnlockToken__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 code];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (int)forceBioLockoutForUser:(unsigned int)user withOptions:(id)options
{
  v4 = *&user;
  optionsCopy = options;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  initializeConnection = [(BiometricKitXPCClient *)self initializeConnection];
  *(v17 + 6) = initializeConnection;
  if (initializeConnection)
  {
    [BiometricKitXPCClient forceBioLockoutForUser:withOptions:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __60__BiometricKitXPCClient_forceBioLockoutForUser_withOptions___block_invoke;
    v15[3] = &unk_1E8303DE8;
    v15[4] = &v16;
    v10 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __60__BiometricKitXPCClient_forceBioLockoutForUser_withOptions___block_invoke_2;
    v14[3] = &unk_1E8303F68;
    v14[4] = &v16;
    [v10 forceBioLockoutForUser:v4 options:optionsCopy client:clientID replyBlock:v14];
  }

  v12 = *(v17 + 6);
  _Block_object_dispose(&v16, 8);

  return v12;
}

void *__60__BiometricKitXPCClient_forceBioLockoutForUser_withOptions___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 code];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (int)registerDSID:(unint64_t)d withOptions:(id)options
{
  optionsCopy = options;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  initializeConnection = [(BiometricKitXPCClient *)self initializeConnection];
  *(v17 + 6) = initializeConnection;
  if (initializeConnection)
  {
    [BiometricKitXPCClient registerDSID:withOptions:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __50__BiometricKitXPCClient_registerDSID_withOptions___block_invoke;
    v15[3] = &unk_1E8303DE8;
    v15[4] = &v16;
    v10 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __50__BiometricKitXPCClient_registerDSID_withOptions___block_invoke_2;
    v14[3] = &unk_1E8303F68;
    v14[4] = &v16;
    [v10 registerDSID:d options:optionsCopy client:clientID replyBlock:v14];
  }

  v12 = *(v17 + 6);
  _Block_object_dispose(&v16, 8);

  return v12;
}

void *__50__BiometricKitXPCClient_registerDSID_withOptions___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 code];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (int)resetAppleConnectCounter
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  initializeConnection = [(BiometricKitXPCClient *)self initializeConnection];
  *(v13 + 6) = initializeConnection;
  if (initializeConnection)
  {
    [BiometricKitXPCClient resetAppleConnectCounter];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __49__BiometricKitXPCClient_resetAppleConnectCounter__block_invoke;
    v11[3] = &unk_1E8303DE8;
    v11[4] = &v12;
    v6 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v11];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __49__BiometricKitXPCClient_resetAppleConnectCounter__block_invoke_2;
    v10[3] = &unk_1E8303F68;
    v10[4] = &v12;
    [v6 resetAppleConnectCounter:clientID replyBlock:v10];
  }

  v8 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);
  return v8;
}

void *__49__BiometricKitXPCClient_resetAppleConnectCounter__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 code];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (int)registerStoreToken:(id)token
{
  tokenCopy = token;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  initializeConnection = [(BiometricKitXPCClient *)self initializeConnection];
  *(v15 + 6) = initializeConnection;
  if (initializeConnection)
  {
    [BiometricKitXPCClient registerStoreToken:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __44__BiometricKitXPCClient_registerStoreToken___block_invoke;
    v13[3] = &unk_1E8303DE8;
    v13[4] = &v14;
    v8 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v13];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __44__BiometricKitXPCClient_registerStoreToken___block_invoke_2;
    v12[3] = &unk_1E8303F68;
    v12[4] = &v14;
    [v8 registerStoreToken:tokenCopy client:clientID replyBlock:v12];
  }

  v10 = *(v15 + 6);
  _Block_object_dispose(&v14, 8);

  return v10;
}

void *__44__BiometricKitXPCClient_registerStoreToken___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 code];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (int)getCountersignedStoreToken:(id *)token
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  initializeConnection = [(BiometricKitXPCClient *)self initializeConnection];
  *(v21 + 6) = initializeConnection;
  if (initializeConnection)
  {
    [BiometricKitXPCClient getCountersignedStoreToken:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __52__BiometricKitXPCClient_getCountersignedStoreToken___block_invoke;
    v13[3] = &unk_1E8303DE8;
    v13[4] = &v20;
    v8 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v13];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __52__BiometricKitXPCClient_getCountersignedStoreToken___block_invoke_2;
    v12[3] = &unk_1E8304008;
    v12[4] = &v20;
    v12[5] = &v14;
    [v8 getCountersignedStoreToken:clientID replyBlock:v12];

    if (token)
    {
      *token = v15[5];
    }
  }

  v10 = *(v21 + 6);
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
  return v10;
}

void *__52__BiometricKitXPCClient_getCountersignedStoreToken___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 code];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (id)getIdentitiesDatabaseUUIDForUser:(unsigned int)user
{
  v3 = *&user;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  if ([(BiometricKitXPCClient *)self initializeConnection])
  {
    [BiometricKitXPCClient getIdentitiesDatabaseUUIDForUser:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v7 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_344];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __58__BiometricKitXPCClient_getIdentitiesDatabaseUUIDForUser___block_invoke_2;
    v11[3] = &unk_1E8304030;
    v11[4] = &v12;
    [v7 getIdentitiesDatabaseUUIDForUser:v3 client:clientID replyBlock:v11];
  }

  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

- (id)getIdentitiesDatabaseHashForUser:(unsigned int)user
{
  v3 = *&user;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  if ([(BiometricKitXPCClient *)self initializeConnection])
  {
    [BiometricKitXPCClient getIdentitiesDatabaseHashForUser:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v7 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_347];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __58__BiometricKitXPCClient_getIdentitiesDatabaseHashForUser___block_invoke_2;
    v11[3] = &unk_1E8303F90;
    v11[4] = &v12;
    [v7 getIdentitiesDatabaseHashForUser:v3 client:clientID replyBlock:v11];
  }

  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

- (int)diagnostics:(int)diagnostics withOptions:(id)options passed:(BOOL *)passed withDetails:(id *)details
{
  v8 = *&diagnostics;
  optionsCopy = options;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  initializeConnection = [(BiometricKitXPCClient *)self initializeConnection];
  *(v31 + 6) = initializeConnection;
  if (initializeConnection)
  {
    [BiometricKitXPCClient diagnostics:withOptions:passed:withDetails:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __68__BiometricKitXPCClient_diagnostics_withOptions_passed_withDetails___block_invoke;
    v19[3] = &unk_1E8303DE8;
    v19[4] = &v30;
    v14 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v19];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __68__BiometricKitXPCClient_diagnostics_withOptions_passed_withDetails___block_invoke_2;
    v18[3] = &unk_1E8304058;
    v18[4] = &v30;
    v18[5] = &v26;
    v18[6] = &v20;
    [v14 diagnostics:v8 options:optionsCopy client:clientID replyBlock:v18];

    if (passed)
    {
      *passed = *(v27 + 24);
    }

    if (details)
    {
      *details = v21[5];
    }
  }

  v16 = *(v31 + 6);
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);

  return v16;
}

void *__68__BiometricKitXPCClient_diagnostics_withOptions_passed_withDetails___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 code];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void __68__BiometricKitXPCClient_diagnostics_withOptions_passed_withDetails___block_invoke_2(void *a1, int a2, char a3, id obj)
{
  *(*(a1[4] + 8) + 24) = a2;
  *(*(a1[5] + 8) + 24) = a3;
  objc_storeStrong((*(a1[6] + 8) + 40), obj);
}

- (void)timestampEvent:(unint64_t)event absoluteTime:(unint64_t)time
{
  if ([(BiometricKitXPCClient *)self initializeConnection])
  {
    [BiometricKitXPCClient timestampEvent:absoluteTime:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v8 = [xpcConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_350];
    [v8 timestampEvent:event absoluteTime:time client:-[BiometricKitXPCClient clientID](self replyBlock:{"clientID"), &__block_literal_global_352}];
  }
}

- (int)setUserDSID:(unint64_t)d withOptions:(id)options
{
  optionsCopy = options;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  initializeConnection = [(BiometricKitXPCClient *)self initializeConnection];
  *(v17 + 6) = initializeConnection;
  if (initializeConnection)
  {
    [BiometricKitXPCClient setUserDSID:withOptions:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __49__BiometricKitXPCClient_setUserDSID_withOptions___block_invoke;
    v15[3] = &unk_1E8303DE8;
    v15[4] = &v16;
    v10 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __49__BiometricKitXPCClient_setUserDSID_withOptions___block_invoke_2;
    v14[3] = &unk_1E8303F68;
    v14[4] = &v16;
    [v10 setUserDSID:d options:optionsCopy client:clientID replyBlock:v14];
  }

  v12 = *(v17 + 6);
  _Block_object_dispose(&v16, 8);

  return v12;
}

void *__49__BiometricKitXPCClient_setUserDSID_withOptions___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 code];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (int64_t)getSensorCalibrationStatus
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = -1;
  if ([(BiometricKitXPCClient *)self initializeConnection])
  {
    [BiometricKitXPCClient getSensorCalibrationStatus];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v5 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_354];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __51__BiometricKitXPCClient_getSensorCalibrationStatus__block_invoke_2;
    v9[3] = &unk_1E8303F40;
    v9[4] = &v10;
    [v5 getSensorCalibrationStatus:clientID replyBlock:v9];
  }

  v7 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v7;
}

- (id)getCalibrationDataInfo
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  if ([(BiometricKitXPCClient *)self initializeConnection])
  {
    [BiometricKitXPCClient getCalibrationDataInfo];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v5 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_356];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __47__BiometricKitXPCClient_getCalibrationDataInfo__block_invoke_2;
    v9[3] = &unk_1E8303F90;
    v9[4] = &v10;
    [v5 getCalibrationDataInfo:clientID replyBlock:v9];
  }

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (id)getSensorInfo
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  if ([(BiometricKitXPCClient *)self initializeConnection])
  {
    [BiometricKitXPCClient getSensorInfo];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v5 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_358];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __38__BiometricKitXPCClient_getSensorInfo__block_invoke_2;
    v9[3] = &unk_1E8303F90;
    v9[4] = &v10;
    [v5 getSensorInfo:clientID replyBlock:v9];
  }

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (id)pullCalibrationData
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  if ([(BiometricKitXPCClient *)self initializeConnection])
  {
    [BiometricKitXPCClient pullCalibrationData];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v5 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_360];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __44__BiometricKitXPCClient_pullCalibrationData__block_invoke_2;
    v9[3] = &unk_1E8303F90;
    v9[4] = &v10;
    [v5 pullCalibrationData:clientID replyBlock:v9];
  }

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (id)pullCaptureBuffer
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  if ([(BiometricKitXPCClient *)self initializeConnection])
  {
    [BiometricKitXPCClient pullCaptureBuffer];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v5 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_362];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __42__BiometricKitXPCClient_pullCaptureBuffer__block_invoke_2;
    v9[3] = &unk_1E8303F90;
    v9[4] = &v10;
    [v5 pullCaptureBuffer:clientID replyBlock:v9];
  }

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (id)pullDebugImageData:(BOOL)data rotated:(BOOL)rotated imageWidth:(unsigned int *)width imageHeight:(unsigned int *)height
{
  rotatedCopy = rotated;
  dataCopy = data;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  if ([(BiometricKitXPCClient *)self initializeConnection])
  {
    [BiometricKitXPCClient pullDebugImageData:rotated:imageWidth:imageHeight:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v13 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_364];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __75__BiometricKitXPCClient_pullDebugImageData_rotated_imageWidth_imageHeight___block_invoke_2;
    v17[3] = &unk_1E8304080;
    v17[4] = &v18;
    v17[5] = width;
    v17[6] = height;
    [v13 pullDebugImageData:dataCopy rotated:rotatedCopy client:clientID replyBlock:v17];
  }

  v15 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v15;
}

void __75__BiometricKitXPCClient_pullDebugImageData_rotated_imageWidth_imageHeight___block_invoke_2(void *a1, void *a2, int a3, int a4)
{
  v10 = a2;
  objc_storeStrong((*(a1[4] + 8) + 40), a2);
  v8 = a1[5];
  if (v8)
  {
    *v8 = a3;
  }

  v9 = a1[6];
  if (v9)
  {
    *v9 = a4;
  }
}

- (void)setDebugImages:(BOOL)images
{
  imagesCopy = images;
  if ([(BiometricKitXPCClient *)self initializeConnection])
  {
    [BiometricKitXPCClient setDebugImages:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v6 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_367];
    [v6 setDebugImages:imagesCopy client:-[BiometricKitXPCClient clientID](self replyBlock:{"clientID"), &__block_literal_global_369}];
  }
}

- (id)getLogs:(BOOL)logs withDetails:(id *)details
{
  logsCopy = logs;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  if ([(BiometricKitXPCClient *)self initializeConnection])
  {
    [BiometricKitXPCClient getLogs:withDetails:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v9 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_371];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __45__BiometricKitXPCClient_getLogs_withDetails___block_invoke_2;
    v13[3] = &unk_1E83040A8;
    v13[4] = &v20;
    v13[5] = &v14;
    [v9 getLogs:logsCopy client:clientID replyBlock:v13];

    if (details)
    {
      *details = v15[5];
    }
  }

  v11 = v21[5];
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);

  return v11;
}

void __45__BiometricKitXPCClient_getLogs_withDetails___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (BOOL)fileRadarWithLogs:(id)logs withDescription:(id)description
{
  logsCopy = logs;
  descriptionCopy = description;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  if ([(BiometricKitXPCClient *)self initializeConnection])
  {
    [BiometricKitXPCClient fileRadarWithLogs:withDescription:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v10 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_374];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __59__BiometricKitXPCClient_fileRadarWithLogs_withDescription___block_invoke_2;
    v14[3] = &unk_1E83040D0;
    v14[4] = &v15;
    [v10 fileRadarWithLogs:logsCopy description:descriptionCopy client:clientID replyBlock:v14];
  }

  v12 = *(v16 + 24);
  _Block_object_dispose(&v15, 8);

  return v12;
}

- (BOOL)isFingerOn
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if ([(BiometricKitXPCClient *)self initializeConnection])
  {
    [BiometricKitXPCClient isFingerOn];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v5 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_377];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __35__BiometricKitXPCClient_isFingerOn__block_invoke_2;
    v9[3] = &unk_1E83040D0;
    v9[4] = &v10;
    [v5 isFingerOn:clientID replyBlock:v9];
  }

  v7 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v7;
}

- (int)enableBackgroundFdet:(BOOL)fdet
{
  fdetCopy = fdet;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  initializeConnection = [(BiometricKitXPCClient *)self initializeConnection];
  *(v15 + 6) = initializeConnection;
  if (initializeConnection)
  {
    [BiometricKitXPCClient enableBackgroundFdet:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __46__BiometricKitXPCClient_enableBackgroundFdet___block_invoke;
    v13[3] = &unk_1E8303DE8;
    v13[4] = &v14;
    v8 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v13];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __46__BiometricKitXPCClient_enableBackgroundFdet___block_invoke_2;
    v12[3] = &unk_1E8303F68;
    v12[4] = &v14;
    [v8 enableBackgroundFdet:fdetCopy client:clientID replyBlock:v12];
  }

  v10 = *(v15 + 6);
  _Block_object_dispose(&v14, 8);
  return v10;
}

void *__46__BiometricKitXPCClient_enableBackgroundFdet___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 code];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (BOOL)isAriadneSignpostsEnabled
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if ([(BiometricKitXPCClient *)self initializeConnection])
  {
    [BiometricKitXPCClient isAriadneSignpostsEnabled];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v5 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_379];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __50__BiometricKitXPCClient_isAriadneSignpostsEnabled__block_invoke_2;
    v9[3] = &unk_1E83040D0;
    v9[4] = &v10;
    [v5 isAriadneSignpostsEnabled:clientID replyBlock:v9];
  }

  v7 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v7;
}

- (BOOL)isXARTAvailable
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if ([(BiometricKitXPCClient *)self initializeConnection])
  {
    [BiometricKitXPCClient isXARTAvailable];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v5 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_381];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __40__BiometricKitXPCClient_isXARTAvailable__block_invoke_2;
    v9[3] = &unk_1E83040D0;
    v9[4] = &v10;
    [v5 isXARTAvailable:clientID replyBlock:v9];
  }

  v7 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v7;
}

- (int64_t)getDeviceState
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = -1;
  if ([(BiometricKitXPCClient *)self initializeConnection])
  {
    [BiometricKitXPCClient getDeviceState];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v5 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_383];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __39__BiometricKitXPCClient_getDeviceState__block_invoke_2;
    v9[3] = &unk_1E8303F40;
    v9[4] = &v10;
    [v5 getDeviceState:clientID replyBlock:v9];
  }

  v7 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v7;
}

- (int)startNewMatchAttempt
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  initializeConnection = [(BiometricKitXPCClient *)self initializeConnection];
  *(v13 + 6) = initializeConnection;
  if (initializeConnection)
  {
    [BiometricKitXPCClient startNewMatchAttempt];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __45__BiometricKitXPCClient_startNewMatchAttempt__block_invoke;
    v11[3] = &unk_1E8303DE8;
    v11[4] = &v12;
    v6 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v11];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __45__BiometricKitXPCClient_startNewMatchAttempt__block_invoke_2;
    v10[3] = &unk_1E8303F68;
    v10[4] = &v12;
    [v6 startNewMatchAttempt:clientID replyBlock:v10];
  }

  v8 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);
  return v8;
}

void *__45__BiometricKitXPCClient_startNewMatchAttempt__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 code];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (int)getBiometryAvailability:(int64_t *)availability forUser:(unsigned int)user
{
  v4 = *&user;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  initializeConnection = [(BiometricKitXPCClient *)self initializeConnection];
  *(v17 + 6) = initializeConnection;
  if (initializeConnection)
  {
    [BiometricKitXPCClient getBiometryAvailability:forUser:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __57__BiometricKitXPCClient_getBiometryAvailability_forUser___block_invoke;
    v15[3] = &unk_1E8303DE8;
    v15[4] = &v16;
    v10 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __57__BiometricKitXPCClient_getBiometryAvailability_forUser___block_invoke_2;
    v14[3] = &unk_1E8303FE0;
    v14[4] = &v16;
    v14[5] = availability;
    [v10 getBiometryAvailabilityForUser:v4 client:clientID replyBlock:v14];
  }

  v12 = *(v17 + 6);
  _Block_object_dispose(&v16, 8);
  return v12;
}

void *__57__BiometricKitXPCClient_getBiometryAvailability_forUser___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 code];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __57__BiometricKitXPCClient_getBiometryAvailability_forUser___block_invoke_2(uint64_t result, int a2, uint64_t a3)
{
  v3 = *(result + 40);
  *(*(*(result + 32) + 8) + 24) = a2;
  if (v3)
  {
    *v3 = a3;
  }

  return result;
}

- (int)completeEnrollment
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  initializeConnection = [(BiometricKitXPCClient *)self initializeConnection];
  *(v13 + 6) = initializeConnection;
  if (initializeConnection)
  {
    [BiometricKitXPCClient completeEnrollment];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __43__BiometricKitXPCClient_completeEnrollment__block_invoke;
    v11[3] = &unk_1E8303DE8;
    v11[4] = &v12;
    v6 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v11];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __43__BiometricKitXPCClient_completeEnrollment__block_invoke_2;
    v10[3] = &unk_1E8303F68;
    v10[4] = &v12;
    [v6 completeEnrollment:clientID replyBlock:v10];
  }

  v8 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);
  return v8;
}

void *__43__BiometricKitXPCClient_completeEnrollment__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 code];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (int)suspendEnrollment:(BOOL)enrollment
{
  enrollmentCopy = enrollment;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  initializeConnection = [(BiometricKitXPCClient *)self initializeConnection];
  *(v15 + 6) = initializeConnection;
  if (initializeConnection)
  {
    [BiometricKitXPCClient suspendEnrollment:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __43__BiometricKitXPCClient_suspendEnrollment___block_invoke;
    v13[3] = &unk_1E8303DE8;
    v13[4] = &v14;
    v8 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v13];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __43__BiometricKitXPCClient_suspendEnrollment___block_invoke_2;
    v12[3] = &unk_1E8303F68;
    v12[4] = &v14;
    [v8 suspendEnrollment:enrollmentCopy client:clientID replyBlock:v12];
  }

  v10 = *(v15 + 6);
  _Block_object_dispose(&v14, 8);
  return v10;
}

void *__43__BiometricKitXPCClient_suspendEnrollment___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 code];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (int)setTemplate:(id)template forIdentity:(id)identity
{
  templateCopy = template;
  identityCopy = identity;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  initializeConnection = [(BiometricKitXPCClient *)self initializeConnection];
  *(v18 + 6) = initializeConnection;
  if (initializeConnection)
  {
    [BiometricKitXPCClient setTemplate:forIdentity:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __49__BiometricKitXPCClient_setTemplate_forIdentity___block_invoke;
    v16[3] = &unk_1E8303DE8;
    v16[4] = &v17;
    v11 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v16];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __49__BiometricKitXPCClient_setTemplate_forIdentity___block_invoke_2;
    v15[3] = &unk_1E8303F68;
    v15[4] = &v17;
    [v11 setTemplate:templateCopy forIdentity:identityCopy client:clientID replyBlock:v15];
  }

  v13 = *(v18 + 6);
  _Block_object_dispose(&v17, 8);

  return v13;
}

void *__49__BiometricKitXPCClient_setTemplate_forIdentity___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 code];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (int)isPeriocularEnrollmentSupported:(BOOL *)supported
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  if (supported)
  {
    initializeConnection = [(BiometricKitXPCClient *)self initializeConnection];
    *(v15 + 6) = initializeConnection;
    if (initializeConnection)
    {
      [BiometricKitXPCClient isPeriocularEnrollmentSupported:];
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_connection);
      xpcConnection = [WeakRetained xpcConnection];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __57__BiometricKitXPCClient_isPeriocularEnrollmentSupported___block_invoke;
      v13[3] = &unk_1E8303DE8;
      v13[4] = &v14;
      v8 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v13];
      clientID = [(BiometricKitXPCClient *)self clientID];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __57__BiometricKitXPCClient_isPeriocularEnrollmentSupported___block_invoke_2;
      v12[3] = &unk_1E83040F8;
      v12[4] = &v14;
      v12[5] = supported;
      [v8 isPeriocularEnrollmentSupported:clientID replyBlock:v12];
    }
  }

  else
  {
    [BiometricKitXPCClient isPeriocularEnrollmentSupported:];
  }

  v10 = *(v15 + 6);
  _Block_object_dispose(&v14, 8);
  return v10;
}

void *__57__BiometricKitXPCClient_isPeriocularEnrollmentSupported___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 code];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __57__BiometricKitXPCClient_isPeriocularEnrollmentSupported___block_invoke_2(uint64_t result, int a2, char a3)
{
  v3 = *(result + 40);
  *(*(*(result + 32) + 8) + 24) = a2;
  *v3 = a3;
  return result;
}

- (int)getPeriocularMatchState:(unsigned int)state state:(int64_t *)a4
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if (a4)
  {
    v5 = *&state;
    initializeConnection = [(BiometricKitXPCClient *)self initializeConnection];
    *(v17 + 6) = initializeConnection;
    if (initializeConnection)
    {
      [BiometricKitXPCClient getPeriocularMatchState:state:];
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_connection);
      xpcConnection = [WeakRetained xpcConnection];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __55__BiometricKitXPCClient_getPeriocularMatchState_state___block_invoke;
      v15[3] = &unk_1E8303DE8;
      v15[4] = &v16;
      v10 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
      clientID = [(BiometricKitXPCClient *)self clientID];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __55__BiometricKitXPCClient_getPeriocularMatchState_state___block_invoke_2;
      v14[3] = &unk_1E8303FE0;
      v14[4] = &v16;
      v14[5] = a4;
      [v10 getPeriocularMatchState:v5 client:clientID replyBlock:v14];
    }
  }

  else
  {
    [BiometricKitXPCClient getPeriocularMatchState:state:];
  }

  v12 = *(v17 + 6);
  _Block_object_dispose(&v16, 8);
  return v12;
}

void *__55__BiometricKitXPCClient_getPeriocularMatchState_state___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 code];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __55__BiometricKitXPCClient_getPeriocularMatchState_state___block_invoke_2(uint64_t result, int a2, uint64_t a3)
{
  v3 = *(result + 40);
  *(*(*(result + 32) + 8) + 24) = a2;
  *v3 = a3;
  return result;
}

- (void)removePeriocularTemplatesWithOptions:(id)options async:(BOOL)async withReply:(id)reply
{
  asyncCopy = async;
  optionsCopy = options;
  replyCopy = reply;
  if ([(BiometricKitXPCClient *)self initializeConnection])
  {
    [BiometricKitXPCClient removePeriocularTemplatesWithOptions:async:withReply:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    if (asyncCopy)
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __78__BiometricKitXPCClient_removePeriocularTemplatesWithOptions_async_withReply___block_invoke;
      v25[3] = &unk_1E8303EA0;
      v12 = replyCopy;
      v26 = v12;
      v13 = [xpcConnection remoteObjectProxyWithErrorHandler:v25];
      clientID = [(BiometricKitXPCClient *)self clientID];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __78__BiometricKitXPCClient_removePeriocularTemplatesWithOptions_async_withReply___block_invoke_2;
      v23[3] = &unk_1E8303EC8;
      v24 = v12;
      [v13 removePeriocularTemplatesWithOptions:optionsCopy async:1 client:clientID replyBlock:v23];

      v15 = v26;
    }

    else
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __78__BiometricKitXPCClient_removePeriocularTemplatesWithOptions_async_withReply___block_invoke_3;
      v21[3] = &unk_1E8303EA0;
      v16 = replyCopy;
      v22 = v16;
      v17 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v21];
      clientID2 = [(BiometricKitXPCClient *)self clientID];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __78__BiometricKitXPCClient_removePeriocularTemplatesWithOptions_async_withReply___block_invoke_4;
      v19[3] = &unk_1E8303EC8;
      v20 = v16;
      [v17 removePeriocularTemplatesWithOptions:optionsCopy async:0 client:clientID2 replyBlock:v19];

      v15 = v22;
    }
  }
}

uint64_t __78__BiometricKitXPCClient_removePeriocularTemplatesWithOptions_async_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 code];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

uint64_t __78__BiometricKitXPCClient_removePeriocularTemplatesWithOptions_async_withReply___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 code];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (int)queryIdentityMigrationFailureForUser:(unsigned int)user failed:(BOOL *)failed clear:(BOOL)clear
{
  clearCopy = clear;
  v7 = *&user;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  initializeConnection = [(BiometricKitXPCClient *)self initializeConnection];
  *(v19 + 6) = initializeConnection;
  if (initializeConnection)
  {
    [BiometricKitXPCClient queryIdentityMigrationFailureForUser:failed:clear:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __75__BiometricKitXPCClient_queryIdentityMigrationFailureForUser_failed_clear___block_invoke;
    v17[3] = &unk_1E8303DE8;
    v17[4] = &v18;
    v12 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v17];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __75__BiometricKitXPCClient_queryIdentityMigrationFailureForUser_failed_clear___block_invoke_2;
    v16[3] = &unk_1E83040F8;
    v16[4] = &v18;
    v16[5] = failed;
    [v12 queryIdentityMigrationFailureForUser:v7 clear:clearCopy client:clientID replyBlock:v16];
  }

  v14 = *(v19 + 6);
  _Block_object_dispose(&v18, 8);
  return v14;
}

void *__75__BiometricKitXPCClient_queryIdentityMigrationFailureForUser_failed_clear___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 code];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __75__BiometricKitXPCClient_queryIdentityMigrationFailureForUser_failed_clear___block_invoke_2(uint64_t result, int a2, char a3)
{
  v3 = *(result + 40);
  *(*(*(result + 32) + 8) + 24) = a2;
  if (v3)
  {
    *v3 = a3;
  }

  return result;
}

- (void)logEventOrCode:(unint64_t)code
{
  if ([(BiometricKitXPCClient *)self initializeConnection])
  {
    [BiometricKitXPCClient logEventOrCode:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v6 = [xpcConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_387];
    [v6 logEventOrCode:code];
  }
}

- (int)enableMatchAutoRetry:(BOOL)retry
{
  retryCopy = retry;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  initializeConnection = [(BiometricKitXPCClient *)self initializeConnection];
  *(v15 + 6) = initializeConnection;
  if (initializeConnection)
  {
    [BiometricKitXPCClient enableMatchAutoRetry:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __46__BiometricKitXPCClient_enableMatchAutoRetry___block_invoke;
    v13[3] = &unk_1E8303DE8;
    v13[4] = &v14;
    v8 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v13];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __46__BiometricKitXPCClient_enableMatchAutoRetry___block_invoke_2;
    v12[3] = &unk_1E8303F68;
    v12[4] = &v14;
    [v8 enableMatchAutoRetry:retryCopy client:clientID replyBlock:v12];
  }

  v10 = *(v15 + 6);
  _Block_object_dispose(&v14, 8);
  return v10;
}

void *__46__BiometricKitXPCClient_enableMatchAutoRetry___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 code];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (int)pauseFaceDetectTimer:(BOOL)timer
{
  timerCopy = timer;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  initializeConnection = [(BiometricKitXPCClient *)self initializeConnection];
  *(v15 + 6) = initializeConnection;
  if (initializeConnection)
  {
    [BiometricKitXPCClient pauseFaceDetectTimer:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __46__BiometricKitXPCClient_pauseFaceDetectTimer___block_invoke;
    v13[3] = &unk_1E8303DE8;
    v13[4] = &v14;
    v8 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v13];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __46__BiometricKitXPCClient_pauseFaceDetectTimer___block_invoke_2;
    v12[3] = &unk_1E8303F68;
    v12[4] = &v14;
    [v8 pauseFaceDetectTimer:timerCopy client:clientID replyBlock:v12];
  }

  v10 = *(v15 + 6);
  _Block_object_dispose(&v14, 8);
  return v10;
}

void *__46__BiometricKitXPCClient_pauseFaceDetectTimer___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 code];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (int)getLastMatchEvent:(id *)event
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  initializeConnection = [(BiometricKitXPCClient *)self initializeConnection];
  *(v21 + 6) = initializeConnection;
  if (initializeConnection)
  {
    [BiometricKitXPCClient getLastMatchEvent:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __43__BiometricKitXPCClient_getLastMatchEvent___block_invoke;
    v13[3] = &unk_1E8303DE8;
    v13[4] = &v20;
    v8 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v13];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __43__BiometricKitXPCClient_getLastMatchEvent___block_invoke_2;
    v12[3] = &unk_1E8304120;
    v12[4] = &v20;
    v12[5] = &v14;
    [v8 getLastMatchEvent:clientID replyBlock:v12];

    if (event)
    {
      *event = v15[5];
    }
  }

  v10 = *(v21 + 6);
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
  return v10;
}

void *__43__BiometricKitXPCClient_getLastMatchEvent___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 code];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void __43__BiometricKitXPCClient_getLastMatchEvent___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  *(*(*(a1 + 32) + 8) + 24) = a2;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    a3 = 0;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
}

- (int)getDeviceHardwareState:(unsigned int *)state
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  initializeConnection = [(BiometricKitXPCClient *)self initializeConnection];
  *(v19 + 6) = initializeConnection;
  if (initializeConnection)
  {
    [BiometricKitXPCClient getDeviceHardwareState:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __48__BiometricKitXPCClient_getDeviceHardwareState___block_invoke;
    v13[3] = &unk_1E8303DE8;
    v13[4] = &v18;
    v8 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v13];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __48__BiometricKitXPCClient_getDeviceHardwareState___block_invoke_2;
    v12[3] = &unk_1E8304148;
    v12[4] = &v18;
    v12[5] = &v14;
    [v8 getDeviceHardwareState:clientID replyBlock:v12];

    if (state)
    {
      *state = *(v15 + 6);
    }
  }

  v10 = *(v19 + 6);
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
  return v10;
}

void *__48__BiometricKitXPCClient_getDeviceHardwareState___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 code];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __48__BiometricKitXPCClient_getDeviceHardwareState___block_invoke_2(uint64_t result, int a2, int a3)
{
  *(*(*(result + 32) + 8) + 24) = a2;
  if (*(*(*(result + 32) + 8) + 24))
  {
    a3 = 0;
  }

  *(*(*(result + 40) + 8) + 24) = a3;
  return result;
}

- (int)listAccessories:(id *)accessories
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  initializeConnection = [(BiometricKitXPCClient *)self initializeConnection];
  *(v21 + 6) = initializeConnection;
  if (initializeConnection)
  {
    [BiometricKitXPCClient listAccessories:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __41__BiometricKitXPCClient_listAccessories___block_invoke;
    v13[3] = &unk_1E8303DE8;
    v13[4] = &v20;
    v8 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v13];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __41__BiometricKitXPCClient_listAccessories___block_invoke_2;
    v12[3] = &unk_1E8304170;
    v12[4] = &v20;
    v12[5] = &v14;
    [v8 listAccessories:clientID replyBlock:v12];

    if (accessories)
    {
      *accessories = v15[5];
    }
  }

  v10 = *(v21 + 6);
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
  return v10;
}

void *__41__BiometricKitXPCClient_listAccessories___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 code];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void __41__BiometricKitXPCClient_listAccessories___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  *(*(*(a1 + 32) + 8) + 24) = a2;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    a3 = 0;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
}

- (int)getFreeIdentityCount:(unint64_t *)count forUser:(unsigned int)user accessoryGroup:(id)group
{
  v5 = *&user;
  groupCopy = group;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  initializeConnection = [(BiometricKitXPCClient *)self initializeConnection];
  *(v23 + 6) = initializeConnection;
  if (initializeConnection)
  {
    [BiometricKitXPCClient getFreeIdentityCount:forUser:accessoryGroup:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __69__BiometricKitXPCClient_getFreeIdentityCount_forUser_accessoryGroup___block_invoke;
    v17[3] = &unk_1E8303DE8;
    v17[4] = &v22;
    v12 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v17];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __69__BiometricKitXPCClient_getFreeIdentityCount_forUser_accessoryGroup___block_invoke_2;
    v16[3] = &unk_1E8304198;
    v16[4] = &v22;
    v16[5] = &v18;
    [v12 getFreeIdentityCountForUser:v5 accessoryGroup:groupCopy client:clientID replyBlock:v16];

    if (count)
    {
      *count = v19[3];
    }
  }

  v14 = *(v23 + 6);
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);

  return v14;
}

void *__69__BiometricKitXPCClient_getFreeIdentityCount_forUser_accessoryGroup___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 code];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __69__BiometricKitXPCClient_getFreeIdentityCount_forUser_accessoryGroup___block_invoke_2(uint64_t result, int a2, uint64_t a3)
{
  *(*(*(result + 32) + 8) + 24) = a2;
  if (*(*(*(result + 32) + 8) + 24))
  {
    a3 = 0;
  }

  *(*(*(result + 40) + 8) + 24) = a3;
  return result;
}

- (int)getPreferencesValue:(id *)value forKey:(id)key
{
  keyCopy = key;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  initializeConnection = [(BiometricKitXPCClient *)self initializeConnection];
  *(v23 + 6) = initializeConnection;
  if (initializeConnection)
  {
    [BiometricKitXPCClient getPreferencesValue:forKey:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __52__BiometricKitXPCClient_getPreferencesValue_forKey___block_invoke;
    v15[3] = &unk_1E8303DE8;
    v15[4] = &v22;
    v10 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __52__BiometricKitXPCClient_getPreferencesValue_forKey___block_invoke_2;
    v14[3] = &unk_1E83041C0;
    v14[4] = &v22;
    v14[5] = &v16;
    [v10 getPreferencesValueForKey:keyCopy client:clientID replyBlock:v14];

    if (*(v23 + 6))
    {
      [BiometricKitXPCClient getPreferencesValue:forKey:];
    }

    else
    {
      *value = v17[5];
    }
  }

  v12 = *(v23 + 6);
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);
  return v12;
}

void *__52__BiometricKitXPCClient_getPreferencesValue_forKey___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 code];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (int)setPreferencesValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  initializeConnection = [(BiometricKitXPCClient *)self initializeConnection];
  *(v18 + 6) = initializeConnection;
  if (initializeConnection)
  {
    [BiometricKitXPCClient setPreferencesValue:forKey:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __52__BiometricKitXPCClient_setPreferencesValue_forKey___block_invoke;
    v16[3] = &unk_1E8303DE8;
    v16[4] = &v17;
    v11 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v16];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __52__BiometricKitXPCClient_setPreferencesValue_forKey___block_invoke_2;
    v15[3] = &unk_1E8303F68;
    v15[4] = &v17;
    [v11 setPreferencesValue:valueCopy forKey:keyCopy client:clientID replyBlock:v15];
  }

  v13 = *(v18 + 6);
  _Block_object_dispose(&v17, 8);

  return v13;
}

void *__52__BiometricKitXPCClient_setPreferencesValue_forKey___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 code];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (int)prewarmCamera:(unint64_t)camera
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  initializeConnection = [(BiometricKitXPCClient *)self initializeConnection];
  *(v15 + 6) = initializeConnection;
  if (initializeConnection)
  {
    [BiometricKitXPCClient prewarmCamera:];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    xpcConnection = [WeakRetained xpcConnection];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __39__BiometricKitXPCClient_prewarmCamera___block_invoke;
    v13[3] = &unk_1E8303DE8;
    v13[4] = &v14;
    v8 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v13];
    clientID = [(BiometricKitXPCClient *)self clientID];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __39__BiometricKitXPCClient_prewarmCamera___block_invoke_2;
    v12[3] = &unk_1E8303F68;
    v12[4] = &v14;
    [v8 prewarmCamera:camera client:clientID replyBlock:v12];
  }

  v10 = *(v15 + 6);
  _Block_object_dispose(&v14, 8);
  return v10;
}

void *__39__BiometricKitXPCClient_prewarmCamera___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 code];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (void)initWithDeviceType:clientType:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)initializeConnection
{
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v5, v6, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v7, v8, v9, v10);
  }

  *a3 = a2;
}

+ (void)clientUUID
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)connect
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7);
  }

  *(*self + 24) = 1;
}

- (uint64_t)enroll:forUser:withOptions:async:withReply:.cold.1()
{
  OUTLINED_FUNCTION_7();
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  v6 = OUTLINED_FUNCTION_4_0();
  return v7(v6);
}

- (uint64_t)match:withOptions:async:withReply:.cold.1()
{
  OUTLINED_FUNCTION_7();
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  v6 = OUTLINED_FUNCTION_4_0();
  return v7(v6);
}

- (uint64_t)detectPresenceWithOptions:async:withReply:.cold.1()
{
  OUTLINED_FUNCTION_7();
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  v6 = OUTLINED_FUNCTION_4_0();
  return v7(v6);
}

- (uint64_t)updateIdentity:withOptions:async:withReply:.cold.1()
{
  OUTLINED_FUNCTION_7();
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  v6 = OUTLINED_FUNCTION_4_0();
  return v7(v6);
}

- (uint64_t)removeIdentity:withOptions:async:withReply:.cold.1()
{
  OUTLINED_FUNCTION_7();
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  v6 = OUTLINED_FUNCTION_4_0();
  return v7(v6);
}

- (uint64_t)removeAllIdentitiesForUser:withOptions:async:withReply:.cold.1()
{
  OUTLINED_FUNCTION_7();
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  v6 = OUTLINED_FUNCTION_4_0();
  return v7(v6);
}

- (void)getIdentityFromUUID:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)identities:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)getMaxIdentityCount:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)getFreeIdentityCount:forUser:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)enrollContinue
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)pullAlignmentData
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)pullMatchPolicyInfoData
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)getNodeTopologyForIdentity:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)getProtectedConfigurationForUser:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)getSystemProtectedConfiguration
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (uint64_t)setProtectedConfiguration:forUser:withOptions:async:withReply:.cold.1()
{
  OUTLINED_FUNCTION_7();
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  v6 = OUTLINED_FUNCTION_4_0();
  return v7(v6);
}

- (uint64_t)setSystemProtectedConfiguration:withOptions:async:withReply:.cold.1()
{
  OUTLINED_FUNCTION_7();
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  v6 = OUTLINED_FUNCTION_4_0();
  return v7(v6);
}

- (void)getBioLockoutState:forUser:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)getBioLockoutState:forUser:.cold.2()
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_10();
}

- (void)getExpressModeState:forUser:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)getExpressModeState:forUser:.cold.2()
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_10();
}

- (void)getProvisioningState
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)dropUnlockToken
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)forceBioLockoutForUser:withOptions:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)registerDSID:withOptions:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)resetAppleConnectCounter
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)registerStoreToken:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)getCountersignedStoreToken:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)getIdentitiesDatabaseUUIDForUser:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)getIdentitiesDatabaseHashForUser:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)diagnostics:withOptions:passed:withDetails:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)timestampEvent:absoluteTime:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)setUserDSID:withOptions:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)getSensorCalibrationStatus
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)getCalibrationDataInfo
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)getSensorInfo
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)pullCalibrationData
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)pullCaptureBuffer
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)pullDebugImageData:rotated:imageWidth:imageHeight:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)setDebugImages:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)getLogs:withDetails:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)fileRadarWithLogs:withDescription:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)isFingerOn
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)enableBackgroundFdet:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)isAriadneSignpostsEnabled
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)isXARTAvailable
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)getDeviceState
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)startNewMatchAttempt
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)getBiometryAvailability:forUser:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)completeEnrollment
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)suspendEnrollment:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)setTemplate:forIdentity:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)isPeriocularEnrollmentSupported:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)isPeriocularEnrollmentSupported:.cold.2()
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_10();
}

- (void)getPeriocularMatchState:state:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)getPeriocularMatchState:state:.cold.2()
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_10();
}

- (uint64_t)removePeriocularTemplatesWithOptions:async:withReply:.cold.1()
{
  OUTLINED_FUNCTION_7();
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  v6 = OUTLINED_FUNCTION_4_0();
  return v7(v6);
}

- (void)queryIdentityMigrationFailureForUser:failed:clear:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)logEventOrCode:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)enableMatchAutoRetry:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)pauseFaceDetectTimer:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)getLastMatchEvent:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)getDeviceHardwareState:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)listAccessories:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)getFreeIdentityCount:forUser:accessoryGroup:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)getPreferencesValue:forKey:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)getPreferencesValue:forKey:.cold.2()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)setPreferencesValue:forKey:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)prewarmCamera:.cold.1()
{
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

@end