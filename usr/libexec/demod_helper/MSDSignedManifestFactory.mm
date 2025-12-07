@interface MSDSignedManifestFactory
+ (id)createSignedManifestFromManifestFile:(id)file;
+ (id)readManifestFromFile:(id)file;
@end

@implementation MSDSignedManifestFactory

+ (id)readManifestFromFile:(id)file
{
  fileCopy = file;
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:fileCopy];

  if (v5)
  {
    v7 = [NSInputStream inputStreamWithFileAtPath:fileCopy];
    if (v7)
    {
      v8 = v7;
      v9 = +[NSRunLoop currentRunLoop];
      [v8 scheduleInRunLoop:v9 forMode:NSDefaultRunLoopMode];

      [v8 open];
      v17 = 0;
      v10 = [NSPropertyListSerialization propertyListWithStream:v8 options:2 format:0 error:&v17];
      v11 = v17;
      [v8 close];
      v12 = +[NSRunLoop currentRunLoop];
      [v8 removeFromRunLoop:v12 forMode:NSDefaultRunLoopMode];

      if (!v10)
      {
        sub_1000266B8(v11);
        goto LABEL_12;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [v10 objectForKey:@"Version"];
        if (v13)
        {
          v14 = v13;
          if (+[MSDPlatform iOSHub])
          {
            v15 = 6;
          }

          else
          {
            v15 = 7;
          }

          if ([v14 intValue] >= v15 && objc_msgSend(v14, "intValue") < 8)
          {

            goto LABEL_12;
          }

          sub_100026524(v14, v10);
        }

        else
        {
          sub_1000265FC(fileCopy, v10);
        }
      }

      else
      {
        sub_100026468(fileCopy, v10);
      }
    }

    else
    {
      v11 = sub_100021268(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100026778();
      }
    }
  }

  else
  {
    v11 = sub_100021268(v6);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000263EC();
    }
  }

  v10 = 0;
LABEL_12:

  return v10;
}

+ (id)createSignedManifestFromManifestFile:(id)file
{
  fileCopy = file;
  v4 = objc_autoreleasePoolPush();
  v5 = [MSDSignedManifestFactory readManifestFromFile:fileCopy];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKey:@"Version"];
    intValue = [v7 intValue];
    v9 = &off_1000508F0;
    if (intValue != 7)
    {
      v9 = off_1000508E8;
    }

    v10 = [(__objc2_class *)*v9 signedManifestFromManifestData:v6];
  }

  else
  {
    v10 = 0;
  }

  objc_autoreleasePoolPop(v4);

  return v10;
}

@end