@interface NSFileManager
- (void)fm_migrateFileFromURL:(id)l toURL:(id)rL;
@end

@implementation NSFileManager

- (void)fm_migrateFileFromURL:(id)l toURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  v7 = rLCopy;
  if (!lCopy || !rLCopy)
  {
    v14 = sub_1000011D8(rLCopy);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v23 = lCopy;
      v24 = 2112;
      v25 = v7;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Skipping file migration due to nil url, from %@ to %@.", buf, 0x16u);
    }

    goto LABEL_15;
  }

  v8 = +[NSFileManager defaultManager];
  path = [lCopy path];
  v10 = [v8 fileExistsAtPath:path];

  if (v10)
  {
    v12 = sub_1000011D8(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v23 = lCopy;
      v24 = 2112;
      v25 = v7;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Migrating file from %@ to %@", buf, 0x16u);
    }

    v13 = +[NSFileManager defaultManager];
    v21 = 0;
    [v13 copyItemAtURL:lCopy toURL:v7 error:&v21];
    v14 = v21;

    if (v14)
    {
      v16 = sub_1000011D8(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_100015C2C(v14, v16);
      }
    }

    else
    {
      v17 = +[NSFileManager defaultManager];
      v20 = 0;
      [v17 removeItemAtURL:lCopy error:&v20];
      v18 = v20;

      if (!v18)
      {
LABEL_15:

        goto LABEL_16;
      }

      v16 = sub_1000011D8(v19);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_100015CA4(v16);
      }
    }

    goto LABEL_15;
  }

LABEL_16:
}

@end