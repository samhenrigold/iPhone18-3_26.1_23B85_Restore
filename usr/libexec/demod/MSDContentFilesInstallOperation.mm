@interface MSDContentFilesInstallOperation
- (BOOL)_addToProcessedContainersIfNeeded;
- (BOOL)_constructStagingArea;
- (BOOL)_createWormholeInStagingToUserHome;
- (BOOL)_moveFilesFromStagingToSecondaryStaging;
- (BOOL)_patchBackupFolderIfNeeded;
- (BOOL)rollback;
- (MSDContentFilesInstallOperation)initWithContext:(id)context;
- (MSDContentFilesInstallOperation)initWithContext:(id)context andContentCacheManager:(id)manager andTargetDevice:(id)device;
- (id)_retrieveContentRootPath;
- (id)methodSelectors;
@end

@implementation MSDContentFilesInstallOperation

- (MSDContentFilesInstallOperation)initWithContext:(id)context
{
  contextCopy = context;
  v5 = +[MSDContentCacheManager sharedInstance];
  v6 = +[MSDTargetDevice sharedInstance];
  v7 = [(MSDContentFilesInstallOperation *)self initWithContext:contextCopy andContentCacheManager:v5 andTargetDevice:v6];

  return v7;
}

- (MSDContentFilesInstallOperation)initWithContext:(id)context andContentCacheManager:(id)manager andTargetDevice:(id)device
{
  managerCopy = manager;
  deviceCopy = device;
  v13.receiver = self;
  v13.super_class = MSDContentFilesInstallOperation;
  v10 = [(MSDOperation *)&v13 initWithContext:context];
  v11 = v10;
  if (v10)
  {
    [(MSDContentFilesInstallOperation *)v10 setContentCacheProtocol:managerCopy];
    [(MSDContentFilesInstallOperation *)v11 setTargetDeviceDelegate:deviceCopy];
  }

  return v11;
}

- (id)methodSelectors
{
  v2 = [NSValue valueWithPointer:"_createWormholeInStagingToUserHome"];
  v3 = [NSValue valueWithPointer:"_constructStagingArea"];
  v4 = [NSValue valueWithPointer:"_patchBackupFolderIfNeeded"];
  v5 = [NSValue valueWithPointer:"_moveFilesFromStagingToSecondaryStaging"];
  v6 = [NSValue valueWithPointer:"_addToProcessedContainersIfNeeded"];
  v7 = [NSArray arrayWithObjects:v2, v3, v4, v5, v6, 0];

  return v7;
}

- (BOOL)rollback
{
  context = [(MSDOperation *)self context];
  stagingRootPath = [context stagingRootPath];

  context2 = [(MSDOperation *)self context];
  secondaryStagingRootPath = [context2 secondaryStagingRootPath];

  v7 = +[MSDHelperAgent sharedInstance];
  v8 = [v7 removeWorkDirectory:stagingRootPath];

  if ((v8 & 1) == 0)
  {
    v15 = sub_100063A54(v9);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v10 = +[MSDHelperAgent sharedInstance];
  v11 = [v10 removeWorkDirectory:secondaryStagingRootPath];

  if ((v11 & 1) == 0)
  {
    v15 = sub_100063A54(v12);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
LABEL_8:
      sub_1000D5324();
    }

LABEL_9:

    v13 = 0;
    goto LABEL_4;
  }

  v13 = 1;
LABEL_4:

  return v13;
}

- (BOOL)_createWormholeInStagingToUserHome
{
  v3 = +[NSFileManager defaultManager];
  targetDeviceDelegate = [(MSDContentFilesInstallOperation *)self targetDeviceDelegate];
  demoUserHomePath = [targetDeviceDelegate demoUserHomePath];

  context = [(MSDOperation *)self context];
  stagingRootPath = [context stagingRootPath];
  v8 = [stagingRootPath stringByAppendingPathComponent:demoUserHomePath];

  if (+[MSDOperationContext downloadOnly])
  {
    v9 = @"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata";
  }

  else
  {
    v9 = demoUserHomePath;
  }

  v10 = [(__CFString *)v9 stringByAppendingPathComponent:@"/.MSDWorkContainer"];
  v11 = [v10 stringByAppendingPathComponent:@"/MSD_staging"];
  context2 = [(MSDOperation *)self context];
  uniqueName = [context2 uniqueName];
  v14 = [v11 stringByAppendingPathComponent:uniqueName];

  v15 = [v10 stringByAppendingPathComponent:@"/MSD_secondary_staging"];
  context3 = [(MSDOperation *)self context];
  uniqueName2 = [context3 uniqueName];
  v18 = [v15 stringByAppendingPathComponent:uniqueName2];

  v20 = sub_100063A54(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v45 = v8;
    v46 = 2114;
    v47 = v14;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Creating wormhole in staging from %{public}@ to %{public}@...", buf, 0x16u);
  }

  stringByDeletingLastPathComponent = [v8 stringByDeletingLastPathComponent];
  v43 = 0;
  v22 = [v3 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v43];
  v23 = v43;

  if ((v22 & 1) == 0)
  {
    v38 = sub_100063A54(v24);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      sub_1000D5398(v23);
    }

    goto LABEL_26;
  }

  v42 = v23;
  v25 = [v3 createDirectoryAtPath:v14 withIntermediateDirectories:1 attributes:0 error:&v42];
  v26 = v42;

  if ((v25 & 1) == 0)
  {
    v38 = sub_100063A54(v27);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      sub_1000D5424(v14, v26);
    }

    goto LABEL_25;
  }

  v41 = v26;
  v28 = [v3 createDirectoryAtPath:v18 withIntermediateDirectories:1 attributes:0 error:&v41];
  v23 = v41;

  if ((v28 & 1) == 0)
  {
    v38 = sub_100063A54(v29);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      sub_1000D5424(v18, v23);
    }

    goto LABEL_26;
  }

  v30 = [v3 destinationOfSymbolicLinkAtPath:v8 error:0];

  if (v30)
  {
    v40 = v23;
    v31 = [v3 removeItemAtPath:v8 error:&v40];
    v26 = v40;

    if (v31)
    {
      v23 = v26;
      goto LABEL_12;
    }

    v38 = sub_100063A54(v32);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      sub_1000D54C0(v26);
    }

LABEL_25:
    v23 = v26;
LABEL_26:

    v36 = 0;
    goto LABEL_14;
  }

LABEL_12:
  v33 = v23;
  v39 = v23;
  v34 = [v3 createSymbolicLinkAtPath:v8 withDestinationPath:v14 error:&v39];
  v23 = v39;

  if ((v34 & 1) == 0)
  {
    v38 = sub_100063A54(v35);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      sub_1000D554C(v23);
    }

    goto LABEL_26;
  }

  v36 = 1;
LABEL_14:

  return v36;
}

- (BOOL)_constructStagingArea
{
  context = [(MSDOperation *)self context];
  stagingRootPath = [context stagingRootPath];

  _retrieveContentRootPath = [(MSDContentFilesInstallOperation *)self _retrieveContentRootPath];
  v71 = [stagingRootPath stringByAppendingPathComponent:_retrieveContentRootPath];
  context2 = [(MSDOperation *)self context];
  masterManifest = [context2 masterManifest];
  dict = [masterManifest dict];
  allKeys = [dict allKeys];

  context3 = [(MSDOperation *)self context];
  masterManifest2 = [context3 masterManifest];

  v126[0] = 0;
  v126[1] = v126;
  v126[2] = 0x3032000000;
  v126[3] = sub_10005D2B4;
  v126[4] = sub_10005D2C4;
  contentCacheProtocol = [(MSDContentFilesInstallOperation *)self contentCacheProtocol];
  v120 = 0;
  v121 = &v120;
  v122 = 0x3032000000;
  v123 = sub_10005D2B4;
  v124 = sub_10005D2C4;
  v125 = +[NSFileManager defaultManager];
  v118[0] = 0;
  v118[1] = v118;
  v118[2] = 0x2020000000;
  context4 = [(MSDOperation *)self context];
  LOBYTE(masterManifest) = [context4 verifyFileHash];

  v119 = masterManifest;
  v114 = 0;
  v115 = &v114;
  v116 = 0x2020000000;
  v117 = 1;
  v108 = 0;
  v109 = &v108;
  v110 = 0x3032000000;
  v111 = sub_10005D2B4;
  v112 = sub_10005D2C4;
  v113 = 0;
  v72 = objc_alloc_init(NSMutableSet);
  v102 = 0;
  v103 = &v102;
  v104 = 0x3032000000;
  v105 = sub_10005D2B4;
  v106 = sub_10005D2C4;
  v107 = objc_alloc_init(NSMutableArray);
  v96 = 0;
  v97 = &v96;
  v98 = 0x3032000000;
  v99 = sub_10005D2B4;
  v100 = sub_10005D2C4;
  v101 = +[NSMutableDictionary dictionary];
  v90 = 0;
  v91 = &v90;
  v92 = 0x3032000000;
  v93 = sub_10005D2B4;
  v94 = sub_10005D2C4;
  v95 = objc_alloc_init(NSMutableArray);
  v84 = 0;
  v85 = &v84;
  v86 = 0x3032000000;
  v87 = sub_10005D2B4;
  v88 = sub_10005D2C4;
  v89 = +[NSMutableDictionary dictionary];
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  obj = allKeys;
  v9 = [obj countByEnumeratingWithState:&v80 objects:v132 count:16];
  if (v9)
  {
    v69 = *v81;
    *&v10 = 138543362;
    v64 = v10;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v81 != v69)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v80 + 1) + 8 * v11);
      v13 = objc_autoreleasePoolPush();
      v14 = [v71 stringByAppendingPathComponent:v12];
      stringByDeletingLastPathComponent = [v14 stringByDeletingLastPathComponent];
      v16 = [masterManifest2 metadataForFile:v12];
      v17 = v16;
      if (!v16)
      {
        break;
      }

      getFileType = [v16 getFileType];
      [v72 addObject:stringByDeletingLastPathComponent];
      if ([getFileType isEqualToString:NSFileTypeDirectory])
      {
        [v72 addObject:v14];
      }

      else
      {
        if ([getFileType isEqualToString:NSFileTypeSymbolicLink])
        {
          [v91[5] addObject:v14];
          v20 = v85[5];
          getTargetFile = [v17 getTargetFile];
          [v20 setObject:getTargetFile forKey:v14];
          goto LABEL_17;
        }

        v22 = [getFileType isEqualToString:NSFileTypeRegular];
        if (!v22)
        {
          getTargetFile = sub_100063A54(v22);
          if (os_log_type_enabled(getTargetFile, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            *&buf[4] = v12;
            v130 = 2114;
            v131 = getFileType;
            _os_log_impl(&_mh_execute_header, getTargetFile, OS_LOG_TYPE_DEFAULT, "Ignore path %{public}@ of unexpected file type %{public}@", buf, 0x16u);
          }

LABEL_17:
          v19 = 0;
LABEL_18:

          goto LABEL_19;
        }

        [v103[5] addObject:v14];
        getFileSize = [v17 getFileSize];
        v24 = v97[5];
        if (getFileSize)
        {
          getTargetFile = [v17 getHash];
          hexStringRepresentation = [getTargetFile hexStringRepresentation];
          [v24 setObject:hexStringRepresentation forKey:v14];

          goto LABEL_17;
        }

        [v97[5] setObject:@"ZERO_SIZE" forKey:v14];
      }

      v19 = 0;
LABEL_19:

      objc_autoreleasePoolPop(v13);
      if (!v17)
      {

        if (v19 == 6)
        {
          goto LABEL_54;
        }

        goto LABEL_29;
      }

      if (v9 == ++v11)
      {
        v26 = [obj countByEnumeratingWithState:&v80 objects:v132 count:16];
        v9 = v26;
        if (v26)
        {
          goto LABEL_3;
        }

        goto LABEL_27;
      }
    }

    getTargetFile = sub_100063A54(0);
    if (os_log_type_enabled(getTargetFile, OS_LOG_TYPE_ERROR))
    {
      *buf = v64;
      *&buf[4] = v12;
      _os_log_error_impl(&_mh_execute_header, getTargetFile, OS_LOG_TYPE_ERROR, "Cannot find metadata for path %{public}@", buf, 0xCu);
    }

    getFileType = 0;
    v19 = 6;
    goto LABEL_18;
  }

LABEL_27:

LABEL_29:
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v27 = v72;
  v28 = [v27 countByEnumeratingWithState:&v76 objects:v128 count:16];
  if (v28)
  {
    v29 = *v77;
    while (2)
    {
      v30 = 0;
      do
      {
        if (*v77 != v29)
        {
          objc_enumerationMutation(v27);
        }

        v31 = *(*(&v76 + 1) + 8 * v30);
        v32 = objc_autoreleasePoolPush();
        if ([v121[5] fileExistsAtPath:v31] & 1) != 0 || (v33 = v121[5], v34 = (v109 + 5), v75 = v109[5], v35 = objc_msgSend(v33, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", v31, 1, 0, &v75), objc_storeStrong(v34, v75), *(v115 + 24) = v35, (v35))
        {
          v37 = 0;
          v38 = 1;
        }

        else
        {
          v39 = sub_100063A54(v36);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            localizedDescription = [v109[5] localizedDescription];
            *buf = 138543618;
            *&buf[4] = v31;
            v130 = 2114;
            v131 = localizedDescription;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Could not create directory at %{public}@ - %{public}@", buf, 0x16u);
          }

          v38 = 0;
          v37 = 6;
        }

        objc_autoreleasePoolPop(v32);
        if (!v38)
        {

          if (v37 == 6)
          {
            goto LABEL_54;
          }

          goto LABEL_46;
        }

        v30 = v30 + 1;
      }

      while (v28 != v30);
      v41 = [v27 countByEnumeratingWithState:&v76 objects:v128 count:16];
      v28 = v41;
      if (v41)
      {
        continue;
      }

      break;
    }
  }

LABEL_46:
  v42 = [v91[5] count];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005D2CC;
  block[3] = &unk_10016B040;
  block[4] = &v90;
  block[5] = &v84;
  block[6] = &v120;
  block[7] = &v108;
  block[8] = &v114;
  dispatch_apply(v42, 0, block);
  if ((v115[3] & 1) == 0)
  {
    v61 = sub_100063A54(v43);
    sub_1000D55D8(v61);
LABEL_58:

    goto LABEL_54;
  }

  v44 = [v103[5] count];
  v73[0] = _NSConcreteStackBlock;
  v73[1] = 3221225472;
  v73[2] = sub_10005D43C;
  v73[3] = &unk_10016B068;
  v73[4] = &v102;
  v73[5] = &v96;
  v73[6] = &v120;
  v73[7] = &v108;
  v73[8] = v126;
  v73[9] = v118;
  v73[10] = &v114;
  dispatch_apply(v44, 0, v73);
  if ((v115[3] & 1) == 0)
  {
    v62 = sub_100063A54(v45);
    sub_1000D5624(v62);
    goto LABEL_58;
  }

  v46 = +[MSDOperationContext downloadOnly];
  if ((v46 & 1) == 0)
  {
    context5 = [(MSDOperation *)self context];
    containerType = [context5 containerType];
    v49 = [containerType isEqualToString:@"BackupData"];

    v50 = +[MSDHelperAgent sharedInstance];
    [(MSDOperation *)self context];
    if (v49)
      v51 = {;
      contentBeingInstalled = [v51 contentBeingInstalled];
      v54 = [v50 restoreBackupAttributesUnder:v71 range:contentBeingInstalled manifestUID:v53 deviceUID:{&off_10017B0E0, &off_10017B0E0}];
      *(v115 + 24) = v54;
    }

    else
      v51 = {;
      containerType2 = [v51 containerType];
      context6 = [(MSDOperation *)self context];
      identifier = [context6 identifier];
      v58 = [v50 restoreAppDataAttributesUnder:v71 containerType:containerType2 identifier:identifier manifestUID:&off_10017B0E0 deviceUID:&off_10017B0E0];
      *(v115 + 24) = v58;
    }
  }

  if ((v115[3] & 1) == 0)
  {
    v63 = sub_100063A54(v46);
    sub_1000D5670(v63);
    goto LABEL_58;
  }

LABEL_54:
  v59 = *(v115 + 24);
  _Block_object_dispose(&v84, 8);

  _Block_object_dispose(&v90, 8);
  _Block_object_dispose(&v96, 8);

  _Block_object_dispose(&v102, 8);
  _Block_object_dispose(&v108, 8);

  _Block_object_dispose(&v114, 8);
  _Block_object_dispose(v118, 8);
  _Block_object_dispose(&v120, 8);

  _Block_object_dispose(v126, 8);
  return v59 & 1;
}

- (BOOL)_patchBackupFolderIfNeeded
{
  context = [(MSDOperation *)self context];
  identifier = [context identifier];

  context2 = [(MSDOperation *)self context];
  containerType = [context2 containerType];

  if ([containerType isEqualToString:@"BackupData"] && objc_msgSend(identifier, "hasSuffix:", @"baseBackup"))
  {
    targetDeviceDelegate = [(MSDContentFilesInstallOperation *)self targetDeviceDelegate];
    context3 = [(MSDOperation *)self context];
    stagingRootPath = [context3 stagingRootPath];
    [targetDeviceDelegate patchBackupFolderInStaging:stagingRootPath];
  }

  if (!+[MSDOperationContext downloadOnly](MSDOperationContext, "downloadOnly") && [containerType isEqualToString:@"BackupData"] && objc_msgSend(identifier, "hasSuffix:", @"greyMatter"))
  {
    +[MSDGreyMatterHelper purgeExistingAssets];
  }

  return 1;
}

- (BOOL)_moveFilesFromStagingToSecondaryStaging
{
  context = [(MSDOperation *)self context];
  stagingRootPath = [context stagingRootPath];

  context2 = [(MSDOperation *)self context];
  secondaryStagingRootPath = [context2 secondaryStagingRootPath];

  v8 = sub_100063A54(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    v13 = stagingRootPath;
    v14 = 2114;
    v15 = secondaryStagingRootPath;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Moving files from %{public}@ to %{public}@.", &v12, 0x16u);
  }

  targetDeviceDelegate = [(MSDContentFilesInstallOperation *)self targetDeviceDelegate];
  v10 = [targetDeviceDelegate moveFilesToFinalDst:stagingRootPath finalPath:secondaryStagingRootPath];

  return v10;
}

- (BOOL)_addToProcessedContainersIfNeeded
{
  v3 = +[MSDContentFilesContext processedContainers];
  context = [(MSDOperation *)self context];
  uniqueName = [context uniqueName];

  v6 = [v3 containsObject:uniqueName];
  if ((v6 & 1) == 0)
  {
    v7 = sub_100063A54(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = uniqueName;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Adding to processed containers: %{public}@", &v9, 0xCu);
    }

    [v3 addObject:uniqueName];
  }

  return 1;
}

- (id)_retrieveContentRootPath
{
  context = [(MSDOperation *)self context];
  contentRootPath = [context contentRootPath];

  if (!contentRootPath)
  {
    context2 = [(MSDOperation *)self context];
    contentRootPath = [context2 pseudoContentRootPath];
  }

  return contentRootPath;
}

@end