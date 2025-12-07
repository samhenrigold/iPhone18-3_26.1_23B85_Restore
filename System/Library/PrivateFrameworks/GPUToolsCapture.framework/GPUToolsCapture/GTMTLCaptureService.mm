@interface GTMTLCaptureService
- (GTMTLCaptureService)initWithGuestApp:(GTMTLGuestAppClient *)app;
- (id)query:(id)query;
- (id)startWithDescriptor:(id)descriptor completionHandler:(id)handler;
- (id)update:(id)update;
- (unint64_t)registerObserver:(id)observer;
- (void)deregisterObserver:(unint64_t)observer;
- (void)deregisterObserversForConnection:(id)connection path:(id)path;
- (void)notifyCaptureObjectsChanged:(id)changed;
- (void)notifyCaptureProgress:(id)progress;
- (void)notifyCaptureRequest:(id)request;
- (void)notifyUnsupportedFenum:(id)fenum;
- (void)signalInterposeSemaphore;
- (void)stop;
- (void)waitForInterposeSignal;
@end

@implementation GTMTLCaptureService

- (void)notifyCaptureRequest:(id)request
{
  requestCopy = request;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __44__GTMTLCaptureService_notifyCaptureRequest___block_invoke;
  v7[3] = &unk_2F2550;
  v7[4] = self;
  v8 = requestCopy;
  v6 = requestCopy;
  dispatch_async(serialQueue, v7);
}

void __44__GTMTLCaptureService_notifyCaptureRequest___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 56), *(a1 + 40));
  if ([*(*(a1 + 32) + 32) count])
  {
    v2 = *(*(a1 + 32) + 32);
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = __44__GTMTLCaptureService_notifyCaptureRequest___block_invoke_2;
    v3[3] = &unk_2F1D48;
    v4 = *(a1 + 40);
    [v2 notifyAll:v3];
  }
}

- (void)notifyUnsupportedFenum:(id)fenum
{
  fenumCopy = fenum;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __46__GTMTLCaptureService_notifyUnsupportedFenum___block_invoke;
  v7[3] = &unk_2F2550;
  v7[4] = self;
  v8 = fenumCopy;
  v6 = fenumCopy;
  dispatch_async(serialQueue, v7);
}

void __46__GTMTLCaptureService_notifyUnsupportedFenum___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = __46__GTMTLCaptureService_notifyUnsupportedFenum___block_invoke_2;
  v2[3] = &unk_2F1D48;
  v3 = *(a1 + 40);
  [v1 notifyAll:v2];
}

- (void)notifyCaptureProgress:(id)progress
{
  progressCopy = progress;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __45__GTMTLCaptureService_notifyCaptureProgress___block_invoke;
  v7[3] = &unk_2F2550;
  v7[4] = self;
  v8 = progressCopy;
  v6 = progressCopy;
  dispatch_async(serialQueue, v7);
}

void __45__GTMTLCaptureService_notifyCaptureProgress___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = __45__GTMTLCaptureService_notifyCaptureProgress___block_invoke_2;
  v2[3] = &unk_2F1D48;
  v3 = *(a1 + 40);
  [v1 notifyAll:v2];
}

- (void)notifyCaptureObjectsChanged:(id)changed
{
  changedCopy = changed;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __51__GTMTLCaptureService_notifyCaptureObjectsChanged___block_invoke;
  v7[3] = &unk_2F2550;
  v7[4] = self;
  v8 = changedCopy;
  v6 = changedCopy;
  dispatch_async(serialQueue, v7);
}

void __51__GTMTLCaptureService_notifyCaptureObjectsChanged___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = __51__GTMTLCaptureService_notifyCaptureObjectsChanged___block_invoke_2;
  v2[3] = &unk_2F1D48;
  v3 = *(a1 + 40);
  [v1 notifyAll:v2];
}

- (id)query:(id)query
{
  queryCopy = query;
  v4 = [NSMutableArray alloc];
  requests = [queryCopy requests];
  v6 = [v4 initWithCapacity:{objc_msgSend(requests, "count")}];

  requestID = [queryCopy requestID];
  requests2 = [queryCopy requests];
  v8 = [requests2 count];

  if (v8)
  {
    v9 = 0;
    do
    {
      requests3 = [queryCopy requests];
      v11 = [requests3 objectAtIndexedSubscript:v9];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = g_guestAppClientMTL;
        v13 = v11;
        v14 = GTMTLGuestAppClient_allCaptureObjects(v12);
        v15 = objc_opt_new();
        v38 = 0;
        v16 = [NSKeyedArchiver archivedDataWithRootObject:v14 requiringSecureCoding:1 error:&v38];
        v17 = v38;
        [v15 setData:v16];

        [v15 setError:v17];
        requestID2 = [v13 requestID];

        [v15 setRequestID:requestID2];
        [v6 setObject:v15 atIndexedSubscript:v9];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = v11;
          v14 = objc_opt_new();
          [v14 setEnablePresentDownload:dword_31F7C8 & 1];
          [v14 setPresentDownloadSize:qword_31F7C0];
          [v14 setEnableLogErrors:(dword_31F7C8 >> 1) & 1];
          [v14 setDisableHashResources:(dword_31F7C8 & 0x20) == 0];
          [v14 setWaitEventTimeout:GT_ENV];
          [v14 setMaxDownloadCommandBuffers:qword_31F7B0];
          v20 = objc_opt_new();
          v37 = 0;
          v21 = [NSKeyedArchiver archivedDataWithRootObject:v14 requiringSecureCoding:1 error:&v37];
          v22 = v37;
          [v20 setData:v21];

          [v20 setError:v22];
          requestID3 = [v19 requestID];

          [v20 setRequestID:requestID3];
          [v6 setObject:v20 atIndexedSubscript:v9];
        }

        else
        {
          v14 = objc_opt_new();
          [v14 setRequestID:{objc_msgSend(v11, "requestID")}];
          v24 = [NSError alloc];
          v39 = NSLocalizedDescriptionKey;
          v40 = @"unknown request";
          v25 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
          v26 = [v24 initWithDomain:NSCocoaErrorDomain code:1 userInfo:v25];
          [v14 setError:v26];

          [v6 setObject:v14 atIndexedSubscript:v9];
        }
      }

      ++v9;
      requests4 = [queryCopy requests];
      v28 = [requests4 count];
    }

    while (v28 > v9);
  }

  v29 = objc_opt_new();
  v30 = [v6 copy];
  v36 = 0;
  v31 = [NSKeyedArchiver archivedDataWithRootObject:v30 requiringSecureCoding:1 error:&v36];
  v32 = v36;
  [v29 setData:v31];

  [v29 setError:v32];
  [v29 setRequestID:requestID];
  completionHandler = [queryCopy completionHandler];
  (completionHandler)[2](completionHandler, v29);

  return 0;
}

- (id)update:(id)update
{
  updateCopy = update;
  v4 = dispatch_group_create();
  v5 = [NSMutableArray alloc];
  requests = [updateCopy requests];
  v63 = [v5 initWithCapacity:{objc_msgSend(requests, "count")}];

  requestID = [updateCopy requestID];
  requests2 = [updateCopy requests];
  v8 = [requests2 count];

  if (v8)
  {
    v9 = 0;
    v57 = v4;
    v58 = updateCopy;
    while (1)
    {
      dispatch_group_enter(v4);
      requests3 = [updateCopy requests];
      v11 = [requests3 objectAtIndexedSubscript:v9];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27 = v11;
        configuration = [v27 configuration];
        enablePresentDownload = [configuration enablePresentDownload];
        dword_31F7C8 = dword_31F7C8 & 0xFFFFFFFE | enablePresentDownload;
        qword_31F7C0 = [configuration presentDownloadSize];
        if ([configuration enableLogErrors])
        {
          v29 = 2;
        }

        else
        {
          v29 = 0;
        }

        dword_31F7C8 = dword_31F7C8 & 0xFFFFFFFD | v29;
        if ([configuration disableHashResources])
        {
          v30 = 0;
        }

        else
        {
          v30 = 32;
        }

        dword_31F7C8 = dword_31F7C8 & 0xFFFFFFDF | v30;
        GT_ENV = [configuration waitEventTimeout];
        qword_31F7B0 = [configuration maxDownloadCommandBuffers];
        v17 = objc_opt_new();
        v65 = 0;
        v31 = [NSKeyedArchiver archivedDataWithRootObject:&__kCFBooleanTrue requiringSecureCoding:1 error:&v65];
        v32 = v65;
        [v17 setData:v31];

        [v17 setError:v32];
        requestID2 = [v27 requestID];

        [v17 setRequestID:requestID2];
        [v63 setObject:v17 atIndexedSubscript:v9];
        dispatch_group_leave(v4);

LABEL_38:
        goto LABEL_39;
      }

      configuration = objc_opt_new();
      [configuration setRequestID:{objc_msgSend(v11, "requestID")}];
      v34 = [NSError alloc];
      v85 = NSLocalizedDescriptionKey;
      v86 = @"unknown request";
      v35 = [NSDictionary dictionaryWithObjects:&v86 forKeys:&v85 count:1];
      v36 = [v34 initWithDomain:NSCocoaErrorDomain code:1 userInfo:v35];
      [configuration setError:v36];

      [v63 setObject:configuration atIndexedSubscript:v9];
      dispatch_group_leave(v4);
LABEL_39:

      ++v9;
      requests4 = [updateCopy requests];
      v49 = [requests4 count];

      if (v49 <= v9)
      {
        goto LABEL_40;
      }
    }

    configuration = v11;
    requestID3 = [configuration requestID];
    streamRef = [configuration streamRef];
    enable = [configuration enable];
    Stream = GTTraceContext_getStream(g_ctx, streamRef);
    if (Stream)
    {
      v62 = requestID3;
      v17 = *(Stream + 16);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v59 = enable;
        v60 = v17;
        v18 = v17;
        v81 = 0u;
        v82 = 0u;
        v83 = 0u;
        v84 = 0u;
        v61 = v18;
        superlayer = [v18 superlayer];
        sublayers = [superlayer sublayers];

        v21 = [sublayers countByEnumeratingWithState:&v81 objects:v89 count:16];
        if (v21)
        {
          v22 = *v82;
          while (2)
          {
            for (i = 0; i != v21; i = i + 1)
            {
              if (*v82 != v22)
              {
                objc_enumerationMutation(sublayers);
              }

              v24 = *(*(&v81 + 1) + 8 * i);
              name = [v24 name];
              v26 = [name isEqualToString:@"gputools.overlay"];

              if (v26)
              {
                v21 = v24;
                goto LABEL_27;
              }
            }

            v21 = [sublayers countByEnumeratingWithState:&v81 objects:v89 count:16];
            if (v21)
            {
              continue;
            }

            break;
          }

LABEL_27:
          v4 = v57;
          updateCopy = v58;
        }

        v42 = v61;
        if (v21 || ((v59 ^ 1) & 1) != 0)
        {
          v45 = v59;
          if (!v21)
          {
            v45 = 1;
          }

          if (v45)
          {
            v44 = objc_opt_new();
            v67 = 0;
            v46 = [NSKeyedArchiver archivedDataWithRootObject:&__kCFBooleanFalse requiringSecureCoding:1 error:&v67];
            v47 = v67;
            [v44 setData:v46];

            v42 = v61;
            [v44 setError:v47];
            [v44 setRequestID:v62];
            [v63 setObject:v44 atIndexedSubscript:v9];
            dispatch_group_leave(v4);
          }

          else
          {
            v68[0] = _NSConcreteStackBlock;
            v68[1] = 3221225472;
            v68[2] = __30__GTMTLCaptureService_update___block_invoke_2;
            v68[3] = &unk_2F1D20;
            v21 = v21;
            v69 = v21;
            v72 = v62;
            v70 = v63;
            v73 = v9;
            v71 = v4;
            dispatch_async(&_dispatch_main_q, v68);

            v44 = v69;
          }
        }

        else
        {
          v43 = +[CALayer layer];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = __30__GTMTLCaptureService_update___block_invoke;
          block[3] = &unk_2F1CF8;
          v21 = v43;
          v75 = v21;
          v76 = v61;
          v79 = v62;
          v77 = v63;
          v80 = v9;
          v78 = v4;
          dispatch_async(&_dispatch_main_q, block);

          v44 = v75;
        }

        v17 = v60;
      }

      else
      {
        v21 = objc_opt_new();
        v66 = 0;
        v41 = [NSKeyedArchiver archivedDataWithRootObject:&__kCFBooleanFalse requiringSecureCoding:1 error:&v66];
        v42 = v66;
        [v21 setData:v41];

        [v21 setError:v42];
        [v21 setRequestID:v62];
        [v63 setObject:v21 atIndexedSubscript:v9];
        dispatch_group_leave(v4);
      }
    }

    else
    {
      v37 = objc_opt_new();
      [v37 setData:0];
      v38 = [NSError alloc];
      v87 = NSLocalizedDescriptionKey;
      v88 = @"unknown streamRef";
      v39 = [NSDictionary dictionaryWithObjects:&v88 forKeys:&v87 count:1];
      v40 = [v38 initWithDomain:NSCocoaErrorDomain code:1 userInfo:v39];
      [v37 setError:v40];

      v17 = v37;
      [v37 setRequestID:requestID3];
      [v63 setObject:v37 atIndexedSubscript:v9];
      dispatch_group_leave(v4);
    }

    goto LABEL_38;
  }

LABEL_40:
  dispatch_group_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
  v50 = objc_opt_new();
  v51 = [v63 copy];
  v64 = 0;
  v52 = [NSKeyedArchiver archivedDataWithRootObject:v51 requiringSecureCoding:1 error:&v64];
  v53 = v64;
  [v50 setData:v52];

  [v50 setError:v53];
  [v50 setRequestID:requestID];
  completionHandler = [updateCopy completionHandler];
  (completionHandler)[2](completionHandler, v50);

  return 0;
}

void __30__GTMTLCaptureService_update___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setName:@"gputools.overlay"];
  [*(a1 + 40) bounds];
  [*(a1 + 32) setBounds:?];
  [*(a1 + 40) frame];
  [*(a1 + 32) setFrame:?];
  *components = xmmword_29BA50;
  v17 = unk_29BA60;
  v2 = CFPreferencesCopyValue(@"AppleHighlightColor", kCFPreferencesAnyApplication, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  if (v2)
  {
    v3 = v2;
    ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, v2, @" ");
    if (ArrayBySeparatingStrings)
    {
      v5 = ArrayBySeparatingStrings;
      ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 0);
      components[0] = CFStringGetDoubleValue(ValueAtIndex);
      v7 = CFArrayGetValueAtIndex(v5, 1);
      components[1] = CFStringGetDoubleValue(v7);
      v8 = CFArrayGetValueAtIndex(v5, 2);
      *&v17 = CFStringGetDoubleValue(v8);
      CFRelease(v5);
    }

    CFRelease(v3);
  }

  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  [*(a1 + 32) setBackgroundColor:{CGColorCreate(DeviceRGB, components)}];
  LODWORD(v10) = 0.5;
  [*(a1 + 32) setOpacity:v10];
  v11 = [*(a1 + 40) superlayer];
  [v11 insertSublayer:*(a1 + 32) above:*(a1 + 40)];

  v12 = objc_opt_new();
  v15 = 0;
  v13 = [NSKeyedArchiver archivedDataWithRootObject:&__kCFBooleanTrue requiringSecureCoding:1 error:&v15];
  v14 = v15;
  [v12 setData:v13];

  [v12 setError:v14];
  [v12 setRequestID:*(a1 + 64)];
  [*(a1 + 48) setObject:v12 atIndexedSubscript:*(a1 + 72)];
  dispatch_group_leave(*(a1 + 56));
}

void __30__GTMTLCaptureService_update___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperlayer];
  v2 = objc_opt_new();
  v5 = 0;
  v3 = [NSKeyedArchiver archivedDataWithRootObject:&__kCFBooleanTrue requiringSecureCoding:1 error:&v5];
  v4 = v5;
  [v2 setData:v3];

  [v2 setRequestID:*(a1 + 56)];
  [*(a1 + 40) setObject:v2 atIndexedSubscript:*(a1 + 64)];
  dispatch_group_leave(*(a1 + 48));
}

- (id)startWithDescriptor:(id)descriptor completionHandler:(id)handler
{
  descriptorCopy = descriptor;
  handlerCopy = handler;
  v8 = objc_opt_new();
  streamRef = [descriptorCopy streamRef];
  Stream = GTTraceContext_getStream(g_ctx, streamRef);
  if (Stream)
  {
    v11 = *(Stream + 16);
  }

  else
  {
    v11 = 0;
  }

  [v8 setCaptureObject:v11];

  [v8 setDestination:2];
  [v8 setSessionID:{objc_msgSend(descriptorCopy, "sessionID")}];
  captureObject = [v8 captureObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = 6;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = 4;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = 3;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = 3;
          }

          else
          {
            v13 = 5;
          }
        }
      }
    }
  }

  [v8 setCaptureMode:v13];
  if (self->_interposeSemaphore)
  {
    triggerHitsToStart = 0;
  }

  else
  {
    triggerHitsToStart = [descriptorCopy triggerHitsToStart];
  }

  [v8 setTriggerHitsToStart:triggerHitsToStart];
  [v8 setTriggerHitsToEnd:{objc_msgSend(descriptorCopy, "triggerHitsToEnd")}];
  [v8 setSuspendAfterCapture:{objc_msgSend(descriptorCopy, "suspendAfterCapture")}];
  [v8 setIgnoreUnusedResources:{objc_msgSend(descriptorCopy, "ignoreUnusedResources")}];
  [v8 setIncludeBacktrace:{objc_msgSend(descriptorCopy, "includeBacktrace")}];
  [v8 setApiTriggeredCapture:1];
  [v8 setToolTriggeredCapture:1];
  outputURL = [descriptorCopy outputURL];
  if (outputURL)
  {
    v16 = outputURL;
    [v8 setOutputURL:outputURL];
  }

  else
  {
    v17 = +[NSFileManager defaultManager];
    temporaryDirectory = [v17 temporaryDirectory];

    v19 = +[NSProcessInfo processInfo];
    globallyUniqueString = [v19 globallyUniqueString];
    v21 = [globallyUniqueString stringByAppendingString:@".gputrace"];

    v16 = [[NSURL alloc] initFileURLWithPath:v21 isDirectory:1 relativeToURL:temporaryDirectory];
    [v8 setOutputURL:v16];
  }

  v22 = self->_timer;
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = __61__GTMTLCaptureService_startWithDescriptor_completionHandler___block_invoke;
  v34[3] = &unk_2F1CD0;
  v23 = v22;
  v35 = v23;
  v24 = v16;
  v36 = v24;
  v25 = handlerCopy;
  v37 = v25;
  [v8 setCompletionHandler:v34];
  if (([descriptorCopy isToolsCapture] & 1) != 0 || !objc_msgSend(descriptorCopy, "sessionID"))
  {
    v26 = +[CaptureMTLCaptureManager toolsCaptureManager];
  }

  else
  {
    v26 = +[CaptureMTLCaptureManager sharedCaptureManager];
  }

  v27 = v26;
  captureRequest = self->_captureRequest;
  self->_captureRequest = 0;

  v33 = 0;
  v29 = [v27 startCaptureWithDescriptor:v8 error:&v33];
  v30 = v33;
  if (v29)
  {
    dispatch_resume(self->_timer);
  }

  else
  {
    v31 = objc_opt_new();
    [v31 setError:v30];
    (*(v25 + 2))(v25, v31);
  }

  return 0;
}

void __61__GTMTLCaptureService_startWithDescriptor_completionHandler___block_invoke(uint64_t a1)
{
  dispatch_suspend(*(a1 + 32));
  v2 = objc_opt_new();
  [v2 setArchiveURL:*(a1 + 40)];
  (*(*(a1 + 48) + 16))();
}

- (void)deregisterObserver:(unint64_t)observer
{
  serialQueue = self->_serialQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __42__GTMTLCaptureService_deregisterObserver___block_invoke;
  v4[3] = &unk_2F1CA8;
  v4[4] = self;
  v4[5] = observer;
  dispatch_async(serialQueue, v4);
}

- (void)deregisterObserversForConnection:(id)connection path:(id)path
{
  connectionCopy = connection;
  pathCopy = path;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __61__GTMTLCaptureService_deregisterObserversForConnection_path___block_invoke;
  block[3] = &unk_2F1C80;
  block[4] = self;
  v12 = connectionCopy;
  v13 = pathCopy;
  v9 = pathCopy;
  v10 = connectionCopy;
  dispatch_async(serialQueue, block);
}

- (unint64_t)registerObserver:(id)observer
{
  observerCopy = observer;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __40__GTMTLCaptureService_registerObserver___block_invoke;
  block[3] = &unk_2F1C58;
  v10 = observerCopy;
  v11 = &v12;
  block[4] = self;
  v6 = observerCopy;
  dispatch_sync(serialQueue, block);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

void *__40__GTMTLCaptureService_registerObserver___block_invoke(void *a1)
{
  *(*(a1[6] + 8) + 24) = [*(a1[4] + 32) registerObserver:a1[5]];
  result = a1[4];
  if (result[7])
  {

    return [result notifyCaptureRequest:?];
  }

  return result;
}

- (void)stop
{
  v2 = +[CaptureMTLCaptureManager toolsCaptureManager];
  [v2 stopCapture];
}

- (void)waitForInterposeSignal
{
  interposeSemaphore = self->_interposeSemaphore;
  if (interposeSemaphore)
  {
    dispatch_semaphore_wait(interposeSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    interposeSemaphore = self->_interposeSemaphore;
  }

  self->_interposeSemaphore = 0;
}

- (void)signalInterposeSemaphore
{
  interposeSemaphore = self->_interposeSemaphore;
  if (interposeSemaphore)
  {
    dispatch_semaphore_signal(interposeSemaphore);
  }
}

- (GTMTLCaptureService)initWithGuestApp:(GTMTLGuestAppClient *)app
{
  v18.receiver = self;
  v18.super_class = GTMTLCaptureService;
  v3 = [(GTMTLCaptureService *)&v18 init];
  if (v3)
  {
    if (s_logUsingOsLog == 1)
    {
      v4 = gt_tagged_log(16);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "Create Capture Service", buf, 2u);
      }
    }

    else
    {
      v5 = __stdoutp;
      v4 = [NSString stringWithFormat:@"Create Capture Service"];
      fprintf(v5, "%s\n", [v4 UTF8String]);
    }

    if ((dword_31F7C8 & 0x40) != 0)
    {
      v6 = dispatch_semaphore_create(0);
      v7 = *(v3 + 3);
      *(v3 + 3) = v6;
    }

    v8 = dispatch_queue_create("com.app.gputools.capture", 0);
    v9 = *(v3 + 5);
    *(v3 + 5) = v8;

    v10 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v3 + 5));
    v11 = *(v3 + 6);
    *(v3 + 6) = v10;

    dispatch_source_set_event_handler(*(v3 + 6), &__block_literal_global_4241);
    dispatch_source_set_timer(*(v3 + 6), 0, 0x2FAF080uLL, 0);
    v12 = objc_opt_new();
    v13 = *(v3 + 4);
    *(v3 + 4) = v12;

    v14 = dispatch_queue_create("com.apple.gputools.capture-observers", 0);
    v15 = *(v3 + 8);
    *(v3 + 8) = v14;
  }

  return v3;
}

void __40__GTMTLCaptureService_initWithGuestApp___block_invoke(id a1)
{
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v20 = v1;
    v2 = atomic_load(&g_frameCount);
    v3 = atomic_load(&g_frameOther);
    v4 = atomic_load(&g_commitCount);
    v5 = atomic_load(&g_commitOther);
    v6 = atomic_load(&g_resourceCount);
    v7 = atomic_load(&g_resourceDownloaded);
    v8 = atomic_load(&g_GPUDataSize);
    v9 = atomic_load(&g_GPUDataDownloaded);
    v19 = objc_opt_new();
    [v19 setCaptureState:1];
    v10 = objc_opt_new();
    [v19 setStats:v10];

    v11 = [v19 stats];
    [v11 setFrameCount:v2];

    v12 = [v19 stats];
    [v12 setFrameOther:v3];

    v13 = [v19 stats];
    [v13 setCommitCount:v4];

    v14 = [v19 stats];
    [v14 setCommitOther:v5];

    v15 = [v19 stats];
    [v15 setResourceCount:v6];

    v16 = [v19 stats];
    [v16 setResourceDownloaded:v7];

    v17 = [v19 stats];
    [v17 setGPUDataSize:v8];

    v18 = [v19 stats];
    [v18 setGPUDataDownloaded:v9];

    [*g_guestAppClientMTL notifyCaptureProgress:v19];
  }
}

@end