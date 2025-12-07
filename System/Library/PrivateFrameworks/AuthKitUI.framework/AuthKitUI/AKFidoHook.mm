@interface AKFidoHook
- (AKFidoHook)initWithAccount:(id)account;
- (BOOL)_isUserCancelError:(id)error;
- (BOOL)shouldMatchElement:(id)element;
- (BOOL)shouldMatchModel:(id)model;
- (RUIServerHookDelegate)delegate;
- (void)_startFidoRegistrationWithAttributes:(id)attributes completion:(id)completion;
- (void)_startFidoVerificationWithAttributes:(id)attributes completion:(id)completion;
- (void)processElement:(id)element attributes:(id)attributes objectModel:(id)model completion:(id)completion;
- (void)processObjectModel:(id)model completion:(id)completion;
@end

@implementation AKFidoHook

- (AKFidoHook)initWithAccount:(id)account
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v3 = selfCopy;
  selfCopy = 0;
  v7.receiver = v3;
  v7.super_class = AKFidoHook;
  v6 = [(AKFidoHook *)&v7 init];
  selfCopy = v6;
  objc_storeStrong(&selfCopy, v6);
  if (v6)
  {
    objc_storeStrong(&selfCopy->_account, location[0]);
  }

  v5 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (BOOL)shouldMatchElement:(id)element
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, element);
  name = [location[0] name];
  v6 = 0;
  v5 = 1;
  if (([name isEqualToString:@"fido:register"] & 1) == 0)
  {
    name2 = [location[0] name];
    v6 = 1;
    v5 = [name2 isEqualToString:@"fido:verify"];
  }

  v9 = v5 & 1;
  if (v6)
  {
    MEMORY[0x277D82BD8](name2);
  }

  MEMORY[0x277D82BD8](name);
  objc_storeStrong(location, 0);
  return v9 & 1;
}

- (BOOL)shouldMatchModel:(id)model
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, model);
  clientInfo = [location[0] clientInfo];
  v6 = [clientInfo objectForKey:@"action"];
  v5 = 1;
  if (([v6 isEqualToString:{@"fido:register", MEMORY[0x277D82BD8](clientInfo).n128_f64[0]}] & 1) == 0)
  {
    v5 = [v6 isEqualToString:@"fido:verify"];
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  return v5 & 1;
}

- (void)processElement:(id)element attributes:(id)attributes objectModel:(id)model completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, element);
  v17 = 0;
  objc_storeStrong(&v17, attributes);
  v16 = 0;
  objc_storeStrong(&v16, model);
  v15 = 0;
  objc_storeStrong(&v15, completion);
  name = [location[0] name];
  v14 = [name isEqualToString:@"fido:register"];
  *&v6 = MEMORY[0x277D82BD8](name).n128_u64[0];
  if (v14)
  {
    [(AKFidoHook *)selfCopy _startFidoRegistrationWithAttributes:v17 completion:v15, v6];
  }

  else
  {
    name2 = [location[0] name];
    v9 = [name2 isEqualToString:@"fido:verify"];
    *&v7 = MEMORY[0x277D82BD8](name2).n128_u64[0];
    if (v9)
    {
      [(AKFidoHook *)selfCopy _startFidoVerificationWithAttributes:v17 completion:v15, v7];
    }
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

- (void)processObjectModel:(id)model completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, model);
  v11 = 0;
  objc_storeStrong(&v11, completion);
  clientInfo = [location[0] clientInfo];
  v10 = [clientInfo objectForKey:@"action"];
  if ([v10 isEqualToString:{@"fido:register", MEMORY[0x277D82BD8](clientInfo).n128_f64[0]}])
  {
    v6 = selfCopy;
    clientInfo2 = [location[0] clientInfo];
    [AKFidoHook _startFidoRegistrationWithAttributes:v6 completion:"_startFidoRegistrationWithAttributes:completion:"];
    MEMORY[0x277D82BD8](clientInfo2);
  }

  else if ([v10 isEqualToString:@"fido:verify"])
  {
    v4 = selfCopy;
    clientInfo3 = [location[0] clientInfo];
    [AKFidoHook _startFidoVerificationWithAttributes:v4 completion:"_startFidoVerificationWithAttributes:completion:"];
    MEMORY[0x277D82BD8](clientInfo3);
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)_startFidoRegistrationWithAttributes:(id)attributes completion:(id)completion
{
  v47 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, attributes);
  v42 = 0;
  objc_storeStrong(&v42, completion);
  v41 = _AKLogFido();
  v40 = 2;
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
  {
    log = v41;
    type = v40;
    __os_log_helper_16_0_0(v39);
    _os_log_debug_impl(&dword_222379000, log, type, "Fido hook requested to register the key.", v39, 2u);
  }

  objc_storeStrong(&v41, 0);
  v38 = _AKLogFido();
  v37 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v46, location[0]);
    _os_log_debug_impl(&dword_222379000, v38, v37, "Fido registration attributes:\n%@", v46, 0xCu);
  }

  objc_storeStrong(&v38, 0);
  v36 = [location[0] objectForKeyedSubscript:@"challenge"];
  v35 = [location[0] objectForKeyedSubscript:@"userHandle"];
  v34 = [location[0] objectForKeyedSubscript:@"rpId"];
  v33 = [location[0] objectForKeyedSubscript:@"credentialName"];
  v14 = objc_opt_class();
  v13 = [location[0] objectForKeyedSubscript:@"excludedCredentials"];
  v32 = _AKSafeCast(v14, v13);
  v31 = [v32 componentsSeparatedByString:{@", ", MEMORY[0x277D82BD8](v13).n128_f64[0]}];
  v12 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.AuthKit"];
  v30 = [v12 localizedStringForKey:@"FIDO_DISPLAY_NAME" value:&stru_28358EF68 table:@"Localizable"];
  MEMORY[0x277D82BD8](v12);
  v29 = [objc_alloc(MEMORY[0x277CF0240]) initWithChallengeString:v36 relyingPartyIdentifier:v34 userIdentifierString:v35 displayName:v30 credentialName:v33 credentials:v31];
  v11 = [location[0] objectForKeyedSubscript:@"promptTitle"];
  [v29 setPromptTitle:?];
  v10 = [location[0] objectForKeyedSubscript:{@"promptHeader", MEMORY[0x277D82BD8](v11).n128_f64[0]}];
  [v29 setPromptHeader:?];
  v9 = [location[0] objectForKeyedSubscript:{@"promptBody", MEMORY[0x277D82BD8](v10).n128_f64[0]}];
  [v29 setPromptBody:?];
  [v29 setUseAlternativeKeysIcon:{1, MEMORY[0x277D82BD8](v9).n128_f64[0]}];
  v8 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.AuthKit"];
  v7 = [v8 localizedStringForKey:@"FIDO_INCORRECT_KEY_PRESENTED_MESSAGE" value:&stru_28358EF68 table:@"Localizable"];
  [v29 setIncorrectKeyPresentedMessage:?];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  v28 = _AKLogFido();
  v27 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    incorrectKeyPresentedMessage = [v29 incorrectKeyPresentedMessage];
    __os_log_helper_16_2_1_8_64(v45, incorrectKeyPresentedMessage);
    _os_log_debug_impl(&dword_222379000, v28, v27, "Setting fidoContext.incorrectKeyPresentedMessage = %@", v45, 0xCu);
    MEMORY[0x277D82BD8](incorrectKeyPresentedMessage);
  }

  objc_storeStrong(&v28, 0);
  v26 = objc_alloc_init(AKFidoUIController);
  objc_initWeak(&from, selfCopy);
  v4 = v26;
  v5 = v29;
  v18 = MEMORY[0x277D85DD0];
  v19 = -1073741824;
  v20 = 0;
  v21 = __62__AKFidoHook__startFidoRegistrationWithAttributes_completion___block_invoke;
  v22 = &unk_2784A6138;
  objc_copyWeak(&v24, &from);
  v23 = MEMORY[0x277D82BE0](v42);
  [v4 registerFidoKeyWithContext:v5 completion:&v18];
  objc_storeStrong(&v23, 0);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&from);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(location, 0);
}

void __62__AKFidoHook__startFidoRegistrationWithAttributes_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v49 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v39 = 0;
  objc_storeStrong(&v39, a3);
  v38[1] = a1;
  v38[0] = objc_loadWeakRetained((a1 + 40));
  if (v38[0])
  {
    v28 = objc_alloc_init(MEMORY[0x277D46208]);
    [v38[0] setServerHookResponse:?];
    MEMORY[0x277D82BD8](v28);
    if (location[0])
    {
      oslog = _AKLogFido();
      type = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        log = oslog;
        v27 = type;
        __os_log_helper_16_0_0(v35);
        _os_log_debug_impl(&dword_222379000, log, v27, "Fido registration was a success.", v35, 2u);
      }

      objc_storeStrong(&oslog, 0);
      v34 = _AKLogFido();
      v33 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        v25 = [location[0] credentialID];
        v24 = [location[0] attestationsData];
        v23 = [location[0] clientData];
        __os_log_helper_16_2_3_8_64_8_64_8_64(v48, v25, v24, v23);
        _os_log_debug_impl(&dword_222379000, v34, v33, "Fido registration succeeded with CredentialID: %@\nAttestationsData: %@\nClientData: %@", v48, 0x20u);
        MEMORY[0x277D82BD8](v23);
        MEMORY[0x277D82BD8](v24);
        MEMORY[0x277D82BD8](v25);
      }

      objc_storeStrong(&v34, 0);
      v46[0] = @"credentialID";
      v20 = [location[0] credentialID];
      v47[0] = v20;
      v46[1] = @"clientData";
      v19 = [location[0] clientData];
      v47[1] = v19;
      v46[2] = @"challenge";
      v18 = [location[0] challenge];
      v47[2] = v18;
      v46[3] = @"rpId";
      v17 = [location[0] relyingPartyIdentifier];
      v47[3] = v17;
      v46[4] = @"userHandle";
      v16 = [location[0] userIdentifier];
      v47[4] = v16;
      v46[5] = @"credentialName";
      v15 = [location[0] credentialName];
      v47[5] = v15;
      v46[6] = @"success";
      v47[6] = &unk_2835AADB0;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:7];
      v32 = [v14 mutableCopy];
      MEMORY[0x277D82BD8](v14);
      MEMORY[0x277D82BD8](v15);
      MEMORY[0x277D82BD8](v16);
      MEMORY[0x277D82BD8](v17);
      MEMORY[0x277D82BD8](v18);
      MEMORY[0x277D82BD8](v19);
      *&v3 = MEMORY[0x277D82BD8](v20).n128_u64[0];
      v21 = [location[0] attestationsData];
      v22 = [v21 length];
      v4 = MEMORY[0x277D82BD8](v21).n128_u64[0];
      if (v22)
      {
        v13 = [location[0] attestationsData];
        [v32 setObject:? forKeyedSubscript:?];
        v4 = MEMORY[0x277D82BD8](v13).n128_u64[0];
      }

      v12 = [v32 copy];
      v11 = [v38[0] serverHookResponse];
      [v11 setAdditionalPayload:v12];
      MEMORY[0x277D82BD8](v11);
      MEMORY[0x277D82BD8](v12);
      objc_storeStrong(&v32, 0);
    }

    else
    {
      v31 = _AKLogFido();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v45, v39);
        _os_log_error_impl(&dword_222379000, v31, OS_LOG_TYPE_ERROR, "Fido registration failed: %@", v45, 0xCu);
      }

      objc_storeStrong(&v31, 0);
      if ([v38[0] _isUserCancelError:v39])
      {
        v43[0] = *MEMORY[0x277D46250];
        v44[0] = *MEMORY[0x277D46248];
        v43[1] = @"success";
        v44[1] = &unk_2835AADC8;
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:2];
        v9 = [v38[0] serverHookResponse];
        [v9 setAdditionalPayload:v10];
        MEMORY[0x277D82BD8](v9);
        MEMORY[0x277D82BD8](v10);
      }

      else
      {
        v41[0] = @"errorDomain";
        v8 = [v39 domain];
        v42[0] = v8;
        v41[1] = @"errorCode";
        v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v39, "code")}];
        v42[1] = v7;
        v41[2] = @"success";
        v42[2] = &unk_2835AADC8;
        v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:3];
        v5 = [v38[0] serverHookResponse];
        [v5 setAdditionalPayload:v6];
        MEMORY[0x277D82BD8](v5);
        MEMORY[0x277D82BD8](v6);
        MEMORY[0x277D82BD8](v7);
        MEMORY[0x277D82BD8](v8);
      }
    }
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), location[0] != 0, v39);
  objc_storeStrong(v38, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(location, 0);
}

- (void)_startFidoVerificationWithAttributes:(id)attributes completion:(id)completion
{
  v43 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, attributes);
  v38 = 0;
  objc_storeStrong(&v38, completion);
  v37 = _AKLogFido();
  v36 = 2;
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    log = v37;
    type = v36;
    __os_log_helper_16_0_0(v35);
    _os_log_debug_impl(&dword_222379000, log, type, "Fido hook requested to verify the key.", v35, 2u);
  }

  objc_storeStrong(&v37, 0);
  v34 = _AKLogFido();
  v33 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v42, location[0]);
    _os_log_debug_impl(&dword_222379000, v34, v33, "Fido verification attributes:\n%@", v42, 0xCu);
  }

  objc_storeStrong(&v34, 0);
  v32 = [location[0] objectForKeyedSubscript:@"challenge"];
  v31 = [location[0] objectForKeyedSubscript:@"rpId"];
  v13 = objc_opt_class();
  v12 = [location[0] objectForKeyedSubscript:@"allowedCredentials"];
  v30 = _AKSafeCast(v13, v12);
  v29 = [v30 componentsSeparatedByString:{@", ", MEMORY[0x277D82BD8](v12).n128_f64[0]}];
  v28 = [objc_alloc(MEMORY[0x277CF0240]) initWithChallengeString:v32 relyingPartyIdentifier:v31 userIdentifierString:0 displayName:0 credentialName:0 credentials:v29];
  v11 = [location[0] objectForKeyedSubscript:@"promptTitle"];
  [v28 setPromptTitle:?];
  v10 = [location[0] objectForKeyedSubscript:{@"promptHeader", MEMORY[0x277D82BD8](v11).n128_f64[0]}];
  [v28 setPromptHeader:?];
  v9 = [location[0] objectForKeyedSubscript:{@"promptBody", MEMORY[0x277D82BD8](v10).n128_f64[0]}];
  [v28 setPromptBody:?];
  [v28 setUseAlternativeKeysIcon:{1, MEMORY[0x277D82BD8](v9).n128_f64[0]}];
  v8 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.AuthKit"];
  v7 = [v8 localizedStringForKey:@"FIDO_INCORRECT_KEY_PRESENTED_MESSAGE" value:&stru_28358EF68 table:@"Localizable"];
  [v28 setIncorrectKeyPresentedMessage:?];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  v27 = _AKLogFido();
  v26 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    incorrectKeyPresentedMessage = [v28 incorrectKeyPresentedMessage];
    __os_log_helper_16_2_1_8_64(v41, incorrectKeyPresentedMessage);
    _os_log_debug_impl(&dword_222379000, v27, v26, "Setting fidoContext.incorrectKeyPresentedMessage = %@", v41, 0xCu);
    MEMORY[0x277D82BD8](incorrectKeyPresentedMessage);
  }

  objc_storeStrong(&v27, 0);
  v25 = objc_alloc_init(AKFidoUIController);
  objc_initWeak(&from, selfCopy);
  v4 = v25;
  v5 = v28;
  v17 = MEMORY[0x277D85DD0];
  v18 = -1073741824;
  v19 = 0;
  v20 = __62__AKFidoHook__startFidoVerificationWithAttributes_completion___block_invoke;
  v21 = &unk_2784A6160;
  objc_copyWeak(&v23, &from);
  v22 = MEMORY[0x277D82BE0](v38);
  [v4 verifyFidoKeyWithFidoContext:v5 completion:&v17];
  objc_storeStrong(&v22, 0);
  objc_destroyWeak(&v23);
  objc_destroyWeak(&from);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(location, 0);
}

void __62__AKFidoHook__startFidoVerificationWithAttributes_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v36[8] = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v28 = 0;
  objc_storeStrong(&v28, a3);
  v27[1] = a1;
  v27[0] = objc_loadWeakRetained((a1 + 40));
  if (v27[0])
  {
    v20 = objc_alloc_init(MEMORY[0x277D46208]);
    [v27[0] setServerHookResponse:?];
    MEMORY[0x277D82BD8](v20);
    if (location[0])
    {
      oslog = _AKLogFido();
      type = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        log = oslog;
        v19 = type;
        __os_log_helper_16_0_0(v24);
        _os_log_debug_impl(&dword_222379000, log, v19, "Fido verification was a success.", v24, 2u);
      }

      objc_storeStrong(&oslog, 0);
      v35[0] = @"authenticatorData";
      v17 = [location[0] authenticatorData];
      v36[0] = v17;
      v35[1] = @"signatureData";
      v16 = [location[0] signature];
      v36[1] = v16;
      v35[2] = @"credentialID";
      v15 = [location[0] credentialID];
      v36[2] = v15;
      v35[3] = @"clientData";
      v14 = [location[0] clientData];
      v36[3] = v14;
      v35[4] = @"userHandle";
      v13 = [location[0] userIdentifier];
      v36[4] = v13;
      v35[5] = @"rpId";
      v12 = [location[0] relyingPartyIdentifier];
      v36[5] = v12;
      v35[6] = @"challenge";
      v11 = [location[0] challenge];
      v36[6] = v11;
      v35[7] = @"success";
      v36[7] = &unk_2835AADB0;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:8];
      v9 = [v27[0] serverHookResponse];
      [v9 setAdditionalPayload:v10];
      MEMORY[0x277D82BD8](v9);
      MEMORY[0x277D82BD8](v10);
      MEMORY[0x277D82BD8](v11);
      MEMORY[0x277D82BD8](v12);
      MEMORY[0x277D82BD8](v13);
      MEMORY[0x277D82BD8](v14);
      MEMORY[0x277D82BD8](v15);
      MEMORY[0x277D82BD8](v16);
      MEMORY[0x277D82BD8](v17);
    }

    else
    {
      v23 = _AKLogFido();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v34, v28);
        _os_log_error_impl(&dword_222379000, v23, OS_LOG_TYPE_ERROR, "Fido verification failed: %@", v34, 0xCu);
      }

      objc_storeStrong(&v23, 0);
      if ([v27[0] _isUserCancelError:v28])
      {
        v32[0] = *MEMORY[0x277D46250];
        v33[0] = *MEMORY[0x277D46248];
        v32[1] = @"success";
        v33[1] = &unk_2835AADC8;
        v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
        v7 = [v27[0] serverHookResponse];
        [v7 setAdditionalPayload:v8];
        MEMORY[0x277D82BD8](v7);
        MEMORY[0x277D82BD8](v8);
      }

      else
      {
        v30[0] = @"errorDomain";
        v6 = [v28 domain];
        v31[0] = v6;
        v30[1] = @"errorCode";
        v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v28, "code")}];
        v31[1] = v5;
        v30[2] = @"success";
        v31[2] = &unk_2835AADC8;
        v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:3];
        v3 = [v27[0] serverHookResponse];
        [v3 setAdditionalPayload:v4];
        MEMORY[0x277D82BD8](v3);
        MEMORY[0x277D82BD8](v4);
        MEMORY[0x277D82BD8](v5);
        MEMORY[0x277D82BD8](v6);
      }
    }
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), location[0] != 0, v28);
  objc_storeStrong(v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_isUserCancelError:(id)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v4 = 1;
  if (([location[0] ak_isUserCancelError] & 1) == 0)
  {
    v4 = [MEMORY[0x277CF0238] isFidoUserCancelError:location[0]];
  }

  objc_storeStrong(location, 0);
  return v4 & 1;
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end