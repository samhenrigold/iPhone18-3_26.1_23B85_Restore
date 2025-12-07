@interface MSDOperationBuilder
- (MSDOperationBuilder)initWithSignedManifest:(id)manifest forBackgroundDownload:(BOOL)download verifyHashBeforeStaging:(BOOL)staging;
- (id)buildAppDataOperationsWithIdentifier:(id)identifier andDependencies:(id)dependencies;
- (id)buildAppOperationsWithIdentifier:(id)identifier shouldDeferApp:(BOOL)app;
- (id)buildAppRemovalOperationsWithIdentifier:(id)identifier;
- (id)buildBackupOperationsWithPath:(id)path andIndex:(unint64_t)index;
- (id)buildConfigurationProfileOperationsWithIdentifier:(id)identifier;
- (id)buildProvisioningProfileOperations:(id)operations;
- (id)buildSettingsOperationWithIdentifier:(id)identifier;
- (id)buildStandalonePkgOperationsWithIdentifier:(id)identifier;
- (id)buildSystemAppOperationsWithIdentifier:(id)identifier;
- (id)sequentialGroupForIdentifiers:(id)identifiers andContext:(id)context;
- (id)sequentialOperationsForIdentifiers:(id)identifiers andContext:(id)context;
@end

@implementation MSDOperationBuilder

- (MSDOperationBuilder)initWithSignedManifest:(id)manifest forBackgroundDownload:(BOOL)download verifyHashBeforeStaging:(BOOL)staging
{
  stagingCopy = staging;
  downloadCopy = download;
  manifestCopy = manifest;
  v17.receiver = self;
  v17.super_class = MSDOperationBuilder;
  v9 = [(MSDOperationBuilder *)&v17 init];
  v10 = v9;
  if (v9)
  {
    [(MSDOperationBuilder *)v9 setSignedManifest:manifestCopy];
    [(MSDOperationBuilder *)v10 setForBackgroundDownload:downloadCopy];
    [(MSDOperationBuilder *)v10 setVerifyHashBeforeStaging:stagingCopy];
    [(MSDOperationBuilder *)v10 setDisableBackgroundInstall:+[MSDHubFeatureFlags disableBackgroundInstall]];
    disableBackgroundInstall = [(MSDOperationBuilder *)v10 disableBackgroundInstall];
    if (disableBackgroundInstall)
    {
      v12 = sub_100063A54(disableBackgroundInstall);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Background install is disabled by feature flag!", v16, 2u);
      }
    }

    [MSDOperationContext setDownloadOnly:downloadCopy];
    v13 = +[MSDContentFilesContext processedContainers];
    [v13 removeAllObjects];

    v14 = v10;
  }

  return v10;
}

- (id)buildBackupOperationsWithPath:(id)path andIndex:(unint64_t)index
{
  pathCopy = path;
  signedManifest = [(MSDOperationBuilder *)self signedManifest];
  v8 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [signedManifest getVersion]);

  v9 = [MSDSignedManifest getComponentFromPath:pathCopy forManifestVersion:v8];
  v10 = +[MSDTargetDevice sharedInstance];
  demoUserHomePath = [v10 demoUserHomePath];

  v12 = [MSDManifest alloc];
  signedManifest2 = [(MSDOperationBuilder *)self signedManifest];
  v14 = [signedManifest2 mergedBackupManifest:{index, 1}];
  v15 = [(MSDManifest *)v12 initWithDictionary:v14 andUserHomePath:demoUserHomePath];

  if (v15)
  {
    v17 = [MSDContentFilesContext defaultContextForBackupItem:v9];
    [v17 setMasterManifest:v15];
    [v17 setVerifyFileHash:[(MSDOperationBuilder *)self verifyHashBeforeStaging]];
    signedManifest3 = [(MSDOperationBuilder *)self signedManifest];
    v19 = [signedManifest3 originServerForBackupManifest:{index, 1}];
    [v17 setOriginServer:v19];

    signedManifest4 = [(MSDOperationBuilder *)self signedManifest];
    v21 = [signedManifest4 getDataComponentRealSizeFromSection:@"BackupData" forIdentifier:v9];
    [v17 setDiskSpacedRequired:v21];

    [v17 setContentBeingInstalled:index, 1];
    [v17 setAppIdentifier:v9];
    if ([(MSDOperationBuilder *)self forBackgroundDownload])
    {
      v22 = @"/private/var/mnt/com.apple.mobilestoredemo.snapshot";
    }

    else
    {
      v22 = @"/";
    }

    [v17 setRootFileSystemPath:v22];
    v23 = [NSMutableArray arrayWithObjects:@"MSDContentFilesPrepareOperation", @"MSDContentFilesDownloadOperation", @"MSDContentFilesInstallOperation", 0];
    if ([(MSDOperationBuilder *)self forBackgroundDownload]&& [(MSDOperationBuilder *)self disableBackgroundInstall])
    {
      [v23 removeLastObject];
    }

    if ([(MSDOperationBuilder *)self forBackgroundDownload])
    {
      goto LABEL_13;
    }

    signedManifest5 = [(MSDOperationBuilder *)self signedManifest];
    v25 = [signedManifest5 isItemBaseBackup:pathCopy];

    if (v25 & 1) != 0 || (-[MSDOperationBuilder signedManifest](self, "signedManifest"), v26 = objc_claimAutoreleasedReturnValue(), v27 = [v26 isItemProvisioningProfileBackup:pathCopy], v26, (v27))
    {
      v28 = &off_10016B518;
    }

    else
    {
      signedManifest6 = [(MSDOperationBuilder *)self signedManifest];
      v32 = [signedManifest6 isItemConfigurationProfileBackup:pathCopy];

      if (!v32)
      {
        goto LABEL_13;
      }

      v28 = &off_10016B510;
    }

    [v23 addObject:*v28];
LABEL_13:
    v29 = [(MSDOperationBuilder *)self sequentialOperationsForIdentifiers:v23 andContext:v17];

    goto LABEL_14;
  }

  v17 = sub_100063A54(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    sub_1000CB818();
  }

  v29 = 0;
LABEL_14:

  return v29;
}

- (id)buildStandalonePkgOperationsWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  signedManifest = [(MSDOperationBuilder *)self signedManifest];
  v6 = [signedManifest getManifestInfoFromSection:@"Packages" forIdentifier:identifierCopy];

  if (!v6)
  {
    v20 = sub_100063A54(v7);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v25 = identifierCopy;
      v23 = "Missing Info section for stand-alone package:  %{public}@";
LABEL_13:
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v23, buf, 0xCu);
    }

LABEL_14:
    v21 = 0;
    goto LABEL_6;
  }

  v8 = [v6 objectForKey:@"Hash"];
  if (!v8)
  {
    v20 = sub_100063A54(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v25 = identifierCopy;
      v23 = "Missing Hash value in the Info section for stand-alone package:  %{public}@";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v9 = v8;
  v10 = objc_alloc_init(MSDInstallableFileContext);
  [(MSDOperationContext *)v10 setIdentifier:identifierCopy];
  [(MSDInstallableFileContext *)v10 setFileType:1];
  hexStringRepresentation = [v9 hexStringRepresentation];
  [(MSDInstallableFileContext *)v10 setFileHash:hexStringRepresentation];

  [(MSDInstallableFileContext *)v10 setVerifyFileHash:[(MSDOperationBuilder *)self verifyHashBeforeStaging]];
  signedManifest2 = [(MSDOperationBuilder *)self signedManifest];
  v13 = [signedManifest2 getOriginServerFromSection:@"Packages" forIdentifier:identifierCopy];
  [(MSDInstallableFileContext *)v10 setOriginServer:v13];

  signedManifest3 = [(MSDOperationBuilder *)self signedManifest];
  v15 = [signedManifest3 getStandAlonePackageRealSize:identifierCopy];
  unsignedLongLongValue = [v15 unsignedLongLongValue];

  signedManifest4 = [(MSDOperationBuilder *)self signedManifest];
  v18 = [signedManifest4 getStandAlonePackageFileSize:identifierCopy];
  v19 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v18 unsignedLongLongValue] + unsignedLongLongValue + ((((((5 * unsignedLongLongValue) >> 1) & 0x3FFFFFFFFFFFFFFFLL) * 0x28F5C28F5C28F5C3uLL) >> 64) >> 2));
  [(MSDOperationContext *)v10 setDiskSpacedRequired:v19];

  v20 = [NSMutableArray arrayWithObjects:@"MSDBasePrepareOperation", @"MSDInstallableFileDownloadOperation", 0];
  if (![(MSDOperationBuilder *)self forBackgroundDownload])
  {
    [v20 addObject:@"MSDPackageInstallOperation"];
  }

  v21 = [(MSDOperationBuilder *)self sequentialOperationsForIdentifiers:v20 andContext:v10];

LABEL_6:

  return v21;
}

- (id)buildConfigurationProfileOperationsWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    v21 = sub_100063A54(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1000CBB00(v21, v24, v25, v26, v27, v28, v29, v30);
    }

    goto LABEL_16;
  }

  signedManifest = [(MSDOperationBuilder *)self signedManifest];
  v6 = [signedManifest getManifestDataFromSection:@"ConfigurationProfiles" forIdentifier:identifierCopy];

  if (!v6)
  {
    v21 = sub_100063A54(v7);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1000CBA7C();
    }

LABEL_16:
    v22 = 0;
    goto LABEL_9;
  }

  if ([v6 count]!= 1)
  {
    sub_1000CB880(identifierCopy);
LABEL_20:
    v22 = 0;
    v21 = v6;
    goto LABEL_9;
  }

  signedManifest2 = [(MSDOperationBuilder *)self signedManifest];
  v9 = [signedManifest2 getManifestInfoFromSection:@"ConfigurationProfiles" forIdentifier:identifierCopy];

  if (!v9)
  {
    sub_1000CB9D8(identifierCopy);
    goto LABEL_20;
  }

  allKeys = [v6 allKeys];
  firstObject = [allKeys firstObject];

  v12 = [v6 objectForKey:firstObject];
  v13 = [v12 objectForKey:@"MSDManifestFileHash"];

  if (!v13)
  {
    sub_1000CB914(firstObject, identifierCopy, v9);
    goto LABEL_20;
  }

  v14 = objc_alloc_init(MSDInstallableFileContext);
  [(MSDOperationContext *)v14 setIdentifier:identifierCopy];
  [(MSDInstallableFileContext *)v14 setFileType:3];
  hexStringRepresentation = [v13 hexStringRepresentation];
  [(MSDInstallableFileContext *)v14 setFileHash:hexStringRepresentation];

  [(MSDInstallableFileContext *)v14 setVerifyFileHash:[(MSDOperationBuilder *)self verifyHashBeforeStaging]];
  signedManifest3 = [(MSDOperationBuilder *)self signedManifest];
  v17 = [signedManifest3 getOriginServerFromSection:@"ConfigurationProfiles" forIdentifier:identifierCopy];
  [(MSDInstallableFileContext *)v14 setOriginServer:v17];

  signedManifest4 = [(MSDOperationBuilder *)self signedManifest];
  v19 = [signedManifest4 getDataComponentRealSizeFromSection:@"ConfigurationProfiles" forIdentifier:identifierCopy];
  [(MSDOperationContext *)v14 setDiskSpacedRequired:v19];

  v20 = [v9 objectForKey:@"ProfileIdentifier"];
  [(MSDInstallableFileContext *)v14 setProfileIdentifier:v20];

  v21 = [NSMutableArray arrayWithObjects:@"MSDBasePrepareOperation", @"MSDInstallableFileDownloadOperation", 0];
  if (![(MSDOperationBuilder *)self forBackgroundDownload])
  {
    [v21 addObject:@"MSDConfigurationProfileInstallOperation"];
  }

  v22 = [(MSDOperationBuilder *)self sequentialOperationsForIdentifiers:v21 andContext:v14];

LABEL_9:

  return v22;
}

- (id)buildAppRemovalOperationsWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = objc_alloc_init(NSMutableArray);
  v6 = objc_alloc_init(MSDInstallableFileContext);
  [(MSDInstallableFileContext *)v6 setFileType:0];
  [(MSDOperationContext *)v6 setIdentifier:identifierCopy];

  [(MSDInstallableFileContext *)v6 setVerifyFileHash:[(MSDOperationBuilder *)self verifyHashBeforeStaging]];
  v14 = @"MSDIPAUninstallOperation";
  v7 = [NSArray arrayWithObjects:&v14 count:1];
  v8 = [(MSDOperationBuilder *)self sequentialGroupForIdentifiers:v7 andContext:v6];

  if (v8)
  {
    operations = [v8 operations];
    allObjects = [operations allObjects];
    [v5 addObjectsFromArray:allObjects];

    v12 = v5;
  }

  else
  {
    sub_1000CBB70(v9);
    v12 = 0;
  }

  return v12;
}

- (id)buildSettingsOperationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  signedManifest = [(MSDOperationBuilder *)self signedManifest];
  v6 = [signedManifest getSettingsDataFromSection:@"BackupData" forIdentifier:identifierCopy];

  v8 = sub_100063A54(v7);
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315394;
      v14 = "[MSDOperationBuilder buildSettingsOperationWithIdentifier:]";
      v15 = 2114;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s - %{public}@", &v13, 0x16u);
    }

    v9 = [MSDSettingsContext defaultContextForIdentifier:identifierCopy];
    [v9 setDataDict:v6];
    v10 = +[NSMutableArray array];
    [v10 addObject:@"MSDSettingsInstallOperation"];
    v11 = [(MSDOperationBuilder *)self sequentialOperationsForIdentifiers:v10 andContext:v9];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000CBBCC();
    }

    v11 = 0;
  }

  return v11;
}

- (id)sequentialOperationsForIdentifiers:(id)identifiers andContext:(id)context
{
  identifiersCopy = identifiers;
  contextCopy = context;
  v7 = objc_alloc_init(NSMutableArray);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = identifiersCopy;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [MSDOperationRepository createOperationFromIdentifier:*(*(&v18 + 1) + 8 * i) withContext:contextCopy, v18];
        if (!v13)
        {

          v16 = 0;
          goto LABEL_13;
        }

        v14 = v13;
        if ([v7 count])
        {
          lastObject = [v7 lastObject];
          [v14 addDependency:lastObject];
        }

        [v7 addObject:v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v16 = v7;
LABEL_13:

  return v16;
}

- (id)sequentialGroupForIdentifiers:(id)identifiers andContext:(id)context
{
  v4 = [(MSDOperationBuilder *)self sequentialOperationsForIdentifiers:identifiers andContext:context];
  v5 = [[MSDOperationGroup alloc] initWithOperations:v4];

  return v5;
}

- (id)buildAppDataOperationsWithIdentifier:(id)identifier andDependencies:(id)dependencies
{
  identifierCopy = identifier;
  dependenciesCopy = dependencies;
  v8 = +[MSDTargetDevice sharedInstance];
  demoUserHomePath = [v8 demoUserHomePath];

  v60 = objc_alloc_init(NSMutableArray);
  v9 = objc_alloc_init(MSDOperationContext);
  v59 = identifierCopy;
  [(MSDOperationContext *)v9 setIdentifier:identifierCopy];
  if ([dependenciesCopy count])
  {
    v74 = @"MSDApplicationDataPrepareOperation";
    v10 = [NSArray arrayWithObjects:&v74 count:1];
    v11 = [(MSDOperationBuilder *)self sequentialGroupForIdentifiers:v10 andContext:v9];

    if (v11)
    {
      [v60 addObject:v11];
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v12 = dependenciesCopy;
      v13 = [v12 countByEnumeratingWithState:&v65 objects:v73 count:16];
      if (!v13)
      {
        goto LABEL_49;
      }

      v14 = v13;
      v54 = *v66;
      v57 = v11;
      v51 = v9;
      v52 = dependenciesCopy;
      v53 = v12;
      while (1)
      {
        v15 = 0;
        v50 = v14;
        do
        {
          if (*v66 != v54)
          {
            objc_enumerationMutation(v12);
          }

          v55 = v15;
          v16 = *(*(&v65 + 1) + 8 * v15);
          v17 = [v12 objectForKey:v16];
          v18 = v16;
          v19 = v18;
          if (!v17 || (v18 = [v17 count]) == 0)
          {
            v21 = sub_100063A54(v18);
            if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_17;
            }

            *buf = 138543362;
            *&buf[4] = v19;
            v22 = v21;
            v23 = "No dependency listed under: %{public}@";
LABEL_15:
            v24 = 12;
LABEL_16:
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v23, buf, v24);
            goto LABEL_17;
          }

          v20 = [v19 isEqualToString:@"ProvisioningProfiles"];
          if (v20)
          {
            v21 = sub_100063A54(v20);
            if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_17;
            }

            *buf = 0;
            v22 = v21;
            v23 = "Skip app provisioning profile dependency.";
            v24 = 2;
            goto LABEL_16;
          }

          if ([v19 isEqualToString:@"AppData"] & 1) != 0 || (objc_msgSend(v19, "isEqualToString:", @"ExtensionData") & 1) != 0 || (objc_msgSend(v19, "isEqualToString:", @"GroupData") & 1) != 0 || (objc_msgSend(v19, "isEqualToString:", @"UserData") & 1) != 0 || (v25 = objc_msgSend(v19, "isEqualToString:", @"SharedAppData"), (v25))
          {
            v63 = 0u;
            v64 = 0u;
            v61 = 0u;
            v62 = 0u;
            v21 = v17;
            v26 = [v21 countByEnumeratingWithState:&v61 objects:v72 count:16];
            if (v26)
            {
              v27 = v26;
              obj = v21;
              v28 = *v62;
              while (2)
              {
                v29 = 0;
                do
                {
                  if (*v62 != v28)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v30 = *(*(&v61 + 1) + 8 * v29);
                  v31 = sub_100063A54(v26);
                  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138543618;
                    *&buf[4] = v30;
                    v70 = 2114;
                    v71 = v19;
                    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Creating operation sequence for app data: <Name = %{public}@, Type = %{public}@>", buf, 0x16u);
                  }

                  signedManifest = [(MSDOperationBuilder *)self signedManifest];
                  v33 = [signedManifest getManifestDataFromSection:v19 forIdentifier:v30];

                  if (!v33)
                  {
                    sub_1000CBC34(v30, buf);
                    v36 = *buf;
LABEL_55:

                    v47 = 0;
                    v9 = v51;
                    dependenciesCopy = v52;
                    goto LABEL_56;
                  }

                  signedManifest2 = [(MSDOperationBuilder *)self signedManifest];
                  v35 = [signedManifest2 isContainerizedComponent:v19];

                  if (v35)
                  {
                    [MSDContentFilesContext defaultContextForContainerizedAppDataItem:v30];
                  }

                  else
                  {
                    [MSDContentFilesContext defaultContextForNonContainerizedAppDataItem:v30];
                  }
                  v36 = ;
                  v37 = [[MSDManifest alloc] initWithDictionary:v33 andUserHomePath:demoUserHomePath];
                  [v36 setMasterManifest:v37];

                  [v36 setIdentifier:v30];
                  [v36 setContainerType:v19];
                  [v36 setVerifyFileHash:{-[MSDOperationBuilder verifyHashBeforeStaging](self, "verifyHashBeforeStaging")}];
                  signedManifest3 = [(MSDOperationBuilder *)self signedManifest];
                  v39 = [signedManifest3 getOriginServerFromSection:v19 forIdentifier:v30];
                  [v36 setOriginServer:v39];

                  signedManifest4 = [(MSDOperationBuilder *)self signedManifest];
                  v41 = [signedManifest4 getDataComponentRealSizeFromSection:v19 forIdentifier:v30];
                  [v36 setDiskSpacedRequired:v41];

                  [v36 setAppIdentifier:v59];
                  if ([(MSDOperationBuilder *)self forBackgroundDownload])
                  {
                    v42 = @"/private/var/mnt/com.apple.mobilestoredemo.snapshot";
                  }

                  else
                  {
                    v42 = @"/";
                  }

                  [v36 setRootFileSystemPath:v42];
                  v43 = [NSMutableArray arrayWithObjects:@"MSDContentFilesPrepareOperation", @"MSDContentFilesDownloadOperation", @"MSDContentFilesInstallOperation", 0];
                  if ([(MSDOperationBuilder *)self forBackgroundDownload]&& [(MSDOperationBuilder *)self disableBackgroundInstall])
                  {
                    [v43 removeLastObject];
                  }

                  v44 = [(MSDOperationBuilder *)self sequentialGroupForIdentifiers:v43 andContext:v36];
                  v11 = v57;
                  if (!v44)
                  {

                    goto LABEL_55;
                  }

                  v45 = v44;
                  [v44 addDependency:v57];
                  [v60 addObject:v45];

                  v29 = v29 + 1;
                }

                while (v27 != v29);
                v26 = [obj countByEnumeratingWithState:&v61 objects:v72 count:16];
                v27 = v26;
                if (v26)
                {
                  continue;
                }

                break;
              }

              v21 = obj;
              v17 = obj;
              v12 = v53;
              v14 = v50;
            }

            else
            {
              v17 = v21;
            }
          }

          else
          {
            v21 = sub_100063A54(v25);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              *&buf[4] = v19;
              v22 = v21;
              v23 = "Ignore unrecognized app dependency: %{public}@";
              goto LABEL_15;
            }
          }

LABEL_17:

          v15 = v55 + 1;
        }

        while ((v55 + 1) != v14);
        v46 = [v12 countByEnumeratingWithState:&v65 objects:v73 count:16];
        v14 = v46;
        v9 = v51;
        dependenciesCopy = v52;
        if (!v46)
        {
LABEL_49:

          v47 = [[MSDOperationGroup alloc] initWithOperationGroups:v60];
          goto LABEL_56;
        }
      }
    }

    sub_1000CBCDC(@"MSDApplicationDataPrepareOperation");
    v47 = 0;
  }

  else
  {
    v48 = sub_100063A54(0);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = identifierCopy;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "No app dependencies for %{public}@; skip building AppData operations ...", buf, 0xCu);
    }

    v47 = objc_alloc_init(MSDOperationGroup);
  }

LABEL_56:

  return v47;
}

- (id)buildProvisioningProfileOperations:(id)operations
{
  operationsCopy = operations;
  v5 = objc_alloc_init(NSMutableArray);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = operationsCopy;
  v30 = [v6 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v30)
  {
    v29 = *v32;
    obj = v6;
    v28 = v5;
    while (2)
    {
      for (i = 0; i != v30; i = i + 1)
      {
        if (*v32 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v31 + 1) + 8 * i);
        signedManifest = [(MSDOperationBuilder *)self signedManifest];
        v10 = [signedManifest getManifestDataFromSection:@"ProvisioningProfiles" forIdentifier:v8];

        if (!v10)
        {
          sub_1000CBE84(v8, &v35);
          firstObject = v35;
          goto LABEL_20;
        }

        v11 = [v10 count];
        if (v11 != 1)
        {
          firstObject = sub_100063A54(v11);
          v6 = obj;
          if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
          {
            sub_1000CBD70();
          }

          goto LABEL_21;
        }

        allKeys = [v10 allKeys];
        firstObject = [allKeys firstObject];

        v14 = [v10 objectForKey:firstObject];
        v15 = [v14 objectForKey:@"MSDManifestFileHash"];

        if (!v15)
        {
          sub_1000CBDD8(firstObject);
          goto LABEL_20;
        }

        v16 = objc_alloc_init(MSDInstallableFileContext);
        [(MSDOperationContext *)v16 setIdentifier:v8];
        [(MSDInstallableFileContext *)v16 setFileType:2];
        hexStringRepresentation = [v15 hexStringRepresentation];
        [(MSDInstallableFileContext *)v16 setFileHash:hexStringRepresentation];

        [(MSDInstallableFileContext *)v16 setVerifyFileHash:[(MSDOperationBuilder *)self verifyHashBeforeStaging]];
        signedManifest2 = [(MSDOperationBuilder *)self signedManifest];
        v19 = [signedManifest2 getOriginServerFromSection:@"ProvisioningProfiles" forIdentifier:v8];
        [(MSDInstallableFileContext *)v16 setOriginServer:v19];

        signedManifest3 = [(MSDOperationBuilder *)self signedManifest];
        v21 = [signedManifest3 getDataComponentRealSizeFromSection:@"ProvisioningProfiles" forIdentifier:v8];
        [(MSDOperationContext *)v16 setDiskSpacedRequired:v21];

        v22 = [NSMutableArray arrayWithObjects:@"MSDProvisioningProfilePrepareOperation", @"MSDInstallableFileDownloadOperation", 0];
        if (![(MSDOperationBuilder *)self forBackgroundDownload])
        {
          [v22 addObject:@"MSDProvisioningProfileInstallOperation"];
        }

        v23 = [(MSDOperationBuilder *)self sequentialOperationsForIdentifiers:v22 andContext:v16];
        v5 = v28;
        if (!v23)
        {

          firstObject = v22;
LABEL_20:
          v6 = obj;
LABEL_21:

          v25 = 0;
          goto LABEL_22;
        }

        v24 = v23;
        [v28 addObjectsFromArray:v23];
      }

      v6 = obj;
      v30 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
      if (v30)
      {
        continue;
      }

      break;
    }
  }

  v25 = [[MSDOperationGroup alloc] initWithOperations:v5];
LABEL_22:

  return v25;
}

- (id)buildSystemAppOperationsWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = objc_alloc_init(NSMutableArray);
  signedManifest = [(MSDOperationBuilder *)self signedManifest];
  getSystemAppDataList = [signedManifest getSystemAppDataList];

  if (getSystemAppDataList && (objc_opt_class(), v8 = objc_opt_isKindOfClass(), (v8 & 1) != 0))
  {
    v49 = identifierCopy;
    if ([(MSDOperationBuilder *)self forBackgroundDownload])
    {
      v9 = 0;
    }

    else
    {
      v9 = objc_alloc_init(MSDOperationContext);
      [(MSDOperationContext *)v9 setIdentifier:identifierCopy];
      v58 = @"MSDSystemAppsDataPrepareOperation";
      v10 = [NSArray arrayWithObjects:&v58 count:1];
      v11 = [(MSDOperationBuilder *)self sequentialGroupForIdentifiers:v10 andContext:v9];

      if (!v11)
      {
        goto LABEL_30;
      }

      operations = [(MSDOperationContext *)v11 operations];
      allObjects = [operations allObjects];
      [v5 addObjectsFromArray:allObjects];

      v9 = v11;
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v48 = getSystemAppDataList;
    obj = getSystemAppDataList;
    v14 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
    if (v14)
    {
      v16 = v14;
      v17 = *v53;
      *&v15 = 138543362;
      v50 = v15;
      while (2)
      {
        v18 = 0;
        do
        {
          if (*v53 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v52 + 1) + 8 * v18);
          v20 = sub_100063A54(v14);
          v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
          if (v21)
          {
            sub_100024E74(v21, v22, v23, v24, v25, v26, v27, v28, v48, v49, v50);
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Processing system app: %{public}@", v29, 0xCu);
          }

          signedManifest2 = [(MSDOperationBuilder *)self signedManifest];
          v31 = [signedManifest2 getSystemAppDependecies:v19];

          if (v31 && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) != 0))
          {
            v33 = [(MSDOperationBuilder *)self buildAppDataOperationsWithIdentifier:v19 andDependencies:v31];
            if (!v33)
            {
              v46 = sub_100063A54(0);
              if (sub_1000083A0(v46))
              {
                *buf = 0;
                _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to generate operation sequences from app dependencies.", buf, 2u);
              }

              v11 = 0;
              goto LABEL_29;
            }

            v34 = v33;
            if (v9)
            {
              [v33 addDependency:v9];
            }

            operations2 = [v34 operations];
            allObjects2 = [operations2 allObjects];
            [v5 addObjectsFromArray:allObjects2];
          }

          else
          {
            v34 = sub_100063A54(isKindOfClass);
            v37 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
            if (v37)
            {
              sub_100024E74(v37, v38, v39, v40, v41, v42, v43, v44, v48, v49, v50);
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Missing app data dependencies for system app:  %{public}@", v45, 0xCu);
            }
          }

          v18 = v18 + 1;
        }

        while (v16 != v18);
        v14 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
        v16 = v14;
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v11 = v5;
LABEL_29:
    getSystemAppDataList = v48;
    identifierCopy = v49;
  }

  else
  {
    v9 = sub_100063A54(v8);
    if (os_log_type_enabled(&v9->super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &v9->super, OS_LOG_TYPE_DEFAULT, "Missing SystemApps data section.", buf, 2u);
    }

    v11 = 0;
  }

LABEL_30:

  return v11;
}

- (id)buildAppOperationsWithIdentifier:(id)identifier shouldDeferApp:(BOOL)app
{
  appCopy = app;
  identifierCopy = identifier;
  v89 = objc_alloc_init(NSMutableArray);
  [(MSDOperationBuilder *)self signedManifest];
  objc_claimAutoreleasedReturnValue();
  sub_100024E44();
  v11 = [v10 getAppManifest:?];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v86 = v11;
  if ((isKindOfClass & 1) == 0)
  {
    v55 = sub_100063A54(isKindOfClass);
    if (sub_100024E50(v55))
    {
      *buf = 138543362;
      v92 = v11;
      sub_100024DE8(&_mh_execute_header, v56, v57, "Unexpected app info format: %{public}@", v58, v59, v60, v61, v79, v81, v83, v84, v11, v87, v89, v90);
    }

    v17 = 0;
    sub_100024E08();
    v88 = 0;
    goto LABEL_48;
  }

  [(MSDOperationBuilder *)self signedManifest];
  objc_claimAutoreleasedReturnValue();
  sub_100024E44();
  v5 = [v13 getAppDependecies:?];

  v88 = v5;
  if (v5)
  {
    objc_opt_class();
    v14 = objc_opt_isKindOfClass();
    if ((v14 & 1) == 0)
    {
      v71 = sub_100063A54(v14);
      if (sub_100024E50(v71))
      {
        *buf = 138543362;
        v92 = v5;
        sub_100024DE8(&_mh_execute_header, v72, v73, "Unexpected app dependencies format: %{public}@", v74, v75, v76, v77, v79, v81, v83, v84, v11, v5, v89, v90);
      }

      v17 = 0;
      sub_100024E08();
LABEL_48:
      v85 = 0;
      goto LABEL_49;
    }
  }

  v15 = [v5 objectForKey:@"ProvisioningProfiles"];
  v85 = v15;
  if (v15 && (v4 = v15, [v15 count]))
  {
    v16 = [(MSDOperationBuilder *)self buildProvisioningProfileOperations:v4];
    v17 = v16;
    if (!v16)
    {
      sub_100024E08();
      goto LABEL_49;
    }

    operations = [v16 operations];
    allObjects = [operations allObjects];
    [v89 addObjectsFromArray:allObjects];
  }

  else
  {
    v17 = 0;
  }

  v20 = [v11 objectForKey:@"Identifier"];
  v21 = [v11 objectForKey:@"Hash"];
  v6 = v21;
  v90 = v20;
  if (!v20 || !v21)
  {
    v62 = sub_100063A54(v21);
    if (sub_100024E50(v62))
    {
      *buf = 138543362;
      v92 = v11;
      v69 = "Missing app identifier or hash data from app info: %{public}@";
LABEL_42:
      sub_100024DE8(&_mh_execute_header, v63, v64, v69, v65, v66, v67, v68, v79, v81, v83, v85, v11, v88, v89, v20);
    }

LABEL_43:

    v4 = 0;
    v5 = 0;
LABEL_49:
    v37 = 0;
    v26 = 0;
    v50 = 0;
    v39 = v89;
    goto LABEL_28;
  }

  [(MSDOperationBuilder *)self signedManifest];
  objc_claimAutoreleasedReturnValue();
  sub_100024E44();
  v23 = [v22 getAppType:?];

  if (v23 >= 3)
  {
    v70 = sub_100063A54(v24);
    if (sub_100024E50(v70))
    {
      *buf = 134217984;
      v92 = v23;
      v69 = "Received unknown value for app type: %lu";
      goto LABEL_42;
    }

    goto LABEL_43;
  }

  v25 = v17;
  v26 = objc_alloc_init(MSDInstallableFileContext);
  [(MSDOperationContext *)v26 setIdentifier:identifierCopy];
  [(MSDOperationBuilder *)self signedManifest];
  objc_claimAutoreleasedReturnValue();
  sub_100024E44();
  v28 = [v27 originServerForApp:?];
  [(MSDInstallableFileContext *)v26 setOriginServer:v28];

  hexStringRepresentation = [v6 hexStringRepresentation];
  [(MSDInstallableFileContext *)v26 setFileHash:hexStringRepresentation];

  [(MSDInstallableFileContext *)v26 setFileType:0];
  [(MSDInstallableFileContext *)v26 setUniqueIdentifier:v90];
  [(MSDInstallableFileContext *)v26 setCurrentUniqueIdentifier:0];
  [(MSDInstallableFileContext *)v26 setUseDiffPatch:0];
  [(MSDInstallableFileContext *)v26 setAlreadyInstalled:0];
  [(MSDInstallableFileContext *)v26 setPricingAppUpdateDeferred:appCopy];
  [(MSDInstallableFileContext *)v26 setVerifyFileHash:[(MSDOperationBuilder *)self verifyHashBeforeStaging]];
  v30 = +[MSDTargetDevice sharedInstance];
  -[MSDInstallableFileContext setDeleteInstallableFileAfterInstall:](v26, "setDeleteInstallableFileAfterInstall:", [v30 isOfflineMode] ^ 1);

  [(MSDOperationBuilder *)self signedManifest];
  objc_claimAutoreleasedReturnValue();
  sub_100024E44();
  v32 = [v31 getAppRealSize:?];
  unsignedLongLongValue = [v32 unsignedLongLongValue];

  signedManifest = [(MSDOperationBuilder *)self signedManifest];
  v35 = [signedManifest getAppFileSize:identifierCopy];
  v36 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v35 unsignedLongLongValue] + unsignedLongLongValue + 10 * unsignedLongLongValue / 0x64uLL);
  [(MSDOperationContext *)v26 setDiskSpacedRequired:v36];

  v37 = [NSMutableArray arrayWithObjects:@"MSDApplicationFilePrepareOperation", @"MSDApplicationFileDownloadOperation", 0];
  if (![(MSDOperationBuilder *)self forBackgroundDownload])
  {
    v38 = &off_10016B500;
    if (v23 != 2)
    {
      v38 = &off_10016B508;
    }

    [v37 addObject:*v38];
  }

  v5 = [(MSDOperationBuilder *)self sequentialGroupForIdentifiers:v37 andContext:v26];
  v39 = v89;
  v17 = v25;
  if (v5)
  {
    if (![(MSDOperationBuilder *)self forBackgroundDownload]&& v25)
    {
      [v5 addDependency:v25];
    }

    operations2 = [v5 operations];
    allObjects2 = [operations2 allObjects];
    [v89 addObjectsFromArray:allObjects2];

    v42 = [identifierCopy isEqualToString:@"com.retailtech.arkenstone"];
    if (v42 & 1) != 0 || (v42 = [identifierCopy isEqualToString:@"com.apple.ist.windward"], (v42) || (v42 = objc_msgSend(identifierCopy, "isEqualToString:", @"com.apple.retailtech.experiences.mac"), (v42) || (v42 = objc_msgSend(identifierCopy, "isEqualToString:", @"com.apple.ist.DemoDiscoveryApp"), v42))
    {
      v43 = sub_100063A54(v42);
      if (sub_100024E50(v43))
      {
        *buf = 138543362;
        v92 = identifierCopy;
        sub_100024DE8(&_mh_execute_header, v44, v45, "Skipping updating app data for %{public}@ as requested.", v46, v47, v48, v49, v80, v82, v83, v85, v86, v88, v89, v90);
      }

      v50 = v39;
      v4 = 0;
    }

    else
    {
      v52 = [(MSDOperationBuilder *)self buildAppDataOperationsWithIdentifier:identifierCopy andDependencies:v88];
      if (v52)
      {
        v4 = v52;
        if (![(MSDOperationBuilder *)self forBackgroundDownload])
        {
          [v4 addDependency:v5];
        }

        operations3 = [v4 operations];
        allObjects3 = [operations3 allObjects];
        [v89 addObjectsFromArray:allObjects3];

        v39 = v89;
        v50 = v89;
      }

      else
      {
        v78 = sub_100063A54(0);
        if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v78, OS_LOG_TYPE_ERROR, "Failed to generate operation sequences from app dependencies.", buf, 2u);
        }

        v4 = 0;
        v50 = 0;
        v39 = v89;
      }
    }

    v17 = v25;
  }

  else
  {
    v4 = 0;
    v50 = 0;
  }

LABEL_28:

  return v50;
}

@end