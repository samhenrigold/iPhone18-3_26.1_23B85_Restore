@interface MSDKSignedManifest
+ (id)signedManifestAtPath:(id)path verifyManifest:(BOOL)manifest;
- (BOOL)_addDependenciesForComponent:(id)component withLookupDict:(id)dict;
- (BOOL)_buildAppDepedencies;
- (BOOL)_parseInstallationOrder:(id)order;
- (BOOL)_parseLocale;
- (BOOL)_parseManifestInfo:(id)info;
- (id)_componentListForSection:(id)section fromPayload:(id)payload;
- (id)_manifestDataFromFile:(id)file;
- (id)_parseAllFiles;
- (id)_parseFactoryBackupList;
- (id)_toComponentDictionary:(id)dictionary;
- (id)description;
- (id)initFromManifestAtPath:(id)path verifyManifest:(BOOL)manifest;
- (void)_parseLocale;
@end

@implementation MSDKSignedManifest

+ (id)signedManifestAtPath:(id)path verifyManifest:(BOOL)manifest
{
  manifestCopy = manifest;
  pathCopy = path;
  v6 = [[MSDKSignedManifest alloc] initFromManifestAtPath:pathCopy verifyManifest:manifestCopy];

  return v6;
}

- (id)initFromManifestAtPath:(id)path verifyManifest:(BOOL)manifest
{
  manifestCopy = manifest;
  v50 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v47.receiver = self;
  v47.super_class = MSDKSignedManifest;
  v7 = [(MSDKSignedManifest *)&v47 init];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_35;
  }

  v9 = defaultLogHandle(v7);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v49 = pathCopy;
    _os_log_impl(&dword_259B7D000, v9, OS_LOG_TYPE_DEFAULT, "Reading manifest at path %{public}@...", buf, 0xCu);
  }

  [(MSDKSignedManifest *)v8 setFilePath:pathCopy];
  v10 = [(MSDKSignedManifest *)v8 _manifestDataFromFile:pathCopy];
  if (!v10)
  {
LABEL_41:
    [MSDKSignedManifest initFromManifestAtPath:pathCopy verifyManifest:?];
    v45 = 0;
    goto LABEL_38;
  }

  v11 = v10;
  v12 = defaultLogHandle(v10);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_259B7D000, v12, OS_LOG_TYPE_DEFAULT, "Checking manifest version...", buf, 2u);
  }

  v13 = [v11 objectForKey:@"Version" ofType:objc_opt_class()];
  v14 = v13;
  if (!v13 || (v8->_version = [v13 intValue], v15 = -[MSDKSignedManifest _checkManifestVersion](v8, "_checkManifestVersion"), !v15))
  {
    v18 = 0;
    goto LABEL_40;
  }

  v16 = defaultLogHandle(v15);
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (manifestCopy)
  {
    if (v17)
    {
      *buf = 138543362;
      v49 = pathCopy;
      _os_log_impl(&dword_259B7D000, v16, OS_LOG_TYPE_DEFAULT, "Verifying manifest at path %{public}@...", buf, 0xCu);
    }

    v18 = +[MSDDemoManifestCheck sharedInstance];
    if (!v18)
    {
      [MSDKSignedManifest initFromManifestAtPath:? verifyManifest:?];
      goto LABEL_40;
    }

    v19 = [MEMORY[0x277CBEB98] setWithArray:&unk_286AE1630];
    v20 = [v18 verifyFactoryManifestSignature:v11 forDataSectionKeys:v19];

    if (!v20)
    {
      v11 = 0;
      goto LABEL_40;
    }

    v16 = defaultLogHandle(v21);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v49 = pathCopy;
      _os_log_impl(&dword_259B7D000, v16, OS_LOG_TYPE_DEFAULT, "Manifest at path %{public}@ verified", buf, 0xCu);
    }
  }

  else
  {
    if (v17)
    {
      *buf = 138543362;
      v49 = pathCopy;
      _os_log_impl(&dword_259B7D000, v16, OS_LOG_TYPE_DEFAULT, "Skipping verification for manifest at path %{public}@", buf, 0xCu);
    }

    v18 = 0;
    v20 = v11;
  }

  if (![(MSDKSignedManifest *)v8 _parseManifestInfo:v20]
    || ![(MSDKSignedManifest *)v8 _parseInstallationOrder:v20]
    || ([(MSDKSignedManifest *)v8 _componentListForSection:@"Apps" fromPayload:v20], v22 = objc_claimAutoreleasedReturnValue(), nonSystemAppList = v8->_nonSystemAppList, v8->_nonSystemAppList = v22, nonSystemAppList, !v8->_nonSystemAppList)
    || ([(MSDKSignedManifest *)v8 _componentListForSection:@"SystemApps" fromPayload:v20], v24 = objc_claimAutoreleasedReturnValue(), systemAppList = v8->_systemAppList, v8->_systemAppList = v24, systemAppList, !v8->_systemAppList)
    || ([(MSDKSignedManifest *)v8 _componentListForSection:@"BackupData" fromPayload:v20], v26 = objc_claimAutoreleasedReturnValue(), backupDataList = v8->_backupDataList, v8->_backupDataList = v26, backupDataList, !v8->_backupDataList)
    || ([(MSDKSignedManifest *)v8 _componentListForSection:@"UserData" fromPayload:v20], v28 = objc_claimAutoreleasedReturnValue(), userDataList = v8->_userDataList, v8->_userDataList = v28, userDataList, !v8->_userDataList)
    || ([(MSDKSignedManifest *)v8 _componentListForSection:@"AppData" fromPayload:v20], v30 = objc_claimAutoreleasedReturnValue(), appDataList = v8->_appDataList, v8->_appDataList = v30, appDataList, !v8->_appDataList)
    || ([(MSDKSignedManifest *)v8 _componentListForSection:@"GroupData" fromPayload:v20], v32 = objc_claimAutoreleasedReturnValue(), groupDataList = v8->_groupDataList, v8->_groupDataList = v32, groupDataList, !v8->_groupDataList)
    || ([(MSDKSignedManifest *)v8 _componentListForSection:@"ExtensionData" fromPayload:v20], v34 = objc_claimAutoreleasedReturnValue(), extensionDataList = v8->_extensionDataList, v8->_extensionDataList = v34, extensionDataList, !v8->_extensionDataList)
    || ([(MSDKSignedManifest *)v8 _componentListForSection:@"ProvisioningProfiles" fromPayload:v20], v36 = objc_claimAutoreleasedReturnValue(), provisioningProfiles = v8->_provisioningProfiles, v8->_provisioningProfiles = v36, provisioningProfiles, !v8->_provisioningProfiles)
    || ([(MSDKSignedManifest *)v8 _componentListForSection:@"ConfigurationProfiles" fromPayload:v20], v38 = objc_claimAutoreleasedReturnValue(), configurationProfiles = v8->_configurationProfiles, v8->_configurationProfiles = v38, configurationProfiles, !v8->_configurationProfiles)
    || ([(MSDKSignedManifest *)v8 _parseFactoryBackupList], v40 = objc_claimAutoreleasedReturnValue(), factoryBackupList = v8->_factoryBackupList, v8->_factoryBackupList = v40, factoryBackupList, !v40)
    || ([(MSDKSignedManifest *)v8 _parseAllFiles], v42 = objc_claimAutoreleasedReturnValue(), allFiles = v8->_allFiles, v8->_allFiles = v42, allFiles, !v42)
    || ![(MSDKSignedManifest *)v8 _parseLocale]
    || ![(MSDKSignedManifest *)v8 _buildAppDepedencies])
  {
    v11 = v20;
LABEL_40:

    goto LABEL_41;
  }

LABEL_35:
  v44 = defaultLogHandle(v7);
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v49 = pathCopy;
    _os_log_impl(&dword_259B7D000, v44, OS_LOG_TYPE_DEFAULT, "Successfully parsed manifest at path %{public}@", buf, 0xCu);
  }

  v45 = v8;
LABEL_38:

  return v45;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: Name:%@>", v5, self->_bundleName];

  return v6;
}

- (id)_manifestDataFromFile:(id)file
{
  fileCopy = file;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [defaultManager fileExistsAtPath:fileCopy];

  if (v5)
  {
    v7 = [MEMORY[0x277CBEAE0] inputStreamWithFileAtPath:fileCopy];
    if (v7)
    {
      v8 = v7;
      currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
      v10 = *MEMORY[0x277CBE640];
      [v8 scheduleInRunLoop:currentRunLoop forMode:*MEMORY[0x277CBE640]];

      [v8 open];
      v15 = 0;
      v11 = [MEMORY[0x277CCAC58] propertyListWithStream:v8 options:2 format:0 error:&v15];
      v12 = v15;
      [v8 close];
      currentRunLoop2 = [MEMORY[0x277CBEB88] currentRunLoop];
      [v8 removeFromRunLoop:currentRunLoop2 forMode:v10];

      if (!v11)
      {
        [MSDKSignedManifest _manifestDataFromFile:v12];
        goto LABEL_5;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_5;
      }

      [(MSDKSignedManifest *)fileCopy _manifestDataFromFile:v11];
    }

    else
    {
      v12 = defaultLogHandle(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [MSDKSignedManifest _manifestDataFromFile:];
      }
    }
  }

  else
  {
    v12 = defaultLogHandle(v6);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [MSDKSignedManifest _manifestDataFromFile:];
    }
  }

  v11 = 0;
LABEL_5:

  return v11;
}

- (BOOL)_parseManifestInfo:(id)info
{
  v33 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v5 = defaultLogHandle(infoCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v32 = @"Info";
    _os_log_impl(&dword_259B7D000, v5, OS_LOG_TYPE_DEFAULT, "Parsing %{public}@ section...", buf, 0xCu);
  }

  v6 = [infoCopy objectForKey:@"Info" ofType:objc_opt_class()];

  v29 = 0;
  if (v6)
  {
    v7 = [v6 objectForKey:@"Product" ofType:objc_opt_class()];
    products = self->_products;
    self->_products = v7;

    v9 = [v6 objectForKey:@"ContentCode" ofType:objc_opt_class()];
    contentCode = self->_contentCode;
    self->_contentCode = v9;

    v11 = [v6 objectForKey:@"BundleName" ofType:objc_opt_class()];
    bundleName = self->_bundleName;
    self->_bundleName = v11;

    v13 = [v6 objectForKey:@"CreateTime" ofType:objc_opt_class()];
    dateCreated = self->_dateCreated;
    self->_dateCreated = v13;

    v15 = [v6 objectForKey:@"Language" ofType:objc_opt_class()];
    language = self->_language;
    self->_language = v15;

    v17 = [v6 objectForKey:@"MinimumOSVersion" ofType:objc_opt_class()];
    minimumOSVersion = self->_minimumOSVersion;
    self->_minimumOSVersion = v17;

    v19 = [v6 objectForKey:@"NetworkTier" ofType:objc_opt_class()];
    networkTier = self->_networkTier;
    self->_networkTier = v19;

    v21 = [v6 objectForKey:@"PartNumber" ofType:objc_opt_class()];
    partNumber = self->_partNumber;
    self->_partNumber = v21;

    v23 = [v6 objectForKey:@"Revision" ofType:objc_opt_class()];
    revision = self->_revision;
    self->_revision = v23;

    v25 = [v6 objectForKey:@"ValidUntil" ofType:objc_opt_class()];
    validUntil = self->_validUntil;
    self->_validUntil = v25;

    v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%d", self->_partNumber, -[NSNumber intValue](self->_revision, "intValue")];
    bundleID = self->_bundleID;
    self->_bundleID = v27;

    if (self->_products)
    {
      if (self->_contentCode && self->_bundleName && self->_dateCreated && self->_language && self->_minimumOSVersion && self->_networkTier && self->_partNumber && self->_revision && self->_validUntil && self->_bundleID)
      {
        v29 = 1;
      }
    }
  }

  return v29;
}

- (BOOL)_parseInstallationOrder:(id)order
{
  v16 = *MEMORY[0x277D85DE8];
  orderCopy = order;
  v5 = defaultLogHandle(orderCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543362;
    v15 = @"InstallationOrder";
    _os_log_impl(&dword_259B7D000, v5, OS_LOG_TYPE_DEFAULT, "Parsing %{public}@...", &v14, 0xCu);
  }

  [(MSDKSignedManifest *)self setCriticalComponents:MEMORY[0x277CBEBF8]];
  v6 = objc_opt_new();
  v7 = [orderCopy objectForKey:@"InstallationOrder"];

  if (!v7)
  {
    [MSDKSignedManifest _parseInstallationOrder:v8];
LABEL_21:
    v12 = 0;
    goto LABEL_18;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      [MSDKSignedManifest _parseInstallationOrder:?];
      goto LABEL_21;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v7 objectForKey:@"CriticalComponents"];
    v11 = [v7 objectForKey:@"Components"];
    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v6 addObjectsFromArray:v10];
        [(MSDKSignedManifest *)self setCriticalComponents:v10];
      }
    }

    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v6 addObjectsFromArray:v11];
      }
    }

    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v6;
    v6 = [v7 mutableCopy];
LABEL_16:
  }

  [(MSDKSignedManifest *)self setInstallationOrder:v6];
  v12 = 1;
LABEL_18:

  return v12;
}

- (id)_parseFactoryBackupList
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_286AE1648];
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  [v5 addObjectsFromArray:self->_backupDataList];
  [v5 addObjectsFromArray:self->_userDataList];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v20;
    *&v8 = 138543362;
    v18 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        identifier = [v12 identifier];
        v14 = [v3 containsObject:identifier];

        if (v14)
        {
          v16 = defaultLogHandle(v15);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v18;
            v24 = v12;
            _os_log_impl(&dword_259B7D000, v16, OS_LOG_TYPE_DEFAULT, "Removing %{public}@ from factory backup list", buf, 0xCu);
          }

          [v4 addObject:v12];
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v9);
  }

  [v6 removeObjectsInArray:v4];

  return v6;
}

- (BOOL)_parseLocale
{
  v30 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = self->_backupDataList;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v25;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v25 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v24 + 1) + 8 * v7);
      identifier = [v8 identifier];
      v10 = [identifier isEqualToString:@"locale"];

      if (v10)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [(NSArray *)v3 countByEnumeratingWithState:&v24 objects:v29 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_15;
      }
    }

    data = [v8 data];
    firstObject = [data firstObject];

    if (firstObject)
    {
      data2 = [firstObject data];

      if (data2)
      {
        data3 = [firstObject data];
        v15 = [data3 objectForKey:@"language"];
        languageCode = self->_languageCode;
        self->_languageCode = v15;

        if (self->_languageCode)
        {
          data4 = [firstObject data];
          v18 = [data4 objectForKey:@"region"];
          regionCode = self->_regionCode;
          self->_regionCode = v18;

          v20 = self->_regionCode;
          if (v20)
          {
            v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", self->_languageCode, v20, v24];
            localeCode = self->_localeCode;
            self->_localeCode = v21;

            goto LABEL_15;
          }

          [(MSDKSignedManifest *)&v28 _parseLocale];
        }

        else
        {
          [(MSDKSignedManifest *)&v28 _parseLocale];
        }
      }

      else
      {
        [(MSDKSignedManifest *)&v28 _parseLocale];
      }
    }

    else
    {
      [(MSDKSignedManifest *)&v28 _parseLocale];
    }
  }

  else
  {
LABEL_15:

    if (self->_localeCode)
    {
      return 1;
    }

    [(MSDKSignedManifest *)&v28 _parseLocale];
    v3 = v28;
  }

  return 0;
}

- (id)_parseAllFiles
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  factoryBackupList = self->_factoryBackupList;
  appDataList = self->_appDataList;
  v42[0] = self->_nonSystemAppList;
  v42[1] = appDataList;
  groupDataList = self->_groupDataList;
  v42[2] = factoryBackupList;
  v42[3] = groupDataList;
  v43 = *&self->_extensionDataList;
  configurationProfiles = self->_configurationProfiles;
  [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:7];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v38 = 0u;
  v22 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v22)
  {
    v21 = *v36;
    do
    {
      v7 = 0;
      do
      {
        if (*v36 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = v7;
        v8 = *(*(&v35 + 1) + 8 * v7);
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v24 = v8;
        v26 = [v24 countByEnumeratingWithState:&v31 objects:v40 count:16];
        if (v26)
        {
          v25 = *v32;
          do
          {
            for (i = 0; i != v26; ++i)
            {
              if (*v32 != v25)
              {
                objc_enumerationMutation(v24);
              }

              v10 = *(*(&v31 + 1) + 8 * i);
              v27 = 0u;
              v28 = 0u;
              v29 = 0u;
              v30 = 0u;
              data = [v10 data];
              v12 = [data countByEnumeratingWithState:&v27 objects:v39 count:16];
              if (v12)
              {
                v13 = v12;
                v14 = *v28;
                do
                {
                  for (j = 0; j != v13; ++j)
                  {
                    if (*v28 != v14)
                    {
                      objc_enumerationMutation(data);
                    }

                    v16 = *(*(&v27 + 1) + 8 * j);
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        continue;
                      }
                    }

                    fileHash = [v16 fileHash];

                    if (fileHash)
                    {
                      [v3 addObject:v16];
                    }
                  }

                  v13 = [data countByEnumeratingWithState:&v27 objects:v39 count:16];
                }

                while (v13);
              }
            }

            v26 = [v24 countByEnumeratingWithState:&v31 objects:v40 count:16];
          }

          while (v26);
        }

        v7 = v23 + 1;
      }

      while (v23 + 1 != v22);
      v22 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v22);
  }

  v18 = [MEMORY[0x277CBEA60] arrayWithArray:v3];

  return v18;
}

- (BOOL)_buildAppDepedencies
{
  v30[9] = *MEMORY[0x277D85DE8];
  v3 = defaultLogHandle(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_259B7D000, v3, OS_LOG_TYPE_DEFAULT, "Building app component dependencies...", buf, 2u);
  }

  v29[0] = @"Apps";
  v22 = [(MSDKSignedManifest *)self _toComponentDictionary:self->_nonSystemAppList];
  v30[0] = v22;
  v29[1] = @"SystemApps";
  v4 = [(MSDKSignedManifest *)self _toComponentDictionary:self->_systemAppList];
  v30[1] = v4;
  v29[2] = @"AppData";
  v5 = [(MSDKSignedManifest *)self _toComponentDictionary:self->_appDataList];
  v30[2] = v5;
  v29[3] = @"BackupData";
  v6 = [(MSDKSignedManifest *)self _toComponentDictionary:self->_backupDataList];
  v30[3] = v6;
  v29[4] = @"UserData";
  v7 = [(MSDKSignedManifest *)self _toComponentDictionary:self->_userDataList];
  v30[4] = v7;
  v29[5] = @"GroupData";
  v8 = [(MSDKSignedManifest *)self _toComponentDictionary:self->_groupDataList];
  v30[5] = v8;
  v29[6] = @"ExtensionData";
  v9 = [(MSDKSignedManifest *)self _toComponentDictionary:self->_extensionDataList];
  v30[6] = v9;
  v29[7] = @"ProvisioningProfiles";
  v10 = [(MSDKSignedManifest *)self _toComponentDictionary:self->_provisioningProfiles];
  v30[7] = v10;
  v29[8] = @"ConfigurationProfiles";
  v11 = [(MSDKSignedManifest *)self _toComponentDictionary:self->_configurationProfiles];
  v30[8] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:9];

  v13 = objc_opt_new();
  [v13 addObjectsFromArray:self->_nonSystemAppList];
  [v13 addObjectsFromArray:self->_systemAppList];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v23 + 1) + 8 * i);
        getRawDependency = [v19 getRawDependency];

        if (getRawDependency)
        {
          [(MSDKSignedManifest *)self _addDependenciesForComponent:v19 withLookupDict:v12];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v16);
  }

  return 1;
}

- (id)_toComponentDictionary:(id)dictionary
{
  v18 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v4 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = dictionaryCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        identifier = [v10 identifier];
        [v4 setObject:v10 forKey:identifier];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

- (BOOL)_addDependenciesForComponent:(id)component withLookupDict:(id)dict
{
  v43 = *MEMORY[0x277D85DE8];
  componentCopy = component;
  dictCopy = dict;
  [componentCopy getRawDependency];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = v35 = 0u;
  v24 = [v6 countByEnumeratingWithState:&v32 objects:v42 count:16];
  if (!v24)
  {
    v19 = 1;
    goto LABEL_24;
  }

  v25 = v6;
  v26 = *v33;
  while (2)
  {
    for (i = 0; i != v24; ++i)
    {
      if (*v33 != v26)
      {
        objc_enumerationMutation(v6);
      }

      v8 = *(*(&v32 + 1) + 8 * i);
      v9 = [dictCopy objectForKey:v8];
      if (!v9)
      {
        [MSDKSignedManifest _addDependenciesForComponent:v8 withLookupDict:?];
        v21 = *buf;
        goto LABEL_28;
      }

      v10 = [v6 objectForKey:v8 ofType:objc_opt_class()];
      if (!v10)
      {
        v21 = defaultLogHandle(0);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [MSDKSignedManifest _addDependenciesForComponent:withLookupDict:];
        }

LABEL_28:
        v11 = v9;
LABEL_22:

        v19 = 0;
        goto LABEL_24;
      }

      v23 = v8;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v28 objects:v41 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v29;
        while (2)
        {
          for (j = 0; j != v13; ++j)
          {
            if (*v29 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v28 + 1) + 8 * j);
            v17 = [v9 objectForKey:v16 ofType:objc_opt_class()];
            if (!v17)
            {
              v20 = defaultLogHandle(0);
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                *&buf[4] = "[MSDKSignedManifest _addDependenciesForComponent:withLookupDict:]";
                v37 = 2114;
                v38 = v16;
                v39 = 2114;
                v40 = v23;
                _os_log_error_impl(&dword_259B7D000, v20, OS_LOG_TYPE_ERROR, "%s: Failed to lookup component with identifier %{public}@ in section %{public}@", buf, 0x20u);
              }

              v21 = v9;
              v6 = v25;
              goto LABEL_22;
            }

            v18 = v17;
            [componentCopy addDependency:v17];
          }

          v13 = [v11 countByEnumeratingWithState:&v28 objects:v41 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      v6 = v25;
    }

    v19 = 1;
    v24 = [v25 countByEnumeratingWithState:&v32 objects:v42 count:16];
    if (v24)
    {
      continue;
    }

    break;
  }

LABEL_24:

  return v19;
}

- (id)_componentListForSection:(id)section fromPayload:(id)payload
{
  v39 = *MEMORY[0x277D85DE8];
  sectionCopy = section;
  payloadCopy = payload;
  v7 = defaultLogHandle(payloadCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v34 = sectionCopy;
    _os_log_impl(&dword_259B7D000, v7, OS_LOG_TYPE_DEFAULT, "Parsing %{public}@ section...", buf, 0xCu);
  }

  v28 = objc_opt_new();
  v8 = [payloadCopy objectForKey:sectionCopy ofType:objc_opt_class()];
  if (!v8)
  {
    v21 = 0;
    goto LABEL_23;
  }

  v9 = [&unk_286AE18A0 objectForKey:sectionCopy];
  if (!v9)
  {
    v10 = defaultLogHandle(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      OUTLINED_FUNCTION_3();
      v35 = sectionCopy;
      _os_log_error_impl(&dword_259B7D000, v10, OS_LOG_TYPE_ERROR, "%s: cannot determine component type for section %{public}@", buf, 0x16u);
    }

LABEL_21:
    v21 = 0;
    goto LABEL_22;
  }

  v10 = v9;
  v27 = sectionCopy;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v26 = v8;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (!v12)
  {
    goto LABEL_14;
  }

  v13 = v12;
  v14 = *v30;
  while (2)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v30 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v29 + 1) + 8 * i);
      v17 = [v11 objectForKey:v16 ofType:objc_opt_class()];
      if (!v17)
      {
        v18 = defaultLogHandle(0);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          OUTLINED_FUNCTION_3();
          v35 = v16;
          v36 = v24;
          sectionCopy = v27;
          v37 = v27;
          _os_log_error_impl(&dword_259B7D000, v18, OS_LOG_TYPE_ERROR, "%s: component %{public}@ in section %{public}@ is of wrong format", buf, 0x20u);
        }

        else
        {
          sectionCopy = v27;
        }

LABEL_20:
        v8 = v26;

        goto LABEL_21;
      }

      v18 = v17;
      v19 = [[MSDKManifestComponent alloc] initWithIdentifier:v16 componentType:[v10 intValue] andDictionary:v17];
      if (!v19)
      {
        v22 = defaultLogHandle(0);
        sectionCopy = v27;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          OUTLINED_FUNCTION_3();
          v35 = v16;
          v36 = v25;
          v37 = v27;
          _os_log_error_impl(&dword_259B7D000, v22, OS_LOG_TYPE_ERROR, "%s: failed to parse component %{public}@ in section %{public}@", buf, 0x20u);
        }

        goto LABEL_20;
      }

      v20 = v19;
      [v28 addObject:v19];
    }

    v13 = [v11 countByEnumeratingWithState:&v29 objects:v38 count:16];
    if (v13)
    {
      continue;
    }

    break;
  }

LABEL_14:

  v21 = v28;
  sectionCopy = v27;
  v8 = v26;
LABEL_22:

LABEL_23:

  return v21;
}

- (void)initFromManifestAtPath:(uint64_t)a1 verifyManifest:.cold.1(uint64_t a1)
{
  v2 = defaultLogHandle(a1);
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v3, v4, v5, v6, v7, 2u);
  }
}

- (void)initFromManifestAtPath:(uint64_t)a1 verifyManifest:.cold.2(uint64_t a1)
{
  v2 = defaultLogHandle(a1);
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

- (void)_manifestDataFromFile:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_0();
  v3 = v0;
  _os_log_error_impl(&dword_259B7D000, v1, OS_LOG_TYPE_ERROR, "%s: Manifest file does not exist: %{public}@", v2, 0x16u);
}

- (void)_manifestDataFromFile:(uint64_t)a1 .cold.2(uint64_t a1, void *a2)
{
  v4 = defaultLogHandle(a1);
  if (OUTLINED_FUNCTION_4(v4))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
  }
}

- (void)_manifestDataFromFile:(uint64_t)a1 .cold.3(uint64_t a1)
{
  v2 = defaultLogHandle(a1);
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  }
}

- (void)_manifestDataFromFile:.cold.4()
{
  v4 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_0();
  v3 = v0;
  _os_log_error_impl(&dword_259B7D000, v1, OS_LOG_TYPE_ERROR, "%s: Failed to read manifest file: %{public}@", v2, 0x16u);
}

- (void)_parseInstallationOrder:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v2 = defaultLogHandle(a1);
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  }
}

- (void)_parseInstallationOrder:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v2 = defaultLogHandle(a1);
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

- (void)_parseLocale
{
  v1 = defaultLogHandle(self);
  if (OUTLINED_FUNCTION_4(v1))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  }

  OUTLINED_FUNCTION_6();
}

- (void)_addDependenciesForComponent:withLookupDict:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v4[0] = 136315650;
  OUTLINED_FUNCTION_0_0();
  v5 = v0;
  v6 = v1;
  v7 = v2;
  _os_log_error_impl(&dword_259B7D000, v3, OS_LOG_TYPE_ERROR, "%s: Failed to parse %{public}@ dependency list for component %{public}@", v4, 0x20u);
}

- (void)_addDependenciesForComponent:(uint64_t)a1 withLookupDict:.cold.2(uint64_t a1)
{
  v1 = defaultLogHandle(a1);
  if (OUTLINED_FUNCTION_4(v1))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  }

  OUTLINED_FUNCTION_6();
}

@end