@interface CSDMomentsController
+ (BOOL)isFaceTimePhotosAvailable;
+ (BOOL)shouldPreserveMomentsFile;
+ (CSDMomentsControllerLocalCapabilities)localCapabilities;
- (CSDMomentsController)init;
- (CSDMomentsController)initWithQueue:(id)queue fileTransferController:(id)controller mediaAssetManager:(id)manager callCenterObserver:(id)observer;
- (id)contentsOfDirectoryAtURL:(id)l;
- (id)sessionForTransactionID:(id)d;
- (id)urlFromResources:(id)resources withExtension:(id)extension;
- (int)availabilityWithRemoteAvailable:(BOOL)available;
- (void)_handleReceivedResourcesAtDirectoryURL:(id)l;
- (void)_handleReceivedVideoURL:(id)l;
- (void)_saveLivePhotoWithPhotoURL:(id)l videoURL:(id)rL completion:(id)completion;
- (void)_saveVideoWithURL:(id)l completion:(id)completion;
- (void)_startTimeoutForMomentsRequestWithTransactionID:(id)d;
- (void)_transferFileAtURL:(id)l forSession:(id)session request:(id)request;
- (void)cleanUpForMomentIfNecessary:(id)necessary;
- (void)deleteContentsAtURL:(id)l;
- (void)endRequestWithTransactionID:(id)d reply:(id)reply;
- (void)fileTransferer:(id)transferer didReceiveResourcesAtURL:(id)l withMetadata:(id)metadata isZipped:(BOOL)zipped fromIDSDestination:(id)destination;
- (void)fileTransferer:(id)transferer didTransferFileAtURL:(id)l successfully:(BOOL)successfully;
- (void)handleClientDisconnected:(id)disconnected;
- (void)handleRequestResultWithMomentDescriptor:(id)descriptor;
- (void)moments:(id)moments capabilitiesDidChange:(unsigned int)change;
- (void)moments:(id)moments didEndProcessingRequest:(id)request stillImageURL:(id)l movieURL:(id)rL error:(id)error;
- (void)moments:(id)moments didFinishRequest:(id)request error:(id)error;
- (void)moments:(id)moments didStartProcessingRequest:(id)request error:(id)error;
- (void)momentsServerDidDisconnect:(id)disconnect;
- (void)registerClient:(id)client;
- (void)registerStreamToken:(int64_t)token requesterID:(id)d remoteIDSDestinations:(id)destinations remoteMomentsAvailable:(BOOL)available reply:(id)reply;
- (void)registerXPCClientWithReply:(id)reply;
- (void)startRequestWithMediaType:(int)type forStreamToken:(int64_t)token requesteeID:(id)d reply:(id)reply;
- (void)unregisterClient:(id)client;
- (void)unregisterStreamToken:(int64_t)token;
- (void)unregisterStreamToken:(int64_t)token reply:(id)reply;
@end

@implementation CSDMomentsController

- (CSDMomentsController)init
{
  v3 = dispatch_queue_create("com.apple.telephonyutilities.callservicesd.csdmomentscontroller", 0);
  v4 = objc_alloc_init(CSDFileTransferController);
  v5 = objc_alloc_init(CSDMediaAssetManager);
  v6 = objc_alloc_init(CSDCallCenterObserver);
  v7 = [(CSDMomentsController *)self initWithQueue:v3 fileTransferController:v4 mediaAssetManager:v5 callCenterObserver:v6];

  return v7;
}

- (CSDMomentsController)initWithQueue:(id)queue fileTransferController:(id)controller mediaAssetManager:(id)manager callCenterObserver:(id)observer
{
  queueCopy = queue;
  controllerCopy = controller;
  managerCopy = manager;
  observerCopy = observer;
  v24.receiver = self;
  v24.super_class = CSDMomentsController;
  v15 = [(CSDMomentsController *)&v24 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_queue, queue);
    queue = v16->_queue;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10024A850;
    v19[3] = &unk_10061A450;
    v20 = v16;
    v21 = controllerCopy;
    v22 = managerCopy;
    v23 = observerCopy;
    dispatch_async(queue, v19);
  }

  return v16;
}

- (void)handleClientDisconnected:(id)disconnected
{
  disconnectedCopy = disconnected;
  queue = [(CSDMomentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = disconnectedCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "handle disconnect for client: %@", buf, 0xCu);
  }

  streamTokensByCSDClient = [(CSDMomentsController *)self streamTokensByCSDClient];
  v9 = [streamTokensByCSDClient objectForKey:disconnectedCopy];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        -[CSDMomentsController unregisterStreamToken:](self, "unregisterStreamToken:", [*(*(&v16 + 1) + 8 * v14) integerValue]);
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  streamTokensByCSDClient2 = [(CSDMomentsController *)self streamTokensByCSDClient];
  [streamTokensByCSDClient2 removeObjectForKey:disconnectedCopy];
}

- (void)registerXPCClientWithReply:(id)reply
{
  replyCopy = reply;
  queue = [(CSDMomentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  replyCopy[2]();
}

- (void)startRequestWithMediaType:(int)type forStreamToken:(int64_t)token requesteeID:(id)d reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  queue = [(CSDMomentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  clientManager = [(CSDMomentsController *)self clientManager];
  currentClient = [clientManager currentClient];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10024B190;
  v17[3] = &unk_10061F9C0;
  typeCopy = type;
  v17[4] = self;
  v18 = dCopy;
  v19 = replyCopy;
  tokenCopy = token;
  v15 = replyCopy;
  v16 = dCopy;
  sub_100004AA4(currentClient, @"modify-moments", v17, 0, "[CSDMomentsController startRequestWithMediaType:forStreamToken:requesteeID:reply:]");
}

- (void)endRequestWithTransactionID:(id)d reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  queue = [(CSDMomentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  clientManager = [(CSDMomentsController *)self clientManager];
  currentClient = [clientManager currentClient];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10024B864;
  v13[3] = &unk_10061AF20;
  v14 = dCopy;
  selfCopy = self;
  v16 = replyCopy;
  v11 = replyCopy;
  v12 = dCopy;
  sub_100004AA4(currentClient, @"modify-moments", v13, 0, "[CSDMomentsController endRequestWithTransactionID:reply:]");
}

- (void)registerStreamToken:(int64_t)token requesterID:(id)d remoteIDSDestinations:(id)destinations remoteMomentsAvailable:(BOOL)available reply:(id)reply
{
  dCopy = d;
  destinationsCopy = destinations;
  replyCopy = reply;
  queue = [(CSDMomentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  clientManager = [(CSDMomentsController *)self clientManager];
  currentClient = [clientManager currentClient];

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10024BC34;
  v22[3] = &unk_10061F9E8;
  availableCopy = available;
  v22[4] = self;
  v23 = destinationsCopy;
  v24 = dCopy;
  v25 = currentClient;
  v26 = replyCopy;
  tokenCopy = token;
  v18 = replyCopy;
  v19 = currentClient;
  v20 = dCopy;
  v21 = destinationsCopy;
  sub_100004AA4(v19, @"modify-moments", v22, 0, "[CSDMomentsController registerStreamToken:requesterID:remoteIDSDestinations:remoteMomentsAvailable:reply:]");
}

- (void)unregisterStreamToken:(int64_t)token reply:(id)reply
{
  replyCopy = reply;
  queue = [(CSDMomentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  clientManager = [(CSDMomentsController *)self clientManager];
  currentClient = [clientManager currentClient];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10024C35C;
  v12[3] = &unk_10061FA10;
  v12[4] = self;
  v13 = currentClient;
  v14 = replyCopy;
  tokenCopy = token;
  v10 = replyCopy;
  v11 = currentClient;
  sub_100004AA4(v11, @"modify-moments", v12, 0, "[CSDMomentsController unregisterStreamToken:reply:]");
}

- (void)registerClient:(id)client
{
  clientCopy = client;
  queue = [(CSDMomentsController *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10024C558;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = clientCopy;
  v6 = clientCopy;
  dispatch_async(queue, v7);
}

- (void)unregisterClient:(id)client
{
  clientCopy = client;
  queue = [(CSDMomentsController *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10024C660;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = clientCopy;
  v6 = clientCopy;
  dispatch_async(queue, v7);
}

- (void)moments:(id)moments didFinishRequest:(id)request error:(id)error
{
  requestCopy = request;
  errorCopy = error;
  momentsCopy = moments;
  queue = [(CSDMomentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  v13 = sub_100004778(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = requestCopy;
    v16 = 2112;
    v17 = errorCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "didFinish request: %@, error: %@", &v14, 0x16u);
  }

  [(CSDMomentsController *)self cleanUpForMomentIfNecessary:momentsCopy];
}

- (void)moments:(id)moments capabilitiesDidChange:(unsigned int)change
{
  momentsCopy = moments;
  queue = [(CSDMomentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = sub_100004778(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    changeCopy = change;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "new capabilities: %u", buf, 8u);
  }

  v10 = [(CSDMomentsController *)self availabilityWithRemoteAvailable:1];
  if (v10 == 3)
  {
    sub_10024C1A8(change);
  }

  else
  {
    +[NSSet set];
  }
  v11 = ;
  v12 = [[TUMomentsCapabilities alloc] initWithAvailability:v10 supportedMediaTypes:v11];
  clientManager = [(CSDMomentsController *)self clientManager];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10024CA20;
  v16[3] = &unk_10061FA38;
  v17 = v12;
  v18 = momentsCopy;
  v14 = momentsCopy;
  v15 = v12;
  [clientManager performBlockOnClients:v16];
}

- (void)moments:(id)moments didStartProcessingRequest:(id)request error:(id)error
{
  momentsCopy = moments;
  requestCopy = request;
  errorCopy = error;
  queue = [(CSDMomentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  v13 = sub_100004778(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = requestCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "didStartProcessing request: %@", buf, 0xCu);
  }

  serverBag = [(CSDMomentsController *)self serverBag];
  if ([serverBag isMomentsDisabled])
  {
  }

  else
  {
    isFaceTimePhotosAvailable = [objc_opt_class() isFaceTimePhotosAvailable];

    if (isFaceTimePhotosAvailable)
    {
      goto LABEL_9;
    }
  }

  v17 = sub_100004778(v15);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    sub_10047DE4C();
  }

LABEL_9:
  if (!requestCopy)
  {
    v26 = sub_100004778(v15);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_10047DE8C();
    }

    goto LABEL_20;
  }

  if ([requestCopy mediaType] == 2 && (TUAllowLocalVideoRecording() & 1) != 0)
  {
    v18 = 1;
  }

  else
  {
    clientManager = [(CSDMomentsController *)self clientManager];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10024CD54;
    v27[3] = &unk_10061FA60;
    v28 = requestCopy;
    [clientManager performBlockOnClients:v27];

    v18 = 0;
  }

  requesterID = [requestCopy requesterID];

  if (requesterID)
  {
    v21 = [CSDMomentsNotification alloc];
    streamToken = [momentsCopy streamToken];
    requesterID2 = [requestCopy requesterID];
    v24 = [(CSDMomentsNotification *)v21 initWithStreamToken:streamToken requesterID:requesterID2];

    v25 = +[NSNotificationCenter defaultCenter];
    [v25 postNotificationName:@"CSDMomentsControllerStartedRemoteCaptureNotification" object:v24];
  }

  if (v18)
  {
    v26 = +[NSNotificationCenter defaultCenter];
    [v26 postNotificationName:@"CSDMomentsControllerStartedLocalVideoCaptureNotification" object:0];
LABEL_20:
  }
}

- (void)moments:(id)moments didEndProcessingRequest:(id)request stillImageURL:(id)l movieURL:(id)rL error:(id)error
{
  momentsCopy = moments;
  requestCopy = request;
  lCopy = l;
  rLCopy = rL;
  queue = [(CSDMomentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  v17 = sub_100004778(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v113 = requestCopy;
    v114 = 2112;
    v115 = lCopy;
    v116 = 2112;
    v117 = rLCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "didEndProcessing request: %@, stillImageURL: %@ movieURL: %@", buf, 0x20u);
  }

  serverBag = [(CSDMomentsController *)self serverBag];
  if ([serverBag isMomentsDisabled])
  {

    goto LABEL_15;
  }

  isFaceTimePhotosAvailable = [objc_opt_class() isFaceTimePhotosAvailable];

  if ((isFaceTimePhotosAvailable & 1) == 0)
  {
LABEL_15:
    v23 = sub_100004778(v19);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_10047E318();
    }

    goto LABEL_17;
  }

  sessionsByToken = [(CSDMomentsController *)self sessionsByToken];
  v22 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [momentsCopy streamToken]);
  v23 = [sessionsByToken objectForKeyedSubscript:v22];

  if (!v23)
  {
    v45 = sub_100004778(v24);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      sub_10047E298(momentsCopy);
    }

    goto LABEL_20;
  }

  if ([requestCopy mediaType] != 2 && (TUAllowLocalVideoRecording() & 1) == 0)
  {
    v46 = [v23 remoteRequesterIDSDestinationFor:requestCopy];
    v47 = v46;
    if (v46)
    {
      if (lCopy && rLCopy)
      {
        v111[0] = @"jpg";
        v111[1] = @"heic";
        v111[2] = @"mov";
        v48 = [NSArray arrayWithObjects:v111 count:3];
        v49 = [NSSet setWithArray:v48];

        pathExtension = [lCopy pathExtension];
        lowercaseString = [pathExtension lowercaseString];
        v103 = v49;
        if ([v49 containsObject:lowercaseString])
        {
          pathExtension2 = [rLCopy pathExtension];
          [pathExtension2 lowercaseString];
          v52 = v101 = v47;
          v53 = [v49 containsObject:v52];

          v47 = v101;
          if (v53)
          {
            v55 = [NSUUID alloc];
            transactionID = [requestCopy transactionID];
            v57 = [v55 initWithUUIDString:transactionID];

            if (v57)
            {
              NSTemporaryDirectory();
              v97 = v93 = v57;
              v110[0] = v97;
              uUIDString = [v57 UUIDString];
              v110[1] = uUIDString;
              v59 = +[NSUUID UUID];
              uUIDString2 = [v59 UUIDString];
              v110[2] = uUIDString2;
              v61 = [NSArray arrayWithObjects:v110 count:3];
              v62 = [NSURL fileURLWithPathComponents:v61];

              v63 = +[NSFileManager defaultManager];
              v108 = 0;
              v98 = v62;
              LOBYTE(v62) = [v63 createDirectoryAtURL:v62 withIntermediateDirectories:1 attributes:0 error:&v108];
              v64 = v108;

              if (v62)
              {
                v66 = [v98 URLByAppendingPathComponent:@"lp_image"];
                pathExtension3 = [lCopy pathExtension];
                v68 = [v66 URLByAppendingPathExtension:pathExtension3];

                v69 = +[NSFileManager defaultManager];
                v107 = v64;
                v92 = v68;
                LOBYTE(pathExtension3) = [v69 copyItemAtURL:lCopy toURL:v68 error:&v107];
                v70 = v107;

                if (pathExtension3)
                {
                  v72 = [v98 URLByAppendingPathComponent:@"lp_movie"];
                  pathExtension4 = [rLCopy pathExtension];
                  v74 = [v72 URLByAppendingPathExtension:pathExtension4];

                  v75 = +[NSFileManager defaultManager];
                  v106 = v70;
                  LOBYTE(pathExtension4) = [v75 copyItemAtURL:rLCopy toURL:v74 error:&v106];
                  v90 = v106;

                  v89 = pathExtension4;
                  if (pathExtension4)
                  {
                    [(CSDMomentsController *)self _transferFileAtURL:v98 forSession:v23 request:requestCopy];
                    v77 = v101;
                    v78 = v103;
                  }

                  else
                  {
                    v88 = sub_100004778(v76);
                    v77 = v101;
                    v78 = v103;
                    if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
                    {
                      sub_10047E094();
                    }
                  }

                  if (v89)
                  {
                    goto LABEL_53;
                  }

                  goto LABEL_17;
                }

                v85 = v98;
                v87 = sub_100004778(v71);
                if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
                {
                  sub_10047E02C();
                }
              }

              else
              {
                v85 = v98;
                v86 = sub_100004778(v65);
                if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
                {
                  sub_10047DFC4();
                }
              }
            }

            else
            {
              v84 = sub_100004778(v58);
              if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
              {
                sub_10047E0FC(requestCopy);
              }
            }

            v81 = v101;
LABEL_43:

            goto LABEL_17;
          }
        }

        else
        {
        }

        v82 = sub_100004778(v54);
        if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
        {
          sub_10047DF5C();
        }

LABEL_48:
        goto LABEL_17;
      }

      v79 = sub_100004778(v46);
      if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
      {
        sub_10047DEF4();
      }
    }

    else
    {
      v79 = sub_100004778(0);
      if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
      {
        sub_10047E188(requestCopy, v23);
      }
    }

    goto LABEL_48;
  }

  if (!TUAllowLocalVideoRecording())
  {
LABEL_53:
    [(CSDMomentsController *)self cleanUpForMomentIfNecessary:momentsCopy];
    goto LABEL_17;
  }

  v25 = +[NSNotificationCenter defaultCenter];
  [v25 postNotificationName:@"CSDMomentsControllerStoppedLocalVideoCaptureNotification" object:0];

  if (!rLCopy)
  {
    v45 = sub_100004778(v26);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      sub_10047E230();
    }

    goto LABEL_20;
  }

  v27 = [NSUUID alloc];
  transactionID2 = [requestCopy transactionID];
  v29 = [v27 initWithUUIDString:transactionID2];

  if (!v29)
  {
    v45 = sub_100004778(v30);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      sub_10047E0FC(requestCopy);
    }

LABEL_20:

    goto LABEL_17;
  }

  v99 = NSTemporaryDirectory();
  v102 = v29;
  v109[0] = v99;
  uUIDString3 = [v29 UUIDString];
  v109[1] = uUIDString3;
  v31 = +[NSUUID UUID];
  uUIDString4 = [v31 UUIDString];
  v109[2] = uUIDString4;
  v33 = [NSArray arrayWithObjects:v109 count:3];
  v34 = [NSURL fileURLWithPathComponents:v33];

  v35 = +[NSFileManager defaultManager];
  v105 = 0;
  LOBYTE(v33) = [v35 createDirectoryAtURL:v34 withIntermediateDirectories:1 attributes:0 error:&v105];
  v36 = v105;

  if ((v33 & 1) == 0)
  {
    v80 = sub_100004778(v37);
    if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
    {
      sub_10047DFC4();
    }

    v81 = v102;
    goto LABEL_43;
  }

  v95 = v34;
  v38 = [v34 URLByAppendingPathComponent:@"lp_movie"];
  pathExtension5 = [rLCopy pathExtension];
  v40 = [v38 URLByAppendingPathExtension:pathExtension5];

  v41 = +[NSFileManager defaultManager];
  v104 = v36;
  v42 = [v41 copyItemAtURL:rLCopy toURL:v40 error:&v104];
  v100 = v104;

  if (v42)
  {
    [(CSDMomentsController *)self _handleReceivedVideoURL:v40];
    v44 = v102;
  }

  else
  {
    v83 = sub_100004778(v43);
    v44 = v102;
    if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
    {
      sub_10047E094();
    }
  }

  if (v42)
  {
    goto LABEL_53;
  }

LABEL_17:
}

- (void)momentsServerDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  queue = [(CSDMomentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_10047E358();
  }

  sessionsByToken = [(CSDMomentsController *)self sessionsByToken];
  [sessionsByToken removeAllObjects];

  streamTokensByCSDClient = [(CSDMomentsController *)self streamTokensByCSDClient];
  [streamTokensByCSDClient removeAllObjects];
}

- (void)fileTransferer:(id)transferer didReceiveResourcesAtURL:(id)l withMetadata:(id)metadata isZipped:(BOOL)zipped fromIDSDestination:(id)destination
{
  lCopy = l;
  metadataCopy = metadata;
  destinationCopy = destination;
  queue = [(CSDMomentsController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10024D978;
  block[3] = &unk_10061C7D8;
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

- (void)fileTransferer:(id)transferer didTransferFileAtURL:(id)l successfully:(BOOL)successfully
{
  lCopy = l;
  v8 = lCopy;
  if (!successfully)
  {
    v9 = sub_100004778(lCopy);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10047E694();
    }
  }

  [(CSDMomentsController *)self deleteContentsAtURL:v8];
}

- (void)deleteContentsAtURL:(id)l
{
  lCopy = l;
  shouldPreserveMomentsFile = [objc_opt_class() shouldPreserveMomentsFile];
  if (shouldPreserveMomentsFile)
  {
    v5 = sub_100004778(shouldPreserveMomentsFile);
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

    v9 = sub_100004778(v8);
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
      sub_100475098();
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
    v8 = sub_100004778(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10047E6FC();
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
  queue = [(CSDMomentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134217984;
    tokenCopy = token;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Unregistering stream token: %ld", &v12, 0xCu);
  }

  sessionsByToken = [(CSDMomentsController *)self sessionsByToken];
  v9 = [NSNumber numberWithLong:token];
  v10 = [sessionsByToken objectForKeyedSubscript:v9];

  moments = [v10 moments];
  [v10 setIsRegistered:0];
  [(CSDMomentsController *)self cleanUpForMomentIfNecessary:moments];
}

- (void)cleanUpForMomentIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  queue = [(CSDMomentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  streamToken = [necessaryCopy streamToken];
  sessionsByToken = [(CSDMomentsController *)self sessionsByToken];
  v8 = [NSNumber numberWithLong:streamToken];
  v9 = [sessionsByToken objectForKeyedSubscript:v8];

  isRegistered = [v9 isRegistered];
  LODWORD(sessionsByToken) = [necessaryCopy activeRequestCount];
  v11 = [necessaryCopy pendingRequestCount] + sessionsByToken;
  activeRequestsByTransactionID = [v9 activeRequestsByTransactionID];
  v13 = [activeRequestsByTransactionID count] + v11;

  sessionsByToken2 = sub_100004778(v14);
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

    sessionsByToken2 = [(CSDMomentsController *)self sessionsByToken];
    v17 = [NSNumber numberWithLong:streamToken];
    [sessionsByToken2 setObject:0 forKeyedSubscript:v17];
  }
}

- (void)_transferFileAtURL:(id)l forSession:(id)session request:(id)request
{
  lCopy = l;
  sessionCopy = session;
  requestCopy = request;
  queue = [(CSDMomentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  v13 = sub_100004778(v12);
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

  fileTransferController = [(CSDMomentsController *)self fileTransferController];
  [fileTransferController transferFileAtURL:lCopy toDestinations:v15 withMetadata:v17];
}

- (void)_handleReceivedResourcesAtDirectoryURL:(id)l
{
  lCopy = l;
  queue = [(CSDMomentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = lCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "url: %@", buf, 0xCu);
  }

  v8 = +[NSFileManager defaultManager];
  path = [lCopy path];
  v10 = [v8 fileExistsAtPath:path];

  if (v10)
  {
    v12 = [(CSDMomentsController *)self contentsOfDirectoryAtURL:lCopy];
    v13 = [(CSDMomentsController *)self urlFromResources:v12 withExtension:@"jpg"];
    v14 = [(CSDMomentsController *)self urlFromResources:v12 withExtension:@"heic"];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v13;
    }

    v17 = v16;
    v18 = [(CSDMomentsController *)self urlFromResources:v12 withExtension:@"mov"];
    v19 = v18;
    if (v17 && v18)
    {
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_10024EC1C;
      v22[3] = &unk_10061FAB0;
      v22[4] = self;
      v23 = lCopy;
      [(CSDMomentsController *)self _saveLivePhotoWithPhotoURL:v17 videoURL:v19 completion:v22];
    }

    else
    {
      v21 = sub_100004778(v18);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_10047E7CC();
      }

      [(CSDMomentsController *)self deleteContentsAtURL:lCopy];
    }
  }

  else
  {
    v20 = sub_100004778(v11);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10047E764();
    }

    [(CSDMomentsController *)self deleteContentsAtURL:lCopy];
  }
}

- (void)_handleReceivedVideoURL:(id)l
{
  lCopy = l;
  queue = [(CSDMomentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778(v6);
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
    v8[2] = sub_10024EE4C;
    v8[3] = &unk_10061FAB0;
    v8[4] = self;
    v9 = lCopy;
    [(CSDMomentsController *)self _saveVideoWithURL:v9 completion:v8];
  }
}

- (void)_saveLivePhotoWithPhotoURL:(id)l videoURL:(id)rL completion:(id)completion
{
  lCopy = l;
  rLCopy = rL;
  completionCopy = completion;
  queue = [(CSDMomentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  v13 = sub_100004778(v12);
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
  v19[2] = sub_10024F0EC;
  v19[3] = &unk_10061FAD8;
  v20 = lCopy;
  v21 = rLCopy;
  v22 = completionCopy;
  v14 = completionCopy;
  v15 = rLCopy;
  v16 = lCopy;
  v17 = objc_retainBlock(v19);
  mediaAssetManager = [(CSDMomentsController *)self mediaAssetManager];
  [mediaAssetManager saveLivePhotoWithPhotoURL:v16 videoURL:v15 completion:v17];
}

- (void)_saveVideoWithURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  queue = [(CSDMomentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = TUAllowLocalVideoRecording();
  if (v9)
  {
    v10 = sub_100004778(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = lCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Saving video with url: %@", buf, 0xCu);
    }

    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_10024F300;
    v17 = &unk_10061FB00;
    v11 = lCopy;
    v18 = v11;
    v19 = completionCopy;
    v12 = objc_retainBlock(&v14);
    v13 = [(CSDMomentsController *)self mediaAssetManager:v14];
    [v13 saveVideoWithURL:v11 completion:v12];
  }
}

- (void)_startTimeoutForMomentsRequestWithTransactionID:(id)d
{
  dCopy = d;
  queue = [(CSDMomentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  serverBag = [(CSDMomentsController *)self serverBag];
  [serverBag momentsRequestTimeout];
  v8 = dispatch_time(0, (v7 * 1000000000.0));
  queue2 = [(CSDMomentsController *)self queue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10024F498;
  v11[3] = &unk_100619D88;
  v11[4] = self;
  v12 = dCopy;
  v10 = dCopy;
  dispatch_after(v8, queue2, v11);
}

- (id)sessionForTransactionID:(id)d
{
  dCopy = d;
  queue = [(CSDMomentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  sessionsByToken = [(CSDMomentsController *)self sessionsByToken];
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
  queue = [(CSDMomentsController *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = descriptorCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "momentDescriptor: %@", buf, 0xCu);
  }

  clientManager = [(CSDMomentsController *)self clientManager];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10024F860;
  v10[3] = &unk_10061FA60;
  v11 = descriptorCopy;
  v9 = descriptorCopy;
  [clientManager performBlockOnClients:v10];
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

+ (CSDMomentsControllerLocalCapabilities)localCapabilities
{
  if (qword_1006ACFB8 != -1)
  {
    sub_10047E91C();
  }

  v3 = qword_1006ACFC0;

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
    serverBag = [(CSDMomentsController *)self serverBag];
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
  if (qword_1006ACFD0[0] != -1)
  {
    sub_10047E930();
  }

  return byte_1006ACFC8;
}

@end