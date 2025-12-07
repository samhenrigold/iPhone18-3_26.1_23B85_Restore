@interface _GCHapticServerManager
+ (id)sharedInstance;
- (BOOL)acceptNewConnection:(id)connection fromHapticsEnabledApp:(id)app;
- (BOOL)playersHaveImpendingCommandsForStartTime:(double)time endTime:(double)endTime;
- (BOOL)readClientDataForStartTime:(double)time endTime:(double)endTime;
- (_GCHapticServerManager)init;
- (id)__onqueue_reserveChannels:(unint64_t)channels forClient:(id)client;
- (void)dealloc;
- (void)enterRunloop;
- (void)hapticClientProxyInitialized:(id)initialized;
- (void)identifyCompletedClients;
- (void)logicalDeviceWasUnregistered:(id)unregistered;
- (void)notifyPlayerNoLongerRetained:(id)retained;
- (void)processActiveEventsForStartTime:(double)time endTime:(double)endTime;
- (void)processScheduledCommandsForStartTime:(double)time endTime:(double)endTime;
- (void)readListCommand:(HapticCommand *)command client:(id)client renderTime:(double)var2;
- (void)readParamCurveListCommand:(HapticCommand *)command client:(id)client;
- (void)removeHapticClient:(id)client;
- (void)scheduleCommand:(const void *)command;
- (void)spawnInputThread;
@end

@implementation _GCHapticServerManager

+ (id)sharedInstance
{
  if (+[_GCHapticServerManager sharedInstance]::onceToken != -1)
  {
    +[_GCHapticServerManager sharedInstance];
  }

  v3 = +[_GCHapticServerManager sharedInstance]::hapticServerManager;

  return v3;
}

- (void)dealloc
{
  [(BKSApplicationStateMonitor *)self->_appMonitor invalidate];
  v3.receiver = self;
  v3.super_class = _GCHapticServerManager;
  [(_GCHapticServerManager *)&v3 dealloc];
}

- (_GCHapticServerManager)init
{
  v22.receiver = self;
  v22.super_class = _GCHapticServerManager;
  v2 = [(_GCHapticServerManager *)&v22 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    clients = v2->_clients;
    v2->_clients = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    logicalHapticDevices = v2->_logicalHapticDevices;
    v2->_logicalHapticDevices = dictionary2;

    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    clientInvalidationHandlers = v2->_clientInvalidationHandlers;
    v2->_clientInvalidationHandlers = dictionary3;

    dictionary4 = [MEMORY[0x1E695DF90] dictionary];
    hapticPlayers = v2->_hapticPlayers;
    v2->_hapticPlayers = dictionary4;

    v2->_nextClientID = 1;
    v2->_tickLengthSeconds = 0.06;
    v11 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v12 = dispatch_queue_create("com.apple.gamecontrollerd.haptics.runloop", v11);
    runloopQueue = v2->_runloopQueue;
    v2->_runloopQueue = v12;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_logicalDeviceWasUnregistered_ name:@"GCLogicalDeviceWasUnregisteredNotification" object:0];

    objc_initWeak(&location, v2);
    v15 = objc_alloc_init(MEMORY[0x1E698D028]);
    appMonitor = v2->_appMonitor;
    v2->_appMonitor = v15;

    [(BKSApplicationStateMonitor *)v2->_appMonitor updateInterestedStates:14];
    v17 = v2->_appMonitor;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __30___GCHapticServerManager_init__block_invoke;
    v19[3] = &unk_1E841A118;
    objc_copyWeak(&v20, &location);
    [(BKSApplicationStateMonitor *)v17 setHandler:v19];
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (BOOL)acceptNewConnection:(id)connection fromHapticsEnabledApp:(id)app
{
  connectionCopy = connection;
  appCopy = app;
  isInternalBuild = gc_isInternalBuild(appCopy, v8);
  if (isInternalBuild)
  {
    getGCHapticsLogger(isInternalBuild);
    objc_claimAutoreleasedReturnValue();
    [_GCHapticServerManager acceptNewConnection:fromHapticsEnabledApp:];
  }

  v10 = [[_GCHapticClientConnection alloc] initWithConnection:connectionCopy fromProcess:appCopy];
  [appCopy addConnection:v10];
  nextClientID = self->_nextClientID;
  self->_nextClientID = nextClientID + 1;
  v12 = +[_GCControllerManagerServer sharedInstance];
  v13 = [_GCHapticClientProxy clientProxyWithConnection:v10 server:v12 clientID:nextClientID];

  [(_GCHapticClientConnection *)v10 setServer:v13];
  [(GCIPCRemoteConnection *)v10 resume];
  objc_initWeak(location, self);
  objc_initWeak(&from, v13);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __68___GCHapticServerManager_acceptNewConnection_fromHapticsEnabledApp___block_invoke;
  aBlock[3] = &unk_1E841A140;
  objc_copyWeak(&v28, location);
  objc_copyWeak(&v29, &from);
  v14 = _Block_copy(aBlock);
  appMonitor = self->_appMonitor;
  processIdentifier = [connectionCopy processIdentifier];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __68___GCHapticServerManager_acceptNewConnection_fromHapticsEnabledApp___block_invoke_13;
  v24[3] = &unk_1E841A168;
  objc_copyWeak(&v25, location);
  objc_copyWeak(&v26, &from);
  [(BKSApplicationStateMonitor *)appMonitor applicationInfoForPID:processIdentifier completion:v24];
  runloopQueue = self->_runloopQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68___GCHapticServerManager_acceptNewConnection_fromHapticsEnabledApp___block_invoke_15;
  block[3] = &unk_1E841A190;
  objc_copyWeak(&v22, location);
  objc_copyWeak(v23, &from);
  v23[1] = nextClientID;
  block[4] = self;
  v21 = v14;
  v18 = v14;
  dispatch_async(runloopQueue, block);

  objc_destroyWeak(v23);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&v26);
  objc_destroyWeak(&v25);
  objc_destroyWeak(&v29);
  objc_destroyWeak(&v28);
  objc_destroyWeak(&from);
  objc_destroyWeak(location);

  return 1;
}

- (void)removeHapticClient:(id)client
{
  clientCopy = client;
  runloopQueue = self->_runloopQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45___GCHapticServerManager_removeHapticClient___block_invoke;
  v7[3] = &unk_1E841A0F0;
  v7[4] = self;
  v8 = clientCopy;
  v6 = clientCopy;
  dispatch_async(runloopQueue, v7);
}

- (void)hapticClientProxyInitialized:(id)initialized
{
  initializedCopy = initialized;
  logicalHapticDevices = self->_logicalHapticDevices;
  v12 = initializedCopy;
  identifier = [initializedCopy identifier];
  v7 = [(NSMutableDictionary *)logicalHapticDevices objectForKey:identifier];

  if (!v7)
  {
    v8 = [_GCHapticLogicalDevice alloc];
    identifier2 = [v12 identifier];
    v7 = [(_GCHapticLogicalDevice *)v8 initWithIdentifier:identifier2 clientConnection:v12];

    v10 = self->_logicalHapticDevices;
    identifier3 = [v12 identifier];
    [(NSMutableDictionary *)v10 setObject:v7 forKey:identifier3];
  }

  [(_GCHapticLogicalDevice *)v7 registerHapticClient:v12];
  [(_GCHapticServerManager *)self spawnInputThread];
}

- (void)spawnInputThread
{
  v1 = getGCHapticsLogger(self);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1_0();
    _os_log_impl(v2, v3, OS_LOG_TYPE_DEFAULT, v4, v5, 2u);
  }
}

- (void)logicalDeviceWasUnregistered:(id)unregistered
{
  unregisteredCopy = unregistered;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__4;
  v17 = __Block_byref_object_dispose__4;
  v18 = 0;
  runloopQueue = self->_runloopQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55___GCHapticServerManager_logicalDeviceWasUnregistered___block_invoke;
  block[3] = &unk_1E841A1E0;
  v6 = unregisteredCopy;
  v10 = v6;
  selfCopy = self;
  v12 = &v13;
  dispatch_sync(runloopQueue, block);
  if (v14[5])
  {
    v7 = self->_runloopQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __55___GCHapticServerManager_logicalDeviceWasUnregistered___block_invoke_23;
    v8[3] = &unk_1E841A208;
    v8[4] = self;
    v8[5] = &v13;
    dispatch_sync(v7, v8);
  }

  _Block_object_dispose(&v13, 8);
}

- (void)scheduleCommand:(const void *)command
{
  hapticPlayers = self->_hapticPlayers;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(command + 2)];
  v6 = [(NSMutableDictionary *)hapticPlayers objectForKey:v5];

  [v6 scheduleCommand:command];
}

- (BOOL)readClientDataForStartTime:(double)time endTime:(double)endTime
{
  v34 = *MEMORY[0x1E69E9840];
  v33.var0 = 168;
  v33.var2 = 0.0;
  v33.var3 = -1;
  v33.var4 = -1;
  memset(&v33.var5, 0, 76);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = self->_clients;
  v7 = 0;
  v8 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v27 objects:&v32 count:16];
  if (v8)
  {
    v10 = *v28;
    *&v9 = 134218496;
    v24 = v9;
    do
    {
      v11 = 0;
      do
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [(NSMutableDictionary *)self->_clients objectForKeyedSubscript:*(*(&v27 + 1) + 8 * v11), v24];
        logicalHapticDevices = self->_logicalHapticDevices;
        identifier = [v12 identifier];
        v15 = [(NSMutableDictionary *)logicalHapticDevices objectForKey:identifier];
        LOBYTE(logicalHapticDevices) = v15 == 0;

        if ((logicalHapticDevices & 1) == 0 && [v12 running] && (objc_msgSend(v12, "stopping") & 1) == 0)
        {
          while (1)
          {
            v16 = HapticSharedMemory::readCommand([v12 sharedMemory], &v33);
            if (!v16)
            {
              break;
            }

            if (v33.var0.var1 == 6)
            {
              isInternalBuild = gc_isInternalBuild(v16, v17);
              if (isInternalBuild)
              {
                v21 = getGCHapticsLogger(isInternalBuild);
                if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
                {
                  buf.var0 = v24;
                  *&buf.var1 = v33.var2;
                  WORD2(buf.var2) = 1024;
                  *(&buf.var2 + 6) = v33.var0.var1;
                  WORD1(buf.var3) = 1024;
                  HIDWORD(buf.var3) = v33.var3;
                  _os_log_debug_impl(&dword_1D2CD5000, v21, OS_LOG_TYPE_DEBUG, "StartEventList from client: time: %.3f type: %u chanID: %d", &buf, 0x18u);
                }
              }

              buf = v33;
              [(_GCHapticServerManager *)self readListCommand:&buf client:v12 renderTime:time];
              v7 = 1;
            }

            else if (v33.var0.var1 == 9)
            {
              v18 = gc_isInternalBuild(v16, v17);
              v7 = 1;
              if (v18)
              {
                v19 = getGCHapticsLogger(v18);
                [(_GCHapticServerManager *)v19 readClientDataForStartTime:v26 endTime:?];
              }
            }

            else
            {
              v7 = 1;
              [(_GCHapticServerManager *)self scheduleCommand:&v33];
            }
          }
        }

        ++v11;
      }

      while (v11 != v8);
      v22 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v27 objects:&v32 count:16];
      v8 = v22;
    }

    while (v22);
  }

  return v7 & 1;
}

- (void)processScheduledCommandsForStartTime:(double)time endTime:(double)endTime
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = self->_hapticPlayers;
  v7 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [(NSMutableDictionary *)self->_hapticPlayers objectForKey:*(*(&v16 + 1) + 8 * i), v16];
        v11 = v10[1];
        v12 = [v11 count];
        if (v12 >= 1)
        {
          for (j = (v12 & 0x7FFFFFFF) + 1; j > 1; --j)
          {
            v14 = [v11 objectAtIndexedSubscript:j - 2];
            if ([v14 type] == 30)
            {
              [v11 removeLastObject];
            }

            else
            {
              [v14 time];
              if (v15 >= endTime)
              {

                break;
              }

              [v11 removeLastObject];
              [v10 handleCommand:v14];
            }
          }
        }
      }

      v7 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }
}

- (BOOL)playersHaveImpendingCommandsForStartTime:(double)time endTime:(double)endTime
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_hapticPlayers;
  v7 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [(NSMutableDictionary *)self->_hapticPlayers objectForKey:*(*(&v13 + 1) + 8 * i), v13];
        if ([v10[1] count])
        {
          v11 = [v10 hasScheduledEventsByTime:endTime + 1.0];

          goto LABEL_11;
        }
      }

      v7 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (void)processActiveEventsForStartTime:(double)time endTime:(double)endTime
{
  v125 = *MEMORY[0x1E69E9840];
  [(_GCHapticServerManager *)self setActiveEvents:0];
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  selfCopy = self;
  obj = self->_logicalHapticDevices;
  v67 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v94 objects:v124 count:16];
  if (v67)
  {
    v68 = *v95;
    v8 = &OBJC_IVAR____GCHapticLogicalDevice__hapticPlayers;
    *&v7 = 138414338;
    v65 = v7;
    do
    {
      v70 = 0;
      do
      {
        if (*v95 != v68)
        {
          objc_enumerationMutation(obj);
        }

        v66 = *(*(&v94 + 1) + 8 * v70);
        v76 = [(NSMutableDictionary *)selfCopy->_logicalHapticDevices objectForKeyedSubscript:v65];
        v123 = 0;
        v122 = 0;
        v121 = 0;
        v120 = 0;
        array = [MEMORY[0x1E695DF70] array];
        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v72 = *(v76 + *v8);
        v9 = 0;
        v10 = [v72 countByEnumeratingWithState:&v90 objects:v119 count:16];
        if (v10)
        {
          v73 = *v91;
          do
          {
            v11 = 0;
            v74 = v10;
            do
            {
              if (*v91 != v73)
              {
                objc_enumerationMutation(v72);
              }

              v12 = *(*(&v90 + 1) + 8 * v11);
              [v12 processSliceForLogicalDevice:v76 startTime:time endTime:endTime];
              [v12 continuousIntensity];
              if (v13 > 0.0)
              {
                v14 = v12[6];
                if (v14)
                {
                  *(v14 + 8) = 1;
                }
              }

              v88 = 0u;
              v89 = 0u;
              v86 = 0u;
              v87 = 0u;
              actuators = [v12 actuators];
              v16 = [actuators countByEnumeratingWithState:&v86 objects:v118 count:16];
              v75 = v9;
              v17 = v8;
              if (v16)
              {
                v18 = *v87;
                do
                {
                  for (i = 0; i != v16; ++i)
                  {
                    if (*v87 != v18)
                    {
                      objc_enumerationMutation(actuators);
                    }

                    v20 = *(*(&v86 + 1) + 8 * i);
                    [v12 continuousIntensity];
                    v22 = v21;
                    index = [v20 index];
                    *(&v122 + index) = v22 + *(&v122 + index);
                    [v12 continuousSharpness];
                    v25 = v24;
                    index2 = [v20 index];
                    *(&v120 + index2) = v25 + *(&v120 + index2);
                  }

                  v16 = [actuators countByEnumeratingWithState:&v86 objects:v118 count:16];
                }

                while (v16);
              }

              v8 = v17;
              v9 = v75;
              if (![(_GCHapticServerManager *)selfCopy activeEvents])
              {
                -[_GCHapticServerManager setActiveEvents:](selfCopy, "setActiveEvents:", [v12 hasProcessedActiveEventsAfterTime:endTime + -1.0] | -[_GCHapticServerManager activeEvents](selfCopy, "activeEvents"));
              }

              if ([v12 transientsEnqueuedSinceLastQuery])
              {
                v27 = v12[6];
                v9 = 1;
                if (v27)
                {
                  *(v27 + 8) = 1;
                }
              }

              if (([v12 isActiveAtTime:time] & 1) == 0)
              {
                [array addObject:v12];
              }

              ++v11;
            }

            while (v11 != v74);
            v10 = [v72 countByEnumeratingWithState:&v90 objects:v119 count:16];
          }

          while (v10);
        }

        v30 = 0;
        v31 = 0;
        do
        {
          while (1)
          {
            v32 = fmin(fmax(*(&v120 + v30), 0.0), 1.0);
            *(&v120 + v30) = v32;
            v33 = fmin(fmax(*(&v122 + v30), 0.0), 1.0);
            *(&v122 + v30) = v33;
            if (*(v76 + v30 + 10) != v32)
            {
              *(v76 + v30 + 10) = v32;
              v31 = 1;
            }

            if (*(v76 + v30 + 14) == v33)
            {
              break;
            }

            *(v76 + v30++ + 14) = v33;
            v31 = 1;
            if (v30 == 4)
            {
              goto LABEL_38;
            }
          }

          ++v30;
        }

        while (v30 != 4);
        if (v31)
        {
LABEL_38:
          isInternalBuild = gc_isInternalBuild(v28, v29);
          if (isInternalBuild)
          {
            v63 = getGCHapticsLogger(isInternalBuild);
            if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
            {
              *buf = v65;
              v101 = v66;
              v102 = 2048;
              v103 = *&v122;
              v104 = 2048;
              v105 = *(&v122 + 1);
              v106 = 2048;
              v107 = *&v123;
              v108 = 2048;
              v109 = *(&v123 + 1);
              v110 = 2048;
              v111 = *&v120;
              v112 = 2048;
              v113 = *(&v120 + 1);
              v114 = 2048;
              v115 = *&v121;
              v116 = 2048;
              v117 = *(&v121 + 1);
              _os_log_debug_impl(&dword_1D2CD5000, v63, OS_LOG_TYPE_DEBUG, "%@ I=(%.3f %.3f %.3f %.3f) S=(%.3f %.3f %.3f %.3f)", buf, 0x5Cu);
            }
          }

          actuators2 = [v76[10] actuators];
          firstObject = [actuators2 firstObject];
          v37 = [firstObject type] == 1;

          v40 = v76[9];
          if (v37)
          {
            LODWORD(v38) = v120;
            LODWORD(v39) = v122;
            [v40 setHapticMotor:0 frequency:v38 amplitude:v39];
            LODWORD(v41) = HIDWORD(v120);
            LODWORD(v42) = HIDWORD(v122);
            [v76[9] setHapticMotor:1 frequency:v41 amplitude:v42];
            LODWORD(v43) = v121;
            LODWORD(v44) = v123;
            [v76[9] setHapticMotor:2 frequency:v43 amplitude:v44];
            LODWORD(v45) = HIDWORD(v121);
            LODWORD(v46) = HIDWORD(v123);
          }

          else
          {
            LODWORD(v38) = v122;
            [v40 setHapticMotor:0 frequency:v38 amplitude:0.0];
            LODWORD(v47) = HIDWORD(v122);
            [v76[9] setHapticMotor:1 frequency:v47 amplitude:0.0];
            LODWORD(v48) = v123;
            [v76[9] setHapticMotor:2 frequency:v48 amplitude:0.0];
            v46 = 0.0;
            LODWORD(v45) = HIDWORD(v123);
          }

          [v76[9] setHapticMotor:3 frequency:v45 amplitude:v46];
LABEL_43:
          [v76[9] enableHaptics];
          goto LABEL_44;
        }

        if (v9)
        {
          goto LABEL_43;
        }

LABEL_44:
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        v49 = array;
        v50 = [v49 countByEnumeratingWithState:&v82 objects:v99 count:16];
        if (v50)
        {
          v51 = *v83;
          do
          {
            for (j = 0; j != v50; ++j)
            {
              if (*v83 != v51)
              {
                objc_enumerationMutation(v49);
              }

              [*(v76 + *v8) removeObject:*(*(&v82 + 1) + 8 * j)];
            }

            v50 = [v49 countByEnumeratingWithState:&v82 objects:v99 count:16];
          }

          while (v50);
        }

        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v53 = v49;
        v54 = [v53 countByEnumeratingWithState:&v78 objects:v98 count:16];
        v56 = v54;
        if (v54)
        {
          v57 = *v79;
          do
          {
            v58 = 0;
            do
            {
              if (*v79 != v57)
              {
                objc_enumerationMutation(v53);
              }

              v59 = *(*(&v78 + 1) + 8 * v58);
              v60 = gc_isInternalBuild(v54, v55);
              if (v60)
              {
                getGCHapticsLogger(v60);
                objc_claimAutoreleasedReturnValue();
                [_GCHapticServerManager processActiveEventsForStartTime:endTime:];
              }

              hapticPlayers = selfCopy->_hapticPlayers;
              identifier = [v59 identifier];
              [(NSMutableDictionary *)hapticPlayers removeObjectForKey:identifier];

              ++v58;
            }

            while (v56 != v58);
            v54 = [v53 countByEnumeratingWithState:&v78 objects:v98 count:16];
            v56 = v54;
          }

          while (v54);
        }

        ++v70;
      }

      while (v70 != v67);
      v64 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v94 objects:v124 count:16];
      v67 = v64;
    }

    while (v64);
  }
}

- (void)notifyPlayerNoLongerRetained:(id)retained
{
  retainedCopy = retained;
  runloopQueue = self->_runloopQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55___GCHapticServerManager_notifyPlayerNoLongerRetained___block_invoke;
  v7[3] = &unk_1E841A0F0;
  v8 = retainedCopy;
  selfCopy = self;
  v6 = retainedCopy;
  dispatch_async(runloopQueue, v7);
}

- (void)identifyCompletedClients
{
  v45 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v3 = self->_clients;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v4)
  {
    v5 = *v39;
    v6 = MEMORY[0x1E695E118];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v39 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [dictionary setObject:v6 forKeyedSubscript:*(*(&v38 + 1) + 8 * i)];
      }

      v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v4);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v8 = self->_hapticPlayers;
  v9 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v9)
  {
    v10 = *v35;
    do
    {
      for (j = 0; j != v9; ++j)
      {
        if (*v35 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = [(NSMutableDictionary *)self->_hapticPlayers objectForKey:*(*(&v34 + 1) + 8 * j)];
        if (([v12[6] complete] & 1) == 0)
        {
          v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v12[6], "clientID")}];
          if ([v12 hasScheduledCommands])
          {
            v14 = 0;
          }

          else
          {
            v14 = [v12 hasProcessedActiveEventsThisSlice] ^ 1;
          }

          v15 = [dictionary objectForKeyedSubscript:v13];
          v16 = v15 == 0;

          v17 = MEMORY[0x1E696AD98];
          if (v16)
          {
            v18 = [MEMORY[0x1E696AD98] numberWithBool:v14];
            [dictionary setObject:v18 forKeyedSubscript:v13];
          }

          else
          {
            v18 = [dictionary objectForKeyedSubscript:v13];
            v19 = [v17 numberWithBool:{objc_msgSend(v18, "BOOLValue") & v14}];
            [dictionary setObject:v19 forKeyedSubscript:v13];
          }
        }
      }

      v9 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v34 objects:v43 count:16];
    }

    while (v9);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v20 = dictionary;
  v21 = [v20 countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (v21)
  {
    v22 = *v31;
    do
    {
      for (k = 0; k != v21; ++k)
      {
        if (*v31 != v22)
        {
          objc_enumerationMutation(v20);
        }

        v24 = *(*(&v30 + 1) + 8 * k);
        v25 = [v20 objectForKeyedSubscript:v24];
        bOOLValue = [v25 BOOLValue];

        v27 = [(NSMutableDictionary *)self->_clients objectForKeyedSubscript:v24];
        v28 = v27;
        if (bOOLValue)
        {
          [v27 setComplete:1];
        }
      }

      v21 = [v20 countByEnumeratingWithState:&v30 objects:v42 count:16];
    }

    while (v21);
  }
}

- (void)enterRunloop
{
  OUTLINED_FUNCTION_6_4();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    *a3 = 0;
    OUTLINED_FUNCTION_4_6();
    _os_log_debug_impl(v7, v8, v9, v10, v11, 2u);
  }
}

- (void)readParamCurveListCommand:(HapticCommand *)command client:(id)client
{
  v28 = *MEMORY[0x1E69E9840];
  clientCopy = client;
  var2 = command->var2;
  isInternalBuild = gc_isInternalBuild(clientCopy, v8);
  if (isInternalBuild)
  {
    getGCHapticsLogger(isInternalBuild);
    objc_claimAutoreleasedReturnValue();
    [_GCHapticServerManager readParamCurveListCommand:client:];
  }

  *&v10 = 134218240;
  v24 = v10;
  while (1)
  {
    Command = HapticSharedMemory::readCommand([clientCopy sharedMemory], command);
    if (!Command)
    {
      break;
    }

    var1 = command->var0.var1;
    if (var1 != 10)
    {
      if (var1 == 9)
      {
        v20 = gc_isInternalBuild(Command, v12);
        if (!v20)
        {
          break;
        }

        v21 = getGCHapticsLogger(v20);
        [_GCHapticServerManager readParamCurveListCommand:v21 client:?];
      }

      else if (var1 == 11)
      {
        v18 = gc_isInternalBuild(Command, v12);
        if (!v18)
        {
          break;
        }

        v19 = getGCHapticsLogger(v18);
        [_GCHapticServerManager readParamCurveListCommand:v19 client:?];
      }

      else
      {
        v22 = gc_isInternalBuild(Command, v12);
        if (!v22)
        {
          break;
        }

        v23 = getGCHapticsLogger(v22);
        [(_GCHapticServerManager *)v23 readParamCurveListCommand:buf client:?];
      }

      break;
    }

    command->var2 = var2 + command->var2;
    v14 = gc_isInternalBuild(Command, v12);
    if (v14)
    {
      v15 = getGCHapticsLogger(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = command->var2;
        v17 = command->var0.var1;
        *buf = v24;
        *&buf[4] = v16;
        v26 = 1024;
        v27 = v17;
        _os_log_debug_impl(&dword_1D2CD5000, v15, OS_LOG_TYPE_DEBUG, "AddParamCurve - adjusted time: %.3f, type: %u", buf, 0x12u);
      }
    }

    [(_GCHapticServerManager *)self scheduleCommand:command];
  }
}

- (void)readListCommand:(HapticCommand *)command client:(id)client renderTime:(double)var2
{
  v44 = *MEMORY[0x1E69E9840];
  clientCopy = client;
  if (command->var2 > var2)
  {
    var2 = command->var2;
  }

  *&v9 = 67110144;
  v34 = v9;
  while (1)
  {
    while (1)
    {
      Command = HapticSharedMemory::readCommand([clientCopy sharedMemory], command);
      if (!Command)
      {
        isInternalBuild = gc_isInternalBuild(Command, v11);
        if (!isInternalBuild)
        {
          goto LABEL_20;
        }

        v29 = getGCHapticsLogger(isInternalBuild);
        [_GCHapticServerManager readListCommand:v29 client:buf renderTime:?];
        goto LABEL_22;
      }

      var1 = command->var0.var1;
      if (var1 != 9)
      {
        break;
      }

      command->var2 = var2 + command->var2;
      v17 = gc_isInternalBuild(Command, v11);
      if (v17)
      {
        getGCHapticsLogger(v17);
        objc_claimAutoreleasedReturnValue();
        [_GCHapticServerManager readListCommand:client:renderTime:];
      }

      v18 = *&command->var5.var5.var1[13].var1;
      v41 = *&command->var5.var5.var1[11].var1;
      v42 = v18;
      v43 = *&command->var5.var5.var1[15].var1;
      v19 = *&command->var5.var5.var1[5].var1;
      v37 = *&command->var5.var5.var1[3].var1;
      v38 = v19;
      v20 = *&command->var5.var5.var1[9].var1;
      v39 = *&command->var5.var5.var1[7].var1;
      v40 = v20;
      v21 = *&command->var3;
      *buf = *&command->var0.var0;
      *&buf[16] = v21;
      v22 = *&command->var5.var5.var1[1].var1;
      *&buf[32] = *&command->var5.var0.var0;
      v36 = v22;
      [(_GCHapticServerManager *)self readParamCurveListCommand:buf client:clientCopy];
    }

    if (var1 == 6)
    {
      break;
    }

    if (var1 == 7)
    {
      v30 = gc_isInternalBuild(Command, v11);
      if (!v30)
      {
        goto LABEL_20;
      }

      v31 = getGCHapticsLogger(v30);
      [_GCHapticServerManager readListCommand:v31 client:? renderTime:?];
      goto LABEL_22;
    }

    command->var2 = var2 + command->var2;
    v13 = [(_GCHapticServerManager *)self scheduleCommand:command];
    v15 = gc_isInternalBuild(v13, v14);
    if (v15)
    {
      v16 = getGCHapticsLogger(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v23 = command->var0.var1;
        var4 = command->var4;
        var0 = command->var5.var0.var0;
        v26 = command->var2;
        var3 = command->var3;
        *buf = v34;
        *&buf[4] = v23;
        *&buf[8] = 2048;
        *&buf[10] = var4;
        *&buf[18] = 2048;
        *&buf[20] = v26;
        *&buf[28] = 1024;
        *&buf[30] = var0;
        *&buf[34] = 2048;
        *&buf[36] = var3;
        _os_log_debug_impl(&dword_1D2CD5000, v16, OS_LOG_TYPE_DEBUG, "Start event type %u, event id %lu, time %.3f, token %u, channel %lu", buf, 0x2Cu);
      }
    }
  }

  v32 = gc_isInternalBuild(Command, v11);
  if (!v32)
  {
    goto LABEL_20;
  }

  v33 = getGCHapticsLogger(v32);
  [_GCHapticServerManager readListCommand:v33 client:? renderTime:?];
LABEL_22:

LABEL_20:
}

- (id)__onqueue_reserveChannels:(unint64_t)channels forClient:(id)client
{
  v44 = *MEMORY[0x1E69E9840];
  clientCopy = client;
  logicalHapticDevices = self->_logicalHapticDevices;
  identifier = [clientCopy identifier];
  v9 = [(NSMutableDictionary *)logicalHapticDevices objectForKey:identifier];

  v37 = v9;
  if (v9)
  {
    array = [MEMORY[0x1E695DF70] array];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    channelID = selfCopy->_channelID;
    selfCopy->_channelID = channelID + channels;
    objc_sync_exit(selfCopy);

    isInternalBuild = gc_isInternalBuild(v15, v16);
    if (isInternalBuild)
    {
      v33 = getGCHapticsLogger(isInternalBuild);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        *buf = 134218496;
        channelsCopy = channels;
        v40 = 2048;
        v41 = channelID;
        v42 = 2048;
        v43 = channelID + channels;
        _os_log_impl(&dword_1D2CD5000, v33, OS_LOG_TYPE_INFO, "reserving %lu channels, from [%lu - %lu)", buf, 0x20u);
      }
    }

    if (channelID < channelID + channels)
    {
      channelsCopy2 = channels;
      v19 = channelID;
      do
      {
        v20 = [_GCHapticPlayer alloc];
        actuators = [clientCopy actuators];
        v22 = [(_GCHapticPlayer *)v20 initWithIdentifier:v19 actuators:actuators client:clientCopy];

        [array addObject:v22];
        ++v19;
        --channelsCopy2;
      }

      while (channelsCopy2);
      if (channelID < channelID + channels)
      {
        v23 = 0;
        v36 = 134218242;
        do
        {
          v24 = [array objectAtIndexedSubscript:{v23, v36}];
          hapticPlayers = selfCopy->_hapticPlayers;
          v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:channelID];
          [(NSMutableDictionary *)hapticPlayers setObject:v24 forKey:v26];

          v29 = gc_isInternalBuild(v27, v28);
          if (v29)
          {
            v30 = getGCHapticsLogger(v29);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
            {
              *buf = v36;
              channelsCopy = channelID;
              v40 = 2112;
              v41 = v24;
              _os_log_impl(&dword_1D2CD5000, v30, OS_LOG_TYPE_INFO, "_hapticPlayers[%lu] = %@", buf, 0x16u);
            }
          }

          [v24 setHapticLogicalDevice:v37];
          [v37[4] addObject:v24];

          ++channelID;
          ++v23;
          --channels;
        }

        while (channels);
      }
    }
  }

  else
  {
    v31 = gc_isInternalBuild(v10, v11);
    if (v31)
    {
      v34 = getGCHapticsLogger(v31);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        identifier2 = [clientCopy identifier];
        [(_GCHapticServerManager *)identifier2 __onqueue_reserveChannels:buf forClient:channels, v34];
      }
    }

    array = 0;
  }

  return array;
}

- (void)acceptNewConnection:fromHapticsEnabledApp:.cold.1()
{
  OUTLINED_FUNCTION_6_4();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_12_3(v2, v3, v4, v5, v6);
  }
}

- (void)readClientDataForStartTime:(_BYTE *)a3 endTime:.cold.1(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  OUTLINED_FUNCTION_6_4();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    *a3 = 0;
    OUTLINED_FUNCTION_4_6();
    _os_log_debug_impl(v7, v8, v9, v10, v11, 2u);
  }
}

- (void)processActiveEventsForStartTime:endTime:.cold.1()
{
  OUTLINED_FUNCTION_2_8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v1 = 138412290;
    *v2 = v3;
    OUTLINED_FUNCTION_4_6();
    _os_log_debug_impl(v5, v6, v7, v8, v9, 0xCu);
  }
}

- (void)readParamCurveListCommand:client:.cold.1()
{
  OUTLINED_FUNCTION_6_4();
  if (OUTLINED_FUNCTION_11_3(v1))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  }
}

- (void)readParamCurveListCommand:(NSObject *)a1 client:.cold.2(NSObject *a1)
{
  if (OUTLINED_FUNCTION_8_4(a1))
  {
    OUTLINED_FUNCTION_5_6();
    _os_log_debug_impl(v3, v4, v5, v6, v7, 2u);
  }

  *v1 = v2;
}

- (void)readParamCurveListCommand:(NSObject *)a1 client:.cold.3(NSObject *a1)
{
  if (OUTLINED_FUNCTION_8_4(a1))
  {
    OUTLINED_FUNCTION_5_6();
    _os_log_debug_impl(v3, v4, v5, v6, v7, 2u);
  }

  *v1 = v2;
}

- (void)readParamCurveListCommand:(NSObject *)a3 client:.cold.4(NSObject *a1, uint64_t a2, NSObject **a3)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_5_6();
    _os_log_debug_impl(v5, v6, v7, v8, v9, 8u);
  }

  *a3 = a1;
}

- (void)readListCommand:(NSObject *)a1 client:(NSObject *)a2 renderTime:.cold.1(NSObject *a1, NSObject **a2)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1D2CD5000, a1, OS_LOG_TYPE_INFO, "Reached end of queued commands", v4, 2u);
  }

  *a2 = a1;
}

- (void)readListCommand:(NSObject *)a1 client:renderTime:.cold.2(NSObject *a1)
{
  if (OUTLINED_FUNCTION_8_4(a1))
  {
    OUTLINED_FUNCTION_5_6();
    _os_log_debug_impl(v3, v4, v5, v6, v7, 2u);
  }

  *v1 = v2;
}

- (void)readListCommand:(NSObject *)a1 client:renderTime:.cold.3(NSObject *a1)
{
  if (OUTLINED_FUNCTION_8_4(a1))
  {
    OUTLINED_FUNCTION_5_6();
    _os_log_debug_impl(v3, v4, v5, v6, v7, 2u);
  }

  *v1 = v2;
}

- (void)readListCommand:client:renderTime:.cold.4()
{
  OUTLINED_FUNCTION_2_8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = *v3;
    *v1 = 134217984;
    *v2 = v5;
    OUTLINED_FUNCTION_4_6();
    _os_log_debug_impl(v6, v7, v8, v9, v10, 0xCu);
  }
}

- (void)__onqueue_reserveChannels:(uint64_t)a3 forClient:(os_log_t)log .cold.1(void *a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 134218242;
  *(buf + 4) = a3;
  *(buf + 6) = 2112;
  *(buf + 14) = a1;
  _os_log_error_impl(&dword_1D2CD5000, log, OS_LOG_TYPE_ERROR, "reserving %lu channels - unknown client: %@", buf, 0x16u);
}

@end