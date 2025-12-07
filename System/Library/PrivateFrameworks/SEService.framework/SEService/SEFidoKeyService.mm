@interface SEFidoKeyService
+ (id)shared;
- (BOOL)deleteFidoKeyFor:(id)for usingSession:(id)session withSessionSEID:(id)d error:(id *)error;
- (id)checkFidoKeyPresence:(id)presence usingSession:(id)session withSessionSEID:(id)d error:(id *)error;
- (id)checkMultipleFidoKeyPresence:(id)presence usingSession:(id)session withSessionSEID:(id)d error:(id *)error;
- (id)createFidoKeyForRelyingParty:(id)party relyingPartyAccountHash:(id)hash challenge:(id)challenge usingSession:(id)session withSessionSEID:(id)d error:(id *)error;
- (id)findAndAttest:(id)attest challenge:(id)challenge usingSession:(id)session withSessionSEID:(id)d error:(id *)error;
- (id)signMultipleWithFidoKeysFor:(id)for challenges:(id)challenges forEndpointIdentifiers:(id)identifiers usingSession:(id)session withSessionSEID:(id)d externalizedAuth:(id)auth error:(id *)error;
- (id)signWithFidoKeyFor:(id)for challenge:(id)challenge forNFCKeyWithIdentifier:(id)identifier usingSession:(id)session withSessionSEID:(id)d externalizedAuth:(id)auth error:(id *)error;
- (id)verifyWithFidoKeyFor:(id)for signedChallenge:(id)challenge usingSession:(id)session withSessionSEID:(id)d error:(id *)error;
@end

@implementation SEFidoKeyService

+ (id)shared
{
  if (shared_onceToken != -1)
  {
    +[SEFidoKeyService shared];
  }

  v3 = shared_singleton;

  return v3;
}

uint64_t __26__SEFidoKeyService_shared__block_invoke()
{
  shared_singleton = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (id)createFidoKeyForRelyingParty:(id)party relyingPartyAccountHash:(id)hash challenge:(id)challenge usingSession:(id)session withSessionSEID:(id)d error:(id *)error
{
  partyCopy = party;
  hashCopy = hash;
  challengeCopy = challenge;
  sessionCopy = session;
  dCopy = d;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__2;
  v39 = __Block_byref_object_dispose__2;
  v40 = 0;
  v18 = +[SESClient sharedClient];
  v19 = (v36 + 5);
  obj = v36[5];
  v20 = [(SESClient *)v18 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v19, obj);

  if (v20 && !v36[5])
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__2;
    v32 = __Block_byref_object_dispose__2;
    v33 = 0;
    if (sessionCopy)
    {
      v22 = [SEProxy withSession:sessionCopy seid:dCopy];
    }

    else
    {
      v22 = 0;
    }

    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __118__SEFidoKeyService_createFidoKeyForRelyingParty_relyingPartyAccountHash_challenge_usingSession_withSessionSEID_error___block_invoke;
    v27[3] = &unk_1E82D1040;
    v27[4] = &v28;
    v27[5] = &v35;
    [v20 createFiDOKeyForRelyingParty:partyCopy relyingPartyAccountHash:hashCopy challenge:challengeCopy usingProxy:v22 callback:v27];
    if (sessionCopy)
    {
    }

    if (!v29[5] && !v36[5])
    {
      v23 = SESDefaultLogObject();
      v24 = SESCreateAndLogError();
      v25 = v36[5];
      v36[5] = v24;
    }

    if (error)
    {
      *error = v36[5];
    }

    v21 = v29[5];
    _Block_object_dispose(&v28, 8);
  }

  else if (error)
  {
    SESEnsureError();
    *error = v21 = 0;
  }

  else
  {
    v21 = 0;
  }

  _Block_object_dispose(&v35, 8);

  return v21;
}

void __118__SEFidoKeyService_createFidoKeyForRelyingParty_relyingPartyAccountHash_challenge_usingSession_withSessionSEID_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)checkFidoKeyPresence:(id)presence usingSession:(id)session withSessionSEID:(id)d error:(id *)error
{
  v24[1] = *MEMORY[0x1E69E9840];
  presenceCopy = presence;
  v24[0] = presenceCopy;
  v11 = MEMORY[0x1E695DEC8];
  dCopy = d;
  sessionCopy = session;
  v14 = [v11 arrayWithObjects:v24 count:1];
  v15 = [(SEFidoKeyService *)self checkMultipleFidoKeyPresence:v14 usingSession:sessionCopy withSessionSEID:dCopy error:error];

  if ([v15 count] == 1 && (objc_msgSend(v15, "objectAtIndexedSubscript:", 0), v16 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v16, (isKindOfClass & 1) != 0))
  {
    v18 = SESDefaultLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = [v15 objectAtIndexedSubscript:0];
      v22 = 138412290;
      v23 = v19;
      _os_log_impl(&dword_1C7B9A000, v18, OS_LOG_TYPE_INFO, "Single Check Presence %@", &v22, 0xCu);
    }

    v20 = [v15 objectAtIndexedSubscript:0];
  }

  else if (error)
  {
    SESEnsureError();
    *error = v20 = 0;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)signWithFidoKeyFor:(id)for challenge:(id)challenge forNFCKeyWithIdentifier:(id)identifier usingSession:(id)session withSessionSEID:(id)d externalizedAuth:(id)auth error:(id *)error
{
  v38[1] = *MEMORY[0x1E69E9840];
  forCopy = for;
  challengeCopy = challenge;
  identifierCopy = identifier;
  sessionCopy = session;
  dCopy = d;
  authCopy = auth;
  v34 = forCopy;
  v38[0] = forCopy;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
  v37 = challengeCopy;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
  if (identifierCopy)
  {
    v36 = identifierCopy;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
  }

  else
  {
    v23 = 0;
  }

  v35 = 0;
  v24 = [(SEFidoKeyService *)self signMultipleWithFidoKeysFor:v21 challenges:v22 forEndpointIdentifiers:v23 usingSession:sessionCopy withSessionSEID:dCopy externalizedAuth:authCopy error:&v35];
  v25 = v35;
  if (identifierCopy)
  {
  }

  if ([v24 count] == 1)
  {
    v26 = [v24 objectAtIndexedSubscript:0];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    errorCopy2 = [v24 objectAtIndexedSubscript:0];
    if (isKindOfClass)
    {
      goto LABEL_17;
    }

    objc_opt_class();
    v29 = objc_opt_isKindOfClass();

    if (v29)
    {
      errorCopy3 = error;
      if (error)
      {
        v31 = [v24 objectAtIndexedSubscript:0];
LABEL_13:
        errorCopy2 = 0;
        *errorCopy3 = v31;
        goto LABEL_17;
      }
    }

    else
    {
      errorCopy2 = error;
      if (!error)
      {
        goto LABEL_17;
      }

      v32 = SESDefaultLogObject();
      *error = SESCreateAndLogError();
    }
  }

  else
  {
    errorCopy3 = error;
    if (error)
    {
      v31 = SESEnsureError();
      goto LABEL_13;
    }
  }

  errorCopy2 = 0;
LABEL_17:

  return errorCopy2;
}

- (id)verifyWithFidoKeyFor:(id)for signedChallenge:(id)challenge usingSession:(id)session withSessionSEID:(id)d error:(id *)error
{
  forCopy = for;
  challengeCopy = challenge;
  sessionCopy = session;
  dCopy = d;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__2;
  v36 = __Block_byref_object_dispose__2;
  v37 = 0;
  v15 = +[SESClient sharedClient];
  v16 = (v33 + 5);
  obj = v33[5];
  v17 = [(SESClient *)v15 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v16, obj);

  if (v17 && !v33[5])
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__2;
    v29 = __Block_byref_object_dispose__2;
    v30 = 0;
    if (sessionCopy)
    {
      v19 = [SEProxy withSession:sessionCopy seid:dCopy];
    }

    else
    {
      v19 = 0;
    }

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __92__SEFidoKeyService_verifyWithFidoKeyFor_signedChallenge_usingSession_withSessionSEID_error___block_invoke;
    v24[3] = &unk_1E82D1068;
    v24[4] = &v25;
    v24[5] = &v32;
    [v17 verifyWithFidoKeyFor:forCopy signedChallenge:challengeCopy usingProxy:v19 callback:v24];
    if (sessionCopy)
    {
    }

    if (!v26[5] && !v33[5])
    {
      v20 = SESDefaultLogObject();
      v21 = SESCreateAndLogError();
      v22 = v33[5];
      v33[5] = v21;
    }

    if (error)
    {
      *error = v33[5];
    }

    v18 = v26[5];
    _Block_object_dispose(&v25, 8);
  }

  else if (error)
  {
    SESEnsureError();
    *error = v18 = 0;
  }

  else
  {
    v18 = 0;
  }

  _Block_object_dispose(&v32, 8);

  return v18;
}

void __92__SEFidoKeyService_verifyWithFidoKeyFor_signedChallenge_usingSession_withSessionSEID_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (BOOL)deleteFidoKeyFor:(id)for usingSession:(id)session withSessionSEID:(id)d error:(id *)error
{
  forCopy = for;
  sessionCopy = session;
  dCopy = d;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__2;
  v32 = __Block_byref_object_dispose__2;
  v33 = 0;
  v12 = +[SESClient sharedClient];
  v13 = (v29 + 5);
  obj = v29[5];
  v14 = [(SESClient *)v12 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v13, obj);

  if (v14 && !v29[5])
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0;
    if (sessionCopy)
    {
      v16 = [SEProxy withSession:sessionCopy seid:dCopy];
    }

    else
    {
      v16 = 0;
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __72__SEFidoKeyService_deleteFidoKeyFor_usingSession_withSessionSEID_error___block_invoke;
    v22[3] = &unk_1E82D0DF0;
    v22[4] = &v23;
    v22[5] = &v28;
    [v14 deleteFiDOKeyFor:forCopy usingProxy:v16 callback:v22];
    if (sessionCopy)
    {
    }

    v17 = v29;
    if ((v24[3] & 1) == 0 && !v29[5])
    {
      v18 = SESDefaultLogObject();
      v19 = SESCreateAndLogError();
      v20 = v29[5];
      v29[5] = v19;

      v17 = v29;
    }

    if (error)
    {
      *error = v17[5];
      v17 = v29;
    }

    v15 = v17[5] == 0;
    _Block_object_dispose(&v23, 8);
  }

  else if (error)
  {
    SESEnsureError();
    *error = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

  _Block_object_dispose(&v28, 8);
  return v15;
}

- (id)checkMultipleFidoKeyPresence:(id)presence usingSession:(id)session withSessionSEID:(id)d error:(id *)error
{
  v39 = *MEMORY[0x1E69E9840];
  presenceCopy = presence;
  sessionCopy = session;
  dCopy = d;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__2;
  v35 = __Block_byref_object_dispose__2;
  v36 = 0;
  v12 = +[SESClient sharedClient];
  v13 = (v32 + 5);
  obj = v32[5];
  v14 = [(SESClient *)v12 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v13, obj);

  if (v14 && !v32[5])
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__2;
    v28 = __Block_byref_object_dispose__2;
    v29 = 0;
    if (sessionCopy)
    {
      v16 = [SEProxy withSession:sessionCopy seid:dCopy];
    }

    else
    {
      v16 = 0;
    }

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __84__SEFidoKeyService_checkMultipleFidoKeyPresence_usingSession_withSessionSEID_error___block_invoke;
    v23[3] = &unk_1E82D0C38;
    v23[4] = &v24;
    v23[5] = &v31;
    [v14 checkMultipleFidoKeyPresence:presenceCopy usingProxy:v16 callback:v23];
    if (sessionCopy)
    {
    }

    if (!v25[5] && !v32[5])
    {
      v17 = SESDefaultLogObject();
      v18 = SESCreateAndLogError();
      v19 = v32[5];
      v32[5] = v18;
    }

    v20 = SESDefaultLogObject();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = v25[5];
      *buf = 138412290;
      v38 = v21;
      _os_log_impl(&dword_1C7B9A000, v20, OS_LOG_TYPE_INFO, "Multiple Check Presence %@", buf, 0xCu);
    }

    v15 = v25[5];
    _Block_object_dispose(&v24, 8);
  }

  else if (error)
  {
    SESEnsureError();
    *error = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

  _Block_object_dispose(&v31, 8);

  return v15;
}

void __84__SEFidoKeyService_checkMultipleFidoKeyPresence_usingSession_withSessionSEID_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)findAndAttest:(id)attest challenge:(id)challenge usingSession:(id)session withSessionSEID:(id)d error:(id *)error
{
  v43 = *MEMORY[0x1E69E9840];
  attestCopy = attest;
  challengeCopy = challenge;
  sessionCopy = session;
  dCopy = d;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__2;
  v39 = __Block_byref_object_dispose__2;
  v40 = 0;
  v15 = +[SESClient sharedClient];
  v16 = (v36 + 5);
  obj = v36[5];
  v17 = [(SESClient *)v15 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v16, obj);

  if (!v17 || v36[5])
  {
    if (error)
    {
      SESEnsureError();
      *error = v18 = 0;
    }

    else
    {
      v18 = 0;
    }

    goto LABEL_19;
  }

  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__2;
  v32 = __Block_byref_object_dispose__2;
  v33 = 0;
  if (sessionCopy)
  {
    v19 = [SEProxy withSession:sessionCopy seid:dCopy];
  }

  else
  {
    v19 = 0;
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __79__SEFidoKeyService_findAndAttest_challenge_usingSession_withSessionSEID_error___block_invoke;
  v27[3] = &unk_1E82D1040;
  v27[4] = &v28;
  v27[5] = &v35;
  [v17 findAndAttest:attestCopy challenge:challengeCopy usingProxy:v19 callback:v27];
  if (sessionCopy)
  {
  }

  v20 = v36[5];
  if (v20)
  {
    if (error)
    {
      goto LABEL_13;
    }
  }

  else if (!v29[5])
  {
    v24 = SESDefaultLogObject();
    v25 = SESCreateAndLogError();
    v26 = v36[5];
    v36[5] = v25;

    v20 = v36[5];
    if (error)
    {
LABEL_13:
      if (v20)
      {
        *error = v20;
      }
    }
  }

  v21 = SESDefaultLogObject();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = v29[5];
    *buf = 138412290;
    v42 = v22;
    _os_log_impl(&dword_1C7B9A000, v21, OS_LOG_TYPE_INFO, "Find FiDO key %@", buf, 0xCu);
  }

  v18 = v29[5];
  _Block_object_dispose(&v28, 8);

LABEL_19:
  _Block_object_dispose(&v35, 8);

  return v18;
}

void __79__SEFidoKeyService_findAndAttest_challenge_usingSession_withSessionSEID_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)signMultipleWithFidoKeysFor:(id)for challenges:(id)challenges forEndpointIdentifiers:(id)identifiers usingSession:(id)session withSessionSEID:(id)d externalizedAuth:(id)auth error:(id *)error
{
  forCopy = for;
  challengesCopy = challenges;
  identifiersCopy = identifiers;
  sessionCopy = session;
  dCopy = d;
  authCopy = auth;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__2;
  v42 = __Block_byref_object_dispose__2;
  v43 = 0;
  v20 = +[SESClient sharedClient];
  v21 = (v39 + 5);
  obj = v39[5];
  v22 = [(SESClient *)v20 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v21, obj);

  if (v22 && !v39[5])
  {
    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy__2;
    v35 = __Block_byref_object_dispose__2;
    v36 = 0;
    if (sessionCopy)
    {
      v24 = [SEProxy withSession:sessionCopy seid:dCopy];
    }

    else
    {
      v24 = 0;
    }

    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __134__SEFidoKeyService_signMultipleWithFidoKeysFor_challenges_forEndpointIdentifiers_usingSession_withSessionSEID_externalizedAuth_error___block_invoke;
    v30[3] = &unk_1E82D0C38;
    v30[4] = &v31;
    v30[5] = &v38;
    [v22 signMultipleWithFidoKeysFor:forCopy challenges:challengesCopy forEndpointIdentifiers:identifiersCopy externalizedAuth:authCopy usingProxy:v24 callback:v30];
    if (sessionCopy)
    {
    }

    v25 = v32[5];
    if (!v25)
    {
      if (v39[5])
      {
        v25 = 0;
      }

      else
      {
        v26 = SESDefaultLogObject();
        v27 = SESCreateAndLogError();
        v28 = v39[5];
        v39[5] = v27;

        v25 = v32[5];
      }
    }

    v23 = v25;
    _Block_object_dispose(&v31, 8);
  }

  else if (error)
  {
    SESEnsureError();
    *error = v23 = 0;
  }

  else
  {
    v23 = 0;
  }

  _Block_object_dispose(&v38, 8);

  return v23;
}

void __134__SEFidoKeyService_signMultipleWithFidoKeysFor_challenges_forEndpointIdentifiers_usingSession_withSessionSEID_externalizedAuth_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

@end