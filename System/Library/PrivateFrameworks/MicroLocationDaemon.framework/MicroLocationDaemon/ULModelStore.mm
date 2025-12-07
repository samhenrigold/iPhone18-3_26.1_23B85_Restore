@interface ULModelStore
+ (unsigned)maxEntriesInTable;
- (BOOL)deleteModelsForService:(uuid)service;
- (BOOL)deleteOrphanRecords;
- (BOOL)deleteUnneededModelsWithNumNonLslsModeltoKeep:(unsigned int)keep numLSLModelsToKeep:(unsigned int)toKeep;
- (BOOL)insertDataObjects:(const void *)objects forServiceUUID:(const void *)d atLoiUUID:(const void *)iD;
- (BOOL)updateHomeSlamModelForModelUUID:(const uuid *)d modelAsNSData:(id)data;
- (__n128)insertDataObjects:forServiceUUID:atLoiUUID:;
- (id)fetchModelManagedObjectWithUUID:(const uuid *)d withManagedObjectContext:(id)context;
- (id)fetchVMKModelFor:(id)for;
- (id)insertDataObjects:forServiceUUID:atLoiUUID:;
- (optional<ULModelDO>)fetchMostRecentMagicalMomentsModelAtLoiGroupId:(uuid)id;
- (optional<ULModelDO>)fetchMostRecentModelForServiceUuid:(uuid)uuid atLoiGroupId:;
- (optional<ULModelDO>)fetchMostRecentModelOfModelType:(optional<ULModelDO> *__return_ptr)retstr ForClient:(ULModelStore *)self atLoiGroupId:(uuid)id;
- (optional<ULModelDO>)fetchMostRecentModelOfModelType:(optional<ULModelDO> *__return_ptr)retstr ForService:(ULModelStore *)self atLoiGroupId:(uuid)id;
- (optional<ULModelDO>)fetchMostRecentModelOfModelType:(uuid)type atLoiGroupId:;
- (uint64_t)insertDataObjects:forServiceUUID:atLoiUUID:;
- (vector<ULModelDO,)fetchModelsAtLoiGroupId:(ULModelStore *)self andLimit:(SEL)limit;
- (vector<ULModelDO,)fetchMostRecentModels;
- (void)insertVMKModel:(id)model for:(id)for;
@end

@implementation ULModelStore

+ (unsigned)maxEntriesInTable
{
  v2 = +[ULDefaultsSingleton shared];
  defaultsDictionary = [v2 defaultsDictionary];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULModelTableMaxRows"];
  v5 = [defaultsDictionary objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntValue = [v5 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = [&unk_286A71A90 unsignedIntValue];
  }

  v7 = unsignedIntValue;

  return v7;
}

- (BOOL)insertDataObjects:(const void *)objects forServiceUUID:(const void *)d atLoiUUID:(const void *)iD
{
  v23 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  if (*objects != *(objects + 1))
  {
    v20 = 0;
    if (*(d + 16) == 1)
    {
      dbStore = [(ULStore *)self dbStore];
      v9 = (*(dbStore->var0 + 13))(dbStore);
      if ((*(d + 16) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      managedObjectContext = [(ULStore *)self managedObjectContext];
      v20 = [v9 fetchServiceManagedObjectWithUUID:d withManagedObjectContext:managedObjectContext];

      if (!v20)
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          [ULModelStore insertDataObjects:forServiceUUID:atLoiUUID:];
        }

        v11 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          if (*(d + 16))
          {
            operator new();
          }

          std::__throw_bad_optional_access[abi:ne200100]();
        }

        if (onceToken_MicroLocation_Default != -1)
        {
          [ULModelStore insertDataObjects:forServiceUUID:atLoiUUID:];
        }

        v12 = logObject_MicroLocation_Default;
        if (os_signpost_enabled(v12))
        {
          if (*(d + 16))
          {
            operator new();
          }

          std::__throw_bad_optional_access[abi:ne200100]();
        }
      }
    }

    v19 = 0;
    if (*(iD + 16) == 1)
    {
      dbStore2 = [(ULStore *)self dbStore];
      v14 = (*(dbStore2->var0 + 8))(dbStore2);
      if ((*(iD + 16) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      managedObjectContext2 = [(ULStore *)self managedObjectContext];
      v19 = [v14 fetchLoiManagedObjectWithUUID:iD withManagedObjectContext:managedObjectContext2];

      if (!v19)
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          [ULModelStore insertDataObjects:forServiceUUID:atLoiUUID:];
        }

        v16 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          if (*(iD + 16))
          {
            operator new();
          }

          std::__throw_bad_optional_access[abi:ne200100]();
        }

        if (onceToken_MicroLocation_Default != -1)
        {
          [ULModelStore insertDataObjects:forServiceUUID:atLoiUUID:];
        }

        v17 = logObject_MicroLocation_Default;
        if (os_signpost_enabled(v17))
        {
          if (*(iD + 16))
          {
            operator new();
          }

          std::__throw_bad_optional_access[abi:ne200100]();
        }
      }
    }

    v22 = 0;
    operator new();
  }

  return 1;
}

- (BOOL)deleteUnneededModelsWithNumNonLslsModeltoKeep:(unsigned int)keep numLSLModelsToKeep:(unsigned int)toKeep
{
  v30 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    [ULModelStore insertDataObjects:forServiceUUID:atLoiUUID:];
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67240448;
    toKeepCopy = toKeep;
    v28 = 1026;
    keepCopy = keep;
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEBUG, "Keeping %{public}d models for LSL models, %{public}d models per other types", buf, 0xEu);
  }

  context = objc_autoreleasePoolPush();
  v7 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"generationTimestamp" ascending:1];
  v8 = 0;
  v9 = 1;
  do
  {
    if (v8 == 2)
    {
      keepCopy2 = toKeep;
    }

    else
    {
      keepCopy2 = keep;
    }

    array = [MEMORY[0x277CBEB18] array];
    v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K=%d", @"modelType", v8];
    [array addObject:v12];

    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v25 = v7;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
    v16 = [(ULStore *)self countManagedObjectsWithEntityName:v14 byAndPredicates:array sortDescriptors:v15 andLimit:0];

    if ([v16 unsignedIntValue] > keepCopy2)
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v24 = v7;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
      v20 = -[ULStore batchDeleteObjectsWithEntityName:byAndPredicates:sortDescriptors:andLimit:](self, "batchDeleteObjectsWithEntityName:byAndPredicates:sortDescriptors:andLimit:", v18, array, v19, [v16 unsignedIntValue] - keepCopy2);

      v9 &= v20;
    }

    v8 = (v8 + 1);
  }

  while (v8 != 6);

  objc_autoreleasePoolPop(context);
  return v9 & 1;
}

- (BOOL)deleteOrphanRecords
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = NIL", @"loi"];
  [array addObject:v4];

  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  LOBYTE(self) = [(ULStore *)self batchDeleteObjectsWithEntityName:v6 byAndPredicates:array sortDescriptors:0 andLimit:0];

  return self;
}

- (BOOL)deleteModelsForService:(uuid)service
{
  v12 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  array = [MEMORY[0x277CBEB18] array];
  v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:&serviceCopy];
  uUIDString = [v5 UUIDString];

  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K=%@", @"service", @"serviceUUID", uUIDString];
  [array addObject:v7];

  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  LOBYTE(self) = [(ULStore *)self batchDeleteObjectsWithEntityName:v9 byAndPredicates:array sortDescriptors:0 andLimit:0];

  return self;
}

- (optional<ULModelDO>)fetchMostRecentModelOfModelType:(optional<ULModelDO> *__return_ptr)retstr ForClient:(ULModelStore *)self atLoiGroupId:(uuid)id
{
  v5 = v4;
  v6 = v3;
  v7 = *&id.data[8];
  v29[1] = *MEMORY[0x277D85DE8];
  v26 = 0uLL;
  v27 = 0;
  std::vector<ULModelDO>::reserve(&v26, 1uLL);
  v10 = objc_autoreleasePoolPush();
  array = [MEMORY[0x277CBEB18] array];
  v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K=%d", @"modelType", v7];
  [array addObject:v12];

  if (v7)
  {
    if (*(v6 + 24) != 1)
    {
      goto LABEL_9;
    }

    v13 = MEMORY[0x277CCAC30];
    if (*(v6 + 23) >= 0)
    {
      v14 = v6;
    }

    else
    {
      v14 = *v6;
    }

    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:v14];
    v16 = [v13 predicateWithFormat:@"%K.%K=%@", @"service", @"clientId", v15];
    [array addObject:v16];
  }

  else
  {
    v15 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K=NIL", @"service"];
    [array addObject:v15];
  }

LABEL_9:
  if (*(v5 + 16) == 1)
  {
    v17 = objc_alloc(MEMORY[0x277CCAD78]);
    if ((*(v5 + 16) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v18 = [v17 initWithUUIDBytes:v5];
    uUIDString = [v18 UUIDString];

    v20 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K=%@", @"loi", @"loiGroupId", uUIDString];
    [array addObject:v20];
  }

  v21 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"generationTimestamp" ascending:0];
  v29[0] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
  objc_msgSend__fetchModelsByAndPredicates_sortDescriptors_andLimit_(self);
  std::vector<ULModelDO>::__vdeallocate(&v26);
  v26 = v24;
  v27 = v25;
  v28 = &v24;
  v25 = 0;
  v24 = 0uLL;
  std::vector<ULModelDO>::__destroy_vector::operator()[abi:ne200100](&v28);

  objc_autoreleasePoolPop(v10);
  if (v26 == *(&v26 + 1))
  {
    retstr->var0.var0 = 0;
    *(&retstr[1].var0.var4 + 96) = 0;
  }

  else
  {
    std::__optional_destruct_base<ULModelDO,false>::__optional_destruct_base[abi:ne200100]<ULModelDO>(retstr, v26);
  }

  *&v24 = &v26;
  std::vector<ULModelDO>::__destroy_vector::operator()[abi:ne200100](&v24);
  return result;
}

- (optional<ULModelDO>)fetchMostRecentModelOfModelType:(optional<ULModelDO> *__return_ptr)retstr ForService:(ULModelStore *)self atLoiGroupId:(uuid)id
{
  v5 = v4;
  v6 = v3;
  v7 = *&id.data[8];
  v29[1] = *MEMORY[0x277D85DE8];
  v26 = 0uLL;
  v27 = 0;
  std::vector<ULModelDO>::reserve(&v26, 1uLL);
  v10 = objc_autoreleasePoolPush();
  array = [MEMORY[0x277CBEB18] array];
  v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K=%d", @"modelType", v7];
  [array addObject:v12];

  if (*(v6 + 16) == 1)
  {
    v13 = objc_alloc(MEMORY[0x277CCAD78]);
    if ((*(v6 + 16) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v14 = [v13 initWithUUIDBytes:v6];
    uUIDString = [v14 UUIDString];

    v16 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K=%@", @"service", @"serviceUUID", uUIDString];
    [array addObject:v16];
  }

  if (*(v5 + 16) == 1)
  {
    v17 = objc_alloc(MEMORY[0x277CCAD78]);
    if ((*(v5 + 16) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v18 = [v17 initWithUUIDBytes:v5];
    uUIDString2 = [v18 UUIDString];

    v20 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K=%@", @"loi", @"loiGroupId", uUIDString2];
    [array addObject:v20];
  }

  v21 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"generationTimestamp" ascending:0];
  v29[0] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
  objc_msgSend__fetchModelsByAndPredicates_sortDescriptors_andLimit_(self);
  std::vector<ULModelDO>::__vdeallocate(&v26);
  v26 = v24;
  v27 = v25;
  v28 = &v24;
  v25 = 0;
  v24 = 0uLL;
  std::vector<ULModelDO>::__destroy_vector::operator()[abi:ne200100](&v28);

  objc_autoreleasePoolPop(v10);
  if (v26 == *(&v26 + 1))
  {
    retstr->var0.var0 = 0;
    *(&retstr[1].var0.var4 + 96) = 0;
  }

  else
  {
    std::__optional_destruct_base<ULModelDO,false>::__optional_destruct_base[abi:ne200100]<ULModelDO>(retstr, v26);
  }

  *&v24 = &v26;
  std::vector<ULModelDO>::__destroy_vector::operator()[abi:ne200100](&v24);
  return result;
}

- (vector<ULModelDO,)fetchModelsAtLoiGroupId:(ULModelStore *)self andLimit:(SEL)limit
{
  v19 = *MEMORY[0x277D85DE8];
  v18 = a4;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  v7 = objc_autoreleasePoolPush();
  array = [MEMORY[0x277CBEB18] array];
  v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:&v18];
  uUIDString = [v9 UUIDString];

  v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K=%@", @"loi", @"loiGroupId", uUIDString];
  [array addObject:v11];

  v12 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"generationTimestamp" ascending:0];
  v17 = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
  objc_msgSend__fetchModelsByAndPredicates_sortDescriptors_andLimit_(self);
  std::vector<ULModelDO>::__vdeallocate(retstr);
  *retstr = v15;
  memset(&v15, 0, sizeof(v15));
  v16 = &v15;
  std::vector<ULModelDO>::__destroy_vector::operator()[abi:ne200100](&v16);

  objc_autoreleasePoolPop(v7);
  return result;
}

- (optional<ULModelDO>)fetchMostRecentModelOfModelType:(uuid)type atLoiGroupId:
{
  v8 = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  v7[16] = 0;
  v5 = *v3;
  v6 = *(v3 + 16);
  return objc_msgSend_fetchMostRecentModelOfModelType_ForService_atLoiGroupId_(self, *type.data, *&type.data[8], v7, &v5);
}

- (optional<ULModelDO>)fetchMostRecentMagicalMomentsModelAtLoiGroupId:(uuid)id
{
  v11 = *MEMORY[0x277D85DE8];
  LOBYTE(__p) = 0;
  v7 = 0;
  v8 = *&id.data[8];
  v9 = v3;
  v10 = 1;
  result = objc_msgSend_fetchMostRecentModelOfModelType_ForClient_atLoiGroupId_(self, *id.data, 0, &__p, &v8);
  if (v7 == 1 && v6 < 0)
  {
    operator delete(__p);
  }

  return result;
}

- (optional<ULModelDO>)fetchMostRecentModelForServiceUuid:(uuid)uuid atLoiGroupId:
{
  v29 = *MEMORY[0x277D85DE8];
  v27 = *&uuid.data[8];
  v28 = v3;
  v25 = v4;
  v26 = v5;
  v21 = 0uLL;
  v22 = 0;
  std::vector<ULModelDO>::reserve(&v21, 1uLL);
  v8 = objc_autoreleasePoolPush();
  array = [MEMORY[0x277CBEB18] array];
  v10 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:&v27];
  uUIDString = [v10 UUIDString];

  v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K=%@", @"service", @"serviceUUID", uUIDString];
  [array addObject:v12];

  v13 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:&v25];
  uUIDString2 = [v13 UUIDString];

  v15 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K=%@", @"loi", @"loiGroupId", uUIDString2];
  [array addObject:v15];

  v16 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"generationTimestamp" ascending:0];
  v24 = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
  objc_msgSend__fetchModelsByAndPredicates_sortDescriptors_andLimit_(self);
  std::vector<ULModelDO>::__vdeallocate(&v21);
  v21 = v19;
  v22 = v20;
  v23 = &v19;
  v20 = 0;
  v19 = 0uLL;
  std::vector<ULModelDO>::__destroy_vector::operator()[abi:ne200100](&v23);

  objc_autoreleasePoolPop(v8);
  if (v21 == *(&v21 + 1))
  {
    retstr->var0.var0 = 0;
    *(&retstr[1].var0.var4 + 96) = 0;
  }

  else
  {
    std::__optional_destruct_base<ULModelDO,false>::__optional_destruct_base[abi:ne200100]<ULModelDO>(retstr, v21);
  }

  *&v19 = &v21;
  std::vector<ULModelDO>::__destroy_vector::operator()[abi:ne200100](&v19);
  return result;
}

- (vector<ULModelDO,)fetchMostRecentModels
{
  v5 = 0;
  v16 = *MEMORY[0x277D85DE8];
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  do
  {
    v8 = 0;
    v9 = 0;
    v7[0] = 0;
    result = objc_msgSend_fetchMostRecentModelOfModelType_ForService_atLoiGroupId_(self, a3, v5, &v8 + 1, v7);
    if (v15 == 1)
    {
      result = std::vector<ULModelDO>::push_back[abi:ne200100](retstr, &v10);
      if (v15)
      {
        if (v14 == 1 && v13 < 0)
        {
          operator delete(v12);
        }

        result = std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v11);
      }
    }

    v5 = (v5 + 1);
  }

  while (v5 != 6);
  return result;
}

- (id)fetchModelManagedObjectWithUUID:(const uuid *)d withManagedObjectContext:(id)context
{
  contextCopy = context;
  v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:d];
  uUIDString = [v7 UUIDString];

  array = [MEMORY[0x277CBEB18] array];
  v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %@", @"modelUUID", uUIDString];
  [array addObject:v10];

  v11 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"generationTimestamp" ascending:0];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__17;
  v26 = __Block_byref_object_dispose__17;
  v27 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __73__ULModelStore_fetchModelManagedObjectWithUUID_withManagedObjectContext___block_invoke;
  v17[3] = &unk_2798D4840;
  v17[4] = self;
  v12 = array;
  v18 = v12;
  v19 = v11;
  v13 = contextCopy;
  v20 = v13;
  v21 = &v22;
  v14 = v11;
  [v13 performBlockAndWait:v17];
  v15 = v23[5];

  _Block_object_dispose(&v22, 8);

  return v15;
}

void __73__ULModelStore_fetchModelManagedObjectWithUUID_withManagedObjectContext___block_invoke(void *a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = a1[5];
  v11[0] = a1[6];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v7 = [v2 fetchManagedObjectsWithEntityName:v4 byAndPredicates:v5 sortDescriptors:v6 andLimit:1 returnObjectsAsFaults:1 withManagedObjectContext:a1[7]];

  v8 = [v7 firstObject];
  v9 = *(a1[8] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

- (BOOL)updateHomeSlamModelForModelUUID:(const uuid *)d modelAsNSData:(id)data
{
  v17[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if (dataCopy)
  {
    v7 = MEMORY[0x277CCAC30];
    v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:d];
    uUIDString = [v8 UUIDString];
    v10 = [v7 predicateWithFormat:@"%K = %@ AND %K = %@", @"modelUUID", uUIDString, @"modelType", &unk_286A71A78];

    v16 = @"model";
    v17[0] = dataCopy;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [(ULStore *)self batchUpdateObjectsWithEntityName:v13 predicate:v10 propertiesToUpdate:v11];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (__n128)insertDataObjects:forServiceUUID:atLoiUUID:
{
  *a2 = &unk_286A56800;
  result = *(self + 8);
  *(a2 + 24) = *(self + 24);
  *(a2 + 8) = result;
  return result;
}

- (id)insertDataObjects:forServiceUUID:atLoiUUID:
{
  v3 = **(self + 8);
  v4 = **(self + 16);
  managedObjectContext = [**(self + 24) managedObjectContext];
  v6 = [ULModelMO createFromDO:a2 withServiceMO:v3 loiMO:v4 inManagedObjectContext:managedObjectContext];

  return v6;
}

- (uint64_t)insertDataObjects:forServiceUUID:atLoiUUID:
{
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

- (id)fetchVMKModelFor:(id)for
{
  v28 = *MEMORY[0x277D85DE8];
  forCopy = for;
  CLMicroLocationProtobufHelper::boostUuidFromNSUUID(&v16, forCopy);
  if ((v17 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  *buf = v16;
  v19 = 1;
  objc_msgSend_fetchMostRecentModelOfModelType_atLoiGroupId_(self);
  if ((v27 & 1) == 0)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULModelStore(ULVisualMappingKitManagerDatabaseService) fetchVMKModelFor:];
    }

    v6 = logObject_MicroLocation_Default;
    if (!os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    *buf = 138412290;
    *&buf[4] = forCopy;
    v7 = "There is not vmk model for locationID: %@, returning an empty model";
    v8 = v6;
    v9 = OS_LOG_TYPE_DEFAULT;
LABEL_18:
    _os_log_impl(&dword_258FE9000, v8, v9, v7, buf, 0xCu);
LABEL_19:
    data = [MEMORY[0x277CBEA90] data];
    goto LABEL_20;
  }

  if (v23 != 2)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULModelStore(ULVisualMappingKitManagerDatabaseService) fetchVMKModelFor:];
    }

    v10 = logObject_MicroLocation_Default;
    if (!os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *buf = 138412290;
    *&buf[4] = forCopy;
    v7 = "There is no valid vmk model for locationID: %@, this is a serious error, returning empty model";
    v8 = v10;
    v9 = OS_LOG_TYPE_ERROR;
    goto LABEL_18;
  }

  if ((v22 & 1) == 0)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULModelStore(ULVisualMappingKitManagerDatabaseService) fetchVMKModelFor:];
    }

    v5 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = forCopy;
      _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_ERROR, "There is an empty vmk model for locationID: %@", buf, 0xCu);
    }

    goto LABEL_19;
  }

  v14 = v21;
  v15 = *(v21 + 23);
  if (v15 < 0)
  {
    v14 = *v21;
    v15 = v21[1];
  }

  data = [MEMORY[0x277CBEA90] dataWithBytes:v14 length:v15];
LABEL_20:
  v12 = data;
  if (v27 == 1)
  {
    if (v26 == 1 && v25 < 0)
    {
      operator delete(v24);
    }

    std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v20);
  }

  return v12;
}

- (void)insertVMKModel:(id)model for:(id)for
{
  v40 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  forCopy = for;
  if ([modelCopy length])
  {
    CLMicroLocationProto::VMKModel::VMKModel(&v22);
    v8 = modelCopy;
    bytes = [modelCopy bytes];
    v10 = [modelCopy length];
    v24 |= 1u;
    if (v23 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    std::string::__assign_external(v23, bytes, v10);
    CLMicroLocationProtobufHelper::boostUuidFromNSUUID(&buf, forCopy);
    if ((v35 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v11 = *buf.var0.data;
    v12 = *&buf.var0.data[8];
    LODWORD(v25[0]) = 0;
    boost::uuids::detail::random_provider_base::random_provider_base(v25);
    v13 = boost::uuids::random_generator_pure::operator()(v25);
    v15 = v14;
    v16 = cl::chrono::CFAbsoluteTimeClock::now();
    ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>::ULProtoMessageWrapper(v21, &v22);
    ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>::ULProtoMessageWrapper(&v27, v21);
    v28[44] = 2;
    LOBYTE(__p) = 0;
    v20 = 0;
    LOBYTE(v32) = 0;
    v33 = 0;
    ULModelDO::ULModelDO(&buf, v13, v15, &v27, &__p, &v32, v11, v12, v16);
    if (v20 == 1 && v19 < 0)
    {
      operator delete(__p);
    }

    std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v27);
    CLMicroLocationProto::VMKModel::~VMKModel(v21);
    boost::uuids::detail::random_provider_base::destroy(v25);
    ULModelDO::ULModelDO(&v27, &buf);
    memset(v21, 0, sizeof(v21));
    std::vector<ULModelDO>::__init_with_size[abi:ne200100]<ULModelDO const*,ULModelDO const*>(v21, &v27, &v32, 1uLL);
    LOBYTE(v32) = 0;
    v33 = 0;
    v25[0] = v11;
    v25[1] = v12;
    v26 = 1;
    [(ULModelStore *)self insertDataObjects:v21 forServiceUUID:&v32 atLoiUUID:v25];
    *&v32 = v21;
    std::vector<ULModelDO>::__destroy_vector::operator()[abi:ne200100](&v32);
    if (v31 == 1 && v30 < 0)
    {
      operator delete(v29);
    }

    std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v28);
    if (v39 == 1 && v38 < 0)
    {
      operator delete(v37);
    }

    std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v36);
    CLMicroLocationProto::VMKModel::~VMKModel(&v22);
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULModelStore(ULVisualMappingKitManagerDatabaseService) insertVMKModel:for:];
    }

    v17 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *buf.var0.data = 0;
      _os_log_impl(&dword_258FE9000, v17, OS_LOG_TYPE_ERROR, "Trying to insert an empty vmk model, doing nothing", buf.var0.data, 2u);
    }
  }
}

@end