@interface SESPrivacyKeyManager
+ (id)sharedManager;
- (BOOL)deletePrivacyKey:(id)key outError:(id *)error;
- (id)createPrivacyKeyForGroupIdentifier:(id)identifier withOptions:(id)options outError:(id *)error;
- (id)decryptPayload:(id)payload withGroupIdentifier:(id)identifier outError:(id *)error;
- (id)encryptData:(id)data scheme:(id)scheme recipientPublicKey:(id)key outError:(id *)error;
- (id)privacyKeysForGroupIdentifier:(id)identifier privacyKeyIdentifier:(id)keyIdentifier outError:(id *)error;
@end

@implementation SESPrivacyKeyManager

+ (id)sharedManager
{
  if (sharedManager_onceToken[0] != -1)
  {
    +[SESPrivacyKeyManager sharedManager];
  }

  v3 = sharedManager_shared;

  return v3;
}

uint64_t __37__SESPrivacyKeyManager_sharedManager__block_invoke()
{
  sharedManager_shared = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (id)privacyKeysForGroupIdentifier:(id)identifier privacyKeyIdentifier:(id)keyIdentifier outError:(id *)error
{
  identifierCopy = identifier;
  keyIdentifierCopy = keyIdentifier;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__9;
  v29 = __Block_byref_object_dispose__9;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__9;
  v23 = __Block_byref_object_dispose__9;
  v24 = 0;
  v9 = +[SESClient sharedClient];
  v10 = (v20 + 5);
  obj = v20[5];
  v11 = [(SESClient *)v9 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v10, obj);

  if (v11 && !v20[5])
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __84__SESPrivacyKeyManager_privacyKeysForGroupIdentifier_privacyKeyIdentifier_outError___block_invoke;
    v17[3] = &unk_1E82D0C38;
    v17[4] = &v25;
    v17[5] = &v19;
    [v11 privacyKeysForGroupIdentifier:identifierCopy keyIdentifier:keyIdentifierCopy completion:v17];
    if (!v26[5] && !v20[5])
    {
      v13 = SESDefaultLogObject();
      v14 = SESCreateAndLogError();
      v15 = v20[5];
      v20[5] = v14;
    }

    if (error)
    {
      *error = v20[5];
    }

    v12 = v26[5];
  }

  else if (error)
  {
    SESEnsureError();
    *error = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v12;
}

void __84__SESPrivacyKeyManager_privacyKeysForGroupIdentifier_privacyKeyIdentifier_outError___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)createPrivacyKeyForGroupIdentifier:(id)identifier withOptions:(id)options outError:(id *)error
{
  identifierCopy = identifier;
  optionsCopy = options;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__9;
  v29 = __Block_byref_object_dispose__9;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__9;
  v23 = __Block_byref_object_dispose__9;
  v24 = 0;
  v9 = +[SESClient sharedClient];
  v10 = (v20 + 5);
  obj = v20[5];
  v11 = [(SESClient *)v9 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v10, obj);

  if (v11 && !v20[5])
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __80__SESPrivacyKeyManager_createPrivacyKeyForGroupIdentifier_withOptions_outError___block_invoke;
    v17[3] = &unk_1E82D1710;
    v17[4] = &v25;
    v17[5] = &v19;
    [v11 createPrivacyKeyForGroupIdentifier:identifierCopy withOptions:optionsCopy completion:v17];
    if (!v26[5] && !v20[5])
    {
      v13 = SESDefaultLogObject();
      v14 = SESCreateAndLogError();
      v15 = v20[5];
      v20[5] = v14;
    }

    if (error)
    {
      *error = v20[5];
    }

    v12 = v26[5];
  }

  else if (error)
  {
    SESEnsureError();
    *error = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v12;
}

void __80__SESPrivacyKeyManager_createPrivacyKeyForGroupIdentifier_withOptions_outError___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (BOOL)deletePrivacyKey:(id)key outError:(id *)error
{
  keyCopy = key;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__9;
  v25 = __Block_byref_object_dispose__9;
  v26 = 0;
  v6 = +[SESClient sharedClient];
  v7 = (v22 + 5);
  obj = v22[5];
  v8 = [(SESClient *)v6 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v7, obj);

  if (v8 && !v22[5])
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __50__SESPrivacyKeyManager_deletePrivacyKey_outError___block_invoke;
    v15[3] = &unk_1E82D0DF0;
    v15[4] = &v16;
    v15[5] = &v21;
    [v8 deletePrivacyKey:keyCopy completion:v15];
    v10 = v22;
    if ((v17[3] & 1) == 0 && !v22[5])
    {
      v11 = SESDefaultLogObject();
      v12 = SESCreateAndLogError();
      v13 = v22[5];
      v22[5] = v12;

      v10 = v22;
    }

    if (error)
    {
      *error = v10[5];
      v10 = v22;
    }

    v9 = v10[5] == 0;
    _Block_object_dispose(&v16, 8);
  }

  else if (error)
  {
    SESEnsureError();
    *error = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

  _Block_object_dispose(&v21, 8);
  return v9;
}

- (id)decryptPayload:(id)payload withGroupIdentifier:(id)identifier outError:(id *)error
{
  payloadCopy = payload;
  identifierCopy = identifier;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__9;
  v29 = __Block_byref_object_dispose__9;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__9;
  v23 = __Block_byref_object_dispose__9;
  v24 = 0;
  v9 = +[SESClient sharedClient];
  v10 = (v20 + 5);
  obj = v20[5];
  v11 = [(SESClient *)v9 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v10, obj);

  if (v11 && !v20[5])
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __68__SESPrivacyKeyManager_decryptPayload_withGroupIdentifier_outError___block_invoke;
    v17[3] = &unk_1E82D0E40;
    v17[4] = &v25;
    v17[5] = &v19;
    [v11 decryptPayload:payloadCopy withGroupIdentifier:identifierCopy completion:v17];
    if (!v26[5] && !v20[5])
    {
      v13 = SESDefaultLogObject();
      v14 = SESCreateAndLogError();
      v15 = v20[5];
      v20[5] = v14;
    }

    if (error)
    {
      *error = v20[5];
    }

    v12 = v26[5];
  }

  else if (error)
  {
    SESEnsureError();
    *error = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v12;
}

void __68__SESPrivacyKeyManager_decryptPayload_withGroupIdentifier_outError___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)encryptData:(id)data scheme:(id)scheme recipientPublicKey:(id)key outError:(id *)error
{
  dataCopy = data;
  schemeCopy = scheme;
  keyCopy = key;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__9;
  v32 = __Block_byref_object_dispose__9;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__9;
  v26 = __Block_byref_object_dispose__9;
  v27 = 0;
  v12 = +[SESClient sharedClient];
  v13 = (v23 + 5);
  obj = v23[5];
  v14 = [(SESClient *)v12 synchronousRemoteObjectProxyWithError:?];
  objc_storeStrong(v13, obj);

  if (v14 && !v23[5])
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __71__SESPrivacyKeyManager_encryptData_scheme_recipientPublicKey_outError___block_invoke;
    v20[3] = &unk_1E82D1198;
    v20[4] = &v28;
    v20[5] = &v22;
    [v14 encryptPayload:dataCopy encryptionScheme:schemeCopy recipientPublicKey:keyCopy completion:v20];
    if (!v29[5] && !v23[5])
    {
      v16 = SESDefaultLogObject();
      v17 = SESCreateAndLogError();
      v18 = v23[5];
      v23[5] = v17;
    }

    if (error)
    {
      *error = v23[5];
    }

    v15 = v29[5];
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

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v15;
}

void __71__SESPrivacyKeyManager_encryptData_scheme_recipientPublicKey_outError___block_invoke(uint64_t a1, void *a2, void *a3)
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