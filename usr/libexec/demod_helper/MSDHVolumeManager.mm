@interface MSDHVolumeManager
+ (id)sharedInstance;
- (BOOL)checkFreeSpaceLeftInContainer:(id)container neededSpace:(unint64_t)space;
- (BOOL)deleteAPFSVolume:(id)volume;
- (BOOL)deleteDemoVolume;
- (BOOL)manageSnapshot:(id)snapshot forVolumeAt:(id)at;
- (BOOL)mountAPFSVolume:(id)volume atMountPoint:(id)point withAttributes:(id)attributes;
- (BOOL)mountSnapshotAt:(id)at forVolumeAt:(id)volumeAt;
- (BOOL)setupDemoVolume;
- (BOOL)unmountAPFSVolume:(id)volume;
- (BOOL)unmountSnapshotAt:(id)at;
- (MSDHVolumeManager)init;
- (id)createAPFSVolume:(id)volume withSizeInMB:(unint64_t)b inContainer:(id)container;
- (id)findAPFSVolumeMountPoint:(id)point;
- (id)getAPFSBootContainerDeviceNode;
- (id)lookupAPFSVolumeDevByName:(id)name;
- (void)waitForSnapshotDeletionOnVolume:(int)volume;
@end

@implementation MSDHVolumeManager

+ (id)sharedInstance
{
  if (qword_10005BEC8 != -1)
  {
    sub_10002D5C8();
  }

  v3 = qword_10005BEC0;

  return v3;
}

- (MSDHVolumeManager)init
{
  v6.receiver = self;
  v6.super_class = MSDHVolumeManager;
  v2 = [(MSDHVolumeManager *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(MSDHVolumeManager *)v2 lookupAPFSVolumeDevByName:@"com.apple.mobilestoredemo.storage"];
    [(MSDHVolumeManager *)v3 setDemoVolumeDev:v4];
  }

  return v3;
}

- (BOOL)manageSnapshot:(id)snapshot forVolumeAt:(id)at
{
  snapshotCopy = snapshot;
  v7 = open([at UTF8String], 0);
  v8 = v7;
  if (v7 <= 0)
  {
    sub_10002D774(v7);
    v19 = 0;
    goto LABEL_24;
  }

  if ([snapshotCopy isEqualToString:@"RevertSnapshot"])
  {
    v9 = fs_snapshot_revert(v8, "com.apple.snapshot.mobilestoredemo", 0);
    v10 = v9;
    v11 = sub_100021268(v9);
    v12 = v11;
    if (!v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v21) = 0;
        v13 = "Snapshot reverted.";
LABEL_21:
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v13, &v21, 2u);
        goto LABEL_22;
      }

      goto LABEL_22;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10002D6EC();
    }
  }

  else
  {
    if ([snapshotCopy isEqualToString:@"DeleteSnapshot"])
    {
      if (fs_snapshot_delete(v8, "com.apple.snapshot.mobilestoredemo", 0))
      {
        v14 = __error();
        if (*v14 != 2)
        {
          v12 = sub_100021268(v14);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            sub_10002D664();
          }

          goto LABEL_17;
        }
      }

      else
      {
        v14 = [(MSDHVolumeManager *)self waitForSnapshotDeletionOnVolume:v8];
      }

      v12 = sub_100021268(v14);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v21) = 0;
        v13 = "Snapshot deleted.";
        goto LABEL_21;
      }

      goto LABEL_22;
    }

    v15 = [snapshotCopy isEqualToString:@"CreateSnapshot"];
    if (v15)
    {
      v16 = fs_snapshot_create(v8, "com.apple.snapshot.mobilestoredemo", 0);
      v17 = v16;
      v18 = sub_100021268(v16);
      v12 = v18;
      if (!v17)
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v21) = 0;
          v13 = "Snapshot created.";
          goto LABEL_21;
        }

LABEL_22:
        v19 = 1;
        goto LABEL_23;
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10002D5DC();
      }
    }

    else
    {
      v12 = sub_100021268(v15);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138543362;
        v22 = snapshotCopy;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Unknown snapshot operation: %{public}@", &v21, 0xCu);
      }
    }
  }

LABEL_17:
  v19 = 0;
LABEL_23:

  close(v8);
LABEL_24:

  return v19;
}

- (BOOL)mountSnapshotAt:(id)at forVolumeAt:(id)volumeAt
{
  atCopy = at;
  v6 = open([volumeAt UTF8String], 0);
  v7 = v6;
  if (v6 <= 0)
  {
    sub_10002D774(v6);
    v10 = 0;
  }

  else
  {
    v8 = fs_snapshot_mount(v6, [atCopy UTF8String], "com.apple.snapshot.mobilestoredemo", 0);
    v9 = v8;
    v10 = v8 == 0;
    v11 = sub_100021268(v8);
    v12 = v11;
    if (v9)
    {
      sub_10002D810(v11);
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Snapshot mounted.", v14, 2u);
    }

    close(v7);
  }

  return v10;
}

- (BOOL)unmountSnapshotAt:(id)at
{
  v3 = unmount([at UTF8String], 0x80000);
  v4 = v3;
  v5 = sub_100021268(v3);
  v6 = v5;
  if (v4)
  {
    sub_10002D8A8(v5);
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Snapshot unmounted.", v8, 2u);
  }

  return v4 == 0;
}

- (id)getAPFSBootContainerDeviceNode
{
  if (qword_10005BED8 != -1)
  {
    sub_10002D940();
  }

  v3 = qword_10005BED0;

  return v3;
}

- (BOOL)checkFreeSpaceLeftInContainer:(id)container neededSpace:(unint64_t)space
{
  v10[0] = 0;
  v10[1] = 0;
  [container UTF8String];
  SpaceInfo = APFSContainerGetSpaceInfo();
  if (SpaceInfo)
  {
    v7 = SpaceInfo;
    v8 = sub_100021268(SpaceInfo);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10002DBE4(v7, v8, v9);
    }
  }

  else
  {
    if (v10[0] > space)
    {
      return 1;
    }

    v8 = sub_100021268(SpaceInfo);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10002DC54(v10, space, v8);
    }
  }

  return 0;
}

- (id)lookupAPFSVolumeDevByName:(id)name
{
  nameCopy = name;
  v4 = nameCopy;
  existing = 0;
  memset(name, 0, 128);
  properties = 0;
  if (nameCopy)
  {
    v5 = IOServiceNameMatching([nameCopy UTF8String]);
    MatchingServices = IOServiceGetMatchingServices(kIOMasterPortDefault, v5, &existing);
    if (!MatchingServices)
    {
      v7 = IOIteratorNext(existing);
      if (v7)
      {
        v8 = v7;
        do
        {
          if (IOObjectConformsTo(v8, "AppleAPFSVolume"))
          {
            memset(name, 0, 128);
            if (IORegistryEntryGetName(v8, name) || IORegistryEntryCreateCFProperties(v8, &properties, kCFAllocatorDefault, 0))
            {
              goto LABEL_31;
            }

            if (!strncmp([v4 UTF8String], name, 0x80uLL))
            {
              v10 = CFDictionaryGetValue(properties, @"BSD Name");
              if (!v10)
              {
                goto LABEL_31;
              }

              v11 = v10;
              v9 = [NSString stringWithFormat:@"/dev/%@", v10];
            }

            else
            {
              v9 = 0;
            }

            CFRelease(properties);
          }

          else
          {
            v9 = 0;
          }

          IOObjectRelease(v8);
          v8 = IOIteratorNext(existing);
          if (v8)
          {
            v12 = v9 == 0;
          }

          else
          {
            v12 = 0;
          }
        }

        while (v12);
        v13 = IOObjectRelease(existing);
        if (v9)
        {
          v14 = sub_100021268(v13);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v22 = v4;
            v23 = 2114;
            v24 = v9;
            v15 = "APFS volume '%{public}@' found as '%{public}@'.";
            v16 = v14;
            v17 = 22;
LABEL_24:
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
            goto LABEL_25;
          }

          goto LABEL_25;
        }
      }

      else
      {
        v13 = IOObjectRelease(existing);
        v9 = 0;
      }

      v14 = sub_100021268(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v22 = v4;
        v15 = "APFS volume '%{public}@' NOT found.";
        v16 = v14;
        v17 = 12;
        goto LABEL_24;
      }

LABEL_25:

      goto LABEL_26;
    }

    sub_10002DCE8(MatchingServices);
  }

  v8 = 0;
LABEL_31:
  if (existing)
  {
    IOObjectRelease(existing);
  }

  if (v8)
  {
    IOObjectRelease(v8);
  }

  if (properties)
  {
    CFRelease(properties);
  }

  v9 = 0;
LABEL_26:

  return v9;
}

- (void)waitForSnapshotDeletionOnVolume:(int)volume
{
  v10[1] = 0;
  v10[2] = 0;
  v10[0] = 3;
  if (ffsctl(volume, 0x80184A24uLL, v10, 0) < 0)
  {
    v3 = __error();
    v4 = *v3;
    v5 = sub_100021268(v3);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4 == 35)
    {
      if (v6)
      {
        *buf = 0;
        v7 = "Timed out waiting for snapshot deletion to finish.";
        v8 = v5;
        v9 = 2;
LABEL_7:
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
      }
    }

    else if (v6)
    {
      *buf = 67240192;
      v12 = v4;
      v7 = "Wait for snapshot deletion failed: %{public, errno}d";
      v8 = v5;
      v9 = 8;
      goto LABEL_7;
    }
  }
}

- (BOOL)setupDemoVolume
{
  demoVolumeDev = [(MSDHVolumeManager *)self demoVolumeDev];

  if ((demoVolumeDev || ([(MSDHVolumeManager *)self getAPFSBootContainerDeviceNode], v4 = objc_claimAutoreleasedReturnValue(), [(MSDHVolumeManager *)self createAPFSVolume:@"com.apple.mobilestoredemo.storage" withSizeInMB:64 inContainer:v4], v5 = objc_claimAutoreleasedReturnValue(), [(MSDHVolumeManager *)self setDemoVolumeDev:v5], v5, v4, [(MSDHVolumeManager *)self demoVolumeDev], v6 = objc_claimAutoreleasedReturnValue(), v6, v6)) && (v19[0] = NSFileOwnerAccountName, v19[1] = NSFileGroupOwnerAccountName, v20[0] = @"mobile", v20[1] = @"mobile", v19[2] = NSFilePosixPermissions, [NSNumber numberWithShort:448], v7 = objc_claimAutoreleasedReturnValue(), v20[2] = v7, [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:3], v6 = objc_claimAutoreleasedReturnValue(), v7, [(MSDHVolumeManager *)self demoVolumeDev], v8 = objc_claimAutoreleasedReturnValue(), v9 = [(MSDHVolumeManager *)self mountAPFSVolume:v8 atMountPoint:@"/private/var/mnt/com.apple.mobilestoredemo.storage" withAttributes:v6], v8, v9))
  {
    v11 = sub_100021268(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      demoVolumeDev2 = [(MSDHVolumeManager *)self demoVolumeDev];
      sub_100013F48();
      _os_log_impl(v12, v13, OS_LOG_TYPE_DEFAULT, v14, v15, 0xCu);
    }

    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)deleteDemoVolume
{
  demoVolumeDev = [(MSDHVolumeManager *)self demoVolumeDev];

  if (demoVolumeDev)
  {
    demoVolumeDev2 = [(MSDHVolumeManager *)self demoVolumeDev];
    v6 = [(MSDHVolumeManager *)self unmountAPFSVolume:demoVolumeDev2];

    if (!v6)
    {
      return 0;
    }

    demoVolumeDev3 = [(MSDHVolumeManager *)self demoVolumeDev];
    v8 = [(MSDHVolumeManager *)self deleteAPFSVolume:demoVolumeDev3];

    if (!v8)
    {
      return 0;
    }

    v9 = sub_100021268([(MSDHVolumeManager *)self setDemoVolumeDev:0]);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 0;
      v10 = "Demo volume is unmounted and deleted.";
      v11 = &v13;
LABEL_8:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v10, v11, 2u);
    }
  }

  else
  {
    v9 = sub_100021268(v4);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v10 = "Demo volume not found. Skip delete.";
      v11 = buf;
      goto LABEL_8;
    }
  }

  return 1;
}

- (id)createAPFSVolume:(id)volume withSizeInMB:(unint64_t)b inContainer:(id)container
{
  volumeCopy = volume;
  containerCopy = container;
  v10 = +[NSMutableDictionary dictionary];
  v11 = 0;
  v12 = 0;
  if (volumeCopy && containerCopy)
  {
    if ([(MSDHVolumeManager *)self checkFreeSpaceLeftInContainer:containerCopy neededSpace:b << 20])
    {
      if (b)
      {
        v13 = [NSNumber numberWithUnsignedLongLong:b << 20];
        [v10 setObject:v13 forKey:kAPFSVolumeReserveSizeKey];
      }

      [v10 setObject:volumeCopy forKey:kAPFSVolumeNameKey];
      [containerCopy UTF8String];
      v14 = APFSVolumeCreate();
      if (v14)
      {
        v18 = v14;
        v19 = sub_100021268(v14);
        if (sub_100013F30(v19))
        {
          *buf = 67109120;
          LODWORD(v22) = v18;
          sub_100013F18(&_mh_execute_header, &self->super, v20, "Failed to create APFS volume. error - %d", buf);
        }

        v11 = 0;
        v12 = 0;
      }

      else
      {
        v15 = [v10 objectForKey:kAPFSVolumeFSIndexKey];
        v12 = v15;
        if (!v15 || (v15 = [v15 intValue], (v15 & 0x80000000) != 0))
        {
          v17 = sub_100021268(v15);
          if (sub_100013F30(v17))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, &self->super, OS_LOG_TYPE_ERROR, "Invalid FSIndex for APFS volume.", buf, 2u);
          }

          v11 = 0;
        }

        else
        {
          v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%ss%d", [containerCopy UTF8String], objc_msgSend(v12, "intValue") + 1);
          self = sub_100021268(v11);
          if (os_log_type_enabled(&self->super, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v22 = v11;
            v23 = 2048;
            bCopy = b;
            _os_log_impl(&_mh_execute_header, &self->super, OS_LOG_TYPE_DEFAULT, "APFS volume '%{public}@' with size %llu MB is created.", buf, 0x16u);
          }
        }
      }
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }
  }

  return v11;
}

- (BOOL)deleteAPFSVolume:(id)volume
{
  volumeCopy = volume;
  v4 = volumeCopy;
  if (volumeCopy)
  {
    [volumeCopy UTF8String];
    v5 = APFSVolumeDelete();
    v6 = v5;
    v7 = v5 == 0;
    v8 = sub_100021268(v5);
    v9 = v8;
    if (v6)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100013F48();
        sub_100013F18(v15, v16, v17, v18, v19);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      sub_100013F48();
      _os_log_impl(v10, v11, OS_LOG_TYPE_DEFAULT, v12, v13, 0xCu);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)findAPFSVolumeMountPoint:(id)point
{
  pointCopy = point;
  v18 = 0;
  if (!pointCopy)
  {
LABEL_22:
    1024 = 0;
    goto LABEL_16;
  }

  v4 = getmntinfo_r_np(&v18, 2);
  if (v4 < 1 || (v5 = v18) == 0)
  {
    v15 = sub_100021268(v4);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = __error();
      v17 = strerror(*v16);
      v21.st_dev = 136446210;
      *&v21.st_mode = v17;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to get mounted filesystem info - %{public}s", &v21, 0xCu);
    }

    goto LABEL_22;
  }

  v6 = v4;
  v7 = 1112;
  while (1)
  {
    if (!strncmp("apfs", v5 + v7 - 1040, 0xFuLL))
    {
      uTF8String = [pointCopy UTF8String];
      v5 = v18;
      v9 = v18 + v7;
      if (!strncmp(uTF8String, v18 + v7, 0xFuLL))
      {
        break;
      }
    }

    v7 += 2168;
    if (!--v6)
    {
      1024 = 0;
      goto LABEL_15;
    }
  }

  bzero(&v21, 0x90uLL);
  v11 = stat(v9 - 1024, &v21);
  if (v11)
  {
    v12 = v11;
    v13 = sub_100021268(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v20 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Mount point corrupted. error - %d", buf, 8u);
    }

    1024 = 0;
  }

  else
  {
    1024 = [NSString stringWithUTF8String:v18 + v7 - 1024];
  }

  v5 = v18;
LABEL_15:
  free(v5);
LABEL_16:

  return 1024;
}

- (BOOL)mountAPFSVolume:(id)volume atMountPoint:(id)point withAttributes:(id)attributes
{
  volumeCopy = volume;
  pointCopy = point;
  attributesCopy = attributes;
  bzero(&v62, 0x144uLL);
  bzero(&v56, 0x90uLL);
  v11 = 0;
  v12 = 0;
  v13 = 0;
  if (!volumeCopy || !pointCopy)
  {
    goto LABEL_20;
  }

  v14 = [(MSDHVolumeManager *)self findAPFSVolumeMountPoint:volumeCopy];

  if (v14)
  {
    v27 = sub_100021268(v15);
    if (sub_100013F30(v27))
    {
      *buf = 0;
      sub_100013F08();
      _os_log_error_impl(v43, v44, v45, v46, v47, 2u);
    }

    v12 = 0;
    v13 = 0;
    goto LABEL_31;
  }

  v13 = +[NSFileManager defaultManager];
  v55 = 0;
  v11 = [v13 createDirectoryAtPath:pointCopy withIntermediateDirectories:1 attributes:0 error:&v55];
  v16 = v55;
  v12 = v16;
  if ((v11 & 1) == 0)
  {
    v28 = sub_100021268(v16);
    if (sub_100013F30(v28))
    {
      localizedDescription = [v12 localizedDescription];
      *buf = 138543618;
      v58 = pointCopy;
      v59 = 2114;
      v60 = localizedDescription;
      sub_100013F08();
      _os_log_error_impl(v30, v31, v32, v33, v34, 0x16u);
    }

    goto LABEL_31;
  }

  v17 = stat([pointCopy UTF8String], &v56);
  if (v17)
  {
    v35 = sub_100021268(v17);
    if (sub_100013F30(v35))
    {
      v36 = *__error();
      *buf = 67109120;
      LODWORD(v58) = v36;
      sub_100013F08();
      _os_log_error_impl(v37, v38, v39, v40, v41, 8u);
    }

    goto LABEL_31;
  }

  uTF8String = [volumeCopy UTF8String];
  v63 = 1;
  v64 = *&v56.st_uid;
  v62 = 0x100000;
  v18 = mount("apfs", [pointCopy UTF8String], 0x100000, &uTF8String);
  if (!v18)
  {
LABEL_16:
    if (!attributesCopy)
    {
      LOBYTE(v11) = 1;
      goto LABEL_20;
    }

    v54 = v12;
    v11 = [v13 setAttributes:attributesCopy ofItemAtPath:pointCopy error:&v54];
    v24 = v54;

    if (v11)
    {
      LOBYTE(v11) = 1;
      v12 = v24;
      goto LABEL_20;
    }

    v42 = sub_100021268(v25);
    if (sub_100013F30(v42))
    {
      localizedDescription2 = [v24 localizedDescription];
      *buf = 138543362;
      v58 = localizedDescription2;
      sub_100013F08();
      _os_log_error_impl(v49, v50, v51, v52, v53, 0xCu);
    }

    v12 = v24;
LABEL_31:

    LOBYTE(v11) = 0;
    goto LABEL_20;
  }

  v19 = 3;
  while (1)
  {
    v20 = sub_100021268(v18);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v23 = *__error();
      *buf = 138543618;
      v58 = pointCopy;
      v59 = 1024;
      LODWORD(v60) = v23;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to mount APFS volume on %{public}@ - %{errno}d", buf, 0x12u);
    }

    if (*__error() != 2 || v19 < 2)
    {
      break;
    }

    --v19;
    usleep(0x7A120u);
    uTF8String2 = [pointCopy UTF8String];
    v18 = mount("apfs", uTF8String2, v62, &uTF8String);
    if (!v18)
    {
      goto LABEL_16;
    }
  }

  LOBYTE(v11) = 0;
LABEL_20:

  return v11;
}

- (BOOL)unmountAPFSVolume:(id)volume
{
  volumeCopy = volume;
  if (!volumeCopy)
  {
    v12 = 0;
    v7 = 0;
    v9 = 0;
    v6 = 0;
    goto LABEL_11;
  }

  v5 = [(MSDHVolumeManager *)self findAPFSVolumeMountPoint:volumeCopy];
  v6 = v5 == 0;
  if (!v5)
  {
    v13 = sub_100021268(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Volume is not mounted.", buf, 2u);
    }

    v12 = 0;
    v7 = 0;
    goto LABEL_9;
  }

  v7 = v5;
  v8 = unmount([v5 UTF8String], 0x80000);
  if (v8)
  {
    v13 = sub_100021268(v8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = __error();
      v17 = strerror(*v16);
      *buf = 136446210;
      v20 = v17;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to unmount APFS volume - %{public}s", buf, 0xCu);
    }

    v12 = 0;
LABEL_9:
    v9 = 0;
LABEL_10:

    goto LABEL_11;
  }

  v9 = +[NSFileManager defaultManager];
  v18 = 0;
  v10 = [v9 removeItemAtPath:v7 error:&v18];
  v11 = v18;
  v12 = v11;
  if ((v10 & 1) == 0)
  {
    v13 = sub_100021268(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v12 localizedDescription];
      *buf = 138543618;
      v20 = v7;
      v21 = 2114;
      v22 = localizedDescription;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to remove mount point at '%{public}@' -  %{public}@", buf, 0x16u);
    }

    goto LABEL_10;
  }

  v6 = 1;
LABEL_11:

  return v6;
}

@end