@interface ULEventLogStore
+ (unsigned)maxEntriesInTable;
- (BOOL)insertDataObjects:(const void *)objects;
- (id)insertDataObjects:;
- (optional<ULEventLogDO>)fetchMostRecentLoggedEventBeforeTime:(optional<ULEventLogDO> *__return_ptr)retstr;
- (uint64_t)insertDataObjects:;
- (vector<ULEventLogDO,)fetchLoggedEventsFromTime:(ULEventLogStore *)self toTime:(SEL)time limit:(optional<const double>)limit;
@end

@implementation ULEventLogStore

+ (unsigned)maxEntriesInTable
{
  v2 = +[ULDefaultsSingleton shared];
  defaultsDictionary = [v2 defaultsDictionary];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULLoggedEventsTableMaxRows"];
  v5 = [defaultsDictionary objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntValue = [v5 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = [&unk_286A719B8 unsignedIntValue];
  }

  v7 = unsignedIntValue;

  return v7;
}

- (BOOL)insertDataObjects:(const void *)objects
{
  v6[4] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v6[0] = &unk_286A561F0;
  v6[1] = &selfCopy;
  v6[3] = v6;
  inserted = ULDBUtils::insertDataObjects<ULEventLogDO,ULEventLogMO>(self, objects, v6);
  std::__function::__value_func<ULEventLogMO * ()(ULEventLogDO const&)>::~__value_func[abi:ne200100](v6);
  return inserted;
}

- (vector<ULEventLogDO,)fetchLoggedEventsFromTime:(ULEventLogStore *)self toTime:(SEL)time limit:(optional<const double>)limit
{
  var1 = a5.var1;
  v7 = a5.var0.var1;
  v8 = limit.var1;
  v9 = limit.var0.var1;
  v30[1] = *MEMORY[0x277D85DE8];
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  if (!a6)
  {
    v12 = +[ULDefaultsSingleton shared];
    defaultsDictionary = [v12 defaultsDictionary];

    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULDatabaseSelectionLimit"];
    v15 = [defaultsDictionary objectForKey:v14];
    if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v15 unsignedIntValue];
    }

    else
    {
      [&unk_286A719A0 unsignedIntValue];
    }
  }

  v16 = objc_autoreleasePoolPush();
  array = [MEMORY[0x277CBEB18] array];
  if (v8)
  {
    v18 = MEMORY[0x277CCAC30];
    v19 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
    v20 = [v18 predicateWithFormat:@"%K > %@", @"timestamp", v19];
    [array addObject:v20];
  }

  if (var1)
  {
    v21 = MEMORY[0x277CCAC30];
    v22 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
    v23 = [v21 predicateWithFormat:@"%K <= %@", @"timestamp", v22];
    [array addObject:v23];
  }

  v24 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"timestamp" ascending:0];
  v30[0] = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
  objc_msgSend__fetchLoggedEventsByAndPredicates_sortDescriptors_andLimit_(self);
  std::vector<ULEventLogDO>::__vdeallocate(retstr);
  *&retstr->var0 = v27;
  retstr->var2 = v28;
  v28 = 0;
  v27 = 0uLL;
  v29 = &v27;
  std::vector<ULEventLogDO>::__destroy_vector::operator()[abi:ne200100](&v29);

  objc_autoreleasePoolPop(v16);
  return result;
}

- (optional<ULEventLogDO>)fetchMostRecentLoggedEventBeforeTime:(optional<ULEventLogDO> *__return_ptr)retstr
{
  objc_msgSend_fetchLoggedEventsFromTime_toTime_limit_(v1);
  v3 = v8[0];
  if (v8[0] == v8[1])
  {
    v6 = 0;
    retstr->var0.var0 = 0;
  }

  else
  {
    *&retstr->var0.var0 = *v8[0];
    v4 = v3[2];
    v5 = v3[3];
    v3[1] = 0;
    v3[2] = 0;
    *v3 = 0;
    *(&retstr->var0.var1.var0.var0.var1 + 2) = v4;
    retstr[1].var0.var1.var0.var0.var1.var0 = v5;
    v6 = 1;
  }

  retstr[1].var0.var1.var0.var0.var0.var0[8] = v6;
  v9 = v8;
  std::vector<ULEventLogDO>::__destroy_vector::operator()[abi:ne200100](&v9);
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
  v4 = [ULEventLogMO createFromDO:a2 inManagedObjectContext:managedObjectContext];

  return v4;
}

@end