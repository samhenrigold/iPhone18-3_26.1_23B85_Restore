@interface FindMyDeviceUserNotificationsXPCServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)addNotificationRequest:(id)request completion:(id)completion;
- (void)removeNotificationWithIdentifier:(id)identifier completion:(id)completion;
@end

@implementation FindMyDeviceUserNotificationsXPCServer

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = sub_1000020EC(connectionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = connectionCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received new XPC connection %@", buf, 0xCu);
  }

  v7 = objc_opt_class();
  v8 = [NSSet setWithObjects:v7, objc_opt_class(), 0];
  v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___FindMyDeviceUserNotificationsXPCInterface];
  [v9 setClasses:v8 forSelector:"addNotificationRequest:completion:" argumentIndex:0 ofReply:1];
  [connectionCopy setExportedInterface:v9];
  [connectionCopy setExportedObject:self];
  [connectionCopy resume];

  return 1;
}

- (void)addNotificationRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v8 = sub_1000020EC(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[FindMyDeviceUserNotificationsXPCServer addNotificationRequest:completion:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", &buf, 0xCu);
  }

  v9 = +[NSXPCConnection currentConnection];
  v10 = [v9 valueForEntitlement:@"com.apple.icloud.FindMyDevice.FindMyDeviceUserNotificationsXPCService.access"];

  if (v10 && ([&__kCFBooleanTrue isEqual:v10] & 1) != 0)
  {
    locationTitle = [requestCopy locationTitle];

    if (locationTitle)
    {
      v12 = [CLLocation alloc];
      [requestCopy latitude];
      v14 = v13;
      [requestCopy longitude];
      v16 = [v12 initWithLatitude:v14 longitude:v15];
      v17 = objc_alloc_init(CLGeocoder);
      v18 = dispatch_group_create();
      dispatch_group_enter(v18);
      *&buf = 0;
      *(&buf + 1) = &buf;
      v53 = 0x3032000000;
      v54 = sub_10000161C;
      v55 = sub_10000162C;
      v56 = 0;
      v20 = sub_1000020EC(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *v48 = 138412290;
        v49 = v16;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "geocoding for location = %@", v48, 0xCu);
      }

      v45[0] = _NSConcreteStackBlock;
      v45[1] = 3221225472;
      v45[2] = sub_100001634;
      v45[3] = &unk_100008C20;
      p_buf = &buf;
      v21 = v18;
      v46 = v21;
      [v17 reverseGeocodeLocation:v16 completionHandler:v45];
      v22 = dispatch_time(0, 10000000000);
      v23 = dispatch_group_wait(v21, v22);
      v24 = v23;
      if (v23 || !*(*(&buf + 1) + 40))
      {
        locationMessage = sub_1000020EC(v23);
        if (os_log_type_enabled(locationMessage, OS_LOG_TYPE_DEFAULT))
        {
          *v48 = 138412546;
          v49 = v16;
          v50 = 2048;
          v51 = v24;
          _os_log_impl(&_mh_execute_header, locationMessage, OS_LOG_TYPE_DEFAULT, "unable to get placemark for %@ %ld", v48, 0x16u);
        }
      }

      else
      {
        v34 = sub_1000020EC(0);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = *(*(&buf + 1) + 40);
          name = [v35 name];
          *v48 = 138412546;
          v49 = v35;
          v50 = 2112;
          v51 = name;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "reverseGeocodeLocation successful %@ %@", v48, 0x16u);
        }

        locationTitle2 = [requestCopy locationTitle];
        name2 = [*(*(&buf + 1) + 40) name];
        v39 = [locationTitle2 stringByReplacingOccurrencesOfString:@"<location>" withString:name2];
        [requestCopy setTitle:v39];

        locationMessage = [requestCopy locationMessage];
        name3 = [*(*(&buf + 1) + 40) name];
        v41 = [locationMessage stringByReplacingOccurrencesOfString:@"<location>" withString:name3];
        [requestCopy setBody:v41];
      }

      _Block_object_dispose(&buf, 8);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000183C;
    block[3] = &unk_100008C70;
    v43 = requestCopy;
    v44 = completionCopy;
    dispatch_async(&_dispatch_main_q, block);

    v27 = v43;
  }

  else
  {
    v26 = NSStringFromSelector(a2);
    v27 = [NSString stringWithFormat:@"Entitlement not found for %@", v26];

    v28 = [NSError alloc];
    if (v27)
    {
      v29 = v27;
    }

    else
    {
      v29 = &stru_10000B648;
    }

    v57 = NSLocalizedFailureReasonErrorKey;
    v58 = v29;
    v30 = [NSDictionary dictionaryWithObjects:&v58 forKeys:&v57 count:1];
    v31 = [v28 initWithDomain:@"com.apple.icloud.findmydeviced.usernotificationsxpcserver" code:6 userInfo:v30];

    v33 = sub_1000020EC(v32);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_1000031A8(v27, v33);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, v31);
    }
  }
}

- (void)removeNotificationWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = sub_1000020EC(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v24 = "[FindMyDeviceUserNotificationsXPCServer removeNotificationWithIdentifier:completion:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "FRAMEWORK API: %s", buf, 0xCu);
  }

  v9 = +[NSXPCConnection currentConnection];
  v10 = [v9 valueForEntitlement:@"com.apple.icloud.FindMyDevice.FindMyDeviceUserNotificationsXPCService.access"];

  if (v10 && ([&__kCFBooleanTrue isEqual:v10] & 1) != 0)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100001F48;
    block[3] = &unk_100008C98;
    v20 = identifierCopy;
    dispatch_async(&_dispatch_main_q, block);
    v11 = v20;
  }

  else
  {
    v12 = NSStringFromSelector(a2);
    v11 = [NSString stringWithFormat:@"Entitlement not found for %@", v12];

    v13 = [NSError alloc];
    if (v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = &stru_10000B648;
    }

    v21 = NSLocalizedFailureReasonErrorKey;
    v22 = v14;
    v15 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v16 = [v13 initWithDomain:@"com.apple.icloud.findmydeviced.usernotificationsxpcserver" code:6 userInfo:v15];

    v18 = sub_1000020EC(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1000031A8(v11, v18);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, v16);
    }
  }
}

@end