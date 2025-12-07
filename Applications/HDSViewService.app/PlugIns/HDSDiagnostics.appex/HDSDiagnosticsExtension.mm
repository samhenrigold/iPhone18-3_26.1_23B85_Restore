@interface HDSDiagnosticsExtension
+ (id)cacheDirectory;
+ (id)productionCacheDirectory;
- (id)attachmentList;
- (id)attachmentsForParameters:(id)parameters;
- (void)cleanupDiagnostics;
- (void)teardownWithParameters:(id)parameters;
@end

@implementation HDSDiagnosticsExtension

+ (id)cacheDirectory
{
  v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v3 = [v2 objectAtIndex:0];

  return v3;
}

+ (id)productionCacheDirectory
{
  v2 = +[NSFileManager defaultManager];
  v3 = +[HDSDiagnosticsExtension appGroupIdentifier];
  v4 = [v2 containerURLForSecurityApplicationGroupIdentifier:v3];
  path = [v4 path];

  v6 = [NSString stringWithFormat:@"%@%@", path, @"/Library/Caches"];

  return v6;
}

- (id)attachmentList
{
  v2 = +[NSFileManager defaultManager];
  v3 = +[HDSDiagnosticsExtension productionCacheDirectory];
  v4 = [NSURL fileURLWithPath:v3 isDirectory:1 relativeToURL:0];

  v6 = sub_100001164(v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (!v4)
  {
    if (v7)
    {
      *buf = 138412290;
      v46 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Unable to find directory: %@.", buf, 0xCu);
    }

    v9 = 0;
    goto LABEL_26;
  }

  if (v7)
  {
    *buf = 138412290;
    v46 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, " Looking for contents in %@.", buf, 0xCu);
  }

  v43 = 0;
  v6 = [v2 contentsOfDirectoryAtURL:v4 includingPropertiesForKeys:&__NSArray0__struct options:0 error:&v43];
  v8 = v43;
  v9 = v8;
  if (!v6)
  {
    v10 = sub_100001164(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v46 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Unable to find contents in directory: %@.", buf, 0xCu);
    }

    v27 = &__NSArray0__struct;
    goto LABEL_34;
  }

  if (![v6 count])
  {
LABEL_26:
    v27 = &__NSArray0__struct;
    goto LABEL_35;
  }

  v10 = [[NSDate alloc] initWithTimeIntervalSince1970:0.0];
  v11 = [NSMutableArray arrayWithCapacity:[v6 count]];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v6;
  v12 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v12)
  {
    v13 = v12;
    v29 = v11;
    v30 = v9;
    v31 = v6;
    v32 = v4;
    v33 = v2;
    v35 = 0;
    v14 = *v40;
    v15 = obj;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v40 != v14)
        {
          objc_enumerationMutation(v15);
        }

        path = [*(*(&v39 + 1) + 8 * i) path];
        if ([path containsString:@"HomePod"] && objc_msgSend(path, "containsString:", @"sysdiagnose") && objc_msgSend(path, "containsString:", @".tar.gz"))
        {
          v18 = [path stringByReplacingOccurrencesOfString:@".tar.gz" withString:&stru_100004228];
          v19 = [v18 componentsSeparatedByString:@"_"];
          if ([v19 count] >= 3)
          {
            v20 = [v19 objectAtIndexedSubscript:1];
            v37 = [v19 objectAtIndexedSubscript:2];
            v38 = v20;
            v21 = [NSString stringWithFormat:@"%@_%@", v20, v37];
            v22 = objc_alloc_init(NSDateFormatter);
            [v22 setDateFormat:@"yyyy.MM.dd_HH-mm-ss-SSSS"];
            v23 = [v22 dateFromString:v21];
            if ([v23 compare:v10] == 1)
            {
              v34 = v23;

              v24 = path;
              v35 = v24;
              v10 = v34;
            }

            v15 = obj;
          }
        }
      }

      v13 = [v15 countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v13);

    v25 = v35;
    if (!v35)
    {
      v4 = v32;
      v2 = v33;
      v9 = v30;
      v6 = v31;
      v11 = v29;
      goto LABEL_33;
    }

    v26 = [DEAttachmentItem attachmentWithPath:v35];
    v11 = v29;
    [v29 addObject:v26];
    v4 = v32;
    v2 = v33;
    v9 = v30;
    v6 = v31;
  }

  else
  {
    v25 = 0;
    v26 = obj;
  }

LABEL_33:
  v27 = [v11 copy];

LABEL_34:
LABEL_35:

  return v27;
}

- (id)attachmentsForParameters:(id)parameters
{
  v4 = sub_100001164(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[HDSDiagnosticsExtension attachmentsForParameters:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", &v8, 0xCu);
  }

  attachmentList = [(HDSDiagnosticsExtension *)self attachmentList];
  v6 = sub_100001164(attachmentList);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = attachmentList;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Attachment List  %@", &v8, 0xCu);
  }

  return attachmentList;
}

- (void)teardownWithParameters:(id)parameters
{
  v4 = sub_100001164(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[HDSDiagnosticsExtension teardownWithParameters:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  [(HDSDiagnosticsExtension *)self cleanupDiagnostics];
}

- (void)cleanupDiagnostics
{
  v22 = +[NSFileManager defaultManager];
  v2 = +[HDSDiagnosticsExtension productionCacheDirectory];
  v3 = [NSURL fileURLWithPath:v2 isDirectory:1 relativeToURL:0];

  v5 = sub_100001164(v4);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v6)
    {
      *buf = 138412290;
      v31 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Looking for contents in %@.", buf, 0xCu);
    }

    v28 = 0;
    v5 = [v22 contentsOfDirectoryAtURL:v3 includingPropertiesForKeys:&__NSArray0__struct options:0 error:&v28];
    v7 = v28;
    v8 = v7;
    if (v5)
    {
      if ([v5 count])
      {
        v20 = v8;
        v21 = v3;
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v5 = v5;
        v9 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v25;
          do
          {
            for (i = 0; i != v10; i = i + 1)
            {
              if (*v25 != v11)
              {
                objc_enumerationMutation(v5);
              }

              path = [*(*(&v24 + 1) + 8 * i) path];
              if ([path containsString:@"HomePod"])
              {
                if ([path containsString:@"sysdiagnose"])
                {
                  v14 = [path containsString:@".tar.gz"];
                  if (v14)
                  {
                    v15 = sub_100001164(v14);
                    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      v31 = path;
                      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Removing %@", buf, 0xCu);
                    }

                    v23 = 0;
                    [v22 removeItemAtPath:path error:&v23];
                    v16 = v23;
                    v17 = v16;
                    if (v16)
                    {
                      v18 = sub_100001164(v16);
                      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412290;
                        v31 = v17;
                        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Remove failed %@", buf, 0xCu);
                      }
                    }
                  }
                }
              }
            }

            v10 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
          }

          while (v10);
        }

        v8 = v20;
        v3 = v21;
      }
    }

    else
    {
      v19 = sub_100001164(v7);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v31 = v8;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Unable to find contents in directory: %@.", buf, 0xCu);
      }
    }
  }

  else
  {
    if (v6)
    {
      *buf = 138412290;
      v31 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Unable to find directory: %@.", buf, 0xCu);
    }

    v8 = 0;
  }
}

@end