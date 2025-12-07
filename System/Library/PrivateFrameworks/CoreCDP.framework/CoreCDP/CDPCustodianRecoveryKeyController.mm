@interface CDPCustodianRecoveryKeyController
- (BOOL)_isInSOSCircleWithContext:(id)context;
- (BOOL)verifyRecoveryKeyObservingSystemsHaveMatchingStateWithContext:(id)context error:(id *)error;
- (id)_initializeRecoveryKeyWithInfo:(id)info error:(id *)error;
- (void)checkCustodianRecoveryKey:(id)key withContext:(id)context completion:(id)completion;
- (void)createRecoveryKeyWithContext:(id)context forUUID:(id)d completion:(id)completion;
- (void)deleteRecoveryKeyWithContext:(id)context forUUID:(id)d completion:(id)completion;
- (void)recoverOctagonUsingCustodianInfo:(id)info withContext:(id)context completion:(id)completion;
- (void)validateRecoveryKey:(id)key withContext:(id)context completion:(id)completion;
@end

@implementation CDPCustodianRecoveryKeyController

- (void)createRecoveryKeyWithContext:(id)context forUUID:(id)d completion:(id)completion
{
  v34 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  dCopy = d;
  completionCopy = completion;
  dsid = [contextCopy dsid];
  if (dsid)
  {

LABEL_4:
    v13 = _CDPLogSystem(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138739971;
      v33 = dCopy;
      _os_log_impl(&dword_1DED99000, v13, OS_LOG_TYPE_DEFAULT, "Asking security to create custodian recovery key for %{sensitive}@", buf, 0xCu);
    }

    v15 = _CDPSignpostLogSystem(v14);
    v16 = _CDPSignpostCreate(v15);
    v18 = v17;

    v20 = _CDPSignpostLogSystem(v19);
    v21 = v20;
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1DED99000, v21, OS_SIGNPOST_INTERVAL_BEGIN, v16, "CustodianCreateRecoveryKey", " enableTelemetry=YES ", buf, 2u);
    }

    v23 = _CDPSignpostLogSystem(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v33 = v16;
      _os_log_impl(&dword_1DED99000, v23, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: CustodianCreateRecoveryKey  enableTelemetry=YES ", buf, 0xCu);
    }

    cliqueConfiguration = [contextCopy cliqueConfiguration];
    v25 = MEMORY[0x1E697AA80];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __85__CDPCustodianRecoveryKeyController_createRecoveryKeyWithContext_forUUID_completion___block_invoke;
    v27[3] = &unk_1E869D650;
    v30 = v16;
    v31 = v18;
    v29 = completionCopy;
    v28 = dCopy;
    [v25 createCustodianRecoveryKey:cliqueConfiguration uuid:v28 reply:v27];

    goto LABEL_12;
  }

  altDSID = [contextCopy altDSID];

  if (altDSID)
  {
    goto LABEL_4;
  }

  v26 = _CDPLogSystem(v11);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
  {
    [CDPCustodianRecoveryKeyController createRecoveryKeyWithContext:forUUID:completion:];
  }

  cliqueConfiguration = [MEMORY[0x1E696ABC0] cdp_errorWithCode:-5003];
  (*(completionCopy + 2))(completionCopy, 0, cliqueConfiguration);
LABEL_12:
}

void __85__CDPCustodianRecoveryKeyController_createRecoveryKeyWithContext_forUUID_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  Nanoseconds = _CDPSignpostGetNanoseconds(a1[6], a1[7]);
  v8 = _CDPSignpostLogSystem(Nanoseconds);
  v9 = v8;
  v10 = a1[6];
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v34 = 67240192;
    LODWORD(v35) = [v6 code];
    _os_signpost_emit_with_name_impl(&dword_1DED99000, v9, OS_SIGNPOST_INTERVAL_END, v10, "CustodianCreateRecoveryKey", " Error=%{public,signpost.telemetry:number1,name=Error}d ", &v34, 8u);
  }

  v12 = _CDPSignpostLogSystem(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = Nanoseconds / 1000000000.0;
    v14 = a1[6];
    v15 = [v6 code];
    v34 = 134218496;
    v35 = v14;
    v36 = 2048;
    v37 = v13;
    v38 = 1026;
    LODWORD(v39) = v15;
    _os_log_impl(&dword_1DED99000, v12, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: CustodianCreateRecoveryKey  Error=%{public,signpost.telemetry:number1,name=Error}d ", &v34, 0x1Cu);
  }

  if (v6)
  {
    v17 = _CDPLogSystem(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __85__CDPCustodianRecoveryKeyController_createRecoveryKeyWithContext_forUUID_completion___block_invoke_cold_1();
    }

    (*(a1[5] + 16))();
  }

  else
  {
    v18 = [v5 wrappedKey];
    if (v18 && (v19 = v18, [v5 wrappingKey], v20 = objc_claimAutoreleasedReturnValue(), v20, v19, v20))
    {
      v22 = _CDPLogSystem(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [v5 uuid];
        v24 = [v5 uuid];
        v25 = a1[4];
        v26 = @"not equal ❌";
        v34 = 138412802;
        v35 = v23;
        if (v24 == v25)
        {
          v26 = @"equal ✅";
        }

        v36 = 2112;
        v37 = *&v26;
        v38 = 2112;
        v39 = v25;
        _os_log_impl(&dword_1DED99000, v22, OS_LOG_TYPE_DEFAULT, "OT CRK uuid %@ is %@ to AA custodianID %@", &v34, 0x20u);
      }

      v27 = [CDPCustodianRecoveryInfo alloc];
      v28 = [v5 wrappedKey];
      v29 = [v5 wrappingKey];
      v30 = [v5 uuid];
      v31 = [(CDPCustodianRecoveryInfo *)v27 initWithWrappedRKC:v28 wrappingKey:v29 custodianUUID:v30];

      v32 = *(a1[5] + 16);
    }

    else
    {
      v33 = a1[5];
      v31 = [MEMORY[0x1E696ABC0] cdp_errorWithCode:0];
      v32 = *(v33 + 16);
    }

    v32();
  }
}

- (void)deleteRecoveryKeyWithContext:(id)context forUUID:(id)d completion:(id)completion
{
  v34 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  dCopy = d;
  completionCopy = completion;
  dsid = [contextCopy dsid];
  if (dsid)
  {

LABEL_4:
    v13 = _CDPLogSystem(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138739971;
      v33 = dCopy;
      _os_log_impl(&dword_1DED99000, v13, OS_LOG_TYPE_DEFAULT, "Asking security to delete custodian recovery key for %{sensitive}@", buf, 0xCu);
    }

    v15 = _CDPSignpostLogSystem(v14);
    v16 = _CDPSignpostCreate(v15);
    v18 = v17;

    v20 = _CDPSignpostLogSystem(v19);
    v21 = v20;
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1DED99000, v21, OS_SIGNPOST_INTERVAL_BEGIN, v16, "CustodianDeleteRecoveryKey", " enableTelemetry=YES ", buf, 2u);
    }

    v23 = _CDPSignpostLogSystem(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v33 = v16;
      _os_log_impl(&dword_1DED99000, v23, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: CustodianDeleteRecoveryKey  enableTelemetry=YES ", buf, 0xCu);
    }

    cliqueConfiguration = [contextCopy cliqueConfiguration];
    v25 = MEMORY[0x1E697AA80];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __85__CDPCustodianRecoveryKeyController_deleteRecoveryKeyWithContext_forUUID_completion___block_invoke;
    v27[3] = &unk_1E869D678;
    v30 = v16;
    v31 = v18;
    v29 = completionCopy;
    v28 = dCopy;
    [v25 removeCustodianRecoveryKey:cliqueConfiguration custodianRecoveryKeyUUID:v28 reply:v27];

    goto LABEL_12;
  }

  altDSID = [contextCopy altDSID];

  if (altDSID)
  {
    goto LABEL_4;
  }

  v26 = _CDPLogSystem(v11);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
  {
    [CDPCustodianRecoveryKeyController createRecoveryKeyWithContext:forUUID:completion:];
  }

  cliqueConfiguration = [MEMORY[0x1E696ABC0] cdp_errorWithCode:-5003];
  (*(completionCopy + 2))(completionCopy, cliqueConfiguration);
LABEL_12:
}

void __85__CDPCustodianRecoveryKeyController_deleteRecoveryKeyWithContext_forUUID_completion___block_invoke(void *a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  Nanoseconds = _CDPSignpostGetNanoseconds(a1[6], a1[7]);
  v5 = _CDPSignpostLogSystem(Nanoseconds);
  v6 = v5;
  v7 = a1[6];
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v22 = 67240192;
    LODWORD(v23) = [v3 code];
    _os_signpost_emit_with_name_impl(&dword_1DED99000, v6, OS_SIGNPOST_INTERVAL_END, v7, "CustodianDeleteRecoveryKey", " Error=%{public,signpost.telemetry:number1,name=Error}d ", &v22, 8u);
  }

  v9 = _CDPSignpostLogSystem(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = Nanoseconds / 1000000000.0;
    v11 = a1[6];
    v12 = [v3 code];
    v22 = 134218496;
    v23 = v11;
    v24 = 2048;
    v25 = v10;
    v26 = 1026;
    v27 = v12;
    _os_log_impl(&dword_1DED99000, v9, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: CustodianDeleteRecoveryKey  Error=%{public,signpost.telemetry:number1,name=Error}d ", &v22, 0x1Cu);
  }

  v14 = _CDPLogSystem(v13);
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
  if (v3)
  {
    if (v15)
    {
      __85__CDPCustodianRecoveryKeyController_deleteRecoveryKeyWithContext_forUUID_completion___block_invoke_cold_1();
    }
  }

  else if (v15)
  {
    __85__CDPCustodianRecoveryKeyController_deleteRecoveryKeyWithContext_forUUID_completion___block_invoke_cold_2(a1, v14, v16, v17, v18, v19, v20, v21);
  }

  (*(a1[5] + 16))();
}

- (void)validateRecoveryKey:(id)key withContext:(id)context completion:(id)completion
{
  keyCopy = key;
  contextCopy = context;
  completionCopy = completion;
  dsid = [contextCopy dsid];
  if (dsid)
  {

LABEL_4:
    cliqueConfiguration = [contextCopy cliqueConfiguration];
    v14 = objc_alloc(MEMORY[0x1E69B7CD0]);
    wrappedRKC = [keyCopy wrappedRKC];
    wrappingKey = [keyCopy wrappingKey];
    custodianUUID = [keyCopy custodianUUID];
    v18 = [v14 initWithWrappedKey:wrappedRKC wrappingKey:wrappingKey uuid:custodianUUID error:0];

    v19 = MEMORY[0x1E697AA80];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __80__CDPCustodianRecoveryKeyController_validateRecoveryKey_withContext_completion___block_invoke;
    v21[3] = &unk_1E869D6A0;
    v23 = completionCopy;
    v22 = keyCopy;
    [v19 preflightRecoverOctagonUsingCustodianRecoveryKey:cliqueConfiguration custodianRecoveryKey:v18 reply:v21];

    goto LABEL_5;
  }

  altDSID = [contextCopy altDSID];

  if (altDSID)
  {
    goto LABEL_4;
  }

  v20 = _CDPLogSystem(v12);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
  {
    [CDPCustodianRecoveryKeyController validateRecoveryKey:withContext:completion:];
  }

  cliqueConfiguration = [MEMORY[0x1E696ABC0] cdp_errorWithCode:-5003];
  (*(completionCopy + 2))(completionCopy, cliqueConfiguration);
LABEL_5:
}

void __80__CDPCustodianRecoveryKeyController_validateRecoveryKey_withContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _CDPLogSystem(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __80__CDPCustodianRecoveryKeyController_validateRecoveryKey_withContext_completion___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __80__CDPCustodianRecoveryKeyController_validateRecoveryKey_withContext_completion___block_invoke_cold_2(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)recoverOctagonUsingCustodianInfo:(id)info withContext:(id)context completion:(id)completion
{
  infoCopy = info;
  contextCopy = context;
  completionCopy = completion;
  dsid = [contextCopy dsid];
  if (dsid)
  {

LABEL_4:
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __93__CDPCustodianRecoveryKeyController_recoverOctagonUsingCustodianInfo_withContext_completion___block_invoke;
    v25[3] = &unk_1E869D588;
    v26 = completionCopy;
    v14 = MEMORY[0x1E12CA380](v25);
    v24 = 0;
    v15 = [(CDPCustodianRecoveryKeyController *)self _initializeRecoveryKeyWithInfo:infoCopy error:&v24];
    v16 = v24;
    v17 = _CDPLogSystem(v16);
    v18 = v17;
    if (v16)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [CDPCircleProxyImpl recoverOctagonUsingCustodianInfo:completion:];
      }

      (v14)[2](v14, v16);
    }

    else
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *v23 = 0;
        _os_log_impl(&dword_1DED99000, v18, OS_LOG_TYPE_DEFAULT, "Attempting to recover octagon usign custodian recovery key", v23, 2u);
      }

      v19 = MEMORY[0x1E697AA80];
      cliqueConfiguration = [contextCopy cliqueConfiguration];
      [v19 recoverOctagonUsingCustodianRecoveryKey:cliqueConfiguration custodianRecoveryKey:v15 reply:v14];
    }

    v21 = v26;
    goto LABEL_12;
  }

  altDSID = [contextCopy altDSID];

  if (altDSID)
  {
    goto LABEL_4;
  }

  v22 = _CDPLogSystem(v13);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
  {
    [CDPCustodianRecoveryKeyController recoverOctagonUsingCustodianInfo:withContext:completion:];
  }

  v21 = [MEMORY[0x1E696ABC0] cdp_errorWithCode:-5003];
  (*(completionCopy + 2))(completionCopy, v21);
LABEL_12:
}

void __93__CDPCustodianRecoveryKeyController_recoverOctagonUsingCustodianInfo_withContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = _CDPLogSystem(v4);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v6)
    {
      v9 = 0;
      v7 = "Recover octagon usign custodian recovery key failed.";
      v8 = &v9;
LABEL_6:
      _os_log_impl(&dword_1DED99000, v5, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
    }
  }

  else if (v6)
  {
    *buf = 0;
    v7 = "Recover octagon usign custodian recovery key succeed.";
    v8 = buf;
    goto LABEL_6;
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32));
}

- (id)_initializeRecoveryKeyWithInfo:(id)info error:(id *)error
{
  infoCopy = info;
  v6 = _CDPLogSystem(infoCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [CDPCustodianRecoveryKeyController _initializeRecoveryKeyWithInfo:infoCopy error:?];
  }

  v7 = objc_alloc(MEMORY[0x1E69B7CD0]);
  wrappedRKC = [infoCopy wrappedRKC];
  wrappingKey = [infoCopy wrappingKey];
  custodianUUID = [infoCopy custodianUUID];
  v11 = [v7 initWithWrappedKey:wrappedRKC wrappingKey:wrappingKey uuid:custodianUUID error:error];

  return v11;
}

- (BOOL)verifyRecoveryKeyObservingSystemsHaveMatchingStateWithContext:(id)context error:(id *)error
{
  v36 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = [[CDPRecoveryKeyStatusProvider alloc] initWithContext:contextCopy];
  idmsHasRK = [(CDPRecoveryKeyStatusProvider *)v7 idmsHasRK];
  if (idmsHasRK)
  {
    cliqueConfiguration = [contextCopy cliqueConfiguration];
    if (cliqueConfiguration)
    {
      v31 = 0;
      v10 = [(CDPRecoveryKeyStatusProvider *)v7 isRecoveryKeySetInOctagonWithError:&v31];
      v11 = v31;
      v12 = v11;
      if (v11)
      {
        v13 = _CDPLogSystem(v11);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [CDPCustodianRecoveryKeyController verifyRecoveryKeyObservingSystemsHaveMatchingStateWithContext:error:];
        }

        if (error)
        {
          v14 = v12;
          LOBYTE(v10) = 0;
          *error = v12;
LABEL_40:

          goto LABEL_41;
        }

LABEL_39:
        LOBYTE(v10) = 0;
        goto LABEL_40;
      }

      _isSOSTrustAndSyncingEnabled = [(CDPCustodianRecoveryKeyController *)self _isSOSTrustAndSyncingEnabled];
      if (_isSOSTrustAndSyncingEnabled)
      {
        isSOSCompatibilityOptInNeeded = [contextCopy isSOSCompatibilityOptInNeeded];
        if (isSOSCompatibilityOptInNeeded)
        {
          v18 = [(CDPCustodianRecoveryKeyController *)self _isInSOSCircleWithContext:contextCopy];
          if (v18)
          {
            v30 = 0;
            v19 = [(CDPRecoveryKeyStatusProvider *)v7 isRecoveryKeySetInSOSWithError:&v30];
            v20 = v30;
            v21 = _CDPLogSystem(v20);
            v22 = v21;
            if (v20)
            {
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                [CDPCustodianRecoveryKeyController verifyRecoveryKeyObservingSystemsHaveMatchingStateWithContext:error:];
              }

              if (!error)
              {
                LOBYTE(v10) = 0;
                goto LABEL_49;
              }

              v23 = v20;
            }

            else
            {
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
              {
                [(CDPCustodianRecoveryKeyController *)v10 verifyRecoveryKeyObservingSystemsHaveMatchingStateWithContext:v19 error:v22];
              }

              LOBYTE(v10) = v10 & v19;
              if (!error || (v10 & 1) != 0)
              {
                goto LABEL_49;
              }

              v23 = _CDPStateError(-5317, 0);
            }

            LOBYTE(v10) = 0;
            *error = v23;
LABEL_49:

            goto LABEL_40;
          }

          v28 = _CDPLogSystem(v18);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1DED99000, v28, OS_LOG_TYPE_DEFAULT, "SOS Opt In is needed. First Resolve SOS Compat CFU", buf, 2u);
          }

          if (!error)
          {
            goto LABEL_39;
          }

          v27 = -5318;
LABEL_34:
          _CDPStateError(v27, 0);
          *error = LOBYTE(v10) = 0;
          goto LABEL_40;
        }

        v24 = _CDPLogSystem(isSOSCompatibilityOptInNeeded);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          v33 = 1;
          v34 = 1024;
          v35 = v10;
          v25 = "SOS Opt In is not needed, SOS RK status does not matter. idMSHasRK=%{BOOL}d, rkSetInOctagon=%{BOOL}d";
          goto LABEL_28;
        }
      }

      else
      {
        v24 = _CDPLogSystem(_isSOSTrustAndSyncingEnabled);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          v33 = 1;
          v34 = 1024;
          v35 = v10;
          v25 = "SOS trust and syncing is not enabled. idMSHasRK=%{BOOL}d, rkSetInOctagon=%{BOOL}d";
LABEL_28:
          _os_log_impl(&dword_1DED99000, v24, OS_LOG_TYPE_DEFAULT, v25, buf, 0xEu);
        }
      }

      if (error)
      {
        v26 = v10;
      }

      else
      {
        v26 = 1;
      }

      if (v26)
      {
        goto LABEL_40;
      }

      v27 = -5317;
      goto LABEL_34;
    }

    v15 = _CDPLogSystem(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CDPCustodianRecoveryKeyController verifyRecoveryKeyObservingSystemsHaveMatchingStateWithContext:error:];
    }

    if (error)
    {
      [MEMORY[0x1E696ABC0] cdp_errorWithCode:-5217 underlyingError:*error];
      *error = LOBYTE(v10) = 0;
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  else
  {
    cliqueConfiguration = _CDPLogSystem(idmsHasRK);
    if (os_log_type_enabled(cliqueConfiguration, OS_LOG_TYPE_DEBUG))
    {
      [CDPCustodianRecoveryKeyController verifyRecoveryKeyObservingSystemsHaveMatchingStateWithContext:error:];
    }

    LOBYTE(v10) = 1;
  }

LABEL_41:

  return v10;
}

- (BOOL)_isInSOSCircleWithContext:(id)context
{
  altDSID = [context altDSID];
  v4 = [CDPSOSCircleProxyImpl syncingStatusForAltDSID:altDSID]== 1;

  return v4;
}

- (void)checkCustodianRecoveryKey:(id)key withContext:(id)context completion:(id)completion
{
  keyCopy = key;
  contextCopy = context;
  completionCopy = completion;
  v10 = _CDPLogSystem(completionCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [CDPCustodianRecoveryKeyController checkCustodianRecoveryKey:withContext:completion:];
  }

  dsid = [contextCopy dsid];
  if (dsid)
  {
  }

  else
  {
    altDSID = [contextCopy altDSID];

    if (!altDSID)
    {
      v18 = _CDPLogSystem(v13);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        [CDPCustodianRecoveryKeyController checkCustodianRecoveryKey:withContext:completion:];
      }

      cliqueConfiguration = [MEMORY[0x1E696ABC0] cdp_errorWithCode:-5003];
      completionCopy[2](completionCopy, 0, cliqueConfiguration);
      goto LABEL_14;
    }
  }

  v14 = objc_opt_respondsToSelector();
  if (v14)
  {
    cliqueConfiguration = [contextCopy cliqueConfiguration];
    v16 = MEMORY[0x1E697AA80];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __86__CDPCustodianRecoveryKeyController_checkCustodianRecoveryKey_withContext_completion___block_invoke;
    v19[3] = &unk_1E869D6C8;
    v20 = completionCopy;
    [v16 checkCustodianRecoveryKey:cliqueConfiguration custodianRecoveryKeyUUID:keyCopy reply:v19];

LABEL_14:
    goto LABEL_15;
  }

  v17 = _CDPLogSystem(v14);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [CDPCustodianRecoveryKeyController checkCustodianRecoveryKey:withContext:completion:];
  }

  completionCopy[2](completionCopy, 0, 0);
LABEL_15:
}

void __86__CDPCustodianRecoveryKeyController_checkCustodianRecoveryKey_withContext_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a2;
  v5 = a3;
  v6 = _CDPLogSystem(v5);
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __86__CDPCustodianRecoveryKeyController_checkCustodianRecoveryKey_withContext_completion___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __86__CDPCustodianRecoveryKeyController_checkCustodianRecoveryKey_withContext_completion___block_invoke_cold_2(v3, v7);
  }

  (*(*(a1 + 32) + 16))();
}

void __85__CDPCustodianRecoveryKeyController_deleteRecoveryKeyWithContext_forUUID_completion___block_invoke_cold_2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, a2, a3, "Deleted custodian recovery key: for %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __80__CDPCustodianRecoveryKeyController_validateRecoveryKey_withContext_completion___block_invoke_cold_2(uint64_t a1)
{
  v1 = [*(a1 + 32) custodianUUID];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5(&dword_1DED99000, v2, v3, "Custodian recovery key is valid for: %@", v4, v5, v6, v7);
}

- (void)_initializeRecoveryKeyWithInfo:(void *)a1 error:.cold.1(void *a1)
{
  v1 = [a1 custodianUUID];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5(&dword_1DED99000, v2, v3, "Obtaining recovery key from security for custodian recovery with UUID: %{sensitive}@", v4, v5, v6, v7);
}

- (void)verifyRecoveryKeyObservingSystemsHaveMatchingStateWithContext:(os_log_t)log error:.cold.4(char a1, char a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3[0] = 67109632;
  v3[1] = 1;
  v4 = 1024;
  v5 = a1 & 1;
  v6 = 1024;
  v7 = a2 & 1;
  _os_log_debug_impl(&dword_1DED99000, log, OS_LOG_TYPE_DEBUG, "idMSHasRK=%{BOOL}d, rkSetInOctagon=%{BOOL}d, rkSetInSOS=%{BOOL}d", v3, 0x14u);
}

void __86__CDPCustodianRecoveryKeyController_checkCustodianRecoveryKey_withContext_completion___block_invoke_cold_2(char a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1 & 1;
  _os_log_debug_impl(&dword_1DED99000, a2, OS_LOG_TYPE_DEBUG, "Custodian recovery key exists: %{BOOL}d", v2, 8u);
}

@end