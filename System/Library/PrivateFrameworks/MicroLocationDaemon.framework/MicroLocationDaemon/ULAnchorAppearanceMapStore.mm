@interface ULAnchorAppearanceMapStore
+ (unsigned)maxEntriesInTable;
- (BOOL)deleteOrphanRecords;
- (BOOL)insertDataObjects:(const void *)objects atLoiUUID:(const uuid *)d;
- (__n128)insertDataObjects:atLoiUUID:;
- (id)insertDataObjects:atLoiUUID:;
- (optional<ULAnchorAppearanceMapDO>)fetchMostRecentAnchorAppearanceMapAtLoiGroupId:(optional<ULAnchorAppearanceMapDO> *__return_ptr)retstr;
- (uint64_t)insertDataObjects:atLoiUUID:;
@end

@implementation ULAnchorAppearanceMapStore

+ (unsigned)maxEntriesInTable
{
  v2 = +[ULDefaultsSingleton shared];
  defaultsDictionary = [v2 defaultsDictionary];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULAnchorAppearanceMapTableMaxRows"];
  v5 = [defaultsDictionary objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntValue = [v5 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = [&unk_286A718E0 unsignedIntValue];
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
    v16[0] = &unk_286A55E30;
    v16[1] = &v14;
    v16[2] = &selfCopy;
    v16[3] = v16;
    inserted = ULDBUtils::insertDataObjects<ULAnchorAppearanceMapDO,ULAnchorAppearanceMapMO>(self, objects, v16);
    std::__function::__value_func<ULAnchorAppearanceMapMO * ()(ULAnchorAppearanceMapDO const&)>::~__value_func[abi:ne200100](v16);
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULAnchorAppearanceMapStore insertDataObjects:atLoiUUID:];
    }

    v11 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      operator new();
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      [ULAnchorAppearanceMapStore insertDataObjects:atLoiUUID:];
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

- (optional<ULAnchorAppearanceMapDO>)fetchMostRecentAnchorAppearanceMapAtLoiGroupId:(optional<ULAnchorAppearanceMapDO> *__return_ptr)retstr
{
  v3 = v2;
  v20[1] = *MEMORY[0x277D85DE8];
  v17 = 0uLL;
  v18 = 0;
  std::vector<ULAnchorAppearanceMapDO>::reserve(&v17, 1uLL);
  v6 = objc_autoreleasePoolPush();
  array = [MEMORY[0x277CBEB18] array];
  v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v3];
  uUIDString = [v8 UUIDString];

  v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K = %@", @"loi", @"loiGroupId", uUIDString];
  [array addObject:v10];

  v11 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"timestamp" ascending:0];
  v20[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  objc_msgSend__fetchAnchorAppearanceMapByAndPredicates_sortDescriptors_andLimit_(self);
  std::vector<ULAnchorAppearanceMapDO>::__vdeallocate(&v17);
  v17 = v15;
  v18 = v16;
  v19 = &v15;
  v16 = 0;
  v15 = 0uLL;
  std::vector<ULAnchorAppearanceMapDO>::__destroy_vector::operator()[abi:ne200100](&v19);

  objc_autoreleasePoolPop(v6);
  if (v17 == *(&v17 + 1))
  {
    v13 = 0;
    retstr->var0.var0 = 0;
  }

  else
  {
    ULAnchorAppearanceMapDO::ULAnchorAppearanceMapDO(retstr, v17);
    v13 = 1;
  }

  LOBYTE(retstr[1].var0.var3.var4[0]) = v13;
  *&v15 = &v17;
  std::vector<ULAnchorAppearanceMapDO>::__destroy_vector::operator()[abi:ne200100](&v15);
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
  *a2 = &unk_286A55E30;
  result = *(self + 8);
  *(a2 + 8) = result;
  return result;
}

- (id)insertDataObjects:atLoiUUID:
{
  v3 = **(self + 8);
  managedObjectContext = [**(self + 16) managedObjectContext];
  v5 = [ULAnchorAppearanceMapMO createFromDO:a2 withLoiMO:v3 inManagedObjectContext:managedObjectContext];

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