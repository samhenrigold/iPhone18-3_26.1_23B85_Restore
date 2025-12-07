@interface FTLivePhotoController
+ (BOOL)isFaceTimePhotosAvailable;
+ (BOOL)shouldPreserveMomentsFile;
+ (FTMomentsControllerLocalCapabilities)localCapabilities;
+ (id)sharedInstance;
- (FTLivePhotoController)init;
- (FTLivePhotoController)initWithQueue:(id)queue fileTransferController:(id)controller idsService:(id)service mediaAssetManager:(id)manager callCenter:(id)center userNotificationProviderDataSource:(id)source featureFlags:(id)flags;
- (FTLivePhotoControllerDelegate)delegate;
- (id)contentsOfDirectoryAtURL:(id)l;
- (id)sessionForTransactionID:(id)d;
- (id)urlFromResources:(id)resources withExtension:(id)extension;
- (int)availabilityWithRemoteAvailable:(BOOL)available;
- (void)_handleReceivedResourcesAtDirectoryURL:(id)l transactionID:(id)d;
- (void)_handleReceivedVideoURL:(id)l;
- (void)_saveLivePhotoWithPhotoURL:(id)l videoURL:(id)rL completion:(id)completion;
- (void)_saveVideoWithURL:(id)l completion:(id)completion;
- (void)_startTimeoutForMomentsRequestWithTransactionID:(id)d;
- (void)_transferFileAtURL:(id)l forSession:(id)session request:(id)request;
- (void)cleanUpForMomentIfNecessary:(id)necessary;
- (void)deleteContentsAtURL:(id)l;
- (void)endRequestWithTransactionID:(id)d reply:(id)reply;
- (void)fileTransferer:(id)transferer didReceiveResourcesAtURL:(id)l withMetadata:(id)metadata isZipped:(BOOL)zipped fromIDSDestination:(id)destination;
- (void)fileTransferer:(id)transferer didTransferFileAtURL:(id)l transactionID:(id)d successfully:(BOOL)successfully;
- (void)handleRequestResultWithMomentDescriptor:(id)descriptor;
- (void)moments:(id)moments capabilitiesDidChange:(unsigned int)change;
- (void)moments:(id)moments didEndProcessingRequest:(id)request stillImageURL:(id)l movieURL:(id)rL error:(id)error;
- (void)moments:(id)moments didFinishRequest:(id)request error:(id)error;
- (void)moments:(id)moments didStartProcessingRequest:(id)request error:(id)error;
- (void)momentsServerDidDisconnect:(id)disconnect;
- (void)registerStreamToken:(int64_t)token requesterID:(id)d remoteIDSDestinations:(id)destinations remoteMomentsAvailable:(BOOL)available reply:(id)reply;
- (void)requestSandboxExtensionForTransactionID:(id)d reply:(id)reply;
- (void)requestSandboxExtensionForURL:(id)l reply:(id)reply;
- (void)startRequestWithMediaType:(int)type forStreamToken:(int64_t)token requesteeID:(id)d destinationID:(id)iD reply:(id)reply;
- (void)unregisterStreamToken:(int64_t)token;
- (void)unregisterStreamToken:(int64_t)token reply:(id)reply;
@end

@implementation FTLivePhotoController

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002974;
  block[3] = &unk_100050F88;
  block[4] = self;
  if (qword_100059C18 != -1)
  {
    dispatch_once(&qword_100059C18, block);
  }

  v2 = qword_100059C10;

  return v2;
}

- (FTLivePhotoController)init
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_DEFAULT, 0);

  v5 = dispatch_queue_create("com.apple.telephonyutilities.FTLivePhotoController", v4);
  v6 = [FTFileTransferController alloc];
  v7 = +[_TtC18FTLivePhotoService21FTLivePhotoIDSService sharedInstance];
  v8 = +[FTServerBag sharedInstance];
  v9 = [(FTFileTransferController *)v6 initWithService:v7 serverBag:v8];

  v10 = objc_alloc_init(FTMediaAssetManager);
  v11 = [TUCallCenter callCenterWithQueue:v5];
  v12 = objc_alloc_init(TUFeatureFlags);
  v13 = objc_alloc_init(TUUserNotificationProviderXPCClient);
  v14 = +[_TtC18FTLivePhotoService21FTLivePhotoIDSService sharedInstance];
  v15 = [(FTLivePhotoController *)self initWithQueue:v5 fileTransferController:v9 idsService:v14 mediaAssetManager:v10 callCenter:v11 userNotificationProviderDataSource:v13 featureFlags:v12];

  return v15;
}

- (FTLivePhotoController)initWithQueue:(id)queue fileTransferController:(id)controller idsService:(id)service mediaAssetManager:(id)manager callCenter:(id)center userNotificationProviderDataSource:(id)source featureFlags:(id)flags
{
  queueCopy = queue;
  controllerCopy = controller;
  serviceCopy = service;
  managerCopy = manager;
  centerCopy = center;
  sourceCopy = source;
  flagsCopy = flags;
  v35.receiver = self;
  v35.super_class = FTLivePhotoController;
  v23 = [(FTLivePhotoController *)&v35 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_queue, queue);
    queue = v24->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100002CDC;
    block[3] = &unk_100050FF0;
    v28 = v24;
    v29 = flagsCopy;
    v30 = centerCopy;
    v31 = controllerCopy;
    v32 = serviceCopy;
    v33 = managerCopy;
    v34 = sourceCopy;
    dispatch_async(queue, block);
  }

  return v24;
}

- (void)startRequestWithMediaType:(int)type forStreamToken:(int64_t)token requesteeID:(id)d destinationID:(id)iD reply:(id)reply
{
  v10 = *&type;
  dCopy = d;
  iDCopy = iD;
  replyCopy = reply;
  queue = [(FTLivePhotoController *)self queue];
  dispatch_assert_queue_V2(queue);

  v17 = FTDefaultLog(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    *v57 = v10;
    *&v57[4] = 2048;
    *&v57[6] = token;
    *&v57[14] = 1024;
    *&v57[16] = TUAllowLocalVideoRecording();
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "mediaType: %d, token: %ld localVideoRecordingEnabled: %d", buf, 0x18u);
  }

  serverBag = [(FTLivePhotoController *)self serverBag];
  if ([serverBag isMomentsDisabled])
  {

    goto LABEL_19;
  }

  isFaceTimePhotosAvailable = [objc_opt_class() isFaceTimePhotosAvailable];

  if (!isFaceTimePhotosAvailable)
  {
LABEL_19:
    v22 = [NSString stringWithFormat:@"Asked to start moments request but moments is disabled by server bag or default"];
    v48 = NSLocalizedDescriptionKey;
    v49 = v22;
    v34 = [NSDictionary dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    v31 = [NSError errorWithDomain:@"com.apple.callservicesdaemon.FTLivePhotocontroller" code:1 userInfo:v34];

    moments = FTDefaultLog(v35);
    if (os_log_type_enabled(moments, OS_LOG_TYPE_ERROR))
    {
      sub_100038380();
    }

LABEL_21:
    transactionID = 0;
    goto LABEL_22;
  }

  if ((v10 - 1) > 2)
  {
    v22 = [NSString stringWithFormat:@"Asked to start moments request with invalid media type %d", v10];
    v50 = NSLocalizedDescriptionKey;
    v51 = v22;
    v36 = [NSDictionary dictionaryWithObjects:&v51 forKeys:&v50 count:1];
    v31 = [NSError errorWithDomain:@"com.apple.callservicesdaemon.FTLivePhotocontroller" code:1 userInfo:v36];

    moments = FTDefaultLog(v37);
    if (os_log_type_enabled(moments, OS_LOG_TYPE_ERROR))
    {
      sub_100038380();
    }

    goto LABEL_21;
  }

  sessionsByToken = [(FTLivePhotoController *)self sessionsByToken];
  v21 = [NSNumber numberWithInteger:token];
  v22 = [sessionsByToken objectForKeyedSubscript:v21];

  if (v22)
  {
    moments = [v22 moments];
    if (TUAllowLocalVideoRecording())
    {
      v24 = 1;
    }

    else
    {
      v24 = 2;
    }

    v43 = [moments newRequestWithMediaType:v10 mode:v24 requesteeID:dCopy];
    featureFlags = [(FTLivePhotoController *)self featureFlags];
    livePhotoDonation = [featureFlags livePhotoDonation];

    if (livePhotoDonation)
    {
      objc_initWeak(buf, self);
      idsService = [(FTLivePhotoController *)self idsService];
      v45[0] = _NSConcreteStackBlock;
      v45[1] = 3221225472;
      v45[2] = sub_1000035D8;
      v45[3] = &unk_100051018;
      objc_copyWeak(&v47, buf);
      v46 = iDCopy;
      [idsService donateWithDestination:v46 completionHandler:v45];

      objc_destroyWeak(&v47);
      objc_destroyWeak(buf);
    }

    if (v43)
    {
      transactionID = [v43 transactionID];
      token = [[FTMomentsRequest alloc] initWithAVCRequest:v43 session:v22];
      [v22 setActiveRequest:token forTransactionID:transactionID];
      if ((TUAllowLocalVideoRecording() & 1) == 0)
      {
        [(FTLivePhotoController *)self _startTimeoutForMomentsRequestWithTransactionID:transactionID];
      }

      v44 = 0;
      v30 = [v43 startWithError:&v44];
      v31 = v44;
      v32 = FTDefaultLog(v31);
      v33 = v32;
      if (v30)
      {
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *v57 = v43;
          *&v57[8] = 2112;
          *&v57[10] = transactionID;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Successfully started AVCMomentsRequest: %@, transactionID %@", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_1000383E8();
      }
    }

    else
    {
      token = [NSString stringWithFormat:@"Could not start request for mediaType: %d streamToken: %ld. [AVCMoments newRequestWithMediaType:] returned nil.", v10, token];
      v54 = NSLocalizedDescriptionKey;
      v55 = token;
      v41 = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];
      v31 = [NSError errorWithDomain:@"com.apple.callservicesdaemon.FTLivePhotocontroller" code:1 userInfo:v41];

      v33 = FTDefaultLog(v42);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_100038450();
      }

      transactionID = 0;
    }

    v40 = v43;
  }

  else
  {
    moments = [NSString stringWithFormat:@"Could not start request for mediaType: %d streamToken: %ld. No session has been registered for requested stream token.", v10, token];
    v52 = NSLocalizedDescriptionKey;
    v53 = moments;
    v38 = [NSDictionary dictionaryWithObjects:&v53 forKeys:&v52 count:1];
    v31 = [NSError errorWithDomain:@"com.apple.callservicesdaemon.FTLivePhotocontroller" code:1 userInfo:v38];

    v40 = FTDefaultLog(v39);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v57 = moments;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "[WARN] %@", buf, 0xCu);
    }

    transactionID = 0;
  }

LABEL_22:
  replyCopy[2](replyCopy, transactionID, v31);
}

- (void)endRequestWithTransactionID:(id)d reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  queue = [(FTLivePhotoController *)self queue];
  dispatch_assert_queue_V2(queue);

  v10 = FTDefaultLog(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = dCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "transactionID: %@", buf, 0xCu);
  }

  v11 = [(FTLivePhotoController *)self sessionForTransactionID:dCopy];
  activeRequestsByTransactionID = [v11 activeRequestsByTransactionID];
  v13 = [activeRequestsByTransactionID objectForKeyedSubscript:dCopy];

  if (v13)
  {
    avcRequest = [v13 avcRequest];
    v23 = 0;
    v15 = [avcRequest endWithError:&v23];
    v16 = v23;

    v18 = FTDefaultLog(v17);
    dCopy = v18;
    if (v15)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v27 = v13;
        _os_log_impl(&_mh_execute_header, dCopy, OS_LOG_TYPE_DEFAULT, "Successfully ended request %@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10003852C();
    }
  }

  else
  {
    dCopy = [NSString stringWithFormat:@"Could not find request for transaction ID %@", dCopy];
    v24 = NSLocalizedDescriptionKey;
    v25 = dCopy;
    v20 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v16 = [NSError errorWithDomain:@"com.apple.callservicesdaemon.FTLivePhotocontroller" code:1 userInfo:v20];

    v22 = FTDefaultLog(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_100038380();
    }
  }

  replyCopy[2](replyCopy, v16);
}

- (void)registerStreamToken:(int64_t)token requesterID:(id)d remoteIDSDestinations:(id)destinations remoteMomentsAvailable:(BOOL)available reply:(id)reply
{
  availableCopy = available;
  dCopy = d;
  destinationsCopy = destinations;
  replyCopy = reply;
  queue = [(FTLivePhotoController *)self queue];
  dispatch_assert_queue_V2(queue);

  v15 = [(FTLivePhotoController *)self availabilityWithRemoteAvailable:availableCopy];
  v16 = +[NSSet set];
  sessionsByToken = [(FTLivePhotoController *)self sessionsByToken];
  v18 = [NSNumber numberWithInteger:token];
  v19 = [sessionsByToken objectForKeyedSubscript:v18];

  if (v19)
  {
    moments = [v19 moments];
    v22 = mediaTypesCapabilitiesSetForCapabilities([moments capabilities]);

    v23 = FTDefaultLog([v19 setRemoteIDSDestinations:destinationsCopy]);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      tokenCopy2 = v19;
      v46 = 2048;
      tokenCopy4 = token;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "updating remoteIDSDestinations and returning registered session: %@ for streamToken: %ld", buf, 0x16u);
    }

    goto LABEL_29;
  }

  if (v15 != 3)
  {
    v23 = FTDefaultLog(v20);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(tokenCopy2) = v15;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "FaceTime Photos is not available. Availability is %d", buf, 8u);
    }

    goto LABEL_25;
  }

  v23 = FTDefaultLog(v20);
  v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
  if (!destinationsCopy)
  {
    if (v24)
    {
      *buf = 67109120;
      LODWORD(tokenCopy2) = 3;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[WARN] FaceTime Photos availability is %d but remoteIDSDestination is nil so changing availability to Unavailabile", buf, 8u);
    }

    destinationsCopy = 0;
    v15 = 1;
LABEL_25:
    v22 = v16;
    goto LABEL_29;
  }

  if (v24)
  {
    *buf = 134218498;
    tokenCopy2 = token;
    v46 = 2112;
    tokenCopy4 = dCopy;
    v48 = 2112;
    tokenCopy3 = destinationsCopy;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Registering stream token %ld, requesterID %@ and remoteIDSDestinations %@ with new moments object", buf, 0x20u);
  }

  momentsGenerator = [(FTLivePhotoController *)self momentsGenerator];
  queue2 = [(FTLivePhotoController *)self queue];
  v23 = (momentsGenerator)[2](momentsGenerator, token, dCopy, self, queue2);

  v22 = mediaTypesCapabilitiesSetForCapabilities([v23 capabilities]);

  v28 = FTDefaultLog(v27);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    tokenCopy2 = v23;
    v46 = 2112;
    tokenCopy4 = v22;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Received moments object %@ with supported media types: %@", buf, 0x16u);
  }

  v29 = [v22 count];
  if (!v29)
  {
    v30 = FTDefaultLog(0);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      tokenCopy2 = v22;
      v46 = 2112;
      tokenCopy4 = v23;
      v48 = 2048;
      tokenCopy3 = token;
      _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "unexpected supportedMediaTypes: %@, moments: %@, streamToken: %ld", buf, 0x20u);
    }
  }

  if (v23)
  {
    v31 = TUAllowLocalVideoRecording();
    v32 = &__NSDictionary0__struct;
    if (!v31)
    {
      v32 = destinationsCopy;
    }

    v33 = v32;

    v34 = [FTMomentsControllerSession alloc];
    callCenter = [(FTLivePhotoController *)self callCenter];
    v42 = v33;
    v36 = [(FTMomentsControllerSession *)v34 initWithMoments:v23 remoteIDSDestinations:v33 callCenter:callCenter];

    sessionsByToken2 = [(FTLivePhotoController *)self sessionsByToken];
    v38 = [NSNumber numberWithInteger:token];
    [sessionsByToken2 setObject:v36 forKeyedSubscript:v38];

    v40 = FTDefaultLog(v39);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      tokenCopy2 = v36;
      v46 = 2048;
      tokenCopy4 = token;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Created session: %@ for streamToken: %ld", buf, 0x16u);
    }

    destinationsCopy = v42;
  }

  else
  {
    v36 = FTDefaultLog(v29);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      sub_100038594();
    }
  }

  v15 = 3;
LABEL_29:

  v41 = [[TUMomentsCapabilities alloc] initWithAvailability:v15 supportedMediaTypes:v22];
  replyCopy[2](replyCopy, v41, 0);
}

- (void)unregisterStreamToken:(int64_t)token reply:(id)reply
{
  replyCopy = reply;
  queue = [(FTLivePhotoController *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = FTDefaultLog(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    tokenCopy = token;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Asked to unregister stream token: %ld", &v10, 0xCu);
  }

  [(FTLivePhotoController *)self unregisterStreamToken:token];
  replyCopy[2](replyCopy, 0);
}

- (void)fileTransferer:(id)transferer didReceiveResourcesAtURL:(id)l withMetadata:(id)metadata isZipped:(BOOL)zipped fromIDSDestination:(id)destination
{
  lCopy = l;
  metadataCopy = metadata;
  destinationCopy = destination;
  queue = [(FTLivePhotoController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000041F0;
  block[3] = &unk_100051090;
  v19 = lCopy;
  v20 = metadataCopy;
  zippedCopy = zipped;
  v21 = destinationCopy;
  selfCopy = self;
  v15 = destinationCopy;
  v16 = metadataCopy;
  v17 = lCopy;
  dispatch_async(queue, block);
}

- (void)fileTransferer:(id)transferer didTransferFileAtURL:(id)l transactionID:(id)d successfully:(BOOL)successfully
{
  lCopy = l;
  dCopy = d;
  v11 = dCopy;
  if (!successfully)
  {
    v12 = FTDefaultLog(dCopy);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000388D0();
    }
  }

  [(FTLivePhotoController *)self deleteContentsAtURL:lCopy];
  sandboxURLsByRequestTransactionID = [(FTLivePhotoController *)self sandboxURLsByRequestTransactionID];
  [sandboxURLsByRequestTransactionID setObject:0 forKeyedSubscript:v11];
}

- (void)deleteContentsAtURL:(id)l
{
  lCopy = l;
  shouldPreserveMomentsFile = [objc_opt_class() shouldPreserveMomentsFile];
  if (shouldPreserveMomentsFile)
  {
    v5 = FTDefaultLog(shouldPreserveMomentsFile);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = lCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Preserving file at URL: %@", buf, 0xCu);
    }
  }

  else
  {
    v6 = +[NSFileManager defaultManager];
    v11 = 0;
    v7 = [v6 removeItemAtURL:lCopy error:&v11];
    v5 = v11;

    v9 = FTDefaultLog(v8);
    v10 = v9;
    if (v7)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v13 = lCopy;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Deleted contents at URL: %@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100038938();
    }
  }
}

- (id)contentsOfDirectoryAtURL:(id)l
{
  lCopy = l;
  v4 = +[NSFileManager defaultManager];
  v10 = 0;
  v5 = [v4 contentsOfDirectoryAtURL:lCopy includingPropertiesForKeys:0 options:0 error:&v10];
  v6 = v10;

  if (!v5)
  {
    v8 = FTDefaultLog(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000389A0();
    }

    v5 = &__NSArray0__struct;
  }

  return v5;
}

- (id)urlFromResources:(id)resources withExtension:(id)extension
{
  resourcesCopy = resources;
  extensionCopy = extension;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = resourcesCopy;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        pathExtension = [v11 pathExtension];
        v13 = [pathExtension isEqualToIgnoringCase:extensionCopy];

        if (v13)
        {
          v8 = v11;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (void)unregisterStreamToken:(int64_t)token
{
  queue = [(FTLivePhotoController *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = FTDefaultLog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134217984;
    tokenCopy = token;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Unregistering stream token: %ld", &v12, 0xCu);
  }

  sessionsByToken = [(FTLivePhotoController *)self sessionsByToken];
  v9 = [NSNumber numberWithLong:token];
  v10 = [sessionsByToken objectForKeyedSubscript:v9];

  moments = [v10 moments];
  [v10 setIsRegistered:0];
  [(FTLivePhotoController *)self cleanUpForMomentIfNecessary:moments];
}

- (void)cleanUpForMomentIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  queue = [(FTLivePhotoController *)self queue];
  dispatch_assert_queue_V2(queue);

  streamToken = [necessaryCopy streamToken];
  sessionsByToken = [(FTLivePhotoController *)self sessionsByToken];
  v8 = [NSNumber numberWithLong:streamToken];
  v9 = [sessionsByToken objectForKeyedSubscript:v8];

  isRegistered = [v9 isRegistered];
  LODWORD(sessionsByToken) = [necessaryCopy activeRequestCount];
  v11 = [necessaryCopy pendingRequestCount] + sessionsByToken;
  activeRequestsByTransactionID = [v9 activeRequestsByTransactionID];
  v13 = [activeRequestsByTransactionID count] + v11;

  sessionsByToken2 = FTDefaultLog(v14);
  v16 = os_log_type_enabled(sessionsByToken2, OS_LOG_TYPE_DEFAULT);
  if ((isRegistered & 1) != 0 || v13)
  {
    if (v16)
    {
      v18 = 67109376;
      LODWORD(v19[0]) = isRegistered;
      WORD2(v19[0]) = 2048;
      *(v19 + 6) = v13;
      _os_log_impl(&_mh_execute_header, sessionsByToken2, OS_LOG_TYPE_DEFAULT, "Delaying cleanup because moment is still registered (%d) or has outstanding requests (%lu)", &v18, 0x12u);
    }
  }

  else
  {
    if (v16)
    {
      v18 = 138412290;
      v19[0] = necessaryCopy;
      _os_log_impl(&_mh_execute_header, sessionsByToken2, OS_LOG_TYPE_DEFAULT, "Cleaning up state for moment: %@", &v18, 0xCu);
    }

    sessionsByToken2 = [(FTLivePhotoController *)self sessionsByToken];
    v17 = [NSNumber numberWithLong:streamToken];
    [sessionsByToken2 setObject:0 forKeyedSubscript:v17];
  }
}

- (void)_transferFileAtURL:(id)l forSession:(id)session request:(id)request
{
  lCopy = l;
  sessionCopy = session;
  requestCopy = request;
  queue = [(FTLivePhotoController *)self queue];
  dispatch_assert_queue_V2(queue);

  v13 = FTDefaultLog(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v22 = lCopy;
    v23 = 2112;
    v24 = sessionCopy;
    v25 = 2112;
    v26 = requestCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "url: %@ session: %@ request: %@", buf, 0x20u);
  }

  v14 = [sessionCopy remoteRequesterIDSDestinationFor:requestCopy];
  v15 = [NSSet setWithObject:v14];

  transactionID = [requestCopy transactionID];
  v20 = transactionID;
  v17 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];

  fileTransferController = [(FTLivePhotoController *)self fileTransferController];
  [fileTransferController transferFileAtURL:lCopy toDestinations:v15 withMetadata:v17];
}

- (void)_handleReceivedResourcesAtDirectoryURL:(id)l transactionID:(id)d
{
  lCopy = l;
  dCopy = d;
  queue = [(FTLivePhotoController *)self queue];
  dispatch_assert_queue_V2(queue);

  v10 = FTDefaultLog(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = lCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "url: %@", buf, 0xCu);
  }

  v11 = +[NSFileManager defaultManager];
  path = [lCopy path];
  v13 = [v11 fileExistsAtPath:path];

  if (v13)
  {
    v15 = [(FTLivePhotoController *)self contentsOfDirectoryAtURL:lCopy];
    v16 = [(FTLivePhotoController *)self urlFromResources:v15 withExtension:@"jpg"];
    v17 = [(FTLivePhotoController *)self urlFromResources:v15 withExtension:@"heic"];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = v16;
    }

    v20 = v19;
    v21 = [(FTLivePhotoController *)self urlFromResources:v15 withExtension:@"mov"];
    v22 = v21;
    if (v20 && v21)
    {
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100005548;
      v25[3] = &unk_1000510E0;
      v25[4] = self;
      v26 = lCopy;
      v27 = dCopy;
      [(FTLivePhotoController *)self _saveLivePhotoWithPhotoURL:v20 videoURL:v22 completion:v25];
    }

    else
    {
      v24 = FTDefaultLog(v21);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_100038A70();
      }

      [(FTLivePhotoController *)self deleteContentsAtURL:lCopy];
    }
  }

  else
  {
    v23 = FTDefaultLog(v14);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_100038A08();
    }

    [(FTLivePhotoController *)self deleteContentsAtURL:lCopy];
  }
}

- (void)_handleReceivedVideoURL:(id)l
{
  lCopy = l;
  queue = [(FTLivePhotoController *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = FTDefaultLog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = lCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "_handleReceivedVideoURL: %@", buf, 0xCu);
  }

  if (lCopy && TUAllowLocalVideoRecording())
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100005798;
    v8[3] = &unk_100051108;
    v8[4] = self;
    v9 = lCopy;
    [(FTLivePhotoController *)self _saveVideoWithURL:v9 completion:v8];
  }
}

- (void)_saveLivePhotoWithPhotoURL:(id)l videoURL:(id)rL completion:(id)completion
{
  lCopy = l;
  rLCopy = rL;
  completionCopy = completion;
  queue = [(FTLivePhotoController *)self queue];
  dispatch_assert_queue_V2(queue);

  v13 = FTDefaultLog(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v24 = lCopy;
    v25 = 2112;
    v26 = rLCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "saving live photo with photo url: %@ video url: %@", buf, 0x16u);
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100005A38;
  v19[3] = &unk_100051130;
  v20 = lCopy;
  v21 = rLCopy;
  v22 = completionCopy;
  v14 = completionCopy;
  v15 = rLCopy;
  v16 = lCopy;
  v17 = objc_retainBlock(v19);
  mediaAssetManager = [(FTLivePhotoController *)self mediaAssetManager];
  [mediaAssetManager saveLivePhotoWithPhotoURL:v16 videoURL:v15 completion:v17];
}

- (void)_saveVideoWithURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  queue = [(FTLivePhotoController *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = TUAllowLocalVideoRecording();
  if (v9)
  {
    v10 = FTDefaultLog(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = lCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Saving video with url: %@", buf, 0xCu);
    }

    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_100005C4C;
    v17 = &unk_100051158;
    v11 = lCopy;
    v18 = v11;
    v19 = completionCopy;
    v12 = objc_retainBlock(&v14);
    v13 = [(FTLivePhotoController *)self mediaAssetManager:v14];
    [v13 saveVideoWithURL:v11 completion:v12];
  }
}

- (void)_startTimeoutForMomentsRequestWithTransactionID:(id)d
{
  dCopy = d;
  queue = [(FTLivePhotoController *)self queue];
  dispatch_assert_queue_V2(queue);

  serverBag = [(FTLivePhotoController *)self serverBag];
  [serverBag momentsRequestTimeout];
  v8 = dispatch_time(0, (v7 * 1000000000.0));
  queue2 = [(FTLivePhotoController *)self queue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100005DE4;
  v11[3] = &unk_1000510B8;
  v11[4] = self;
  v12 = dCopy;
  v10 = dCopy;
  dispatch_after(v8, queue2, v11);
}

- (id)sessionForTransactionID:(id)d
{
  dCopy = d;
  queue = [(FTLivePhotoController *)self queue];
  dispatch_assert_queue_V2(queue);

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  sessionsByToken = [(FTLivePhotoController *)self sessionsByToken];
  allValues = [sessionsByToken allValues];

  v8 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        activeRequestsByTransactionID = [v11 activeRequestsByTransactionID];
        v13 = [activeRequestsByTransactionID objectForKeyedSubscript:dCopy];

        if (v13)
        {
          v8 = v11;
          goto LABEL_11;
        }
      }

      v8 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (void)handleRequestResultWithMomentDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  queue = [(FTLivePhotoController *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = FTDefaultLog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = descriptorCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "momentDescriptor: %@", &v9, 0xCu);
  }

  clientObject = [(FTLivePhotoController *)self clientObject];
  [clientObject didReceiveLocallyRequestedMomentDescriptor:descriptorCopy];
}

+ (BOOL)isFaceTimePhotosAvailable
{
  localCapabilities = [self localCapabilities];
  if ([localCapabilities isEnabled])
  {
    localCapabilities2 = [self localCapabilities];
    v5 = [localCapabilities2 isRegionBlocked] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

+ (FTMomentsControllerLocalCapabilities)localCapabilities
{
  if (qword_100059C20 != -1)
  {
    sub_100038BC0();
  }

  v3 = qword_100059C28;

  return v3;
}

- (int)availabilityWithRemoteAvailable:(BOOL)available
{
  availableCopy = available;
  localCapabilities = [objc_opt_class() localCapabilities];
  isRegionBlocked = [localCapabilities isRegionBlocked];

  if (isRegionBlocked)
  {
    return 2;
  }

  isFaceTimePhotosAvailable = [objc_opt_class() isFaceTimePhotosAvailable];
  result = 1;
  if (isFaceTimePhotosAvailable && availableCopy)
  {
    serverBag = [(FTLivePhotoController *)self serverBag];
    isMomentsDisabled = [serverBag isMomentsDisabled];

    if (isMomentsDisabled)
    {
      return 1;
    }

    else
    {
      return 3;
    }
  }

  return result;
}

+ (BOOL)shouldPreserveMomentsFile
{
  if (qword_100059C38 != -1)
  {
    sub_100038BD4();
  }

  return byte_100059C30;
}

- (void)moments:(id)moments didFinishRequest:(id)request error:(id)error
{
  requestCopy = request;
  errorCopy = error;
  momentsCopy = moments;
  queue = [(FTLivePhotoController *)self queue];
  dispatch_assert_queue_V2(queue);

  v13 = FTDefaultLog(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = requestCopy;
    v16 = 2112;
    v17 = errorCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "didFinish request: %@, error: %@", &v14, 0x16u);
  }

  [(FTLivePhotoController *)self cleanUpForMomentIfNecessary:momentsCopy];
}

- (void)moments:(id)moments capabilitiesDidChange:(unsigned int)change
{
  momentsCopy = moments;
  queue = [(FTLivePhotoController *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = FTDefaultLog(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v15[0] = 67109120;
    v15[1] = change;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "new capabilities: %u", v15, 8u);
  }

  v10 = [(FTLivePhotoController *)self availabilityWithRemoteAvailable:1];
  if (v10 == 3)
  {
    mediaTypesCapabilitiesSetForCapabilities(change);
  }

  else
  {
    +[NSSet set];
  }
  v11 = ;
  v12 = [[TUMomentsCapabilities alloc] initWithAvailability:v10 supportedMediaTypes:v11];
  clientObject = [(FTLivePhotoController *)self clientObject];
  streamToken = [momentsCopy streamToken];

  [clientObject didUpdateCapabilities:v12 forVideoStreamToken:streamToken];
}

- (void)moments:(id)moments didStartProcessingRequest:(id)request error:(id)error
{
  momentsCopy = moments;
  requestCopy = request;
  errorCopy = error;
  queue = [(FTLivePhotoController *)self queue];
  dispatch_assert_queue_V2(queue);

  v13 = FTDefaultLog(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v37 = requestCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "didStartProcessing request: %@", buf, 0xCu);
  }

  serverBag = [(FTLivePhotoController *)self serverBag];
  if ([serverBag isMomentsDisabled])
  {

LABEL_15:
    v29 = FTDefaultLog(v15);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_100038C50();
    }

    goto LABEL_18;
  }

  isFaceTimePhotosAvailable = [objc_opt_class() isFaceTimePhotosAvailable];

  if ((isFaceTimePhotosAvailable & 1) == 0)
  {
    goto LABEL_15;
  }

  v17 = FTDefaultLog(v15);
  v18 = v17;
  if (requestCopy)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Requesting sandbox extension for temp URL", buf, 2u);
    }

    sandboxDataSource = [(FTLivePhotoController *)self sandboxDataSource];
    v20 = NSTemporaryDirectory();
    v21 = [NSURL fileURLWithPath:v20];
    v30 = _NSConcreteStackBlock;
    v31 = 3221225472;
    v32 = sub_100006954;
    v33 = &unk_1000511C0;
    selfCopy = self;
    v22 = requestCopy;
    v35 = v22;
    [sandboxDataSource requestSandboxExtensionForURL:v21 reply:&v30];

    if ([v22 mediaType] != 2 || (TUAllowLocalVideoRecording() & 1) == 0)
    {
      clientObject = [(FTLivePhotoController *)self clientObject];
      requesterID = [v22 requesterID];
      [clientObject willCaptureRemoteRequestFromRequesterID:requesterID];
    }

    requesterID2 = [v22 requesterID];

    if (requesterID2)
    {
      userNotificationProviderDataSource = [(FTLivePhotoController *)self userNotificationProviderDataSource];
      streamToken = [momentsCopy streamToken];
      requesterID3 = [v22 requesterID];
      [userNotificationProviderDataSource momentCapturedForStreamToken:streamToken requesterID:requesterID3 reply:&stru_100051200];
    }
  }

  else
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100038BE8();
    }
  }

LABEL_18:
}

- (void)moments:(id)moments didEndProcessingRequest:(id)request stillImageURL:(id)l movieURL:(id)rL error:(id)error
{
  momentsCopy = moments;
  requestCopy = request;
  lCopy = l;
  rLCopy = rL;
  queue = [(FTLivePhotoController *)self queue];
  dispatch_assert_queue_V2(queue);

  v17 = FTDefaultLog(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v112 = requestCopy;
    v113 = 2112;
    v114 = lCopy;
    v115 = 2112;
    v116 = rLCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "didEndProcessing request: %@, stillImageURL: %@ movieURL: %@", buf, 0x20u);
  }

  serverBag = [(FTLivePhotoController *)self serverBag];
  if ([serverBag isMomentsDisabled])
  {

    goto LABEL_15;
  }

  isFaceTimePhotosAvailable = [objc_opt_class() isFaceTimePhotosAvailable];

  if ((isFaceTimePhotosAvailable & 1) == 0)
  {
LABEL_15:
    v23 = FTDefaultLog(v19);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_10003911C();
    }

    goto LABEL_17;
  }

  sessionsByToken = [(FTLivePhotoController *)self sessionsByToken];
  v22 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [momentsCopy streamToken]);
  v23 = [sessionsByToken objectForKeyedSubscript:v22];

  if (!v23)
  {
    v44 = FTDefaultLog(v24);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      sub_10003909C(momentsCopy);
    }

    goto LABEL_20;
  }

  if ([requestCopy mediaType] != 2 && (TUAllowLocalVideoRecording() & 1) == 0)
  {
    v45 = [v23 remoteRequesterIDSDestinationFor:requestCopy];
    v46 = v45;
    if (v45)
    {
      if (lCopy && rLCopy)
      {
        v110[0] = @"jpg";
        v110[1] = @"heic";
        v110[2] = @"mov";
        v47 = [NSArray arrayWithObjects:v110 count:3];
        v48 = [NSSet setWithArray:v47];

        pathExtension = [lCopy pathExtension];
        lowercaseString = [pathExtension lowercaseString];
        v102 = v48;
        if ([v48 containsObject:lowercaseString])
        {
          pathExtension2 = [rLCopy pathExtension];
          [pathExtension2 lowercaseString];
          v51 = v100 = v46;
          v52 = [v48 containsObject:v51];

          v46 = v100;
          if (v52)
          {
            v54 = [NSUUID alloc];
            transactionID = [requestCopy transactionID];
            v56 = [v54 initWithUUIDString:transactionID];

            if (v56)
            {
              NSTemporaryDirectory();
              v96 = v92 = v56;
              v109[0] = v96;
              uUIDString = [v56 UUIDString];
              v109[1] = uUIDString;
              v58 = +[NSUUID UUID];
              uUIDString2 = [v58 UUIDString];
              v109[2] = uUIDString2;
              v60 = [NSArray arrayWithObjects:v109 count:3];
              v61 = [NSURL fileURLWithPathComponents:v60];

              v62 = +[NSFileManager defaultManager];
              v107 = 0;
              v97 = v61;
              LOBYTE(v61) = [v62 createDirectoryAtURL:v61 withIntermediateDirectories:1 attributes:0 error:&v107];
              v63 = v107;

              if (v61)
              {
                v65 = [v97 URLByAppendingPathComponent:@"lp_image"];
                pathExtension3 = [lCopy pathExtension];
                v67 = [v65 URLByAppendingPathExtension:pathExtension3];

                v68 = +[NSFileManager defaultManager];
                v106 = v63;
                v91 = v67;
                LOBYTE(pathExtension3) = [v68 copyItemAtURL:lCopy toURL:v67 error:&v106];
                v69 = v106;

                if (pathExtension3)
                {
                  v71 = [v97 URLByAppendingPathComponent:@"lp_movie"];
                  pathExtension4 = [rLCopy pathExtension];
                  v73 = [v71 URLByAppendingPathExtension:pathExtension4];

                  v74 = +[NSFileManager defaultManager];
                  v105 = v69;
                  LOBYTE(pathExtension4) = [v74 copyItemAtURL:rLCopy toURL:v73 error:&v105];
                  v89 = v105;

                  v88 = pathExtension4;
                  if (pathExtension4)
                  {
                    [(FTLivePhotoController *)self _transferFileAtURL:v97 forSession:v23 request:requestCopy];
                    v76 = v100;
                    v77 = v102;
                  }

                  else
                  {
                    v87 = FTDefaultLog(v75);
                    v76 = v100;
                    v77 = v102;
                    if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
                    {
                      sub_100038E98();
                    }
                  }

                  if (v88)
                  {
                    goto LABEL_53;
                  }

                  goto LABEL_17;
                }

                v84 = v97;
                v86 = FTDefaultLog(v70);
                if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
                {
                  sub_100038E30();
                }
              }

              else
              {
                v84 = v97;
                v85 = FTDefaultLog(v64);
                if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
                {
                  sub_100038DC8();
                }
              }
            }

            else
            {
              v83 = FTDefaultLog(v57);
              if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
              {
                sub_100038F00(requestCopy);
              }
            }

            v80 = v100;
LABEL_43:

            goto LABEL_17;
          }
        }

        else
        {
        }

        v81 = FTDefaultLog(v53);
        if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
        {
          sub_100038D60();
        }

LABEL_48:
        goto LABEL_17;
      }

      v78 = FTDefaultLog(v45);
      if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        sub_100038CF8();
      }
    }

    else
    {
      v78 = FTDefaultLog(0);
      if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        sub_100038F8C(requestCopy, v23);
      }
    }

    goto LABEL_48;
  }

  v25 = TUAllowLocalVideoRecording();
  if (!v25)
  {
LABEL_53:
    [(FTLivePhotoController *)self cleanUpForMomentIfNecessary:momentsCopy];
    goto LABEL_17;
  }

  if (!rLCopy)
  {
    v44 = FTDefaultLog(v25);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      sub_100039034();
    }

    goto LABEL_20;
  }

  v26 = [NSUUID alloc];
  transactionID2 = [requestCopy transactionID];
  v28 = [v26 initWithUUIDString:transactionID2];

  if (!v28)
  {
    v44 = FTDefaultLog(v29);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      sub_100038F00(requestCopy);
    }

LABEL_20:

    goto LABEL_17;
  }

  v98 = NSTemporaryDirectory();
  v101 = v28;
  v108[0] = v98;
  uUIDString3 = [v28 UUIDString];
  v108[1] = uUIDString3;
  v30 = +[NSUUID UUID];
  uUIDString4 = [v30 UUIDString];
  v108[2] = uUIDString4;
  v32 = [NSArray arrayWithObjects:v108 count:3];
  v33 = [NSURL fileURLWithPathComponents:v32];

  v34 = +[NSFileManager defaultManager];
  v104 = 0;
  LOBYTE(v32) = [v34 createDirectoryAtURL:v33 withIntermediateDirectories:1 attributes:0 error:&v104];
  v35 = v104;

  if ((v32 & 1) == 0)
  {
    v79 = FTDefaultLog(v36);
    if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
    {
      sub_100038DC8();
    }

    v80 = v101;
    goto LABEL_43;
  }

  v94 = v33;
  v37 = [v33 URLByAppendingPathComponent:@"lp_movie"];
  pathExtension5 = [rLCopy pathExtension];
  v39 = [v37 URLByAppendingPathExtension:pathExtension5];

  v40 = +[NSFileManager defaultManager];
  v103 = v35;
  v41 = [v40 copyItemAtURL:rLCopy toURL:v39 error:&v103];
  v99 = v103;

  if (v41)
  {
    [(FTLivePhotoController *)self _handleReceivedVideoURL:v39];
    v43 = v101;
  }

  else
  {
    v82 = FTDefaultLog(v42);
    v43 = v101;
    if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
    {
      sub_100038E98();
    }
  }

  if (v41)
  {
    goto LABEL_53;
  }

LABEL_17:
}

- (void)momentsServerDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  queue = [(FTLivePhotoController *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = FTDefaultLog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_10003915C();
  }

  sessionsByToken = [(FTLivePhotoController *)self sessionsByToken];
  [sessionsByToken removeAllObjects];
}

- (void)requestSandboxExtensionForTransactionID:(id)d reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  v8 = FTDefaultLog(replyCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = dCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "requesting sandbox extension for transactionID: %@", buf, 0xCu);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000076C8;
  v15[3] = &unk_100051228;
  v15[4] = self;
  v16 = dCopy;
  v17 = replyCopy;
  v9 = replyCopy;
  v10 = dCopy;
  v11 = objc_retainBlock(v15);
  sandboxDataSource = [(FTLivePhotoController *)self sandboxDataSource];
  v13 = NSTemporaryDirectory();
  v14 = [NSURL fileURLWithPath:v13];
  [sandboxDataSource requestSandboxExtensionForURL:v14 reply:v11];
}

- (void)requestSandboxExtensionForURL:(id)l reply:(id)reply
{
  replyCopy = reply;
  v5 = [TUSandboxExtendedURL alloc];
  v6 = NSTemporaryDirectory();
  v7 = [NSURL fileURLWithPath:v6];
  v8 = [v5 initWithURL:v7];

  replyCopy[2](replyCopy, v8, 0);
}

- (FTLivePhotoControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end