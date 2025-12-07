@interface FPDVolumeManager
- (BOOL)loadEnterpriseVolumeWithError:(id *)error;
- (BOOL)loadHomeVolume;
- (BOOL)loadVolumeWithURL:(id)l role:(unsigned int)role error:(id *)error;
- (FPDServer)server;
- (FPDVolumeManager)initWithServer:(id)server;
- (id)createVolumeWithStatFS:(const statfs *)s role:(unsigned int)role;
- (id)defaultVolumeForCurrentPersona;
- (id)getGenstoreVersionsRootURL:(id)l volumeIgnoringOwnership:(BOOL)ownership;
- (id)libraryForVolume:(id)volume createIfNeeded:(BOOL)needed error:(id *)error;
- (id)loadSingleVolume:(const statfs *)volume role:(unsigned int)role;
- (statfs)getAllEligibleVolumesWithError:(id *)error count:(int *)count;
- (void)defaultVolumeForCurrentPersona;
- (void)enumerateLibrariesForPersona:(id)persona withBlock:(id)block;
- (void)enumerateLibrariesWithBlock:(id)block;
- (void)invalidateDevice:(int)device reason:(id)reason;
- (void)invalidateVolume:(id)volume reason:(id)reason;
- (void)loadAdditionalVolumesWithCompletion:(id)completion;
- (void)loadHomeVolume;
- (void)registerVersionsFileCoordinatorForVolume:(id)volume volumeIgnoringOwnership:(BOOL)ownership;
- (void)unregisterVersionsFileCoordinatorForVolume:(id)volume;
@end

@implementation FPDVolumeManager

- (FPDVolumeManager)initWithServer:(id)server
{
  serverCopy = server;
  v16.receiver = self;
  v16.super_class = FPDVolumeManager;
  v5 = [(FPDVolumeManager *)&v16 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_server, serverCopy);
    v7 = objc_opt_new();
    volumes = v6->_volumes;
    v6->_volumes = v7;

    v9 = objc_opt_new();
    versionsProvidersByVolumeID = v6->_versionsProvidersByVolumeID;
    v6->_versionsProvidersByVolumeID = v9;

    delegate = v6->_delegate;
    v6->_delegate = 0;

    v12 = os_log_create("com.apple.FileProvider", "volumes");
    log = v6->_log;
    v6->_log = v12;

    v15 = fpfs_adopt_log();
    __fp_pop_log();
  }

  return v6;
}

- (statfs)getAllEligibleVolumesWithError:(id *)error count:(int *)count
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = getfsstat(0, 0, 2);
  if ((v6 & 0x80000000) == 0)
  {
    v7 = v6;
    __fp_create_section();
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [FPDVolumeManager getAllEligibleVolumesWithError:count:];
    }

    v9 = 2168 * v7;
    v10 = malloc_type_malloc((2168 * v7), 0xD363677AuLL);
    v11 = v10;
    if (v10)
    {
      v12 = getfsstat(v10, v9, 2);
      if ((v12 & 0x80000000) == 0)
      {
        *count = v12;
LABEL_21:
        __fp_leave_section_Error();
        return v11;
      }

      v15 = fp_current_or_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = __error();
        v17 = strerror(*v16);
        [(FPDVolumeManager *)v17 getAllEligibleVolumesWithError:v19 count:v15];
      }

      if (error)
      {
        *error = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:*__error()];
      }

      free(v11);
    }

    else
    {
      v14 = fp_current_or_default_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [FPDVolumeManager getAllEligibleVolumesWithError:v14 count:?];
      }

      if (error)
      {
        [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:12];
        *error = v11 = 0;
        goto LABEL_21;
      }
    }

    v11 = 0;
    goto LABEL_21;
  }

  v13 = fp_current_or_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [FPDVolumeManager getAllEligibleVolumesWithError:v13 count:?];
  }

  if (!error)
  {
    return 0;
  }

  [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:*__error()];
  *error = v11 = 0;
  return v11;
}

- (id)loadSingleVolume:(const statfs *)volume role:(unsigned int)role
{
  v4 = *&role;
  v40 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __42__FPDVolumeManager_loadSingleVolume_role___block_invoke;
  v35[3] = &__block_descriptor_40_e25_B24__0_8__NSDictionary_16l;
  v35[4] = volume;
  v7 = [MEMORY[0x1E696AE18] predicateWithBlock:v35];
  v8 = [(NSMutableArray *)selfCopy->_volumes filteredArrayUsingPredicate:v7];
  if (![v8 count])
  {
    firstObject = 0;
    goto LABEL_7;
  }

  firstObject = [v8 firstObject];
  root = [firstObject root];
  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:volume->f_mntonname];
  v12 = [root isEqualToString:v11];

  if (!v12)
  {
LABEL_7:
    v14 = 1;
    goto LABEL_8;
  }

  v13 = fp_current_or_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    root2 = [firstObject root];
    fp_prettyPath = [root2 fp_prettyPath];
    *buf = 138412546;
    v37 = firstObject;
    v38 = 2112;
    f_mntfromname = fp_prettyPath;
    _os_log_debug_impl(&dword_1CEFC7000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] Volume %@ already loaded at %@", buf, 0x16u);
  }

  firstObject = firstObject;
  v14 = 0;
LABEL_8:

  objc_sync_exit(selfCopy);
  if (!v14)
  {
    v15 = firstObject;
    goto LABEL_23;
  }

  -[FPDVolumeManager invalidateDevice:reason:](selfCopy, "invalidateDevice:reason:", [firstObject dev], @"Volume description changed");
  v15 = [(FPDVolumeManager *)selfCopy createVolumeWithStatFS:volume role:v4];

  if (!v15)
  {
    v18 = fp_current_or_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [(FPDVolumeManager *)volume loadSingleVolume:v18 role:v19, v20, v21, v22, v23, v24];
    }

    v15 = 0;
    goto LABEL_22;
  }

  if ([v15 role] == 3 && !-[FPDVolumeManager shouldMountAdditionalVolume](selfCopy, "shouldMountAdditionalVolume"))
  {
    v25 = fp_current_or_default_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      [(FPDVolumeManager *)volume loadSingleVolume:v25 role:v26, v27, v28, v29, v30, v31];
    }

LABEL_22:
    firstObject = 0;
    goto LABEL_23;
  }

  v16 = fp_current_or_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v37 = v15;
    v38 = 2082;
    f_mntfromname = volume->f_mntfromname;
    _os_log_impl(&dword_1CEFC7000, v16, OS_LOG_TYPE_INFO, "[INFO] Loaded volume %{public}@ with file system %{public}s", buf, 0x16u);
  }

  v17 = selfCopy;
  objc_sync_enter(v17);
  [(NSMutableArray *)selfCopy->_volumes addObject:v15];
  objc_sync_exit(v17);

  [(FPDVolumeManager *)v17 registerVersionsFileCoordinatorForVolume:v15 volumeIgnoringOwnership:(volume->f_flags >> 21) & 1];
  v15 = v15;
  firstObject = v15;
LABEL_23:

  return firstObject;
}

BOOL __42__FPDVolumeManager_loadSingleVolume_role___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ Only FPDVolume are allowed to be evaluated."];
    v10 = fp_current_or_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      __103__FPDDomainExtensionBackend_startProvidingItemAtURL_readerID_readingOptions_request_completionHandler___block_invoke_2_259_cold_5();
    }

    __assert_rtn("-[FPDVolumeManager loadSingleVolume:role:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDVolumeManager.m", 190, [v9 UTF8String]);
  }

  v7 = [v5 dev] == *(*(a1 + 32) + 48);

  return v7;
}

- (id)createVolumeWithStatFS:(const statfs *)s role:(unsigned int)role
{
  v4 = *&role;
  if (!role)
  {
    v4 = [FPDVolume volumeRoleForStatFS:s];
  }

  if ((v4 - 1) < 2)
  {
    v7 = [FPDVolume alloc];
    sCopy2 = s;
    v9 = v4;
LABEL_7:
    v10 = [(FPDExternalVolume *)v7 initWithStatFS:sCopy2 knownRole:v9 volumeManager:self];
    goto LABEL_11;
  }

  if (v4 == 3)
  {
    v7 = [FPDExternalVolume alloc];
    sCopy2 = s;
    v9 = 3;
    goto LABEL_7;
  }

  v11 = fp_current_or_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [FPDVolumeManager createVolumeWithStatFS:role:];
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (BOOL)loadVolumeWithURL:(id)l role:(unsigned int)role error:(id *)error
{
  v6 = *&role;
  v13[271] = *MEMORY[0x1E69E9840];
  lCopy = l;
  bzero(v13, 0x878uLL);
  [lCopy fileSystemRepresentation];
  v9 = statfs_ext();
  if (v9 < 0)
  {
    v11 = fp_current_or_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [FPDVolumeManager loadVolumeWithURL:lCopy role:v11 error:?];
    }

    if (error)
    {
      *error = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:*__error()];
    }
  }

  else
  {
    v10 = [(FPDVolumeManager *)self loadSingleVolume:v13 role:v6];
  }

  return v9 >= 0;
}

- (BOOL)loadEnterpriseVolumeWithError:(id *)error
{
  v13 = fpfs_adopt_log();
  section = __fp_create_section();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [FPDVolumeManager loadEnterpriseVolumeWithError:];
  }

  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  currentPersona = [mEMORY[0x1E69DF068] currentPersona];

  if (([currentPersona isEnterprisePersona] & 1) == 0)
  {
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [FPDVolumeManager loadEnterpriseVolumeWithError:v8];
    }
  }

  fp_personaSharedDirectory = [MEMORY[0x1E695DFF8] fp_personaSharedDirectory];
  v10 = [(FPDVolumeManager *)self loadVolumeWithURL:fp_personaSharedDirectory role:2 error:error];

  __fp_leave_section_Debug();
  __fp_pop_log();

  return v10;
}

- (BOOL)loadHomeVolume
{
  v13 = *MEMORY[0x1E69E9840];
  v11 = fpfs_adopt_log();
  v10[1] = __fp_create_section();
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [FPDVolumeManager loadHomeVolume];
  }

  fp_homeDirectory = [MEMORY[0x1E695DFF8] fp_homeDirectory];
  v10[0] = 0;
  v5 = [(FPDVolumeManager *)self loadVolumeWithURL:fp_homeDirectory role:1 error:v10];
  v6 = v10[0];
  if (!v5)
  {
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      fp_prettyDescription = [v6 fp_prettyDescription];
      [(FPDVolumeManager *)fp_prettyDescription loadHomeVolume];
    }
  }

  __fp_leave_section_Debug();
  __fp_pop_log();

  return 1;
}

- (void)loadAdditionalVolumesWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = fpfs_adopt_log();
  if ((FPFeatureFlagEbihilIsEnabled() & 1) == 0)
  {
    completionCopy[2](completionCopy, 0);
  }

  __fp_pop_log();
}

- (id)libraryForVolume:(id)volume createIfNeeded:(BOOL)needed error:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  volumeCopy = volume;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__3;
  v23 = __Block_byref_object_dispose__3;
  v24 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __58__FPDVolumeManager_libraryForVolume_createIfNeeded_error___block_invoke;
  v16 = &unk_1E83BF298;
  v8 = volumeCopy;
  v17 = v8;
  v18 = &v19;
  [(FPDVolumeManager *)self enumerateLibrariesWithBlock:&v13];
  if (!v20[5])
  {
    v9 = fp_current_or_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      fp_UUID = [v8 fp_UUID];
      [FPDVolumeManager libraryForVolume:fp_UUID createIfNeeded:v25 error:v9];
    }

    if (error)
    {
      *error = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:6];
    }
  }

  v11 = v20[5];

  _Block_object_dispose(&v19, 8);

  return v11;
}

uint64_t __58__FPDVolumeManager_libraryForVolume_createIfNeeded_error___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = [v4 uuid];
  v6 = [v5 isEqual:*(a1 + 32)];

  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  return v6 ^ 1u;
}

- (void)enumerateLibrariesForPersona:(id)persona withBlock:(id)block
{
  v59 = *MEMORY[0x1E69E9840];
  personaCopy = persona;
  blockCopy = block;
  v45 = personaCopy;
  if (personaCopy)
  {
    mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
    currentPersona = [mEMORY[0x1E69DF068] currentPersona];

    *buf = 0;
    userPersonaUniqueString = [currentPersona userPersonaUniqueString];
    v10 = userPersonaUniqueString;
    if (userPersonaUniqueString == personaCopy || ([userPersonaUniqueString isEqualToString:?] & 1) != 0 || !voucher_process_can_use_arbitrary_personas())
    {
      v15 = 0;
    }

    else
    {
      v53 = 0;
      v11 = [currentPersona copyCurrentPersonaContextWithError:&v53];
      v12 = v53;
      v13 = *buf;
      *buf = v11;

      if (v12)
      {
        v14 = fp_current_or_default_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [FPDProviderDescriptor initWithExtensionRecord:];
        }
      }

      v15 = [currentPersona generateAndRestorePersonaContextWithPersonaUniqueString:personaCopy];

      if (v15)
      {
        v16 = fp_current_or_default_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [FPDVolumeManager enumerateLibrariesForPersona:withBlock:];
        }
      }
    }

    mEMORY[0x1E69DF068]2 = [MEMORY[0x1E69DF068] sharedManager];
    currentPersona2 = [mEMORY[0x1E69DF068]2 currentPersona];

    if ([currentPersona2 isEnterprisePersona])
    {
      v52 = 0;
      v19 = [(FPDVolumeManager *)self loadEnterpriseVolumeWithError:&v52];
      v20 = v52;
      if (!v19)
      {
        v21 = fp_current_or_default_log();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          fp_prettyDescription = [v20 fp_prettyDescription];
          [(FPDVolumeManager *)personaCopy enumerateLibrariesForPersona:fp_prettyDescription withBlock:v58, v21];
        }
      }

      v23 = 1;
    }

    else
    {
      v23 = 0;
    }

    _FPRestorePersona();
  }

  else
  {
    v23 = 0;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v25 = [(NSMutableArray *)selfCopy->_volumes copy];
  objc_sync_exit(selfCopy);

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v26 = v25;
  v27 = [v26 countByEnumeratingWithState:&v48 objects:v57 count:16];
  if (v27)
  {
    v29 = *v49;
    *&v28 = 138412546;
    v43 = v28;
LABEL_25:
    v30 = 0;
    while (1)
    {
      if (*v49 != v29)
      {
        objc_enumerationMutation(v26);
      }

      v31 = *(*(&v48 + 1) + 8 * v30);
      if (v23 == ([v31 role] == 2))
      {
        mEMORY[0x1E69DF068]3 = [MEMORY[0x1E69DF068] sharedManager];
        currentPersona3 = [mEMORY[0x1E69DF068]3 currentPersona];

        v47 = 0;
        userPersonaUniqueString2 = [currentPersona3 userPersonaUniqueString];
        v35 = userPersonaUniqueString2;
        if (userPersonaUniqueString2 == v45 || ([userPersonaUniqueString2 isEqualToString:?] & 1) != 0 || !voucher_process_can_use_arbitrary_personas())
        {
          v40 = 0;
        }

        else
        {
          v46 = 0;
          v36 = [currentPersona3 copyCurrentPersonaContextWithError:&v46];
          v37 = v46;
          v38 = v47;
          v47 = v36;

          if (v37)
          {
            v39 = fp_current_or_default_log();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = v37;
              _os_log_error_impl(&dword_1CEFC7000, v39, OS_LOG_TYPE_ERROR, "[ERROR] won't restore persona: %@", buf, 0xCu);
            }
          }

          v40 = [currentPersona3 generateAndRestorePersonaContextWithPersonaUniqueString:v45];

          if (v40)
          {
            v41 = fp_current_or_default_log();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              *buf = v43;
              *&buf[4] = v45;
              v55 = 2112;
              v56 = v40;
              _os_log_error_impl(&dword_1CEFC7000, v41, OS_LOG_TYPE_ERROR, "[ERROR] Can't adopt persona %@: %@", buf, 0x16u);
            }
          }
        }

        v42 = blockCopy[2](blockCopy, v31);

        _FPRestorePersona();
        if (!v42)
        {
          break;
        }
      }

      if (v27 == ++v30)
      {
        v27 = [v26 countByEnumeratingWithState:&v48 objects:v57 count:16];
        if (v27)
        {
          goto LABEL_25;
        }

        break;
      }
    }
  }
}

- (void)enumerateLibrariesWithBlock:(id)block
{
  v16 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableArray *)selfCopy->_volumes copy];
  objc_sync_exit(selfCopy);

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v8)
  {
    v9 = *v12;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v12 != v9)
      {
        objc_enumerationMutation(v7);
      }

      if ((blockCopy[2](blockCopy, *(*(&v11 + 1) + 8 * v10)) & 1) == 0)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (id)defaultVolumeForCurrentPersona
{
  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  currentPersona = [mEMORY[0x1E69DF068] currentPersona];

  isEnterprisePersona = [currentPersona isEnterprisePersona];
  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(FPDVolumeManager *)isEnterprisePersona defaultVolumeForCurrentPersona];
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__3;
  v15 = __Block_byref_object_dispose__3;
  v16 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__FPDVolumeManager_defaultVolumeForCurrentPersona__block_invoke;
  v9[3] = &unk_1E83BF2C0;
  v10 = isEnterprisePersona;
  v9[4] = &v11;
  [(FPDVolumeManager *)self enumerateLibrariesWithBlock:v9];
  v7 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v7;
}

uint64_t __50__FPDVolumeManager_defaultVolumeForCurrentPersona__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if ((*(a1 + 40) & 1) == 0)
  {
    if ([v4 role] == 1)
    {
      goto LABEL_5;
    }

    if ((*(a1 + 40) & 1) == 0)
    {
LABEL_7:
      v6 = 1;
      goto LABEL_8;
    }
  }

  if ([v5 role] != 2)
  {
    goto LABEL_7;
  }

LABEL_5:
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v6 = 0;
LABEL_8:

  return v6;
}

- (void)invalidateDevice:(int)device reason:(id)reason
{
  v21 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = selfCopy->_volumes;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v9)
  {
    v10 = *v15;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if ([v12 dev] == device)
        {
          v9 = v12;
          goto LABEL_11;
        }
      }

      v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v14 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  objc_sync_exit(selfCopy);
  if (v9)
  {
    [(FPDVolumeManager *)selfCopy invalidateVolume:v9 reason:reasonCopy];
  }

  else
  {
    v13 = fp_current_or_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      deviceCopy = device;
      _os_log_impl(&dword_1CEFC7000, v13, OS_LOG_TYPE_INFO, "[INFO] No volume found for dev:%d", buf, 8u);
    }
  }
}

- (void)invalidateVolume:(id)volume reason:(id)reason
{
  v18 = *MEMORY[0x1E69E9840];
  volumeCopy = volume;
  reasonCopy = reason;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (([(NSMutableArray *)selfCopy->_volumes containsObject:volumeCopy]& 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"FPDVolumeManager.m" lineNumber:449 description:{@"Trying to remove nonexistent volume %@ (existing volumes are %@)", volumeCopy, selfCopy->_volumes}];
  }

  [(NSMutableArray *)selfCopy->_volumes removeObject:volumeCopy];
  objc_sync_exit(selfCopy);

  server = [(FPDVolumeManager *)selfCopy server];
  extensionManager = [server extensionManager];
  [extensionManager updateProviderOnDisappearingVolume:volumeCopy reason:reasonCopy];

  [(FPDVolumeManager *)selfCopy unregisterVersionsFileCoordinatorForVolume:volumeCopy];
  v12 = fp_current_or_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v15 = volumeCopy;
    v16 = 2114;
    v17 = reasonCopy;
    _os_log_impl(&dword_1CEFC7000, v12, OS_LOG_TYPE_INFO, "[INFO] Invalidated volume %{public}@ (reason: %{public}@)", buf, 0x16u);
  }
}

- (void)unregisterVersionsFileCoordinatorForVolume:(id)volume
{
  v17 = *MEMORY[0x1E69E9840];
  volumeCopy = volume;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  versionsProvidersByVolumeID = selfCopy->_versionsProvidersByVolumeID;
  v7 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(volumeCopy, "dev")}];
  v8 = [(NSMutableDictionary *)versionsProvidersByVolumeID objectForKeyedSubscript:v7];

  v9 = selfCopy->_versionsProvidersByVolumeID;
  v10 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(volumeCopy, "dev")}];
  [(NSMutableDictionary *)v9 removeObjectForKey:v10];

  objc_sync_exit(selfCopy);
  if (v8)
  {
    v11 = fp_current_or_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      root = [volumeCopy root];
      v13 = 138412546;
      v14 = v8;
      v15 = 2112;
      v16 = root;
      _os_log_impl(&dword_1CEFC7000, v11, OS_LOG_TYPE_INFO, "[INFO] 🅾️ Deregistered versions provider %@ for volume %@", &v13, 0x16u);
    }

    [MEMORY[0x1E696ABF8] _removeFileProvider:v8];
  }
}

- (void)registerVersionsFileCoordinatorForVolume:(id)volume volumeIgnoringOwnership:(BOOL)ownership
{
  ownershipCopy = ownership;
  volumeCopy = volume;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_delegate)
  {
    v8 = [FPDVersionsFileCoordinationProviderDelegate alloc];
    WeakRetained = objc_loadWeakRetained(&selfCopy->_server);
    extensionManager = [WeakRetained extensionManager];
    v11 = [(FPDVersionsFileCoordinationProviderDelegate *)v8 initWithExtensionManager:extensionManager];
    delegate = selfCopy->_delegate;
    selfCopy->_delegate = v11;
  }

  versionsProvidersByVolumeID = selfCopy->_versionsProvidersByVolumeID;
  v14 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(volumeCopy, "dev")}];
  v15 = [(NSMutableDictionary *)versionsProvidersByVolumeID objectForKeyedSubscript:v14];

  if (v15)
  {
    v16 = 0;
    v17 = 0;
  }

  else
  {
    root = [volumeCopy root];
    v16 = [(FPDVolumeManager *)selfCopy getGenstoreVersionsRootURL:root volumeIgnoringOwnership:ownershipCopy];

    v17 = [[FPDFileCoordinationProvider alloc] initWithRootURL:v16];
    [(FPDFileCoordinationProvider *)v17 setDelegate:selfCopy->_delegate];
    v19 = selfCopy->_versionsProvidersByVolumeID;
    v20 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(volumeCopy, "dev")}];
    [(NSMutableDictionary *)v19 setObject:v17 forKeyedSubscript:v20];
  }

  objc_sync_exit(selfCopy);

  if (v17)
  {
    v21 = MEMORY[0x1E696ABF8];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __85__FPDVolumeManager_registerVersionsFileCoordinatorForVolume_volumeIgnoringOwnership___block_invoke;
    v22[3] = &unk_1E83BE158;
    v23 = v17;
    v24 = v16;
    [v21 _addFileProvider:v23 completionHandler:v22];
  }
}

void __85__FPDVolumeManager_registerVersionsFileCoordinatorForVolume_volumeIgnoringOwnership___block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = 138412546;
    v7 = v4;
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&dword_1CEFC7000, v3, OS_LOG_TYPE_INFO, "[INFO] 🅿️ Registered versions provider %@ for path %@", &v6, 0x16u);
  }
}

- (id)getGenstoreVersionsRootURL:(id)l volumeIgnoringOwnership:(BOOL)ownership
{
  v14[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFF8];
  if (ownership)
  {
    v14[0] = l;
    v14[1] = @".DocumentRevisions-V100/AllUIDs";
    v5 = MEMORY[0x1E695DEC8];
    lCopy = l;
    v7 = [v5 arrayWithObjects:v14 count:2];
    v8 = [v4 fileURLWithPathComponents:v7];
  }

  else
  {
    v13[0] = l;
    v9 = MEMORY[0x1E696AD98];
    lCopy2 = l;
    v7 = [v9 numberWithUnsignedInt:{getuid(), v13[0], @".DocumentRevisions-V100/PerUID"}];
    lCopy = [v7 stringValue];
    v13[2] = lCopy;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:3];
    v8 = [v4 fileURLWithPathComponents:v11];
  }

  return v8;
}

- (FPDServer)server
{
  WeakRetained = objc_loadWeakRetained(&self->_server);

  return WeakRetained;
}

- (void)getAllEligibleVolumesWithError:(NSObject *)a3 count:.cold.2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *a2 = 136315138;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_5_0(&dword_1CEFC7000, a3, a3, "[ERROR] Unable to retrieve mount points: %s", a2);
}

- (void)getAllEligibleVolumesWithError:(NSObject *)a1 count:.cold.4(NSObject *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0(&dword_1CEFC7000, a1, v3, "[ERROR] Unable to count mount points: %s", v4);
}

- (void)loadSingleVolume:(uint64_t)a3 role:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = a1 + 1112;
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, a2, a3, "[DEBUG] Volume %{public}s not eligible because it is additional and we're not running in the foreground session", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)loadSingleVolume:(uint64_t)a3 role:(uint64_t)a4 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = a1 + 1112;
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, a2, a3, "[DEBUG] Volume %{public}s not eligible to store FP library, skipping", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)loadVolumeWithURL:(void *)a1 role:(NSObject *)a2 error:.cold.1(void *a1, NSObject *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = [a1 fp_shortDescription];
  v4 = *__error();
  v5 = 138543618;
  v6 = v3;
  v7 = 1024;
  v8 = v4;
  _os_log_error_impl(&dword_1CEFC7000, a2, OS_LOG_TYPE_ERROR, "[ERROR] Unable to statfs_ext for enterprise path '%{public}@': %{errno}d", &v5, 0x12u);
}

- (void)loadHomeVolume
{
  *buf = 138412290;
  *(buf + 4) = self;
  _os_log_fault_impl(&dword_1CEFC7000, log, OS_LOG_TYPE_FAULT, "[CRIT] Unable to load volumes: %@", buf, 0xCu);
}

- (void)libraryForVolume:(void *)a1 createIfNeeded:(uint64_t)a2 error:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_5_0(&dword_1CEFC7000, a3, a3, "[ERROR] Volume not found for UUID: %{public}@", a2);
}

- (void)enumerateLibrariesForPersona:withBlock:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)enumerateLibrariesForPersona:(uint8_t *)buf withBlock:(os_log_t)log .cold.3(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1CEFC7000, log, OS_LOG_TYPE_ERROR, "[ERROR] Could not load EDS volume for %{public}@: %@", buf, 0x16u);
}

- (void)defaultVolumeForCurrentPersona
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 136315394;
  v3 = "[FPDVolumeManager defaultVolumeForCurrentPersona]";
  v4 = 1024;
  v5 = self & 1;
  _os_log_debug_impl(&dword_1CEFC7000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] %s: eds:%d", &v2, 0x12u);
}

@end