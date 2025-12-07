@interface MSDAudioController
+ (id)sharedInstance;
- (BOOL)addRouteToSystemMusicForSpeaker;
- (BOOL)removeRouteToSystemMusicForSpeaker;
- (BOOL)setVolumeTo:(float)to forCategory:(unint64_t)category;
- (float)getVolumeForCategory:(unint64_t)category;
- (id)_NSStringFromVolumeCategory:(unint64_t)category;
- (id)_findRouteDescriptorWithRouteUID:(id)d usingRouteDiscoverer:(OpaqueFigRouteDiscoverer *)discoverer;
- (id)_findRouteDescriptorWithUID:(id)d;
- (void)_handleAVSystemControllerDiedNotification:(id)notification;
- (void)_initializeAVSystemControllerIfNeeded;
- (void)_monitorRouteConfigUpdateForUUID:(id)d withCallback:(id)callback;
@end

@implementation MSDAudioController

+ (id)sharedInstance
{
  if (qword_1001A55B0 != -1)
  {
    sub_1000C5268();
  }

  v3 = qword_1001A55A8;

  return v3;
}

- (BOOL)setVolumeTo:(float)to forCategory:(unint64_t)category
{
  v6 = [(MSDAudioController *)self _NSStringFromVolumeCategory:category];
  if (v6)
  {
    avSystemController = [(MSDAudioController *)self avSystemController];
    objc_sync_enter(avSystemController);
    [(MSDAudioController *)self _initializeAVSystemControllerIfNeeded];
    avSystemController2 = [(MSDAudioController *)self avSystemController];
    *&v9 = to;
    v10 = [avSystemController2 setVolumeTo:v6 forCategory:0 mode:v9];

    if ((v10 & 1) == 0)
    {
      v12 = sub_100063A54(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000C527C();
      }
    }

    objc_sync_exit(avSystemController);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (float)getVolumeForCategory:(unint64_t)category
{
  v12 = 0.0;
  v4 = [(MSDAudioController *)self _NSStringFromVolumeCategory:category];
  if (v4)
  {
    avSystemController = [(MSDAudioController *)self avSystemController];
    objc_sync_enter(avSystemController);
    [(MSDAudioController *)self _initializeAVSystemControllerIfNeeded];
    avSystemController2 = [(MSDAudioController *)self avSystemController];
    v7 = [avSystemController2 getVolume:&v12 forCategory:v4 mode:0];

    if ((v7 & 1) == 0)
    {
      v9 = sub_100063A54(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000C5300();
      }
    }

    objc_sync_exit(avSystemController);

    if (v7)
    {
      v10 = v12;
    }

    else
    {
      v10 = -1.0;
    }
  }

  else
  {
    v10 = -1.0;
  }

  return v10;
}

- (BOOL)addRouteToSystemMusicForSpeaker
{
  v3 = [(MSDAudioController *)self _findRouteDescriptorWithUID:@"Speaker"];
  if (!v3)
  {
    v14 = 0;
    goto LABEL_12;
  }

  v4 = dispatch_semaphore_create(0);
  v5 = +[NSUUID UUID];
  uUIDString = [v5 UUIDString];

  v20 = kFigRoutingContextSelectRouteOptionKey_ClientRouteRequestID;
  v21 = uUIDString;
  v7 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  cf = 0;
  v8 = sub_100063A54(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "MSDAudioController: Adding route for system music to speaker...", buf, 2u);
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100007328;
  v16[3] = &unk_100169CC0;
  v9 = v4;
  v17 = v9;
  [(MSDAudioController *)self _monitorRouteConfigUpdateForUUID:uUIDString withCallback:v16];
  v10 = FigRoutingContextRemoteCopySystemMusicContext();
  if (v10)
  {
    sub_1000C5374(v10);
    goto LABEL_15;
  }

  v11 = cf;
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v12)
  {
    v13 = 4294954514;
    goto LABEL_14;
  }

  v13 = v12(v11, v3, v7);
  if (v13)
  {
LABEL_14:
    sub_1000C5408(v13);
LABEL_15:
    v14 = 0;
    goto LABEL_8;
  }

  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  v14 = 1;
LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_12:
  return v14;
}

- (BOOL)removeRouteToSystemMusicForSpeaker
{
  v3 = [(MSDAudioController *)self _findRouteDescriptorWithUID:@"Speaker"];
  if (!v3)
  {
    v14 = 1;
    goto LABEL_12;
  }

  v4 = dispatch_semaphore_create(0);
  v5 = +[NSUUID UUID];
  uUIDString = [v5 UUIDString];

  v20 = kFigRoutingContextSelectRouteOptionKey_ClientRouteRequestID;
  v21 = uUIDString;
  v7 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  cf = 0;
  v8 = sub_100063A54(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "MSDAudioController: Removing route for system music to speaker...", buf, 2u);
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100007614;
  v16[3] = &unk_100169CC0;
  v9 = v4;
  v17 = v9;
  [(MSDAudioController *)self _monitorRouteConfigUpdateForUUID:uUIDString withCallback:v16];
  v10 = FigRoutingContextRemoteCopySystemMusicContext();
  if (v10)
  {
    sub_1000C5374(v10);
    goto LABEL_15;
  }

  v11 = cf;
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 104);
  if (!v12)
  {
    v13 = 4294954514;
    goto LABEL_14;
  }

  v13 = v12(v11, v3, v7);
  if (v13)
  {
LABEL_14:
    sub_1000C549C(v13);
LABEL_15:
    v14 = 0;
    goto LABEL_8;
  }

  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  v14 = 1;
LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_12:
  return v14;
}

- (void)_initializeAVSystemControllerIfNeeded
{
  avSystemController = [(MSDAudioController *)self avSystemController];

  if (!avSystemController)
  {
    v5 = sub_100063A54(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MSDAudioController: Initializing AVSystemController!", buf, 2u);
    }

    v6 = +[AVSystemController sharedAVSystemController];
    [(MSDAudioController *)self setAvSystemController:v6];

    avSystemController2 = [(MSDAudioController *)self avSystemController];

    if (avSystemController2)
    {
      avSystemController3 = [(MSDAudioController *)self avSystemController];
      v16 = AVSystemController_ServerConnectionDiedNotification;
      v10 = [NSArray arrayWithObjects:&v16 count:1];
      v14 = 0;
      v11 = [avSystemController3 setAttribute:v10 forKey:AVSystemController_SubscribeToNotificationsAttribute error:&v14];
      v12 = v14;

      if (v11)
      {
        v13 = +[NSNotificationCenter defaultCenter];
        [v13 addObserver:self selector:"_handleAVSystemControllerDiedNotification:" name:AVSystemController_ServerConnectionDiedNotification object:0];
      }

      else
      {
        sub_1000C5530(v12);
      }
    }

    else
    {
      v12 = sub_100063A54(v8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000C55DC();
      }
    }
  }
}

- (id)_NSStringFromVolumeCategory:(unint64_t)category
{
  v3 = @"PhoneCall";
  if (category != 2)
  {
    v3 = 0;
  }

  if (category == 3)
  {
    return @"Audio/Video";
  }

  else
  {
    return v3;
  }
}

- (id)_findRouteDescriptorWithUID:(id)d
{
  dCopy = d;
  cf = 0;
  v5 = sub_100063A54(dCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v43 = dCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MSDAudioController: Searching for route with UID: %{public}@", buf, 0xCu);
  }

  v40 = kFigRouteDiscovererCreationOption_DiscovererType;
  v41 = &off_10017AE28;
  v6 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
  v7 = FigRouteDiscovererXPCRemoteCreate();
  if (v7)
  {
    v24 = sub_100063A54(v7);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_1000C561C();
    }

    v12 = 0;
    v19 = 0;
    v11 = 0;
    goto LABEL_16;
  }

  v8 = objc_alloc_init(NSCondition);
  v9 = +[NSNotificationCenter defaultCenter];
  v10 = kFigRouteDiscovererNotification_AvailableRoutesChanged;
  v34 = _NSConcreteStackBlock;
  v35 = 3221225472;
  v36 = sub_100007D8C;
  v37 = &unk_100169CE8;
  v11 = v8;
  v38 = v11;
  v12 = [v9 addObserverForName:v10 object:0 queue:0 usingBlock:&v34];

  v13 = cf;
  VTable = CMBaseObjectGetVTable();
  v16 = *(VTable + 8);
  v15 = VTable + 8;
  v17 = *(v16 + 56);
  if (!v17 || (v18 = kFigRouteDiscovererProperty_DiscoveryMode, v15 = v17(v13, kFigRouteDiscovererProperty_DiscoveryMode, kFigRouteDiscovererDiscoveryMode_DetailedDiscovery), v15))
  {
    v24 = sub_100063A54(v15);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_1000C570C();
    }

    v19 = 0;
LABEL_16:
    v20 = 0;
LABEL_24:

    goto LABEL_25;
  }

  v19 = [NSDate dateWithTimeIntervalSinceNow:3.0, v34, v35, v36, v37];
  [v11 lock];
  while (1)
  {
    v20 = [(MSDAudioController *)self _findRouteDescriptorWithRouteUID:dCopy usingRouteDiscoverer:cf];
    if (v20)
    {
      break;
    }

    v21 = [v11 waitUntilDate:v19];
    if ((v21 & 1) == 0)
    {
      v22 = sub_100063A54(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_1000C568C();
      }

      v23 = sub_100063A54([v11 unlock]);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_1000C56CC();
      }

      goto LABEL_20;
    }
  }

  [v11 unlock];
  v23 = [v20 objectForKeyedSubscript:kFigEndpointDescriptorKey_RouteName];
  v25 = sub_100063A54(v23);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v43 = v23;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "MSDAudioController: Found route with name: %{public}@", buf, 0xCu);
  }

LABEL_20:
  v26 = cf;
  v27 = CMBaseObjectGetVTable();
  v29 = *(v27 + 8);
  v28 = v27 + 8;
  v30 = *(v29 + 56);
  if (!v30 || (v28 = v30(v26, v18, kFigRouteDiscovererDiscoveryMode_None), v28))
  {
    v24 = sub_100063A54(v28);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_1000C570C();
    }

    goto LABEL_24;
  }

LABEL_25:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v12)
  {
    v31 = +[NSNotificationCenter defaultCenter];
    [v31 removeObserver:v12];
  }

  v32 = v20;

  return v20;
}

- (id)_findRouteDescriptorWithRouteUID:(id)d usingRouteDiscoverer:(OpaqueFigRouteDiscoverer *)discoverer
{
  dCopy = d;
  v25 = 0;
  VTable = CMBaseObjectGetVTable();
  v8 = *(VTable + 8);
  v7 = VTable + 8;
  v9 = *(v8 + 48);
  if (!v9 || (v7 = v9(discoverer, kFigRouteDiscovererProperty_AvailableRouteDescriptors, kCFAllocatorDefault, &v25), v7))
  {
    v10 = sub_100063A54(v7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000C577C();
    }
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = v25;
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      v14 = kFigEndpointDescriptorKey_RouteUID;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v21 + 1) + 8 * i);
          v17 = [v16 objectForKeyedSubscript:{v14, v21}];
          v18 = v17;
          if (v17 && [v17 isEqualToString:dCopy])
          {
            v19 = v16;

            goto LABEL_17;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v21 objects:v26 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }
  }

  v19 = 0;
LABEL_17:

  return v19;
}

- (void)_monitorRouteConfigUpdateForUUID:(id)d withCallback:(id)callback
{
  dCopy = d;
  callbackCopy = callback;
  if (callbackCopy)
  {
    v7 = +[NSNotificationCenter defaultCenter];
    v8 = kFigRoutingContextNotification_RouteConfigUpdated;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000813C;
    v10[3] = &unk_100169D10;
    v11 = dCopy;
    v12 = 0;
    v13 = callbackCopy;
    v9 = [v7 addObserverForName:v8 object:0 queue:0 usingBlock:v10];
  }
}

- (void)_handleAVSystemControllerDiedNotification:(id)notification
{
  notificationCopy = notification;
  avSystemController = [(MSDAudioController *)self avSystemController];
  v6 = objc_sync_enter(avSystemController);
  v7 = sub_100063A54(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "MSDAudioController: AVSystemController died!", v9, 2u);
  }

  [(MSDAudioController *)self setAvSystemController:0];
  v8 = +[NSNotificationCenter defaultCenter];
  [v8 removeObserver:self name:AVSystemController_ServerConnectionDiedNotification object:0];

  objc_sync_exit(avSystemController);
}

@end