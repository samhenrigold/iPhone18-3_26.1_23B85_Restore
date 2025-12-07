@interface ULLabelStore
+ (unsigned)maxEntriesInTable;
- (BOOL)deleteOrphanRecords;
- (BOOL)deleteSimilarityListLabelsOlderThan:(double)than orNewerThan:(double)newerThan;
- (BOOL)insertDataObjects:(const void *)objects atLoiUUID:(const uuid *)d;
- (BOOL)insertDataObjects:(const void *)objects forScanningEventUUID:(const uuid *)d andServiceUUID:(const uuid *)iD;
- (__n128)insertDataObjects:atLoiUUID:;
- (__n128)insertDataObjects:forScanningEventUUID:andServiceUUID:;
- (id)insertDataObjects:atLoiUUID:;
- (id)insertDataObjects:forScanningEventUUID:andServiceUUID:;
- (uint64_t)insertDataObjects:atLoiUUID:;
- (uint64_t)insertDataObjects:forScanningEventUUID:andServiceUUID:;
- (vector<ULLabelDO,)fetchAllRecordsWithLimit:(ULLabelStore *)self;
- (vector<ULLabelDOAndObjectID,)fetchAllLabelsAndObjectIDsASCWithLOIGroupUUID:(ULLabelStore *)self;
- (vector<ULLabelDOAndObjectID,)fetchLabelsWithLOIGroupUUID:(ULLabelStore *)self andContextLayers:(SEL)layers limit:(const uuid *)limit ascending:(const void *)ascending;
@end

@implementation ULLabelStore

+ (unsigned)maxEntriesInTable
{
  v2 = +[ULDefaultsSingleton shared];
  defaultsDictionary = [v2 defaultsDictionary];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULRecordingLabelsTableMaxRows"];
  v5 = [defaultsDictionary objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntValue = [v5 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = [&unk_286A719E8 unsignedIntValue];
  }

  v7 = unsignedIntValue;

  return v7;
}

- (BOOL)insertDataObjects:(const void *)objects forScanningEventUUID:(const uuid *)d andServiceUUID:(const uuid *)iD
{
  if (*objects == *(objects + 1))
  {
    return 1;
  }

  dbStore = [(ULStore *)self dbStore];
  v9 = (*(dbStore->var0 + 18))(dbStore);
  managedObjectContext = [(ULStore *)self managedObjectContext];
  v21 = [v9 fetchScanningEventManagedObjectWithUUID:d withManagedObjectContext:managedObjectContext];

  if (v21)
  {
    dbStore2 = [(ULStore *)self dbStore];
    v12 = (*(dbStore2->var0 + 13))(dbStore2);
    managedObjectContext2 = [(ULStore *)self managedObjectContext];
    v20 = [v12 fetchServiceManagedObjectWithUUID:iD withManagedObjectContext:managedObjectContext2];

    if (v20)
    {
      operator new();
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      [ULLabelStore insertDataObjects:forScanningEventUUID:andServiceUUID:];
    }

    v17 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      operator new();
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      [ULLabelStore insertDataObjects:forScanningEventUUID:andServiceUUID:];
    }

    v18 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v18))
    {
      operator new();
    }

    [(ULStore *)self resetMOC];
    v14 = 0;
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULLabelStore insertDataObjects:forScanningEventUUID:andServiceUUID:];
    }

    v15 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      operator new();
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      [ULLabelStore insertDataObjects:forScanningEventUUID:andServiceUUID:];
    }

    v16 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v16))
    {
      operator new();
    }

    [(ULStore *)self resetMOC];
    return 0;
  }

  return v14;
}

- (BOOL)insertDataObjects:(const void *)objects atLoiUUID:(const uuid *)d
{
  v17 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  dbStore = [(ULStore *)self dbStore];
  v8 = (*(dbStore->var0 + 8))(dbStore);
  managedObjectContext = [(ULStore *)self managedObjectContext];
  v14 = [v8 fetchLoiManagedObjectWithUUID:d withManagedObjectContext:managedObjectContext];

  if (v14)
  {
    v16[0] = &unk_286A56450;
    v16[1] = &v14;
    v16[2] = &selfCopy;
    v16[3] = v16;
    inserted = ULDBUtils::insertDataObjects<ULLabelDO,ULLabelMO>(self, objects, v16);
    std::__function::__value_func<ULLabelMO * ()(ULLabelDO const&)>::~__value_func[abi:ne200100](v16);
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULLabelStore insertDataObjects:forScanningEventUUID:andServiceUUID:];
    }

    v11 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      operator new();
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      [ULLabelStore insertDataObjects:forScanningEventUUID:andServiceUUID:];
    }

    v12 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v12))
    {
      operator new();
    }

    [(ULStore *)self resetMOC];
    return 0;
  }

  return inserted;
}

- (vector<ULLabelDO,)fetchAllRecordsWithLimit:(ULLabelStore *)self
{
  ULDBUtils::fetchAllAsDataObjectsWithLimit<ULLabelDOAndObjectID,ULLabelMO>(self, a4, &v7);
  memset(v6, 0, sizeof(v6));
  std::vector<ULLabelDOAndObjectID>::__init_with_size[abi:ne200100]<ULLabelDOAndObjectID*,ULLabelDOAndObjectID*>(v6, v7, v8, 0xF0F0F0F0F0F0F0F1 * ((v8 - v7) >> 3));
  ULLabelDOAndObjectID::labelDOs(v6, retstr);
  v9 = v6;
  std::vector<ULLabelDOAndObjectID>::__destroy_vector::operator()[abi:ne200100](&v9);
  v9 = &v7;
  std::vector<ULLabelDOAndObjectID>::__destroy_vector::operator()[abi:ne200100](&v9);
  return result;
}

- (BOOL)deleteSimilarityListLabelsOlderThan:(double)than orNewerThan:(double)newerThan
{
  v7 = objc_autoreleasePoolPush();
  array = [MEMORY[0x277CBEB18] array];
  v9 = MEMORY[0x277CCAC30];
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:than];
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:newerThan];
  v12 = [v9 predicateWithFormat:@"%K < %@ || %K > %@", @"receivedTimestamp", v10, @"receivedTimestamp", v11];
  [array addObject:v12];

  v13 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K = %u", @"service", @"serviceType", 4];
  [array addObject:v13];

  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  LOBYTE(self) = [(ULStore *)self batchDeleteObjectsWithEntityName:v15 byAndPredicates:array sortDescriptors:0 andLimit:0];

  objc_autoreleasePoolPop(v7);
  return self;
}

- (BOOL)deleteOrphanRecords
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = NIL || %K = NIL", @"scanningEvent", @"service"];
  [array addObject:v4];

  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  LOBYTE(self) = [(ULStore *)self batchDeleteObjectsWithEntityName:v6 byAndPredicates:array sortDescriptors:0 andLimit:0];

  return self;
}

- (vector<ULLabelDOAndObjectID,)fetchAllLabelsAndObjectIDsASCWithLOIGroupUUID:(ULLabelStore *)self
{
  memset(v5, 0, sizeof(v5));
  v6 = 1065353216;
  objc_msgSend_fetchLabelsWithLOIGroupUUID_andContextLayers_limit_ascending_(self, a3, a4, v5, 0, 1);
  return std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v5);
}

- (vector<ULLabelDOAndObjectID,)fetchLabelsWithLOIGroupUUID:(ULLabelStore *)self andContextLayers:(SEL)layers limit:(const uuid *)limit ascending:(const void *)ascending
{
  v7 = a7;
  v28[1] = *MEMORY[0x277D85DE8];
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  v13 = objc_autoreleasePoolPush();
  v14 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:limit];
  uUIDString = [v14 UUIDString];

  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  for (i = *(ascending + 2); i; i = *i)
  {
    if (i[2])
    {
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
      [array2 addObject:v19];
    }
  }

  v20 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K = %@", @"loi", @"loiGroupId", uUIDString];
  [array addObject:v20];

  if ([array2 count])
  {
    v21 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"contextLayerType", array2];
    [array addObject:v21];
  }

  v22 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"receivedTimestamp" ascending:v7];
  v28[0] = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
  ULDBUtils::fetchDataObjects<ULLabelDOAndObjectID,ULLabelMO>(self, array, v23, a6, &v25);
  std::vector<ULLabelDOAndObjectID>::__vdeallocate(retstr);
  *&retstr->var0 = v25;
  retstr->var2 = v26;
  v26 = 0;
  v25 = 0uLL;
  v27 = &v25;
  std::vector<ULLabelDOAndObjectID>::__destroy_vector::operator()[abi:ne200100](&v27);

  objc_autoreleasePoolPop(v13);
  return result;
}

- (__n128)insertDataObjects:forScanningEventUUID:andServiceUUID:
{
  *a2 = &unk_286A563C0;
  result = *(self + 8);
  *(a2 + 24) = *(self + 24);
  *(a2 + 8) = result;
  return result;
}

- (id)insertDataObjects:forScanningEventUUID:andServiceUUID:
{
  v3 = **(self + 8);
  v4 = **(self + 16);
  managedObjectContext = [**(self + 24) managedObjectContext];
  v6 = [ULLabelMO createFromDO:a2 withScanningEventMO:v3 serviceMO:v4 inManagedObjectContext:managedObjectContext];

  return v6;
}

- (uint64_t)insertDataObjects:forScanningEventUUID:andServiceUUID:
{
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

- (__n128)insertDataObjects:atLoiUUID:
{
  *a2 = &unk_286A56450;
  result = *(self + 8);
  *(a2 + 8) = result;
  return result;
}

- (id)insertDataObjects:atLoiUUID:
{
  v3 = **(self + 8);
  managedObjectContext = [**(self + 16) managedObjectContext];
  v5 = [ULLabelMO createFromDO:a2 withLoi:v3 inManagedObjectContext:managedObjectContext];

  return v5;
}

- (uint64_t)insertDataObjects:atLoiUUID:
{
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

@end