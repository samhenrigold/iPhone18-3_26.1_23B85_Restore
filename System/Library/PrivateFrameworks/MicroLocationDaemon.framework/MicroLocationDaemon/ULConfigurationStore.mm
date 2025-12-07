@interface ULConfigurationStore
+ (unsigned)maxEntriesInTable;
- (BOOL)batchTransferRecordsUsingBatchSize:(unint64_t)size andLimit:(unint64_t)limit intoTargetStore:(id)store;
- (BOOL)insertDataObjects:(const void *)objects;
- (id)insertDataObjects:;
- (optional<ULConfigurationDO>)fetchMostRecentAnchorAppearancesAtLoi:(int)loi;
- (optional<ULConfigurationDO>)fetchMostRecentConfiguration:(int)configuration atLoiGroupId:(Configuration *)id beforeTime:;
- (optional<ULConfigurationDO>)fetchMostRecentConfiguration:(optional<ULConfigurationDO> *__return_ptr)retstr atLoiType:(ULConfigurationStore *)self loiGroupId:(int)id beforeTime:(Configuration *)time;
- (optional<ULConfigurationDO>)fetchMostRecentWifiChannelHistogramAtLoi:(int)loi;
- (uint64_t)insertDataObjects:;
- (vector<ULConfigurationDO,)fetchAllConfigurationsOfType:(ULConfigurationStore *)self loiGroupId:(SEL)id withLimit:(optional<const CLMicroLocationProto:(const uuid *)limit :(unsigned int)a6 ConfigurationType>)a4;
- (vector<ULConfigurationDO,)fetchLatestConfigurationPerTypeAtLoi:(ULConfigurationStore *)self withLimit:(SEL)limit;
@end

@implementation ULConfigurationStore

+ (unsigned)maxEntriesInTable
{
  v2 = +[ULDefaultsSingleton shared];
  defaultsDictionary = [v2 defaultsDictionary];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULConfigurationTableMaxRows"];
  v5 = [defaultsDictionary objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntValue = [v5 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = [&unk_286A717D8 unsignedIntValue];
  }

  v7 = unsignedIntValue;

  return v7;
}

- (BOOL)insertDataObjects:(const void *)objects
{
  v6[4] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v6[0] = &unk_286A55B78;
  v6[1] = &selfCopy;
  v6[3] = v6;
  inserted = ULDBUtils::insertDataObjects<ULConfigurationDO,ULConfigurationMO_deprecated>(self, objects, v6);
  std::__function::__value_func<ULConfigurationMO_deprecated * ()(ULConfigurationDO const&)>::~__value_func[abi:ne200100](v6);
  return inserted;
}

- (optional<ULConfigurationDO>)fetchMostRecentConfiguration:(optional<ULConfigurationDO> *__return_ptr)retstr atLoiType:(ULConfigurationStore *)self loiGroupId:(int)id beforeTime:(Configuration *)time
{
  v8 = v7;
  v9 = v6;
  v10 = v5;
  v11 = v4;
  v44[1] = *MEMORY[0x277D85DE8];
  v41 = 0uLL;
  v42 = 0;
  context = objc_autoreleasePoolPush();
  array = [MEMORY[0x277CBEB18] array];
  v16 = MEMORY[0x277CCAC30];
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:LODWORD(time->var0)];
  v18 = [v16 predicateWithFormat:@"%K=%@", @"configurationType", v17];
  [array addObject:v18];

  if (*(v11 + 24) == 1)
  {
    v19 = MEMORY[0x277CCAC30];
    if (*(v11 + 23) >= 0)
    {
      v20 = v11;
    }

    else
    {
      v20 = *v11;
    }

    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:v20];
    v22 = [v19 predicateWithFormat:@"%K=%@", @"loiType", v21];
    [array addObject:v22];
  }

  if (v8)
  {
    v23 = MEMORY[0x277CCAC30];
    v24 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
    v25 = [v23 predicateWithFormat:@"%K<=%@", @"generationTimestamp", v24];
    [array addObject:v25];
  }

  if (*(v10 + 16) == 1)
  {
    dbStore = [(ULStore *)self dbStore];
    v27 = (*(dbStore->var0 + 8))(dbStore);
    v28 = v27;
    if ((*(v10 + 16) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v29 = [v27 getLoiIdsInLoiGroupId:v10];

    v30 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"loiId", v29];
    [array addObject:v30];
  }

  v31 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"generationTimestamp" ascending:0];
  v44[0] = v31;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:1];
  objc_msgSend__fetchConfigurationsByAndPredicates_sortDescriptors_andLimit_(self);
  std::vector<ULConfigurationDO>::__vdeallocate(&v41);
  v41 = v39;
  v42 = v40;
  v43 = &v39;
  v40 = 0;
  v39 = 0uLL;
  std::vector<ULConfigurationDO>::__destroy_vector::operator()[abi:ne200100](&v43);

  objc_autoreleasePoolPop(context);
  v33 = v41;
  if (v41 == *(&v41 + 1))
  {
    v36 = 0;
    retstr->var0.var0 = 0;
  }

  else
  {
    retstr->var0.var2.var0.var1.var0 = *v41;
    v34 = *(v33 + 8);
    retstr[1].var0.var2.var0.var1.var0 = *(v33 + 24);
    *&retstr->var0.var2.var0.var1.var1 = v34;
    *(v33 + 16) = 0;
    *(v33 + 24) = 0;
    *(v33 + 8) = 0;
    v35 = *(v33 + 32);
    *&retstr[2].var0.var0 = *(v33 + 48);
    *&retstr[1].var0.var2.var0.var1.var1 = v35;
    CLMicroLocationProto::Configuration::Configuration(&retstr[2].var0.var2.var0.var1.var1, (v33 + 56));
    v36 = 1;
  }

  retstr[4].var0.var2.var0.var0.var0[16] = v36;
  *&v39 = &v41;
  std::vector<ULConfigurationDO>::__destroy_vector::operator()[abi:ne200100](&v39);
  return result;
}

- (optional<ULConfigurationDO>)fetchMostRecentConfiguration:(int)configuration atLoiGroupId:(Configuration *)id beforeTime:
{
  v12 = *MEMORY[0x277D85DE8];
  LOBYTE(__p) = 0;
  v9 = 0;
  v10 = *v4;
  v11 = 1;
  result = objc_msgSend_fetchMostRecentConfiguration_atLoiType_loiGroupId_beforeTime_(self, *&configuration, id, &__p, &v10, v5, 1);
  if (v9 == 1 && v8 < 0)
  {
    operator delete(__p);
  }

  return result;
}

- (optional<ULConfigurationDO>)fetchMostRecentAnchorAppearancesAtLoi:(int)loi
{
  v11 = *MEMORY[0x277D85DE8];
  v8 = 1;
  LOBYTE(__p) = 0;
  v7 = 0;
  v9 = *&a4->var0;
  v10 = 1;
  result = objc_msgSend_fetchMostRecentConfiguration_atLoiType_loiGroupId_beforeTime_(self, *&loi, &v8, &__p, &v9, 0, 0);
  if (v7 == 1 && v6 < 0)
  {
    operator delete(__p);
  }

  return result;
}

- (optional<ULConfigurationDO>)fetchMostRecentWifiChannelHistogramAtLoi:(int)loi
{
  v11 = *MEMORY[0x277D85DE8];
  v8 = 0;
  LOBYTE(__p) = 0;
  v7 = 0;
  v9 = *&a4->var0;
  v10 = 1;
  result = objc_msgSend_fetchMostRecentConfiguration_atLoiType_loiGroupId_beforeTime_(self, *&loi, &v8, &__p, &v9, 0, 0);
  if (v7 == 1 && v6 < 0)
  {
    operator delete(__p);
  }

  return result;
}

- (BOOL)batchTransferRecordsUsingBatchSize:(unint64_t)size andLimit:(unint64_t)limit intoTargetStore:(id)store
{
  storeCopy = store;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v9 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"generationTimestamp" ascending:0];
  managedObjectContext = [(ULStore *)self managedObjectContext];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __84__ULConfigurationStore_batchTransferRecordsUsingBatchSize_andLimit_intoTargetStore___block_invoke;
  v14[3] = &unk_2798D4728;
  v17 = &v20;
  v14[4] = self;
  v11 = v9;
  v15 = v11;
  sizeCopy = size;
  limitCopy = limit;
  v12 = storeCopy;
  v16 = v12;
  [managedObjectContext performBlockAndWait:v14];

  LOBYTE(storeCopy) = *(v21 + 24);
  _Block_object_dispose(&v20, 8);

  return storeCopy;
}

void __84__ULConfigurationStore_batchTransferRecordsUsingBatchSize_andLimit_intoTargetStore___block_invoke(void *a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v6[0] = a1[5];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  *(*(a1[7] + 8) + 24) = [v2 batchTransferManagedObjectsWithEntityName:v4 byAndPredicates:0 sortDescriptors:v5 batchSize:a1[8] limit:a1[9] intoTargetStore:a1[6]];
}

- (vector<ULConfigurationDO,)fetchLatestConfigurationPerTypeAtLoi:(ULConfigurationStore *)self withLimit:(SEL)limit
{
  v41[1] = *MEMORY[0x277D85DE8];
  v33 = 0;
  v34 = &v33;
  v35 = 0x4812000000;
  v36 = __Block_byref_object_copy__2;
  v37 = __Block_byref_object_dispose__2;
  v38 = &unk_25929B3B7;
  memset(v39, 0, sizeof(v39));
  context = objc_autoreleasePoolPush();
  array = [MEMORY[0x277CBEB18] array];
  v10 = objc_alloc_init(MEMORY[0x277CBE410]);
  [v10 setName:@"maxGenTimestamp"];
  v11 = MEMORY[0x277CCA9C0];
  v12 = [MEMORY[0x277CCA9C0] expressionForKeyPath:@"generationTimestamp"];
  v41[0] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:1];
  v14 = [v11 expressionForFunction:@"max:" arguments:v13];
  [v10 setExpression:v14];

  [v10 setExpressionResultType:500];
  dbStore = [(ULStore *)self dbStore];
  v16 = (*(dbStore->var0 + 8))(dbStore);
  v17 = [v16 getLoiIdsInLoiGroupId:a4];

  v18 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"loiId", v17];
  [array addObject:v18];

  v19 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"generationTimestamp" ascending:0];
  managedObjectContext = [(ULStore *)self managedObjectContext];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __71__ULConfigurationStore_fetchLatestConfigurationPerTypeAtLoi_withLimit___block_invoke;
  v27[3] = &unk_2798D4750;
  v27[4] = self;
  v21 = v10;
  v28 = v21;
  v22 = array;
  v29 = v22;
  v23 = v19;
  v32 = a5;
  v30 = v23;
  v31 = &v33;
  [managedObjectContext performBlockAndWait:v27];

  objc_autoreleasePoolPop(context);
  v24 = v34;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  std::vector<ULConfigurationDO>::__init_with_size[abi:ne200100]<ULConfigurationDO*,ULConfigurationDO*>(retstr, v24[6], v24[7], 0x6DB6DB6DB6DB6DB7 * ((v24[7] - v24[6]) >> 4));
  _Block_object_dispose(&v33, 8);
  v40 = v39;
  std::vector<ULConfigurationDO>::__destroy_vector::operator()[abi:ne200100](&v40);
  return result;
}

void __71__ULConfigurationStore_fetchLatestConfigurationPerTypeAtLoi_withLimit___block_invoke(uint64_t a1)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = *(a1 + 40);
  v18[0] = @"configurationType";
  v18[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v17 = @"configurationType";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
  v8 = *(a1 + 48);
  v16 = *(a1 + 56);
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
  v10 = [v2 fetchManagedObjectsForEntityName:v4 propertiesToFetch:v6 propertiesToGroupBy:v7 byAndPredicates:v8 sortDescriptors:v9 andLimit:*(a1 + 72)];

  ULDBUtils::convertManagedObjectsToDataObjects<ULConfigurationDO,ULConfigurationMO_deprecated>(v10, &v13);
  v11 = *(*(a1 + 64) + 8);
  std::vector<ULConfigurationDO>::__vdeallocate((v11 + 48));
  *(v11 + 48) = v13;
  *(v11 + 64) = v14;
  v14 = 0;
  v13 = 0uLL;
  v15 = &v13;
  std::vector<ULConfigurationDO>::__destroy_vector::operator()[abi:ne200100](&v15);
  v12 = [*(a1 + 32) managedObjectContext];
  [v12 reset];
}

- (vector<ULConfigurationDO,)fetchAllConfigurationsOfType:(ULConfigurationStore *)self loiGroupId:(SEL)id withLimit:(optional<const CLMicroLocationProto:(const uuid *)limit :(unsigned int)a6 ConfigurationType>)a4
{
  v25[1] = *MEMORY[0x277D85DE8];
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  v10 = objc_autoreleasePoolPush();
  array = [MEMORY[0x277CBEB18] array];
  if ((*&a4 & 0x100000000) != 0)
  {
    v12 = MEMORY[0x277CCAC30];
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a4];
    v14 = [v12 predicateWithFormat:@"%K=%@", @"configurationType", v13];
    [array addObject:v14];
  }

  dbStore = [(ULStore *)self dbStore];
  v16 = (*(dbStore->var0 + 8))(dbStore);
  v17 = [v16 getLoiIdsInLoiGroupId:limit];

  v18 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"loiId", v17];
  [array addObject:v18];

  v19 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"generationTimestamp" ascending:0];
  v25[0] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  objc_msgSend__fetchConfigurationsByAndPredicates_sortDescriptors_andLimit_(self);
  std::vector<ULConfigurationDO>::__vdeallocate(retstr);
  *&retstr->var0 = v22;
  retstr->var2 = v23;
  v23 = 0;
  v22 = 0uLL;
  v24 = &v22;
  std::vector<ULConfigurationDO>::__destroy_vector::operator()[abi:ne200100](&v24);

  objc_autoreleasePoolPop(v10);
  return result;
}

- (uint64_t)insertDataObjects:
{
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

- (id)insertDataObjects:
{
  managedObjectContext = [**(self + 8) managedObjectContext];
  v4 = [ULConfigurationMO_deprecated createFromDO:a2 inManagedObjectContext:managedObjectContext];

  return v4;
}

@end