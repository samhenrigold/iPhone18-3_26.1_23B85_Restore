@interface MBFileSystemManager
+ (BOOL)_createSnapshotForVolumeFd:(int)fd volumeMountPoint:(id)point name:(id)name error:(id *)error cancelationHandler:(id)handler;
+ (BOOL)_deleteSnapshotForVolume:(id)volume name:(id)name error:(id *)error;
+ (BOOL)_mountSnapshotForVolumeFd:(int)fd volumeMountPoint:(id)point name:(id)name mountPoint:(id)mountPoint error:(id *)error;
+ (BOOL)_unmountWithRetry:(id)retry startTime:(double)time timeout:(double)timeout error:(id *)error cancelationHandler:(id)handler;
+ (BOOL)createSnapshotForVolume:(id)volume name:(id)name error:(id *)error cancelationHandler:(id)handler;
+ (BOOL)deleteAllSnapshotsAcrossVolumes:(id)volumes withPrefix:(id)prefix error:(id *)error;
+ (BOOL)deleteAllSnapshotsForVolume:(id)volume withPrefix:(id)prefix error:(id *)error;
+ (BOOL)deleteAllSnapshotsForVolume:(id)volume withPrefix:(id)prefix latestCreationDate:(id)date error:(id *)error;
+ (BOOL)renameSnapshotForVolume:(id)volume name:(id)name newName:(id)newName error:(id *)error;
+ (BOOL)startFilesystemKeyRollingWithPath:(id)path error:(id *)error;
+ (BOOL)stopFilesystemKeyRollingWithPath:(id)path error:(id *)error;
+ (BOOL)unmount:(id)unmount error:(id *)error;
+ (BOOL)unmount:(id)unmount timeout:(double)timeout error:(id *)error cancelationHandler:(id)handler;
+ (BOOL)unmountAndDeleteSnapshotForVolume:(id)volume name:(id)name mountPoint:(id)point error:(id *)error;
+ (BOOL)unmountAndRenameSnapshotForVolume:(id)volume name:(id)name mountPoint:(id)point newName:(id)newName error:(id *)error;
+ (BOOL)volumeSupportsLocalSnapshots:(id)snapshots;
+ (id)_deleteFileSystemSnapshots:(id)snapshots block:(id)block;
+ (id)createAndMountSnapshotForVolume:(id)volume name:(id)name atFirstAvailableMountPoint:(id)point error:(id *)error cancelationHandler:(id)handler;
+ (id)fetchAllAPFSVolumeMountPoints;
+ (id)listSnapshotsForVolume:(id)volume error:(id *)error;
+ (id)volumeMountPointForFile:(id)file error:(id *)error;
+ (id)volumeUUIDWithVolumeMountPoint:(id)point error:(id *)error;
+ (unint64_t)fileSystemCapacity;
+ (void)removeAbandonedDriveBackupDirectoriesWithLatestCreationDate:(id)date persona:(id)persona;
+ (void)removeDeviceTransferDirectoryWithEarliestCreationDate:(id)date;
@end

@implementation MBFileSystemManager

+ (BOOL)volumeSupportsLocalSnapshots:(id)snapshots
{
  snapshotsCopy = snapshots;
  v4 = open([snapshotsCopy fileSystemRepresentation], 0);
  if ((v4 & 0x80000000) != 0)
  {
    v8 = MBGetDefaultLog(v4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *__error();
      *v18 = 138412546;
      *&v18[4] = snapshotsCopy;
      *&v18[12] = 1024;
      *&v18[14] = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Unable to open %@: %{errno}d while checking if FS supports snapshot", v18, 0x12u);
      v10 = __error();
      _MBLog(@"E ", "Unable to open %@: %{errno}d while checking if FS supports snapshot", snapshotsCopy, *v10);
    }
  }

  else
  {
    v5 = v4;
    v15 = 0;
    v14 = xmmword_100018D98;
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    v6 = fgetattrlist(v4, &v14, v18, 0x24uLL, 0);
    if (!v6)
    {
      v12 = *&v18[8] & *&v18[24];
      close(v5);
      v11 = (v12 >> 17) & 1;
      goto LABEL_11;
    }

    v7 = MBGetDefaultLog(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = snapshotsCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Couldn't get attr list for filesystem path %@", buf, 0xCu);
      _MBLog(@"E ", "Couldn't get attr list for filesystem path %@", snapshotsCopy);
    }

    close(v5);
  }

  LOBYTE(v11) = 0;
LABEL_11:

  return v11;
}

+ (unint64_t)fileSystemCapacity
{
  unsignedLongLongValue = atomic_load(&qword_10002A0F0);
  if (!unsignedLongLongValue)
  {
    v3 = +[NSFileManager defaultManager];
    v10 = 0;
    v4 = [v3 attributesOfFileSystemForPath:@"/var/mobile" error:&v10];
    v5 = v10;

    if (v4)
    {
      v7 = [v4 objectForKeyedSubscript:NSFileSystemSize];
      unsignedLongLongValue = [v7 unsignedLongLongValue];

      atomic_store(unsignedLongLongValue, &qword_10002A0F0);
    }

    else
    {
      v8 = MBGetDefaultLog(v6);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v12 = @"/var/mobile";
        v13 = 2112;
        v14 = v5;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to get filesystem capacity at %@: %@", buf, 0x16u);
        _MBLog(@"E ", "Failed to get filesystem capacity at %@: %@", @"/var/mobile", v5);
      }

      unsignedLongLongValue = -1;
    }
  }

  return unsignedLongLongValue;
}

+ (BOOL)createSnapshotForVolume:(id)volume name:(id)name error:(id *)error cancelationHandler:(id)handler
{
  volumeCopy = volume;
  nameCopy = name;
  handlerCopy = handler;
  v13 = volumeCopy;
  v14 = MBGetDefaultLog(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v31 = nameCopy;
    v32 = 2114;
    v33 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Creating filesystem snapshot %{public}@ at %{public}@", buf, 0x16u);
    _MBLog(@"Df", "Creating filesystem snapshot %{public}@ at %{public}@", nameCopy, v13);
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v16 = v15;
  v17 = open([v13 fileSystemRepresentation], 0);
  if ((v17 & 0x80000000) != 0)
  {
    v26 = __error();
    v27 = *v26;
    v28 = MBGetDefaultLog(v26);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v31 = v13;
      v32 = 1024;
      LODWORD(v33) = v27;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Failed to open %{public}@: %{errno}d", buf, 0x12u);
      _MBLog(@"E ", "Failed to open %{public}@: %{errno}d", v13, v27);
    }

    if (error)
    {
      [MBError errorWithErrno:v27 path:v13 format:@"Failed to open snapshot path"];
      *error = v25 = 0;
      goto LABEL_13;
    }

LABEL_12:
    v25 = 0;
    goto LABEL_13;
  }

  v18 = v17;
  v19 = [self _createSnapshotForVolumeFd:v17 volumeMountPoint:v13 name:nameCopy error:error cancelationHandler:handlerCopy];
  close(v18);
  if (!v19)
  {
    goto LABEL_12;
  }

  v20 = +[NSDate timeIntervalSinceReferenceDate];
  v22 = v21;
  v23 = MBGetDefaultLog(v20);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = v22 - v16;
    *buf = 138543874;
    v31 = nameCopy;
    v32 = 2114;
    v33 = v13;
    v34 = 2048;
    v35 = v24;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Created filesystem snapshot %{public}@ at %{public}@ in %.3fs", buf, 0x20u);
    _MBLog(@"Df", "Created filesystem snapshot %{public}@ at %{public}@ in %.3fs", nameCopy, v13, *&v24);
  }

  v25 = 1;
LABEL_13:

  return v25;
}

+ (BOOL)_createSnapshotForVolumeFd:(int)fd volumeMountPoint:(id)point name:(id)name error:(id *)error cancelationHandler:(id)handler
{
  pointCopy = point;
  nameCopy = name;
  handlerCopy = handler;
  v12 = 0;
  v13 = 0;
  while (1)
  {
    v14 = objc_autoreleasePoolPush();
    if (handlerCopy)
    {
      v15 = handlerCopy[2](handlerCopy);
      if (v15)
      {
        break;
      }
    }

    v16 = fs_snapshot_create(fd, [nameCopy fileSystemRepresentation], 0);
    v17 = v16 == 0;
    if (!v16)
    {
      goto LABEL_12;
    }

    v18 = *__error();
    v19 = [MBError errorWithErrno:v18 path:pointCopy format:@"Failed to create snapshot: %d", v18];

    v21 = MBGetDefaultLog(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138544130;
      v30 = nameCopy;
      v31 = 2114;
      v32 = pointCopy;
      v33 = 1024;
      v34 = v13;
      v35 = 1024;
      v36 = v18;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to create filesystem snapshot %{public}@ at %{public}@ (%d): %{errno}d", buf, 0x22u);
      _MBLog(@"E ", "Failed to create filesystem snapshot %{public}@ at %{public}@ (%d): %{errno}d", nameCopy, pointCopy, v13, v18);
    }

    if (v18 != 36)
    {
      v12 = v19;
LABEL_12:
      errorCopy3 = error;
      goto LABEL_16;
    }

    sleep(0xAu);
    objc_autoreleasePoolPop(v14);
    v13 = (v13 + 1);
    v12 = v19;
    if (v13 == 30)
    {
      v17 = 0;
      errorCopy3 = error;
      if (!error)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  v23 = MBGetDefaultLog(v15);
  errorCopy3 = error;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v30 = nameCopy;
    v31 = 2114;
    v32 = pointCopy;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to create filesystem snapshot %{public}@ at %{public}@ (canceled)", buf, 0x16u);
    _MBLog(@"E ", "Failed to create filesystem snapshot %{public}@ at %{public}@ (canceled)", nameCopy, pointCopy);
  }

  v24 = [MBError errorWithCode:202 format:@"Failed to create snapshot"];

  v17 = 0;
  v12 = v24;
LABEL_16:
  objc_autoreleasePoolPop(v14);
  v19 = v12;
  if (!errorCopy3)
  {
    goto LABEL_18;
  }

LABEL_17:
  v25 = v19;
  *errorCopy3 = v19;
LABEL_18:

  return v17;
}

+ (id)createAndMountSnapshotForVolume:(id)volume name:(id)name atFirstAvailableMountPoint:(id)point error:(id *)error cancelationHandler:(id)handler
{
  volumeCopy = volume;
  nameCopy = name;
  pointCopy = point;
  handlerCopy = handler;
  if (![pointCopy count])
  {
    sub_10001434C();
  }

  v15 = open([volumeCopy fileSystemRepresentation], 0x100000);
  if ((v15 & 0x80000000) != 0)
  {
    v28 = __error();
    v29 = *v28;
    v30 = MBGetDefaultLog(v28);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v45 = volumeCopy;
      v46 = 1024;
      LODWORD(v47) = v29;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Unable to open %@: %{errno}d", buf, 0x12u);
      _MBLog(@"E ", "Unable to open %@: %{errno}d", volumeCopy, v29);
    }

    if (error)
    {
      [MBError errorWithErrno:v29 path:volumeCopy format:@"Unable to open snapshot path"];
      *error = v27 = 0;
    }

    else
    {
      v27 = 0;
    }

    goto LABEL_36;
  }

  v16 = v15;
  if (![objc_opt_class() _createSnapshotForVolumeFd:v15 volumeMountPoint:volumeCopy name:nameCopy error:error cancelationHandler:handlerCopy])
  {
    v27 = 0;
    goto LABEL_34;
  }

  v38 = handlerCopy;
  fileSystemRepresentation = [nameCopy fileSystemRepresentation];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = pointCopy;
  v17 = [obj countByEnumeratingWithState:&v40 objects:v50 count:16];
  if (!v17)
  {
    goto LABEL_15;
  }

  v18 = v17;
  v19 = *v41;
  v36 = pointCopy;
  v37 = nameCopy;
  while (2)
  {
    for (i = 0; i != v18; i = i + 1)
    {
      if (*v41 != v19)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v40 + 1) + 8 * i);
      fileSystemRepresentation2 = [v21 fileSystemRepresentation];
      v23 = [objc_opt_class() volumeMountPointForFile:v21 error:error];
      v24 = v23;
      if (!volumeCopy)
      {
        v27 = 0;
        goto LABEL_32;
      }

      v25 = [v23 isEqualToString:v21];
      if (!v25)
      {
        if (fs_snapshot_mount(v16, fileSystemRepresentation2, fileSystemRepresentation, 0))
        {
          v31 = __error();
          v32 = *v31;
          v33 = MBGetDefaultLog(v31);
          nameCopy = v37;
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            v45 = v37;
            v46 = 2080;
            v47 = fileSystemRepresentation2;
            v48 = 1024;
            v49 = v32;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Unable to mount snapshot %@ at mount point %s: %{errno}d", buf, 0x1Cu);
            _MBLog(@"E ", "Unable to mount snapshot %@ at mount point %s: %{errno}d", v37, fileSystemRepresentation2, v32);
          }

          if (error)
          {
            [MBError errorWithErrno:v32 path:v21 format:@"Unable to mount snapshot"];
            *error = v27 = 0;
          }

          else
          {
            v27 = 0;
          }

          goto LABEL_33;
        }

        v27 = v21;
LABEL_32:
        nameCopy = v37;
LABEL_33:
        handlerCopy = v38;

        pointCopy = v36;
        goto LABEL_34;
      }

      v26 = MBGetDefaultLog(v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v45 = v24;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Mount point %@ is already in use", buf, 0xCu);
        _MBLog(@"I ", "Mount point %@ is already in use", v24);
      }
    }

    v18 = [obj countByEnumeratingWithState:&v40 objects:v50 count:16];
    pointCopy = v36;
    nameCopy = v37;
    if (v18)
    {
      continue;
    }

    break;
  }

LABEL_15:

  [objc_opt_class() _deleteSnapshotForVolume:volumeCopy name:nameCopy error:0];
  if (error)
  {
    [MBError errorWithCode:14 format:@"No free mount points for APFS snapshot"];
    *error = v27 = 0;
  }

  else
  {
    v27 = 0;
  }

  handlerCopy = v38;
LABEL_34:
  if (v16)
  {
    close(v16);
  }

LABEL_36:

  return v27;
}

+ (BOOL)_mountSnapshotForVolumeFd:(int)fd volumeMountPoint:(id)point name:(id)name mountPoint:(id)mountPoint error:(id *)error
{
  nameCopy = name;
  mountPointCopy = mountPoint;
  realpath_DARWIN_EXTSN([mountPointCopy fileSystemRepresentation], v23);
  v12 = fs_snapshot_mount(fd, v23, [nameCopy fileSystemRepresentation], 0);
  if (v12)
  {
    v13 = __error();
    v14 = *v13;
    v15 = MBGetDefaultLog(v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v18 = nameCopy;
      v19 = 2080;
      v20 = v23;
      v21 = 1024;
      v22 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Unable to mount snapshot %@ at mount point %s: %{errno}d", buf, 0x1Cu);
      _MBLog(@"E ", "Unable to mount snapshot %@ at mount point %s: %{errno}d", nameCopy, v23, v14);
    }

    if (error)
    {
      *error = [MBError errorWithErrno:v14 path:mountPointCopy format:@"Unable to mount snapshot"];
    }
  }

  return v12 == 0;
}

+ (BOOL)_unmountWithRetry:(id)retry startTime:(double)time timeout:(double)timeout error:(id *)error cancelationHandler:(id)handler
{
  retryCopy = retry;
  handlerCopy = handler;
  v13 = 31;
  while (!handlerCopy || !handlerCopy[2](handlerCopy))
  {
    v24 = 0;
    v14 = [self unmount:retryCopy error:&v24];
    v15 = v24;
    if ((v14 & 1) != 0 || [MBError isError:v15 withCode:4])
    {
      v20 = 1;
LABEL_17:

      goto LABEL_18;
    }

    Current = CFAbsoluteTimeGetCurrent();
    v17 = [MBError isError:v15 withCode:14];
    if (!v17 || vabdd_f64(Current, time) > timeout)
    {
      if (error)
      {
        v21 = v15;
        v20 = 0;
        *error = v15;
      }

      else
      {
        v20 = 0;
      }

      goto LABEL_17;
    }

    v18 = MBGetDefaultLog(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = retryCopy;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Retrying unmount for %@ after EBUSY", buf, 0xCu);
      _MBLog(@"Df", "Retrying unmount for %@ after EBUSY", retryCopy);
    }

    sleep(0xAu);
    if (!--v13)
    {
      errorCopy2 = error;
      if (error)
      {
        [MBError errorWithCode:15 format:@"Timed out trying to unmount %@", retryCopy];
        goto LABEL_21;
      }

LABEL_22:
      v20 = 0;
      goto LABEL_18;
    }
  }

  errorCopy2 = error;
  if (!error)
  {
    goto LABEL_22;
  }

  [MBError errorWithCode:202 format:@"Cancelled while trying to unmount %@", retryCopy];
LABEL_21:
  *errorCopy2 = v20 = 0;
LABEL_18:

  return v20;
}

+ (BOOL)unmount:(id)unmount timeout:(double)timeout error:(id *)error cancelationHandler:(id)handler
{
  unmountCopy = unmount;
  handlerCopy = handler;
  v12 = objc_opt_new();
  Current = CFAbsoluteTimeGetCurrent();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v14 = unmountCopy;
  v15 = [v14 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v31;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v31 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v30 + 1) + 8 * i);
        v29 = 0;
        v20 = [self _unmountWithRetry:v19 startTime:&v29 timeout:handlerCopy error:Current cancelationHandler:timeout];
        v21 = v29;
        if ((v20 & 1) == 0)
        {
          [v12 addObject:v21];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v16);
  }

  v22 = [v12 count];
  v23 = v22;
  if (v22)
  {
    if (error)
    {
      v22 = [MBError errorWithErrors:v12];
      *error = v22;
    }

    v24 = MBGetDefaultLog(v22);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [v14 count];
      v26 = [v14 count];
      *buf = 134218240;
      v35 = v25;
      v36 = 2048;
      v37 = v26;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to unmount %llu/%llu snapshots", buf, 0x16u);
      [v14 count];
      [v14 count];
      _MBLog(@"E ", "Failed to unmount %llu/%llu snapshots");
    }
  }

  else
  {
    v24 = MBGetDefaultLog(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [v14 count];
      *buf = 134217984;
      v35 = v27;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Unmounted %llu mount points", buf, 0xCu);
      [v14 count];
      _MBLog(@"Df", "Unmounted %llu mount points");
    }
  }

  return v23 == 0;
}

+ (BOOL)unmount:(id)unmount error:(id *)error
{
  unmountCopy = unmount;
  v6 = unmountCopy;
  if (!unmountCopy)
  {
    if (error)
    {
      v12 = [MBError errorWithCode:5 description:@"No mountpoint specified from which to unmount the current snapshot"];
      goto LABEL_17;
    }

LABEL_18:
    v14 = 0;
    goto LABEL_19;
  }

  v7 = unmount([unmountCopy fileSystemRepresentation], 0);
  if (v7)
  {
    v8 = __error();
    v9 = *v8;
    v10 = MBGetDefaultLog(v8);
    v11 = v10;
    if (v9 == 22)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v17 = v6;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Nothing to unmount at %{public}@", buf, 0xCu);
        _MBLog(@"Df", "Nothing to unmount at %{public}@", v6);
      }

      if (error)
      {
        v12 = [MBError errorWithCode:4 path:v6 format:@"Nothing to unmount"];
LABEL_17:
        v14 = 0;
        *error = v12;
        goto LABEL_19;
      }
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v17 = v6;
        v18 = 1024;
        v19 = v9;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "unmount failed at %{public}@: %{errno}d", buf, 0x12u);
        _MBLog(@"E ", "unmount failed at %{public}@: %{errno}d", v6, v9);
      }

      if (error)
      {
        v12 = [MBError errorWithErrno:v9 path:v6 format:@"Unable to unmount snapshot"];
        goto LABEL_17;
      }
    }

    goto LABEL_18;
  }

  v13 = MBGetDefaultLog(v7);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Unmounted snapshot at %{public}@", buf, 0xCu);
    _MBLog(@"Df", "Unmounted snapshot at %{public}@", v6);
  }

  v14 = 1;
LABEL_19:

  return v14;
}

+ (BOOL)_deleteSnapshotForVolume:(id)volume name:(id)name error:(id *)error
{
  volumeCopy = volume;
  nameCopy = name;
  v9 = open([volumeCopy fileSystemRepresentation], 0);
  if (v9 < 0)
  {
    v17 = __error();
    v18 = *v17;
    v19 = MBGetDefaultLog(v17);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v25 = volumeCopy;
      v26 = 1024;
      LODWORD(v27) = v18;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to open %{public}@: %{errno}d", buf, 0x12u);
      _MBLog(@"E ", "Failed to open %{public}@: %{errno}d", volumeCopy, v18);
    }

    v20 = [MBError errorWithErrno:v18 path:volumeCopy format:@"Unable to open snapshot path"];
    if (error)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v10 = v9;
    v11 = fs_snapshot_delete(v9, [nameCopy fileSystemRepresentation], 0);
    if (v11)
    {
      v12 = __error();
      v13 = *v12;
      v14 = MBGetDefaultLog(v12);
      v15 = v14;
      if (v13 == 2)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v25 = nameCopy;
          v26 = 2114;
          v27 = volumeCopy;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Snapshot %{public}@ not found at %{public}@", buf, 0x16u);
          _MBLog(@"Df", "Snapshot %{public}@ not found at %{public}@", nameCopy, volumeCopy);
        }

        v16 = [MBError errorWithCode:4 path:volumeCopy format:@"Snapshot not found"];
      }

      else
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543874;
          v25 = nameCopy;
          v26 = 2114;
          v27 = volumeCopy;
          v28 = 1024;
          v29 = v13;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to delete snapshot %{public}@ at %{public}@: %{errno}d", buf, 0x1Cu);
          _MBLog(@"E ", "Failed to delete snapshot %{public}@ at %{public}@: %{errno}d", nameCopy, volumeCopy, v13);
        }

        v16 = [MBError errorWithErrno:v13 path:volumeCopy format:@"Unable to delete snapshot"];
      }

      v20 = v16;
    }

    else
    {
      v21 = MBGetDefaultLog(v11);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v25 = nameCopy;
        v26 = 2114;
        v27 = volumeCopy;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Deleted snapshot %{public}@ at %{public}@", buf, 0x16u);
        _MBLog(@"Df", "Deleted snapshot %{public}@ at %{public}@", nameCopy, volumeCopy);
      }

      v20 = 0;
    }

    close(v10);
    if (error)
    {
LABEL_19:
      if (v20)
      {
        v22 = v20;
        *error = v20;
      }
    }
  }

  return v20 == 0;
}

+ (BOOL)renameSnapshotForVolume:(id)volume name:(id)name newName:(id)newName error:(id *)error
{
  volumeCopy = volume;
  nameCopy = name;
  newNameCopy = newName;
  v12 = open([volumeCopy fileSystemRepresentation], 0x100000);
  if (v12 < 0)
  {
    v18 = __error();
    v19 = *v18;
    v20 = MBGetDefaultLog(v18);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v25 = volumeCopy;
      v26 = 1024;
      LODWORD(v27) = v19;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Unable to open %@: %{errno}d", buf, 0x12u);
      _MBLog(@"E ", "Unable to open %@: %{errno}d", volumeCopy, v19);
    }

    if (error)
    {
      [MBError errorWithErrno:v19 path:volumeCopy format:@"Unable to open snapshot path"];
      *error = v21 = 0;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v13 = v12;
    if (fs_snapshot_rename(v12, [nameCopy fileSystemRepresentation], objc_msgSend(newNameCopy, "fileSystemRepresentation"), 0))
    {
      v14 = __error();
      v15 = *v14;
      v16 = MBGetDefaultLog(v14);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v25 = nameCopy;
        v26 = 2112;
        v27 = newNameCopy;
        v28 = 1024;
        v29 = v15;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Unable to rename snapshot: %@ -> %@: %{errno}d", buf, 0x1Cu);
        _MBLog(@"E ", "Unable to rename snapshot: %@ -> %@: %{errno}d", nameCopy, newNameCopy, v15);
      }

      v17 = [MBError errorWithErrno:v15 path:volumeCopy format:@"Unable to rename snapshot"];
    }

    else
    {
      v17 = 0;
    }

    close(v13);
    v21 = v17 == 0;
    if (error && v17)
    {
      v22 = v17;
      *error = v17;
    }
  }

  return v21;
}

+ (BOOL)unmountAndDeleteSnapshotForVolume:(id)volume name:(id)name mountPoint:(id)point error:(id *)error
{
  volumeCopy = volume;
  nameCopy = name;
  pointCopy = point;
  v17 = 0;
  v12 = [objc_opt_class() unmount:pointCopy error:&v17];

  v13 = v17;
  if (v12)
  {
    goto LABEL_4;
  }

  if ([MBError isError:v13 withCode:4])
  {

    v13 = 0;
LABEL_4:
    v14 = [objc_opt_class() _deleteSnapshotForVolume:volumeCopy name:nameCopy error:error];
    goto LABEL_5;
  }

  if (error)
  {
    v16 = v13;
    v14 = 0;
    *error = v13;
  }

  else
  {
    v14 = 0;
  }

LABEL_5:

  return v14;
}

+ (BOOL)unmountAndRenameSnapshotForVolume:(id)volume name:(id)name mountPoint:(id)point newName:(id)newName error:(id *)error
{
  volumeCopy = volume;
  nameCopy = name;
  newNameCopy = newName;
  pointCopy = point;
  v15 = [objc_opt_class() unmount:pointCopy error:error];

  if (v15)
  {
    v16 = [objc_opt_class() renameSnapshotForVolume:volumeCopy name:nameCopy newName:newNameCopy error:error];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)_deleteFileSystemSnapshots:(id)snapshots block:(id)block
{
  snapshotsCopy = snapshots;
  blockCopy = block;
  selfCopy = self;
  v38 = 0;
  v30 = snapshotsCopy;
  v8 = [objc_opt_class() listSnapshotsForVolume:snapshotsCopy error:&v38];
  v9 = v38;
  v10 = v9;
  if (v8)
  {
    if ([v8 count])
    {
      v32 = v10;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v27 = v8;
      obj = v8;
      v11 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (!v11)
      {
        goto LABEL_19;
      }

      v12 = v11;
      v13 = *v35;
      v28 = blockCopy;
      while (1)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v35 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v34 + 1) + 8 * i);
          v16 = objc_autoreleasePoolPush();
          v17 = blockCopy[2](blockCopy, v15);
          if ((v17 & 1) == 0)
          {
            v23 = MBGetDefaultLog(v17);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              v41 = v15;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "Ignoring snapshot: %{public}@", buf, 0xCu);
              _MBLog(@"Db", "Ignoring snapshot: %{public}@", v15);
            }

            goto LABEL_15;
          }

          v18 = v13;
          name = [v15 name];
          v33 = v32;
          v20 = [selfCopy _deleteSnapshotForVolume:v30 name:name error:&v33];
          v21 = v33;

          if (v20)
          {
            v23 = MBGetDefaultLog(v22);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v41 = v15;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Deleted snapshot: %{public}@", buf, 0xCu);
              _MBLog(@"Df", "Deleted snapshot: %{public}@", v15);
            }

            v32 = v21;
            v13 = v18;
            blockCopy = v28;
LABEL_15:

            goto LABEL_17;
          }

          v32 = v21;
          v13 = v18;
          blockCopy = v28;
LABEL_17:
          objc_autoreleasePoolPop(v16);
        }

        v12 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
        if (!v12)
        {
LABEL_19:

          v24 = 0;
          v8 = v27;
          v10 = v32;
          goto LABEL_24;
        }
      }
    }

    v25 = MBGetDefaultLog(0);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v41 = snapshotsCopy;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "No snapshots to delete for %{public}@", buf, 0xCu);
      _MBLog(@"I ", "No snapshots to delete for %{public}@", snapshotsCopy);
    }

    v24 = 0;
  }

  else
  {
    v10 = v9;
    v24 = v10;
  }

LABEL_24:

  return v24;
}

+ (BOOL)deleteAllSnapshotsAcrossVolumes:(id)volumes withPrefix:(id)prefix error:(id *)error
{
  volumesCopy = volumes;
  prefixCopy = prefix;
  v9 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = volumesCopy;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      v14 = 0;
      do
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v22 + 1) + 8 * v14);
        v21 = 0;
        v16 = [MBFileSystemManager deleteAllSnapshotsForVolume:v15 withPrefix:prefixCopy error:&v21];
        v17 = v21;
        if ((v16 & 1) == 0)
        {
          [v9 addObject:v17];
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  v18 = [v9 count];
  v19 = v18;
  if (error && v18)
  {
    *error = [MBError errorWithErrors:v9];
  }

  return v19 == 0;
}

+ (BOOL)deleteAllSnapshotsForVolume:(id)volume withPrefix:(id)prefix error:(id *)error
{
  prefixCopy = prefix;
  volumeCopy = volume;
  v9 = objc_opt_class();
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000035C0;
  v14[3] = &unk_100024740;
  v15 = prefixCopy;
  v10 = prefixCopy;
  v11 = [v9 _deleteFileSystemSnapshots:volumeCopy block:v14];

  if (error && v11)
  {
    v12 = v11;
    *error = v11;
  }

  return v11 == 0;
}

+ (BOOL)deleteAllSnapshotsForVolume:(id)volume withPrefix:(id)prefix latestCreationDate:(id)date error:(id *)error
{
  volumeCopy = volume;
  prefixCopy = prefix;
  dateCopy = date;
  if (!dateCopy)
  {
    sub_100014378();
  }

  v12 = dateCopy;
  v13 = objc_opt_class();
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10000371C;
  v19[3] = &unk_100024768;
  v20 = v12;
  v21 = prefixCopy;
  v14 = prefixCopy;
  v15 = v12;
  v16 = [v13 _deleteFileSystemSnapshots:volumeCopy block:v19];
  if (error && v16)
  {
    v16 = v16;
    *error = v16;
  }

  v17 = v16 == 0;

  return v17;
}

+ (void)removeAbandonedDriveBackupDirectoriesWithLatestCreationDate:(id)date persona:(id)persona
{
  dateCopy = date;
  personaCopy = persona;
  cacheDirectory = [personaCopy cacheDirectory];
  v7 = [NSURL fileURLWithPath:cacheDirectory isDirectory:1];

  v9 = MBGetDefaultLog(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v85 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Removing drive backup snapshots underneath %@", buf, 0xCu);
    _MBLog(@"Df", "Removing drive backup snapshots underneath %@", v7);
  }

  v10 = +[NSFileManager defaultManager];
  v11 = NSURLIsDirectoryKey;
  v89[0] = NSURLIsDirectoryKey;
  v89[1] = NSURLCreationDateKey;
  v12 = [NSArray arrayWithObjects:v89 count:2];
  v13 = objc_opt_new();
  snapshotDatabaseDirectory = [personaCopy snapshotDatabaseDirectory];
  [v13 addObject:snapshotDatabaseDirectory];

  restoreSnapshotsDatabaseDirectory = [personaCopy restoreSnapshotsDatabaseDirectory];
  [v13 addObject:restoreSnapshotsDatabaseDirectory];

  v58 = personaCopy;
  restoreDepotRootsByVolume = [personaCopy restoreDepotRootsByVolume];
  allValues = [restoreDepotRootsByVolume allValues];
  v63 = v13;
  [v13 addObjectsFromArray:allValues];

  v60 = v10;
  v56 = v12;
  v57 = v7;
  [v10 enumeratorAtURL:v7 includingPropertiesForKeys:v12 options:1 errorHandler:&stru_1000247A8];
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v18 = v82 = 0u;
  v19 = [v18 countByEnumeratingWithState:&v79 objects:v88 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v80;
    v22 = &MGCopyAnswer_ptr;
    v62 = v18;
    v61 = *v80;
    do
    {
      v23 = 0;
      v64 = v20;
      do
      {
        if (*v80 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v24 = *(*(&v79 + 1) + 8 * v23);
        context = objc_autoreleasePoolPush();
        v25 = objc_alloc(v22[208]);
        lastPathComponent = [v24 lastPathComponent];
        v27 = [v25 initWithUUIDString:lastPathComponent];

        if (v27)
        {
          v68 = v27;
          v77 = 0;
          v78 = 0;
          v28 = [v24 getResourceValue:&v78 forKey:v11 error:&v77];
          v29 = v78;
          v30 = v77;
          v67 = v30;
          if (v28)
          {
            if ([v29 BOOLValue])
            {
              v65 = v23;
              v66 = v29;
              v75 = 0u;
              v76 = 0u;
              v73 = 0u;
              v74 = 0u;
              v31 = v63;
              v32 = [v31 countByEnumeratingWithState:&v73 objects:v83 count:16];
              if (v32)
              {
                v33 = v32;
                v34 = *v74;
                do
                {
                  for (i = 0; i != v33; i = i + 1)
                  {
                    if (*v74 != v34)
                    {
                      objc_enumerationMutation(v31);
                    }

                    v36 = *(*(&v73 + 1) + 8 * i);
                    path = [v24 path];
                    mb_stringByAppendingSlash = [v36 mb_stringByAppendingSlash];
                    v39 = [path hasPrefix:mb_stringByAppendingSlash];
                    if (v39)
                    {
                      v40 = MBGetDefaultLog(v39);
                      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
                      {
                        *buf = 138412290;
                        v85 = v36;
                        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "Ignoring %@ since it's in the exclude list", buf, 0xCu);
                        _MBLog(@"I ", "Ignoring %@ since it's in the exclude list", v36);
                      }
                    }
                  }

                  v33 = [v31 countByEnumeratingWithState:&v73 objects:v83 count:16];
                }

                while (v33);
              }

              v71 = 0;
              v72 = 0;
              v41 = [v24 getResourceValue:&v72 forKey:NSURLCreationDateKey error:&v71];
              v42 = v72;
              v43 = v71;

              if (v41)
              {
                v21 = v61;
                if (v42 && [dateCopy compare:v42] == -1)
                {
                  v49 = MBGetDefaultLog(-1);
                  v18 = v62;
                  v20 = v64;
                  if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
                  {
                    [v42 timeIntervalSince1970];
                    *buf = 138412546;
                    v85 = v24;
                    v86 = 2048;
                    v87 = v51;
                    _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_INFO, "Ignoring %@ since it was created at %.3f", buf, 0x16u);
                    [v42 timeIntervalSince1970];
                    _MBLog(@"I ", "Ignoring %@ since it was created at %.3f", v24, v52);
                  }
                }

                else
                {
                  v70 = v43;
                  v45 = [v60 removeItemAtURL:v24 error:&v70];
                  v46 = v70;

                  v48 = MBGetDefaultLog(v47);
                  v49 = v48;
                  if (v45)
                  {
                    v18 = v62;
                    v20 = v64;
                    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      v85 = v24;
                      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Removed drive backup snapshot directory: %@", buf, 0xCu);
                      _MBLog(@"Df", "Removed drive backup snapshot directory: %@", v24, v55);
                    }
                  }

                  else
                  {
                    v18 = v62;
                    v20 = v64;
                    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412546;
                      v85 = v24;
                      v86 = 2112;
                      v87 = v46;
                      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "Failed to remove drive backup snapshot directory %@: %@", buf, 0x16u);
                      _MBLog(@"E ", "Failed to remove drive backup snapshot directory %@: %@", v24, v46);
                    }
                  }

                  v43 = v46;
                }
              }

              else
              {
                v49 = MBGetDefaultLog(v44);
                v21 = v61;
                if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v85 = v24;
                  v86 = 2112;
                  v87 = v43;
                  _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "Failed to get NSURLCreationDateKey for %@: %@", buf, 0x16u);
                  _MBLog(@"E ", "Failed to get NSURLCreationDateKey for %@: %@", v24, v43);
                }

                v18 = v62;
                v20 = v64;
              }

              v27 = v68;

              v50 = v43;
              v11 = NSURLIsDirectoryKey;
              v22 = &MGCopyAnswer_ptr;
              v23 = v65;
LABEL_40:

              v29 = v66;
            }

            else
            {
              v50 = v67;
              v27 = v68;
            }

            goto LABEL_42;
          }

          v66 = v29;
          v42 = MBGetDefaultLog(v30);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v85 = v24;
            v86 = 2112;
            v87 = v67;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "Failed to get NSURLIsDirectoryKey for %@: %@", buf, 0x16u);
            v54 = v24;
            v50 = v67;
            _MBLog(@"E ", "Failed to get NSURLIsDirectoryKey for %@: %@", v54, v67);
          }

          else
          {
            v50 = v67;
          }

          v27 = v68;
          goto LABEL_40;
        }

LABEL_42:

        objc_autoreleasePoolPop(context);
        v23 = v23 + 1;
      }

      while (v23 != v20);
      v53 = [v18 countByEnumeratingWithState:&v79 objects:v88 count:16];
      v20 = v53;
    }

    while (v53);
  }
}

+ (id)listSnapshotsForVolume:(id)volume error:(id *)error
{
  volumeCopy = volume;
  v5 = MBGetDefaultLog(volumeCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v53 = volumeCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Listing all snapshots at %{public}@", buf, 0xCu);
    _MBLog(@"Db", "Listing all snapshots at %{public}@", volumeCopy);
  }

  v47 = volumeCopy;
  v46 = open([volumeCopy fileSystemRepresentation], 0);
  if (v46 != -1)
  {
    v6 = objc_opt_new();
    while (1)
    {
      *&v50.bitmapcount = xmmword_100018DB0;
      *&v50.fileattr = 0;
      v7 = fs_snapshot_list(v46, &v50, buf, 0x400uLL, 0);
      if ((v7 & 0x80000000) != 0)
      {
        v39 = __error();
        v40 = *v39;
        v41 = MBGetDefaultLog(v39);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          *v51 = 138543618;
          *&v51[4] = v47;
          *&v51[12] = 1024;
          *&v51[14] = v40;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "fs_snapshot_list failed at %{public}@: %{errno}d", v51, 0x12u);
          _MBLog(@"E ", "fs_snapshot_list failed at %{public}@: %{errno}d", v47, v40);
        }

        v31 = [MBError errorWithErrno:v40 path:v47 format:@"fs_snapshot_list failed"];
        v32 = close(v46);
        errorCopy3 = error;
        if (!v31)
        {
          goto LABEL_45;
        }

LABEL_40:
        v42 = MBGetDefaultLog(v32);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v53 = v47;
          v54 = 2114;
          v55 = v31;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "Failed to list file system snapshots at %{public}@: %{public}@", buf, 0x16u);
          errorCopy3 = error;
          _MBLog(@"E ", "Failed to list file system snapshots at %{public}@: %{public}@", v47, v31);
        }

        if (errorCopy3)
        {
          v43 = v31;
          v38 = 0;
          *errorCopy3 = v31;
        }

        else
        {
          v38 = 0;
        }

LABEL_48:

LABEL_49:
        v37 = v47;
        goto LABEL_50;
      }

      if (!v7)
      {
        close(v46);
LABEL_45:
        v38 = v6;
        v31 = 0;
        goto LABEL_48;
      }

      v49 = v7;
      v48 = 0;
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = &buf[v8];
        v11 = v8 + 24;
        v13 = *&buf[v8];
        v12 = *&buf[v8 + 4];
        if ((v12 & 0x20000000) != 0)
        {
          v14 = *&buf[v11];
          if (v14)
          {
            v15 = MBGetDefaultLog(v7);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              *v51 = 67109120;
              *&v51[4] = v14;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to read attributes for directory entry: %{errno}d\n", v51, 8u);
              _MBLog(@"E ", "Failed to read attributes for directory entry: %{errno}d\n", v14);
            }

            v16 = [MBError errorWithErrno:v14 path:v47 format:@"Failed to read snapshot attributes"];

            v17 = 0;
            uUIDString = 0;
            v19 = 0;
            v20 = 0;
            v48 = v16;
            goto LABEL_29;
          }

          v11 = v8 + 28;
        }

        if ((v12 & 1) != 0 && (v21 = &buf[v11], v11 += 8, (v22 = *(v21 + 1)) != 0))
        {
          v23 = &v21[*v21];
          v24 = (v22 - 1);
          if (v23[v24])
          {
            sub_1000143A4();
          }

          v19 = [[NSString alloc] initWithBytes:v23 length:v24 encoding:4];
          v12 = *(v10 + 1);
          if ((v12 & 0x200) != 0)
          {
LABEL_18:
            v25 = &buf[v11];
            v11 += 16;
            v17 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:*v25 - kCFAbsoluteTimeIntervalSince1970 + v25[1] * 0.000000001];
            if ((*(v10 + 1) & 0x800000) != 0)
            {
              goto LABEL_19;
            }

            goto LABEL_23;
          }
        }

        else
        {
          v19 = 0;
          if ((v12 & 0x200) != 0)
          {
            goto LABEL_18;
          }
        }

        v17 = 0;
        if ((v12 & 0x800000) != 0)
        {
LABEL_19:
          *v51 = *&buf[v11];
          v11 += 16;
          v26 = [[NSUUID alloc] initWithUUIDBytes:v51];
          uUIDString = [v26 UUIDString];

          if (v19)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }

LABEL_23:
        uUIDString = 0;
        if (v19)
        {
LABEL_24:
          v27 = [[MBFileSystemSnapshot alloc] initWithName:v19 uuid:uUIDString creationDate:v17];
          v28 = v6;
          v29 = MBGetDefaultLog([v6 addObject:v27]);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            *v51 = 138543362;
            *&v51[4] = v27;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Found file system snapshot: %{public}@", v51, 0xCu);
            _MBLog(@"I ", "Found file system snapshot: %{public}@", v27);
          }

          v6 = v28;
        }

LABEL_27:
        if (v11 >= 1025)
        {
          sub_1000143D0();
        }

        v20 = 1;
LABEL_29:

        if (!v20)
        {
          break;
        }

        v8 += v13;
      }

      while (v9++ < v49);
      v31 = v48;
      if (v48)
      {
        v32 = close(v46);
        errorCopy3 = error;
        goto LABEL_40;
      }
    }
  }

  v34 = __error();
  v35 = *v34;
  v36 = MBGetDefaultLog(v34);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v53 = v47;
    v54 = 1024;
    LODWORD(v55) = v35;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Failed to open %{public}@: %{errno}d", buf, 0x12u);
    _MBLog(@"E ", "Failed to open %{public}@: %{errno}d", v47, v35);
  }

  if (!error)
  {
    v38 = 0;
    goto LABEL_49;
  }

  v37 = v47;
  [MBError errorWithErrno:v35 path:v47 format:@"Unable to open snapshot path"];
  *error = v38 = 0;
LABEL_50:

  return v38;
}

+ (id)volumeMountPointForFile:(id)file error:(id *)error
{
  fileCopy = file;
  memset(&v9, 0, 512);
  if (statfs([fileCopy fileSystemRepresentation], &v9))
  {
    v6 = __error();
    if (error)
    {
      [MBError errorWithErrno:*v6 path:fileCopy format:@"statfs failed"];
      *error = v7 = 0;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = [NSString mb_stringWithFileSystemRepresentation:v9.f_mntonname];
  }

  return v7;
}

+ (id)fetchAllAPFSVolumeMountPoints
{
  v2 = getfsstat(&v8, 43360, 1);
  v3 = [[NSMutableArray alloc] initWithCapacity:v2 & ~(v2 >> 31)];
  if (v2 >= 1)
  {
    v4 = v2;
    f_mntonname = v8.f_mntonname;
    do
    {
      if (!strcmp("apfs", f_mntonname - 16) && (*(f_mntonname - 22) & 0x10) == 0)
      {
        v6 = [NSString mb_stringWithFileSystemRepresentation:f_mntonname];
        [v3 addObject:v6];
      }

      f_mntonname += 2168;
      --v4;
    }

    while (v4);
  }

  return v3;
}

+ (BOOL)startFilesystemKeyRollingWithPath:(id)path error:(id *)error
{
  pathCopy = path;
  if (!pathCopy)
  {
    sub_1000143FC();
  }

  v6 = pathCopy;
  v14 = xmmword_100018DE0;
  v7 = fsctl([pathCopy fileSystemRepresentation], 0xC0104A3DuLL, &v14, 0);
  v8 = v7;
  if (v7 == -1)
  {
    v10 = __error();
    v11 = *v10;
    v12 = MBGetDefaultLog(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v16) = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "fsctl(APFS_KEY_ROLLING_START) failed: %{errno}d", buf, 8u);
      _MBLog(@"E ", "fsctl(APFS_KEY_ROLLING_START) failed: %{errno}d", v11);
    }

    if (error)
    {
      *error = [MBError errorWithErrno:v11 format:@"Failed to start APFS key rolling"];
    }
  }

  else
  {
    v9 = MBGetDefaultLog(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Started APFS key rolling for %{public}@", buf, 0xCu);
      _MBLog(@"Df", "Started APFS key rolling for %{public}@", v6);
    }
  }

  return v8 != -1;
}

+ (BOOL)stopFilesystemKeyRollingWithPath:(id)path error:(id *)error
{
  pathCopy = path;
  if (!pathCopy)
  {
    sub_100014428();
  }

  v6 = pathCopy;
  v14 = xmmword_100018DF0;
  v7 = fsctl([pathCopy fileSystemRepresentation], 0xC0104A3DuLL, &v14, 0);
  v8 = v7;
  if (v7 == -1)
  {
    v10 = __error();
    v11 = *v10;
    v12 = MBGetDefaultLog(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v16) = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "fsctl(APFS_KEY_ROLLING_STOP) failed: %{errno}d", buf, 8u);
      _MBLog(@"E ", "fsctl(APFS_KEY_ROLLING_STOP) failed: %{errno}d", v11);
    }

    if (error)
    {
      *error = [MBError errorWithErrno:v11 format:@"Failed to stop APFS key rolling"];
    }
  }

  else
  {
    v9 = MBGetDefaultLog(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Stopped APFS key rolling for %{public}@", buf, 0xCu);
      _MBLog(@"Df", "Stopped APFS key rolling for %{public}@", v6);
    }
  }

  return v8 != -1;
}

+ (void)removeDeviceTransferDirectoryWithEarliestCreationDate:(id)date
{
  dateCopy = date;
  v4 = +[NSFileManager defaultManager];
  if ([v4 fileExistsAtPath:@"/var/mobile/Library/Caches/Backup/DT"])
  {
    v26 = 0;
    v5 = [v4 attributesOfItemAtPath:@"/var/mobile/Library/Caches/Backup/DT" error:&v26];
    v6 = v26;
    v7 = *&v6;
    if (v5)
    {
      v8 = [v5 objectForKeyedSubscript:NSFileCreationDate];
      v9 = v8;
      if (v8)
      {
        if (dateCopy && (v8 = [dateCopy compare:v8], v8 == -1))
        {
          v21 = MBGetDefaultLog(-1);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            [v9 timeIntervalSince1970];
            *buf = 138412546;
            v28 = @"/var/mobile/Library/Caches/Backup/DT";
            v29 = 2048;
            v30 = v23;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Ignoring %@ since it was created at %.3f", buf, 0x16u);
            [v9 timeIntervalSince1970];
            _MBLog(@"I ", "Ignoring %@ since it was created at %.3f", @"/var/mobile/Library/Caches/Backup/DT", v24);
          }
        }

        else
        {
          v10 = MBGetDefaultLog(v8);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            [v9 timeIntervalSince1970];
            *buf = 138412546;
            v28 = @"/var/mobile/Library/Caches/Backup/DT";
            v29 = 2048;
            v30 = v11;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Removing %@ created at %.3f", buf, 0x16u);
            [v9 timeIntervalSince1970];
            _MBLog(@"Df", "Removing %@ created at %.3f", @"/var/mobile/Library/Caches/Backup/DT", v12);
          }

          +[NSDate timeIntervalSinceReferenceDate];
          v14 = v13;
          v25 = v7;
          v15 = [v4 mb_moveToTmpDirThenRemoveItemAtPath:@"/var/mobile/Library/Caches/Backup/DT" error:&v25];
          v16 = COERCE_DOUBLE(*&v25);

          if (v15)
          {
            v18 = +[NSDate timeIntervalSinceReferenceDate];
            v20 = v19;
            v21 = MBGetDefaultLog(v18);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              v22 = v20 - v14;
              *buf = 138412546;
              v28 = @"/var/mobile/Library/Caches/Backup/DT";
              v29 = 2048;
              v30 = v22;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Removed %@ in %.3fs", buf, 0x16u);
              _MBLog(@"Df", "Removed %@ in %.3fs", @"/var/mobile/Library/Caches/Backup/DT", *&v22);
            }
          }

          else
          {
            v21 = MBGetDefaultLog(v17);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v28 = @"/var/mobile/Library/Caches/Backup/DT";
              v29 = 2112;
              v30 = v16;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to remove %@: %@", buf, 0x16u);
              _MBLog(@"E ", "Failed to remove %@: %@", @"/var/mobile/Library/Caches/Backup/DT", *&v16);
            }
          }

          v7 = v16;
        }
      }
    }

    else
    {
      v9 = MBGetDefaultLog(v6);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v28 = @"/var/mobile/Library/Caches/Backup/DT";
        v29 = 2112;
        v30 = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to fetch attributes at %@: %@", buf, 0x16u);
        _MBLog(@"E ", "Failed to fetch attributes at %@: %@", @"/var/mobile/Library/Caches/Backup/DT", *&v7);
      }
    }
  }
}

+ (id)volumeUUIDWithVolumeMountPoint:(id)point error:(id *)error
{
  pointCopy = point;
  if (!pointCopy)
  {
    sub_1000144AC();
  }

  if (!error)
  {
    sub_100014480();
  }

  v6 = pointCopy;
  v7 = open([pointCopy fileSystemRepresentation], 0);
  if (v7 < 0)
  {
    v13 = __error();
    v10 = *v13;
    v12 = MBGetDefaultLog(v13);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v22 = 138543618;
      *&v22[4] = v6;
      *&v22[12] = 1024;
      *&v22[14] = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "open failed at %{public}@: %{errno}d", v22, 0x12u);
      _MBLog(@"E ", "open failed at %{public}@: %{errno}d", v6, v10);
    }

    goto LABEL_9;
  }

  v8 = v7;
  *&v22[16] = 0;
  *v22 = xmmword_100018DC8;
  v20[0] = 0;
  v20[1] = 0;
  v21 = 0;
  v9 = fgetattrlist(v7, v22, v20, 0x14uLL, 0);
  v10 = *__error();
  v11 = close(v8);
  if (v9)
  {
    v12 = MBGetDefaultLog(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v17 = v6;
      v18 = 1024;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "fgetattrlist failed at %{public}@: %{errno}d", buf, 0x12u);
      _MBLog(@"E ", "fgetattrlist failed at %{public}@: %{errno}d", v6, v10);
    }

LABEL_9:

    [MBError errorWithErrno:v10 path:v6 format:@"open error"];
    *error = v14 = 0;
    goto LABEL_11;
  }

  v14 = [[NSUUID alloc] initWithUUIDBytes:v20 + 4];
  if (!v14)
  {
    sub_100014454();
  }

LABEL_11:

  return v14;
}

@end