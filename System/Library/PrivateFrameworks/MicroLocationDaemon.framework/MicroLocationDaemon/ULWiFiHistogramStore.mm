@interface ULWiFiHistogramStore
+ (unsigned)maxEntriesInTable;
- (BOOL)deleteOrphanRecords;
- (BOOL)insertDataObjects:(const void *)objects atLoiUUID:(const uuid *)d;
- (__n128)insertDataObjects:atLoiUUID:;
- (id)insertDataObjects:atLoiUUID:;
- (optional<ULWiFiHistogramDO>)fetchMostRecentWifiHistogramAtLoiGroupId:(optional<ULWiFiHistogramDO> *__return_ptr)retstr beforeTime:(ULWiFiHistogramStore *)self;
- (uint64_t)insertDataObjects:atLoiUUID:;
@end

@implementation ULWiFiHistogramStore

+ (unsigned)maxEntriesInTable
{
  v2 = +[ULDefaultsSingleton shared];
  defaultsDictionary = [v2 defaultsDictionary];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULWiFiHistogramTableMaxRows"];
  v5 = [defaultsDictionary objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntValue = [v5 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = [&unk_286A71CA0 unsignedIntValue];
  }

  v7 = unsignedIntValue;

  return v7;
}

- (BOOL)insertDataObjects:(const void *)objects atLoiUUID:(const uuid *)d
{
  v17 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  if (*objects == *(objects + 1))
  {
    return 1;
  }

  dbStore = [(ULStore *)self dbStore];
  v8 = (*(dbStore->var0 + 8))(dbStore);
  managedObjectContext = [(ULStore *)self managedObjectContext];
  v14 = [v8 fetchLoiManagedObjectWithUUID:d withManagedObjectContext:managedObjectContext];

  if (v14)
  {
    v16[0] = &unk_286A56E48;
    v16[1] = &v14;
    v16[2] = &selfCopy;
    v16[3] = v16;
    inserted = ULDBUtils::insertDataObjects<ULWiFiHistogramDO,ULWiFiHistogramMO>(self, objects, v16);
    std::__function::__value_func<ULWiFiHistogramMO * ()(ULWiFiHistogramDO const&)>::~__value_func[abi:ne200100](v16);
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULWiFiHistogramStore insertDataObjects:atLoiUUID:];
    }

    v11 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      operator new();
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      [ULWiFiHistogramStore insertDataObjects:atLoiUUID:];
    }

    v12 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v12))
    {
      operator new();
    }

    [(ULStore *)self resetMOC:v14];
    return 0;
  }

  return inserted;
}

- (optional<ULWiFiHistogramDO>)fetchMostRecentWifiHistogramAtLoiGroupId:(optional<ULWiFiHistogramDO> *__return_ptr)retstr beforeTime:(ULWiFiHistogramStore *)self
{
  v5 = v4;
  v6 = v3;
  v7 = v2;
  v27[1] = *MEMORY[0x277D85DE8];
  v24 = 0uLL;
  v25 = 0;
  std::vector<ULWiFiHistogramDO>::reserve(&v24, 1uLL);
  v10 = objc_autoreleasePoolPush();
  array = [MEMORY[0x277CBEB18] array];
  v12 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v7];
  uUIDString = [v12 UUIDString];

  v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K = %@", @"loi", @"loiGroupId", uUIDString];
  [array addObject:v14];

  if (v5)
  {
    v15 = MEMORY[0x277CCAC30];
    v16 = [MEMORY[0x277CCABB0] numberWithDouble:v6];
    v17 = [v15 predicateWithFormat:@"%K <= %@", @"timestamp", v16];
    [array addObject:v17];
  }

  v18 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"timestamp" ascending:0];
  v27[0] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
  objc_msgSend__fetchWiFiHistogramByAndPredicates_sortDescriptors_andLimit_(self);
  std::vector<ULWiFiHistogramDO>::__vdeallocate(&v24);
  v24 = v22;
  v25 = v23;
  v26 = &v22;
  v23 = 0;
  v22 = 0uLL;
  std::vector<ULWiFiHistogramDO>::__destroy_vector::operator()[abi:ne200100](&v26);

  objc_autoreleasePoolPop(v10);
  if (v24 == *(&v24 + 1))
  {
    v20 = 0;
    retstr->var0.var0 = 0;
  }

  else
  {
    ULWiFiHistogramDO::ULWiFiHistogramDO(retstr, v24);
    v20 = 1;
  }

  LOBYTE(retstr[1].var0.var3.var1.var3) = v20;
  *&v22 = &v24;
  std::vector<ULWiFiHistogramDO>::__destroy_vector::operator()[abi:ne200100](&v22);
  return result;
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

- (__n128)insertDataObjects:atLoiUUID:
{
  *a2 = &unk_286A56E48;
  result = *(self + 8);
  *(a2 + 8) = result;
  return result;
}

- (id)insertDataObjects:atLoiUUID:
{
  v3 = **(self + 8);
  managedObjectContext = [**(self + 16) managedObjectContext];
  v5 = [ULWiFiHistogramMO createFromDO:a2 withLoiMO:v3 inManagedObjectContext:managedObjectContext];

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