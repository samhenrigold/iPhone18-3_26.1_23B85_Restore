@interface VolumeManagerDelegate
- (id)childConnectionForDevice:(id)device;
- (void)LiveMountService:(id)service addDisk:(id)disk fileSystemType:(id)type reply:(id)reply;
- (void)LiveMountService:(id)service addVolume:(id)volume atServer:(id)server credentialType:(int64_t)type credential:(id)credential reply:(id)reply;
- (void)LiveMountService:(id)service ejectDisk:(id)disk usingFlags:(unsigned int)flags reply:(id)reply;
- (void)LiveMountService:(id)service ejectVolume:(id)volume named:(id)named withFlags:(unsigned int)flags reply:(id)reply;
- (void)LiveMountService:(id)service ejectVolumeCluster:(id)cluster withFlags:(unsigned int)flags reply:(id)reply;
- (void)LiveMountService:(id)service sharesAtServer:(id)server credentialType:(int64_t)type credential:(id)credential reply:(id)reply;
- (void)LiveMountService:(id)service unlockVolume:(id)volume password:(id)password saveToKeychain:(BOOL)keychain completionHandler:(id)handler;
- (void)handleInvalidation:(id)invalidation fileSystemType:(id)type service:(id)service;
@end

@implementation VolumeManagerDelegate

- (void)handleInvalidation:(id)invalidation fileSystemType:(id)type service:(id)service
{
  invalidationCopy = invalidation;
  v6 = qword_10000D340;
  if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = invalidationCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Connection Interrupted for UVFSService UUID: %@", buf, 0xCu);
  }

  v7 = qword_10000D338;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001F7C;
  block[3] = &unk_1000082C0;
  v10 = invalidationCopy;
  v8 = invalidationCopy;
  dispatch_async(v7, block);
}

- (void)LiveMountService:(id)service addDisk:(id)disk fileSystemType:(id)type reply:(id)reply
{
  serviceCopy = service;
  diskCopy = disk;
  typeCopy = type;
  replyCopy = reply;
  v13 = objc_opt_new();
  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 0;
  v14 = dispatch_semaphore_create(0);
  v64 = 0;
  v65 = &v64;
  v66 = 0x3032000000;
  v67 = sub_100002314;
  v68 = sub_100002324;
  v69 = 0;
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = sub_100002314;
  v62 = sub_100002324;
  v63 = 0;
  v15 = qword_10000D340;
  if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v75 = diskCopy;
    v76 = 2112;
    v77 = typeCopy;
    v78 = 2112;
    v79 = v13;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "liveFSService:delegate:addDisk:%@:fileSystemType:%@:start:%@", buf, 0x20u);
  }

  v16 = [[NSXPCConnection alloc] initWithServiceName:@"com.apple.filesystems.lifs.userfsd.UVFSService"];
  v17 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___UVFSServiceProtocol];
  [v16 setRemoteObjectInterface:v17];

  v18 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___UVFSServiceCallbackProtocol];
  [v16 setExportedInterface:v18];

  v19 = objc_alloc_init(UVFSServiceNotifciations);
  [v16 setExportedObject:v19];

  [v16 _setUUID:v13];
  objc_initWeak(&location, self);
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_100002B80;
  v52[3] = &unk_1000082E8;
  objc_copyWeak(&v56, &location);
  v20 = v13;
  v53 = v20;
  v21 = typeCopy;
  v54 = v21;
  v22 = serviceCopy;
  v55 = v22;
  [v16 setInterruptionHandler:v52];
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_100002BD8;
  v50[3] = &unk_1000082C0;
  v23 = diskCopy;
  v51 = v23;
  [v16 setInvalidationHandler:v50];
  v24 = [[ChildProcess alloc] initForDevice:v23 withConnection:v16];
  [v24 setUUID:v20];
  v25 = qword_10000D328;
  objc_sync_enter(v25);
  [qword_10000D328 setObject:v24 forKeyedSubscript:v23];
  objc_sync_exit(v25);

  [v16 resume];
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_100002C24;
  v47[3] = &unk_100008310;
  v49 = &v64;
  v26 = v14;
  v48 = v26;
  v27 = [v16 remoteObjectProxyWithErrorHandler:v47];
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_100002CA8;
  v43[3] = &unk_100008338;
  v45 = &v64;
  v46 = &v70;
  v28 = v26;
  v44 = v28;
  [v27 startUp:v43];
  v29 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v28, v29))
  {
    v30 = [NSError errorWithDomain:NSPOSIXErrorDomain code:60 userInfo:0];
    v31 = v65[5];
    v65[5] = v30;
  }

  if (v65[5])
  {
    if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_ERROR))
    {
      sub_1000043D0();
    }

    replyCopy[2](replyCopy, v65[5], 0);
  }

  else
  {
    [v24 setPid:*(v71 + 6)];
    v32 = qword_10000D340;
    if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "liveFSService:delegate:addDisk:XPCService:startup:done", buf, 2u);
    }

    if (byte_10000D318)
    {
      v33 = 3;
    }

    else
    {
      v33 = 2;
    }

    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_100002D24;
    v39[3] = &unk_100008360;
    v41 = &v64;
    v42 = &v58;
    v34 = v28;
    v40 = v34;
    [v27 createVolumesForTheDevice:v23 fsType:v21 how:v33 withReply:v39];
    dispatch_semaphore_wait(v34, 0xFFFFFFFFFFFFFFFFLL);
    v35 = qword_10000D340;
    if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_DEFAULT))
    {
      v36 = v65[5];
      v37 = v59[5];
      *buf = 138413058;
      v75 = v23;
      v76 = 2112;
      v77 = v21;
      v78 = 2112;
      v79 = v36;
      v80 = 2112;
      v81 = v37;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "liveFSService:delegate:addDisk:%@:fileSystemType:%@:finish:%@,%@", buf, 0x2Au);
    }

    replyCopy[2](replyCopy, v65[5], v59[5]);
  }

  objc_destroyWeak(&v56);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v58, 8);

  _Block_object_dispose(&v64, 8);
  _Block_object_dispose(&v70, 8);
}

- (id)childConnectionForDevice:(id)device
{
  deviceCopy = device;
  if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_DEBUG))
  {
    sub_100004524();
  }

  v4 = qword_10000D328;
  objc_sync_enter(v4);
  v5 = [qword_10000D328 objectForKeyedSubscript:deviceCopy];
  objc_sync_exit(v4);

  v6 = qword_10000D340;
  if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_DEBUG))
  {
    sub_1000045AC(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  return v5;
}

- (void)LiveMountService:(id)service ejectDisk:(id)disk usingFlags:(unsigned int)flags reply:(id)reply
{
  serviceCopy = service;
  diskCopy = disk;
  replyCopy = reply;
  v11 = diskCopy;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_100002314;
  v39 = sub_100002324;
  v40 = 0;
  v12 = qword_10000D340;
  if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v42 = "[VolumeManagerDelegate LiveMountService:ejectDisk:usingFlags:reply:]";
    v43 = 2112;
    v44 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s:%@:start", buf, 0x16u);
  }

  v13 = qword_10000D328;
  objc_sync_enter(v13);
  v14 = [qword_10000D328 objectForKeyedSubscript:v11];
  objc_sync_exit(v13);

  if (v14)
  {
    v15 = dispatch_semaphore_create(0);
    helper = [v14 helper];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_10000333C;
    v32[3] = &unk_100008310;
    v34 = &v35;
    v17 = v15;
    v33 = v17;
    v18 = [helper remoteObjectProxyWithErrorHandler:v32];

    flagsCopy = flags;
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10000339C;
    v29[3] = &unk_100008310;
    v31 = &v35;
    v20 = v17;
    v30 = v20;
    [v18 ejectVolumesForDevice:v11 how:flagsCopy withReply:v29];
    dispatch_semaphore_wait(v20, 0xFFFFFFFFFFFFFFFFLL);
    if ([v36[5] code] == 16)
    {
      if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_DEBUG))
      {
        sub_10000462C();
      }

      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_1000033FC;
      v26[3] = &unk_100008310;
      v28 = &v35;
      v21 = v20;
      v27 = v21;
      [v18 ejectVolumesForDevice:v11 how:7 withReply:v26];
      dispatch_semaphore_wait(v21, 0xFFFFFFFFFFFFFFFFLL);
      if (v36[5] && os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_ERROR))
      {
        sub_1000046A4();
      }
    }
  }

  else
  {
    if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_ERROR))
    {
      sub_100004724();
    }

    v22 = [NSError errorWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
    v18 = v36[5];
    v36[5] = v22;
  }

  v23 = qword_10000D340;
  if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_DEFAULT))
  {
    v24 = v36[5];
    *buf = 136315650;
    v42 = "[VolumeManagerDelegate LiveMountService:ejectDisk:usingFlags:reply:]";
    v43 = 2112;
    v44 = v11;
    v45 = 2112;
    v46 = v24;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%s:%@:finish:%@", buf, 0x20u);
  }

  replyCopy[2](replyCopy, v36[5]);

  _Block_object_dispose(&v35, 8);
}

- (void)LiveMountService:(id)service ejectVolume:(id)volume named:(id)named withFlags:(unsigned int)flags reply:(id)reply
{
  serviceCopy = service;
  volumeCopy = volume;
  namedCopy = named;
  replyCopy = reply;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_100002314;
  v36 = sub_100002324;
  v37 = 0;
  v13 = qword_10000D340;
  if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[VolumeManagerDelegate LiveMountService:ejectVolume:named:withFlags:reply:]";
    *&buf[12] = 2112;
    *&buf[14] = namedCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s:%@:start", buf, 0x16u);
  }

  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1000038E0;
  v31[3] = &unk_100008388;
  v31[4] = &v32;
  [serviceCopy listVolumes:v31];
  v14 = [v33[5] objectForKeyedSubscript:namedCopy];
  if (v14)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v15 = v33[5];
    v16 = [v15 countByEnumeratingWithState:&v27 objects:v42 count:16];
    flagsCopy = flags;
    v17 = 0;
    if (v16)
    {
      v18 = *v28;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v28 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [v33[5] objectForKeyedSubscript:*(*(&v27 + 1) + 8 * i)];
          v21 = [v20 isEqualToString:v14];

          v17 += v21;
        }

        v16 = [v15 countByEnumeratingWithState:&v27 objects:v42 count:16];
      }

      while (v16);
    }

    if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_DEBUG))
    {
      sub_1000047A4();
    }

    if (v17 == 1)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v39 = sub_100002314;
      v40 = sub_100002324;
      v41 = 0;
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_100003934;
      v26[3] = &unk_1000083B0;
      v26[4] = buf;
      [serviceCopy ejectDisk:v14 usingFlags:flagsCopy reply:v26];
      if (*(*&buf[8] + 40))
      {
        if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_ERROR))
        {
          sub_100004828();
        }
      }

      else if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_DEBUG))
      {
        sub_100004898();
      }

      _Block_object_dispose(buf, 8);
    }
  }

  v22 = qword_10000D340;
  if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[VolumeManagerDelegate LiveMountService:ejectVolume:named:withFlags:reply:]";
    *&buf[12] = 2112;
    *&buf[14] = namedCopy;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s:%@:finish", buf, 0x16u);
  }

  replyCopy[2](replyCopy, 0);

  _Block_object_dispose(&v32, 8);
}

- (void)LiveMountService:(id)service ejectVolumeCluster:(id)cluster withFlags:(unsigned int)flags reply:(id)reply
{
  replyCopy = reply;
  v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
  (*(reply + 2))(replyCopy, v8);
}

- (void)LiveMountService:(id)service addVolume:(id)volume atServer:(id)server credentialType:(int64_t)type credential:(id)credential reply:(id)reply
{
  replyCopy = reply;
  v10 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
  (*(reply + 2))(replyCopy, v10);
}

- (void)LiveMountService:(id)service sharesAtServer:(id)server credentialType:(int64_t)type credential:(id)credential reply:(id)reply
{
  replyCopy = reply;
  v9 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
  (*(reply + 2))(replyCopy, 0, v9);
}

- (void)LiveMountService:(id)service unlockVolume:(id)volume password:(id)password saveToKeychain:(BOOL)keychain completionHandler:(id)handler
{
  keychainCopy = keychain;
  serviceCopy = service;
  volumeCopy = volume;
  passwordCopy = password;
  handlerCopy = handler;
  v16 = qword_10000D340;
  if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v28 = "[VolumeManagerDelegate LiveMountService:unlockVolume:password:saveToKeychain:completionHandler:]";
    v29 = 2112;
    v30 = volumeCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s:%@:start", buf, 0x16u);
  }

  v17 = [serviceCopy descriptionForVolume:volumeCopy];
  if (v17 && ([(VolumeManagerDelegate *)self childConnectionForDevice:v17], (v18 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v19 = v18;
    helper = [v18 helper];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100003D5C;
    v25[3] = &unk_1000083D8;
    v21 = handlerCopy;
    v26 = v21;
    v22 = [helper remoteObjectProxyWithErrorHandler:v25];

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100003D6C;
    v23[3] = &unk_1000083D8;
    v24 = v21;
    [v22 unlockVolume:volumeCopy password:passwordCopy saveToKeychain:keychainCopy completionHandler:v23];
  }

  else
  {
    v19 = getNSErrorFromLiveFSErrno();
    (*(handlerCopy + 2))(handlerCopy, v19);
  }
}

@end