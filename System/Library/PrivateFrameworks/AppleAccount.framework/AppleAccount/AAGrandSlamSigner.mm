@interface AAGrandSlamSigner
- (AAGrandSlamSigner)initWithAccountStore:(id)store grandSlamAccount:(id)account appTokenID:(id)d;
- (AAGrandSlamSigner)initWithAppleAccount:(id)account grandSlamAccount:(id)slamAccount accountStore:(id)store appTokenID:(id)d;
- (BOOL)signURLRequest:(id)request isUserInitiated:(BOOL)initiated;
@end

@implementation AAGrandSlamSigner

- (AAGrandSlamSigner)initWithAccountStore:(id)store grandSlamAccount:(id)account appTokenID:(id)d
{
  storeCopy = store;
  accountCopy = account;
  dCopy = d;
  v18.receiver = self;
  v18.super_class = AAGrandSlamSigner;
  v12 = [(AAGrandSlamSigner *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_accountStore, store);
    objc_storeStrong(&v13->_grandSlamAccount, account);
    v14 = [dCopy copy];
    appTokenID = v13->_appTokenID;
    v13->_appTokenID = v14;

    headerFieldKey = v13->_headerFieldKey;
    v13->_headerFieldKey = @"X-Apple-GS-Token";
  }

  return v13;
}

- (AAGrandSlamSigner)initWithAppleAccount:(id)account grandSlamAccount:(id)slamAccount accountStore:(id)store appTokenID:(id)d
{
  accountCopy = account;
  dCopy = d;
  slamAccountCopy = slamAccount;
  accountStore = [slamAccountCopy accountStore];
  v13 = accountStore;
  if (accountStore)
  {
    accountStore2 = accountStore;
  }

  else
  {
    accountStore2 = [accountCopy accountStore];
  }

  v15 = accountStore2;

  v16 = [(AAGrandSlamSigner *)self initWithAccountStore:v15 grandSlamAccount:slamAccountCopy appTokenID:dCopy];
  return v16;
}

- (BOOL)signURLRequest:(id)request isUserInitiated:(BOOL)initiated
{
  initiatedCopy = initiated;
  v40[2] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  grandSlamAccount = self->_grandSlamAccount;
  if (grandSlamAccount)
  {
    aida_alternateDSID = [(ACAccount *)grandSlamAccount aida_alternateDSID];

    if (!aida_alternateDSID)
    {
      v26 = 0;
      goto LABEL_16;
    }

    v9 = [(ACAccountStore *)self->_accountStore credentialForAccount:self->_grandSlamAccount serviceID:self->_appTokenID];
    *v32 = 0;
    v33 = v32;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__12;
    v36 = __Block_byref_object_dispose__12;
    token = [v9 token];
    v37 = token;
    if (*(v33 + 5))
    {
      goto LABEL_7;
    }

    v11 = _AALogSystem(token);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "Could not get GS auth on first try. Will need to prompt for password", buf, 2u);
    }

    v12 = dispatch_semaphore_create(0);
    v39[0] = *MEMORY[0x1E6959AA8];
    v13 = [MEMORY[0x1E696AD98] numberWithBool:initiatedCopy];
    v40[0] = v13;
    v39[1] = *MEMORY[0x1E6959A90];
    appTokenID = self->_appTokenID;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&appTokenID count:1];
    v40[1] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:2];

    accountStore = self->_accountStore;
    v17 = self->_grandSlamAccount;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __52__AAGrandSlamSigner_signURLRequest_isUserInitiated___block_invoke;
    v28[3] = &unk_1E7C9C508;
    v28[4] = self;
    v30 = v32;
    v18 = v12;
    v29 = v18;
    [(ACAccountStore *)accountStore renewCredentialsForAccount:v17 options:v15 completion:v28];
    dispatch_semaphore_wait(v18, 0xFFFFFFFFFFFFFFFFLL);

    if (*(v33 + 5))
    {
LABEL_7:
      aida_dsid = [(ACAccount *)self->_grandSlamAccount aida_dsid];
      if (self->_useAltDSID)
      {
        aida_alternateDSID2 = [(ACAccount *)self->_grandSlamAccount aida_alternateDSID];

        aida_dsid = aida_alternateDSID2;
      }

      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", aida_dsid, *(v33 + 5)];
      v23 = [v22 dataUsingEncoding:4];
      v24 = [v23 base64EncodedStringWithOptions:0];

      [requestCopy setValue:v24 forHTTPHeaderField:self->_headerFieldKey];
      aida_dsid2 = [(ACAccount *)self->_grandSlamAccount aida_dsid];
      [requestCopy aa_addDeviceProvisioningInfoHeadersWithDSID:aida_dsid2];

      v26 = 1;
    }

    else
    {
      aida_dsid = _AALogSystem(v19);
      if (os_log_type_enabled(aida_dsid, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B6F6A000, aida_dsid, OS_LOG_TYPE_DEFAULT, "Error: still no GS token even after calling renewCredentialsForAccount.", buf, 2u);
      }

      v26 = 0;
    }

    _Block_object_dispose(v32, 8);
  }

  else
  {
    v9 = _AALogSystem(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v32 = 0;
      _os_log_impl(&dword_1B6F6A000, v9, OS_LOG_TYPE_DEFAULT, "GrandSlam signing failed because no GS account was provided.", v32, 2u);
    }

    v26 = 0;
  }

LABEL_16:
  return v26;
}

void __52__AAGrandSlamSigner_signURLRequest_isUserInitiated___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = _AALogSystem(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134218242;
      v12 = a2;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_1B6F6A000, v7, OS_LOG_TYPE_DEFAULT, "No way to sign request with GS token because renewal of GS credential failed: %ld, %@", &v11, 0x16u);
    }
  }

  else
  {
    v7 = [*(*(a1 + 32) + 8) credentialForAccount:*(*(a1 + 32) + 16) serviceID:*(*(a1 + 32) + 24)];
    v8 = [v7 token];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

@end