@interface CaptureMTLCaptureManager
+ (id)toolsCaptureManager;
- (BOOL)startCaptureWithDescriptor:(id)descriptor error:(id *)error;
- (BOOL)supportsDestination:(int64_t)destination;
- (CaptureMTLCaptureManager)initWithCaptureContext:(GTTraceContext *)context andIsToolsManager:(BOOL)manager;
- (id)newCaptureScopeWithCommandQueue:(id)queue;
- (id)newCaptureScopeWithDevice:(id)device;
- (void)dealloc;
- (void)setDefaultCaptureScope:(id)scope;
- (void)startCaptureWithCommandQueue:(id)queue;
- (void)startCaptureWithDevice:(id)device;
- (void)startCaptureWithScope:(id)scope;
- (void)stopCapture;
@end

@implementation CaptureMTLCaptureManager

- (void)setDefaultCaptureScope:(id)scope
{
  v3.receiver = self;
  v3.super_class = CaptureMTLCaptureManager;
  [(CaptureMTLCaptureManager *)&v3 setDefaultCaptureScope:scope];
  +[GTMTLCaptureScopeInfo updateAll];
}

- (id)newCaptureScopeWithCommandQueue:(id)queue
{
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  traceContext = self->_traceContext;
  queueCopy = queue;
  v26 = traceContext;
  *&v27 = 0;
  *(&v27 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v7 = v6;
  v8 = *v6;
  *v6 = v9;
  *&v28 = v8;
  BYTE8(v28) = *(v6 + 8);
  *(&v28 + 9) = 16400;
  *(&v28 + 11) = 0;
  HIBYTE(v28) = 0;
  v10 = [CaptureMTLCaptureScope alloc];
  device = [queueCopy device];
  v12 = [(CaptureMTLCaptureScope *)v10 initWithDevice:device commandQueue:queueCopy captureContext:self->_traceContext];

  GTTraceEncoder_setStream(&v26, [(CaptureMTLCaptureScope *)v12 traceStream]);
  v13 = v27;
  *(v27 + 8) = -15733;
  v14 = BYTE9(v28);
  if (BYTE9(v28) > 0x28uLL)
  {
    v16 = *(*(&v26 + 1) + 24);
    v17 = BYTE10(v28);
    ++BYTE10(v28);
    v15 = GTTraceMemPool_allocateBytes(v16, *(&v27 + 1), v17 | 0x1800000000) + 16;
    v14 = v17;
  }

  else
  {
    v15 = (v13 + BYTE9(v28));
    BYTE9(v28) += 24;
  }

  *(v13 + 13) = v14;
  traceStream = [(CaptureMTLCaptureManager *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLCaptureScope *)v12 traceStream];
  if (traceStream2)
  {
    v21 = traceStream2->var0;
  }

  else
  {
    v21 = 0;
  }

  traceStream3 = [queueCopy traceStream];

  if (traceStream3)
  {
    v23 = *traceStream3;
  }

  else
  {
    v23 = 0;
  }

  *v15 = var0;
  *(v15 + 1) = v21;
  *(v15 + 2) = v23;
  v24 = v27;
  *v7 = v28;
  *(v7 + 8) = BYTE8(v28);
  *(v24 + 15) |= 8u;
  return v12;
}

- (id)newCaptureScopeWithDevice:(id)device
{
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  traceContext = self->_traceContext;
  deviceCopy = device;
  v24 = traceContext;
  *&v25 = 0;
  *(&v25 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v7 = v6;
  v8 = *v6;
  *v6 = v9;
  *&v26 = v8;
  BYTE8(v26) = *(v6 + 8);
  *(&v26 + 9) = 16400;
  *(&v26 + 11) = 0;
  HIBYTE(v26) = 0;
  v10 = [[CaptureMTLCaptureScope alloc] initWithDevice:deviceCopy commandQueue:0 captureContext:self->_traceContext];
  GTTraceEncoder_setStream(&v24, [(CaptureMTLCaptureScope *)v10 traceStream]);
  v11 = v25;
  *(v25 + 8) = -15734;
  v12 = BYTE9(v26);
  if (BYTE9(v26) > 0x28uLL)
  {
    v14 = *(*(&v24 + 1) + 24);
    v15 = BYTE10(v26);
    ++BYTE10(v26);
    v13 = GTTraceMemPool_allocateBytes(v14, *(&v25 + 1), v15 | 0x1800000000) + 16;
    v12 = v15;
  }

  else
  {
    v13 = (v11 + BYTE9(v26));
    BYTE9(v26) += 24;
  }

  *(v11 + 13) = v12;
  traceStream = [(CaptureMTLCaptureManager *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLCaptureScope *)v10 traceStream];
  if (traceStream2)
  {
    v19 = traceStream2->var0;
  }

  else
  {
    v19 = 0;
  }

  traceStream3 = [deviceCopy traceStream];

  if (traceStream3)
  {
    v21 = *traceStream3;
  }

  else
  {
    v21 = 0;
  }

  *v13 = var0;
  *(v13 + 1) = v19;
  *(v13 + 2) = v21;
  v22 = v25;
  *v7 = v26;
  *(v7 + 8) = BYTE8(v26);
  *(v22 + 15) |= 8u;
  return v10;
}

- (void)stopCapture
{
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  v3 = v23;
  *(v23 + 8) = -16067;
  v4 = BYTE9(v24);
  if (BYTE9(v24) > 0x38uLL)
  {
    v6 = *(*(&v22 + 1) + 24);
    v7 = BYTE10(v24);
    ++BYTE10(v24);
    v5 = GTTraceMemPool_allocateBytes(v6, *(&v23 + 1), v7 | 0x800000000) + 16;
    v4 = v7;
  }

  else
  {
    v5 = (v3 + BYTE9(v24));
    BYTE9(v24) += 8;
  }

  *(v3 + 13) = v4;
  traceStream = [(CaptureMTLCaptureManager *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v5 = var0;
  s();
  *v10 = v11;
  *(v10 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
  isToolManager = self->_isToolManager;
  traceStream2 = [(CaptureMTLCaptureManager *)self traceStream];
  if (traceStream2)
  {
    v14 = traceStream2->var0;
  }

  else
  {
    v14 = 0;
  }

  if (isToolManager)
  {
    v15 = 4;
  }

  else
  {
    v15 = 5;
  }

  *&v16 = v15 | 0x800000000;
  *(&v16 + 1) = v14;
  v17 = *(&v23 + 1);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  GTCaptureBoundaryTracker_handleTrigger(&v16);
}

- (void)startCaptureWithScope:(id)scope
{
  scopeCopy = scope;
  v5 = objc_opt_new();
  [v5 setApiTriggeredCapture:1];
  [v5 setSuspendAfterCapture:1];
  [v5 setCaptureMode:4];
  [v5 setTriggerHitsToStart:1];
  [v5 setTriggerHitsToEnd:1];
  [v5 setDestination:1];
  [v5 setCaptureObject:scopeCopy];

  [(CaptureMTLCaptureManager *)self startCaptureWithDescriptor:v5 error:0];
}

- (void)startCaptureWithCommandQueue:(id)queue
{
  queueCopy = queue;
  v5 = objc_opt_new();
  [v5 setApiTriggeredCapture:1];
  [v5 setSuspendAfterCapture:1];
  [v5 setCaptureMode:2];
  [v5 setDestination:1];
  [v5 setCaptureObject:queueCopy];

  [(CaptureMTLCaptureManager *)self startCaptureWithDescriptor:v5 error:0];
}

- (void)startCaptureWithDevice:(id)device
{
  deviceCopy = device;
  v5 = objc_opt_new();
  [v5 setApiTriggeredCapture:1];
  [v5 setSuspendAfterCapture:1];
  [v5 setCaptureMode:0];
  [v5 setDestination:1];
  [v5 setCaptureObject:deviceCopy];

  [(CaptureMTLCaptureManager *)self startCaptureWithDescriptor:v5 error:0];
}

- (BOOL)startCaptureWithDescriptor:(id)descriptor error:(id *)error
{
  descriptorCopy = descriptor;
  if (!*(boundaryTrackerInstance + 20))
  {
    os_unfair_lock_lock((g_guestAppClientMTL + 24));
    v8 = *(g_guestAppClientMTL + 64);
    os_unfair_lock_unlock((g_guestAppClientMTL + 24));
    if (v8)
    {
      v9 = GTMTLGuestAppClient_getUnsupportedFenumInfo();
      asError = [v9 asError];
      userInfo = [asError userInfo];
      ReportError(error, MTLCaptureErrorDomain, 1, userInfo);

      goto LABEL_5;
    }

    v129 = 0;
    v127 = 0u;
    v128 = 0u;
    v125 = 0u;
    v126 = 0u;
    v124 = 0u;
    isToolManager = self->_isToolManager;
    v15 = descriptorCopy;
    captureObject = [v15 captureObject];
    if ((objc_opt_respondsToSelector() & 1) == 0 || (v16 = [v15 captureMode], v17 = v16, v16 == &dword_4 + 3))
    {
      v18 = captureObject;
      v19 = v18;
      if (v18)
      {
        if ([v18 conformsToProtocol:&OBJC_PROTOCOL___MTLDevice])
        {
          v17 = 0;
LABEL_20:

LABEL_21:
          triggerHitsToEnd = 0;
          triggerHitsToStart2 = 0;
          goto LABEL_22;
        }

        if ([v19 conformsToProtocol:&OBJC_PROTOCOL___MTLCommandQueue] & 1) != 0 || (objc_msgSend(v19, "conformsToProtocol:", &OBJC_PROTOCOL___MTL4CommandQueue))
        {
          v17 = 2;
          goto LABEL_20;
        }

        if ([v19 conformsToProtocol:&OBJC_PROTOCOL___MTLCaptureScope])
        {

          if (objc_opt_respondsToSelector())
          {
            triggerHitsToStart = [v15 triggerHitsToStart];
          }

          else
          {
            triggerHitsToStart = &dword_0 + 1;
          }

          triggerHitsToStart2 = triggerHitsToStart;
          *(&v126 + 1) = triggerHitsToStart;
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            triggerHitsToEnd = &dword_0 + 1;
            *&v127 = 1;
            v17 = 4;
            goto LABEL_22;
          }

          triggerHitsToEnd = [v15 triggerHitsToEnd];
          v17 = 4;
LABEL_90:
          *&v127 = triggerHitsToEnd;
          if (!triggerHitsToEnd)
          {
            v151 = NSLocalizedDescriptionKey;
            v152 = NSLocalizedRecoverySuggestionErrorKey;
            v154 = @"The value of triggerHitsToEnd cannot be 0.";
            v155 = @"Set triggerHitsToEnd to the amount of times the end condition needs to be met to end the capture.";
            v52 = [NSDictionary dictionaryWithObjects:&v154 forKeys:&v151 count:2];
            ReportError(error, MTLCaptureErrorDomain, 3, v52);

            goto LABEL_141;
          }

LABEL_22:
          v109 = triggerHitsToStart2;
          if (v17 <= 3)
          {
            if (v17 < 2)
            {
              device = captureObject;
              traceStream = [device traceStream];
              if (traceStream)
              {
                v32 = *traceStream;
              }

              else
              {
                v32 = 0;
              }

              v112 = 0;
              commandQueue = 0;
              v115 = 0;
              v28 = 0;
              v108 = v32;
              goto LABEL_64;
            }

            if ((v17 - 2) < 2)
            {
              v24 = [captureObject conformsToProtocol:&OBJC_PROTOCOL___MTL4CommandQueue];
              v25 = captureObject;
              device = [v25 device];
              traceStream2 = [v25 traceStream];
              if (traceStream2)
              {
                v27 = *traceStream2;
              }

              else
              {
                v27 = 0;
              }

              if (v24)
              {
                v37 = 0;
              }

              else
              {
                v37 = v25;
              }

              if (v24)
              {
                v38 = v25;
              }

              else
              {
                v38 = 0;
              }

              v112 = v38;
              commandQueue = v37;
              v108 = v27;
              *(&v124 + 1) = v27;
              traceStream3 = [device traceStream];
              if (traceStream3)
              {
                v32 = *traceStream3;
              }

              else
              {
                v32 = 0;
              }

              v115 = 0;
              v28 = 0;
LABEL_64:
              *&v124 = v32;
              goto LABEL_99;
            }

            goto LABEL_48;
          }

          switch(v17)
          {
            case 4:
              v115 = captureObject;
              device = [v115 device];
              commandQueue = [v115 commandQueue];
              traceStream4 = [v115 traceStream];
              if (traceStream4)
              {
                v35 = *traceStream4;
              }

              else
              {
                v35 = 0;
              }

              *&v125 = v35;
              traceStream5 = [device traceStream];
              if (traceStream5)
              {
                v47 = *traceStream5;
              }

              else
              {
                v47 = 0;
              }

              *&v124 = v47;
              if (commandQueue)
              {
                traceStream6 = [commandQueue traceStream];
                if (traceStream6)
                {
                  v49 = *traceStream6;
                }

                else
                {
                  v49 = 0;
                }

                *(&v124 + 1) = v49;
              }

              traceStream7 = [v115 traceStream];
              if (!traceStream7)
              {
                v108 = 0;
                v112 = 0;
                goto LABEL_50;
              }

              v112 = 0;
              v28 = 0;
              break;
            case 5:
LABEL_49:
              v108 = 0;
              commandQueue = 0;
              device = 0;
              v112 = 0;
              v115 = 0;
LABEL_50:
              v28 = 0;
              goto LABEL_99;
            case 6:
              v28 = captureObject;
              device = [v28 device];
              if (objc_opt_respondsToSelector())
              {
                streamReference = [v28 streamReference];
              }

              else
              {
                streamReference = 0;
              }

              *(&v125 + 1) = streamReference;
              device2 = [v28 device];
              traceStream8 = [device2 traceStream];
              if (traceStream8)
              {
                v44 = *traceStream8;
              }

              else
              {
                v44 = 0;
              }

              *&v124 = v44;

              traceStream7 = [v28 traceStream];
              if (!traceStream7)
              {
                v108 = 0;
                v112 = 0;
                commandQueue = 0;
                v115 = 0;
                goto LABEL_99;
              }

              v112 = 0;
              commandQueue = 0;
              v115 = 0;
              break;
            default:
LABEL_48:
              v149 = NSLocalizedDescriptionKey;
              v150 = @"Internal error: unrecognized capture mode.";
              v36 = [NSDictionary dictionaryWithObjects:&v150 forKeys:&v149 count:1];
              ReportError(error, MTLCaptureErrorDomain, 3, v36);

              goto LABEL_49;
          }

          v108 = *traceStream7;
LABEL_99:
          BYTE8(v128) = v17;
          if (objc_opt_respondsToSelector())
          {
            sessionID = [v15 sessionID];
          }

          else
          {
            sessionID = 0;
          }

          *&v126 = sessionID;
          if (objc_opt_respondsToSelector())
          {
            apiTriggeredCapture = [v15 apiTriggeredCapture];
          }

          else
          {
            apiTriggeredCapture = 1;
          }

          BYTE11(v128) = apiTriggeredCapture;
          BYTE12(v128) = isToolManager;
          if (objc_opt_respondsToSelector())
          {
            includeBacktrace = [v15 includeBacktrace];
          }

          else
          {
            includeBacktrace = 1;
          }

          BYTE14(v128) = includeBacktrace;
          if (objc_opt_respondsToSelector())
          {
            ignoreUnusedResources = [v15 ignoreUnusedResources];
          }

          else
          {
            ignoreUnusedResources = 0;
          }

          v107 = ignoreUnusedResources;
          BYTE13(v128) = ignoreUnusedResources;
          v106 = sessionID;
          if ((objc_opt_respondsToSelector() & 1) == 0 || ([v15 completionHandler], v57 = objc_claimAutoreleasedReturnValue(), v58 = v57 == 0, v57, v58))
          {
            v59 = &v130;
            *&v130 = _NSConcreteStackBlock;
            *(&v130 + 1) = 3221225472;
            *&v131 = __FillGTMTLCaptureDescriptor_block_invoke_2;
            *(&v131 + 1) = &unk_2F2680;
            *&v132 = device;
            *(&v132 + 1) = commandQueue;
            v133 = v112;
            v134[0] = v115;
            v134[1] = v28;
            v67 = v28;
            v68 = v115;
            v111 = objc_retainBlock(&v130);
            v66 = 0;
            v62 = &v132;
            v63 = &v132 + 1;
            v64 = &v133;
            v65 = v134;
            v129 = v111;
          }

          else
          {
            v59 = &v117;
            *&v117 = _NSConcreteStackBlock;
            *(&v117 + 1) = 3221225472;
            v118 = __FillGTMTLCaptureDescriptor_block_invoke;
            *&v119 = &unk_2F2658;
            *(&v119 + 1) = device;
            *&v120 = commandQueue;
            *(&v120 + 1) = v112;
            *&v121 = v115;
            *(&v121 + 1) = v28;
            v122 = v15;
            v60 = v28;
            v61 = v115;
            v129 = objc_retainBlock(&v117);
            v62 = &v119 + 1;
            v63 = &v120;
            v64 = &v120 + 1;
            v65 = &v121;
            v66 = v122;
          }

          destination = [v15 destination];
          outputURL = [v15 outputURL];
          if (destination == &dword_0 + 2)
          {
            if (![(CaptureMTLCaptureManager *)self supportsDestination:2])
            {
              v141[0] = NSLocalizedDescriptionKey;
              v84 = [NSString stringWithFormat:@"Capture Destination ‘%@’ is not supported.", @"GPU Trace Document"];
              v141[1] = NSLocalizedRecoverySuggestionErrorKey;
              v142[0] = v84;
              v142[1] = @"Capture to another destination.";
              v85 = [NSDictionary dictionaryWithObjects:v142 forKeys:v141 count:2];

              ReportError(error, MTLCaptureErrorDomain, 3, v85);
              goto LABEL_136;
            }

            if (!outputURL)
            {
              v139[0] = NSLocalizedDescriptionKey;
              v86 = [NSString stringWithFormat:@"Capture Destination ‘%@’ must write to a file.", @"GPU Trace Document"];
              v139[1] = NSLocalizedRecoverySuggestionErrorKey;
              v140[0] = v86;
              v140[1] = @"Specify a valid output file path.";
              v87 = [NSDictionary dictionaryWithObjects:v140 forKeys:v139 count:2];

              ReportError(error, MTLCaptureErrorDomain, 3, v87);
              goto LABEL_136;
            }

            pathExtension = [outputURL pathExtension];
            v74 = [pathExtension isEqualToString:@"gputrace"];

            if ((v74 & 1) == 0)
            {
              v137[0] = NSLocalizedDescriptionKey;
              lastPathComponent = [outputURL lastPathComponent];
              v89 = [NSString stringWithFormat:@"‘%@’ could not be used because the file name is invalid.", lastPathComponent];
              v137[1] = NSLocalizedRecoverySuggestionErrorKey;
              v138[0] = v89;
              v138[1] = @"Use ‘.gputrace’ as file name extension.";
              v90 = [NSDictionary dictionaryWithObjects:v138 forKeys:v137 count:2];

              ReportError(error, NSCocoaErrorDomain, 514, v90);
              goto LABEL_136;
            }

            v75 = +[NSFileManager defaultManager];
            uRLByDeletingLastPathComponent = [outputURL URLByDeletingLastPathComponent];
            if (uRLByDeletingLastPathComponent && ([v75 createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:error] & 1) == 0 || !objc_msgSend(v75, "createDirectoryAtURL:withIntermediateDirectories:attributes:error:", outputURL, 0, 0, error))
            {

              goto LABEL_136;
            }

            v77 = outputURL;
            v78 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", [outputURL fileSystemRepresentation]);
            gputracePath = self->_gputracePath;
            self->_gputracePath = v78;

            *(&v127 + 1) = [(NSString *)self->_gputracePath UTF8String];
            *&v128 = "";
            if (objc_opt_respondsToSelector())
            {
              suspendAfterCapture = [v15 suspendAfterCapture];
            }

            else
            {
              suspendAfterCapture = 0;
            }

            BYTE9(v128) = suspendAfterCapture;

            v131 = 0u;
            v132 = 0u;
            v130 = 0u;
            GTTraceContext_pushEncoderWithStream(self->_traceContext, &v130);
            Arguments = GTTraceEncoder_allocateArguments(&v130, -15736, 24);
            traceStream9 = [(CaptureMTLCaptureManager *)self traceStream];
            if (traceStream9)
            {
              var0 = traceStream9->var0;
            }

            else
            {
              var0 = 0;
            }

            if (error)
            {
              error = *error;
            }

            v98 = SaveMTLCaptureDescriptor(&v130, &v124);
            *Arguments = var0;
            *(Arguments + 1) = error;
            Arguments[16] = v98;
            *(Arguments + 17) = 0;
            *(Arguments + 5) = 0;
            s();
            *v99 = v100;
            *(v99 + 8) = BYTE8(v132);
            *(v131 + 15) |= 8u;
            v101 = [[GTCaptureDescriptor alloc] initWithRequestID:v106];
            [v101 setTriggerHitsToStart:v109];
            [v101 setTriggerHitsToEnd:triggerHitsToEnd];
            [v101 setSuspendAfterCapture:suspendAfterCapture];
            [v101 setIgnoreUnusedResources:v107];
            [v101 setStreamRef:v108];
            v102 = objc_opt_new();
            [v102 setCaptureState:0];
            [v102 setDescriptor:v101];
            [*g_guestAppClientMTL notifyCaptureProgress:v102];

            if (self->_isToolManager)
            {
              v103 = 4;
            }

            else
            {
              v103 = 5;
            }

            traceStream10 = [(CaptureMTLCaptureManager *)self traceStream];
            if (traceStream10)
            {
              v105 = traceStream10->var0;
            }

            else
            {
              v105 = 0;
            }

            *&v117 = v103 | 0x700000000;
            *(&v117 + 1) = v105;
            v118 = *(&v131 + 1);
            v119 = 0u;
            v120 = 0u;
            v121 = 0u;
            v122 = 0;
            v123 = &v124;
            GTCaptureBoundaryTracker_handleTrigger(&v117);
            dispatch_semaphore_signal(qword_31F530);
            if (v126)
            {
              dispatch_semaphore_signal(self->_waitResponse);
            }

            if (startCaptureWithDescriptor_error__onceToken != -1)
            {
              dispatch_once(&startCaptureWithDescriptor_error__onceToken, &__block_literal_global_128);
            }
          }

          else
          {
            if (destination != &dword_0 + 1)
            {
              v135[0] = NSLocalizedDescriptionKey;
              v135[1] = NSLocalizedRecoverySuggestionErrorKey;
              v136[0] = @"Capture Destination is not valid.";
              v136[1] = @"Capturing to a valid destination.";
              v81 = [NSDictionary dictionaryWithObjects:v136 forKeys:v135 count:2];
              ReportError(error, MTLCaptureErrorDomain, 3, v81);

              goto LABEL_136;
            }

            if (![(CaptureMTLCaptureManager *)self supportsDestination:1])
            {
              v145[0] = NSLocalizedDescriptionKey;
              v82 = [NSString stringWithFormat:@"Capture Destination ‘%@’ is not supported.", @"Developer Tools"];
              v145[1] = NSLocalizedRecoverySuggestionErrorKey;
              v146[0] = v82;
              v146[1] = @"Capture to another destination.";
              v83 = [NSDictionary dictionaryWithObjects:v146 forKeys:v145 count:2];

              ReportError(error, MTLCaptureErrorDomain, 3, v83);
              goto LABEL_136;
            }

            if (outputURL)
            {
              v143[0] = NSLocalizedDescriptionKey;
              v71 = [NSString stringWithFormat:@"Capture Destination ‘%@’ cannot write to a file.", @"Developer Tools"];
              v143[1] = NSLocalizedRecoverySuggestionErrorKey;
              v144[0] = v71;
              v144[1] = @"Don't specify an output file path.";
              v72 = [NSDictionary dictionaryWithObjects:v144 forKeys:v143 count:2];

              ReportError(error, MTLCaptureErrorDomain, 3, v72);
LABEL_136:
              v12 = 0;
LABEL_137:

              v91 = v129;
LABEL_142:

              goto LABEL_6;
            }

            BYTE9(v128) = 1;
            GTMTLGuestAppClient_notifyCaptureRequest(&v124);
            dispatch_semaphore_wait(self->_waitResponse, 0xFFFFFFFFFFFFFFFFLL);
          }

          v12 = 1;
          goto LABEL_137;
        }

        v151 = NSLocalizedDescriptionKey;
        v40 = [NSString stringWithFormat:@"‘%@’ cannot be captured.", objc_opt_class()];
        v152 = NSLocalizedRecoverySuggestionErrorKey;
        v154 = v40;
        v155 = @"Specify an object to be captured like MTLDevice.";
        v41 = [NSDictionary dictionaryWithObjects:&v154 forKeys:&v151 count:2];

        ReportError(error, MTLCaptureErrorDomain, 3, v41);
      }

      else
      {
        FillMissingCaptureObjectError(error);
      }

LABEL_141:
      v91 = 0;
      v12 = 0;
      goto LABEL_142;
    }

    v20 = v16;
    v21 = captureObject;
    v22 = v21;
    if (!v21 && v20 != 5)
    {
      FillMissingCaptureObjectError(error);
LABEL_140:

      goto LABEL_141;
    }

    if (v20 > 1 || [v21 conformsToProtocol:&OBJC_PROTOCOL___MTLDevice])
    {
      if ((v20 & 0xFE) == 2 && ([v22 conformsToProtocol:&OBJC_PROTOCOL___MTLCommandQueue] & 1) == 0 && !objc_msgSend(v22, "conformsToProtocol:", &OBJC_PROTOCOL___MTL4CommandQueue))
      {
        v30 = @"an MTLCommandQueue or MTL4CommandQueue";
        goto LABEL_139;
      }

      if (v20 == 6)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v30 = @"a CAMetalLayer";
          goto LABEL_139;
        }
      }

      else if (v20 == 4)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v30 = @"an MTLCaptureScope";
LABEL_139:
          FillCaptureObjectTypeError(error, v30);
          goto LABEL_140;
        }
      }

      if ((v17 & 0xFFFFFFFFFFFFFFFDLL) == 0)
      {
        goto LABEL_21;
      }

      v45 = v15;
      if (objc_opt_respondsToSelector())
      {
        if (objc_opt_respondsToSelector())
        {

          triggerHitsToStart2 = [v45 triggerHitsToStart];
          *(&v126 + 1) = triggerHitsToStart2;
          triggerHitsToEnd = [v45 triggerHitsToEnd];
          goto LABEL_90;
        }

        v51 = @"triggerHitsToEnd";
      }

      else
      {
        v51 = @"triggerHitsToStart";
      }

      v151 = NSLocalizedDescriptionKey;
      v92 = [NSString stringWithFormat:@"%@ property is not present in the descriptor.", v51];
      v154 = v92;
      v152 = NSLocalizedFailureReasonErrorKey;
      v93 = [NSString stringWithFormat:@"Selected capture mode requires the %@ property.", v51];
      v153 = NSLocalizedRecoverySuggestionErrorKey;
      v155 = v93;
      v156 = @"Ensure that your capture descriptor implements the MTLCaptureManager(InternalSPI) category.";
      v94 = [NSDictionary dictionaryWithObjects:&v154 forKeys:&v151 count:3];

      ReportError(error, MTLCaptureErrorDomain, 3, v94);
      goto LABEL_141;
    }

    v30 = @"an MTLDevice";
    goto LABEL_139;
  }

  v147[0] = NSLocalizedDescriptionKey;
  v147[1] = NSLocalizedRecoverySuggestionErrorKey;
  v148[0] = @"Already capturing.";
  v148[1] = @"Stop running capture before starting a new one.";
  v7 = [NSDictionary dictionaryWithObjects:v148 forKeys:v147 count:2];
  ReportError(error, MTLCaptureErrorDomain, 2, v7);

LABEL_5:
  v12 = 0;
LABEL_6:

  return v12;
}

- (BOOL)supportsDestination:(int64_t)destination
{
  if (destination == 2)
  {
    return 1;
  }

  if (destination == 1)
  {
    if ((dword_31F7C8 & 0x800) == 0)
    {
      return [*g_guestAppClientMTL hasObservers];
    }

    return 1;
  }

  return 0;
}

- (void)dealloc
{
  GTTraceContext_closeStream(self->_traceContext, &self->_traceStream->var0);
  v3.receiver = self;
  v3.super_class = CaptureMTLCaptureManager;
  [(CaptureMTLCaptureManager *)&v3 dealloc];
}

- (CaptureMTLCaptureManager)initWithCaptureContext:(GTTraceContext *)context andIsToolsManager:(BOOL)manager
{
  v6 = [(CaptureMTLCaptureManager *)self init];
  v7 = v6;
  if (v6)
  {
    v6->_traceContext = context;
    v8 = DEVICEOBJECT(v6);
    *(v7 + 16) = GTTraceContext_openStream(context, v8, v7);

    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    GTTraceContext_pushEncoderWithStream(*(v7 + 8), &v23);
    v9 = v24;
    *(v24 + 8) = -10151;
    v10 = BYTE9(v25);
    if (BYTE9(v25) > 0x30uLL)
    {
      v12 = *(*(&v23 + 1) + 24);
      v13 = BYTE10(v25);
      ++BYTE10(v25);
      v11 = GTTraceMemPool_allocateBytes(v12, *(&v24 + 1), v13 | 0x1000000000) + 16;
      v10 = v13;
    }

    else
    {
      v11 = (v9 + BYTE9(v25));
      BYTE9(v25) += 16;
    }

    *(v9 + 13) = v10;
    traceStream = [v7 traceStream];
    if (traceStream)
    {
      v15 = *traceStream;
    }

    else
    {
      v15 = 0;
    }

    traceStream2 = [v7 traceStream];
    if (traceStream2)
    {
      v17 = *traceStream2;
    }

    else
    {
      v17 = 0;
    }

    *v11 = v15;
    *(v11 + 1) = v17;
    s();
    *v18 = v19;
    *(v18 + 8) = BYTE8(v25);
    *(v24 + 15) |= 8u;
    *(v7 + 32) = manager;
    v20 = dispatch_semaphore_create(0);
    v21 = *(v7 + 40);
    *(v7 + 40) = v20;
  }

  return v7;
}

+ (id)toolsCaptureManager
{
  if (toolsCaptureManager_onceToken != -1)
  {
    dispatch_once(&toolsCaptureManager_onceToken, &__block_literal_global_11976);
  }

  v3 = toolsCaptureManager_toolsCaptureManager;

  return v3;
}

void __47__CaptureMTLCaptureManager_toolsCaptureManager__block_invoke(id a1)
{
  v1 = [[CaptureMTLCaptureManager alloc] initWithCaptureContext:g_ctx andIsToolsManager:1];
  v2 = toolsCaptureManager_toolsCaptureManager;
  toolsCaptureManager_toolsCaptureManager = v1;

  _objc_release_x1(v1, v2);
}

@end