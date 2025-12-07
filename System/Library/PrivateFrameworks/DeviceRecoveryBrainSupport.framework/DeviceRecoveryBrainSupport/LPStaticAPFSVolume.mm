@interface LPStaticAPFSVolume
+ (const)roleMetadataForRole:(int)role;
+ (id)defaultMountPointGivenRole:(int)role;
+ (id)defaultVolumeNameGivenRole:(int)role;
+ (id)supportedContentTypes;
+ (void)_loadMountPointTableForMode:(int)mode;
+ (void)enumerateRoleMetadataUsingBlock:(id)block;
+ (void)initialize;
- (BOOL)_pathIsTemporaryMount:(id)mount;
- (BOOL)createSnapshot:(id)snapshot error:(id *)error;
- (BOOL)deleteSnapshots:(id)snapshots waitForDeletionFor:(double)for error:(id *)error;
- (BOOL)deleteVolumeWithError:(id *)error;
- (BOOL)eraseVolumeWithError:(id *)error;
- (BOOL)isEncrypted;
- (BOOL)isFilevaultEncrypted;
- (BOOL)isMounted;
- (BOOL)mountAtPath:(id)path options:(id)options error:(id *)error;
- (BOOL)mountWithError:(id *)error;
- (BOOL)renameSnapshot:(id)snapshot to:(id)to error:(id *)error;
- (BOOL)revertToSnapshot:(id)snapshot options:(id)options error:(id *)error;
- (BOOL)rootToSnapshot:(id)snapshot error:(id *)error;
- (BOOL)setRole:(int)role withError:(id *)error;
- (BOOL)unmountAllWithError:(id *)error;
- (BOOL)unmountWithOptions:(id)options error:(id *)error;
- (id)_createTemporaryMountPointWithError:(id *)error;
- (id)container;
- (id)mountAtTemporaryPathWithOptions:(id)options error:(id *)error;
- (id)pairedVolume;
- (id)pairedVolumeWithRole:(int)role;
- (id)snapshotInfoWithError:(id *)error;
- (id)snapshotMountPoints;
- (id)snapshotsWithError:(id *)error;
- (id)volumeGroupUUID;
- (int)role;
@end

@implementation LPStaticAPFSVolume

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    if (_is_running_in_ramdisk_onceToken != -1)
    {
      +[LPStaticAPFSVolume initialize];
    }

    v2 = (_is_running_in_ramdisk_is_ramdisk & 1) == 0;

    [LPStaticAPFSVolume _loadMountPointTableForMode:v2];
  }
}

+ (id)supportedContentTypes
{
  if (objc_opt_class() == self)
  {
    v6 = LPAPFSVolumeMediaTypeUUID[0];
    v3 = [NSArray arrayWithObjects:&v6 count:1];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = &OBJC_METACLASS___LPStaticAPFSVolume;
    v3 = objc_msgSendSuper2(&v5, "supportedContentTypes");
  }

  return v3;
}

+ (void)_loadMountPointTableForMode:(int)mode
{
  v3 = (&kLPDefaultMountPointTable + 16 * mode);
  v4 = *v3;
  v5 = *(v3 + 1);
  v6 = [NSMutableDictionary dictionaryWithCapacity:v4];
  if (v4 >= 1)
  {
    v7 = (v5 + 8);
    do
    {
      v8 = *(v7 - 2);
      v9 = *v7;
      v7 += 2;
      v10 = [NSString stringWithUTF8String:v9];
      v11 = [NSNumber numberWithInt:v8];
      [(NSMutableDictionary *)v6 setObject:v10 forKey:v11];

      --v4;
    }

    while (v4);
  }

  v12 = [NSDictionary dictionaryWithDictionary:v6];
  v13 = sMountPointLookupTable;
  sMountPointLookupTable = v12;
}

+ (void)enumerateRoleMetadataUsingBlock:(id)block
{
  v4 = &enumerateRoleMetadataUsingBlock__sRoleMetadata;
  v5 = 17;
  do
  {
    (*(block + 2))(block, v4);
    v4 += 24;
    --v5;
  }

  while (v5);
}

+ (const)roleMetadataForRole:(int)role
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3254779904;
  v5[2] = __42__LPStaticAPFSVolume_roleMetadataForRole___block_invoke;
  v5[3] = &__block_descriptor_44_e8_32r_e17_v16__0r____iS___8l;
  roleCopy = role;
  v5[4] = &v7;
  [self enumerateRoleMetadataUsingBlock:v5];
  v3 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v3;
}

uint64_t __42__LPStaticAPFSVolume_roleMetadataForRole___block_invoke(uint64_t result, _DWORD *a2)
{
  if (*a2 == *(result + 40))
  {
    *(*(*(result + 32) + 8) + 24) = a2;
  }

  return result;
}

+ (id)defaultMountPointGivenRole:(int)role
{
  v3 = sMountPointLookupTable;
  v4 = [NSNumber numberWithInt:*&role];
  v5 = [v3 objectForKey:v4];

  return v5;
}

+ (id)defaultVolumeNameGivenRole:(int)role
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3254779904;
  v5[2] = __49__LPStaticAPFSVolume_defaultVolumeNameGivenRole___block_invoke;
  v5[3] = &__block_descriptor_44_e8_32r_e17_v16__0r____iS___8l;
  roleCopy = role;
  v5[4] = &v7;
  [self enumerateRoleMetadataUsingBlock:v5];
  v3 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v3;
}

void __49__LPStaticAPFSVolume_defaultVolumeNameGivenRole___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == *a2)
  {
    v2 = *(a2 + 16);
    if (!v2)
    {
      v2 = *(a2 + 8);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), v2);
  }
}

- (BOOL)setRole:(int)role withError:(id *)error
{
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v12 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3254779904;
  v9[2] = __40__LPStaticAPFSVolume_setRole_withError___block_invoke;
  v9[3] = &__block_descriptor_44_e8_32r_e17_v16__0r____iS___8l;
  roleCopy = role;
  v9[4] = v11;
  [objc_opt_class() enumerateRoleMetadataUsingBlock:v9];
  bSDName = [(LPStaticMedia *)self BSDName];
  [bSDName fileSystemRepresentation];
  v7 = APFSVolumeRole();

  if (error && v7)
  {
    *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:v7 userInfo:0];
  }

  _Block_object_dispose(v11, 8);
  return v7 == 0;
}

uint64_t __40__LPStaticAPFSVolume_setRole_withError___block_invoke(uint64_t result, uint64_t a2)
{
  if (*(result + 40) == *a2)
  {
    *(*(*(result + 32) + 8) + 24) = *(a2 + 4);
  }

  return result;
}

- (int)role
{
  v27 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  bSDName = [(LPStaticMedia *)self BSDName];
  v4 = bSDName;
  [bSDName fileSystemRepresentation];
  v5 = APFSVolumeRole();

  if (v5)
  {
    v6 = _os_log_pack_size();
    v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v8 = _os_log_pack_fill(v7, v6, 0, &dword_0, "%s: failed to get role. Error: %d", v15, v16);
    *v8 = 136315394;
    *(v8 + 4) = "[LPStaticAPFSVolume role]";
    *(v8 + 12) = 1024;
    *(v8 + 14) = v5;
    _LPLogPack(1, v7);
  }

  else
  {
    v9 = objc_opt_class();
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3254779904;
    v21[2] = __26__LPStaticAPFSVolume_role__block_invoke;
    v21[3] = &__block_descriptor_42_e8_32r_e17_v16__0r____iS___8l;
    v22 = v27;
    v21[4] = &v23;
    [v9 enumerateRoleMetadataUsingBlock:v21];
  }

  v10 = *(v24 + 6);
  if (!v10)
  {
    name = [(LPStaticMedia *)self name];
    v12 = objc_opt_class();
    v15 = _NSConcreteStackBlock;
    v16 = 3254779904;
    v17 = __26__LPStaticAPFSVolume_role__block_invoke_122;
    v18 = &__block_descriptor_48_e8_32s40r_e17_v16__0r____iS___8l;
    v13 = name;
    v19 = v13;
    v20 = &v23;
    [v12 enumerateRoleMetadataUsingBlock:&v15];

    v10 = *(v24 + 6);
  }

  _Block_object_dispose(&v23, 8);
  return v10;
}

uint64_t __26__LPStaticAPFSVolume_role__block_invoke(uint64_t result, uint64_t a2)
{
  if (*(result + 40) == *(a2 + 4))
  {
    *(*(*(result + 32) + 8) + 24) = *a2;
  }

  return result;
}

void __26__LPStaticAPFSVolume_role__block_invoke_122(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (!v4)
  {
    v4 = *(a2 + 8);
  }

  v5 = v4;
  if (![*(a1 + 32) caseInsensitiveCompare:v5])
  {
    *(*(*(a1 + 40) + 8) + 24) = *a2;
  }
}

- (id)volumeGroupUUID
{
  v2 = [(LPStaticMedia *)self getStringPropertyWithName:@"VolGroupUUID"];
  uTF8String = [v2 UTF8String];
  memset(uu, 0, sizeof(uu));
  if (!uTF8String || uuid_parse(uTF8String, uu) || uuid_is_null(uu))
  {
    v4 = 0;
  }

  else
  {
    v4 = v2;
  }

  return v4;
}

- (id)container
{
  iterator = 0;
  if (IORegistryEntryCreateIterator([(LPStaticMedia *)self ioMedia], "IOService", 3u, &iterator))
  {
    v2 = 0;
  }

  else
  {
    v3 = IOIteratorNext(iterator);
    if (v3)
    {
      v4 = v3;
      v2 = 0;
      do
      {
        if (IOObjectConformsTo(v4, "AppleAPFSMedia"))
        {
          v5 = [(LPStaticMedia *)[LPStaticAPFSContainer alloc] initWithIOMediaObject:v4];
          v6 = v5;
          v7 = v5 != 0;
          if (v5)
          {
            v8 = v5;

            v2 = v8;
          }
        }

        else
        {
          v7 = 0;
        }

        IOObjectRelease(v4);
        v4 = IOIteratorNext(iterator);
        if (v4)
        {
          v9 = !v7;
        }

        else
        {
          v9 = 0;
        }
      }

      while (v9);
    }

    else
    {
      v2 = 0;
    }

    IOObjectRelease(iterator);
  }

  return v2;
}

- (BOOL)isEncrypted
{
  devNodePath = [(LPStaticMedia *)self devNodePath];
  [devNodePath fileSystemRepresentation];
  APFSVolumeGetVEKState();

  return 0;
}

- (BOOL)isFilevaultEncrypted
{
  devNodePath = [(LPStaticMedia *)self devNodePath];
  [devNodePath fileSystemRepresentation];
  APFSVolumeGetVEKState();

  return 0;
}

- (id)pairedVolumeWithRole:(int)role
{
  v3 = *&role;
  volumeGroupUUID = [(LPStaticAPFSVolume *)self volumeGroupUUID];
  if ([volumeGroupUUID length])
  {
    container = [(LPStaticAPFSVolume *)self container];
    v7 = [container volumeWithRole:v3 group:volumeGroupUUID];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)pairedVolume
{
  role = [(LPStaticAPFSVolume *)self role];
  if (role == 1)
  {
    v4 = 3;
    goto LABEL_5;
  }

  if (role == 3)
  {
    v4 = 1;
LABEL_5:
    v5 = [(LPStaticAPFSVolume *)self pairedVolumeWithRole:v4];
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (id)snapshotMountPoints
{
  devNodePath = [(LPStaticMedia *)self devNodePath];
  if (devNodePath)
  {
    v3 = [NSString stringWithFormat:@"@%@", devNodePath];
    v23 = 0;
    v4 = getmntinfo_r_np(&v23, 0);
    v5 = [NSMutableArray arrayWithCapacity:13];
    v6 = objc_autoreleasePoolPush();
    if (v4 >= 1)
    {
      v21 = v6;
      v22 = devNodePath;
      v7 = 0;
      v8 = 0;
      v9 = v4;
      v10 = 1112;
      do
      {
        v11 = [NSString stringWithUTF8String:v23 + v10, v21];
        if ([(NSString *)v11 hasSuffix:v3])
        {
          v12 = [(NSString *)v11 substringToIndex:[(NSString *)v11 rangeOfString:@"@" options:4]];

          1024 = [NSString stringWithUTF8String:v23 + v10 - 1024];
          v24[0] = LPAPFSVolumeSnapshotMountPointKeyName[0];
          v24[1] = LPAPFSVolumeSnapshotMountPointKeyMountPoint[0];
          v25[0] = v12;
          v25[1] = 1024;
          v14 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];
          [(NSMutableArray *)v5 addObject:v14];

          v8 = 1024;
          v7 = v12;
        }

        v10 += 2168;
        --v9;
      }

      while (v9);

      v6 = v21;
      devNodePath = v22;
    }

    objc_autoreleasePoolPop(v6);
    if (v23)
    {
      free(v23);
    }

    if ([(NSMutableArray *)v5 count])
    {
      v15 = v5;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;
  }

  else
  {
    v17 = _os_log_pack_size();
    v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = _os_log_pack_fill(v18, v17, 0, &dword_0, "%s called on device with no dev node", v21);
    *v19 = 136315138;
    *(v19 + 4) = "[LPStaticAPFSVolume snapshotMountPoints]";
    _LPLogPack(1, v18);
    v16 = 0;
  }

  return v16;
}

- (BOOL)isMounted
{
  mountPoint = [(LPStaticMedia *)self mountPoint];
  if (mountPoint)
  {
    v4 = 1;
  }

  else
  {
    snapshotMountPoints = [(LPStaticAPFSVolume *)self snapshotMountPoints];
    v4 = snapshotMountPoints != 0;
  }

  return v4;
}

- (BOOL)eraseVolumeWithError:(id *)error
{
  mountPoint = [(LPStaticMedia *)self mountPoint];
  v5 = mountPoint;
  if (mountPoint)
  {
    v6 = _lp2_delete_directory_contents([mountPoint fileSystemRepresentation]);
    if (error && v6)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:v6 userInfo:0];
    }

    v7 = *__error() == 0;
  }

  else
  {
    if (error)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    }

    v8 = _os_log_pack_size();
    v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v10 = _os_log_pack_fill(v9, v8, 0, &dword_0, "%s : Failed because target volume is not mounted", v12);
    *v10 = 136315138;
    *(v10 + 4) = "[LPStaticAPFSVolume eraseVolumeWithError:]";
    _LPLogPack(1, v9);
    v7 = 0;
  }

  return v7;
}

- (BOOL)mountWithError:(id *)error
{
  mountPoint = [(LPStaticMedia *)self mountPoint];

  if (mountPoint)
  {
    return 1;
  }

  v7 = [LPStaticAPFSVolume defaultMountPointGivenRole:[(LPStaticAPFSVolume *)self role]];
  if (v7 && (v8 = [LPStaticMedia mediaForPath:v7], v8, !v8))
  {
    v6 = [(LPStaticAPFSVolume *)self mountAtPath:v7 error:error];
  }

  else
  {
    v9 = [(LPStaticAPFSVolume *)self mountAtTemporaryPathWithError:error];
    v6 = v9 != 0;
  }

  return v6;
}

- (BOOL)_pathIsTemporaryMount:(id)mount
{
  mountCopy = mount;
  if ([mountCopy containsString:@"tmp-mount-"])
  {
    if (_is_running_in_ramdisk_onceToken != -1)
    {
      +[LPStaticAPFSVolume initialize];
    }

    if (_is_running_in_ramdisk_is_ramdisk)
    {
      v4 = @"/mnt5";
    }

    else
    {
      v4 = @"/tmp/";
    }

    stringByResolvingSymlinksInPath = [(__CFString *)v4 stringByResolvingSymlinksInPath];
    stringByResolvingSymlinksInPath2 = [mountCopy stringByResolvingSymlinksInPath];
    stringByDeletingLastPathComponent = [stringByResolvingSymlinksInPath2 stringByDeletingLastPathComponent];

    v8 = [stringByDeletingLastPathComponent isEqualToString:stringByResolvingSymlinksInPath];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_createTemporaryMountPointWithError:(id *)error
{
  if (_is_running_in_ramdisk_onceToken != -1)
  {
    +[LPStaticAPFSVolume initialize];
  }

  bzero(v12, 0x400uLL);
  __strlcpy_chk();
  if (mkdtemp(v12))
  {
    v4 = [NSString stringWithUTF8String:v12];
  }

  else
  {
    _os_log_pack_size();
    v5 = &v12[-((off_30610() + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    v7 = _os_log_pack_fill(v5, v6, 0, &dword_0, "Couldn't create a temporary mount point %s", v11);
    *v7 = 136315138;
    *(v7 + 4) = v12;
    _LPLogPack(1, v5);
    if (*error)
    {
      v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];
      v9 = v8;
      v4 = 0;
      *error = v8;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (id)mountAtTemporaryPathWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v7 = [(LPStaticAPFSVolume *)self _createTemporaryMountPointWithError:error];
  if (v7 && [(LPStaticAPFSVolume *)self mountAtPath:v7 options:optionsCopy error:error])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)mountAtPath:(id)path options:(id)options error:(id *)error
{
  pathCopy = path;
  optionsCopy = options;
  devNodePath = [(LPStaticMedia *)self devNodePath];
  if (devNodePath)
  {
    mountPoint = [(LPStaticMedia *)self mountPoint];
    v12 = [mountPoint isEqualToString:pathCopy];
    if (optionsCopy || !v12)
    {
      if (!mountPoint || (v22 = _os_log_pack_size(), v23 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v24 = _os_log_pack_fill(v23, v22, 0, &dword_0, "Volume is already mounted at %@, attempting to re-mount at %@"), *v24 = 138412546, *(v24 + 4) = mountPoint, *(v24 + 12) = 2112, *(v24 + 14) = pathCopy, _LPLogPack(2, v23), v16 = 0, [(LPStaticAPFSVolume *)self unmountWithError:error]))
      {
        v25 = mkpath_np([pathCopy fileSystemRepresentation], 0x1FFu);
        if (v25 && v25 != 17)
        {
          v29 = optionsCopy;
          if (error)
          {
            v30 = v25;
            v88 = NSFilePathErrorKey;
            v89 = pathCopy;
            v31 = [NSDictionary dictionaryWithObjects:&v89 forKeys:&v88 count:1];
            *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:v30 userInfo:v31];
          }

          v32 = _os_log_pack_size();
          v33 = &v71 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
          v34 = _os_log_pack_fill(v33, v32, 0, &dword_0, "Can not mount (%{private}s) because we could not create its mount folder (%{private}s).");
          v35 = [(LPStaticMedia *)self description];
          uTF8String = [v35 UTF8String];
          fileSystemRepresentation = [pathCopy fileSystemRepresentation];
          *v34 = 136380931;
          *(v34 + 4) = uTF8String;
          *(v34 + 12) = 2081;
          *(v34 + 14) = fileSystemRepresentation;

          _LPLogPack(1, v33);
          v16 = 0;
          optionsCopy = v29;
        }

        else
        {
          v84 = xmmword_2C9E8;
          v85 = unk_2C9F8;
          v86 = xmmword_2CA08;
          v87 = 0;
          v82 = off_2C9C8;
          v83 = unk_2C9D8;
          v26 = [optionsCopy objectForKeyedSubscript:LPAPFSVolumeMountOptionReadOnly[0]];
          v27 = v26;
          if (v26)
          {
            v28 = v26;
          }

          else
          {
            v28 = [NSNumber numberWithBool:0];
          }

          v38 = v28;

          if ([(NSNumber *)v38 BOOLValue])
          {
            *(&v82 + 1) = "-o";
            *&v83 = "rdonly";
            v39 = 3;
          }

          else
          {
            v39 = 1;
          }

          v40 = [optionsCopy objectForKeyedSubscript:LPAPFSVolumeMountOptionNoBrowse[0]];
          v41 = v40;
          if (v40)
          {
            v42 = v40;
          }

          else
          {
            v42 = [NSNumber numberWithBool:1];
          }

          v43 = v42;

          if ([(NSNumber *)v43 BOOLValue])
          {
            *(&v82 + v39) = "-o";
            v44 = v39 + 1;
            v39 += 2;
            *(&v82 + v44) = "nobrowse";
          }

          v45 = [optionsCopy objectForKeyedSubscript:LPAPFSVolumeMountOptionNoFirmlinks[0]];
          v46 = v45;
          if (v45)
          {
            v47 = v45;
          }

          else
          {
            v47 = [NSNumber numberWithBool:0];
          }

          v48 = v47;

          if ([(NSNumber *)v48 BOOLValue])
          {
            *(&v82 + v39++) = "-n";
          }

          v76 = v38;
          errorCopy = error;
          v77 = mountPoint;
          v49 = [optionsCopy objectForKeyedSubscript:LPAPFSVolumeMountOptionSnapshotName[0]];
          v71 = [v49 length];
          v78 = optionsCopy;
          v75 = v43;
          v74 = v48;
          v73 = v49;
          if (v71)
          {
            v50 = v39 + 1;
            *(&v82 + v39) = "-s";
            v39 += 2;
            *(&v82 + v50) = [v49 fileSystemRepresentation];
          }

          *(&v82 + v39) = [devNodePath fileSystemRepresentation];
          *(&v82 + v39 + 1) = [pathCopy fileSystemRepresentation];
          v51 = _execForLibpartition(&v82);
          if (v51 == 75)
          {
            v52 = _os_log_pack_size();
            v53 = 0;
            *&v54 = 138412802;
            v79 = v54;
            do
            {
              v55 = _os_log_pack_fill(&v71 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0), v52, 0, &dword_0, "mount_apfs %@ returned %d, retrying (%d)", v71);
              *v55 = v79;
              *(v55 + 4) = devNodePath;
              *(v55 + 12) = 1024;
              *(v55 + 14) = 75;
              *(v55 + 18) = 1024;
              *(v55 + 20) = v53;
              _LPLogPack(1, &v71 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
              sleep(3u);
              v51 = _execForLibpartition(&v82);
              if (v51 != 75)
              {
                break;
              }
            }

            while (v53++ < 2);
          }

          v16 = v51 == 0;
          if (v51)
          {
            mountPoint = v77;
            v57 = errorCopy;
            if (errorCopy)
            {
              v58 = [NSString stringWithFormat:@"mount_apfs returned : %d", v51];
              v80[0] = NSLocalizedFailureReasonErrorKey;
              v80[1] = NSLocalizedDescriptionKey;
              v81[0] = @"Mount failed";
              v81[1] = v58;
              v59 = [NSDictionary dictionaryWithObjects:v81 forKeys:v80 count:2];
              *v57 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v59];
            }

            v60 = _os_log_pack_size();
            v61 = &v71 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
            v62 = _os_log_pack_fill(v61, v60, 0, &dword_0, "Can not mount (%@) because mount returned %d.");
            *v62 = 138412546;
            *(v62 + 4) = devNodePath;
            *(v62 + 12) = 1024;
            *(v62 + 14) = v51;
            _LPLogPack(1, v61);
            optionsCopy = v78;
            v63 = v76;
            v64 = v73;
          }

          else
          {
            mountPoint = v77;
            v63 = v76;
            v64 = v73;
            if (v71)
            {
              v65 = _os_log_pack_size();
              v66 = &v71 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
              v67 = _os_log_pack_fill(v66, v65, 0, &dword_0, "Mounted %@, Snapshot( %{private}@) at %{private}@");
              *v67 = 138412803;
              *(v67 + 4) = devNodePath;
              *(v67 + 12) = 2113;
              *(v67 + 14) = v64;
              *(v67 + 22) = 2113;
              *(v67 + 24) = pathCopy;
            }

            else
            {
              v68 = _os_log_pack_size();
              v66 = &v71 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
              v69 = _os_log_pack_fill(v66, v68, 0, &dword_0, "Mounted %@ at %{private}@");
              *v69 = 138412547;
              *(v69 + 4) = devNodePath;
              *(v69 + 12) = 2113;
              *(v69 + 14) = pathCopy;
            }

            _LPLogPack(2, v66);
            optionsCopy = v78;
          }
        }
      }
    }

    else
    {
      v13 = _os_log_pack_size();
      v14 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = _os_log_pack_fill(v14, v13, 0, &dword_0, "Volume is already mounted at %@, skipping re-mount");
      *v15 = 138412290;
      *(v15 + 4) = pathCopy;
      _LPLogPack(2, v14);
      v16 = 1;
    }
  }

  else
  {
    if (error)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    }

    v17 = _os_log_pack_size();
    v18 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = _os_log_pack_fill(v18, v17, 0, &dword_0, "Can not mount (%s) because it does not appear to have a device node.", v71);
    v20 = [(LPStaticMedia *)self description];
    uTF8String2 = [v20 UTF8String];
    *v19 = 136315138;
    *(v19 + 4) = uTF8String2;

    _LPLogPack(1, v18);
    v16 = 0;
  }

  return v16;
}

- (BOOL)unmountWithOptions:(id)options error:(id *)error
{
  errorCopy = error;
  optionsCopy = options;
  v83 = [NSMutableArray arrayWithCapacity:1];
  v6 = [optionsCopy objectForKey:LPAPFSVolumeUnmountOptionAll[0]];
  bOOLValue = [v6 BOOLValue];

  v8 = [optionsCopy objectForKey:LPAPFSVolumeUnmountOptionSnapshotName[0]];
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = bOOLValue == 0;
  }

  selfCopy = self;
  if (v9)
  {
    mountPoint = [(LPStaticMedia *)self mountPoint];

    if (!mountPoint)
    {
      goto LABEL_28;
    }

    mountPoint2 = [(LPStaticMedia *)self mountPoint];
    [(NSMutableArray *)v83 addObject:mountPoint2];
  }

  else
  {
    mountPoint2 = [(LPStaticAPFSVolume *)self snapshotMountPoints];
    mountPoint3 = [(LPStaticMedia *)self mountPoint];
    v12 = mountPoint3;
    if (mountPoint2)
    {
      v93 = mountPoint3;
      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      *&v95 = mountPoint2;
      v98 = mountPoint2;
      v13 = [v98 countByEnumeratingWithState:&v104 objects:v109 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v105;
        while (2)
        {
          v16 = 0;
          v96 = v14;
          do
          {
            if (*v105 != v15)
            {
              objc_enumerationMutation(v98);
            }

            v17 = *(*(&v104 + 1) + 8 * v16);
            if (bOOLValue)
            {
              v18 = [v17 objectForKey:LPAPFSVolumeSnapshotMountPointKeyMountPoint[0]];
              [(NSMutableArray *)v83 addObject:v18];
            }

            else
            {
              v19 = [optionsCopy objectForKey:LPAPFSVolumeSnapshotMountPointKeyName[0]];
              v20 = v15;
              v21 = bOOLValue;
              v22 = [v17 objectForKey:v19];
              v23 = [optionsCopy objectForKey:LPAPFSVolumeUnmountOptionSnapshotName[0]];
              v24 = [v22 isEqualToString:v23];

              v25 = v22;
              bOOLValue = v21;
              v15 = v20;
              v14 = v96;

              if (v24)
              {
                v26 = [v17 objectForKey:LPAPFSVolumeSnapshotMountPointKeyMountPoint[0]];
                [(NSMutableArray *)v83 addObject:v26];

                if ((bOOLValue & 1) == 0)
                {

                  self = selfCopy;
                  mountPoint2 = v95;
                  v12 = v93;
                  goto LABEL_26;
                }
              }
            }

            v16 = v16 + 1;
          }

          while (v14 != v16);
          v14 = [v98 countByEnumeratingWithState:&v104 objects:v109 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

      self = selfCopy;
      mountPoint2 = v95;
      v12 = v93;
    }

    if (v12)
    {
      v27 = bOOLValue;
    }

    else
    {
      v27 = 0;
    }

    if (v27 == 1)
    {
      [(NSMutableArray *)v83 addObject:v12];
    }

LABEL_26:
  }

LABEL_28:
  v89 = optionsCopy;
  if ([(NSMutableArray *)v83 count])
  {
    [(NSMutableArray *)v83 sortUsingComparator:&__block_literal_global_2];
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v87 = v83;
    v90 = [(NSMutableArray *)v87 countByEnumeratingWithState:&v100 objects:v108 count:16];
    if (!v90)
    {
      v74 = 0;
      goto LABEL_72;
    }

    v88 = *v101;
    v92 = NSPOSIXErrorDomain;
    *&v29 = 138412547;
    v86 = v29;
    *&v29 = 67109120;
    v85 = v29;
    *&v29 = 138412802;
    v95 = v29;
    *&v29 = 138412546;
    v91 = v29;
    *&v29 = 138412290;
    v84 = v29;
    while (1)
    {
      v30 = 0;
      do
      {
        if (*v101 != v88)
        {
          objc_enumerationMutation(v87);
        }

        v93 = v30;
        v31 = *(*(&v100 + 1) + 8 * v30);
        if (optionsCopy)
        {
          v32 = [optionsCopy objectForKey:LPAPFSVolumeUnmountOptionForce[0]];
          v33 = v32 != 0;

          LODWORD(v98) = v33 << 19;
          v34 = [optionsCopy objectForKey:LPAPFSVolumeUnmountOptionDoNotLock[0]];

          if (v34)
          {
            v99 = 1;
            if (fsctl([v31 fileSystemRepresentation], 0x80014A22uLL, &v99, 0))
            {
              if (*__error() == 17)
              {
                v35 = _os_log_pack_size();
                v36 = &v82 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
                v37 = _os_log_pack_fill(v36, v35, 0, &dword_0, "Call to APFS_FSCTL_UNMOUNT_CRYPTO_HINT on %@ returned EEXIST\n");
                devNodePath = [(LPStaticMedia *)self devNodePath];
                *v37 = v84;
                *(v37 + 4) = devNodePath;
                v39 = 2;
                v40 = v36;
              }

              else
              {
                v41 = _os_log_pack_size();
                v42 = &v82 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
                v43 = _os_log_pack_fill(v42, v41, 0, &dword_0, "Failed to call APFS_FSCTL_UNMOUNT_CRYPTO_HINT on %@ with errno %d\n");
                devNodePath = [(LPStaticMedia *)self devNodePath];
                v44 = *__error();
                *v43 = v91;
                *(v43 + 4) = devNodePath;
                *(v43 + 12) = 1024;
                *(v43 + 14) = v44;
                v39 = 1;
                v40 = v42;
              }

              _LPLogPack(v39, v40);
            }
          }
        }

        else
        {
          LODWORD(v98) = 0;
        }

        v45 = 0;
        while (1)
        {
          fileSystemRepresentation = [v31 fileSystemRepresentation];
          if (!unmount(fileSystemRepresentation, v98))
          {
            break;
          }

          v47 = *__error();
          v48 = selfCopy;
          LODWORD(v96) = v47 == 22;
          if (v47 == 22)
          {
            v49 = _os_log_pack_size();
            v50 = &v82 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
            *_os_log_pack_fill(v50, v49, 0, &dword_0, "Unmount failed with EINVAL, will assume race. Ignoring error.") = 0;
            _LPLogPack(1, v50);
            v51 = 0;
          }

          else if (v45 < 3)
          {
            if (v47 != 35 && v47 != 16)
            {
              goto LABEL_55;
            }

            ++v45;
            sleep(3u);
            v51 = 1;
          }

          else
          {
            if (v45 == 3 && v47 == 16 && [(LPStaticAPFSVolume *)selfCopy role]!= 12)
            {
              LODWORD(v98) = v98 | 0x80000;
              sleep(3u);
              v59 = _os_log_pack_size();
              v60 = &v82 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
              v61 = _os_log_pack_fill(v60, v59, 0, &dword_0, "Failed to unmount %@ **FORCING UNMOUNT** error: %d");
              devNodePath2 = [(LPStaticMedia *)v48 devNodePath];
              *v61 = v91;
              *(v61 + 4) = devNodePath2;
              *(v61 + 12) = 1024;
              *(v61 + 14) = 16;
              v51 = 1;
              _LPLogPack(1, v60);
              v63 = devNodePath2;
              v48 = selfCopy;

              v45 = 4;
              goto LABEL_56;
            }

            v52 = errorCopy;
            if (!errorCopy)
            {
LABEL_55:
              v51 = 0;
              goto LABEL_56;
            }

            v51 = 0;
            *v52 = [NSError errorWithDomain:v92 code:v47 userInfo:0];
          }

LABEL_56:
          v53 = _os_log_pack_size();
          v54 = &v82 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
          v55 = _os_log_pack_fill(v54, v53, 0, &dword_0, "Failed to unmount %@ retry: %s error: %d");
          devNodePath3 = [(LPStaticMedia *)v48 devNodePath];
          v57 = devNodePath3;
          *v55 = v95;
          v58 = "no";
          if (v51)
          {
            v58 = "yes";
          }

          *(v55 + 4) = devNodePath3;
          *(v55 + 12) = 2080;
          *(v55 + 14) = v58;
          *(v55 + 22) = 1024;
          *(v55 + 24) = v47;
          _LPLogPack(1, v54);

          if ((v51 & 1) == 0)
          {
            self = selfCopy;
            v73 = v93;
            v74 = v96;
            goto LABEL_67;
          }
        }

        v64 = _os_log_pack_size();
        v65 = &v82 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
        v66 = _os_log_pack_fill(v65, v64, 0, &dword_0, "Unmounted %@(%{private}@)");
        self = selfCopy;
        devNodePath4 = [(LPStaticMedia *)selfCopy devNodePath];
        *v66 = v86;
        *(v66 + 4) = devNodePath4;
        *(v66 + 12) = 2113;
        *(v66 + 14) = v31;
        _LPLogPack(2, v65);

        if ([(LPStaticAPFSVolume *)self _pathIsTemporaryMount:v31])
        {
          if (rmdir([v31 fileSystemRepresentation]))
          {
            v68 = _os_log_pack_size();
            v69 = &v82 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
            v70 = _os_log_pack_fill(v69, v68, 0, &dword_0, "Failed to clean up temporary mount point: %d", v82);
            v71 = *__error();
            *v70 = v85;
            v70[1] = v71;
            v72 = 1;
          }

          else
          {
            v75 = _os_log_pack_size();
            v69 = &v82 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
            *_os_log_pack_fill(v69, v75, 0, &dword_0, "Cleaned up temporary mount point") = 0;
            v72 = 2;
          }

          _LPLogPack(v72, v69);
        }

        v74 = 1;
        v73 = v93;
LABEL_67:
        v30 = v73 + 1;
        optionsCopy = v89;
      }

      while (v30 != v90);
      v90 = [(NSMutableArray *)v87 countByEnumeratingWithState:&v100 objects:v108 count:16];
      if (!v90)
      {
LABEL_72:

        goto LABEL_73;
      }
    }
  }

  v76 = _os_log_pack_size();
  v77 = &v82 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = _os_log_pack_fill(v77, v76, 0, &dword_0, "Was asked asked to unmount (%@) but is not mounted.");
  devNodePath5 = [(LPStaticMedia *)self devNodePath];
  *v78 = 138412290;
  *(v78 + 4) = devNodePath5;
  _LPLogPack(2, v77);
  v80 = devNodePath5;
  optionsCopy = v89;

  v74 = 1;
LABEL_73:

  return v74;
}

- (BOOL)unmountAllWithError:(id *)error
{
  v8 = LPAPFSVolumeUnmountOptionAll[0];
  v5 = [NSNumber numberWithBool:1];
  v9 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  LOBYTE(error) = [(LPStaticAPFSVolume *)self unmountWithOptions:v6 error:error];

  return error;
}

- (BOOL)deleteVolumeWithError:(id *)error
{
  devNodePath = [(LPStaticMedia *)self devNodePath];
  if (devNodePath)
  {
    v5 = _os_log_pack_size();
    v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v7 = _os_log_pack_fill(v6, v5, 0, &dword_0, "%s : going to delete apfs volume(%@)");
    *&v8 = 136315394;
    v27 = v8;
    *v7 = 136315394;
    *(v7 + 4) = "[LPStaticAPFSVolume deleteVolumeWithError:]";
    *(v7 + 12) = 2112;
    *(v7 + 14) = devNodePath;
    _LPLogPack(2, v6);
    [devNodePath fileSystemRepresentation];
    v9 = APFSVolumeDelete();
    if (!v9)
    {
      v19 = 1;
      goto LABEL_18;
    }

    v10 = v9;
    if (v9 >> 26 == 56)
    {
      v11 = _os_log_pack_size();
      v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      v13 = _os_log_pack_fill(v12, v11, 0, &dword_0, "%s : failed with iokit error: %d", v27, DWORD2(v27));
      v14 = v10 & 0x3FFF;
      *v13 = v27;
      *(v13 + 4) = "[LPStaticAPFSVolume deleteVolumeWithError:]";
      *(v13 + 12) = 1024;
      *(v13 + 14) = v14;
      _LPLogPack(1, v12);
      if (error)
      {
        v15 = @"com.apple.IOKit";
LABEL_14:
        v24 = v14;
LABEL_17:
        v19 = 0;
        *error = [NSError errorWithDomain:v15 code:v24 userInfo:0];
        goto LABEL_18;
      }
    }

    else
    {
      v20 = v9 & 0xFFFFC000;
      v21 = _os_log_pack_size();
      v22 = &v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (v20 == 49152)
      {
        v23 = _os_log_pack_fill(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v21, 0, &dword_0, "%s : failed with posix error: %d", v27, DWORD2(v27));
        v14 = v10 & 0x3FFF;
        *v23 = v27;
        *(v23 + 4) = "[LPStaticAPFSVolume deleteVolumeWithError:]";
        *(v23 + 12) = 1024;
        *(v23 + 14) = v14;
        _LPLogPack(1, v22);
        if (error)
        {
          v15 = NSPOSIXErrorDomain;
          goto LABEL_14;
        }
      }

      else
      {
        v25 = _os_log_pack_fill(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v21, 0, &dword_0, "%s : failed with unknown kern_return_t error: %d", v27, DWORD2(v27));
        *v25 = v27;
        *(v25 + 4) = "[LPStaticAPFSVolume deleteVolumeWithError:]";
        *(v25 + 12) = 1024;
        *(v25 + 14) = v10;
        _LPLogPack(1, v22);
        if (error)
        {
          v15 = NSOSStatusErrorDomain;
          v24 = v10;
          goto LABEL_17;
        }
      }
    }
  }

  else
  {
    if (error)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    }

    v16 = _os_log_pack_size();
    v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = _os_log_pack_fill(v17, v16, 0, &dword_0, "%s : volume is missing a dev node somehow", v27);
    *v18 = 136315138;
    *(v18 + 4) = "[LPStaticAPFSVolume deleteVolumeWithError:]";
    _LPLogPack(1, v17);
  }

  v19 = 0;
LABEL_18:

  return v19;
}

- (id)snapshotsWithError:(id *)error
{
  v3 = [(LPStaticAPFSVolume *)self snapshotInfoWithError:error];
  v4 = [NSMutableArray arrayWithCapacity:10];
  if (v3)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v12 + 1) + 8 * i) objectForKey:{LPAPFSSnapshotPropertyKeyName[0], v12}];
          if (v10)
          {
            [(NSMutableArray *)v4 addObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  return v4;
}

- (id)snapshotInfoWithError:(id *)error
{
  mountPoint = [(LPStaticMedia *)self mountPoint];
  v6 = mountPoint;
  if (!mountPoint)
  {
    if (error)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    }

    v33 = _os_log_pack_size();
    v34 = &errorCopy - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
    v35 = _os_log_pack_fill(v34, v33, 0, &dword_0, "%s called but %{private}@ is not mounted.");
    v36 = [(LPStaticMedia *)self description];
    *v35 = 136315395;
    *(v35 + 4) = "[LPStaticAPFSVolume snapshotInfoWithError:]";
    *(v35 + 12) = 2113;
    *(v35 + 14) = v36;
    _LPLogPack(1, v34);

    goto LABEL_36;
  }

  v7 = open([mountPoint fileSystemRepresentation], 0x100000);
  if (v7 < 0)
  {
    if (error)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];
    }

    v37 = _os_log_pack_size();
    v38 = &errorCopy - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
    v39 = _os_log_pack_fill(v38, v37, 0, &dword_0, "%s : Unable to open mount point %{private}@: %d");
    *v39 = 136315651;
    *(v39 + 4) = "[LPStaticAPFSVolume snapshotInfoWithError:]";
    *(v39 + 12) = 2113;
    *(v39 + 14) = v6;
    *(v39 + 22) = 1024;
    *(v39 + 24) = 0;
    _LPLogPack(1, v38);
LABEL_36:
    v32 = 0;
    goto LABEL_40;
  }

  v8 = v7;
  errorCopy = error;
  v46 = v6;
  v48 = [NSMutableArray arrayWithCapacity:10];
  *&v51.volattr = 0;
  *&v51.fileattr = 0;
  bzero(v52, 0x800uLL);
  *&v51.bitmapcount = 0xA000002100000005;
  v9 = fs_snapshot_list(v8, &v51, v52, 0x800uLL, 0);
  if (v9 >= 1)
  {
    v11 = v52;
    *&v10 = 136315395;
    v47 = v10;
    *&v10 = 136315394;
    v49 = v10;
    v50 = v8;
    while (1)
    {
      while (1)
      {
        v12 = __OFSUB__(v9--, 1);
        if (v9 < 0 == v12)
        {
          break;
        }

LABEL_27:
        v11 = v52;
        v9 = fs_snapshot_list(v8, &v51, v52, 0x800uLL, 0);
        if (v9 <= 0)
        {
          goto LABEL_28;
        }
      }

      v13 = (v11 + 6);
      v14 = *v11;
      v15 = v11[1];
      if ((v15 & 0x20000000) == 0)
      {
        break;
      }

      v21 = *v13;
      v22 = _os_log_pack_size();
      v23 = &errorCopy - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      v24 = _os_log_pack_fill(v23, v22, 0, &dword_0, "%s : Error in reading attributes for directory entry %d", errorCopy, v46);
      *v24 = v49;
      *(v24 + 4) = "[LPStaticAPFSVolume snapshotInfoWithError:]";
      *(v24 + 12) = 1024;
      *(v24 + 14) = v21;
      _LPLogPack(1, v23);
LABEL_26:
      v11 = (v11 + v14);
      if ((v15 & 0x20000000) != 0)
      {
        goto LABEL_27;
      }
    }

    if (v15)
    {
      v25 = v13 + *v13;
      v16 = [NSString stringWithUTF8String:v25];
      if (!v16)
      {
        v26 = _os_log_pack_size();
        v27 = &errorCopy - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
        v28 = _os_log_pack_fill(v27, v26, 0, &dword_0, "%s : Failed to encode snapshot name %{private}s for some reason.");
        *v28 = v47;
        *(v28 + 4) = "[LPStaticAPFSVolume snapshotInfoWithError:]";
        *(v28 + 12) = 2081;
        *(v28 + 14) = v25;
        _LPLogPack(2, v27);
      }

      v13 = (v11 + 8);
      if ((v11[1] & 0x20) != 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v16 = 0;
      if ((v15 & 0x20) != 0)
      {
LABEL_9:
        v17 = *v13;
        0x3FFFFFFFFFFFFFFFLL = [NSNumber numberWithUnsignedLongLong:*v13 & 0x3FFFFFFFFFFFFFFFLL];
        v19 = [NSNumber numberWithBool:(v17 >> 62) & 1];
        v20 = [NSNumber numberWithBool:v17 >> 63];
LABEL_15:
        v29 = [NSMutableDictionary dictionaryWithCapacity:4];
        v30 = v29;
        if (v16)
        {
          [(NSMutableDictionary *)v29 setObject:v16 forKey:LPAPFSSnapshotPropertyKeyName[0]];
        }

        if (0x3FFFFFFFFFFFFFFFLL)
        {
          [(NSMutableDictionary *)v30 setObject:0x3FFFFFFFFFFFFFFFLL forKey:LPAPFSSnapshotPropertyKeyXID[0]];
        }

        if (v19)
        {
          [(NSMutableDictionary *)v30 setObject:v19 forKey:LPAPFSSnapshotPropertyKeyMarkedForRevert];
        }

        if (v20)
        {
          [(NSMutableDictionary *)v30 setObject:v20 forKey:LPAPFSSnapshotPropertyKeyMarkedForRoot[0]];
        }

        if ([(NSMutableDictionary *)v30 count])
        {
          [(NSMutableArray *)v48 addObject:v30];
        }

        v8 = v50;
        goto LABEL_26;
      }
    }

    v20 = 0;
    v19 = 0;
    0x3FFFFFFFFFFFFFFFLL = 0;
    goto LABEL_15;
  }

LABEL_28:
  if (v9 < 0)
  {
    v40 = _os_log_pack_size();
    v41 = &errorCopy - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
    v42 = _os_log_pack_fill(v41, v40, 0, &dword_0, "%s : fs_snapshot_list failed with error %d", errorCopy, v46);
    *v42 = 136315394;
    *(v42 + 4) = "[LPStaticAPFSVolume snapshotInfoWithError:]";
    *(v42 + 12) = 1024;
    *(v42 + 14) = v9;
    _LPLogPack(1, v41);
    close(v8);
    v43 = errorCopy;
    v31 = v48;
    v32 = 0;
    if (errorCopy)
    {
      *v43 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v9 userInfo:0];
    }
  }

  else
  {
    close(v8);
    v31 = v48;
    v32 = [NSArray arrayWithArray:v48];
  }

  v6 = v46;
LABEL_40:

  return v32;
}

- (BOOL)createSnapshot:(id)snapshot error:(id *)error
{
  snapshotCopy = snapshot;
  mountPoint = [(LPStaticMedia *)self mountPoint];
  if (!snapshotCopy || ![snapshotCopy length])
  {
    if (error)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    }

    v17 = _os_log_pack_size();
    v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = _os_log_pack_fill(v18, v17, 0, &dword_0, "%s : Need a valid snapshot name.");
    goto LABEL_13;
  }

  if (!mountPoint)
  {
    if (error)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    }

    v21 = _os_log_pack_size();
    v18 = &v24 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = _os_log_pack_fill(v18, v21, 0, &dword_0, "%s : Could not open device is not mounted.");
LABEL_13:
    *v19 = 136315138;
    *(v19 + 4) = "[LPStaticAPFSVolume createSnapshot:error:]";
LABEL_14:
    _LPLogPack(1, v18);
    v11 = 0;
    goto LABEL_15;
  }

  v8 = open([mountPoint fileSystemRepresentation], 0);
  if (v8 < 0)
  {
    if (error)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];
    }

    v22 = _os_log_pack_size();
    v18 = &v24 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = _os_log_pack_fill(v18, v22, 0, &dword_0, "%s : Could not open device mount %{private}@.");
    *v23 = 136315395;
    *(v23 + 4) = "[LPStaticAPFSVolume createSnapshot:error:]";
    *(v23 + 12) = 2113;
    *(v23 + 14) = mountPoint;
    goto LABEL_14;
  }

  v9 = v8;
  v10 = fs_snapshot_create(v8, [snapshotCopy fileSystemRepresentation], 0);
  v11 = v10 == 0;
  if (v10)
  {
    v12 = *__error();
    if (error)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:v12 userInfo:0];
    }

    v13 = _os_log_pack_size();
    v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = _os_log_pack_fill(v14, v13, 0, &dword_0, "create snapshot operation failed: %d %s", v24, v25);
    v16 = strerror(v12);
    *v15 = 67109378;
    *(v15 + 4) = v12;
    *(v15 + 8) = 2080;
    *(v15 + 10) = v16;
    _LPLogPack(1, v14);
  }

  close(v9);
LABEL_15:

  return v11;
}

- (BOOL)deleteSnapshots:(id)snapshots waitForDeletionFor:(double)for error:(id *)error
{
  snapshotsCopy = snapshots;
  mountPoint = [(LPStaticMedia *)self mountPoint];
  if (!snapshotsCopy)
  {
    if (error)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    }

    v26 = _os_log_pack_size();
    v27 = &errorCopy - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    v28 = _os_log_pack_fill(v27, v26, 0, &dword_0, "%s : Need a valid snapshot names.");
    goto LABEL_26;
  }

  if (![snapshotsCopy count])
  {
    v25 = 1;
    goto LABEL_28;
  }

  if (!mountPoint)
  {
    if (error)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    }

    v29 = _os_log_pack_size();
    v27 = &errorCopy - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    v28 = _os_log_pack_fill(v27, v29, 0, &dword_0, "%s : Could not open device is not mounted.");
LABEL_26:
    *v28 = 136315138;
    *(v28 + 4) = "[LPStaticAPFSVolume deleteSnapshots:waitForDeletionFor:error:]";
    v30 = v27;
LABEL_27:
    _LPLogPack(1, v30);
    v25 = 0;
    goto LABEL_28;
  }

  v10 = open([mountPoint fileSystemRepresentation], 0);
  if (v10 < 0)
  {
    if (error)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];
    }

    v32 = _os_log_pack_size();
    v33 = &errorCopy - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
    v34 = _os_log_pack_fill(v33, v32, 0, &dword_0, "%s : Failed to open media for snapshot delete: %d", errorCopy, v40);
    v35 = *__error();
    *v34 = 136315394;
    *(v34 + 4) = "[LPStaticAPFSVolume deleteSnapshots:waitForDeletionFor:error:]";
    *(v34 + 12) = 1024;
    *(v34 + 14) = v35;
    v30 = v33;
    goto LABEL_27;
  }

  v11 = v10;
  v48 = 0u;
  v47 = 0u;
  v46 = 0u;
  v45 = 0u;
  v12 = snapshotsCopy;
  v13 = [v12 countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v13)
  {
    v15 = v13;
    errorCopy = error;
    v40 = mountPoint;
    v41 = snapshotsCopy;
    v16 = 0;
    v42 = 0;
    v17 = *v46;
    *&v14 = 136315651;
    v43 = v14;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v46 != v17)
        {
          objc_enumerationMutation(v12);
        }

        v19 = *(*(&v45 + 1) + 8 * i);
        if (fs_snapshot_delete(v11, [v19 fileSystemRepresentation], 0))
        {
          v16 = *__error();
          v20 = _os_log_pack_size();
          v21 = &errorCopy - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
          v22 = _os_log_pack_fill(v21, v20, 0, &dword_0, "%s : Failed to delete snapshot: %{private}@, %d");
          v23 = *__error();
          *v22 = v43;
          *(v22 + 4) = "[LPStaticAPFSVolume deleteSnapshots:waitForDeletionFor:error:]";
          *(v22 + 12) = 2113;
          *(v22 + 14) = v19;
          *(v22 + 22) = 1024;
          *(v22 + 24) = v23;
          _LPLogPack(1, v21);
        }

        else
        {
          v42 = 1;
        }
      }

      v15 = [v12 countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v15);

    v24 = errorCopy;
    if (errorCopy)
    {
      v25 = v42;
      if (v16)
      {
        *v24 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v16 userInfo:0];
      }

      snapshotsCopy = v41;
      mountPoint = v40;
    }

    else
    {
      snapshotsCopy = v41;
      mountPoint = v40;
      v25 = v42;
    }
  }

  else
  {

    v25 = 0;
  }

  if (for != 0.0)
  {
    v44[2] = 0;
    v44[1] = 0;
    v44[0] = 15;
    if (ffsctl(v11, 0x80184A24uLL, v44, 0))
    {
      v36 = _os_log_pack_size();
      v37 = &errorCopy - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
      v38 = _os_log_pack_fill(v37, v36, 0, &dword_0, "%s : Waiting for snapshots to delete timed out", errorCopy);
      *v38 = 136315138;
      *(v38 + 4) = "[LPStaticAPFSVolume deleteSnapshots:waitForDeletionFor:error:]";
      _LPLogPack(1, v37);
    }
  }

  close(v11);
LABEL_28:

  return v25 & 1;
}

- (BOOL)renameSnapshot:(id)snapshot to:(id)to error:(id *)error
{
  snapshotCopy = snapshot;
  toCopy = to;
  mountPoint = [(LPStaticMedia *)self mountPoint];
  if (!snapshotCopy || ![snapshotCopy length])
  {
    if (error)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    }

    v20 = _os_log_pack_size();
    v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    v22 = _os_log_pack_fill(v21, v20, 0, &dword_0, "%s : Need a valid snapshot name.");
    goto LABEL_18;
  }

  if (!toCopy || ![toCopy length])
  {
    if (error)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    }

    v23 = _os_log_pack_size();
    v21 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    v22 = _os_log_pack_fill(v21, v23, 0, &dword_0, "%s : Need a valid new snapshot name.");
    goto LABEL_18;
  }

  if (!mountPoint)
  {
    if (error)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    }

    v25 = _os_log_pack_size();
    v21 = &v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    v22 = _os_log_pack_fill(v21, v25, 0, &dword_0, "%s : Could not open device is not mounted.");
LABEL_18:
    *v22 = 136315138;
    *(v22 + 4) = "[LPStaticAPFSVolume renameSnapshot:to:error:]";
LABEL_19:
    _LPLogPack(1, v21);
    v14 = 0;
    goto LABEL_20;
  }

  v11 = open([mountPoint fileSystemRepresentation], 0);
  if (v11 < 0)
  {
    if (error)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];
    }

    v26 = _os_log_pack_size();
    v21 = &v28 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    v27 = _os_log_pack_fill(v21, v26, 0, &dword_0, "%s : Could not open device mount %{private}@.");
    *v27 = 136315395;
    *(v27 + 4) = "[LPStaticAPFSVolume renameSnapshot:to:error:]";
    *(v27 + 12) = 2113;
    *(v27 + 14) = mountPoint;
    goto LABEL_19;
  }

  v12 = v11;
  v13 = fs_snapshot_rename(v11, [snapshotCopy fileSystemRepresentation], objc_msgSend(toCopy, "fileSystemRepresentation"), 0);
  v14 = v13 == 0;
  if (v13)
  {
    v15 = *__error();
    if (error)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:v15 userInfo:0];
    }

    v16 = _os_log_pack_size();
    v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = _os_log_pack_fill(v17, v16, 0, &dword_0, "rename snapshot operation failed: %d %s", v28, v29);
    v19 = strerror(v15);
    *v18 = 67109378;
    *(v18 + 4) = v15;
    *(v18 + 8) = 2080;
    *(v18 + 10) = v19;
    _LPLogPack(1, v17);
  }

  close(v12);
LABEL_20:

  return v14;
}

- (BOOL)revertToSnapshot:(id)snapshot options:(id)options error:(id *)error
{
  snapshotCopy = snapshot;
  optionsCopy = options;
  mountPoint = [(LPStaticMedia *)self mountPoint];
  if (!snapshotCopy || ![snapshotCopy length])
  {
    if (error)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    }

    v24 = _os_log_pack_size();
    v25 = v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    v26 = _os_log_pack_fill(v25, v24, 0, &dword_0, "%s : Need a valid new snapshot name.");
    goto LABEL_14;
  }

  if (!mountPoint)
  {
    if (error)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    }

    v28 = _os_log_pack_size();
    v25 = v38 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    v26 = _os_log_pack_fill(v25, v28, 0, &dword_0, "%s : Could not open device is not mounted.");
LABEL_14:
    *v26 = 136315138;
    *(v26 + 4) = "[LPStaticAPFSVolume revertToSnapshot:options:error:]";
    _LPLogPack(1, v25);
    v14 = 0;
    goto LABEL_15;
  }

  v11 = open([mountPoint fileSystemRepresentation], 0);
  if ((v11 & 0x80000000) == 0)
  {
    v12 = v11;
    v13 = fs_snapshot_revert(v11, [snapshotCopy fileSystemRepresentation], 0);
    v14 = v13 == 0;
    if (v13)
    {
      v15 = *__error();
      if (error)
      {
        *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:v15 userInfo:0];
      }

      v16 = _os_log_pack_size();
      v17 = v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      v18 = _os_log_pack_fill(v17, v16, 0, &dword_0, "revert snapshot operation failed: %d %s", v38, v38[1]);
      v19 = strerror(v15);
      *v18 = 67109378;
      *(v18 + 4) = v15;
      *(v18 + 8) = 2080;
      *(v18 + 10) = v19;
      _LPLogPack(1, v17);
    }

    close(v12);
    v20 = [optionsCopy objectForKeyedSubscript:LPAPFSVolumeRevertOptionSkipRemount[0]];
    if ([v20 BOOLValue])
    {
      v21 = _os_log_pack_size();
      v22 = v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
      v23 = _os_log_pack_fill(v22, v21, 0, &dword_0, "%s: Skipping unmount/remount of %@");
      *v23 = 136315394;
      *(v23 + 4) = "[LPStaticAPFSVolume revertToSnapshot:options:error:]";
      *(v23 + 12) = 2112;
      *(v23 + 14) = mountPoint;
      _LPLogPack(2, v22);
LABEL_28:

      goto LABEL_15;
    }

    if ([(LPStaticAPFSVolume *)self unmountWithError:error])
    {
      if ([(LPStaticAPFSVolume *)self mountAtPath:mountPoint options:optionsCopy error:error])
      {
        v14 = 1;
        goto LABEL_28;
      }

      v35 = _os_log_pack_size();
      v33 = v38 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
      v34 = _os_log_pack_fill(v33, v35, 0, &dword_0, "%s: Failed to remount volume with error: %d");
    }

    else
    {
      v32 = _os_log_pack_size();
      v33 = v38 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
      v34 = _os_log_pack_fill(v33, v32, 0, &dword_0, "%s: Failed to unmount volume with error: %d");
    }

    v36 = v34;
    v37 = *__error();
    *v36 = 136315394;
    *(v36 + 4) = "[LPStaticAPFSVolume revertToSnapshot:options:error:]";
    *(v36 + 12) = 1024;
    *(v36 + 14) = v37;
    _LPLogPack(1, v33);
    v14 = 0;
    goto LABEL_28;
  }

  if (error)
  {
    *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];
  }

  v29 = _os_log_pack_size();
  v30 = v38 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = _os_log_pack_fill(v30, v29, 0, &dword_0, "%s : Could not open device mount %{private}@.");
  *v31 = 136315395;
  *(v31 + 4) = "[LPStaticAPFSVolume revertToSnapshot:options:error:]";
  *(v31 + 12) = 2113;
  *(v31 + 14) = mountPoint;
  v14 = 1;
  _LPLogPack(1, v30);
LABEL_15:

  return v14;
}

- (BOOL)rootToSnapshot:(id)snapshot error:(id *)error
{
  snapshotCopy = snapshot;
  v7 = _os_log_pack_size();
  v8 = _os_log_pack_fill(&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7, 0, &dword_0, "%s: Trying to determine mount point\n", v26);
  *&v9 = 136315138;
  v26 = v9;
  *v8 = 136315138;
  *(v8 + 4) = "[LPStaticAPFSVolume rootToSnapshot:error:]";
  _LPLogPack(3, &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  mountPoint = [(LPStaticMedia *)self mountPoint];
  if (snapshotCopy && [snapshotCopy length])
  {
    [snapshotCopy fileSystemRepresentation];
    if (!mountPoint)
    {
LABEL_4:
      if (error)
      {
        *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      }

      v11 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
      v12 = _os_log_pack_fill(v11, v7, 0, &dword_0, "%s : Could not open device is not mounted.", v26);
      *v12 = v26;
      *(v12 + 4) = "[LPStaticAPFSVolume rootToSnapshot:error:]";
LABEL_17:
      _LPLogPack(1, v11);
      v19 = 0;
      goto LABEL_18;
    }
  }

  else if (!mountPoint)
  {
    goto LABEL_4;
  }

  v13 = _os_log_pack_size();
  v14 = _os_log_pack_fill(&v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v13, 0, &dword_0, "%s: Mount point is %{private}@\n");
  *&v15 = 136315395;
  v26 = v15;
  *v14 = 136315395;
  *(v14 + 4) = "[LPStaticAPFSVolume rootToSnapshot:error:]";
  *(v14 + 12) = 2113;
  *(v14 + 14) = mountPoint;
  _LPLogPack(3, &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = open([mountPoint fileSystemRepresentation], 0);
  if (v16 < 0)
  {
    if (error)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];
    }

    v11 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v24 = _os_log_pack_fill(v11, v13, 0, &dword_0, "%s : Could not open device mount %{private}@.");
    *v24 = v26;
    *(v24 + 4) = "[LPStaticAPFSVolume rootToSnapshot:error:]";
    *(v24 + 12) = 2113;
    *(v24 + 14) = mountPoint;
    goto LABEL_17;
  }

  v17 = v16;
  v18 = fs_snapshot_root();
  v19 = v18 == 0;
  if (v18)
  {
    v20 = *__error();
    if (error)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:v20 userInfo:0];
    }

    v21 = _os_log_pack_size();
    v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = _os_log_pack_fill(v22, v21, 0, &dword_0, "%s : Could not set root from snapshot. Errno: %d", v26, DWORD2(v26));
    *v23 = 136315394;
    *(v23 + 4) = "[LPStaticAPFSVolume rootToSnapshot:error:]";
    *(v23 + 12) = 1024;
    *(v23 + 14) = v20;
    _LPLogPack(1, v22);
  }

  close(v17);
LABEL_18:

  return v19;
}

@end