@interface CDPProtectedCloudStorageProxyImpl
- (BOOL)_performPCSBlock:(id)block error:(id *)error;
- (BOOL)isWalrusEnabledWithOptions:(id)options error:(id *)error;
- (BOOL)pcsIdentityMigrateToiCDPWithInfo:(id)info error:(id *)error;
- (BOOL)pcsIdentitySetCompanionInCircle:(_PCSIdentitySetData *)circle error:(id *)error;
- (BOOL)pcsIdentitySetIsInICDPLocal:(_PCSIdentitySetData *)local error:(id *)error;
- (BOOL)pcsIdentitySetIsInICDPNetwork:(_PCSIdentitySetData *)network options:(id)options error:(id *)error;
- (BOOL)pcsRestoreLocalBackup:(id)backup error:(id *)error;
- (BOOL)pcsSynchronizeKeysWithInfo:(id)info error:(id *)error;
- (BOOL)repairWalrusWithAccountIdentifier:(id)identifier options:(id)options error:(id *)error;
- (BOOL)setWalrusEnabled:(BOOL)enabled accountIdentifier:(id)identifier options:(id)options error:(id *)error;
- (_PCSIdentitySetData)pcsIdentityCreateWithInfo:(id)info error:(id *)error;
- (_PCSIdentitySetData)pcsIdentitySetupWithInfo:(id)info error:(id *)error;
@end

@implementation CDPProtectedCloudStorageProxyImpl

- (BOOL)pcsIdentitySetCompanionInCircle:(_PCSIdentitySetData *)circle error:(id *)error
{
  v7 = +[CDPUtilities hasFullCDPSupport];
  if (v7)
  {
    return 0;
  }

  v9 = _CDPLogSystem(v7);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DED99000, v9, OS_LOG_TYPE_DEFAULT, "setting companion in circle", buf, 2u);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__CDPProtectedCloudStorageProxyImpl_pcsIdentitySetCompanionInCircle_error___block_invoke;
  v10[3] = &__block_descriptor_40_e20_B16__0_____CFError_8l;
  v10[4] = circle;
  return [(CDPProtectedCloudStorageProxyImpl *)self _performPCSBlock:v10 error:error];
}

- (_PCSIdentitySetData)pcsIdentityCreateWithInfo:(id)info error:(id *)error
{
  infoCopy = info;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__CDPProtectedCloudStorageProxyImpl_pcsIdentityCreateWithInfo_error___block_invoke;
  v10[3] = &unk_1E869D140;
  v12 = &v13;
  v7 = infoCopy;
  v11 = v7;
  [(CDPProtectedCloudStorageProxyImpl *)self _performPCSBlock:v10 error:error];
  v8 = v14[3];

  _Block_object_dispose(&v13, 8);
  return v8;
}

- (BOOL)pcsIdentitySetIsInICDPNetwork:(_PCSIdentitySetData *)network options:(id)options error:(id *)error
{
  optionsCopy = options;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __81__CDPProtectedCloudStorageProxyImpl_pcsIdentitySetIsInICDPNetwork_options_error___block_invoke;
  v11[3] = &unk_1E869D168;
  v12 = optionsCopy;
  networkCopy = network;
  v9 = optionsCopy;
  LOBYTE(error) = [(CDPProtectedCloudStorageProxyImpl *)self _performPCSBlock:v11 error:error];

  return error;
}

- (BOOL)pcsIdentitySetIsInICDPLocal:(_PCSIdentitySetData *)local error:(id *)error
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __71__CDPProtectedCloudStorageProxyImpl_pcsIdentitySetIsInICDPLocal_error___block_invoke;
  v5[3] = &__block_descriptor_40_e20_B16__0_____CFError_8l;
  v5[4] = local;
  return [(CDPProtectedCloudStorageProxyImpl *)self _performPCSBlock:v5 error:error];
}

- (_PCSIdentitySetData)pcsIdentitySetupWithInfo:(id)info error:(id *)error
{
  infoCopy = info;
  v7 = +[CDPUtilities hasFullCDPSupport];
  if (v7)
  {
    v8 = _CDPLogSystem(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DED99000, v8, OS_LOG_TYPE_DEFAULT, "pcsIdentitySetupWithInfo:", buf, 2u);
    }

    *buf = 0;
    v15 = buf;
    v16 = 0x2020000000;
    v17 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __68__CDPProtectedCloudStorageProxyImpl_pcsIdentitySetupWithInfo_error___block_invoke;
    v11[3] = &unk_1E869D140;
    v13 = buf;
    v12 = infoCopy;
    [(CDPProtectedCloudStorageProxyImpl *)self _performPCSBlock:v11 error:error];
    v9 = *(v15 + 3);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)pcsIdentityMigrateToiCDPWithInfo:(id)info error:(id *)error
{
  infoCopy = info;
  v7 = +[CDPUtilities hasFullCDPSupport];
  if (v7)
  {
    v8 = _CDPLogSystem(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DED99000, v8, OS_LOG_TYPE_DEFAULT, "pcsIdentityMigrateToiCDPWithInfo:", buf, 2u);
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __76__CDPProtectedCloudStorageProxyImpl_pcsIdentityMigrateToiCDPWithInfo_error___block_invoke;
    v11[3] = &unk_1E869D190;
    v12 = infoCopy;
    v9 = [(CDPProtectedCloudStorageProxyImpl *)self _performPCSBlock:v11 error:error];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)pcsSynchronizeKeysWithInfo:(id)info error:(id *)error
{
  infoCopy = info;
  v7 = +[CDPUtilities hasFullCDPSupport];
  if (v7)
  {
    v8 = _CDPLogSystem(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DED99000, v8, OS_LOG_TYPE_DEFAULT, "pcsSynchronizeKeysWithInfo:", buf, 2u);
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __70__CDPProtectedCloudStorageProxyImpl_pcsSynchronizeKeysWithInfo_error___block_invoke;
    v11[3] = &unk_1E869D190;
    v12 = infoCopy;
    v9 = [(CDPProtectedCloudStorageProxyImpl *)self _performPCSBlock:v11 error:error];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)pcsRestoreLocalBackup:(id)backup error:(id *)error
{
  backupCopy = backup;
  v7 = +[CDPUtilities hasFullCDPSupport];
  if (v7)
  {
    v8 = _CDPLogSystem(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DED99000, v8, OS_LOG_TYPE_DEFAULT, "pcsRestoreLocalBackup:", buf, 2u);
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __65__CDPProtectedCloudStorageProxyImpl_pcsRestoreLocalBackup_error___block_invoke;
    v11[3] = &unk_1E869D190;
    v12 = backupCopy;
    v9 = [(CDPProtectedCloudStorageProxyImpl *)self _performPCSBlock:v11 error:error];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isWalrusEnabledWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v7 = [(CDPProtectedCloudStorageProxyImpl *)self pcsIdentityCreateWithInfo:optionsCopy error:error];
  if (*error)
  {
    v8 = _CDPLogSystem(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CDPProtectedCloudStorageProxyImpl isWalrusEnabledWithOptions:error error:?];
    }

    v9 = 0;
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __70__CDPProtectedCloudStorageProxyImpl_isWalrusEnabledWithOptions_error___block_invoke;
    v11[3] = &unk_1E869D168;
    v13 = v7;
    v12 = optionsCopy;
    v9 = [(CDPProtectedCloudStorageProxyImpl *)self _performPCSBlock:v11 error:error];
    v8 = v12;
  }

  return v9;
}

uint64_t __70__CDPProtectedCloudStorageProxyImpl_isWalrusEnabledWithOptions_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = PCSIdentityiCDPWalrus();
  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
  }

  return v3;
}

- (BOOL)repairWalrusWithAccountIdentifier:(id)identifier options:(id)options error:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  optionsCopy = options;
  v10 = [(CDPProtectedCloudStorageProxyImpl *)self pcsIdentityCreateWithInfo:optionsCopy error:error];
  if (!*error)
  {
    v13 = v10;
    if (![(CDPProtectedCloudStorageProxyImpl *)self isWalrusEnabledWithOptions:optionsCopy error:error])
    {
      goto LABEL_14;
    }

    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __85__CDPProtectedCloudStorageProxyImpl_repairWalrusWithAccountIdentifier_options_error___block_invoke;
    v28[3] = &__block_descriptor_40_e20_B16__0_____CFError_8l;
    v28[4] = v13;
    v14 = [(CDPProtectedCloudStorageProxyImpl *)self _performPCSBlock:v28 error:error];
    v15 = v14;
    v16 = _CDPLogSystem(v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [CDPProtectedCloudStorageProxyImpl repairWalrusWithAccountIdentifier:v15 options:v16 error:?];
    }

    if (!v15)
    {
LABEL_14:
      v12 = 1;
      if (!v13)
      {
        goto LABEL_16;
      }

LABEL_15:
      CFRelease(v13);
      goto LABEL_16;
    }

    v18 = _CDPLogSystem(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [CDPProtectedCloudStorageProxyImpl repairWalrusWithAccountIdentifier:v18 options:? error:?];
    }

    v19 = [(CDPProtectedCloudStorageProxyImpl *)self setWalrusEnabled:1 accountIdentifier:identifierCopy options:optionsCopy error:error];
    v20 = *error;
    v12 = *error == 0;
    v21 = _CDPLogSystem(v19);
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (v20)
    {
      if (!v22)
      {
        goto LABEL_20;
      }

      v23 = *error;
      *buf = 138412290;
      v30 = v23;
      v24 = "Walrus repair failed: %@";
      v25 = v21;
      v26 = 12;
    }

    else
    {
      if (!v22)
      {
        goto LABEL_20;
      }

      *buf = 0;
      v24 = "Walrus repair succeeded";
      v25 = v21;
      v26 = 2;
    }

    _os_log_impl(&dword_1DED99000, v25, OS_LOG_TYPE_DEFAULT, v24, buf, v26);
LABEL_20:

    if (!v13)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v11 = _CDPLogSystem(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [CDPProtectedCloudStorageProxyImpl isWalrusEnabledWithOptions:error error:?];
  }

  v12 = 0;
LABEL_16:

  return v12;
}

uint64_t __85__CDPProtectedCloudStorageProxyImpl_repairWalrusWithAccountIdentifier_options_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v4 = getPCSIdentitySetIsWalrusWithForceFetchSymbolLoc_ptr;
  v12 = getPCSIdentitySetIsWalrusWithForceFetchSymbolLoc_ptr;
  if (!getPCSIdentitySetIsWalrusWithForceFetchSymbolLoc_ptr)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __getPCSIdentitySetIsWalrusWithForceFetchSymbolLoc_block_invoke;
    v8[3] = &unk_1E869D1B8;
    v8[4] = &v9;
    __getPCSIdentitySetIsWalrusWithForceFetchSymbolLoc_block_invoke(v8);
    v4 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (!v4)
  {
    __85__CDPProtectedCloudStorageProxyImpl_repairWalrusWithAccountIdentifier_options_error___block_invoke_cold_1();
    v7 = v6;
    _Block_object_dispose(&v9, 8);
    _Unwind_Resume(v7);
  }

  return v4(v3, 1, a2);
}

- (BOOL)setWalrusEnabled:(BOOL)enabled accountIdentifier:(id)identifier options:(id)options error:(id *)error
{
  enabledCopy = enabled;
  v45 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  optionsCopy = options;
  v11 = _CDPSignpostLogSystem(optionsCopy);
  v12 = _CDPSignpostCreate(v11);
  v14 = v13;

  v16 = _CDPSignpostLogSystem(v15);
  v17 = v16;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DED99000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v12, "UpdateAccountCleanupStatus", " enableTelemetry=YES ", buf, 2u);
  }

  v19 = _CDPSignpostLogSystem(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *v39 = v12;
    _os_log_impl(&dword_1DED99000, v19, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: UpdateAccountCleanupStatus  enableTelemetry=YES ", buf, 0xCu);
  }

  if (enabledCopy)
  {
    v37 = 0;
    v20 = &v37;
    v21 = PCSAccountEnableWalrus();
  }

  else
  {
    v36 = 0;
    v20 = &v36;
    v21 = PCSAccountDisableWalrus();
  }

  v22 = v21;
  v23 = *v20;
  v24 = v23;
  if (error)
  {
    v25 = v23;
    *error = v24;
  }

  Nanoseconds = _CDPSignpostGetNanoseconds(v12, v14);
  v27 = _CDPSignpostLogSystem(Nanoseconds);
  v28 = v27;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
  {
    code = [v24 code];
    *buf = 67240448;
    *v39 = enabledCopy;
    *&v39[4] = 1026;
    *&v39[6] = code;
    _os_signpost_emit_with_name_impl(&dword_1DED99000, v28, OS_SIGNPOST_INTERVAL_END, v12, "UpdateAccountCleanupStatus", " isEnabled=%{public,signpost.telemetry:number1,name=isEnabled}d  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0xEu);
  }

  v31 = _CDPSignpostLogSystem(v30);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    code2 = [v24 code];
    *buf = 134218752;
    *v39 = v12;
    *&v39[8] = 2048;
    v40 = Nanoseconds / 1000000000.0;
    v41 = 1026;
    v42 = enabledCopy;
    v43 = 1026;
    v44 = code2;
    _os_log_impl(&dword_1DED99000, v31, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: UpdateAccountCleanupStatus  isEnabled=%{public,signpost.telemetry:number1,name=isEnabled}d  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0x22u);
  }

  if (!v22)
  {
    v34 = _CDPLogSystem(v33);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [CDPProtectedCloudStorageProxyImpl setWalrusEnabled:v24 accountIdentifier:v34 options:? error:?];
    }
  }

  return v22;
}

- (BOOL)_performPCSBlock:(id)block error:(id *)error
{
  v7 = 0;
  v5 = (*(block + 2))(block, &v7);
  if (error)
  {
    *error = v7;
  }

  else if (v7)
  {
    CFRelease(v7);
  }

  return v5;
}

- (void)isWalrusEnabledWithOptions:(id *)a1 error:.cold.1(id *a1)
{
  v1 = [*a1 description];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  OUTLINED_FUNCTION_0(&dword_1DED99000, v2, v3, "Failed to create PCS identity with error: %@", v4, v5, v6, v7, v8, DWORD2(v8));
}

- (void)repairWalrusWithAccountIdentifier:(char)a1 options:(NSObject *)a2 error:.cold.2(char a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1 & 1;
  _os_log_debug_impl(&dword_1DED99000, a2, OS_LOG_TYPE_DEBUG, "Walrus state after repair attempt - %i", v2, 8u);
}

void __85__CDPProtectedCloudStorageProxyImpl_repairWalrusWithAccountIdentifier_options_error___block_invoke_cold_1()
{
  v0 = dlerror();
  v1 = abort_report_np("%s", v0);
  [CDPProtectedCloudStorageProxyImpl setWalrusEnabled:v1 accountIdentifier:v2 options:? error:?];
}

- (void)setWalrusEnabled:(uint64_t)a1 accountIdentifier:(NSObject *)a2 options:error:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1DED99000, a2, OS_LOG_TYPE_ERROR, "Walrus update failed with error: %@", &v2, 0xCu);
}

@end