@interface MBTemporaryDirectory
+ (id)sharedTemporaryDirectoryForTest:(id)test error:(id *)error;
+ (id)sharedTemporaryDirectoryIdentifiedBy:(id)by error:(id *)error;
+ (id)temporaryDirectoryOnSameVolumeAsPath:(id)path identifiedBy:(id)by error:(id *)error;
+ (id)userTemporaryDirectoryForPersona:(id)persona identifiedBy:(id)by error:(id *)error;
+ (id)userTemporaryDirectoryForTest:(id)test error:(id *)error;
- (BOOL)_purgeContentsAt:(int)at rPath:(id)path error:(id *)error;
- (BOOL)disposeWithError:(id *)error;
- (BOOL)purgeContentsWithError:(id *)error;
- (id)_initWithExistingFsRepPath:(char *)path identifier:(id)identifier;
- (void)dealloc;
- (void)disposeWithoutDeleting;
@end

@implementation MBTemporaryDirectory

+ (id)sharedTemporaryDirectoryForTest:(id)test error:(id *)error
{
  testCopy = test;
  if (![testCopy length])
  {
    sub_100014578();
  }

  if (qword_10002A190 != -1)
  {
    sub_100014564();
  }

  v6 = sub_100006F8C(qword_10002A188, testCopy, error);
  if (v6)
  {
    v6 = [[MBTemporaryDirectory alloc] _initWithExistingFsRepPath:v6 identifier:testCopy];
  }

  return v6;
}

+ (id)userTemporaryDirectoryForTest:(id)test error:(id *)error
{
  testCopy = test;
  if (![testCopy length])
  {
    sub_100014610();
  }

  if (qword_10002A1A0 != -1)
  {
    sub_1000145FC();
  }

  v6 = sub_100006F8C(qword_10002A198, testCopy, error);
  if (v6)
  {
    v6 = [[MBTemporaryDirectory alloc] _initWithExistingFsRepPath:v6 identifier:testCopy];
  }

  return v6;
}

+ (id)sharedTemporaryDirectoryIdentifiedBy:(id)by error:(id *)error
{
  byCopy = by;
  if (![byCopy length])
  {
    sub_100014650();
  }

  if (qword_10002A1B0 != -1)
  {
    sub_10001463C();
  }

  v6 = sub_100006F8C(qword_10002A1A8, byCopy, error);
  if (v6)
  {
    v6 = [[MBTemporaryDirectory alloc] _initWithExistingFsRepPath:v6 identifier:byCopy];
  }

  return v6;
}

+ (id)userTemporaryDirectoryForPersona:(id)persona identifiedBy:(id)by error:(id *)error
{
  personaCopy = persona;
  byCopy = by;
  if (!personaCopy)
  {
    sub_1000146A8();
  }

  v9 = byCopy;
  if (![byCopy length])
  {
    sub_10001467C();
  }

  volumeMountPoint = [personaCopy volumeMountPoint];
  v11 = [volumeMountPoint stringByAppendingPathComponent:@"tmp"];
  v12 = [v11 stringByAppendingPathComponent:@"com.apple.backup"];
  fileSystemRepresentation = [v12 fileSystemRepresentation];

  sub_100007370(fileSystemRepresentation);
  v14 = sub_100006F8C(fileSystemRepresentation, v9, error);
  if (v14)
  {
    v14 = [[MBTemporaryDirectory alloc] _initWithExistingFsRepPath:v14 identifier:v9];
  }

  return v14;
}

+ (id)temporaryDirectoryOnSameVolumeAsPath:(id)path identifiedBy:(id)by error:(id *)error
{
  pathCopy = path;
  byCopy = by;
  if (!pathCopy)
  {
    sub_100014758();
  }

  v9 = byCopy;
  if (![byCopy length])
  {
    sub_10001472C();
  }

  if (!error)
  {
    sub_100014700();
  }

  v10 = [MBFileSystemManager volumeMountPointForFile:pathCopy error:error];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 stringByAppendingPathComponent:@"tmp"];
    v13 = [v12 stringByAppendingPathComponent:@"com.apple.backup"];
    fileSystemRepresentation = [v13 fileSystemRepresentation];

    sub_100007370(fileSystemRepresentation);
    v15 = sub_100006F8C(fileSystemRepresentation, v9, error);
    if (v15)
    {
      v15 = [[MBTemporaryDirectory alloc] _initWithExistingFsRepPath:v15 identifier:v9];
    }
  }

  else
  {
    v16 = MBGetDefaultLog(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = *error;
      *buf = 138412546;
      v20 = pathCopy;
      v21 = 2112;
      v22 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "=tmpdir= could not find mount point for %@: %@", buf, 0x16u);
      _MBLog(@"E ", "=tmpdir= could not find mount point for %@: %@", pathCopy, *error);
    }

    v15 = 0;
  }

  return v15;
}

- (id)_initWithExistingFsRepPath:(char *)path identifier:(id)identifier
{
  identifierCopy = identifier;
  if (!path)
  {
    sub_1000147B0();
  }

  v8 = identifierCopy;
  if (!identifierCopy)
  {
    sub_100014784();
  }

  v13.receiver = self;
  v13.super_class = MBTemporaryDirectory;
  v9 = [(MBTemporaryDirectory *)&v13 init];
  if (v9)
  {
    v10 = [NSString mb_stringWithFileSystemRepresentation:path];
    path = v9->_path;
    v9->_path = v10;

    v9->_fsRepPath = path;
    objc_storeStrong(&v9->_identifier, identifier);
  }

  return v9;
}

- (BOOL)purgeContentsWithError:(id *)error
{
  path = [(MBTemporaryDirectory *)self path];
  stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];

  v7 = sub_10000764C([stringByDeletingLastPathComponent fileSystemRepresentation]);
  v8 = +[NSFileManager defaultManager];
  path2 = [(MBTemporaryDirectory *)self path];
  v24 = 0;
  v10 = [v8 moveItemAtPath:path2 toPath:v7 error:&v24];
  v11 = v24;

  if (v10)
  {
    path3 = [(MBTemporaryDirectory *)self path];
    v23 = v11;
    v14 = [v8 createDirectoryAtPath:path3 withIntermediateDirectories:0 attributes:0 error:&v23];
    v15 = v23;

    if (v14)
    {
      v17 = [(MBTemporaryDirectory *)self _purgeContentsAt:4294967294 rPath:v7 error:error];
    }

    else
    {
      v20 = MBGetDefaultLog(v16);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        selfCopy2 = self;
        v27 = 2112;
        v28 = v15;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "=tmpdir= %@ failed to create new contents directory: %@", buf, 0x16u);
        _MBLog(@"E ", "=tmpdir= %@ failed to create new contents directory: %@", self, v15);
      }

      if (error)
      {
        v21 = v15;
        v17 = 0;
        *error = v15;
      }

      else
      {
        v17 = 0;
      }
    }

    v11 = v15;
  }

  else
  {
    v18 = MBGetDefaultLog(v12);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      selfCopy2 = self;
      v27 = 2112;
      v28 = v11;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "=tmpdir= %@ failed to move contents aside to purge: %@", buf, 0x16u);
      _MBLog(@"E ", "=tmpdir= %@ failed to move contents aside to purge: %@", self, v11);
    }

    if (error)
    {
      v19 = v11;
      v17 = 0;
      *error = v11;
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

- (BOOL)_purgeContentsAt:(int)at rPath:(id)path error:(id *)error
{
  pathCopy = path;
  if ([&stru_1000254E0 isEqualToString:pathCopy])
  {

    pathCopy = @".";
  }

  v9 = +[NSMutableArray array];
  v10 = removefile_state_alloc();
  removefile_state_set(v10, 4u, v9);
  removefile_state_set(v10, 3u, sub_100007B4C);
  v11 = removefileat(at, [(__CFString *)pathCopy fileSystemRepresentation], v10, 0x301u);
  removefile_state_free(v10);
  if (v11)
  {
    v12 = [MBError errorWithErrors:v9];
    v13 = MBGetDefaultLog(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      selfCopy = self;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "=tmpdir= failed to delete %@: %@", buf, 0x16u);
      _MBLog(@"E ", "=tmpdir= failed to delete %@: %@", self, v12);
    }

    if (error)
    {
      v14 = v12;
      *error = v12;
    }
  }

  return v11 == 0;
}

- (void)disposeWithoutDeleting
{
  obj = self;
  objc_sync_enter(obj);
  obj->_disposed = 1;
  objc_sync_exit(obj);
}

- (BOOL)disposeWithError:(id *)error
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_disposed = 1;
  path = [(MBTemporaryDirectory *)selfCopy path];
  LOBYTE(error) = [(MBTemporaryDirectory *)selfCopy _purgeContentsAt:4294967294 rPath:path error:error];

  objc_sync_exit(selfCopy);
  return error;
}

- (void)dealloc
{
  if (!self->_disposed)
  {
    v3 = MBGetDefaultLog(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "=tmpdir= %@ was not disposed before dealloc", buf, 0xCu);
      _MBLog(@"E ", "=tmpdir= %@ was not disposed before dealloc", self);
    }
  }

  free(self->_fsRepPath);
  self->_fsRepPath = 0;
  v4.receiver = self;
  v4.super_class = MBTemporaryDirectory;
  [(MBTemporaryDirectory *)&v4 dealloc];
}

@end