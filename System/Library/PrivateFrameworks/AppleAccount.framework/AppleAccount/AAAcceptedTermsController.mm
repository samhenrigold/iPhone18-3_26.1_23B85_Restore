@interface AAAcceptedTermsController
- (BOOL)_shouldRecordTermsForBuddyWithTermsInfo:(id)info;
- (void)_recordTermsForBuddyWithTermsInfo:(id)info;
- (void)_repairTermsBackup:(id)backup forAccount:(id)account;
- (void)fetchTermsAcceptanceForAccount:(id)account completion:(id)completion;
- (void)saveTermsAcceptance:(id)acceptance forAccount:(id)account;
@end

@implementation AAAcceptedTermsController

- (void)saveTermsAcceptance:(id)acceptance forAccount:(id)account
{
  v34 = *MEMORY[0x1E69E9840];
  acceptanceCopy = acceptance;
  accountCopy = account;
  v8 = _AASignpostLogSystem(accountCopy);
  v9 = _AASignpostCreate(v8);
  v11 = v10;

  v13 = _AASignpostLogSystem(v12);
  v14 = v13;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v9, "RecordTerms", " enableTelemetry=YES ", buf, 2u);
  }

  v16 = _AASignpostLogSystem(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v29 = v9;
    _os_log_impl(&dword_1B6F6A000, v16, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: RecordTerms  enableTelemetry=YES ", buf, 0xCu);
  }

  if ([(AAAcceptedTermsController *)self _shouldRecordTermsForBuddyWithTermsInfo:acceptanceCopy])
  {
    [(AAAcceptedTermsController *)self _recordTermsForBuddyWithTermsInfo:acceptanceCopy];
  }

  [accountCopy _aa_setLastAgreedTermsInfo:acceptanceCopy];
  [accountCopy aa_setNeedsToVerifyTerms:0];
  v17 = [accountCopy aa_isAccountClass:@"primary"];

  if (v17)
  {
    v19 = _AALogSystem(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = acceptanceCopy;
      _os_log_impl(&dword_1B6F6A000, v19, OS_LOG_TYPE_DEFAULT, "Saving terms acceptance: %@", buf, 0xCu);
    }

    v20 = objc_alloc_init(getCDPTermsInfoBackupControllerClass());
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __60__AAAcceptedTermsController_saveTermsAcceptance_forAccount___block_invoke;
    v27[3] = &__block_descriptor_48_e17_v16__0__NSError_8l;
    v27[4] = v9;
    v27[5] = v11;
    [v20 saveTermsAcceptance:acceptanceCopy completion:v27];
  }

  else
  {
    Nanoseconds = _AASignpostGetNanoseconds(v9, v11);
    v22 = _AASignpostLogSystem(Nanoseconds);
    v23 = v22;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      *buf = 67240192;
      LODWORD(v29) = 0;
      _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v23, OS_SIGNPOST_INTERVAL_END, v9, "RecordTerms", " Error=%{public,signpost.telemetry:number1,name=Error}d ", buf, 8u);
    }

    v25 = _AASignpostLogSystem(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      v29 = v9;
      v30 = 2048;
      v31 = Nanoseconds / 1000000000.0;
      v32 = 1026;
      v33 = 0;
      _os_log_impl(&dword_1B6F6A000, v25, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RecordTerms  Error=%{public,signpost.telemetry:number1,name=Error}d ", buf, 0x1Cu);
    }

    v20 = _AALogSystem(v26);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v20, OS_LOG_TYPE_DEFAULT, "Account is not primary, skip terms save.", buf, 2u);
    }
  }
}

void __60__AAAcceptedTermsController_saveTermsAcceptance_forAccount___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  Nanoseconds = _AASignpostGetNanoseconds(*(a1 + 32), *(a1 + 40));
  v5 = _AASignpostLogSystem(Nanoseconds);
  v6 = v5;
  v7 = *(a1 + 32);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v14 = 67240192;
    LODWORD(v15) = [v3 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v6, OS_SIGNPOST_INTERVAL_END, v7, "RecordTerms", " Error=%{public,signpost.telemetry:number1,name=Error}d ", &v14, 8u);
  }

  v9 = _AASignpostLogSystem(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = [v3 code];
    v14 = 134218496;
    v15 = v10;
    v16 = 2048;
    v17 = Nanoseconds / 1000000000.0;
    v18 = 1026;
    v19 = v11;
    _os_log_impl(&dword_1B6F6A000, v9, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RecordTerms  Error=%{public,signpost.telemetry:number1,name=Error}d ", &v14, 0x1Cu);
  }

  v13 = _AALogSystem(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v3;
    _os_log_impl(&dword_1B6F6A000, v13, OS_LOG_TYPE_DEFAULT, "Save terms acceptance completed with error: %@", &v14, 0xCu);
  }
}

- (BOOL)_shouldRecordTermsForBuddyWithTermsInfo:(id)info
{
  v3 = [info objectForKey:@"proxiedcontext"];
  v4 = v3 == 0;

  return v4;
}

- (void)fetchTermsAcceptanceForAccount:(id)account completion:(id)completion
{
  v36[1] = *MEMORY[0x1E69E9840];
  accountCopy = account;
  completionCopy = completion;
  v8 = [accountCopy aa_isAccountClass:@"primary"];
  if (v8)
  {
    v9 = _AASignpostLogSystem(v8);
    v10 = _AASignpostCreate(v9);
    v12 = v11;

    v14 = _AASignpostLogSystem(v13);
    v15 = v14;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v10, "FetchTerms", " enableTelemetry=YES ", buf, 2u);
    }

    v17 = _AASignpostLogSystem(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v34 = v10;
      _os_log_impl(&dword_1B6F6A000, v17, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: FetchTerms  enableTelemetry=YES ", buf, 0xCu);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __71__AAAcceptedTermsController_fetchTermsAcceptanceForAccount_completion___block_invoke;
    aBlock[3] = &unk_1E7C9C770;
    v18 = accountCopy;
    v28 = v18;
    selfCopy = self;
    v31 = v10;
    v32 = v12;
    v30 = completionCopy;
    v19 = _Block_copy(aBlock);
    v20 = objc_alloc_init(getCDPTermsInfoBackupControllerClass());
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __71__AAAcceptedTermsController_fetchTermsAcceptanceForAccount_completion___block_invoke_52;
    v25[3] = &unk_1E7C9C798;
    v26 = v19;
    v21 = v19;
    [v20 fetchTermsAcceptanceForAccount:v18 completion:v25];

    v22 = v28;
  }

  else
  {
    v23 = MEMORY[0x1E696ABC0];
    v35 = *MEMORY[0x1E696A578];
    v36[0] = @"Terms acceptance not available for non-primary AppleAccount";
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    v24 = [v23 aa_errorWithCode:-15 userInfo:v22];
    (*(completionCopy + 2))(completionCopy, 0, v24);
  }
}

void __71__AAAcceptedTermsController_fetchTermsAcceptanceForAccount_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) aa_lastAgreedTermsInfo];
  v8 = v7;
  if (v5 || !v7)
  {
    Nanoseconds = _AASignpostGetNanoseconds(*(a1 + 56), *(a1 + 64));
    v17 = _AASignpostLogSystem(Nanoseconds);
    v18 = v17;
    v19 = *(a1 + 56);
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      v24 = 67240192;
      LODWORD(v25) = [v6 code];
      _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v18, OS_SIGNPOST_INTERVAL_END, v19, "FetchTerms", " Error=%{public,signpost.telemetry:number1,name=Error}d ", &v24, 8u);
    }

    v15 = _AASignpostLogSystem(v20);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v21 = Nanoseconds / 1000000000.0;
      v22 = *(a1 + 56);
      v23 = [v6 code];
      v24 = 134218496;
      v25 = v22;
      v26 = 2048;
      v27 = v21;
      v28 = 1026;
      v29 = v23;
      _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: FetchTerms  Error=%{public,signpost.telemetry:number1,name=Error}d ", &v24, 0x1Cu);
    }
  }

  else
  {
    v9 = _AALogSystem(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138412290;
      v25 = v8;
      _os_log_impl(&dword_1B6F6A000, v9, OS_LOG_TYPE_DEFAULT, "Terms info is missing in SecureBackup. Providing ACAccount result: %@", &v24, 0xCu);
    }

    [*(a1 + 40) _repairTermsBackup:v8 forAccount:*(a1 + 32)];
    v10 = _AASignpostGetNanoseconds(*(a1 + 56), *(a1 + 64));
    v11 = _AASignpostLogSystem(v10);
    v12 = v11;
    v13 = *(a1 + 56);
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      v24 = 67240192;
      LODWORD(v25) = 0;
      _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v12, OS_SIGNPOST_INTERVAL_END, v13, "FetchTerms", " Error=%{public,signpost.telemetry:number1,name=Error}d ", &v24, 8u);
    }

    v15 = _AASignpostLogSystem(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 134218496;
      v25 = *(a1 + 56);
      v26 = 2048;
      v27 = v10 / 1000000000.0;
      v28 = 1026;
      v29 = 0;
      _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: FetchTerms  Error=%{public,signpost.telemetry:number1,name=Error}d ", &v24, 0x1Cu);
    }
  }

  (*(*(a1 + 48) + 16))();
}

void __71__AAAcceptedTermsController_fetchTermsAcceptanceForAccount_completion___block_invoke_52(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = _AALogSystem(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_1B6F6A000, v7, OS_LOG_TYPE_DEFAULT, "Fetched terms from SecureBackup with error %@ and result: %@", &v8, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_recordTermsForBuddyWithTermsInfo:(id)info
{
  v22 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v4 = [infoCopy objectForKeyedSubscript:@"SLAVersion"];
  v5 = [infoCopy objectForKeyedSubscript:@"ioswarrantyVersion"];
  v6 = v5;
  if (v4)
  {
    v7 = _AALogSystem(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = [v4 unsignedIntValue];
      _os_log_impl(&dword_1B6F6A000, v7, OS_LOG_TYPE_DEFAULT, "Found device terms version %u in termsInfo. Updating local license agreement status.", buf, 8u);
    }

    v13 = 0;
    v14 = &v13;
    v15 = 0x2050000000;
    v8 = getBYLicenseAgreementClass_softClass;
    v16 = getBYLicenseAgreementClass_softClass;
    if (!getBYLicenseAgreementClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      v18 = 3221225472;
      v19 = __getBYLicenseAgreementClass_block_invoke;
      v20 = &unk_1E7C9AE88;
      v21 = &v13;
      __getBYLicenseAgreementClass_block_invoke(buf);
      v8 = v14[3];
    }

    v9 = v8;
    _Block_object_dispose(&v13, 8);
    v5 = [v8 recordUserAcceptedAgreementVersion:{objc_msgSend(v4, "unsignedIntValue", v13)}];
  }

  if (v6)
  {
    v10 = _AALogSystem(v5);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v10, OS_LOG_TYPE_DEFAULT, "Found device warranty agreement in termsInfo. Updating local warranty agreement status.", buf, 2u);
    }

    v13 = 0;
    v14 = &v13;
    v15 = 0x2050000000;
    v11 = getBYWarrantyClass_softClass;
    v16 = getBYWarrantyClass_softClass;
    if (!getBYWarrantyClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      v18 = 3221225472;
      v19 = __getBYWarrantyClass_block_invoke;
      v20 = &unk_1E7C9AE88;
      v21 = &v13;
      __getBYWarrantyClass_block_invoke(buf);
      v11 = v14[3];
    }

    v12 = v11;
    _Block_object_dispose(&v13, 8);
    [v11 acknowledge];
  }
}

- (void)_repairTermsBackup:(id)backup forAccount:(id)account
{
  backupCopy = backup;
  v6 = MEMORY[0x1E6959A48];
  accountCopy = account;
  defaultStore = [v6 defaultStore];
  aa_altDSID = [accountCopy aa_altDSID];

  v10 = [defaultStore aa_appleAccountWithAltDSID:aa_altDSID];

  v12 = _AALogSystem(v11);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v13)
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "Account exists on disk. Proceeding with repair.", buf, 2u);
    }

    v12 = objc_alloc_init(getCDPTermsInfoBackupControllerClass());
    [v12 saveTermsAcceptance:backupCopy completion:&__block_literal_global_19];
  }

  else if (v13)
  {
    *v14 = 0;
    _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "Account does not exist on disk yet. Skipping repair.", v14, 2u);
  }
}

void __59__AAAcceptedTermsController__repairTermsBackup_forAccount___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _AALogSystem(v2);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __59__AAAcceptedTermsController__repairTermsBackup_forAccount___block_invoke_cold_1(v2, v4);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1B6F6A000, v4, OS_LOG_TYPE_DEFAULT, "Successfully fixed terms info in secure backup.", v5, 2u);
  }
}

void __59__AAAcceptedTermsController__repairTermsBackup_forAccount___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B6F6A000, a2, OS_LOG_TYPE_ERROR, "Fixing terms info failed with error: %@", &v2, 0xCu);
}

@end