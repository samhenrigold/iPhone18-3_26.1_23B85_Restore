@interface PLKQueue
- (PLKQueue)initWithPath:(id)path withDispatchQueue:(id)queue withBlock:(id)block;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation PLKQueue

- (PLKQueue)initWithPath:(id)path withDispatchQueue:(id)queue withBlock:(id)block
{
  pathCopy = path;
  queueCopy = queue;
  blockCopy = block;
  v17.receiver = self;
  v17.super_class = PLKQueue;
  v12 = [(PLKQueue *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_path, path);
    objc_storeStrong(&v13->_dispatchQueue, queue);
    *&v13->_kQueue = -1;
    v13->_kqueueDescriptorSource = 0;
    v13->_kqueueDescriptorRef = 0;
    v14 = MEMORY[0x1DA71B0D0](blockCopy);
    kQueueBlock = v13->_kQueueBlock;
    v13->_kQueueBlock = v14;
  }

  return v13;
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v73 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_enabled = enabledCopy;
  if (+[PLDefaults debugEnabled])
  {
    v5 = objc_opt_class();
    v70[0] = MEMORY[0x1E69E9820];
    v70[1] = 3221225472;
    v70[2] = __23__PLKQueue_setEnabled___block_invoke;
    v70[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v70[4] = v5;
    if (setEnabled__defaultOnce != -1)
    {
      dispatch_once(&setEnabled__defaultOnce, v70);
    }

    if (setEnabled__classDebugEnabled == 1)
    {
      v6 = MEMORY[0x1E696AEC0];
      v7 = NSStringFromBOOL();
      v8 = [v6 stringWithFormat:@"PLKQueue.setEnabled: enabled=%@", v7];

      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLKQueue.m"];
      lastPathComponent = [v9 lastPathComponent];
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLKQueue setEnabled:]"];
      [PLCoreStorage logMessage:v8 fromFile:lastPathComponent fromFunction:v11 fromLineNumber:53];

      v13 = PLLogCommon(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [(PLIOHIDOperatorComposition *)v8 initWithOperator:v13 forService:v14, v15, v16, v17, v18, v19];
      }
    }
  }

  if (enabledCopy)
  {
    if ([(PLKQueue *)selfCopy kQueue]!= -1)
    {
      goto LABEL_53;
    }

    [(PLKQueue *)selfCopy setFileDescriptor:0xFFFFFFFFLL];
    for (i = 6; i > 1; --i)
    {
      if ([(PLKQueue *)selfCopy fileDescriptor]> 0)
      {
        break;
      }

      *__error() = 0;
      path = [(PLKQueue *)selfCopy path];
      v22 = path;
      -[PLKQueue setFileDescriptor:](selfCopy, "setFileDescriptor:", open([path fileSystemRepresentation], 0x8000));

      if ([(PLKQueue *)selfCopy fileDescriptor]<= 0)
      {
        if (+[PLDefaults debugEnabled])
        {
          v23 = objc_opt_class();
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __23__PLKQueue_setEnabled___block_invoke_16;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v23;
          if (setEnabled__defaultOnce_14 != -1)
          {
            dispatch_once(&setEnabled__defaultOnce_14, block);
          }

          if (setEnabled__classDebugEnabled_15 == 1)
          {
            v24 = MEMORY[0x1E696AEC0];
            fileDescriptor = [(PLKQueue *)selfCopy fileDescriptor];
            v26 = *__error();
            v27 = __error();
            v28 = [v24 stringWithFormat:@"PLKQueue.enabled error! fileDescriptor=%d errno=%d-%s", fileDescriptor, v26, strerror(*v27)];
            v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLKQueue.m"];
            lastPathComponent2 = [v29 lastPathComponent];
            v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLKQueue setEnabled:]"];
            [PLCoreStorage logMessage:v28 fromFile:lastPathComponent2 fromFunction:v31 fromLineNumber:63];

            v33 = PLLogCommon(v32);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
            {
              LODWORD(buf.version) = 138412290;
              *(&buf.version + 4) = v28;
              _os_log_debug_impl(&dword_1D8611000, v33, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
            }
          }
        }

        sleep(1u);
      }
    }

    if ([(PLKQueue *)selfCopy fileDescriptor]< 1)
    {
      v65 = "self.fileDescriptor > 0";
      v66 = 68;
    }

    else
    {
      for (j = 6; j > 1; --j)
      {
        if ([(PLKQueue *)selfCopy kQueue]> 0)
        {
          break;
        }

        *__error() = 0;
        [(PLKQueue *)selfCopy setKQueue:kqueue()];
        if ([(PLKQueue *)selfCopy kQueue]<= 0)
        {
          if (+[PLDefaults debugEnabled])
          {
            v37 = objc_opt_class();
            v68[0] = MEMORY[0x1E69E9820];
            v68[1] = 3221225472;
            v68[2] = __23__PLKQueue_setEnabled___block_invoke_24;
            v68[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v68[4] = v37;
            if (setEnabled__defaultOnce_22 != -1)
            {
              dispatch_once(&setEnabled__defaultOnce_22, v68);
            }

            if (setEnabled__classDebugEnabled_23 == 1)
            {
              v38 = MEMORY[0x1E696AEC0];
              kQueue = [(PLKQueue *)selfCopy kQueue];
              v40 = *__error();
              v41 = __error();
              v42 = [v38 stringWithFormat:@"PLKQueue.enabled error! kQueue=%d errno=%d-%s", kQueue, v40, strerror(*v41)];
              v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLKQueue.m"];
              lastPathComponent3 = [v43 lastPathComponent];
              v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLKQueue setEnabled:]"];
              [PLCoreStorage logMessage:v42 fromFile:lastPathComponent3 fromFunction:v45 fromLineNumber:75];

              v47 = PLLogCommon(v46);
              if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
              {
                LODWORD(buf.version) = 138412290;
                *(&buf.version + 4) = v42;
                _os_log_debug_impl(&dword_1D8611000, v47, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
              }
            }
          }

          sleep(1u);
        }
      }

      if ([(PLKQueue *)selfCopy kQueue]> 0)
      {
        changelist.ident = [(PLKQueue *)selfCopy fileDescriptor];
        *&changelist.filter = 0x7F0025FFFCLL;
        changelist.data = 0;
        changelist.udata = &selfCopy->_fileDescriptor;
        if (kevent([(PLKQueue *)selfCopy kQueue], &changelist, 1, 0, 0, 0) == -1)
        {
          if (+[PLDefaults debugEnabled])
          {
            v48 = objc_opt_class();
            v67[0] = MEMORY[0x1E69E9820];
            v67[1] = 3221225472;
            v67[2] = __23__PLKQueue_setEnabled___block_invoke_31;
            v67[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v67[4] = v48;
            if (setEnabled__defaultOnce_29 != -1)
            {
              dispatch_once(&setEnabled__defaultOnce_29, v67);
            }

            if (setEnabled__classDebugEnabled_30 == 1)
            {
              v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unable to setup kQueue"];
              v50 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLKQueue.m"];
              lastPathComponent4 = [v50 lastPathComponent];
              v52 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLKQueue setEnabled:]"];
              [PLCoreStorage logMessage:v49 fromFile:lastPathComponent4 fromFunction:v52 fromLineNumber:89];

              v54 = PLLogCommon(v53);
              if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
              {
                [(PLIOHIDOperatorComposition *)v49 initWithOperator:v54 forService:v55, v56, v57, v58, v59, v60];
              }
            }
          }

          [PLUtilities exitWithReason:102];
        }

        buf.version = 0;
        memset(&buf.retain, 0, 24);
        buf.info = selfCopy;
        kQueue2 = [(PLKQueue *)selfCopy kQueue];
        v62 = *MEMORY[0x1E695E480];
        [(PLKQueue *)selfCopy setKqueueDescriptorRef:CFFileDescriptorCreate(*MEMORY[0x1E695E480], kQueue2, 1u, kQueueEvent, &buf)];
        CFFileDescriptorEnableCallBacks([(PLKQueue *)selfCopy kqueueDescriptorRef], 1uLL);
        [(PLKQueue *)selfCopy setKqueueDescriptorSource:CFFileDescriptorCreateRunLoopSource(v62, [(PLKQueue *)selfCopy kqueueDescriptorRef], 0)];
        Main = CFRunLoopGetMain();
        kqueueDescriptorSource = [(PLKQueue *)selfCopy kqueueDescriptorSource];
        CFRunLoopAddSource(Main, kqueueDescriptorSource, *MEMORY[0x1E695E8E0]);
        goto LABEL_53;
      }

      v65 = "self.kQueue > 0";
      v66 = 80;
    }

    __assert_rtn("[PLKQueue setEnabled:]", "PLKQueue.m", v66, v65);
  }

  if ([(PLKQueue *)selfCopy kqueueDescriptorSource])
  {
    v34 = CFRunLoopGetMain();
    kqueueDescriptorSource2 = [(PLKQueue *)selfCopy kqueueDescriptorSource];
    CFRunLoopRemoveSource(v34, kqueueDescriptorSource2, *MEMORY[0x1E695E8E0]);
    CFRelease([(PLKQueue *)selfCopy kqueueDescriptorSource]);
    [(PLKQueue *)selfCopy setKqueueDescriptorSource:0];
  }

  if ([(PLKQueue *)selfCopy kqueueDescriptorRef])
  {
    CFFileDescriptorInvalidate([(PLKQueue *)selfCopy kqueueDescriptorRef]);
    CFRelease([(PLKQueue *)selfCopy kqueueDescriptorRef]);
    [(PLKQueue *)selfCopy setKqueueDescriptorRef:0];
    [(PLKQueue *)selfCopy setKQueue:0xFFFFFFFFLL];
  }

  if ([(PLKQueue *)selfCopy fileDescriptor]!= -1)
  {
    close([(PLKQueue *)selfCopy fileDescriptor]);
    [(PLKQueue *)selfCopy setFileDescriptor:0xFFFFFFFFLL];
  }

LABEL_53:
  objc_sync_exit(selfCopy);
}

BOOL __23__PLKQueue_setEnabled___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  setEnabled__classDebugEnabled = result;
  return result;
}

BOOL __23__PLKQueue_setEnabled___block_invoke_16(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  setEnabled__classDebugEnabled_15 = result;
  return result;
}

BOOL __23__PLKQueue_setEnabled___block_invoke_24(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  setEnabled__classDebugEnabled_23 = result;
  return result;
}

BOOL __23__PLKQueue_setEnabled___block_invoke_31(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  setEnabled__classDebugEnabled_30 = result;
  return result;
}

@end