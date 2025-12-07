@interface RTTDatabaseManager
+ (id)sharedManager;
- (BOOL)contactIDIsTTYContact:(id)contact;
- (BOOL)contactIsTTYContact:(id)contact;
- (BOOL)contactPathWasUsedForTTY:(id)y;
- (BOOL)deleteConversationWithCallUID:(id)d;
- (BOOL)deleteConversationsWithCallUIDs:(id)ds;
- (BOOL)saveConversation:(id)conversation;
- (RTTDatabaseManager)init;
- (id)conversationForCallUID:(id)d;
- (void)_callHistoryDBDidChange:(id)change;
- (void)callHistoryDBDidChange:(id)change;
- (void)logMessage:(id)message;
@end

@implementation RTTDatabaseManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[RTTDatabaseManager sharedManager];
  }

  v3 = sharedManager_Manager;

  return v3;
}

uint64_t __35__RTTDatabaseManager_sharedManager__block_invoke()
{
  sharedManager_Manager = objc_alloc_init(RTTDatabaseManager);

  return MEMORY[0x2821F96F8]();
}

- (RTTDatabaseManager)init
{
  v7.receiver = self;
  v7.super_class = RTTDatabaseManager;
  v2 = [(HCDatabaseManager *)&v7 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_callHistoryDBDidChange_ name:*MEMORY[0x277CF7E10] object:0];

    v4 = objc_alloc_init(MEMORY[0x277CF7D38]);
    callHistoryManager = v2->_callHistoryManager;
    v2->_callHistoryManager = v4;

    [(RTTDatabaseManager *)v2 callHistoryDBDidChange:0];
  }

  return v2;
}

- (void)logMessage:(id)message
{
  v7 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v4 = AXLogRTT();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = messageCopy;
    _os_log_impl(&dword_261754000, v4, OS_LOG_TYPE_INFO, "%@", &v5, 0xCu);
  }
}

- (void)callHistoryDBDidChange:(id)change
{
  changeCopy = change;
  v3 = changeCopy;
  AXPerformBlockAsynchronouslyOnMainThread();
}

- (void)_callHistoryDBDidChange:(id)change
{
  v26 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v5 = AXLogRTT();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = changeCopy;
    _os_log_impl(&dword_261754000, v5, OS_LOG_TYPE_INFO, "Call history changed: %@", &buf, 0xCu);
  }

  v6 = objc_autoreleasePoolPush();
  *&buf = 0;
  *(&buf + 1) = &buf;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__2;
  v24 = __Block_byref_object_dispose__2;
  v25 = 0;
  managedObjectContext = [(HCDatabaseManager *)self managedObjectContext];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __46__RTTDatabaseManager__callHistoryDBDidChange___block_invoke;
  v18[3] = &unk_279AE80C8;
  v18[4] = self;
  v18[5] = &buf;
  [managedObjectContext performBlockAndWait:v18];

  array = [MEMORY[0x277CBEB18] array];
  v9 = *(*(&buf + 1) + 40);
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __46__RTTDatabaseManager__callHistoryDBDidChange___block_invoke_2;
  v15 = &unk_279AE80F0;
  selfCopy = self;
  v10 = array;
  v17 = v10;
  [v9 enumerateObjectsUsingBlock:&v12];
  v11 = AXLogRTT();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *v19 = 138412290;
    v20 = v10;
    _os_log_impl(&dword_261754000, v11, OS_LOG_TYPE_INFO, "Deleting %@", v19, 0xCu);
  }

  [(RTTDatabaseManager *)self deleteConversationsWithCallUIDs:v10, v12, v13, v14, v15, selfCopy];
  _Block_object_dispose(&buf, 8);

  objc_autoreleasePoolPop(v6);
}

void __46__RTTDatabaseManager__callHistoryDBDidChange___block_invoke(uint64_t a1)
{
  v6 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:@"TTYContactList"];
  [v6 setReturnsObjectsAsFaults:0];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [v2 executeFetchRequest:v6 error:0];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __46__RTTDatabaseManager__callHistoryDBDidChange___block_invoke_2(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v5 = MEMORY[0x277CCAC30];
  v6 = [v3 callUID];
  v7 = [v5 predicateWithFormat:@"uniqueId == %@", v6];
  v8 = [v4 recentCallsWithPredicate:v7];

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__2;
  v25 = __Block_byref_object_dispose__2;
  v26 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __46__RTTDatabaseManager__callHistoryDBDidChange___block_invoke_3;
  v18[3] = &unk_279AE80C8;
  v20 = &v21;
  v9 = v3;
  v19 = v9;
  [RTTTelephonyUtilities performCallCenterTask:v18];
  v10 = AXLogRTT();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = v22[5];
    *buf = 138412546;
    v28 = v8;
    v29 = 2112;
    v30 = v11;
    _os_log_impl(&dword_261754000, v10, OS_LOG_TYPE_INFO, "Recent calls: %@/TU Call %@", buf, 0x16u);
  }

  v12 = [v22[5] status];
  if (![v8 count])
  {
    v13 = [v9 callUID];
    if ([v13 length])
    {
      v14 = (v12 - 3) >= 0xFFFFFFFE;
    }

    else
    {
      v14 = 1;
    }

    v15 = !v14;

    if (v15)
    {
      v16 = *(a1 + 40);
      v17 = [v9 callUID];
      [v16 addObject:v17];
    }
  }

  _Block_object_dispose(&v21, 8);
}

void __46__RTTDatabaseManager__callHistoryDBDidChange___block_invoke_3(uint64_t a1)
{
  v6 = +[RTTTelephonyUtilities sharedCallCenter];
  v2 = [*(a1 + 32) callUID];
  v3 = [v6 callWithCallUUID:v2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)conversationForCallUID:(id)d
{
  v45 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__2;
  v35 = __Block_byref_object_dispose__2;
  v36 = 0;
  v5 = objc_autoreleasePoolPush();
  *v41 = 0;
  *&v41[8] = v41;
  *&v41[16] = 0x3032000000;
  v42 = __Block_byref_object_copy__2;
  v43 = __Block_byref_object_dispose__2;
  v44 = 0;
  managedObjectContext = [(HCDatabaseManager *)self managedObjectContext];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __45__RTTDatabaseManager_conversationForCallUID___block_invoke;
  v26[3] = &unk_279AE8118;
  v7 = dCopy;
  v27 = v7;
  selfCopy = self;
  v29 = v41;
  v30 = &v31;
  [managedObjectContext performBlockAndWait:v26];

  v8 = AXLogRTT();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = *(*&v41[8] + 40);
    v10 = v32[5];
    *buf = 138412546;
    v38 = v9;
    v39 = 2112;
    v40 = v10;
    _os_log_impl(&dword_261754000, v8, OS_LOG_TYPE_INFO, "Conversation for call UID result: %@/%@", buf, 0x16u);
  }

  if (v32[5])
  {
    lastObject = AXLogRTT();
    if (os_log_type_enabled(lastObject, OS_LOG_TYPE_ERROR))
    {
      [RTTDatabaseManager conversationForCallUID:];
    }

LABEL_16:
    v21 = 0;
    goto LABEL_17;
  }

  if ([*(*&v41[8] + 40) count] >= 2)
  {
    v12 = AXLogRTT();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [RTTDatabaseManager conversationForCallUID:];
    }
  }

  lastObject = [*(*&v41[8] + 40) lastObject];
  data = [lastObject data];
  if (!data)
  {
    goto LABEL_16;
  }

  version = [lastObject version];
  v15 = [version isEqualToNumber:&unk_2873FFE48];

  if (!v15)
  {
    goto LABEL_16;
  }

  v16 = objc_alloc(MEMORY[0x277CCAAC8]);
  data2 = [lastObject data];
  v18 = (v32 + 5);
  obj = v32[5];
  v19 = [v16 initForReadingFromData:data2 error:&obj];
  objc_storeStrong(v18, obj);

  if (v32[5])
  {
    v20 = AXLogRTT();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [RTTDatabaseManager conversationForCallUID:];
    }

    v21 = 0;
  }

  else
  {
    v24 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v21 = [v19 decodeObjectOfClasses:v24 forKey:*MEMORY[0x277CCA308]];
  }

LABEL_17:
  _Block_object_dispose(v41, 8);

  objc_autoreleasePoolPop(v5);
  v22 = AXLogRTT();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    *v41 = 138412546;
    *&v41[4] = v7;
    *&v41[12] = 2112;
    *&v41[14] = v21;
    _os_log_impl(&dword_261754000, v22, OS_LOG_TYPE_INFO, "Found conversation for id [%@] - %@", v41, 0x16u);
  }

  _Block_object_dispose(&v31, 8);

  return v21;
}

void __45__RTTDatabaseManager_conversationForCallUID___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:@"TTYHistory"];
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"callUID = %@", *(a1 + 32)];
  [v2 setPredicate:v3];

  [v2 setReturnsObjectsAsFaults:0];
  v4 = [*(a1 + 40) managedObjectContext];
  v5 = *(*(a1 + 56) + 8);
  obj = *(v5 + 40);
  v6 = [v4 executeFetchRequest:v2 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (BOOL)saveConversation:(id)conversation
{
  v54 = *MEMORY[0x277D85DE8];
  conversationCopy = conversation;
  managedObjectContext = [(HCDatabaseManager *)self managedObjectContext];

  if (managedObjectContext)
  {
    v44 = 0;
    v45 = &v44;
    v46 = 0x3032000000;
    v47 = __Block_byref_object_copy__2;
    v48 = __Block_byref_object_dispose__2;
    v49 = 0;
    v6 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
    [v6 encodeObject:conversationCopy forKey:*MEMORY[0x277CCA308]];
    [v6 finishEncoding];
    encodedData = [v6 encodedData];
    if ([encodedData length])
    {
      v38 = 0;
      v39 = &v38;
      v40 = 0x3032000000;
      v41 = __Block_byref_object_copy__2;
      v42 = __Block_byref_object_dispose__2;
      v43 = 0;
      managedObjectContext2 = [(HCDatabaseManager *)self managedObjectContext];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __39__RTTDatabaseManager_saveConversation___block_invoke;
      v33[3] = &unk_279AE8118;
      v9 = conversationCopy;
      v34 = v9;
      selfCopy = self;
      v36 = &v38;
      v37 = &v44;
      [managedObjectContext2 performBlockAndWait:v33];

      lastObject = [v39[5] lastObject];
      v11 = lastObject;
      if (lastObject && !v45[5])
      {
        v14 = lastObject;
      }

      else
      {
        v12 = MEMORY[0x277CBE408];
        managedObjectContext3 = [(HCDatabaseManager *)self managedObjectContext];
        v14 = [v12 insertNewObjectForEntityForName:@"TTYHistory" inManagedObjectContext:managedObjectContext3];

        callIdentifier = [v9 callIdentifier];
        [v14 setCallUID:callIdentifier];
      }

      [v14 setVersion:&unk_2873FFE48];
      [v14 setData:encodedData];
      [v14 setNeedsCloudKitUpload:MEMORY[0x277CBEC38]];

      _Block_object_dispose(&v38, 8);
      v38 = 0;
      v39 = &v38;
      v40 = 0x3032000000;
      v41 = __Block_byref_object_copy__2;
      v42 = __Block_byref_object_dispose__2;
      v43 = 0;
      managedObjectContext4 = [(HCDatabaseManager *)self managedObjectContext];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __39__RTTDatabaseManager_saveConversation___block_invoke_60;
      v29[3] = &unk_279AE8140;
      v18 = v9;
      selfCopy2 = self;
      v32 = &v38;
      v30 = v18;
      [managedObjectContext4 performBlockAndWait:v29];

      lastObject2 = [v39[5] lastObject];
      if (!lastObject2)
      {
        otherContactPath = [v18 otherContactPath];
        v21 = [otherContactPath length] == 0;

        if (!v21)
        {
          v22 = MEMORY[0x277CBE408];
          managedObjectContext5 = [(HCDatabaseManager *)self managedObjectContext];
          v24 = [v22 insertNewObjectForEntityForName:@"TTYContactList" inManagedObjectContext:managedObjectContext5];

          callIdentifier2 = [v18 callIdentifier];
          [v24 setCallUID:callIdentifier2];

          otherContactPath2 = [v18 otherContactPath];
          [v24 setContactID:otherContactPath2];
        }
      }

      LODWORD(self) = [(HCDatabaseManager *)self saveIfPossible];
      v27 = AXLogRTT();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        selfCopy3 = self;
        v52 = 2112;
        v53 = v18;
        _os_log_impl(&dword_261754000, v27, OS_LOG_TYPE_INFO, "Saved to database[%d]: %@", buf, 0x12u);
      }

      _Block_object_dispose(&v38, 8);
    }

    else
    {
      self = AXLogRTT();
      if (os_log_type_enabled(&self->super.super, OS_LOG_TYPE_ERROR))
      {
        [RTTDatabaseManager saveConversation:];
      }

      LOBYTE(self) = 0;
    }

    _Block_object_dispose(&v44, 8);
  }

  else
  {
    v16 = AXLogRTT();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [RTTDatabaseManager saveConversation:];
    }

    LOBYTE(self) = 0;
  }

  return self;
}

void __39__RTTDatabaseManager_saveConversation___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:@"TTYHistory"];
  v3 = MEMORY[0x277CCAC30];
  v4 = [*(a1 + 32) callIdentifier];
  v5 = [v3 predicateWithFormat:@"callUID = %@", v4];
  [v2 setPredicate:v5];

  [v2 setReturnsObjectsAsFaults:0];
  v6 = [*(a1 + 40) managedObjectContext];
  v7 = *(*(a1 + 56) + 8);
  obj = *(v7 + 40);
  v8 = [v6 executeFetchRequest:v2 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void __39__RTTDatabaseManager_saveConversation___block_invoke_60(uint64_t a1)
{
  v9 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:@"TTYContactList"];
  v2 = MEMORY[0x277CCAC30];
  v3 = [*(a1 + 32) callIdentifier];
  v4 = [v2 predicateWithFormat:@"callUID = %@", v3];
  [v9 setPredicate:v4];

  [v9 setReturnsObjectsAsFaults:0];
  v5 = [*(a1 + 40) managedObjectContext];
  v6 = [v5 executeFetchRequest:v9 error:0];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (BOOL)deleteConversationsWithCallUIDs:(id)ds
{
  dsCopy = ds;
  managedObjectContext = [(HCDatabaseManager *)self managedObjectContext];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __54__RTTDatabaseManager_deleteConversationsWithCallUIDs___block_invoke;
  v11 = &unk_279AE7760;
  v12 = dsCopy;
  selfCopy = self;
  v6 = dsCopy;
  [managedObjectContext performBlockAndWait:&v8];

  LOBYTE(self) = [(HCDatabaseManager *)self saveIfPossible:v8];
  return self;
}

void __54__RTTDatabaseManager_deleteConversationsWithCallUIDs___block_invoke(uint64_t a1)
{
  v3[0] = 0;
  v3[1] = v3;
  v3[2] = 0x3032000000;
  v3[3] = __Block_byref_object_copy__2;
  v3[4] = __Block_byref_object_dispose__2;
  v4 = 0;
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __54__RTTDatabaseManager_deleteConversationsWithCallUIDs___block_invoke_2;
  v2[3] = &unk_279AE8168;
  v1 = *(a1 + 32);
  v2[4] = *(a1 + 40);
  v2[5] = v3;
  [v1 enumerateObjectsUsingBlock:v2];
  _Block_object_dispose(v3, 8);
}

void __54__RTTDatabaseManager_deleteConversationsWithCallUIDs___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:@"TTYHistory"];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"callUID = %@", v3];
  [v4 setPredicate:v5];

  [v4 setReturnsObjectsAsFaults:0];
  v6 = [*(a1 + 32) managedObjectContext];
  v7 = *(*(a1 + 40) + 8);
  obj = *(v7 + 40);
  v8 = [v6 executeFetchRequest:v4 error:&obj];
  objc_storeStrong((v7 + 40), obj);

  v9 = [v8 lastObject];
  if (v9)
  {
    v10 = [*(a1 + 32) managedObjectContext];
    [v10 deleteObject:v9];
  }

  v11 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:@"TTYContactList"];

  v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"callUID = %@", v3];
  [v11 setPredicate:v12];

  [v11 setReturnsObjectsAsFaults:0];
  v13 = [*(a1 + 32) managedObjectContext];
  v14 = *(*(a1 + 40) + 8);
  v18 = *(v14 + 40);
  v15 = [v13 executeFetchRequest:v11 error:&v18];
  objc_storeStrong((v14 + 40), v18);

  v16 = [v15 lastObject];
  if (v16)
  {
    v17 = [*(a1 + 32) managedObjectContext];
    [v17 deleteObject:v16];
  }
}

- (BOOL)deleteConversationWithCallUID:(id)d
{
  v8[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  if ([dCopy length])
  {
    v8[0] = dCopy;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
    v6 = [(RTTDatabaseManager *)self deleteConversationsWithCallUIDs:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)contactIDIsTTYContact:(id)contact
{
  v19[1] = *MEMORY[0x277D85DE8];
  contactCopy = contact;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v5 = +[RTTTelephonyUtilities sharedUtilityProvider];
  contactStore = [v5 contactStore];
  v7 = MEMORY[0x277CBDA58];
  v19[0] = contactCopy;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v9 = [v7 predicateForContactsWithIdentifiers:v8];
  v18 = *MEMORY[0x277CBD098];
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
  v11 = [contactStore unifiedContactsMatchingPredicate:v9 keysToFetch:v10 error:0];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __44__RTTDatabaseManager_contactIDIsTTYContact___block_invoke;
  v13[3] = &unk_279AE81B8;
  v13[4] = self;
  v13[5] = &v14;
  [v11 enumerateObjectsUsingBlock:v13];

  LOBYTE(v5) = *(v15 + 24);
  _Block_object_dispose(&v14, 8);

  return v5 & 1;
}

void __44__RTTDatabaseManager_contactIDIsTTYContact___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = [a2 phoneNumbers];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__RTTDatabaseManager_contactIDIsTTYContact___block_invoke_2;
  v7[3] = &unk_279AE8190;
  v8 = *(a1 + 32);
  v9 = a4;
  [v6 enumerateObjectsUsingBlock:v7];
}

void __44__RTTDatabaseManager_contactIDIsTTYContact___block_invoke_2(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a1[4];
  v7 = [a2 value];
  v8 = [v7 stringValue];
  LODWORD(v6) = [v6 contactPathWasUsedForTTY:v8];

  if (v6)
  {
    v9 = a1[6];
    *(*(a1[5] + 8) + 24) = 1;
    *a4 = 1;
    *v9 = 1;
  }
}

- (BOOL)contactIsTTYContact:(id)contact
{
  identifier = [contact identifier];
  LOBYTE(self) = [(RTTDatabaseManager *)self contactIDIsTTYContact:identifier];

  return self;
}

- (BOOL)contactPathWasUsedForTTY:(id)y
{
  yCopy = y;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__2;
  v27 = __Block_byref_object_dispose__2;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__2;
  v21 = __Block_byref_object_dispose__2;
  v22 = 0;
  managedObjectContext = [(HCDatabaseManager *)self managedObjectContext];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __47__RTTDatabaseManager_contactPathWasUsedForTTY___block_invoke;
  v12 = &unk_279AE8118;
  v6 = yCopy;
  v13 = v6;
  selfCopy = self;
  v15 = &v17;
  v16 = &v23;
  [managedObjectContext performBlockAndWait:&v9];

  if ([v18[5] count])
  {
    v7 = v24[5] == 0;
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v7;
}

void __47__RTTDatabaseManager_contactPathWasUsedForTTY___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:@"TTYContactList"];
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"contactID = %@", *(a1 + 32)];
  [v2 setPredicate:v3];

  v4 = [*(a1 + 40) managedObjectContext];
  v5 = *(a1 + 56);
  a1 += 56;
  v6 = *(v5 + 8);
  obj = *(v6 + 40);
  v7 = [v4 executeFetchRequest:v2 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  v8 = *(*(a1 - 8) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  if (*(*(*a1 + 8) + 40))
  {
    v10 = AXLogRTT();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __47__RTTDatabaseManager_contactPathWasUsedForTTY___block_invoke_cold_1();
    }
  }
}

- (void)conversationForCallUID:.cold.1()
{
  OUTLINED_FUNCTION_1_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1(&dword_261754000, v0, v1, "Failed TTYHistory fetch %@", v2, v3, v4, v5);
}

- (void)conversationForCallUID:.cold.2()
{
  OUTLINED_FUNCTION_1_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  _os_log_fault_impl(&dword_261754000, v0, OS_LOG_TYPE_FAULT, "We had two callUID results, %@", v1, 0xCu);
}

- (void)conversationForCallUID:.cold.3()
{
  OUTLINED_FUNCTION_1_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1(&dword_261754000, v0, v1, "Failed to create unarchiver with error %@", v2, v3, v4, v5);
}

- (void)saveConversation:.cold.3()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_261754000, v1, OS_LOG_TYPE_ERROR, "Not saving convo because no object: %@, %@", v2, 0x16u);
}

@end