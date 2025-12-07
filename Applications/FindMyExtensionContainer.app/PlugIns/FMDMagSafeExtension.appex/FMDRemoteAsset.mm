@interface FMDRemoteAsset
- (FMDRemoteAsset)initWithAccessoryType:(id)type style:(id)style type:(unint64_t)a5;
- (id)assetStorageLocation;
- (id)assetURL;
- (id)getStoredAssetLocation;
- (id)name;
- (void)fetchAssetWithCompletion:(id)completion;
@end

@implementation FMDRemoteAsset

- (FMDRemoteAsset)initWithAccessoryType:(id)type style:(id)style type:(unint64_t)a5
{
  typeCopy = type;
  styleCopy = style;
  v17.receiver = self;
  v17.super_class = FMDRemoteAsset;
  v11 = [(FMDRemoteAsset *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_rawAccessoryType, type);
    v13 = [NSString stringWithFormat:@"MFI4.0v1_%@", v12->_rawAccessoryType];
    v14 = [FMDExtHelper _computehash:v13];
    accessoryType = v12->_accessoryType;
    v12->_accessoryType = v14;

    objc_storeStrong(&v12->_style, style);
    v12->_assetType = a5;
  }

  return v12;
}

- (id)name
{
  assetType = [(FMDRemoteAsset *)self assetType];
  if (assetType > 3)
  {
    v7 = 0;
  }

  else
  {
    v4 = off_100025770[assetType];
    rawAccessoryType = [(FMDRemoteAsset *)self rawAccessoryType];
    style = [(FMDRemoteAsset *)self style];
    v7 = [NSString stringWithFormat:v4, rawAccessoryType, style];
  }

  return v7;
}

- (id)assetURL
{
  name = [(FMDRemoteAsset *)self name];
  v3 = [NSString stringWithFormat:@"https://statici.icloud.com/fmipmobile/deviceImages-9.0/Accessory/%@", name];

  v4 = [NSURL URLWithString:v3];

  return v4;
}

- (id)assetStorageLocation
{
  name = [(FMDRemoteAsset *)self name];
  v3 = [NSString stringWithFormat:@"/var/mobile/Library/Caches/com.apple.icloud.findmydeviced/Assets/%@", name];

  return v3;
}

- (void)fetchAssetWithCompletion:(id)completion
{
  completionCopy = completion;
  assetStorageLocation = [(FMDRemoteAsset *)self assetStorageLocation];
  v6 = +[NSFileManager defaultManager];
  v7 = sub_100004FC8(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v42 = assetStorageLocation;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "FMDRemoteAsset: file location = %@", buf, 0xCu);
  }

  if ([v6 fileExistsAtPath:assetStorageLocation])
  {
    if (-[FMDRemoteAsset assetType](self, "assetType") || (v8 = objc_opt_new(), v9 = [v8 isValidVideoAtFilePath:assetStorageLocation], v8, v9))
    {
      completionCopy[2](completionCopy, assetStorageLocation, 0);
      goto LABEL_17;
    }

    v11 = sub_100004FC8(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "FMDRemoteAsset: Removing invalid cached asset.", buf, 2u);
    }

    v40 = 0;
    [v6 removeItemAtPath:assetStorageLocation error:&v40];
    v12 = v40;
    v13 = v12;
    if (v12)
    {
      v14 = sub_100004FC8(v12);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100015A0C(v13, v14, v15, v16, v17, v18, v19, v20);
      }
    }
  }

  assetURL = [(FMDRemoteAsset *)self assetURL];
  v22 = [FMDRemoteAssetValidator alloc];
  v23 = objc_opt_new();
  v24 = [(FMDRemoteAssetValidator *)v22 initWithRequestURL:assetURL mimeTypeProvider:v23];

  v25 = +[NSURLSession sharedSession];
  v31 = _NSConcreteStackBlock;
  v32 = 3221225472;
  v33 = sub_10000F5B0;
  v34 = &unk_100025750;
  v35 = v24;
  v39 = completionCopy;
  v36 = assetURL;
  v37 = assetStorageLocation;
  v38 = v6;
  v26 = assetURL;
  v27 = v24;
  v28 = [v25 downloadTaskWithURL:v26 completionHandler:&v31];

  v30 = sub_100004FC8(v29);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "FMDRemoteAsset: task resumed", buf, 2u);
  }

  [v28 resume];
LABEL_17:
}

- (id)getStoredAssetLocation
{
  assetStorageLocation = [(FMDRemoteAsset *)self assetStorageLocation];
  v3 = +[NSFileManager defaultManager];
  v4 = sub_100004FC8(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = assetStorageLocation;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "FMDRemoteAsset: file location = %@", &v7, 0xCu);
  }

  if ([v3 fileExistsAtPath:assetStorageLocation])
  {
    v5 = assetStorageLocation;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end