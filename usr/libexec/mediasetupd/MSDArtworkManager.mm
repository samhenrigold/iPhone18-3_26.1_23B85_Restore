@interface MSDArtworkManager
- (BOOL)removeCachedIconImage;
- (MSDArtworkManager)initWithServiceID:(id)d remoteImageURL:(id)l;
- (id)_fetchImageFromInternetURL;
- (id)_returnGenericAppIcon;
- (id)_saveDataInLocalCacheDir:(id)dir withName:(id)name;
- (id)_saveISIconInLocalCacheDir:(id)dir withName:(id)name;
- (id)getLocalCachedImageURL;
- (void)getDataFromURL:(id)l completionHandler:(id)handler;
@end

@implementation MSDArtworkManager

- (MSDArtworkManager)initWithServiceID:(id)d remoteImageURL:(id)l
{
  dCopy = d;
  lCopy = l;
  v30.receiver = self;
  v30.super_class = MSDArtworkManager;
  v9 = [(MSDArtworkManager *)&v30 init];
  v10 = v9;
  if (!v9)
  {
LABEL_8:
    v23 = v10;
    goto LABEL_12;
  }

  if (dCopy)
  {
    objc_storeStrong(&v9->_serviceID, d);
    objc_storeStrong(&v10->_remoteImageURL, l);
    v11 = [NSString stringWithFormat:@"%@", v10->_serviceID];
    serviceIconImageName = v10->_serviceIconImageName;
    v10->_serviceIconImageName = v11;

    v13 = [(NSString *)v10->_serviceIconImageName stringByAppendingPathExtension:@"png"];
    v14 = v10->_serviceIconImageName;
    v10->_serviceIconImageName = v13;

    *&v10->_iconImageScale = xmmword_1000420F0;
    v10->_iconImageSize.height = 256.0;
    v15 = +[NSFileManager defaultManager];
    v29 = 0;
    v16 = [v15 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:0 error:&v29];
    v17 = v29;
    localCacheDirURL = v10->_localCacheDirURL;
    v10->_localCacheDirURL = v16;

    v19 = [(NSURL *)v10->_localCacheDirURL URLByAppendingPathComponent:@"com.apple.mediasetupd"];
    v20 = v10->_localCacheDirURL;
    v10->_localCacheDirURL = v19;

    if (v17)
    {
      v22 = sub_100030FE4(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_1000045B4();
      }
    }

    objc_initWeak(&location, v10);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100003890;
    block[3] = &unk_1000509C0;
    objc_copyWeak(&v27, &location);
    dispatch_async(&_dispatch_main_q, block);
    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);

    goto LABEL_8;
  }

  v24 = sub_100030FE4(v9);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    sub_100004624();
  }

  v23 = 0;
LABEL_12:

  return v23;
}

- (id)getLocalCachedImageURL
{
  v3 = [(NSURL *)self->_localCacheDirURL URLByAppendingPathComponent:self->_serviceIconImageName];
  if ([(NSString *)self->_serviceID isEqualToString:kAppleMusicServiceIdentifier])
  {
    v4 = [ISIcon alloc];
    _fetchImageFromInternetURL = [v4 initWithBundleIdentifier:kAppleMusicBundleIdentifier];
    v6 = [(MSDArtworkManager *)self _saveISIconInLocalCacheDir:_fetchImageFromInternetURL withName:self->_serviceIconImageName];
  }

  else
  {
    v7 = +[NSFileManager defaultManager];
    path = [v3 path];
    v9 = [v7 fileExistsAtPath:path];

    if (v9)
    {
      v10 = v3;
      goto LABEL_10;
    }

    _fetchImageFromInternetURL = [(MSDArtworkManager *)self _fetchImageFromInternetURL];
    if (_fetchImageFromInternetURL)
    {
      [(MSDArtworkManager *)self _saveDataInLocalCacheDir:_fetchImageFromInternetURL withName:self->_serviceIconImageName];
    }

    else
    {
      [(MSDArtworkManager *)self _returnGenericAppIcon];
    }
    v6 = ;
  }

  v10 = v6;

LABEL_10:

  return v10;
}

- (id)_returnGenericAppIcon
{
  v3 = +[ISIcon genericApplicationIcon];
  v4 = [(MSDArtworkManager *)self _saveISIconInLocalCacheDir:v3 withName:@"genericIcon.png"];

  return v4;
}

- (id)_saveDataInLocalCacheDir:(id)dir withName:(id)name
{
  dirCopy = dir;
  nameCopy = name;
  v8 = nameCopy;
  if (!dirCopy)
  {
    v22 = sub_100030FE4(nameCopy);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_100004754();
    }

    goto LABEL_17;
  }

  if (!nameCopy)
  {
    v22 = sub_100030FE4(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_100004714();
    }

LABEL_17:

LABEL_18:
    v23 = 0;
    goto LABEL_19;
  }

  v9 = +[NSFileManager defaultManager];
  localCacheDirURL = self->_localCacheDirURL;
  p_localCacheDirURL = &self->_localCacheDirURL;
  path = [(NSURL *)localCacheDirURL path];
  v13 = [v9 fileExistsAtPath:path];

  if ((v13 & 1) == 0)
  {
    v15 = sub_100030FE4(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      path2 = [(NSURL *)*p_localCacheDirURL path];
      *buf = 138477827;
      v29 = path2;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Directory for icon file path (%{private}@) does not exist, will try to create now", buf, 0xCu);
    }

    v17 = +[NSFileManager defaultManager];
    v18 = *p_localCacheDirURL;
    v27 = 0;
    [v17 createDirectoryAtURL:v18 withIntermediateDirectories:1 attributes:0 error:&v27];
    v19 = v27;

    if (v19)
    {
      v21 = sub_100030FE4(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_100004664(p_localCacheDirURL, v19, v21);
      }

      goto LABEL_18;
    }
  }

  v23 = [(NSURL *)*p_localCacheDirURL URLByAppendingPathComponent:v8];
  v24 = sub_100030FE4(v23);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    path3 = [v23 path];
    *buf = 138478083;
    v29 = dirCopy;
    v30 = 2113;
    v31 = path3;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Saving image %{private}@ to path %{private}@", buf, 0x16u);
  }

  [dirCopy writeToURL:v23 atomically:1];
LABEL_19:

  return v23;
}

- (id)_saveISIconInLocalCacheDir:(id)dir withName:(id)name
{
  nameCopy = name;
  dirCopy = dir;
  v8 = [[ISImageDescriptor alloc] initWithSize:self->_iconImageSize.width scale:{self->_iconImageSize.height, self->_iconImageScale}];
  [v8 setShouldApplyMask:0];
  v9 = [dirCopy prepareImageForDescriptor:v8];

  v10 = +[UIImage imageWithCGImage:](UIImage, "imageWithCGImage:", [v9 CGImage]);
  v11 = UIImagePNGRepresentation(v10);
  v12 = [(MSDArtworkManager *)self _saveDataInLocalCacheDir:v11 withName:nameCopy];

  return v12;
}

- (id)_fetchImageFromInternetURL
{
  if (self->_remoteImageURL)
  {
    v3 = dispatch_group_create();
    dispatch_group_enter(v3);
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = sub_100003FD0;
    v16 = sub_100003FE0;
    v17 = 0;
    remoteImageURL = self->_remoteImageURL;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100003FE8;
    v9[3] = &unk_1000509E8;
    v11 = &v12;
    v5 = v3;
    v10 = v5;
    [(MSDArtworkManager *)self getDataFromURL:remoteImageURL completionHandler:v9];
    v6 = dispatch_time(0, 1000000000 * MSMaxWaitTimeForServiceIconDownload);
    dispatch_group_wait(v5, v6);
    v7 = v13[5];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v5 = sub_100030FE4(self);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100004794();
    }

    v7 = 0;
  }

  return v7;
}

- (void)getDataFromURL:(id)l completionHandler:(id)handler
{
  handlerCopy = handler;
  lCopy = l;
  v7 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
  v8 = [NSURLSession sessionWithConfiguration:v7];

  v9 = [[NSURLRequest alloc] initWithURL:lCopy];
  v11 = sub_100030FE4(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v9 URL];
    *buf = 138412546;
    v18 = v12;
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Executing fetch %@ withSession %@", buf, 0x16u);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000425C;
  v15[3] = &unk_100050A10;
  v16 = handlerCopy;
  v13 = handlerCopy;
  v14 = [v8 dataTaskWithRequest:v9 completionHandler:v15];
  [v14 resume];
  [v8 finishTasksAndInvalidate];
}

- (BOOL)removeCachedIconImage
{
  v2 = [(NSURL *)self->_localCacheDirURL URLByAppendingPathComponent:self->_serviceIconImageName];
  v3 = +[NSFileManager defaultManager];
  path = [v2 path];
  v5 = [v3 fileExistsAtPath:path];

  v7 = sub_100030FE4(v6);
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      path2 = [v2 path];
      *buf = 138477827;
      v17 = path2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Going to remove item at URL %{private}@", buf, 0xCu);
    }

    v10 = +[NSFileManager defaultManager];
    v15 = 0;
    [v10 removeItemAtURL:v2 error:&v15];
    v8 = v15;

    if (!v8)
    {
      v13 = 1;
      goto LABEL_11;
    }

    v12 = sub_100030FE4(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100004978();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_100004908();
  }

  v13 = 0;
LABEL_11:

  return v13;
}

@end