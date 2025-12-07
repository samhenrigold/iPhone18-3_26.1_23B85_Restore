@interface PBItemCollection
+ (id)unserializeCollectionFromBaseURL:(id)l persistenceName:(id)name outError:(id *)error;
+ (id)unserializeCollectionFromPasteboardURL:(id)l baseURL:(id)rL outError:(id *)error;
- (id)directoryName;
- (id)serializeToBaseURL:(id)l isServerToServerCopy:(BOOL)copy allowedToCopyOnPaste:(BOOL)paste;
- (unint64_t)authorizationDecisionForAuditTokenInfo:(id)info timestamp:(unint64_t)timestamp;
- (void)recordUserAuthorizationDecision:(BOOL)decision auditTokenInfo:(id)info;
- (void)setStorageBaseURL:(id)l;
@end

@implementation PBItemCollection

+ (id)unserializeCollectionFromBaseURL:(id)l persistenceName:(id)name outError:(id *)error
{
  lCopy = l;
  v8 = PBSHA1HashOfString();
  v9 = [lCopy URLByAppendingPathComponent:v8 isDirectory:1];
  v10 = [self unserializeCollectionFromPasteboardURL:v9 baseURL:lCopy outError:error];

  if (error)
  {
    *error = 0;
  }

  return v10;
}

+ (id)unserializeCollectionFromPasteboardURL:(id)l baseURL:(id)rL outError:(id *)error
{
  lCopy = l;
  rLCopy = rL;
  v10 = [lCopy URLByAppendingPathComponent:@"Manifest.plist" isDirectory:0];
  v11 = [NSData dataWithContentsOfURL:v10];
  if (v11)
  {
    v19[0] = 0;
    v12 = [[PBKeyedUnarchiver alloc] initForReadingFromData:v11 error:v19];
    v13 = v19[0];
    [v12 setDecodingFailurePolicy:0];
    allowedClassesForSecureCoding = [self allowedClassesForSecureCoding];
    [v12 setAllowedClasses:allowedClassesForSecureCoding];

    v15 = [v12 decodeObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey];
    [v12 finishDecoding];
    v16 = v15;
    [v15 setStorageBaseURL:rLCopy];

    if (!error)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v13 = PBCannotUnserializePasteboardError();
    v16 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  if (v13)
  {
    v17 = v13;
    *error = v13;
  }

LABEL_7:

  return v16;
}

- (id)directoryName
{
  persistenceName = [(PBItemCollection *)self persistenceName];
  v3 = PBSHA1HashOfString();

  return v3;
}

- (id)serializeToBaseURL:(id)l isServerToServerCopy:(BOOL)copy allowedToCopyOnPaste:(BOOL)paste
{
  pasteCopy = paste;
  lCopy = l;
  directoryName = [(PBItemCollection *)self directoryName];
  v10 = [lCopy URLByAppendingPathComponent:directoryName isDirectory:1];
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = sub_10001A3C8;
  v46 = sub_10001A3D8;
  v47 = 0;
  v11 = +[NSFileManager defaultManager];
  path = [v10 path];
  v13 = [v11 fileExistsAtPath:path];

  if ((v13 & 1) == 0)
  {
    if ([(PBItemCollection *)self isDeviceLockedPasteboard])
    {
      v52 = NSFileProtectionKey;
      v53 = NSFileProtectionNone;
      v14 = [NSDictionary dictionaryWithObjects:&v53 forKeys:&v52 count:1];
    }

    else
    {
      v14 = 0;
    }

    path2 = [v10 path];
    v16 = (v43 + 5);
    obj = v43[5];
    [v11 createDirectoryAtPath:path2 withIntermediateDirectories:1 attributes:v14 error:&obj];
    objc_storeStrong(v16, obj);
  }

  if (v43[5])
  {
    name = [(PBItemCollection *)self name];
    v18 = PBCannotSerializePasteboardError();
    v19 = v43[5];
    v43[5] = v18;
  }

  else
  {
    v20 = dispatch_semaphore_create(0);
    isDeviceLockedPasteboard = [(PBItemCollection *)self isDeviceLockedPasteboard];
    v22 = &NSFileProtectionNone;
    if (!isDeviceLockedPasteboard)
    {
      v22 = &NSFileProtectionCompleteUntilFirstUserAuthentication;
    }

    v19 = *v22;
    items = [(PBItemCollection *)self items];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_10001A710;
    v38[3] = &unk_100031D00;
    v40 = &v42;
    name = v20;
    v39 = name;
    sub_10001A3E0(v10, items, v19, copy, pasteCopy, v38);

    dispatch_semaphore_wait(name, 0xFFFFFFFFFFFFFFFFLL);
    if (!v43[5])
    {
      v35 = [v10 URLByAppendingPathComponent:@"Manifest.plist" isDirectory:0];
      v37 = 0;
      v24 = [NSKeyedArchiver archivedDataWithRootObject:self requiringSecureCoding:1 error:&v37];
      v25 = v37;
      if (v24)
      {
        v26 = _PBLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          name2 = [(PBItemCollection *)self name];
          *buf = 138412546;
          v49 = name2;
          v50 = 2112;
          v51 = v35;
          v34 = name2;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Writing manifest for pasteboard %@ to URL: %@", buf, 0x16u);
        }

        v36 = v25;
        [v24 writeToURL:v35 options:0 error:&v36];
        v28 = v36;

        v25 = v28;
      }

      if (v25)
      {
        name3 = [(PBItemCollection *)self name];
        v30 = PBCannotSerializePasteboardError();
        v31 = v43[5];
        v43[5] = v30;
      }

      else
      {
        [(PBItemCollection *)self setIsRemote:0];
      }
    }
  }

  v32 = v43[5];
  _Block_object_dispose(&v42, 8);

  return v32;
}

- (void)setStorageBaseURL:(id)l
{
  lCopy = l;
  persistenceName = [(PBItemCollection *)self persistenceName];
  v6 = PBSHA1HashOfString();

  v7 = [lCopy URLByAppendingPathComponent:v6 isDirectory:1];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  items = [(PBItemCollection *)self items];
  v9 = [items countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(items);
        }

        [*(*(&v13 + 1) + 8 * v12) setStorageBaseURL:v7];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [items countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (unint64_t)authorizationDecisionForAuditTokenInfo:(id)info timestamp:(unint64_t)timestamp
{
  infoCopy = info;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 42;
  v7 = PBItemQueue();
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001A9D0;
  v11[3] = &unk_100031D28;
  v11[4] = self;
  v12 = infoCopy;
  v13 = &v15;
  timestampCopy = timestamp;
  v8 = infoCopy;
  dispatch_sync(v7, v11);

  v9 = v16[3];
  _Block_object_dispose(&v15, 8);
  return v9;
}

- (void)recordUserAuthorizationDecision:(BOOL)decision auditTokenInfo:(id)info
{
  infoCopy = info;
  v7 = PBItemQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001AAF8;
  block[3] = &unk_100031D50;
  decisionCopy = decision;
  block[4] = self;
  v10 = infoCopy;
  v8 = infoCopy;
  dispatch_sync(v7, block);
}

@end