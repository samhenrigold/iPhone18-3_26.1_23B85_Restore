@interface ULMigrationStore
+ (unsigned)maxEntriesInTable;
- (BOOL)insertDataObjects:(const void *)objects;
- (id)insertDataObjects:;
- (uint64_t)insertDataObjects:;
- (vector<ULMigrationDO,)fetchMigrationEntriesWithStates:(ULMigrationStore *)self limit:(SEL)limit;
@end

@implementation ULMigrationStore

+ (unsigned)maxEntriesInTable
{
  v2 = +[ULDefaultsSingleton shared];
  defaultsDictionary = [v2 defaultsDictionary];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMigrationTableMaxRows"];
  v5 = [defaultsDictionary objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntValue = [v5 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = [&unk_286A71A60 unsignedIntValue];
  }

  v7 = unsignedIntValue;

  return v7;
}

- (BOOL)insertDataObjects:(const void *)objects
{
  v6[4] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v6[0] = &unk_286A56718;
  v6[1] = &selfCopy;
  v6[3] = v6;
  inserted = ULDBUtils::insertDataObjects<ULMigrationDO,ULMigrationMO>(self, objects, v6);
  std::__function::__value_func<ULMigrationMO * ()(ULMigrationDO const&)>::~__value_func[abi:ne200100](v6);
  return inserted;
}

- (vector<ULMigrationDO,)fetchMigrationEntriesWithStates:(ULMigrationStore *)self limit:(SEL)limit
{
  v20[1] = *MEMORY[0x277D85DE8];
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  v8 = objc_autoreleasePoolPush();
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v11 = *a4;
  v12 = *(a4 + 1);
  if (*a4 != v12)
  {
    do
    {
      v13 = [MEMORY[0x277CCABB0] numberWithInt:*v11];
      [array2 addObject:v13];

      ++v11;
    }

    while (v11 != v12);
  }

  v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"state", array2];
  [array addObject:v14];

  v15 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"timestamp" ascending:0];
  v20[0] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  objc_msgSend__fetchMigrationsByAndPredicates_sortDescriptors_andLimit_(self);
  *&retstr->var0 = v18;
  retstr->var2 = v19;

  objc_autoreleasePoolPop(v8);
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
  v4 = [ULMigrationMO createFromDO:a2 inManagedObjectContext:managedObjectContext];

  return v4;
}

@end