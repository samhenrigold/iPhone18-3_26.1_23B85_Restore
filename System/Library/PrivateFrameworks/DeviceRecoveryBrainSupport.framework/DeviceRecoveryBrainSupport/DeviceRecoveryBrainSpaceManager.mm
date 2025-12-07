@interface DeviceRecoveryBrainSpaceManager
- (DeviceRecoveryBrainSpaceManager)initWithMounts:(id)mounts userDataVolumeMountPath:(id)path updateVolumeMountPath:(id)mountPath;
- (id)freeSpaceOnMainContainerTillThreshold:(id)threshold;
- (id)getContainerDeviceNodeForVolumeAtPath:(id)path outError:(id *)error;
- (id)getFreeSpaceOnContainerForVolumeMountedAtPath:(id)path error:(id *)error;
- (id)getFreeSpaceOnDeviceForUser:(id *)user;
- (void)cleanupMobileAssets;
- (void)cleanupUpdateVolume;
- (void)deleteMobileBackupSnapshots;
- (void)performAPFSPurge;
- (void)syncVolumes;
@end

@implementation DeviceRecoveryBrainSpaceManager

- (DeviceRecoveryBrainSpaceManager)initWithMounts:(id)mounts userDataVolumeMountPath:(id)path updateVolumeMountPath:(id)mountPath
{
  mountsCopy = mounts;
  pathCopy = path;
  mountPathCopy = mountPath;
  v15.receiver = self;
  v15.super_class = DeviceRecoveryBrainSpaceManager;
  v12 = [(DeviceRecoveryBrainSpaceManager *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_systemDataVolumeMountPath, mounts);
    objc_storeStrong(&v13->_userDataVolumeMountPath, path);
    objc_storeStrong(&v13->_updateVolumeMountPath, mountPath);
  }

  return v13;
}

- (id)freeSpaceOnMainContainerTillThreshold:(id)threshold
{
  thresholdCopy = threshold;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  userDataVolumeMountPath = [(DeviceRecoveryBrainSpaceManager *)selfCopy userDataVolumeMountPath];

  if (!userDataVolumeMountPath)
  {
    v38 = DRGetLogHandle(v6);
    [DeviceRecoveryBrainSpaceManager freeSpaceOnMainContainerTillThreshold:v38];

    v39 = [NSString stringWithFormat:@"Unable to free space on container since data volume not mounted"];
    v13 = DRCreateError(@"DeviceRecoveryError", 8, v39, @"Unable to free space on container since data volume not mounted", 0, "[DeviceRecoveryBrainSpaceManager freeSpaceOnMainContainerTillThreshold:]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/DeviceRecoveryBrainSupport_Framework/DeviceRecoveryBrainSpaceManager.m", 0x2Cu);
    v7 = 0;

    goto LABEL_29;
  }

  v49 = 0;
  v7 = [(DeviceRecoveryBrainSpaceManager *)selfCopy getFreeSpaceOnDeviceForUser:&v49];
  v8 = v49;
  v9 = v8;
  if (v8 || !v7)
  {
    v40 = DRGetLogHandle(v8);
    [DeviceRecoveryBrainSpaceManager freeSpaceOnMainContainerTillThreshold:v40];

    v41 = [NSString stringWithFormat:@"Initial free space query failed"];
    v13 = DRCreateError(@"DeviceRecoveryError", 18, v41, @"Initial free space query failed", v9, "[DeviceRecoveryBrainSpaceManager freeSpaceOnMainContainerTillThreshold:]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/DeviceRecoveryBrainSupport_Framework/DeviceRecoveryBrainSpaceManager.m", 0x32u);

    goto LABEL_29;
  }

  unsignedLongLongValue = [v7 unsignedLongLongValue];
  unsignedLongLongValue2 = [thresholdCopy unsignedLongLongValue];
  if (unsignedLongLongValue > unsignedLongLongValue2)
  {
    v12 = DRGetLogHandle(unsignedLongLongValue2);
    obj = v12;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v51 = "[DeviceRecoveryBrainSpaceManager freeSpaceOnMainContainerTillThreshold:]";
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%{public}s: Sufficient free space already exists. Nothing to do", buf, 0xCu);
    }

    v13 = 0;
    goto LABEL_28;
  }

  v14 = NSStringFromSelector("deleteMobileBackupSnapshots");
  v55[0] = v14;
  v15 = NSStringFromSelector("cleanupUpdateVolume");
  v55[1] = v15;
  v16 = NSStringFromSelector("performAPFSPurge");
  v55[2] = v16;
  v17 = NSStringFromSelector("cleanupMobileAssets");
  v55[3] = v17;
  v18 = [NSArray arrayWithObjects:v55 count:4];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v18;
  v19 = [obj countByEnumeratingWithState:&v45 objects:v54 count:16];
  v13 = v19;
  if (!v19)
  {
    goto LABEL_27;
  }

  v20 = *v46;
  while (2)
  {
    v21 = 0;
    v22 = v7;
    do
    {
      if (*v46 != v20)
      {
        objc_enumerationMutation(obj);
      }

      v23 = *(*(&v45 + 1) + 8 * v21);
      v24 = DRGetLogHandle(v19);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v51 = "[DeviceRecoveryBrainSpaceManager freeSpaceOnMainContainerTillThreshold:]";
        v52 = 2114;
        v53 = v23;
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "%{public}s: Attempting to run cleanup step %{public}@", buf, 0x16u);
      }

      v25 = NSSelectorFromString(v23);
      v26 = [(DeviceRecoveryBrainSpaceManager *)selfCopy methodSignatureForSelector:v25];
      v27 = [NSInvocation invocationWithMethodSignature:v26];

      [v27 setSelector:v25];
      [v27 setTarget:selfCopy];
      [v27 invoke];
      v44 = 0;
      v7 = [(DeviceRecoveryBrainSpaceManager *)selfCopy getFreeSpaceOnDeviceForUser:&v44];
      v28 = v44;

      if (v28 || !v7)
      {
        v37 = DRGetLogHandle(v29);
        [DeviceRecoveryBrainSpaceManager freeSpaceOnMainContainerTillThreshold:v37];

        v34 = [NSString stringWithFormat:@"Failed to query for free space after cleanup step"];
        v13 = DRCreateError(@"DeviceRecoveryError", 18, v34, @"Failed to query for free space after cleanup step", v28, "[DeviceRecoveryBrainSpaceManager freeSpaceOnMainContainerTillThreshold:]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/DeviceRecoveryBrainSupport_Framework/DeviceRecoveryBrainSpaceManager.m", 0x4Eu);

LABEL_26:
        goto LABEL_27;
      }

      unsignedLongLongValue3 = [v7 unsignedLongLongValue];
      unsignedLongLongValue4 = [thresholdCopy unsignedLongLongValue];
      if (unsignedLongLongValue3 > unsignedLongLongValue4)
      {
        v34 = DRGetLogHandle(unsignedLongLongValue4);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          unsignedLongLongValue5 = [v7 unsignedLongLongValue];
          *buf = 136446466;
          v51 = "[DeviceRecoveryBrainSpaceManager freeSpaceOnMainContainerTillThreshold:]";
          v52 = 2048;
          v53 = unsignedLongLongValue5;
          _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "%{public}s: Sufficient free space now availaible(%llu)", buf, 0x16u);
        }

        v13 = 0;
        goto LABEL_26;
      }

      v32 = DRGetLogHandle(unsignedLongLongValue4);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        unsignedLongLongValue6 = [v7 unsignedLongLongValue];
        *buf = 136446466;
        v51 = "[DeviceRecoveryBrainSpaceManager freeSpaceOnMainContainerTillThreshold:]";
        v52 = 2048;
        v53 = unsignedLongLongValue6;
        _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEFAULT, "%{public}s: Free space is not yet sufficient(%llu). Proceeding to next cleanup step", buf, 0x16u);
      }

      v21 = v21 + 1;
      v22 = v7;
    }

    while (v13 != v21);
    v19 = [obj countByEnumeratingWithState:&v45 objects:v54 count:16];
    v13 = v19;
    if (v19)
    {
      continue;
    }

    break;
  }

LABEL_27:

LABEL_28:
LABEL_29:
  objc_sync_exit(selfCopy);

  return v13;
}

- (id)getFreeSpaceOnDeviceForUser:(id *)user
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  userDataVolumeMountPath = [(DeviceRecoveryBrainSpaceManager *)selfCopy userDataVolumeMountPath];
  v56 = 0;
  v5 = [(DeviceRecoveryBrainSpaceManager *)selfCopy getContainerDeviceNodeForVolumeAtPath:userDataVolumeMountPath outError:&v56];
  v6 = v56;

  if (!v5)
  {
    v38 = DRGetLogHandle(v7);
    [DeviceRecoveryBrainSpaceManager getFreeSpaceOnDeviceForUser:v38];

    v13 = [NSString stringWithFormat:@"Failed to determine device node for userdata volume container"];
    v26 = DRCreateError(@"DeviceRecoveryError", 1, v13, @"Failed to determine device node for userdata volume container", v6, "[DeviceRecoveryBrainSpaceManager getFreeSpaceOnDeviceForUser:]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/DeviceRecoveryBrainSupport_Framework/DeviceRecoveryBrainSpaceManager.m", 0x67u);
    v49 = 0;
    v50 = 0;
    v27 = 0;
    v33 = 0;
    v9 = 0;
    goto LABEL_24;
  }

  userDataVolumeMountPath2 = [(DeviceRecoveryBrainSpaceManager *)selfCopy userDataVolumeMountPath];
  v55 = 0;
  v50 = [(DeviceRecoveryBrainSpaceManager *)selfCopy getFreeSpaceOnContainerForVolumeMountedAtPath:userDataVolumeMountPath2 error:&v55];
  v9 = v55;

  if (v9)
  {
    v39 = DRGetLogHandle(v10);
    [DeviceRecoveryBrainSpaceManager getFreeSpaceOnDeviceForUser:v39];

    v13 = [NSString stringWithFormat:@"Unable to determine free space on userdata volume"];
    v26 = DRCreateError(@"DeviceRecoveryError", 18, v13, @"Unable to determine free space on userdata volume", v9, "[DeviceRecoveryBrainSpaceManager getFreeSpaceOnDeviceForUser:]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/DeviceRecoveryBrainSupport_Framework/DeviceRecoveryBrainSpaceManager.m", 0x6Cu);
    v49 = 0;
    v27 = 0;
    v33 = 0;
    goto LABEL_24;
  }

  v11 = DRGetLogHandle(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v58 = "[DeviceRecoveryBrainSpaceManager getFreeSpaceOnDeviceForUser:]";
    v59 = 2114;
    v60 = v50;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%{public}s: Free space on userdata volume: %{public}@ bytes", buf, 0x16u);
  }

  systemDataVolumeMountPath = [(DeviceRecoveryBrainSpaceManager *)selfCopy systemDataVolumeMountPath];
  v54 = v6;
  v13 = [(DeviceRecoveryBrainSpaceManager *)selfCopy getContainerDeviceNodeForVolumeAtPath:systemDataVolumeMountPath outError:&v54];
  v14 = v54;

  if (!v13)
  {
    v40 = DRGetLogHandle(v15);
    [DeviceRecoveryBrainSpaceManager getFreeSpaceOnDeviceForUser:v40];

    v21 = [NSString stringWithFormat:@"Failed to determine device node for systemdata volume container"];
    v26 = DRCreateError(@"DeviceRecoveryError", 1, v21, @"Failed to determine device node for systemdata volume container", v14, "[DeviceRecoveryBrainSpaceManager getFreeSpaceOnDeviceForUser:]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/DeviceRecoveryBrainSupport_Framework/DeviceRecoveryBrainSpaceManager.m", 0x74u);
    v49 = 0;
    v27 = 0;
    v33 = 0;
    v9 = 0;
    goto LABEL_23;
  }

  v16 = [v13 isEqualToString:v5];
  if (v16)
  {
    v17 = DRGetLogHandle(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v58 = "[DeviceRecoveryBrainSpaceManager getFreeSpaceOnDeviceForUser:]";
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "%{public}s: Space check on system data volume not required(shared container)", buf, 0xCu);
    }

    v49 = &off_33A78;
  }

  else
  {
    systemDataVolumeMountPath2 = [(DeviceRecoveryBrainSpaceManager *)selfCopy systemDataVolumeMountPath];
    v53 = 0;
    v49 = [(DeviceRecoveryBrainSpaceManager *)selfCopy getFreeSpaceOnContainerForVolumeMountedAtPath:systemDataVolumeMountPath2 error:&v53];
    v9 = v53;

    if (v9)
    {
      v47 = DRGetLogHandle(v19);
      [DeviceRecoveryBrainSpaceManager getFreeSpaceOnDeviceForUser:v47];

      v21 = [NSString stringWithFormat:@"Unable to determine free space on systemdata volume"];
      v26 = DRCreateError(@"DeviceRecoveryError", 18, v21, @"Unable to determine free space on systemdata volume", v9, "[DeviceRecoveryBrainSpaceManager getFreeSpaceOnDeviceForUser:]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/DeviceRecoveryBrainSupport_Framework/DeviceRecoveryBrainSpaceManager.m", 0x80u);
      v27 = 0;
      v33 = 0;
      goto LABEL_23;
    }

    v17 = DRGetLogHandle(v19);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v58 = "[DeviceRecoveryBrainSpaceManager getFreeSpaceOnDeviceForUser:]";
      v59 = 2114;
      v60 = v49;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "%{public}s: Free space on systemData volume: %{public}@ bytes", buf, 0x16u);
    }
  }

  updateVolumeMountPath = [(DeviceRecoveryBrainSpaceManager *)selfCopy updateVolumeMountPath];
  v52 = v14;
  v21 = [(DeviceRecoveryBrainSpaceManager *)selfCopy getContainerDeviceNodeForVolumeAtPath:updateVolumeMountPath outError:&v52];
  v22 = v52;

  if (!v21)
  {
    v41 = DRGetLogHandle(v23);
    [DeviceRecoveryBrainSpaceManager getFreeSpaceOnDeviceForUser:v41];

    v42 = [NSString stringWithFormat:@"Failed to determine device node for update volume container"];
    v43 = DRCreateError(@"DeviceRecoveryError", 1, v42, @"Failed to determine device node for update volume container", v22, "[DeviceRecoveryBrainSpaceManager getFreeSpaceOnDeviceForUser:]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/DeviceRecoveryBrainSupport_Framework/DeviceRecoveryBrainSpaceManager.m", 0x89u);
    v27 = 0;
LABEL_39:

    v33 = 0;
    v9 = 0;
    v26 = v43;
    goto LABEL_22;
  }

  v24 = [v21 isEqualToString:v5];
  if ((v24 & 1) != 0 || (v24 = [v21 isEqualToString:v13], v24))
  {
    v25 = DRGetLogHandle(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v58 = "[DeviceRecoveryBrainSpaceManager getFreeSpaceOnDeviceForUser:]";
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "%{public}s: Space check for update volume not require(shared container", buf, 0xCu);
    }

    v26 = 0;
    v27 = &off_33A78;
  }

  else
  {
    updateVolumeMountPath2 = [(DeviceRecoveryBrainSpaceManager *)selfCopy updateVolumeMountPath];
    v51 = 0;
    v27 = [(DeviceRecoveryBrainSpaceManager *)selfCopy getFreeSpaceOnContainerForVolumeMountedAtPath:updateVolumeMountPath2 error:&v51];
    v26 = v51;

    v25 = DRGetLogHandle(v37);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v58 = "[DeviceRecoveryBrainSpaceManager getFreeSpaceOnDeviceForUser:]";
      v59 = 2114;
      v60 = v27;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "%{public}s: Free space on update volume: %{public}@ bytes", buf, 0x16u);
    }
  }

  unsignedLongLongValue = [v50 unsignedLongLongValue];
  unsignedLongLongValue2 = [v49 unsignedLongLongValue];
  v30 = __CFADD__(unsignedLongLongValue, unsignedLongLongValue2);
  v31 = &unsignedLongLongValue2[unsignedLongLongValue];
  if (v30)
  {
    v44 = DRGetLogHandle(unsignedLongLongValue2);
    [DeviceRecoveryBrainSpaceManager getFreeSpaceOnDeviceForUser:v44];

    v42 = [NSString stringWithFormat:@"Overflow while calculating total free space"];
    v45 = DRCreateError(@"DeviceRecoveryError", 18, v42, @"Overflow while calculating total free space", 0, "[DeviceRecoveryBrainSpaceManager getFreeSpaceOnDeviceForUser:]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/DeviceRecoveryBrainSupport_Framework/DeviceRecoveryBrainSpaceManager.m", 0x9Bu);
LABEL_38:
    v43 = v45;

    goto LABEL_39;
  }

  unsignedLongLongValue3 = [v27 unsignedLongLongValue];
  if (__CFADD__(v31, unsignedLongLongValue3))
  {
    v46 = DRGetLogHandle(unsignedLongLongValue3);
    [DeviceRecoveryBrainSpaceManager getFreeSpaceOnDeviceForUser:v46];

    v42 = [NSString stringWithFormat:@"Overflow while calculating total free space"];
    v45 = DRCreateError(@"DeviceRecoveryError", 18, v42, @"Overflow while calculating total free space", 0, "[DeviceRecoveryBrainSpaceManager getFreeSpaceOnDeviceForUser:]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/DeviceRecoveryBrainSupport_Framework/DeviceRecoveryBrainSpaceManager.m", 0x9Fu);
    goto LABEL_38;
  }

  v33 = [NSNumber numberWithUnsignedLongLong:&unsignedLongLongValue3[v31]];
  v9 = 0;
LABEL_22:
  v14 = v22;
LABEL_23:

  v6 = v14;
LABEL_24:

  objc_sync_exit(selfCopy);
  if (user && v26)
  {
    v34 = v26;
    *user = v26;
  }

  return v33;
}

- (void)deleteMobileBackupSnapshots
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[DeviceRecoveryBrainSpaceManager deleteMobileBackupSnapshots]";
  OUTLINED_FUNCTION_8_2(&dword_0, self, a3, "%{public}s: Data volume mount not known. Skipping.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)cleanupUpdateVolume
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[DeviceRecoveryBrainSpaceManager cleanupUpdateVolume]";
  OUTLINED_FUNCTION_8_2(&dword_0, self, a3, "%{public}s: Update volume mount not known. Skipping", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)performAPFSPurge
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[DeviceRecoveryBrainSpaceManager performAPFSPurge]";
  OUTLINED_FUNCTION_8_2(&dword_0, self, a3, "%{public}s: Data volume mount not known. Skipping", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)cleanupMobileAssets
{
  v3 = +[NSFileManager defaultManager];
  v4 = DRGetLogHandle(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v56 = "[DeviceRecoveryBrainSpaceManager cleanupMobileAssets]";
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: Attempting to purge MobileAssets", buf, 0xCu);
  }

  v5 = objc_alloc_init(NSMutableArray);
  userDataVolumeMountPath = [(DeviceRecoveryBrainSpaceManager *)self userDataVolumeMountPath];

  if (userDataVolumeMountPath)
  {
    systemDataVolumeMountPath = [(DeviceRecoveryBrainSpaceManager *)self systemDataVolumeMountPath];
    v8 = [NSString stringWithFormat:@"%@/%@", systemDataVolumeMountPath, @"MobileAsset/AssetsV2"];

    [v5 addObject:v8];
  }

  updateVolumeMountPath = [(DeviceRecoveryBrainSpaceManager *)self updateVolumeMountPath];

  if (updateVolumeMountPath)
  {
    updateVolumeMountPath2 = [(DeviceRecoveryBrainSpaceManager *)self updateVolumeMountPath];
    v11 = [NSString stringWithFormat:@"%@/MobileAsset/AssetsV2", updateVolumeMountPath2];

    [v5 addObject:v11];
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v5;
  v38 = [obj countByEnumeratingWithState:&v51 objects:v63 count:16];
  if (v38)
  {
    v37 = *v52;
    do
    {
      v12 = 0;
      do
      {
        if (*v52 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v40 = v12;
        v13 = *(*(&v51 + 1) + 8 * v12);
        context = objc_autoreleasePoolPush();
        v14 = DRGetLogHandle(context);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v56 = "[DeviceRecoveryBrainSpaceManager cleanupMobileAssets]";
          v57 = 2114;
          v58 = v13;
          _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%{public}s: Attempting to clean MA repo at %{public}@", buf, 0x16u);
        }

        v15 = [v3 enumeratorAtPath:v13];
        v16 = objc_alloc_init(NSMutableArray);
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v41 = v15;
        v17 = [v41 countByEnumeratingWithState:&v47 objects:v62 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v48;
          do
          {
            for (i = 0; i != v18; i = i + 1)
            {
              if (*v48 != v19)
              {
                objc_enumerationMutation(v41);
              }

              v21 = *(*(&v47 + 1) + 8 * i);
              v22 = [v21 containsString:@"com_apple_MobileAsset_DeviceRecoveryBrain"];
              if (v22)
              {
                v23 = DRGetLogHandle(v22);
                if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136446210;
                  v56 = "[DeviceRecoveryBrainSpaceManager cleanupMobileAssets]";
                  _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "%{public}s: NOT deleting DeviceRecoveryBrain asset", buf, 0xCu);
                }
              }

              else
              {
                v23 = [v13 stringByAppendingPathComponent:v21];
                stringByDeletingLastPathComponent = [v23 stringByDeletingLastPathComponent];
                v25 = [stringByDeletingLastPathComponent isEqualToString:v13];

                if (v25)
                {
                  [v16 addObject:v23];
                }
              }
            }

            v18 = [v41 countByEnumeratingWithState:&v47 objects:v62 count:16];
          }

          while (v18);
        }

        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v26 = v16;
        v27 = [v26 countByEnumeratingWithState:&v43 objects:v61 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v44;
          do
          {
            v30 = 0;
            do
            {
              if (*v44 != v29)
              {
                objc_enumerationMutation(v26);
              }

              v31 = *(*(&v43 + 1) + 8 * v30);
              v32 = DRGetLogHandle(v27);
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136446466;
                v56 = "[DeviceRecoveryBrainSpaceManager cleanupMobileAssets]";
                v57 = 2114;
                v58 = v31;
                _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEFAULT, "%{public}s: Attempting to delete %{public}@", buf, 0x16u);
              }

              v42 = 0;
              [v3 removeItemAtPath:v31 error:&v42];
              v33 = v42;
              v34 = DRGetLogHandle(v33);
              v35 = v34;
              if (v33)
              {
                if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136446722;
                  v56 = "[DeviceRecoveryBrainSpaceManager cleanupMobileAssets]";
                  v57 = 2114;
                  v58 = v31;
                  v59 = 2114;
                  v60 = v33;
                  _os_log_error_impl(&dword_0, v35, OS_LOG_TYPE_ERROR, "%{public}s: Failed to delete %{public}@: %{public}@", buf, 0x20u);
                }
              }

              else if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136446466;
                v56 = "[DeviceRecoveryBrainSpaceManager cleanupMobileAssets]";
                v57 = 2114;
                v58 = v31;
                _os_log_impl(&dword_0, v35, OS_LOG_TYPE_DEFAULT, "%{public}s: Successfully deleted %{public}@", buf, 0x16u);
              }

              v30 = v30 + 1;
            }

            while (v28 != v30);
            v27 = [v26 countByEnumeratingWithState:&v43 objects:v61 count:16];
            v28 = v27;
          }

          while (v27);
        }

        objc_autoreleasePoolPop(context);
        v12 = v40 + 1;
      }

      while ((v40 + 1) != v38);
      v38 = [obj countByEnumeratingWithState:&v51 objects:v63 count:16];
    }

    while (v38);
  }
}

- (void)syncVolumes
{
  v4 = 0;
  *&v2 = 136446722;
  v15 = v2;
  do
  {
    updateVolumeMountPath = [(DeviceRecoveryBrainSpaceManager *)self updateVolumeMountPath];

    if (updateVolumeMountPath)
    {
      updateVolumeMountPath2 = [(DeviceRecoveryBrainSpaceManager *)self updateVolumeMountPath];
      v7 = sync_volume_np([updateVolumeMountPath2 fileSystemRepresentation], 3);

      if (v7)
      {
        v9 = DRGetLogHandle(v8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = v15;
          v17 = "[DeviceRecoveryBrainSpaceManager syncVolumes]";
          v18 = 1024;
          v19 = v7;
          v20 = 1024;
          v21 = v4;
          _os_log_error_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%{public}s: Got error(%d) from sync_volume_np update volume call attempt %d", buf, 0x18u);
        }
      }
    }

    userDataVolumeMountPath = [(DeviceRecoveryBrainSpaceManager *)self userDataVolumeMountPath];

    if (userDataVolumeMountPath)
    {
      userDataVolumeMountPath2 = [(DeviceRecoveryBrainSpaceManager *)self userDataVolumeMountPath];
      v12 = sync_volume_np([userDataVolumeMountPath2 fileSystemRepresentation], 3);

      if (v12)
      {
        v14 = DRGetLogHandle(v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = v15;
          v17 = "[DeviceRecoveryBrainSpaceManager syncVolumes]";
          v18 = 1024;
          v19 = v12;
          v20 = 1024;
          v21 = v4;
          _os_log_error_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%{public}s: Got error(%d) from sync_volume_np update volume call attempt %d", buf, 0x18u);
        }
      }
    }

    ++v4;
  }

  while (v4 != 3);
}

- (id)getFreeSpaceOnContainerForVolumeMountedAtPath:(id)path error:(id *)error
{
  pathCopy = path;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  v7 = [(DeviceRecoveryBrainSpaceManager *)self getContainerDeviceNodeForVolumeAtPath:pathCopy outError:&v20];
  v8 = v20;
  v9 = DRGetLogHandle(v8);
  v10 = v9;
  if (!v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [DeviceRecoveryBrainSpaceManager getFreeSpaceOnContainerForVolumeMountedAtPath:error:];
    }

    pathCopy = [NSString stringWithFormat:@"Failed to determine device node for volume at path %@", pathCopy];
    v15 = DRCreateError(@"DeviceRecoveryError", 18, pathCopy, @"Failed to determine device node for volume at path %@", v8, "[DeviceRecoveryBrainSpaceManager getFreeSpaceOnContainerForVolumeMountedAtPath:error:]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/DeviceRecoveryBrainSupport_Framework/DeviceRecoveryBrainSpaceManager.m", 0x198u);
    spaceInfo = 0;
    goto LABEL_8;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v24 = "[DeviceRecoveryBrainSpaceManager getFreeSpaceOnContainerForVolumeMountedAtPath:error:]";
    v25 = 2114;
    v26 = v7;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: Attempting to get free space on container %{public}@", buf, 0x16u);
  }

  [v7 fileSystemRepresentation];
  SpaceInfo = APFSContainerGetSpaceInfo();
  if (SpaceInfo)
  {
    spaceInfo = [NSString stringWithFormat:@"Unable to determine free space on container %@: %d", v7, SpaceInfo];
    v13 = DRGetLogHandle(spaceInfo);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [DeviceRecoveryBrainSpaceManager getFreeSpaceOnContainerForVolumeMountedAtPath:error:];
    }

    pathCopy = [NSString stringWithFormat:@"%@", spaceInfo];
    v15 = DRCreateError(@"DeviceRecoveryError", 18, pathCopy, @"%@", 0, "[DeviceRecoveryBrainSpaceManager getFreeSpaceOnContainerForVolumeMountedAtPath:error:]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/DeviceRecoveryBrainSupport_Framework/DeviceRecoveryBrainSpaceManager.m", 0x1A1u);
LABEL_8:

    v16 = 0;
    if (error && v15)
    {
      v17 = v15;
      v16 = 0;
      *error = v15;
    }

    goto LABEL_14;
  }

  v18 = DRGetLogHandle(SpaceInfo);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v24 = "[DeviceRecoveryBrainSpaceManager getFreeSpaceOnContainerForVolumeMountedAtPath:error:]";
    v25 = 2048;
    v26 = v21;
    v27 = 2048;
    v28 = v22;
    _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "%{public}s: Free space on container %llu total size: %llu", buf, 0x20u);
  }

  v16 = [NSNumber numberWithUnsignedLongLong:v21];
  v15 = 0;
  spaceInfo = &stru_30AA8;
LABEL_14:

  return v16;
}

- (id)getContainerDeviceNodeForVolumeAtPath:(id)path outError:(id *)error
{
  pathCopy = path;
  if (!pathCopy)
  {
    [DeviceRecoveryBrainSpaceManager getContainerDeviceNodeForVolumeAtPath:&v14 outError:?];
    v6 = 0;
    goto LABEL_16;
  }

  v6 = [LPStaticMedia mediaForPath:pathCopy];
  if (!v6)
  {
    [(DeviceRecoveryBrainSpaceManager *)pathCopy getContainerDeviceNodeForVolumeAtPath:&v14 outError:?];
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    container = [v6 container];
LABEL_8:
    v8 = container;
    if (container)
    {
      goto LABEL_9;
    }

    [(DeviceRecoveryBrainSpaceManager *)pathCopy getContainerDeviceNodeForVolumeAtPath:&v14 outError:?];
LABEL_16:
    v10 = v14;

    devNodePath = 0;
    if (error && v10)
    {
      v12 = v10;
      devNodePath = 0;
      v8 = 0;
      *error = v10;
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_10;
  }

  if (![v6 isWhole])
  {
    container = [v6 wholeMediaForMedia];
    goto LABEL_8;
  }

  v8 = v6;
LABEL_9:
  devNodePath = [v8 devNodePath];
  v10 = 0;
LABEL_10:

  return devNodePath;
}

- (void)freeSpaceOnMainContainerTillThreshold:(NSObject *)a1 .cold.1(NSObject *a1)
{
  if (OUTLINED_FUNCTION_6_1(a1, __stack_chk_guard))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x3Au);
  }
}

- (void)freeSpaceOnMainContainerTillThreshold:(NSObject *)a1 .cold.2(NSObject *a1)
{
  if (OUTLINED_FUNCTION_6_1(a1, __stack_chk_guard))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x3Au);
  }
}

- (void)freeSpaceOnMainContainerTillThreshold:(NSObject *)a1 .cold.3(NSObject *a1)
{
  if (OUTLINED_FUNCTION_6_1(a1, __stack_chk_guard))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x3Au);
  }
}

- (void)getFreeSpaceOnDeviceForUser:(NSObject *)a1 .cold.1(NSObject *a1)
{
  if (OUTLINED_FUNCTION_6_1(a1, __stack_chk_guard))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x3Au);
  }
}

- (void)getFreeSpaceOnDeviceForUser:(NSObject *)a1 .cold.2(NSObject *a1)
{
  if (OUTLINED_FUNCTION_6_1(a1, __stack_chk_guard))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x3Au);
  }
}

- (void)getFreeSpaceOnDeviceForUser:(NSObject *)a1 .cold.3(NSObject *a1)
{
  if (OUTLINED_FUNCTION_6_1(a1, __stack_chk_guard))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x3Au);
  }
}

- (void)getFreeSpaceOnDeviceForUser:(NSObject *)a1 .cold.4(NSObject *a1)
{
  if (OUTLINED_FUNCTION_6_1(a1, __stack_chk_guard))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x3Au);
  }
}

- (void)getFreeSpaceOnDeviceForUser:(NSObject *)a1 .cold.5(NSObject *a1)
{
  if (OUTLINED_FUNCTION_6_1(a1, __stack_chk_guard))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x3Au);
  }
}

- (void)getFreeSpaceOnDeviceForUser:(NSObject *)a1 .cold.6(NSObject *a1)
{
  if (OUTLINED_FUNCTION_6_1(a1, __stack_chk_guard))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x3Au);
  }
}

- (void)getFreeSpaceOnDeviceForUser:(NSObject *)a1 .cold.7(NSObject *a1)
{
  if (OUTLINED_FUNCTION_6_1(a1, __stack_chk_guard))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x3Au);
  }
}

- (void)getFreeSpaceOnContainerForVolumeMountedAtPath:error:.cold.1()
{
  v2[0] = 136447490;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_12();
  v3 = "";
  OUTLINED_FUNCTION_4();
  v4 = 417;
  OUTLINED_FUNCTION_5_2(&dword_0, v0, v1, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v2);
}

- (void)getFreeSpaceOnContainerForVolumeMountedAtPath:error:.cold.2()
{
  v2[0] = 136447490;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_12();
  v3 = "";
  OUTLINED_FUNCTION_4();
  v4 = 408;
  OUTLINED_FUNCTION_5_2(&dword_0, v0, v1, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v2);
}

- (uint64_t)getContainerDeviceNodeForVolumeAtPath:(uint64_t *)a3 outError:.cold.1(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = DRGetLogHandle(a1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v17[0] = 136447490;
    OUTLINED_FUNCTION_3();
    v18 = v15;
    v19 = "volumeContainer != nil";
    v20 = v15;
    OUTLINED_FUNCTION_1();
    v21 = 453;
    OUTLINED_FUNCTION_5_2(&dword_0, v6, v16, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v17);
  }

  *a2 = [NSString stringWithFormat:@"Unable to determine container for volume at path %@", a1];
  v7 = OUTLINED_FUNCTION_10_1();
  result = DRCreateError(v7, v8, v9, v10, v11, v12, v13, 0x1C5u);
  *a3 = result;
  return result;
}

- (uint64_t)getContainerDeviceNodeForVolumeAtPath:(uint64_t *)a3 outError:.cold.2(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = DRGetLogHandle(a1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v17[0] = 136447490;
    OUTLINED_FUNCTION_3();
    v18 = v15;
    v19 = "volume";
    v20 = v15;
    OUTLINED_FUNCTION_1();
    v21 = 440;
    OUTLINED_FUNCTION_5_2(&dword_0, v6, v16, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v17);
  }

  *a2 = [NSString stringWithFormat:@"Failed to determine media for volume mounted at %@", a1];
  v7 = OUTLINED_FUNCTION_10_1();
  result = DRCreateError(v7, v8, v9, v10, v11, v12, v13, 0x1B8u);
  *a3 = result;
  return result;
}

- (uint64_t)getContainerDeviceNodeForVolumeAtPath:(void *)a1 outError:(uint64_t *)a2 .cold.3(void *a1, uint64_t *a2)
{
  v4 = DRGetLogHandle(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 136447490;
    v9 = "[DeviceRecoveryBrainSpaceManager getContainerDeviceNodeForVolumeAtPath:outError:]";
    v10 = 2082;
    v11 = "[DeviceRecoveryBrainSpaceManager getContainerDeviceNodeForVolumeAtPath:outError:]";
    v12 = 2082;
    v13 = "path != nil";
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/DeviceRecoveryBrainSupport_Framework/DeviceRecoveryBrainSpaceManager.m";
    v18 = 1026;
    v19 = 436;
    OUTLINED_FUNCTION_5_2(&dword_0, v4, v5, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", &v8);
  }

  v6 = [NSString stringWithFormat:@"Invalid argument for volume path"];
  *a1 = v6;
  result = DRCreateError(@"DeviceRecoveryError", 14, v6, @"Invalid argument for volume path", 0, "[DeviceRecoveryBrainSpaceManager getContainerDeviceNodeForVolumeAtPath:outError:]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/DeviceRecoveryBrainSupport_Framework/DeviceRecoveryBrainSpaceManager.m", 0x1B4u);
  *a2 = result;
  return result;
}

@end