@interface HMIHomePersonDataSourceInMemory
- (HMIHomePersonDataSourceInMemory)init;
- (id)existingFaceCropUUIDs;
- (id)existingPersonFaceCropUUIDs;
- (id)existingPersonUUIDs;
- (void)addFaceCrops:(id)crops completion:(id)completion;
- (void)addFaceprints:(id)faceprints completion:(id)completion;
- (void)addPersonFaceCrops:(id)crops completion:(id)completion;
- (void)addPersons:(id)persons completion:(id)completion;
- (void)associateFaceCropsWithUUIDs:(id)ds toPersonWithUUID:(id)d forSource:(int64_t)source completion:(id)completion;
- (void)fetchAllFaceprintsWithCompletion:(id)completion;
- (void)fetchAllPersonFaceCropsWithCompletion:(id)completion;
- (void)fetchAllPersonsWithCompletion:(id)completion;
- (void)fetchAllUnassociatedFaceCropsWithCompletion:(id)completion;
- (void)fetchFaceCropsForPersonsWithUUIDs:(id)ds completion:(id)completion;
- (void)fetchFaceprintsForFaceCropsWithUUIDs:(id)ds completion:(id)completion;
- (void)fetchPersonsWithUUIDs:(id)ds completion:(id)completion;
- (void)fetchSettingsWithCompletion:(id)completion;
- (void)performCloudPullWithCompletion:(id)completion;
- (void)removeFaceCropsWithUUIDs:(id)ds completion:(id)completion;
- (void)removeFaceprintsWithUUIDs:(id)ds completion:(id)completion;
- (void)removePersonsWithUUIDs:(id)ds completion:(id)completion;
@end

@implementation HMIHomePersonDataSourceInMemory

- (HMIHomePersonDataSourceInMemory)init
{
  v16.receiver = self;
  v16.super_class = HMIHomePersonDataSourceInMemory;
  v2 = [(HMIHomePersonDataSourceInMemory *)&v16 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    personToFaceCrops = v3->_personToFaceCrops;
    v3->_personToFaceCrops = dictionary;

    v6 = [MEMORY[0x277CBEB58] set];
    unassociatedFaceCrops = v3->_unassociatedFaceCrops;
    v3->_unassociatedFaceCrops = v6;

    v8 = [MEMORY[0x277CBEB98] set];
    removedPersonFaceCrops = v3->_removedPersonFaceCrops;
    v3->_removedPersonFaceCrops = v8;

    v10 = HMIDispatchQueueNameString(v3, 0);
    uTF8String = [v10 UTF8String];
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x277D85CD8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create(uTF8String, v12);
    workQueue = v3->_workQueue;
    v3->_workQueue = v13;
  }

  return v3;
}

- (id)existingPersonUUIDs
{
  os_unfair_lock_lock_with_options();
  v3 = MEMORY[0x277CBEB98];
  personToFaceCrops = [(HMIHomePersonDataSourceInMemory *)self personToFaceCrops];
  allKeys = [personToFaceCrops allKeys];
  v6 = [allKeys na_map:?];
  v7 = [v3 setWithArray:?];

  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (id)existingPersonFaceCropUUIDs
{
  os_unfair_lock_lock_with_options();
  v3 = [MEMORY[0x277CBEB58] set];
  personToFaceCrops = [(HMIHomePersonDataSourceInMemory *)self personToFaceCrops];
  allValues = [personToFaceCrops allValues];
  v8 = v3;
  [allValues na_each:?];

  v6 = [v8 copy];
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

void __62__HMIHomePersonDataSourceInMemory_existingPersonFaceCropUUIDs__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 na_map:?];
  [v2 unionSet:?];
}

- (id)existingFaceCropUUIDs
{
  os_unfair_lock_lock_with_options();
  unassociatedFaceCrops = [(HMIHomePersonDataSourceInMemory *)self unassociatedFaceCrops];
  v4 = [unassociatedFaceCrops na_map:?];

  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (void)fetchAllFaceprintsWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueue = [(HMIHomePersonDataSourceInMemory *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HMIHomePersonDataSourceInMemory_fetchAllFaceprintsWithCompletion___block_invoke;
  block[3] = &unk_278754068;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(workQueue, block);
}

void __68__HMIHomePersonDataSourceInMemory_fetchAllFaceprintsWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CBEB98] set];
  (*(v1 + 16))(v1, v2, 0);
}

- (void)fetchAllPersonFaceCropsWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueue = [(HMIHomePersonDataSourceInMemory *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__HMIHomePersonDataSourceInMemory_fetchAllPersonFaceCropsWithCompletion___block_invoke;
  v7[3] = &unk_278752DF8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(workQueue, v7);
}

void __73__HMIHomePersonDataSourceInMemory_fetchAllPersonFaceCropsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB58] set];
  v3 = *(a1 + 32);
  os_unfair_lock_lock_with_options();
  v4 = [*(a1 + 32) personToFaceCrops];
  v5 = [v4 allValues];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __73__HMIHomePersonDataSourceInMemory_fetchAllPersonFaceCropsWithCompletion___block_invoke_2;
  v12 = &unk_278754020;
  v6 = v2;
  v13 = v6;
  [v5 na_each:?];

  os_unfair_lock_unlock(v3 + 2);
  v7 = *(a1 + 40);
  v8 = [v6 copy];
  (*(v7 + 16))(v7, v8, 0);
}

- (void)fetchAllPersonsWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueue = [(HMIHomePersonDataSourceInMemory *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__HMIHomePersonDataSourceInMemory_fetchAllPersonsWithCompletion___block_invoke;
  v7[3] = &unk_278752DF8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(workQueue, v7);
}

void __65__HMIHomePersonDataSourceInMemory_fetchAllPersonsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEA60] array];
  v3 = *(a1 + 32);
  os_unfair_lock_lock_with_options();
  v4 = [*(a1 + 32) personToFaceCrops];
  v7 = [v4 allKeys];

  os_unfair_lock_unlock(v3 + 2);
  v5 = *(a1 + 40);
  v6 = [MEMORY[0x277CBEB98] setWithArray:?];
  (*(v5 + 16))(v5, v6, 0);
}

- (void)fetchFaceCropsForPersonsWithUUIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  workQueue = [(HMIHomePersonDataSourceInMemory *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__HMIHomePersonDataSourceInMemory_fetchFaceCropsForPersonsWithUUIDs_completion___block_invoke;
  block[3] = &unk_2787526C0;
  v12 = dsCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = dsCopy;
  dispatch_async(workQueue, block);
}

void __80__HMIHomePersonDataSourceInMemory_fetchFaceCropsForPersonsWithUUIDs_completion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB58] set];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) existingPersonUUIDs];
  LOBYTE(v3) = [v3 isSubsetOfSet:?];

  if (v3)
  {
    v5 = *(a1 + 40);
    os_unfair_lock_lock_with_options();
    v6 = [*(a1 + 40) personToFaceCrops];
    v10 = MEMORY[0x277D85DD0];
    v11 = *(a1 + 32);
    v12 = v2;
    [v6 enumerateKeysAndObjectsUsingBlock:{v10, 3221225472, __80__HMIHomePersonDataSourceInMemory_fetchFaceCropsForPersonsWithUUIDs_completion___block_invoke_2, &unk_278754090}];

    os_unfair_lock_unlock(v5 + 2);
    v7 = *(a1 + 48);
    v8 = [v12 copy];
    (*(v7 + 16))(v7, v8, 0);
  }

  else
  {
    v9 = *(a1 + 48);
    v8 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:?];
    (*(v9 + 16))(v9, 0, v8);
  }
}

void __80__HMIHomePersonDataSourceInMemory_fetchFaceCropsForPersonsWithUUIDs_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = *(a1 + 32);
  v6 = [a2 UUID];
  LODWORD(v5) = [v5 containsObject:?];

  if (v5)
  {
    [*(a1 + 40) unionSet:?];
  }
}

- (void)fetchFaceprintsForFaceCropsWithUUIDs:(id)ds completion:(id)completion
{
  completionCopy = completion;
  workQueue = [(HMIHomePersonDataSourceInMemory *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__HMIHomePersonDataSourceInMemory_fetchFaceprintsForFaceCropsWithUUIDs_completion___block_invoke;
  block[3] = &unk_278754068;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(workQueue, block);
}

void __83__HMIHomePersonDataSourceInMemory_fetchFaceprintsForFaceCropsWithUUIDs_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CBEB98] set];
  (*(v1 + 16))(v1, v2, 0);
}

- (void)fetchPersonsWithUUIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  workQueue = [(HMIHomePersonDataSourceInMemory *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HMIHomePersonDataSourceInMemory_fetchPersonsWithUUIDs_completion___block_invoke;
  block[3] = &unk_2787526C0;
  v12 = dsCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = dsCopy;
  dispatch_async(workQueue, block);
}

void __68__HMIHomePersonDataSourceInMemory_fetchPersonsWithUUIDs_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) existingPersonUUIDs];
  LOBYTE(v2) = [v2 isSubsetOfSet:?];

  if (v2)
  {
    v4 = [MEMORY[0x277CBEB98] set];
    v5 = *(a1 + 40);
    os_unfair_lock_lock_with_options();
    v6 = MEMORY[0x277CBEB98];
    v7 = [*(a1 + 40) personToFaceCrops];
    v8 = [v7 allKeys];
    v9 = [v6 setWithArray:?];

    os_unfair_lock_unlock(v5 + 2);
    v13 = *(a1 + 32);
    v10 = [v9 na_filter:?];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v11 = *(a1 + 48);
    v12 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:?];
    (*(v11 + 16))(v11, 0, v12);
  }
}

void *__68__HMIHomePersonDataSourceInMemory_fetchPersonsWithUUIDs_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 UUID];
  v4 = [v2 containsObject:?];

  return v4;
}

- (void)performCloudPullWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueue = [(HMIHomePersonDataSourceInMemory *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__HMIHomePersonDataSourceInMemory_performCloudPullWithCompletion___block_invoke;
  block[3] = &unk_278754068;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(workQueue, block);
}

- (void)addFaceCrops:(id)crops completion:(id)completion
{
  completionCopy = completion;
  workQueue = [(HMIHomePersonDataSourceInMemory *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__HMIHomePersonDataSourceInMemory_addFaceCrops_completion___block_invoke;
  block[3] = &unk_278754068;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(workQueue, block);
}

void __59__HMIHomePersonDataSourceInMemory_addFaceCrops_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:?];
  (*(v1 + 16))(v1, v2);
}

- (void)addPersonFaceCrops:(id)crops completion:(id)completion
{
  completionCopy = completion;
  workQueue = [(HMIHomePersonDataSourceInMemory *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__HMIHomePersonDataSourceInMemory_addPersonFaceCrops_completion___block_invoke;
  block[3] = &unk_278754068;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(workQueue, block);
}

void __65__HMIHomePersonDataSourceInMemory_addPersonFaceCrops_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:?];
  (*(v1 + 16))(v1, v2);
}

- (void)addPersons:(id)persons completion:(id)completion
{
  personsCopy = persons;
  completionCopy = completion;
  workQueue = [(HMIHomePersonDataSourceInMemory *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__HMIHomePersonDataSourceInMemory_addPersons_completion___block_invoke;
  block[3] = &unk_2787526C0;
  v12 = personsCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = personsCopy;
  dispatch_async(workQueue, block);
}

void __57__HMIHomePersonDataSourceInMemory_addPersons_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) na_map:?];
  v3 = [*(a1 + 40) existingPersonUUIDs];
  v4 = [v2 intersectsSet:?];

  if (v4)
  {
    v5 = *(a1 + 48);
    v6 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:?];
    (*(v5 + 16))(v5, v6);
  }

  else
  {
    v7 = *(a1 + 40);
    os_unfair_lock_lock_with_options();
    [*(a1 + 32) na_each:?];
    os_unfair_lock_unlock(v7 + 2);
    (*(*(a1 + 48) + 16))();
  }
}

void __57__HMIHomePersonDataSourceInMemory_addPersons_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEB98];
  v4 = a2;
  v6 = [v3 set];
  v5 = [*(a1 + 32) personToFaceCrops];
  [v5 setObject:? forKeyedSubscript:?];
}

- (void)fetchAllUnassociatedFaceCropsWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueue = [(HMIHomePersonDataSourceInMemory *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__HMIHomePersonDataSourceInMemory_fetchAllUnassociatedFaceCropsWithCompletion___block_invoke;
  v7[3] = &unk_278752DF8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(workQueue, v7);
}

void __79__HMIHomePersonDataSourceInMemory_fetchAllUnassociatedFaceCropsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB98] set];
  v3 = *(a1 + 32);
  os_unfair_lock_lock_with_options();
  v4 = [*(a1 + 32) unassociatedFaceCrops];
  v5 = [v4 copy];

  os_unfair_lock_unlock(v3 + 2);
  (*(*(a1 + 40) + 16))();
}

- (void)fetchSettingsWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueue = [(HMIHomePersonDataSourceInMemory *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__HMIHomePersonDataSourceInMemory_fetchSettingsWithCompletion___block_invoke;
  block[3] = &unk_278754068;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(workQueue, block);
}

void __63__HMIHomePersonDataSourceInMemory_fetchSettingsWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:?];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)removeFaceCropsWithUUIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  workQueue = [(HMIHomePersonDataSourceInMemory *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__HMIHomePersonDataSourceInMemory_removeFaceCropsWithUUIDs_completion___block_invoke;
  block[3] = &unk_2787526C0;
  v12 = dsCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = dsCopy;
  dispatch_async(workQueue, block);
}

void __71__HMIHomePersonDataSourceInMemory_removeFaceCropsWithUUIDs_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) existingPersonFaceCropUUIDs];
  LOBYTE(v2) = [v2 isSubsetOfSet:?];

  if (v2)
  {
    v4 = [MEMORY[0x277CBEB58] set];
    v5 = *(a1 + 40);
    os_unfair_lock_lock_with_options();
    v6 = [*(a1 + 40) personToFaceCrops];
    v7 = [v6 allKeys];
    v15 = v4;
    v13 = *(a1 + 32);
    v8 = v13.i64[0];
    [v7 na_each:?];

    v9 = [*(*(a1 + 40) + 32) setByAddingObjectsFromSet:?];
    v10 = *(a1 + 40);
    v11 = *(v10 + 32);
    *(v10 + 32) = v9;

    os_unfair_lock_unlock(v5 + 2);
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v12 = *(a1 + 48);
    v14 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:?];
    (*(v12 + 16))(v12, v14);
  }
}

void __71__HMIHomePersonDataSourceInMemory_removeFaceCropsWithUUIDs_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = a2;
  v6 = [v3 personToFaceCrops];
  v7 = [v6 objectForKeyedSubscript:?];
  v15 = *(a1 + 48);
  v8 = [v7 na_filter:?];
  [v4 unionSet:?];

  v9 = [*(a1 + 40) personToFaceCrops];
  v10 = [v9 objectForKeyedSubscript:?];
  v13 = MEMORY[0x277D85DD0];
  v14 = *(a1 + 48);
  v11 = [v10 na_filter:{v13, 3221225472, __71__HMIHomePersonDataSourceInMemory_removeFaceCropsWithUUIDs_completion___block_invoke_4, &unk_278754108}];
  v12 = [*(a1 + 40) personToFaceCrops];
  [v12 setObject:? forKeyedSubscript:?];
}

void *__71__HMIHomePersonDataSourceInMemory_removeFaceCropsWithUUIDs_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 UUID];
  v4 = [v2 containsObject:?];

  return v4;
}

uint64_t __71__HMIHomePersonDataSourceInMemory_removeFaceCropsWithUUIDs_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 UUID];
  LODWORD(v2) = [v2 containsObject:?];

  return v2 ^ 1;
}

- (void)removePersonsWithUUIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  workQueue = [(HMIHomePersonDataSourceInMemory *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__HMIHomePersonDataSourceInMemory_removePersonsWithUUIDs_completion___block_invoke;
  block[3] = &unk_2787526C0;
  v12 = dsCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = dsCopy;
  dispatch_async(workQueue, block);
}

void __69__HMIHomePersonDataSourceInMemory_removePersonsWithUUIDs_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) existingPersonUUIDs];
  LOBYTE(v2) = [v2 isSubsetOfSet:?];

  if (v2)
  {
    v4 = *(a1 + 40);
    os_unfair_lock_lock_with_options();
    v5 = [*(a1 + 40) personToFaceCrops];
    v6 = [v5 allKeys];
    v9 = *(a1 + 32);
    [v6 na_each:?];

    os_unfair_lock_unlock(v4 + 2);
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v7 = *(a1 + 48);
    v8 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:? description:?];
    (*(v7 + 16))(v7, v8);
  }
}

void __69__HMIHomePersonDataSourceInMemory_removePersonsWithUUIDs_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v14 = v3;
  v5 = [v3 UUID];
  LODWORD(v4) = [v4 containsObject:?];

  if (v4)
  {
    v6 = *(a1 + 40);
    v7 = v6[4];
    v8 = [v6 personToFaceCrops];
    v9 = [v8 objectForKeyedSubscript:?];
    v10 = [v7 setByAddingObjectsFromSet:?];
    v11 = *(a1 + 40);
    v12 = *(v11 + 32);
    *(v11 + 32) = v10;

    v13 = [*(a1 + 40) personToFaceCrops];
    [v13 removeObjectForKey:?];
  }
}

- (void)addFaceprints:(id)faceprints completion:(id)completion
{
  completionCopy = completion;
  workQueue = [(HMIHomePersonDataSourceInMemory *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__HMIHomePersonDataSourceInMemory_addFaceprints_completion___block_invoke;
  block[3] = &unk_278754068;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(workQueue, block);
}

- (void)removeFaceprintsWithUUIDs:(id)ds completion:(id)completion
{
  completionCopy = completion;
  workQueue = [(HMIHomePersonDataSourceInMemory *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__HMIHomePersonDataSourceInMemory_removeFaceprintsWithUUIDs_completion___block_invoke;
  block[3] = &unk_278754068;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(workQueue, block);
}

- (void)associateFaceCropsWithUUIDs:(id)ds toPersonWithUUID:(id)d forSource:(int64_t)source completion:(id)completion
{
  dsCopy = ds;
  dCopy = d;
  completionCopy = completion;
  workQueue = [(HMIHomePersonDataSourceInMemory *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __101__HMIHomePersonDataSourceInMemory_associateFaceCropsWithUUIDs_toPersonWithUUID_forSource_completion___block_invoke;
  block[3] = &unk_278754220;
  v18 = dsCopy;
  selfCopy = self;
  v20 = dCopy;
  v21 = completionCopy;
  sourceCopy = source;
  v14 = dCopy;
  v15 = completionCopy;
  v16 = dsCopy;
  dispatch_async(workQueue, block);
}

void __101__HMIHomePersonDataSourceInMemory_associateFaceCropsWithUUIDs_toPersonWithUUID_forSource_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) existingFaceCropUUIDs];
  if ([v2 isSubsetOfSet:?])
  {
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) existingPersonFaceCropUUIDs];
    LOBYTE(v4) = [v4 isSubsetOfSet:?];

    if ((v4 & 1) == 0)
    {
      v23 = *(a1 + 56);
      v24 = MEMORY[0x277CCA9B8];
      goto LABEL_8;
    }
  }

  v6 = [*(a1 + 40) existingPersonUUIDs];
  v7 = [v6 containsObject:?];

  if (v7)
  {
    v8 = *(a1 + 40);
    os_unfair_lock_lock_with_options();
    v9 = MEMORY[0x277CBEB58];
    v10 = [*(a1 + 40) unassociatedFaceCrops];
    v32 = *(a1 + 32);
    v33 = *(a1 + 48);
    v11 = [v10 na_map:?];
    v12 = [v9 setWithSet:?];

    v13 = [*(a1 + 40) unassociatedFaceCrops];
    v31 = *(a1 + 32);
    v14 = [v13 na_filter:?];
    v15 = [v14 mutableCopy];
    v16 = *(a1 + 40);
    v17 = *(v16 + 24);
    *(v16 + 24) = v15;

    v18 = [*(a1 + 40) personToFaceCrops];
    v19 = [v18 allKeys];
    v29 = v12;
    *v25 = *(a1 + 32);
    v20 = v25[0];
    v30 = *(a1 + 48);
    [v19 na_each:?];

    v21 = [*(a1 + 40) personToFaceCrops];
    v22 = [v21 allKeys];
    v27 = *(a1 + 48);
    v28 = v29;
    [v22 na_each:?];

    os_unfair_lock_unlock(v8 + 2);
    (*(*(a1 + 56) + 16))();
    return;
  }

  v23 = *(a1 + 56);
  v24 = MEMORY[0x277CCA9B8];
LABEL_8:
  v26 = [v24 hmiPrivateErrorWithCode:? description:?];
  (*(v23 + 16))(v23, v26);
}

HMIPersonFaceCrop *__101__HMIHomePersonDataSourceInMemory_associateFaceCropsWithUUIDs_toPersonWithUUID_forSource_completion___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = [v3 UUID];
  LODWORD(v4) = [v4 containsObject:?];

  if (v4)
  {
    v6 = [HMIPersonFaceCrop alloc];
    v7 = [v3 UUID];
    v8 = [v3 dataRepresentation];
    v9 = [v3 dateCreated];
    [v3 faceBoundingBox];
    v10 = [HMIPersonFaceCrop initWithUUID:v6 dataRepresentation:"initWithUUID:dataRepresentation:dateCreated:faceBoundingBox:personUUID:source:" dateCreated:? faceBoundingBox:? personUUID:? source:?];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __101__HMIHomePersonDataSourceInMemory_associateFaceCropsWithUUIDs_toPersonWithUUID_forSource_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 UUID];
  LODWORD(v2) = [v2 containsObject:?];

  return v2 ^ 1;
}

void __101__HMIHomePersonDataSourceInMemory_associateFaceCropsWithUUIDs_toPersonWithUUID_forSource_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = a2;
  v6 = [v3 personToFaceCrops];
  v7 = [v6 objectForKeyedSubscript:?];
  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  v8 = [v7 na_map:?];
  [v4 unionSet:?];

  v9 = [*(a1 + 40) personToFaceCrops];
  v10 = [v9 objectForKeyedSubscript:?];
  v13 = MEMORY[0x277D85DD0];
  v14 = *(a1 + 48);
  v11 = [v10 na_filter:{v13, 3221225472, __101__HMIHomePersonDataSourceInMemory_associateFaceCropsWithUUIDs_toPersonWithUUID_forSource_completion___block_invoke_6, &unk_278754108}];
  v12 = [*(a1 + 40) personToFaceCrops];
  [v12 setObject:? forKeyedSubscript:?];
}

HMIPersonFaceCrop *__101__HMIHomePersonDataSourceInMemory_associateFaceCropsWithUUIDs_toPersonWithUUID_forSource_completion___block_invoke_5(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = [v3 UUID];
  LODWORD(v4) = [v4 containsObject:?];

  if (v4)
  {
    v6 = [HMIPersonFaceCrop alloc];
    v7 = [v3 UUID];
    v8 = [v3 dataRepresentation];
    v9 = [v3 dateCreated];
    [v3 faceBoundingBox];
    v10 = [HMIPersonFaceCrop initWithUUID:v6 dataRepresentation:"initWithUUID:dataRepresentation:dateCreated:faceBoundingBox:personUUID:source:" dateCreated:? faceBoundingBox:? personUUID:? source:?];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __101__HMIHomePersonDataSourceInMemory_associateFaceCropsWithUUIDs_toPersonWithUUID_forSource_completion___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 UUID];
  LODWORD(v2) = [v2 containsObject:?];

  return v2 ^ 1;
}

void __101__HMIHomePersonDataSourceInMemory_associateFaceCropsWithUUIDs_toPersonWithUUID_forSource_completion___block_invoke_7(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 UUID];
  v4 = [v3 hmf_isEqualToUUID:?];

  if (v4)
  {
    v5 = [*(a1 + 40) personToFaceCrops];
    v6 = [v5 objectForKeyedSubscript:?];
    v7 = [v6 setByAddingObjectsFromSet:?];
    v8 = [*(a1 + 40) personToFaceCrops];
    [v8 setObject:? forKeyedSubscript:?];
  }
}

@end