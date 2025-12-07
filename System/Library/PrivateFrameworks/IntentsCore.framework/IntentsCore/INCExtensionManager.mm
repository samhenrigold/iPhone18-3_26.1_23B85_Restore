@interface INCExtensionManager
+ (id)sharedManager;
+ (void)initialize;
- (INCExtensionManager)init;
- (void)fetchExtensionForIntent:(id)intent extensionInputItems:(id)items requiresTCC:(BOOL)c requiresTrustCheck:(BOOL)check completion:(id)completion;
@end

@implementation INCExtensionManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__INCExtensionManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, block);
  }

  v2 = sharedManager_sharedManager;

  return v2;
}

- (void)fetchExtensionForIntent:(id)intent extensionInputItems:(id)items requiresTCC:(BOOL)c requiresTrustCheck:(BOOL)check completion:(id)completion
{
  checkCopy = check;
  cCopy = c;
  v53 = *MEMORY[0x277D85DE8];
  intentCopy = intent;
  itemsCopy = items;
  completionCopy = completion;
  v15 = MEMORY[0x277CD38C8];
  v16 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
  {
    v17 = v16;
    identifier = [intentCopy identifier];
    v19 = identifier;
    v20 = @"NO";
    *&buf[4] = "[INCExtensionManager fetchExtensionForIntent:extensionInputItems:requiresTCC:requiresTrustCheck:completion:]";
    *buf = 136315650;
    if (cCopy)
    {
      v20 = @"YES";
    }

    *&buf[12] = 2112;
    *&buf[14] = identifier;
    *&buf[22] = 2112;
    v50 = v20;
    _os_log_impl(&dword_255503000, v17, OS_LOG_TYPE_INFO, "%s Fetching extension for intent with indentifier: %@, requiresTCC: %@", buf, 0x20u);
  }

  queue = self->_queue;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __109__INCExtensionManager_fetchExtensionForIntent_extensionInputItems_requiresTCC_requiresTrustCheck_completion___block_invoke;
  v37[3] = &unk_2797E7638;
  v22 = completionCopy;
  v41 = v22;
  v23 = itemsCopy;
  v38 = v23;
  v24 = intentCopy;
  v39 = v24;
  selfCopy = self;
  v25 = queue;
  v26 = v37;
  *buf = MEMORY[0x277D85DD0];
  *&buf[8] = 3221225472;
  *&buf[16] = ___INCExtensionManagerFetchMatchingSiriExtensionForIntent_block_invoke;
  v50 = &unk_2797E7660;
  v27 = v25;
  v51 = v27;
  v52 = v26;
  v28 = MEMORY[0x259C36E60](buf);
  _intents_launchIdForCurrentPlatform = [v24 _intents_launchIdForCurrentPlatform];
  v42 = 0;
  INExtractAppInfoFromSiriLaunchId();
  v30 = v42;

  extensionBundleId = [v24 extensionBundleId];
  if (extensionBundleId || ([v30 isEqualToString:*MEMORY[0x277CD45D0]] & 1) != 0 || objc_msgSend(v30, "isEqualToString:", *MEMORY[0x277CD45C8]))
  {

    goto LABEL_9;
  }

  v32 = INLocalAppBundleIdentifierForIntentBundleIdentifier();

  if (v32)
  {
LABEL_9:
    if (cCopy)
    {
      [MEMORY[0x277CCA9C8] _intents_matchSiriExtensionsForIntent:v24 completion:v28];
    }

    else
    {
      [MEMORY[0x277CCA9C8] _intents_matchExtensionsForIntent:v24 requireTrustCheck:checkCopy completion:v28];
    }

    goto LABEL_12;
  }

  v33 = *v15;
  if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
  {
    v35 = v33;
    launchId = [v24 launchId];
    *v43 = 136315650;
    v44 = "_INCExtensionManagerFetchMatchingSiriExtensionForIntent";
    v45 = 2114;
    v46 = launchId;
    v47 = 2114;
    v48 = v30;
    _os_log_error_impl(&dword_255503000, v35, OS_LOG_TYPE_ERROR, "%s No local app to handle intent with launchID=%{public}@, bundleID=%{public}@", v43, 0x20u);
  }

  v34 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD3848] code:2005 userInfo:0];
  (v28)[2](v28, 0, v34);

LABEL_12:
}

void __109__INCExtensionManager_fetchExtensionForIntent_extensionInputItems_requiresTCC_requiresTrustCheck_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v7 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v15 = "[INCExtensionManager fetchExtensionForIntent:extensionInputItems:requiresTCC:requiresTrustCheck:completion:]_block_invoke";
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_255503000, v7, OS_LOG_TYPE_INFO, "%s Found extension: %@. Starting extension connection...", buf, 0x16u);
    }

    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(*(a1 + 48) + 8);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __109__INCExtensionManager_fetchExtensionForIntent_extensionInputItems_requiresTCC_requiresTrustCheck_completion___block_invoke_12;
    v11[3] = &unk_2797E7610;
    v13 = *(a1 + 56);
    v12 = v5;
    [v12 _intents_startExtensionConnectionWithExtensionInputItems:v8 intent:v9 queue:v10 completion:v11];
  }
}

uint64_t __109__INCExtensionManager_fetchExtensionForIntent_extensionInputItems_requiresTCC_requiresTrustCheck_completion___block_invoke_12(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  if (a3)
  {
    return (*(v4 + 16))(v4, 0, 0, a3);
  }

  else
  {
    return (*(v4 + 16))(v4, *(a1 + 32), a2);
  }
}

- (INCExtensionManager)init
{
  v7.receiver = self;
  v7.super_class = INCExtensionManager;
  v2 = [(INCExtensionManager *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("INCExtensionManagerQueue", v3);
    queue = v2->_queue;
    v2->_queue = v4;
  }

  return v2;
}

uint64_t __36__INCExtensionManager_sharedManager__block_invoke(uint64_t a1)
{
  sharedManager_sharedManager = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    INLogInitIfNeeded();
  }
}

@end