@interface IXFileManager
+ (id)defaultManager;
- (BOOL)_moveItemAtURL:(id)l toURL:(id)rL failIfSrcMissing:(BOOL)missing error:(id *)error;
- (BOOL)_removeACLAtPath:(const char *)path isDir:(BOOL)dir error:(id *)error;
- (BOOL)_traverseDirectory:(id)directory ignoringFTSErrors:(BOOL)errors error:(id *)error withBlock:(id)block;
- (BOOL)_validateSymlink:(id)symlink withStartingDepth:(unsigned int)depth andEndingDepth:(unsigned int *)endingDepth;
- (BOOL)copyACLFrom:(id)from toAllChildrenOfPath:(id)path ignoringCopyErrors:(BOOL)errors error:(id *)error;
- (BOOL)createSymbolicLinkAtURL:(id)l withDestinationURL:(id)rL error:(id *)error;
- (BOOL)dataProtectionClassOfItemAtURL:(id)l class:(int *)class error:(id *)error;
- (BOOL)itemDoesNotExistAtURL:(id)l;
- (BOOL)releaseSandboxExtensionToken:(int64_t)token error:(id *)error;
- (BOOL)setDataProtectionClassOfItemAtURL:(id)l toClass:(int)class ifPredicate:(id)predicate error:(id *)error;
- (BOOL)setPermissions:(unsigned __int16)permissions onAllChildrenOfPath:(id)path error:(id *)error;
- (BOOL)setPermissionsOfItemAtURL:(id)l toMode:(unsigned __int16)mode error:(id *)error;
- (BOOL)standardizeOwnershipAtURL:(id)l toUID:(unsigned int)d toGID:(unsigned int)iD error:(id *)error;
- (id)_realPathForURL:(id)l allowNonExistentPathComponents:(BOOL)components;
- (id)_realPathWhatExistsInPath:(id)path;
- (id)createTemporaryExtractionDirectoryWithError:(id *)error;
- (id)debugDescriptionOfItemAtURL:(id)l;
- (id)destinationOfSymbolicLinkAtURL:(id)l error:(id *)error;
- (id)issueSandboxExtensionForURL:(id)l withExtensionClass:(const char *)class error:(id *)error;
- (id)realPathForURL:(id)l ifChildOfURL:(id)rL;
- (int64_t)consumeSandboxExtension:(id)extension error:(id *)error;
- (unint64_t)_diskUsageForDirectoryURL:(id)l;
- (unint64_t)diskUsageForURL:(id)l;
@end

@implementation IXFileManager

+ (id)defaultManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__IXFileManager_defaultManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (defaultManager_onceToken != -1)
  {
    dispatch_once(&defaultManager_onceToken, block);
  }

  v2 = defaultManager_defaultInstance;

  return v2;
}

uint64_t __31__IXFileManager_defaultManager__block_invoke(uint64_t a1)
{
  defaultManager_defaultInstance = objc_alloc_init(objc_opt_class());

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)_moveItemAtURL:(id)l toURL:(id)rL failIfSrcMissing:(BOOL)missing error:(id *)error
{
  lCopy = l;
  rLCopy = rL;
  if (!missing)
  {
    memset(&v36, 0, sizeof(v36));
    if (lstat([lCopy fileSystemRepresentation], &v36))
    {
      v12 = *__error();
      v13 = v12 == 2;
      if (v12 == 2)
      {
        v14 = 0;
        if (error)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v28 = *MEMORY[0x1E696A798];
        v29 = *__error();
        v30 = __error();
        strerror(*v30);
        v14 = _CreateError("[IXFileManager _moveItemAtURL:toURL:failIfSrcMissing:error:]", 83, v28, v29, 0, 0, @"stat of %@ failed: %s", v31, lCopy);
        if (error)
        {
LABEL_20:
          if (!v13)
          {
            v32 = v14;
            v13 = 0;
            *error = v14;
          }
        }
      }

LABEL_22:
      v22 = v14;
      goto LABEL_23;
    }
  }

  fileSystemRepresentation = [lCopy fileSystemRepresentation];
  fileSystemRepresentation2 = [rLCopy fileSystemRepresentation];
  rename(fileSystemRepresentation, fileSystemRepresentation2, v17);
  if (v18)
  {
    if (*__error() == 18)
    {
      v35 = 0;
      v19 = [(IXFileManager *)self _copyItemAtURL:lCopy toURL:rLCopy failIfSrcMissing:1 error:&v35];
      v20 = v35;
      v14 = v20;
      if (v19)
      {
        v34 = v20;
        v21 = [(IXFileManager *)self removeItemAtURL:lCopy error:&v34];
        v22 = v34;

        if (!v21)
        {
          v23 = IXGetLoggingHandle(kIXLoggingSubsystem);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            [IXFileManager _moveItemAtURL:lCopy toURL:v22 failIfSrcMissing:v23 error:?];
          }
        }

        goto LABEL_15;
      }
    }

    else
    {
      v24 = *MEMORY[0x1E696A798];
      v25 = *__error();
      v26 = __error();
      strerror(*v26);
      v14 = _CreateError("[IXFileManager _moveItemAtURL:toURL:failIfSrcMissing:error:]", 98, v24, v25, 0, 0, @"rename of %@ to %@ failed: %s", v27, lCopy);
    }

    v13 = 0;
    if (error)
    {
      goto LABEL_20;
    }

    goto LABEL_22;
  }

  v22 = 0;
LABEL_15:
  v13 = 1;
LABEL_23:

  return v13;
}

- (id)createTemporaryExtractionDirectoryWithError:(id *)error
{
  v5 = +[IXGlobalConfiguration sharedInstance];
  v15 = 0;
  v6 = [v5 extractedInstallableStagingDirectory:&v15];
  v7 = v15;

  if (v6)
  {
    v14 = v7;
    v8 = [(IXFileManager *)self createDirectoryAtURL:v6 withIntermediateDirectories:0 mode:493 error:&v14];
    v9 = v14;

    if (v8)
    {
      v13 = v9;
      v10 = [(IXFileManager *)self createTemporaryDirectoryInDirectoryURL:v6 error:&v13];
      v7 = v13;

      if (!error)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v10 = 0;
      v7 = v9;
      if (!error)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v10 = 0;
    if (!error)
    {
      goto LABEL_10;
    }
  }

  if (!v10)
  {
    v11 = v7;
    *error = v7;
  }

LABEL_10:

  return v10;
}

- (BOOL)_traverseDirectory:(id)directory ignoringFTSErrors:(BOOL)errors error:(id *)error withBlock:(id)block
{
  v37[2] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  fileSystemRepresentation = [directory fileSystemRepresentation];
  v37[0] = fileSystemRepresentation;
  v37[1] = 0;
  v11 = fts_open(v37, 84, 0);
  if (!v11)
  {
    v22 = *MEMORY[0x1E696A798];
    v23 = *__error();
    v24 = __error();
    strerror(*v24);
    _CreateError("[IXFileManager _traverseDirectory:ignoringFTSErrors:error:withBlock:]", 184, v22, v23, 0, 0, @"fts_open failed for %s with error %s", v25, fileSystemRepresentation);
    v15 = LABEL_22:;
    goto LABEL_23;
  }

  v12 = v11;
  v13 = fts_read(v11);
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    do
    {
      v16 = v15;
      v17 = v14;
      while (1)
      {
        fts_info = v17->fts_info;
        v19 = fts_info > 0xA;
        v20 = (1 << fts_info) & 0x490;
        if (v19 || v20 == 0)
        {
          break;
        }

        if (!errors)
        {
          v26 = *MEMORY[0x1E696A798];
          fts_errno = v14->fts_errno;
          v28 = fts_errno;
          strerror(fts_errno);
          v15 = _CreateError("[IXFileManager _traverseDirectory:ignoringFTSErrors:error:withBlock:]", 196, v26, v28, 0, 0, @"Error for path %s: %s", v29, fileSystemRepresentation);

          LOBYTE(v30) = 0;
          goto LABEL_19;
        }

        v17 = fts_read(v12);
        if (!v17)
        {
          LOBYTE(v30) = 1;
          goto LABEL_19;
        }
      }

      v30 = blockCopy[2](blockCopy);
      v15 = v15;

      if (!v30)
      {
        break;
      }

      v14 = fts_read(v12);
    }

    while (v14);
LABEL_19:
    if (fts_close(v12))
    {
      if (v15)
      {
LABEL_23:
        LOBYTE(v30) = 0;
        goto LABEL_24;
      }

      goto LABEL_21;
    }
  }

  else
  {
    if (fts_close(v12))
    {
LABEL_21:
      v31 = *MEMORY[0x1E696A798];
      v32 = *__error();
      v33 = __error();
      strerror(*v33);
      _CreateError("[IXFileManager _traverseDirectory:ignoringFTSErrors:error:withBlock:]", 213, v31, v32, 0, 0, @"fts_close failed for %s with error %s", v34, fileSystemRepresentation);
      goto LABEL_22;
    }

    LOBYTE(v30) = 0;
    v15 = 0;
  }

LABEL_24:
  if (error && (v30 & 1) == 0)
  {
    v35 = v15;
    *error = v15;
  }

  return v30;
}

- (BOOL)_removeACLAtPath:(const char *)path isDir:(BOOL)dir error:(id *)error
{
  dirCopy = dir;
  v8 = acl_init(0);
  if (v8)
  {
    v9 = v8;
    if (dirCopy)
    {
      v10 = opendir(path);
      if (v10)
      {
        v11 = v10;
        if (dirfd(v10) < 0)
        {
          v58 = IXGetLoggingHandle(kIXLoggingSubsystem);
          v59 = os_log_type_enabled(v58, OS_LOG_TYPE_ERROR);
          v60 = *MEMORY[0x1E696A798];
          if (v59)
          {
            [IXFileManager _removeACLAtPath:isDir:error:];
          }

          v61 = *__error();
          v62 = __error();
          strerror(*v62);
          v19 = _CreateError("[IXFileManager _removeACLAtPath:isDir:error:]", 248, v60, v61, 0, 0, @"dirfd of %s failed: %s", v63, path);
          v20 = 248;
        }

        else
        {
          if (!MEMORY[0x1DA74EEF0]())
          {
            v30 = 0;
            v31 = 1;
            goto LABEL_32;
          }

          v12 = IXGetLoggingHandle(kIXLoggingSubsystem);
          v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
          v14 = *MEMORY[0x1E696A798];
          if (v13)
          {
            [IXFileManager _removeACLAtPath:isDir:error:];
          }

          v15 = *__error();
          v16 = __error();
          strerror(*v16);
          v19 = _CreateError("[IXFileManager _removeACLAtPath:isDir:error:]", 253, v14, v15, 0, 0, @"Failed to set ACL on dir %s: %s", v17, path);
          v20 = 253;
        }

        v30 = _CreateError("[IXFileManager _removeACLAtPath:isDir:error:]", v20, @"IXErrorDomain", 1uLL, v19, 0, @"Failed to remove ACL", v18, v66);

        v31 = 0;
LABEL_32:
        closedir(v11);
        goto LABEL_33;
      }

      v43 = IXGetLoggingHandle(kIXLoggingSubsystem);
      v44 = os_log_type_enabled(v43, OS_LOG_TYPE_ERROR);
      v45 = *MEMORY[0x1E696A798];
      if (v44)
      {
        [IXFileManager _removeACLAtPath:isDir:error:];
      }

      v46 = *__error();
      v47 = __error();
      strerror(*v47);
      v50 = _CreateError("[IXFileManager _removeACLAtPath:isDir:error:]", 242, v45, v46, 0, 0, @"opendir of %s failed: %s", v48, path);
      v51 = 242;
    }

    else
    {
      v32 = open(path, 2097154);
      if ((v32 & 0x80000000) == 0)
      {
        v33 = v32;
        v34 = MEMORY[0x1DA74EEF0]();
        v31 = v34 == 0;
        if (v34)
        {
          v35 = IXGetLoggingHandle(kIXLoggingSubsystem);
          v36 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
          v37 = *MEMORY[0x1E696A798];
          if (v36)
          {
            [IXFileManager _removeACLAtPath:isDir:error:];
          }

          v38 = *__error();
          v39 = __error();
          strerror(*v39);
          v41 = _CreateError("[IXFileManager _removeACLAtPath:isDir:error:]", 264, v37, v38, 0, 0, @"Failed to set ACL on %s: %s", v40, path);
          v30 = _CreateError("[IXFileManager _removeACLAtPath:isDir:error:]", 264, @"IXErrorDomain", 1uLL, v41, 0, @"Failed to remove ACL", v42, v68);
        }

        else
        {
          v30 = 0;
        }

        close(v33);
LABEL_33:
        acl_free(v9);
        if (!error)
        {
          goto LABEL_36;
        }

        goto LABEL_34;
      }

      v52 = IXGetLoggingHandle(kIXLoggingSubsystem);
      v53 = os_log_type_enabled(v52, OS_LOG_TYPE_ERROR);
      v54 = *MEMORY[0x1E696A798];
      if (v53)
      {
        [IXFileManager _removeACLAtPath:isDir:error:];
      }

      v55 = *__error();
      v56 = __error();
      strerror(*v56);
      v50 = _CreateError("[IXFileManager _removeACLAtPath:isDir:error:]", 259, v54, v55, 0, 0, @"open of %s failed: %s", v57, path);
      v51 = 259;
    }

    v30 = _CreateError("[IXFileManager _removeACLAtPath:isDir:error:]", v51, @"IXErrorDomain", 1uLL, v50, 0, @"Failed to remove ACL", v49, v69);

    v31 = 0;
    goto LABEL_33;
  }

  v21 = IXGetLoggingHandle(kIXLoggingSubsystem);
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
  v23 = *MEMORY[0x1E696A798];
  if (v22)
  {
    [IXFileManager _removeACLAtPath:? isDir:? error:?];
  }

  v24 = *__error();
  v25 = __error();
  v26 = strerror(*v25);
  v28 = _CreateError("[IXFileManager _removeACLAtPath:isDir:error:]", 235, v23, v24, 0, 0, @"acl_init() failed: %s", v27, v26);
  v30 = _CreateError("[IXFileManager _removeACLAtPath:isDir:error:]", 235, @"IXErrorDomain", 1uLL, v28, 0, @"Failed to remove ACL", v29, v67);

  v31 = 0;
  if (error)
  {
LABEL_34:
    if (!v31)
    {
      v64 = v30;
      *error = v30;
    }
  }

LABEL_36:

  return v31;
}

- (BOOL)setPermissions:(unsigned __int16)permissions onAllChildrenOfPath:(id)path error:(id *)error
{
  v11 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__IXFileManager_setPermissions_onAllChildrenOfPath_error___block_invoke;
  v9[3] = &__block_descriptor_34_e79_B24__0___ftsent____ftsent____ftsent____ftsent_q_v__iiSSQiSsSSS__stat__1c__8__16l;
  permissionsCopy = permissions;
  v6 = [(IXFileManager *)self _traverseDirectory:path ignoringFTSErrors:0 error:&v11 withBlock:v9];
  v7 = v11;
  if (error && !v6)
  {
    v7 = v7;
    *error = v7;
  }

  return v6;
}

BOOL __58__IXFileManager_setPermissions_onAllChildrenOfPath_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a2 + 88);
  v4 = v3 > 0xC;
  v5 = (1 << v3) & 0x110A;
  if (v4 || v5 == 0)
  {
    return 1;
  }

  v8 = *(a2 + 48);
  v9 = lchmod(v8, *(a1 + 32));
  if (a3 && v9)
  {
    v10 = *__error();
    v11 = *MEMORY[0x1E696A798];
    v12 = v10;
    strerror(v10);
    v14 = _CreateError("[IXFileManager setPermissions:onAllChildrenOfPath:error:]_block_invoke", 304, v11, v12, 0, 0, @"Failed to lchmod %s to mode 0%o : %s", v13, v8);
    v15 = v14;
    result = 0;
    *a3 = v14;
    return result;
  }

  return !v9;
}

- (BOOL)standardizeOwnershipAtURL:(id)l toUID:(unsigned int)d toGID:(unsigned int)iD error:(id *)error
{
  v13 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__IXFileManager_standardizeOwnershipAtURL_toUID_toGID_error___block_invoke;
  v10[3] = &__block_descriptor_40_e79_B24__0___ftsent____ftsent____ftsent____ftsent_q_v__iiSSQiSsSSS__stat__1c__8__16l;
  dCopy = d;
  iDCopy = iD;
  v7 = [(IXFileManager *)self _traverseDirectory:l ignoringFTSErrors:0 error:&v13 withBlock:v10];
  v8 = v13;
  if (error && !v7)
  {
    v8 = v8;
    *error = v8;
  }

  return v7;
}

BOOL __61__IXFileManager_standardizeOwnershipAtURL_toUID_toGID_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a2 + 88);
  v4 = v3 > 0xC;
  v5 = (1 << v3) & 0x110A;
  if (v4 || v5 == 0)
  {
    return 1;
  }

  v8 = *(a2 + 48);
  v9 = lchown(v8, *(a1 + 32), *(a1 + 36));
  if (a3 && v9)
  {
    v10 = *__error();
    v11 = *MEMORY[0x1E696A798];
    v12 = v10;
    strerror(v10);
    v14 = _CreateError("[IXFileManager standardizeOwnershipAtURL:toUID:toGID:error:]_block_invoke", 337, v11, v12, 0, 0, @"Failed to lchown %s with uid/gid %d/%d : %s", v13, v8);
    v15 = v14;
    result = 0;
    *a3 = v14;
    return result;
  }

  return !v9;
}

- (BOOL)copyACLFrom:(id)from toAllChildrenOfPath:(id)path ignoringCopyErrors:(BOOL)errors error:(id *)error
{
  errorsCopy = errors;
  fromCopy = from;
  pathCopy = path;
  fileSystemRepresentation = [fromCopy fileSystemRepresentation];
  link_np = acl_get_link_np(fileSystemRepresentation, ACL_TYPE_EXTENDED);
  if (link_np)
  {
    v14 = link_np;
    v23 = 0;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __74__IXFileManager_copyACLFrom_toAllChildrenOfPath_ignoringCopyErrors_error___block_invoke;
    v21[3] = &__block_descriptor_41_e79_B24__0___ftsent____ftsent____ftsent____ftsent_q_v__iiSSQiSsSSS__stat__1c__8__16l;
    v21[4] = link_np;
    v22 = errorsCopy;
    v15 = [(IXFileManager *)self _traverseDirectory:pathCopy ignoringFTSErrors:errorsCopy error:&v23 withBlock:v21];
    v16 = v23;
    acl_free(v14);
    if (!error)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v18 = *__error();
  if (v18 == 2 && [(IXFileManager *)self itemExistsAtURL:fromCopy])
  {
    _CreateError("[IXFileManager copyACLFrom:toAllChildrenOfPath:ignoringCopyErrors:error:]", 374, *MEMORY[0x1E696A798], 0x5DuLL, 0, 0, @"acl_get_link_np found no ACLs on %s", v17, fileSystemRepresentation);
  }

  else
  {
    _CreateError("[IXFileManager copyACLFrom:toAllChildrenOfPath:ignoringCopyErrors:error:]", 379, *MEMORY[0x1E696A798], v18, 0, 0, @"acl_get_link_np failed for %s", v17, fileSystemRepresentation);
  }
  v16 = ;
  v15 = 0;
  if (error)
  {
LABEL_9:
    if (!v15)
    {
      v19 = v16;
      *error = v16;
    }
  }

LABEL_11:

  return v15;
}

uint64_t __74__IXFileManager_copyACLFrom_toAllChildrenOfPath_ignoringCopyErrors_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 88);
  result = 1;
  v6 = v4 > 8;
  v7 = (1 << v4) & 0x10A;
  if (!v6 && v7 != 0)
  {
    v10 = *(a2 + 48);
    v11 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __74__IXFileManager_copyACLFrom_toAllChildrenOfPath_ignoringCopyErrors_error___block_invoke_cold_1(v10, v11);
    }

    if (!acl_set_link_np(v10, ACL_TYPE_EXTENDED, *(a1 + 32)))
    {
      return 1;
    }

    v13 = *__error();
    if (*(a1 + 40) == 1)
    {
      v14 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v18 = "[IXFileManager copyACLFrom:toAllChildrenOfPath:ignoringCopyErrors:error:]_block_invoke";
        v19 = 2080;
        v20 = strerror(v13);
        v21 = 2080;
        v22 = v10;
        _os_log_impl(&dword_1DA47A000, v14, OS_LOG_TYPE_DEFAULT, "%s: Ignoring error %s from acl_set_link_np for %s", buf, 0x20u);
      }

      return 1;
    }

    if (a3)
    {
      v15 = _CreateError("[IXFileManager copyACLFrom:toAllChildrenOfPath:ignoringCopyErrors:error:]_block_invoke", 398, *MEMORY[0x1E696A798], v13, 0, 0, @"acl_set_link_np for %s failed", v12, v10);
      v16 = v15;
      result = 0;
      *a3 = v15;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (BOOL)createSymbolicLinkAtURL:(id)l withDestinationURL:(id)rL error:(id *)error
{
  lCopy = l;
  rLCopy = rL;
  v9 = symlink([rLCopy fileSystemRepresentation], objc_msgSend(lCopy, "fileSystemRepresentation"));
  if (v9)
  {
    v10 = *MEMORY[0x1E696A798];
    v11 = *__error();
    fileSystemRepresentation = [rLCopy fileSystemRepresentation];
    [lCopy fileSystemRepresentation];
    v13 = __error();
    strerror(*v13);
    v15 = _CreateError("[IXFileManager createSymbolicLinkAtURL:withDestinationURL:error:]", 433, v10, v11, 0, 0, @"Could not create symlink containing %s at %s: %s", v14, fileSystemRepresentation);
    if (error)
    {
      v15 = v15;
      *error = v15;
    }
  }

  else
  {
    v15 = 0;
  }

  return v9 == 0;
}

- (id)destinationOfSymbolicLinkAtURL:(id)l error:(id *)error
{
  v18 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v6 = readlink([lCopy fileSystemRepresentation], v17, 0x400uLL);
  if (v6 < 0)
  {
    v11 = *MEMORY[0x1E696A798];
    v12 = *__error();
    fileSystemRepresentation = [lCopy fileSystemRepresentation];
    v14 = __error();
    strerror(*v14);
    v10 = _CreateError("[IXFileManager destinationOfSymbolicLinkAtURL:error:]", 453, v11, v12, 0, 0, @"Could not readlink %s : %s", v15, fileSystemRepresentation);
    v9 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v17[v6] = 0;
    v7 = MEMORY[0x1E695DFF8];
    v8 = [MEMORY[0x1E696AEC0] stringWithFileSystemRepresentation:v17 length:v6];
    v9 = [v7 fileURLWithPath:v8];

    v10 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  if (!v9)
  {
    v10 = v10;
    *error = v10;
  }

LABEL_7:

  return v9;
}

- (BOOL)itemDoesNotExistAtURL:(id)l
{
  v16 = *MEMORY[0x1E69E9840];
  lCopy = l;
  memset(&v9, 0, sizeof(v9));
  if (!lstat([lCopy fileSystemRepresentation], &v9))
  {
LABEL_7:
    v4 = 0;
    goto LABEL_8;
  }

  if (*__error() != 2)
  {
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = __error();
      v7 = strerror(*v6);
      *buf = 136315650;
      v11 = "[IXFileManager itemDoesNotExistAtURL:]";
      v12 = 2112;
      v13 = lCopy;
      v14 = 2080;
      v15 = v7;
      _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: Failed to determine if %@ exists: %s", buf, 0x20u);
    }

    goto LABEL_7;
  }

  v4 = 1;
LABEL_8:

  return v4;
}

- (id)debugDescriptionOfItemAtURL:(id)l
{
  memset(&v12, 0, sizeof(v12));
  v3 = lstat([l fileSystemRepresentation], &v12);
  v4 = MEMORY[0x1E696AEC0];
  if (v3)
  {
    v5 = __error();
    v8 = strerror(*v5);
    [v4 stringWithFormat:@"<lstat error: %s>", v8, v9, v10, v11, *&v12.st_dev, v12.st_ino];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"<uid:%u gid:%u mode:0%ho flags:0x%x>", v12.st_uid, v12.st_gid, v12.st_mode, v12.st_flags, *&v12.st_dev, v12.st_ino];
  }
  v6 = ;

  return v6;
}

- (BOOL)dataProtectionClassOfItemAtURL:(id)l class:(int *)class error:(id *)error
{
  lCopy = l;
  v8 = open([lCopy fileSystemRepresentation], 256);
  v9 = v8;
  if (v8 < 0)
  {
    v13 = *MEMORY[0x1E696A798];
    v14 = *__error();
    fileSystemRepresentation = [lCopy fileSystemRepresentation];
    v16 = __error();
    strerror(*v16);
    _CreateError("[IXFileManager dataProtectionClassOfItemAtURL:class:error:]", 513, v13, v14, 0, 0, @"Failed to open %s : %s", v17, fileSystemRepresentation);
  }

  else
  {
    v10 = fcntl(v8, 63);
    if ((v10 & 0x80000000) == 0)
    {
      v11 = 0;
      *class = v10;
      v12 = 1;
LABEL_9:
      close(v9);
      v25 = v12;
      goto LABEL_10;
    }

    v18 = *MEMORY[0x1E696A798];
    v19 = *__error();
    fileSystemRepresentation2 = [lCopy fileSystemRepresentation];
    v21 = __error();
    strerror(*v21);
    _CreateError("[IXFileManager dataProtectionClassOfItemAtURL:class:error:]", 519, v18, v19, 0, 0, @"Failed to getclass of file %s: %s", v22, fileSystemRepresentation2);
  }
  v23 = ;
  v11 = v23;
  if (error)
  {
    v24 = v23;
    *error = v11;
  }

  v12 = 0;
  v25 = 0;
  if ((v9 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

LABEL_10:

  return v25;
}

- (BOOL)setDataProtectionClassOfItemAtURL:(id)l toClass:(int)class ifPredicate:(id)predicate error:(id *)error
{
  v8 = *&class;
  lCopy = l;
  predicateCopy = predicate;
  v11 = open([lCopy fileSystemRepresentation], 256);
  v12 = v11;
  if (v11 < 0)
  {
    v18 = *MEMORY[0x1E696A798];
    v19 = *__error();
    fileSystemRepresentation = [lCopy fileSystemRepresentation];
    v21 = __error();
    v33 = fileSystemRepresentation;
    strerror(*v21);
    v23 = @"Failed to open %s : %s";
    v24 = 545;
  }

  else
  {
    if (!predicateCopy)
    {
LABEL_5:
      if (fcntl(v12, 64, v8))
      {
        v14 = *MEMORY[0x1E696A798];
        v15 = *__error();
        [lCopy fileSystemRepresentation];
        v16 = __error();
        strerror(*v16);
        _CreateError("[IXFileManager setDataProtectionClassOfItemAtURL:toClass:ifPredicate:error:]", 562, v14, v15, 0, 0, @"Failed to setclass(%d) on file %s: %s", v17, v8);
        goto LABEL_11;
      }

LABEL_8:
      v25 = 0;
      v26 = 1;
LABEL_14:
      close(v12);
      v31 = v26;
      goto LABEL_15;
    }

    v13 = fcntl(v11, 63);
    if ((v13 & 0x80000000) == 0)
    {
      if (!predicateCopy[2](predicateCopy, v13))
      {
        goto LABEL_8;
      }

      goto LABEL_5;
    }

    v18 = *MEMORY[0x1E696A798];
    v19 = *__error();
    fileSystemRepresentation2 = [lCopy fileSystemRepresentation];
    v28 = __error();
    v33 = fileSystemRepresentation2;
    strerror(*v28);
    v23 = @"Failed to getclass of file %s: %s";
    v24 = 553;
  }

  _CreateError("[IXFileManager setDataProtectionClassOfItemAtURL:toClass:ifPredicate:error:]", v24, v18, v19, 0, 0, v23, v22, v33);
  v29 = LABEL_11:;
  v25 = v29;
  if (error)
  {
    v30 = v29;
    *error = v25;
  }

  v26 = 0;
  v31 = 0;
  if ((v12 & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

LABEL_15:

  return v31;
}

- (BOOL)setPermissionsOfItemAtURL:(id)l toMode:(unsigned __int16)mode error:(id *)error
{
  fileSystemRepresentation = [l fileSystemRepresentation];
  v8 = lchmod(fileSystemRepresentation, mode);
  if (v8)
  {
    v9 = *MEMORY[0x1E696A798];
    v10 = *__error();
    v11 = __error();
    strerror(*v11);
    v13 = _CreateError("[IXFileManager setPermissionsOfItemAtURL:toMode:error:]", 582, v9, v10, 0, 0, @"Failed to lchmod %s to mode 0%o : %s", v12, fileSystemRepresentation);
    if (error)
    {
      v13 = v13;
      *error = v13;
    }
  }

  return v8 == 0;
}

- (id)_realPathWhatExistsInPath:(id)path
{
  v22 = *MEMORY[0x1E69E9840];
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
      if ([(IXFileManager *)self itemExistsAtURL:v8])
      {
        v10 = [(IXFileManager *)self _realPathForURL:v8 allowNonExistentPathComponents:0];
        if (v10)
        {
          v11 = [pathComponents subarrayWithRange:{v6 + 1, objc_msgSend(pathComponents, "count") - (v6 + 1)}];
          v12 = [MEMORY[0x1E696AEC0] pathWithComponents:v11];
          v13 = IXGetLoggingHandle(kIXLoggingSubsystem);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            path = [v10 path];
            *buf = 136315650;
            v17 = "[IXFileManager _realPathWhatExistsInPath:]";
            v18 = 2112;
            v19 = path;
            v20 = 2112;
            v21 = v12;
            _os_log_debug_impl(&dword_1DA47A000, v13, OS_LOG_TYPE_DEBUG, "%s: Realpathed %@ ; appending non-existing components %@", buf, 0x20u);
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

- (id)_realPathForURL:(id)l allowNonExistentPathComponents:(BOOL)components
{
  componentsCopy = components;
  v25 = *MEMORY[0x1E69E9840];
  bzero(v24, 0x400uLL);
  path = [l path];
  if (realpath_DARWIN_EXTSN([path fileSystemRepresentation], v24))
  {
    v8 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:v24 isDirectory:0 relativeToURL:0];
LABEL_11:
    v14 = v8;
    goto LABEL_12;
  }

  if (*__error() == 2 && componentsCopy)
  {
    v8 = [(IXFileManager *)self _realPathWhatExistsInPath:path];
    goto LABEL_11;
  }

  v10 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    fileSystemRepresentation = [path fileSystemRepresentation];
    v12 = __error();
    v13 = strerror(*v12);
    v16 = 136315906;
    v17 = "[IXFileManager _realPathForURL:allowNonExistentPathComponents:]";
    v18 = 2080;
    v19 = fileSystemRepresentation;
    v20 = 2080;
    v21 = v13;
    v22 = 2080;
    v23 = v24;
    _os_log_impl(&dword_1DA47A000, v10, OS_LOG_TYPE_DEFAULT, "%s: Failed to realpath %s : %s at %s", &v16, 0x2Au);
  }

  v14 = 0;
LABEL_12:

  return v14;
}

- (BOOL)_validateSymlink:(id)symlink withStartingDepth:(unsigned int)depth andEndingDepth:(unsigned int *)endingDepth
{
  v24 = *MEMORY[0x1E69E9840];
  symlinkCopy = symlink;
  v8 = symlinkCopy;
  if (symlinkCopy)
  {
    endingDepthCopy = endingDepth;
    [symlinkCopy pathComponents];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = v22 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      depthCopy2 = depth;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          if ([v15 isEqualToString:@".."])
          {
            --depthCopy2;
          }

          else if (([v15 isEqualToString:&stru_1F55F76E0] & 1) == 0 && (objc_msgSend(v15, "isEqualToString:", @".") & 1) == 0)
          {
            depthCopy2 += [v15 isEqualToString:@"/"] ^ 1;
          }

          if (depthCopy2 < depth)
          {

            goto LABEL_18;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      depthCopy2 = depth;
    }

    if (endingDepthCopy)
    {
      *endingDepthCopy = depthCopy2;
    }

    v16 = 1;
  }

  else
  {
    v9 = 0;
LABEL_18:
    v16 = 0;
  }

  return v16;
}

- (id)realPathForURL:(id)l ifChildOfURL:(id)rL
{
  v105 = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  bzero(v104, 0x400uLL);
  if (!lCopy || !rLCopy)
  {
    v25 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    *buf = 136315650;
    v91 = "[IXFileManager realPathForURL:ifChildOfURL:]";
    v92 = 2112;
    v93 = rLCopy;
    v94 = 2112;
    v95 = lCopy;
    v30 = "%s: The base path %@ and/or suspicious path %@ were nil";
    v31 = v25;
    v32 = 32;
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
    v25 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      path7 = [lCopy path];
      path8 = [rLCopy path];
      *buf = 136315650;
      v91 = "[IXFileManager realPathForURL:ifChildOfURL:]";
      v92 = 2112;
      v93 = path7;
      v94 = 2112;
      v95 = path8;
      _os_log_impl(&dword_1DA47A000, v25, OS_LOG_TYPE_DEFAULT, "%s: supiscious path %@ does not contain base path %@ as a prefix", buf, 0x20u);

LABEL_22:
      goto LABEL_23;
    }

    goto LABEL_23;
  }

  pathComponents = [lCopy pathComponents];
  v24 = [pathComponents containsObject:@".."];

  if (v24)
  {
    v25 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      path7 = [lCopy path];
      *buf = 136315394;
      v91 = "[IXFileManager realPathForURL:ifChildOfURL:]";
      v92 = 2112;
      v93 = path7;
      v27 = "%s: The suspicious path %@ contains '..' paths, which are invalid";
LABEL_11:
      v28 = v25;
      v29 = 22;
LABEL_21:
      _os_log_impl(&dword_1DA47A000, v28, OS_LOG_TYPE_DEFAULT, v27, buf, v29);
      goto LABEL_22;
    }

LABEL_23:

    stringByDeletingLastPathComponent = 0;
    path9 = 0;
LABEL_24:
    v37 = 0;
LABEL_25:
    v38 = 0;
LABEL_26:
    v39 = 0;
    goto LABEL_27;
  }

  v34 = readlink([lCopy fileSystemRepresentation], v104, 0x400uLL);
  if (v34 < 0)
  {
    if (*__error() == 22 || *__error() == 2)
    {
      path9 = [lCopy path];
      stringByDeletingLastPathComponent = 0;
      goto LABEL_35;
    }

    v25 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    v52 = __error();
    v53 = strerror(*v52);
    *buf = 136315394;
    v91 = "[IXFileManager realPathForURL:ifChildOfURL:]";
    v92 = 2080;
    v93 = v53;
    v30 = "%s: Readlink failed: %s";
    v31 = v25;
    v32 = 22;
LABEL_14:
    _os_log_impl(&dword_1DA47A000, v31, OS_LOG_TYPE_DEFAULT, v30, buf, v32);
    goto LABEL_23;
  }

  if (v104[0] == 47)
  {
    v25 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      path7 = [lCopy path];
      *buf = 136315650;
      v91 = "[IXFileManager realPathForURL:ifChildOfURL:]";
      v92 = 2112;
      v93 = path7;
      v94 = 2080;
      v95 = v104;
      v27 = "%s: Rejecting %@ -> %s, as absolute symlinks are not allowed";
      v28 = v25;
      v29 = 32;
      goto LABEL_21;
    }

    goto LABEL_23;
  }

  v89 = 0;
  path10 = [rLCopy path];
  v43 = [(IXFileManager *)self _validateSymlink:path10 withStartingDepth:0 andEndingDepth:&v89];

  if (!v43)
  {
    v25 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    path7 = [rLCopy path];
    *buf = 136315394;
    v91 = "[IXFileManager realPathForURL:ifChildOfURL:]";
    v92 = 2112;
    v93 = path7;
    v27 = "%s: Failed to retrieve depth of %@";
    goto LABEL_11;
  }

  path11 = [lCopy path];
  path12 = [rLCopy path];
  v46 = [path11 substringFromIndex:{objc_msgSend(path12, "length")}];

  stringByDeletingLastPathComponent = [v46 stringByDeletingLastPathComponent];

  v47 = [MEMORY[0x1E696AEC0] stringWithFileSystemRepresentation:v104 length:v34];
  path9 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:v47];

  if (![(IXFileManager *)self _validateSymlink:path9 withStartingDepth:v89 andEndingDepth:0])
  {
    v50 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      path13 = [lCopy path];
      path14 = [rLCopy path];
      *buf = 136315906;
      v91 = "[IXFileManager realPathForURL:ifChildOfURL:]";
      v92 = 2112;
      v93 = path13;
      v94 = 2112;
      v95 = path9;
      v96 = 2112;
      v97 = path14;
      _os_log_impl(&dword_1DA47A000, v50, OS_LOG_TYPE_DEFAULT, "%s: Rejecting %@ -> %@, as it is points outside or to the base %@", buf, 0x2Au);

      goto LABEL_50;
    }

LABEL_51:

    goto LABEL_24;
  }

LABEL_35:
  v48 = [(IXFileManager *)self _realPathForURL:rLCopy allowNonExistentPathComponents:0];
  if (!v48)
  {
    v50 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      path13 = [rLCopy path];
      *buf = 136315394;
      v91 = "[IXFileManager realPathForURL:ifChildOfURL:]";
      v92 = 2112;
      v93 = path13;
      _os_log_impl(&dword_1DA47A000, v50, OS_LOG_TYPE_DEFAULT, "%s: Failed to retrieve realpath for base path %@ ", buf, 0x16u);
LABEL_50:

      goto LABEL_51;
    }

    goto LABEL_51;
  }

  v37 = v48;
  v49 = [(IXFileManager *)self _realPathForURL:lCopy allowNonExistentPathComponents:1];
  if (!v49)
  {
    v54 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      path15 = [lCopy path];
      *buf = 136315394;
      v91 = "[IXFileManager realPathForURL:ifChildOfURL:]";
      v92 = 2112;
      v93 = path15;
      _os_log_impl(&dword_1DA47A000, v54, OS_LOG_TYPE_DEFAULT, "%s: Failed to retrieve realpath for suspicious path %@", buf, 0x16u);
    }

    goto LABEL_25;
  }

  v38 = v49;
  if (v34 < 0)
  {
    pathComponents2 = [v49 pathComponents];
    pathComponents3 = [v37 pathComponents];
    v58 = [pathComponents3 count];
    v88 = pathComponents2;
    v59 = [pathComponents2 count];
    if (v59 < 2 || v58 <= 1)
    {
      v65 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        [lCopy path];
        v70 = loga = v65;
        path16 = [rLCopy path];
        path17 = [v38 path];
        path18 = [v37 path];
        *buf = 136316162;
        v91 = "[IXFileManager realPathForURL:ifChildOfURL:]";
        v92 = 2112;
        v93 = v70;
        v94 = 2112;
        v95 = path16;
        v96 = 2112;
        v97 = path17;
        v98 = 2112;
        v99 = path18;
        _os_log_impl(&dword_1DA47A000, loga, OS_LOG_TYPE_DEFAULT, "%s: Rejecting %@ with base %@ because real component counts don't make sense (reals %@ ; %@)", buf, 0x34u);

        v65 = loga;
      }
    }

    else
    {
      v60 = v59;
      v61 = 1;
      v62 = [pathComponents3 objectAtIndexedSubscript:1];
      if ([v62 isEqualToString:@"private"])
      {
        v61 = 2;
      }

      [v88 objectAtIndexedSubscript:1];
      v63 = v82 = v58;
      if ([v63 isEqualToString:@"private"])
      {
        v64 = 2;
      }

      else
      {
        v64 = 1;
      }

      if (v82 - v61 <= v60 - v64)
      {
        if (v82 <= v61)
        {
LABEL_67:

          goto LABEL_38;
        }

        while (1)
        {
          v74 = [pathComponents3 objectAtIndexedSubscript:v61];
          v75 = [v88 objectAtIndexedSubscript:v64];
          logb = [v74 isEqualToString:v75];

          if ((logb & 1) == 0)
          {
            break;
          }

          ++v61;
          ++v64;
          if (v82 == v61)
          {
            goto LABEL_67;
          }
        }

        v65 = IXGetLoggingHandle(kIXLoggingSubsystem);
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
        {
          logc = [lCopy path];
          path19 = [rLCopy path];
          path20 = [v38 path];
          path21 = [v37 path];
          v76 = [pathComponents3 objectAtIndexedSubscript:v61];
          v77 = [v88 objectAtIndexedSubscript:v64];
          *buf = 136316674;
          v91 = "[IXFileManager realPathForURL:ifChildOfURL:]";
          v92 = 2112;
          v93 = logc;
          v94 = 2112;
          v95 = path19;
          v96 = 2112;
          v97 = path20;
          v98 = 2112;
          v99 = path21;
          v100 = 2112;
          v101 = v76;
          v102 = 2112;
          v103 = v77;
          v78 = v77;
          _os_log_impl(&dword_1DA47A000, v65, OS_LOG_TYPE_DEFAULT, "%s: Rejecting %@ with base %@ (reals %@ ; %@) because components diverge at %@ != %@", buf, 0x48u);
        }
      }

      else
      {
        v65 = IXGetLoggingHandle(kIXLoggingSubsystem);
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
        {
          log = [lCopy path];
          path22 = [rLCopy path];
          path23 = [v38 path];
          path24 = [v37 path];
          *buf = 136316162;
          v91 = "[IXFileManager realPathForURL:ifChildOfURL:]";
          v92 = 2112;
          v93 = log;
          v94 = 2112;
          v95 = path22;
          v96 = 2112;
          v97 = path23;
          v98 = 2112;
          v99 = path24;
          v69 = path24;
          _os_log_impl(&dword_1DA47A000, v65, OS_LOG_TYPE_DEFAULT, "%s: Rejecting %@ with base %@ because base component count is greater than child component count (reals %@ ; %@)", buf, 0x34u);
        }
      }
    }

    goto LABEL_26;
  }

LABEL_38:
  v38 = v38;
  v39 = v38;
LABEL_27:
  v40 = v39;

  return v40;
}

- (unint64_t)_diskUsageForDirectoryURL:(id)l
{
  v67 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v4 = [MEMORY[0x1E695DFA8] setWithCapacity:0];
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
  v56 = 0;
  v58 = 0;
  v55 = 0xA200000900000005;
  v57 = 0x500000002;
  v6 = malloc_type_malloc(0x8000uLL, 0x223271D7uLL);
  v47 = lCopy;
  path = [lCopy path];
  v46 = path;
  if (path)
  {
    [v5 addObject:path];
  }

  else
  {
    v8 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v60 = "[IXFileManager _diskUsageForDirectoryURL:]";
      v61 = 2112;
      v62 = v47;
      _os_log_impl(&dword_1DA47A000, v8, OS_LOG_TYPE_DEFAULT, "%s: Failed to get path to url %@", buf, 0x16u);
    }
  }

  if ([v5 count])
  {
    v53 = 0;
    v52 = v4;
    v50 = v5;
    v48 = v6;
    while (1)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = [v5 objectAtIndex:0];
      [v5 removeObjectAtIndex:0];
      v54 = v10;
      v51 = open([v10 fileSystemRepresentation], 1048832);
      if (v51 < 0)
      {
        v39 = IXGetLoggingHandle(kIXLoggingSubsystem);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v40 = __error();
          v41 = strerror(*v40);
          *buf = 136315650;
          v60 = "[IXFileManager _diskUsageForDirectoryURL:]";
          v61 = 2112;
          v62 = v54;
          v63 = 2080;
          v64 = v41;
          _os_log_impl(&dword_1DA47A000, v39, OS_LOG_TYPE_DEFAULT, "%s: Failed to open directory %@ : %s", buf, 0x20u);
        }
      }

      else
      {
        v49 = v9;
        v11 = 0;
LABEL_10:
        v6 = v48;
        while (1)
        {
          v12 = getattrlistbulk(v51, &v55, v48, 0x8000uLL, 0);
          if (v12 == -1)
          {
            break;
          }

          v13 = v12;
          if (!v12)
          {
            goto LABEL_60;
          }

          if (v12 >= 1)
          {
            while (1)
            {
              v15 = *v6;
              v14 = v6[1];
              v16 = v6[4];
              if ((v14 & 0x20000000) != 0)
              {
                if (v6[6])
                {
                  v29 = IXGetLoggingHandle(kIXLoggingSubsystem);
                  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                  {
                    v30 = __error();
                    v31 = strerror(*v30);
                    *buf = 136315906;
                    v60 = "[IXFileManager _diskUsageForDirectoryURL:]";
                    v61 = 2080;
                    v62 = v31;
                    v63 = 2048;
                    v64 = v11;
                    v65 = 2112;
                    v66 = v54;
                    v32 = v29;
                    v33 = "%s: Got error %s while processing entry %llu in %@";
                    v34 = 42;
                    goto LABEL_42;
                  }

LABEL_51:

                  goto LABEL_52;
                }

                v17 = v6 + 7;
                if ((v14 & 1) == 0)
                {
LABEL_16:
                  v18 = 0;
                  v19 = 0xFFFFFFFFLL;
                  if ((v14 & 8) != 0)
                  {
                    goto LABEL_17;
                  }

                  goto LABEL_30;
                }
              }

              else
              {
                v17 = v6 + 6;
                if ((v14 & 1) == 0)
                {
                  goto LABEL_16;
                }
              }

              v35 = v17[1];
              v18 = v17 + *v17;
              v17 += 2;
              v19 = (v35 - 1);
              if ((v14 & 8) != 0)
              {
LABEL_17:
                v20 = *v17++;
                v21 = v20 == 2;
                if ((v14 & 0x2000000) != 0)
                {
                  goto LABEL_18;
                }

                goto LABEL_31;
              }

LABEL_30:
              v21 = 0;
              if ((v14 & 0x2000000) != 0)
              {
LABEL_18:
                v23 = *v17;
                v17 += 2;
                v22 = v23;
                if (v21)
                {
                  goto LABEL_32;
                }

                goto LABEL_19;
              }

LABEL_31:
              v22 = 0;
              if (v21)
              {
LABEL_32:
                if ((v6[3] & 2) != 0 && !*v17)
                {
                  v29 = IXGetLoggingHandle(kIXLoggingSubsystem);
                  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 136315650;
                    v60 = "[IXFileManager _diskUsageForDirectoryURL:]";
                    v61 = 2112;
                    v62 = v54;
                    v63 = 2080;
                    v64 = v18;
                    _os_log_debug_impl(&dword_1DA47A000, v29, OS_LOG_TYPE_DEBUG, "%s: skipping empty directory at %@/%s", buf, 0x20u);
                  }

                  goto LABEL_51;
                }

                if (!v18)
                {
                  v29 = IXGetLoggingHandle(kIXLoggingSubsystem);
                  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315650;
                    v60 = "[IXFileManager _diskUsageForDirectoryURL:]";
                    v61 = 2048;
                    v62 = v11;
                    v63 = 2112;
                    v64 = v54;
                    v32 = v29;
                    v33 = "%s: Failed to get name for directory item %llu in %@; not counting its children";
                    v34 = 32;
LABEL_42:
                    _os_log_impl(&dword_1DA47A000, v32, OS_LOG_TYPE_DEFAULT, v33, buf, v34);
                  }

                  goto LABEL_51;
                }

                v26 = objc_autoreleasePoolPush();
                v36 = [MEMORY[0x1E696AEC0] stringWithFileSystemRepresentation:v18 length:v19];
                v27 = [v54 stringByAppendingPathComponent:v36];

                if (v27)
                {
                  v37 = v50;
                  goto LABEL_44;
                }

                v28 = IXGetLoggingHandle(kIXLoggingSubsystem);
                if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315650;
                  v60 = "[IXFileManager _diskUsageForDirectoryURL:]";
                  v61 = 2080;
                  v62 = v18;
                  v63 = 2112;
                  v64 = v54;
                  _os_log_impl(&dword_1DA47A000, v28, OS_LOG_TYPE_DEFAULT, "%s: Failed to create path to child directory by appending %s to %@", buf, 0x20u);
                }

LABEL_47:

LABEL_48:
                objc_autoreleasePoolPop(v26);
                goto LABEL_52;
              }

LABEL_19:
              if (v16)
              {
                v38 = *v17++;
                v24 = v38 == 1;
                if ((v16 & 4) != 0)
                {
LABEL_21:
                  v25 = *v17;
                  if (!v24)
                  {
                    goto LABEL_22;
                  }

                  goto LABEL_39;
                }
              }

              else
              {
                v24 = 0;
                if ((v16 & 4) != 0)
                {
                  goto LABEL_21;
                }
              }

              v25 = 0;
              if (!v24)
              {
LABEL_22:
                v26 = objc_autoreleasePoolPush();
                v27 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v22];
                if ([v52 containsObject:v27])
                {
                  v28 = IXGetLoggingHandle(kIXLoggingSubsystem);
                  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 136315650;
                    v60 = "[IXFileManager _diskUsageForDirectoryURL:]";
                    v61 = 2112;
                    v62 = v54;
                    v63 = 2080;
                    v64 = v18;
                    _os_log_debug_impl(&dword_1DA47A000, v28, OS_LOG_TYPE_DEBUG, "%s: Skipping hardlinked file at %@/%s", buf, 0x20u);
                  }

                  goto LABEL_47;
                }

                v53 += v25;
                v37 = v52;
LABEL_44:
                [v37 addObject:v27];
                goto LABEL_48;
              }

LABEL_39:
              v53 += v25;
LABEL_52:
              v6 = (v6 + v15);
              ++v11;
              if (!--v13)
              {
                goto LABEL_10;
              }
            }
          }
        }

        v42 = IXGetLoggingHandle(kIXLoggingSubsystem);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          v43 = __error();
          v44 = strerror(*v43);
          *buf = 136315906;
          v60 = "[IXFileManager _diskUsageForDirectoryURL:]";
          v61 = 2048;
          v62 = v11;
          v63 = 2112;
          v64 = v54;
          v65 = 2080;
          v66 = v44;
          _os_log_impl(&dword_1DA47A000, v42, OS_LOG_TYPE_DEFAULT, "%s: getattrlistbulk on entry %llu in %@ returned error %s", buf, 0x2Au);
        }

LABEL_60:
        close(v51);
        v4 = v52;
        v5 = v50;
        v9 = v49;
      }

      objc_autoreleasePoolPop(v9);
      if (![v5 count])
      {
        goto LABEL_64;
      }
    }
  }

  v53 = 0;
LABEL_64:
  free(v6);

  return v53;
}

- (unint64_t)diskUsageForURL:(id)l
{
  v18 = *MEMORY[0x1E69E9840];
  lCopy = l;
  memset(&v11, 0, sizeof(v11));
  if (lstat([lCopy fileSystemRepresentation], &v11))
  {
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      fileSystemRepresentation = [lCopy fileSystemRepresentation];
      v7 = __error();
      v8 = strerror(*v7);
      *buf = 136315650;
      v13 = "[IXFileManager diskUsageForURL:]";
      v14 = 2080;
      v15 = fileSystemRepresentation;
      v16 = 2080;
      v17 = v8;
      _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: Failed to stat %s : %s", buf, 0x20u);
    }

    v9 = 0;
  }

  else if ((v11.st_mode & 0xF000) == 0x4000)
  {
    v9 = [(IXFileManager *)self _diskUsageForDirectoryURL:lCopy];
  }

  else
  {
    v9 = v11.st_blocks << 9;
  }

  return v9;
}

- (id)issueSandboxExtensionForURL:(id)l withExtensionClass:(const char *)class error:(id *)error
{
  lCopy = l;
  [lCopy fileSystemRepresentation];
  v7 = sandbox_extension_issue_file();
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v7 length:strlen(v7) encoding:4 freeWhenDone:1];
    v9 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v10 = *__error();
    v11 = *MEMORY[0x1E696A798];
    path = [lCopy path];
    strerror(v10);
    v9 = _CreateError("[IXFileManager issueSandboxExtensionForURL:withExtensionClass:error:]", 1071, v11, v10, 0, 0, @"sandbox_extension_issue_file for path %@ failed: %s", v13, path);

    v8 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  if (!v8)
  {
    v14 = v9;
    *error = v9;
  }

LABEL_7:

  return v8;
}

- (int64_t)consumeSandboxExtension:(id)extension error:(id *)error
{
  uTF8String = [extension UTF8String];
  v6 = sandbox_extension_consume();
  if (v6 < 0)
  {
    v9 = *__error();
    v10 = *MEMORY[0x1E696A798];
    v11 = v9;
    strerror(v9);
    v8 = _CreateError("[IXFileManager consumeSandboxExtension:error:]", 1094, v10, v11, 0, 0, @"sandbox_extension_consume for %s failed: %s.", v12, uTF8String);
    if (error)
    {
      v8 = v8;
      *error = v8;
    }

    v7 = -1;
  }

  else
  {
    v7 = v6;
    v8 = 0;
  }

  return v7;
}

- (BOOL)releaseSandboxExtensionToken:(int64_t)token error:(id *)error
{
  v6 = sandbox_extension_release();
  if (v6)
  {
    v7 = *__error();
    v8 = *MEMORY[0x1E696A798];
    v9 = v7;
    strerror(v7);
    v11 = _CreateError("[IXFileManager releaseSandboxExtensionToken:error:]", 1115, v8, v9, 0, 0, @"sandbox_extension_release for %lld failed: %s.", v10, token);
    if (error)
    {
      v11 = v11;
      *error = v11;
    }
  }

  else
  {
    v11 = 0;
  }

  return v6 == 0;
}

- (void)_moveItemAtURL:(NSObject *)a3 toURL:failIfSrcMissing:error:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = [a1 path];
  v6 = 136315650;
  v7 = "[IXFileManager _moveItemAtURL:toURL:failIfSrcMissing:error:]";
  v8 = 2112;
  v9 = v5;
  v10 = 2112;
  v11 = a2;
  _os_log_error_impl(&dword_1DA47A000, a3, OS_LOG_TYPE_ERROR, "%s: Failed to remove move source after copy at %@ : %@", &v6, 0x20u);
}

- (void)_removeACLAtPath:isDir:error:.cold.1()
{
  OUTLINED_FUNCTION_3();
  __error();
  v1 = __error();
  v18 = strerror(*v1);
  OUTLINED_FUNCTION_1();
  v10 = _CreateError(v2, v3, v4, v5, v6, v7, v8, v9, v0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_1DA47A000, v11, v12, "%s: Failed to remove ACL : %@", v13, v14, v15, v16, v17, v18);
}

- (void)_removeACLAtPath:isDir:error:.cold.2()
{
  OUTLINED_FUNCTION_3();
  __error();
  v1 = __error();
  v18 = strerror(*v1);
  OUTLINED_FUNCTION_1();
  v10 = _CreateError(v2, v3, v4, v5, v6, v7, v8, v9, v0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_1DA47A000, v11, v12, "%s: Failed to remove ACL : %@", v13, v14, v15, v16, v17, v18);
}

- (void)_removeACLAtPath:isDir:error:.cold.3()
{
  OUTLINED_FUNCTION_3();
  __error();
  v1 = __error();
  v18 = strerror(*v1);
  OUTLINED_FUNCTION_1();
  v10 = _CreateError(v2, v3, v4, v5, v6, v7, v8, v9, v0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_1DA47A000, v11, v12, "%s: Failed to remove ACL : %@", v13, v14, v15, v16, v17, v18);
}

- (void)_removeACLAtPath:isDir:error:.cold.4()
{
  OUTLINED_FUNCTION_3();
  __error();
  v1 = __error();
  v18 = strerror(*v1);
  OUTLINED_FUNCTION_1();
  v10 = _CreateError(v2, v3, v4, v5, v6, v7, v8, v9, v0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_1DA47A000, v11, v12, "%s: Failed to remove ACL : %@", v13, v14, v15, v16, v17, v18);
}

- (void)_removeACLAtPath:isDir:error:.cold.5()
{
  OUTLINED_FUNCTION_3();
  __error();
  v1 = __error();
  v18 = strerror(*v1);
  OUTLINED_FUNCTION_1();
  v10 = _CreateError(v2, v3, v4, v5, v6, v7, v8, v9, v0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_1DA47A000, v11, v12, "%s: Failed to remove ACL : %@", v13, v14, v15, v16, v17, v18);
}

- (void)_removeACLAtPath:(void *)a1 isDir:error:.cold.6(void *a1)
{
  v2 = *__error();
  v3 = __error();
  v4 = strerror(*v3);
  v14 = _CreateError("[IXFileManager _removeACLAtPath:isDir:error:]", 235, a1, v2, 0, 0, @"acl_init() failed: %s", v5, v4);
  OUTLINED_FUNCTION_2(&dword_1DA47A000, v6, v7, "%s: Failed to remove ACL : %@", v8, v9, v10, v11, v12, v13);
}

void __74__IXFileManager_copyACLFrom_toAllChildrenOfPath_ignoringCopyErrors_error___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 136315394;
  v3 = "[IXFileManager copyACLFrom:toAllChildrenOfPath:ignoringCopyErrors:error:]_block_invoke";
  v4 = 2080;
  v5 = a1;
  _os_log_debug_impl(&dword_1DA47A000, a2, OS_LOG_TYPE_DEBUG, "%s: Writing ACL to %s", &v2, 0x16u);
}

@end