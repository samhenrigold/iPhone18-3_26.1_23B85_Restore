@interface SPGizmoCacheManager
+ (id)sharedInstance;
- (SPCompanionAppServer)companionAppServer;
- (SPGizmoCacheManager)init;
- (id)assetPath:(id)path cacheIdentifier:(id)identifier cacheType:(unint64_t)type;
- (id)cacheAssets:(id)assets cacheType:(unint64_t)type cacheIdentifier:(id)identifier;
- (id)cacheDirectory;
- (id)cacheDirectoryWithCacheIdentifier:(id)identifier;
- (id)cacheDirectoryWithCacheIdentifier:(id)identifier cacheType:(unint64_t)type;
- (void)addData:(id)data cacheIdentifier:(id)identifier completion:(id)completion;
- (void)clearAllCachedImages:(id)images cacheIdentifier:(id)identifier completion:(id)completion;
- (void)deleteCache:(id)cache;
- (void)deleteData:(id)data cacheIdentifier:(id)identifier completion:(id)completion;
- (void)getData:(id)data cacheIdentifier:(id)identifier completion:(id)completion;
- (void)processCacheDictionary:(id)dictionary connectionIdentifier:(id)identifier completion:(id)completion;
- (void)processCacheMessage:(id)message connectionIdentifier:(id)identifier completion:(id)completion;
- (void)processCacheMessageData:(id)data connectionIdentifier:(id)identifier;
- (void)sendCacheReply:(id)reply cacheIdentifier:(id)identifier;
- (void)setupCacheWithIdentifier:(id)identifier completion:(id)completion;
@end

@implementation SPGizmoCacheManager

- (SPGizmoCacheManager)init
{
  v5.receiver = self;
  v5.super_class = SPGizmoCacheManager;
  v2 = [(SPGizmoCacheManager *)&v5 init];
  v3 = v2;
  if (v2)
  {
    objc_storeWeak(&v2->_companionAppServer, 0);
  }

  return v3;
}

+ (id)sharedInstance
{
  if (qword_100051E40 != -1)
  {
    sub_10002ADF8();
  }

  v3 = qword_100051E48;

  return v3;
}

- (id)cacheDirectory
{
  if (qword_100051E58 != -1)
  {
    sub_10002AE0C();
  }

  v3 = qword_100051E50;

  return v3;
}

- (id)cacheDirectoryWithCacheIdentifier:(id)identifier
{
  identifierCopy = identifier;
  cacheDirectory = [(SPGizmoCacheManager *)self cacheDirectory];
  v9[0] = cacheDirectory;
  v9[1] = identifierCopy;
  v6 = [NSArray arrayWithObjects:v9 count:2];

  v7 = [NSString pathWithComponents:v6];

  return v7;
}

- (id)cacheDirectoryWithCacheIdentifier:(id)identifier cacheType:(unint64_t)type
{
  identifierCopy = identifier;
  cacheDirectory = [(SPGizmoCacheManager *)self cacheDirectory];
  v8 = @"t";
  v12 = cacheDirectory;
  v13 = identifierCopy;
  if (type == 1)
  {
    v8 = @"p";
  }

  v14 = v8;
  v9 = [NSArray arrayWithObjects:&v12 count:3];

  v10 = [NSString pathWithComponents:v9, v12, v13];

  return v10;
}

- (id)assetPath:(id)path cacheIdentifier:(id)identifier cacheType:(unint64_t)type
{
  identifierCopy = identifier;
  pathCopy = path;
  cacheDirectory = [(SPGizmoCacheManager *)self cacheDirectory];
  v11 = @"t";
  v16[0] = cacheDirectory;
  v16[1] = identifierCopy;
  if (type == 1)
  {
    v11 = @"p";
  }

  v16[2] = v11;
  _sp_stringByEncodingIllegalFilenameCharacters = [pathCopy _sp_stringByEncodingIllegalFilenameCharacters];

  v16[3] = _sp_stringByEncodingIllegalFilenameCharacters;
  v13 = [NSArray arrayWithObjects:v16 count:4];

  v14 = [NSString pathWithComponents:v13];

  return v14;
}

- (void)deleteCache:(id)cache
{
  v3 = [(SPGizmoCacheManager *)self cacheDirectoryWithCacheIdentifier:cache];
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  if (v5)
  {
    v6 = +[NSFileManager defaultManager];
    v10 = 0;
    [v6 removeItemAtPath:v3 error:&v10];
    v7 = v10;

    if (v7)
    {
      v9 = wk_default_log(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10002AEC8();
      }
    }
  }
}

- (void)processCacheMessageData:(id)data connectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = [SPProtoSerializer objectWithData:data];
  [(SPGizmoCacheManager *)self processCacheMessage:v7 connectionIdentifier:identifierCopy completion:0];
}

- (void)processCacheDictionary:(id)dictionary connectionIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  dictionaryCopy = dictionary;
  v11 = [[SPCacheMessage alloc] initWithDictionary:dictionaryCopy];

  [(SPGizmoCacheManager *)self processCacheMessage:v11 connectionIdentifier:identifierCopy completion:completionCopy];
}

- (void)processCacheMessage:(id)message connectionIdentifier:(id)identifier completion:(id)completion
{
  messageCopy = message;
  identifierCopy = identifier;
  completionCopy = completion;
  if ([messageCopy messageType] == 11)
  {
    [(SPGizmoCacheManager *)self setupCacheWithIdentifier:identifierCopy completion:completionCopy];
  }

  else if ([messageCopy messageType] == 3)
  {
    [(SPGizmoCacheManager *)self getData:messageCopy cacheIdentifier:identifierCopy completion:completionCopy];
  }

  else if ([messageCopy messageType] == 2)
  {
    [(SPGizmoCacheManager *)self addData:messageCopy cacheIdentifier:identifierCopy completion:completionCopy];
  }

  else if ([messageCopy messageType] == 4)
  {
    [(SPGizmoCacheManager *)self deleteData:messageCopy cacheIdentifier:identifierCopy completion:completionCopy];
  }

  else if ([messageCopy messageType] == 5)
  {
    [(SPGizmoCacheManager *)self clearAllCachedImages:messageCopy cacheIdentifier:identifierCopy completion:completionCopy];
  }
}

- (void)getData:(id)data cacheIdentifier:(id)identifier completion:(id)completion
{
  dataCopy = data;
  identifierCopy = identifier;
  completionCopy = completion;
  assetKey = [dataCopy assetKey];
  v12 = 2;
  v13 = [(SPGizmoCacheManager *)self assetPath:assetKey cacheIdentifier:identifierCopy cacheType:2];

  v14 = [NSData dataWithContentsOfFile:v13];
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    assetKey2 = [dataCopy assetKey];
    v12 = 1;
    v17 = [(SPGizmoCacheManager *)self assetPath:assetKey2 cacheIdentifier:identifierCopy cacheType:1];

    v14 = [NSData dataWithContentsOfFile:v17];
    if (!v14)
    {
      v24 = wk_default_log(0);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_10002AF4C(identifierCopy, dataCopy, v24);
      }

      if (!completionCopy)
      {
        v15 = 0;
        goto LABEL_11;
      }

      v25 = @"e";
      v26 = &off_10004AC80;
      v23 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v15 = 0;
      goto LABEL_9;
    }

    v15 = v14;
    v13 = v17;
  }

  v18 = wk_default_log(v14);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    assetKey3 = [dataCopy assetKey];
    *buf = 136447234;
    v30 = "[SPGizmoCacheManager getData:cacheIdentifier:completion:]";
    v31 = 1024;
    v32 = 132;
    v33 = 2114;
    v34 = identifierCopy;
    v35 = 1024;
    v36 = v12;
    v37 = 2114;
    v38 = assetKey3;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: cache id: %{public}@, type: %d, asset key: %{public}@", buf, 0x2Cu);
  }

  if (!completionCopy)
  {
    v17 = v13;
    goto LABEL_11;
  }

  v20 = +[NSFileManager defaultManager];
  v21 = +[NSDate date];
  v22 = [NSDictionary dictionaryWithObject:v21 forKey:NSFileModificationDate];
  [v20 setAttributes:v22 ofItemAtPath:v13 error:0];

  v27 = @"d";
  v28 = v15;
  v23 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v17 = v13;
LABEL_9:
  completionCopy[2](completionCopy, v23);

LABEL_11:
}

- (void)addData:(id)data cacheIdentifier:(id)identifier completion:(id)completion
{
  dataCopy = data;
  identifierCopy = identifier;
  completionCopy = completion;
  v11 = wk_default_log(completionCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    cacheType = [dataCopy cacheType];
    assetKey = [dataCopy assetKey];
    *buf = 136447234;
    v50 = "[SPGizmoCacheManager addData:cacheIdentifier:completion:]";
    v51 = 1024;
    v52 = 151;
    v53 = 2114;
    v54 = identifierCopy;
    v55 = 1024;
    v56 = cacheType;
    v57 = 2114;
    v58 = assetKey;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: cache id: %{public}@, type: %d, asset key: %{public}@", buf, 0x2Cu);
  }

  assetData = [dataCopy assetData];
  assetKey2 = [dataCopy assetKey];
  v16 = -[SPGizmoCacheManager assetPath:cacheIdentifier:cacheType:](self, "assetPath:cacheIdentifier:cacheType:", assetKey2, identifierCopy, [dataCopy cacheType]);

  v17 = +[NSFileManager defaultManager];
  v18 = [v17 fileExistsAtPath:v16];

  if (v18)
  {
    v19 = +[NSFileManager defaultManager];
    v38 = 0;
    [v19 removeItemAtPath:v16 error:&v38];
    v20 = v38;

    if (v20)
    {
      v22 = wk_default_log(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_10002B018();
      }

      if (completionCopy)
      {
        v47 = @"e";
        v48 = &off_10004AC80;
        v23 = &v48;
        v24 = &v47;
        goto LABEL_14;
      }

      v46[0] = &off_10004AC98;
      v45[0] = @"cmsg";
      v45[1] = @"a";
      assetKey3 = [dataCopy assetKey];
      v46[1] = assetKey3;
      v45[2] = @"t";
      v30 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [dataCopy cacheType]);
      v45[3] = @"e";
      v46[2] = v30;
      v46[3] = &off_10004AC80;
      v31 = v46;
      v32 = v45;
LABEL_21:
      v33 = [NSDictionary dictionaryWithObjects:v31 forKeys:v32 count:4];
      [(SPGizmoCacheManager *)self sendCacheReply:v33 cacheIdentifier:identifierCopy];

      goto LABEL_23;
    }
  }

  v37 = 0;
  [assetData writeToFile:v16 options:1 error:&v37];
  v25 = v37;
  v20 = v25;
  if (!completionCopy)
  {
    if (!v25)
    {
      v42[0] = &off_10004AC98;
      v41[0] = @"cmsg";
      v41[1] = @"a";
      assetKey4 = [dataCopy assetKey];
      v42[1] = assetKey4;
      v41[2] = @"t";
      v35 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [dataCopy cacheType]);
      v42[2] = v35;
      v36 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:3];
      [(SPGizmoCacheManager *)self sendCacheReply:v36 cacheIdentifier:identifierCopy];

      v20 = 0;
      goto LABEL_23;
    }

    v28 = wk_default_log(v25);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_10002B110();
    }

    v40[0] = &off_10004AC98;
    v39[0] = @"cmsg";
    v39[1] = @"a";
    assetKey3 = [dataCopy assetKey];
    v40[1] = assetKey3;
    v39[2] = @"t";
    v30 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [dataCopy cacheType]);
    v39[3] = @"e";
    v40[2] = v30;
    v40[3] = &off_10004AC80;
    v31 = v40;
    v32 = v39;
    goto LABEL_21;
  }

  if (!v25)
  {
    completionCopy[2](completionCopy, &__NSDictionary0__struct);
    goto LABEL_23;
  }

  v26 = wk_default_log(v25);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    sub_10002B094();
  }

  v43 = @"e";
  v44 = &off_10004AC80;
  v23 = &v44;
  v24 = &v43;
LABEL_14:
  v27 = [NSDictionary dictionaryWithObjects:v23 forKeys:v24 count:1];
  completionCopy[2](completionCopy, v27);

LABEL_23:
}

- (void)deleteData:(id)data cacheIdentifier:(id)identifier completion:(id)completion
{
  dataCopy = data;
  identifierCopy = identifier;
  completionCopy = completion;
  v11 = wk_default_log(completionCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    cacheType = [dataCopy cacheType];
    assetKey = [dataCopy assetKey];
    *buf = 136447234;
    v36 = "[SPGizmoCacheManager deleteData:cacheIdentifier:completion:]";
    v37 = 1024;
    v38 = 189;
    v39 = 2114;
    v40 = identifierCopy;
    v41 = 1024;
    v42 = cacheType;
    v43 = 2114;
    v44 = assetKey;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: cache id: %{public}@, type: %d, asset key: %{public}@", buf, 0x2Cu);
  }

  assetKey2 = [dataCopy assetKey];
  v15 = -[SPGizmoCacheManager assetPath:cacheIdentifier:cacheType:](self, "assetPath:cacheIdentifier:cacheType:", assetKey2, identifierCopy, [dataCopy cacheType]);

  v16 = +[NSFileManager defaultManager];
  v28 = 0;
  [v16 removeItemAtPath:v15 error:&v28];
  v17 = v28;

  if (completionCopy)
  {
    if (v17)
    {
      v19 = wk_default_log(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10002B18C();
      }

      v33 = @"e";
      v34 = &off_10004AC80;
      v20 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      completionCopy[2](completionCopy, v20);
    }

    else
    {
      completionCopy[2](completionCopy, &__NSDictionary0__struct);
    }
  }

  else
  {
    if (v17)
    {
      v21 = wk_default_log(v18);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_10002B208();
      }

      v30[0] = &off_10004ACB0;
      v29[0] = @"cmsg";
      v29[1] = @"a";
      assetKey3 = [dataCopy assetKey];
      v30[1] = assetKey3;
      v29[2] = @"t";
      v23 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [dataCopy cacheType]);
      v29[3] = @"e";
      v30[2] = v23;
      v30[3] = &off_10004AC80;
      v24 = v30;
      v25 = v29;
      v26 = 4;
    }

    else
    {
      v32[0] = &off_10004ACB0;
      v31[0] = @"cmsg";
      v31[1] = @"a";
      assetKey3 = [dataCopy assetKey];
      v32[1] = assetKey3;
      v31[2] = @"t";
      v23 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [dataCopy cacheType]);
      v32[2] = v23;
      v24 = v32;
      v25 = v31;
      v26 = 3;
    }

    v27 = [NSDictionary dictionaryWithObjects:v24 forKeys:v25 count:v26];
    [(SPGizmoCacheManager *)self sendCacheReply:v27 cacheIdentifier:identifierCopy];
  }
}

- (void)clearAllCachedImages:(id)images cacheIdentifier:(id)identifier completion:(id)completion
{
  imagesCopy = images;
  identifierCopy = identifier;
  completionCopy = completion;
  v10 = wk_default_log(completionCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v47 = "[SPGizmoCacheManager clearAllCachedImages:cacheIdentifier:completion:]";
    v48 = 1024;
    v49 = 214;
    v50 = 2114;
    v51 = identifierCopy;
    v52 = 1024;
    LODWORD(v53) = [imagesCopy cacheType];
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: cache id: %{public}@, type: %d", buf, 0x22u);
  }

  v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [imagesCopy cacheType]);
  selfCopy = self;
  v12 = -[SPGizmoCacheManager cacheDirectoryWithCacheIdentifier:cacheType:](self, "cacheDirectoryWithCacheIdentifier:cacheType:", identifierCopy, [v11 integerValue]);

  v13 = +[NSFileManager defaultManager];
  v14 = [v13 contentsOfDirectoryAtPath:v12 error:0];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v36 objects:v54 count:16];
  if (!v16)
  {

    v26 = completionCopy;
    if (completionCopy)
    {
      goto LABEL_18;
    }

LABEL_22:
    v43[0] = &off_10004ACC8;
    v42[0] = @"cmsg";
    v42[1] = @"t";
    v29 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [imagesCopy cacheType]);
    v43[1] = v29;
    v30 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:2];
    [(SPGizmoCacheManager *)selfCopy sendCacheReply:v30 cacheIdentifier:identifierCopy];

    goto LABEL_23;
  }

  v17 = v16;
  v31 = identifierCopy;
  v32 = imagesCopy;
  v18 = 0;
  v19 = *v37;
  do
  {
    v20 = 0;
    v21 = v18;
    do
    {
      if (*v37 != v19)
      {
        objc_enumerationMutation(v15);
      }

      v22 = [v12 stringByAppendingPathComponent:{*(*(&v36 + 1) + 8 * v20), v31}];
      v23 = +[NSFileManager defaultManager];
      v35 = v21;
      [v23 removeItemAtPath:v22 error:&v35];
      v18 = v35;

      if (v18)
      {
        v25 = wk_default_log(v24);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446978;
          v47 = "[SPGizmoCacheManager clearAllCachedImages:cacheIdentifier:completion:]";
          v48 = 1024;
          v49 = 224;
          v50 = 2114;
          v51 = v22;
          v52 = 2114;
          v53 = v18;
          _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%{public}s:%d: failed to delete asset at: %{public}@, error: %{public}@", buf, 0x26u);
        }
      }

      v20 = v20 + 1;
      v21 = v18;
    }

    while (v17 != v20);
    v17 = [v15 countByEnumeratingWithState:&v36 objects:v54 count:16];
  }

  while (v17);

  v26 = completionCopy;
  if (!completionCopy)
  {
    identifierCopy = v31;
    imagesCopy = v32;
    if (v18)
    {
      v41[0] = &off_10004ACC8;
      v40[0] = @"cmsg";
      v40[1] = @"t";
      v27 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v32 cacheType]);
      v40[2] = @"e";
      v41[1] = v27;
      v41[2] = &off_10004AC80;
      v28 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:3];
      [(SPGizmoCacheManager *)selfCopy sendCacheReply:v28 cacheIdentifier:v31];

      goto LABEL_21;
    }

    goto LABEL_22;
  }

  identifierCopy = v31;
  imagesCopy = v32;
  if (v18)
  {
    v44 = @"e";
    v45 = &off_10004AC80;
    v27 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
    (*(completionCopy + 2))(completionCopy, v27);
LABEL_21:

    goto LABEL_23;
  }

LABEL_18:
  (v26)[2](v26, &__NSDictionary0__struct);
LABEL_23:
}

- (void)setupCacheWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000260C8;
  block[3] = &unk_100045600;
  v12 = identifierCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = identifierCopy;
  dispatch_async(v8, block);
}

- (id)cacheAssets:(id)assets cacheType:(unint64_t)type cacheIdentifier:(id)identifier
{
  assetsCopy = assets;
  v94 = 0;
  v7 = +[NSFileManager defaultManager];
  v8 = [v7 fileExistsAtPath:assetsCopy isDirectory:&v94];

  if ((v8 & 1) != 0 || (+[NSFileManager defaultManager](NSFileManager, "defaultManager"), v9 = objc_claimAutoreleasedReturnValue(), v93 = 0, [v9 createDirectoryAtPath:assetsCopy withIntermediateDirectories:1 attributes:0 error:&v93], v10 = v93, v9, !v10))
  {
    v13 = +[NSFileManager defaultManager];
    v70 = assetsCopy;
    v14 = [[NSURL alloc] initFileURLWithPath:assetsCopy isDirectory:1];
    v15 = NSURLContentModificationDateKey;
    v16 = NSURLFileSizeKey;
    v107[0] = NSURLContentModificationDateKey;
    v107[1] = NSURLFileSizeKey;
    v17 = [NSArray arrayWithObjects:v107 count:2];
    v92 = 0;
    v69 = [v13 contentsOfDirectoryAtURL:v14 includingPropertiesForKeys:v17 options:0 error:&v92];
    v10 = v92;

    if (v10)
    {
      obj = wk_default_log(v18);
      if (!os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
      {
        v72 = 0;
        goto LABEL_9;
      }

      assetsCopy = v70;
      sub_10002B388();
      v72 = 0;
LABEL_10:
      v12 = v69;
      goto LABEL_11;
    }

    v72 = objc_opt_new();
    if (type == 2)
    {
      v90 = 0uLL;
      v91 = 0uLL;
      v88 = 0uLL;
      v89 = 0uLL;
      v12 = v69;
      obj = v69;
      v73 = [obj countByEnumeratingWithState:&v88 objects:v106 count:16];
      if (v73)
      {
        v10 = 0;
        v21 = *v89;
        *&v20 = 136446978;
        v68 = v20;
        v71 = *v89;
        while (1)
        {
          v22 = 0;
          do
          {
            if (*v89 != v21)
            {
              objc_enumerationMutation(obj);
            }

            v23 = *(*(&v88 + 1) + 8 * v22);
            v86 = 0;
            v87 = 0;
            v24 = [v23 getResourceValue:&v87 forKey:v15 error:{&v86, v68}];
            v25 = v87;
            v26 = v86;

            if (v24)
            {
              v84 = 0;
              v85 = 0;
              v28 = [v23 getResourceValue:&v85 forKey:v16 error:&v84];
              v29 = v85;
              v10 = v84;

              if ((v28 & 1) == 0)
              {
                lastPathComponent = wk_default_log(v30);
                if (os_log_type_enabled(lastPathComponent, OS_LOG_TYPE_ERROR))
                {
                  path = [v23 path];
                  *buf = 136447234;
                  v97 = "[SPGizmoCacheManager cacheAssets:cacheType:cacheIdentifier:]";
                  v98 = 1024;
                  v99 = 312;
                  v100 = 2114;
                  v101 = v70;
                  v102 = 2114;
                  v103 = path;
                  v104 = 2114;
                  v105 = v10;
                  _os_log_error_impl(&_mh_execute_header, lastPathComponent, OS_LOG_TYPE_ERROR, "%{public}s:%d: NSURLFileSizeKey failed at: %{public}@, for: %{public}@, error: %{public}@", buf, 0x30u);
                }

                goto LABEL_35;
              }

              v31 = v15;
              v32 = v16;
              v33 = +[NSDate date];
              [v33 timeIntervalSinceDate:v25];
              v35 = v34;

              if (v35 <= 2592000.0)
              {
                path2 = [v23 path];
                lastPathComponent = [path2 lastPathComponent];

                v43 = [SPCacheAsset alloc];
                stringByRemovingPercentEncoding = [lastPathComponent stringByRemovingPercentEncoding];
                v45 = [(SPCacheAsset *)v43 initWithName:stringByRemovingPercentEncoding size:[v29 unsignedIntegerValue] state:0 accessDate:v25];

                [v72 addAsset:v45];
                goto LABEL_34;
              }

              v36 = +[NSFileManager defaultManager];
              path3 = [v23 path];
              v83 = v10;
              [v36 removeItemAtPath:path3 error:&v83];
              v38 = v83;

              if (v38)
              {
                lastPathComponent = wk_default_log(v39);
                if (os_log_type_enabled(lastPathComponent, OS_LOG_TYPE_ERROR))
                {
                  path4 = [v23 path];
                  *buf = v68;
                  v97 = "[SPGizmoCacheManager cacheAssets:cacheType:cacheIdentifier:]";
                  v98 = 1024;
                  v99 = 317;
                  v100 = 2114;
                  v101 = path4;
                  v102 = 2114;
                  v103 = v38;
                  _os_log_error_impl(&_mh_execute_header, lastPathComponent, OS_LOG_TYPE_ERROR, "%{public}s:%d: removeItemAtPath failed at: %{public}@, error: %{public}@", buf, 0x26u);
                }

                v10 = v38;
LABEL_34:
                v16 = v32;
                v15 = v31;
                v21 = v71;
LABEL_35:

                goto LABEL_36;
              }

              v10 = 0;
              v16 = v32;
              v15 = v31;
              v21 = v71;
            }

            else
            {
              v29 = wk_default_log(v27);
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                path5 = [v23 path];
                *buf = 136447234;
                v97 = "[SPGizmoCacheManager cacheAssets:cacheType:cacheIdentifier:]";
                v98 = 1024;
                v99 = 308;
                v100 = 2114;
                v101 = v70;
                v102 = 2114;
                v103 = path5;
                v104 = 2114;
                v105 = v26;
                _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%{public}s:%d: NSURLContentModificationDateKey failed at: %{public}@, for: %{public}@, error: %{public}@", buf, 0x30u);
              }

              v10 = v26;
            }

LABEL_36:

            v22 = v22 + 1;
          }

          while (v73 != v22);
          v48 = [obj countByEnumeratingWithState:&v88 objects:v106 count:16];
          v73 = v48;
          if (!v48)
          {
            goto LABEL_9;
          }
        }
      }

LABEL_60:
      v10 = 0;
      assetsCopy = v70;
LABEL_11:

      goto LABEL_12;
    }

    v81 = 0uLL;
    v82 = 0uLL;
    v79 = 0uLL;
    v80 = 0uLL;
    v12 = v69;
    obj = v69;
    v49 = [obj countByEnumeratingWithState:&v79 objects:v95 count:16];
    if (!v49)
    {
      goto LABEL_60;
    }

    v50 = v49;
    v10 = 0;
    v51 = *v80;
LABEL_43:
    v52 = 0;
    while (1)
    {
      if (*v80 != v51)
      {
        objc_enumerationMutation(obj);
      }

      v53 = *(*(&v79 + 1) + 8 * v52);
      v77 = 0;
      v78 = 0;
      v54 = [v53 getResourceValue:&v78 forKey:NSURLContentModificationDateKey error:&v77];
      v55 = v78;
      v56 = v77;

      if ((v54 & 1) == 0)
      {
        v59 = wk_default_log(v57);
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          path6 = [v53 path];
          *buf = 136447234;
          v97 = "[SPGizmoCacheManager cacheAssets:cacheType:cacheIdentifier:]";
          v98 = 1024;
          v99 = 331;
          v100 = 2114;
          v101 = v70;
          v102 = 2114;
          v103 = path6;
          v104 = 2114;
          v105 = v56;
          _os_log_error_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "%{public}s:%d: NSURLContentModificationDateKey failed at: %{public}@, for: %{public}@, error: %{public}@", buf, 0x30u);
        }

        v10 = v56;
        goto LABEL_55;
      }

      v75 = 0;
      v76 = 0;
      v58 = [v53 getResourceValue:&v76 forKey:NSURLFileSizeKey error:&v75];
      v59 = v76;
      v10 = v75;

      if (v58)
      {
        path7 = [v53 path];
        lastPathComponent2 = [path7 lastPathComponent];

        v63 = [SPCacheAsset alloc];
        stringByRemovingPercentEncoding2 = [lastPathComponent2 stringByRemovingPercentEncoding];
        path8 = [(SPCacheAsset *)v63 initWithName:stringByRemovingPercentEncoding2 size:[v59 unsignedIntegerValue] state:0 accessDate:v55];

        [v72 addAsset:path8];
      }

      else
      {
        lastPathComponent2 = wk_default_log(v60);
        if (!os_log_type_enabled(lastPathComponent2, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_54;
        }

        path8 = [v53 path];
        *buf = 136447234;
        v97 = "[SPGizmoCacheManager cacheAssets:cacheType:cacheIdentifier:]";
        v98 = 1024;
        v99 = 335;
        v100 = 2114;
        v101 = v70;
        v102 = 2114;
        v103 = path8;
        v104 = 2114;
        v105 = v10;
        _os_log_error_impl(&_mh_execute_header, lastPathComponent2, OS_LOG_TYPE_ERROR, "%{public}s:%d: NSURLFileSizeKey failed at: %{public}@, for: %{public}@, error: %{public}@", buf, 0x30u);
      }

LABEL_54:
LABEL_55:

      if (v50 == ++v52)
      {
        v67 = [obj countByEnumeratingWithState:&v79 objects:v95 count:16];
        v50 = v67;
        if (!v67)
        {
LABEL_9:
          assetsCopy = v70;
          goto LABEL_10;
        }

        goto LABEL_43;
      }
    }
  }

  v12 = wk_default_log(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_10002B30C();
  }

  v72 = 0;
LABEL_12:

  return v72;
}

- (void)sendCacheReply:(id)reply cacheIdentifier:(id)identifier
{
  identifierCopy = identifier;
  replyCopy = reply;
  v7 = [[SPCacheMessage alloc] initWithDictionary:replyCopy];

  v8 = [SPProtoSerializer dataWithObject:v7];
  if (v8)
  {
    v9 = [SPIDSProtobuf cacheRequestWithProtoData:v8 identifier:identifierCopy];
    v10 = +[SPTransport sharedInstance];
    [v10 sendProtobuf:v9 sender:identifierCopy timeOut:0 securityType:&stru_100046480 withCompletion:60.0];
  }

  else
  {
    v9 = wk_default_log(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10002B404();
    }
  }
}

- (SPCompanionAppServer)companionAppServer
{
  WeakRetained = objc_loadWeakRetained(&self->_companionAppServer);

  return WeakRetained;
}

@end