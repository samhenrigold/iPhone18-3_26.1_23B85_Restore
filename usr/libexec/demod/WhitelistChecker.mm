@interface WhitelistChecker
- (BOOL)annotated:(id)annotated;
- (BOOL)checkFile_WatchAndTV:(id)v withMetaData:(id)data;
- (BOOL)checkFile_iOS:(id)s withMetaData:(id)data;
- (BOOL)checkFile_macOS:(id)s withMetaData:(id)data;
- (BOOL)file:(id)file blacklisted:(id)blacklisted;
- (BOOL)file:(id)file whitelisted:(id)whitelisted;
- (BOOL)handleSystemContainerFiles:(id)files withMetadata:(id)metadata;
- (BOOL)load;
- (BOOL)loadFromFile:(id)file;
- (BOOL)shouldRestoreSystemContainer_WatchAndTV:(id)v shared:(BOOL)shared;
- (BOOL)shouldRestoreSystemContainer_iOS:(id)s shared:(BOOL)shared;
- (WhitelistChecker)init;
- (id)checkManifest:(id)manifest;
- (id)createFullPathList:(id)list rootPath:(id)path isAllowList:(BOOL)allowList;
- (id)getRealPathForFile:(id)file withMetaData:(id)data;
@end

@implementation WhitelistChecker

- (WhitelistChecker)init
{
  v5.receiver = self;
  v5.super_class = WhitelistChecker;
  v2 = [(WhitelistChecker *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(WhitelistChecker *)v2 setDomainsPlistFilePath:@"/System/Library/PrivateFrameworks/MobileBackup.framework/Domains.plist"];
  }

  return v3;
}

- (BOOL)load
{
  v3 = +[MSDPlatform sharedInstance];
  macOS = [v3 macOS];

  if (macOS)
  {
    stringByStandardizingPath = [@"/private/var/mnt/com.apple.mobilestoredemo.storage" stringByStandardizingPath];
    v24[0] = stringByStandardizingPath;
    v24[1] = @"/Library/Apple";
    v6 = [NSArray arrayWithObjects:v24 count:2];
    v7 = [NSSet setWithArray:v6];
    [(WhitelistChecker *)self setBlackListedPaths:v7];

    return 1;
  }

  v8 = +[MSDPlatform sharedInstance];
  if ([v8 iOS])
  {
  }

  else
  {
    v9 = +[MSDPlatform sharedInstance];
    v10 = [v9 rOS];

    if (!v10)
    {
      v19 = sub_10003F090(v11);
      [(WhitelistChecker *)self setDomains:v19];

      domains = [(WhitelistChecker *)self domains];

      if (domains)
      {
        return 1;
      }

      sub_1000DAA04(v21);
      return 0;
    }
  }

  domainsPlistFilePath = [(WhitelistChecker *)self domainsPlistFilePath];
  isKindOfClass = [MSDDomainsPlistPatcher patchDomainsPlist:domainsPlistFilePath];
  v14 = isKindOfClass;
  if (isKindOfClass && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) != 0))
  {
    v15 = [v14 objectForKey:@"SystemDomains"];
    v16 = [NSDictionary dictionaryWithDictionary:v15];
    [(WhitelistChecker *)self setDomains:v16];

    domains2 = [(WhitelistChecker *)self domains];

    if (domains2)
    {

      return 1;
    }

    v23 = sub_100063A54(v18);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_1000DAA70(v23);
    }
  }

  else
  {
    v23 = sub_100063A54(isKindOfClass);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_1000DAAB4(domainsPlistFilePath, v23);
    }
  }

  return 0;
}

- (BOOL)loadFromFile:(id)file
{
  [(WhitelistChecker *)self setDomainsPlistFilePath:file];

  return [(WhitelistChecker *)self load];
}

- (id)checkManifest:(id)manifest
{
  manifestCopy = manifest;
  v5 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = manifestCopy;
  v25 = [v6 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (!v25)
  {
    goto LABEL_20;
  }

  v24 = *v27;
  v8 = &OBJC_METACLASS___MSDGetContinuitySettingsRequest;
  *&v7 = 136315394;
  v22 = v7;
  v23 = v6;
  do
  {
    for (i = 0; i != v25; i = i + 1)
    {
      if (*v27 != v24)
      {
        objc_enumerationMutation(v6);
      }

      v10 = *(*(&v26 + 1) + 8 * i);
      v11 = [v6 objectForKey:{v10, v22}];
      v12 = [(WhitelistChecker *)self getRealPathForFile:v10 withMetaData:v11];
      sharedInstance = [&v8[101] sharedInstance];
      macOS = [sharedInstance macOS];

      if (macOS)
      {
        v15 = [(WhitelistChecker *)self checkFile_macOS:v12 withMetaData:v11];
        if (v15)
        {
          goto LABEL_18;
        }

        goto LABEL_15;
      }

      sharedInstance2 = [&v8[101] sharedInstance];
      if ([sharedInstance2 iOS])
      {

LABEL_12:
        v15 = [(WhitelistChecker *)self checkFile_iOS:v12 withMetaData:v11];
        goto LABEL_14;
      }

      sharedInstance3 = [&v8[101] sharedInstance];
      v18 = [sharedInstance3 rOS];

      if (v18)
      {
        goto LABEL_12;
      }

      v15 = [(WhitelistChecker *)self checkFile_WatchAndTV:v12 withMetaData:v11];
LABEL_14:
      v6 = v23;
      v8 = &OBJC_METACLASS___MSDGetContinuitySettingsRequest;
      if (v15)
      {
        goto LABEL_18;
      }

LABEL_15:
      v19 = sub_100063A54(v15);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v22;
        v31 = "[WhitelistChecker checkManifest:]";
        v32 = 2114;
        v33 = v10;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%s:%{public}@ failed the check.", buf, 0x16u);
      }

      [v5 addObject:v10];
LABEL_18:
    }

    v25 = [v6 countByEnumeratingWithState:&v26 objects:v34 count:16];
  }

  while (v25);
LABEL_20:

  if ([v5 count])
  {
    v20 = [v5 copy];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (BOOL)checkFile_macOS:(id)s withMetaData:(id)data
{
  sCopy = s;
  blackListedPaths = [(WhitelistChecker *)self blackListedPaths];
  v7 = [blackListedPaths containsObject:sCopy];

  return v7 ^ 1;
}

- (BOOL)checkFile_iOS:(id)s withMetaData:(id)data
{
  sCopy = s;
  dataCopy = data;
  v8 = [NSArray arrayWithObjects:@"/var/mobile/Media", @"/var/mobile/Library/Backup/SystemContainers/", @"/var/mobile/Library/IdentityServices/Persistence/DoNotBackup", @"/var/root/Library/Backup/SystemContainers/", @"/var/wireless/Library/Preferences/com.apple.awdd.persistent.plist", @"/var/wireless/Library/Preferences/com.apple.awdd.plist", @"/var/MobileSoftwareUpdate/.MAAMigrated.plist", @"/var/MobileAsset/PreinstalledAssetsV2/InstallWithOs", @"/var/mobile/Library/Mobile Documents", 0];
  if (![(WhitelistChecker *)self file:sCopy whitelisted:v8]&& ![(WhitelistChecker *)self annotated:dataCopy])
  {
    v33 = v8;
    v34 = dataCopy;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = [(WhitelistChecker *)self domains];
    v39 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (!v39)
    {
      v40 = 0;
      v10 = 0;
      v41 = 0;
      goto LABEL_33;
    }

    v41 = 0;
    v40 = 0;
    v10 = 0;
    v37 = *v44;
    v38 = sCopy;
    selfCopy = self;
    while (1)
    {
      v11 = 0;
      do
      {
        if (*v44 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v43 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        domains = [(WhitelistChecker *)self domains];
        v15 = [domains objectForKey:v12];

        v16 = [v15 objectForKey:@"RootPath"];
        if (!v16)
        {
          v29 = sub_100063A54(0);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v48 = v12;
            _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "No root path find in domain %{public}@", buf, 0xCu);
          }

          v18 = 0;
          v28 = 0;
          goto LABEL_16;
        }

        v42 = v13;
        v17 = [v15 objectForKey:@"RelativePathsToBackupAndRestore"];
        v18 = [v17 mutableCopy];

        v19 = [v15 objectForKey:@"RelativePathsToOnlyBackupEncrypted"];
        [v18 addObjectsFromArray:v19];

        v20 = [v15 objectForKey:@"RelativePathsToRestoreOnly"];
        [v18 addObjectsFromArray:v20];

        v21 = [v15 objectForKey:@"RelativePathsToBackupToDriveAndStandardAccount"];
        [v18 addObjectsFromArray:v21];

        v22 = [(WhitelistChecker *)self createFullPathList:v18 rootPath:v16 isAllowList:1];

        if (!v22)
        {
          v29 = sub_100063A54(v23);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v48 = v12;
            _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Cannot create allow list for domain %{public}@", buf, 0xCu);
          }

          v28 = 0;
          v10 = 0;
          v13 = v42;
          goto LABEL_16;
        }

        if ([(WhitelistChecker *)self file:sCopy whitelisted:v22])
        {
          v24 = [v15 objectForKey:@"RelativePathsNotToRestore"];

          v25 = [(WhitelistChecker *)self createFullPathList:v24 rootPath:v16 isAllowList:0];

          v26 = [(WhitelistChecker *)self file:sCopy blacklisted:v25];
          if (v26)
          {
            v27 = sub_100063A54(v26);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v48 = sCopy;
              v49 = 2114;
              v50 = v12;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%{public}@ is black listed in %{public}@", buf, 0x16u);
            }

            v41 = 1;
            v18 = v24;
            v28 = 1;
            v40 = v25;
            v10 = v22;
            v13 = v42;
            v29 = v27;
            self = selfCopy;
LABEL_16:

            v30 = 0;
            goto LABEL_20;
          }

          v30 = 0;
          v41 = 1;
          v18 = v24;
          v28 = 1;
          v40 = v25;
        }

        else
        {
          v30 = 1;
          v28 = v41;
        }

        v10 = v22;
        v13 = v42;
LABEL_20:

        objc_autoreleasePoolPop(v13);
        if (!v30)
        {
          v41 = v28;
          sCopy = v38;
          goto LABEL_33;
        }

        v11 = v11 + 1;
        sCopy = v38;
      }

      while (v39 != v11);
      v31 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
      v39 = v31;
      if (!v31)
      {
LABEL_33:

        v8 = v33;
        dataCopy = v34;
        v9 = v40;
        goto LABEL_34;
      }
    }
  }

  v9 = 0;
  v10 = 0;
  v41 = 1;
LABEL_34:

  return v41 & 1;
}

- (BOOL)checkFile_WatchAndTV:(id)v withMetaData:(id)data
{
  vCopy = v;
  dataCopy = data;
  domains = [(WhitelistChecker *)self domains];
  v9 = [domains objectForKey:@"ContentRootDomain"];
  v10 = [NSMutableArray arrayWithArray:v9];

  v11 = [NSArray arrayWithObjects:@"/var/mobile/Media", @"/var/containers/", 0];
  [v10 addObject:@"/var/mobile/Library/"];
  if ([(WhitelistChecker *)self file:vCopy whitelisted:v11]|| [(WhitelistChecker *)self annotated:dataCopy])
  {
    v12 = 1;
  }

  else
  {
    v12 = [(WhitelistChecker *)self file:vCopy whitelisted:v10];
  }

  return v12;
}

- (BOOL)annotated:(id)annotated
{
  annotatedCopy = annotated;
  v4 = +[MSDPlatform sharedInstance];
  if ([v4 iOS])
  {

    v5 = @"MBRestoreAnnotation";
    v6 = &off_10017BDC0;
  }

  else
  {
    v7 = +[MSDPlatform sharedInstance];
    v8 = [v7 rOS];

    if (v8)
    {
      v6 = &off_10017BDC0;
    }

    else
    {
      v6 = &off_10017BDD8;
    }

    if (v8)
    {
      v5 = @"MBRestoreAnnotation";
    }

    else
    {
      v5 = @"MSDAnnotation";
    }
  }

  v9 = [annotatedCopy objectForKey:@"MSDManifestFileExtendedAttributes"];

  v13 = 0;
  if (v9)
  {
    if ([v9 count])
    {
      v10 = [v9 objectForKey:v5];
      v11 = [[NSString alloc] initWithData:v10 encoding:4];
      v12 = [v6 containsObject:v11];

      if (v12)
      {
        v13 = 1;
      }
    }
  }

  return v13;
}

- (id)createFullPathList:(id)list rootPath:(id)path isAllowList:(BOOL)allowList
{
  allowListCopy = allowList;
  listCopy = list;
  pathCopy = path;
  v22 = [NSMutableArray arrayWithCapacity:0];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = listCopy;
  v7 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v13 = [v11 componentsSeparatedByString:@"#"];
        v14 = [v13 objectAtIndexedSubscript:0];
        v15 = +[NSCharacterSet whitespaceCharacterSet];
        v16 = [v14 stringByTrimmingCharactersInSet:v15];

        if ([v16 length])
        {
          v17 = [pathCopy stringByAppendingPathComponent:v16];
          [v22 addObject:v17];
        }

        objc_autoreleasePoolPop(v12);
      }

      v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);
  }

  if (allowListCopy && ![v22 count])
  {
    [v22 addObject:pathCopy];
  }

  return v22;
}

- (BOOL)file:(id)file whitelisted:(id)whitelisted
{
  fileCopy = file;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  whitelistedCopy = whitelisted;
  v7 = [whitelistedCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(whitelistedCopy);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (![fileCopy rangeOfString:{v11, v14}] || !objc_msgSend(v11, "rangeOfString:", fileCopy))
        {
          v12 = 1;
          goto LABEL_13;
        }
      }

      v8 = [whitelistedCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
      v12 = 0;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_13:

  return v12;
}

- (BOOL)file:(id)file blacklisted:(id)blacklisted
{
  fileCopy = file;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  blacklistedCopy = blacklisted;
  v7 = [blacklistedCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(blacklistedCopy);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        if (![fileCopy rangeOfString:{v11, v20}])
        {
          v13 = v12;
          v14 = [fileCopy length];
          if (v14 == [v11 length])
          {
            v16 = 1;
            goto LABEL_14;
          }

          v15 = [fileCopy length];
          if (v15 > [v11 length])
          {
            v16 = 1;
            v17 = [fileCopy substringWithRange:{v13, 1}];
            v18 = [v17 isEqualToString:@"/"];

            if (v18)
            {
              goto LABEL_14;
            }
          }
        }
      }

      v8 = [blacklistedCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_14:

  return v16;
}

- (id)getRealPathForFile:(id)file withMetaData:(id)data
{
  fileCopy = file;
  v6 = [data valueForKey:@"MSDManifestFileAttributes"];
  v7 = [v6 valueForKey:@"NSFileType"];
  if (([v7 isEqualToString:@"NSFileTypeRegular"] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"NSFileTypeDirectory"))
  {
    stringByStandardizingPath = [fileCopy stringByStandardizingPath];
    v9 = [fileCopy isEqualToString:stringByStandardizingPath];
    if ((v9 & 1) == 0)
    {
      v10 = sub_100063A54(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        sub_1000DAB2C(fileCopy, stringByStandardizingPath, v10);
      }
    }
  }

  else
  {
    stringByStandardizingPath = fileCopy;
  }

  return stringByStandardizingPath;
}

- (BOOL)shouldRestoreSystemContainer_iOS:(id)s shared:(BOOL)shared
{
  sCopy = s;
  v17 = 0;
  v16 = 0;
  [sCopy cStringUsingEncoding:4];
  v5 = container_create_or_lookup_path_for_current_user();
  if (v5 && v16 == 1)
  {
    v6 = [NSString stringWithFormat:@"file://%s", v5];
    v7 = [NSURL fileURLWithString:v6];
    v15 = 0;
    v14 = 0;
    v8 = [v7 getResourceValue:&v15 forKey:NSURLIsExcludedFromBackupKey error:&v14];
    v9 = v15;
    v10 = v14;
    if (v8)
    {
      bOOLValue = [v9 BOOLValue];
      if (bOOLValue)
      {
        v12 = sub_100063A54(bOOLValue);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v19 = "[WhitelistChecker shouldRestoreSystemContainer_iOS:shared:]";
          v20 = 2114;
          v21 = sCopy;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s:Container check failed for %{public}@. But still restoring.", buf, 0x16u);
        }
      }
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v10 = 0;
    v9 = 0;
  }

  return 1;
}

- (BOOL)shouldRestoreSystemContainer_WatchAndTV:(id)v shared:(BOOL)shared
{
  vCopy = v;
  domains = [(WhitelistChecker *)self domains];
  v7 = [domains objectForKey:@"SystemContainerDomain"];

  LOBYTE(domains) = [v7 containsObject:vCopy];
  return domains;
}

- (BOOL)handleSystemContainerFiles:(id)files withMetadata:(id)metadata
{
  filesCopy = files;
  metadataCopy = metadata;
  v7 = +[MSDPlatform sharedInstance];
  v8 = [v7 iOS];

  v9 = v8 == 0;
  if (v8)
  {
    v10 = &off_10017BE08;
  }

  else
  {
    v10 = &off_10017BE38;
  }

  if (v9)
  {
    v11 = &off_10017BE20;
  }

  else
  {
    v11 = &off_10017BDF0;
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  if (v9)
  {
    v12 = 6;
  }

  else
  {
    v12 = 8;
  }

  v13 = [v11 countByEnumeratingWithState:&v41 objects:v46 count:{16, self}];
  v36 = v12;
  if (v13)
  {
    v14 = v13;
    v15 = *v42;
    while (2)
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v42 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v41 + 1) + 8 * i);
        if ([filesCopy rangeOfString:v17] != 0x7FFFFFFFFFFFFFFFLL)
        {
          v18 = metadataCopy;
          v19 = [filesCopy stringByReplacingOccurrencesOfString:v17 withString:&stru_10016D9D8];
          v20 = 1;
          goto LABEL_20;
        }
      }

      v14 = [v11 countByEnumeratingWithState:&v41 objects:v46 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v18 = metadataCopy;
  v19 = 0;
  v20 = 0;
LABEL_20:
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v21 = [v10 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v38;
    while (2)
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v38 != v23)
        {
          objc_enumerationMutation(v10);
        }

        v25 = *(*(&v37 + 1) + 8 * j);
        if ([filesCopy rangeOfString:v25] != 0x7FFFFFFFFFFFFFFFLL)
        {
          v28 = [filesCopy stringByReplacingOccurrencesOfString:v25 withString:&stru_10016D9D8];

          v26 = 0;
          v19 = v28;
          goto LABEL_31;
        }
      }

      v22 = [v10 countByEnumeratingWithState:&v37 objects:v45 count:16];
      if (v22)
      {
        continue;
      }

      break;
    }
  }

  v26 = 1;
  if (!v20)
  {
    v27 = 0;
    goto LABEL_34;
  }

LABEL_31:
  v27 = [filesCopy componentsSeparatedByString:@"/"];
  if ([v27 count] != v36 || (objc_msgSend(v35, "annotated:", v18) & 1) != 0)
  {
LABEL_33:
    LOBYTE(v26) = 1;
    goto LABEL_34;
  }

  v30 = +[MSDPlatform sharedInstance];
  v31 = [v30 iOS];

  if (v31)
  {
    v32 = [v35 shouldRestoreSystemContainer_iOS:v19 shared:v26];
    if (v32)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v32 = [v35 shouldRestoreSystemContainer_WatchAndTV:v19 shared:v26];
    if (v32)
    {
      goto LABEL_33;
    }
  }

  v33 = sub_100063A54(v32);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    sub_1000DABB4(filesCopy, v33);
  }

  LOBYTE(v26) = 0;
LABEL_34:

  return v26;
}

@end