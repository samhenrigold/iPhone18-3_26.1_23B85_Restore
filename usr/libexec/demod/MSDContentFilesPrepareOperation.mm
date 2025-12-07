@interface MSDContentFilesPrepareOperation
- (BOOL)_compareManifests;
- (BOOL)_deteremineContentFilesInstallNecessity;
- (BOOL)_generateDeviceManifest;
- (BOOL)_prepareStagingArea;
- (BOOL)_processAlreadyHaveList;
- (BOOL)_restoreStashedStagingToSecondaryStaging;
- (id)methodSelectors;
@end

@implementation MSDContentFilesPrepareOperation

- (id)methodSelectors
{
  if (+[MSDOperationContext downloadOnly](MSDOperationContext, "downloadOnly") && +[MSDHubFeatureFlags disableBackgroundInstall])
  {
    v2 = [NSValue valueWithPointer:"_deteremineContentFilesInstallNecessity"];
    v3 = [NSValue valueWithPointer:"_generateDeviceManifest"];
    v4 = [NSValue valueWithPointer:"_compareManifests"];
    v5 = [NSArray arrayWithObjects:v2, v3, v4, 0];
  }

  else
  {
    v2 = [NSValue valueWithPointer:"_deteremineContentFilesInstallNecessity"];
    v3 = [NSValue valueWithPointer:"_prepareStagingArea"];
    v4 = [NSValue valueWithPointer:"_generateDeviceManifest"];
    v6 = [NSValue valueWithPointer:"_compareManifests"];
    v7 = [NSValue valueWithPointer:"_processAlreadyHaveList"];
    v5 = [NSArray arrayWithObjects:v2, v3, v4, v6, v7, 0];
  }

  return v5;
}

- (BOOL)_deteremineContentFilesInstallNecessity
{
  context = [(MSDOperation *)self context];
  if ([context containerized])
  {
    context2 = [(MSDOperation *)self context];
    contentRootPath = [context2 contentRootPath];

    if (!contentRootPath)
    {
      v6 = +[MSDOperationContext downloadOnly];
      if ((v6 & 1) == 0)
      {
        v7 = sub_100063A54(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          context3 = [(MSDOperation *)self context];
          identifier = [context3 identifier];
          v17 = 138543362;
          v18 = identifier;
          v10 = "No content root path found for containerized component: %{public}@";
LABEL_10:
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v10, &v17, 0xCu);

          goto LABEL_11;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
  }

  v11 = +[MSDContentFilesContext processedContainers];
  context4 = [(MSDOperation *)self context];
  uniqueName = [context4 uniqueName];
  v14 = [v11 containsObject:uniqueName];

  if (v14)
  {
    v7 = sub_100063A54(v15);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      context3 = [(MSDOperation *)self context];
      identifier = [context3 uniqueName];
      v17 = 138543362;
      v18 = identifier;
      v10 = "Shared container is already installed: %{public}@";
      goto LABEL_10;
    }

LABEL_11:

    [(MSDOperation *)self setSkipped:1];
  }

  return 1;
}

- (BOOL)_prepareStagingArea
{
  v5.receiver = self;
  v5.super_class = MSDContentFilesPrepareOperation;
  _prepareStagingArea = [(MSDBasePrepareOperation *)&v5 _prepareStagingArea];
  if (_prepareStagingArea)
  {
    sub_1000CD40C(self, &v6);
    LOBYTE(_prepareStagingArea) = v6;
  }

  return _prepareStagingArea;
}

- (BOOL)_generateDeviceManifest
{
  v3 = +[NSFileManager defaultManager];
  v4 = +[MSDHelperAgent sharedInstance];
  v5 = +[MSDTargetDevice sharedInstance];
  context = [(MSDOperation *)self context];
  contentRootPath = [context contentRootPath];

  if (!contentRootPath)
  {
    v30 = +[MSDOperationContext downloadOnly];
    if (v30)
    {
      v31 = objc_alloc_init(MSDManifest);
      context2 = [(MSDOperation *)self context];
      [context2 setDeviceManifest:v31];

      v29 = 1;
      goto LABEL_8;
    }

    sub_1000CD724(v30);
LABEL_14:
    v29 = 0;
    goto LABEL_8;
  }

  context3 = [(MSDOperation *)self context];
  uniqueName = [context3 uniqueName];
  v10 = [uniqueName stringByAppendingPathExtension:@"plist"];

  v11 = [@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/MSDWorkContainer/DeviceManifests" stringByAppendingPathComponent:v10];
  v39 = 0;
  v12 = [v3 createDirectoryAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/MSDWorkContainer/DeviceManifests" withIntermediateDirectories:1 attributes:0 error:&v39];
  v13 = v39;
  if ((v12 & 1) == 0)
  {
    sub_1000CD60C(v13, v11, v10);
    goto LABEL_14;
  }

  v35 = v13;
  v36 = v10;
  v38 = v3;
  context4 = [(MSDOperation *)self context];
  rootFileSystemPath = [context4 rootFileSystemPath];
  context5 = [(MSDOperation *)self context];
  contentRootPath2 = [context5 contentRootPath];
  v18 = [rootFileSystemPath stringByAppendingPathComponent:contentRootPath2];

  context6 = [(MSDOperation *)self context];
  identifier = [context6 identifier];
  context7 = [(MSDOperation *)self context];
  [context7 containerType];
  v23 = v22 = v4;
  v37 = v5;
  demoUserHomePath = [v5 demoUserHomePath];
  v25 = v22;
  v26 = [v22 createDeviceManifestForComponent:identifier ofType:v23 withRootPath:v18 userHomePath:demoUserHomePath andSavePath:v11];

  if (v26)
  {
    context8 = [(MSDOperation *)self context];
    [context8 setDeviceManifest:v26];

    v29 = 1;
  }

  else
  {
    v34 = sub_100063A54(v27);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      sub_1000CD6E0(v34);
    }

    v29 = 0;
  }

  v5 = v37;
  v3 = v38;
  v4 = v25;
LABEL_8:

  return v29;
}

- (BOOL)_compareManifests
{
  context = [(MSDOperation *)self context];
  masterManifest = [context masterManifest];

  selfCopy = self;
  context2 = [(MSDOperation *)self context];
  deviceManifest = [context2 deviceManifest];

  v31 = +[NSMutableArray array];
  v33 = +[NSMutableArray array];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = [masterManifest dict];
  v34 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v34)
  {
    v7 = *v36;
    v30 = *v36;
    do
    {
      v8 = 0;
      do
      {
        if (*v36 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v35 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        dict = [deviceManifest dict];
        v12 = [dict objectForKey:v9];

        if (!v12)
        {
          [v33 addObject:v9];
          goto LABEL_19;
        }

        v13 = [masterManifest metadataForFile:v9];
        v14 = [deviceManifest metadataForFile:v9];
        v15 = [v13 compareWith:v14];
        if (v15 != 5)
        {
          v17 = v15;
          v18 = deviceManifest;
          v19 = masterManifest;
          v20 = sub_100063A54(v15);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            v29 = [MSDFileMetadata compareResultToNSString:v17];
            *buf = 138543618;
            v40 = v9;
            v41 = 2114;
            v42 = v29;
            _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "File meta data mismatch: %{public}@ (%{public}@)", buf, 0x16u);
          }

          if (v17 < 4)
          {
            v16 = sub_100063A54([v33 addObject:v9]);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              v40 = v9;
              _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "File found with incorrect metadata; Add to creation list: %{public}@", buf, 0xCu);
            }

            masterManifest = v19;
            deviceManifest = v18;
            v7 = v30;
            goto LABEL_17;
          }

          masterManifest = v19;
          deviceManifest = v18;
          v7 = v30;
          if (v17 != 4)
          {
            goto LABEL_18;
          }
        }

        v16 = sub_100063A54([v31 addObject:v9]);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v40 = v9;
          _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Add to already have list: %{public}@", buf, 0xCu);
        }

LABEL_17:

LABEL_18:
LABEL_19:

        objc_autoreleasePoolPop(v10);
        v8 = v8 + 1;
      }

      while (v34 != v8);
      v21 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
      v34 = v21;
    }

    while (v21);
  }

  context3 = [(MSDOperation *)selfCopy context];
  [context3 setAlreadyHaveList:v31];

  v23 = [NSMutableArray arrayWithCapacity:0];
  context4 = [(MSDOperation *)selfCopy context];
  [context4 setCloneFailedList:v23];

  context5 = [(MSDOperation *)selfCopy context];
  [context5 setCreationList:v33];

  context6 = [(MSDOperation *)selfCopy context];
  [context6 setDeviceManifest:0];

  return 1;
}

- (BOOL)_processAlreadyHaveList
{
  v3 = +[MSDContentCacheManager sharedInstance];
  v49 = +[NSFileManager defaultManager];
  v47 = +[MSDOperationContext downloadOnly];
  context = [(MSDOperation *)self context];
  contentRootPath = [context contentRootPath];

  context2 = [(MSDOperation *)self context];
  rootFileSystemPath = [context2 rootFileSystemPath];
  context3 = [(MSDOperation *)self context];
  v9 = context3;
  if (contentRootPath)
  {
    [context3 contentRootPath];
  }

  else
  {
    [context3 pseudoContentRootPath];
  }
  v10 = ;
  v48 = [rootFileSystemPath stringByAppendingPathComponent:v10];

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  context4 = [(MSDOperation *)self context];
  alreadyHaveList = [context4 alreadyHaveList];

  obj = alreadyHaveList;
  v52 = [alreadyHaveList countByEnumeratingWithState:&v53 objects:v59 count:16];
  if (!v52)
  {
    goto LABEL_28;
  }

  v14 = 0;
  v51 = *v54;
  *&v13 = 138543362;
  v44 = v13;
  selfCopy = self;
  v46 = v3;
  do
  {
    v15 = 0;
    do
    {
      if (*v54 != v51)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v53 + 1) + 8 * v15);
      v17 = objc_autoreleasePoolPush();
      context5 = [(MSDOperation *)self context];
      masterManifest = [context5 masterManifest];
      v20 = [masterManifest metadataForFile:v16];

      if (!v20)
      {
        sub_1000CD790(v16, v17);
        goto LABEL_30;
      }

      getFileType = [v20 getFileType];
      v22 = [getFileType isEqualToString:NSFileTypeRegular];

      if (!v22)
      {
        v26 = 0;
        v27 = 0;
        hexStringRepresentation = 0;
        goto LABEL_14;
      }

      getHash = [v20 getHash];
      hexStringRepresentation = [getHash hexStringRepresentation];

      v25 = [v3 findFileInCache:hexStringRepresentation];

      if (v25)
      {
        v26 = 0;
        v27 = 0;
        goto LABEL_14;
      }

      v26 = [v48 stringByAppendingPathComponent:v16];
      v28 = [v3 fileCachePathFromSourcePath:v26 forBackgroundDownload:v47];
      v27 = [v28 stringByAppendingPathComponent:hexStringRepresentation];

      getAccessControlList = [v20 getAccessControlList];
      if (getAccessControlList)
      {
        getAccessControlList2 = [v20 getAccessControlList];
        v31 = [getAccessControlList2 length] != 0;
      }

      else
      {
        v31 = 0;
      }

      if (![v49 isReadableFileAtPath:v26] || v31)
      {
        v38 = +[MSDHelperAgent sharedInstance];
        getHash2 = [v20 getHash];
        v40 = [v38 cloneFile:v26 to:v27 expectingHash:getHash2];

        if (v40)
        {
LABEL_26:
          v14 = 1;
          self = selfCopy;
          v3 = v46;
          goto LABEL_14;
        }
      }

      else
      {
        getHash3 = [v20 getHash];
        v33 = [v49 cloneFile:v26 to:v27 expectingHash:getHash3 correctOwnership:0];

        if (v33)
        {
          goto LABEL_26;
        }
      }

      v35 = sub_100063A54(v34);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *buf = v44;
        v58 = v16;
        _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Failed to clone file %{public}@; Adding it to creation list.", buf, 0xCu);
      }

      self = selfCopy;
      context6 = [(MSDOperation *)selfCopy context];
      cloneFailedList = [context6 cloneFailedList];
      [cloneFailedList addObject:v16];

      v14 = 0;
      v3 = v46;
LABEL_14:

      objc_autoreleasePoolPop(v17);
      v15 = v15 + 1;
    }

    while (v52 != v15);
    v41 = [obj countByEnumeratingWithState:&v53 objects:v59 count:16];
    v52 = v41;
  }

  while (v41);
LABEL_28:
  v14 = 1;
LABEL_30:

  context7 = [(MSDOperation *)self context];
  [context7 setAlreadyHaveList:0];

  return v14 & 1;
}

- (BOOL)_restoreStashedStagingToSecondaryStaging
{
  v3 = +[MSDHelperAgent sharedInstance];
  v4 = +[NSFileManager defaultManager];
  context = [(MSDOperation *)self context];
  stashedStagingRootPath = [context stashedStagingRootPath];

  v7 = [@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata" stringByAppendingPathComponent:@"/.MSDWorkContainer"];
  v8 = [v7 stringByAppendingPathComponent:@"/MSD_stashed_staging"];
  context2 = [(MSDOperation *)self context];
  uniqueName = [context2 uniqueName];
  v11 = [v8 stringByAppendingPathComponent:uniqueName];

  context3 = [(MSDOperation *)self context];
  pseudoContentRootPath = [context3 pseudoContentRootPath];

  v61 = [stashedStagingRootPath stringByAppendingPathComponent:pseudoContentRootPath];
  context4 = [(MSDOperation *)self context];
  secondaryStagingRootPath = [context4 secondaryStagingRootPath];

  context5 = [(MSDOperation *)self context];
  contentRootPath = [context5 contentRootPath];
  v58 = [secondaryStagingRootPath stringByAppendingPathComponent:contentRootPath];

  v19 = sub_100063A54(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v66 = stashedStagingRootPath;
    v67 = 2114;
    v68 = secondaryStagingRootPath;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Restoring files from: %{public}@ to: %{public}@", buf, 0x16u);
  }

  v59 = secondaryStagingRootPath;
  v60 = pseudoContentRootPath;
  if (pseudoContentRootPath && [v4 fileExistsAtPath:v61])
  {
    context6 = [(MSDOperation *)self context];
    contentRootPath2 = [context6 contentRootPath];
    v22 = [stashedStagingRootPath stringByAppendingPathComponent:contentRootPath2];

    v24 = sub_100063A54(v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v66 = v61;
      v67 = 2114;
      v68 = v22;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Renaming pseudo content content root path from: %{public}@ to: %{public}@", buf, 0x16u);
    }

    stringByDeletingLastPathComponent = [v22 stringByDeletingLastPathComponent];
    v63 = 0;
    v26 = [v4 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v63];
    v27 = v63;

    if (v26)
    {
      v62 = v27;
      v29 = v4;
      v30 = [v4 moveItemAtPath:v61 toPath:v22 error:&v62];
      v31 = v62;

      if (v30)
      {

        v4 = v29;
        secondaryStagingRootPath = v59;
        pseudoContentRootPath = v60;
        goto LABEL_10;
      }

      v55 = sub_100063A54(v32);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        sub_1000CD8B0(v31, v55);
      }

      v27 = v31;
      v4 = v29;
    }

    else
    {
      v55 = sub_100063A54(v28);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        sub_1000CD844();
      }
    }

    pseudoContentRootPath = v60;

    secondaryStagingRootPath = v59;
LABEL_27:
    v41 = v58;
LABEL_28:

    v45 = 0;
    goto LABEL_14;
  }

LABEL_10:
  v33 = [v3 moveStagingToFinal:stashedStagingRootPath finalPath:secondaryStagingRootPath];
  if ((v33 & 1) == 0)
  {
    v22 = sub_100063A54(v33);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_1000CD93C(v22);
    }

    goto LABEL_27;
  }

  context7 = [(MSDOperation *)self context];
  containerType = [context7 containerType];
  v36 = [containerType isEqualToString:@"BackupData"];

  v37 = +[MSDHelperAgent sharedInstance];
  context8 = [(MSDOperation *)self context];
  v39 = context8;
  if (!v36)
  {
    containerType2 = [context8 containerType];
    [(MSDOperation *)self context];
    v56 = v11;
    v57 = stashedStagingRootPath;
    v49 = v7;
    v50 = v3;
    v52 = v51 = v4;
    identifier = [v52 identifier];
    v41 = v58;
    v54 = [v37 restoreAppDataAttributesUnder:v58 containerType:containerType2 identifier:identifier manifestUID:&off_10017AFC0 deviceUID:&off_10017AFC0];

    v4 = v51;
    v3 = v50;
    v7 = v49;
    v11 = v56;
    stashedStagingRootPath = v57;

    if (v54)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  contentBeingInstalled = [context8 contentBeingInstalled];
  v41 = v58;
  v43 = [v37 restoreBackupAttributesUnder:v58 range:contentBeingInstalled manifestUID:v42 deviceUID:{&off_10017AFC0, &off_10017AFC0}];

  if ((v43 & 1) == 0)
  {
LABEL_16:
    v22 = sub_100063A54(v44);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_1000CD980();
    }

    secondaryStagingRootPath = v59;
    pseudoContentRootPath = v60;
    goto LABEL_28;
  }

LABEL_13:
  v45 = 1;
  secondaryStagingRootPath = v59;
  pseudoContentRootPath = v60;
LABEL_14:
  v64[0] = stashedStagingRootPath;
  v64[1] = v11;
  v46 = [NSArray arrayWithObjects:v64 count:2];
  [v3 removeWorkDirectories:v46];

  return v45;
}

@end