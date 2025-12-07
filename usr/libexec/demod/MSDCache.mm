@interface MSDCache
+ (id)sharedInstance;
- (BOOL)checkIfFileIsInContainer:(id)container container:(id)a4;
- (BOOL)containerExist:(id)exist;
- (BOOL)createContainer:(id)container;
- (BOOL)deleteContainer:(id)container;
- (BOOL)deleteDataBlob:(id)blob;
- (BOOL)moveFile:(id)file toLocation:(id)location fromContainer:(id)container error:(id)error;
- (BOOL)storeDataBlob:(id)blob withContainerIdentifier:(id)identifier;
- (MSDCache)init;
- (id)retrieveDataBlob:(id)blob;
@end

@implementation MSDCache

+ (id)sharedInstance
{
  if (qword_1001A5690 != -1)
  {
    sub_1000CDAEC();
  }

  v3 = qword_1001A5688;

  return v3;
}

- (MSDCache)init
{
  v7.receiver = self;
  v7.super_class = MSDCache;
  v2 = [(MSDCache *)&v7 init];
  if (v2)
  {
    v3 = +[NSFileManager defaultManager];
    [(MSDCache *)v2 setFileManager:v3];

    v4 = +[MSDTargetDevice sharedInstance];
    [(MSDCache *)v2 setDevice:v4];

    v5 = v2;
  }

  return v2;
}

- (BOOL)createContainer:(id)container
{
  containerCopy = container;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  fileManager = [(MSDCache *)selfCopy fileManager];
  v7 = [fileManager fileExistsAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage"];

  if ((v7 & 1) == 0)
  {
    v9 = sub_100063A54(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138543362;
      v18 = containerCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "creating container:%{public}@", &v17, 0xCu);
    }

    device = [(MSDCache *)selfCopy device];
    [device manageDemoVolume:@"Setup"];
  }

  v11 = [@"/private/var/mnt/com.apple.mobilestoredemo.storage" stringByAppendingPathComponent:containerCopy];
  fileManager2 = [(MSDCache *)selfCopy fileManager];
  v13 = [fileManager2 fileExistsAtPath:v11];

  if (v13)
  {
    v14 = 1;
  }

  else
  {
    v15 = +[MSDHelperAgent sharedInstance];
    v14 = [v15 prepareWorkDirectory:v11 writableByNonRoot:1];
  }

  objc_sync_exit(selfCopy);
  return v14;
}

- (BOOL)containerExist:(id)exist
{
  existCopy = exist;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  fileManager = [(MSDCache *)selfCopy fileManager];
  v7 = [@"/private/var/mnt/com.apple.mobilestoredemo.storage" stringByAppendingPathComponent:existCopy];
  v8 = [fileManager fileExistsAtPath:v7];

  objc_sync_exit(selfCopy);
  return v8;
}

- (BOOL)deleteContainer:(id)container
{
  containerCopy = container;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [@"/private/var/mnt/com.apple.mobilestoredemo.storage" stringByAppendingPathComponent:containerCopy];
  fileManager = [(MSDCache *)selfCopy fileManager];
  v8 = [fileManager fileExistsAtPath:v6];

  if (v8)
  {
    v13 = sub_100063B64(v9);
    sub_1000CDB00(v13, v6);
    v11 = 0;
  }

  else
  {
    v10 = +[MSDHelperAgent sharedInstance];
    v11 = [v10 removeWorkDirectory:v6];
  }

  objc_sync_exit(selfCopy);
  return v11;
}

- (BOOL)checkIfFileIsInContainer:(id)container container:(id)a4
{
  containerCopy = container;
  v7 = a4;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [@"/private/var/mnt/com.apple.mobilestoredemo.storage" stringByAppendingPathComponent:v7];
  v10 = [v9 stringByAppendingPathComponent:containerCopy];
  fileManager = [(MSDCache *)selfCopy fileManager];
  v12 = [fileManager fileExistsAtPath:v10];

  objc_sync_exit(selfCopy);
  return v12;
}

- (BOOL)moveFile:(id)file toLocation:(id)location fromContainer:(id)container error:(id)error
{
  fileCopy = file;
  locationCopy = location;
  containerCopy = container;
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v15 = [@"/private/var/mnt/com.apple.mobilestoredemo.storage" stringByAppendingPathComponent:containerCopy];
  v16 = [v15 stringByAppendingPathComponent:fileCopy];
  fileManager = [(MSDCache *)selfCopy fileManager];
  v21 = errorCopy;
  v18 = [fileManager moveItemAtPath:v16 toPath:locationCopy error:&v21];
  v19 = v21;

  objc_sync_exit(selfCopy);
  return v18;
}

- (BOOL)storeDataBlob:(id)blob withContainerIdentifier:(id)identifier
{
  blobCopy = blob;
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [@"/private/var/mnt/com.apple.mobilestoredemo.storage" stringByAppendingPathComponent:identifierCopy];
  fileManager = [(MSDCache *)selfCopy fileManager];
  v11 = [fileManager fileExistsAtPath:v9];

  if ((v11 & 1) == 0)
  {
    v12 = [(MSDCache *)selfCopy createContainer:identifierCopy];
    if ((v12 & 1) == 0)
    {
      v17 = sub_100063B64(v12);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1000CDB94(identifierCopy, v17);
      }

      goto LABEL_10;
    }
  }

  v13 = [blobCopy length];
  if (v13 >= 0x400000)
  {
    v17 = sub_100063B64(v13);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1000CDC0C(v18, [blobCopy length], v17);
    }

LABEL_10:

    v15 = 0;
    v14 = @"PersistentDataBlob";
    goto LABEL_5;
  }

  v14 = [v9 stringByAppendingPathComponent:@"PersistentDataBlob"];
  v15 = [blobCopy writeToFile:v14 atomically:1];
LABEL_5:

  objc_sync_exit(selfCopy);
  return v15;
}

- (id)retrieveDataBlob:(id)blob
{
  blobCopy = blob;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [@"/private/var/mnt/com.apple.mobilestoredemo.storage" stringByAppendingPathComponent:blobCopy];
  fileManager = [(MSDCache *)selfCopy fileManager];
  v8 = [fileManager fileExistsAtPath:v6];

  if (v8)
  {
    v10 = [v6 stringByAppendingPathComponent:@"PersistentDataBlob"];
    fileManager2 = [(MSDCache *)selfCopy fileManager];
    v12 = [fileManager2 fileExistsAtPath:v10];

    if (v12)
    {
      v14 = [NSData dataWithContentsOfFile:v10];
      goto LABEL_8;
    }
  }

  else
  {
    v15 = sub_100063B64(v9);
    sub_1000CDC54(v15, v6);
    v10 = @"PersistentDataBlob";
  }

  v16 = sub_100063A54(v13);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138543362;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "persistent data blob file does not exist:%{public}@", &v18, 0xCu);
  }

  v14 = 0;
LABEL_8:

  objc_sync_exit(selfCopy);

  return v14;
}

- (BOOL)deleteDataBlob:(id)blob
{
  blobCopy = blob;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [@"/private/var/mnt/com.apple.mobilestoredemo.storage" stringByAppendingPathComponent:blobCopy];
  fileManager = [(MSDCache *)selfCopy fileManager];
  v8 = [fileManager fileExistsAtPath:v6];

  if (v8)
  {
    fileManager2 = [(MSDCache *)selfCopy fileManager];
    v14 = 0;
    v11 = [fileManager2 removeItemAtPath:v6 error:&v14];
    v12 = v14;
  }

  else
  {
    v12 = sub_100063B64(v9);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000CDCE8(v12);
    }

    v11 = 0;
  }

  objc_sync_exit(selfCopy);
  return v11;
}

@end