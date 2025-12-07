@interface MSDAppIcon
+ (id)getIconImageForApp:(id)app withSize:(CGSize)size andScale:(float)scale;
+ (id)getIconImagesOfVisibleAppsWithSize:(CGSize)size andScale:(float)scale;
@end

@implementation MSDAppIcon

+ (id)getIconImageForApp:(id)app withSize:(CGSize)size andScale:(float)scale
{
  height = size.height;
  width = size.width;
  appCopy = app;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  if (!appCopy)
  {
    v9 = sub_100063A54(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000C4E64(v9);
    }

    goto LABEL_25;
  }

  v9 = [[ISIcon alloc] initWithBundleIdentifier:appCopy];
  if (!v9)
  {
    v9 = sub_100063A54(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000C4DEC();
    }

    goto LABEL_25;
  }

  v10 = [[ISImageDescriptor alloc] initWithSize:width scale:{height, scale}];
  if (!v10)
  {
    v19 = sub_100063A54(0);
    sub_1000C4D3C(v19, appCopy);
LABEL_25:
    v17 = 0;
    goto LABEL_10;
  }

  v22 = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_100005368;
  v25 = &unk_100169BC0;
  v27 = &v28;
  v11 = dispatch_semaphore_create(0);
  v26 = v11;
  [v9 getCGImageForImageDescriptor:v10 completion:&v22];

  v12 = dispatch_time(0, 5000000000);
  v13 = dispatch_semaphore_wait(v11, v12);
  if (v13)
  {
    v20 = sub_100063A54(v13);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1000C4B8C();
    }

    goto LABEL_24;
  }

  if (!v29[3])
  {
    v21 = sub_100063A54(0);
    sub_1000C4C7C(v21, v11, v10);
    goto LABEL_25;
  }

  v14 = [UIImage imageWithCGImage:v22, v23, v24, v25];
  v15 = v14;
  if (!v14)
  {
    v20 = sub_100063A54(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1000C4C04();
    }

LABEL_24:

    goto LABEL_25;
  }

  v16 = sub_100063A54(v14);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v33 = "+[MSDAppIcon getIconImageForApp:withSize:andScale:]";
    v34 = 2114;
    v35 = appCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s - Found icon image for app:  %{public}@", buf, 0x16u);
  }

  v17 = v15;
LABEL_10:

  _Block_object_dispose(&v28, 8);

  return v17;
}

+ (id)getIconImagesOfVisibleAppsWithSize:(CGSize)size andScale:(float)scale
{
  height = size.height;
  width = size.width;
  v7 = +[NSMutableDictionary dictionary];
  v8 = +[MSDAppHelper sharedInstance];
  visibleApps = [v8 visibleApps];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = visibleApps;
  v11 = [v10 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v11)
  {
    v14 = v11;
    v15 = *v27;
    *&v12 = 136315394;
    v25 = v12;
    do
    {
      v16 = 0;
      do
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v26 + 1) + 8 * v16);
        *&v13 = scale;
        v18 = [MSDAppIcon getIconImageForApp:v17 withSize:width andScale:height, v13, v25, v26];
        v19 = v18;
        if (v18)
        {
          v20 = UIImageJPEGRepresentation(v18, 1.0);
          if (v20 || (UIImagePNGRepresentation(v19), (v20 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v21 = v20;
            [v7 setObject:v20 forKey:v17];
          }

          else
          {
            v21 = sub_100063A54(0);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              *buf = v25;
              v31 = "+[MSDAppIcon getIconImagesOfVisibleAppsWithSize:andScale:]";
              v32 = 2114;
              v33 = v17;
              _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s - Icon has neither JPEG nor PNG representation:  %{public}@", buf, 0x16u);
            }
          }
        }

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v22 = [v10 countByEnumeratingWithState:&v26 objects:v34 count:16];
      v14 = v22;
    }

    while (v22);
  }

  v23 = [NSDictionary dictionaryWithDictionary:v7];

  return v23;
}

@end