@interface PRPersonaStore
- (BOOL)hasVendedData;
- (PRPersonaStore)initWithServiceListenerEndpoint:(id)endpoint;
- (id)likenessDataForPropagationToRecipient:(id)recipient lastContactDate:(id)date;
- (void)_setHasVendedData:(BOOL)data;
- (void)_startListeningForCacheChangeNotifications;
- (void)_stopListeningForCacheChangeNotifications;
- (void)allLikenessesForPrimaryiCloudAccountWithCompletion:(id)completion;
- (void)changeCurrentSelfLikenessToLikenessWithUniqueID:(id)d completion:(id)completion;
- (void)currentLikenessForPrimaryiCloudAccountWithDesiredFreshness:(unint64_t)freshness completion:(id)completion;
- (void)dealloc;
- (void)donateLikeness:(id)likeness forEmailAddress:(id)address completion:(id)completion;
- (void)donateLikeness:(id)likeness forPhoneNumber:(id)number completion:(id)completion;
- (void)handleAppleIDEvent:(unint64_t)event account:(id)account completion:(id)completion;
- (void)likenessForEmailAddress:(id)address desiredFreshness:(unint64_t)freshness completion:(id)completion;
- (void)likenessForPhoneNumber:(id)number desiredFreshness:(unint64_t)freshness completion:(id)completion;
- (void)likenessesWithExternalIdentifier:(id)identifier completion:(id)completion;
- (void)removeAllLikenessForPrimaryiCloudAccountWithCompletion:(id)completion;
- (void)removeLikeness:(id)likeness forPrimayiCloudAccountWithCompletion:(id)completion;
- (void)saveLikeness:(id)likeness forPrimayiCloudAccountWithCompletion:(id)completion;
- (void)screenNameForAppleIDWithAltDSID:(id)d completion:(id)completion;
- (void)screenNameForEmailAddress:(id)address completion:(id)completion;
- (void)screenNameForPhoneNumber:(id)number completion:(id)completion;
- (void)screenNameForPrimaryiCloudAccountWithCompletion:(id)completion;
- (void)setScreenName:(id)name forAppleIDWithAltDSID:(id)d completion:(id)completion;
- (void)setScreenName:(id)name forPrimaryiCloudAccountWithCompletion:(id)completion;
@end

@implementation PRPersonaStore

- (PRPersonaStore)initWithServiceListenerEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v14.receiver = self;
  v14.super_class = PRPersonaStore;
  v6 = [(PRPersonaStore *)&v14 init];
  if (v6)
  {
    v7 = dispatch_queue_create("com.apple.personakit.xpc.reply", MEMORY[0x277D85CD8]);
    replyHandlingQueue = v6->_replyHandlingQueue;
    v6->_replyHandlingQueue = v7;

    v9 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    connectionLock = v6->_connectionLock;
    v6->_connectionLock = v9;

    [(NSLock *)v6->_connectionLock setName:@"PRPersonaStoreXPCLock"];
    v11 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    dataVendingFlagLock = v6->_dataVendingFlagLock;
    v6->_dataVendingFlagLock = v11;

    [(NSLock *)v6->_dataVendingFlagLock setName:@"PRPersonaStoreDataVendFlagLock"];
    objc_storeStrong(&v6->_serviceListenerEndpoint, endpoint);
    [(PRPersonaStore *)v6 _startListeningForCacheChangeNotifications];
  }

  return v6;
}

- (void)dealloc
{
  [(NSLock *)self->_connectionLock lock];
  personaServiceConnection = self->_personaServiceConnection;
  if (personaServiceConnection)
  {
    [(NSXPCConnection *)personaServiceConnection invalidate];
    v4 = self->_personaServiceConnection;
    self->_personaServiceConnection = 0;
  }

  [(NSLock *)self->_connectionLock unlock];
  [(PRPersonaStore *)self _stopListeningForCacheChangeNotifications];
  v5.receiver = self;
  v5.super_class = PRPersonaStore;
  [(PRPersonaStore *)&v5 dealloc];
}

- (BOOL)hasVendedData
{
  [(NSLock *)self->_dataVendingFlagLock lock];
  hasVendedData = self->_hasVendedData;
  [(NSLock *)self->_dataVendingFlagLock unlock];
  return hasVendedData;
}

- (void)_setHasVendedData:(BOOL)data
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = _PRGetLogSystem(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[PRPersonaStore _setHasVendedData:]";
    v8 = 1024;
    v9 = 104;
    _os_log_impl(&dword_25E428000, v5, OS_LOG_TYPE_DEFAULT, "%s (%d) called", &v6, 0x12u);
  }

  [(NSLock *)self->_dataVendingFlagLock lock];
  self->_hasVendedData = data;
  [(NSLock *)self->_dataVendingFlagLock unlock];
}

- (void)currentLikenessForPrimaryiCloudAccountWithDesiredFreshness:(unint64_t)freshness completion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v6 = _PRGetLogSystem(completionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[PRPersonaStore currentLikenessForPrimaryiCloudAccountWithDesiredFreshness:completion:]";
    v13 = 1024;
    v14 = 119;
    _os_log_impl(&dword_25E428000, v6, OS_LOG_TYPE_DEFAULT, "%s (%d) Looking up current likeness for primary iCloud account...", buf, 0x12u);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __88__PRPersonaStore_currentLikenessForPrimaryiCloudAccountWithDesiredFreshness_completion___block_invoke;
  v9[3] = &unk_279A1B748;
  v9[4] = self;
  v10 = completionCopy;
  v7 = completionCopy;
  v8 = MEMORY[0x25F8B2920](v9);
  v8[2](v8, 0, 0);
}

void __88__PRPersonaStore_currentLikenessForPrimaryiCloudAccountWithDesiredFreshness_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _PRGetLogSystem(v6);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    *buf = 136315650;
    v17 = "[PRPersonaStore currentLikenessForPrimaryiCloudAccountWithDesiredFreshness:completion:]_block_invoke";
    v18 = 1024;
    v19 = 123;
    v20 = 2112;
    v21 = v6;
    v9 = "%s (%d) Likeness lookup for primary iCloud account came back with an error: %@";
  }

  else
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    *buf = 136315650;
    v17 = "[PRPersonaStore currentLikenessForPrimaryiCloudAccountWithDesiredFreshness:completion:]_block_invoke";
    v18 = 1024;
    v19 = 125;
    v20 = 2112;
    v21 = v5;
    v9 = "%s (%d) Likeness lookup for primary iCloud account succeeded: %@";
  }

  _os_log_impl(&dword_25E428000, v7, OS_LOG_TYPE_DEFAULT, v9, buf, 0x1Cu);
LABEL_7:

  [*(a1 + 32) _setHasVendedData:1];
  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = *(*(a1 + 32) + 48);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __88__PRPersonaStore_currentLikenessForPrimaryiCloudAccountWithDesiredFreshness_completion___block_invoke_13;
    block[3] = &unk_279A1B720;
    v15 = v10;
    v13 = v5;
    v14 = v6;
    dispatch_async(v11, block);
  }
}

- (void)allLikenessesForPrimaryiCloudAccountWithCompletion:(id)completion
{
  v14 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = _PRGetLogSystem(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[PRPersonaStore allLikenessesForPrimaryiCloudAccountWithCompletion:]";
    v12 = 1024;
    v13 = 151;
    _os_log_impl(&dword_25E428000, v5, OS_LOG_TYPE_DEFAULT, "%s (%d) Looking up all likenesses for primary iCloud account...", buf, 0x12u);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__PRPersonaStore_allLikenessesForPrimaryiCloudAccountWithCompletion___block_invoke;
  v8[3] = &unk_279A1B770;
  v8[4] = self;
  v9 = completionCopy;
  v6 = completionCopy;
  v7 = MEMORY[0x25F8B2920](v8);
  v7[2](v7, 0, 0);
}

void __69__PRPersonaStore_allLikenessesForPrimaryiCloudAccountWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _PRGetLogSystem(v6);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    *buf = 136315650;
    v17 = "[PRPersonaStore allLikenessesForPrimaryiCloudAccountWithCompletion:]_block_invoke";
    v18 = 1024;
    v19 = 155;
    v20 = 2112;
    v21 = v6;
    v9 = "%s (%d) Likenesses lookup for primary iCloud account came back with an error: %@";
  }

  else
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    *buf = 136315650;
    v17 = "[PRPersonaStore allLikenessesForPrimaryiCloudAccountWithCompletion:]_block_invoke";
    v18 = 1024;
    v19 = 157;
    v20 = 2112;
    v21 = v5;
    v9 = "%s (%d) Likenesses lookup for primary iCloud account succeeded: %@";
  }

  _os_log_impl(&dword_25E428000, v7, OS_LOG_TYPE_DEFAULT, v9, buf, 0x1Cu);
LABEL_7:

  [*(a1 + 32) _setHasVendedData:1];
  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = *(*(a1 + 32) + 48);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__PRPersonaStore_allLikenessesForPrimaryiCloudAccountWithCompletion___block_invoke_16;
    block[3] = &unk_279A1B720;
    v15 = v10;
    v13 = v5;
    v14 = v6;
    dispatch_async(v11, block);
  }
}

- (void)likenessForPhoneNumber:(id)number desiredFreshness:(unint64_t)freshness completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  completionCopy = completion;
  v9 = _PRGetLogSystem(completionCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v18 = "[PRPersonaStore likenessForPhoneNumber:desiredFreshness:completion:]";
    v19 = 1024;
    v20 = 189;
    v21 = 2112;
    v22 = numberCopy;
    _os_log_impl(&dword_25E428000, v9, OS_LOG_TYPE_DEFAULT, "%s (%d) Looking up likeness for phone number %@...", buf, 0x1Cu);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __69__PRPersonaStore_likenessForPhoneNumber_desiredFreshness_completion___block_invoke;
  v13[3] = &unk_279A1B798;
  v14 = numberCopy;
  selfCopy = self;
  v16 = completionCopy;
  v10 = completionCopy;
  v11 = numberCopy;
  v12 = MEMORY[0x25F8B2920](v13);
  v12[2](v12, 0, 0);
}

void __69__PRPersonaStore_likenessForPhoneNumber_desiredFreshness_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _PRGetLogSystem(v6);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    v9 = *(a1 + 32);
    *buf = 136315906;
    v19 = "[PRPersonaStore likenessForPhoneNumber:desiredFreshness:completion:]_block_invoke";
    v20 = 1024;
    v21 = 193;
    v22 = 2112;
    v23 = v9;
    v24 = 2112;
    v25 = v6;
    v10 = "%s (%d) Likeness lookup for phone number %@ came back with an error: %@";
  }

  else
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    v11 = *(a1 + 32);
    *buf = 136315906;
    v19 = "[PRPersonaStore likenessForPhoneNumber:desiredFreshness:completion:]_block_invoke";
    v20 = 1024;
    v21 = 195;
    v22 = 2112;
    v23 = v11;
    v24 = 2112;
    v25 = v5;
    v10 = "%s (%d) Likeness lookup for phone number %@ succeeded: %@";
  }

  _os_log_impl(&dword_25E428000, v7, OS_LOG_TYPE_DEFAULT, v10, buf, 0x26u);
LABEL_7:

  [*(a1 + 40) _setHasVendedData:1];
  v12 = *(a1 + 48);
  if (v12)
  {
    v13 = *(*(a1 + 40) + 48);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__PRPersonaStore_likenessForPhoneNumber_desiredFreshness_completion___block_invoke_18;
    block[3] = &unk_279A1B720;
    v17 = v12;
    v15 = v5;
    v16 = v6;
    dispatch_async(v13, block);
  }
}

- (void)likenessForEmailAddress:(id)address desiredFreshness:(unint64_t)freshness completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  completionCopy = completion;
  v9 = _PRGetLogSystem(completionCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v18 = "[PRPersonaStore likenessForEmailAddress:desiredFreshness:completion:]";
    v19 = 1024;
    v20 = 227;
    v21 = 2112;
    v22 = addressCopy;
    _os_log_impl(&dword_25E428000, v9, OS_LOG_TYPE_DEFAULT, "%s (%d) Looking up likeness for email %@...", buf, 0x1Cu);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __70__PRPersonaStore_likenessForEmailAddress_desiredFreshness_completion___block_invoke;
  v13[3] = &unk_279A1B798;
  v14 = addressCopy;
  selfCopy = self;
  v16 = completionCopy;
  v10 = completionCopy;
  v11 = addressCopy;
  v12 = MEMORY[0x25F8B2920](v13);
  v12[2](v12, 0, 0);
}

void __70__PRPersonaStore_likenessForEmailAddress_desiredFreshness_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _PRGetLogSystem(v6);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    v9 = *(a1 + 32);
    *buf = 136315906;
    v19 = "[PRPersonaStore likenessForEmailAddress:desiredFreshness:completion:]_block_invoke";
    v20 = 1024;
    v21 = 231;
    v22 = 2112;
    v23 = v9;
    v24 = 2112;
    v25 = v6;
    v10 = "%s (%d) Likeness lookup for emailAddress %@ came back with an error: %@";
  }

  else
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    v11 = *(a1 + 32);
    *buf = 136315906;
    v19 = "[PRPersonaStore likenessForEmailAddress:desiredFreshness:completion:]_block_invoke";
    v20 = 1024;
    v21 = 233;
    v22 = 2112;
    v23 = v11;
    v24 = 2112;
    v25 = v5;
    v10 = "%s (%d) Likeness lookup for emailAddress %@ succeeded: %@";
  }

  _os_log_impl(&dword_25E428000, v7, OS_LOG_TYPE_DEFAULT, v10, buf, 0x26u);
LABEL_7:

  [*(a1 + 40) _setHasVendedData:1];
  v12 = *(a1 + 48);
  if (v12)
  {
    v13 = *(*(a1 + 40) + 48);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__PRPersonaStore_likenessForEmailAddress_desiredFreshness_completion___block_invoke_19;
    block[3] = &unk_279A1B720;
    v17 = v12;
    v15 = v5;
    v16 = v6;
    dispatch_async(v13, block);
  }
}

- (void)saveLikeness:(id)likeness forPrimayiCloudAccountWithCompletion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v6 = _PRGetLogSystem(completionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[PRPersonaStore saveLikeness:forPrimayiCloudAccountWithCompletion:]";
    v13 = 1024;
    v14 = 265;
    _os_log_impl(&dword_25E428000, v6, OS_LOG_TYPE_DEFAULT, "%s (%d) Saving likeness for primary iCloud account...", buf, 0x12u);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__PRPersonaStore_saveLikeness_forPrimayiCloudAccountWithCompletion___block_invoke;
  v9[3] = &unk_279A1B7E8;
  v9[4] = self;
  v10 = completionCopy;
  v7 = completionCopy;
  v8 = MEMORY[0x25F8B2920](v9);
  v8[2](v8, 1, 0);
}

void __68__PRPersonaStore_saveLikeness_forPrimayiCloudAccountWithCompletion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _PRGetLogSystem(v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    *buf = 136315650;
    v18 = "[PRPersonaStore saveLikeness:forPrimayiCloudAccountWithCompletion:]_block_invoke";
    v19 = 1024;
    v20 = 269;
    v21 = 2112;
    v22 = v5;
    v8 = "%s (%d) Likeness write came back with an error: %@";
    v9 = v6;
    v10 = 28;
  }

  else
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    *buf = 136315394;
    v18 = "[PRPersonaStore saveLikeness:forPrimayiCloudAccountWithCompletion:]_block_invoke";
    v19 = 1024;
    v20 = 271;
    v8 = "%s (%d) Likeness write succeeded.";
    v9 = v6;
    v10 = 18;
  }

  _os_log_impl(&dword_25E428000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
LABEL_7:

  v11 = *(a1 + 40);
  if (v11)
  {
    v12 = *(*(a1 + 32) + 48);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__PRPersonaStore_saveLikeness_forPrimayiCloudAccountWithCompletion___block_invoke_20;
    block[3] = &unk_279A1B7C0;
    v15 = v11;
    v16 = a2;
    v14 = v5;
    dispatch_async(v12, block);
  }
}

- (void)changeCurrentSelfLikenessToLikenessWithUniqueID:(id)d completion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  v8 = _PRGetLogSystem(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v14 = "[PRPersonaStore changeCurrentSelfLikenessToLikenessWithUniqueID:completion:]";
    v15 = 1024;
    v16 = 295;
    v17 = 2112;
    v18 = dCopy;
    _os_log_impl(&dword_25E428000, v8, OS_LOG_TYPE_DEFAULT, "%s (%d) Changing current self likeness to the one with ID: %@...", buf, 0x1Cu);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77__PRPersonaStore_changeCurrentSelfLikenessToLikenessWithUniqueID_completion___block_invoke;
  v11[3] = &unk_279A1B7E8;
  v11[4] = self;
  v12 = completionCopy;
  v9 = completionCopy;
  v10 = MEMORY[0x25F8B2920](v11);
  v10[2](v10, 1, 0);
}

void __77__PRPersonaStore_changeCurrentSelfLikenessToLikenessWithUniqueID_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _PRGetLogSystem(v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    *buf = 136315650;
    v18 = "[PRPersonaStore changeCurrentSelfLikenessToLikenessWithUniqueID:completion:]_block_invoke";
    v19 = 1024;
    v20 = 299;
    v21 = 2112;
    v22 = v5;
    v8 = "%s (%d) Error: %@";
    v9 = v6;
    v10 = 28;
  }

  else
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    *buf = 136315394;
    v18 = "[PRPersonaStore changeCurrentSelfLikenessToLikenessWithUniqueID:completion:]_block_invoke";
    v19 = 1024;
    v20 = 301;
    v8 = "%s (%d) Success.";
    v9 = v6;
    v10 = 18;
  }

  _os_log_impl(&dword_25E428000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
LABEL_7:

  v11 = *(a1 + 40);
  if (v11)
  {
    v12 = *(*(a1 + 32) + 48);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__PRPersonaStore_changeCurrentSelfLikenessToLikenessWithUniqueID_completion___block_invoke_22;
    block[3] = &unk_279A1B7C0;
    v15 = v11;
    v16 = a2;
    v14 = v5;
    dispatch_async(v12, block);
  }
}

- (void)removeLikeness:(id)likeness forPrimayiCloudAccountWithCompletion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  likenessCopy = likeness;
  completionCopy = completion;
  v8 = _PRGetLogSystem(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v14 = "[PRPersonaStore removeLikeness:forPrimayiCloudAccountWithCompletion:]";
    v15 = 1024;
    v16 = 325;
    v17 = 2112;
    v18 = likenessCopy;
    _os_log_impl(&dword_25E428000, v8, OS_LOG_TYPE_DEFAULT, "%s (%d) Removing likeness self likeness %@...", buf, 0x1Cu);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__PRPersonaStore_removeLikeness_forPrimayiCloudAccountWithCompletion___block_invoke;
  v11[3] = &unk_279A1B7E8;
  v11[4] = self;
  v12 = completionCopy;
  v9 = completionCopy;
  v10 = MEMORY[0x25F8B2920](v11);
  v10[2](v10, 1, 0);
}

void __70__PRPersonaStore_removeLikeness_forPrimayiCloudAccountWithCompletion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _PRGetLogSystem(v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    *buf = 136315650;
    v18 = "[PRPersonaStore removeLikeness:forPrimayiCloudAccountWithCompletion:]_block_invoke";
    v19 = 1024;
    v20 = 329;
    v21 = 2112;
    v22 = v5;
    v8 = "%s (%d) Likeness removal came back with an error: %@";
    v9 = v6;
    v10 = 28;
  }

  else
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    *buf = 136315394;
    v18 = "[PRPersonaStore removeLikeness:forPrimayiCloudAccountWithCompletion:]_block_invoke";
    v19 = 1024;
    v20 = 331;
    v8 = "%s (%d) Likeness removal succeeded.";
    v9 = v6;
    v10 = 18;
  }

  _os_log_impl(&dword_25E428000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
LABEL_7:

  v11 = *(a1 + 40);
  if (v11)
  {
    v12 = *(*(a1 + 32) + 48);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__PRPersonaStore_removeLikeness_forPrimayiCloudAccountWithCompletion___block_invoke_23;
    block[3] = &unk_279A1B7C0;
    v15 = v11;
    v16 = a2;
    v14 = v5;
    dispatch_async(v12, block);
  }
}

- (void)removeAllLikenessForPrimaryiCloudAccountWithCompletion:(id)completion
{
  v14 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = _PRGetLogSystem(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[PRPersonaStore removeAllLikenessForPrimaryiCloudAccountWithCompletion:]";
    v12 = 1024;
    v13 = 355;
    _os_log_impl(&dword_25E428000, v5, OS_LOG_TYPE_DEFAULT, "%s (%d) Removing all likenesses for primary iCloud account...", buf, 0x12u);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__PRPersonaStore_removeAllLikenessForPrimaryiCloudAccountWithCompletion___block_invoke;
  v8[3] = &unk_279A1B7E8;
  v8[4] = self;
  v9 = completionCopy;
  v6 = completionCopy;
  v7 = MEMORY[0x25F8B2920](v8);
  v7[2](v7, 1, 0);
}

void __73__PRPersonaStore_removeAllLikenessForPrimaryiCloudAccountWithCompletion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _PRGetLogSystem(v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    *buf = 136315650;
    v18 = "[PRPersonaStore removeAllLikenessForPrimaryiCloudAccountWithCompletion:]_block_invoke";
    v19 = 1024;
    v20 = 359;
    v21 = 2112;
    v22 = v5;
    v8 = "%s (%d) Removing likenesses came back with an error: %@";
    v9 = v6;
    v10 = 28;
  }

  else
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    *buf = 136315394;
    v18 = "[PRPersonaStore removeAllLikenessForPrimaryiCloudAccountWithCompletion:]_block_invoke";
    v19 = 1024;
    v20 = 361;
    v8 = "%s (%d) Removing likenesses succeeded.";
    v9 = v6;
    v10 = 18;
  }

  _os_log_impl(&dword_25E428000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
LABEL_7:

  v11 = *(a1 + 40);
  if (v11)
  {
    v12 = *(*(a1 + 32) + 48);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__PRPersonaStore_removeAllLikenessForPrimaryiCloudAccountWithCompletion___block_invoke_24;
    block[3] = &unk_279A1B7C0;
    v15 = v11;
    v16 = a2;
    v14 = v5;
    dispatch_async(v12, block);
  }
}

- (id)likenessDataForPropagationToRecipient:(id)recipient lastContactDate:(id)date
{
  [(PRPersonaStore *)self _setHasVendedData:1, date];

  return [0 dataForPropagation];
}

- (void)handleAppleIDEvent:(unint64_t)event account:(id)account completion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  completionCopy = completion;
  v10 = _PRGetLogSystem(completionCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:event];
    *buf = 136315906;
    v17 = "[PRPersonaStore handleAppleIDEvent:account:completion:]";
    v18 = 1024;
    v19 = 523;
    v20 = 2112;
    v21 = v11;
    v22 = 2112;
    v23 = accountCopy;
    _os_log_impl(&dword_25E428000, v10, OS_LOG_TYPE_DEFAULT, "%s (%d) Handling event %@ for account: %@", buf, 0x26u);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __56__PRPersonaStore_handleAppleIDEvent_account_completion___block_invoke;
  v14[3] = &unk_279A1B7E8;
  v14[4] = self;
  v15 = completionCopy;
  v12 = completionCopy;
  v13 = MEMORY[0x25F8B2920](v14);
  v13[2](v13, 1, 0);
}

void __56__PRPersonaStore_handleAppleIDEvent_account_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _PRGetLogSystem(v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    *buf = 136315650;
    v18 = "[PRPersonaStore handleAppleIDEvent:account:completion:]_block_invoke";
    v19 = 1024;
    v20 = 527;
    v21 = 2112;
    v22 = v5;
    v8 = "%s (%d) Error: %@";
    v9 = v6;
    v10 = 28;
  }

  else
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    *buf = 136315394;
    v18 = "[PRPersonaStore handleAppleIDEvent:account:completion:]_block_invoke";
    v19 = 1024;
    v20 = 529;
    v8 = "%s (%d) Success.";
    v9 = v6;
    v10 = 18;
  }

  _os_log_impl(&dword_25E428000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
LABEL_7:

  v11 = *(a1 + 40);
  if (v11)
  {
    v12 = *(*(a1 + 32) + 48);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__PRPersonaStore_handleAppleIDEvent_account_completion___block_invoke_26;
    block[3] = &unk_279A1B7C0;
    v15 = v11;
    v16 = a2;
    v14 = v5;
    dispatch_async(v12, block);
  }
}

- (void)donateLikeness:(id)likeness forEmailAddress:(id)address completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  completionCopy = completion;
  v9 = _PRGetLogSystem(completionCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v18 = "[PRPersonaStore donateLikeness:forEmailAddress:completion:]";
    v19 = 1024;
    v20 = 553;
    v21 = 2112;
    v22 = addressCopy;
    _os_log_impl(&dword_25E428000, v9, OS_LOG_TYPE_DEFAULT, "%s (%d) Donation for email %@...", buf, 0x1Cu);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60__PRPersonaStore_donateLikeness_forEmailAddress_completion___block_invoke;
  v13[3] = &unk_279A1B810;
  selfCopy = self;
  v16 = completionCopy;
  v14 = addressCopy;
  v10 = completionCopy;
  v11 = addressCopy;
  v12 = MEMORY[0x25F8B2920](v13);
  v12[2](v12, 1, 0);
}

void __60__PRPersonaStore_donateLikeness_forEmailAddress_completion___block_invoke(void *a1, char a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _PRGetLogSystem(v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    v8 = a1[4];
    *buf = 136315906;
    v20 = "[PRPersonaStore donateLikeness:forEmailAddress:completion:]_block_invoke";
    v21 = 1024;
    v22 = 557;
    v23 = 2112;
    v24 = v8;
    v25 = 2112;
    v26 = v5;
    v9 = "%s (%d) Donation failed for email %@. Error: %@";
    v10 = v6;
    v11 = 38;
  }

  else
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    v12 = a1[4];
    *buf = 136315650;
    v20 = "[PRPersonaStore donateLikeness:forEmailAddress:completion:]_block_invoke";
    v21 = 1024;
    v22 = 559;
    v23 = 2112;
    v24 = v12;
    v9 = "%s (%d) Donation succeeded for email %@.";
    v10 = v6;
    v11 = 28;
  }

  _os_log_impl(&dword_25E428000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
LABEL_7:

  v13 = a1[6];
  if (v13)
  {
    v14 = *(a1[5] + 48);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__PRPersonaStore_donateLikeness_forEmailAddress_completion___block_invoke_27;
    block[3] = &unk_279A1B7C0;
    v17 = v13;
    v18 = a2;
    v16 = v5;
    dispatch_async(v14, block);
  }
}

- (void)donateLikeness:(id)likeness forPhoneNumber:(id)number completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  completionCopy = completion;
  v9 = _PRGetLogSystem(completionCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v18 = "[PRPersonaStore donateLikeness:forPhoneNumber:completion:]";
    v19 = 1024;
    v20 = 583;
    v21 = 2112;
    v22 = numberCopy;
    _os_log_impl(&dword_25E428000, v9, OS_LOG_TYPE_DEFAULT, "%s (%d) Donation for phone number %@...", buf, 0x1Cu);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __59__PRPersonaStore_donateLikeness_forPhoneNumber_completion___block_invoke;
  v13[3] = &unk_279A1B810;
  selfCopy = self;
  v16 = completionCopy;
  v14 = numberCopy;
  v10 = completionCopy;
  v11 = numberCopy;
  v12 = MEMORY[0x25F8B2920](v13);
  v12[2](v12, 1, 0);
}

void __59__PRPersonaStore_donateLikeness_forPhoneNumber_completion___block_invoke(void *a1, char a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _PRGetLogSystem(v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    v8 = a1[4];
    *buf = 136315906;
    v20 = "[PRPersonaStore donateLikeness:forPhoneNumber:completion:]_block_invoke";
    v21 = 1024;
    v22 = 587;
    v23 = 2112;
    v24 = v8;
    v25 = 2112;
    v26 = v5;
    v9 = "%s (%d) Donation failed for phone number %@. Error: %@";
    v10 = v6;
    v11 = 38;
  }

  else
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    v12 = a1[4];
    *buf = 136315650;
    v20 = "[PRPersonaStore donateLikeness:forPhoneNumber:completion:]_block_invoke";
    v21 = 1024;
    v22 = 589;
    v23 = 2112;
    v24 = v12;
    v9 = "%s (%d) Donation succeeded for phone number %@.";
    v10 = v6;
    v11 = 28;
  }

  _os_log_impl(&dword_25E428000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
LABEL_7:

  v13 = a1[6];
  if (v13)
  {
    v14 = *(a1[5] + 48);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__PRPersonaStore_donateLikeness_forPhoneNumber_completion___block_invoke_28;
    block[3] = &unk_279A1B7C0;
    v17 = v13;
    v18 = a2;
    v16 = v5;
    dispatch_async(v14, block);
  }
}

- (void)likenessesWithExternalIdentifier:(id)identifier completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = _PRGetLogSystem(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v17 = "[PRPersonaStore likenessesWithExternalIdentifier:completion:]";
    v18 = 1024;
    v19 = 613;
    v20 = 2112;
    v21 = identifierCopy;
    _os_log_impl(&dword_25E428000, v8, OS_LOG_TYPE_DEFAULT, "%s (%d) Looking up for external ID: %@", buf, 0x1Cu);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__PRPersonaStore_likenessesWithExternalIdentifier_completion___block_invoke;
  v12[3] = &unk_279A1B838;
  v13 = identifierCopy;
  selfCopy = self;
  v15 = completionCopy;
  v9 = completionCopy;
  v10 = identifierCopy;
  v11 = MEMORY[0x25F8B2920](v12);
  v11[2](v11, 0, 0);
}

void __62__PRPersonaStore_likenessesWithExternalIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _PRGetLogSystem(v6);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    v9 = *(a1 + 32);
    *buf = 136315906;
    v21 = "[PRPersonaStore likenessesWithExternalIdentifier:completion:]_block_invoke";
    v22 = 1024;
    v23 = 617;
    v24 = 2112;
    v25 = v9;
    v26 = 2112;
    v27 = v6;
    v10 = "%s (%d) Lookup for external ID %@ failed. Error: %@";
    v11 = v7;
    v12 = 38;
  }

  else
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    v13 = *(a1 + 32);
    *buf = 136315650;
    v21 = "[PRPersonaStore likenessesWithExternalIdentifier:completion:]_block_invoke";
    v22 = 1024;
    v23 = 619;
    v24 = 2112;
    v25 = v13;
    v10 = "%s (%d) Lookup for external ID %@ succeeded.";
    v11 = v7;
    v12 = 28;
  }

  _os_log_impl(&dword_25E428000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
LABEL_7:

  [*(a1 + 40) _setHasVendedData:1];
  v14 = *(a1 + 48);
  if (v14)
  {
    v15 = *(*(a1 + 40) + 48);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__PRPersonaStore_likenessesWithExternalIdentifier_completion___block_invoke_29;
    block[3] = &unk_279A1B720;
    v19 = v14;
    v17 = v5;
    v18 = v6;
    dispatch_async(v15, block);
  }
}

- (void)screenNameForEmailAddress:(id)address completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  completionCopy = completion;
  v8 = _PRGetLogSystem(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v18 = "[PRPersonaStore screenNameForEmailAddress:completion:]";
    v19 = 1024;
    v20 = 667;
    v21 = 2112;
    v22 = addressCopy;
    _os_log_impl(&dword_25E428000, v8, OS_LOG_TYPE_DEFAULT, "%s (%d) Looking up with email: %@", buf, 0x1Cu);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __55__PRPersonaStore_screenNameForEmailAddress_completion___block_invoke;
  v13[3] = &unk_279A1B860;
  selfCopy = self;
  v16 = completionCopy;
  v14 = addressCopy;
  v9 = completionCopy;
  v10 = addressCopy;
  v11 = MEMORY[0x25F8B2920](v13);
  v12 = [MEMORY[0x277CCA9B8] pr_errorWithCode:-9019];
  (v11)[2](v11, 0, v12);
}

void __55__PRPersonaStore_screenNameForEmailAddress_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _PRGetLogSystem(v6);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    v9 = a1[4];
    *buf = 136315906;
    v21 = "[PRPersonaStore screenNameForEmailAddress:completion:]_block_invoke";
    v22 = 1024;
    v23 = 671;
    v24 = 2112;
    v25 = v9;
    v26 = 2112;
    v27 = v6;
    v10 = "%s (%d) Lookup for %@ failed. Error: %@";
    v11 = v7;
    v12 = 38;
  }

  else
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    v13 = a1[4];
    *buf = 136315650;
    v21 = "[PRPersonaStore screenNameForEmailAddress:completion:]_block_invoke";
    v22 = 1024;
    v23 = 673;
    v24 = 2112;
    v25 = v13;
    v10 = "%s (%d) Lookup for %@ succeeded.";
    v11 = v7;
    v12 = 28;
  }

  _os_log_impl(&dword_25E428000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
LABEL_7:

  v14 = a1[6];
  if (v14)
  {
    v15 = *(a1[5] + 48);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__PRPersonaStore_screenNameForEmailAddress_completion___block_invoke_30;
    block[3] = &unk_279A1B720;
    v19 = v14;
    v17 = v5;
    v18 = v6;
    dispatch_async(v15, block);
  }
}

- (void)screenNameForPhoneNumber:(id)number completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  completionCopy = completion;
  v8 = _PRGetLogSystem(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v18 = "[PRPersonaStore screenNameForPhoneNumber:completion:]";
    v19 = 1024;
    v20 = 698;
    v21 = 2112;
    v22 = numberCopy;
    _os_log_impl(&dword_25E428000, v8, OS_LOG_TYPE_DEFAULT, "%s (%d) Looking up with phone number: %@", buf, 0x1Cu);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __54__PRPersonaStore_screenNameForPhoneNumber_completion___block_invoke;
  v13[3] = &unk_279A1B860;
  selfCopy = self;
  v16 = completionCopy;
  v14 = numberCopy;
  v9 = completionCopy;
  v10 = numberCopy;
  v11 = MEMORY[0x25F8B2920](v13);
  v12 = [MEMORY[0x277CCA9B8] pr_errorWithCode:-9019];
  (v11)[2](v11, 0, v12);
}

void __54__PRPersonaStore_screenNameForPhoneNumber_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _PRGetLogSystem(v6);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    v9 = a1[4];
    *buf = 136315906;
    v21 = "[PRPersonaStore screenNameForPhoneNumber:completion:]_block_invoke";
    v22 = 1024;
    v23 = 702;
    v24 = 2112;
    v25 = v9;
    v26 = 2112;
    v27 = v6;
    v10 = "%s (%d) Lookup for %@ failed. Error: %@";
    v11 = v7;
    v12 = 38;
  }

  else
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    v13 = a1[4];
    *buf = 136315650;
    v21 = "[PRPersonaStore screenNameForPhoneNumber:completion:]_block_invoke";
    v22 = 1024;
    v23 = 704;
    v24 = 2112;
    v25 = v13;
    v10 = "%s (%d) Lookup for %@ succeeded.";
    v11 = v7;
    v12 = 28;
  }

  _os_log_impl(&dword_25E428000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
LABEL_7:

  v14 = a1[6];
  if (v14)
  {
    v15 = *(a1[5] + 48);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__PRPersonaStore_screenNameForPhoneNumber_completion___block_invoke_33;
    block[3] = &unk_279A1B720;
    v19 = v14;
    v17 = v5;
    v18 = v6;
    dispatch_async(v15, block);
  }
}

- (void)screenNameForPrimaryiCloudAccountWithCompletion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = _PRGetLogSystem(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v16 = "[PRPersonaStore screenNameForPrimaryiCloudAccountWithCompletion:]";
    v17 = 1024;
    v18 = 729;
    _os_log_impl(&dword_25E428000, v5, OS_LOG_TYPE_DEFAULT, "%s (%d) called", buf, 0x12u);
  }

  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __66__PRPersonaStore_screenNameForPrimaryiCloudAccountWithCompletion___block_invoke;
  v12 = &unk_279A1B888;
  selfCopy = self;
  v14 = completionCopy;
  v6 = completionCopy;
  v7 = MEMORY[0x25F8B2920](&v9);
  v8 = [MEMORY[0x277CCA9B8] pr_errorWithCode:{-9019, v9, v10, v11, v12, selfCopy}];
  (v7)[2](v7, 0, v8);
}

void __66__PRPersonaStore_screenNameForPrimaryiCloudAccountWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _PRGetLogSystem(v6);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    *buf = 136315650;
    v19 = "[PRPersonaStore screenNameForPrimaryiCloudAccountWithCompletion:]_block_invoke";
    v20 = 1024;
    v21 = 733;
    v22 = 2112;
    v23 = v6;
    v9 = "%s (%d) Lookup failed. Error: %@";
    v10 = v7;
    v11 = 28;
  }

  else
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    *buf = 136315394;
    v19 = "[PRPersonaStore screenNameForPrimaryiCloudAccountWithCompletion:]_block_invoke";
    v20 = 1024;
    v21 = 735;
    v9 = "%s (%d) Lookup succeeded.";
    v10 = v7;
    v11 = 18;
  }

  _os_log_impl(&dword_25E428000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
LABEL_7:

  v12 = *(a1 + 40);
  if (v12)
  {
    v13 = *(*(a1 + 32) + 48);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__PRPersonaStore_screenNameForPrimaryiCloudAccountWithCompletion___block_invoke_34;
    block[3] = &unk_279A1B720;
    v17 = v12;
    v15 = v5;
    v16 = v6;
    dispatch_async(v13, block);
  }
}

- (void)screenNameForAppleIDWithAltDSID:(id)d completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  v8 = _PRGetLogSystem(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v18 = "[PRPersonaStore screenNameForAppleIDWithAltDSID:completion:]";
    v19 = 1024;
    v20 = 760;
    v21 = 2112;
    v22 = dCopy;
    _os_log_impl(&dword_25E428000, v8, OS_LOG_TYPE_DEFAULT, "%s (%d) Looking up with altDSID: %@", buf, 0x1Cu);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__PRPersonaStore_screenNameForAppleIDWithAltDSID_completion___block_invoke;
  v13[3] = &unk_279A1B860;
  selfCopy = self;
  v16 = completionCopy;
  v14 = dCopy;
  v9 = completionCopy;
  v10 = dCopy;
  v11 = MEMORY[0x25F8B2920](v13);
  v12 = [MEMORY[0x277CCA9B8] pr_errorWithCode:-9019];
  (v11)[2](v11, 0, v12);
}

void __61__PRPersonaStore_screenNameForAppleIDWithAltDSID_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _PRGetLogSystem(v6);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    v9 = a1[4];
    *buf = 136315906;
    v21 = "[PRPersonaStore screenNameForAppleIDWithAltDSID:completion:]_block_invoke";
    v22 = 1024;
    v23 = 764;
    v24 = 2112;
    v25 = v9;
    v26 = 2112;
    v27 = v6;
    v10 = "%s (%d) Lookup for %@ failed. Error: %@";
    v11 = v7;
    v12 = 38;
  }

  else
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    v13 = a1[4];
    *buf = 136315650;
    v21 = "[PRPersonaStore screenNameForAppleIDWithAltDSID:completion:]_block_invoke";
    v22 = 1024;
    v23 = 766;
    v24 = 2112;
    v25 = v13;
    v10 = "%s (%d) Lookup for %@ succeeded.";
    v11 = v7;
    v12 = 28;
  }

  _os_log_impl(&dword_25E428000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
LABEL_7:

  v14 = a1[6];
  if (v14)
  {
    v15 = *(a1[5] + 48);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__PRPersonaStore_screenNameForAppleIDWithAltDSID_completion___block_invoke_35;
    block[3] = &unk_279A1B720;
    v19 = v14;
    v17 = v5;
    v18 = v6;
    dispatch_async(v15, block);
  }
}

- (void)setScreenName:(id)name forPrimaryiCloudAccountWithCompletion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v6 = _PRGetLogSystem(completionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[PRPersonaStore setScreenName:forPrimaryiCloudAccountWithCompletion:]";
    v18 = 1024;
    v19 = 791;
    _os_log_impl(&dword_25E428000, v6, OS_LOG_TYPE_DEFAULT, "%s (%d) called", buf, 0x12u);
  }

  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __70__PRPersonaStore_setScreenName_forPrimaryiCloudAccountWithCompletion___block_invoke;
  v13 = &unk_279A1B7E8;
  selfCopy = self;
  v15 = completionCopy;
  v7 = completionCopy;
  v8 = MEMORY[0x25F8B2920](&v10);
  v9 = [MEMORY[0x277CCA9B8] pr_errorWithCode:{-9019, v10, v11, v12, v13, selfCopy}];
  (v8)[2](v8, 0, v9);
}

void __70__PRPersonaStore_setScreenName_forPrimaryiCloudAccountWithCompletion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _PRGetLogSystem(v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    *buf = 136315650;
    v18 = "[PRPersonaStore setScreenName:forPrimaryiCloudAccountWithCompletion:]_block_invoke";
    v19 = 1024;
    v20 = 795;
    v21 = 2112;
    v22 = v5;
    v8 = "%s (%d) Update failed. Error: %@";
    v9 = v6;
    v10 = 28;
  }

  else
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    *buf = 136315394;
    v18 = "[PRPersonaStore setScreenName:forPrimaryiCloudAccountWithCompletion:]_block_invoke";
    v19 = 1024;
    v20 = 797;
    v8 = "%s (%d) Update succeeded.";
    v9 = v6;
    v10 = 18;
  }

  _os_log_impl(&dword_25E428000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
LABEL_7:

  v11 = *(a1 + 40);
  if (v11)
  {
    v12 = *(*(a1 + 32) + 48);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__PRPersonaStore_setScreenName_forPrimaryiCloudAccountWithCompletion___block_invoke_36;
    block[3] = &unk_279A1B7C0;
    v15 = v11;
    v16 = a2;
    v14 = v5;
    dispatch_async(v12, block);
  }
}

- (void)setScreenName:(id)name forAppleIDWithAltDSID:(id)d completion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  v9 = _PRGetLogSystem(completionCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v19 = "[PRPersonaStore setScreenName:forAppleIDWithAltDSID:completion:]";
    v20 = 1024;
    v21 = 823;
    v22 = 2112;
    v23 = dCopy;
    _os_log_impl(&dword_25E428000, v9, OS_LOG_TYPE_DEFAULT, "%s (%d) Setting for altDSID: %@", buf, 0x1Cu);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __65__PRPersonaStore_setScreenName_forAppleIDWithAltDSID_completion___block_invoke;
  v14[3] = &unk_279A1B810;
  selfCopy = self;
  v17 = completionCopy;
  v15 = dCopy;
  v10 = completionCopy;
  v11 = dCopy;
  v12 = MEMORY[0x25F8B2920](v14);
  v13 = [MEMORY[0x277CCA9B8] pr_errorWithCode:-9019];
  (v12)[2](v12, 0, v13);
}

void __65__PRPersonaStore_setScreenName_forAppleIDWithAltDSID_completion___block_invoke(void *a1, char a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _PRGetLogSystem(v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    v8 = a1[4];
    *buf = 136315906;
    v20 = "[PRPersonaStore setScreenName:forAppleIDWithAltDSID:completion:]_block_invoke";
    v21 = 1024;
    v22 = 827;
    v23 = 2112;
    v24 = v8;
    v25 = 2112;
    v26 = v5;
    v9 = "%s (%d) Setting for %@ failed. Error: %@";
    v10 = v6;
    v11 = 38;
  }

  else
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    v12 = a1[4];
    *buf = 136315650;
    v20 = "[PRPersonaStore setScreenName:forAppleIDWithAltDSID:completion:]_block_invoke";
    v21 = 1024;
    v22 = 829;
    v23 = 2112;
    v24 = v12;
    v9 = "%s (%d) Setting for %@ succeeded.";
    v10 = v6;
    v11 = 28;
  }

  _os_log_impl(&dword_25E428000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
LABEL_7:

  v13 = a1[6];
  if (v13)
  {
    v14 = *(a1[5] + 48);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__PRPersonaStore_setScreenName_forAppleIDWithAltDSID_completion___block_invoke_37;
    block[3] = &unk_279A1B7C0;
    v17 = v13;
    v18 = a2;
    v16 = v5;
    dispatch_async(v14, block);
  }
}

- (void)_startListeningForCacheChangeNotifications
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = _PRGetLogSystem(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[PRPersonaStore _startListeningForCacheChangeNotifications]";
    v8 = 1024;
    v9 = 854;
    _os_log_impl(&dword_25E428000, v3, OS_LOG_TYPE_DEFAULT, "%s (%d) called", &v6, 0x12u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _PRHandleSelfCacheDidChange, @"PRCachedSelfValuesDidChangeNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v5 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v5, self, _PRHandleOtherCacheDidChange, @"PRCachedOtherValuesDidChangeNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)_stopListeningForCacheChangeNotifications
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = _PRGetLogSystem(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[PRPersonaStore _stopListeningForCacheChangeNotifications]";
    v8 = 1024;
    v9 = 862;
    _os_log_impl(&dword_25E428000, v3, OS_LOG_TYPE_DEFAULT, "%s (%d) called", &v6, 0x12u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"PRCachedSelfValuesDidChangeNotification", 0);
  v5 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v5, self, @"PRCachedOtherValuesDidChangeNotification", 0);
}

@end