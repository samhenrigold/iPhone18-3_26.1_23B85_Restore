@interface MSDSignedManifestV7
+ (id)signedManifestFromManifestData:(id)data;
- (BOOL)checkPlatformTypeForAllComponents;
- (BOOL)hasSystemContainerBackupInRange:(_NSRange)range;
- (BOOL)isItemDeviceSettings:(id)settings;
- (BOOL)isPathUnderNonContainerizedContentRoot:(id)root;
- (MSDSignedManifestV7)initWithManifestData:(id)data;
- (id)appIdentifierFromOrderItem:(id)item;
- (id)configurationProfileIdentifierFromOrderItem:(id)item;
- (id)getAppDependecies:(id)dependecies;
- (id)getAppFileSize:(id)size;
- (id)getAppList;
- (id)getAppManifest:(id)manifest;
- (id)getAppPrivacyPermissions:(id)permissions;
- (id)getAppRealSize:(id)size;
- (id)getBackupList;
- (id)getComponentDataList:(id)list;
- (id)getComponentVersion:(id)version;
- (id)getContainerTypeFromComponentName:(id)name;
- (id)getDataComponentRealSizeFromSection:(id)section forIdentifier:(id)identifier;
- (id)getManifestDataFromSection:(id)section forIdentifier:(id)identifier;
- (id)getManifestInfoFromSection:(id)section forIdentifier:(id)identifier;
- (id)getSettingsDataFromSection:(id)section forIdentifier:(id)identifier;
- (id)getSettingsFromSection:(id)section forIdentifier:(id)identifier;
- (id)getSettingsInfoFromSection:(id)section forIdentifier:(id)identifier;
- (id)getSharedDataList;
- (id)getStandAlonePackageFileSize:(id)size;
- (id)getStandAlonePackageList;
- (id)getStandAlonePackageRealSize:(id)size;
- (id)getStandAlonePackageVersion:(id)version;
- (id)getSystemAppDataList;
- (id)getSystemAppDependecies:(id)dependecies;
- (id)getSystemAppPrivacyPermissions:(id)permissions;
- (id)getUserDataList;
- (id)mergedBackupManifest:(_NSRange)manifest;
- (id)originServerForBackupManifest:(_NSRange)manifest;
- (id)parseAllFileHash;
- (id)parseSectionForContentRoot:(id)root;
- (id)standAlonePackageIdentifierFromOrderItem:(id)item;
- (int64_t)getAppType:(id)type;
- (void)parseLocaleCode;
- (void)parseNonContainerizedContentRootSet;
@end

@implementation MSDSignedManifestV7

+ (id)signedManifestFromManifestData:(id)data
{
  dataCopy = data;
  v4 = [[MSDSignedManifestV7 alloc] initWithManifestData:dataCopy];

  return v4;
}

- (BOOL)isItemDeviceSettings:(id)settings
{
  v3 = [(MSDSignedManifestV7 *)self getSettingsFromSection:@"BackupData" forIdentifier:settings];
  v4 = v3 != 0;

  return v4;
}

- (id)appIdentifierFromOrderItem:(id)item
{
  itemCopy = item;
  if ([(MSDSignedManifestV7 *)self isItemApp:itemCopy])
  {
    v5 = [itemCopy substringFromIndex:{objc_msgSend(@"/Apps/", "length")}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)standAlonePackageIdentifierFromOrderItem:(id)item
{
  itemCopy = item;
  if ([(MSDSignedManifestV7 *)self isItemStandAlonePackage:itemCopy])
  {
    v5 = [itemCopy substringFromIndex:{objc_msgSend(@"/Packages/", "length")}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)configurationProfileIdentifierFromOrderItem:(id)item
{
  itemCopy = item;
  if ([(MSDSignedManifestV7 *)self isItemConfigurationProfile:itemCopy])
  {
    v5 = [itemCopy substringFromIndex:{objc_msgSend(@"/ConfigurationProfiles/", "length")}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)getBackupList
{
  payload = [(MSDSignedManifest *)self payload];
  v3 = [payload objectForKey:@"BackupData"];

  return v3;
}

- (id)getAppDependecies:(id)dependecies
{
  dependeciesCopy = dependecies;
  payload = [(MSDSignedManifest *)self payload];
  v6 = [payload objectForKey:@"Apps"];

  v7 = [v6 objectForKey:dependeciesCopy];

  v8 = [v7 objectForKey:@"Manifest"];
  v9 = [v8 objectForKey:@"Dependencies"];

  return v9;
}

- (id)getSystemAppDependecies:(id)dependecies
{
  dependeciesCopy = dependecies;
  payload = [(MSDSignedManifest *)self payload];
  v6 = [payload objectForKey:@"SystemApps"];

  v7 = [v6 objectForKey:dependeciesCopy];

  v8 = [v7 objectForKey:@"Manifest"];
  v9 = [v8 objectForKey:@"Dependencies"];

  return v9;
}

- (id)getAppPrivacyPermissions:(id)permissions
{
  permissionsCopy = permissions;
  getAppList = [(MSDSignedManifestV7 *)self getAppList];
  v6 = [getAppList objectForKey:permissionsCopy];

  v7 = [v6 objectForKey:@"Manifest"];
  v8 = [v7 objectForKey:@"Info"];

  v9 = [v8 objectForKey:@"AppPrivacyPermissions"];

  return v9;
}

- (id)getSystemAppPrivacyPermissions:(id)permissions
{
  permissionsCopy = permissions;
  getSystemAppDataList = [(MSDSignedManifestV7 *)self getSystemAppDataList];
  v6 = [getSystemAppDataList objectForKeyedSubscript:permissionsCopy];

  v7 = [v6 objectForKeyedSubscript:@"Manifest"];
  v8 = [v7 objectForKeyedSubscript:@"Info"];
  v9 = [v8 objectForKeyedSubscript:@"AppPrivacyPermissions"];

  return v9;
}

- (int64_t)getAppType:(id)type
{
  typeCopy = type;
  v5 = +[MSDPlatform sharedInstance];
  macOS = [v5 macOS];

  if (macOS)
  {
    payload = [(MSDSignedManifest *)self payload];
    v8 = [payload objectForKey:@"Apps"];

    v9 = [v8 objectForKey:typeCopy];

    if (v9)
    {
      v10 = [v8 objectForKey:typeCopy];
      v11 = [v10 objectForKey:@"Manifest"];

      v12 = [v11 objectForKey:@"Info"];
      v13 = [v12 objectForKey:@"AppType"];

      if (v13)
      {
        v14 = [v11 objectForKey:@"Info"];
        v15 = [v14 objectForKey:@"AppType"];

        unsignedIntegerValue = [v15 unsignedIntegerValue];
      }

      else
      {
        unsignedIntegerValue = 0;
      }
    }

    else
    {
      unsignedIntegerValue = 0;
    }
  }

  else
  {
    unsignedIntegerValue = 2;
  }

  return unsignedIntegerValue;
}

- (id)getAppFileSize:(id)size
{
  sizeCopy = size;
  payload = [(MSDSignedManifest *)self payload];
  v6 = [payload objectForKey:@"Apps"];

  v7 = [v6 objectForKey:sizeCopy];

  v8 = [v7 objectForKey:@"Manifest"];
  v9 = [v8 objectForKey:@"Info"];

  v10 = [v9 objectForKey:@"Size"];

  return v10;
}

- (id)getAppRealSize:(id)size
{
  sizeCopy = size;
  payload = [(MSDSignedManifest *)self payload];
  v6 = [payload objectForKey:@"Apps"];

  v7 = [v6 objectForKey:sizeCopy];
  v8 = [v7 objectForKey:@"Manifest"];
  v9 = [v8 objectForKey:@"Info"];

  if (!v9)
  {
    v13 = sub_100063A54(v10);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000C78D8();
    }

    goto LABEL_12;
  }

  v11 = [v9 objectForKey:@"RealSize"];
  if (v11)
  {
    goto LABEL_6;
  }

  v12 = [v9 objectForKey:@"Size"];
  v13 = v12;
  if (!v12)
  {
    sub_1000C7834(sizeCopy);
LABEL_12:
    v11 = 0;
    goto LABEL_5;
  }

  v11 = [NSNumber numberWithUnsignedLongLong:2 * [v12 unsignedLongLongValue]];
LABEL_5:

LABEL_6:

  return v11;
}

- (id)getStandAlonePackageFileSize:(id)size
{
  sizeCopy = size;
  payload = [(MSDSignedManifest *)self payload];
  v6 = [payload objectForKey:@"Packages"];

  v7 = [v6 objectForKey:sizeCopy];

  v8 = [v7 objectForKey:@"Manifest"];
  v9 = [v8 objectForKey:@"Info"];

  v10 = [v9 objectForKey:@"Size"];

  return v10;
}

- (id)getStandAlonePackageRealSize:(id)size
{
  sizeCopy = size;
  payload = [(MSDSignedManifest *)self payload];
  v6 = [payload objectForKey:@"Packages"];

  v7 = [v6 objectForKey:sizeCopy];
  v8 = [v7 objectForKey:@"Manifest"];
  v9 = [v8 objectForKey:@"Info"];

  if (!v9)
  {
    v13 = sub_100063A54(v10);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000C79F8();
    }

    goto LABEL_12;
  }

  v11 = [v9 objectForKey:@"RealSize"];
  if (v11)
  {
    goto LABEL_6;
  }

  v12 = [v9 objectForKey:@"Size"];
  v13 = v12;
  if (!v12)
  {
    sub_1000C7954(sizeCopy);
LABEL_12:
    v11 = 0;
    goto LABEL_5;
  }

  v11 = [NSNumber numberWithUnsignedLongLong:2 * [v12 unsignedLongLongValue]];
LABEL_5:

LABEL_6:

  return v11;
}

- (id)getDataComponentRealSizeFromSection:(id)section forIdentifier:(id)identifier
{
  sectionCopy = section;
  identifierCopy = identifier;
  v8 = [(MSDSignedManifestV7 *)self getManifestDataFromSection:sectionCopy forIdentifier:identifierCopy];
  v9 = v8;
  if (v8)
  {
    v25 = identifierCopy;
    v26 = sectionCopy;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v24 = v8;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v28;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v28 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v27 + 1) + 8 * i);
          v17 = objc_autoreleasePoolPush();
          v18 = [v10 objectForKey:v16];
          v19 = [v18 objectForKey:@"MSDManifestFileAttributes"];

          if (v19)
          {
            fileType = [v19 fileType];
            v21 = [fileType isEqualToString:NSFileTypeRegular];

            if (v21)
            {
              v13 += [v19 fileSize];
            }
          }

          objc_autoreleasePoolPop(v17);
        }

        v12 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v12);
    }

    else
    {
      v13 = 0;
    }

    v22 = [NSNumber numberWithUnsignedLongLong:v13];
    identifierCopy = v25;
    sectionCopy = v26;
    v9 = v24;
  }

  else
  {
    sub_1000C7A74(sectionCopy);
    v22 = 0;
  }

  return v22;
}

- (id)mergedBackupManifest:(_NSRange)manifest
{
  length = manifest.length;
  location = manifest.location;
  v6 = sub_100063A54(self);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v26.location = location;
    v26.length = length;
    v7 = NSStringFromRange(v26);
    *buf = 138543362;
    v24 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Merging manifest item %{public}@", buf, 0xCu);
  }

  v22 = +[NSMutableDictionary dictionary];
  installationOrder = [(MSDSignedManifest *)self installationOrder];
  if (location < location + length)
  {
    do
    {
      v9 = [installationOrder objectAtIndex:location];
      v10 = [v9 substringFromIndex:{objc_msgSend(@"/BackupData/", "length")}];
      getBackupList = [(MSDSignedManifestV7 *)self getBackupList];
      v12 = [getBackupList objectForKey:v10];
      v13 = [v12 objectForKey:@"Manifest"];
      v14 = [v13 objectForKey:@"Data"];

      if ([(MSDSignedManifestV7 *)self isItemSystemContainerBackup:v10])
      {
        v15 = +[MSDPlatform sharedInstance];
        watchOS = [v15 watchOS];

        v18 = sub_100063A54(v17);
        v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
        if (!watchOS)
        {
          if (v19)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "System container backup only allowed on Watch devices.", buf, 2u);
          }

          goto LABEL_13;
        }

        if (v19)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "System container backup found. Start restoring UUID paths...", buf, 2u);
        }

        v20 = [NSString restoreSystemContainerUUIDPathsInDict:v14];

        v14 = v20;
      }

      [v22 addEntriesFromDictionary:v14];
LABEL_13:

      ++location;
      --length;
    }

    while (length);
  }

  return v22;
}

- (BOOL)hasSystemContainerBackupInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if ([(MSDSignedManifest *)self getVersion]< 5)
  {
    return 0;
  }

  v6 = +[MSDPlatform sharedInstance];
  watchOS = [v6 watchOS];

  if (!watchOS)
  {
    return 0;
  }

  installationOrder = [(MSDSignedManifest *)self installationOrder];
  v9 = installationOrder;
  v10 = location + length;
  if (location >= location + length)
  {
    v13 = 0;
  }

  else
  {
    v11 = [installationOrder objectAtIndex:location];
    v12 = [v11 isEqualToString:@"/BackupData/systemContainer"];

    if (v12)
    {
      v13 = 1;
    }

    else
    {
      v14 = location + 1;
      v15 = length - 1;
      do
      {
        v16 = v14;
        if (!v15)
        {
          break;
        }

        v17 = [v9 objectAtIndex:v14];
        v18 = [v17 isEqualToString:@"/BackupData/systemContainer"];

        v14 = v16 + 1;
        --v15;
      }

      while (!v18);
      v13 = v16 < v10;
    }
  }

  return v13;
}

- (id)getComponentVersion:(id)version
{
  versionCopy = version;
  getAppList = [(MSDSignedManifestV7 *)self getAppList];
  v6 = [getAppList objectForKey:versionCopy];

  if (v6)
  {
    v8 = [v6 objectForKey:@"Manifest"];
    v9 = [v8 objectForKey:@"Info"];

    v10 = [v9 objectForKey:@"CFBundleShortVersionString"];
    v11 = sub_100063A54(v10);
    v12 = v11;
    if (v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136315650;
        v15 = "[MSDSignedManifestV7 getComponentVersion:]";
        v16 = 2114;
        v17 = versionCopy;
        v18 = 2114;
        v19 = v10;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s - appName:%{public}@ componentVersion:%{public}@", &v14, 0x20u);
      }

      v10 = v10;
      v9 = v10;
    }

    else
    {
      sub_1000C7B2C(v11);
    }
  }

  else
  {
    v9 = sub_100063A54(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000C7BD0();
    }

    v10 = 0;
  }

  return v10;
}

- (id)getAppManifest:(id)manifest
{
  manifestCopy = manifest;
  getAppList = [(MSDSignedManifestV7 *)self getAppList];
  v6 = [getAppList objectForKey:manifestCopy];

  v7 = [v6 objectForKey:@"Manifest"];
  v8 = [v7 objectForKey:@"Info"];

  return v8;
}

- (id)getStandAlonePackageVersion:(id)version
{
  versionCopy = version;
  getStandAlonePackageList = [(MSDSignedManifestV7 *)self getStandAlonePackageList];
  v6 = [getStandAlonePackageList objectForKey:versionCopy];

  if (v6)
  {
    v8 = [v6 objectForKey:@"Manifest"];
    v9 = [v8 objectForKey:@"Info"];

    v10 = [v9 objectForKey:@"Version"];
    v11 = sub_100063A54(v10);
    v12 = v11;
    if (v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136315650;
        v15 = "[MSDSignedManifestV7 getStandAlonePackageVersion:]";
        v16 = 2114;
        v17 = versionCopy;
        v18 = 2114;
        v19 = v10;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s - pkgName:%{public}@ pkgVersion:%{public}@", &v14, 0x20u);
      }

      v10 = v10;
      v9 = v10;
    }

    else
    {
      sub_1000C7C4C(v11);
    }
  }

  else
  {
    v9 = sub_100063A54(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000C7CF0();
    }

    v10 = 0;
  }

  return v10;
}

- (id)getStandAlonePackageList
{
  payload = [(MSDSignedManifest *)self payload];
  v3 = [payload objectForKey:@"Packages"];

  return v3;
}

- (id)getAppList
{
  payload = [(MSDSignedManifest *)self payload];
  v3 = [payload objectForKey:@"Apps"];

  return v3;
}

- (BOOL)checkPlatformTypeForAllComponents
{
  if (+[MSDPlatform iOSHub])
  {
    return 1;
  }

  v4 = +[MSDPlatform sharedInstance];
  platformType = [v4 platformType];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  payload = [(MSDSignedManifest *)self payload];
  v6 = [payload countByEnumeratingWithState:&v45 objects:v58 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v46;
    v39 = payload;
    v35 = *v46;
    selfCopy = self;
    do
    {
      v9 = 0;
      do
      {
        if (*v46 != v8)
        {
          objc_enumerationMutation(payload);
        }

        v10 = *(*(&v45 + 1) + 8 * v9);
        v11 = [(MSDSignedManifest *)self payload:v35];
        v12 = [v11 objectForKey:v10];
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) == 0 || ([v10 isEqualToString:@"Info"] & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"InstallationOrder"))
        {
          goto LABEL_11;
        }

        v13 = [v10 isEqualToString:@"Certificates"];

        if ((v13 & 1) == 0)
        {
          payload2 = [(MSDSignedManifest *)self payload];
          v38 = v10;
          v15 = [payload2 objectForKey:v10];

          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v12 = v15;
          v16 = [v12 countByEnumeratingWithState:&v41 objects:v57 count:16];
          if (!v16)
          {
            v11 = v12;
            goto LABEL_11;
          }

          v17 = v16;
          v37 = v7;
          v18 = *v42;
LABEL_17:
          v19 = 0;
          while (1)
          {
            if (*v42 != v18)
            {
              objc_enumerationMutation(v12);
            }

            v20 = *(*(&v41 + 1) + 8 * v19);
            v21 = [v12 objectForKey:v20];
            v22 = @"Manifest";
            v23 = [v21 objectForKey:@"Manifest"];

            if (!v23)
            {
              v22 = @"Settings";
              v24 = [v21 objectForKey:@"Settings"];

              if (!v24)
              {
                break;
              }
            }

            v26 = [v21 objectForKey:v22];
            v27 = [v26 objectForKey:@"Info"];

            if (!v27)
            {
              break;
            }

            v28 = [v27 objectForKey:@"PlatformType"];
            v29 = [platformType isEqualToString:v28];

            if ((v29 & 1) == 0)
            {
              v33 = sub_100063A54(v30);
              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                v34 = [v27 objectForKey:@"PlatformType"];
                *buf = 138544130;
                v50 = v34;
                v51 = 2114;
                v52 = platformType;
                v53 = 2114;
                v54 = v20;
                v55 = 2114;
                v56 = v38;
                _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "PlatformType (%{public}@) in the manifest does not match the one that we are running on (%{public}@) for item: %{public}@ under component: %{public}@", buf, 0x2Au);
              }

LABEL_32:
              payload = v39;

              v3 = 0;
              goto LABEL_33;
            }

            if (v17 == ++v19)
            {
              v17 = [v12 countByEnumeratingWithState:&v41 objects:v57 count:16];
              if (v17)
              {
                goto LABEL_17;
              }

              v11 = v12;
              payload = v39;
              v8 = v35;
              self = selfCopy;
              v7 = v37;
LABEL_11:

              goto LABEL_12;
            }
          }

          v27 = sub_100063A54(v25);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            sub_1000C7D6C(v20, v38, v27);
          }

          goto LABEL_32;
        }

LABEL_12:
        v9 = v9 + 1;
      }

      while (v9 != v7);
      v31 = [payload countByEnumeratingWithState:&v45 objects:v58 count:16];
      v7 = v31;
    }

    while (v31);
  }

  v3 = 1;
LABEL_33:

  return v3;
}

- (id)getComponentDataList:(id)list
{
  listCopy = list;
  if (listCopy)
  {
    payload = [(MSDSignedManifest *)self payload];
    v6 = [payload objectForKey:listCopy];
  }

  else
  {
    sub_1000C7DEC(0);
    v6 = 0;
  }

  return v6;
}

- (id)getSystemAppDataList
{
  payload = [(MSDSignedManifest *)self payload];
  v3 = [payload objectForKey:@"SystemApps"];

  return v3;
}

- (id)getSharedDataList
{
  payload = [(MSDSignedManifest *)self payload];
  v3 = [payload objectForKey:@"SharedAppData"];

  return v3;
}

- (id)getUserDataList
{
  payload = [(MSDSignedManifest *)self payload];
  v3 = [payload objectForKey:@"UserData"];

  return v3;
}

- (BOOL)isPathUnderNonContainerizedContentRoot:(id)root
{
  rootCopy = root;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = sub_100014A64;
  v12[4] = sub_100014A74;
  v13 = &stru_10016D9D8;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  pathComponents = [rootCopy pathComponents];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100014A7C;
  v7[3] = &unk_10016A0E0;
  v7[4] = self;
  v7[5] = v12;
  v7[6] = &v8;
  [pathComponents enumerateObjectsUsingBlock:v7];

  LOBYTE(self) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(v12, 8);

  return self;
}

- (id)getManifestDataFromSection:(id)section forIdentifier:(id)identifier
{
  v4 = [(MSDSignedManifest *)self getManifestFromSection:section forIdentifier:identifier];
  v5 = [v4 objectForKey:@"Data"];

  return v5;
}

- (id)getManifestInfoFromSection:(id)section forIdentifier:(id)identifier
{
  v4 = [(MSDSignedManifest *)self getManifestFromSection:section forIdentifier:identifier];
  v5 = [v4 objectForKey:@"Info"];

  return v5;
}

- (id)getSettingsFromSection:(id)section forIdentifier:(id)identifier
{
  v4 = [(MSDSignedManifest *)self getDictFromSection:section forIdentifier:identifier];
  v5 = [v4 objectForKey:@"Settings"];

  return v5;
}

- (id)getSettingsDataFromSection:(id)section forIdentifier:(id)identifier
{
  v4 = [(MSDSignedManifestV7 *)self getSettingsFromSection:section forIdentifier:identifier];
  v5 = [v4 objectForKey:@"Data"];

  return v5;
}

- (id)getSettingsInfoFromSection:(id)section forIdentifier:(id)identifier
{
  v4 = [(MSDSignedManifestV7 *)self getSettingsFromSection:section forIdentifier:identifier];
  v5 = [v4 objectForKey:@"Info"];

  return v5;
}

- (id)originServerForBackupManifest:(_NSRange)manifest
{
  location = manifest.location;
  v5 = [(MSDSignedManifest *)self installationOrder:manifest.location];
  v6 = [v5 objectAtIndex:location];

  lastPathComponent = [v6 lastPathComponent];
  if (lastPathComponent)
  {
    getBackupList = [(MSDSignedManifestV7 *)self getBackupList];
    v9 = [getBackupList objectForKey:lastPathComponent];

    v10 = [v9 objectForKey:@"OriginServer"];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)getContainerTypeFromComponentName:(id)name
{
  nameCopy = name;
  v5 = [nameCopy componentsSeparatedByString:@"."];
  v6 = [v5 objectAtIndex:0];
  getDataSectionKeys = [(MSDSignedManifestV7 *)self getDataSectionKeys];
  if ([getDataSectionKeys containsObject:v6])
  {
    v8 = v6;
  }

  else
  {
    sub_1000C7E88(v6);
    v8 = 0;
  }

  return v8;
}

- (void)parseNonContainerizedContentRootSet
{
  v3 = objc_alloc_init(NSMutableSet);
  getDataSectionKeys = [(MSDSignedManifestV7 *)self getDataSectionKeys];
  allObjects = [getDataSectionKeys allObjects];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = allObjects;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if (![(MSDSignedManifest *)self isContainerizedComponent:v11, v16])
        {
          payload = [(MSDSignedManifest *)self payload];
          v13 = [payload objectForKey:v11];

          v14 = [(MSDSignedManifestV7 *)self parseSectionForContentRoot:v13];
          v15 = v14;
          if (v14 && [v14 count])
          {
            [v3 unionSet:v15];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  [(MSDSignedManifestV7 *)self setNonContainerizedContentRoots:v3];
}

- (id)parseSectionForContentRoot:(id)root
{
  rootCopy = root;
  v27 = objc_alloc_init(NSMutableSet);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v24 = rootCopy;
  obj = [rootCopy allKeys];
  v25 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v25)
  {
    v4 = @"/";
    v23 = *v34;
    do
    {
      v5 = 0;
      do
      {
        if (*v34 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v26 = v5;
        v6 = [v24 objectForKey:*(*(&v33 + 1) + 8 * v5)];
        v7 = [v6 objectForKey:@"Manifest"];
        v8 = [v7 objectForKey:@"Data"];

        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v28 = v8;
        allKeys = [v8 allKeys];
        v10 = [allKeys countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v30;
          do
          {
            for (i = 0; i != v11; i = i + 1)
            {
              if (*v30 != v12)
              {
                objc_enumerationMutation(allKeys);
              }

              v14 = *(*(&v29 + 1) + 8 * i);
              v15 = objc_autoreleasePoolPush();
              if (([v14 isEqualToString:v4] & 1) == 0)
              {
                v16 = v4;
                v17 = [v28 objectForKey:v14];
                v18 = [v17 objectForKey:@"MSDManifestFileExtendedAttributes"];
                v19 = [v18 objectForKey:@"MSDAnnotation"];

                if (v19)
                {
                  v20 = [[NSString alloc] initWithData:v19 encoding:4];
                  if ([v20 isEqualToString:@"ContentRoot"])
                  {
                    [v27 addObject:v14];
                  }
                }

                v4 = v16;
              }

              objc_autoreleasePoolPop(v15);
            }

            v11 = [allKeys countByEnumeratingWithState:&v29 objects:v37 count:16];
          }

          while (v11);
        }

        v5 = v26 + 1;
      }

      while ((v26 + 1) != v25);
      v25 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v25);
  }

  return v27;
}

- (void)parseLocaleCode
{
  [(MSDSignedManifestV7 *)self setLocaleCodeStr:0];
  v3 = [(MSDSignedManifestV7 *)self getSettingsDataFromSection:@"BackupData" forIdentifier:@"locale"];
  v4 = v3;
  if (!v3)
  {
    sub_1000C8094(&v10);
LABEL_8:
    v6 = v10;
    goto LABEL_5;
  }

  v5 = [v3 objectForKey:@"language"];
  if (!v5)
  {
    sub_1000C7FE0(&v10);
    goto LABEL_8;
  }

  v6 = v5;
  v7 = [v4 objectForKey:@"region"];
  if (v7)
  {
    v8 = v7;
    v9 = [NSString stringWithFormat:@"%@_%@", v6, v7];
    [(MSDSignedManifestV7 *)self setLocaleCodeStr:v9];
  }

  else
  {
    sub_1000C7F38(0);
  }

LABEL_5:
}

- (id)parseAllFileHash
{
  v2 = objc_opt_new();
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v54 = [&off_10017BBB0 countByEnumeratingWithState:&v78 objects:v86 count:16];
  if (v54)
  {
    v52 = *v79;
    v3 = @"Manifest";
    do
    {
      v4 = 0;
      do
      {
        if (*v79 != v52)
        {
          objc_enumerationMutation(&off_10017BBB0);
        }

        v58 = v4;
        v5 = *(*(&v78 + 1) + 8 * v4);
        context = objc_autoreleasePoolPush();
        payload = [(MSDSignedManifest *)self payload];
        v7 = [payload objectForKey:v5];

        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v74 objects:v85 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v75;
          v60 = v8;
          do
          {
            for (i = 0; i != v10; i = i + 1)
            {
              if (*v75 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v74 + 1) + 8 * i);
              v14 = objc_autoreleasePoolPush();
              v15 = [v8 objectForKey:v13];
              v16 = [v15 objectForKey:v3];
              v17 = v16;
              if (v16)
              {
                v18 = [v16 objectForKey:@"Info"];
                v19 = v18;
                if (v18)
                {
                  v20 = v10;
                  v21 = v11;
                  v22 = v3;
                  v23 = [v18 objectForKey:@"Hash"];
                  if (v23)
                  {
                    [v2 addObject:v23];
                  }

                  v3 = v22;
                  v11 = v21;
                  v10 = v20;
                  v8 = v60;
                }
              }

              objc_autoreleasePoolPop(v14);
            }

            v10 = [v8 countByEnumeratingWithState:&v74 objects:v85 count:16];
          }

          while (v10);
        }

        objc_autoreleasePoolPop(context);
        v4 = v58 + 1;
      }

      while ((v58 + 1) != v54);
      v54 = [&off_10017BBB0 countByEnumeratingWithState:&v78 objects:v86 count:16];
    }

    while (v54);
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v47 = [&off_10017BBC8 countByEnumeratingWithState:&v70 objects:v84 count:16];
  if (v47)
  {
    v46 = *v71;
    do
    {
      v24 = 0;
      do
      {
        if (*v71 != v46)
        {
          objc_enumerationMutation(&off_10017BBC8);
        }

        v49 = v24;
        v25 = *(*(&v70 + 1) + 8 * v24);
        v48 = objc_autoreleasePoolPush();
        payload2 = [(MSDSignedManifest *)self payload];
        v27 = [payload2 objectForKey:v25];

        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v28 = v27;
        v55 = [v28 countByEnumeratingWithState:&v66 objects:v83 count:16];
        if (v55)
        {
          v51 = v28;
          v53 = *v67;
          do
          {
            for (j = 0; j != v55; j = j + 1)
            {
              if (*v67 != v53)
              {
                objc_enumerationMutation(v28);
              }

              v30 = *(*(&v66 + 1) + 8 * j);
              v31 = objc_autoreleasePoolPush();
              v32 = [v28 objectForKey:v30];
              v33 = [v32 objectForKey:@"Manifest"];
              if (v33)
              {
                v59 = v32;
                v61 = v31;
                contexta = v33;
                v34 = [v33 objectForKey:@"Data"];
                v62 = 0u;
                v63 = 0u;
                v64 = 0u;
                v65 = 0u;
                v35 = v34;
                v36 = [v35 countByEnumeratingWithState:&v62 objects:v82 count:16];
                if (v36)
                {
                  v37 = v36;
                  v38 = *v63;
                  do
                  {
                    for (k = 0; k != v37; k = k + 1)
                    {
                      if (*v63 != v38)
                      {
                        objc_enumerationMutation(v35);
                      }

                      v40 = *(*(&v62 + 1) + 8 * k);
                      v41 = objc_autoreleasePoolPush();
                      v42 = [v35 objectForKey:v40];
                      v43 = [v42 objectForKey:@"MSDManifestFileHash"];
                      if (v43)
                      {
                        [v2 addObject:v43];
                      }

                      objc_autoreleasePoolPop(v41);
                    }

                    v37 = [v35 countByEnumeratingWithState:&v62 objects:v82 count:16];
                  }

                  while (v37);
                }

                v28 = v51;
                v32 = v59;
                v31 = v61;
                v33 = contexta;
              }

              objc_autoreleasePoolPop(v31);
            }

            v55 = [v28 countByEnumeratingWithState:&v66 objects:v83 count:16];
          }

          while (v55);
        }

        objc_autoreleasePoolPop(v48);
        v24 = v49 + 1;
      }

      while ((v49 + 1) != v47);
      v47 = [&off_10017BBC8 countByEnumeratingWithState:&v70 objects:v84 count:16];
    }

    while (v47);
  }

  v44 = [NSSet setWithSet:v2];

  return v44;
}

- (MSDSignedManifestV7)initWithManifestData:(id)data
{
  dataCopy = data;
  v5 = objc_opt_new();
  v109.receiver = self;
  v109.super_class = MSDSignedManifestV7;
  v6 = [(MSDSignedManifestV7 *)&v109 init];
  if (!v6)
  {
    v8 = 0;
    v16 = 0;
    v17 = 0;
    goto LABEL_12;
  }

  isKindOfClass = [dataCopy objectForKey:@"Info"];
  v8 = isKindOfClass;
  if (!isKindOfClass || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) == 0))
  {
    v10 = sub_100063A54(isKindOfClass);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
LABEL_94:
      v16 = 0;
      v17 = 0;
      goto LABEL_95;
    }

    sub_1000159EC();
    v47 = "%s: No Info section or in wrong format.";
LABEL_57:
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v47, buf, 0xCu);
    goto LABEL_94;
  }

  if (+[MSDPlatform iOSHub])
  {
    v9 = [v8 objectForKey:@"Product"];
    v10 = v9;
    if (!v9 || (objc_opt_class(), v9 = objc_opt_isKindOfClass(), (v9 & 1) == 0))
    {
      v50 = sub_100063A54(v9);
      if (sub_1000083A0(v50))
      {
        sub_1000159EC();
        sub_1000159CC(&_mh_execute_header, v82, v83, "%s: No Product section or in wrong format.", v84, v85, v86, v87, v94, log, v97, v99, v101, v103, v105, v107, v109.receiver, v109.super_class);
      }

      goto LABEL_94;
    }

    v11 = +[MSDPlatform sharedInstance];
    [v11 setPlatformWithManifestProductList:v10];

    v12 = NSClassFromString(@"MSDHubTestConfiguration");
    if (v12)
    {
      sharedInstance = [(objc_class *)v12 sharedInstance];
      if ((objc_opt_respondsToSelector() & 1) != 0 && (v14 = [sharedInstance shouldRunManifestRigorousTest], (v14 & 1) == 0))
      {
        v19 = sub_100063A54(v14);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000159EC();
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%s - Will not run rigorous testing on iOS hub.", buf, 0xCu);
        }

        v15 = &__kCFBooleanFalse;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  manifestVerifier = [(MSDSignedManifest *)v6 manifestVerifier];

  if (!manifestVerifier)
  {
    v21 = +[MSDDemoManifestCheck sharedInstance];
    [(MSDSignedManifest *)v6 setManifestVerifier:v21];

    manifestVerifier2 = [(MSDSignedManifest *)v6 manifestVerifier];

    if (!manifestVerifier2)
    {
      v10 = sub_100063A54(v23);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_94;
      }

      sub_1000159EC();
      v47 = "%s - Could not initialize manifestVerifier\n";
      goto LABEL_57;
    }
  }

  v17 = [dataCopy objectForKey:@"Version"];
  if (v15)
  {
    [v5 setObject:v15 forKey:@"RigorousTestingOverride"];
  }

  manifestVerifier3 = [(MSDSignedManifest *)v6 manifestVerifier];
  getDataSectionKeys = [(MSDSignedManifestV7 *)v6 getDataSectionKeys];
  v10 = [manifestVerifier3 verifyManifestSignature:dataCopy forDataSectionKeys:getDataSectionKeys withOptions:v5];

  if (v10)
  {
    objc_opt_class();
    v26 = objc_opt_isKindOfClass();
    if (v26)
    {
      v108 = v17;
      v27 = [v10 objectForKey:@"InstallationOrder"];
      v28 = v27;
      if (!v27 || (objc_opt_class(), v27 = objc_opt_isKindOfClass(), (v27 & 1) == 0))
      {
        v48 = sub_100063A54(v27);
        if (sub_1000083A0(v48))
        {
          sub_1000159EC();
          sub_1000159CC(&_mh_execute_header, v70, v71, "%s: InstallationOrder section in wrong format.", v72, v73, v74, v75, v94, log, v97, v99, v101, v103, v105, v108, v109.receiver, v109.super_class);
        }

        v16 = 0;
        v18 = 0;
        goto LABEL_52;
      }

      v104 = v8;
      v29 = [v28 objectForKey:@"CriticalComponents"];
      v30 = v29;
      if (v29)
      {
        v31 = [v29 count];
      }

      else
      {
        v31 = 0;
      }

      v32 = [v28 objectForKey:@"Components"];
      v33 = v32;
      v106 = v5;
      if (v32)
      {
        v31 = &v31[[v32 count]];
      }

      v34 = [v10 objectForKey:@"BackupData"];
      v35 = v34;
      if (!v34 || (objc_opt_class(), v34 = objc_opt_isKindOfClass(), (v34 & 1) == 0))
      {
        v49 = sub_100063A54(v34);
        if (sub_1000083A0(v49))
        {
          sub_1000159EC();
          sub_1000159CC(&_mh_execute_header, v76, v77, "%s: no BackupData section or in wrong format.", v78, v79, v80, v81, v94, log, v97, v99, v101, v104, v106, v108, v109.receiver, v109.super_class);
        }

        v16 = 0;
        goto LABEL_84;
      }

      v36 = [v35 count];
      v16 = [v10 objectForKey:@"Apps"];
      v102 = v33;
      if (v16)
      {
        objc_opt_class();
        v37 = objc_opt_isKindOfClass();
        if ((v37 & 1) == 0)
        {
          v53 = sub_100063A54(v37);
          if (sub_1000083A0(v53))
          {
            *buf = 136315138;
            v111 = "[MSDSignedManifestV7 initWithManifestData:]";
            sub_1000159CC(&_mh_execute_header, v54, v55, "%s: Apps section in wrong format.", v56, v57, v58, v59, v94, log, v97, v99, v33, v104, v106, v108, v109.receiver, v109.super_class);
          }

LABEL_83:
LABEL_84:
          v18 = 0;
LABEL_92:
          v8 = v104;
          v5 = v106;
LABEL_52:
          v17 = v108;
LABEL_53:

          goto LABEL_54;
        }

        v36 = &v36[[v16 count]];
      }

      v38 = [v10 objectForKey:@"SystemApps"];
      v100 = v30;
      if (!v38)
      {
        goto LABEL_42;
      }

      objc_opt_class();
      v39 = objc_opt_isKindOfClass();
      if (v39)
      {
        if ([v38 count])
        {
          ++v36;
        }

LABEL_42:
        v40 = [v10 objectForKey:@"Packages"];
        v98 = dataCopy;
        if (v40)
        {
          objc_opt_class();
          v41 = objc_opt_isKindOfClass();
          if ((v41 & 1) == 0)
          {
            v67 = dataCopy;
            v68 = sub_100063A54(v41);
            if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              v111 = "[MSDSignedManifestV7 initWithManifestData:]";
              _os_log_error_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "%s - Packages section in wrong format.", buf, 0xCu);
            }

            v18 = 0;
            dataCopy = v67;
            goto LABEL_92;
          }

          v36 = &v36[[v40 count]];
        }

        v42 = [v10 objectForKey:@"ConfigurationProfiles"];
        v43 = v42;
        if (v42)
        {
          objc_opt_class();
          v44 = objc_opt_isKindOfClass();
          if ((v44 & 1) == 0)
          {
            v69 = sub_100063A54(v44);
            if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              v111 = "[MSDSignedManifestV7 initWithManifestData:]";
              _os_log_error_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, "%s - ConfigurationProfiles section in wrong format.", buf, 0xCu);
            }

LABEL_91:
            v18 = 0;
            dataCopy = v98;
            goto LABEL_92;
          }

          v42 = [v43 count];
          v36 += v42;
        }

        if (v31 == v36)
        {
          [(MSDSignedManifest *)v6 setSigningKey:@"MultipleContentSignings"];
          [(MSDSignedManifest *)v6 setPayload:v10];
          checkPlatformTypeForAllComponents = [(MSDSignedManifestV7 *)v6 checkPlatformTypeForAllComponents];
          if (checkPlatformTypeForAllComponents)
          {
            [(MSDSignedManifestV7 *)v6 parseNonContainerizedContentRootSet];
            [(MSDSignedManifest *)v6 parseInstallationOrder];
            v8 = v104;
            [(MSDSignedManifest *)v6 parseBundleID:v104];
            [(MSDSignedManifestV7 *)v6 parseLocaleCode];
            [MSDSignedManifest setSignedManifest:v6];
            v18 = v6;
          }

          else
          {
            v52 = sub_100063A54(checkPlatformTypeForAllComponents);
            v8 = v104;
            if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "One or more components have an invalid platformType", buf, 2u);
            }

            v18 = 0;
          }

          dataCopy = v98;
          v5 = v106;
          goto LABEL_52;
        }

        loga = sub_100063A54(v42);
        if (os_log_type_enabled(loga, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v111 = "[MSDSignedManifestV7 initWithManifestData:]";
          v112 = 2048;
          v113 = v31;
          v114 = 2048;
          v115 = v36;
          _os_log_error_impl(&_mh_execute_header, loga, OS_LOG_TYPE_ERROR, "%s - InstallationOrder count (%lu) doesn't match number of components in manifest (%lu)", buf, 0x20u);
        }

        goto LABEL_91;
      }

      v60 = sub_100063A54(v39);
      if (sub_1000083A0(v60))
      {
        *buf = 136315138;
        v111 = "[MSDSignedManifestV7 initWithManifestData:]";
        sub_1000159CC(&_mh_execute_header, v61, v62, "%s: SystemApps section in wrong format.", v63, v64, v65, v66, v94, log, v97, v30, v102, v104, v106, v108, v109.receiver, v109.super_class);
      }

      goto LABEL_83;
    }

    v51 = sub_100063A54(v26);
    if (sub_1000083A0(v51))
    {
      sub_1000159EC();
      sub_1000159CC(&_mh_execute_header, v88, v89, "%s: payload format not correct.", v90, v91, v92, v93, v94, log, v97, v99, v101, v103, v105, v107, v109.receiver, v109.super_class);
    }

    v16 = 0;
LABEL_95:
    v18 = 0;
    goto LABEL_53;
  }

  v16 = 0;
LABEL_12:
  v18 = 0;
LABEL_54:

  return v18;
}

@end