@interface externalVolumeUVFSServiceLiveFSServiceDelegate
- (void)LiveMountService:(id)service addDisk:(id)disk fileSystemType:(id)type reply:(id)reply;
- (void)LiveMountService:(id)service addDisk:(id)disk reply:(id)reply;
- (void)LiveMountService:(id)service addVolume:(id)volume atServer:(id)server credentialType:(int64_t)type credential:(id)credential reply:(id)reply;
- (void)LiveMountService:(id)service ejectDisk:(id)disk usingFlags:(unsigned int)flags reply:(id)reply;
- (void)LiveMountService:(id)service ejectVolume:(id)volume named:(id)named withFlags:(unsigned int)flags reply:(id)reply;
- (void)LiveMountService:(id)service ejectVolumeCluster:(id)cluster withFlags:(unsigned int)flags reply:(id)reply;
- (void)LiveMountService:(id)service sharesAtServer:(id)server credentialType:(int64_t)type credential:(id)credential reply:(id)reply;
- (void)LiveMountService:(id)service unlockVolume:(id)volume password:(id)password saveToKeychain:(BOOL)keychain completionHandler:(id)handler;
@end

@implementation externalVolumeUVFSServiceLiveFSServiceDelegate

- (void)LiveMountService:(id)service addDisk:(id)disk reply:(id)reply
{
  replyCopy = reply;
  v7 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
  (*(reply + 2))(replyCopy, v7);
}

- (void)LiveMountService:(id)service addDisk:(id)disk fileSystemType:(id)type reply:(id)reply
{
  replyCopy = reply;
  v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
  (*(reply + 2))(replyCopy, v8, 0);
}

- (void)LiveMountService:(id)service addVolume:(id)volume atServer:(id)server credentialType:(int64_t)type credential:(id)credential reply:(id)reply
{
  replyCopy = reply;
  v10 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
  (*(reply + 2))(replyCopy, v10);
}

- (void)LiveMountService:(id)service ejectDisk:(id)disk usingFlags:(unsigned int)flags reply:(id)reply
{
  v7 = *&flags;
  serviceCopy = service;
  diskCopy = disk;
  replyCopy = reply;
  v12 = diskCopy;
  v13 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v40 = "[externalVolumeUVFSServiceLiveFSServiceDelegate LiveMountService:ejectDisk:usingFlags:reply:]";
    v41 = 2112;
    v42 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s: start %@", buf, 0x16u);
  }

  if (!deviceBeenServiced)
  {
    v19 = userfs_log_default;
    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002355C(v19, v20, v21, v22, v23, v24, v25, v26);
    }

    v27 = NSPOSIXErrorDomain;
    v28 = 22;
    goto LABEL_12;
  }

  deviceName = [deviceBeenServiced deviceName];
  v15 = [deviceName isEqualToString:v12];

  if (!v15)
  {
    v29 = userfs_log_default;
    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000234E4(v29, v30, v31, v32, v33, v34, v35, v36);
    }

    v27 = NSPOSIXErrorDomain;
    v28 = 19;
LABEL_12:
    v18 = [NSError errorWithDomain:v27 code:v28 userInfo:0];
    replyCopy[2](replyCopy, v18);
    goto LABEL_13;
  }

  [deviceBeenServiced unloadVolumes:v7];
  [deviceBeenServiced close];
  v16 = deviceBeenServiced;
  deviceBeenServiced = 0;

  replyCopy[2](replyCopy, 0);
  v17 = gIOKitNotificationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001899C;
  block[3] = &unk_100038668;
  v38 = v12;
  dispatch_async(v17, block);
  v18 = v38;
LABEL_13:
}

- (void)LiveMountService:(id)service ejectVolume:(id)volume named:(id)named withFlags:(unsigned int)flags reply:(id)reply
{
  v8 = *&flags;
  serviceCopy = service;
  volumeCopy = volume;
  namedCopy = named;
  replyCopy = reply;
  v15 = volumeCopy;
  v16 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_INFO))
  {
    v17 = 138412546;
    v18 = v15;
    v19 = 1024;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "ejectVolume:%@:how:%u", &v17, 0x12u);
  }

  if (v8)
  {
    [v15 invalidateAllConnections];
    [v15 unmount:v8];
  }

  replyCopy[2](replyCopy, 0);
}

- (void)LiveMountService:(id)service ejectVolumeCluster:(id)cluster withFlags:(unsigned int)flags reply:(id)reply
{
  replyCopy = reply;
  v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
  (*(reply + 2))(replyCopy, v8);
}

- (void)LiveMountService:(id)service sharesAtServer:(id)server credentialType:(int64_t)type credential:(id)credential reply:(id)reply
{
  replyCopy = reply;
  v9 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
  (*(reply + 2))(replyCopy, 0, v9);
}

- (void)LiveMountService:(id)service unlockVolume:(id)volume password:(id)password saveToKeychain:(BOOL)keychain completionHandler:(id)handler
{
  volumeCopy = volume;
  handlerCopy = handler;
  v10 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000235D4(volumeCopy, v10, v11, v12, v13, v14, v15, v16);
  }

  v17 = getNSErrorFromLiveFSErrno();
  handlerCopy[2](handlerCopy, v17);
}

@end