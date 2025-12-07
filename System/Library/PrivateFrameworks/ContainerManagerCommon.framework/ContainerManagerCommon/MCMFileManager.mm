@interface MCMFileManager
+ (id)defaultManager;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)diskUsageForURL:(id)l;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)fastDiskUsageForURL:(id)l;
- (BOOL)_CreateSystemUserACEInACL:(_acl *)l withPermissions:(int)permissions andFlags:(int)flags withError:(id *)error;
- (BOOL)_copyItemAtURL:(id)l toURL:(id)rL failIfSrcMissing:(BOOL)missing error:(id *)error;
- (BOOL)_enumeratePOSIX1eACLEntriesAtURL:(id)l error:(id *)error usingBlock:(id)block;
- (BOOL)_fixACLOnFD:(int)d removeACLFilesec:(_filesec *)filesec denyDeleteFilesec:(_filesec *)deleteFilesec denyDeleteText:(const char *)text path:(const char *)path error:(id *)error;
- (BOOL)_fixFlagsOnFD:(int)d FTSENT:(_ftsent *)t stat:(stat *)stat error:(id *)error;
- (BOOL)_fixOwnershipOnFD:(int)d FTSENT:(_ftsent *)t stat:(stat *)stat statfs:(statfs *)statfs uid:(unsigned int)uid gid:(unsigned int)gid error:(id *)error;
- (BOOL)_fixPOSIXBitsOnFD:(int)d FTSENT:(_ftsent *)t stat:(stat *)stat error:(id *)error;
- (BOOL)_fixPOSIXPermsOnFD:(int)d FTSENT:(_ftsent *)t stat:(stat *)stat error:(id *)error;
- (BOOL)_moveItemAtURL:(id)l toURL:(id)rL failIfSrcMissing:(BOOL)missing error:(id *)error;
- (BOOL)_traverseDirectory:(id)directory error:(id *)error withBlock:(id)block;
- (BOOL)_validateSymlink:(id)symlink withStartingDepth:(unsigned int)depth andEndingDepth:(unsigned int *)endingDepth;
- (BOOL)_withEveryoneDenyDeleteACLDoBlock:(id)block;
- (BOOL)checkFileSystemAtURL:(id)l isCaseSensitive:(BOOL *)sensitive canAtomicSwap:(BOOL *)swap error:(id *)error;
- (BOOL)checkFileSystemAtURL:(id)l supportsPerFileKeys:(BOOL *)keys error:(id *)error;
- (BOOL)compareVolumeForURL:(id)l versusURL:(id)rL isSameVolume:(BOOL *)volume error:(id *)error;
- (BOOL)copyItemAtURL:(id)l toURL:(id)rL error:(id *)error;
- (BOOL)copyItemIfExistsAtURL:(id)l toURL:(id)rL error:(id *)error;
- (BOOL)createDirectoryAtURL:(id)l withIntermediateDirectories:(BOOL)directories mode:(unsigned __int16)mode dataProtectionClass:(int)class error:(id *)error;
- (BOOL)createDirectoryAtURL:(id)l withIntermediateDirectories:(BOOL)directories mode:(unsigned __int16)mode error:(id *)error;
- (BOOL)createDirectoryAtURL:(id)l withIntermediateDirectories:(BOOL)directories mode:(unsigned __int16)mode owner:(id)owner dataProtectionClass:(int)class fsNode:(id *)node error:(id *)error;
- (BOOL)createDirectoryAtURL:(id)l withIntermediateDirectories:(BOOL)directories mode:(unsigned __int16)mode owner:(id)owner error:(id *)error;
- (BOOL)dataProtectionClassOfItemAtURL:(id)l dataProtectionClass:(int *)class error:(id *)error;
- (BOOL)enableFastDiskUsageForURL:(id)l error:(id *)error;
- (BOOL)fixUserPermissionsAtURL:(id)l limitToTopLevelURL:(id)rL error:(id *)error;
- (BOOL)itemAtURL:(id)l exists:(BOOL *)exists error:(id *)error;
- (BOOL)itemAtURL:(id)l exists:(BOOL *)exists isDirectory:(BOOL *)directory error:(id *)error;
- (BOOL)itemAtURL:(id)l followSymlinks:(BOOL)symlinks exists:(BOOL *)exists isDirectory:(BOOL *)directory error:(id *)error;
- (BOOL)itemAtURL:(id)l followSymlinks:(BOOL)symlinks exists:(BOOL *)exists isDirectory:(BOOL *)directory fsNode:(id *)node error:(id *)error;
- (BOOL)itemExistsAtURL:(id)l;
- (BOOL)itemExistsAtURL:(id)l isDirectory:(BOOL *)directory;
- (BOOL)moveItemAtURL:(id)l toURL:(id)rL error:(id *)error;
- (BOOL)moveItemIfExistsAtURL:(id)l toURL:(id)rL error:(id *)error;
- (BOOL)quarantineNeededForDirectoryURL:(id)l;
- (BOOL)quarantineURL:(id)l identifier:(id)identifier error:(id *)error;
- (BOOL)removeExclusionFromBackupFromURL:(id)l error:(id *)error;
- (BOOL)removeItemAtURL:(id)l error:(id *)error;
- (BOOL)repairPermissionsAtURL:(id)l uid:(unsigned int)uid gid:(unsigned int)gid options:(unint64_t)options error:(id *)error;
- (BOOL)replaceItemAtDestinationURL:(id)l withSourceURL:(id)rL swapped:(BOOL *)swapped error:(id *)error;
- (BOOL)setDataProtectionAtURL:(id)l toDataProtectionClass:(int)class directoriesOnly:(BOOL)only recursive:(BOOL)recursive error:(id *)error;
- (BOOL)setTopLevelSystemContainerACLAtURL:(id)l error:(id *)error;
- (BOOL)standardizeACLsAtURL:(id)l isSystemContainer:(BOOL)container error:(id *)error;
- (BOOL)standardizeACLsForSystemContainerAtURL:(id)l error:(id *)error;
- (BOOL)standardizeAllSystemContainerACLsAtURL:(id)l error:(id *)error;
- (BOOL)standardizeOwnershipAtURL:(id)l toPOSIXUser:(id)user error:(id *)error;
- (BOOL)stripACLFromURL:(id)l error:(id *)error;
- (BOOL)symbolicallyLinkURL:(id)l toSymlinkTarget:(id)target error:(id *)error;
- (BOOL)writeData:(id)data toURL:(id)l options:(unint64_t)options mode:(unsigned __int16)mode error:(id *)error;
- (_acl)_CopySystemContainerACLWithNumACEs:(int)es isDir:(BOOL)dir inheritOnly:(BOOL)only withError:(id *)error;
- (_acl)_CopyTopLevelSystemContainerACLWithError:(id *)error;
- (_filesec)_denyDeleteACLFilesecWithACLText:(char *)text;
- (_filesec)_removeACLFilesec;
- (id)_realPathForURL:(id)l allowNonExistentPathComponents:(BOOL)components;
- (id)_realPathWhatExistsInPath:(id)path;
- (id)copyDescriptionOfURL:(id)l;
- (id)createTemporaryDirectoryInDirectoryURL:(id)l error:(id *)error;
- (id)createTemporaryDirectoryInDirectoryURL:(id)l withNamePrefix:(id)prefix error:(id *)error;
- (id)fsMinimallySanitizedStringFromString:(id)string;
- (id)fsNodeOfURL:(id)l followSymlinks:(BOOL)symlinks error:(id *)error;
- (id)fsSanitizedStringFromString:(id)string allowSpaces:(BOOL)spaces;
- (id)mountPointForURL:(id)l error:(id *)error;
- (id)readDataFromURL:(id)l options:(unint64_t)options error:(id *)error;
- (id)readDataFromURL:(id)l options:(unint64_t)options fsNode:(id *)node error:(id *)error;
- (id)realPathForURL:(id)l ifChildOfURL:(id)rL;
- (id)realPathForURL:(id)l isDirectory:(BOOL)directory error:(id *)error;
- (id)targetOfSymbolicLinkAtURL:(id)l error:(id *)error;
- (id)urlsForItemsInDirectoryAtURL:(id)l error:(id *)error;
- (unint64_t)dataWritingOptionsForFileAtURL:(id)l;
- (void)printDirectoryStructureAtURL:(id)l;
@end

@implementation MCMFileManager

+ (id)defaultManager
{
  if (containermanager_copy_default_file_manager_onceToken != -1)
  {
    dispatch_once(&containermanager_copy_default_file_manager_onceToken, &__block_literal_global_1209);
  }

  v2 = gMCMDefaultFileManager;

  return v2;
}

- (BOOL)_fixOwnershipOnFD:(int)d FTSENT:(_ftsent *)t stat:(stat *)stat statfs:(statfs *)statfs uid:(unsigned int)uid gid:(unsigned int)gid error:(id *)error
{
  *&v35[9] = *MEMORY[0x1E69E9840];
  if ((statfs->f_flags & 0x200000) != 0)
  {
    v11 = 0;
    v13 = 1;
  }

  else
  {
    v11 = 0;
    st_uid = stat->st_uid;
    v13 = 1;
    if (st_uid != uid && st_uid != 99)
    {
      if ((*(*MEMORY[0x1E69E9988] + 224))(*&d, *&uid, *&gid))
      {
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __69__MCMFileManager__fixOwnershipOnFD_FTSENT_stat_statfs_uid_gid_error___block_invoke;
        v25[3] = &__block_descriptor_48_e14___NSError_8__0l;
        uidCopy = uid;
        gidCopy = gid;
        v25[4] = t;
        v11 = __69__MCMFileManager__fixOwnershipOnFD_FTSENT_stat_statfs_uid_gid_error___block_invoke(v25);
        v16 = container_log_handle_for_category();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v23 = *__error();
          fts_path = t->fts_path;
          *buf = 67109890;
          uidCopy2 = uid;
          v30 = 1024;
          gidCopy2 = gid;
          v32 = 1026;
          uidCopy3 = v23;
          v34 = 2080;
          *v35 = fts_path;
          _os_log_error_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_ERROR, "fchown(uid=%u, gid=%u) failed (%{darwin.errno, public}d) on path [%s]", buf, 0x1Eu);
        }

        if (error)
        {
          v17 = v11;
          v13 = 0;
          *error = v11;
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v19 = container_log_handle_for_category();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = stat->st_uid;
          st_gid = stat->st_gid;
          v22 = t->fts_path;
          *buf = 67110146;
          uidCopy2 = v20;
          v30 = 1024;
          gidCopy2 = st_gid;
          v32 = 1024;
          uidCopy3 = uid;
          v34 = 1024;
          *v35 = gid;
          v35[2] = 2080;
          *&v35[3] = v22;
          _os_log_impl(&dword_1DF2C3000, v19, OS_LOG_TYPE_DEFAULT, "REPAIR: fchown (%u:%u → %u:%u) on [%s]", buf, 0x24u);
        }

        v11 = 0;
      }
    }
  }

  return v13;
}

id __69__MCMFileManager__fixOwnershipOnFD_FTSENT_stat_statfs_uid_gid_error___block_invoke(uint64_t a1)
{
  v8[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"fchown(uid=%u, gid=%u) failed on path [%s]", *(a1 + 40), *(a1 + 44), *(*(a1 + 32) + 48)];
  v7[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager _fixOwnershipOnFD:FTSENT:stat:statfs:uid:gid:error:]_block_invoke"];
  v8[0] = v2;
  v8[1] = &unk_1F5A76528;
  v3 = *MEMORY[0x1E696A578];
  v7[1] = @"SourceFileLine";
  v7[2] = v3;
  v8[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v4];

  return v5;
}

- (BOOL)_fixFlagsOnFD:(int)d FTSENT:(_ftsent *)t stat:(stat *)stat error:(id *)error
{
  *&v25[7] = *MEMORY[0x1E69E9840];
  st_flags = stat->st_flags;
  if ((st_flags & 2) == 0)
  {
LABEL_10:
    v11 = 0;
    v14 = 1;
    goto LABEL_11;
  }

  v10 = st_flags & 0xFFFFFFFD;
  if (!(*(*MEMORY[0x1E69E9988] + 200))(*&d, v10))
  {
    v15 = container_log_handle_for_category();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = stat->st_flags;
      fts_path = t->fts_path;
      *buf = 67109634;
      v23 = v16;
      v24 = 1024;
      *v25 = v10;
      v25[2] = 2080;
      *&v25[3] = fts_path;
      _os_log_impl(&dword_1DF2C3000, v15, OS_LOG_TYPE_DEFAULT, "REPAIR: fchflags -UF_IMMUTABLE (0x%x → 0x%x) on [%s]", buf, 0x18u);
    }

    goto LABEL_10;
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __50__MCMFileManager__fixFlagsOnFD_FTSENT_stat_error___block_invoke;
  v21[3] = &__block_descriptor_40_e14___NSError_8__0l;
  v21[4] = t;
  v11 = __50__MCMFileManager__fixFlagsOnFD_FTSENT_stat_error___block_invoke(v21);
  v12 = container_log_handle_for_category();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v19 = *__error();
    v20 = t->fts_path;
    *buf = 67240450;
    v23 = v19;
    v24 = 2080;
    *v25 = v20;
    _os_log_error_impl(&dword_1DF2C3000, v12, OS_LOG_TYPE_ERROR, "fchflags failed (%{darwin.errno, public}d) on open fd for path [%s]", buf, 0x12u);
  }

  if (error)
  {
    v13 = v11;
    v14 = 0;
    *error = v11;
  }

  else
  {
    v14 = 0;
  }

LABEL_11:

  return v14;
}

id __50__MCMFileManager__fixFlagsOnFD_FTSENT_stat_error___block_invoke(uint64_t a1)
{
  v8[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"fchflags failed on open fd for path [%s]", *(*(a1 + 32) + 48)];
  v7[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager _fixFlagsOnFD:FTSENT:stat:error:]_block_invoke"];
  v8[0] = v2;
  v8[1] = &unk_1F5A76510;
  v3 = *MEMORY[0x1E696A578];
  v7[1] = @"SourceFileLine";
  v7[2] = v3;
  v8[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v4];

  return v5;
}

- (BOOL)_fixPOSIXBitsOnFD:(int)d FTSENT:(_ftsent *)t stat:(stat *)stat error:(id *)error
{
  *&v22[7] = *MEMORY[0x1E69E9840];
  st_mode = stat->st_mode;
  if ((st_mode & 0xE00) == 0)
  {
LABEL_10:
    v9 = 0;
    v12 = 1;
    goto LABEL_11;
  }

  if (!(*(*MEMORY[0x1E69E9988] + 208))(*&d, st_mode & 0xFFFFF1FF))
  {
    v13 = container_log_handle_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      fts_path = t->fts_path;
      *buf = 67109634;
      v20 = st_mode;
      v21 = 1024;
      *v22 = st_mode & 0xF1FF;
      v22[2] = 2080;
      *&v22[3] = fts_path;
      _os_log_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_DEFAULT, "REPAIR: fchmod -setuid, -setgid, -sticky (0%o → 0%o) on [%s]", buf, 0x18u);
    }

    goto LABEL_10;
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __54__MCMFileManager__fixPOSIXBitsOnFD_FTSENT_stat_error___block_invoke;
  v18[3] = &__block_descriptor_40_e14___NSError_8__0l;
  v18[4] = t;
  v9 = __54__MCMFileManager__fixPOSIXBitsOnFD_FTSENT_stat_error___block_invoke(v18);
  v10 = container_log_handle_for_category();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v16 = *__error();
    v17 = t->fts_path;
    *buf = 67240450;
    v20 = v16;
    v21 = 2080;
    *v22 = v17;
    _os_log_error_impl(&dword_1DF2C3000, v10, OS_LOG_TYPE_ERROR, "fchmod (un-setuid) failed (%{darwin.errno, public}d) on path [%s]", buf, 0x12u);
  }

  if (error)
  {
    v11 = v9;
    v12 = 0;
    *error = v9;
  }

  else
  {
    v12 = 0;
  }

LABEL_11:

  return v12;
}

id __54__MCMFileManager__fixPOSIXBitsOnFD_FTSENT_stat_error___block_invoke(uint64_t a1)
{
  v8[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"fchmod (un-setuid) failed on path [%s]", *(*(a1 + 32) + 48)];
  v7[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager _fixPOSIXBitsOnFD:FTSENT:stat:error:]_block_invoke"];
  v8[0] = v2;
  v8[1] = &unk_1F5A764F8;
  v3 = *MEMORY[0x1E696A578];
  v7[1] = @"SourceFileLine";
  v7[2] = v3;
  v8[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v4];

  return v5;
}

- (BOOL)_fixPOSIXPermsOnFD:(int)d FTSENT:(_ftsent *)t stat:(stat *)stat error:(id *)error
{
  v8 = *&d;
  *&v29[7] = *MEMORY[0x1E69E9840];
  st_mode = stat->st_mode;
  fts_info = t->fts_info;
  if (fts_info == 1)
  {
    if ((~st_mode & 0x1C0) == 0)
    {
LABEL_19:
      v11 = 0;
      v18 = 1;
      goto LABEL_20;
    }

    if ((*(*MEMORY[0x1E69E9988] + 208))(*&d, st_mode | 0x1C0u))
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __55__MCMFileManager__fixPOSIXPermsOnFD_FTSENT_stat_error___block_invoke;
      v25[3] = &__block_descriptor_40_e14___NSError_8__0l;
      v25[4] = t;
      v11 = __55__MCMFileManager__fixPOSIXPermsOnFD_FTSENT_stat_error___block_invoke(v25);
      v12 = container_log_handle_for_category();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }

      v13 = *__error();
      fts_path = t->fts_path;
      *buf = 67240450;
      v27 = v13;
      v28 = 2080;
      *v29 = fts_path;
      goto LABEL_22;
    }

    v15 = container_log_handle_for_category();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = t->fts_path;
      *buf = 67109634;
      v27 = st_mode;
      v28 = 1024;
      *v29 = st_mode | 0x1C0;
      v29[2] = 2080;
      *&v29[3] = v16;
      _os_log_impl(&dword_1DF2C3000, v15, OS_LOG_TYPE_DEFAULT, "REPAIR: fchmod u+rwx (0%o → 0%o) on [%s]", buf, 0x18u);
    }

    fts_info = t->fts_info;
  }

  if (fts_info != 8 || (~st_mode & 0x180) == 0)
  {
    goto LABEL_19;
  }

  if (!(*(*MEMORY[0x1E69E9988] + 208))(v8, st_mode | 0x180u))
  {
    v19 = container_log_handle_for_category();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = t->fts_path;
      *buf = 67109634;
      v27 = st_mode;
      v28 = 1024;
      *v29 = st_mode | 0x180;
      v29[2] = 2080;
      *&v29[3] = v20;
      _os_log_impl(&dword_1DF2C3000, v19, OS_LOG_TYPE_DEFAULT, "REPAIR: fchmod u+rw (0%o → 0%o) on [%s]", buf, 0x18u);
    }

    goto LABEL_19;
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __55__MCMFileManager__fixPOSIXPermsOnFD_FTSENT_stat_error___block_invoke_665;
  v24[3] = &__block_descriptor_40_e14___NSError_8__0l;
  v24[4] = t;
  v11 = __55__MCMFileManager__fixPOSIXPermsOnFD_FTSENT_stat_error___block_invoke_665(v24);
  v12 = container_log_handle_for_category();
  if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_13;
  }

  v22 = *__error();
  v23 = t->fts_path;
  *buf = 67240450;
  v27 = v22;
  v28 = 2080;
  *v29 = v23;
LABEL_22:
  _os_log_error_impl(&dword_1DF2C3000, v12, OS_LOG_TYPE_ERROR, "fchmod failed (%{darwin.errno, public}d) on path [%s]", buf, 0x12u);
LABEL_13:

  if (error)
  {
    v17 = v11;
    v18 = 0;
    *error = v11;
  }

  else
  {
    v18 = 0;
  }

LABEL_20:

  return v18;
}

id __55__MCMFileManager__fixPOSIXPermsOnFD_FTSENT_stat_error___block_invoke(uint64_t a1)
{
  v8[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"fchmod failed on directory [%s]", *(*(a1 + 32) + 48)];
  v7[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager _fixPOSIXPermsOnFD:FTSENT:stat:error:]_block_invoke"];
  v8[0] = v2;
  v8[1] = &unk_1F5A764C8;
  v3 = *MEMORY[0x1E696A578];
  v7[1] = @"SourceFileLine";
  v7[2] = v3;
  v8[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v4];

  return v5;
}

id __55__MCMFileManager__fixPOSIXPermsOnFD_FTSENT_stat_error___block_invoke_665(uint64_t a1)
{
  v8[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"fchmod failed on file [%s]", *(*(a1 + 32) + 48)];
  v7[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager _fixPOSIXPermsOnFD:FTSENT:stat:error:]_block_invoke"];
  v8[0] = v2;
  v8[1] = &unk_1F5A764E0;
  v3 = *MEMORY[0x1E696A578];
  v7[1] = @"SourceFileLine";
  v7[2] = v3;
  v8[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v4];

  return v5;
}

- (BOOL)_fixACLOnFD:(int)d removeACLFilesec:(_filesec *)filesec denyDeleteFilesec:(_filesec *)deleteFilesec denyDeleteText:(const char *)text path:(const char *)path error:(id *)error
{
  v13 = *&d;
  v48 = *MEMORY[0x1E69E9840];
  v43 = 0;
  memset(v45, 0, sizeof(v45));
  memset(v44, 0, sizeof(v44));
  v14 = MEMORY[0x1E69E9988];
  v15 = (*(*MEMORY[0x1E69E9988] + 288))(self, a2);
  if (v15)
  {
    v16 = v15;
    if ((*(*v14 + 360))(v13, v45, v15))
    {
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __91__MCMFileManager__fixACLOnFD_removeACLFilesec_denyDeleteFilesec_denyDeleteText_path_error___block_invoke_630;
      v42[3] = &__block_descriptor_40_e14___NSError_8__0l;
      v42[4] = path;
      v17 = __91__MCMFileManager__fixACLOnFD_removeACLFilesec_denyDeleteFilesec_denyDeleteText_path_error___block_invoke_630(v42);
      v18 = container_log_handle_for_category();
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
LABEL_4:
        v19 = 0;
        goto LABEL_5;
      }

      v35 = *__error();
      *buf = 67240450;
      *&buf[4] = v35;
      *&buf[8] = 2080;
      *&buf[10] = path;
      v33 = "fstatx_np failed (%{darwin.errno, public}d) on path [%s]";
LABEL_40:
      _os_log_error_impl(&dword_1DF2C3000, v18, OS_LOG_TYPE_ERROR, v33, buf, 0x12u);
      goto LABEL_4;
    }

    if ((*(*v14 + 280))(v16, 5, &v43))
    {
      if (*__error() != 2)
      {
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __91__MCMFileManager__fixACLOnFD_removeACLFilesec_denyDeleteFilesec_denyDeleteText_path_error___block_invoke_636;
        v41[3] = &__block_descriptor_40_e14___NSError_8__0l;
        v41[4] = path;
        v17 = __91__MCMFileManager__fixACLOnFD_removeACLFilesec_denyDeleteFilesec_denyDeleteText_path_error___block_invoke_636(v41);
        v18 = container_log_handle_for_category();
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_4;
        }

        v32 = *__error();
        *buf = 67240450;
        *&buf[4] = v32;
        *&buf[8] = 2080;
        *&buf[10] = path;
        v33 = "filesec_get_property(..., FILESEC_ACL, ...) failed (%{darwin.errno, public}d) on path [%s]";
        goto LABEL_40;
      }

      v19 = 0;
      filesec = 0;
    }

    else
    {
      v29 = (*(*v14 + 128))(v43, 0);
      v19 = v29;
      if (deleteFilesec && text && v29 && !strcmp(text, v29))
      {
        deleteFilesec = 0;
        filesec = 0;
      }
    }

    if (deleteFilesec | filesec)
    {
      if ((*(*v14 + 336))(v13, v44))
      {
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __91__MCMFileManager__fixACLOnFD_removeACLFilesec_denyDeleteFilesec_denyDeleteText_path_error___block_invoke_642;
        v40[3] = &__block_descriptor_40_e14___NSError_8__0l;
        v40[4] = path;
        v17 = __91__MCMFileManager__fixACLOnFD_removeACLFilesec_denyDeleteFilesec_denyDeleteText_path_error___block_invoke_642(v40);
        v18 = container_log_handle_for_category();
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_5;
        }

        v30 = *__error();
        *buf = 67240450;
        *&buf[4] = v30;
        *&buf[8] = 2080;
        *&buf[10] = path;
        v31 = "fstat(...) failed (%{darwin.errno, public}d) on [%s]";
        goto LABEL_32;
      }

      if (filesec)
      {
        if ((*(*v14 + 216))(v13, filesec))
        {
          v39[0] = MEMORY[0x1E69E9820];
          v39[1] = 3221225472;
          v39[2] = __91__MCMFileManager__fixACLOnFD_removeACLFilesec_denyDeleteFilesec_denyDeleteText_path_error___block_invoke_648;
          v39[3] = &__block_descriptor_40_e14___NSError_8__0l;
          v39[4] = path;
          v17 = __91__MCMFileManager__fixACLOnFD_removeACLFilesec_denyDeleteFilesec_denyDeleteText_path_error___block_invoke_648(v39);
          v18 = container_log_handle_for_category();
          if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_5;
          }

          v34 = *__error();
          *buf = 67240450;
          *&buf[4] = v34;
          *&buf[8] = 2080;
          *&buf[10] = path;
          v31 = "fchmodx_np() failed (%{darwin.errno, public}d) when removing ACLs on path [%s]";
          goto LABEL_32;
        }

        v36 = container_log_handle_for_category();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = v19;
          *&buf[12] = 2080;
          *&buf[14] = path;
          _os_log_impl(&dword_1DF2C3000, v36, OS_LOG_TYPE_DEFAULT, "REPAIR: removed ACL (%s) from [%s]", buf, 0x16u);
        }
      }

      if (deleteFilesec)
      {
        if (!(*(*v14 + 216))(v13, deleteFilesec))
        {
          v18 = container_log_handle_for_category();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            *&buf[4] = text;
            *&buf[12] = 2080;
            *&buf[14] = path;
            _os_log_impl(&dword_1DF2C3000, v18, OS_LOG_TYPE_DEFAULT, "REPAIR: added default ACL (%s) on [%s]", buf, 0x16u);
          }

          v17 = 0;
          v20 = 1;
          goto LABEL_6;
        }

        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __91__MCMFileManager__fixACLOnFD_removeACLFilesec_denyDeleteFilesec_denyDeleteText_path_error___block_invoke_654;
        v38[3] = &__block_descriptor_40_e14___NSError_8__0l;
        v38[4] = path;
        v17 = __91__MCMFileManager__fixACLOnFD_removeACLFilesec_denyDeleteFilesec_denyDeleteText_path_error___block_invoke_654(v38);
        v18 = container_log_handle_for_category();
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
LABEL_5:
          v20 = 0;
LABEL_6:

          goto LABEL_7;
        }

        v37 = *__error();
        *buf = 67240450;
        *&buf[4] = v37;
        *&buf[8] = 2080;
        *&buf[10] = path;
        v31 = "fchmodx_np() failed (%{darwin.errno, public}d) when setting default ACL on path [%s]";
LABEL_32:
        _os_log_error_impl(&dword_1DF2C3000, v18, OS_LOG_TYPE_ERROR, v31, buf, 0x12u);
        goto LABEL_5;
      }
    }

    v17 = 0;
    v20 = 1;
LABEL_7:
    (*(*v14 + 272))(v16);
    if (v19)
    {
      (*(*v14 + 32))(v19);
    }

    goto LABEL_12;
  }

  v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"filesec_init failed"];
  v46[0] = @"FunctionName";
  v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager _fixACLOnFD:removeACLFilesec:denyDeleteFilesec:denyDeleteText:path:error:]_block_invoke"];
  *buf = v22;
  *&buf[8] = &unk_1F5A76438;
  v23 = *MEMORY[0x1E696A578];
  v46[1] = @"SourceFileLine";
  v46[2] = v23;
  *&buf[16] = v21;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:v46 count:3];

  v17 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v24];

  v25 = container_log_handle_for_category();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1DF2C3000, v25, OS_LOG_TYPE_ERROR, "filesec_init failed", buf, 2u);
  }

  v20 = 0;
LABEL_12:
  if (v43)
  {
    (*(*v14 + 32))();
  }

  if (error)
  {
    v26 = v20;
  }

  else
  {
    v26 = 1;
  }

  if ((v26 & 1) == 0)
  {
    v27 = v17;
    *error = v17;
  }

  return v20;
}

id __91__MCMFileManager__fixACLOnFD_removeACLFilesec_denyDeleteFilesec_denyDeleteText_path_error___block_invoke_630(uint64_t a1)
{
  v8[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"fstatx_np failed on path [%s]", *(a1 + 32)];
  v7[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager _fixACLOnFD:removeACLFilesec:denyDeleteFilesec:denyDeleteText:path:error:]_block_invoke"];
  v8[0] = v2;
  v8[1] = &unk_1F5A76450;
  v3 = *MEMORY[0x1E696A578];
  v7[1] = @"SourceFileLine";
  v7[2] = v3;
  v8[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v4];

  return v5;
}

id __91__MCMFileManager__fixACLOnFD_removeACLFilesec_denyDeleteFilesec_denyDeleteText_path_error___block_invoke_636(uint64_t a1)
{
  v8[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"filesec_get_property(..., FILESEC_ACL, ...) failed on path [%s]", *(a1 + 32)];
  v7[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager _fixACLOnFD:removeACLFilesec:denyDeleteFilesec:denyDeleteText:path:error:]_block_invoke"];
  v8[0] = v2;
  v8[1] = &unk_1F5A76468;
  v3 = *MEMORY[0x1E696A578];
  v7[1] = @"SourceFileLine";
  v7[2] = v3;
  v8[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v4];

  return v5;
}

id __91__MCMFileManager__fixACLOnFD_removeACLFilesec_denyDeleteFilesec_denyDeleteText_path_error___block_invoke_642(uint64_t a1)
{
  v8[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"fstat(...) failed on [%s]", *(a1 + 32)];
  v7[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager _fixACLOnFD:removeACLFilesec:denyDeleteFilesec:denyDeleteText:path:error:]_block_invoke"];
  v8[0] = v2;
  v8[1] = &unk_1F5A76480;
  v3 = *MEMORY[0x1E696A578];
  v7[1] = @"SourceFileLine";
  v7[2] = v3;
  v8[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v4];

  return v5;
}

id __91__MCMFileManager__fixACLOnFD_removeACLFilesec_denyDeleteFilesec_denyDeleteText_path_error___block_invoke_648(uint64_t a1)
{
  v8[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"fchmodx_np() failed when removing ACLs on path [%s]", *(a1 + 32)];
  v7[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager _fixACLOnFD:removeACLFilesec:denyDeleteFilesec:denyDeleteText:path:error:]_block_invoke"];
  v8[0] = v2;
  v8[1] = &unk_1F5A76498;
  v3 = *MEMORY[0x1E696A578];
  v7[1] = @"SourceFileLine";
  v7[2] = v3;
  v8[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v4];

  return v5;
}

id __91__MCMFileManager__fixACLOnFD_removeACLFilesec_denyDeleteFilesec_denyDeleteText_path_error___block_invoke_654(uint64_t a1)
{
  v8[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"fchmodx_np() failed when setting default ACL on path [%s]", *(a1 + 32)];
  v7[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager _fixACLOnFD:removeACLFilesec:denyDeleteFilesec:denyDeleteText:path:error:]_block_invoke"];
  v8[0] = v2;
  v8[1] = &unk_1F5A764B0;
  v3 = *MEMORY[0x1E696A578];
  v7[1] = @"SourceFileLine";
  v7[2] = v3;
  v8[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v4];

  return v5;
}

- (BOOL)_withEveryoneDenyDeleteACLDoBlock:(id)block
{
  identifier[2] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  strcpy(identifier, "everyone");
  v14 = 0;
  v15 = 0;
  v12 = 0;
  v13 = 0;
  memset(uu, 0, sizeof(uu));
  v4 = mbr_identifier_to_uuid(5, identifier, 9uLL, uu);
  v5 = MEMORY[0x1E69E9988];
  if (v4)
  {
    v6 = v4;
    v7 = container_log_handle_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v17 = v6;
      v8 = "mbr_identifier_to_uuid(group, everyone) failed (%d)";
LABEL_19:
      _os_log_error_impl(&dword_1DF2C3000, v7, OS_LOG_TYPE_ERROR, v8, buf, 8u);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  v15 = (*(*MEMORY[0x1E69E9988] + 80))(1);
  if (!v15 || (*(*v5 + 16))(&v15, &v14) || (*(*v5 + 64))(v14, &v13) || (*(*v5 + 56))(v14, &v12) || (*(*v5 + 120))(v14, 2) || (*(*v5 + 112))(v14, uu) || (*(*v5 + 8))(v13, 16) || (*(*v5 + 104))(v14, v13) || (*(*v5 + 96))(v14, v12))
  {
    v7 = container_log_handle_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = *__error();
      *buf = 67109120;
      v17 = v11;
      v8 = "acl creation failed (%{darwin.errno}d)";
      goto LABEL_19;
    }

LABEL_14:

    v9 = 0;
    goto LABEL_15;
  }

  v9 = blockCopy[2](blockCopy, v15);
LABEL_15:
  if (v15)
  {
    (*(*v5 + 32))();
  }

  return v9;
}

- (_filesec)_denyDeleteACLFilesecWithACLText:(char *)text
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = (*(*MEMORY[0x1E69E9988] + 288))(self, a2);
  v6 = v5;
  if (text && v5)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __51__MCMFileManager__denyDeleteACLFilesecWithACLText___block_invoke;
    v8[3] = &unk_1E86AFDA0;
    v8[4] = &v9;
    v8[5] = v5;
    [(MCMFileManager *)self _withEveryoneDenyDeleteACLDoBlock:v8];
    *text = v10[3];
    _Block_object_dispose(&v9, 8);
  }

  return v6;
}

BOOL __51__MCMFileManager__denyDeleteACLFilesecWithACLText___block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v10 = a2;
  v3 = MEMORY[0x1E69E9988];
  *(*(*(a1 + 32) + 8) + 24) = (*(*MEMORY[0x1E69E9988] + 128))(a2, 0);
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = container_log_handle_for_category();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v9 = *__error();
      *buf = 67240192;
      v12 = v9;
      _os_log_error_impl(&dword_1DF2C3000, v4, OS_LOG_TYPE_ERROR, "acl_to_text() failed (%{darwin.errno, public}d)", buf, 8u);
    }
  }

  v5 = (*(*v3 + 296))(*(a1 + 40), 5, &v10);
  if (v5)
  {
    v6 = container_log_handle_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = *__error();
      *buf = 67240192;
      v12 = v8;
      _os_log_error_impl(&dword_1DF2C3000, v6, OS_LOG_TYPE_ERROR, "filesec_set_property() for default ACL failed (%{darwin.errno, public}d)", buf, 8u);
    }
  }

  return v5 == 0;
}

- (_filesec)_removeACLFilesec
{
  v2 = MEMORY[0x1E69E9988];
  v3 = (*(*MEMORY[0x1E69E9988] + 288))(self, a2);
  v4 = v3;
  if (v3)
  {
    (*(*v2 + 296))(v3, 5, 1);
  }

  return v4;
}

- (BOOL)quarantineNeededForDirectoryURL:(id)l
{
  path = [l path];
  pathExtension = [path pathExtension];
  v5 = [&unk_1F5A76FC0 containsObject:pathExtension];

  return v5;
}

- (BOOL)quarantineURL:(id)l identifier:(id)identifier error:(id *)error
{
  v34 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  fileSystemRepresentation = [l fileSystemRepresentation];
  v9 = MEMORY[0x1E69E9998];
  v10 = (*(*MEMORY[0x1E69E9998] + 8))();
  v11 = (*(*v9 + 48))(v10, fileSystemRepresentation);
  if (v11)
  {
    if (v11 != -1)
    {
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __49__MCMFileManager_quarantineURL_identifier_error___block_invoke;
      v30[3] = &__block_descriptor_44_e14___NSError_8__0l;
      v30[4] = fileSystemRepresentation;
      v31 = v11;
      v13 = __49__MCMFileManager_quarantineURL_identifier_error___block_invoke(v30);
      goto LABEL_12;
    }

    (*(*v9 + 40))(v10);
    (*(*v9 + 32))(v10, 0);
  }

  if (identifierCopy)
  {
    v12 = (*(*v9 + 64))(v10, [identifierCopy UTF8String]);
    if (v12)
    {
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __49__MCMFileManager_quarantineURL_identifier_error___block_invoke_589;
      v28[3] = &__block_descriptor_44_e14___NSError_8__0l;
      v28[4] = fileSystemRepresentation;
      v29 = v12;
      v13 = __49__MCMFileManager_quarantineURL_identifier_error___block_invoke_589(v28);
      goto LABEL_12;
    }
  }

  v14 = (*(*v9 + 24))(v10);
  v15 = (*(*v9 + 32))(v10, v14 | 0x86u);
  if (v15)
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __49__MCMFileManager_quarantineURL_identifier_error___block_invoke_595;
    v26[3] = &__block_descriptor_44_e14___NSError_8__0l;
    v26[4] = fileSystemRepresentation;
    v27 = v15;
    v13 = __49__MCMFileManager_quarantineURL_identifier_error___block_invoke_595(v26);
    goto LABEL_12;
  }

  v16 = time(0);
  (*(*v9 + 80))(v10, v16);
  v17 = (*(*v9 + 56))(v10, fileSystemRepresentation);
  if (v17)
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __49__MCMFileManager_quarantineURL_identifier_error___block_invoke_601;
    v24[3] = &__block_descriptor_44_e14___NSError_8__0l;
    v24[4] = fileSystemRepresentation;
    v25 = v17;
    v13 = __49__MCMFileManager_quarantineURL_identifier_error___block_invoke_601(v24);
LABEL_12:
    v18 = v13;
    v19 = 0;
    if (!v10)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v23 = container_log_handle_for_category();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v33 = fileSystemRepresentation;
    _os_log_debug_impl(&dword_1DF2C3000, v23, OS_LOG_TYPE_DEBUG, "Quarantined [%s]", buf, 0xCu);
  }

  v18 = 0;
  v19 = 1;
  if (v10)
  {
LABEL_13:
    (*(*v9 + 16))(v10);
  }

LABEL_14:
  if (error)
  {
    v20 = v19;
  }

  else
  {
    v20 = 1;
  }

  if ((v20 & 1) == 0)
  {
    v21 = v18;
    *error = v18;
  }

  return v19;
}

id __49__MCMFileManager_quarantineURL_identifier_error___block_invoke(uint64_t a1)
{
  v8[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Could not init quarantine structure from path [%s]; error = %s", *(a1 + 32), container_qtn_error()];
  v7[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager quarantineURL:identifier:error:]_block_invoke"];
  v8[0] = v2;
  v8[1] = &unk_1F5A763D8;
  v3 = *MEMORY[0x1E696A578];
  v7[1] = @"SourceFileLine";
  v7[2] = v3;
  v8[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:2 userInfo:v4];

  return v5;
}

id __49__MCMFileManager_quarantineURL_identifier_error___block_invoke_589(uint64_t a1)
{
  v8[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Could not set quarantine identifier for path [%s]; error = %s", *(a1 + 32), container_qtn_error()];
  v7[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager quarantineURL:identifier:error:]_block_invoke"];
  v8[0] = v2;
  v8[1] = &unk_1F5A763F0;
  v3 = *MEMORY[0x1E696A578];
  v7[1] = @"SourceFileLine";
  v7[2] = v3;
  v8[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v4];

  return v5;
}

id __49__MCMFileManager_quarantineURL_identifier_error___block_invoke_595(uint64_t a1)
{
  v8[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Could not set quarantine flags for path [%s]; error = %s", *(a1 + 32), container_qtn_error()];
  v7[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager quarantineURL:identifier:error:]_block_invoke"];
  v8[0] = v2;
  v8[1] = &unk_1F5A76408;
  v3 = *MEMORY[0x1E696A578];
  v7[1] = @"SourceFileLine";
  v7[2] = v3;
  v8[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:45 userInfo:v4];

  return v5;
}

id __49__MCMFileManager_quarantineURL_identifier_error___block_invoke_601(uint64_t a1)
{
  v8[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Could not apply quarantine to path [%s]; error = %s", *(a1 + 32), container_qtn_error()];
  v7[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager quarantineURL:identifier:error:]_block_invoke"];
  v8[0] = v2;
  v8[1] = &unk_1F5A76420;
  v3 = *MEMORY[0x1E696A578];
  v7[1] = @"SourceFileLine";
  v7[2] = v3;
  v8[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:5 userInfo:v4];

  return v5;
}

- (BOOL)setDataProtectionAtURL:(id)l toDataProtectionClass:(int)class directoriesOnly:(BOOL)only recursive:(BOOL)recursive error:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__1135;
  v31 = __Block_byref_object_dispose__1136;
  v32 = 0;
  v26 = 0;
  v11 = lCopy;
  [lCopy fileSystemRepresentation];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __95__MCMFileManager_setDataProtectionAtURL_toDataProtectionClass_directoriesOnly_recursive_error___block_invoke;
  v22 = &unk_1E86AFD78;
  onlyCopy = only;
  classCopy = class;
  v23 = &v27;
  if ((container_traverse_directory() & 1) == 0)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __95__MCMFileManager_setDataProtectionAtURL_toDataProtectionClass_directoriesOnly_recursive_error___block_invoke_578;
    v17[3] = &__block_descriptor_36_e14___NSError_8__0l;
    v18 = v26;
    v12 = __95__MCMFileManager_setDataProtectionAtURL_toDataProtectionClass_directoriesOnly_recursive_error___block_invoke_578(v17);
    v13 = v28[5];
    v28[5] = v12;
  }

  v14 = v28[5];
  if (error && v14)
  {
    v14 = v14;
    *error = v14;
  }

  v15 = v14 == 0;
  _Block_object_dispose(&v27, 8);

  return v15;
}

uint64_t __95__MCMFileManager_setDataProtectionAtURL_toDataProtectionClass_directoriesOnly_recursive_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  is_directory = container_traverse_node_is_directory();
  if (*(a1 + 44) == 1 && is_directory == 0)
  {
    return 1;
  }

  v5 = is_directory;
  v6 = *(a1 + 40);
  optional_dp_class = container_traverse_node_get_optional_dp_class();
  name = container_traverse_node_get_name();
  if (v5)
  {
    v9 = 0;
  }

  else
  {
    v9 = 3;
  }

  if (!v6)
  {
    v6 = v9;
  }

  if (v5)
  {
    optional_parent_fd = container_traverse_node_get_optional_parent_fd();
  }

  else
  {
    if ((optional_dp_class | v6) > 7 || (v6 - 5) < 2 || ((v13 = MCMCompareDataProtectionClassTarget_kDataProtectionClassPrecedence[v6], (optional_dp_class - 5) >= 2) ? (v14 = MCMCompareDataProtectionClassTarget_kDataProtectionClassPrecedence[optional_dp_class]) : (v14 = 2), v13 < v14))
    {
      container_traverse_node_get_optional_parent_fd();
      return 1;
    }

    optional_parent_fd = container_traverse_node_get_optional_parent_fd();
    if (v13 <= v14)
    {
      return 1;
    }
  }

  if (optional_parent_fd < 0)
  {
    path = container_traverse_node_get_path();
    v24 = xmmword_1DF3BE508;
    v25 = 0;
    v23 = v6;
    if (!path)
    {
      result = _os_crash();
      __break(1u);
      return result;
    }

    v12 = (*(*MEMORY[0x1E69E9988] + 648))(path, &v24, &v23, 4, 2048);
  }

  else
  {
    v25 = 0;
    v24 = xmmword_1DF3BE508;
    v23 = v6;
    v11 = *MEMORY[0x1E69E9988];
    if (name)
    {
      v12 = (*(v11 + 656))();
    }

    else
    {
      v12 = (*(v11 + 320))();
    }
  }

  if (v12 == -1)
  {
    v17 = *__error();
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __95__MCMFileManager_setDataProtectionAtURL_toDataProtectionClass_directoriesOnly_recursive_error___block_invoke_2;
    v21[3] = &__block_descriptor_36_e14___NSError_8__0l;
    v22 = v17;
    v18 = __95__MCMFileManager_setDataProtectionAtURL_toDataProtectionClass_directoriesOnly_recursive_error___block_invoke_2(v21);
    v19 = *(*(a1 + 32) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;

    return 0;
  }

  return 1;
}

id __95__MCMFileManager_setDataProtectionAtURL_toDataProtectionClass_directoriesOnly_recursive_error___block_invoke_578(uint64_t a1)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"container_traverse_directory() failed"];
  v8[0] = @"FunctionName";
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager setDataProtectionAtURL:toDataProtectionClass:directoriesOnly:recursive:error:]_block_invoke"];
  v9[0] = v3;
  v9[1] = &unk_1F5A763C0;
  v4 = *MEMORY[0x1E696A578];
  v8[1] = @"SourceFileLine";
  v8[2] = v4;
  v9[2] = v2;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*(a1 + 32) userInfo:v5];

  return v6;
}

id __95__MCMFileManager_setDataProtectionAtURL_toDataProtectionClass_directoriesOnly_recursive_error___block_invoke_2(uint64_t a1)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"MCMSetDataProtectionClass() failed"];
  v8[0] = @"FunctionName";
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager setDataProtectionAtURL:toDataProtectionClass:directoriesOnly:recursive:error:]_block_invoke_2"];
  v9[0] = v3;
  v9[1] = &unk_1F5A763A8;
  v4 = *MEMORY[0x1E696A578];
  v8[1] = @"SourceFileLine";
  v8[2] = v4;
  v9[2] = v2;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*(a1 + 32) userInfo:v5];

  return v6;
}

- (BOOL)repairPermissionsAtURL:(id)l uid:(unsigned int)uid gid:(unsigned int)gid options:(unint64_t)options error:(id *)error
{
  optionsCopy = options;
  v79[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  _removeACLFilesec = 0;
  v79[0] = [lCopy fileSystemRepresentation];
  v79[1] = 0;
  __s = 0;
  if (optionsCopy)
  {
    _removeACLFilesec = [(MCMFileManager *)self _removeACLFilesec];
    if (!_removeACLFilesec)
    {
      v48 = 0;
      v18 = 0;
      goto LABEL_60;
    }
  }

  v14 = MEMORY[0x1E69E9988];
  if ((optionsCopy & 2) != 0)
  {
    v15 = [(MCMFileManager *)self _denyDeleteACLFilesecWithACLText:&__s];
    if (!v15)
    {
      v18 = 0;
      v48 = 0;
      goto LABEL_58;
    }
  }

  else
  {
    v15 = 0;
  }

  selfCopy = self;
  v60 = v15;
  v16 = (*(*v14 + 384))(v79, 84, 0);
  if (!v16)
  {
    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = __63__MCMFileManager_repairPermissionsAtURL_uid_gid_options_error___block_invoke;
    v69[3] = &unk_1E86B0B98;
    v49 = lCopy;
    v70 = v49;
    v18 = __63__MCMFileManager_repairPermissionsAtURL_uid_gid_options_error___block_invoke(v69);
    v50 = container_log_handle_for_category();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      errorCopy = error;
      v54 = *__error();
      path = [v49 path];
      *v74 = 67240450;
      v75 = v54;
      error = errorCopy;
      v76 = 2112;
      v77 = path;
      _os_log_error_impl(&dword_1DF2C3000, v50, OS_LOG_TYPE_ERROR, "fts_open() failed (%{darwin.errno, public}d) on [%@]", v74, 0x12u);
    }

    v48 = 0;
    goto LABEL_56;
  }

  v17 = v16;
  uidCopy = uid;
  gidCopy = gid;
  v18 = 0;
  do
  {
    v19 = (*(*v14 + 392))(v17);
    if (!v19)
    {
      goto LABEL_48;
    }

    v20 = v19;
    v21 = (*(*v14 + 512))(*(v19 + 48), 0x200000);
    if ((v21 & 0x80000000) != 0)
    {
      v68[0] = MEMORY[0x1E69E9820];
      v68[1] = 3221225472;
      v68[2] = __63__MCMFileManager_repairPermissionsAtURL_uid_gid_options_error___block_invoke_553;
      v68[3] = &__block_descriptor_40_e14___NSError_8__0l;
      v68[4] = v20;
      v23 = __63__MCMFileManager_repairPermissionsAtURL_uid_gid_options_error___block_invoke_553(v68);

      v30 = container_log_handle_for_category();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v37 = *__error();
        v38 = *(v20 + 48);
        *v74 = 67240450;
        v75 = v37;
        v76 = 2080;
        v77 = v38;
        _os_log_error_impl(&dword_1DF2C3000, v30, OS_LOG_TYPE_ERROR, "open() failed (%{darwin.errno, public}d) on path [%s]", v74, 0x12u);
      }

      goto LABEL_25;
    }

    v22 = v21;
    memset(v78, 0, sizeof(v78));
    if ((*(*v14 + 336))())
    {
      v67[0] = MEMORY[0x1E69E9820];
      v67[1] = 3221225472;
      v67[2] = __63__MCMFileManager_repairPermissionsAtURL_uid_gid_options_error___block_invoke_559;
      v67[3] = &__block_descriptor_40_e14___NSError_8__0l;
      v67[4] = v20;
      v23 = __63__MCMFileManager_repairPermissionsAtURL_uid_gid_options_error___block_invoke_559(v67);

      v24 = container_log_handle_for_category();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = *__error();
        v26 = *(v20 + 48);
        *v74 = 67240450;
        v75 = v25;
        v76 = 2080;
        v77 = v26;
        v27 = v74;
        v28 = v24;
        v29 = "fstat failed (%{darwin.errno, public}d) on open fd for path [%s]";
LABEL_46:
        _os_log_error_impl(&dword_1DF2C3000, v28, OS_LOG_TYPE_ERROR, v29, v27, 0x12u);
        goto LABEL_18;
      }

      goto LABEL_18;
    }

    bzero(v74, 0x878uLL);
    if ((*(*v14 + 352))(v22, v74))
    {
      v66[0] = MEMORY[0x1E69E9820];
      v66[1] = 3221225472;
      v66[2] = __63__MCMFileManager_repairPermissionsAtURL_uid_gid_options_error___block_invoke_565;
      v66[3] = &__block_descriptor_40_e14___NSError_8__0l;
      v66[4] = v20;
      v23 = __63__MCMFileManager_repairPermissionsAtURL_uid_gid_options_error___block_invoke_565(v66);

      v24 = container_log_handle_for_category();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v45 = *__error();
        v46 = *(v20 + 48);
        *buf = 67240450;
        *v73 = v45;
        *&v73[4] = 2080;
        *&v73[6] = v46;
        v27 = buf;
        v28 = v24;
        v29 = "fstatfs failed (%{darwin.errno, public}d) on open fd for path [%s]";
        goto LABEL_46;
      }

LABEL_18:

      v31 = 0;
      goto LABEL_19;
    }

    errorCopy2 = error;
    v65 = v18;
    v34 = [(MCMFileManager *)selfCopy _fixFlagsOnFD:v22 FTSENT:v20 stat:v78 error:&v65];
    v23 = v65;

    if (!v34)
    {
      goto LABEL_42;
    }

    if ((WORD2(v78[0]) & 0xF000) != 0x4000 && WORD3(v78[0]) >= 2u)
    {
      v35 = container_log_handle_for_category();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v47 = *(v20 + 48);
        *buf = 136315394;
        *v73 = v47;
        *&v73[8] = 1024;
        *&v73[10] = WORD3(v78[0]);
        _os_log_error_impl(&dword_1DF2C3000, v35, OS_LOG_TYPE_ERROR, "path [%s] is hardlinked [nlink: %d], skipping", buf, 0x12u);
      }

      v31 = 1;
      goto LABEL_43;
    }

    if ((optionsCopy & 3) != 0)
    {
      v39 = *(v20 + 48);
      v64 = v23;
      v40 = [(MCMFileManager *)selfCopy _fixACLOnFD:v22 removeACLFilesec:_removeACLFilesec denyDeleteFilesec:v60 denyDeleteText:__s path:v39 error:&v64];
      v41 = v64;

      if (!v40)
      {
        goto LABEL_44;
      }

      v23 = v41;
    }

    v42 = v23;
    v63 = v23;
    v43 = [(MCMFileManager *)selfCopy _fixPOSIXPermsOnFD:v22 FTSENT:v20 stat:v78 error:&v63];
    v23 = v63;

    if (v43)
    {
      v62 = v23;
      v44 = [(MCMFileManager *)selfCopy _fixOwnershipOnFD:v22 FTSENT:v20 stat:v78 statfs:v74 uid:uidCopy gid:gidCopy error:&v62];
      v41 = v62;

      if (!v44)
      {
LABEL_44:
        v31 = 0;
        v23 = v41;
        goto LABEL_43;
      }

      v61 = v41;
      v31 = [(MCMFileManager *)selfCopy _fixPOSIXBitsOnFD:v22 FTSENT:v20 stat:v78 error:&v61];
      v23 = v61;
    }

    else
    {
LABEL_42:
      v31 = 0;
    }

LABEL_43:
    error = errorCopy2;
LABEL_19:
    if ((*(*v14 + 152))(v22))
    {
      v32 = container_log_handle_for_category();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v36 = *__error();
        *buf = 67109120;
        *v73 = v36;
        _os_log_error_impl(&dword_1DF2C3000, v32, OS_LOG_TYPE_ERROR, "close() failed (%{darwin.errno}d) on file descriptor.", buf, 8u);
      }

      if (v31)
      {
LABEL_23:
        v33 = 0;
        goto LABEL_26;
      }
    }

    else if (v31)
    {
      goto LABEL_23;
    }

LABEL_25:
    v33 = 2;
LABEL_26:
    v18 = v23;
    if ((optionsCopy & 0x100) == 0)
    {
      v33 = 4;
    }
  }

  while (!v33);
  if (v33 == 4)
  {
LABEL_48:
    v48 = 1;
    goto LABEL_55;
  }

  v48 = 0;
LABEL_55:
  (*(*v14 + 376))(v17);
LABEL_56:
  if (v60)
  {
    (*(*v14 + 272))();
  }

LABEL_58:
  if (_removeACLFilesec)
  {
    (*(*v14 + 272))(_removeACLFilesec);
  }

LABEL_60:
  if (__s)
  {
    free(__s);
    memset_s(&__s, 8uLL, 0, 8uLL);
  }

  if (error)
  {
    v51 = v18;
    *error = v18;
  }

  return v48;
}

id __63__MCMFileManager_repairPermissionsAtURL_uid_gid_options_error___block_invoke(uint64_t a1)
{
  v11[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"fts_open() failed on [%@]", v3];

  v10[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager repairPermissionsAtURL:uid:gid:options:error:]_block_invoke"];
  v11[0] = v5;
  v11[1] = &unk_1F5A76348;
  v6 = *MEMORY[0x1E696A578];
  v10[1] = @"SourceFileLine";
  v10[2] = v6;
  v11[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v7];

  return v8;
}

id __63__MCMFileManager_repairPermissionsAtURL_uid_gid_options_error___block_invoke_553(uint64_t a1)
{
  v8[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"open() failed on path [%s]", *(*(a1 + 32) + 48)];
  v7[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager repairPermissionsAtURL:uid:gid:options:error:]_block_invoke"];
  v8[0] = v2;
  v8[1] = &unk_1F5A76360;
  v3 = *MEMORY[0x1E696A578];
  v7[1] = @"SourceFileLine";
  v7[2] = v3;
  v8[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v4];

  return v5;
}

id __63__MCMFileManager_repairPermissionsAtURL_uid_gid_options_error___block_invoke_559(uint64_t a1)
{
  v8[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"fstat() failed on path [%s]", *(*(a1 + 32) + 48)];
  v7[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager repairPermissionsAtURL:uid:gid:options:error:]_block_invoke"];
  v8[0] = v2;
  v8[1] = &unk_1F5A76378;
  v3 = *MEMORY[0x1E696A578];
  v7[1] = @"SourceFileLine";
  v7[2] = v3;
  v8[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v4];

  return v5;
}

id __63__MCMFileManager_repairPermissionsAtURL_uid_gid_options_error___block_invoke_565(uint64_t a1)
{
  v8[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"fstatfs() failed on path [%s]", *(*(a1 + 32) + 48)];
  v7[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager repairPermissionsAtURL:uid:gid:options:error:]_block_invoke"];
  v8[0] = v2;
  v8[1] = &unk_1F5A76390;
  v3 = *MEMORY[0x1E696A578];
  v7[1] = @"SourceFileLine";
  v7[2] = v3;
  v8[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v4];

  return v5;
}

- (id)fsMinimallySanitizedStringFromString:(id)string
{
  v3 = [string stringByReplacingOccurrencesOfString:@"/" withString:&stru_1F5A5B2B8];
  if (([v3 isEqualToString:@".."] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"."))
  {

    v3 = 0;
  }

  return v3;
}

- (id)fsSanitizedStringFromString:(id)string allowSpaces:(BOOL)spaces
{
  spacesCopy = spaces;
  stringCopy = string;
  if (fsSanitizedStringFromString_allowSpaces__onceToken != -1)
  {
    dispatch_once(&fsSanitizedStringFromString_allowSpaces__onceToken, &__block_literal_global_539);
  }

  v6 = fsSanitizedStringFromString_allowSpaces__forbiddenCharactersDisallowingSpace;
  if (spacesCopy)
  {
    v7 = fsSanitizedStringFromString_allowSpaces__forbiddenCharactersAllowingSpace;

    v6 = v7;
  }

  v8 = [stringCopy dataUsingEncoding:1 allowLossyConversion:1];
  v9 = [objc_alloc(MEMORY[0x1E696AD60]) initWithData:v8 encoding:1];
  v10 = [v9 rangeOfCharacterFromSet:v6];
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    for (i = v10; i != 0x7FFFFFFFFFFFFFFFLL; i = [v9 rangeOfCharacterFromSet:v6])
    {
      [v9 replaceCharactersInRange:i withString:{1, @"-"}];
    }
  }

  if (([v9 isEqualToString:@".."] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"."))
  {

    v9 = 0;
  }

  v12 = [v9 copy];

  return v12;
}

void __58__MCMFileManager_fsSanitizedStringFromString_allowSpaces___block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789.-_"];
  v1 = [v0 invertedSet];
  v2 = fsSanitizedStringFromString_allowSpaces__forbiddenCharactersDisallowingSpace;
  fsSanitizedStringFromString_allowSpaces__forbiddenCharactersDisallowingSpace = v1;

  v6 = [@"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789.-_" stringByAppendingString:@" "];
  v3 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:?];
  v4 = [v3 invertedSet];
  v5 = fsSanitizedStringFromString_allowSpaces__forbiddenCharactersAllowingSpace;
  fsSanitizedStringFromString_allowSpaces__forbiddenCharactersAllowingSpace = v4;
}

- (id)fsNodeOfURL:(id)l followSymlinks:(BOOL)symlinks error:(id *)error
{
  symlinksCopy = symlinks;
  v16 = *MEMORY[0x1E69E9840];
  lCopy = l;
  memset(&v15, 0, sizeof(v15));
  fileSystemRepresentation = [lCopy fileSystemRepresentation];
  if (symlinksCopy)
  {
    if (stat(fileSystemRepresentation, &v15))
    {
      goto LABEL_3;
    }
  }

  else if (lstat(fileSystemRepresentation, &v15))
  {
LABEL_3:
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __51__MCMFileManager_fsNodeOfURL_followSymlinks_error___block_invoke;
    v13[3] = &unk_1E86B0B98;
    v14 = lCopy;
    v9 = __51__MCMFileManager_fsNodeOfURL_followSymlinks_error___block_invoke(v13);

    v10 = 0;
    if (!error)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v10 = [[MCMFSNode alloc] initWithStat:&v15];
  v9 = 0;
  if (!error)
  {
    goto LABEL_9;
  }

LABEL_7:
  if (!v10)
  {
    v11 = v9;
    *error = v9;
  }

LABEL_9:

  return v10;
}

id __51__MCMFileManager_fsNodeOfURL_followSymlinks_error___block_invoke(uint64_t a1)
{
  v11[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"Could not determine fsNode of path [%@]", v3];

  v10[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager fsNodeOfURL:followSymlinks:error:]_block_invoke"];
  v11[0] = v5;
  v11[1] = &unk_1F5A76330;
  v6 = *MEMORY[0x1E696A578];
  v10[1] = @"SourceFileLine";
  v10[2] = v6;
  v11[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v7];

  return v8;
}

- (id)copyDescriptionOfURL:(id)l
{
  v13 = *MEMORY[0x1E69E9840];
  bzero(&v12, 0x878uLL);
  memset(&v11, 0, sizeof(v11));
  fileSystemRepresentation = [l fileSystemRepresentation];
  string = [MEMORY[0x1E696AEC0] string];
  if (lstat(fileSystemRepresentation, &v11))
  {
    v6 = [string stringByAppendingFormat:@"lstat error = %d ", *__error()];

    string = v6;
    if (!statfs(fileSystemRepresentation, &v12))
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (statfs(fileSystemRepresentation, &v12))
  {
LABEL_5:
    v6 = [string stringByAppendingFormat:@"statfs error = %d ", *__error()];

    goto LABEL_6;
  }

  v9 = fflagstostr(v11.st_flags);
  v6 = [string stringByAppendingFormat:@"%d/0%o/[%s]/[%s]/%08x/%llx/%x-%x/%d", v11.st_uid, v11.st_mode, v9, v12.f_fstypename, v12.f_flags, v11.st_ino, v12.f_fsid.val[0], v12.f_fsid.val[1], v12.f_owner, v9, *&v11.st_dev];

  if (v9)
  {
    free(v9);
    memset_s(&__s, 8uLL, 0, 8uLL);
  }

LABEL_6:
  v7 = [v6 copy];

  return v7;
}

- (BOOL)removeExclusionFromBackupFromURL:(id)l error:(id *)error
{
  v23 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (lCopy)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Removing backup exclusion unimplemented"];
    v17 = @"FunctionName";
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager removeExclusionFromBackupFromURL:error:]_block_invoke"];
    v20 = v7;
    v21 = &unk_1F5A76318;
    v8 = *MEMORY[0x1E696A578];
    v18 = @"SourceFileLine";
    v19 = v8;
    v22 = v6;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v17 count:3];

    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:45 userInfo:v9];
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"nil path when trying to remove backup exclusion"];
    v17 = @"FunctionName";
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager removeExclusionFromBackupFromURL:error:]_block_invoke"];
    v20 = v12;
    v21 = &unk_1F5A76300;
    v13 = *MEMORY[0x1E696A578];
    v18 = @"SourceFileLine";
    v19 = v13;
    v22 = v11;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v17 count:3];

    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v14];

    if (error)
    {
      v15 = v10;
      *error = v10;
    }
  }

  return lCopy != 0;
}

- (BOOL)fixUserPermissionsAtURL:(id)l limitToTopLevelURL:(id)rL error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  v24 = 0;
  path = [lCopy path];
  path2 = [rLCopy path];
  v11 = [path hasPrefix:path2];

  if (v11)
  {
    v20 = 0;
    if (_fix_permissions_on_path([lCopy fileSystemRepresentation], objc_msgSend(rLCopy, "fileSystemRepresentation"), &v24, &v20))
    {
      v12 = 0;
      goto LABEL_9;
    }

    v24 = 0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __67__MCMFileManager_fixUserPermissionsAtURL_limitToTopLevelURL_error___block_invoke_500;
    v17[3] = &unk_1E86B0618;
    v13 = &v18;
    v18 = lCopy;
    v19 = v20;
    v12 = __67__MCMFileManager_fixUserPermissionsAtURL_limitToTopLevelURL_error___block_invoke_500(v17);
  }

  else
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __67__MCMFileManager_fixUserPermissionsAtURL_limitToTopLevelURL_error___block_invoke;
    v21[3] = &unk_1E86B0BE8;
    v13 = &v22;
    v22 = lCopy;
    v23 = rLCopy;
    v12 = __67__MCMFileManager_fixUserPermissionsAtURL_limitToTopLevelURL_error___block_invoke(v21);
  }

  if (error && v12)
  {
    v14 = v12;
    *error = v12;
  }

LABEL_9:
  v15 = v24;

  return v15;
}

id __67__MCMFileManager_fixUserPermissionsAtURL_limitToTopLevelURL_error___block_invoke(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [*(a1 + 40) path];
  v5 = [v2 initWithFormat:@"provided path [%@] not beneath limit path [%@]", v3, v4];

  v11[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager fixUserPermissionsAtURL:limitToTopLevelURL:error:]_block_invoke"];
  v12[0] = v6;
  v12[1] = &unk_1F5A762D0;
  v7 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v7;
  v12[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v8];

  return v9;
}

id __67__MCMFileManager_fixUserPermissionsAtURL_limitToTopLevelURL_error___block_invoke_500(uint64_t a1)
{
  v11[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"could not fix permissions at [%@]", v3];

  v10[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager fixUserPermissionsAtURL:limitToTopLevelURL:error:]_block_invoke"];
  v11[0] = v5;
  v11[1] = &unk_1F5A762E8;
  v6 = *MEMORY[0x1E696A578];
  v10[1] = @"SourceFileLine";
  v10[2] = v6;
  v11[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*(a1 + 40) userInfo:v7];

  return v8;
}

- (unint64_t)dataWritingOptionsForFileAtURL:(id)l
{
  v21 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v16 = 0;
  v4 = +[MCMFileManager defaultManager];
  v15 = 0;
  v5 = [v4 checkFileSystemAtURL:lCopy isCaseSensitive:0 canAtomicSwap:&v16 + 1 error:&v15];
  v6 = v15;

  if (v5)
  {
    v7 = +[MCMFileManager defaultManager];
    v14 = v6;
    v8 = [v7 checkFileSystemAtURL:lCopy supportsPerFileKeys:&v16 error:&v14];
    v9 = v14;

    if (v8)
    {
      if (v16)
      {
        v10 = HIBYTE(v16) | 0x10000000;
      }

      else
      {
        v10 = HIBYTE(v16);
      }
    }

    else
    {
      v12 = container_log_handle_for_category();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v18 = lCopy;
        v19 = 2112;
        v20 = v9;
        _os_log_error_impl(&dword_1DF2C3000, v12, OS_LOG_TYPE_ERROR, "Could not check fs capabilities for data protection at [%@]: %@", buf, 0x16u);
      }

      v10 = 0;
    }

    v6 = v9;
  }

  else
  {
    v11 = container_log_handle_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v18 = lCopy;
      v19 = 2112;
      v20 = v6;
      _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, "Could not check fs capabilities for atomic swap at [%@]: %@", buf, 0x16u);
    }

    v10 = 0;
  }

  return v10;
}

- (BOOL)stripACLFromURL:(id)l error:(id *)error
{

  return [(MCMFileManager *)self _enumeratePOSIX1eACLEntriesAtURL:l error:error usingBlock:&__block_literal_global_463];
}

uint64_t __40__MCMFileManager_stripACLFromURL_error___block_invoke(int a1, acl_entry_t entry_d, _BYTE *a3, void *a4)
{
  v19[3] = *MEMORY[0x1E69E9840];
  tag_type_p = ACL_UNDEFINED_TAG;
  permset_p = 0;
  if (acl_get_tag_type(entry_d, &tag_type_p))
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Could not get ACL tag type."];
    v18[0] = @"FunctionName";
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager stripACLFromURL:error:]_block_invoke_2"];
    v9 = v8;
    v10 = &unk_1F5A76270;
LABEL_5:
    v19[0] = v8;
    v19[1] = v10;
    v11 = *MEMORY[0x1E696A578];
    v18[1] = @"SourceFileLine";
    v18[2] = v11;
    v19[2] = v7;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:3];

    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v12];

    goto LABEL_6;
  }

  if (acl_get_permset(entry_d, &permset_p))
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Could not get ACL permset."];
    v18[0] = @"FunctionName";
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager stripACLFromURL:error:]_block_invoke"];
    v9 = v8;
    v10 = &unk_1F5A76288;
    goto LABEL_5;
  }

  if (tag_type_p == ACL_EXTENDED_DENY)
  {
    if (acl_delete_perm(permset_p, ACL_DELETE))
    {
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Could not delete ACL_DELETE permission from permset."];
      v18[0] = @"FunctionName";
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager stripACLFromURL:error:]_block_invoke"];
      v9 = v8;
      v10 = &unk_1F5A762A0;
      goto LABEL_5;
    }

    if (acl_set_permset(entry_d, permset_p))
    {
      v13 = __40__MCMFileManager_stripACLFromURL_error___block_invoke_487();
    }

    else
    {
      v13 = 0;
      *a3 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_6:
  if (a4)
  {
    v14 = v13;
    *a4 = v13;
  }

  return 0;
}

id __40__MCMFileManager_stripACLFromURL_error___block_invoke_487()
{
  v7[3] = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Could not set new permset on ACL entry."];
  v6[0] = @"FunctionName";
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager stripACLFromURL:error:]_block_invoke"];
  v7[0] = v1;
  v7[1] = &unk_1F5A762B8;
  v2 = *MEMORY[0x1E696A578];
  v6[1] = @"SourceFileLine";
  v6[2] = v2;
  v7[2] = v0;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:3];

  v4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v3];

  return v4;
}

- (BOOL)_enumeratePOSIX1eACLEntriesAtURL:(id)l error:(id *)error usingBlock:(id)block
{
  v28[3] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  fileSystemRepresentation = [l fileSystemRepresentation];
  if (!fileSystemRepresentation)
  {
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"URL is nil"];
    v27[0] = @"FunctionName";
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager _enumeratePOSIX1eACLEntriesAtURL:error:usingBlock:]_block_invoke"];
    v28[0] = v15;
    v28[1] = &unk_1F5A76228;
    v16 = *MEMORY[0x1E696A578];
    v27[1] = @"SourceFileLine";
    v27[2] = v16;
    v28[2] = v14;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:3];

    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v17];

    goto LABEL_7;
  }

  v9 = fileSystemRepresentation;
  file = acl_get_file(fileSystemRepresentation, ACL_TYPE_EXTENDED);
  if (!file)
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __68__MCMFileManager__enumeratePOSIX1eACLEntriesAtURL_error_usingBlock___block_invoke_449;
    v26[3] = &__block_descriptor_40_e14___NSError_8__0l;
    v26[4] = v9;
    v12 = __68__MCMFileManager__enumeratePOSIX1eACLEntriesAtURL_error_usingBlock___block_invoke_449(v26);
LABEL_7:
    LOBYTE(v13) = 0;
    if (!error)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  v11 = file;
  entry_p = 0;
  if (acl_get_entry(file, 0, &entry_p))
  {
    v12 = 0;
    LOBYTE(v13) = 1;
  }

  else
  {
    v18 = 0;
    v12 = 0;
    do
    {
      LOBYTE(v28[0]) = 0;
      v24 = v12;
      v13 = blockCopy[2](blockCopy, entry_p, v28, &v24);
      v19 = v24;

      v12 = v19;
      v18 |= LOBYTE(v28[0]);
      if (!error)
      {
        v13 = 1;
      }
    }

    while (v13 == 1 && !acl_get_entry(v11, -1, &entry_p));
    if ((v18 & 1) != 0 && acl_set_file(v9, ACL_TYPE_EXTENDED, v11))
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __68__MCMFileManager__enumeratePOSIX1eACLEntriesAtURL_error_usingBlock___block_invoke_455;
      v23[3] = &__block_descriptor_40_e14___NSError_8__0l;
      v23[4] = v9;
      v20 = __68__MCMFileManager__enumeratePOSIX1eACLEntriesAtURL_error_usingBlock___block_invoke_455(v23);

      LOBYTE(v13) = 0;
      v12 = v20;
    }
  }

  acl_free(v11);
  if (error)
  {
LABEL_18:
    if ((v13 & 1) == 0)
    {
      v21 = v12;
      *error = v12;
    }
  }

LABEL_20:

  return v13;
}

id __68__MCMFileManager__enumeratePOSIX1eACLEntriesAtURL_error_usingBlock___block_invoke_449(uint64_t a1)
{
  v8[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Could not get ACL for [%s]", *(a1 + 32)];
  v7[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager _enumeratePOSIX1eACLEntriesAtURL:error:usingBlock:]_block_invoke"];
  v8[0] = v2;
  v8[1] = &unk_1F5A76240;
  v3 = *MEMORY[0x1E696A578];
  v7[1] = @"SourceFileLine";
  v7[2] = v3;
  v8[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v4];

  return v5;
}

id __68__MCMFileManager__enumeratePOSIX1eACLEntriesAtURL_error_usingBlock___block_invoke_455(uint64_t a1)
{
  v8[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Could not set ACL for [%s]", *(a1 + 32)];
  v7[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager _enumeratePOSIX1eACLEntriesAtURL:error:usingBlock:]_block_invoke"];
  v8[0] = v2;
  v8[1] = &unk_1F5A76258;
  v3 = *MEMORY[0x1E696A578];
  v7[1] = @"SourceFileLine";
  v7[2] = v3;
  v8[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v4];

  return v5;
}

- (BOOL)checkFileSystemAtURL:(id)l supportsPerFileKeys:(BOOL *)keys error:(id *)error
{
  v17 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if ([lCopy hasDirectoryPath])
  {
    uRLByDeletingLastPathComponent = lCopy;
  }

  else
  {
    uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
  }

  v9 = uRLByDeletingLastPathComponent;
  bzero(&v16, 0x878uLL);
  v10 = statfs([v9 fileSystemRepresentation], &v16);
  if (v10)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __65__MCMFileManager_checkFileSystemAtURL_supportsPerFileKeys_error___block_invoke;
    v14[3] = &unk_1E86B0B98;
    v15 = v9;
    v11 = __65__MCMFileManager_checkFileSystemAtURL_supportsPerFileKeys_error___block_invoke(v14);

    if (error)
    {
      v12 = v11;
      *error = v11;
    }
  }

  else
  {
    v11 = 0;
    if (keys)
    {
      *keys = (v16.f_flags & 0x80) != 0;
    }
  }

  return v10 == 0;
}

id __65__MCMFileManager_checkFileSystemAtURL_supportsPerFileKeys_error___block_invoke(uint64_t a1)
{
  v11[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"Could not get statfs at [%@]", v3];

  v10[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager checkFileSystemAtURL:supportsPerFileKeys:error:]_block_invoke"];
  v11[0] = v5;
  v11[1] = &unk_1F5A76210;
  v6 = *MEMORY[0x1E696A578];
  v10[1] = @"SourceFileLine";
  v10[2] = v6;
  v11[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v7];

  return v8;
}

- (BOOL)checkFileSystemAtURL:(id)l isCaseSensitive:(BOOL *)sensitive canAtomicSwap:(BOOL *)swap error:(id *)error
{
  v35 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  v23 = xmmword_1DF3BE498;
  v24 = 0;
  if ([lCopy hasDirectoryPath])
  {
    uRLByDeletingLastPathComponent = lCopy;
  }

  else
  {
    uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
  }

  v11 = uRLByDeletingLastPathComponent;
  if (getattrlist([uRLByDeletingLastPathComponent fileSystemRepresentation], &v23, &v31, 0x38uLL, 0))
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __75__MCMFileManager_checkFileSystemAtURL_isCaseSensitive_canAtomicSwap_error___block_invoke_434;
    v19[3] = &unk_1E86B0B98;
    v12 = &v20;
    v20 = v11;
    v13 = __75__MCMFileManager_checkFileSystemAtURL_isCaseSensitive_canAtomicSwap_error___block_invoke_434(v19);
    goto LABEL_10;
  }

  if (v31 != 56)
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __75__MCMFileManager_checkFileSystemAtURL_isCaseSensitive_canAtomicSwap_error___block_invoke_431;
    v25[3] = &unk_1E86AFD10;
    v12 = &v26;
    v14 = v11;
    v27 = v31;
    v28 = v32;
    v29 = v33;
    v26 = v14;
    v30 = v34;
    v13 = __75__MCMFileManager_checkFileSystemAtURL_isCaseSensitive_canAtomicSwap_error___block_invoke_431(v25);
LABEL_10:
    v15 = v13;

    if (error)
    {
      v16 = v15;
      v17 = 0;
      *error = v15;
    }

    else
    {
      v17 = 0;
    }

    goto LABEL_18;
  }

  if ((BYTE10(v31) & 2) == 0)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __75__MCMFileManager_checkFileSystemAtURL_isCaseSensitive_canAtomicSwap_error___block_invoke;
    v21[3] = &unk_1E86B0B98;
    v12 = &v22;
    v22 = v11;
    v13 = __75__MCMFileManager_checkFileSystemAtURL_isCaseSensitive_canAtomicSwap_error___block_invoke(v21);
    goto LABEL_10;
  }

  if (sensitive)
  {
    *sensitive = ((WORD4(v33) & WORD4(v32)) >> 8) & 1;
  }

  v15 = 0;
  if (swap)
  {
    *swap = (BYTE14(v32) >> 2) & ((HIDWORD(v33) & 0x40000u) >> 18);
  }

  v17 = 1;
LABEL_18:

  return v17;
}

id __75__MCMFileManager_checkFileSystemAtURL_isCaseSensitive_canAtomicSwap_error___block_invoke(uint64_t a1)
{
  v11[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"getattrlist did not return volume capabilities for [%@]", v3];

  v10[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager checkFileSystemAtURL:isCaseSensitive:canAtomicSwap:error:]_block_invoke"];
  v11[0] = v5;
  v11[1] = &unk_1F5A761C8;
  v6 = *MEMORY[0x1E696A578];
  v10[1] = @"SourceFileLine";
  v10[2] = v6;
  v11[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v7];

  return v8;
}

id __75__MCMFileManager_checkFileSystemAtURL_isCaseSensitive_canAtomicSwap_error___block_invoke_431(uint64_t a1)
{
  v11[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"getattrlist did not return correctly sized attributes buffer for [%@]: expected = %lu, got = %d", v3, 56, *(a1 + 40)];

  v10[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager checkFileSystemAtURL:isCaseSensitive:canAtomicSwap:error:]_block_invoke"];
  v11[0] = v5;
  v11[1] = &unk_1F5A761E0;
  v6 = *MEMORY[0x1E696A578];
  v10[1] = @"SourceFileLine";
  v10[2] = v6;
  v11[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v7];

  return v8;
}

id __75__MCMFileManager_checkFileSystemAtURL_isCaseSensitive_canAtomicSwap_error___block_invoke_434(uint64_t a1)
{
  v11[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"Could not get volume capabilities for [%@]", v3];

  v10[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager checkFileSystemAtURL:isCaseSensitive:canAtomicSwap:error:]_block_invoke"];
  v11[0] = v5;
  v11[1] = &unk_1F5A761F8;
  v6 = *MEMORY[0x1E696A578];
  v10[1] = @"SourceFileLine";
  v10[2] = v6;
  v11[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v7];

  return v8;
}

- (BOOL)compareVolumeForURL:(id)l versusURL:(id)rL isSameVolume:(BOOL *)volume error:(id *)error
{
  v53 = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  memset(v52, 0, sizeof(v52));
  memset(v51, 0, 36);
  v39 = xmmword_1DF3BE480;
  v40 = 0;
  v37 = xmmword_1DF3BE480;
  v38 = 0;
  if ([lCopy hasDirectoryPath])
  {
    uRLByDeletingLastPathComponent = lCopy;
  }

  else
  {
    uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
  }

  v12 = uRLByDeletingLastPathComponent;
  if ([rLCopy hasDirectoryPath])
  {
    uRLByDeletingLastPathComponent2 = rLCopy;
  }

  else
  {
    uRLByDeletingLastPathComponent2 = [rLCopy URLByDeletingLastPathComponent];
  }

  v14 = uRLByDeletingLastPathComponent2;
  if (getattrlist([v12 fileSystemRepresentation], &v39, v52, 0x24uLL, 0))
  {
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __67__MCMFileManager_compareVolumeForURL_versusURL_isSameVolume_error___block_invoke_408;
    v31[3] = &unk_1E86B0B98;
    v15 = &v32;
    v32 = v12;
    v16 = __67__MCMFileManager_compareVolumeForURL_versusURL_isSameVolume_error___block_invoke_408(v31);
    goto LABEL_13;
  }

  if (*v52 != 36)
  {
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __67__MCMFileManager_compareVolumeForURL_versusURL_isSameVolume_error___block_invoke_402;
    v46[3] = &unk_1E86AFCE8;
    v15 = &v47;
    v47 = v12;
    v48 = *v52;
    v49 = *&v52[16];
    v50 = *&v52[32];
    v16 = __67__MCMFileManager_compareVolumeForURL_versusURL_isSameVolume_error___block_invoke_402(v46);
    goto LABEL_13;
  }

  if ((v52[4] & 2) == 0)
  {
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __67__MCMFileManager_compareVolumeForURL_versusURL_isSameVolume_error___block_invoke;
    v35[3] = &unk_1E86B0B98;
    v15 = &v36;
    v36 = v12;
    v16 = __67__MCMFileManager_compareVolumeForURL_versusURL_isSameVolume_error___block_invoke(v35);
    goto LABEL_13;
  }

  if ((v52[4] & 4) == 0)
  {
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __67__MCMFileManager_compareVolumeForURL_versusURL_isSameVolume_error___block_invoke_399;
    v33[3] = &unk_1E86B0B98;
    v15 = &v34;
    v34 = v12;
    v16 = __67__MCMFileManager_compareVolumeForURL_versusURL_isSameVolume_error___block_invoke_399(v33);
    goto LABEL_13;
  }

  v21 = *&v52[24];
  v22 = *&v52[28];
  if (getattrlist([v14 fileSystemRepresentation], &v37, v51, 0x24uLL, 0))
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __67__MCMFileManager_compareVolumeForURL_versusURL_isSameVolume_error___block_invoke_423;
    v25[3] = &unk_1E86B0B98;
    v15 = &v26;
    v26 = v14;
    v16 = __67__MCMFileManager_compareVolumeForURL_versusURL_isSameVolume_error___block_invoke_423(v25);
    goto LABEL_13;
  }

  if (LODWORD(v51[0]) != 36)
  {
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __67__MCMFileManager_compareVolumeForURL_versusURL_isSameVolume_error___block_invoke_420;
    v41[3] = &unk_1E86AFCE8;
    v15 = &v42;
    v42 = v14;
    v43 = v51[0];
    v44 = v51[1];
    v45 = v51[2];
    v16 = __67__MCMFileManager_compareVolumeForURL_versusURL_isSameVolume_error___block_invoke_420(v41);
    goto LABEL_13;
  }

  if ((BYTE4(v51[0]) & 2) == 0)
  {
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __67__MCMFileManager_compareVolumeForURL_versusURL_isSameVolume_error___block_invoke_414;
    v29[3] = &unk_1E86B0B98;
    v15 = &v30;
    v30 = v14;
    v16 = __67__MCMFileManager_compareVolumeForURL_versusURL_isSameVolume_error___block_invoke_414(v29);
    goto LABEL_13;
  }

  if ((BYTE4(v51[0]) & 4) == 0)
  {
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __67__MCMFileManager_compareVolumeForURL_versusURL_isSameVolume_error___block_invoke_417;
    v27[3] = &unk_1E86B0B98;
    v15 = &v28;
    v28 = v14;
    v16 = __67__MCMFileManager_compareVolumeForURL_versusURL_isSameVolume_error___block_invoke_417(v27);
LABEL_13:
    v17 = v16;

    if (error)
    {
      v18 = v17;
      v19 = 0;
      *error = v17;
    }

    else
    {
      v19 = 0;
    }

    goto LABEL_16;
  }

  v17 = 0;
  if (volume)
  {
    v24 = v21 == DWORD2(v51[1]) && v22 == *(&v51[1] + 12);
    *volume = v24;
  }

  v19 = 1;
LABEL_16:

  return v19;
}

id __67__MCMFileManager_compareVolumeForURL_versusURL_isSameVolume_error___block_invoke(uint64_t a1)
{
  v11[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"getattrlist did not return device ID for [%@]", v3];

  v10[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager compareVolumeForURL:versusURL:isSameVolume:error:]_block_invoke"];
  v11[0] = v5;
  v11[1] = &unk_1F5A76108;
  v6 = *MEMORY[0x1E696A578];
  v10[1] = @"SourceFileLine";
  v10[2] = v6;
  v11[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v7];

  return v8;
}

id __67__MCMFileManager_compareVolumeForURL_versusURL_isSameVolume_error___block_invoke_399(uint64_t a1)
{
  v11[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"getattrlist did not return device ID for [%@]", v3];

  v10[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager compareVolumeForURL:versusURL:isSameVolume:error:]_block_invoke"];
  v11[0] = v5;
  v11[1] = &unk_1F5A76120;
  v6 = *MEMORY[0x1E696A578];
  v10[1] = @"SourceFileLine";
  v10[2] = v6;
  v11[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v7];

  return v8;
}

id __67__MCMFileManager_compareVolumeForURL_versusURL_isSameVolume_error___block_invoke_402(uint64_t a1)
{
  v11[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"getattrlist did not return correctly sized attributes buffer for [%@]: expected = %lu, got = %d", v3, 36, *(a1 + 40)];

  v10[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager compareVolumeForURL:versusURL:isSameVolume:error:]_block_invoke"];
  v11[0] = v5;
  v11[1] = &unk_1F5A76138;
  v6 = *MEMORY[0x1E696A578];
  v10[1] = @"SourceFileLine";
  v10[2] = v6;
  v11[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v7];

  return v8;
}

id __67__MCMFileManager_compareVolumeForURL_versusURL_isSameVolume_error___block_invoke_408(uint64_t a1)
{
  v11[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"Could not get attributes for [%@]", v3];

  v10[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager compareVolumeForURL:versusURL:isSameVolume:error:]_block_invoke"];
  v11[0] = v5;
  v11[1] = &unk_1F5A76150;
  v6 = *MEMORY[0x1E696A578];
  v10[1] = @"SourceFileLine";
  v10[2] = v6;
  v11[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v7];

  return v8;
}

id __67__MCMFileManager_compareVolumeForURL_versusURL_isSameVolume_error___block_invoke_414(uint64_t a1)
{
  v11[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"getattrlist did not return device ID for [%@]", v3];

  v10[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager compareVolumeForURL:versusURL:isSameVolume:error:]_block_invoke"];
  v11[0] = v5;
  v11[1] = &unk_1F5A76168;
  v6 = *MEMORY[0x1E696A578];
  v10[1] = @"SourceFileLine";
  v10[2] = v6;
  v11[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v7];

  return v8;
}

id __67__MCMFileManager_compareVolumeForURL_versusURL_isSameVolume_error___block_invoke_417(uint64_t a1)
{
  v11[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"getattrlist did not return device ID for [%@]", v3];

  v10[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager compareVolumeForURL:versusURL:isSameVolume:error:]_block_invoke"];
  v11[0] = v5;
  v11[1] = &unk_1F5A76180;
  v6 = *MEMORY[0x1E696A578];
  v10[1] = @"SourceFileLine";
  v10[2] = v6;
  v11[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v7];

  return v8;
}

id __67__MCMFileManager_compareVolumeForURL_versusURL_isSameVolume_error___block_invoke_420(uint64_t a1)
{
  v11[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"getattrlist did not return correctly sized attributes buffer for [%@]: expected = %lu, got = %d", v3, 36, *(a1 + 40)];

  v10[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager compareVolumeForURL:versusURL:isSameVolume:error:]_block_invoke"];
  v11[0] = v5;
  v11[1] = &unk_1F5A76198;
  v6 = *MEMORY[0x1E696A578];
  v10[1] = @"SourceFileLine";
  v10[2] = v6;
  v11[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v7];

  return v8;
}

id __67__MCMFileManager_compareVolumeForURL_versusURL_isSameVolume_error___block_invoke_423(uint64_t a1)
{
  v11[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"Could not get attributes for [%@]", v3];

  v10[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager compareVolumeForURL:versusURL:isSameVolume:error:]_block_invoke"];
  v11[0] = v5;
  v11[1] = &unk_1F5A761B0;
  v6 = *MEMORY[0x1E696A578];
  v10[1] = @"SourceFileLine";
  v10[2] = v6;
  v11[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v7];

  return v8;
}

- (id)mountPointForURL:(id)l error:(id *)error
{
  v16 = *MEMORY[0x1E69E9840];
  lCopy = l;
  bzero(&v15, 0x878uLL);
  if (statfs([lCopy fileSystemRepresentation], &v15))
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __41__MCMFileManager_mountPointForURL_error___block_invoke;
    v13[3] = &unk_1E86B0B98;
    v14 = lCopy;
    v7 = __41__MCMFileManager_mountPointForURL_error___block_invoke(v13);
    v8 = 0;
    v9 = v14;
  }

  else
  {
    v9 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:v15.f_mntonname isDirectory:1 relativeToURL:0];
    v12 = 0;
    v8 = [(MCMFileManager *)self realPathForURL:v9 isDirectory:1 error:&v12];
    v7 = v12;
  }

  if (error && !v8)
  {
    v10 = v7;
    *error = v7;
  }

  return v8;
}

id __41__MCMFileManager_mountPointForURL_error___block_invoke(uint64_t a1)
{
  v11[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"Could not get statfs at [%@]", v3];

  v10[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager mountPointForURL:error:]_block_invoke"];
  v11[0] = v5;
  v11[1] = &unk_1F5A760F0;
  v6 = *MEMORY[0x1E696A578];
  v10[1] = @"SourceFileLine";
  v10[2] = v6;
  v11[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v7];

  return v8;
}

- (BOOL)writeData:(id)data toURL:(id)l options:(unint64_t)options mode:(unsigned __int16)mode error:(id *)error
{
  modeCopy = mode;
  v78 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  lCopy = l;
  bytes = [dataCopy bytes];
  __s = 0;
  container_seam_fs_ensure_lazy_loaded();
  v14 = MEMORY[0x1E69E9988];
  if ((options & 0xFFFFFFFF8FFFFFFELL) != 0)
  {
    v68[0] = MEMORY[0x1E69E9820];
    v68[1] = 3221225472;
    v68[2] = __53__MCMFileManager_writeData_toURL_options_mode_error___block_invoke;
    v68[3] = &__block_descriptor_40_e14___NSError_8__0l;
    v68[4] = options & 0xFFFFFFFF8FFFFFFELL;
    v15 = __53__MCMFileManager_writeData_toURL_options_mode_error___block_invoke(v68);
LABEL_3:
    v16 = 0;
    v17 = 0;
    goto LABEL_4;
  }

  v20 = *MEMORY[0x1E69E9988];
  if ((options - 0x10000000) >> 28 > 4)
  {
    v21 = 0xFFFFFFFFLL;
  }

  else
  {
    v21 = *(&unk_1DF3BE4B0 + (((options - 0x10000000) >> 26) & 0x3FFFFFFFFCLL));
  }

  v22 = *(v20 + 504);
  if ((options & 1) == 0)
  {
    v16 = 0;
    v23 = -1;
    v24 = 1793;
    goto LABEL_21;
  }

  if (asprintf(&__s, "%s.atomic.XXXXXX", [lCopy fileSystemRepresentation]) < 0)
  {
    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = __53__MCMFileManager_writeData_toURL_options_mode_error___block_invoke_353;
    v66[3] = &unk_1E86B0B98;
    v67 = lCopy;
    v15 = __53__MCMFileManager_writeData_toURL_options_mode_error___block_invoke_353(v66);

    goto LABEL_3;
  }

  v25 = *v14;
  v47 = lCopy;
  if (!v22)
  {
    v26 = (*(v25 + 496))(__s);
    if ((v26 & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

LABEL_44:
    v42 = *__error();
    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 3221225472;
    v64[2] = __53__MCMFileManager_writeData_toURL_options_mode_error___block_invoke_359;
    v64[3] = &__block_descriptor_44_e14___NSError_8__0l;
    v64[4] = __s;
    v65 = v42;
    v15 = __53__MCMFileManager_writeData_toURL_options_mode_error___block_invoke_359(v64);
    v16 = 0;
    v17 = 0;
    goto LABEL_4;
  }

  v26 = (*(v25 + 504))(__s, v21, 0);
  if (v26 < 0)
  {
    goto LABEL_44;
  }

LABEL_20:
  v27 = modeCopy;
  errorCopy = error;
  v29 = v26;
  v16 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:__s isDirectory:0 relativeToURL:0];
  v23 = v29;
  error = errorCopy;
  modeCopy = v27;
  v20 = *v14;
  v24 = 256;
  lCopy = v47;
LABEL_21:
  v48 = v23;
  if (v22)
  {
    v30 = (*(v20 + 520))([lCopy fileSystemRepresentation], v24, v21, 0);
  }

  else
  {
    v30 = (*(v20 + 512))([lCopy fileSystemRepresentation], v24);
  }

  v31 = v30;
  v32 = *__error();
  v34 = (options & 1) == 0 || v32 != 2;
  if ((v31 & 0x80000000) == 0 || !v34)
  {
    if (options)
    {
      v35 = v48;
    }

    else
    {
      v35 = v31;
    }

    v36 = (*(*MEMORY[0x1E69E9988] + 704))(v35, bytes, [dataCopy length]);
    if (v36 == [dataCopy length])
    {
      if (options)
      {
        v14 = MEMORY[0x1E69E9988];
        v37 = (*(*MEMORY[0x1E69E9988] + 688))(18);
        (*(*v14 + 688))();
        v38 = modeCopy & ~v37;
        if (((*(*v14 + 208))(v48, v38) & 0x80000000) != 0)
        {
          v43 = *__error();
          v53[0] = MEMORY[0x1E69E9820];
          v53[1] = 3221225472;
          v53[2] = __53__MCMFileManager_writeData_toURL_options_mode_error___block_invoke_377;
          v53[3] = &unk_1E86B0578;
          v54 = v16;
          v56 = v38;
          v55 = v43;
          v15 = __53__MCMFileManager_writeData_toURL_options_mode_error___block_invoke_377(v53);
          v17 = 0;
          v41 = v54;
          goto LABEL_53;
        }

        if ((v31 & 0x80000000) != 0)
        {
          v39 = 4;
        }

        else
        {
          (*(*v14 + 152))(v31);
          v31 = 0xFFFFFFFFLL;
          v39 = 2;
        }

        (*(*v14 + 152))(v48);
        if (((*(*v14 + 640))([v16 fileSystemRepresentation], objc_msgSend(lCopy, "fileSystemRepresentation"), v39) & 0x80000000) != 0)
        {
          v46 = *__error();
          v49[0] = MEMORY[0x1E69E9820];
          v49[1] = 3221225472;
          v49[2] = __53__MCMFileManager_writeData_toURL_options_mode_error___block_invoke_383;
          v49[3] = &unk_1E86B05A0;
          v16 = v16;
          v50 = v16;
          v51 = lCopy;
          v52 = v46;
          v15 = __53__MCMFileManager_writeData_toURL_options_mode_error___block_invoke_383(v49);

          v17 = 0;
          v14 = MEMORY[0x1E69E9988];
          goto LABEL_4;
        }

        v48 = -1;
      }

      v41 = container_log_handle_for_category();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        path = [lCopy path];
        v45 = [dataCopy length];
        *buf = 138544130;
        v71 = path;
        v72 = 2050;
        v73 = v45;
        v74 = 2050;
        optionsCopy = options;
        v76 = 1026;
        v77 = modeCopy;
        _os_log_impl(&dword_1DF2C3000, v41, OS_LOG_TYPE_DEFAULT, "Wrote [%{public}@], length = %{public}lu, options = 0x%{public}lx, mode = 0%{public}o", buf, 0x26u);
      }

      v15 = 0;
      v17 = 1;
    }

    else
    {
      v40 = *__error();
      v57[0] = MEMORY[0x1E69E9820];
      v57[1] = 3221225472;
      v57[2] = __53__MCMFileManager_writeData_toURL_options_mode_error___block_invoke_371;
      v57[3] = &unk_1E86B0618;
      v58 = lCopy;
      v59 = v40;
      v15 = __53__MCMFileManager_writeData_toURL_options_mode_error___block_invoke_371(v57);
      v17 = 0;
      v41 = v58;
    }

    v14 = MEMORY[0x1E69E9988];
LABEL_53:

    if ((v31 & 0x80000000) == 0)
    {
      (*(*v14 + 152))(v31);
    }

    goto LABEL_55;
  }

  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __53__MCMFileManager_writeData_toURL_options_mode_error___block_invoke_365;
  v60[3] = &unk_1E86B05A0;
  v61 = lCopy;
  v62 = v16;
  v63 = v32;
  v15 = __53__MCMFileManager_writeData_toURL_options_mode_error___block_invoke_365(v60);

  v17 = 0;
  v14 = MEMORY[0x1E69E9988];
LABEL_55:
  if ((v48 & 0x80000000) == 0)
  {
    (*(*v14 + 152))();
  }

LABEL_4:
  if (__s)
  {
    free(__s);
    memset_s(&__s, 8uLL, 0, 8uLL);
  }

  if (v16)
  {
    (*(*v14 + 696))([v16 fileSystemRepresentation]);
  }

  if (error && v15)
  {
    v18 = v15;
    *error = v15;
  }

  return v17;
}

id __53__MCMFileManager_writeData_toURL_options_mode_error___block_invoke(uint64_t a1)
{
  v8[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unsupported data writing options: 0x%lx", *(a1 + 32)];
  v7[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager writeData:toURL:options:mode:error:]_block_invoke"];
  v8[0] = v2;
  v8[1] = &unk_1F5A76048;
  v3 = *MEMORY[0x1E696A578];
  v7[1] = @"SourceFileLine";
  v7[2] = v3;
  v8[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:45 userInfo:v4];

  return v5;
}

id __53__MCMFileManager_writeData_toURL_options_mode_error___block_invoke_353(uint64_t a1)
{
  v11[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"Could not allocate memory for temporary filename for [%@]", v3];

  v10[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager writeData:toURL:options:mode:error:]_block_invoke"];
  v11[0] = v5;
  v11[1] = &unk_1F5A76060;
  v6 = *MEMORY[0x1E696A578];
  v10[1] = @"SourceFileLine";
  v10[2] = v6;
  v11[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:12 userInfo:v7];

  return v8;
}

id __53__MCMFileManager_writeData_toURL_options_mode_error___block_invoke_359(uint64_t a1)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Could not open temp [%s] for create+writing", *(a1 + 32)];
  v8[0] = @"FunctionName";
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager writeData:toURL:options:mode:error:]_block_invoke"];
  v9[0] = v3;
  v9[1] = &unk_1F5A76078;
  v4 = *MEMORY[0x1E696A578];
  v8[1] = @"SourceFileLine";
  v8[2] = v4;
  v9[2] = v2;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*(a1 + 40) userInfo:v5];

  return v6;
}

id __53__MCMFileManager_writeData_toURL_options_mode_error___block_invoke_365(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [*(a1 + 40) path];
  v5 = [v2 initWithFormat:@"Could not open [%@] -> [%@] for create+writing", v3, v4];

  v11[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager writeData:toURL:options:mode:error:]_block_invoke"];
  v12[0] = v6;
  v12[1] = &unk_1F5A76090;
  v7 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v7;
  v12[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*(a1 + 48) userInfo:v8];

  return v9;
}

id __53__MCMFileManager_writeData_toURL_options_mode_error___block_invoke_371(uint64_t a1)
{
  v11[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"Could not write to [%@]", v3];

  v10[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager writeData:toURL:options:mode:error:]_block_invoke"];
  v11[0] = v5;
  v11[1] = &unk_1F5A760A8;
  v6 = *MEMORY[0x1E696A578];
  v10[1] = @"SourceFileLine";
  v10[2] = v6;
  v11[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*(a1 + 40) userInfo:v7];

  return v8;
}

id __53__MCMFileManager_writeData_toURL_options_mode_error___block_invoke_377(uint64_t a1)
{
  v11[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"Could not chmod temp file [%@] to 0%o", v3, *(a1 + 44)];

  v10[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager writeData:toURL:options:mode:error:]_block_invoke"];
  v11[0] = v5;
  v11[1] = &unk_1F5A760C0;
  v6 = *MEMORY[0x1E696A578];
  v10[1] = @"SourceFileLine";
  v10[2] = v6;
  v11[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*(a1 + 40) userInfo:v7];

  return v8;
}

id __53__MCMFileManager_writeData_toURL_options_mode_error___block_invoke_383(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [*(a1 + 40) path];
  v5 = [v2 initWithFormat:@"Could not swap temp file [%@] with destination file [%@]", v3, v4];

  v11[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager writeData:toURL:options:mode:error:]_block_invoke"];
  v12[0] = v6;
  v12[1] = &unk_1F5A760D8;
  v7 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v7;
  v12[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*(a1 + 48) userInfo:v8];

  return v9;
}

- (id)readDataFromURL:(id)l options:(unint64_t)options fsNode:(id *)node error:(id *)error
{
  v59 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v10 = lCopy;
  __s = 0;
  if ((options & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __55__MCMFileManager_readDataFromURL_options_fsNode_error___block_invoke;
    v50[3] = &__block_descriptor_40_e14___NSError_8__0l;
    v50[4] = options & 0xFFFFFFFFFFFFFFFDLL;
    v11 = __55__MCMFileManager_readDataFromURL_options_fsNode_error___block_invoke(v50);
    v12 = 0;
    v13 = 0;
    v14 = -1;
    goto LABEL_33;
  }

  v15 = open([lCopy fileSystemRepresentation], 256);
  v14 = v15;
  if (v15 < 0)
  {
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __55__MCMFileManager_readDataFromURL_options_fsNode_error___block_invoke_313;
    v48[3] = &unk_1E86B0B98;
    v49 = v10;
    v11 = __55__MCMFileManager_readDataFromURL_options_fsNode_error___block_invoke_313(v48);
    v25 = v49;
LABEL_18:

    v12 = 0;
    v13 = 0;
    goto LABEL_33;
  }

  if (options)
  {
    fcntl(v15, 48, 1);
  }

  v16 = malloc_type_calloc(1uLL, 0x4000uLL, 0x5169260AuLL);
  __s = v16;
  if (!v16)
  {
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __55__MCMFileManager_readDataFromURL_options_fsNode_error___block_invoke_319;
    v45[3] = &unk_1E86B0B48;
    v47 = 0x4000;
    v46 = v10;
    v11 = __55__MCMFileManager_readDataFromURL_options_fsNode_error___block_invoke_319(v45);
    v25 = v46;
    goto LABEL_18;
  }

  v17 = v16;
  errorCopy = error;
  v18 = 0;
  v19 = 0x4000;
  v20 = 0x4000;
  do
  {
    v21 = read(v14, &v17[v18], v20);
    if ((v21 & 0x8000000000000000) != 0)
    {
      __s = v17;
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __55__MCMFileManager_readDataFromURL_options_fsNode_error___block_invoke_325;
      v43[3] = &unk_1E86B0B98;
      v44 = v10;
      v11 = __55__MCMFileManager_readDataFromURL_options_fsNode_error___block_invoke_325(v43);
      v26 = v44;
      goto LABEL_21;
    }

    v22 = v21;
    v23 = v20 - v21;
    v18 += v21;
    if (v21 < v20 - v21)
    {
      break;
    }

    if (v19 > 0x9FC000)
    {
      __s = v17;
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __55__MCMFileManager_readDataFromURL_options_fsNode_error___block_invoke_331;
      v41[3] = &unk_1E86B0B98;
      v42 = v10;
      v11 = __55__MCMFileManager_readDataFromURL_options_fsNode_error___block_invoke_331(v41);
      v26 = v42;
LABEL_21:

      v13 = 0;
      error = errorCopy;
LABEL_32:
      free(v17);
      memset_s(&__s, 8uLL, 0, 8uLL);
      v12 = 0;
      goto LABEL_33;
    }

    v24 = malloc_type_realloc(v17, v19 + 0x4000, 0x1624FB37uLL);
    if (!v24)
    {
      __s = 0;
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __55__MCMFileManager_readDataFromURL_options_fsNode_error___block_invoke_337;
      v38[3] = &unk_1E86B0B48;
      v40 = v19 + 0x4000;
      v39 = v10;
      v11 = __55__MCMFileManager_readDataFromURL_options_fsNode_error___block_invoke_337(v38);

      v12 = 0;
      v13 = 0;
      error = errorCopy;
      goto LABEL_33;
    }

    v17 = v24;
    v20 = v23 + 0x4000;
    v19 += 0x4000;
  }

  while (v22);
  __s = v17;
  if (node)
  {
    memset(&v58, 0, sizeof(v58));
    error = errorCopy;
    if (fstat(v14, &v58))
    {
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __55__MCMFileManager_readDataFromURL_options_fsNode_error___block_invoke_340;
      v36[3] = &unk_1E86B0B98;
      v37 = v10;
      v11 = __55__MCMFileManager_readDataFromURL_options_fsNode_error___block_invoke_340(v36);

      v13 = 0;
      goto LABEL_32;
    }

    if (v18 != v58.st_size)
    {
      v27 = container_log_handle_for_category();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        path = [v10 path];
        *buf = 134218498;
        v53 = v18;
        v54 = 2112;
        v55 = path;
        v56 = 2048;
        st_size = v58.st_size;
        _os_log_error_impl(&dword_1DF2C3000, v27, OS_LOG_TYPE_ERROR, "Read size (%zu) of file [%@] did not match its length (%lld). Possibly a concurrent write+read.", buf, 0x20u);
      }
    }

    v13 = [[MCMFSNode alloc] initWithStat:&v58];
  }

  else
  {
    v13 = 0;
    error = errorCopy;
  }

  v12 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v17 length:v18];
  v28 = container_log_handle_for_category();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    path2 = [v10 path];
    v33 = [v12 length];
    v58.st_dev = 138543874;
    *&v58.st_mode = path2;
    WORD2(v58.st_ino) = 2050;
    *(&v58.st_ino + 6) = v33;
    HIWORD(v58.st_gid) = 2050;
    *&v58.st_rdev = options;
    _os_log_debug_impl(&dword_1DF2C3000, v28, OS_LOG_TYPE_DEBUG, "Read [%{public}@], length = %{public}lu, options = 0x%{public}lx", &v58, 0x20u);
  }

  v11 = 0;
  v17 = __s;
  if (!v12)
  {
    goto LABEL_32;
  }

LABEL_33:
  close(v14);
  if (error && v11)
  {
    v29 = v11;
    *error = v11;
  }

  if (node && v12)
  {
    v30 = v13;
    *node = v13;
  }

  return v12;
}

id __55__MCMFileManager_readDataFromURL_options_fsNode_error___block_invoke(uint64_t a1)
{
  v8[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unsupported data reading options: 0x%lx", *(a1 + 32)];
  v7[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager readDataFromURL:options:fsNode:error:]_block_invoke"];
  v8[0] = v2;
  v8[1] = &unk_1F5A75FA0;
  v3 = *MEMORY[0x1E696A578];
  v7[1] = @"SourceFileLine";
  v7[2] = v3;
  v8[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:45 userInfo:v4];

  return v5;
}

id __55__MCMFileManager_readDataFromURL_options_fsNode_error___block_invoke_313(uint64_t a1)
{
  v11[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"Could not open [%@]", v3];

  v10[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager readDataFromURL:options:fsNode:error:]_block_invoke"];
  v11[0] = v5;
  v11[1] = &unk_1F5A75FB8;
  v6 = *MEMORY[0x1E696A578];
  v10[1] = @"SourceFileLine";
  v10[2] = v6;
  v11[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v7];

  return v8;
}

id __55__MCMFileManager_readDataFromURL_options_fsNode_error___block_invoke_319(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) path];
  v5 = [v2 initWithFormat:@"Could not allocate %zu bytes for [%@]", v3, v4];

  v11[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager readDataFromURL:options:fsNode:error:]_block_invoke"];
  v12[0] = v6;
  v12[1] = &unk_1F5A75FD0;
  v7 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v7;
  v12[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:12 userInfo:v8];

  return v9;
}

id __55__MCMFileManager_readDataFromURL_options_fsNode_error___block_invoke_325(uint64_t a1)
{
  v11[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"Could not read [%@]", v3];

  v10[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager readDataFromURL:options:fsNode:error:]_block_invoke"];
  v11[0] = v5;
  v11[1] = &unk_1F5A75FE8;
  v6 = *MEMORY[0x1E696A578];
  v10[1] = @"SourceFileLine";
  v10[2] = v6;
  v11[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v7];

  return v8;
}

id __55__MCMFileManager_readDataFromURL_options_fsNode_error___block_invoke_331(uint64_t a1)
{
  v11[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"File [%@] is too large: >%llu", v3, 10485760];

  v10[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager readDataFromURL:options:fsNode:error:]_block_invoke"];
  v11[0] = v5;
  v11[1] = &unk_1F5A76000;
  v6 = *MEMORY[0x1E696A578];
  v10[1] = @"SourceFileLine";
  v10[2] = v6;
  v11[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:12 userInfo:v7];

  return v8;
}

id __55__MCMFileManager_readDataFromURL_options_fsNode_error___block_invoke_337(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) path];
  v5 = [v2 initWithFormat:@"Could not allocate %zu bytes for [%@]", v3, v4];

  v11[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager readDataFromURL:options:fsNode:error:]_block_invoke"];
  v12[0] = v6;
  v12[1] = &unk_1F5A76018;
  v7 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v7;
  v12[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:12 userInfo:v8];

  return v9;
}

id __55__MCMFileManager_readDataFromURL_options_fsNode_error___block_invoke_340(uint64_t a1)
{
  v11[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"Could not stat [%@]", v3];

  v10[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager readDataFromURL:options:fsNode:error:]_block_invoke"];
  v11[0] = v5;
  v11[1] = &unk_1F5A76030;
  v6 = *MEMORY[0x1E696A578];
  v10[1] = @"SourceFileLine";
  v10[2] = v6;
  v11[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v7];

  return v8;
}

- (id)readDataFromURL:(id)l options:(unint64_t)options error:(id *)error
{

  return [(MCMFileManager *)self readDataFromURL:l options:options fsNode:0 error:error];
}

- (id)realPathForURL:(id)l isDirectory:(BOOL)directory error:(id *)error
{
  directoryCopy = directory;
  v19 = *MEMORY[0x1E69E9840];
  bzero(v18, 0x401uLL);
  fileSystemRepresentation = [l fileSystemRepresentation];
  if (container_realpath())
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __51__MCMFileManager_realPathForURL_isDirectory_error___block_invoke;
    v13[3] = &__block_descriptor_40_e14___NSError_8__0l;
    v13[4] = fileSystemRepresentation;
    v9 = __51__MCMFileManager_realPathForURL_isDirectory_error___block_invoke(v13);
    v10 = 0;
    if (!error)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v11 = container_log_handle_for_category();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v15 = fileSystemRepresentation;
    v16 = 2080;
    v17 = v18;
    _os_log_debug_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_DEBUG, "container_realpath([%s]) → [%s]", buf, 0x16u);
  }

  v10 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:v18 isDirectory:directoryCopy relativeToURL:0];
  v9 = 0;
  if (error)
  {
LABEL_7:
    if (!v10)
    {
      v9 = v9;
      *error = v9;
    }
  }

LABEL_9:

  return v10;
}

id __51__MCMFileManager_realPathForURL_isDirectory_error___block_invoke(uint64_t a1)
{
  v8[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"container_realpath([%s]) failed", *(a1 + 32)];
  v7[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager realPathForURL:isDirectory:error:]_block_invoke"];
  v8[0] = v2;
  v8[1] = &unk_1F5A75F88;
  v3 = *MEMORY[0x1E696A578];
  v7[1] = @"SourceFileLine";
  v7[2] = v3;
  v8[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v4];

  return v5;
}

- (id)realPathForURL:(id)l ifChildOfURL:(id)rL
{
  v99 = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  bzero(v98, 0x401uLL);
  if (!lCopy || !rLCopy)
  {
    v25 = container_log_handle_for_category();
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 138412546;
    v87 = rLCopy;
    v88 = 2112;
    v89 = lCopy;
    v30 = "The base path %@ and/or suspicious path %@ were nil";
    v31 = v25;
    v32 = 22;
    goto LABEL_14;
  }

  path = [rLCopy path];
  v9 = [path hasPrefix:@"/private/"];

  if (v9)
  {
    v10 = MEMORY[0x1E695DFF8];
    path2 = [rLCopy path];
    v12 = [path2 substringFromIndex:{objc_msgSend(@"/private", "length")}];
    v13 = [v10 fileURLWithPath:v12];

    rLCopy = v13;
  }

  path3 = [lCopy path];
  v15 = [path3 hasPrefix:@"/private/"];

  if (v15)
  {
    v16 = MEMORY[0x1E695DFF8];
    path4 = [lCopy path];
    v18 = [path4 substringFromIndex:{objc_msgSend(@"/private", "length")}];
    v19 = [v16 fileURLWithPath:v18];

    lCopy = v19;
  }

  path5 = [lCopy path];
  path6 = [rLCopy path];
  v22 = [path5 hasPrefix:path6];

  if ((v22 & 1) == 0)
  {
    v25 = container_log_handle_for_category();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      path7 = [lCopy path];
      path8 = [rLCopy path];
      *buf = 138412546;
      v87 = path7;
      v88 = 2112;
      v89 = path8;
      _os_log_error_impl(&dword_1DF2C3000, v25, OS_LOG_TYPE_ERROR, "supiscious path %@ does not contain base path %@ as a prefix", buf, 0x16u);

      goto LABEL_42;
    }

    goto LABEL_16;
  }

  pathComponents = [lCopy pathComponents];
  v24 = [pathComponents containsObject:@".."];

  if (v24)
  {
    v25 = container_log_handle_for_category();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      path7 = [lCopy path];
      *buf = 138412290;
      v87 = path7;
      v27 = "The suspicious path %@ contains '..' paths, which are invalid";
LABEL_11:
      v28 = v25;
      v29 = 12;
LABEL_27:
      _os_log_error_impl(&dword_1DF2C3000, v28, OS_LOG_TYPE_ERROR, v27, buf, v29);
LABEL_42:

      goto LABEL_16;
    }

    goto LABEL_16;
  }

  v40 = readlink([lCopy fileSystemRepresentation], v98, 0x400uLL);
  if (v40 == -1)
  {
    if (*__error() == 22 || *__error() == 2)
    {
      path9 = [lCopy path];
      stringByDeletingLastPathComponent = 0;
      goto LABEL_33;
    }

    v25 = container_log_handle_for_category();
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    v52 = __error();
    v53 = strerror(*v52);
    *buf = 136315138;
    v87 = v53;
    v30 = "Readlink failed: %s";
    v31 = v25;
    v32 = 12;
LABEL_14:
    _os_log_error_impl(&dword_1DF2C3000, v31, OS_LOG_TYPE_ERROR, v30, buf, v32);
    goto LABEL_16;
  }

  if (v98[0] == 47)
  {
    v25 = container_log_handle_for_category();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      path7 = [lCopy path];
      *buf = 138412546;
      v87 = path7;
      v88 = 2080;
      v89 = v98;
      v27 = "Rejecting %@ -> %s, as absolute symlinks are not allowed";
      v28 = v25;
      v29 = 22;
      goto LABEL_27;
    }

    goto LABEL_16;
  }

  v85 = 0;
  path10 = [rLCopy path];
  v42 = [(MCMFileManager *)self _validateSymlink:path10 withStartingDepth:0 andEndingDepth:&v85];

  if (!v42)
  {
    v25 = container_log_handle_for_category();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      path7 = [rLCopy path];
      *buf = 138412290;
      v87 = path7;
      v27 = "Failed to retrieve depth of %@";
      goto LABEL_11;
    }

LABEL_16:

    stringByDeletingLastPathComponent = 0;
    path9 = 0;
LABEL_17:
    v35 = 0;
LABEL_18:
    v36 = 0;
LABEL_19:
    v37 = 0;
    goto LABEL_20;
  }

  path11 = [lCopy path];
  path12 = [rLCopy path];
  v45 = [path11 substringFromIndex:{objc_msgSend(path12, "length")}];

  stringByDeletingLastPathComponent = [v45 stringByDeletingLastPathComponent];

  v46 = [MEMORY[0x1E696AEC0] stringWithFileSystemRepresentation:v98 length:v40];
  path9 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:v46];

  if (![(MCMFileManager *)self _validateSymlink:path9 withStartingDepth:v85 andEndingDepth:0])
  {
    v49 = container_log_handle_for_category();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      path13 = [lCopy path];
      path14 = [rLCopy path];
      *buf = 138412802;
      v87 = path13;
      v88 = 2112;
      v89 = path9;
      v90 = 2112;
      v91 = path14;
      _os_log_error_impl(&dword_1DF2C3000, v49, OS_LOG_TYPE_ERROR, "Rejecting %@ -> %@, as it is points outside or to the base %@", buf, 0x20u);

      goto LABEL_67;
    }

LABEL_49:

    goto LABEL_17;
  }

LABEL_33:
  v47 = [(MCMFileManager *)self _realPathForURL:rLCopy allowNonExistentPathComponents:0];
  if (!v47)
  {
    v49 = container_log_handle_for_category();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      path13 = [rLCopy path];
      *buf = 138412290;
      v87 = path13;
      _os_log_error_impl(&dword_1DF2C3000, v49, OS_LOG_TYPE_ERROR, "Failed to retrieve realpath for base path %@ ", buf, 0xCu);
LABEL_67:

      goto LABEL_49;
    }

    goto LABEL_49;
  }

  v35 = v47;
  v48 = [(MCMFileManager *)self _realPathForURL:lCopy allowNonExistentPathComponents:1];
  if (!v48)
  {
    v54 = container_log_handle_for_category();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      path15 = [lCopy path];
      *buf = 138412290;
      v87 = path15;
      _os_log_error_impl(&dword_1DF2C3000, v54, OS_LOG_TYPE_ERROR, "Failed to retrieve realpath for suspicious path %@", buf, 0xCu);
    }

    goto LABEL_18;
  }

  v36 = v48;
  if (v40 == -1)
  {
    pathComponents2 = [v48 pathComponents];
    pathComponents3 = [v35 pathComponents];
    v56 = [pathComponents3 count];
    v84 = pathComponents2;
    v57 = [pathComponents2 count];
    if (v57 < 2 || v56 <= 1)
    {
      v63 = container_log_handle_for_category();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        path16 = [lCopy path];
        path17 = [rLCopy path];
        path18 = [v36 path];
        path19 = [v35 path];
        *buf = 138413058;
        v87 = path16;
        v88 = 2112;
        v89 = path17;
        v90 = 2112;
        v91 = path18;
        v92 = 2112;
        v93 = path19;
        v67 = path19;
        v68 = "Rejecting %@ with base %@ because real component counts don't make sense (reals %@ ; %@)";
        goto LABEL_71;
      }
    }

    else
    {
      v58 = v57;
      v59 = 1;
      v60 = [pathComponents3 objectAtIndexedSubscript:1];
      if ([v60 isEqualToString:@"private"])
      {
        v59 = 2;
      }

      [v84 objectAtIndexedSubscript:1];
      v61 = v79 = v56;
      if ([v61 isEqualToString:@"private"])
      {
        v62 = 2;
      }

      else
      {
        v62 = 1;
      }

      if (v79 - v59 <= v58 - v62)
      {
        if (v79 <= v59)
        {
LABEL_65:

          goto LABEL_36;
        }

        while (1)
        {
          v69 = [pathComponents3 objectAtIndexedSubscript:v59];
          v70 = [v84 objectAtIndexedSubscript:v62];
          v82 = [v69 isEqualToString:v70];

          if ((v82 & 1) == 0)
          {
            break;
          }

          ++v59;
          ++v62;
          if (v79 == v59)
          {
            goto LABEL_65;
          }
        }

        v73 = v62;
        v63 = container_log_handle_for_category();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          path16 = [lCopy path];
          path20 = [rLCopy path];
          path21 = [v36 path];
          path22 = [v35 path];
          v75 = [pathComponents3 objectAtIndexedSubscript:v59];
          v76 = [v84 objectAtIndexedSubscript:v73];
          *buf = 138413570;
          v87 = path16;
          v88 = 2112;
          v89 = path20;
          v90 = 2112;
          v91 = path21;
          v92 = 2112;
          v93 = path22;
          v94 = 2112;
          v95 = v75;
          v96 = 2112;
          v97 = v76;
          _os_log_error_impl(&dword_1DF2C3000, v63, OS_LOG_TYPE_ERROR, "Rejecting %@ with base %@ (reals %@ ; %@) because components diverge at %@ != %@", buf, 0x3Eu);

LABEL_72:
        }
      }

      else
      {
        v63 = container_log_handle_for_category();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          path16 = [lCopy path];
          path17 = [rLCopy path];
          path18 = [v36 path];
          path23 = [v35 path];
          *buf = 138413058;
          v87 = path16;
          v88 = 2112;
          v89 = path17;
          v90 = 2112;
          v91 = path18;
          v92 = 2112;
          v93 = path23;
          v67 = path23;
          v68 = "Rejecting %@ with base %@ because base component count is greater than child component count (reals %@ ; %@)";
LABEL_71:
          _os_log_error_impl(&dword_1DF2C3000, v63, OS_LOG_TYPE_ERROR, v68, buf, 0x2Au);

          goto LABEL_72;
        }
      }
    }

    goto LABEL_19;
  }

LABEL_36:
  v36 = v36;
  v37 = v36;
LABEL_20:
  v38 = v37;

  return v38;
}

- (BOOL)_validateSymlink:(id)symlink withStartingDepth:(unsigned int)depth andEndingDepth:(unsigned int *)endingDepth
{
  v27 = *MEMORY[0x1E69E9840];
  symlinkCopy = symlink;
  v8 = symlinkCopy;
  if (symlinkCopy)
  {
    endingDepthCopy = endingDepth;
    v21 = symlinkCopy;
    [symlinkCopy pathComponents];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = v26 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v24;
      depthCopy2 = depth;
      while (1)
      {
        v14 = 0;
        do
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v23 + 1) + 8 * v14);
          if ([v15 isEqualToString:@".."])
          {
            v16 = -1;
          }

          else
          {
            if ([v15 isEqualToString:&stru_1F5A5B2B8] & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"."))
            {
              goto LABEL_13;
            }

            v16 = [v15 isEqualToString:@"/"] ^ 1;
          }

          depthCopy2 += v16;
          if (depthCopy2 < depth)
          {

            v18 = 0;
            goto LABEL_23;
          }

LABEL_13:
          ++v14;
        }

        while (v11 != v14);
        v17 = [v9 countByEnumeratingWithState:&v23 objects:v22 count:16];
        v11 = v17;
        if (!v17)
        {
          goto LABEL_20;
        }
      }
    }

    depthCopy2 = depth;
LABEL_20:

    if (endingDepthCopy)
    {
      *endingDepthCopy = depthCopy2;
    }

    v18 = 1;
LABEL_23:
    v8 = v21;
  }

  else
  {
    v9 = 0;
    v18 = 0;
  }

  return v18;
}

- (id)_realPathForURL:(id)l allowNonExistentPathComponents:(BOOL)components
{
  componentsCopy = components;
  v22 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v17 = 0;
  v7 = -[MCMFileManager realPathForURL:isDirectory:error:](self, "realPathForURL:isDirectory:error:", lCopy, [lCopy hasDirectoryPath], &v17);
  v8 = v17;
  v9 = v8;
  if (!v7)
  {
    domain = [v8 domain];
    if ([domain isEqualToString:*MEMORY[0x1E696A798]] && objc_msgSend(v9, "code") == 2)
    {

      if (componentsCopy)
      {
        path = [lCopy path];
        v12 = [(MCMFileManager *)self _realPathWhatExistsInPath:path];

        goto LABEL_11;
      }
    }

    else
    {
    }

    v13 = container_log_handle_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      path2 = [lCopy path];
      fileSystemRepresentation = [path2 fileSystemRepresentation];
      *buf = 136315394;
      v19 = fileSystemRepresentation;
      v20 = 2112;
      v21 = v9;
      _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, "Failed to realpath [%s] : %@", buf, 0x16u);
    }
  }

  v12 = v7;
LABEL_11:

  return v12;
}

- (id)_realPathWhatExistsInPath:(id)path
{
  v20 = *MEMORY[0x1E69E9840];
  pathComponents = [path pathComponents];
  v5 = [pathComponents count];
  v6 = v5 - 1;
  if (v5 == 1)
  {
    v9 = 0;
  }

  else
  {
    do
    {
      v7 = [pathComponents subarrayWithRange:{0, v6 + 1}];
      v8 = [MEMORY[0x1E695DFF8] fileURLWithPathComponents:v7];
      v9 = 0;
      if ([(MCMFileManager *)self itemExistsAtURL:v8])
      {
        v10 = [(MCMFileManager *)self _realPathForURL:v8 allowNonExistentPathComponents:0];
        if (v10)
        {
          v11 = [pathComponents subarrayWithRange:{v6 + 1, objc_msgSend(pathComponents, "count") - (v6 + 1)}];
          v12 = [MEMORY[0x1E696AEC0] pathWithComponents:v11];
          v13 = container_log_handle_for_category();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            path = [v10 path];
            *buf = 138412546;
            v17 = path;
            v18 = 2112;
            v19 = v12;
            _os_log_debug_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_DEBUG, "Realpathed %@ ; appending non-existing components %@", buf, 0x16u);
          }

          v9 = [v10 URLByAppendingPathComponent:v12 isDirectory:0];
        }

        else
        {
          v9 = 0;
        }
      }

      if (v9)
      {
        break;
      }

      --v6;
    }

    while (v6);
  }

  return v9;
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)diskUsageForURL:(id)l
{
  v33 = *MEMORY[0x1E69E9840];
  lCopy = l;
  path = [lCopy path];
  fileSystemRepresentation = [path fileSystemRepresentation];
  v6 = container_log_handle_for_category();
  v7 = os_signpost_id_make_with_pointer(v6, lCopy);

  v8 = container_log_handle_for_category();
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 138477827;
    v30 = path;
    _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "CalculatingDiskUsage", " path=%{private, signpost.description:attribute}@ ", buf, 0xCu);
  }

  if (!fileSystemRepresentation)
  {
    v10 = container_log_handle_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v30 = lCopy;
      v14 = "Failed to get path to url %@";
      v15 = v10;
      v16 = 12;
      goto LABEL_20;
    }

    goto LABEL_9;
  }

  v27 = 0;
  v28 = 0;
  if ((*(*MEMORY[0x1E69E9988] + 184))(fileSystemRepresentation, 2, &v27, 16))
  {
    v10 = container_log_handle_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *__error();
      v12 = __error();
      v13 = strerror(*v12);
      *buf = 136446722;
      v30 = fileSystemRepresentation;
      v31 = 1024;
      *v32 = v11;
      *&v32[4] = 2080;
      *&v32[6] = v13;
      v14 = "Failed to get dirstats on %{public}s using fallback: (err %d) %s";
      v15 = v10;
      v16 = 28;
LABEL_20:
      _os_log_error_impl(&dword_1DF2C3000, v15, OS_LOG_TYPE_ERROR, v14, buf, v16);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  v18 = v27;
  if ((v27 & 0x8000000000000000) != 0)
  {
    v10 = container_log_handle_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v23 = v27;
      v24 = *__error();
      v25 = __error();
      v26 = strerror(*v25);
      *buf = 134218754;
      v30 = v23;
      v31 = 2082;
      *v32 = fileSystemRepresentation;
      *&v32[8] = 1024;
      *&v32[10] = v24;
      *&v32[14] = 2080;
      *&v32[16] = v26;
      v14 = "Invalid size (%lld) from dirstats on %{public}s using fallback: (err %d) %s";
      v15 = v10;
      v16 = 38;
      goto LABEL_20;
    }

LABEL_9:
    v17 = 0;
    v18 = 0;
    goto LABEL_10;
  }

  v17 = v28;
  v10 = container_log_handle_for_category();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v30 = fileSystemRepresentation;
    v31 = 2048;
    *v32 = v17;
    *&v32[8] = 2048;
    *&v32[10] = v18;
    _os_log_impl(&dword_1DF2C3000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}s]: descendants: %llu, total size: %llu, using fallback", buf, 0x20u);
  }

LABEL_10:

  v19 = container_log_handle_for_category();
  v20 = v19;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    *buf = 138478339;
    v30 = path;
    v31 = 2050;
    *v32 = v17;
    *&v32[8] = 2049;
    *&v32[10] = v18;
    _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v20, OS_SIGNPOST_INTERVAL_END, v7, "CalculatingDiskUsage", " path=%{private, signpost.description:attribute}@  numNodes=%{public, signpost.description:attribute}llu  size=%{private, signpost.description:attribute}llu ", buf, 0x20u);
  }

  v21 = v18;
  v22 = v17;
  result.var1 = v22;
  result.var0 = v21;
  return result;
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)fastDiskUsageForURL:(id)l
{
  v60 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (!_os_feature_enabled_impl())
  {
LABEL_41:
    v31 = [(MCMFileManager *)self diskUsageForURL:lCopy, v41];
    v29 = v36;
    goto LABEL_42;
  }

  v44 = 0;
  path = [lCopy path];
  fileSystemRepresentation = [path fileSystemRepresentation];
  v7 = container_log_handle_for_category();
  v8 = os_signpost_id_make_with_pointer(v7, lCopy);

  v9 = container_log_handle_for_category();
  v10 = v9;
  v11 = v8 - 1;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 138477827;
    *&buf[4] = path;
    _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "CalculatingDiskUsage", " path=%{private, signpost.description:attribute}@ ", buf, 0xCu);
  }

  if (_os_feature_enabled_impl())
  {
    *v45 = 0;
    *&v45[8] = 0;
    v12 = MEMORY[0x1E69E9988];
    v13 = (*(*MEMORY[0x1E69E9988] + 184))(fileSystemRepresentation, 1, v45, 16);
    v14 = *__error();
    if (_os_feature_enabled_impl() && v13 && v14 == 45)
    {
      *v45 = 0;
      *&v45[8] = 0;
      v15 = (*(*v12 + 312))(fileSystemRepresentation, 2148026882, &v44, 0);
      v16 = *__error();
      v17 = container_log_handle_for_category();
      v18 = v17;
      if (v15)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          *&buf[4] = fileSystemRepresentation;
          *&buf[12] = 1024;
          *&buf[14] = v16;
          v19 = "[%{public}s] Failed to set maintain-dir-stats: %{darwin.errno}d";
LABEL_46:
          v26 = buf;
          goto LABEL_47;
        }

        goto LABEL_31;
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 136446210;
        *&buf[4] = fileSystemRepresentation;
        _os_log_impl(&dword_1DF2C3000, v18, OS_LOG_TYPE_INFO, "[%{public}s] Enabled APFSIOC_MAINTAIN_DIR_STATS", buf, 0xCu);
      }

      v13 = (*(*v12 + 184))(fileSystemRepresentation, 1, v45, 16);
      v14 = *__error();
    }

    if (v13)
    {
      v18 = container_log_handle_for_category();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        *&buf[4] = fileSystemRepresentation;
        *&buf[12] = 1024;
        *&buf[14] = v14;
        v19 = "[%{public}s] Failed to get dirstats: %{darwin.errno}d";
        goto LABEL_46;
      }

LABEL_31:

      v32 = 0;
      v29 = 0;
      v31 = 0;
      goto LABEL_37;
    }

    v31 = *v45;
    if ((*v45 & 0x8000000000000000) != 0)
    {
      v18 = container_log_handle_for_category();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        *&buf[4] = fileSystemRepresentation;
        *&buf[12] = 2048;
        *&buf[14] = *v45;
        *&buf[22] = 1024;
        *&buf[24] = v14;
        v19 = "[%{public}s] Invalid size (%lld) from dirstats: %{darwin.errno}d";
        v26 = buf;
        v39 = v18;
        v40 = 28;
LABEL_48:
        _os_log_error_impl(&dword_1DF2C3000, v39, OS_LOG_TYPE_ERROR, v19, v26, v40);
        goto LABEL_31;
      }

      goto LABEL_31;
    }

    v41 = v8;
    v42 = v8 - 1;
    v28 = 0;
    v30 = 0;
    v27 = 0;
    v29 = *&v45[8];
  }

  else
  {
    v42 = v8 - 1;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v47 = 0u;
    memset(buf, 0, sizeof(buf));
    memset_s(buf, 0x110uLL, 0, 0x110uLL);
    *buf = 1;
    *&buf[8] = 1;
    v20 = MEMORY[0x1E69E9988];
    v21 = (*(*MEMORY[0x1E69E9988] + 312))(fileSystemRepresentation, 3239070321, buf, 0);
    v22 = *__error();
    if (_os_feature_enabled_impl() && v21 && v22 == 45)
    {
      v43 = 0;
      v23 = [(MCMFileManager *)self enableFastDiskUsageForURL:lCopy error:&v43];
      v18 = v43;
      v24 = container_log_handle_for_category();
      v25 = v24;
      if (!v23)
      {
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *v45 = 136446466;
          *&v45[4] = fileSystemRepresentation;
          *&v45[12] = 2112;
          *&v45[14] = v18;
          _os_log_error_impl(&dword_1DF2C3000, v25, OS_LOG_TYPE_ERROR, "[%{public}s] Enabling fast disk sizing failed: %@", v45, 0x16u);
        }

        v11 = v8 - 1;
        goto LABEL_31;
      }

      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *v45 = 136446210;
        *&v45[4] = fileSystemRepresentation;
        _os_log_impl(&dword_1DF2C3000, v25, OS_LOG_TYPE_INFO, "[%{public}s] Enabled APFSIOC_DIR_STATS_OP", v45, 0xCu);
      }

      memset_s(buf, 0x110uLL, 0, 0x110uLL);
      *buf = 1;
      *&buf[8] = 1;
      v21 = (*(*v20 + 312))(fileSystemRepresentation, 3239070321, buf, 0);
      v22 = *__error();
    }

    v11 = v8 - 1;
    if (v21)
    {
      v18 = container_log_handle_for_category();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *v45 = 136446466;
        *&v45[4] = fileSystemRepresentation;
        *&v45[12] = 1024;
        *&v45[14] = v22;
        v19 = "[%{public}s] Fast disk sizing failed: %{darwin.errno}d";
        v26 = v45;
LABEL_47:
        v39 = v18;
        v40 = 18;
        goto LABEL_48;
      }

      goto LABEL_31;
    }

    v41 = v8;
    v27 = *(&v47 + 1);
    v28 = v48;
    v29 = *&buf[56];
    v30 = v47;
    v31 = *(&v47 + 1) + v47 + v48;
  }

  v33 = container_log_handle_for_category();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136447490;
    *&buf[4] = fileSystemRepresentation;
    *&buf[12] = 2048;
    *&buf[14] = v29;
    *&buf[22] = 2048;
    *&buf[24] = v31;
    *&buf[32] = 2048;
    *&buf[34] = v30;
    *&buf[42] = 2048;
    *&buf[44] = v27;
    *&buf[52] = 2048;
    *&buf[54] = v28;
    _os_log_impl(&dword_1DF2C3000, v33, OS_LOG_TYPE_DEFAULT, "[%{public}s]: descendants: %llu, total size: %llu [ph%llu; cl%llu; pu%llu]", buf, 0x3Eu);
  }

  v32 = 1;
  v8 = v41;
  v11 = v42;
LABEL_37:
  v34 = container_log_handle_for_category();
  v35 = v34;
  if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
  {
    *buf = 138478339;
    *&buf[4] = path;
    *&buf[12] = 2050;
    *&buf[14] = v29;
    *&buf[22] = 2049;
    *&buf[24] = v31;
    _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v35, OS_SIGNPOST_INTERVAL_END, v8, "CalculatingDiskUsage", " path=%{private, signpost.description:attribute}@  numNodes=%{public, signpost.description:attribute}llu  size=%{private, signpost.description:attribute}llu ", buf, 0x20u);
  }

  if ((v32 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_42:

  v37 = v31;
  v38 = v29;
  result.var1 = v38;
  result.var0 = v37;
  return result;
}

- (BOOL)enableFastDiskUsageForURL:(id)l error:(id *)error
{
  v16 = *MEMORY[0x1E69E9840];
  fileSystemRepresentation = [l fileSystemRepresentation];
  memset(__s, 0, sizeof(__s));
  memset_s(__s, 0x110uLL, 0, 0x110uLL);
  *&__s[0] = 0x100000001;
  *(&__s[0] + 1) = 28;
  v6 = (*(*MEMORY[0x1E69E9988] + 312))(fileSystemRepresentation, 3239070321, __s, 0);
  if (v6)
  {
    v7 = *__error();
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __50__MCMFileManager_enableFastDiskUsageForURL_error___block_invoke;
    v11[3] = &__block_descriptor_44_e14___NSError_8__0l;
    v11[4] = fileSystemRepresentation;
    v12 = v7;
    v8 = __50__MCMFileManager_enableFastDiskUsageForURL_error___block_invoke(v11);
    if (error)
    {
      v8 = v8;
      *error = v8;
    }
  }

  else
  {
    v9 = container_log_handle_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446210;
      v14 = fileSystemRepresentation;
      _os_log_debug_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_DEBUG, "[%{public}s] Enabled APFSIOC_DIR_STATS_OP", buf, 0xCu);
    }

    v8 = 0;
  }

  return v6 == 0;
}

id __50__MCMFileManager_enableFastDiskUsageForURL_error___block_invoke(uint64_t a1)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"[%s] APFSIOC_DIR_STATS_OP: DIR_STATS_OP_SET failed: (%d) %s", *(a1 + 32), *(a1 + 40), strerror(*(a1 + 40))];
  v8[0] = @"FunctionName";
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager enableFastDiskUsageForURL:error:]_block_invoke"];
  v9[0] = v3;
  v9[1] = &unk_1F5A75F70;
  v4 = *MEMORY[0x1E696A578];
  v8[1] = @"SourceFileLine";
  v8[2] = v4;
  v9[2] = v2;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*(a1 + 40) userInfo:v5];

  return v6;
}

- (void)printDirectoryStructureAtURL:(id)l
{
  v23[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  v23[0] = [lCopy fileSystemRepresentation];
  v23[1] = 0;
  v4 = fts_open(v23, 84, 0);
  if (v4)
  {
    v5 = v4;
    while (1)
    {
      do
      {
        v6 = fts_read(v5);
        if (!v6)
        {
          fts_close(v5);
          goto LABEL_17;
        }

        v7 = v6;
        fts_info = v6->fts_info;
        if (fts_info > 0xD)
        {
          break;
        }

        if (((1 << fts_info) & 0x310A) != 0)
        {
          v9 = container_log_handle_for_category();
          if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_7;
          }

          fts_path = v7->fts_path;
          *buf = 136315138;
          v20 = fts_path;
          v12 = v9;
          v13 = "\tOrphaned File: %s";
          v14 = 12;
          goto LABEL_12;
        }
      }

      while (fts_info == 6);
      v9 = container_log_handle_for_category();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v10 = v7->fts_path;
      v11 = strerror(v7->fts_errno);
      *buf = 136315394;
      v20 = v10;
      v21 = 2080;
      v22 = v11;
      v12 = v9;
      v13 = "FTS returned error for %s : %s";
      v14 = 22;
LABEL_12:
      _os_log_error_impl(&dword_1DF2C3000, v12, OS_LOG_TYPE_ERROR, v13, buf, v14);
LABEL_7:
    }
  }

  v16 = container_log_handle_for_category();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = __error();
    v18 = strerror(*v17);
    *buf = 138412546;
    v20 = lCopy;
    v21 = 2080;
    v22 = v18;
    _os_log_error_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_ERROR, "fts_open failed for %@ : %s", buf, 0x16u);
  }

LABEL_17:
}

- (BOOL)dataProtectionClassOfItemAtURL:(id)l dataProtectionClass:(int *)class error:(id *)error
{
  v21[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  v8 = open([lCopy fileSystemRepresentation], 256);
  v9 = v8;
  if (v8 < 0)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __75__MCMFileManager_dataProtectionClassOfItemAtURL_dataProtectionClass_error___block_invoke;
    v20[3] = &unk_1E86B0B98;
    v13 = v21;
    v21[0] = lCopy;
    v14 = __75__MCMFileManager_dataProtectionClassOfItemAtURL_dataProtectionClass_error___block_invoke(v20);
  }

  else
  {
    v10 = fcntl(v8, 63);
    if ((v10 & 0x80000000) == 0 || *__error() == 45)
    {
      v11 = 0;
      *class = v10;
      v12 = 1;
LABEL_10:
      close(v9);
      v16 = v12;
      goto LABEL_11;
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __75__MCMFileManager_dataProtectionClassOfItemAtURL_dataProtectionClass_error___block_invoke_267;
    v18[3] = &unk_1E86B0B98;
    v13 = &v19;
    v19 = lCopy;
    v14 = __75__MCMFileManager_dataProtectionClassOfItemAtURL_dataProtectionClass_error___block_invoke_267(v18);
  }

  v11 = v14;

  if (error)
  {
    v15 = v11;
    *error = v11;
  }

  v12 = 0;
  v16 = 0;
  if ((v9 & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

LABEL_11:

  return v16;
}

id __75__MCMFileManager_dataProtectionClassOfItemAtURL_dataProtectionClass_error___block_invoke(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) fileSystemRepresentation];
  v4 = __error();
  v5 = [v2 initWithFormat:@"Failed to open %s : %s", v3, strerror(*v4)];
  v11[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager dataProtectionClassOfItemAtURL:dataProtectionClass:error:]_block_invoke"];
  v12[0] = v6;
  v12[1] = &unk_1F5A75F40;
  v7 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v7;
  v12[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v8];

  return v9;
}

id __75__MCMFileManager_dataProtectionClassOfItemAtURL_dataProtectionClass_error___block_invoke_267(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) fileSystemRepresentation];
  v4 = __error();
  v5 = [v2 initWithFormat:@"Failed to getclass of file %s: %s", v3, strerror(*v4)];
  v11[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager dataProtectionClassOfItemAtURL:dataProtectionClass:error:]_block_invoke"];
  v12[0] = v6;
  v12[1] = &unk_1F5A75F58;
  v7 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v7;
  v12[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v8];

  return v9;
}

- (BOOL)itemAtURL:(id)l followSymlinks:(BOOL)symlinks exists:(BOOL *)exists isDirectory:(BOOL *)directory fsNode:(id *)node error:(id *)error
{
  symlinksCopy = symlinks;
  v41 = *MEMORY[0x1E69E9840];
  fileSystemRepresentation = [l fileSystemRepresentation];
  v14 = fileSystemRepresentation;
  memset(&v40, 0, sizeof(v40));
  if (symlinksCopy)
  {
    v15 = stat(fileSystemRepresentation, &v40);
  }

  else
  {
    v15 = lstat(fileSystemRepresentation, &v40);
  }

  v16 = v15;
  if (!v15)
  {
    v18 = (v40.st_mode & 0xF000) == 0x4000;
    if (node)
    {
      v17 = [[MCMFSNode alloc] initWithStat:&v40];
    }

    else
    {
      v17 = 0;
    }

    goto LABEL_14;
  }

  if (*__error() == 2)
  {
    v17 = 0;
    v18 = 0;
LABEL_14:
    v23 = container_log_handle_for_category();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316418;
      v31 = v14;
      v32 = 1024;
      v33 = v16 == 0;
      v34 = 1024;
      *v35 = v18;
      *&v35[4] = 1024;
      *&v35[6] = v40.st_mode & 0x1FF;
      v36 = 1024;
      st_uid = v40.st_uid;
      v38 = 1024;
      st_gid = v40.st_gid;
      _os_log_debug_impl(&dword_1DF2C3000, v23, OS_LOG_TYPE_DEBUG, "stat [%s]: %d/%d/0%03o/%u/%u", buf, 0x2Au);
    }

    if (exists)
    {
      *exists = v16 == 0;
    }

    if (directory)
    {
      *directory = v18;
    }

    if (node)
    {
      v24 = v17;
      v19 = 0;
      *node = v17;
    }

    else
    {
      v19 = 0;
    }

    v22 = 1;
    goto LABEL_24;
  }

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __75__MCMFileManager_itemAtURL_followSymlinks_exists_isDirectory_fsNode_error___block_invoke;
  v29[3] = &__block_descriptor_40_e14___NSError_8__0l;
  v29[4] = v14;
  v19 = __75__MCMFileManager_itemAtURL_followSymlinks_exists_isDirectory_fsNode_error___block_invoke(v29);
  v20 = container_log_handle_for_category();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v26 = *__error();
    v27 = __error();
    v28 = strerror(*v27);
    *buf = 136315650;
    v31 = v14;
    v32 = 1024;
    v33 = v26;
    v34 = 2080;
    *v35 = v28;
    _os_log_error_impl(&dword_1DF2C3000, v20, OS_LOG_TYPE_ERROR, "Failed to determine if [%s] exists: (%d) %s", buf, 0x1Cu);
  }

  if (error)
  {
    v21 = v19;
    v17 = 0;
    v22 = 0;
    *error = v19;
  }

  else
  {
    v17 = 0;
    v22 = 0;
  }

LABEL_24:

  return v22;
}

id __75__MCMFileManager_itemAtURL_followSymlinks_exists_isDirectory_fsNode_error___block_invoke(uint64_t a1)
{
  v8[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to determine if [%s] exists.", *(a1 + 32)];
  v7[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager itemAtURL:followSymlinks:exists:isDirectory:fsNode:error:]_block_invoke"];
  v8[0] = v2;
  v8[1] = &unk_1F5A75F28;
  v3 = *MEMORY[0x1E696A578];
  v7[1] = @"SourceFileLine";
  v7[2] = v3;
  v8[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v4];

  return v5;
}

- (BOOL)itemAtURL:(id)l followSymlinks:(BOOL)symlinks exists:(BOOL *)exists isDirectory:(BOOL *)directory error:(id *)error
{

  return [(MCMFileManager *)self itemAtURL:l followSymlinks:symlinks exists:exists isDirectory:directory fsNode:0 error:error];
}

- (BOOL)itemAtURL:(id)l exists:(BOOL *)exists isDirectory:(BOOL *)directory error:(id *)error
{

  return [(MCMFileManager *)self itemAtURL:l followSymlinks:0 exists:exists isDirectory:directory error:error];
}

- (BOOL)itemExistsAtURL:(id)l isDirectory:(BOOL *)directory
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = 0;
  [(MCMFileManager *)self itemAtURL:l exists:&v5 isDirectory:directory error:0];
  return v5;
}

- (BOOL)itemAtURL:(id)l exists:(BOOL *)exists error:(id *)error
{

  return [(MCMFileManager *)self itemAtURL:l exists:exists isDirectory:0 error:error];
}

- (BOOL)itemExistsAtURL:(id)l
{

  return [(MCMFileManager *)self itemExistsAtURL:l isDirectory:0];
}

- (id)urlsForItemsInDirectoryAtURL:(id)l error:(id *)error
{
  v39 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v6 = objc_opt_new();
  fileSystemRepresentation = [lCopy fileSystemRepresentation];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v34 = __53__MCMFileManager_urlsForItemsInDirectoryAtURL_error___block_invoke;
  v35 = &unk_1E86AFCC0;
  v8 = v6;
  v36 = v8;
  v9 = lCopy;
  v37 = v9;
  v10 = v33;
  v11 = opendir(fileSystemRepresentation);
  if (v11)
  {
    v12 = v11;
    v13 = readdir(v11);
    if (v13)
    {
      v14 = v13;
      while (1)
      {
        d_type = v14->d_type;
        if (!v14->d_type)
        {
          break;
        }

LABEL_8:
        v18 = v14->d_name[0];
        d_name = v14->d_name;
        if (v18 == 46 || v34(v10, d_type, d_name))
        {
          v14 = readdir(v12);
          if (v14)
          {
            continue;
          }
        }

        goto LABEL_18;
      }

      memset(&v38, 0, sizeof(v38));
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s/%s", fileSystemRepresentation, v14->d_name];
      if (stat([v16 fileSystemRepresentation], &v38))
      {
        goto LABEL_6;
      }

      v19 = v38.st_mode & 0xF000;
      if (v19 == 0x4000)
      {
        d_type = 4;
        goto LABEL_7;
      }

      if (v19 == 0x8000)
      {
        d_type = 8;
        goto LABEL_7;
      }

      if (v19 != 40960)
      {
LABEL_6:
        d_type = 0;
      }

      else
      {
        d_type = 10;
      }

LABEL_7:

      goto LABEL_8;
    }

LABEL_18:
    closedir(v12);
  }

  else
  {
    if (*__error() != 2)
    {
      v22 = container_log_handle_for_category();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v28 = __error();
        v29 = strerror(*v28);
        v38.st_dev = 136315394;
        *&v38.st_mode = fileSystemRepresentation;
        WORD2(v38.st_ino) = 2080;
        *(&v38.st_ino + 6) = v29;
        _os_log_error_impl(&dword_1DF2C3000, v22, OS_LOG_TYPE_ERROR, "opendir of %s failed: %s", &v38, 0x16u);
      }
    }

    v23 = *__error();

    if (v23)
    {
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __53__MCMFileManager_urlsForItemsInDirectoryAtURL_error___block_invoke_2;
      v30[3] = &unk_1E86B0618;
      v31 = v9;
      v32 = v23;
      v21 = __53__MCMFileManager_urlsForItemsInDirectoryAtURL_error___block_invoke_2(v30);

      v20 = 0;
      if (!error)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    }
  }

  v20 = v8;
  v21 = 0;
  if (!error)
  {
    goto LABEL_29;
  }

LABEL_27:
  if (!v20)
  {
    v24 = v21;
    *error = v21;
  }

LABEL_29:
  v25 = v37;
  v26 = v20;

  return v20;
}

uint64_t __53__MCMFileManager_urlsForItemsInDirectoryAtURL_error___block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:a3 isDirectory:a2 == 4 relativeToURL:*(a1 + 40)];
  v5 = [v4 absoluteURL];
  [v3 addObject:v5];

  return 1;
}

id __53__MCMFileManager_urlsForItemsInDirectoryAtURL_error___block_invoke_2(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = __error();
  v5 = [v2 initWithFormat:@"_IterateDirectory for %@ returned %s", v3, strerror(*v4)];

  v11[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager urlsForItemsInDirectoryAtURL:error:]_block_invoke_2"];
  v12[0] = v6;
  v12[1] = &unk_1F5A75F10;
  v7 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v7;
  v12[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*(a1 + 40) userInfo:v8];

  return v9;
}

- (BOOL)standardizeOwnershipAtURL:(id)l toPOSIXUser:(id)user error:(id *)error
{
  v32 = *MEMORY[0x1E69E9840];
  userCopy = user;
  memset(&v31, 0, sizeof(v31));
  lCopy = l;
  lCopy2 = l;
  fileSystemRepresentation = [lCopy2 fileSystemRepresentation];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __62__MCMFileManager_standardizeOwnershipAtURL_toPOSIXUser_error___block_invoke;
  v25[3] = &unk_1E86AFC98;
  v12 = userCopy;
  v26 = v12;
  v13 = [(MCMFileManager *)self _traverseDirectory:lCopy2 error:error withBlock:v25];

  if (lstat(fileSystemRepresentation, &v31) == -1)
  {
    if (error)
    {
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __62__MCMFileManager_standardizeOwnershipAtURL_toPOSIXUser_error___block_invoke_244;
      v24[3] = &__block_descriptor_40_e14___NSError_8__0l;
      v24[4] = fileSystemRepresentation;
      __62__MCMFileManager_standardizeOwnershipAtURL_toPOSIXUser_error___block_invoke_244(v24);
      *error = v13 = 0;
    }

    else
    {
      v13 = 0;
    }
  }

  else if (!strstr(fileSystemRepresentation, ".com.apple.mobile_container_manager.metadata.plist"))
  {
    st_uid = v31.st_uid;
    if (st_uid != [v12 UID] && lchown(fileSystemRepresentation, objc_msgSend(v12, "UID"), objc_msgSend(v12, "primaryGID")) == -1)
    {
      v15 = container_log_handle_for_category();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v22 = __error();
        v23 = strerror(*v22);
        *buf = 136315394;
        v28 = fileSystemRepresentation;
        v29 = 2080;
        v30 = v23;
        _os_log_error_impl(&dword_1DF2C3000, v15, OS_LOG_TYPE_ERROR, "Could not chown %s: %s", buf, 0x16u);
      }
    }

    if ((v31.st_mode & 0x49) != 0)
    {
      v16 = 493;
    }

    else
    {
      v16 = 420;
    }

    if ((v31.st_mode & 0xF000) == 0x4000)
    {
      v17 = 493;
    }

    else
    {
      v17 = v16;
    }

    if (lchmod(fileSystemRepresentation, v17) == -1)
    {
      v18 = container_log_handle_for_category();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v20 = __error();
        v21 = strerror(*v20);
        *buf = 136315394;
        v28 = fileSystemRepresentation;
        v29 = 2080;
        v30 = v21;
        _os_log_error_impl(&dword_1DF2C3000, v18, OS_LOG_TYPE_ERROR, "Could not chmod %s: %s", buf, 0x16u);
      }
    }
  }

  return v13;
}

uint64_t __62__MCMFileManager_standardizeOwnershipAtURL_toPOSIXUser_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!strstr(*(a2 + 48), ".com.apple.mobile_container_manager.metadata.plist"))
  {
    v4 = *(*(a2 + 96) + 16);
    if (v4 != [*(a1 + 32) UID] || (v5 = *(*(a2 + 96) + 20), v5 != objc_msgSend(*(a1 + 32), "primaryGID")))
    {
      if (lchown(*(a2 + 48), [*(a1 + 32) UID], objc_msgSend(*(a1 + 32), "primaryGID")) == -1)
      {
        v6 = container_log_handle_for_category();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v14 = *(a2 + 48);
          v15 = __error();
          v16 = strerror(*v15);
          v17 = 136315394;
          v18 = v14;
          v19 = 2080;
          v20 = v16;
          _os_log_error_impl(&dword_1DF2C3000, v6, OS_LOG_TYPE_ERROR, "Could not chown %s: %s", &v17, 0x16u);
        }
      }
    }

    if ((*(*(a2 + 96) + 4) & 0x49) != 0)
    {
      v7 = 493;
    }

    else
    {
      v7 = 420;
    }

    if ((*(*(a2 + 96) + 4) & 0xF000) == 0x4000)
    {
      v8 = 493;
    }

    else
    {
      v8 = v7;
    }

    if (lchmod(*(a2 + 48), v8) == -1)
    {
      v9 = container_log_handle_for_category();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = *(a2 + 48);
        v12 = __error();
        v13 = strerror(*v12);
        v17 = 136315394;
        v18 = v11;
        v19 = 2080;
        v20 = v13;
        _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "Could not chmod %s: %s", &v17, 0x16u);
      }
    }
  }

  return 1;
}

id __62__MCMFileManager_standardizeOwnershipAtURL_toPOSIXUser_error___block_invoke_244(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 32);
  v4 = __error();
  v5 = [v2 initWithFormat:@"Could not stat %s: %s", v3, strerror(*v4)];
  v11[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager standardizeOwnershipAtURL:toPOSIXUser:error:]_block_invoke"];
  v12[0] = v6;
  v12[1] = &unk_1F5A75EF8;
  v7 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v7;
  v12[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v8];

  return v9;
}

- (BOOL)standardizeAllSystemContainerACLsAtURL:(id)l error:(id *)error
{
  v41 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v7 = +[MCMFileManager defaultManager];
  v31 = 0;
  v8 = [v7 urlsForItemsInDirectoryAtURL:lCopy error:&v31];
  v9 = v31;

  if (!v8)
  {
    domain = [v9 domain];
    if ([domain isEqualToString:*MEMORY[0x1E696A798]])
    {
      code = [v9 code];

      if (code == 2)
      {
        goto LABEL_19;
      }
    }

    else
    {
    }

    v11 = container_log_handle_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      path = [lCopy path];
      *buf = 138412546;
      v38 = path;
      v39 = 2112;
      v40 = v9;
      _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, "Failed to get items at URL%@ : %@", buf, 0x16u);
    }

    v15 = 0;
    goto LABEL_25;
  }

  if (![v8 count])
  {
LABEL_19:
    v15 = 1;
    goto LABEL_28;
  }

  v10 = container_log_handle_for_category();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v38 = v8;
    _os_log_debug_impl(&dword_1DF2C3000, v10, OS_LOG_TYPE_DEBUG, "Potential containers requiring ACL migration: %@", buf, 0xCu);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v33 objects:v32 count:16];
  if (v12)
  {
    v13 = v12;
    v27 = v8;
    errorCopy = error;
    v29 = lCopy;
    v14 = *v34;
    v15 = 1;
    do
    {
      v16 = 0;
      v17 = v9;
      do
      {
        if (*v34 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v18 = *(*(&v33 + 1) + 8 * v16);
        v30 = v17;
        v19 = [(MCMFileManager *)self standardizeACLsForSystemContainerAtURL:v18 error:&v30];
        v9 = v30;

        if (!v19)
        {
          v20 = container_log_handle_for_category();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            path2 = [v18 path];
            *buf = 138412546;
            v38 = path2;
            v39 = 2112;
            v40 = v9;
            _os_log_error_impl(&dword_1DF2C3000, v20, OS_LOG_TYPE_ERROR, "Failed to set system container ACL at %@: %@", buf, 0x16u);
          }

          v15 = 0;
        }

        ++v16;
        v17 = v9;
      }

      while (v13 != v16);
      v13 = [v11 countByEnumeratingWithState:&v33 objects:v32 count:16];
    }

    while (v13);
    error = errorCopy;
    lCopy = v29;
    v8 = v27;
  }

  else
  {
    v15 = 1;
  }

LABEL_25:

  if (error && (v15 & 1) == 0)
  {
    v24 = v9;
    v15 = 0;
    *error = v9;
  }

LABEL_28:

  return v15 & 1;
}

- (BOOL)standardizeACLsForSystemContainerAtURL:(id)l error:(id *)error
{

  return [(MCMFileManager *)self standardizeACLsAtURL:l isSystemContainer:1 error:error];
}

- (BOOL)standardizeACLsAtURL:(id)l isSystemContainer:(BOOL)container error:(id *)error
{
  v46 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v9 = +[MCMPOSIXUser nobody];
  v10 = [v9 UID];
  primaryGID = [v9 primaryGID];
  v33 = 0;
  v12 = [(MCMFileManager *)self _CopyTopLevelSystemContainerACLWithError:&v33];
  v13 = v33;
  v14 = v13;
  v43[3] = v12;
  if (!v12)
  {
LABEL_5:
    v18 = 0;
    goto LABEL_7;
  }

  v32 = v13;
  v15 = [(MCMFileManager *)self _CopySystemContainerACLWithNumACEs:1 isDir:1 inheritOnly:0 withError:&v32];
  v16 = v32;

  v39[3] = v15;
  if (v15)
  {
    v31 = v16;
    v17 = [(MCMFileManager *)self _CopySystemContainerACLWithNumACEs:1 isDir:0 inheritOnly:0 withError:&v31];
    v14 = v31;

    v35[3] = v17;
    if (v17)
    {
      v30 = v14;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __63__MCMFileManager_standardizeACLsAtURL_isSystemContainer_error___block_invoke;
      v26[3] = &unk_1E86AFC70;
      containerCopy = container;
      v26[4] = &v42;
      v26[5] = &v38;
      v26[6] = &v34;
      v27 = v10;
      v28 = primaryGID;
      v18 = [(MCMFileManager *)self _traverseDirectory:lCopy error:&v30 withBlock:v26];
      v19 = v30;

      v14 = v19;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v18 = 0;
  v14 = v16;
LABEL_7:
  v20 = v43[3];
  if (v20)
  {
    acl_free(v20);
  }

  v21 = v39[3];
  if (v21)
  {
    acl_free(v21);
  }

  v22 = v35[3];
  if (v22)
  {
    acl_free(v22);
  }

  if (error)
  {
    v23 = v18;
  }

  else
  {
    v23 = 1;
  }

  if ((v23 & 1) == 0)
  {
    v24 = v14;
    *error = v14;
  }

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v42, 8);

  return v18;
}

uint64_t __63__MCMFileManager_standardizeACLsAtURL_isSystemContainer_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 48);
  if (strstr(v4, ".com.apple.mobile_container_manager.metadata.plist"))
  {
    return 1;
  }

  if ((*(*(a2 + 96) + 4) & 0xF000) == 0x4000)
  {
    if (*(a1 + 64) == 1 && !*(a2 + 86))
    {
      if (!acl_set_file(v4, ACL_TYPE_EXTENDED, *(*(*(a1 + 32) + 8) + 24)))
      {
        goto LABEL_11;
      }

      v5 = container_log_handle_for_category();
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      v9 = *(a2 + 48);
      v10 = __error();
      v11 = strerror(*v10);
      v22 = 136315394;
      v23 = v9;
      v24 = 2080;
      v25 = v11;
      v12 = "Failed to set top level ACL on dir %s: %s";
      goto LABEL_26;
    }

    if (acl_set_file(v4, ACL_TYPE_EXTENDED, *(*(*(a1 + 40) + 8) + 24)))
    {
      v5 = container_log_handle_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      goto LABEL_10;
    }
  }

  else if (acl_set_file(v4, ACL_TYPE_EXTENDED, *(*(*(a1 + 48) + 8) + 24)))
  {
    v5 = container_log_handle_for_category();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
LABEL_25:
      v13 = *(a2 + 48);
      v14 = __error();
      v15 = strerror(*v14);
      v22 = 136315394;
      v23 = v13;
      v24 = 2080;
      v25 = v15;
      v12 = "Failed to set ACL on dir %s: %s";
LABEL_26:
      _os_log_error_impl(&dword_1DF2C3000, v5, OS_LOG_TYPE_ERROR, v12, &v22, 0x16u);
    }

LABEL_10:
  }

LABEL_11:
  if (*(a1 + 64) != 1 || *(a2 + 86))
  {
    if (lchmod(*(a2 + 48), 0) == -1)
    {
      v6 = container_log_handle_for_category();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a2 + 48);
        v17 = __error();
        v18 = strerror(*v17);
        v22 = 136315394;
        v23 = v16;
        v24 = 2080;
        v25 = v18;
        _os_log_error_impl(&dword_1DF2C3000, v6, OS_LOG_TYPE_ERROR, "Could not chmod %s: %s", &v22, 0x16u);
      }
    }

    if (lchown(*(a2 + 48), *(a1 + 56), *(a1 + 60)) == -1)
    {
      v7 = container_log_handle_for_category();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v19 = *(a2 + 48);
        v20 = __error();
        v21 = strerror(*v20);
        v22 = 136315394;
        v23 = v19;
        v24 = 2080;
        v25 = v21;
        _os_log_error_impl(&dword_1DF2C3000, v7, OS_LOG_TYPE_ERROR, "Could not chown %s: %s", &v22, 0x16u);
      }
    }
  }

  return 1;
}

- (BOOL)setTopLevelSystemContainerACLAtURL:(id)l error:(id *)error
{
  v18[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  v18[0] = 0;
  v7 = [(MCMFileManager *)self _CopyTopLevelSystemContainerACLWithError:v18];
  v8 = v18[0];
  if (!v7)
  {
    v11 = 0;
    if (!error)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  path = [lCopy path];
  v10 = acl_set_file([path UTF8String], ACL_TYPE_EXTENDED, v7);
  v11 = v10 == 0;

  if (v10)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __59__MCMFileManager_setTopLevelSystemContainerACLAtURL_error___block_invoke;
    v15[3] = &unk_1E86B0BE8;
    v16 = lCopy;
    v17 = v8;
    v12 = v8;
    v8 = __59__MCMFileManager_setTopLevelSystemContainerACLAtURL_error___block_invoke(v15);
  }

  acl_free(v7);
  if (error)
  {
LABEL_7:
    if (!v11)
    {
      v13 = v8;
      *error = v8;
    }
  }

LABEL_9:

  return v11;
}

id __59__MCMFileManager_setTopLevelSystemContainerACLAtURL_error___block_invoke(uint64_t a1)
{
  v23[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = __error();
  v5 = [v2 initWithFormat:@"Failed to set ACL on %@: %s", v3, strerror(*v4)];

  v22[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager setTopLevelSystemContainerACLAtURL:error:]_block_invoke"];
  v23[0] = v6;
  v23[1] = &unk_1F5A75EE0;
  v7 = *MEMORY[0x1E696A578];
  v22[1] = @"SourceFileLine";
  v22[2] = v7;
  v23[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];

  if (*(a1 + 40))
  {
    v9 = [v8 mutableCopy];
    [v9 setObject:*(a1 + 40) forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v10 = [v9 copy];

    if (*(a1 + 40))
    {
      v11 = container_log_handle_for_category();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v12 = *(a1 + 40);
      *buf = 138543618;
      v19 = v5;
      v20 = 2114;
      v21 = v12;
      v13 = "%{public}@ (%{public}@)";
      v14 = v11;
      v15 = 22;
      goto LABEL_11;
    }
  }

  else
  {
    v10 = v8;
  }

  v11 = container_log_handle_for_category();
  if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

  *buf = 138543362;
  v19 = v5;
  v13 = "%{public}@";
  v14 = v11;
  v15 = 12;
LABEL_11:
  _os_log_error_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_ERROR, v13, buf, v15);
LABEL_7:

  v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:63 userInfo:v10];

  return v16;
}

- (_acl)_CopyTopLevelSystemContainerACLWithError:(id *)error
{
  obj_p[1] = *MEMORY[0x1E69E9840];
  v13 = 0;
  v5 = [(MCMFileManager *)self _CopySystemContainerACLWithNumACEs:2 isDir:1 inheritOnly:1 withError:&v13];
  v6 = v13;
  v7 = v6;
  obj_p[0] = v5;
  if (!v5)
  {
    v9 = 0;
    if (!error)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v12 = v6;
  [(MCMFileManager *)self _CreateSystemUserACEInACL:obj_p withPermissions:1572 andFlags:0 withError:&v12];
  v8 = v12;

  v9 = obj_p[0];
  if (v8 && obj_p[0])
  {
    acl_free(obj_p[0]);
    v9 = 0;
    obj_p[0] = 0;
  }

  v7 = v8;
  if (error)
  {
LABEL_8:
    if (!v9)
    {
      v10 = v7;
      *error = v7;
      v9 = obj_p[0];
    }
  }

LABEL_10:

  return v9;
}

- (_acl)_CopySystemContainerACLWithNumACEs:(int)es isDir:(BOOL)dir inheritOnly:(BOOL)only withError:(id *)error
{
  onlyCopy = only;
  dirCopy = dir;
  obj_p[1] = *MEMORY[0x1E69E9840];
  obj_p[0] = acl_init(es);
  if (!obj_p[0])
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __81__MCMFileManager__CopySystemContainerACLWithNumACEs_isDir_inheritOnly_withError___block_invoke;
    v18[3] = &unk_1E86B0B98;
    v19 = 0;
    v13 = __81__MCMFileManager__CopySystemContainerACLWithNumACEs_isDir_inheritOnly_withError___block_invoke(v18);

    v14 = 0;
    if (!error)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (onlyCopy)
  {
    v10 = 352;
  }

  else
  {
    v10 = 96;
  }

  if (dirCopy)
  {
    v11 = 16382;
  }

  else
  {
    v11 = 16318;
  }

  if (dirCopy)
  {
    v12 = v10;
  }

  else
  {
    v12 = 16;
  }

  v17 = 0;
  [(MCMFileManager *)self _CreateSystemUserACEInACL:obj_p withPermissions:v11 andFlags:v12 withError:&v17];
  v13 = v17;
  v14 = obj_p[0];
  if (v13 && obj_p[0])
  {
    acl_free(obj_p[0]);
    v14 = 0;
    obj_p[0] = 0;
  }

  if (error)
  {
LABEL_17:
    if (!v14)
    {
      v15 = v13;
      *error = v13;
      v14 = obj_p[0];
    }
  }

LABEL_19:

  return v14;
}

id __81__MCMFileManager__CopySystemContainerACLWithNumACEs_isDir_inheritOnly_withError___block_invoke(uint64_t a1)
{
  v22[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = __error();
  v4 = [v2 initWithFormat:@"acl_init() failed: %s", strerror(*v3)];
  v21[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager _CopySystemContainerACLWithNumACEs:isDir:inheritOnly:withError:]_block_invoke"];
  v22[0] = v5;
  v22[1] = &unk_1F5A75EC8;
  v6 = *MEMORY[0x1E696A578];
  v21[1] = @"SourceFileLine";
  v21[2] = v6;
  v22[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];

  if (*(a1 + 32))
  {
    v8 = [v7 mutableCopy];
    [v8 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v9 = [v8 copy];

    if (*(a1 + 32))
    {
      v10 = container_log_handle_for_category();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v11 = *(a1 + 32);
      *buf = 138543618;
      v18 = v4;
      v19 = 2114;
      v20 = v11;
      v12 = "%{public}@ (%{public}@)";
      v13 = v10;
      v14 = 22;
      goto LABEL_11;
    }
  }

  else
  {
    v9 = v7;
  }

  v10 = container_log_handle_for_category();
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

  *buf = 138543362;
  v18 = v4;
  v12 = "%{public}@";
  v13 = v10;
  v14 = 12;
LABEL_11:
  _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
LABEL_7:

  v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:63 userInfo:v9];

  return v15;
}

- (BOOL)_CreateSystemUserACEInACL:(_acl *)l withPermissions:(int)permissions andFlags:(int)flags withError:(id *)error
{
  entry_p[1] = *MEMORY[0x1E69E9840];
  permset_p = 0;
  entry_p[0] = 0;
  __s = 0;
  flagset_p = 0;
  if (acl_create_entry(l, entry_p))
  {
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke;
    v40[3] = &unk_1E86B0B98;
    v41 = 0;
    v9 = __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke(v40);
    v10 = v41;
    goto LABEL_3;
  }

  v12 = malloc_type_calloc(1uLL, 0x10uLL, 0x1000040451B5BE8uLL);
  __s = v12;
  if (v12)
  {
    v13 = v12;
    if (mbr_identifier_to_uuid(5, "systemusers", 0xBuLL, v12))
    {
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke_178;
      v36[3] = &unk_1E86B0B98;
      v14 = &v37;
      v37 = 0;
      v15 = __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke_178(v36);
    }

    else
    {
      if (permissions)
      {
        if (acl_get_permset(entry_p[0], &permset_p))
        {
          v34[0] = MEMORY[0x1E69E9820];
          v34[1] = 3221225472;
          v34[2] = __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke_184;
          v34[3] = &unk_1E86B0B98;
          v14 = &v35;
          v35 = 0;
          v15 = __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke_184(v34);
          goto LABEL_8;
        }

        if (acl_add_perm(permset_p, permissions))
        {
          v31[0] = MEMORY[0x1E69E9820];
          v31[1] = 3221225472;
          v31[2] = __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke_190;
          v31[3] = &unk_1E86B0618;
          permissionsCopy = permissions;
          v14 = &v32;
          v32 = 0;
          v15 = __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke_190(v31);
          goto LABEL_8;
        }

        if (acl_set_permset(entry_p[0], permset_p))
        {
          v29[0] = MEMORY[0x1E69E9820];
          v29[1] = 3221225472;
          v29[2] = __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke_196;
          v29[3] = &unk_1E86B0B98;
          v14 = &v30;
          v30 = 0;
          v15 = __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke_196(v29);
          goto LABEL_8;
        }
      }

      if (flags)
      {
        if (acl_get_flagset_np(entry_p[0], &flagset_p))
        {
          v27[0] = MEMORY[0x1E69E9820];
          v27[1] = 3221225472;
          v27[2] = __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke_202;
          v27[3] = &unk_1E86B0B98;
          v14 = &v28;
          v28 = 0;
          v15 = __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke_202(v27);
          goto LABEL_8;
        }

        if (acl_add_flag_np(flagset_p, flags))
        {
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke_208;
          v24[3] = &unk_1E86B0618;
          flagsCopy = flags;
          v14 = &v25;
          v25 = 0;
          v15 = __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke_208(v24);
          goto LABEL_8;
        }

        if (acl_set_flagset_np(entry_p[0], flagset_p))
        {
          v22[0] = MEMORY[0x1E69E9820];
          v22[1] = 3221225472;
          v22[2] = __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke_214;
          v22[3] = &unk_1E86B0B98;
          v14 = &v23;
          v23 = 0;
          v15 = __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke_214(v22);
          goto LABEL_8;
        }
      }

      if (acl_set_tag_type(entry_p[0], ACL_EXTENDED_ALLOW))
      {
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke_220;
        v20[3] = &unk_1E86B0B98;
        v14 = &v21;
        v21 = 0;
        v15 = __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke_220(v20);
      }

      else
      {
        if (!acl_set_qualifier(entry_p[0], v13))
        {
          v9 = 0;
          v11 = 1;
LABEL_9:
          free(v13);
          memset_s(&__s, 8uLL, 0, 8uLL);
          if (!error)
          {
            goto LABEL_12;
          }

          goto LABEL_10;
        }

        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke_226;
        v18[3] = &unk_1E86B0B98;
        v14 = &v19;
        v19 = 0;
        v15 = __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke_226(v18);
      }
    }

LABEL_8:
    v9 = v15;

    v11 = 0;
    goto LABEL_9;
  }

  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke_172;
  v38[3] = &unk_1E86B0B98;
  v39 = 0;
  v9 = __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke_172(v38);
  v10 = v39;
LABEL_3:

  v11 = 0;
  if (!error)
  {
    goto LABEL_12;
  }

LABEL_10:
  if (!v11)
  {
    v16 = v9;
    *error = v9;
  }

LABEL_12:

  return v11;
}

id __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke(uint64_t a1)
{
  v22[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = __error();
  v4 = [v2 initWithFormat:@"acl_create_entry() failed: %s", strerror(*v3)];
  v21[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager _CreateSystemUserACEInACL:withPermissions:andFlags:withError:]_block_invoke"];
  v22[0] = v5;
  v22[1] = &unk_1F5A75DC0;
  v6 = *MEMORY[0x1E696A578];
  v21[1] = @"SourceFileLine";
  v21[2] = v6;
  v22[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];

  if (*(a1 + 32))
  {
    v8 = [v7 mutableCopy];
    [v8 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v9 = [v8 copy];

    if (*(a1 + 32))
    {
      v10 = container_log_handle_for_category();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v11 = *(a1 + 32);
      *buf = 138543618;
      v18 = v4;
      v19 = 2114;
      v20 = v11;
      v12 = "%{public}@ (%{public}@)";
      v13 = v10;
      v14 = 22;
      goto LABEL_11;
    }
  }

  else
  {
    v9 = v7;
  }

  v10 = container_log_handle_for_category();
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

  *buf = 138543362;
  v18 = v4;
  v12 = "%{public}@";
  v13 = v10;
  v14 = 12;
LABEL_11:
  _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
LABEL_7:

  v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:63 userInfo:v9];

  return v15;
}

id __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke_172(uint64_t a1)
{
  v22[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = __error();
  v4 = [v2 initWithFormat:@"failed to calloc nameUUID: %s", strerror(*v3)];
  v21[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager _CreateSystemUserACEInACL:withPermissions:andFlags:withError:]_block_invoke"];
  v22[0] = v5;
  v22[1] = &unk_1F5A75DD8;
  v6 = *MEMORY[0x1E696A578];
  v21[1] = @"SourceFileLine";
  v21[2] = v6;
  v22[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];

  if (*(a1 + 32))
  {
    v8 = [v7 mutableCopy];
    [v8 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v9 = [v8 copy];

    if (*(a1 + 32))
    {
      v10 = container_log_handle_for_category();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v11 = *(a1 + 32);
      *buf = 138543618;
      v18 = v4;
      v19 = 2114;
      v20 = v11;
      v12 = "%{public}@ (%{public}@)";
      v13 = v10;
      v14 = 22;
      goto LABEL_11;
    }
  }

  else
  {
    v9 = v7;
  }

  v10 = container_log_handle_for_category();
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

  *buf = 138543362;
  v18 = v4;
  v12 = "%{public}@";
  v13 = v10;
  v14 = 12;
LABEL_11:
  _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
LABEL_7:

  v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:63 userInfo:v9];

  return v15;
}

id __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke_178(uint64_t a1)
{
  v22[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = __error();
  v4 = [v2 initWithFormat:@"mbr_identifier_to_uuid() failed: %s", strerror(*v3)];
  v21[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager _CreateSystemUserACEInACL:withPermissions:andFlags:withError:]_block_invoke"];
  v22[0] = v5;
  v22[1] = &unk_1F5A75DF0;
  v6 = *MEMORY[0x1E696A578];
  v21[1] = @"SourceFileLine";
  v21[2] = v6;
  v22[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];

  if (*(a1 + 32))
  {
    v8 = [v7 mutableCopy];
    [v8 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v9 = [v8 copy];

    if (*(a1 + 32))
    {
      v10 = container_log_handle_for_category();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v11 = *(a1 + 32);
      *buf = 138543618;
      v18 = v4;
      v19 = 2114;
      v20 = v11;
      v12 = "%{public}@ (%{public}@)";
      v13 = v10;
      v14 = 22;
      goto LABEL_11;
    }
  }

  else
  {
    v9 = v7;
  }

  v10 = container_log_handle_for_category();
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

  *buf = 138543362;
  v18 = v4;
  v12 = "%{public}@";
  v13 = v10;
  v14 = 12;
LABEL_11:
  _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
LABEL_7:

  v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:63 userInfo:v9];

  return v15;
}

id __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke_184(uint64_t a1)
{
  v22[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = __error();
  v4 = [v2 initWithFormat:@"acl_get_permset() failed: %s", strerror(*v3)];
  v21[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager _CreateSystemUserACEInACL:withPermissions:andFlags:withError:]_block_invoke"];
  v22[0] = v5;
  v22[1] = &unk_1F5A75E08;
  v6 = *MEMORY[0x1E696A578];
  v21[1] = @"SourceFileLine";
  v21[2] = v6;
  v22[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];

  if (*(a1 + 32))
  {
    v8 = [v7 mutableCopy];
    [v8 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v9 = [v8 copy];

    if (*(a1 + 32))
    {
      v10 = container_log_handle_for_category();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v11 = *(a1 + 32);
      *buf = 138543618;
      v18 = v4;
      v19 = 2114;
      v20 = v11;
      v12 = "%{public}@ (%{public}@)";
      v13 = v10;
      v14 = 22;
      goto LABEL_11;
    }
  }

  else
  {
    v9 = v7;
  }

  v10 = container_log_handle_for_category();
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

  *buf = 138543362;
  v18 = v4;
  v12 = "%{public}@";
  v13 = v10;
  v14 = 12;
LABEL_11:
  _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
LABEL_7:

  v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:63 userInfo:v9];

  return v15;
}

id __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke_190(uint64_t a1)
{
  v23[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 40);
  v4 = __error();
  v5 = [v2 initWithFormat:@"acl_add_perm() failed to set perms %x: %s", v3, strerror(*v4)];
  v22[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager _CreateSystemUserACEInACL:withPermissions:andFlags:withError:]_block_invoke"];
  v23[0] = v6;
  v23[1] = &unk_1F5A75E20;
  v7 = *MEMORY[0x1E696A578];
  v22[1] = @"SourceFileLine";
  v22[2] = v7;
  v23[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];

  if (*(a1 + 32))
  {
    v9 = [v8 mutableCopy];
    [v9 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v10 = [v9 copy];

    if (*(a1 + 32))
    {
      v11 = container_log_handle_for_category();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v12 = *(a1 + 32);
      *buf = 138543618;
      v19 = v5;
      v20 = 2114;
      v21 = v12;
      v13 = "%{public}@ (%{public}@)";
      v14 = v11;
      v15 = 22;
      goto LABEL_11;
    }
  }

  else
  {
    v10 = v8;
  }

  v11 = container_log_handle_for_category();
  if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

  *buf = 138543362;
  v19 = v5;
  v13 = "%{public}@";
  v14 = v11;
  v15 = 12;
LABEL_11:
  _os_log_error_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_ERROR, v13, buf, v15);
LABEL_7:

  v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:63 userInfo:v10];

  return v16;
}

id __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke_196(uint64_t a1)
{
  v22[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = __error();
  v4 = [v2 initWithFormat:@"acl_set_permset() failed: %s", strerror(*v3)];
  v21[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager _CreateSystemUserACEInACL:withPermissions:andFlags:withError:]_block_invoke"];
  v22[0] = v5;
  v22[1] = &unk_1F5A75E38;
  v6 = *MEMORY[0x1E696A578];
  v21[1] = @"SourceFileLine";
  v21[2] = v6;
  v22[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];

  if (*(a1 + 32))
  {
    v8 = [v7 mutableCopy];
    [v8 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v9 = [v8 copy];

    if (*(a1 + 32))
    {
      v10 = container_log_handle_for_category();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v11 = *(a1 + 32);
      *buf = 138543618;
      v18 = v4;
      v19 = 2114;
      v20 = v11;
      v12 = "%{public}@ (%{public}@)";
      v13 = v10;
      v14 = 22;
      goto LABEL_11;
    }
  }

  else
  {
    v9 = v7;
  }

  v10 = container_log_handle_for_category();
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

  *buf = 138543362;
  v18 = v4;
  v12 = "%{public}@";
  v13 = v10;
  v14 = 12;
LABEL_11:
  _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
LABEL_7:

  v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:63 userInfo:v9];

  return v15;
}

id __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke_202(uint64_t a1)
{
  v22[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = __error();
  v4 = [v2 initWithFormat:@"acl_get_flagset_np() failed: %s", strerror(*v3)];
  v21[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager _CreateSystemUserACEInACL:withPermissions:andFlags:withError:]_block_invoke"];
  v22[0] = v5;
  v22[1] = &unk_1F5A75E50;
  v6 = *MEMORY[0x1E696A578];
  v21[1] = @"SourceFileLine";
  v21[2] = v6;
  v22[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];

  if (*(a1 + 32))
  {
    v8 = [v7 mutableCopy];
    [v8 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v9 = [v8 copy];

    if (*(a1 + 32))
    {
      v10 = container_log_handle_for_category();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v11 = *(a1 + 32);
      *buf = 138543618;
      v18 = v4;
      v19 = 2114;
      v20 = v11;
      v12 = "%{public}@ (%{public}@)";
      v13 = v10;
      v14 = 22;
      goto LABEL_11;
    }
  }

  else
  {
    v9 = v7;
  }

  v10 = container_log_handle_for_category();
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

  *buf = 138543362;
  v18 = v4;
  v12 = "%{public}@";
  v13 = v10;
  v14 = 12;
LABEL_11:
  _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
LABEL_7:

  v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:63 userInfo:v9];

  return v15;
}

id __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke_208(uint64_t a1)
{
  v23[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 40);
  v4 = __error();
  v5 = [v2 initWithFormat:@"acl_add_flag_np() failed to set flags %x: %s", v3, strerror(*v4)];
  v22[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager _CreateSystemUserACEInACL:withPermissions:andFlags:withError:]_block_invoke"];
  v23[0] = v6;
  v23[1] = &unk_1F5A75E68;
  v7 = *MEMORY[0x1E696A578];
  v22[1] = @"SourceFileLine";
  v22[2] = v7;
  v23[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];

  if (*(a1 + 32))
  {
    v9 = [v8 mutableCopy];
    [v9 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v10 = [v9 copy];

    if (*(a1 + 32))
    {
      v11 = container_log_handle_for_category();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v12 = *(a1 + 32);
      *buf = 138543618;
      v19 = v5;
      v20 = 2114;
      v21 = v12;
      v13 = "%{public}@ (%{public}@)";
      v14 = v11;
      v15 = 22;
      goto LABEL_11;
    }
  }

  else
  {
    v10 = v8;
  }

  v11 = container_log_handle_for_category();
  if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

  *buf = 138543362;
  v19 = v5;
  v13 = "%{public}@";
  v14 = v11;
  v15 = 12;
LABEL_11:
  _os_log_error_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_ERROR, v13, buf, v15);
LABEL_7:

  v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:63 userInfo:v10];

  return v16;
}

id __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke_214(uint64_t a1)
{
  v22[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = __error();
  v4 = [v2 initWithFormat:@"acl_set_flagset_np() failed: %s", strerror(*v3)];
  v21[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager _CreateSystemUserACEInACL:withPermissions:andFlags:withError:]_block_invoke"];
  v22[0] = v5;
  v22[1] = &unk_1F5A75E80;
  v6 = *MEMORY[0x1E696A578];
  v21[1] = @"SourceFileLine";
  v21[2] = v6;
  v22[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];

  if (*(a1 + 32))
  {
    v8 = [v7 mutableCopy];
    [v8 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v9 = [v8 copy];

    if (*(a1 + 32))
    {
      v10 = container_log_handle_for_category();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v11 = *(a1 + 32);
      *buf = 138543618;
      v18 = v4;
      v19 = 2114;
      v20 = v11;
      v12 = "%{public}@ (%{public}@)";
      v13 = v10;
      v14 = 22;
      goto LABEL_11;
    }
  }

  else
  {
    v9 = v7;
  }

  v10 = container_log_handle_for_category();
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

  *buf = 138543362;
  v18 = v4;
  v12 = "%{public}@";
  v13 = v10;
  v14 = 12;
LABEL_11:
  _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
LABEL_7:

  v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:63 userInfo:v9];

  return v15;
}

id __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke_220(uint64_t a1)
{
  v22[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = __error();
  v4 = [v2 initWithFormat:@"acl_set_tag_type() failed: %s", strerror(*v3)];
  v21[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager _CreateSystemUserACEInACL:withPermissions:andFlags:withError:]_block_invoke"];
  v22[0] = v5;
  v22[1] = &unk_1F5A75E98;
  v6 = *MEMORY[0x1E696A578];
  v21[1] = @"SourceFileLine";
  v21[2] = v6;
  v22[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];

  if (*(a1 + 32))
  {
    v8 = [v7 mutableCopy];
    [v8 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v9 = [v8 copy];

    if (*(a1 + 32))
    {
      v10 = container_log_handle_for_category();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v11 = *(a1 + 32);
      *buf = 138543618;
      v18 = v4;
      v19 = 2114;
      v20 = v11;
      v12 = "%{public}@ (%{public}@)";
      v13 = v10;
      v14 = 22;
      goto LABEL_11;
    }
  }

  else
  {
    v9 = v7;
  }

  v10 = container_log_handle_for_category();
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

  *buf = 138543362;
  v18 = v4;
  v12 = "%{public}@";
  v13 = v10;
  v14 = 12;
LABEL_11:
  _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
LABEL_7:

  v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:63 userInfo:v9];

  return v15;
}

id __79__MCMFileManager__CreateSystemUserACEInACL_withPermissions_andFlags_withError___block_invoke_226(uint64_t a1)
{
  v22[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = __error();
  v4 = [v2 initWithFormat:@"acl_set_qualifier() failed: %s", strerror(*v3)];
  v21[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager _CreateSystemUserACEInACL:withPermissions:andFlags:withError:]_block_invoke"];
  v22[0] = v5;
  v22[1] = &unk_1F5A75EB0;
  v6 = *MEMORY[0x1E696A578];
  v21[1] = @"SourceFileLine";
  v21[2] = v6;
  v22[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];

  if (*(a1 + 32))
  {
    v8 = [v7 mutableCopy];
    [v8 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v9 = [v8 copy];

    if (*(a1 + 32))
    {
      v10 = container_log_handle_for_category();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v11 = *(a1 + 32);
      *buf = 138543618;
      v18 = v4;
      v19 = 2114;
      v20 = v11;
      v12 = "%{public}@ (%{public}@)";
      v13 = v10;
      v14 = 22;
      goto LABEL_11;
    }
  }

  else
  {
    v9 = v7;
  }

  v10 = container_log_handle_for_category();
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

  *buf = 138543362;
  v18 = v4;
  v12 = "%{public}@";
  v13 = v10;
  v14 = 12;
LABEL_11:
  _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
LABEL_7:

  v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MCMErrorDomain" code:63 userInfo:v9];

  return v15;
}

- (BOOL)_traverseDirectory:(id)directory error:(id *)error withBlock:(id)block
{
  v42[2] = *MEMORY[0x1E69E9840];
  directoryCopy = directory;
  blockCopy = block;
  fileSystemRepresentation = [directoryCopy fileSystemRepresentation];
  v10 = container_log_handle_for_category();
  v11 = os_signpost_id_make_with_pointer(v10, directoryCopy);

  v12 = container_log_handle_for_category();
  v13 = v12;
  v14 = v11 - 1;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    path = [directoryCopy path];
    *buf = 138477827;
    v39 = path;
    _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "TraversingDirectory", " path=%{private, signpost.description:attribute}@ ", buf, 0xCu);
  }

  spid = v11;

  v42[0] = fileSystemRepresentation;
  v42[1] = 0;
  v16 = fts_open(v42, 84, 0);
  if (!v16)
  {
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __53__MCMFileManager__traverseDirectory_error_withBlock___block_invoke;
    v37[3] = &__block_descriptor_40_e14___NSError_8__0l;
    v37[4] = fileSystemRepresentation;
    v25 = __53__MCMFileManager__traverseDirectory_error_withBlock___block_invoke(v37);
    v18 = 0;
LABEL_20:
    v20 = 0;
    goto LABEL_21;
  }

  v17 = v16;
  v31 = v11 - 1;
  errorCopy = error;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  while (1)
  {
    v21 = fts_read(v17);
    if (!v21)
    {
      break;
    }

    fts_info = v21->fts_info;
    if (fts_info == 10 || fts_info == 7)
    {
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __53__MCMFileManager__traverseDirectory_error_withBlock___block_invoke_154;
      v36[3] = &__block_descriptor_48_e14___NSError_8__0l;
      v36[4] = fileSystemRepresentation;
      v36[5] = v21;
      v25 = __53__MCMFileManager__traverseDirectory_error_withBlock___block_invoke_154(v36);

LABEL_15:
      v20 = 0;
      goto LABEL_17;
    }

    ++v18;
    v35 = v19;
    v24 = blockCopy[2](blockCopy, v21, &v35);
    v25 = v35;

    v20 = 1;
    v19 = v25;
    if ((v24 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v25 = v19;
LABEL_17:
  error = errorCopy;
  v14 = v31;
  if (fts_close(v17))
  {
    if (!v25)
    {
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __53__MCMFileManager__traverseDirectory_error_withBlock___block_invoke_160;
      v34[3] = &__block_descriptor_40_e14___NSError_8__0l;
      v34[4] = fileSystemRepresentation;
      v25 = __53__MCMFileManager__traverseDirectory_error_withBlock___block_invoke_160(v34);
    }

    goto LABEL_20;
  }

LABEL_21:
  v26 = container_log_handle_for_category();
  v27 = v26;
  if (v14 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
  {
    path2 = [directoryCopy path];
    *buf = 138478083;
    v39 = path2;
    v40 = 2050;
    v41 = v18;
    _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v27, OS_SIGNPOST_INTERVAL_END, spid, "TraversingDirectory", " path=%{private, signpost.description:attribute}@  numNodes=%{public, signpost.description:attribute}llu ", buf, 0x16u);
  }

  if (!((error == 0) | v20 & 1))
  {
    v29 = v25;
    *error = v25;
  }

  return v20 & 1;
}

id __53__MCMFileManager__traverseDirectory_error_withBlock___block_invoke(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 32);
  v4 = __error();
  v5 = [v2 initWithFormat:@"fts_open failed for %s with error %s", v3, strerror(*v4)];
  v11[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager _traverseDirectory:error:withBlock:]_block_invoke"];
  v12[0] = v6;
  v12[1] = &unk_1F5A75D78;
  v7 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v7;
  v12[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v8];

  return v9;
}

id __53__MCMFileManager__traverseDirectory_error_withBlock___block_invoke_154(uint64_t a1)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Error for path %s: %s", *(a1 + 32), strerror(*(*(a1 + 40) + 56))];
  v8[0] = @"FunctionName";
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager _traverseDirectory:error:withBlock:]_block_invoke"];
  v9[0] = v3;
  v9[1] = &unk_1F5A75D90;
  v4 = *MEMORY[0x1E696A578];
  v8[1] = @"SourceFileLine";
  v8[2] = v4;
  v9[2] = v2;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*(*(a1 + 40) + 56) userInfo:v5];

  return v6;
}

id __53__MCMFileManager__traverseDirectory_error_withBlock___block_invoke_160(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 32);
  v4 = __error();
  v5 = [v2 initWithFormat:@"fts_close failed for %s with error %s", v3, strerror(*v4)];
  v11[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager _traverseDirectory:error:withBlock:]_block_invoke"];
  v12[0] = v6;
  v12[1] = &unk_1F5A75DA8;
  v7 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v7;
  v12[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v8];

  return v9;
}

- (id)createTemporaryDirectoryInDirectoryURL:(id)l error:(id *)error
{

  return [(MCMFileManager *)self createTemporaryDirectoryInDirectoryURL:l withNamePrefix:@"temp." error:error];
}

- (id)createTemporaryDirectoryInDirectoryURL:(id)l withNamePrefix:(id)prefix error:(id *)error
{
  __s[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  prefixCopy = prefix;
  v9 = prefixCopy;
  __s[0] = 0;
  if (lCopy)
  {
    prefixCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@XXXXXX", prefixCopy];
    v11 = [lCopy URLByAppendingPathComponent:prefixCopy isDirectory:1];
    v12 = strdup([v11 fileSystemRepresentation]);
    __s[0] = v12;
    if (mkdtemp(v12))
    {
      v13 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:v12 isDirectory:1 relativeToURL:0];
      v14 = 0;
      if (!v12)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __78__MCMFileManager_createTemporaryDirectoryInDirectoryURL_withNamePrefix_error___block_invoke_139;
    v18[3] = &__block_descriptor_40_e14___NSError_8__0l;
    v18[4] = v12;
    v14 = __78__MCMFileManager_createTemporaryDirectoryInDirectoryURL_withNamePrefix_error___block_invoke_139(v18);
    v13 = 0;
    if (v12)
    {
LABEL_7:
      free(v12);
      memset_s(__s, 8uLL, 0, 8uLL);
    }
  }

  else
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __78__MCMFileManager_createTemporaryDirectoryInDirectoryURL_withNamePrefix_error___block_invoke;
    v19[3] = &unk_1E86B0B98;
    v20 = prefixCopy;
    v14 = __78__MCMFileManager_createTemporaryDirectoryInDirectoryURL_withNamePrefix_error___block_invoke(v19);

    v11 = 0;
    prefixCopy = 0;
    v13 = 0;
  }

LABEL_8:
  if (error && !v13)
  {
    v15 = v14;
    *error = v14;
  }

  v16 = v13;

  return v13;
}

id __78__MCMFileManager_createTemporaryDirectoryInDirectoryURL_withNamePrefix_error___block_invoke(uint64_t a1)
{
  v8[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"nil base directory when trying to create temporary directory for %@", *(a1 + 32)];
  v7[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager createTemporaryDirectoryInDirectoryURL:withNamePrefix:error:]_block_invoke"];
  v8[0] = v2;
  v8[1] = &unk_1F5A75D48;
  v3 = *MEMORY[0x1E696A578];
  v7[1] = @"SourceFileLine";
  v7[2] = v3;
  v8[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v4];

  return v5;
}

id __78__MCMFileManager_createTemporaryDirectoryInDirectoryURL_withNamePrefix_error___block_invoke_139(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 32);
  v4 = __error();
  v5 = [v2 initWithFormat:@"Failed to create temp dir at path %s : %s", v3, strerror(*v4)];
  v11[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager createTemporaryDirectoryInDirectoryURL:withNamePrefix:error:]_block_invoke"];
  v12[0] = v6;
  v12[1] = &unk_1F5A75D60;
  v7 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v7;
  v12[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v8];

  return v9;
}

- (BOOL)replaceItemAtDestinationURL:(id)l withSourceURL:(id)rL swapped:(BOOL *)swapped error:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  rLCopy = rL;
  lCopy = l;
  fileSystemRepresentation = [rL fileSystemRepresentation];
  fileSystemRepresentation2 = [lCopy fileSystemRepresentation];

  v14 = MEMORY[0x1E69E9988];
  v15 = (*(*MEMORY[0x1E69E9988] + 640))(fileSystemRepresentation, fileSystemRepresentation2, 2);
  if (v15 < 0 && (*__error() != 45 || ((*(*v14 + 640))(fileSystemRepresentation, fileSystemRepresentation2, 0) & 0x80000000) != 0))
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __74__MCMFileManager_replaceItemAtDestinationURL_withSourceURL_swapped_error___block_invoke;
    v21[3] = &__block_descriptor_48_e14___NSError_8__0l;
    v21[4] = fileSystemRepresentation2;
    v21[5] = fileSystemRepresentation;
    v18 = __74__MCMFileManager_replaceItemAtDestinationURL_withSourceURL_swapped_error___block_invoke(v21);
    if (error)
    {
      v18 = v18;
      v19 = 0;
      *error = v18;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    if (swapped)
    {
      *swapped = v15 >= 0;
    }

    v16 = container_log_handle_for_category();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = "Replaced";
      *buf = 136315650;
      if (v15 >= 0)
      {
        v17 = "Swapped";
      }

      v23 = v17;
      v24 = 2080;
      v25 = fileSystemRepresentation2;
      v26 = 2080;
      v27 = fileSystemRepresentation;
      _os_log_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_INFO, "%s [%s] <-> [%s].", buf, 0x20u);
    }

    v18 = 0;
    v19 = 1;
  }

  return v19;
}

id __74__MCMFileManager_replaceItemAtDestinationURL_withSourceURL_swapped_error___block_invoke(uint64_t a1)
{
  v8[3] = *MEMORY[0x1E69E9840];
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Could not replace [%s] with file [%s]", *(a1 + 32), *(a1 + 40)];
  v7[0] = @"FunctionName";
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager replaceItemAtDestinationURL:withSourceURL:swapped:error:]_block_invoke"];
  v8[0] = v2;
  v8[1] = &unk_1F5A75D30;
  v3 = *MEMORY[0x1E696A578];
  v7[1] = @"SourceFileLine";
  v7[2] = v3;
  v8[2] = v1;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v4];

  return v5;
}

- (BOOL)moveItemAtURL:(id)l toURL:(id)rL error:(id *)error
{

  return [(MCMFileManager *)self _moveItemAtURL:l toURL:rL failIfSrcMissing:1 error:error];
}

- (BOOL)copyItemAtURL:(id)l toURL:(id)rL error:(id *)error
{

  return [(MCMFileManager *)self _copyItemAtURL:l toURL:rL failIfSrcMissing:1 error:error];
}

- (BOOL)moveItemIfExistsAtURL:(id)l toURL:(id)rL error:(id *)error
{

  return [(MCMFileManager *)self _moveItemAtURL:l toURL:rL failIfSrcMissing:0 error:error];
}

- (BOOL)copyItemIfExistsAtURL:(id)l toURL:(id)rL error:(id *)error
{

  return [(MCMFileManager *)self _copyItemAtURL:l toURL:rL failIfSrcMissing:0 error:error];
}

- (BOOL)_moveItemAtURL:(id)l toURL:(id)rL failIfSrcMissing:(BOOL)missing error:(id *)error
{
  v34 = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  fileSystemRepresentation = [lCopy fileSystemRepresentation];
  fileSystemRepresentation2 = [rLCopy fileSystemRepresentation];
  if (!missing)
  {
    memset(&v33, 0, sizeof(v33));
    if (lstat(fileSystemRepresentation, &v33))
    {
      if (*__error() != 2)
      {
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __62__MCMFileManager__moveItemAtURL_toURL_failIfSrcMissing_error___block_invoke;
        v32[3] = &__block_descriptor_40_e14___NSError_8__0l;
        v32[4] = fileSystemRepresentation;
        v15 = __62__MCMFileManager__moveItemAtURL_toURL_failIfSrcMissing_error___block_invoke(v32);
        goto LABEL_18;
      }

      goto LABEL_13;
    }
  }

  rename(fileSystemRepresentation, fileSystemRepresentation2, v13);
  if (!v16)
  {
LABEL_13:
    v21 = 0;
    v23 = "";
    goto LABEL_14;
  }

  if (*__error() != 18)
  {
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __62__MCMFileManager__moveItemAtURL_toURL_failIfSrcMissing_error___block_invoke_115;
    v31[3] = &__block_descriptor_48_e14___NSError_8__0l;
    v31[4] = fileSystemRepresentation;
    v31[5] = fileSystemRepresentation2;
    v15 = __62__MCMFileManager__moveItemAtURL_toURL_failIfSrcMissing_error___block_invoke_115(v31);
LABEL_18:
    v21 = v15;
    if (error)
    {
LABEL_19:
      v26 = v21;
      v25 = 0;
      *error = v21;
      goto LABEL_22;
    }

LABEL_21:
    v25 = 0;
    goto LABEL_22;
  }

  v30 = 0;
  v17 = [(MCMFileManager *)self _copyItemAtURL:lCopy toURL:rLCopy failIfSrcMissing:1 error:&v30];
  v18 = v30;
  v19 = v18;
  if (!v17)
  {
    v21 = v18;
    if (error)
    {
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  v29 = v18;
  v20 = [(MCMFileManager *)self removeItemAtURL:lCopy error:&v29];
  v21 = v29;

  if (!v20)
  {
    v22 = container_log_handle_for_category();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      path = [lCopy path];
      v33.st_dev = 138412546;
      *&v33.st_mode = path;
      WORD2(v33.st_ino) = 2112;
      *(&v33.st_ino + 6) = v21;
      _os_log_error_impl(&dword_1DF2C3000, v22, OS_LOG_TYPE_ERROR, "Failed to remove move source after copy at %@ : %@", &v33, 0x16u);
    }
  }

  v23 = "(using copy-delete) ";
LABEL_14:
  v24 = container_log_handle_for_category();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    v33.st_dev = 136315650;
    *&v33.st_mode = v23;
    WORD2(v33.st_ino) = 2080;
    *(&v33.st_ino + 6) = fileSystemRepresentation;
    HIWORD(v33.st_gid) = 2080;
    *&v33.st_rdev = fileSystemRepresentation2;
    _os_log_impl(&dword_1DF2C3000, v24, OS_LOG_TYPE_INFO, "Moved %s[%s] → [%s].", &v33, 0x20u);
  }

  v25 = 1;
LABEL_22:

  return v25;
}

id __62__MCMFileManager__moveItemAtURL_toURL_failIfSrcMissing_error___block_invoke_115(uint64_t a1)
{
  v13[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = __error();
  v6 = [v2 initWithFormat:@"rename of [%s] to [%s] failed: %s", v4, v3, strerror(*v5)];
  v12[0] = @"FunctionName";
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager _moveItemAtURL:toURL:failIfSrcMissing:error:]_block_invoke"];
  v13[0] = v7;
  v13[1] = &unk_1F5A75D18;
  v8 = *MEMORY[0x1E696A578];
  v12[1] = @"SourceFileLine";
  v12[2] = v8;
  v13[2] = v6;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v9];

  return v10;
}

id __62__MCMFileManager__moveItemAtURL_toURL_failIfSrcMissing_error___block_invoke(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 32);
  v4 = __error();
  v5 = [v2 initWithFormat:@"stat of [%s] failed: %s", v3, strerror(*v4)];
  v11[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager _moveItemAtURL:toURL:failIfSrcMissing:error:]_block_invoke"];
  v12[0] = v6;
  v12[1] = &unk_1F5A75D00;
  v7 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v7;
  v12[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v8];

  return v9;
}

- (BOOL)_copyItemAtURL:(id)l toURL:(id)rL failIfSrcMissing:(BOOL)missing error:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  if (missing || (memset(&v21, 0, sizeof(v21)), !lstat([lCopy fileSystemRepresentation], &v21)))
  {
    if (!copyfile([lCopy fileSystemRepresentation], objc_msgSend(rLCopy, "fileSystemRepresentation"), 0, 0x10C800Fu))
    {
      v13 = 0;
      v12 = 1;
      goto LABEL_14;
    }

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __62__MCMFileManager__copyItemAtURL_toURL_failIfSrcMissing_error___block_invoke_104;
    v16[3] = &unk_1E86B0BE8;
    v17 = lCopy;
    v18 = rLCopy;
    v13 = __62__MCMFileManager__copyItemAtURL_toURL_failIfSrcMissing_error___block_invoke_104(v16);

    v12 = 0;
    if (!error)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v11 = *__error();
    v12 = v11 == 2;
    if (v11 == 2)
    {
      v13 = 0;
      if (!error)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __62__MCMFileManager__copyItemAtURL_toURL_failIfSrcMissing_error___block_invoke;
      v19[3] = &unk_1E86B0B98;
      v20 = lCopy;
      v13 = __62__MCMFileManager__copyItemAtURL_toURL_failIfSrcMissing_error___block_invoke(v19);

      if (!error)
      {
        goto LABEL_14;
      }
    }
  }

  if (!v12)
  {
    v14 = v13;
    v12 = 0;
    *error = v13;
  }

LABEL_14:

  return v12;
}

id __62__MCMFileManager__copyItemAtURL_toURL_failIfSrcMissing_error___block_invoke(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = __error();
  v5 = [v2 initWithFormat:@"stat of %@ failed: %s", v3, strerror(*v4)];

  v11[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager _copyItemAtURL:toURL:failIfSrcMissing:error:]_block_invoke"];
  v12[0] = v6;
  v12[1] = &unk_1F5A75CD0;
  v7 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v7;
  v12[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v8];

  return v9;
}

id __62__MCMFileManager__copyItemAtURL_toURL_failIfSrcMissing_error___block_invoke_104(uint64_t a1)
{
  v13[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [*(a1 + 40) path];
  v5 = __error();
  v6 = [v2 initWithFormat:@"copyfile of %@ to %@ failed: %s", v3, v4, strerror(*v5)];

  v12[0] = @"FunctionName";
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager _copyItemAtURL:toURL:failIfSrcMissing:error:]_block_invoke"];
  v13[0] = v7;
  v13[1] = &unk_1F5A75CE8;
  v8 = *MEMORY[0x1E696A578];
  v12[1] = @"SourceFileLine";
  v12[2] = v8;
  v13[2] = v6;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v9];

  return v10;
}

- (id)targetOfSymbolicLinkAtURL:(id)l error:(id *)error
{
  v19 = *MEMORY[0x1E69E9840];
  lCopy = l;
  memset(&v18, 0, sizeof(v18));
  bzero(v17, 0x401uLL);
  if (lstat([lCopy fileSystemRepresentation], &v18))
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __50__MCMFileManager_targetOfSymbolicLinkAtURL_error___block_invoke;
    v15[3] = &unk_1E86B0B98;
    v16 = lCopy;
    v6 = __50__MCMFileManager_targetOfSymbolicLinkAtURL_error___block_invoke(v15);
    v7 = v16;
  }

  else if ((v18.st_mode & 0xF000) == 0xA000)
  {
    if (readlink([lCopy fileSystemRepresentation], v17, 0x400uLL) > 0)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v17];
      v6 = 0;
      if (!error)
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __50__MCMFileManager_targetOfSymbolicLinkAtURL_error___block_invoke_93;
    v11[3] = &unk_1E86B0B98;
    v12 = lCopy;
    v6 = __50__MCMFileManager_targetOfSymbolicLinkAtURL_error___block_invoke_93(v11);
    v7 = v12;
  }

  else
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __50__MCMFileManager_targetOfSymbolicLinkAtURL_error___block_invoke_87;
    v13[3] = &unk_1E86B0B98;
    v14 = lCopy;
    v6 = __50__MCMFileManager_targetOfSymbolicLinkAtURL_error___block_invoke_87(v13);
    v7 = v14;
  }

  v8 = 0;
  if (!error)
  {
    goto LABEL_12;
  }

LABEL_10:
  if (!v8)
  {
    v9 = v6;
    *error = v6;
  }

LABEL_12:

  return v8;
}

id __50__MCMFileManager_targetOfSymbolicLinkAtURL_error___block_invoke(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = __error();
  v5 = [v2 initWithFormat:@"fetching target of symlink from [%@] failed: file exists and lstat on it failed: %s", v3, strerror(*v4)];

  v11[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager targetOfSymbolicLinkAtURL:error:]_block_invoke"];
  v12[0] = v6;
  v12[1] = &unk_1F5A75C88;
  v7 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v7;
  v12[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v8];

  return v9;
}

id __50__MCMFileManager_targetOfSymbolicLinkAtURL_error___block_invoke_87(uint64_t a1)
{
  v11[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"fetching target of symlink from [%@] failed: file exists and is not a symlink: %s", v3, strerror(17)];

  v10[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager targetOfSymbolicLinkAtURL:error:]_block_invoke"];
  v11[0] = v5;
  v11[1] = &unk_1F5A75CA0;
  v6 = *MEMORY[0x1E696A578];
  v10[1] = @"SourceFileLine";
  v10[2] = v6;
  v11[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:17 userInfo:v7];

  return v8;
}

id __50__MCMFileManager_targetOfSymbolicLinkAtURL_error___block_invoke_93(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = __error();
  v5 = [v2 initWithFormat:@"fetching target of symlink from [%@] failed: file exists, is a symlink, but its target could not be read: %s", v3, strerror(*v4)];

  v11[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager targetOfSymbolicLinkAtURL:error:]_block_invoke"];
  v12[0] = v6;
  v12[1] = &unk_1F5A75CB8;
  v7 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v7;
  v12[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v8];

  return v9;
}

- (BOOL)symbolicallyLinkURL:(id)l toSymlinkTarget:(id)target error:(id *)error
{
  v38 = *MEMORY[0x1E69E9840];
  lCopy = l;
  targetCopy = target;
  v10 = container_log_handle_for_category();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    path = [lCopy path];
    *buf = 138412546;
    v35 = path;
    v36 = 2112;
    v37 = targetCopy;
    _os_log_debug_impl(&dword_1DF2C3000, v10, OS_LOG_TYPE_DEBUG, "Creating symlink [%@] → [%@]", buf, 0x16u);
  }

  if (!symlink([targetCopy UTF8String], objc_msgSend(lCopy, "fileSystemRepresentation")))
  {
    goto LABEL_8;
  }

  if (*__error() == 17)
  {
    v30 = 0;
    v11 = [(MCMFileManager *)self targetOfSymbolicLinkAtURL:lCopy error:&v30];
    v12 = v30;
    if (v11)
    {
      if ([targetCopy isEqualToString:v11])
      {

LABEL_8:
        v13 = 0;
        v14 = 1;
        goto LABEL_16;
      }

      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __60__MCMFileManager_symbolicallyLinkURL_toSymlinkTarget_error___block_invoke_76;
      v22[3] = &unk_1E86B05C8;
      v15 = &v23;
      v23 = lCopy;
      v16 = &v24;
      v24 = targetCopy;
      v17 = &v25;
      v25 = v11;
      v18 = __60__MCMFileManager_symbolicallyLinkURL_toSymlinkTarget_error___block_invoke_76(v22);
    }

    else
    {
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __60__MCMFileManager_symbolicallyLinkURL_toSymlinkTarget_error___block_invoke_70;
      v26[3] = &unk_1E86B05C8;
      v15 = &v27;
      v27 = lCopy;
      v16 = &v28;
      v28 = targetCopy;
      v17 = &v29;
      v29 = v12;
      v18 = __60__MCMFileManager_symbolicallyLinkURL_toSymlinkTarget_error___block_invoke_70(v26);
    }

    v13 = v18;
  }

  else
  {
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __60__MCMFileManager_symbolicallyLinkURL_toSymlinkTarget_error___block_invoke;
    v31[3] = &unk_1E86B0BE8;
    v32 = lCopy;
    v33 = targetCopy;
    v13 = __60__MCMFileManager_symbolicallyLinkURL_toSymlinkTarget_error___block_invoke(v31);

    v12 = v32;
  }

  if (error)
  {
    v19 = v13;
    v14 = 0;
    *error = v13;
  }

  else
  {
    v14 = 0;
  }

LABEL_16:

  return v14;
}

id __60__MCMFileManager_symbolicallyLinkURL_toSymlinkTarget_error___block_invoke(uint64_t a1)
{
  v13[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = *(a1 + 40);
  v5 = __error();
  v6 = [v2 initWithFormat:@"symlink from [%@] → [%@] failed: %s", v3, v4, strerror(*v5)];

  v12[0] = @"FunctionName";
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager symbolicallyLinkURL:toSymlinkTarget:error:]_block_invoke"];
  v13[0] = v7;
  v13[1] = &unk_1F5A75C40;
  v8 = *MEMORY[0x1E696A578];
  v12[1] = @"SourceFileLine";
  v12[2] = v8;
  v13[2] = v6;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v9];

  return v10;
}

id __60__MCMFileManager_symbolicallyLinkURL_toSymlinkTarget_error___block_invoke_70(uint64_t a1)
{
  v11[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"symlink from [%@] → [%@] failed: %@", v3, *(a1 + 40), *(a1 + 48)];

  v10[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager symbolicallyLinkURL:toSymlinkTarget:error:]_block_invoke"];
  v11[0] = v5;
  v11[1] = &unk_1F5A75C58;
  v6 = *MEMORY[0x1E696A578];
  v10[1] = @"SourceFileLine";
  v10[2] = v6;
  v11[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:17 userInfo:v7];

  return v8;
}

id __60__MCMFileManager_symbolicallyLinkURL_toSymlinkTarget_error___block_invoke_76(uint64_t a1)
{
  v14[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = __error();
  v7 = [v2 initWithFormat:@"symlink from [%@] → [%@] failed: file exists, is a symlink, but its target is different [%@]: %s", v3, v5, v4, strerror(*v6)];

  v13[0] = @"FunctionName";
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager symbolicallyLinkURL:toSymlinkTarget:error:]_block_invoke"];
  v14[0] = v8;
  v14[1] = &unk_1F5A75C70;
  v9 = *MEMORY[0x1E696A578];
  v13[1] = @"SourceFileLine";
  v13[2] = v9;
  v14[2] = v7;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];

  v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:17 userInfo:v10];

  return v11;
}

- (BOOL)createDirectoryAtURL:(id)l withIntermediateDirectories:(BOOL)directories mode:(unsigned __int16)mode error:(id *)error
{
  modeCopy = mode;
  directoriesCopy = directories;
  lCopy = l;
  v11 = +[MCMPOSIXUser currentPOSIXUser];
  LOBYTE(error) = [(MCMFileManager *)self createDirectoryAtURL:lCopy withIntermediateDirectories:directoriesCopy mode:modeCopy owner:v11 dataProtectionClass:0xFFFFFFFFLL error:error];

  return error;
}

- (BOOL)createDirectoryAtURL:(id)l withIntermediateDirectories:(BOOL)directories mode:(unsigned __int16)mode dataProtectionClass:(int)class error:(id *)error
{
  v8 = *&class;
  modeCopy = mode;
  directoriesCopy = directories;
  lCopy = l;
  v13 = +[MCMPOSIXUser currentPOSIXUser];
  LOBYTE(error) = [(MCMFileManager *)self createDirectoryAtURL:lCopy withIntermediateDirectories:directoriesCopy mode:modeCopy owner:v13 dataProtectionClass:v8 error:error];

  return error;
}

- (BOOL)createDirectoryAtURL:(id)l withIntermediateDirectories:(BOOL)directories mode:(unsigned __int16)mode owner:(id)owner error:(id *)error
{

  return [(MCMFileManager *)self createDirectoryAtURL:l withIntermediateDirectories:directories mode:mode owner:owner dataProtectionClass:0xFFFFFFFFLL error:error];
}

- (BOOL)createDirectoryAtURL:(id)l withIntermediateDirectories:(BOOL)directories mode:(unsigned __int16)mode owner:(id)owner dataProtectionClass:(int)class fsNode:(id *)node error:(id *)error
{
  modeCopy = mode;
  directoriesCopy = directories;
  v56 = *MEMORY[0x1E69E9840];
  ownerCopy = owner;
  fileSystemRepresentation = [l fileSystemRepresentation];
  v16 = fileSystemRepresentation;
  v17 = MEMORY[0x1E69E9988];
  v18 = *MEMORY[0x1E69E9988];
  if (directoriesCopy)
  {
    v19 = (*(v18 + 488))(fileSystemRepresentation, modeCopy);
    if (v19 != 17)
    {
      if (v19)
      {
        v48[0] = MEMORY[0x1E69E9820];
        v48[1] = 3221225472;
        v48[2] = __111__MCMFileManager_createDirectoryAtURL_withIntermediateDirectories_mode_owner_dataProtectionClass_fsNode_error___block_invoke;
        v48[3] = &__block_descriptor_44_e14___NSError_8__0l;
        v48[4] = v16;
        v49 = v19;
        v20 = __111__MCMFileManager_createDirectoryAtURL_withIntermediateDirectories_mode_owner_dataProtectionClass_fsNode_error___block_invoke(v48);
LABEL_23:
        v27 = v20;
        LOBYTE(v32) = 0;
        v23 = 0;
        goto LABEL_58;
      }

      goto LABEL_8;
    }
  }

  else
  {
    if (!(*(v18 + 464))(fileSystemRepresentation, modeCopy))
    {
LABEL_8:
      v21 = 1;
      goto LABEL_9;
    }

    if (*__error() != 17)
    {
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __111__MCMFileManager_createDirectoryAtURL_withIntermediateDirectories_mode_owner_dataProtectionClass_fsNode_error___block_invoke_26;
      v47[3] = &__block_descriptor_40_e14___NSError_8__0l;
      v47[4] = v16;
      v20 = __111__MCMFileManager_createDirectoryAtURL_withIntermediateDirectories_mode_owner_dataProtectionClass_fsNode_error___block_invoke_26(v47);
      goto LABEL_23;
    }
  }

  v21 = 0;
LABEL_9:
  if (class == -1 && !node)
  {
    nodeCopy = 0;
    v22 = 0;
    v23 = 0;
    if (!ownerCopy)
    {
      goto LABEL_40;
    }

    goto LABEL_12;
  }

  v28 = (*(*v17 + 544))(v16);
  v23 = v28;
  if (!v28)
  {
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __111__MCMFileManager_createDirectoryAtURL_withIntermediateDirectories_mode_owner_dataProtectionClass_fsNode_error___block_invoke_33;
    v46[3] = &__block_descriptor_40_e14___NSError_8__0l;
    v46[4] = v16;
    v27 = __111__MCMFileManager_createDirectoryAtURL_withIntermediateDirectories_mode_owner_dataProtectionClass_fsNode_error___block_invoke_33(v46);
    if ((v21 & 1) == 0)
    {
      LOBYTE(v32) = 0;
      goto LABEL_58;
    }

    v22 = 0;
    goto LABEL_28;
  }

  v29 = (*(*v17 + 176))(v28);
  if ((v29 & 0x80000000) != 0)
  {
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __111__MCMFileManager_createDirectoryAtURL_withIntermediateDirectories_mode_owner_dataProtectionClass_fsNode_error___block_invoke_39;
    v45[3] = &__block_descriptor_40_e14___NSError_8__0l;
    v45[4] = v16;
    v31 = __111__MCMFileManager_createDirectoryAtURL_withIntermediateDirectories_mode_owner_dataProtectionClass_fsNode_error___block_invoke_39(v45);
LABEL_27:
    v27 = v31;
    v22 = 0;
    if (v21)
    {
      goto LABEL_28;
    }

    goto LABEL_63;
  }

  v30 = v29;
  if (node)
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v51 = 0u;
    memset(buf, 0, sizeof(buf));
    if ((*(*v17 + 336))(v29, buf))
    {
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __111__MCMFileManager_createDirectoryAtURL_withIntermediateDirectories_mode_owner_dataProtectionClass_fsNode_error___block_invoke_46;
      v44[3] = &__block_descriptor_40_e14___NSError_8__0l;
      v44[4] = v16;
      v31 = __111__MCMFileManager_createDirectoryAtURL_withIntermediateDirectories_mode_owner_dataProtectionClass_fsNode_error___block_invoke_46(v44);
      goto LABEL_27;
    }

    v22 = [[MCMFSNode alloc] initWithStat:buf];
  }

  else
  {
    v22 = 0;
  }

  if (class != -1 && (*(*MEMORY[0x1E69E9988] + 232))(v30, 64) && *__error() != 45)
  {
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __111__MCMFileManager_createDirectoryAtURL_withIntermediateDirectories_mode_owner_dataProtectionClass_fsNode_error___block_invoke_52;
    v42[3] = &__block_descriptor_44_e14___NSError_8__0l;
    classCopy = class;
    v42[4] = v16;
    v27 = __111__MCMFileManager_createDirectoryAtURL_withIntermediateDirectories_mode_owner_dataProtectionClass_fsNode_error___block_invoke_52(v42);
    if (v21)
    {
      goto LABEL_28;
    }

LABEL_63:
    v32 = 0;
    goto LABEL_53;
  }

  nodeCopy = node;
  if (!ownerCopy)
  {
    goto LABEL_40;
  }

LABEL_12:
  v24 = MEMORY[0x1E69E9990];
  v25 = (**MEMORY[0x1E69E9990])();
  if (v25 == [ownerCopy UID] && (v26 = (*(*v24 + 8))(), v26 == objc_msgSend(ownerCopy, "primaryGID")) || !(*(*MEMORY[0x1E69E9988] + 144))(v16, objc_msgSend(ownerCopy, "UID"), objc_msgSend(ownerCopy, "primaryGID")))
  {
LABEL_40:
    if (v21)
    {
      v33 = container_log_handle_for_category();
      v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG);
      if (v22)
      {
        node = nodeCopy;
        if (v34)
        {
          *buf = 136316418;
          *&buf[4] = v16;
          *&buf[12] = 1024;
          *&buf[14] = modeCopy;
          *&buf[18] = 1024;
          *&buf[20] = directoriesCopy;
          *&buf[24] = 1024;
          *&buf[26] = class;
          *&buf[30] = 2112;
          *&buf[32] = ownerCopy;
          *&buf[40] = 2112;
          *&buf[42] = v22;
          _os_log_debug_impl(&dword_1DF2C3000, v33, OS_LOG_TYPE_DEBUG, "Created directory [%s] with mode: 0%o, w/intermediates: %d, DP class: %d, owner: %@, fsNode: %@", buf, 0x32u);
        }

        v27 = 0;
      }

      else
      {
        node = nodeCopy;
        if (v34)
        {
          *buf = 136316162;
          *&buf[4] = v16;
          *&buf[12] = 1024;
          *&buf[14] = modeCopy;
          *&buf[18] = 1024;
          *&buf[20] = directoriesCopy;
          *&buf[24] = 1024;
          *&buf[26] = class;
          *&buf[30] = 2112;
          *&buf[32] = ownerCopy;
          _os_log_debug_impl(&dword_1DF2C3000, v33, OS_LOG_TYPE_DEBUG, "Created directory [%s] with mode: 0%o, w/intermediates: %d, DP class: %d, owner: %@", buf, 0x28u);
        }

        v27 = 0;
        v22 = 0;
      }

      v32 = 1;
    }

    else
    {
      v33 = container_log_handle_for_category();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136316162;
        *&buf[4] = v16;
        *&buf[12] = 1024;
        *&buf[14] = modeCopy;
        *&buf[18] = 1024;
        *&buf[20] = directoriesCopy;
        *&buf[24] = 1024;
        *&buf[26] = class;
        *&buf[30] = 2112;
        *&buf[32] = ownerCopy;
        _os_log_debug_impl(&dword_1DF2C3000, v33, OS_LOG_TYPE_DEBUG, "Set directory [%s] with mode: 0%o, w/intermediates: %d, DP class: %d, owner: %@", buf, 0x28u);
      }

      v27 = 0;
      v32 = 1;
      node = nodeCopy;
    }

LABEL_52:

    if (!v23)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __111__MCMFileManager_createDirectoryAtURL_withIntermediateDirectories_mode_owner_dataProtectionClass_fsNode_error___block_invoke_58;
  v39[3] = &unk_1E86B0B48;
  v40 = ownerCopy;
  v41 = v16;
  v27 = __111__MCMFileManager_createDirectoryAtURL_withIntermediateDirectories_mode_owner_dataProtectionClass_fsNode_error___block_invoke_58(v39);

  if (v21)
  {
    node = nodeCopy;
LABEL_28:
    v33 = container_log_handle_for_category();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = v16;
      *&buf[12] = 2112;
      *&buf[14] = v27;
      _os_log_error_impl(&dword_1DF2C3000, v33, OS_LOG_TYPE_ERROR, "Created directory [%s] but could not complete its setup due to error: %@", buf, 0x16u);
    }

    v32 = 0;
    goto LABEL_52;
  }

  v32 = 0;
  node = nodeCopy;
  if (v23)
  {
LABEL_53:
    (*(*MEMORY[0x1E69E9988] + 160))(v23);
  }

LABEL_54:
  if (node && v32)
  {
    v35 = v22;
    *node = v22;
    LOBYTE(v32) = 1;
    v23 = v22;
    goto LABEL_61;
  }

  v23 = v22;
LABEL_58:
  if (error && !v32)
  {
    v36 = v27;
    LOBYTE(v32) = 0;
    *error = v27;
  }

LABEL_61:

  return v32;
}

id __111__MCMFileManager_createDirectoryAtURL_withIntermediateDirectories_mode_owner_dataProtectionClass_fsNode_error___block_invoke(uint64_t a1)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"mkpath_np of %s failed: %s", *(a1 + 32), strerror(*(a1 + 40))];
  v8[0] = @"FunctionName";
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager createDirectoryAtURL:withIntermediateDirectories:mode:owner:dataProtectionClass:fsNode:error:]_block_invoke"];
  v9[0] = v3;
  v9[1] = &unk_1F5A75B98;
  v4 = *MEMORY[0x1E696A578];
  v8[1] = @"SourceFileLine";
  v8[2] = v4;
  v9[2] = v2;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*(a1 + 40) userInfo:v5];

  return v6;
}

id __111__MCMFileManager_createDirectoryAtURL_withIntermediateDirectories_mode_owner_dataProtectionClass_fsNode_error___block_invoke_26(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 32);
  v4 = __error();
  v5 = [v2 initWithFormat:@"mkdir of %s failed: %s", v3, strerror(*v4)];
  v11[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager createDirectoryAtURL:withIntermediateDirectories:mode:owner:dataProtectionClass:fsNode:error:]_block_invoke"];
  v12[0] = v6;
  v12[1] = &unk_1F5A75BB0;
  v7 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v7;
  v12[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v8];

  return v9;
}

id __111__MCMFileManager_createDirectoryAtURL_withIntermediateDirectories_mode_owner_dataProtectionClass_fsNode_error___block_invoke_33(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 32);
  v4 = __error();
  v5 = [v2 initWithFormat:@"opendir of %s failed: %s", v3, strerror(*v4)];
  v11[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager createDirectoryAtURL:withIntermediateDirectories:mode:owner:dataProtectionClass:fsNode:error:]_block_invoke"];
  v12[0] = v6;
  v12[1] = &unk_1F5A75BC8;
  v7 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v7;
  v12[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v8];

  return v9;
}

id __111__MCMFileManager_createDirectoryAtURL_withIntermediateDirectories_mode_owner_dataProtectionClass_fsNode_error___block_invoke_39(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 32);
  v4 = __error();
  v5 = [v2 initWithFormat:@"dirfd of %s failed: %s", v3, strerror(*v4)];
  v11[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager createDirectoryAtURL:withIntermediateDirectories:mode:owner:dataProtectionClass:fsNode:error:]_block_invoke"];
  v12[0] = v6;
  v12[1] = &unk_1F5A75BE0;
  v7 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v7;
  v12[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v8];

  return v9;
}

id __111__MCMFileManager_createDirectoryAtURL_withIntermediateDirectories_mode_owner_dataProtectionClass_fsNode_error___block_invoke_46(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 32);
  v4 = __error();
  v5 = [v2 initWithFormat:@"Failed to fstat() on directory %s: %s", v3, strerror(*v4)];
  v11[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager createDirectoryAtURL:withIntermediateDirectories:mode:owner:dataProtectionClass:fsNode:error:]_block_invoke"];
  v12[0] = v6;
  v12[1] = &unk_1F5A75BF8;
  v7 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v7;
  v12[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v8];

  return v9;
}

id __111__MCMFileManager_createDirectoryAtURL_withIntermediateDirectories_mode_owner_dataProtectionClass_fsNode_error___block_invoke_52(uint64_t a1)
{
  v13[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = __error();
  v6 = [v2 initWithFormat:@"Failed to setclass(%d) on directory %s: %s", v4, v3, strerror(*v5)];
  v12[0] = @"FunctionName";
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager createDirectoryAtURL:withIntermediateDirectories:mode:owner:dataProtectionClass:fsNode:error:]_block_invoke"];
  v13[0] = v7;
  v13[1] = &unk_1F5A75C10;
  v8 = *MEMORY[0x1E696A578];
  v12[1] = @"SourceFileLine";
  v12[2] = v8;
  v13[2] = v6;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v9];

  return v10;
}

id __111__MCMFileManager_createDirectoryAtURL_withIntermediateDirectories_mode_owner_dataProtectionClass_fsNode_error___block_invoke_58(uint64_t a1)
{
  v13[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = __error();
  v6 = [v2 initWithFormat:@"Failed to chown(%@) %s: %s", v4, v3, strerror(*v5)];
  v12[0] = @"FunctionName";
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager createDirectoryAtURL:withIntermediateDirectories:mode:owner:dataProtectionClass:fsNode:error:]_block_invoke"];
  v13[0] = v7;
  v13[1] = &unk_1F5A75C28;
  v8 = *MEMORY[0x1E696A578];
  v12[1] = @"SourceFileLine";
  v12[2] = v8;
  v13[2] = v6;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v9];

  return v10;
}

- (BOOL)removeItemAtURL:(id)l error:(id *)error
{
  v37 = *MEMORY[0x1E69E9840];
  value = 0;
  lCopy = l;
  fileSystemRepresentation = [l fileSystemRepresentation];
  if (!l)
  {
    v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"nil url passed to -removeItemAtURL:error:"];
    v35[0] = @"FunctionName";
    v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager removeItemAtURL:error:]_block_invoke"];
    *buf = v21;
    *&buf[8] = &unk_1F5A75B50;
    v22 = *MEMORY[0x1E696A578];
    v35[1] = @"SourceFileLine";
    v35[2] = v22;
    *&buf[16] = v20;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:v35 count:3];

    v24 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:14 userInfo:v23];

    v25 = 0;
    goto LABEL_25;
  }

  v8 = fileSystemRepresentation;
  v9 = 100;
  do
  {
    value = 0;
    v10 = removefile_state_alloc();
    if (removefile_state_set(v10, 3u, _removefile_error_callback))
    {
      v11 = container_log_handle_for_category();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v15 = __error();
        v16 = strerror(*v15);
        *buf = 136315138;
        *&buf[4] = v16;
        _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, "removefile_state_set REMOVEFILE_STATE_ERROR_CALLBACK failed: %s", buf, 0xCu);
      }
    }

    if (removefile_state_set(v10, 4u, &value))
    {
      v12 = container_log_handle_for_category();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v17 = __error();
        v18 = strerror(*v17);
        *buf = 136315138;
        *&buf[4] = v18;
        _os_log_error_impl(&dword_1DF2C3000, v12, OS_LOG_TYPE_ERROR, "removefile_state_set REMOVEFILE_STATE_ERROR_CONTEXT failed: %s", buf, 0xCu);
      }
    }

    if (removefile(v8, v10, 1u))
    {
      v13 = *__error();
    }

    else
    {
      v13 = 0;
    }

    removefile_state_free(v10);
    v14 = v9 - 1;
    if (value != 35)
    {
      break;
    }

    --v9;
  }

  while (v9);
  if ((v13 & 0xFFFFFFFD) != 0)
  {
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __40__MCMFileManager_removeItemAtURL_error___block_invoke_9;
    v32[3] = &__block_descriptor_44_e14___NSError_8__0l;
    v32[4] = v8;
    v33 = v13;
    v19 = __40__MCMFileManager_removeItemAtURL_error___block_invoke_9(v32);
    goto LABEL_21;
  }

  if ((value & 0xFFFFFFFD) != 0)
  {
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __40__MCMFileManager_removeItemAtURL_error___block_invoke_15;
    v30[3] = &__block_descriptor_44_e14___NSError_8__0l;
    v30[4] = v8;
    v31 = value;
    v19 = __40__MCMFileManager_removeItemAtURL_error___block_invoke_15(v30);
LABEL_21:
    v24 = v19;
    v25 = 0;
    if (v14)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  v29 = container_log_handle_for_category();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    *&buf[4] = v8;
    _os_log_debug_impl(&dword_1DF2C3000, v29, OS_LOG_TYPE_DEBUG, "removefile([%s]) succeeded", buf, 0xCu);
  }

  v24 = 0;
  v25 = 1;
  if (!v14)
  {
LABEL_22:
    v26 = container_log_handle_for_category();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      *&buf[4] = v8;
      *&buf[12] = 1026;
      *&buf[14] = v13;
      *&buf[18] = 1026;
      *&buf[20] = value;
      _os_log_fault_impl(&dword_1DF2C3000, v26, OS_LOG_TYPE_FAULT, "Hit maximum iterations trying to removefile([%s]); removefile error = %{public}d, recovery error = %{public}d", buf, 0x18u);
    }
  }

LABEL_25:
  if (error && !v25)
  {
    v27 = v24;
    *error = v24;
  }

  return v25;
}

id __40__MCMFileManager_removeItemAtURL_error___block_invoke_9(uint64_t a1)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"removefile of [%s] failed: (%d) %s", *(a1 + 32), *(a1 + 40), strerror(*(a1 + 40))];
  v8[0] = @"FunctionName";
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager removeItemAtURL:error:]_block_invoke"];
  v9[0] = v3;
  v9[1] = &unk_1F5A75B68;
  v4 = *MEMORY[0x1E696A578];
  v8[1] = @"SourceFileLine";
  v8[2] = v4;
  v9[2] = v2;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*(a1 + 40) userInfo:v5];

  return v6;
}

id __40__MCMFileManager_removeItemAtURL_error___block_invoke_15(uint64_t a1)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"removefile of [%s] failed", *(a1 + 32)];
  v8[0] = @"FunctionName";
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileManager removeItemAtURL:error:]_block_invoke"];
  v9[0] = v3;
  v9[1] = &unk_1F5A75B80;
  v4 = *MEMORY[0x1E696A578];
  v8[1] = @"SourceFileLine";
  v8[2] = v4;
  v9[2] = v2;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*(a1 + 40) userInfo:v5];

  return v6;
}

@end