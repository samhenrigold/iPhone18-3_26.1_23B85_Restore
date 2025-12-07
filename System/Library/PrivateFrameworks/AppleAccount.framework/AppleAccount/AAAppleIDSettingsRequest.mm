@interface AAAppleIDSettingsRequest
- (AAAppleIDSettingsRequest)initWithGrandSlamAccount:(id)account accountStore:(id)store;
- (id)urlRequest;
@end

@implementation AAAppleIDSettingsRequest

- (AAAppleIDSettingsRequest)initWithGrandSlamAccount:(id)account accountStore:(id)store
{
  accountCopy = account;
  storeCopy = store;
  v12.receiver = self;
  v12.super_class = AAAppleIDSettingsRequest;
  v9 = [(AAAppleIDSettingsRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_grandSlamAccount, account);
    objc_storeStrong(&v10->_store, store);
    v10->_forceGSToken = 1;
  }

  return v10;
}

- (id)urlRequest
{
  v30[1] = *MEMORY[0x1E69E9840];
  v29.receiver = self;
  v29.super_class = AAAppleIDSettingsRequest;
  urlRequest = [(AARequest *)&v29 urlRequest];
  v4 = [urlRequest mutableCopy];

  [v4 setHTTPMethod:@"GET"];
  grandSlamAccount = self->_grandSlamAccount;
  if (!grandSlamAccount)
  {
    forceGSToken = [(AAAppleIDSettingsRequest *)self forceGSToken];
    if (forceGSToken)
    {
      v7 = _AALogSystem(forceGSToken);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B6F6A000, v7, OS_LOG_TYPE_DEFAULT, "GrandSlam signing will fail because no GS account was provided.", buf, 2u);
      }

      goto LABEL_12;
    }

    grandSlamAccount = self->_grandSlamAccount;
  }

  aida_dsid = [(ACAccount *)grandSlamAccount aida_dsid];
  [v4 aa_addDeviceProvisioningInfoHeadersWithDSID:aida_dsid];

  v7 = [(ACAccountStore *)self->_store credentialForAccount:self->_grandSlamAccount serviceID:@"com.apple.gs.appleid.auth"];
  *buf = 0;
  v24 = buf;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__8;
  v27 = __Block_byref_object_dispose__8;
  token = [v7 token];
  if (!*(v24 + 5))
  {
    forceGSToken2 = [(AAAppleIDSettingsRequest *)self forceGSToken];
    if (forceGSToken2)
    {
      v10 = _AALogSystem(forceGSToken2);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v22 = 0;
        _os_log_impl(&dword_1B6F6A000, v10, OS_LOG_TYPE_DEFAULT, "Could not get GS auth on first try. Will need to prompt for password", v22, 2u);
      }

      v11 = dispatch_semaphore_create(0);
      store = self->_store;
      v13 = self->_grandSlamAccount;
      v30[0] = @"com.apple.gs.appleid.auth";
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __38__AAAppleIDSettingsRequest_urlRequest__block_invoke;
      v19[3] = &unk_1E7C9C508;
      v19[4] = self;
      v21 = buf;
      v15 = v11;
      v20 = v15;
      [(ACAccountStore *)store renewCredentialsForAccount:v13 services:v14 completion:v19];

      dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
    }
  }

  aida_alternateDSID = [(ACAccount *)self->_grandSlamAccount aida_alternateDSID];
  [v4 aa_addGrandslamAuthorizationHeaderWithAltDSID:aida_alternateDSID grandslamToken:*(v24 + 5)];

  v17 = +[AADeviceInfo udid];
  [v4 addValue:v17 forHTTPHeaderField:@"X-AppleID-Device-Udid"];

  _Block_object_dispose(buf, 8);
LABEL_12:

  return v4;
}

void __38__AAAppleIDSettingsRequest_urlRequest__block_invoke(uint64_t a1, uint64_t a2, void *a3)
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
    v7 = [*(*(a1 + 32) + 64) credentialForAccount:*(*(a1 + 32) + 80) serviceID:@"com.apple.gs.appleid.auth"];
    v8 = [v7 token];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

@end