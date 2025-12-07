@interface FPFSChecker
- (BOOL)isDataProtectedFileAtPath:(id)path handle:(fpfs_item_handle *)handle;
- (void)enumerateItemsOnDiskAtURL:(id)l detachedRoots:(id)roots usingFPFS:(BOOL)s ioContext:(id *)context delegate:(id)delegate;
@end

@implementation FPFSChecker

- (BOOL)isDataProtectedFileAtPath:(id)path handle:(fpfs_item_handle *)handle
{
  v9 = 0;
  v8 = xmmword_1CF9F4C90;
  memset(v7, 0, 40);
  if (getattrlist([path fileSystemRepresentation], &v8, v7, 0x28uLL, 0x21u) < 0)
  {
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [FPFSChecker isDataProtectedFileAtPath:v6 handle:?];
    }
  }

  else if (DWORD2(v7[0]) == 1 && (DWORD1(v7[2]) - 3) >= 0xFFFFFFFE)
  {
    handle->var5 = DWORD1(v7[0]);
    *&handle->var0 = *(&v7[1] + 4);
    *&handle->var2 = vrev64_s32(*(v7 + 12));
    handle->var4 = 0;
    return 1;
  }

  return 0;
}

- (void)enumerateItemsOnDiskAtURL:(id)l detachedRoots:(id)roots usingFPFS:(BOOL)s ioContext:(id *)context delegate:(id)delegate
{
  contextCopy = context;
  sCopy = s;
  selfCopy = self;
  v81 = *MEMORY[0x1E69E9840];
  lCopy = l;
  rootsCopy = roots;
  delegateCopy = delegate;
  v11 = [rootsCopy count];
  v40[1] = v40;
  v12 = (v40 - ((8 * v11 + 31) & 0xFFFFFFFFFFFFFFF0));
  bzero(v12, 8 * v11 + 16);
  v13 = lCopy;
  v44 = lCopy;
  fileSystemRepresentation = [v13 fileSystemRepresentation];
  *&v41 = v12;
  *v12 = fileSystemRepresentation;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v15 = rootsCopy;
  v16 = [v15 countByEnumeratingWithState:&v68 objects:v80 count:16];
  if (v16)
  {
    v17 = 0;
    v18 = *v69;
    v19 = v41 + 8;
    do
    {
      v20 = 0;
      v21 = v17 << 32;
      v17 = v17;
      do
      {
        if (*v69 != v18)
        {
          objc_enumerationMutation(v15);
        }

        physicalLocation = [*(*(&v68 + 1) + 8 * v20) physicalLocation];
        v23 = physicalLocation;
        *(v19 + 8 * v17) = [physicalLocation fileSystemRepresentation];

        ++v17;
        ++v20;
        v21 += 0x100000000;
      }

      while (v16 != v20);
      v16 = [v15 countByEnumeratingWithState:&v68 objects:v80 count:16];
    }

    while (v16);
    v24 = v21 >> 32;
  }

  else
  {
    v24 = 0;
  }

  v25 = v41;
  *(v41 + 8 * v24 + 8) = 0;
  v26 = selfCopy;
  *&selfCopy->_itemIsInsideAPackage = 0;
  v26->_itemIsInsideAnIgnoredFolder = 0;
  v66[0] = 0;
  v66[1] = v66;
  v66[2] = 0x3032000000;
  v66[3] = __Block_byref_object_copy__20;
  v66[4] = __Block_byref_object_dispose__20;
  v67 = 0;
  v64[0] = 0;
  v64[1] = v64;
  v64[2] = 0x3032000000;
  v64[3] = __Block_byref_object_copy__20;
  v64[4] = __Block_byref_object_dispose__20;
  v65 = 0;
  v62[0] = 0;
  v62[1] = v62;
  v62[2] = 0x3032000000;
  v62[3] = __Block_byref_object_copy__20;
  v62[4] = __Block_byref_object_dispose__20;
  v63 = 0;
  v27 = fts_open(v25, 16, 0);
  if (v27)
  {
    v28 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:10];
    *&v29 = 138543874;
    v41 = v29;
    while (1)
    {
      v30 = fts_read(v27);
      if (!v30)
      {
LABEL_28:
        fts_close(v27);
        goto LABEL_31;
      }

      v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v30->fts_path];
      v79 = 0;
      memset(v78, 0, sizeof(v78));
      v32 = objc_autoreleasePoolPush();
      if (v30->fts_info == 8 && errorInjectionPointEnabled(0, 4))
      {
        *__error() = 1;
      }

      else
      {
        v47 = MEMORY[0x1E69E9820];
        v48 = 3221225472;
        v49 = __84__FPFSChecker_enumerateItemsOnDiskAtURL_detachedRoots_usingFPFS_ioContext_delegate___block_invoke;
        v50 = &unk_1E83C18F8;
        v59 = v30;
        v60 = contextCopy;
        v51 = selfCopy;
        v56 = v64;
        v61 = sCopy;
        v52 = v15;
        v53 = v44;
        v54 = delegateCopy;
        v55 = v28;
        v57 = v66;
        v58 = v62;
        v33 = fpfs_open();

        if (!v33)
        {
          goto LABEL_26;
        }
      }

      if (*__error() != 4)
      {
        if (*__error() != 1 || ![(FPFSChecker *)selfCopy isDataProtectedFileAtPath:v31 handle:v78])
        {
          v35 = fp_current_or_default_log();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            fp_obfuscatedPath = [v31 fp_obfuscatedPath];
            fts_ino = v30->fts_ino;
            v38 = *__error();
            v72 = v41;
            v73 = fp_obfuscatedPath;
            v74 = 2048;
            v75 = fts_ino;
            v76 = 1024;
            v77 = v38;
            _os_log_impl(&dword_1CEFC7000, v35, OS_LOG_TYPE_DEFAULT, "[WARNING] FPCK checking %{public}@ (fileID=%llu) failed with %{errno}d", &v72, 0x1Cu);
          }

LABEL_26:
          v34 = 1;
          goto LABEL_27;
        }

        if ([delegateCopy checker:selfCopy handleLockedItemAtPath:v31 handle:v78])
        {
          goto LABEL_26;
        }
      }

      v34 = 0;
LABEL_27:
      objc_autoreleasePoolPop(v32);

      if ((v34 & 1) == 0)
      {
        goto LABEL_28;
      }
    }
  }

  v28 = fp_current_or_default_log();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    v39 = __error();
    [FPFSChecker enumerateItemsOnDiskAtURL:v39 detachedRoots:v78 usingFPFS:v28 ioContext:? delegate:?];
  }

LABEL_31:

  _Block_object_dispose(v62, 8);
  _Block_object_dispose(v64, 8);

  _Block_object_dispose(v66, 8);
}

uint64_t __84__FPFSChecker_enumerateItemsOnDiskAtURL_detachedRoots_usingFPFS_ioContext_delegate___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 96) + 88);
  if (v3 == 6)
  {
    [*(a1 + 64) removeLastObject];
    v4 = *(a1 + 32);
    if (v4[8] == 1)
    {
      v5 = *(*(*(a1 + 80) + 8) + 40);
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(*(a1 + 96) + 48)];
      LODWORD(v5) = [v5 isEqualToString:v6];

      v4 = *(a1 + 32);
      if (v5)
      {
        v4[8] = 0;
        v4 = *(a1 + 32);
      }
    }

    if (v4[9] == 1)
    {
      v7 = *(*(*(a1 + 72) + 8) + 40);
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(*(a1 + 96) + 48)];
      LODWORD(v7) = [v7 isEqualToString:v8];

      v4 = *(a1 + 32);
      if (v7)
      {
        v4[9] = 0;
        v4 = *(a1 + 32);
      }
    }

    if (v4[10] == 1)
    {
      v9 = *(*(*(a1 + 88) + 8) + 40);
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(*(a1 + 96) + 48)];
      LODWORD(v9) = [v9 isEqualToString:v10];

      if (v9)
      {
        *(*(a1 + 32) + 10) = 0;
      }
    }
  }

  else
  {
    v40[0] = 0;
    v40[1] = v40;
    v40[2] = 0x2020000000;
    v40[3] = 0;
    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v39 = 0;
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = 0;
    v30[0] = 0;
    v30[1] = v30;
    v30[2] = 0x2020000000;
    v31 = 0;
    v26 = *(a1 + 32);
    v11 = *(&v26 + 1);
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    *&v14 = v12;
    *(&v14 + 1) = v13;
    v27 = *(&v26 + 1);
    v28 = v14;
    v29 = *(a1 + 64);
    v15 = fpfs_fgetfileattrs();
    if ((v15 & 0x80000000) == 0)
    {
      if (*(v37 + 24) == 1)
      {
        v16 = *(a1 + 32);
        if ((*(v16 + 8) & 1) == 0)
        {
          *(v16 + 8) = 1;
          v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(*(a1 + 96) + 48)];
          v18 = *(*(a1 + 80) + 8);
          v19 = *(v18 + 40);
          *(v18 + 40) = v17;
        }
      }

      if (v3 == 1)
      {
        if (*(v33 + 24) == 1)
        {
          *(*(a1 + 32) + 10) = 1;
          v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(*(a1 + 96) + 48)];
          v21 = *(*(a1 + 88) + 8);
          v22 = *(v21 + 40);
          *(v21 + 40) = v20;
        }

        v23 = *(a1 + 64);
        v24 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{*(*(a1 + 96) + 72), v26}];
        [v23 addObject:v24];
      }
    }

    _Block_object_dispose(v30, 8);
    _Block_object_dispose(&v32, 8);
    _Block_object_dispose(&v36, 8);
    _Block_object_dispose(v40, 8);
    if (v15 < 0)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return 0;
}

uint64_t __84__FPFSChecker_enumerateItemsOnDiskAtURL_detachedRoots_usingFPFS_ioContext_delegate___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v46 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 72) + 8) + 24) = (*(a2 + 44) & 0x200) != 0;
  if (*(a1 + 132) == 1 && (*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
  {
    v4 = *(a2 + 45) & 1;
  }

  else
  {
    v4 = 0;
  }

  *(*(*(a1 + 80) + 8) + 24) = v4;
  *(*(*(a1 + 88) + 8) + 24) = *(a2 + 40) == 3;
  if (*(a1 + 132) == 1)
  {
    v5 = *(a1 + 32);
    if ((*(v5 + 9) & 1) == 0 && (*(a2 + 44) & 0x80) != 0)
    {
      *(v5 + 9) = 1;
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(*(a1 + 112) + 48)];
      v7 = *(*(a1 + 96) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;
    }
  }

  v44 = 0u;
  *&v43[1] = 0u;
  v38[0] = *(a1 + 133);
  v9 = *(a1 + 32);
  v38[1] = *(v9 + 8);
  v39 = *(v9 + 9);
  v10 = *(a1 + 80);
  v40 = *(*(*(a1 + 72) + 8) + 24);
  v41 = *(*(*(a1 + 88) + 8) + 24);
  v42 = *(*(v10 + 8) + 24);
  *v43 = 0;
  v43[2] = 0;
  *&v43[9] = a2;
  v11 = *(a1 + 112);
  DWORD2(v44) = *(*(a1 + 120) + 8);
  v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v11 + 104];
  v13 = *(a1 + 112);
  v14 = *(v13 + 96);
  if (v14)
  {
    v15 = (*(v14 + 116) & 0x40) == 0;
  }

  else
  {
    v15 = 1;
  }

  v43[3] = *(a2 + 260) != 0 && v15;
  *&v44 = v14;
  if ((*(a2 + 40) & 0xFFFFFFFE) == 2 && (*(a2 + 45) & 0x40) != 0)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v16 = *(a1 + 40);
    v17 = [v16 countByEnumeratingWithState:&v34 objects:v45 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v35;
LABEL_16:
      v20 = 0;
      while (1)
      {
        if (*v35 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v34 + 1) + 8 * v20);
        if ([v21 inode] == *(v14 + 8))
        {
          break;
        }

        if (v18 == ++v20)
        {
          v18 = [v16 countByEnumeratingWithState:&v34 objects:v45 count:16];
          if (v18)
          {
            goto LABEL_16;
          }

          goto LABEL_22;
        }
      }

      v22 = v21;
      v43[0] = 1;

      if (v22)
      {
        goto LABEL_30;
      }
    }

    else
    {
LABEL_22:
    }

    v23 = MEMORY[0x1E695DFF8];
    v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(*(a1 + 112) + 48)];
    v25 = [v23 fileURLWithPath:v24 isDirectory:1];

    v26 = [_TtC18FileProviderDaemon16FPCKDetachedRoot alloc];
    v27 = *(a1 + 48);
    v33 = 0;
    v22 = [(FPCKDetachedRoot *)v26 initWithPhysicalLocation:v25 rootURL:v27 error:&v33];
    v28 = v33;
    if (v22)
    {
      v43[2] = [(FPCKDetachedRoot *)v22 shouldRefreshBookmark];
      v29 = [(FPCKDetachedRoot *)v22 logicalLocation];
      v43[1] = v29 == 0;
    }

    else
    {
      v30 = fp_current_or_default_log();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        __84__FPFSChecker_enumerateItemsOnDiskAtURL_detachedRoots_usingFPFS_ioContext_delegate___block_invoke_2_cold_1(v25, v28, v30);
      }

      v43[1] = 1;
    }

LABEL_30:
    v13 = *(a1 + 112);
  }

  if ((checkInvariants(v13, *(a1 + 128), *(*(a1 + 104) + 8) + 24, v38) & 0x80000000) != 0)
  {
    goto LABEL_35;
  }

  if (([*(a1 + 56) checker:*(a1 + 32) handleItem:*(a1 + 128) itemStatus:v38 under:*(a1 + 64) brokenInvariants:*(*(*(a1 + 104) + 8) + 24)] & 1) == 0)
  {
    *__error() = 4;
LABEL_35:
    v31 = 0xFFFFFFFFLL;
    goto LABEL_36;
  }

  v31 = 0;
LABEL_36:

  return v31;
}

- (void)isDataProtectedFileAtPath:(NSObject *)a1 handle:.cold.1(NSObject *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = __error();
  v3 = strerror(*v2);
  v4 = 136315138;
  v5 = v3;
  _os_log_error_impl(&dword_1CEFC7000, a1, OS_LOG_TYPE_ERROR, "[ERROR] Unable to getattrlist: %s", &v4, 0xCu);
}

- (void)enumerateItemsOnDiskAtURL:(os_log_t)log detachedRoots:usingFPFS:ioContext:delegate:.cold.1(int *a1, uint8_t *buf, os_log_t log)
{
  v3 = *a1;
  *buf = 67109120;
  *(buf + 1) = v3;
  _os_log_error_impl(&dword_1CEFC7000, log, OS_LOG_TYPE_ERROR, "[ERROR] Couldn't open stream: %{errno}d", buf, 8u);
}

void __84__FPFSChecker_enumerateItemsOnDiskAtURL_detachedRoots_usingFPFS_ioContext_delegate___block_invoke_2_cold_1(void *a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a1 fp_shortDescription];
  v6 = [a2 fp_prettyDescription];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&dword_1CEFC7000, a3, OS_LOG_TYPE_ERROR, "[ERROR] cannot build descriptor for detached item %@: %@", &v7, 0x16u);
}

@end