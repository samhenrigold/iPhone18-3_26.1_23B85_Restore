@interface DCAppAttestController
- (BOOL)isSupported;
- (BOOL)isSupportedWithError:(id *)error;
- (DCAppAttestController)initWithType:(unint64_t)type;
- (NSUserDefaults)legacyUserDefaults;
- (NSUserDefaults)userDefaults;
- (id)loadAppUUID;
- (id)rewrapAsDCError:(id)error;
- (void)attestKey:(id)key keyAttributes:(id)attributes clientDataHash:(id)hash authData:(id)data options:(id)options completionHandler:(id)handler;
- (void)attestKey:(id)key teamIdentifier:(id)identifier clientDataHash:(id)hash completionHandler:(id)handler;
- (void)dispatchCompletionHandler:(id)handler ontoQueue:(id)queue;
- (void)generateAssertion:(id)assertion teamIdentifier:(id)identifier clientDataHash:(id)hash completionHandler:(id)handler;
- (void)generateKeyWithTeamIdentifier:(id)identifier completion:(id)completion;
- (void)getPropertiesForKeyId:(id)id teamIdentifier:(id)identifier completionHandler:(id)handler;
- (void)saveAppUUID:(id)d;
- (void)sign:(id)sign withKey:(id)key teamIdentifier:(id)identifier completionHandler:(id)handler;
@end

@implementation DCAppAttestController

- (BOOL)isSupported
{
  v15 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v2 = [(DCAppAttestController *)self isSupportedWithError:&v8];
  v3 = v8;
  if (v3)
  {
    if (DCLogSystem_onceToken != -1)
    {
      [DCAppAttestController isSupported];
    }

    v4 = DCLogSystem_log;
    if (os_log_type_enabled(DCLogSystem_log, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      localizedDescription = [v3 localizedDescription];
      *buf = 136315650;
      v10 = "DCAppAttestController.m";
      v11 = 1024;
      v12 = 75;
      v13 = 2112;
      v14 = localizedDescription;
      _os_log_impl(&dword_238044000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to check if AppAttest is supported. { error=%@ }", buf, 0x1Cu);
    }
  }

  return v2;
}

- (DCAppAttestController)initWithType:(unint64_t)type
{
  v7.receiver = self;
  v7.super_class = DCAppAttestController;
  v4 = [(DCAppAttestController *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(DCAppAttestController *)v4 setAppAttestType:type];
  }

  return v5;
}

- (NSUserDefaults)legacyUserDefaults
{
  legacyUserDefaults = self->_legacyUserDefaults;
  if (!legacyUserDefaults)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v5 = self->_legacyUserDefaults;
    self->_legacyUserDefaults = standardUserDefaults;

    legacyUserDefaults = self->_legacyUserDefaults;
  }

  return legacyUserDefaults;
}

- (NSUserDefaults)userDefaults
{
  userDefaults = self->_userDefaults;
  if (!userDefaults)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.AppAttest.client"];
    v5 = self->_userDefaults;
    self->_userDefaults = v4;

    userDefaults = self->_userDefaults;
  }

  return userDefaults;
}

- (void)generateKeyWithTeamIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = dispatch_get_current_queue();
  v9 = clientProcessingQueue(v8);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __66__DCAppAttestController_generateKeyWithTeamIdentifier_completion___block_invoke;
  v13[3] = &unk_278A45F58;
  v13[4] = self;
  v14 = v8;
  v15 = identifierCopy;
  v16 = completionCopy;
  v10 = identifierCopy;
  v11 = v8;
  v12 = completionCopy;
  dispatch_async(v9, v13);
}

void __66__DCAppAttestController_generateKeyWithTeamIdentifier_completion___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  if (DCLogSystem_onceToken != -1)
  {
    __66__DCAppAttestController_generateKeyWithTeamIdentifier_completion___block_invoke_cold_1();
  }

  v2 = DCLogSystem_log;
  if (os_log_type_enabled(DCLogSystem_log, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    v4 = clientProcessingQueue(v3);
    *buf = 136315650;
    *&buf[4] = "DCAppAttestController.m";
    *&buf[12] = 1024;
    *&buf[14] = 88;
    *&buf[18] = 2080;
    *&buf[20] = dispatch_queue_get_label(v4);
    _os_log_impl(&dword_238044000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Dispatching generate key onto client processing queue. { label=%s }", buf, 0x1Cu);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = objc_alloc_init(DCDeviceMetadataDaemonConnection);
  v5 = *(*&buf[8] + 40);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __66__DCAppAttestController_generateKeyWithTeamIdentifier_completion___block_invoke_21;
  v20[3] = &unk_278A45EB8;
  v21 = *(a1 + 56);
  v6 = [v5 remoteObjectProxy:v20];
  v7 = [*(a1 + 32) loadAppUUID];
  if (![*(a1 + 32) appAttestType])
  {
    v12 = +[DCAnalytics shared];
    [v12 sendPerformanceForCategory:6 eventType:0];

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __66__DCAppAttestController_generateKeyWithTeamIdentifier_completion___block_invoke_2;
    v16[3] = &unk_278A45F08;
    v16[4] = *(a1 + 32);
    v17 = v7;
    v19[0] = *(a1 + 56);
    v19[1] = buf;
    v18 = *(a1 + 40);
    [v6 appAttestationCreateKey:v17 completion:v16];

    v10 = &v17;
    v11 = v19;
    goto LABEL_9;
  }

  if ([*(a1 + 32) appAttestType] == 1)
  {
    v8 = +[DCAnalytics shared];
    [v8 sendPerformanceForCategory:6 eventType:0];

    v9 = *(a1 + 48);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __66__DCAppAttestController_generateKeyWithTeamIdentifier_completion___block_invoke_4;
    v13[3] = &unk_278A45F30;
    v13[4] = *(a1 + 32);
    v14 = v7;
    v15[0] = *(a1 + 56);
    v15[1] = buf;
    [v6 appAttestationCreateKeyWithTeamIdentifier:v9 appUUID:v14 completion:v13];
    v10 = &v14;
    v11 = v15;
LABEL_9:
  }

  _Block_object_dispose(buf, 8);
}

void __66__DCAppAttestController_generateKeyWithTeamIdentifier_completion___block_invoke_21(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] dc_errorWithCode:0];
  (*(v1 + 16))(v1, 0, v2);
}

void __66__DCAppAttestController_generateKeyWithTeamIdentifier_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __66__DCAppAttestController_generateKeyWithTeamIdentifier_completion___block_invoke_3;
  v16[3] = &unk_278A45EE0;
  v16[4] = v10;
  v17 = v9;
  v18 = *(a1 + 40);
  v19 = v7;
  v11 = *(a1 + 56);
  v20 = v8;
  v21 = v11;
  v22 = *(a1 + 64);
  v12 = *(a1 + 48);
  v13 = v8;
  v14 = v7;
  v15 = v9;
  [v10 dispatchCompletionHandler:v16 ontoQueue:v12];
}

void __66__DCAppAttestController_generateKeyWithTeamIdentifier_completion___block_invoke_3(uint64_t a1)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) rewrapAsDCError:*(a1 + 40)];
  v3 = +[DCAnalytics shared];
  [v3 sendPerformanceForCategory:6 eventType:1];

  v8[0] = @"appUUIDLoaded";
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48) != 0];
  v8[1] = @"serviceType";
  v9[0] = v4;
  v9[1] = @"default";
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = +[DCAnalytics shared];
  [v6 sendPayload:v5 forEvent:@"com.apple.devicecheck.appattest.generateKey" withError:v2];

  [*(a1 + 32) saveAppUUID:*(a1 + 56)];
  (*(*(a1 + 72) + 16))();
  v7 = [*(*(*(a1 + 80) + 8) + 40) connection];
  [v7 invalidate];
}

void __66__DCAppAttestController_generateKeyWithTeamIdentifier_completion___block_invoke_4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v20[2] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v11 = [v7 rewrapAsDCError:v8];
  v12 = +[DCAnalytics shared];
  [v12 sendPerformanceForCategory:6 eventType:1];

  v19[0] = @"appUUIDLoaded";
  v13 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40) != 0];
  v19[1] = @"serviceType";
  v20[0] = v13;
  v20[1] = @"priv";
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];

  v15 = +[DCAnalytics shared];
  [v15 sendPayload:v14 forEvent:@"com.apple.devicecheck.appattest.generateKey" withError:v11];

  [*(a1 + 32) saveAppUUID:v10];
  v16 = *(a1 + 48);
  v17 = [*(a1 + 32) rewrapAsDCError:v8];

  (*(v16 + 16))(v16, v9, v17);
  v18 = [*(*(*(a1 + 56) + 8) + 40) connection];
  [v18 invalidate];
}

- (void)attestKey:(id)key teamIdentifier:(id)identifier clientDataHash:(id)hash completionHandler:(id)handler
{
  keyCopy = key;
  identifierCopy = identifier;
  hashCopy = hash;
  handlerCopy = handler;
  v14 = dispatch_get_current_queue();
  v15 = clientProcessingQueue(v14);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __83__DCAppAttestController_attestKey_teamIdentifier_clientDataHash_completionHandler___block_invoke;
  v21[3] = &unk_278A45FF8;
  v21[4] = self;
  v22 = keyCopy;
  v23 = hashCopy;
  v24 = v14;
  v25 = identifierCopy;
  v26 = handlerCopy;
  v16 = identifierCopy;
  v17 = v14;
  v18 = hashCopy;
  v19 = keyCopy;
  v20 = handlerCopy;
  dispatch_async(v15, v21);
}

void __83__DCAppAttestController_attestKey_teamIdentifier_clientDataHash_completionHandler___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  if (DCLogSystem_onceToken != -1)
  {
    __66__DCAppAttestController_generateKeyWithTeamIdentifier_completion___block_invoke_cold_1();
  }

  v2 = DCLogSystem_log;
  if (os_log_type_enabled(DCLogSystem_log, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    v4 = clientProcessingQueue(v3);
    *buf = 136315650;
    *&buf[4] = "DCAppAttestController.m";
    *&buf[12] = 1024;
    *&buf[14] = 158;
    *&buf[18] = 2080;
    *&buf[20] = dispatch_queue_get_label(v4);
    _os_log_impl(&dword_238044000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Dispatching attest key onto client processing queue. { label=%s }", buf, 0x1Cu);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = __Block_byref_object_copy_;
  v41 = __Block_byref_object_dispose_;
  v42 = objc_alloc_init(DCDeviceMetadataDaemonConnection);
  v5 = *(*&buf[8] + 40);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __83__DCAppAttestController_attestKey_teamIdentifier_clientDataHash_completionHandler___block_invoke_41;
  v34[3] = &unk_278A45EB8;
  v35 = *(a1 + 72);
  v6 = [v5 remoteObjectProxy:v34];
  v7 = [*(a1 + 32) loadAppUUID];
  if (!v7)
  {
    if (DCLogSystem_onceToken != -1)
    {
      [DCAppAttestController isSupported];
    }

    v8 = DCLogSystem_log;
    if (os_log_type_enabled(DCLogSystem_log, OS_LOG_TYPE_ERROR))
    {
      *v36 = 136315394;
      v37 = "DCAppAttestController.m";
      v38 = 1024;
      v39 = 166;
      _os_log_impl(&dword_238044000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to fetch App UUID.", v36, 0x12u);
    }
  }

  if ([*(a1 + 32) appAttestType])
  {
    if ([*(a1 + 32) appAttestType] != 1)
    {
      goto LABEL_15;
    }

    v9 = +[DCAnalytics shared];
    [v9 sendPerformanceForCategory:8 eventType:0];

    v10 = *(a1 + 64);
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __83__DCAppAttestController_attestKey_teamIdentifier_clientDataHash_completionHandler___block_invoke_3;
    v24 = &unk_278A45FD0;
    v25 = *(a1 + 32);
    v26 = v7;
    v27 = *(a1 + 48);
    v28[0] = *(a1 + 72);
    v28[1] = buf;
    [v6 appAttestationAttestKeyWithTeamIdentifier:v10 appUUID:v26 keyId:v11 clientDataHash:v12 completion:&v21];
    v13 = &v26;
    v14 = &v27;
    v15 = v28;
  }

  else
  {
    v16 = +[DCAnalytics shared];
    [v16 sendPerformanceForCategory:8 eventType:0];

    v17 = *(a1 + 40);
    v18 = *(a1 + 48);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __83__DCAppAttestController_attestKey_teamIdentifier_clientDataHash_completionHandler___block_invoke_42;
    v29[3] = &unk_278A45FA8;
    v29[4] = *(a1 + 32);
    v30 = v7;
    v31 = *(a1 + 48);
    v33[0] = *(a1 + 72);
    v33[1] = buf;
    v32 = *(a1 + 56);
    [v6 appAttestationAttestKey:v30 keyId:v17 clientDataHash:v18 completion:v29];

    v13 = &v30;
    v14 = &v31;
    v15 = v33;
  }

LABEL_15:
  if ([*(a1 + 32) appAttestType] == 2)
  {
    if (DCLogSystem_onceToken != -1)
    {
      [DCAppAttestController isSupported];
    }

    v19 = DCLogSystem_log;
    if (os_log_type_enabled(DCLogSystem_log, OS_LOG_TYPE_ERROR))
    {
      *v36 = 136315394;
      v37 = "DCAppAttestController.m";
      v38 = 1024;
      v39 = 217;
      _os_log_impl(&dword_238044000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid usage, cannot use this method for AppAttestTypeWeb.", v36, 0x12u);
    }
  }

  if ([*(a1 + 32) appAttestType] == 3)
  {
    if (DCLogSystem_onceToken != -1)
    {
      [DCAppAttestController isSupported];
    }

    v20 = DCLogSystem_log;
    if (os_log_type_enabled(DCLogSystem_log, OS_LOG_TYPE_ERROR))
    {
      *v36 = 136315394;
      v37 = "DCAppAttestController.m";
      v38 = 1024;
      v39 = 218;
      _os_log_impl(&dword_238044000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid usage, cannot use this method for AppAttestTypeDevice.", v36, 0x12u);
    }
  }

  _Block_object_dispose(buf, 8);
}

void __83__DCAppAttestController_attestKey_teamIdentifier_clientDataHash_completionHandler___block_invoke_41(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] dc_errorWithCode:0];
  (*(v1 + 16))(v1, 0, v2);
}

void __83__DCAppAttestController_attestKey_teamIdentifier_clientDataHash_completionHandler___block_invoke_42(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __83__DCAppAttestController_attestKey_teamIdentifier_clientDataHash_completionHandler___block_invoke_2;
  v13[3] = &unk_278A45F80;
  v13[4] = v7;
  v14 = v6;
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v17 = v5;
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v18 = v8;
  v19 = v9;
  v10 = *(a1 + 56);
  v11 = v5;
  v12 = v6;
  [v7 dispatchCompletionHandler:v13 ontoQueue:v10];
}

void __83__DCAppAttestController_attestKey_teamIdentifier_clientDataHash_completionHandler___block_invoke_2(uint64_t a1)
{
  v11[4] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) rewrapAsDCError:*(a1 + 40)];
  v3 = +[DCAnalytics shared];
  [v3 sendPerformanceForCategory:8 eventType:1];

  v10[0] = @"appUUIDLoaded";
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48) != 0];
  v11[0] = v4;
  v10[1] = @"clientDataHashValid";
  v5 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 56) != 0];
  v11[1] = v5;
  v10[2] = @"attestedKey";
  v6 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 64) != 0];
  v10[3] = @"serviceType";
  v11[2] = v6;
  v11[3] = @"default";
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:4];

  v8 = +[DCAnalytics shared];
  [v8 sendPayload:v7 forEvent:@"com.apple.devicecheck.appattest.attestKey" withError:v2];

  (*(*(a1 + 72) + 16))();
  v9 = [*(*(*(a1 + 80) + 8) + 40) connection];
  [v9 invalidate];
}

void __83__DCAppAttestController_attestKey_teamIdentifier_clientDataHash_completionHandler___block_invoke_3(void *a1, void *a2, uint64_t a3)
{
  v16[4] = *MEMORY[0x277D85DE8];
  v5 = a1[4];
  v6 = a2;
  v7 = [v5 rewrapAsDCError:a3];
  v8 = +[DCAnalytics shared];
  [v8 sendPerformanceForCategory:8 eventType:1];

  v15[0] = @"appUUIDLoaded";
  v9 = [MEMORY[0x277CCABB0] numberWithInt:a1[5] != 0];
  v16[0] = v9;
  v15[1] = @"clientDataHashValid";
  v10 = [MEMORY[0x277CCABB0] numberWithInt:a1[6] != 0];
  v16[1] = v10;
  v15[2] = @"attestedKey";
  v11 = [MEMORY[0x277CCABB0] numberWithInt:v6 != 0];
  v15[3] = @"serviceType";
  v16[2] = v11;
  v16[3] = @"priv";
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:4];

  v13 = +[DCAnalytics shared];
  [v13 sendPayload:v12 forEvent:@"com.apple.devicecheck.appattest.attestKey" withError:v7];

  (*(a1[7] + 16))();
  v14 = [*(*(a1[8] + 8) + 40) connection];
  [v14 invalidate];
}

- (void)attestKey:(id)key keyAttributes:(id)attributes clientDataHash:(id)hash authData:(id)data options:(id)options completionHandler:(id)handler
{
  keyCopy = key;
  hashCopy = hash;
  dataCopy = data;
  optionsCopy = options;
  handlerCopy = handler;
  v18 = clientProcessingQueue(handlerCopy);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __99__DCAppAttestController_attestKey_keyAttributes_clientDataHash_authData_options_completionHandler___block_invoke;
  v24[3] = &unk_278A45FF8;
  v24[4] = self;
  v25 = keyCopy;
  v26 = hashCopy;
  v27 = dataCopy;
  v28 = optionsCopy;
  v29 = handlerCopy;
  v19 = optionsCopy;
  v20 = dataCopy;
  v21 = hashCopy;
  v22 = keyCopy;
  v23 = handlerCopy;
  dispatch_async(v18, v24);
}

void __99__DCAppAttestController_attestKey_keyAttributes_clientDataHash_authData_options_completionHandler___block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  if (DCLogSystem_onceToken != -1)
  {
    __66__DCAppAttestController_generateKeyWithTeamIdentifier_completion___block_invoke_cold_1();
  }

  v2 = DCLogSystem_log;
  if (os_log_type_enabled(DCLogSystem_log, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    v4 = clientProcessingQueue(v3);
    label = dispatch_queue_get_label(v4);
    *buf = 136315650;
    v42 = "DCAppAttestController.m";
    v43 = 1024;
    v44 = 225;
    v45 = 2080;
    v46 = label;
    _os_log_impl(&dword_238044000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Dispatching attest key onto client processing queue. { label=%s }", buf, 0x1Cu);
  }

  v6 = objc_alloc_init(DCDeviceMetadataDaemonConnection);
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __99__DCAppAttestController_attestKey_keyAttributes_clientDataHash_authData_options_completionHandler___block_invoke_50;
  v39[3] = &unk_278A45EB8;
  v40 = *(a1 + 72);
  v7 = [(DCDeviceMetadataDaemonConnection *)v6 remoteObjectProxy:v39];
  if ([*(a1 + 32) appAttestType] == 2)
  {
    v8 = +[DCAnalytics shared];
    [v8 sendPerformanceForCategory:10 eventType:0];

    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __99__DCAppAttestController_attestKey_keyAttributes_clientDataHash_authData_options_completionHandler___block_invoke_2;
    v35[3] = &unk_278A46090;
    v12 = &v36;
    v13 = v9;
    v36 = v13;
    v14 = v37;
    v15 = *(a1 + 48);
    v16 = *(a1 + 32);
    v37[0] = v15;
    v37[1] = v16;
    v17 = &v38;
    v38 = *(a1 + 72);
    [v7 appAttestationWebAttestKey:v13 clientDataHash:v10 authData:v11 completion:v35];
  }

  else
  {
    if ([*(a1 + 32) appAttestType] != 3)
    {
      goto LABEL_10;
    }

    v18 = +[DCAnalytics shared];
    [v18 sendPerformanceForCategory:11 eventType:0];

    v19 = *(a1 + 40);
    v20 = *(a1 + 48);
    v21 = *(a1 + 64);
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __99__DCAppAttestController_attestKey_keyAttributes_clientDataHash_authData_options_completionHandler___block_invoke_66;
    v30 = &unk_278A46108;
    v12 = &v31;
    v22 = v19;
    v31 = v22;
    v34 = 0;
    v14 = v32;
    v23 = *(a1 + 48);
    v24 = *(a1 + 32);
    v32[0] = v23;
    v32[1] = v24;
    v17 = &v33;
    v33 = *(a1 + 72);
    [v7 appAttestationDeviceAttestKey:v22 useSystemKeychain:0 clientDataHash:v20 options:v21 completion:&v27];
  }

LABEL_10:
  if ([*(a1 + 32) appAttestType] == 1)
  {
    if (DCLogSystem_onceToken != -1)
    {
      [DCAppAttestController isSupported];
    }

    v25 = DCLogSystem_log;
    if (os_log_type_enabled(DCLogSystem_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v42 = "DCAppAttestController.m";
      v43 = 1024;
      v44 = 380;
      _os_log_impl(&dword_238044000, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid usage, cannot use this method for AppAttestTypePriv.", buf, 0x12u);
    }
  }

  if (![*(a1 + 32) appAttestType])
  {
    if (DCLogSystem_onceToken != -1)
    {
      [DCAppAttestController isSupported];
    }

    v26 = DCLogSystem_log;
    if (os_log_type_enabled(DCLogSystem_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v42 = "DCAppAttestController.m";
      v43 = 1024;
      v44 = 381;
      _os_log_impl(&dword_238044000, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid usage, cannot use this method for AppAttestTypeDefault.", buf, 0x12u);
    }
  }
}

void __99__DCAppAttestController_attestKey_keyAttributes_clientDataHash_authData_options_completionHandler___block_invoke_50(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] dc_errorWithCode:0];
  (*(v1 + 16))(v1, 0, v2);
}

void __99__DCAppAttestController_attestKey_keyAttributes_clientDataHash_authData_options_completionHandler___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v58 = *MEMORY[0x277D85DE8];
  v31 = a3;
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __99__DCAppAttestController_attestKey_keyAttributes_clientDataHash_authData_options_completionHandler___block_invoke_3;
  v42[3] = &unk_278A46020;
  v43 = *(a1 + 32);
  v30 = MEMORY[0x2383E6220](v42);
  if (a2 < 1)
  {
    v25 = +[DCAnalytics shared];
    [v25 sendPerformanceForCategory:10 eventType:1];

    v45[0] = @"2";
    v44[0] = @"appUUIDLoaded";
    v44[1] = @"clientDataHashValid";
    v26 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40) != 0];
    v45[1] = v26;
    v45[2] = &unk_284AE94C8;
    v44[2] = @"attestedKey";
    v44[3] = @"serviceType";
    v45[3] = @"web";
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:4];

    v28 = +[DCAnalytics shared];
    v29 = [*(a1 + 48) rewrapAsDCError:v31];
    [v28 sendPayload:v27 forEvent:@"com.apple.devicecheck.appattest.attestKey" withError:v29];

    (*(*(a1 + 56) + 16))();
    goto LABEL_25;
  }

  v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = 0;
  allocator = *MEMORY[0x277CBECE8];
  v32 = a1;
  do
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@:%d", *(a1 + 32), @"cert", v4];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __99__DCAppAttestController_attestKey_keyAttributes_clientDataHash_authData_options_completionHandler___block_invoke_56;
    v39[3] = &unk_278A46048;
    v6 = v5;
    v40 = v6;
    v41 = *(a1 + 32);
    v7 = MEMORY[0x2383E6220](v39);
    v38 = -1;
    v37 = 0;
    v8 = copy_keychain_data(@"appattest-webauthn", v6, &v38, &v37);
    v9 = v37;
    v10 = v9;
    if (v8 && !v38 && !v9)
    {
      goto LABEL_11;
    }

    if (DCLogSystem_onceToken != -1)
    {
      [DCAppAttestController isSupported];
    }

    v11 = DCLogSystem_log;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [v10 localizedDescription];
      *buf = 136316162;
      v49 = "DCAppAttestController.m";
      v50 = 1024;
      v51 = 258;
      v52 = 2112;
      v53 = v12;
      v54 = 1024;
      v55 = v38;
      v56 = 2112;
      v57 = v6;
      _os_log_impl(&dword_238044000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to copy certificate data. { error=%@, err=%d, label=%@ }", buf, 0x2Cu);
    }

    if (v8)
    {
LABEL_11:
      v13 = SecCertificateCreateWithData(allocator, v8);
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __99__DCAppAttestController_attestKey_keyAttributes_clientDataHash_authData_options_completionHandler___block_invoke_57;
      v36[3] = &__block_descriptor_40_e5_v8__0l;
      v36[4] = v13;
      v14 = MEMORY[0x2383E6220](v36);
      if (v13)
      {
        if (DCLogSystem_onceToken != -1)
        {
          [DCAppAttestController isSupported];
        }

        v15 = DCLogSystem_log;
        if (!os_log_type_enabled(DCLogSystem_log, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_21;
        }

        *buf = 136315650;
        v49 = "DCAppAttestController.m";
        v50 = 1024;
        v51 = 265;
        v52 = 2112;
        v53 = v6;
        v16 = v15;
        v17 = "%25s:%-5d Created cert. { label=%@ }";
      }

      else
      {
        if (DCLogSystem_onceToken != -1)
        {
          [DCAppAttestController isSupported];
        }

        v18 = DCLogSystem_log;
        if (!os_log_type_enabled(DCLogSystem_log, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_21;
        }

        *buf = 136315650;
        v49 = "DCAppAttestController.m";
        v50 = 1024;
        v51 = 264;
        v52 = 2112;
        v53 = v6;
        v16 = v18;
        v17 = "%25s:%-5d Failed to create cert. { label=%@ }";
      }

      _os_log_impl(&dword_238044000, v16, OS_LOG_TYPE_DEBUG, v17, buf, 0x1Cu);
LABEL_21:
      [v34 addObject:v13];
      v14[2](v14);
      a1 = v32;
    }

    v7[2](v7);
    v4 = (v4 + 1);
  }

  while (a2 != v4);
  v19 = +[DCAnalytics shared];
  [v19 sendPerformanceForCategory:10 eventType:1];

  v47[0] = @"2";
  v46[0] = @"appUUIDLoaded";
  v46[1] = @"clientDataHashValid";
  v20 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40) != 0];
  v47[1] = v20;
  v46[2] = @"attestedKey";
  v21 = [MEMORY[0x277CCABB0] numberWithInt:v34 != 0];
  v46[3] = @"serviceType";
  v47[2] = v21;
  v47[3] = @"web";
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:4];

  v23 = +[DCAnalytics shared];
  v24 = [*(a1 + 48) rewrapAsDCError:v31];
  [v23 sendPayload:v22 forEvent:@"com.apple.devicecheck.appattest.attestKey" withError:v24];

  (*(*(a1 + 56) + 16))();
LABEL_25:
  v30[2]();
}

void __99__DCAppAttestController_attestKey_keyAttributes_clientDataHash_authData_options_completionHandler___block_invoke_3(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v11 = 0;
  v3 = delete_keychain_item(@"appattest-webauthn", v2, &v11);
  v4 = v11;
  v5 = v4;
  if (!v3 || v4 != 0)
  {
    if (DCLogSystem_onceToken != -1)
    {
      [DCAppAttestController isSupported];
    }

    v7 = DCLogSystem_log;
    if (os_log_type_enabled(DCLogSystem_log, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = v7;
      v10 = [v5 localizedDescription];
      *buf = 136315906;
      v13 = "DCAppAttestController.m";
      v14 = 1024;
      v15 = 240;
      v16 = 2112;
      v17 = v8;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&dword_238044000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to delete key from keychain. { keyId=%@, error=%@ }", buf, 0x26u);
    }
  }
}

void __99__DCAppAttestController_attestKey_keyAttributes_clientDataHash_authData_options_completionHandler___block_invoke_56(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v11 = 0;
  v3 = delete_keychain_item(@"appattest-webauthn", v2, &v11);
  v4 = v11;
  v5 = v4;
  if (!v3 || v4 != 0)
  {
    if (DCLogSystem_onceToken != -1)
    {
      [DCAppAttestController isSupported];
    }

    v7 = DCLogSystem_log;
    if (os_log_type_enabled(DCLogSystem_log, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 40);
      v9 = v7;
      v10 = [v5 localizedDescription];
      *buf = 136315906;
      v13 = "DCAppAttestController.m";
      v14 = 1024;
      v15 = 252;
      v16 = 2112;
      v17 = v8;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&dword_238044000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to delete cert from keychain. { keyId=%@, error=%@ }", buf, 0x26u);
    }
  }
}

void __99__DCAppAttestController_attestKey_keyAttributes_clientDataHash_authData_options_completionHandler___block_invoke_57(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

void __99__DCAppAttestController_attestKey_keyAttributes_clientDataHash_authData_options_completionHandler___block_invoke_66(uint64_t a1, int a2, void *a3)
{
  v56 = *MEMORY[0x277D85DE8];
  v28 = a3;
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __99__DCAppAttestController_attestKey_keyAttributes_clientDataHash_authData_options_completionHandler___block_invoke_2_67;
  v39[3] = &unk_278A460B8;
  v40 = *(a1 + 32);
  v41 = *(a1 + 64);
  v27 = MEMORY[0x2383E6220](v39);
  if (a2 < 1)
  {
    v22 = +[DCAnalytics shared];
    [v22 sendPerformanceForCategory:11 eventType:1];

    v43[0] = @"2";
    v42[0] = @"appUUIDLoaded";
    v42[1] = @"clientDataHashValid";
    v23 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40) != 0];
    v43[1] = v23;
    v42[2] = @"attestedKey";
    v42[3] = @"serviceType";
    v43[2] = &unk_284AE94C8;
    v43[3] = @"device";
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:4];

    v25 = +[DCAnalytics shared];
    v26 = [*(a1 + 48) rewrapAsDCError:v28];
    [v25 sendPayload:v24 forEvent:@"com.apple.devicecheck.appattest.attestKey" withError:v26];

    v27[2]();
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v4 = 0;
    allocator = *MEMORY[0x277CBECE8];
    do
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@:%d", *(a1 + 32), @"cert", v4];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __99__DCAppAttestController_attestKey_keyAttributes_clientDataHash_authData_options_completionHandler___block_invoke_68;
      v35[3] = &unk_278A460E0;
      v6 = v5;
      v36 = v6;
      v38 = *(a1 + 64);
      v37 = *(a1 + 32);
      v7 = MEMORY[0x2383E6220](v35);
      v34 = -1;
      v33 = 0;
      v8 = copy_keychain_data(@"appattest-device", v6, &v34, &v33);
      v9 = v33;
      v10 = v9;
      if (v8 && !v34 && !v9)
      {
        goto LABEL_11;
      }

      if (DCLogSystem_onceToken != -1)
      {
        [DCAppAttestController isSupported];
      }

      v11 = DCLogSystem_log;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = [v10 localizedDescription];
        *buf = 136316162;
        v47 = "DCAppAttestController.m";
        v48 = 1024;
        v49 = 333;
        v50 = 2112;
        v51 = v12;
        v52 = 1024;
        v53 = v34;
        v54 = 2112;
        v55 = v6;
        _os_log_impl(&dword_238044000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to copy certificate data. { error=%@, err=%d, label=%@ }", buf, 0x2Cu);
      }

      if (v8)
      {
LABEL_11:
        v13 = SecCertificateCreateWithData(allocator, v8);
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __99__DCAppAttestController_attestKey_keyAttributes_clientDataHash_authData_options_completionHandler___block_invoke_69;
        v32[3] = &__block_descriptor_40_e5_v8__0l;
        v32[4] = v13;
        v14 = MEMORY[0x2383E6220](v32);
        if (!v13)
        {
          if (DCLogSystem_onceToken != -1)
          {
            [DCAppAttestController isSupported];
          }

          v15 = DCLogSystem_log;
          if (os_log_type_enabled(DCLogSystem_log, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            v47 = "DCAppAttestController.m";
            v48 = 1024;
            v49 = 339;
            v50 = 2112;
            v51 = v6;
            _os_log_impl(&dword_238044000, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to create cert. { label=%@ }", buf, 0x1Cu);
          }
        }

        [v30 addObject:v13];
        v14[2](v14);
      }

      v7[2](v7);
      v4 = (v4 + 1);
    }

    while (a2 != v4);
    v16 = +[DCAnalytics shared];
    [v16 sendPerformanceForCategory:11 eventType:1];

    v45[0] = @"2";
    v44[0] = @"appUUIDLoaded";
    v44[1] = @"clientDataHashValid";
    v17 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40) != 0];
    v45[1] = v17;
    v44[2] = @"attestedKey";
    v18 = [MEMORY[0x277CCABB0] numberWithInt:v30 != 0];
    v45[2] = v18;
    v44[3] = @"serviceType";
    v45[3] = @"device";
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:4];

    v20 = +[DCAnalytics shared];
    v21 = [*(a1 + 48) rewrapAsDCError:v28];
    [v20 sendPayload:v19 forEvent:@"com.apple.devicecheck.appattest.attestKey" withError:v21];

    v27[2]();
    (*(*(a1 + 56) + 16))();
  }
}

void __99__DCAppAttestController_attestKey_keyAttributes_clientDataHash_authData_options_completionHandler___block_invoke_2_67(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v12 = 0;
  v4 = delete_keychain_item_for_system_keychain(@"appattest-device", v2, v3, &v12);
  v5 = v12;
  v6 = v5;
  if (!v4 || v5 != 0)
  {
    if (DCLogSystem_onceToken != -1)
    {
      [DCAppAttestController isSupported];
    }

    v8 = DCLogSystem_log;
    if (os_log_type_enabled(DCLogSystem_log, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = v8;
      v11 = [v6 localizedDescription];
      *buf = 136315906;
      v14 = "DCAppAttestController.m";
      v15 = 1024;
      v16 = 315;
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_238044000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to delete key from keychain. { keyId=%@, error=%@ }", buf, 0x26u);
    }
  }
}

void __99__DCAppAttestController_attestKey_keyAttributes_clientDataHash_authData_options_completionHandler___block_invoke_68(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v12 = 0;
  v4 = delete_keychain_item_for_system_keychain(@"appattest-device", v2, v3, &v12);
  v5 = v12;
  v6 = v5;
  if (!v4 || v5 != 0)
  {
    if (DCLogSystem_onceToken != -1)
    {
      [DCAppAttestController isSupported];
    }

    v8 = DCLogSystem_log;
    if (os_log_type_enabled(DCLogSystem_log, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 40);
      v10 = v8;
      v11 = [v6 localizedDescription];
      *buf = 136315906;
      v14 = "DCAppAttestController.m";
      v15 = 1024;
      v16 = 327;
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_238044000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to delete cert from keychain. { keyId=%@, error=%@ }", buf, 0x26u);
    }
  }
}

void __99__DCAppAttestController_attestKey_keyAttributes_clientDataHash_authData_options_completionHandler___block_invoke_69(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

- (void)generateAssertion:(id)assertion teamIdentifier:(id)identifier clientDataHash:(id)hash completionHandler:(id)handler
{
  assertionCopy = assertion;
  identifierCopy = identifier;
  hashCopy = hash;
  handlerCopy = handler;
  v14 = dispatch_get_current_queue();
  v15 = clientProcessingQueue(v14);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __91__DCAppAttestController_generateAssertion_teamIdentifier_clientDataHash_completionHandler___block_invoke;
  v21[3] = &unk_278A45FF8;
  v21[4] = self;
  v22 = assertionCopy;
  v23 = hashCopy;
  v24 = v14;
  v25 = identifierCopy;
  v26 = handlerCopy;
  v16 = identifierCopy;
  v17 = v14;
  v18 = hashCopy;
  v19 = assertionCopy;
  v20 = handlerCopy;
  dispatch_async(v15, v21);
}

void __91__DCAppAttestController_generateAssertion_teamIdentifier_clientDataHash_completionHandler___block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  if (DCLogSystem_onceToken != -1)
  {
    __66__DCAppAttestController_generateKeyWithTeamIdentifier_completion___block_invoke_cold_1();
  }

  v2 = DCLogSystem_log;
  if (os_log_type_enabled(DCLogSystem_log, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    v4 = clientProcessingQueue(v3);
    *buf = 136315650;
    *&buf[4] = "DCAppAttestController.m";
    *&buf[12] = 1024;
    *&buf[14] = 393;
    *&buf[18] = 2080;
    *&buf[20] = dispatch_queue_get_label(v4);
    _os_log_impl(&dword_238044000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Dispatching generate assertion onto client processing queue. { label=%s }", buf, 0x1Cu);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = __Block_byref_object_copy_;
  v43 = __Block_byref_object_dispose_;
  v44 = objc_alloc_init(DCDeviceMetadataDaemonConnection);
  v5 = *(*&buf[8] + 40);
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __91__DCAppAttestController_generateAssertion_teamIdentifier_clientDataHash_completionHandler___block_invoke_73;
  v36[3] = &unk_278A45EB8;
  v37 = *(a1 + 72);
  v6 = [v5 remoteObjectProxy:v36];
  v7 = [*(a1 + 32) loadAppUUID];
  if ([*(a1 + 32) appAttestType])
  {
    if ([*(a1 + 32) appAttestType] != 1)
    {
      goto LABEL_10;
    }

    v8 = +[DCAnalytics shared];
    [v8 sendPerformanceForCategory:13 eventType:0];

    v9 = *(a1 + 64);
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __91__DCAppAttestController_generateAssertion_teamIdentifier_clientDataHash_completionHandler___block_invoke_4;
    v24 = &unk_278A46180;
    v25 = *(a1 + 32);
    v26 = v7;
    v27 = *(a1 + 40);
    v28 = *(a1 + 48);
    v29[0] = *(a1 + 72);
    v29[1] = buf;
    [v6 appAttestationAssertWithTeamIdentifier:v9 appUUID:v26 keyId:v10 clientDataHash:v11 completion:&v21];
    v12 = &v26;
    v13 = &v27;
    v14 = &v28;
    v15 = v29;
  }

  else
  {
    v16 = +[DCAnalytics shared];
    [v16 sendPerformanceForCategory:12 eventType:0];

    v17 = *(a1 + 40);
    v18 = *(a1 + 48);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __91__DCAppAttestController_generateAssertion_teamIdentifier_clientDataHash_completionHandler___block_invoke_2;
    v30[3] = &unk_278A46158;
    v30[4] = *(a1 + 32);
    v31 = v7;
    v32 = *(a1 + 40);
    v33 = *(a1 + 48);
    v35[0] = *(a1 + 72);
    v35[1] = buf;
    v34 = *(a1 + 56);
    [v6 appAttestationAssert:v31 keyId:v17 clientDataHash:v18 completion:v30];

    v12 = &v31;
    v13 = &v32;
    v14 = &v33;
    v15 = v35;
  }

LABEL_10:
  if ([*(a1 + 32) appAttestType] == 2)
  {
    if (DCLogSystem_onceToken != -1)
    {
      [DCAppAttestController isSupported];
    }

    v19 = DCLogSystem_log;
    if (os_log_type_enabled(DCLogSystem_log, OS_LOG_TYPE_ERROR))
    {
      *v38 = 136315394;
      v39 = "DCAppAttestController.m";
      v40 = 1024;
      v41 = 453;
      _os_log_impl(&dword_238044000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid usage, cannot use this method for AppAttestTypeWeb.", v38, 0x12u);
    }
  }

  if ([*(a1 + 32) appAttestType] == 3)
  {
    if (DCLogSystem_onceToken != -1)
    {
      [DCAppAttestController isSupported];
    }

    v20 = DCLogSystem_log;
    if (os_log_type_enabled(DCLogSystem_log, OS_LOG_TYPE_ERROR))
    {
      *v38 = 136315394;
      v39 = "DCAppAttestController.m";
      v40 = 1024;
      v41 = 454;
      _os_log_impl(&dword_238044000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid usage, cannot use this method for AppAttestTypeDevice.", v38, 0x12u);
    }
  }

  _Block_object_dispose(buf, 8);
}

void __91__DCAppAttestController_generateAssertion_teamIdentifier_clientDataHash_completionHandler___block_invoke_73(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] dc_errorWithCode:0];
  (*(v1 + 16))(v1, 0, v2);
}

void __91__DCAppAttestController_generateAssertion_teamIdentifier_clientDataHash_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __91__DCAppAttestController_generateAssertion_teamIdentifier_clientDataHash_completionHandler___block_invoke_3;
  v13[3] = &unk_278A46130;
  v13[4] = v7;
  v14 = v6;
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  v18 = v5;
  v8 = *(a1 + 72);
  v9 = *(a1 + 80);
  v19 = v8;
  v20 = v9;
  v10 = *(a1 + 64);
  v11 = v5;
  v12 = v6;
  [v7 dispatchCompletionHandler:v13 ontoQueue:v10];
}

void __91__DCAppAttestController_generateAssertion_teamIdentifier_clientDataHash_completionHandler___block_invoke_3(uint64_t a1)
{
  v15[5] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) rewrapAsDCError:*(a1 + 40)];
  v3 = +[DCAnalytics shared];
  [v3 sendPerformanceForCategory:12 eventType:1];

  v14[0] = @"appUUIDLoaded";
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48) != 0];
  v15[0] = v4;
  v14[1] = @"keyIdValid";
  v5 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 56) != 0];
  v15[1] = v5;
  v14[2] = @"clientDataHashValid";
  v6 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 64) != 0];
  v15[2] = v6;
  v14[3] = @"generatedAssertion";
  v7 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 72) != 0];
  v14[4] = @"serviceType";
  v15[3] = v7;
  v15[4] = @"default";
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:5];

  v9 = +[DCAnalytics shared];
  [v9 sendPayload:v8 forEvent:@"com.apple.devicecheck.appattest.generateAssertion" withError:v2];

  v11 = *(a1 + 72);
  v10 = *(a1 + 80);
  v12 = [*(a1 + 32) rewrapAsDCError:*(a1 + 40)];
  (*(v10 + 16))(v10, v11, v12);

  v13 = [*(*(*(a1 + 88) + 8) + 40) connection];
  [v13 invalidate];
}

void __91__DCAppAttestController_generateAssertion_teamIdentifier_clientDataHash_completionHandler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v20[5] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 rewrapAsDCError:v6];
  v9 = +[DCAnalytics shared];
  [v9 sendPerformanceForCategory:13 eventType:1];

  v19[0] = @"appUUIDLoaded";
  v10 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40) != 0];
  v20[0] = v10;
  v19[1] = @"keyIdValid";
  v11 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48) != 0];
  v20[1] = v11;
  v19[2] = @"clientDataHashValid";
  v12 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 56) != 0];
  v20[2] = v12;
  v19[3] = @"generatedAssertion";
  v13 = [MEMORY[0x277CCABB0] numberWithInt:v7 != 0];
  v19[4] = @"serviceType";
  v20[3] = v13;
  v20[4] = @"priv";
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:5];

  v15 = +[DCAnalytics shared];
  [v15 sendPayload:v14 forEvent:@"com.apple.devicecheck.appattest.generateAssertion" withError:v8];

  v16 = *(a1 + 64);
  v17 = [*(a1 + 32) rewrapAsDCError:v6];

  (*(v16 + 16))(v16, v7, v17);
  v18 = [*(*(*(a1 + 72) + 8) + 40) connection];
  [v18 invalidate];
}

- (void)sign:(id)sign withKey:(id)key teamIdentifier:(id)identifier completionHandler:(id)handler
{
  signCopy = sign;
  keyCopy = key;
  identifierCopy = identifier;
  handlerCopy = handler;
  v14 = clientProcessingQueue(handlerCopy);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__DCAppAttestController_sign_withKey_teamIdentifier_completionHandler___block_invoke;
  block[3] = &unk_278A461D0;
  v22 = identifierCopy;
  v23 = handlerCopy;
  block[4] = self;
  v20 = signCopy;
  v21 = keyCopy;
  v15 = identifierCopy;
  v16 = keyCopy;
  v17 = signCopy;
  v18 = handlerCopy;
  dispatch_async(v14, block);
}

void __71__DCAppAttestController_sign_withKey_teamIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  if (DCLogSystem_onceToken != -1)
  {
    __66__DCAppAttestController_generateKeyWithTeamIdentifier_completion___block_invoke_cold_1();
  }

  v2 = DCLogSystem_log;
  if (os_log_type_enabled(DCLogSystem_log, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    v4 = clientProcessingQueue(v3);
    *buf = 136315650;
    *&buf[4] = "DCAppAttestController.m";
    *&buf[12] = 1024;
    *&buf[14] = 461;
    *&buf[18] = 2080;
    *&buf[20] = dispatch_queue_get_label(v4);
    _os_log_impl(&dword_238044000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Dispatching sign onto client processing queue. { label=%s }", buf, 0x1Cu);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = objc_alloc_init(DCDeviceMetadataDaemonConnection);
  v5 = *(*&buf[8] + 40);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __71__DCAppAttestController_sign_withKey_teamIdentifier_completionHandler___block_invoke_80;
  v16[3] = &unk_278A45EB8;
  v17 = *(a1 + 64);
  v6 = [v5 remoteObjectProxy:v16];
  v7 = [*(a1 + 32) loadAppUUID];
  if (!v7)
  {
    if (DCLogSystem_onceToken != -1)
    {
      [DCAppAttestController isSupported];
    }

    v8 = DCLogSystem_log;
    if (os_log_type_enabled(DCLogSystem_log, OS_LOG_TYPE_ERROR))
    {
      *v18 = 136315394;
      v19 = "DCAppAttestController.m";
      v20 = 1024;
      v21 = 469;
      _os_log_impl(&dword_238044000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to fetch App UUID.", v18, 0x12u);
    }
  }

  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __71__DCAppAttestController_sign_withKey_teamIdentifier_completionHandler___block_invoke_81;
  v13[3] = &unk_278A461A8;
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v13[4] = *(a1 + 32);
  v14 = v12;
  v15 = buf;
  [v6 appAttestationSign:v9 appUUID:v7 keyId:v10 teamId:v11 completion:v13];

  _Block_object_dispose(buf, 8);
}

void __71__DCAppAttestController_sign_withKey_teamIdentifier_completionHandler___block_invoke_80(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] dc_errorWithCode:0];
  (*(v1 + 16))(v1, 0, v2);
}

void __71__DCAppAttestController_sign_withKey_teamIdentifier_completionHandler___block_invoke_81(void *a1, void *a2, uint64_t a3)
{
  v6 = a1[4];
  v5 = a1[5];
  v7 = a2;
  v8 = [v6 rewrapAsDCError:a3];
  (*(v5 + 16))(v5, v7, v8);

  v9 = [*(*(a1[6] + 8) + 40) connection];
  [v9 invalidate];
}

- (void)getPropertiesForKeyId:(id)id teamIdentifier:(id)identifier completionHandler:(id)handler
{
  idCopy = id;
  identifierCopy = identifier;
  handlerCopy = handler;
  v11 = clientProcessingQueue(handlerCopy);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __80__DCAppAttestController_getPropertiesForKeyId_teamIdentifier_completionHandler___block_invoke;
  v15[3] = &unk_278A45F58;
  v15[4] = self;
  v16 = idCopy;
  v17 = identifierCopy;
  v18 = handlerCopy;
  v12 = identifierCopy;
  v13 = idCopy;
  v14 = handlerCopy;
  dispatch_async(v11, v15);
}

void __80__DCAppAttestController_getPropertiesForKeyId_teamIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if (DCLogSystem_onceToken != -1)
  {
    __66__DCAppAttestController_generateKeyWithTeamIdentifier_completion___block_invoke_cold_1();
  }

  v2 = DCLogSystem_log;
  if (os_log_type_enabled(DCLogSystem_log, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    v4 = clientProcessingQueue(v3);
    *buf = 136315650;
    v16 = "DCAppAttestController.m";
    v17 = 1024;
    v18 = 481;
    v19 = 2080;
    label = dispatch_queue_get_label(v4);
    _os_log_impl(&dword_238044000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Dispatching get properties for key onto client processing queue. { label=%s }", buf, 0x1Cu);
  }

  v5 = objc_alloc_init(DCDeviceMetadataDaemonConnection);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __80__DCAppAttestController_getPropertiesForKeyId_teamIdentifier_completionHandler___block_invoke_82;
  v13[3] = &unk_278A45EB8;
  v14 = *(a1 + 56);
  v6 = [(DCDeviceMetadataDaemonConnection *)v5 remoteObjectProxy:v13];
  v7 = [*(a1 + 32) loadAppUUID];
  if (!v7)
  {
    if (DCLogSystem_onceToken != -1)
    {
      [DCAppAttestController isSupported];
    }

    v8 = DCLogSystem_log;
    if (os_log_type_enabled(DCLogSystem_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "DCAppAttestController.m";
      v17 = 1024;
      v18 = 489;
      _os_log_impl(&dword_238044000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to fetch App UUID.", buf, 0x12u);
    }
  }

  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __80__DCAppAttestController_getPropertiesForKeyId_teamIdentifier_completionHandler___block_invoke_83;
  v11[3] = &unk_278A461F8;
  v11[4] = *(a1 + 32);
  v12 = *(a1 + 56);
  [v6 getKeyProxyEndpoint:v7 keyId:v9 teamIdentifier:v10 completion:v11];
}

void __80__DCAppAttestController_getPropertiesForKeyId_teamIdentifier_completionHandler___block_invoke_82(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] dc_errorWithCode:0];
  (*(v1 + 16))(v1, 0, v2);
}

void __80__DCAppAttestController_getPropertiesForKeyId_teamIdentifier_completionHandler___block_invoke_83(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (DCLogSystem_onceToken != -1)
    {
      __66__DCAppAttestController_generateKeyWithTeamIdentifier_completion___block_invoke_cold_1();
    }

    v7 = DCLogSystem_log;
    if (os_log_type_enabled(DCLogSystem_log, OS_LOG_TYPE_ERROR))
    {
      v8 = v7;
      v9 = [v6 localizedDescription];
      *buf = 136315650;
      v20 = "DCAppAttestController.m";
      v21 = 1024;
      v22 = 493;
      v23 = 2112;
      v24 = v9;
      _os_log_impl(&dword_238044000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to get key proxy endpoint. { error=%@ }", buf, 0x1Cu);
    }

    v10 = [*(a1 + 32) rewrapAsDCError:v6];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (DCLogSystem_onceToken != -1)
    {
      __66__DCAppAttestController_generateKeyWithTeamIdentifier_completion___block_invoke_cold_1();
    }

    v11 = DCLogSystem_log;
    if (os_log_type_enabled(DCLogSystem_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v20 = "DCAppAttestController.m";
      v21 = 1024;
      v22 = 499;
      v23 = 2112;
      v24 = v5;
      _os_log_impl(&dword_238044000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Received key proxy endpoint. { endpoint=%@ }", buf, 0x1Cu);
    }

    v18 = 0;
    v12 = [MEMORY[0x277CDBD80] createKeyFromEndpoint:v5 error:&v18];
    v10 = v18;
    if (v12)
    {
      v13 = SecKeyCopyAttributes(v12);
      if (DCLogSystem_onceToken != -1)
      {
        [DCAppAttestController isSupported];
      }

      v14 = DCLogSystem_log;
      if (os_log_type_enabled(DCLogSystem_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v20 = "DCAppAttestController.m";
        v21 = 1024;
        v22 = 510;
        v23 = 2112;
        v24 = v5;
        v25 = 2112;
        v26 = v13;
        _os_log_impl(&dword_238044000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Fetched key properties. { endpoint=%@, properties=%@ }", buf, 0x26u);
      }

      v15 = *(*(a1 + 40) + 16);
    }

    else
    {
      if (DCLogSystem_onceToken != -1)
      {
        [DCAppAttestController isSupported];
      }

      v16 = DCLogSystem_log;
      if (os_log_type_enabled(DCLogSystem_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v20 = "DCAppAttestController.m";
        v21 = 1024;
        v22 = 504;
        v23 = 2112;
        v24 = v5;
        _os_log_impl(&dword_238044000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to create key from key proxy endpoint. { endpoint=%@ }", buf, 0x1Cu);
      }

      v17 = *(a1 + 40);
      v13 = [MEMORY[0x277CCA9B8] dc_errorWithCode:2];
      v15 = *(v17 + 16);
    }

    v15();
  }
}

- (BOOL)isSupportedWithError:(id *)error
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v5 = objc_opt_new();
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __46__DCAppAttestController_isSupportedWithError___block_invoke;
  v18[3] = &unk_278A46220;
  v18[4] = &v25;
  v18[5] = &v19;
  v6 = [v5 synchronousRemoteObjectProxy:v18];
  if (![(DCAppAttestController *)self appAttestType])
  {
    v9 = +[DCAnalytics shared];
    [v9 sendPerformanceForCategory:2 eventType:0];

    v8 = v17;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __46__DCAppAttestController_isSupportedWithError___block_invoke_86;
    v17[3] = &unk_278A46248;
    v17[5] = &v25;
    v17[6] = &v19;
    v17[4] = v5;
    [v6 appAttestationIsSupportedWithCompletion:v17];
    goto LABEL_9;
  }

  if ([(DCAppAttestController *)self appAttestType]== 1)
  {
    v7 = +[DCAnalytics shared];
    [v7 sendPerformanceForCategory:3 eventType:0];

    v8 = v16;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __46__DCAppAttestController_isSupportedWithError___block_invoke_2;
    v16[3] = &unk_278A46248;
    v16[5] = &v25;
    v16[6] = &v19;
    v16[4] = v5;
    [v6 appAttestationPrivIsSupportedWithCompletion:v16];
LABEL_9:

    goto LABEL_10;
  }

  if ([(DCAppAttestController *)self appAttestType]== 2)
  {
    v10 = +[DCAnalytics shared];
    [v10 sendPerformanceForCategory:4 eventType:0];

    v8 = v15;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __46__DCAppAttestController_isSupportedWithError___block_invoke_3;
    v15[3] = &unk_278A46248;
    v15[5] = &v25;
    v15[6] = &v19;
    v15[4] = v5;
    [v6 appAttestationWebIsSupportedWithCompletion:v15];
    goto LABEL_9;
  }

  if ([(DCAppAttestController *)self appAttestType]== 3)
  {
    v11 = +[DCAnalytics shared];
    [v11 sendPerformanceForCategory:5 eventType:0];

    v8 = v14;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __46__DCAppAttestController_isSupportedWithError___block_invoke_4;
    v14[3] = &unk_278A46248;
    v14[5] = &v25;
    v14[6] = &v19;
    v14[4] = v5;
    [v6 appAttestationDeviceIsSupportedWithCompletion:v14];
    goto LABEL_9;
  }

LABEL_10:
  *error = v20[5];
  v12 = *(v26 + 24);

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);
  return v12;
}

void __46__DCAppAttestController_isSupportedWithError___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    if (DCLogSystem_onceToken != -1)
    {
      __66__DCAppAttestController_generateKeyWithTeamIdentifier_completion___block_invoke_cold_1();
    }

    v4 = DCLogSystem_log;
    if (os_log_type_enabled(DCLogSystem_log, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 localizedDescription];
      v9 = 136315650;
      v10 = "DCAppAttestController.m";
      v11 = 1024;
      v12 = 527;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_238044000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to setup synchronous remote object proxy to daemon. { error=%@ }", &v9, 0x1Cu);
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v3;
}

void __46__DCAppAttestController_isSupportedWithError___block_invoke_86(uint64_t a1, uint64_t a2, void *a3)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = +[DCAnalytics shared];
  [v6 sendPerformanceForCategory:2 eventType:1];

  v14[0] = @"isSupported";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  v14[1] = @"serviceType";
  v15[0] = v7;
  v15[1] = @"default";
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v9 = +[DCAnalytics shared];
  [v9 sendPayload:v8 forEvent:@"com.apple.devicecheck.appattest.isSupported" withError:v5];

  *(*(*(a1 + 40) + 8) + 24) = a2;
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v5;
  v12 = v5;

  v13 = [*(a1 + 32) connection];

  [v13 invalidate];
}

void __46__DCAppAttestController_isSupportedWithError___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = +[DCAnalytics shared];
  [v6 sendPerformanceForCategory:3 eventType:1];

  v14[0] = @"isSupported";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  v14[1] = @"serviceType";
  v15[0] = v7;
  v15[1] = @"priv";
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v9 = +[DCAnalytics shared];
  [v9 sendPayload:v8 forEvent:@"com.apple.devicecheck.appattest.isSupported" withError:v5];

  *(*(*(a1 + 40) + 8) + 24) = a2;
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v5;
  v12 = v5;

  v13 = [*(a1 + 32) connection];

  [v13 invalidate];
}

void __46__DCAppAttestController_isSupportedWithError___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = +[DCAnalytics shared];
  [v6 sendPerformanceForCategory:4 eventType:1];

  v14[0] = @"isSupported";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  v14[1] = @"serviceType";
  v15[0] = v7;
  v15[1] = @"web";
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v9 = +[DCAnalytics shared];
  [v9 sendPayload:v8 forEvent:@"com.apple.devicecheck.appattest.isSupported" withError:v5];

  *(*(*(a1 + 40) + 8) + 24) = a2;
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v5;
  v12 = v5;

  v13 = [*(a1 + 32) connection];

  [v13 invalidate];
}

void __46__DCAppAttestController_isSupportedWithError___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = +[DCAnalytics shared];
  [v6 sendPerformanceForCategory:5 eventType:1];

  v14[0] = @"isSupported";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  v14[1] = @"serviceType";
  v15[0] = v7;
  v15[1] = @"device";
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v9 = +[DCAnalytics shared];
  [v9 sendPayload:v8 forEvent:@"com.apple.devicecheck.appattest.isSupported" withError:v5];

  *(*(*(a1 + 40) + 8) + 24) = a2;
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v5;
  v12 = v5;

  v13 = [*(a1 + 32) connection];

  [v13 invalidate];
}

- (id)loadAppUUID
{
  v16 = *MEMORY[0x277D85DE8];
  legacyUserDefaults = [(DCAppAttestController *)self legacyUserDefaults];
  v4 = [legacyUserDefaults stringForKey:@"com.apple.DC.AppAttestAppUUID"];

  userDefaults = [(DCAppAttestController *)self userDefaults];
  v6 = [userDefaults stringForKey:@"com.apple.DC.AppAttestAppUUID"];

  if (v4 && !v6)
  {
    if (DCLogSystem_onceToken != -1)
    {
      __66__DCAppAttestController_generateKeyWithTeamIdentifier_completion___block_invoke_cold_1();
    }

    v7 = DCLogSystem_log;
    if (os_log_type_enabled(DCLogSystem_log, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315394;
      v13 = "DCAppAttestController.m";
      v14 = 1024;
      v15 = 640;
      _os_log_impl(&dword_238044000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Fetched UUID from legacy suite, transferring value to new suite.", &v12, 0x12u);
    }

    [(DCAppAttestController *)self saveAppUUID:v4];
    legacyUserDefaults2 = [(DCAppAttestController *)self legacyUserDefaults];
    [legacyUserDefaults2 removeObjectForKey:@"com.apple.DC.AppAttestAppUUID"];

    v6 = v4;
  }

  v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v6];
  if (v9)
  {
    v10 = v6;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)saveAppUUID:(id)d
{
  v4 = *MEMORY[0x277CBF040];
  v5 = *MEMORY[0x277CBF010];
  dCopy = d;
  _CFPreferencesSetBackupDisabled();
  userDefaults = [(DCAppAttestController *)self userDefaults];
  [userDefaults setObject:dCopy forKey:@"com.apple.DC.AppAttestAppUUID"];

  CFPreferencesSynchronize(@"com.apple.AppAttest.client", v4, v5);
}

- (id)rewrapAsDCError:(id)error
{
  v20 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v4 = errorCopy;
  if (errorCopy)
  {
    domain = [errorCopy domain];
    v6 = [domain isEqualToString:@"com.apple.appattest.error"];

    if (v6 && (v7 = [v4 code], (v7 + 7) <= 5))
    {
      v8 = qword_23804FDF8[v7 + 7];
    }

    else
    {
      v8 = 0;
    }

    v9 = [MEMORY[0x277CCA9B8] dc_errorWithCode:v8];
    if (DCLogSystem_onceToken != -1)
    {
      __66__DCAppAttestController_generateKeyWithTeamIdentifier_completion___block_invoke_cold_1();
    }

    v10 = DCLogSystem_log;
    if (os_log_type_enabled(DCLogSystem_log, OS_LOG_TYPE_DEBUG))
    {
      v12 = 136315906;
      v13 = "DCAppAttestController.m";
      v14 = 1024;
      v15 = 703;
      v16 = 2112;
      v17 = v9;
      v18 = 2112;
      v19 = v4;
      _os_log_impl(&dword_238044000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d Re-mapped error. { mapped=%@, internal=%@ }", &v12, 0x26u);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)dispatchCompletionHandler:(id)handler ontoQueue:(id)queue
{
  v20 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  queueCopy = queue;
  v7 = copy_current_process_name();
  v8 = [objc_alloc(MEMORY[0x277CBEB58]) initWithObjects:{@"CommCenter", 0}];
  v9 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.DeviceCheck"];
  if ([v9 BOOLForKey:@"dispatchTestDaemonToCallingQueue"])
  {
    [v8 addObject:@"dctestd"];
  }

  if ([v8 containsObject:v7] && queueCopy)
  {
    label = dispatch_queue_get_label(queueCopy);
    if (DCLogSystem_onceToken != -1)
    {
      __66__DCAppAttestController_generateKeyWithTeamIdentifier_completion___block_invoke_cold_1();
    }

    v11 = DCLogSystem_log;
    if (os_log_type_enabled(DCLogSystem_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v15 = "DCAppAttestController.m";
      v16 = 1024;
      v17 = 726;
      v18 = 2080;
      v19 = label;
      _os_log_impl(&dword_238044000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Dispatching completion handler onto calling queue. { queueLabel=%s }", buf, 0x1Cu);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__DCAppAttestController_dispatchCompletionHandler_ontoQueue___block_invoke;
    block[3] = &unk_278A46270;
    v13 = handlerCopy;
    dispatch_async(queueCopy, block);
  }

  else
  {
    handlerCopy[2](handlerCopy);
  }
}

@end