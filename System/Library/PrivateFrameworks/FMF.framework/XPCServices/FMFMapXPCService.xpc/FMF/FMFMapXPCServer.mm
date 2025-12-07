@interface FMFMapXPCServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (CGSize)snapshotSize;
- (FMFMapXPCServer)init;
- (id)locationShifter;
- (void)clearIdleTimer;
- (void)dealloc;
- (void)gridImageForScreenRatio:(double)ratio andCompletion:(id)completion;
- (void)gridImageForWidth:(double)width height:(double)height andCompletion:(id)completion;
- (void)mapImageForLocation:(id)location isShifted:(BOOL)shifted altitude:(double)altitude pitch:(double)pitch screenRatio:(double)ratio andCompletion:(id)completion;
- (void)mapImageForLocation:(id)location isShifted:(BOOL)shifted altitude:(double)altitude pitch:(double)pitch width:(double)width height:(double)height andCompletion:(id)completion;
- (void)mapImageForRequest:(id)request andCompletion:(id)completion;
- (void)mapSnapshotForRequest:(id)request shiftedCoordinate:(CLLocationCoordinate2D)coordinate andCompletionHandler:(id)handler;
- (void)noLocationImageForScreenRatio:(double)ratio andCompletion:(id)completion;
- (void)noLocationImageForWidth:(double)width height:(double)height andCompletion:(id)completion;
- (void)setupIdleTimer;
- (void)shiftedLocationForRequest:(id)request withCompletionHandler:(id)handler;
@end

@implementation FMFMapXPCServer

- (FMFMapXPCServer)init
{
  v9.receiver = self;
  v9.super_class = FMFMapXPCServer;
  v2 = [(FMFMapXPCServer *)&v9 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(FMFMapXPCServer *)v2 setMapRenderingQueue:v3];

    mapRenderingQueue = [(FMFMapXPCServer *)v2 mapRenderingQueue];
    [mapRenderingQueue setQualityOfService:25];

    mapRenderingQueue2 = [(FMFMapXPCServer *)v2 mapRenderingQueue];
    [mapRenderingQueue2 setMaxConcurrentOperationCount:1];

    v6 = dispatch_queue_create("com.apple.icloud.FMF.FMFMapXPCService.snapshotterqueue", 0);
    [(FMFMapXPCServer *)v2 setSnapshotterQueue:v6];

    v7 = +[UIScreen mainScreen];
    [v7 scale];
    [(FMFMapXPCServer *)v2 setScreenScale:?];
  }

  return v2;
}

- (void)dealloc
{
  [(FMFMapXPCServer *)self clearIdleTimer];
  v3.receiver = self;
  v3.super_class = FMFMapXPCServer;
  [(FMFMapXPCServer *)&v3 dealloc];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [connectionCopy valueForEntitlement:@"com.apple.icloud.fmf.FMFMapXPCService.access"];
  if ([v6 BOOLValue])
  {

LABEL_4:
    v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___FMFMapXPCInterface];
    [connectionCopy setExportedInterface:v10];

    [connectionCopy setExportedObject:self];
    v11 = sub_100003C04([connectionCopy resume]);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "New connection is received allowing client", buf, 2u);
    }

    v12 = 1;
    goto LABEL_10;
  }

  v7 = [connectionCopy valueForEntitlement:@"com.apple.icloud.FMF.FMFMapXPCService.access"];
  bOOLValue = [v7 BOOLValue];

  if (bOOLValue)
  {
    goto LABEL_4;
  }

  v11 = sub_100003C04(v9);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "New connection declined, missing entitlement com.apple.icloud.FMF.FMFMapXPCService.access", v14, 2u);
  }

  v12 = 0;
LABEL_10:

  return v12;
}

- (void)gridImageForWidth:(double)width height:(double)height andCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v9 = objc_opt_new();
    [v9 setMapRect:{MKMapRectWorld.origin.x, MKMapRectWorld.origin.y, MKMapRectWorld.size.width, MKMapRectWorld.size.height}];
    [v9 setSize:{width, height}];
    [(FMFMapXPCServer *)self screenScale];
    [v9 setScale:?];
    [v9 setMapType:105];
    v10 = [[MKMapSnapshotter alloc] initWithOptions:v9];
    v11 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v12 = dispatch_queue_create("com.apple.mobileme.fmf1.gridmaprendering", v11);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10000249C;
    v13[3] = &unk_100008350;
    v14 = completionCopy;
    [v10 startWithQueue:v12 completionHandler:v13];
  }
}

- (void)noLocationImageForWidth:(double)width height:(double)height andCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v9 = [[CLLocation alloc] initWithLatitude:37.331686 longitude:-122.030656];
    v10 = objc_opt_new();
    [v9 coordinate];
    v11 = [MKMapCamera cameraLookingAtCenterCoordinate:"cameraLookingAtCenterCoordinate:fromDistance:pitch:heading:" fromDistance:? pitch:? heading:?];
    [v10 setCamera:v11];

    [v10 setSize:{width, height}];
    [(FMFMapXPCServer *)self screenScale];
    [v10 setScale:?];
    v12 = [[MKMapSnapshotter alloc] initWithOptions:v10];
    v13 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v14 = dispatch_queue_create("com.apple.mobileme.fmf1.nolocationimagerendering", v13);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000026F4;
    v15[3] = &unk_100008350;
    v16 = completionCopy;
    [v12 startWithQueue:v14 completionHandler:v15];
  }
}

- (void)mapImageForLocation:(id)location isShifted:(BOOL)shifted altitude:(double)altitude pitch:(double)pitch width:(double)width height:(double)height andCompletion:(id)completion
{
  shiftedCopy = shifted;
  locationCopy = location;
  completionCopy = completion;
  v18 = sub_100003C04(completionCopy);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Received mapImageForLocation request", v20, 2u);
  }

  if (completionCopy)
  {
    v19 = [[FMFMapImageRequest alloc] initWithLocation:locationCopy isShifted:shiftedCopy altitude:0 pitch:altitude width:pitch height:width andCachingEnabled:height];
    [(FMFMapXPCServer *)self mapImageForRequest:v19 andCompletion:completionCopy];
  }
}

- (void)mapImageForRequest:(id)request andCompletion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v8 = sub_100003C04(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received mapImageForRequest request", buf, 2u);
  }

  if (completionCopy)
  {
    objc_initWeak(buf, self);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100002AAC;
    v12[3] = &unk_1000083C8;
    objc_copyWeak(&v15, buf);
    v9 = requestCopy;
    v13 = v9;
    v14 = completionCopy;
    v10 = [NSBlockOperation blockOperationWithBlock:v12];
    [v10 setQueuePriority:{objc_msgSend(v9, "priority")}];
    mapRenderingQueue = [(FMFMapXPCServer *)self mapRenderingQueue];
    [mapRenderingQueue addOperation:v10];

    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }
}

- (void)gridImageForScreenRatio:(double)ratio andCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    [(FMFMapXPCServer *)self snapshotSize];
    v8 = v7;
    v9 = v7 * ratio;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000030A8;
    v10[3] = &unk_1000083F0;
    v11 = completionCopy;
    [(FMFMapXPCServer *)self gridImageForWidth:v10 height:v8 andCompletion:v9];
  }
}

- (void)noLocationImageForScreenRatio:(double)ratio andCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    [(FMFMapXPCServer *)self snapshotSize];
    v8 = v7;
    v9 = v7 * ratio;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100003174;
    v10[3] = &unk_1000083F0;
    v11 = completionCopy;
    [(FMFMapXPCServer *)self noLocationImageForWidth:v10 height:v8 andCompletion:v9];
  }
}

- (void)mapImageForLocation:(id)location isShifted:(BOOL)shifted altitude:(double)altitude pitch:(double)pitch screenRatio:(double)ratio andCompletion:(id)completion
{
  shiftedCopy = shifted;
  completionCopy = completion;
  if (completionCopy)
  {
    locationCopy = location;
    [(FMFMapXPCServer *)self snapshotSize];
    v17 = v16;
    v18 = v16 * ratio;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10000327C;
    v19[3] = &unk_1000083F0;
    v20 = completionCopy;
    [(FMFMapXPCServer *)self mapImageForLocation:locationCopy isShifted:shiftedCopy altitude:v19 pitch:altitude width:pitch height:v17 andCompletion:v18];
  }
}

- (CGSize)snapshotSize
{
  v2 = +[UIScreen mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  traitCollection = [v2 traitCollection];
  v8 = [UITraitCollection traitCollectionWithUserInterfaceIdiom:1];
  v9 = [traitCollection containsTraitsInCollection:v8];

  if (v9)
  {
    v11 = sub_100003C04(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14[0] = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "resizing snapshot width", v14, 2u);
    }

    *&v4 = 556.0;
  }

  v12 = *&v4;
  v13 = v6;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)mapSnapshotForRequest:(id)request shiftedCoordinate:(CLLocationCoordinate2D)coordinate andCompletionHandler:(id)handler
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  requestCopy = request;
  handlerCopy = handler;
  v11 = objc_opt_new();
  radius = [requestCopy radius];
  v14 = v13;
  v15 = sub_100003C04(radius);
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (v14 == 0.0)
  {
    if (v16)
    {
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "mapSnapshotForRequest using altitude.", v33, 2u);
    }

    [requestCopy altitude];
    v22 = v21;
    [requestCopy pitch];
    *&v23 = v23;
    v24 = [MKMapCamera cameraLookingAtCenterCoordinate:latitude fromDistance:longitude pitch:v22 heading:*&v23, 0.0];
    [v11 setCamera:v24];
  }

  else
  {
    if (v16)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "mapSnapshotForRequest using radius.", buf, 2u);
    }

    [requestCopy radius];
    v18 = v17 + v17;
    [requestCopy radius];
    v20 = v19 + v19;
    v35.latitude = latitude;
    v35.longitude = longitude;
    v36 = MKCoordinateRegionMakeWithDistance(v35, v18, v20);
    [v11 setRegion:{v36.center.latitude, v36.center.longitude, v36.span.latitudeDelta, v36.span.longitudeDelta}];
  }

  [requestCopy width];
  v26 = v25;
  [requestCopy height];
  [v11 setSize:{v26, v27}];
  [(FMFMapXPCServer *)self screenScale];
  [v11 setScale:?];
  v28 = [[MKMapSnapshotter alloc] initWithOptions:v11];
  v29 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v30 = dispatch_queue_create("com.apple.mobileme.fmf1.mapimagerendering", v29);
  v31 = sub_100003C04(v30);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "mapSnapshotForRequest starting map snapshot", v32, 2u);
  }

  [v28 startWithQueue:v30 completionHandler:handlerCopy];
}

- (void)shiftedLocationForRequest:(id)request withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  requestCopy = request;
  v8 = [FMLocationShifterItem alloc];
  location = [requestCopy location];
  [location coordinate];
  v11 = v10;
  v13 = v12;
  location2 = [requestCopy location];
  [location2 verticalAccuracy];
  v16 = v15;
  location3 = [requestCopy location];
  timestamp = [location3 timestamp];
  v19 = [v8 initWithCoordinate:timestamp accuracy:self timestamp:v11 context:{v13, v16}];

  LODWORD(location) = [requestCopy isShifted];
  if (location)
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000037A4;
    v21[3] = &unk_100008418;
    v23 = handlerCopy;
    v22 = v19;
    dispatch_async(&_dispatch_main_q, v21);
  }

  else
  {
    locationShifter = [(FMFMapXPCServer *)self locationShifter];
    [locationShifter shiftLocation:v19 withCompletionHandler:handlerCopy callbackQueue:&_dispatch_main_q];
  }
}

- (id)locationShifter
{
  if (qword_10000CD10 != -1)
  {
    sub_100003C8C();
  }

  v3 = qword_10000CD08;

  return v3;
}

- (void)setupIdleTimer
{
  [(FMFMapXPCServer *)self clearIdleTimer];
  v3 = [FMDispatchTimer alloc];
  v4 = dispatch_queue_create("com.apple.mobileme.fmf1.idleExit", 0);
  v5 = [v3 initWithQueue:v4 timeout:&stru_100008478 completion:300.0];
  [(FMFMapXPCServer *)self setIdleTimer:v5];

  idleTimer = [(FMFMapXPCServer *)self idleTimer];
  [idleTimer start];

  v8 = sub_100003C04(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    v10 = 0x4072C00000000000;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "FMFMapXPCService idleTimer set for %fs", &v9, 0xCu);
  }
}

- (void)clearIdleTimer
{
  idleTimer = [(FMFMapXPCServer *)self idleTimer];
  [idleTimer cancel];

  [(FMFMapXPCServer *)self setIdleTimer:0];
}

@end