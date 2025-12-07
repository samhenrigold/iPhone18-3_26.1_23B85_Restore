@interface DMDMDMUtilities
+ (BOOL)setSkipBackupAttribute:(BOOL)attribute toItemAtPath:(id)path;
+ (id)iTunesAccountHashForUniqueIdentifier:(id)identifier;
@end

@implementation DMDMDMUtilities

+ (id)iTunesAccountHashForUniqueIdentifier:(id)identifier
{
  if (identifier)
  {
    identifierCopy = identifier;
    v4 = MCUSEnglishNumberFormatter();
    v5 = [v4 stringFromNumber:identifierCopy];

    if (v5)
    {
      v6 = [v5 dataUsingEncoding:4];
      dmd_sha1Hash = [v6 dmd_sha1Hash];
      v8 = [dmd_sha1Hash base64EncodedStringWithOptions:0];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)setSkipBackupAttribute:(BOOL)attribute toItemAtPath:(id)path
{
  attributeCopy = attribute;
  pathCopy = path;
  v6 = [NSURL fileURLWithPath:pathCopy];
  if (v6 && (+[NSFileManager defaultManager](NSFileManager, "defaultManager"), v7 = objc_claimAutoreleasedReturnValue(), [v6 path], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "fileExistsAtPath:", v8), v8, v7, (v9 & 1) != 0))
  {
    v18 = 0;
    v10 = [v6 getResourceValue:&v18 forKey:NSURLIsExcludedFromBackupKey error:0];
    v11 = v18;
    v12 = v11;
    if (v10 && [v11 BOOLValue] == attributeCopy)
    {
      LOBYTE(v14) = 1;
    }

    else
    {
      v13 = [NSNumber numberWithBool:attributeCopy];
      v17 = 0;
      v14 = [v6 setResourceValue:v13 forKey:NSURLIsExcludedFromBackupKey error:&v17];
      v15 = v17;

      if ((!v14 || v15) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000851F4(v6, v15);
      }
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10008529C(pathCopy);
    }

    LOBYTE(v14) = 0;
  }

  return v14;
}

@end