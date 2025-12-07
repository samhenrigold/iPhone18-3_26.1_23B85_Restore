@interface LPAPFSVolume
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

@implementation LPAPFSVolume

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    if (_is_running_in_ramdisk_onceToken != -1)
    {
      +[LPAPFSVolume initialize];
    }

    v2 = (_is_running_in_ramdisk_is_ramdisk & 1) == 0;

    [LPAPFSVolume _loadMountPointTableForMode:v2];
  }
}

+ (id)supportedContentTypes
{
  v6[1] = *MEMORY[0x29EDCA608];
  if (objc_opt_class() == self)
  {
    v6[0] = LPAPFSVolumeMediaTypeUUID[0];
    v3 = [MEMORY[0x29EDB8D80] arrayWithObjects:v6 count:1];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = &OBJC_METACLASS___LPAPFSVolume;
    v3 = objc_msgSendSuper2(&v5, sel_supportedContentTypes);
  }

  return v3;
}

+ (void)_loadMountPointTableForMode:(int)mode
{
  v3 = (&kLPDefaultMountPointTable + 16 * mode);
  v4 = *v3;
  v5 = *(v3 + 1);
  v6 = [MEMORY[0x29EDB8E00] dictionaryWithCapacity:v4];
  if (v4 >= 1)
  {
    v7 = (v5 + 8);
    do
    {
      v8 = *(v7 - 2);
      v9 = *v7;
      v7 += 2;
      v10 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v9];
      v11 = [MEMORY[0x29EDBA070] numberWithInt:v8];
      [v6 setObject:v10 forKey:v11];

      --v4;
    }

    while (v4);
  }

  v12 = [MEMORY[0x29EDB8DC0] dictionaryWithDictionary:v6];
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
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3254779904;
  v5[2] = __36__LPAPFSVolume_roleMetadataForRole___block_invoke;
  v5[3] = &__block_descriptor_44_e8_32r_e17_v16__0r____iS___8l;
  roleCopy = role;
  v5[4] = &v7;
  [self enumerateRoleMetadataUsingBlock:v5];
  v3 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v3;
}

uint64_t __36__LPAPFSVolume_roleMetadataForRole___block_invoke(uint64_t result, _DWORD *a2)
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
  v4 = [MEMORY[0x29EDBA070] numberWithInt:*&role];
  v5 = [v3 objectForKey:v4];

  return v5;
}

+ (id)defaultVolumeNameGivenRole:(int)role
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3254779904;
  v5[2] = __43__LPAPFSVolume_defaultVolumeNameGivenRole___block_invoke;
  v5[3] = &__block_descriptor_44_e8_32r_e17_v16__0r____iS___8l;
  roleCopy = role;
  v5[4] = &v7;
  [self enumerateRoleMetadataUsingBlock:v5];
  v3 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v3;
}

void __43__LPAPFSVolume_defaultVolumeNameGivenRole___block_invoke(uint64_t a1, uint64_t a2)
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
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v14 = 0;
  v7 = objc_opt_class();
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 3254779904;
  v11[2] = __34__LPAPFSVolume_setRole_withError___block_invoke;
  v11[3] = &__block_descriptor_44_e8_32r_e17_v16__0r____iS___8l;
  roleCopy = role;
  v11[4] = v13;
  [v7 enumerateRoleMetadataUsingBlock:v11];
  bSDName = [(LPMedia *)self BSDName];
  [bSDName fileSystemRepresentation];
  v9 = APFSVolumeRole();

  if (error && v9)
  {
    *error = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:v9 userInfo:0];
  }

  _Block_object_dispose(v13, 8);
  return v9 == 0;
}

uint64_t __34__LPAPFSVolume_setRole_withError___block_invoke(uint64_t result, uint64_t a2)
{
  if (*(result + 40) == *a2)
  {
    *(*(*(result + 32) + 8) + 24) = *(a2 + 4);
  }

  return result;
}

- (int)role
{
  v28 = *MEMORY[0x29EDCA608];
  v27 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  bSDName = [(LPMedia *)self BSDName];
  v4 = bSDName;
  [bSDName fileSystemRepresentation];
  v5 = APFSVolumeRole();

  if (v5)
  {
    v6 = _os_log_pack_size();
    v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v8 = _os_log_pack_fill(v7, v6, 0, &dword_2997D0000, "%s: failed to get role. Error: %d", v15, v16);
    *v8 = 136315394;
    *(v8 + 4) = "[LPAPFSVolume role]";
    *(v8 + 12) = 1024;
    *(v8 + 14) = v5;
    _LPLogPack(1, v7);
  }

  else
  {
    v9 = objc_opt_class();
    v21[0] = MEMORY[0x29EDCA5F8];
    v21[1] = 3254779904;
    v21[2] = __20__LPAPFSVolume_role__block_invoke;
    v21[3] = &__block_descriptor_42_e8_32r_e17_v16__0r____iS___8l;
    v22 = v27;
    v21[4] = &v23;
    [v9 enumerateRoleMetadataUsingBlock:v21];
  }

  v10 = *(v24 + 6);
  if (!v10)
  {
    name = [(LPMedia *)self name];
    v12 = objc_opt_class();
    v15 = MEMORY[0x29EDCA5F8];
    v16 = 3254779904;
    v17 = __20__LPAPFSVolume_role__block_invoke_122;
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

uint64_t __20__LPAPFSVolume_role__block_invoke(uint64_t result, uint64_t a2)
{
  if (*(result + 40) == *(a2 + 4))
  {
    *(*(*(result + 32) + 8) + 24) = *a2;
  }

  return result;
}

void __20__LPAPFSVolume_role__block_invoke_122(uint64_t a1, uint64_t a2)
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
  v7 = *MEMORY[0x29EDCA608];
  v2 = [(LPMedia *)self getStringPropertyWithName:@"VolGroupUUID"];
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
  if (MEMORY[0x29C29F270]([(LPMedia *)self ioMedia], "IOService", 3, &iterator))
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
          v5 = [(LPMedia *)[LPAPFSContainer alloc] initWithIOMediaObject:v4];
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
  devNodePath = [(LPMedia *)self devNodePath];
  [devNodePath fileSystemRepresentation];
  APFSVolumeGetVEKState();

  return 0;
}

- (BOOL)isFilevaultEncrypted
{
  devNodePath = [(LPMedia *)self devNodePath];
  [devNodePath fileSystemRepresentation];
  APFSVolumeGetVEKState();

  return 0;
}

- (id)pairedVolumeWithRole:(int)role
{
  v3 = *&role;
  volumeGroupUUID = [(LPAPFSVolume *)self volumeGroupUUID];
  if ([volumeGroupUUID length])
  {
    container = [(LPAPFSVolume *)self container];
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
  role = [(LPAPFSVolume *)self role];
  if (role == 1)
  {
    v4 = 3;
    goto LABEL_5;
  }

  if (role == 3)
  {
    v4 = 1;
LABEL_5:
    v5 = [(LPAPFSVolume *)self pairedVolumeWithRole:v4];
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (id)snapshotMountPoints
{
  v25[2] = *MEMORY[0x29EDCA608];
  devNodePath = [(LPMedia *)self devNodePath];
  if (devNodePath)
  {
    v3 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"@%@", devNodePath];
    v23 = 0;
    v4 = getmntinfo_r_np(&v23, 0);
    v5 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:13];
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
        v11 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:{v23 + v10, v21}];
        if ([v11 hasSuffix:v3])
        {
          v12 = [v11 substringToIndex:{objc_msgSend(v11, "rangeOfString:options:", @"@", 4)}];

          1024 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v23 + v10 - 1024];
          v24[0] = LPAPFSVolumeSnapshotMountPointKeyName;
          v24[1] = LPAPFSVolumeSnapshotMountPointKeyMountPoint;
          v25[0] = v12;
          v25[1] = 1024;
          v14 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
          [v5 addObject:v14];

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

    if ([v5 count])
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
    v19 = _os_log_pack_fill(v18, v17, 0, &dword_2997D0000, "%s called on device with no dev node", v21);
    *v19 = 136315138;
    *(v19 + 4) = "[LPAPFSVolume snapshotMountPoints]";
    _LPLogPack(1, v18);
    v16 = 0;
  }

  return v16;
}

- (BOOL)isMounted
{
  mountPoint = [(LPMedia *)self mountPoint];
  if (mountPoint)
  {
    v4 = 1;
  }

  else
  {
    snapshotMountPoints = [(LPAPFSVolume *)self snapshotMountPoints];
    v4 = snapshotMountPoints != 0;
  }

  return v4;
}

- (BOOL)eraseVolumeWithError:(id *)error
{
  v12[1] = *MEMORY[0x29EDCA608];
  mountPoint = [(LPMedia *)self mountPoint];
  v5 = mountPoint;
  if (mountPoint)
  {
    v6 = _lp2_delete_directory_contents([mountPoint fileSystemRepresentation]);
    if (error && v6)
    {
      *error = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:v6 userInfo:0];
    }

    v7 = *__error() == 0;
  }

  else
  {
    if (error)
    {
      *error = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:22 userInfo:0];
    }

    v8 = _os_log_pack_size();
    v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v10 = _os_log_pack_fill(v9, v8, 0, &dword_2997D0000, "%s : Failed because target volume is not mounted", v12[0]);
    *v10 = 136315138;
    *(v10 + 4) = "[LPAPFSVolume eraseVolumeWithError:]";
    _LPLogPack(1, v9);
    v7 = 0;
  }

  return v7;
}

- (BOOL)mountWithError:(id *)error
{
  mountPoint = [(LPMedia *)self mountPoint];

  if (mountPoint)
  {
    return 1;
  }

  v7 = [LPAPFSVolume defaultMountPointGivenRole:[(LPAPFSVolume *)self role]];
  if (v7 && (v8 = [LPMedia mediaForPath:v7], v8, !v8))
  {
    v6 = [(LPAPFSVolume *)self mountAtPath:v7 error:error];
  }

  else
  {
    v9 = [(LPAPFSVolume *)self mountAtTemporaryPathWithError:error];
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
      +[LPAPFSVolume initialize];
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
  v13 = *MEMORY[0x29EDCA608];
  if (_is_running_in_ramdisk_onceToken != -1)
  {
    +[LPAPFSVolume initialize];
  }

  bzero(v12, 0x400uLL);
  __strlcpy_chk();
  if (mkdtemp(v12))
  {
    v4 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v12];
  }

  else
  {
    _os_log_pack_size();
    v5 = &v12[-((MEMORY[0x2A1C7C4A8]() + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    v7 = _os_log_pack_fill(v5, v6, 0, &dword_2997D0000, "Couldn't create a temporary mount point %s", v11);
    *v7 = 136315138;
    *(v7 + 4) = v12;
    _LPLogPack(1, v5);
    if (*error)
    {
      v8 = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:*__error() userInfo:0];
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
  v7 = [(LPAPFSVolume *)self _createTemporaryMountPointWithError:error];
  if (v7 && [(LPAPFSVolume *)self mountAtPath:v7 options:optionsCopy error:error])
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
  v91[1] = *MEMORY[0x29EDCA608];
  pathCopy = path;
  optionsCopy = options;
  devNodePath = [(LPMedia *)self devNodePath];
  if (devNodePath)
  {
    mountPoint = [(LPMedia *)self mountPoint];
    v12 = [mountPoint isEqualToString:pathCopy];
    if (optionsCopy || !v12)
    {
      if (!mountPoint || (v22 = _os_log_pack_size(), v23 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v24 = _os_log_pack_fill(v23, v22, 0, &dword_2997D0000, "Volume is already mounted at %@, attempting to re-mount at %@"), *v24 = 138412546, *(v24 + 4) = mountPoint, *(v24 + 12) = 2112, *(v24 + 14) = pathCopy, _LPLogPack(2, v23), v16 = 0, [(LPAPFSVolume *)self unmountWithError:error]))
      {
        v25 = mkpath_np([pathCopy fileSystemRepresentation], 0x1FFu);
        if (v25 && v25 != 17)
        {
          v56 = optionsCopy;
          if (error)
          {
            v57 = MEMORY[0x29EDB9FA0];
            v58 = *MEMORY[0x29EDB9EF8];
            v59 = v25;
            v90 = *MEMORY[0x29EDB9E60];
            v91[0] = pathCopy;
            v60 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v91 forKeys:&v90 count:1];
            *error = [v57 errorWithDomain:v58 code:v59 userInfo:v60];
          }

          v61 = _os_log_pack_size();
          v62 = &v73 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
          v63 = _os_log_pack_fill(v62, v61, 0, &dword_2997D0000, "Can not mount (%{private}s) because we could not create its mount folder (%{private}s).");
          v64 = [(LPMedia *)self description];
          uTF8String = [v64 UTF8String];
          fileSystemRepresentation = [pathCopy fileSystemRepresentation];
          *v63 = 136380931;
          *(v63 + 4) = uTF8String;
          *(v63 + 12) = 2081;
          *(v63 + 14) = fileSystemRepresentation;

          _LPLogPack(1, v62);
          v16 = 0;
          optionsCopy = v56;
        }

        else
        {
          v86 = xmmword_29EF6BA38;
          v87 = unk_29EF6BA48;
          v88 = xmmword_29EF6BA58;
          v89 = 0;
          v84 = xmmword_29EF6BA18;
          v85 = unk_29EF6BA28;
          v26 = [optionsCopy objectForKeyedSubscript:LPAPFSVolumeMountOptionReadOnly];
          v27 = v26;
          v28 = MEMORY[0x29EDB8EA8];
          if (!v26)
          {
            v26 = MEMORY[0x29EDB8EA8];
          }

          v29 = v26;

          v78 = v29;
          if ([v29 BOOLValue])
          {
            *(&v84 + 1) = "-o";
            *&v85 = "rdonly";
            v30 = 3;
          }

          else
          {
            v30 = 1;
          }

          v31 = [optionsCopy objectForKeyedSubscript:LPAPFSVolumeMountOptionNoBrowse];
          v32 = v31;
          if (!v31)
          {
            v31 = MEMORY[0x29EDB8EB0];
          }

          v33 = v31;

          v77 = v33;
          if ([v33 BOOLValue])
          {
            *(&v84 + v30) = "-o";
            v34 = v30 + 1;
            v30 += 2;
            *(&v84 + v34) = "nobrowse";
          }

          v35 = [optionsCopy objectForKeyedSubscript:LPAPFSVolumeMountOptionNoFirmlinks];
          v36 = v35;
          if (!v35)
          {
            v35 = v28;
          }

          v37 = v35;

          v76 = v37;
          if ([v37 BOOLValue])
          {
            *(&v84 + v30++) = "-n";
          }

          errorCopy = error;
          v79 = mountPoint;
          v38 = [optionsCopy objectForKeyedSubscript:LPAPFSVolumeMountOptionSnapshotName];
          v73 = [v38 length];
          v80 = optionsCopy;
          v75 = v38;
          if (v73)
          {
            v39 = v30 + 1;
            *(&v84 + v30) = "-s";
            v30 += 2;
            *(&v84 + v39) = [v38 fileSystemRepresentation];
          }

          *(&v84 + v30) = [devNodePath fileSystemRepresentation];
          *(&v84 + v30 + 1) = [pathCopy fileSystemRepresentation];
          v40 = _execForLibpartition(&v84);
          if (v40 == 75)
          {
            v41 = _os_log_pack_size();
            v42 = 0;
            *&v43 = 138412802;
            v81 = v43;
            do
            {
              v44 = _os_log_pack_fill(&v73 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0), v41, 0, &dword_2997D0000, "mount_apfs %@ returned %d, retrying (%d)", v73);
              *v44 = v81;
              *(v44 + 4) = devNodePath;
              *(v44 + 12) = 1024;
              *(v44 + 14) = 75;
              *(v44 + 18) = 1024;
              *(v44 + 20) = v42;
              _LPLogPack(1, &v73 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
              sleep(3u);
              v40 = _execForLibpartition(&v84);
              if (v40 != 75)
              {
                break;
              }
            }

            while (v42++ < 2);
          }

          v16 = v40 == 0;
          if (v40)
          {
            mountPoint = v79;
            v46 = errorCopy;
            if (errorCopy)
            {
              v47 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"mount_apfs returned : %d", v40];
              v48 = MEMORY[0x29EDB9FA0];
              v49 = *MEMORY[0x29EDB9EF8];
              v50 = *MEMORY[0x29EDB9ED8];
              v82[0] = *MEMORY[0x29EDB9EE0];
              v82[1] = v50;
              v83[0] = @"Mount failed";
              v83[1] = v47;
              v51 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v83 forKeys:v82 count:2];
              *v46 = [v48 errorWithDomain:v49 code:22 userInfo:v51];
            }

            v52 = _os_log_pack_size();
            v53 = &v73 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
            v54 = _os_log_pack_fill(v53, v52, 0, &dword_2997D0000, "Can not mount (%@) because mount returned %d.");
            *v54 = 138412546;
            *(v54 + 4) = devNodePath;
            *(v54 + 12) = 1024;
            *(v54 + 14) = v40;
            _LPLogPack(1, v53);
            optionsCopy = v80;
            v55 = v75;
          }

          else
          {
            mountPoint = v79;
            v55 = v75;
            if (v73)
            {
              v67 = _os_log_pack_size();
              v68 = &v73 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
              v69 = _os_log_pack_fill(v68, v67, 0, &dword_2997D0000, "Mounted %@, Snapshot( %{private}@) at %{private}@");
              *v69 = 138412803;
              *(v69 + 4) = devNodePath;
              *(v69 + 12) = 2113;
              *(v69 + 14) = v55;
              *(v69 + 22) = 2113;
              *(v69 + 24) = pathCopy;
            }

            else
            {
              v70 = _os_log_pack_size();
              v68 = &v73 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
              v71 = _os_log_pack_fill(v68, v70, 0, &dword_2997D0000, "Mounted %@ at %{private}@");
              *v71 = 138412547;
              *(v71 + 4) = devNodePath;
              *(v71 + 12) = 2113;
              *(v71 + 14) = pathCopy;
            }

            _LPLogPack(2, v68);
            optionsCopy = v80;
          }
        }
      }
    }

    else
    {
      v13 = _os_log_pack_size();
      v14 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = _os_log_pack_fill(v14, v13, 0, &dword_2997D0000, "Volume is already mounted at %@, skipping re-mount");
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
      *error = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:22 userInfo:0];
    }

    v17 = _os_log_pack_size();
    v18 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = _os_log_pack_fill(v18, v17, 0, &dword_2997D0000, "Can not mount (%s) because it does not appear to have a device node.", v73);
    v20 = [(LPMedia *)self description];
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
  v110 = *MEMORY[0x29EDCA608];
  optionsCopy = options;
  v83 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:1];
  v6 = [optionsCopy objectForKey:LPAPFSVolumeUnmountOptionAll];
  bOOLValue = [v6 BOOLValue];

  v8 = [optionsCopy objectForKey:LPAPFSVolumeUnmountOptionSnapshotName];
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
    mountPoint = [(LPMedia *)self mountPoint];

    if (!mountPoint)
    {
      goto LABEL_28;
    }

    mountPoint2 = [(LPMedia *)self mountPoint];
    [v83 addObject:mountPoint2];
  }

  else
  {
    mountPoint2 = [(LPAPFSVolume *)self snapshotMountPoints];
    mountPoint3 = [(LPMedia *)self mountPoint];
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
              v18 = [v17 objectForKey:LPAPFSVolumeSnapshotMountPointKeyMountPoint];
              [v83 addObject:v18];
            }

            else
            {
              v19 = [optionsCopy objectForKey:LPAPFSVolumeSnapshotMountPointKeyName];
              v20 = v15;
              v21 = bOOLValue;
              v22 = [v17 objectForKey:v19];
              v23 = [optionsCopy objectForKey:LPAPFSVolumeUnmountOptionSnapshotName];
              v24 = [v22 isEqualToString:v23];

              v25 = v22;
              bOOLValue = v21;
              v15 = v20;
              v14 = v96;

              if (v24)
              {
                v26 = [v17 objectForKey:LPAPFSVolumeSnapshotMountPointKeyMountPoint];
                [v83 addObject:v26];

                if ((bOOLValue & 1) == 0)
                {

                  self = selfCopy;
                  mountPoint2 = v95;
                  v12 = v93;
                  goto LABEL_26;
                }
              }
            }

            ++v16;
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
      [v83 addObject:v12];
    }

LABEL_26:
  }

LABEL_28:
  v89 = optionsCopy;
  if ([v83 count])
  {
    [v83 sortUsingComparator:&__block_literal_global];
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v87 = v83;
    v90 = [v87 countByEnumeratingWithState:&v100 objects:v108 count:16];
    if (!v90)
    {
      v74 = 0;
      goto LABEL_72;
    }

    v88 = *v101;
    v92 = *MEMORY[0x29EDB9EF8];
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
          v32 = [optionsCopy objectForKey:LPAPFSVolumeUnmountOptionForce];
          v33 = v32 != 0;

          LODWORD(v98) = v33 << 19;
          v34 = [optionsCopy objectForKey:LPAPFSVolumeUnmountOptionDoNotLock];

          if (v34)
          {
            v99 = 1;
            if (fsctl([v31 fileSystemRepresentation], 0x80014A22uLL, &v99, 0))
            {
              if (*__error() == 17)
              {
                v35 = _os_log_pack_size();
                v36 = &v82 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
                v37 = _os_log_pack_fill(v36, v35, 0, &dword_2997D0000, "Call to APFS_FSCTL_UNMOUNT_CRYPTO_HINT on %@ returned EEXIST\n");
                devNodePath = [(LPMedia *)self devNodePath];
                *v37 = v84;
                *(v37 + 4) = devNodePath;
                v39 = 2;
                v40 = v36;
              }

              else
              {
                v41 = _os_log_pack_size();
                v42 = &v82 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
                v43 = _os_log_pack_fill(v42, v41, 0, &dword_2997D0000, "Failed to call APFS_FSCTL_UNMOUNT_CRYPTO_HINT on %@ with errno %d\n");
                devNodePath = [(LPMedia *)self devNodePath];
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
            *_os_log_pack_fill(v50, v49, 0, &dword_2997D0000, "Unmount failed with EINVAL, will assume race. Ignoring error.") = 0;
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
            if (v45 == 3 && v47 == 16 && [(LPAPFSVolume *)selfCopy role]!= 12)
            {
              LODWORD(v98) = v98 | 0x80000;
              sleep(3u);
              v59 = _os_log_pack_size();
              v60 = &v82 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
              v61 = _os_log_pack_fill(v60, v59, 0, &dword_2997D0000, "Failed to unmount %@ **FORCING UNMOUNT** error: %d");
              devNodePath2 = [(LPMedia *)v48 devNodePath];
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
            *v52 = [MEMORY[0x29EDB9FA0] errorWithDomain:v92 code:v47 userInfo:0];
          }

LABEL_56:
          v53 = _os_log_pack_size();
          v54 = &v82 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
          v55 = _os_log_pack_fill(v54, v53, 0, &dword_2997D0000, "Failed to unmount %@ retry: %s error: %d");
          devNodePath3 = [(LPMedia *)v48 devNodePath];
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
        v66 = _os_log_pack_fill(v65, v64, 0, &dword_2997D0000, "Unmounted %@(%{private}@)");
        self = selfCopy;
        devNodePath4 = [(LPMedia *)selfCopy devNodePath];
        *v66 = v86;
        *(v66 + 4) = devNodePath4;
        *(v66 + 12) = 2113;
        *(v66 + 14) = v31;
        _LPLogPack(2, v65);

        if ([(LPAPFSVolume *)self _pathIsTemporaryMount:v31])
        {
          if (rmdir([v31 fileSystemRepresentation]))
          {
            v68 = _os_log_pack_size();
            v69 = &v82 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
            v70 = _os_log_pack_fill(v69, v68, 0, &dword_2997D0000, "Failed to clean up temporary mount point: %d", v82);
            v71 = *__error();
            *v70 = v85;
            v70[1] = v71;
            v72 = 1;
          }

          else
          {
            v75 = _os_log_pack_size();
            v69 = &v82 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
            *_os_log_pack_fill(v69, v75, 0, &dword_2997D0000, "Cleaned up temporary mount point") = 0;
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
      v90 = [v87 countByEnumeratingWithState:&v100 objects:v108 count:16];
      if (!v90)
      {
LABEL_72:

        goto LABEL_73;
      }
    }
  }

  v76 = _os_log_pack_size();
  v77 = &v82 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = _os_log_pack_fill(v77, v76, 0, &dword_2997D0000, "Was asked asked to unmount (%@) but is not mounted.");
  devNodePath5 = [(LPMedia *)self devNodePath];
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
  v8[1] = *MEMORY[0x29EDCA608];
  v7 = LPAPFSVolumeUnmountOptionAll;
  v8[0] = MEMORY[0x29EDB8EB0];
  v5 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  LOBYTE(error) = [(LPAPFSVolume *)self unmountWithOptions:v5 error:error];

  return error;
}

- (BOOL)deleteVolumeWithError:(id *)error
{
  v29 = *MEMORY[0x29EDCA608];
  devNodePath = [(LPMedia *)self devNodePath];
  if (devNodePath)
  {
    v5 = _os_log_pack_size();
    v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v7 = _os_log_pack_fill(v6, v5, 0, &dword_2997D0000, "%s : going to delete apfs volume(%@)");
    *&v8 = 136315394;
    v28 = v8;
    *v7 = 136315394;
    *(v7 + 4) = "[LPAPFSVolume deleteVolumeWithError:]";
    *(v7 + 12) = 2112;
    *(v7 + 14) = devNodePath;
    _LPLogPack(2, v6);
    [devNodePath fileSystemRepresentation];
    v9 = APFSVolumeDelete();
    if (!v9)
    {
      v20 = 1;
      goto LABEL_18;
    }

    v10 = v9;
    if (v9 >> 26 == 56)
    {
      v11 = _os_log_pack_size();
      v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      v13 = _os_log_pack_fill(v12, v11, 0, &dword_2997D0000, "%s : failed with iokit error: %d", v28, DWORD2(v28));
      v14 = v10 & 0x3FFF;
      *v13 = v28;
      *(v13 + 4) = "[LPAPFSVolume deleteVolumeWithError:]";
      *(v13 + 12) = 1024;
      *(v13 + 14) = v14;
      _LPLogPack(1, v12);
      if (error)
      {
        v15 = MEMORY[0x29EDB9FA0];
        v16 = @"com.apple.IOKit";
LABEL_14:
        v25 = v14;
LABEL_17:
        v20 = 0;
        *error = [v15 errorWithDomain:v16 code:v25 userInfo:0];
        goto LABEL_18;
      }
    }

    else
    {
      v21 = v9 & 0xFFFFC000;
      v22 = _os_log_pack_size();
      v23 = &v28 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (v21 == 49152)
      {
        v24 = _os_log_pack_fill(&v28 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v22, 0, &dword_2997D0000, "%s : failed with posix error: %d", v28, DWORD2(v28));
        v14 = v10 & 0x3FFF;
        *v24 = v28;
        *(v24 + 4) = "[LPAPFSVolume deleteVolumeWithError:]";
        *(v24 + 12) = 1024;
        *(v24 + 14) = v14;
        _LPLogPack(1, v23);
        if (error)
        {
          v15 = MEMORY[0x29EDB9FA0];
          v16 = *MEMORY[0x29EDB9EF8];
          goto LABEL_14;
        }
      }

      else
      {
        v26 = _os_log_pack_fill(&v28 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v22, 0, &dword_2997D0000, "%s : failed with unknown kern_return_t error: %d", v28, DWORD2(v28));
        *v26 = v28;
        *(v26 + 4) = "[LPAPFSVolume deleteVolumeWithError:]";
        *(v26 + 12) = 1024;
        *(v26 + 14) = v10;
        _LPLogPack(1, v23);
        if (error)
        {
          v15 = MEMORY[0x29EDB9FA0];
          v16 = *MEMORY[0x29EDB9EF0];
          v25 = v10;
          goto LABEL_17;
        }
      }
    }
  }

  else
  {
    if (error)
    {
      *error = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:22 userInfo:0];
    }

    v17 = _os_log_pack_size();
    v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = _os_log_pack_fill(v18, v17, 0, &dword_2997D0000, "%s : volume is missing a dev node somehow", v28);
    *v19 = 136315138;
    *(v19 + 4) = "[LPAPFSVolume deleteVolumeWithError:]";
    _LPLogPack(1, v18);
  }

  v20 = 0;
LABEL_18:

  return v20;
}

- (id)snapshotsWithError:(id *)error
{
  v17 = *MEMORY[0x29EDCA608];
  v3 = [(LPAPFSVolume *)self snapshotInfoWithError:error];
  v4 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:10];
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
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v12 + 1) + 8 * i) objectForKey:{LPAPFSSnapshotPropertyKeyName[0], v12}];
          if (v10)
          {
            [v4 addObject:v10];
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
  v58[256] = *MEMORY[0x29EDCA608];
  mountPoint = [(LPMedia *)self mountPoint];
  v6 = mountPoint;
  if (!mountPoint)
  {
    if (error)
    {
      *error = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:22 userInfo:0];
    }

    v37 = _os_log_pack_size();
    v38 = &errorCopy - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
    v39 = _os_log_pack_fill(v38, v37, 0, &dword_2997D0000, "%s called but %{private}@ is not mounted.");
    v40 = [(LPMedia *)self description];
    *v39 = 136315395;
    *(v39 + 4) = "[LPAPFSVolume snapshotInfoWithError:]";
    *(v39 + 12) = 2113;
    *(v39 + 14) = v40;
    _LPLogPack(1, v38);

    goto LABEL_43;
  }

  v7 = open([mountPoint fileSystemRepresentation], 0x100000);
  if (v7 < 0)
  {
    if (error)
    {
      *error = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:*__error() userInfo:0];
    }

    v41 = _os_log_pack_size();
    v42 = &errorCopy - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
    v43 = _os_log_pack_fill(v42, v41, 0, &dword_2997D0000, "%s : Unable to open mount point %{private}@: %d");
    *v43 = 136315651;
    *(v43 + 4) = "[LPAPFSVolume snapshotInfoWithError:]";
    *(v43 + 12) = 2113;
    *(v43 + 14) = v6;
    *(v43 + 22) = 1024;
    *(v43 + 24) = 0;
    _LPLogPack(1, v42);
LABEL_43:
    v36 = 0;
    goto LABEL_47;
  }

  v8 = v7;
  errorCopy = error;
  v50 = v6;
  v52 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:10];
  *&v57.volattr = 0;
  *&v57.fileattr = 0;
  bzero(v58, 0x800uLL);
  *&v57.bitmapcount = 0xA000002100000005;
  v9 = fs_snapshot_list(v8, &v57, v58, 0x800uLL, 0);
  if (v9 >= 1)
  {
    v11 = v58;
    *&v10 = 136315395;
    v51 = v10;
    *&v10 = 136315394;
    v53 = v10;
    v54 = v8;
    do
    {
      do
      {
        v12 = __OFSUB__(v9--, 1);
        if (v9 < 0 != v12)
        {
          break;
        }

        v13 = (v11 + 6);
        v14 = v11[1];
        v56 = *v11;
        if ((v14 & 0x20000000) != 0)
        {
          v17 = *v13;
          v18 = _os_log_pack_size();
          v19 = &errorCopy - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
          v20 = _os_log_pack_fill(v19, v18, 0, &dword_2997D0000, "%s : Error in reading attributes for directory entry %d", errorCopy, v50);
          *v20 = v53;
          *(v20 + 4) = "[LPAPFSVolume snapshotInfoWithError:]";
          *(v20 + 12) = 1024;
          *(v20 + 14) = v17;
          _LPLogPack(1, v19);
        }

        else
        {
          if (v14)
          {
            v21 = v13 + *v13;
            v15 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v21];
            if (!v15)
            {
              v22 = _os_log_pack_size();
              v23 = &errorCopy - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
              v24 = _os_log_pack_fill(v23, v22, 0, &dword_2997D0000, "%s : Failed to encode snapshot name %{private}s for some reason.");
              *v24 = v51;
              *(v24 + 4) = "[LPAPFSVolume snapshotInfoWithError:]";
              *(v24 + 12) = 2081;
              *(v24 + 14) = v21;
              _LPLogPack(2, v23);
              v15 = 0;
            }

            v13 = (v11 + 8);
            v16 = v11[1];
          }

          else
          {
            v15 = 0;
            LOBYTE(v16) = v14;
          }

          v55 = v15;
          if ((v16 & 0x20) != 0)
          {
            v28 = *v13;
            0x3FFFFFFFFFFFFFFFLL = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:*v13 & 0x3FFFFFFFFFFFFFFFLL];
            v29 = MEMORY[0x29EDB8EB0];
            v30 = MEMORY[0x29EDB8EA8];
            if ((v28 & 0x4000000000000000) != 0)
            {
              v31 = MEMORY[0x29EDB8EB0];
            }

            else
            {
              v31 = MEMORY[0x29EDB8EA8];
            }

            v26 = v31;
            if (v28 < 0)
            {
              v32 = v29;
            }

            else
            {
              v32 = v30;
            }

            v25 = v32;
          }

          else
          {
            v25 = 0;
            v26 = 0;
            0x3FFFFFFFFFFFFFFFLL = 0;
          }

          v33 = [MEMORY[0x29EDB8E00] dictionaryWithCapacity:4];
          v34 = v33;
          if (v55)
          {
            [v33 setObject:v55 forKey:LPAPFSSnapshotPropertyKeyName[0]];
          }

          if (0x3FFFFFFFFFFFFFFFLL)
          {
            [v34 setObject:0x3FFFFFFFFFFFFFFFLL forKey:LPAPFSSnapshotPropertyKeyXID[0]];
          }

          if (v26)
          {
            [v34 setObject:v26 forKey:LPAPFSSnapshotPropertyKeyMarkedForRevert];
          }

          if (v25)
          {
            [v34 setObject:v25 forKey:LPAPFSSnapshotPropertyKeyMarkedForRoot[0]];
          }

          if ([v34 count])
          {
            [v52 addObject:v34];
          }

          v8 = v54;
        }

        v11 = (v11 + v56);
      }

      while ((v14 & 0x20000000) == 0);
      v11 = v58;
      v9 = fs_snapshot_list(v8, &v57, v58, 0x800uLL, 0);
    }

    while (v9 > 0);
  }

  if (v9 < 0)
  {
    v44 = _os_log_pack_size();
    v45 = &errorCopy - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
    v46 = _os_log_pack_fill(v45, v44, 0, &dword_2997D0000, "%s : fs_snapshot_list failed with error %d", errorCopy, v50);
    *v46 = 136315394;
    *(v46 + 4) = "[LPAPFSVolume snapshotInfoWithError:]";
    *(v46 + 12) = 1024;
    *(v46 + 14) = v9;
    _LPLogPack(1, v45);
    close(v8);
    v47 = errorCopy;
    v35 = v52;
    v36 = 0;
    if (errorCopy)
    {
      *v47 = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:v9 userInfo:0];
    }
  }

  else
  {
    close(v8);
    v35 = v52;
    v36 = [MEMORY[0x29EDB8D80] arrayWithArray:v52];
  }

  v6 = v50;
LABEL_47:

  return v36;
}

- (BOOL)createSnapshot:(id)snapshot error:(id *)error
{
  v25 = *MEMORY[0x29EDCA608];
  snapshotCopy = snapshot;
  mountPoint = [(LPMedia *)self mountPoint];
  if (!snapshotCopy || ![snapshotCopy length])
  {
    if (error)
    {
      *error = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:22 userInfo:0];
    }

    v17 = _os_log_pack_size();
    v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = _os_log_pack_fill(v18, v17, 0, &dword_2997D0000, "%s : Need a valid snapshot name.");
    goto LABEL_13;
  }

  if (!mountPoint)
  {
    if (error)
    {
      *error = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:22 userInfo:0];
    }

    v21 = _os_log_pack_size();
    v18 = &v24 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = _os_log_pack_fill(v18, v21, 0, &dword_2997D0000, "%s : Could not open device is not mounted.");
LABEL_13:
    *v19 = 136315138;
    *(v19 + 4) = "[LPAPFSVolume createSnapshot:error:]";
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
      *error = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:*__error() userInfo:0];
    }

    v22 = _os_log_pack_size();
    v18 = &v24 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = _os_log_pack_fill(v18, v22, 0, &dword_2997D0000, "%s : Could not open device mount %{private}@.");
    *v23 = 136315395;
    *(v23 + 4) = "[LPAPFSVolume createSnapshot:error:]";
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
      *error = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:v12 userInfo:0];
    }

    v13 = _os_log_pack_size();
    v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = _os_log_pack_fill(v14, v13, 0, &dword_2997D0000, "create snapshot operation failed: %d %s", v24, v25);
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
  v50 = *MEMORY[0x29EDCA608];
  snapshotsCopy = snapshots;
  mountPoint = [(LPMedia *)self mountPoint];
  if (!snapshotsCopy)
  {
    if (error)
    {
      *error = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:22 userInfo:0];
    }

    v26 = _os_log_pack_size();
    v27 = &errorCopy - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    v28 = _os_log_pack_fill(v27, v26, 0, &dword_2997D0000, "%s : Need a valid snapshot names.");
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
      *error = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:22 userInfo:0];
    }

    v29 = _os_log_pack_size();
    v27 = &errorCopy - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    v28 = _os_log_pack_fill(v27, v29, 0, &dword_2997D0000, "%s : Could not open device is not mounted.");
LABEL_26:
    *v28 = 136315138;
    *(v28 + 4) = "[LPAPFSVolume deleteSnapshots:waitForDeletionFor:error:]";
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
      *error = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:*__error() userInfo:0];
    }

    v32 = _os_log_pack_size();
    v33 = &errorCopy - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
    v34 = _os_log_pack_fill(v33, v32, 0, &dword_2997D0000, "%s : Failed to open media for snapshot delete: %d", errorCopy, v40);
    v35 = *__error();
    *v34 = 136315394;
    *(v34 + 4) = "[LPAPFSVolume deleteSnapshots:waitForDeletionFor:error:]";
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
      for (i = 0; i != v15; ++i)
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
          v22 = _os_log_pack_fill(v21, v20, 0, &dword_2997D0000, "%s : Failed to delete snapshot: %{private}@, %d");
          v23 = *__error();
          *v22 = v43;
          *(v22 + 4) = "[LPAPFSVolume deleteSnapshots:waitForDeletionFor:error:]";
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
        *v24 = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:v16 userInfo:0];
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
      v38 = _os_log_pack_fill(v37, v36, 0, &dword_2997D0000, "%s : Waiting for snapshots to delete timed out", errorCopy);
      *v38 = 136315138;
      *(v38 + 4) = "[LPAPFSVolume deleteSnapshots:waitForDeletionFor:error:]";
      _LPLogPack(1, v37);
    }
  }

  close(v11);
LABEL_28:

  return v25 & 1;
}

- (BOOL)renameSnapshot:(id)snapshot to:(id)to error:(id *)error
{
  v29 = *MEMORY[0x29EDCA608];
  snapshotCopy = snapshot;
  toCopy = to;
  mountPoint = [(LPMedia *)self mountPoint];
  if (!snapshotCopy || ![snapshotCopy length])
  {
    if (error)
    {
      *error = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:22 userInfo:0];
    }

    v20 = _os_log_pack_size();
    v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    v22 = _os_log_pack_fill(v21, v20, 0, &dword_2997D0000, "%s : Need a valid snapshot name.");
    goto LABEL_18;
  }

  if (!toCopy || ![toCopy length])
  {
    if (error)
    {
      *error = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:22 userInfo:0];
    }

    v23 = _os_log_pack_size();
    v21 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    v22 = _os_log_pack_fill(v21, v23, 0, &dword_2997D0000, "%s : Need a valid new snapshot name.");
    goto LABEL_18;
  }

  if (!mountPoint)
  {
    if (error)
    {
      *error = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:22 userInfo:0];
    }

    v25 = _os_log_pack_size();
    v21 = &v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    v22 = _os_log_pack_fill(v21, v25, 0, &dword_2997D0000, "%s : Could not open device is not mounted.");
LABEL_18:
    *v22 = 136315138;
    *(v22 + 4) = "[LPAPFSVolume renameSnapshot:to:error:]";
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
      *error = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:*__error() userInfo:0];
    }

    v26 = _os_log_pack_size();
    v21 = &v28 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    v27 = _os_log_pack_fill(v21, v26, 0, &dword_2997D0000, "%s : Could not open device mount %{private}@.");
    *v27 = 136315395;
    *(v27 + 4) = "[LPAPFSVolume renameSnapshot:to:error:]";
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
      *error = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:v15 userInfo:0];
    }

    v16 = _os_log_pack_size();
    v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = _os_log_pack_fill(v17, v16, 0, &dword_2997D0000, "rename snapshot operation failed: %d %s", v28, v29);
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
  v39 = *MEMORY[0x29EDCA608];
  snapshotCopy = snapshot;
  optionsCopy = options;
  mountPoint = [(LPMedia *)self mountPoint];
  if (!snapshotCopy || ![snapshotCopy length])
  {
    if (error)
    {
      *error = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:22 userInfo:0];
    }

    v24 = _os_log_pack_size();
    v25 = &v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    v26 = _os_log_pack_fill(v25, v24, 0, &dword_2997D0000, "%s : Need a valid new snapshot name.");
    goto LABEL_14;
  }

  if (!mountPoint)
  {
    if (error)
    {
      *error = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:22 userInfo:0];
    }

    v28 = _os_log_pack_size();
    v25 = &v38 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    v26 = _os_log_pack_fill(v25, v28, 0, &dword_2997D0000, "%s : Could not open device is not mounted.");
LABEL_14:
    *v26 = 136315138;
    *(v26 + 4) = "[LPAPFSVolume revertToSnapshot:options:error:]";
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
        *error = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:v15 userInfo:0];
      }

      v16 = _os_log_pack_size();
      v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      v18 = _os_log_pack_fill(v17, v16, 0, &dword_2997D0000, "revert snapshot operation failed: %d %s", &v38, v39);
      v19 = strerror(v15);
      *v18 = 67109378;
      *(v18 + 4) = v15;
      *(v18 + 8) = 2080;
      *(v18 + 10) = v19;
      _LPLogPack(1, v17);
    }

    close(v12);
    v20 = [optionsCopy objectForKeyedSubscript:LPAPFSVolumeRevertOptionSkipRemount];
    if ([v20 BOOLValue])
    {
      v21 = _os_log_pack_size();
      v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
      v23 = _os_log_pack_fill(v22, v21, 0, &dword_2997D0000, "%s: Skipping unmount/remount of %@");
      *v23 = 136315394;
      *(v23 + 4) = "[LPAPFSVolume revertToSnapshot:options:error:]";
      *(v23 + 12) = 2112;
      *(v23 + 14) = mountPoint;
      _LPLogPack(2, v22);
LABEL_28:

      goto LABEL_15;
    }

    if ([(LPAPFSVolume *)self unmountWithError:error])
    {
      if ([(LPAPFSVolume *)self mountAtPath:mountPoint options:optionsCopy error:error])
      {
        v14 = 1;
        goto LABEL_28;
      }

      v35 = _os_log_pack_size();
      v33 = &v38 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
      v34 = _os_log_pack_fill(v33, v35, 0, &dword_2997D0000, "%s: Failed to remount volume with error: %d");
    }

    else
    {
      v32 = _os_log_pack_size();
      v33 = &v38 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
      v34 = _os_log_pack_fill(v33, v32, 0, &dword_2997D0000, "%s: Failed to unmount volume with error: %d");
    }

    v36 = v34;
    v37 = *__error();
    *v36 = 136315394;
    *(v36 + 4) = "[LPAPFSVolume revertToSnapshot:options:error:]";
    *(v36 + 12) = 1024;
    *(v36 + 14) = v37;
    _LPLogPack(1, v33);
    v14 = 0;
    goto LABEL_28;
  }

  if (error)
  {
    *error = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:*__error() userInfo:0];
  }

  v29 = _os_log_pack_size();
  v30 = &v38 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = _os_log_pack_fill(v30, v29, 0, &dword_2997D0000, "%s : Could not open device mount %{private}@.");
  *v31 = 136315395;
  *(v31 + 4) = "[LPAPFSVolume revertToSnapshot:options:error:]";
  *(v31 + 12) = 2113;
  *(v31 + 14) = mountPoint;
  v14 = 1;
  _LPLogPack(1, v30);
LABEL_15:

  return v14;
}

- (BOOL)rootToSnapshot:(id)snapshot error:(id *)error
{
  v27 = *MEMORY[0x29EDCA608];
  snapshotCopy = snapshot;
  v7 = _os_log_pack_size();
  v8 = _os_log_pack_fill(&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7, 0, &dword_2997D0000, "%s: Trying to determine mount point\n", v26);
  *&v9 = 136315138;
  v26 = v9;
  *v8 = 136315138;
  *(v8 + 4) = "[LPAPFSVolume rootToSnapshot:error:]";
  _LPLogPack(3, &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  mountPoint = [(LPMedia *)self mountPoint];
  if (snapshotCopy && [snapshotCopy length])
  {
    [snapshotCopy fileSystemRepresentation];
    if (!mountPoint)
    {
LABEL_4:
      if (error)
      {
        *error = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:22 userInfo:0];
      }

      v11 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
      v12 = _os_log_pack_fill(v11, v7, 0, &dword_2997D0000, "%s : Could not open device is not mounted.", v26);
      *v12 = v26;
      *(v12 + 4) = "[LPAPFSVolume rootToSnapshot:error:]";
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
  v14 = _os_log_pack_fill(&v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v13, 0, &dword_2997D0000, "%s: Mount point is %{private}@\n");
  *&v15 = 136315395;
  v26 = v15;
  *v14 = 136315395;
  *(v14 + 4) = "[LPAPFSVolume rootToSnapshot:error:]";
  *(v14 + 12) = 2113;
  *(v14 + 14) = mountPoint;
  _LPLogPack(3, &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = open([mountPoint fileSystemRepresentation], 0);
  if (v16 < 0)
  {
    if (error)
    {
      *error = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:*__error() userInfo:0];
    }

    v11 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v24 = _os_log_pack_fill(v11, v13, 0, &dword_2997D0000, "%s : Could not open device mount %{private}@.");
    *v24 = v26;
    *(v24 + 4) = "[LPAPFSVolume rootToSnapshot:error:]";
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
      *error = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:v20 userInfo:0];
    }

    v21 = _os_log_pack_size();
    v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = _os_log_pack_fill(v22, v21, 0, &dword_2997D0000, "%s : Could not set root from snapshot. Errno: %d", v26, DWORD2(v26));
    *v23 = 136315394;
    *(v23 + 4) = "[LPAPFSVolume rootToSnapshot:error:]";
    *(v23 + 12) = 1024;
    *(v23 + 14) = v20;
    _LPLogPack(1, v22);
  }

  close(v17);
LABEL_18:

  return v19;
}

@end