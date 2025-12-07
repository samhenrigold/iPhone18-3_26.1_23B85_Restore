@interface MSDSignedManifest
+ (id)appsPrefixForManifestVersion:(id)version;
+ (id)getComponentFromPath:(id)path forManifestVersion:(id)version;
+ (id)signedManifestFromManifestData:(id)data;
- (BOOL)hasSystemContainerBackupInRange:(_NSRange)range;
- (BOOL)isContainerizedComponent:(id)component;
- (BOOL)parseBundleID:(id)d;
- (BOOL)validateInstallationOrder;
- (MSDSignedManifest)initWithManifestData:(id)data;
- (NSDictionary)getAppDataList;
- (NSDictionary)getAppList;
- (NSDictionary)getBackup;
- (NSDictionary)getBackupList;
- (NSDictionary)getGroupDataList;
- (NSDictionary)getInfo;
- (NSDictionary)getPlugInDataList;
- (_NSRange)rangeOfGroupedBackups:(int64_t)backups;
- (id)appIdentifierFromOrderItem:(id)item;
- (id)getAppManifest:(id)manifest;
- (id)getComponentVersion:(id)version;
- (id)getDictFromSection:(id)section forIdentifier:(id)identifier;
- (id)getManifestFromSection:(id)section forIdentifier:(id)identifier;
- (id)getOriginServerFromSection:(id)section forIdentifier:(id)identifier;
- (id)getStandAlonePackageVersion:(id)version;
- (id)itemAtIndexInManifest:(int64_t)manifest;
- (id)mergedBackupManifest:(_NSRange)manifest;
- (id)originServerForApp:(id)app;
- (id)originServerForBackupManifest:(_NSRange)manifest;
- (int)getVersion;
- (void)dealloc;
- (void)parseInstallationOrder;
@end

@implementation MSDSignedManifest

+ (id)signedManifestFromManifestData:(id)data
{
  dataCopy = data;
  v4 = [[MSDSignedManifest alloc] initWithManifestData:dataCopy];

  return v4;
}

- (void)dealloc
{
  [(MSDSignedManifest *)self setPayload:0];
  v3.receiver = self;
  v3.super_class = MSDSignedManifest;
  [(MSDSignedManifest *)&v3 dealloc];
}

- (int)getVersion
{
  payload = [(MSDSignedManifest *)self payload];
  v3 = [payload objectForKey:@"Version"];

  LODWORD(payload) = [v3 intValue];
  return payload;
}

- (NSDictionary)getInfo
{
  payload = [(MSDSignedManifest *)self payload];
  v3 = [payload objectForKey:@"Info"];

  return v3;
}

- (NSDictionary)getAppList
{
  payload = [(MSDSignedManifest *)self payload];
  v3 = [payload objectForKey:@"App"];

  return v3;
}

- (NSDictionary)getAppDataList
{
  payload = [(MSDSignedManifest *)self payload];
  v3 = [payload objectForKey:@"AppData"];

  return v3;
}

- (NSDictionary)getGroupDataList
{
  payload = [(MSDSignedManifest *)self payload];
  v3 = [payload objectForKey:@"GroupData"];

  return v3;
}

- (NSDictionary)getPlugInDataList
{
  payload = [(MSDSignedManifest *)self payload];
  v3 = [payload objectForKey:@"ExtensionData"];

  return v3;
}

- (BOOL)isContainerizedComponent:(id)component
{
  componentCopy = component;
  if ([componentCopy isEqualToString:@"AppData"] & 1) != 0 || (objc_msgSend(componentCopy, "isEqualToString:", @"GroupData"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [componentCopy isEqualToString:@"ExtensionData"];
  }

  return v4;
}

- (id)getOriginServerFromSection:(id)section forIdentifier:(id)identifier
{
  v4 = [(MSDSignedManifest *)self getDictFromSection:section forIdentifier:identifier];
  v5 = [v4 objectForKey:@"OriginServer"];

  return v5;
}

- (NSDictionary)getBackup
{
  getVersion = [(MSDSignedManifest *)self getVersion];
  if (getVersion >= 5)
  {
    sub_1000D5FC0(getVersion);
    v5 = 0;
  }

  else
  {
    payload = [(MSDSignedManifest *)self payload];
    v5 = [payload objectForKey:@"Backup"];
  }

  return v5;
}

- (NSDictionary)getBackupList
{
  if ([(MSDSignedManifest *)self getVersion]< 5)
  {
    getBackup = [(MSDSignedManifest *)self getBackup];
    [NSDictionary dictionaryWithObject:getBackup forKey:@"backup.BaseBackup"];
  }

  else
  {
    getBackup = [(MSDSignedManifest *)self payload];
    [getBackup objectForKey:@"Backup"];
  }
  v4 = ;

  return v4;
}

- (id)itemAtIndexInManifest:(int64_t)manifest
{
  installationOrder = [(MSDSignedManifest *)self installationOrder];
  v5 = [installationOrder objectAtIndex:manifest];

  return v5;
}

- (_NSRange)rangeOfGroupedBackups:(int64_t)backups
{
  [(MSDSignedManifest *)self getVersion];
  backupsCopy = backups;
  v5 = 1;
  result.length = v5;
  result.location = backupsCopy;
  return result;
}

- (id)mergedBackupManifest:(_NSRange)manifest
{
  length = manifest.length;
  location = manifest.location;
  getVersion = [(MSDSignedManifest *)self getVersion];
  if (getVersion <= 4)
  {
    getBackup = [(MSDSignedManifest *)self getBackup];
    goto LABEL_19;
  }

  v7 = sub_100063A54(getVersion);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v27.location = location;
    v27.length = length;
    v8 = NSStringFromRange(v27);
    *buf = 138543362;
    v25 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Merging manifest item %{public}@", buf, 0xCu);
  }

  getBackup = +[NSMutableDictionary dictionary];
  installationOrder = [(MSDSignedManifest *)self installationOrder];
  if (location < location + length)
  {
    do
    {
      v10 = [installationOrder objectAtIndex:location];
      getBackupList = [(MSDSignedManifest *)self getBackupList];
      v12 = [getBackupList objectForKey:v10];

      v13 = [v12 objectForKey:@"Manifest"];
      v14 = v13;
      if (v13)
      {
        v15 = v13;

        v12 = v15;
      }

      if ([(MSDSignedManifest *)self isItemSystemContainerBackup:v10])
      {
        v16 = +[MSDPlatform sharedInstance];
        watchOS = [v16 watchOS];

        v19 = sub_100063A54(v18);
        v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
        if (!watchOS)
        {
          if (v20)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "System container backup only allowed on Watch devices.", buf, 2u);
          }

          goto LABEL_17;
        }

        if (v20)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "System container backup found. Start restoring UUID paths...", buf, 2u);
        }

        v21 = [NSString restoreSystemContainerUUIDPathsInDict:v12];

        v12 = v21;
      }

      [getBackup addEntriesFromDictionary:v12];
LABEL_17:

      ++location;
      --length;
    }

    while (length);
  }

LABEL_19:

  return getBackup;
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
    v12 = [v11 isEqualToString:@"backup.SystemContainer"];

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
        v18 = [v17 isEqualToString:@"backup.SystemContainer"];

        v14 = v16 + 1;
        --v15;
      }

      while (!v18);
      v13 = v16 < v10;
    }
  }

  return v13;
}

- (id)originServerForBackupManifest:(_NSRange)manifest
{
  location = manifest.location;
  if ([(MSDSignedManifest *)self getVersion:manifest.location]>= 5)
  {
    installationOrder = [(MSDSignedManifest *)self installationOrder];
    v7 = [installationOrder objectAtIndex:location];

    getBackupList = [(MSDSignedManifest *)self getBackupList];
    v9 = [getBackupList objectForKey:v7];

    v5 = [v9 objectForKey:@"OriginServer"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)originServerForApp:(id)app
{
  appCopy = app;
  getAppList = [(MSDSignedManifest *)self getAppList];
  v6 = [getAppList objectForKey:appCopy];

  if (v6)
  {
    v7 = [getAppList objectForKey:appCopy];
    v6 = [v7 objectForKey:@"OriginServer"];
  }

  return v6;
}

- (id)appIdentifierFromOrderItem:(id)item
{
  itemCopy = item;
  if ([(MSDSignedManifest *)self isItemApp:itemCopy])
  {
    v5 = [itemCopy substringFromIndex:{objc_msgSend(@"app.", "length")}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)appsPrefixForManifestVersion:(id)version
{
  intValue = [version intValue];
  v4 = @"/Apps/";
  if (intValue != 7)
  {
    v4 = 0;
  }

  if (intValue == 6)
  {
    return @"app.";
  }

  else
  {
    return v4;
  }
}

+ (id)getComponentFromPath:(id)path forManifestVersion:(id)version
{
  pathCopy = path;
  intValue = [version intValue];
  if (intValue != 7)
  {
    if (intValue != 6)
    {
      goto LABEL_19;
    }

    if ([pathCopy hasPrefix:@"app."])
    {
      v7 = @"app.";
LABEL_15:
      v8 = [(__CFString *)v7 length];
      v9 = pathCopy;
LABEL_16:
      v10 = [v9 substringFromIndex:v8];
      goto LABEL_20;
    }

    if ([pathCopy hasPrefix:@"backup."])
    {
      v7 = @"backup.";
      goto LABEL_15;
    }
  }

  if ([pathCopy hasPrefix:@"/Apps/"])
  {
    v7 = @"/Apps/";
    goto LABEL_15;
  }

  if ([pathCopy hasPrefix:@"/BackupData/"])
  {
    v7 = @"/BackupData/";
    goto LABEL_15;
  }

  if ([pathCopy hasPrefix:@"/Packages/"])
  {
    v7 = @"/Packages/";
    goto LABEL_15;
  }

  if ([pathCopy hasPrefix:@"/ConfigurationProfiles/"])
  {
    v7 = @"/ConfigurationProfiles/";
    goto LABEL_15;
  }

  if ([pathCopy hasPrefix:@"/SystemApps"])
  {
    v9 = pathCopy;
    v8 = 1;
    goto LABEL_16;
  }

LABEL_19:
  v10 = pathCopy;
LABEL_20:
  v11 = v10;

  return v11;
}

- (id)getComponentVersion:(id)version
{
  versionCopy = version;
  getAppList = [(MSDSignedManifest *)self getAppList];
  v6 = [getAppList objectForKey:versionCopy];

  v7 = [v6 objectForKey:@"Manifest"];
  v8 = [v7 objectForKey:@"CFBundleShortVersionString"];

  v10 = sub_100063A54(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    v13 = versionCopy;
    v14 = 2114;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "appName:%{public}@ componentVersion:%{public}@", &v12, 0x16u);
  }

  return v8;
}

- (id)getAppManifest:(id)manifest
{
  manifestCopy = manifest;
  getAppList = [(MSDSignedManifest *)self getAppList];
  v6 = [getAppList objectForKey:manifestCopy];

  v7 = [v6 objectForKey:@"Manifest"];

  return v7;
}

- (id)getStandAlonePackageVersion:(id)version
{
  v3 = sub_100063A54(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[MSDSignedManifest getStandAlonePackageVersion:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s - getStandAlonePackageVersion is applicable to manifest V7 only.", &v5, 0xCu);
  }

  return 0;
}

- (void)parseInstallationOrder
{
  v7 = objc_alloc_init(NSMutableArray);
  payload = [(MSDSignedManifest *)self payload];
  v4 = [payload objectForKey:@"InstallationOrder"];

  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v4 objectForKey:@"CriticalComponents"];
      v6 = [v4 objectForKey:@"Components"];
      if (v5)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v7 addObjectsFromArray:v5];
          [(MSDSignedManifest *)self setStaggeredContentUpdateEnabled:1];
          [(MSDSignedManifest *)self setCriticalComponents:v5];
        }
      }

      if (v6)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v7 addObjectsFromArray:v6];
        }
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_13;
      }

      v5 = v7;
      v7 = [v4 mutableCopy];
    }
  }

LABEL_13:
  [(MSDSignedManifest *)self setInstallationOrder:v7];
}

- (BOOL)validateInstallationOrder
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  installationOrder = [(MSDSignedManifest *)self installationOrder];
  v5 = [installationOrder countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v2 = v5;
    v6 = 0;
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(installationOrder);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        if ([(MSDSignedManifest *)self isItemProvisioningProfileBackup:v9]|| [(MSDSignedManifest *)self isItemBaseBackup:v9])
        {
          v6 = 1;
        }

        else
        {
          v10 = [(MSDSignedManifest *)self isItemApp:v9];
          if (v10)
          {
            if (v6)
            {
              v11 = 0;
              LOBYTE(v2) = 1;
            }

            else
            {
              v12 = sub_100063A54(v10);
              if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
              {
                *v14 = 0;
                _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Cannot place app before provisioning profile or base backup.", v14, 2u);
              }

              LOBYTE(v2) = 0;
              v11 = 0;
            }

            goto LABEL_18;
          }
        }
      }

      v2 = [installationOrder countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_18:

  return (v2 | v11) & 1;
}

- (id)getDictFromSection:(id)section forIdentifier:(id)identifier
{
  identifierCopy = identifier;
  sectionCopy = section;
  payload = [(MSDSignedManifest *)self payload];
  v9 = [payload objectForKey:sectionCopy];

  v10 = [v9 objectForKey:identifierCopy];

  return v10;
}

- (id)getManifestFromSection:(id)section forIdentifier:(id)identifier
{
  v4 = [(MSDSignedManifest *)self getDictFromSection:section forIdentifier:identifier];
  v5 = [v4 objectForKey:@"Manifest"];

  return v5;
}

- (BOOL)parseBundleID:(id)d
{
  dCopy = d;
  v5 = [dCopy objectForKey:@"PartNumber"];
  v6 = [dCopy objectForKey:@"Revision"];

  if (!v5)
  {
    sub_1000D60D0(v7);
LABEL_7:
    v9 = 0;
    goto LABEL_4;
  }

  if (!v6)
  {
    sub_1000D6028(v7);
    goto LABEL_7;
  }

  v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@_%d", v5, [v6 intValue]);
  [(MSDSignedManifest *)self setBundleID:v8];

  v9 = 1;
LABEL_4:

  return v9;
}

- (MSDSignedManifest)initWithManifestData:(id)data
{
  dataCopy = data;
  v5 = objc_alloc_init(NSMutableArray);
  v106.receiver = self;
  v106.super_class = MSDSignedManifest;
  v6 = [(MSDSignedManifest *)&v106 init];
  if (v6)
  {
    v7 = [dataCopy objectForKey:@"Version"];
    isKindOfClass = [dataCopy objectForKey:@"Info"];
    v9 = isKindOfClass;
    if (!isKindOfClass || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) == 0))
    {
      v11 = sub_100063A54(isKindOfClass);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v110 = "[MSDSignedManifest initWithManifestData:]";
        sub_10005F09C();
        _os_log_error_impl(v73, v74, v75, v76, v77, v78);
      }

      v18 = 0;
      goto LABEL_77;
    }

    v105 = v9;
    if (+[MSDPlatform iOSHub])
    {
      v10 = [v9 objectForKey:@"Product"];
      v11 = v10;
      if (!v10 || (v12 = objc_opt_class(), v10 = sub_10005F0A8(v12), (v10 & 1) == 0))
      {
        v53 = sub_100063A54(v10);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v110 = "[MSDSignedManifest initWithManifestData:]";
          sub_10005F09C();
          _os_log_error_impl(v85, v86, v87, v88, v89, v90);
        }

        goto LABEL_63;
      }

      v13 = +[MSDPlatform sharedInstance];
      [v13 setPlatformWithManifestProductList:v11];

      v14 = NSClassFromString(@"MSDHubTestConfiguration");
      if (v14)
      {
        sharedInstance = [(objc_class *)v14 sharedInstance];
        if ((objc_opt_respondsToSelector() & 1) != 0 && (v16 = [sharedInstance shouldRunManifestRigorousTest], (v16 & 1) == 0))
        {
          v20 = sub_100063A54(v16);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v110 = "[MSDSignedManifest initWithManifestData:]";
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s - Will not run rigorous testing on iOS hub.", buf, 0xCu);
          }

          v17 = &__kCFBooleanFalse;
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }

    v21 = +[MSDDemoManifestCheck sharedInstance];
    [(MSDSignedManifest *)v6 setManifestVerifier:v21];

    manifestVerifier = [(MSDSignedManifest *)v6 manifestVerifier];

    if (manifestVerifier)
    {
      manifestVerifier2 = [(MSDSignedManifest *)v6 manifestVerifier];
      getDataSectionKeys = [(MSDSignedManifest *)v6 getDataSectionKeys];
      v107 = @"RigorousTestingOverride";
      v108 = v17;
      v26 = [NSDictionary dictionaryWithObjects:&v108 forKeys:&v107 count:1];
      v18 = [manifestVerifier2 verifyManifestSignature:dataCopy forDataSectionKeys:getDataSectionKeys withOptions:v26];

      if (!v18)
      {
        v19 = 0;
        v9 = v105;
        goto LABEL_51;
      }

      objc_opt_class();
      v27 = objc_opt_isKindOfClass();
      v9 = v105;
      if ((v27 & 1) == 0)
      {
        v11 = sub_100063A54(v27);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v110 = "[MSDSignedManifest initWithManifestData:]";
          sub_10005F09C();
          _os_log_error_impl(v54, v55, v56, v57, v58, v59);
        }

        goto LABEL_77;
      }

      v11 = [v18 objectForKey:@"InstallationOrder"];
      if (v11)
      {
        v28 = objc_opt_class();
        if ((sub_10005F0A8(v28) & 1) == 0)
        {
          v29 = objc_opt_class();
          v30 = sub_10005F0A8(v29);
          if ((v30 & 1) == 0)
          {
            v60 = sub_100063A54(v30);
            if (!os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_76;
            }

            *buf = 136315138;
            v110 = "[MSDSignedManifest initWithManifestData:]";
            sub_10005F09C();
            goto LABEL_72;
          }
        }

        v104 = v5;
        v31 = [v18 objectForKey:@"Backup"];
        v32 = v31;
        if (!v31 || (objc_opt_class(), v31 = objc_opt_isKindOfClass(), (v31 & 1) == 0))
        {
          v52 = sub_100063A54(v31);
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            v110 = "[MSDSignedManifest initWithManifestData:]";
            sub_10005F09C();
            _os_log_error_impl(v79, v80, v81, v82, v83, v84);
          }

          v19 = 0;
          v5 = v104;
          goto LABEL_50;
        }

        v33 = [v18 objectForKey:@"App"];
        if (v33)
        {
          objc_opt_class();
          v34 = objc_opt_isKindOfClass();
          if ((v34 & 1) == 0)
          {
            v47 = sub_100063A54(v34);
            if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              v110 = "[MSDSignedManifest initWithManifestData:]";
              sub_10005F09C();
              _os_log_error_impl(v67, v68, v69, v70, v71, v72);
            }

            goto LABEL_80;
          }

          v35 = [v33 count];
        }

        else
        {
          v35 = 0;
        }

        v103 = v7;
        v36 = objc_opt_class();
        v37 = dataCopy;
        if (sub_10005F0A8(v36))
        {
          v38 = [v11 objectForKey:@"CriticalComponents"];

          if (v38)
          {
            v39 = [v11 objectForKey:@"CriticalComponents"];
            [v104 addObjectsFromArray:v39];
          }

          v40 = [v11 objectForKey:@"Components"];

          v41 = v104;
          if (v40)
          {
            v42 = [v11 objectForKey:@"Components"];
            [v104 addObjectsFromArray:v42];
          }
        }

        else
        {
          v43 = objc_opt_class();
          v41 = v104;
          if (sub_10005F0A8(v43))
          {
            [v104 addObjectsFromArray:v11];
          }
        }

        v44 = [v41 containsObject:@"systemappdata"];
        v45 = [v41 count];
        v46 = [v32 count];
        if (v44)
        {
          dataCopy = v37;
          if (v45 != &v35[v46 + 1])
          {
            v47 = sub_100063A54(v46);
            if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
LABEL_83:
              sub_10005F0C0();
              _os_log_error_impl(v97, v98, v99, v100, v101, v102);
              goto LABEL_79;
            }

            goto LABEL_79;
          }
        }

        else
        {
          dataCopy = v37;
          if (v45 != &v35[v46])
          {
            v47 = sub_100063A54(v46);
            if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              goto LABEL_83;
            }

LABEL_79:
            v7 = v103;
LABEL_80:

            v19 = 0;
            v5 = v104;
            v9 = v105;
            goto LABEL_50;
          }
        }

        v7 = v103;
        v5 = v104;
        v9 = v105;
      }

      if ([v7 intValue] > 4)
      {
        [(MSDSignedManifest *)v6 setSigningKey:@"MultipleContentSignings"];
      }

      else
      {
        v48 = [dataCopy objectForKey:@"SigningKey"];
        [(MSDSignedManifest *)v6 setSigningKey:v48];
      }

      [(MSDSignedManifest *)v6 setPayload:v18];
      [(MSDSignedManifest *)v6 parseInstallationOrder];
      validateInstallationOrder = [(MSDSignedManifest *)v6 validateInstallationOrder];
      if (validateInstallationOrder)
      {
        v50 = [(MSDSignedManifest *)v6 parseBundleID:v9];
        if (v50)
        {
          [MSDSignedManifest setSignedManifest:v6];
          v19 = v6;
LABEL_50:

          goto LABEL_51;
        }

        v60 = sub_100063A54(v50);
        if (!os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_76;
        }

        *buf = 0;
      }

      else
      {
        v60 = sub_100063A54(validateInstallationOrder);
        if (!os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
LABEL_76:

LABEL_77:
          v19 = 0;
          goto LABEL_50;
        }

        *buf = 0;
      }

      sub_10005F0C0();
LABEL_72:
      _os_log_error_impl(v61, v62, v63, v64, v65, v66);
      goto LABEL_76;
    }

    v11 = sub_100063A54(v23);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      sub_10005F0C0();
      _os_log_error_impl(v91, v92, v93, v94, v95, v96);
    }

LABEL_63:
    v18 = 0;
    v19 = 0;
    v9 = v105;
    goto LABEL_50;
  }

  v9 = 0;
  v18 = 0;
  v7 = 0;
  v19 = 0;
LABEL_51:

  return v19;
}

@end