@interface FAFamilyEligibilityRequester
- (FAFamilyEligibilityRequester)init;
- (FAFamilyEligibilityRequester)initWithAccountManager:(id)manager;
- (id)_appleAccount;
- (id)_grandSlamSigner;
- (void)requestFamilyEligibilityWithCompletion:(id)completion;
@end

@implementation FAFamilyEligibilityRequester

- (FAFamilyEligibilityRequester)init
{
  [(FAFamilyEligibilityRequester *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (FAFamilyEligibilityRequester)initWithAccountManager:(id)manager
{
  managerCopy = manager;
  v13.receiver = self;
  v13.super_class = FAFamilyEligibilityRequester;
  v6 = [(FAFamilyEligibilityRequester *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountManager, manager);
    v7->_allowsAuthenticationPrompt = 0;
    v8 = objc_alloc_init(MEMORY[0x277CCABD8]);
    networkActivityQueue = v7->_networkActivityQueue;
    v7->_networkActivityQueue = v8;

    v10 = v7->_networkActivityQueue;
    v11 = dispatch_get_global_queue(25, 0);
    [(NSOperationQueue *)v10 setUnderlyingQueue:v11];
  }

  return v7;
}

- (void)requestFamilyEligibilityWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__FAFamilyEligibilityRequester_requestFamilyEligibilityWithCompletion___block_invoke;
  aBlock[3] = &unk_2782F2B38;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __71__FAFamilyEligibilityRequester_requestFamilyEligibilityWithCompletion___block_invoke_2;
  v23[3] = &unk_2782F2B88;
  v6 = completionCopy;
  v24 = v6;
  v7 = _Block_copy(v23);
  _appleAccount = [(FAFamilyEligibilityRequester *)self _appleAccount];

  if (_appleAccount)
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __71__FAFamilyEligibilityRequester_requestFamilyEligibilityWithCompletion___block_invoke_35;
    v21[3] = &unk_2782F2BB0;
    v10 = v7;
    v22 = v10;
    v11 = _Block_copy(v21);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __71__FAFamilyEligibilityRequester_requestFamilyEligibilityWithCompletion___block_invoke_37;
    v17[3] = &unk_2782F2C28;
    v17[4] = self;
    v12 = v5;
    v18 = v12;
    v19 = v11;
    v20 = v10;
    v13 = v11;
    v14 = _Block_copy(v17);
    (*(v12 + 2))(v12, v14);

    v15 = v22;
  }

  else
  {
    v16 = _FALogSystem(v9);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [FAFamilyEligibilityRequester requestFamilyEligibilityWithCompletion:v16];
    }

    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D080B8] code:-1004 userInfo:0];
    (*(v7 + 2))(v7, 0, v15);
  }
}

void __71__FAFamilyEligibilityRequester_requestFamilyEligibilityWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CEC7E8];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [*(a1 + 32) _grandSlamSigner];
  v10 = [v5 initWithGrandSlamSigner:v6];

  v7 = [MEMORY[0x277CB8F48] ams_sharedAccountStore];
  v8 = [v7 ams_activeiTunesAccount];
  [v10 setITunesAccount:v8];

  v9 = [objc_alloc(MEMORY[0x277CEC840]) initWithRequest:v10 handler:v4];
  [*(*(a1 + 32) + 24) addOperation:v9];
}

void __71__FAFamilyEligibilityRequester_requestFamilyEligibilityWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__FAFamilyEligibilityRequester_requestFamilyEligibilityWithCompletion___block_invoke_3;
  block[3] = &unk_2782F2B60;
  v7 = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  v11 = v5;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __71__FAFamilyEligibilityRequester_requestFamilyEligibilityWithCompletion___block_invoke_35(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _FALogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_21BB35000, v4, OS_LOG_TYPE_DEFAULT, "Eligibility Callback", v7, 2u);
  }

  v5 = *(a1 + 32);
  if (v3)
  {
    v6 = [v3 error];
    (*(v5 + 16))(v5, v3, v6);
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D080B8] code:-1002 userInfo:0];
    (*(v5 + 16))(v5, 0, v6);
  }
}

void __71__FAFamilyEligibilityRequester_requestFamilyEligibilityWithCompletion___block_invoke_37(id *a1, void *a2)
{
  v19[3] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 statusCode] == 401)
  {
    v4 = _FALogSystem(401);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21BB35000, v4, OS_LOG_TYPE_DEFAULT, "Family eligibility check request returned 401. We need to re-auth...", buf, 2u);
    }

    v18[0] = *MEMORY[0x277CB90A0];
    v5 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1[4], "allowsAuthenticationPrompt")}];
    v19[0] = v5;
    v18[1] = *MEMORY[0x277CB9098];
    v6 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(a1[4], "allowsAuthenticationPrompt") ^ 1}];
    v19[1] = v6;
    v18[2] = *MEMORY[0x277CB9090];
    v17 = *MEMORY[0x277CEC6F0];
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
    v19[2] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];

    v9 = [a1[4] _accountStore];
    v10 = [a1[4] _appleAccount];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __71__FAFamilyEligibilityRequester_requestFamilyEligibilityWithCompletion___block_invoke_41;
    v11[3] = &unk_2782F2C00;
    v13 = a1[5];
    v14 = a1[6];
    v15 = a1[7];
    v12 = v3;
    [v9 renewCredentialsForAccount:v10 options:v8 completion:v11];
  }

  else
  {
    (*(a1[6] + 2))();
  }
}

void __71__FAFamilyEligibilityRequester_requestFamilyEligibilityWithCompletion___block_invoke_41(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _FALogSystem(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v11 = a2;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_21BB35000, v6, OS_LOG_TYPE_DEFAULT, "Result of renewing credentials for family eligibility check request: %ld. Error: %@", buf, 0x16u);
  }

  if (a2)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __71__FAFamilyEligibilityRequester_requestFamilyEligibilityWithCompletion___block_invoke_42;
    v7[3] = &unk_2782F2BD8;
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    dispatch_async(MEMORY[0x277D85CD0], v7);
  }
}

- (id)_grandSlamSigner
{
  grandSlamSigner = self->_grandSlamSigner;
  if (!grandSlamSigner)
  {
    v4 = [(AIDAAccountManager *)self->_accountManager aidaAccountForService:*MEMORY[0x277CED1A0]];
    v5 = objc_alloc(MEMORY[0x277CEC808]);
    accountStore = [(AIDAAccountManager *)self->_accountManager accountStore];
    v7 = [v5 initWithAccountStore:accountStore grandSlamAccount:v4 appTokenID:*MEMORY[0x277CEC6F0]];
    v8 = self->_grandSlamSigner;
    self->_grandSlamSigner = v7;

    grandSlamSigner = self->_grandSlamSigner;
  }

  return grandSlamSigner;
}

- (id)_appleAccount
{
  accounts = [(AIDAAccountManager *)self->_accountManager accounts];
  v3 = [accounts objectForKeyedSubscript:*MEMORY[0x277CED1A0]];

  return v3;
}

@end