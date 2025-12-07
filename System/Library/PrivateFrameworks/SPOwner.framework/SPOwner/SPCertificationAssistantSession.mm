@interface SPCertificationAssistantSession
+ (id)beaconsChanges:(id)changes;
- (SPCertificationAssistantSession)init;
- (void)registerSimpleBeaconInterfaceWithContext:(id)context collectionDifference:(id)difference completion:(id)completion;
- (void)startUpdatingBeaconsWithContext:(id)context collectionDifference:(id)difference completion:(id)completion;
- (void)stopUpdatingBeaconsWithCompletion:(id)completion;
@end

@implementation SPCertificationAssistantSession

- (SPCertificationAssistantSession)init
{
  v7.receiver = self;
  v7.super_class = SPCertificationAssistantSession;
  v2 = [(SPCertificationAssistantSession *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.SPOwner.SPCertificationAssistantSession", v3);

    queue = v2->_queue;
    v2->_queue = v4;
  }

  return v2;
}

- (void)startUpdatingBeaconsWithContext:(id)context collectionDifference:(id)difference completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  differenceCopy = difference;
  completionCopy = completion;
  v11 = LogCategory_OwnerSession(completionCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v21 = "[SPCertificationAssistantSession startUpdatingBeaconsWithContext:collectionDifference:completion:]";
    _os_log_impl(&dword_2643D0000, v11, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  queue = [(SPCertificationAssistantSession *)self queue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __99__SPCertificationAssistantSession_startUpdatingBeaconsWithContext_collectionDifference_completion___block_invoke;
  v16[3] = &unk_279B58E30;
  v16[4] = self;
  v17 = contextCopy;
  v18 = completionCopy;
  v19 = differenceCopy;
  v13 = differenceCopy;
  v14 = contextCopy;
  v15 = completionCopy;
  dispatch_async(queue, v16);
}

void __99__SPCertificationAssistantSession_startUpdatingBeaconsWithContext_collectionDifference_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) simpleBeaconUpdateInterface];

  if (v2)
  {
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SPOwner.SPCertificationAssistant.ErrorDomain" code:0 userInfo:0];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = *(a1 + 48);
    v5 = *(a1 + 56);

    [v3 registerSimpleBeaconInterfaceWithContext:v4 collectionDifference:v5 completion:v6];
  }
}

- (void)stopUpdatingBeaconsWithCompletion:(id)completion
{
  v12 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = LogCategory_OwnerSession(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[SPCertificationAssistantSession stopUpdatingBeaconsWithCompletion:]";
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  queue = [(SPCertificationAssistantSession *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__SPCertificationAssistantSession_stopUpdatingBeaconsWithCompletion___block_invoke;
  v8[3] = &unk_279B58B80;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(queue, v8);
}

void __69__SPCertificationAssistantSession_stopUpdatingBeaconsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) simpleBeaconUpdateInterface];
  if (v2)
  {
    [*(a1 + 32) setSimpleBeaconUpdateInterface:0];
    [v2 stopUpdatingSimpleBeaconsWithCompletion:*(a1 + 40)];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

+ (id)beaconsChanges:(id)changes
{
  changesCopy = changes;
  insertions = [changesCopy insertions];
  removals = [changesCopy removals];

  v6 = [insertions arrayByAddingObjectsFromArray:removals];
  v7 = [v6 fm_map:&__block_literal_global_5];

  return v7;
}

id __50__SPCertificationAssistantSession_beaconsChanges___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SPCertificationAssistantBeacon alloc];
  v4 = [v2 object];
  v5 = [(SPCertificationAssistantBeacon *)v3 initWithInternalSimpleBeacon:v4];

  v6 = objc_alloc(MEMORY[0x277CCABE8]);
  v7 = [v2 changeType];
  v8 = [v2 index];

  v9 = [v6 initWithObject:v5 type:v7 index:v8];

  return v9;
}

SPCertificationAssistantBeacon *__50__SPCertificationAssistantSession_unifiedBeacons___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[SPCertificationAssistantBeacon alloc] initWithInternalSimpleBeacon:v2];

  return v3;
}

- (void)registerSimpleBeaconInterfaceWithContext:(id)context collectionDifference:(id)difference completion:(id)completion
{
  differenceCopy = difference;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __108__SPCertificationAssistantSession_registerSimpleBeaconInterfaceWithContext_collectionDifference_completion___block_invoke;
  aBlock[3] = &unk_279B58E78;
  v15 = differenceCopy;
  v9 = differenceCopy;
  completionCopy = completion;
  contextCopy = context;
  v12 = _Block_copy(aBlock);
  v13 = objc_opt_new();
  [v13 setSimpleBeaconDifferenceBlock:v12];
  [v13 startUpdatingSimpleBeaconsWithContext:contextCopy completion:completionCopy];

  [(SPCertificationAssistantSession *)self setSimpleBeaconUpdateInterface:v13];
}

void __108__SPCertificationAssistantSession_registerSimpleBeaconInterfaceWithContext_collectionDifference_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(*(a1 + 32) + 16);

    v4();
  }

  else
  {
    v6 = [SPCertificationAssistantSession beaconsChanges:a2];
    v5 = [objc_alloc(MEMORY[0x277CCABF0]) initWithChanges:v6];
    (*(*(a1 + 32) + 16))();
  }
}

@end