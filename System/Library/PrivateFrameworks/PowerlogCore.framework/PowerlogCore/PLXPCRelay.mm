@interface PLXPCRelay
+ (id)sharedInstance;
- (BOOL)isDebugEnabled;
- (OS_xpc_object)relayConnection;
- (PLXPCRelay)init;
- (void)handleCrashMoverConnection:(id)connection;
- (void)handlePeer:(id)peer forEvent:(id)event;
- (void)movePowerlogs;
- (void)resetRelayConnection;
- (void)startRelay;
- (void)stopRelay;
@end

@implementation PLXPCRelay

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_5 != -1)
  {
    +[PLXPCRelay sharedInstance];
  }

  v3 = sharedInstance__sharedRelay;

  return v3;
}

uint64_t __28__PLXPCRelay_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(PLXPCRelay);
  sharedInstance__sharedRelay = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

- (PLXPCRelay)init
{
  v22.receiver = self;
  v22.super_class = PLXPCRelay;
  v2 = [(PLXPCRelay *)&v22 init];
  if (!v2)
  {
    goto LABEL_4;
  }

  if (+[PLUtilities isLiteModeDaemon])
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_BACKGROUND, 0);

    v5 = dispatch_queue_create_with_target_V2("com.apple.powerlog_mover", v4, 0);
    v6 = *(v2 + 5);
    *(v2 + 5) = v5;

    mach_service = xpc_connection_create_mach_service("com.apple.powerlog_mover", *(v2 + 5), 1uLL);
    v8 = *(v2 + 4);
    *(v2 + 4) = mach_service;

    xpc_connection_set_context(*(v2 + 4), v2);
    v9 = *(v2 + 4);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __18__PLXPCRelay_init__block_invoke_20;
    v19[3] = &unk_1E8519FA8;
    v20 = v2;
    xpc_connection_set_event_handler(v9, v19);
    xpc_connection_activate(*(v2 + 4));

LABEL_4:
    v10 = v2;
    goto LABEL_13;
  }

  if (+[PLDefaults debugEnabled])
  {
    v11 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __18__PLXPCRelay_init__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v11;
    if (init_defaultOnce_1 != -1)
    {
      dispatch_once(&init_defaultOnce_1, block);
    }

    if (init_classDebugEnabled_1 == 1)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Relay: Bad processname, no xpc relay for you"];
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLXPCRelay.m"];
      lastPathComponent = [v13 lastPathComponent];
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLXPCRelay init]"];
      [PLCoreStorage logMessage:v12 fromFile:lastPathComponent fromFunction:v15 fromLineNumber:46];

      v17 = PLLogCommon(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v10 = 0;
LABEL_13:

  return v10;
}

BOOL __18__PLXPCRelay_init__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  init_classDebugEnabled_1 = result;
  return result;
}

void __18__PLXPCRelay_init__block_invoke_20(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MEMORY[0x1DA71B8B0]() == MEMORY[0x1E69E9E68])
  {
    [*(a1 + 32) handleCrashMoverConnection:v3];
  }
}

- (void)startRelay
{
  if (+[PLDefaults debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __24__PLXPCRelay_startRelay__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (startRelay_defaultOnce != -1)
    {
      dispatch_once(&startRelay_defaultOnce, block);
    }

    if (startRelay_classDebugEnabled == 1)
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Relay: Relay running in aggd with service %s to %s", "com.apple.powerlog.plxpclogger.xpc", "com.apple.powerlogd.XPCService.xpc"];
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLXPCRelay.m"];
      lastPathComponent = [v5 lastPathComponent];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLXPCRelay startRelay]"];
      [PLCoreStorage logMessage:v4 fromFile:lastPathComponent fromFunction:v7 fromLineNumber:71];

      v9 = PLLogCommon(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  [(PLXPCRelay *)self setRelayActive:1];
  v10 = [PLUtilities workQueueForKey:@"XPCRelay_Connection"];
  mach_service = xpc_connection_create_mach_service("com.apple.powerlog.plxpclogger.xpc", v10, 1uLL);
  [(PLXPCRelay *)self setXpcConnection:mach_service];

  xpcConnection = [(PLXPCRelay *)self xpcConnection];
  xpc_connection_set_context(xpcConnection, self);

  xpcConnection2 = [(PLXPCRelay *)self xpcConnection];
  v14 = dispatch_get_global_queue(2, 0);
  xpc_connection_set_target_queue(xpcConnection2, v14);

  xpcConnection3 = [(PLXPCRelay *)self xpcConnection];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __24__PLXPCRelay_startRelay__block_invoke_30;
  handler[3] = &unk_1E8519FA8;
  handler[4] = self;
  xpc_connection_set_event_handler(xpcConnection3, handler);

  xpcConnection4 = [(PLXPCRelay *)self xpcConnection];
  xpc_connection_activate(xpcConnection4);
}

BOOL __24__PLXPCRelay_startRelay__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  startRelay_classDebugEnabled = result;
  return result;
}

void __24__PLXPCRelay_startRelay__block_invoke_30(uint64_t a1, void *a2)
{
  v3 = a2;
  if (+[PLDefaults debugEnabled])
  {
    v4 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __24__PLXPCRelay_startRelay__block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v4;
    if (relayConnectionSync_block_invoke_defaultOnce != -1)
    {
      dispatch_once(&relayConnectionSync_block_invoke_defaultOnce, block);
    }

    if (relayConnectionSync_block_invoke_classDebugEnabled == 1)
    {
      v5 = MEMORY[0x1E696AEC0];
      v6 = [*(a1 + 32) xpcConnection];
      v7 = [v5 stringWithFormat:@"Relay: event handler fired peerPID=%d %@", xpc_connection_get_pid(v6), v3];

      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLXPCRelay.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLXPCRelay startRelay]_block_invoke"];
      [PLCoreStorage logMessage:v7 fromFile:v9 fromFunction:v10 fromLineNumber:78];

      v12 = PLLogCommon(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  if (MEMORY[0x1DA71B8B0](v3) != MEMORY[0x1E69E9E98])
  {
    v13 = v3;
    v14 = [*(a1 + 32) xpcConnection];
    context = xpc_connection_get_context(v14);
    xpc_connection_set_context(v13, context);

    v16 = dispatch_get_global_queue(2, 0);
    xpc_connection_set_target_queue(v13, v16);

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __24__PLXPCRelay_startRelay__block_invoke_41;
    handler[3] = &unk_1E851B250;
    handler[4] = *(a1 + 32);
    v25 = v13;
    v17 = v13;
    xpc_connection_set_event_handler(v17, handler);
    xpc_connection_activate(v17);

LABEL_10:
    goto LABEL_18;
  }

  if (+[PLDefaults debugEnabled])
  {
    v18 = objc_opt_class();
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __24__PLXPCRelay_startRelay__block_invoke_36;
    v26[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v26[4] = v18;
    if (relayConnectionSync_block_invoke_defaultOnce_34 != -1)
    {
      dispatch_once(&relayConnectionSync_block_invoke_defaultOnce_34, v26);
    }

    if (relayConnectionSync_block_invoke_classDebugEnabled_35 == 1)
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Relay: XPC error! %@", v3];
      v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLXPCRelay.m"];
      v20 = [v19 lastPathComponent];
      v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLXPCRelay startRelay]_block_invoke_2"];
      [PLCoreStorage logMessage:v17 fromFile:v20 fromFunction:v21 fromLineNumber:81];

      v23 = PLLogCommon(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

      goto LABEL_10;
    }
  }

LABEL_18:
}

BOOL __24__PLXPCRelay_startRelay__block_invoke_2(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  relayConnectionSync_block_invoke_classDebugEnabled = result;
  return result;
}

BOOL __24__PLXPCRelay_startRelay__block_invoke_36(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  relayConnectionSync_block_invoke_classDebugEnabled_35 = result;
  return result;
}

void __24__PLXPCRelay_startRelay__block_invoke_41(uint64_t a1, void *a2)
{
  v3 = a2;
  if (+[PLDefaults debugEnabled])
  {
    v4 = objc_opt_class();
    block = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __24__PLXPCRelay_startRelay__block_invoke_2_42;
    v17 = &__block_descriptor_40_e5_v8__0lu32l8;
    v18 = v4;
    if (relayConnectionSync_block_invoke_2_defaultOnce != -1)
    {
      dispatch_once(&relayConnectionSync_block_invoke_2_defaultOnce, &block);
    }

    if (relayConnectionSync_block_invoke_2_classDebugEnabled == 1)
    {
      v5 = MEMORY[0x1E696AEC0];
      pid = xpc_connection_get_pid(*(a1 + 40));
      v7 = [v5 stringWithFormat:@"Relay: peer(%d) connected", pid, block, v15, v16, v17, v18];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLXPCRelay.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLXPCRelay startRelay]_block_invoke"];
      [PLCoreStorage logMessage:v7 fromFile:v9 fromFunction:v10 fromLineNumber:88];

      v12 = PLLogCommon(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v13 = xpc_connection_get_context(*(a1 + 40));
  [v13 handlePeer:*(a1 + 40) forEvent:v3];
}

BOOL __24__PLXPCRelay_startRelay__block_invoke_2_42(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  relayConnectionSync_block_invoke_2_classDebugEnabled = result;
  return result;
}

- (void)stopRelay
{
  if (+[PLDefaults debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __23__PLXPCRelay_stopRelay__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (stopRelay_defaultOnce != -1)
    {
      dispatch_once(&stopRelay_defaultOnce, block);
    }

    if (stopRelay_classDebugEnabled == 1)
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Relay: closing relay in aggd with service %s to %s", "com.apple.powerlog.plxpclogger.xpc", "com.apple.powerlogd.XPCService.xpc"];
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLXPCRelay.m"];
      lastPathComponent = [v5 lastPathComponent];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLXPCRelay stopRelay]"];
      [PLCoreStorage logMessage:v4 fromFile:lastPathComponent fromFunction:v7 fromLineNumber:106];

      v9 = PLLogCommon(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  [(PLXPCRelay *)self setRelayActive:0];
  xpcConnection = [(PLXPCRelay *)self xpcConnection];
  xpc_connection_cancel(xpcConnection);

  [(PLXPCRelay *)self setXpcConnection:0];
  [(PLXPCRelay *)self resetRelayConnection];
}

BOOL __23__PLXPCRelay_stopRelay__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  stopRelay_classDebugEnabled = result;
  return result;
}

- (void)handleCrashMoverConnection:(id)connection
{
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __41__PLXPCRelay_handleCrashMoverConnection___block_invoke;
  handler[3] = &unk_1E8519FA8;
  handler[4] = self;
  connectionCopy = connection;
  xpc_connection_set_event_handler(connectionCopy, handler);
  xpc_connection_set_target_queue(connectionCopy, self->_crashMoverQueue);
  xpc_connection_activate(connectionCopy);
}

void *__41__PLXPCRelay_handleCrashMoverConnection___block_invoke(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x1DA71B8B0](a2);
  if (result == MEMORY[0x1E69E9E80])
  {
    v4 = *(a1 + 32);

    return [v4 movePowerlogs];
  }

  return result;
}

- (void)movePowerlogs
{
  if (+[PLDefaults fullMode])
  {

    MEMORY[0x1EEE2EC08]();
  }
}

- (BOOL)isDebugEnabled
{
  v2 = objc_opt_class();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__PLXPCRelay_isDebugEnabled__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
  block[4] = v2;
  if (isDebugEnabled_defaultOnce != -1)
  {
    dispatch_once(&isDebugEnabled_defaultOnce, block);
  }

  return (isDebugEnabled_classDebugEnabled & 1) != 0 || [PLDefaults isClassNameDebugEnabled:@"PLXPCService"];
}

BOOL __28__PLXPCRelay_isDebugEnabled__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  isDebugEnabled_classDebugEnabled = result;
  return result;
}

- (void)handlePeer:(id)peer forEvent:(id)event
{
  peerCopy = peer;
  eventCopy = event;
  v8 = MEMORY[0x1DA71B8B0]();
  if (v8 == MEMORY[0x1E69E9E98])
  {
    if (eventCopy == MEMORY[0x1E69E9E20])
    {
      if (!+[PLDefaults debugEnabled])
      {
        goto LABEL_47;
      }

      v33 = objc_opt_class();
      v126[0] = MEMORY[0x1E69E9820];
      v126[1] = 3221225472;
      v126[2] = __34__PLXPCRelay_handlePeer_forEvent___block_invoke;
      v126[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v126[4] = v33;
      if (handlePeer_forEvent__defaultOnce != -1)
      {
        dispatch_once(&handlePeer_forEvent__defaultOnce, v126);
      }

      if (handlePeer_forEvent__classDebugEnabled != 1)
      {
        goto LABEL_47;
      }

      eventCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Relay: peer(%d) received XPC_ERROR_CONNECTION_INVALID", xpc_connection_get_pid(peerCopy)];
      v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLXPCRelay.m"];
      lastPathComponent = [v34 lastPathComponent];
      v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLXPCRelay handlePeer:forEvent:]"];
      [PLCoreStorage logMessage:eventCopy fromFile:lastPathComponent fromFunction:v36 fromLineNumber:146];

      v24 = PLLogCommon(v37);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }

    else if (eventCopy == MEMORY[0x1E69E9E18])
    {
      if (!+[PLDefaults debugEnabled])
      {
        goto LABEL_47;
      }

      v38 = objc_opt_class();
      v125[0] = MEMORY[0x1E69E9820];
      v125[1] = 3221225472;
      v125[2] = __34__PLXPCRelay_handlePeer_forEvent___block_invoke_57;
      v125[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v125[4] = v38;
      if (handlePeer_forEvent__defaultOnce_55 != -1)
      {
        dispatch_once(&handlePeer_forEvent__defaultOnce_55, v125);
      }

      if (handlePeer_forEvent__classDebugEnabled_56 != 1)
      {
        goto LABEL_47;
      }

      eventCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Relay: peer(%d) received XPC_ERROR_CONNECTION_INTERRUPTED", xpc_connection_get_pid(peerCopy)];
      v39 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLXPCRelay.m"];
      lastPathComponent2 = [v39 lastPathComponent];
      v41 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLXPCRelay handlePeer:forEvent:]"];
      [PLCoreStorage logMessage:eventCopy fromFile:lastPathComponent2 fromFunction:v41 fromLineNumber:150];

      v24 = PLLogCommon(v42);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }

    else
    {
      v16 = MEMORY[0x1E69E9E38];
      v17 = +[PLDefaults debugEnabled];
      if (eventCopy == v16)
      {
        if (!v17)
        {
          goto LABEL_47;
        }

        v43 = objc_opt_class();
        v124[0] = MEMORY[0x1E69E9820];
        v124[1] = 3221225472;
        v124[2] = __34__PLXPCRelay_handlePeer_forEvent___block_invoke_63;
        v124[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v124[4] = v43;
        if (handlePeer_forEvent__defaultOnce_61 != -1)
        {
          dispatch_once(&handlePeer_forEvent__defaultOnce_61, v124);
        }

        if (handlePeer_forEvent__classDebugEnabled_62 != 1)
        {
          goto LABEL_47;
        }

        eventCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Relay: peer(%d) received XPC_ERROR_TERMINATION_IMMINENT", xpc_connection_get_pid(peerCopy)];
        v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLXPCRelay.m"];
        lastPathComponent3 = [v44 lastPathComponent];
        v46 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLXPCRelay handlePeer:forEvent:]"];
        [PLCoreStorage logMessage:eventCopy fromFile:lastPathComponent3 fromFunction:v46 fromLineNumber:154];

        v24 = PLLogCommon(v47);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }

      else
      {
        if (!v17)
        {
          goto LABEL_47;
        }

        v18 = objc_opt_class();
        v123[0] = MEMORY[0x1E69E9820];
        v123[1] = 3221225472;
        v123[2] = __34__PLXPCRelay_handlePeer_forEvent___block_invoke_69;
        v123[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v123[4] = v18;
        if (handlePeer_forEvent__defaultOnce_67 != -1)
        {
          dispatch_once(&handlePeer_forEvent__defaultOnce_67, v123);
        }

        if (handlePeer_forEvent__classDebugEnabled_68 != 1)
        {
          goto LABEL_47;
        }

        eventCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Relay: peer(%d) received Unidentified error:%@", xpc_connection_get_pid(peerCopy), eventCopy];
        v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLXPCRelay.m"];
        lastPathComponent4 = [v20 lastPathComponent];
        v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLXPCRelay handlePeer:forEvent:]"];
        [PLCoreStorage logMessage:eventCopy fromFile:lastPathComponent4 fromFunction:v22 fromLineNumber:159];

        v24 = PLLogCommon(v23);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

LABEL_47:
    xpc_connection_cancel(peerCopy);
    goto LABEL_117;
  }

  if (v8 == MEMORY[0x1E69E9E80])
  {
    v10 = _CFXPCCreateCFObjectFromXPCMessage();
    if (+[PLDefaults debugEnabled])
    {
      v25 = objc_opt_class();
      v122[0] = MEMORY[0x1E69E9820];
      v122[1] = 3221225472;
      v122[2] = __34__PLXPCRelay_handlePeer_forEvent___block_invoke_75;
      v122[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v122[4] = v25;
      if (handlePeer_forEvent__defaultOnce_73 != -1)
      {
        dispatch_once(&handlePeer_forEvent__defaultOnce_73, v122);
      }

      if (handlePeer_forEvent__classDebugEnabled_74 == 1)
      {
        v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Relay: message = %@", v10];
        v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLXPCRelay.m"];
        lastPathComponent5 = [v27 lastPathComponent];
        v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLXPCRelay handlePeer:forEvent:]"];
        [PLCoreStorage logMessage:v26 fromFile:lastPathComponent5 fromFunction:v29 fromLineNumber:165];

        v31 = PLLogCommon(v30);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

    if (!v10)
    {
      goto LABEL_116;
    }

    v32 = [v10 objectForKey:@"shouldLog"];
    if (v32)
    {
    }

    else
    {
      v48 = [v10 objectForKey:@"Query"];

      if (!v48)
      {
        v93 = [v10 objectForKey:@"Post"];

        if (v93)
        {
          v94 = _CFXPCCreateXPCMessageWithCFObject();
          if (!v94)
          {
            v15 = PLLogCommon(0);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              [PLXPCRelay handlePeer:forEvent:];
            }

            goto LABEL_115;
          }

          v15 = v94;
          relayConnection = [(PLXPCRelay *)self relayConnection];
          xpc_connection_send_notification();
        }

        else
        {
          if (!+[PLDefaults debugEnabled])
          {
            goto LABEL_116;
          }

          v97 = objc_opt_class();
          v117[0] = MEMORY[0x1E69E9820];
          v117[1] = 3221225472;
          v117[2] = __34__PLXPCRelay_handlePeer_forEvent___block_invoke_117;
          v117[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v117[4] = v97;
          if (handlePeer_forEvent__defaultOnce_115 != -1)
          {
            dispatch_once(&handlePeer_forEvent__defaultOnce_115, v117);
          }

          if (handlePeer_forEvent__classDebugEnabled_116 != 1)
          {
            goto LABEL_116;
          }

          v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Message with no direction: %@", v10];
          v98 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLXPCRelay.m"];
          lastPathComponent6 = [v98 lastPathComponent];
          v100 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLXPCRelay handlePeer:forEvent:]"];
          [PLCoreStorage logMessage:v15 fromFile:lastPathComponent6 fromFunction:v100 fromLineNumber:260];

          relayConnection = PLLogCommon(v101);
          if (os_log_type_enabled(relayConnection, OS_LOG_TYPE_DEBUG))
          {
            [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
          }
        }

        goto LABEL_94;
      }
    }

    v49 = [v10 objectForKey:@"Query"];
    if (v49)
    {
      v50 = v49;
      v51 = [PLUtilities allowQueryFromPeer:peerCopy];

      if (!v51)
      {
        goto LABEL_116;
      }
    }

    v52 = _CFXPCCreateXPCMessageWithCFObject();
    if (!v52)
    {
      v15 = PLLogCommon(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [PLXPCRelay handlePeer:forEvent:];
      }

      goto LABEL_115;
    }

    v15 = v52;
    relayConnection2 = [(PLXPCRelay *)self relayConnection];
    v54 = xpc_connection_send_message_with_reply_sync(relayConnection2, v15);

    if (v54)
    {
      if (+[PLDefaults debugEnabled])
      {
        v56 = objc_opt_class();
        v121[0] = MEMORY[0x1E69E9820];
        v121[1] = 3221225472;
        v121[2] = __34__PLXPCRelay_handlePeer_forEvent___block_invoke_87;
        v121[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v121[4] = v56;
        if (handlePeer_forEvent__defaultOnce_85 != -1)
        {
          dispatch_once(&handlePeer_forEvent__defaultOnce_85, v121);
        }

        if (handlePeer_forEvent__classDebugEnabled_86 == 1)
        {
          v112 = v54;
          v57 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Relay: xpc_response=%@", v54];
          v58 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLXPCRelay.m"];
          lastPathComponent7 = [v58 lastPathComponent];
          v60 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLXPCRelay handlePeer:forEvent:]"];
          [PLCoreStorage logMessage:v57 fromFile:lastPathComponent7 fromFunction:v60 fromLineNumber:190];

          v61 = v57;
          v63 = PLLogCommon(v62);
          if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
          {
            [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
          }

          v54 = v112;
        }
      }

      v64 = xpc_dictionary_get_value(v54, [@"PLXPCConnectionReturnDict" UTF8String]);
      if (v64)
      {
        if (+[PLDefaults debugEnabled])
        {
          v65 = objc_opt_class();
          v120[0] = MEMORY[0x1E69E9820];
          v120[1] = 3221225472;
          v120[2] = __34__PLXPCRelay_handlePeer_forEvent___block_invoke_96;
          v120[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v120[4] = v65;
          if (handlePeer_forEvent__defaultOnce_94 != -1)
          {
            dispatch_once(&handlePeer_forEvent__defaultOnce_94, v120);
          }

          if (handlePeer_forEvent__classDebugEnabled_95 == 1)
          {
            v109 = v64;
            v113 = v54;
            v106 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Relay: xpc_return_dict=%@", v64];
            v66 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLXPCRelay.m"];
            lastPathComponent8 = [v66 lastPathComponent];
            v68 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLXPCRelay handlePeer:forEvent:]"];
            [PLCoreStorage logMessage:v106 fromFile:lastPathComponent8 fromFunction:v68 fromLineNumber:201];

            v70 = PLLogCommon(v69);
            if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
            {
              [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
            }

            v64 = v109;
            v54 = v113;
          }
        }

        v71 = _CFXPCCreateCFObjectFromXPCMessage();
        if (v71)
        {
          v72 = v71;
          if (+[PLDefaults debugEnabled])
          {
            v73 = objc_opt_class();
            v119[0] = MEMORY[0x1E69E9820];
            v119[1] = 3221225472;
            v119[2] = __34__PLXPCRelay_handlePeer_forEvent___block_invoke_102;
            v119[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v119[4] = v73;
            if (handlePeer_forEvent__defaultOnce_100 != -1)
            {
              dispatch_once(&handlePeer_forEvent__defaultOnce_100, v119);
            }

            if (handlePeer_forEvent__classDebugEnabled_101 == 1)
            {
              v110 = v64;
              v114 = v54;
              v107 = v72;
              v74 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Relay: response=%@", v72];
              v75 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLXPCRelay.m"];
              lastPathComponent9 = [v75 lastPathComponent];
              v77 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLXPCRelay handlePeer:forEvent:]"];
              [PLCoreStorage logMessage:v74 fromFile:lastPathComponent9 fromFunction:v77 fromLineNumber:213];

              v78 = v74;
              v80 = PLLogCommon(v79);
              if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
              {
                [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
              }

              v64 = v110;
              v54 = v114;
              v72 = v107;
            }
          }

          v81 = xpc_dictionary_get_remote_connection(eventCopy);
          if (v81)
          {
            v82 = v81;
            if (+[PLDefaults debugEnabled])
            {
              v83 = objc_opt_class();
              v118[0] = MEMORY[0x1E69E9820];
              v118[1] = 3221225472;
              v118[2] = __34__PLXPCRelay_handlePeer_forEvent___block_invoke_108;
              v118[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              v118[4] = v83;
              if (handlePeer_forEvent__defaultOnce_106 != -1)
              {
                dispatch_once(&handlePeer_forEvent__defaultOnce_106, v118);
              }

              if (handlePeer_forEvent__classDebugEnabled_107 == 1)
              {
                v111 = v64;
                v115 = v54;
                v84 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Relay: have remoteConnection"];
                v85 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLXPCRelay.m"];
                lastPathComponent10 = [v85 lastPathComponent];
                v87 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLXPCRelay handlePeer:forEvent:]"];
                [PLCoreStorage logMessage:v84 fromFile:lastPathComponent10 fromFunction:v87 fromLineNumber:224];

                v89 = PLLogCommon(v88);
                if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
                {
                  [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
                }

                v64 = v111;
                v54 = v115;
              }
            }

            reply = xpc_dictionary_create_reply(eventCopy);
            if (reply)
            {
              v91 = reply;
              v92 = _CFXPCCreateXPCMessageWithCFObject();
              if (v92)
              {
                xpc_dictionary_set_value(v91, [@"PLXPCConnectionReturnDict" UTF8String], v92);
                xpc_connection_send_message(v82, v91);
              }

              else
              {
                v108 = v72;
                v104 = v54;
                v105 = PLLogCommon(0);
                if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
                {
                  [PLXPCRelay handlePeer:forEvent:];
                }

                v54 = v104;
                v72 = v108;
              }

              goto LABEL_116;
            }

            v103 = PLLogCommon(0);
            if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
            {
              [PLXPCRelay handlePeer:forEvent:];
            }
          }

          else
          {
            v102 = PLLogCommon(0);
            if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
            {
              [PLXPCRelay handlePeer:forEvent:];
            }
          }

          v15 = v72;
          goto LABEL_115;
        }

        v96 = PLLogCommon(0);
        if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
        {
          [PLXPCRelay handlePeer:forEvent:];
        }
      }

      else
      {
        v96 = PLLogCommon(0);
        if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
        {
          [PLXPCRelay handlePeer:forEvent:];
        }
      }

LABEL_115:
LABEL_116:

      goto LABEL_117;
    }

    relayConnection = PLLogCommon(v55);
    if (os_log_type_enabled(relayConnection, OS_LOG_TYPE_ERROR))
    {
      [PLXPCRelay handlePeer:forEvent:];
    }

LABEL_94:

    goto LABEL_115;
  }

  if (+[PLDefaults debugEnabled])
  {
    v9 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __34__PLXPCRelay_handlePeer_forEvent___block_invoke_123;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v9;
    if (handlePeer_forEvent__defaultOnce_121 != -1)
    {
      dispatch_once(&handlePeer_forEvent__defaultOnce_121, block);
    }

    if (handlePeer_forEvent__classDebugEnabled_122 == 1)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Relay: unknown type"];
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLXPCRelay.m"];
      lastPathComponent11 = [v11 lastPathComponent];
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLXPCRelay handlePeer:forEvent:]"];
      [PLCoreStorage logMessage:v10 fromFile:lastPathComponent11 fromFunction:v13 fromLineNumber:264];

      v15 = PLLogCommon(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

      goto LABEL_115;
    }
  }

LABEL_117:
}

BOOL __34__PLXPCRelay_handlePeer_forEvent___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  handlePeer_forEvent__classDebugEnabled = result;
  return result;
}

BOOL __34__PLXPCRelay_handlePeer_forEvent___block_invoke_57(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  handlePeer_forEvent__classDebugEnabled_56 = result;
  return result;
}

BOOL __34__PLXPCRelay_handlePeer_forEvent___block_invoke_63(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  handlePeer_forEvent__classDebugEnabled_62 = result;
  return result;
}

BOOL __34__PLXPCRelay_handlePeer_forEvent___block_invoke_69(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  handlePeer_forEvent__classDebugEnabled_68 = result;
  return result;
}

BOOL __34__PLXPCRelay_handlePeer_forEvent___block_invoke_75(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  handlePeer_forEvent__classDebugEnabled_74 = result;
  return result;
}

BOOL __34__PLXPCRelay_handlePeer_forEvent___block_invoke_87(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  handlePeer_forEvent__classDebugEnabled_86 = result;
  return result;
}

BOOL __34__PLXPCRelay_handlePeer_forEvent___block_invoke_96(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  handlePeer_forEvent__classDebugEnabled_95 = result;
  return result;
}

BOOL __34__PLXPCRelay_handlePeer_forEvent___block_invoke_102(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  handlePeer_forEvent__classDebugEnabled_101 = result;
  return result;
}

BOOL __34__PLXPCRelay_handlePeer_forEvent___block_invoke_108(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  handlePeer_forEvent__classDebugEnabled_107 = result;
  return result;
}

BOOL __34__PLXPCRelay_handlePeer_forEvent___block_invoke_117(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  handlePeer_forEvent__classDebugEnabled_116 = result;
  return result;
}

BOOL __34__PLXPCRelay_handlePeer_forEvent___block_invoke_123(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  handlePeer_forEvent__classDebugEnabled_122 = result;
  return result;
}

- (OS_xpc_object)relayConnection
{
  objc_sync_enter(@"__relayConnectionSync__");
  if (self->_relayConnection)
  {
    if (+[PLDefaults debugEnabled])
    {
      v3 = objc_opt_class();
      v28 = MEMORY[0x1E69E9820];
      v29 = 3221225472;
      v30 = __29__PLXPCRelay_relayConnection__block_invoke_161;
      v31 = &__block_descriptor_40_e5_v8__0lu32l8;
      v32 = v3;
      if (relayConnection_defaultOnce_159 != -1)
      {
        dispatch_once(&relayConnection_defaultOnce_159, &v28);
      }

      if (relayConnection_classDebugEnabled_160 == 1)
      {
        v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Relay: Reusing connection!", v28, v29, v30, v31, v32];
        v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLXPCRelay.m"];
        lastPathComponent = [v5 lastPathComponent];
        v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLXPCRelay relayConnection]"];
        [PLCoreStorage logMessage:v4 fromFile:lastPathComponent fromFunction:v7 fromLineNumber:296];

        v9 = PLLogCommon(v8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }

LABEL_21:
      }
    }
  }

  else
  {
    if (+[PLDefaults debugEnabled])
    {
      v10 = objc_opt_class();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __29__PLXPCRelay_relayConnection__block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v10;
      if (relayConnection_defaultOnce != -1)
      {
        dispatch_once(&relayConnection_defaultOnce, block);
      }

      if (relayConnection_classDebugEnabled == 1)
      {
        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Relay: creating connection!"];
        v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLXPCRelay.m"];
        lastPathComponent2 = [v12 lastPathComponent];
        v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLXPCRelay relayConnection]"];
        [PLCoreStorage logMessage:v11 fromFile:lastPathComponent2 fromFunction:v14 fromLineNumber:277];

        v16 = PLLogCommon(v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

    v17 = [PLUtilities workQueueForKey:@"XPCRelay_Relay"];
    mach_service = xpc_connection_create_mach_service("com.apple.powerlogd.XPCService.xpc", v17, 0);
    relayConnection = self->_relayConnection;
    self->_relayConnection = mach_service;

    v20 = self->_relayConnection;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __29__PLXPCRelay_relayConnection__block_invoke_133;
    handler[3] = &unk_1E8519FA8;
    handler[4] = self;
    xpc_connection_set_event_handler(v20, handler);
    xpc_connection_activate(self->_relayConnection);
    if (+[PLDefaults debugEnabled])
    {
      v21 = objc_opt_class();
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __29__PLXPCRelay_relayConnection__block_invoke_155;
      v33[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v33[4] = v21;
      if (relayConnection_defaultOnce_153 != -1)
      {
        dispatch_once(&relayConnection_defaultOnce_153, v33);
      }

      if (relayConnection_classDebugEnabled_154 == 1)
      {
        v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Relay: connection created!"];
        v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLXPCRelay.m"];
        lastPathComponent3 = [v22 lastPathComponent];
        v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLXPCRelay relayConnection]"];
        [PLCoreStorage logMessage:v4 fromFile:lastPathComponent3 fromFunction:v24 fromLineNumber:294];

        v9 = PLLogCommon(v25);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }

        goto LABEL_21;
      }
    }
  }

  v26 = self->_relayConnection;
  objc_sync_exit(@"__relayConnectionSync__");

  return v26;
}

BOOL __29__PLXPCRelay_relayConnection__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  relayConnection_classDebugEnabled = result;
  return result;
}

void __29__PLXPCRelay_relayConnection__block_invoke_133(uint64_t a1, void *a2)
{
  v3 = a2;
  if (+[PLDefaults debugEnabled])
  {
    v4 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __29__PLXPCRelay_relayConnection__block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v4;
    if (relayConnectionSync_block_invoke_3_defaultOnce != -1)
    {
      dispatch_once(&relayConnectionSync_block_invoke_3_defaultOnce, block);
    }

    if (relayConnectionSync_block_invoke_3_classDebugEnabled == 1)
    {
      v5 = MEMORY[0x1E696AEC0];
      v6 = [*(a1 + 32) relayConnection];
      v7 = [v5 stringWithFormat:@"Relay: event handler fired peerPID=%d %@", xpc_connection_get_pid(v6), v3];

      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLXPCRelay.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLXPCRelay relayConnection]_block_invoke"];
      [PLCoreStorage logMessage:v7 fromFile:v9 fromFunction:v10 fromLineNumber:280];

      v12 = PLLogCommon(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v13 = MEMORY[0x1DA71B8B0](v3);
  v14 = MEMORY[0x1E69E9E98];
  v15 = +[PLDefaults debugEnabled];
  if (v13 == v14)
  {
    if (v15)
    {
      v23 = objc_opt_class();
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __29__PLXPCRelay_relayConnection__block_invoke_136;
      v39[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v39[4] = v23;
      if (relayConnectionSync_block_invoke_3_defaultOnce_134 != -1)
      {
        dispatch_once(&relayConnectionSync_block_invoke_3_defaultOnce_134, v39);
      }

      if (relayConnectionSync_block_invoke_3_classDebugEnabled_135 == 1)
      {
        v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"*** Relay ERROR*** XPC error! %@", v3];
        v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLXPCRelay.m"];
        v26 = [v25 lastPathComponent];
        v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLXPCRelay relayConnection]_block_invoke_2"];
        [PLCoreStorage logMessage:v24 fromFile:v26 fromFunction:v27 fromLineNumber:283];

        v29 = PLLogCommon(v28);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

    if (v3 == MEMORY[0x1E69E9E20] || v3 == MEMORY[0x1E69E9E18])
    {
      if (+[PLDefaults debugEnabled])
      {
        v30 = objc_opt_class();
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __29__PLXPCRelay_relayConnection__block_invoke_143;
        v38[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v38[4] = v30;
        if (relayConnectionSync_block_invoke_3_defaultOnce_141 != -1)
        {
          dispatch_once(&relayConnectionSync_block_invoke_3_defaultOnce_141, v38);
        }

        if (relayConnectionSync_block_invoke_3_classDebugEnabled_142 == 1)
        {
          v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"*** Relay RESET *** Resetting our connection"];
          v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLXPCRelay.m"];
          v33 = [v32 lastPathComponent];
          v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLXPCRelay relayConnection]_block_invoke_2"];
          [PLCoreStorage logMessage:v31 fromFile:v33 fromFunction:v34 fromLineNumber:285];

          v36 = PLLogCommon(v35);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
          }
        }
      }

      [*(a1 + 32) resetRelayConnection];
    }
  }

  else if (v15)
  {
    v16 = objc_opt_class();
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __29__PLXPCRelay_relayConnection__block_invoke_149;
    v37[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v37[4] = v16;
    if (relayConnectionSync_block_invoke_3_defaultOnce_147 != -1)
    {
      dispatch_once(&relayConnectionSync_block_invoke_3_defaultOnce_147, v37);
    }

    if (relayConnectionSync_block_invoke_3_classDebugEnabled_148 == 1)
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"*** Relay ERROR*** XPC relay back? %@", v3];
      v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLXPCRelay.m"];
      v19 = [v18 lastPathComponent];
      v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLXPCRelay relayConnection]_block_invoke_2"];
      [PLCoreStorage logMessage:v17 fromFile:v19 fromFunction:v20 fromLineNumber:290];

      v22 = PLLogCommon(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }
}

BOOL __29__PLXPCRelay_relayConnection__block_invoke_2(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  relayConnectionSync_block_invoke_3_classDebugEnabled = result;
  return result;
}

BOOL __29__PLXPCRelay_relayConnection__block_invoke_136(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  relayConnectionSync_block_invoke_3_classDebugEnabled_135 = result;
  return result;
}

BOOL __29__PLXPCRelay_relayConnection__block_invoke_143(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  relayConnectionSync_block_invoke_3_classDebugEnabled_142 = result;
  return result;
}

BOOL __29__PLXPCRelay_relayConnection__block_invoke_149(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  relayConnectionSync_block_invoke_3_classDebugEnabled_148 = result;
  return result;
}

BOOL __29__PLXPCRelay_relayConnection__block_invoke_155(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  relayConnection_classDebugEnabled_154 = result;
  return result;
}

BOOL __29__PLXPCRelay_relayConnection__block_invoke_161(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  relayConnection_classDebugEnabled_160 = result;
  return result;
}

- (void)resetRelayConnection
{
  objc_sync_enter(@"__relayConnectionSync__");
  relayConnection = self->_relayConnection;
  if (relayConnection)
  {
    xpc_connection_cancel(relayConnection);
    v4 = self->_relayConnection;
    self->_relayConnection = 0;
  }

  objc_sync_exit(@"__relayConnectionSync__");
}

@end