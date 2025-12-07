@interface BWDeferredProcessingContainerManager
+ (id)sharedInstance;
- (BWDeferredProcessingContainer)_copyRemoteContainer:(uint64_t)container captureRequestIdentifier:(uint64_t)identifier baseFolderURL:(_DWORD *)l err:;
- (BWDeferredProcessingContainerManager)init;
- (id)createProcessingContainerWithApplicationID:(id)d captureRequestIdentifier:(id)identifier openForPeeking:(BOOL)peeking err:(int *)err;
- (id)manifestsForApplicationID:(id)d err:(int *)err;
- (int)waitForShaderCompilation;
- (uint64_t)_copyXPCContainerManager;
- (uint64_t)_queryContainerStatus:(uint64_t)status captureRequestIdentifier:(_DWORD *)identifier status:;
- (void)_setXPCContainerManager:(uint64_t)manager;
- (void)releaseProcessingContainer:(id)container;
@end

@implementation BWDeferredProcessingContainerManager

+ (id)sharedInstance
{
  if (sharedInstance_once_183 != -1)
  {
    +[BWDeferredProcessingContainerManager sharedInstance];
  }

  return sharedInstance_sharedInstance_182;
}

BWDeferredProcessingContainerManager *__54__BWDeferredProcessingContainerManager_sharedInstance__block_invoke()
{
  result = objc_alloc_init(BWDeferredProcessingContainerManager);
  sharedInstance_sharedInstance_182 = result;
  return result;
}

- (BWDeferredProcessingContainerManager)init
{
  v5.receiver = self;
  v5.super_class = BWDeferredProcessingContainerManager;
  v2 = [(BWDeferredContainerManagerBase *)&v5 initWithQueuePriority:39];
  if (v2)
  {
    v4 = FigCaptureDeferredContainerManagerRemoteCopyContainerManager();
    [(BWDeferredProcessingContainerManager *)v2 _setXPCContainerManager:v4];
    if (v4)
    {
      CFRelease(v4);
    }
  }

  return v2;
}

- (id)manifestsForApplicationID:(id)d err:(int *)err
{
  selfCopy = self;
  v7 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    self = kdebug_trace();
  }

  if (d)
  {
    _copyXPCContainerManager = [(BWDeferredProcessingContainerManager *)selfCopy _copyXPCContainerManager];
    if (_copyXPCContainerManager)
    {
      v9 = _copyXPCContainerManager;
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v10 && (v11 = v10(v9, d)) != 0)
      {
        d = v11;
        v12 = 0;
      }

      else
      {
        [BWDeferredProcessingContainerManager manifestsForApplicationID:err:];
        d = 0;
        v12 = -16134;
      }

      CFRelease(v9);
    }

    else
    {
      [BWDeferredProcessingContainerManager manifestsForApplicationID:err:];
      d = 0;
      v12 = -16137;
    }
  }

  else
  {
    [BWDeferredProcessingContainerManager manifestsForApplicationID:? err:?];
    v12 = -16134;
  }

  if (err)
  {
    *err = v12;
  }

  if (*v7 == 1)
  {
    kdebug_trace();
  }

  return d;
}

- (id)createProcessingContainerWithApplicationID:(id)d captureRequestIdentifier:(id)identifier openForPeeking:(BOOL)peeking err:(int *)err
{
  peekingCopy = peeking;
  v23 = 0;
  v22 = 0;
  v12 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (!d)
  {
    [BWDeferredProcessingContainerManager createProcessingContainerWithApplicationID:? captureRequestIdentifier:? openForPeeking:? err:?];
    goto LABEL_23;
  }

  if (!identifier)
  {
    [BWDeferredProcessingContainerManager createProcessingContainerWithApplicationID:? captureRequestIdentifier:? openForPeeking:? err:?];
    goto LABEL_23;
  }

  v13 = [(BWDeferredProcessingContainerManager *)self _queryContainerStatus:d captureRequestIdentifier:identifier status:&v23];
  v24 = v13;
  if ((v13 + 16157) < 5 || v13 == -16159)
  {
    v14 = 0;
    v24 = -16138;
    goto LABEL_7;
  }

  if (!v13)
  {
    goto LABEL_14;
  }

  if (v13 == -16138)
  {
LABEL_23:
    v14 = 0;
    goto LABEL_7;
  }

  [BWDeferredProcessingContainerManager createProcessingContainerWithApplicationID:captureRequestIdentifier:openForPeeking:err:];
LABEL_14:
  v21 = 0;
  v18 = [(BWDeferredContainerManagerBase *)self _containerURLForApplicationID:d captureRequestIdentifier:identifier processingContainer:1 exists:&v21 + 1 isDirectory:&v21 resolvedApplicationID:&v22];
  if (v23 != 1 || (v14 = [(BWDeferredProcessingContainerManager *)self _copyRemoteContainer:v22 captureRequestIdentifier:identifier baseFolderURL:v18 err:&v24]) == 0)
  {
    if (HIBYTE(v21) == 1 && v21 == 1)
    {
      v19 = [BWDeferredProcessingContainer alloc];
      v14 = [(BWDeferredProcessingContainer *)v19 initWithApplicationID:v22 captureRequestIdentifier:identifier baseFolderURL:v18 openForPeeking:peekingCopy err:&v24];
    }

    else
    {
      v14 = 0;
      v24 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E458, 0xFFFFC0F8, "<<<< BWDeferredContainerManager >>>>", 0x690, v6, v16, v17, v20);
    }
  }

LABEL_7:

  if (err)
  {
    *err = v24;
  }

  if (*v12 == 1)
  {
    kdebug_trace();
  }

  return v14;
}

- (void)releaseProcessingContainer:(id)container
{
  if (container)
  {
    applicationID = [container applicationID];
    captureRequestIdentifier = [container captureRequestIdentifier];
    isRemote = [container isRemote];

    if (isRemote)
    {

      [(BWDeferredProcessingContainerManager *)self _releaseRemoteContainer:applicationID captureRequestIdentifier:captureRequestIdentifier];
    }
  }

  else
  {
    [(BWDeferredProcessingContainerManager *)self releaseProcessingContainer:a2];
  }
}

- (void)_setXPCContainerManager:(uint64_t)manager
{
  if (manager)
  {
    v4 = *(manager + 224);
    if (v4 != cf)
    {
      if (v4)
      {
        CFRelease(v4);
        *(manager + 224) = 0;
      }

      if (cf)
      {
        *(manager + 224) = CFRetain(cf);
      }
    }
  }
}

- (uint64_t)_copyXPCContainerManager
{
  if (result)
  {
    v1 = result;
    pthread_rwlock_wrlock((result + 8));
    if (FigCaptureDeferredContainerManagerRemoteIsConnectionValid(*(v1 + 224)))
    {
      v2 = *(v1 + 224);
      if (v2)
      {
        CFRetain(v2);
      }
    }

    else
    {
      v3 = FigCaptureDeferredContainerManagerRemoteCopyContainerManager();
      [(BWDeferredProcessingContainerManager *)v1 _setXPCContainerManager:v3];
    }

    pthread_rwlock_unlock((v1 + 8));
    return *(v1 + 224);
  }

  return result;
}

- (uint64_t)_queryContainerStatus:(uint64_t)status captureRequestIdentifier:(_DWORD *)identifier status:
{
  if (!self)
  {
    return 0;
  }

  HIDWORD(v17) = 0;
  OUTLINED_FUNCTION_19_2();
  if (v8)
  {
    OUTLINED_FUNCTION_14_19();
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  if (FigCaptureCurrentProcessIsDeferredmediad())
  {
    _copyXPCContainerManager = [(BWDeferredProcessingContainerManager *)self _copyXPCContainerManager];
    if (_copyXPCContainerManager)
    {
      v12 = _copyXPCContainerManager;
      v13 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v13)
      {
        v9 = v13(v12, a2, status, &v17 + 4);
      }

      else
      {
        v9 = 4294954514;
      }

      CFRelease(v12);
    }

    else
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v14, v15, v16, v17, v18, v19, v20, v21);
      v9 = 4294951159;
    }
  }

  else
  {
    v9 = [+[BWDeferredCaptureContainerManager sharedInstance](BWDeferredCaptureContainerManager queryContainerStatusForApplicationID:"queryContainerStatusForApplicationID:captureRequestIdentifier:status:" captureRequestIdentifier:a2 status:status, &v17 + 4];
  }

  if (identifier)
  {
    *identifier = HIDWORD(v17);
  }

  OUTLINED_FUNCTION_19_2();
  if (v8)
  {
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  return v9;
}

- (BWDeferredProcessingContainer)_copyRemoteContainer:(uint64_t)container captureRequestIdentifier:(uint64_t)identifier baseFolderURL:(_DWORD *)l err:
{
  if (!self)
  {
    return 0;
  }

  HIDWORD(v21) = 0;
  v10 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_14_19();
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  _copyXPCContainerManager = [(BWDeferredProcessingContainerManager *)self _copyXPCContainerManager];
  if (_copyXPCContainerManager)
  {
    v12 = _copyXPCContainerManager;
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v13 && (v14 = v13(v12, a2, container)) != 0)
    {
      v15 = v14;
      v16 = [[BWDeferredProcessingContainer alloc] initWithXPCEncoding:v14 applicationID:a2 captureRequestIdentifier:container baseFolderURL:identifier err:&v21 + 4];
      if (!v16)
      {
        OUTLINED_FUNCTION_0();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v18, v19, v20, v21, v22, v23, v24, v25);
        HIDWORD(v21) = -16133;
      }

      CFRelease(v12);
      xpc_release(v15);
      if (!l)
      {
        goto LABEL_13;
      }
    }

    else
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v18, v19, v20, v21, v22, v23, v24, v25);
      HIDWORD(v21) = -16132;
      CFRelease(v12);
      v16 = 0;
      if (!l)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_12;
  }

  OUTLINED_FUNCTION_0();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v18, v19, v20, v21, v22, v23, v24, v25);
  v16 = 0;
  HIDWORD(v21) = -16137;
  if (l)
  {
LABEL_12:
    *l = HIDWORD(v21);
  }

LABEL_13:
  if (*v10 == 1)
  {
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  return v16;
}

- (int)waitForShaderCompilation
{
  OUTLINED_FUNCTION_13_23();
  if (v3)
  {
    OUTLINED_FUNCTION_14_19();
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  _copyXPCContainerManager = [(BWDeferredProcessingContainerManager *)self _copyXPCContainerManager];
  if (_copyXPCContainerManager)
  {
    v5 = _copyXPCContainerManager;
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v6)
    {
      v7 = v6(v5);
    }

    else
    {
      v7 = -12782;
    }

    CFRelease(v5);
  }

  else
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v9, v10, v11, v12, v13, v14, vars0, vars8);
    v7 = -16137;
  }

  OUTLINED_FUNCTION_13_23();
  if (v3)
  {
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  return v7;
}

@end