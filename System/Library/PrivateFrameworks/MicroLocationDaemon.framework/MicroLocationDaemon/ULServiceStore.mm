@interface ULServiceStore
+ (unsigned)maxEntriesInTable;
- (BOOL)deleteAllServicesWithExceptions:(const void *)exceptions;
- (BOOL)deleteAllServicesWithUUIDs:()vector<boost:(std::allocator<boost::uuids::uuid>> *)boost :uuids::uuid;
- (BOOL)deleteOldestsServicesPerClientAboveMaxCount;
- (BOOL)deleteServiceForUUID:(uuid)d;
- (BOOL)insertDataObjects:(const void *)objects;
- (BOOL)updateAllServicesWithMatchingClientId:()basic_string<char withNewClientId:()std:(std::allocator<char>> *)var0 :char_traits<char>;
- (BOOL)updateAllServicesWithMatchingServiceUUID:(uuid)d withNewServiceUUID:(uuid)iD;
- (BOOL)updateService:(uuid)service withServiceType:(unsigned int)type toNewServiceType:(unsigned int)serviceType;
- (BOOL)updateServiceLocationTypes:(uuid)types withLocationTypes:(unint64_t)locationTypes;
- (id)fetchServiceManagedObjectWithUUID:(const uuid *)d withManagedObjectContext:(id)context;
- (id)getAllServiceUUIDs:(unint64_t)ds;
- (id)getServiceUUIDsWithServiceType:(unsigned int)type;
- (id)insertDataObjects:;
- (optional<ULServiceDO>)fetchServiceByUUID:()basic_string<char;
- (uint64_t)insertDataObjects:;
- (uint64_t)updateLastActiveTime:(uint64_t)time forService:(uint64_t)service;
- (vector<ULServiceDO,)fetchAllServicesForClientId:(ULServiceStore *)self andUserId:(SEL)id;
- (vector<ULServiceDO,)fetchAllServicesForServiceType:(ULServiceStore *)self onlyServicesWithLabels:(SEL)labels;
- (void)deleteOldestsServicesPerClientAboveMaxCount;
@end

@implementation ULServiceStore

+ (unsigned)maxEntriesInTable
{
  v2 = +[ULDefaultsSingleton shared];
  defaultsDictionary = [v2 defaultsDictionary];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULServicesTableMaxRows"];
  v5 = [defaultsDictionary objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntValue = [v5 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = [&unk_286A71BC8 unsignedIntValue];
  }

  v7 = unsignedIntValue;

  return v7;
}

- (BOOL)insertDataObjects:(const void *)objects
{
  v6[4] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v6[0] = &unk_286A56D00;
  v6[1] = &selfCopy;
  v6[3] = v6;
  inserted = ULDBUtils::insertDataObjects<ULServiceDO,ULServiceMO>(self, objects, v6);
  std::__function::__value_func<ULServiceMO * ()(ULServiceDO const&)>::~__value_func[abi:ne200100](v6);
  return inserted;
}

- (BOOL)deleteServiceForUUID:(uuid)d
{
  v12 = *MEMORY[0x277D85DE8];
  dCopy = d;
  array = [MEMORY[0x277CBEB18] array];
  v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:&dCopy];
  uUIDString = [v5 UUIDString];

  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K=%@", @"serviceUUID", uUIDString];
  [array addObject:v7];

  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  LOBYTE(self) = [(ULStore *)self batchDeleteObjectsWithEntityName:v9 byAndPredicates:array sortDescriptors:0 andLimit:0];

  return self;
}

- (BOOL)deleteAllServicesWithUUIDs:()vector<boost:(std::allocator<boost::uuids::uuid>> *)boost :uuids::uuid
{
  if (boost->var0 == boost->var1)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULServiceStore deleteAllServicesWithUUIDs:];
    }

    v10 = logObject_MicroLocation_Default;
    v9 = 0;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_DEFAULT, "#Warning No UUIDs were passed in to delete services", buf, 2u);
      return 0;
    }
  }

  else
  {
    v4 = ULDBUtils::NSStringArrayFromBoostUUIDs(boost);
    array = [MEMORY[0x277CBEB18] array];
    v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K in %@", @"serviceUUID", v4];
    [array addObject:v6];

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [(ULStore *)self batchDeleteObjectsWithEntityName:v8 byAndPredicates:array sortDescriptors:0 andLimit:0];
  }

  return v9;
}

- (BOOL)deleteAllServicesWithExceptions:(const void *)exceptions
{
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v7 = *exceptions;
  v8 = *(exceptions + 1);
  if (*exceptions != v8)
  {
    do
    {
      v9 = v7;
      if (*(v7 + 23) < 0)
      {
        v9 = *v7;
      }

      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:v9];
      [array2 addObject:v10];

      v7 += 3;
    }

    while (v7 != v8);
  }

  v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"NOT (%K IN %@)", @"clientId", array2];
  [array addObject:v11];

  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v14 = [(ULStore *)self batchDeleteObjectsWithEntityName:v13 byAndPredicates:array sortDescriptors:0 andLimit:0];

  return v14;
}

- (vector<ULServiceDO,)fetchAllServicesForServiceType:(ULServiceStore *)self onlyServicesWithLabels:(SEL)labels
{
  v5 = a5;
  v19[1] = *MEMORY[0x277D85DE8];
  ULSettings::get<ULSettings::DatabaseSelectionLimit>();
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  v9 = objc_autoreleasePoolPush();
  array = [MEMORY[0x277CBEB18] array];
  v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K=%u", @"serviceType", a4];
  [array addObject:v11];

  if (v5)
  {
    v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.@count > 0", @"labels"];
    [array addObject:v12];
  }

  v13 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"lastActiveTimestamp" ascending:0];
  v19[0] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  objc_msgSend__fetchServicesByAndPredicates_sortDescriptors_andLimit_(self);
  std::vector<ULServiceDO>::__vdeallocate(retstr);
  *&retstr->var0 = v16;
  retstr->var2 = v17;
  v17 = 0;
  v16 = 0uLL;
  v18 = &v16;
  std::vector<ULServiceDO>::__destroy_vector::operator()[abi:ne200100](&v18);

  objc_autoreleasePoolPop(v9);
  return result;
}

- (vector<ULServiceDO,)fetchAllServicesForClientId:(ULServiceStore *)self andUserId:(SEL)id
{
  v20[1] = *MEMORY[0x277D85DE8];
  ULSettings::get<ULSettings::DatabaseSelectionLimit>();
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  v8 = objc_autoreleasePoolPush();
  array = [MEMORY[0x277CBEB18] array];
  v10 = MEMORY[0x277CCAC30];
  if (*(a4 + 23) >= 0)
  {
    v11 = a4;
  }

  else
  {
    v11 = *a4;
  }

  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:v11];
  v13 = [v10 predicateWithFormat:@"%K=%@", @"clientId", v12];
  [array addObject:v13];

  v14 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"lastActiveTimestamp" ascending:0];
  v20[0] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  objc_msgSend__fetchServicesByAndPredicates_sortDescriptors_andLimit_(self);
  std::vector<ULServiceDO>::__vdeallocate(retstr);
  *&retstr->var0 = v17;
  retstr->var2 = v18;
  v18 = 0;
  v17 = 0uLL;
  v19 = &v17;
  std::vector<ULServiceDO>::__destroy_vector::operator()[abi:ne200100](&v19);

  objc_autoreleasePoolPop(v8);
  return result;
}

- (optional<ULServiceDO>)fetchServiceByUUID:()basic_string<char
{
  v28 = *MEMORY[0x277D85DE8];
  v26 = v3;
  v27 = v4;
  v22 = 0uLL;
  v23 = 0;
  std::vector<ULServiceDO>::reserve(&v22, 1uLL);
  v7 = objc_autoreleasePoolPush();
  array = [MEMORY[0x277CBEB18] array];
  v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:&v26];
  uUIDString = [v9 UUIDString];

  v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K=%@", @"serviceUUID", uUIDString];
  [array addObject:v11];

  v12 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"lastActiveTimestamp" ascending:0];
  v25 = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
  objc_msgSend__fetchServicesByAndPredicates_sortDescriptors_andLimit_(self);
  std::vector<ULServiceDO>::__vdeallocate(&v22);
  v22 = v20;
  v23 = v21;
  v24 = &v20;
  v21 = 0;
  v20 = 0uLL;
  std::vector<ULServiceDO>::__destroy_vector::operator()[abi:ne200100](&v24);

  objc_autoreleasePoolPop(v7);
  v14 = v22;
  if (v22 == *(&v22 + 1))
  {
    v18 = 0;
    retstr->var0.var0 = 0;
  }

  else
  {
    v15 = *(v22 + 16);
    *&retstr->var0.var0 = *v22;
    *(&retstr->var0.var2.var0.var1 + 1) = v15;
    *&retstr[1].var0.var2.var0.var1.var1 = *(v14 + 32);
    *(v14 + 32) = 0;
    *(v14 + 40) = 0;
    v16 = *(v14 + 48);
    v17 = *(v14 + 56);
    *(v14 + 48) = 0;
    retstr[2].var0.var1.var0 = v16;
    retstr[2].var0.var2.var0.var1.var1 = v17;
    *(&retstr[2].var0.var2.var0.var1 + 1) = *(v14 + 64);
    retstr[3].var0.var2.var0.var1.var1 = *(v14 + 80);
    *(v14 + 64) = 0;
    *(v14 + 72) = 0;
    v18 = 1;
    *(v14 + 80) = 0;
  }

  retstr[3].var0.var1.var1.data[8] = v18;
  *&v20 = &v22;
  std::vector<ULServiceDO>::__destroy_vector::operator()[abi:ne200100](&v20);
  return result;
}

- (uint64_t)updateLastActiveTime:(uint64_t)time forService:(uint64_t)service
{
  v22[2] = *MEMORY[0x277D85DE8];
  v22[0] = service;
  v22[1] = a5;
  array = [MEMORY[0x277CBEB18] array];
  v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v22];
  uUIDString = [v8 UUIDString];

  v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K=%@", @"serviceUUID", uUIDString];
  [array addObject:v10];

  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  managedObjectContext = [self managedObjectContext];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __50__ULServiceStore_updateLastActiveTime_forService___block_invoke;
  v14[3] = &unk_2798D4500;
  v14[4] = self;
  v12 = array;
  v17 = a2;
  v15 = v12;
  v16 = &v18;
  [managedObjectContext performBlockAndWait:v14];

  LOBYTE(array) = *(v19 + 24);
  _Block_object_dispose(&v18, 8);

  return array & 1;
}

void __50__ULServiceStore_updateLastActiveTime_forService___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 fetchManagedObjectsWithEntityName:v4 byAndPredicates:*(a1 + 40) sortDescriptors:0 andLimit:0];

  if ([v5 count])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v9++) setLastActiveTimestamp:{*(a1 + 56), v11}];
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) commitChangesToStore];
  }

  else
  {
    v10 = [*(a1 + 32) managedObjectContext];
    [v10 reset];
  }
}

- (BOOL)updateServiceLocationTypes:(uuid)types withLocationTypes:(unint64_t)locationTypes
{
  v22 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  array = [MEMORY[0x277CBEB18] array];
  v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:&typesCopy];
  uUIDString = [v7 UUIDString];

  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K=%@", @"serviceUUID", uUIDString];
  [array addObject:v9];

  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  managedObjectContext = [(ULStore *)self managedObjectContext];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __63__ULServiceStore_updateServiceLocationTypes_withLocationTypes___block_invoke;
  v13[3] = &unk_2798D4500;
  v13[4] = self;
  v11 = array;
  v15 = &v17;
  locationTypesCopy = locationTypes;
  v14 = v11;
  [managedObjectContext performBlockAndWait:v13];

  LOBYTE(array) = *(v18 + 24);
  _Block_object_dispose(&v17, 8);

  return array & 1;
}

void __63__ULServiceStore_updateServiceLocationTypes_withLocationTypes___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 fetchManagedObjectsWithEntityName:v4 byAndPredicates:*(a1 + 40) sortDescriptors:0 andLimit:0];

  if ([v5 count])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v9++) setLocationTypes:{*(a1 + 56), v11}];
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) commitChangesToStore];
  }

  else
  {
    v10 = [*(a1 + 32) managedObjectContext];
    [v10 reset];
  }
}

- (BOOL)updateService:(uuid)service withServiceType:(unsigned int)type toNewServiceType:(unsigned int)serviceType
{
  v6 = *&type;
  v24 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  array = [MEMORY[0x277CBEB18] array];
  v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:&serviceCopy];
  uUIDString = [v9 UUIDString];

  v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K=%@ && %K=%u", @"serviceUUID", uUIDString, @"serviceType", v6];
  [array addObject:v11];

  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  managedObjectContext = [(ULStore *)self managedObjectContext];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__ULServiceStore_updateService_withServiceType_toNewServiceType___block_invoke;
  v15[3] = &unk_2798D47F0;
  v15[4] = self;
  v13 = array;
  serviceTypeCopy = serviceType;
  v16 = v13;
  v17 = &v19;
  [managedObjectContext performBlockAndWait:v15];

  LOBYTE(array) = *(v20 + 24);
  _Block_object_dispose(&v19, 8);

  return array & 1;
}

void __65__ULServiceStore_updateService_withServiceType_toNewServiceType___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 fetchManagedObjectsWithEntityName:v4 byAndPredicates:*(a1 + 40) sortDescriptors:0 andLimit:0];

  if ([v5 count])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v9++) setServiceType:{*(a1 + 56), v11}];
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) commitChangesToStore];
  }

  else
  {
    v10 = [*(a1 + 32) managedObjectContext];
    [v10 reset];
  }
}

- (id)getServiceUUIDsWithServiceType:(unsigned int)type
{
  v3 = *&type;
  v5 = objc_autoreleasePoolPush();
  array = [MEMORY[0x277CBEB18] array];
  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K=%u", @"serviceType", v3];
  [array addObject:v7];

  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [(ULStore *)self fetchPropertyForEntityName:v9 propertyToFetch:@"serviceUUID" distinctResults:1 byAndPredicates:array sortDescriptors:0 andLimit:0];

  objc_autoreleasePoolPop(v5);

  return v10;
}

- (id)getAllServiceUUIDs:(unint64_t)ds
{
  v5 = objc_autoreleasePoolPush();
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [(ULStore *)self fetchPropertyForEntityName:v7 propertyToFetch:@"serviceUUID" distinctResults:1 byAndPredicates:0 sortDescriptors:0 andLimit:ds];

  objc_autoreleasePoolPop(v5);

  return v8;
}

- (BOOL)deleteOldestsServicesPerClientAboveMaxCount
{
  v90 = *MEMORY[0x277D85DE8];
  objc_msgSend_fetchAllRecordsWithLimit_(self, a2, 0);
  if (v83 != v84)
  {
    v82[0] = 0;
    v82[1] = 0;
    v81 = v82;
    v2 = +[ULDefaultsSingleton shared];
    defaultsDictionary = [v2 defaultsDictionary];

    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMaximumNumberOfCreatedUnsupervisedServicesPerClientAfterMaintenance"];
    v5 = [defaultsDictionary objectForKey:v4];
    if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      unsignedLongValue = [v5 unsignedLongValue];
    }

    else
    {
      unsignedLongValue = [&unk_286A71B80 unsignedLongValue];
    }

    v7 = unsignedLongValue;

    v86.__r_.__value_.__r.__words[0] = 1;
    v79 = &v86;
    std::__tree<std::__value_type<unsigned long long,unsigned long>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned long>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(&v81, &v86, &std::piecewise_construct, &v79)[5] = v7;
    v8 = +[ULDefaultsSingleton shared];
    defaultsDictionary2 = [v8 defaultsDictionary];

    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMaximumNumberOfCreatedBinaryRoiServicesPerClientAfterMaintenance"];
    v11 = [defaultsDictionary2 objectForKey:v10];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      unsignedLongValue2 = [v11 unsignedLongValue];
    }

    else
    {
      unsignedLongValue2 = [&unk_286A71B80 unsignedLongValue];
    }

    v13 = unsignedLongValue2;

    v86.__r_.__value_.__r.__words[0] = 2;
    v79 = &v86;
    std::__tree<std::__value_type<unsigned long long,unsigned long>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned long>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(&v81, &v86, &std::piecewise_construct, &v79)[5] = v13;
    v14 = +[ULDefaultsSingleton shared];
    defaultsDictionary3 = [v14 defaultsDictionary];

    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMaximumNumberOfCreatedMulticlassServicesPerClientAfterMaintenance"];
    v17 = [defaultsDictionary3 objectForKey:v16];
    if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      unsignedLongValue3 = [v17 unsignedLongValue];
    }

    else
    {
      unsignedLongValue3 = [&unk_286A71B80 unsignedLongValue];
    }

    v19 = unsignedLongValue3;

    v86.__r_.__value_.__r.__words[0] = 3;
    v79 = &v86;
    std::__tree<std::__value_type<unsigned long long,unsigned long>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned long>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(&v81, &v86, &std::piecewise_construct, &v79)[5] = v19;
    v20 = +[ULDefaultsSingleton shared];
    defaultsDictionary4 = [v20 defaultsDictionary];

    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMaximumNumberOfCreatedSimilarityListServicesPerClientAfterMaintenance"];
    v23 = [defaultsDictionary4 objectForKey:v22];
    if (v23 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      unsignedLongValue4 = [v23 unsignedLongValue];
    }

    else
    {
      unsignedLongValue4 = [&unk_286A71B98 unsignedLongValue];
    }

    v25 = unsignedLongValue4;

    v86.__r_.__value_.__r.__words[0] = 4;
    v79 = &v86;
    std::__tree<std::__value_type<unsigned long long,unsigned long>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned long>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(&v81, &v86, &std::piecewise_construct, &v79)[5] = v25;
    v80[0] = 0;
    v80[1] = 0;
    v79 = v80;
    v27 = v83;
    v26 = v84;
    if (v83 == v84)
    {
      goto LABEL_80;
    }

    do
    {
      if (*(v27 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(&v86, *(v27 + 32), *(v27 + 40));
      }

      else
      {
        v86 = *(v27 + 32);
      }

      v87 = *v27;
      __p = &v86;
      v28 = std::__tree<std::__value_type<std::pair<std::string,unsigned long long>,std::vector<ULServiceDO>>,std::__map_value_compare<std::pair<std::string,unsigned long long>,std::__value_type<std::pair<std::string,unsigned long long>,std::vector<ULServiceDO>>,std::less<std::pair<std::string,unsigned long long>>,true>,std::allocator<std::__value_type<std::pair<std::string,unsigned long long>,std::vector<ULServiceDO>>>>::__emplace_unique_key_args<std::pair<std::string,unsigned long long>,std::piecewise_construct_t const&,std::tuple<std::pair<std::string,unsigned long long>&&>,std::tuple<>>(&v79, &v86, &std::piecewise_construct, &__p);
      v29 = v28;
      v30 = v28[9];
      if (v30 >= v28[10])
      {
        v31 = std::vector<ULServiceDO>::__emplace_back_slow_path<ULServiceDO const&>(v28 + 8, v27);
      }

      else
      {
        std::vector<ULServiceDO>::__construct_one_at_end[abi:ne200100]<ULServiceDO const&>((v28 + 8), v27);
        v31 = v30 + 88;
      }

      v29[9] = v31;
      if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v86.__r_.__value_.__l.__data_);
      }

      v27 += 88;
    }

    while (v27 != v26);
    v32 = v79;
    __p = 0;
    v77 = 0;
    v78 = 0;
    if (v79 == v80)
    {
LABEL_80:
      v67 = 1;
    }

    else
    {
      do
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          [ULServiceStore deleteOldestsServicesPerClientAboveMaxCount];
        }

        v33 = (v32 + 4);
        v34 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
        {
          v35 = (v32 + 4);
          if (*(v32 + 55) < 0)
          {
            v35 = *v33;
          }

          v36 = v32[7];
          v37 = 0x2E8BA2E8BA2E8BA3 * ((v32[9] - v32[8]) >> 3);
          LODWORD(v86.__r_.__value_.__l.__data_) = 136315650;
          *(v86.__r_.__value_.__r.__words + 4) = v35;
          WORD2(v86.__r_.__value_.__r.__words[1]) = 2048;
          *(&v86.__r_.__value_.__r.__words[1] + 6) = v37;
          HIWORD(v86.__r_.__value_.__r.__words[2]) = 2048;
          v87 = v36;
          _os_log_impl(&dword_258FE9000, v34, OS_LOG_TYPE_DEFAULT, "Pre-Maintenance for services: client: %s has: %ld services of serviceType: %llU", &v86, 0x20u);
        }

        v38 = (v32 + 7);
        v39 = v82[0];
        if (!v82[0])
        {
          goto LABEL_43;
        }

        v40 = *v38;
        v41 = v82;
        do
        {
          v42 = v39[4];
          v43 = v42 >= v40;
          v44 = v42 < v40;
          if (v43)
          {
            v41 = v39;
          }

          v39 = v39[v44];
        }

        while (v39);
        if (v41 != v82 && v40 >= v41[4])
        {
          v85 = v32 + 7;
          v50 = std::__tree<std::__value_type<unsigned long long,unsigned long>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned long>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(&v81, v32 + 7, &std::piecewise_construct, &v85)[5];
          v51 = 0x2E8BA2E8BA2E8BA3 * ((v32[9] - v32[8]) >> 3);
          v52 = v51 - v50;
          if (v51 > v50)
          {
            if (onceToken_MicroLocation_Default != -1)
            {
              [ULServiceStore deleteOldestsServicesPerClientAboveMaxCount];
            }

            v53 = logObject_MicroLocation_Default;
            if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
            {
              if (*(v32 + 55) < 0)
              {
                v33 = *v33;
              }

              v54 = *v38;
              LODWORD(v86.__r_.__value_.__l.__data_) = 134218754;
              *(v86.__r_.__value_.__r.__words + 4) = v52;
              WORD2(v86.__r_.__value_.__r.__words[1]) = 2080;
              *(&v86.__r_.__value_.__r.__words[1] + 6) = v33;
              HIWORD(v86.__r_.__value_.__r.__words[2]) = 2048;
              v87 = v54;
              v88 = 2048;
              v89 = v50;
              _os_log_impl(&dword_258FE9000, v53, OS_LOG_TYPE_DEFAULT, "%ld entries to be deleted for client: %s serviceType: %llU (max allowed: %ld)", &v86, 0x2Au);
            }

            v55 = v32[8];
            v56 = v32[9];
            v57 = 126 - 2 * __clz(0x2E8BA2E8BA2E8BA3 * (v56 - v55));
            if (v56 == v55)
            {
              v58 = 0;
            }

            else
            {
              v58 = v57;
            }

            std::__introsort<std::_ClassicAlgPolicy,[ULServiceStore deleteOldestsServicesPerClientAboveMaxCount]::$_1 &,ULServiceDO *,false>(v55, v56, v58, 1);
            if (88 * v52)
            {
              v59 = v32[8];
              v60 = v77;
              do
              {
                if (v60 >= v78)
                {
                  v61 = (v60 - __p) >> 4;
                  if ((v61 + 1) >> 60)
                  {
                    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
                  }

                  v62 = (v78 - __p) >> 3;
                  if (v62 <= v61 + 1)
                  {
                    v62 = v61 + 1;
                  }

                  if (v78 - __p >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v63 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v63 = v62;
                  }

                  if (v63)
                  {
                    std::__allocate_at_least[abi:ne200100]<std::allocator<boost::uuids::uuid>>(&__p, v63);
                  }

                  v64 = (16 * v61);
                  *v64 = *(v59 + 8);
                  v60 = (16 * v61 + 16);
                  v65 = v64 - (v77 - __p);
                  memcpy(v65, __p, v77 - __p);
                  v66 = __p;
                  __p = v65;
                  v77 = v60;
                  v78 = 0;
                  if (v66)
                  {
                    operator delete(v66);
                  }
                }

                else
                {
                  *v60 = *(v59 + 8);
                  v60 += 16;
                }

                v77 = v60;
                v59 += 88;
              }

              while (v59 != 88 * v52 + v32[8]);
            }
          }
        }

        else
        {
LABEL_43:
          if (onceToken_MicroLocation_Default != -1)
          {
            [ULServiceStore deleteOldestsServicesPerClientAboveMaxCount];
          }

          v45 = logObject_MicroLocation_Default;
          if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
          {
            v46 = *v38;
            LODWORD(v86.__r_.__value_.__l.__data_) = 134217984;
            *(v86.__r_.__value_.__r.__words + 4) = v46;
            _os_log_impl(&dword_258FE9000, v45, OS_LOG_TYPE_ERROR, "serviceType %llU not handled in delete old services per client", &v86, 0xCu);
          }
        }

        v47 = v32[1];
        if (v47)
        {
          do
          {
            v48 = v47;
            v47 = *v47;
          }

          while (v47);
        }

        else
        {
          do
          {
            v48 = v32[2];
            v49 = *v48 == v32;
            v32 = v48;
          }

          while (!v49);
        }

        v32 = v48;
      }

      while (v48 != v80);
      v69 = __p;
      if (__p == v77)
      {
        v67 = 1;
        if (!__p)
        {
          goto LABEL_95;
        }
      }

      else
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          [ULServiceStore deleteOldestsServicesPerClientAboveMaxCount];
        }

        v70 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(v86.__r_.__value_.__l.__data_) = 134217984;
          *(v86.__r_.__value_.__r.__words + 4) = (v77 - __p) >> 4;
          _os_log_impl(&dword_258FE9000, v70, OS_LOG_TYPE_DEFAULT, "Deleting total %ld service entries", &v86, 0xCu);
        }

        v73 = 0;
        v74 = 0;
        v75 = 0;
        std::vector<boost::uuids::uuid>::__init_with_size[abi:ne200100]<boost::uuids::uuid*,boost::uuids::uuid*>(&v73, __p, v77, (v77 - __p) >> 4);
        v67 = [(ULServiceStore *)self deleteAllServicesWithUUIDs:&v73];
        if (v73)
        {
          v74 = v73;
          operator delete(v73);
        }

        v69 = __p;
        if (!__p)
        {
          goto LABEL_95;
        }
      }

      v77 = v69;
      operator delete(v69);
    }

LABEL_95:
    std::__tree<std::__value_type<std::pair<std::string,unsigned long long>,std::vector<ULServiceDO>>,std::__map_value_compare<std::pair<std::string,unsigned long long>,std::__value_type<std::pair<std::string,unsigned long long>,std::vector<ULServiceDO>>,std::less<std::pair<std::string,unsigned long long>>,true>,std::allocator<std::__value_type<std::pair<std::string,unsigned long long>,std::vector<ULServiceDO>>>>::destroy(&v79, v80[0]);
    std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&v81, v82[0]);
    goto LABEL_96;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    [ULServiceStore deleteOldestsServicesPerClientAboveMaxCount];
  }

  v68 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v86.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_258FE9000, v68, OS_LOG_TYPE_DEFAULT, "Pre-Maintenance for services: no services found.", &v86, 2u);
  }

  v67 = 1;
LABEL_96:
  v86.__r_.__value_.__r.__words[0] = &v83;
  std::vector<ULServiceDO>::__destroy_vector::operator()[abi:ne200100](&v86);
  return v67;
}

- (BOOL)updateAllServicesWithMatchingServiceUUID:(uuid)d withNewServiceUUID:(uuid)iD
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:&dCopy];
  uUIDString = [v5 UUIDString];

  v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:&iDCopy];
  uUIDString2 = [v7 UUIDString];

  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %@", @"serviceUUID", uUIDString];
  v14 = @"serviceUUID";
  v15 = uUIDString2;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  LOBYTE(self) = [(ULStore *)self batchUpdateObjectsWithEntityName:v12 predicate:v9 propertiesToUpdate:v10];

  return self;
}

- (BOOL)updateAllServicesWithMatchingClientId:()basic_string<char withNewClientId:()std:(std::allocator<char>> *)var0 :char_traits<char>
{
  v4 = v3;
  v15[1] = *MEMORY[0x277D85DE8];
  if (*(&var0->var0.var1 + 23) < 0)
  {
    var0 = var0->var0.var1.var0;
  }

  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:var0];
  if (*(v4 + 23) < 0)
  {
    v4 = *v4;
  }

  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:v4];
  v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K CONTAINS %@", @"clientId", v6];
  v14 = @"clientId";
  v15[0] = v7;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [(ULStore *)self batchUpdateObjectsWithEntityName:v11 predicate:v8 propertiesToUpdate:v9];

  return v12;
}

- (id)fetchServiceManagedObjectWithUUID:(const uuid *)d withManagedObjectContext:(id)context
{
  contextCopy = context;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__23;
  v27 = __Block_byref_object_dispose__23;
  v28 = 0;
  v7 = objc_autoreleasePoolPush();
  v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:d];
  uUIDString = [v8 UUIDString];

  array = [MEMORY[0x277CBEB18] array];
  v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %@", @"serviceUUID", uUIDString];
  [array addObject:v11];

  v12 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"lastActiveTimestamp" ascending:0];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __77__ULServiceStore_fetchServiceManagedObjectWithUUID_withManagedObjectContext___block_invoke;
  v18[3] = &unk_2798D4840;
  v18[4] = self;
  v13 = array;
  v19 = v13;
  v20 = v12;
  v14 = contextCopy;
  v21 = v14;
  v22 = &v23;
  v15 = v12;
  [v14 performBlockAndWait:v18];

  objc_autoreleasePoolPop(v7);
  v16 = v24[5];
  _Block_object_dispose(&v23, 8);

  return v16;
}

void __77__ULServiceStore_fetchServiceManagedObjectWithUUID_withManagedObjectContext___block_invoke(void *a1)
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

- (void)deleteOldestsServicesPerClientAboveMaxCount
{
  v6 = a2;
  selfCopy = self;
  v239 = *MEMORY[0x277D85DE8];
  v230 = a2;
  selfCopy2 = self;
  while (1)
  {
    v8 = v6 - selfCopy;
    v9 = 0x2E8BA2E8BA2E8BA3 * (v6 - selfCopy);
    v10 = v9 - 2;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return;
      }

      if (v9 == 2)
      {
        v230 = v6 - 11;
        if (*(v6 - 8) >= selfCopy[3])
        {
          return;
        }

        v98 = &selfCopy2;
        v99 = &v230;
        goto LABEL_231;
      }

      goto LABEL_9;
    }

    if (v9 == 3)
    {
      *&v237 = selfCopy;
      *v236 = selfCopy + 11;
      *&v234[0] = v6 - 11;
      v102 = selfCopy[14];
      v103 = *(v6 - 8);
      if (v102 >= selfCopy[3])
      {
        if (v103 >= v102)
        {
          return;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULServiceDO *&,ULServiceDO *&>(v236, v234);
        v100 = *(*v236 + 24);
        v101 = *(v237 + 24);
LABEL_229:
        if (v100 >= v101)
        {
          return;
        }

        v98 = &v237;
        v99 = v236;
      }

      else
      {
        v98 = &v237;
        if (v103 >= v102)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULServiceDO *&,ULServiceDO *&>(&v237, v236);
          if (*(*&v234[0] + 24) >= *(*v236 + 24))
          {
            return;
          }

          v98 = v236;
        }

        v99 = v234;
      }

LABEL_231:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULServiceDO *&,ULServiceDO *&>(v98, v99);
      return;
    }

    if (v9 == 4)
    {
      v230 = v6 - 11;
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,-[ULServiceStore deleteOldestsServicesPerClientAboveMaxCount]::$_1 &,ULServiceDO *,0>(selfCopy, selfCopy + 11, selfCopy + 22, (v6 - 11));
      return;
    }

    if (v9 == 5)
    {
      break;
    }

LABEL_9:
    if (v8 <= 2111)
    {
      v104 = selfCopy + 11;
      v106 = selfCopy == v6 || v104 == v6;
      if (a4)
      {
        if (!v106)
        {
          v107 = 0;
          v108 = selfCopy;
          do
          {
            v109 = v104;
            if (v108[14] < v108[3])
            {
              v110 = *v104;
              *&v238 = v104[2];
              v237 = v110;
              v111 = v104[3];
              v112 = *(v108 + 15);
              *v234 = v108[16];
              *(v234 + 7) = *(v108 + 135);
              v113 = *(v108 + 143);
              v108[15] = 0.0;
              v108[16] = 0.0;
              v108[17] = 0.0;
              v114 = *(v108 + 18);
              v226 = *(v108 + 152);
              v115 = *(v108 + 153);
              *&v236[14] = *(v108 + 167);
              v221 = *(v108 + 175);
              v108[19] = 0.0;
              v108[20] = 0.0;
              v108[21] = 0.0;
              v116 = v107;
              *v236 = v115;
              while (1)
              {
                v117 = v116;
                v118 = selfCopy + v116;
                v119 = *(selfCopy + v116 + 16);
                *(v118 + 88) = *(selfCopy + v116);
                *(v118 + 104) = v119;
                if (*(selfCopy + v116 + 143) < 0)
                {
                  operator delete(*(v118 + 15));
                }

                *(v118 + 120) = *(v118 + 2);
                v120 = *(v118 + 6);
                v121 = *(v118 + 7);
                v118[55] = 0;
                v118[32] = 0;
                *(v118 + 17) = v120;
                *(v118 + 18) = v121;
                if (v118[175] < 0)
                {
                  operator delete(*(v118 + 19));
                }

                v122 = selfCopy + v117;
                *(v118 + 152) = *(selfCopy + v117 + 64);
                *(v118 + 21) = *(selfCopy + v117 + 80);
                v122[87] = 0;
                v122[64] = 0;
                if (!v117)
                {
                  break;
                }

                v116 = v117 - 88;
                if (v111 >= *(v122 - 8))
                {
                  v123 = (selfCopy + v117);
                  goto LABEL_154;
                }
              }

              v123 = selfCopy;
LABEL_154:
              v124 = v237;
              *(v123 + 2) = v238;
              *v123 = v124;
              v123[3] = v111;
              if (*(v123 + 55) < 0)
              {
                operator delete(*(v122 + 4));
              }

              *(v122 + 4) = v112;
              v125 = selfCopy + v117;
              v126 = *&v234[0];
              *(v125 + 47) = *(v234 + 7);
              *(v125 + 5) = v126;
              v122[55] = v113;
              *(v123 + 7) = v114;
              if (*(v123 + 87) < 0)
              {
                operator delete(*(v122 + 8));
              }

              v122[64] = v226;
              v127 = *v236;
              *(v125 + 79) = *&v236[14];
              *(v125 + 65) = v127;
              v122[87] = v221;
            }

            v104 = v109 + 11;
            v107 += 88;
            v108 = v109;
          }

          while (v109 + 11 != v6);
        }
      }

      else if (!v106)
      {
        v194 = selfCopy + 175;
        do
        {
          v195 = v104;
          if (selfCopy[14] < selfCopy[3])
          {
            v196 = *v104;
            *&v238 = v104[2];
            v237 = v196;
            v197 = v104[3];
            v198 = *(selfCopy + 15);
            *v234 = selfCopy[16];
            *(v234 + 7) = *(selfCopy + 135);
            v199 = *(selfCopy + 143);
            selfCopy[15] = 0.0;
            selfCopy[16] = 0.0;
            selfCopy[17] = 0.0;
            v200 = *(selfCopy + 18);
            v201 = *(selfCopy + 152);
            v202 = *(selfCopy + 153);
            *&v236[14] = *(selfCopy + 167);
            v203 = *(selfCopy + 175);
            selfCopy[19] = 0.0;
            selfCopy[20] = 0.0;
            selfCopy[21] = 0.0;
            v204 = v194;
            *v236 = v202;
            do
            {
              *(v204 - 87) = *(v204 - 175);
              *(v204 - 71) = *(v204 - 159);
              v205 = (v204 - 55);
              if (*(v204 - 32) < 0)
              {
                operator delete(*v205);
              }

              *v205 = *(v204 - 143);
              *(v204 - 39) = *(v204 - 127);
              *(v204 - 120) = 0;
              *(v204 - 143) = 0;
              *(v204 - 31) = *(v204 - 119);
              v206 = v204 - 23;
              if (*v204 < 0)
              {
                operator delete(*v206);
              }

              v207 = *(v204 - 95);
              *(v204 - 88) = 0;
              v204 -= 88;
              *(v206 + 2) = v207;
              *v206 = *(v204 - 23);
              *(v204 - 23) = 0;
            }

            while (v197 < *(v204 - 151));
            v208 = v237;
            *(v204 - 71) = v238;
            *(v204 - 87) = v208;
            *(v204 - 63) = v197;
            if (*(v204 - 32) < 0)
            {
              operator delete(*(v204 - 55));
              v210 = *v204;
              *(v204 - 55) = v198;
              v211 = *(v234 + 7);
              *(v204 - 47) = *&v234[0];
              *(v204 - 5) = v211;
              *(v204 - 32) = v199;
              *(v204 - 31) = v200;
              if (v210 < 0)
              {
                operator delete(*(v204 - 23));
              }
            }

            else
            {
              *(v204 - 55) = v198;
              v209 = *&v234[0];
              *(v204 - 5) = *(v234 + 7);
              *(v204 - 47) = v209;
              *(v204 - 32) = v199;
              *(v204 - 31) = v200;
            }

            *(v204 - 23) = v201;
            v212 = *v236;
            *(v204 - 1) = *&v236[14];
            *(v204 - 22) = v212;
            *v204 = v203;
          }

          v104 = v195 + 11;
          v194 += 88;
          selfCopy = v195;
        }

        while (v195 + 11 != v6);
      }

      return;
    }

    if (!a3)
    {
      if (selfCopy != v6)
      {
        v128 = v10 >> 1;
        v129 = v10 >> 1;
        do
        {
          v130 = v129;
          if (v128 >= v129)
          {
            v131 = (2 * v129) | 1;
            v132 = &selfCopy[11 * v131];
            if (2 * v130 + 2 < v9 && v132[3] < v132[14])
            {
              v132 += 11;
              v131 = 2 * v130 + 2;
            }

            v133 = &selfCopy[11 * v130];
            v134 = v133[3];
            if (v132[3] >= v134)
            {
              v135 = *v133;
              *&v238 = v133[2];
              v237 = v135;
              v136 = *(v133 + 5);
              v215 = *(v133 + 4);
              *(v234 + 7) = *(v133 + 47);
              *&v234[0] = v136;
              v137 = *(v133 + 55);
              v133[4] = 0.0;
              v133[5] = 0.0;
              v133[6] = 0.0;
              v213 = *(v133 + 7);
              v227 = *(v133 + 64);
              v138 = *(v133 + 79);
              *v236 = *(v133 + 65);
              *&v236[14] = v138;
              v217 = v137;
              v222 = *(v133 + 87);
              v133[8] = 0.0;
              v133[9] = 0.0;
              v133[10] = 0.0;
              do
              {
                v139 = v132;
                v140 = *(v132 + 1);
                *v133 = *v132;
                *(v133 + 1) = v140;
                if (*(v133 + 55) < 0)
                {
                  operator delete(*(v133 + 4));
                }

                v141 = *(v139 + 2);
                v133[6] = v139[6];
                *(v133 + 2) = v141;
                *(v139 + 55) = 0;
                *(v139 + 32) = 0;
                v133[7] = v139[7];
                if (*(v133 + 87) < 0)
                {
                  operator delete(*(v133 + 8));
                }

                v142 = *(v139 + 4);
                v133[10] = v139[10];
                *(v133 + 4) = v142;
                *(v139 + 87) = 0;
                *(v139 + 64) = 0;
                if (v128 < v131)
                {
                  break;
                }

                v143 = 2 * v131;
                v131 = (2 * v131) | 1;
                v132 = &selfCopy[11 * v131];
                v144 = v143 + 2;
                if (v144 < v9 && v132[3] < v132[14])
                {
                  v132 += 11;
                  v131 = v144;
                }

                v133 = v139;
              }

              while (v132[3] >= v134);
              v145 = v237;
              *(v139 + 2) = v238;
              *v139 = v145;
              v139[3] = v134;
              if (*(v139 + 55) < 0)
              {
                operator delete(*(v139 + 4));
                v149 = *(v139 + 87);
                v150 = *&v234[0];
                *(v139 + 4) = v215;
                *(v139 + 5) = v150;
                *(v139 + 47) = *(v234 + 7);
                v147 = v222;
                *(v139 + 55) = v217;
                *(v139 + 7) = v213;
                v148 = v227;
                if (v149 < 0)
                {
                  operator delete(*(v139 + 8));
                }
              }

              else
              {
                v146 = *&v234[0];
                *(v139 + 4) = v215;
                *(v139 + 5) = v146;
                *(v139 + 47) = *(v234 + 7);
                v147 = v222;
                *(v139 + 55) = v217;
                *(v139 + 7) = v213;
                v148 = v227;
              }

              *(v139 + 64) = v148;
              *(v139 + 65) = *v236;
              *(v139 + 79) = *&v236[14];
              *(v139 + 87) = v147;
            }
          }

          v129 = v130 - 1;
        }

        while (v130);
        v151 = 0x2E8BA2E8BA2E8BA3 * (v8 >> 3);
        do
        {
          v152 = 0;
          v153 = v6;
          v154 = *(selfCopy + 1);
          v237 = *selfCopy;
          v238 = v154;
          v155 = *(selfCopy + 4);
          *v233 = selfCopy[5];
          *&v233[7] = *(selfCopy + 47);
          v218 = *(selfCopy + 55);
          selfCopy[5] = 0.0;
          selfCopy[6] = 0.0;
          selfCopy[4] = 0.0;
          v156 = *(selfCopy + 7);
          v223 = *(selfCopy + 8);
          v157 = *(selfCopy + 9);
          *&v232[7] = *(selfCopy + 79);
          *v232 = v157;
          v228 = *(selfCopy + 87);
          selfCopy[8] = 0.0;
          selfCopy[9] = 0.0;
          v158 = selfCopy;
          selfCopy[10] = 0.0;
          do
          {
            v159 = &v158[11 * v152];
            v160 = v159 + 11;
            if (2 * v152 + 2 >= v151)
            {
              v152 = (2 * v152) | 1;
            }

            else
            {
              v161 = v159[14];
              v162 = v159[25];
              v163 = v159 + 22;
              if (v161 >= v162)
              {
                v152 = (2 * v152) | 1;
              }

              else
              {
                v160 = v163;
                v152 = 2 * v152 + 2;
              }
            }

            v164 = *(v160 + 1);
            *v158 = *v160;
            *(v158 + 1) = v164;
            if (*(v158 + 55) < 0)
            {
              operator delete(*(v158 + 4));
            }

            v165 = *(v160 + 2);
            v158[6] = v160[6];
            *(v158 + 2) = v165;
            *(v160 + 55) = 0;
            *(v160 + 32) = 0;
            v158[7] = v160[7];
            if (*(v158 + 87) < 0)
            {
              operator delete(*(v158 + 8));
            }

            v166 = *(v160 + 4);
            v158[10] = v160[10];
            *(v158 + 4) = v166;
            *(v160 + 87) = 0;
            *(v160 + 64) = 0;
            v158 = v160;
          }

          while (v152 <= ((v151 - 2) >> 1));
          v6 -= 11;
          if (v160 == v153 - 11)
          {
            v170 = v238;
            *v160 = v237;
            *(v160 + 1) = v170;
            if (*(v160 + 55) < 0)
            {
              operator delete(*(v160 + 4));
              v188 = *(v160 + 87);
              v189 = *v233;
              *(v160 + 4) = v155;
              *(v160 + 5) = v189;
              *(v160 + 47) = *&v233[7];
              *(v160 + 55) = v218;
              *(v160 + 7) = v156;
              if (v188 < 0)
              {
                operator delete(*(v160 + 8));
              }
            }

            else
            {
              v171 = *v233;
              *(v160 + 4) = v155;
              *(v160 + 5) = v171;
              *(v160 + 47) = *&v233[7];
              *(v160 + 55) = v218;
              *(v160 + 7) = v156;
            }

            v190 = *v232;
            *(v160 + 8) = v223;
            *(v160 + 9) = v190;
            *(v160 + 79) = *&v232[7];
            *(v160 + 87) = v228;
          }

          else
          {
            v167 = *(v153 - 9);
            *v160 = *v6;
            *(v160 + 1) = v167;
            if (*(v160 + 55) < 0)
            {
              operator delete(*(v160 + 4));
            }

            v168 = *(v153 - 7);
            v160[6] = *(v153 - 5);
            *(v160 + 2) = v168;
            *(v153 - 33) = 0;
            *(v153 - 56) = 0;
            v160[7] = *(v153 - 4);
            if (*(v160 + 87) < 0)
            {
              operator delete(*(v160 + 8));
            }

            v169 = *(v153 - 3);
            v160[10] = *(v153 - 1);
            *(v160 + 4) = v169;
            *(v153 - 1) = 0;
            *(v153 - 24) = 0;
            *v6 = v237;
            *(v153 - 9) = v238;
            if (*(v153 - 33) < 0)
            {
              operator delete(*(v153 - 7));
              v172 = *(v153 - 1);
              *(v153 - 7) = v155;
              *(v153 - 6) = *v233;
              *(v153 - 41) = *&v233[7];
              *(v153 - 33) = v218;
              *(v153 - 4) = v156;
              if (v172 < 0)
              {
                operator delete(*(v153 - 3));
              }
            }

            else
            {
              *(v153 - 7) = v155;
              *(v153 - 6) = *v233;
              *(v153 - 41) = *&v233[7];
              *(v153 - 33) = v218;
              *(v153 - 4) = v156;
            }

            v173 = *v232;
            *(v153 - 3) = v223;
            *(v153 - 2) = v173;
            *(v153 - 9) = *&v232[7];
            *(v153 - 1) = v228;
            v174 = (v160 + 11) - selfCopy;
            if (v174 >= 89)
            {
              v175 = (0x2E8BA2E8BA2E8BA3 * (v174 >> 3) - 2) >> 1;
              v176 = &selfCopy[11 * v175];
              v177 = v160[3];
              if (v176[3] < v177)
              {
                v178 = *v160;
                *&v236[16] = v160[2];
                *v236 = v178;
                v179 = *(v160 + 4);
                *v235 = v160[5];
                *&v235[7] = *(v160 + 47);
                v180 = *(v160 + 55);
                v160[5] = 0.0;
                v160[6] = 0.0;
                v160[4] = 0.0;
                v181 = *(v160 + 7);
                v229 = *(v160 + 64);
                *(v234 + 14) = *(v160 + 79);
                v234[0] = *(v160 + 65);
                v224 = *(v160 + 87);
                v160[8] = 0.0;
                v160[9] = 0.0;
                v160[10] = 0.0;
                do
                {
                  v182 = v176;
                  v183 = *(v176 + 1);
                  *v160 = *v176;
                  *(v160 + 1) = v183;
                  if (*(v160 + 55) < 0)
                  {
                    operator delete(*(v160 + 4));
                  }

                  v184 = *(v182 + 2);
                  v160[6] = v182[6];
                  *(v160 + 2) = v184;
                  *(v182 + 55) = 0;
                  *(v182 + 32) = 0;
                  v160[7] = v182[7];
                  if (*(v160 + 87) < 0)
                  {
                    operator delete(*(v160 + 8));
                  }

                  v185 = *(v182 + 4);
                  v160[10] = v182[10];
                  *(v160 + 4) = v185;
                  *(v182 + 87) = 0;
                  *(v182 + 64) = 0;
                  if (!v175)
                  {
                    break;
                  }

                  v175 = (v175 - 1) >> 1;
                  v176 = &selfCopy[11 * v175];
                  v160 = v182;
                }

                while (v176[3] < v177);
                v186 = *v236;
                v182[2] = *&v236[16];
                *v182 = v186;
                v182[3] = v177;
                if (*(v182 + 55) < 0)
                {
                  operator delete(*(v182 + 4));
                  v191 = *(v182 + 87);
                  v192 = *v235;
                  *(v182 + 4) = v179;
                  *(v182 + 5) = v192;
                  *(v182 + 47) = *&v235[7];
                  *(v182 + 55) = v180;
                  *(v182 + 7) = v181;
                  if (v191 < 0)
                  {
                    operator delete(*(v182 + 8));
                  }
                }

                else
                {
                  v187 = *v235;
                  *(v182 + 4) = v179;
                  *(v182 + 5) = v187;
                  *(v182 + 47) = *&v235[7];
                  *(v182 + 55) = v180;
                  *(v182 + 7) = v181;
                }

                *(v182 + 64) = v229;
                *(v182 + 65) = v234[0];
                *(v182 + 79) = *(v234 + 14);
                *(v182 + 87) = v224;
              }
            }
          }
        }

        while (v151-- > 2);
      }

      return;
    }

    v11 = v9 >> 1;
    v12 = &selfCopy[11 * (v9 >> 1)];
    if (v8 >= 0x2C01)
    {
      *&v237 = selfCopy;
      *v236 = v12;
      *&v234[0] = v6 - 11;
      v13 = v12[3];
      v14 = *(v6 - 8);
      if (v13 >= selfCopy[3])
      {
        if (v14 >= v13 || (std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULServiceDO *&,ULServiceDO *&>(v236, v234), *(*v236 + 24) >= *(v237 + 24)))
        {
LABEL_26:
          v21 = &selfCopy[11 * v11];
          v22 = v21 - 11;
          *&v237 = selfCopy + 11;
          *v236 = v21 - 11;
          *&v234[0] = v6 - 22;
          v23 = *(v21 - 8);
          v24 = *(v6 - 19);
          if (v23 >= selfCopy[14])
          {
            if (v24 >= v23 || (std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULServiceDO *&,ULServiceDO *&>(v236, v234), *(*v236 + 24) >= *(v237 + 24)))
            {
LABEL_39:
              v27 = &selfCopy[11 * v11];
              v28 = v27 + 11;
              *&v237 = selfCopy + 22;
              *v236 = v27 + 11;
              *&v234[0] = v6 - 33;
              v29 = v27[14];
              v30 = *(v6 - 30);
              if (v29 >= selfCopy[25])
              {
                if (v30 >= v29 || (std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULServiceDO *&,ULServiceDO *&>(v236, v234), *(*v236 + 24) >= *(v237 + 24)))
                {
LABEL_48:
                  *&v237 = v22;
                  *v236 = v12;
                  *&v234[0] = v28;
                  v33 = v12[3];
                  v34 = v28[3];
                  if (v33 >= v22[3])
                  {
                    if (v34 >= v33)
                    {
                      goto LABEL_57;
                    }

                    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULServiceDO *&,ULServiceDO *&>(v236, v234);
                    if (*(*v236 + 24) >= *(v237 + 24))
                    {
                      goto LABEL_57;
                    }

                    v35 = &v237;
                    v36 = v236;
                  }

                  else
                  {
                    v35 = &v237;
                    if (v34 >= v33)
                    {
                      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULServiceDO *&,ULServiceDO *&>(&v237, v236);
                      if (*(*&v234[0] + 24) >= *(*v236 + 24))
                      {
LABEL_57:
                        v37 = *(selfCopy + 1);
                        v237 = *selfCopy;
                        v238 = v37;
                        v38 = *(selfCopy + 4);
                        *v236 = selfCopy[5];
                        *&v236[7] = *(selfCopy + 47);
                        v39 = *(selfCopy + 55);
                        selfCopy[5] = 0.0;
                        selfCopy[6] = 0.0;
                        selfCopy[4] = 0.0;
                        v40 = *(selfCopy + 7);
                        v41 = *(selfCopy + 8);
                        v42 = *(selfCopy + 9);
                        *(v234 + 7) = *(selfCopy + 79);
                        *&v234[0] = v42;
                        LOBYTE(v42) = *(selfCopy + 87);
                        selfCopy[8] = 0.0;
                        selfCopy[9] = 0.0;
                        selfCopy[10] = 0.0;
                        v43 = *(v12 + 1);
                        *selfCopy = *v12;
                        *(selfCopy + 1) = v43;
                        v44 = *(v12 + 6);
                        v45 = *(v12 + 7);
                        *(selfCopy + 2) = *(v12 + 2);
                        *(selfCopy + 6) = v44;
                        *(selfCopy + 7) = v45;
                        *(v12 + 55) = 0;
                        *(v12 + 32) = 0;
                        v46 = *(v12 + 4);
                        selfCopy[10] = v12[10];
                        *(selfCopy + 4) = v46;
                        *(v12 + 87) = 0;
                        *(v12 + 64) = 0;
                        v47 = v238;
                        *v12 = v237;
                        *(v12 + 1) = v47;
                        *(v12 + 4) = v38;
                        v48 = *v236;
                        *(v12 + 47) = *&v236[7];
                        *(v12 + 5) = v48;
                        *(v12 + 55) = v39;
                        *(v12 + 7) = v40;
                        *(v12 + 8) = v41;
                        v49 = *(v234 + 7);
                        v12[9] = *v234;
                        *(v12 + 79) = v49;
                        *(v12 + 87) = v42;
                        goto LABEL_58;
                      }

                      v35 = v236;
                    }

                    v36 = v234;
                  }

                  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULServiceDO *&,ULServiceDO *&>(v35, v36);
                  goto LABEL_57;
                }

                v31 = &v237;
                v32 = v236;
              }

              else
              {
                v31 = &v237;
                if (v30 >= v29)
                {
                  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULServiceDO *&,ULServiceDO *&>(&v237, v236);
                  if (*(*&v234[0] + 24) >= *(*v236 + 24))
                  {
                    goto LABEL_48;
                  }

                  v31 = v236;
                }

                v32 = v234;
              }

              std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULServiceDO *&,ULServiceDO *&>(v31, v32);
              goto LABEL_48;
            }

            v25 = &v237;
            v26 = v236;
          }

          else
          {
            v25 = &v237;
            if (v24 >= v23)
            {
              std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULServiceDO *&,ULServiceDO *&>(&v237, v236);
              if (*(*&v234[0] + 24) >= *(*v236 + 24))
              {
                goto LABEL_39;
              }

              v25 = v236;
            }

            v26 = v234;
          }

          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULServiceDO *&,ULServiceDO *&>(v25, v26);
          goto LABEL_39;
        }

        v15 = &v237;
        v16 = v236;
      }

      else
      {
        v15 = &v237;
        if (v14 >= v13)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULServiceDO *&,ULServiceDO *&>(&v237, v236);
          if (*(*&v234[0] + 24) >= *(*v236 + 24))
          {
            goto LABEL_26;
          }

          v15 = v236;
        }

        v16 = v234;
      }

      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULServiceDO *&,ULServiceDO *&>(v15, v16);
      goto LABEL_26;
    }

    *&v237 = v12;
    *v236 = selfCopy;
    *&v234[0] = v6 - 11;
    v17 = selfCopy[3];
    v18 = *(v6 - 8);
    if (v17 < v12[3])
    {
      v19 = &v237;
      if (v18 >= v17)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULServiceDO *&,ULServiceDO *&>(&v237, v236);
        if (*(*&v234[0] + 24) >= *(*v236 + 24))
        {
          goto LABEL_58;
        }

        v19 = v236;
      }

      v20 = v234;
      goto LABEL_34;
    }

    if (v18 < v17)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULServiceDO *&,ULServiceDO *&>(v236, v234);
      if (*(*v236 + 24) < *(v237 + 24))
      {
        v19 = &v237;
        v20 = v236;
LABEL_34:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULServiceDO *&,ULServiceDO *&>(v19, v20);
      }
    }

LABEL_58:
    v225 = a3 - 1;
    if (a4)
    {
      v219 = a4;
      v50 = selfCopy[3];
    }

    else
    {
      v50 = selfCopy[3];
      if (*(selfCopy - 8) >= v50)
      {
        *v233 = v6;
        v63 = *selfCopy;
        *&v238 = selfCopy[2];
        v237 = v63;
        v65 = (selfCopy + 4);
        v64 = *(selfCopy + 4);
        *v234 = selfCopy[5];
        *(v234 + 7) = *(selfCopy + 47);
        v66 = *(selfCopy + 55);
        selfCopy[4] = 0.0;
        v67 = (selfCopy + 8);
        v220 = *(selfCopy + 64);
        selfCopy[5] = 0.0;
        selfCopy[6] = 0.0;
        *&v236[14] = *(selfCopy + 79);
        *v236 = *(selfCopy + 65);
        v68 = *(selfCopy + 87);
        selfCopy[8] = 0.0;
        selfCopy[9] = 0.0;
        selfCopy[10] = 0.0;
        v69 = *(selfCopy + 7);
        if (v50 >= *(v6 - 8))
        {
          v85 = selfCopy + 11;
          do
          {
            v71 = v85;
            if (v85 >= v6)
            {
              break;
            }

            v86 = v85[3];
            v85 += 11;
          }

          while (v50 >= v86);
        }

        else
        {
          v70 = selfCopy;
          do
          {
            v71 = (v70 + 11);
            v72 = v70[14];
            v70 += 11;
          }

          while (v50 >= v72);
        }

        *v235 = v71;
        if (v71 < v6)
        {
          do
          {
            v87 = *(v6 - 8);
            v6 -= 11;
          }

          while (v50 < v87);
          *v233 = v6;
        }

        if (v71 < v6)
        {
          do
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULServiceDO *&,ULServiceDO *&>(v235, v233);
            v71 = *v235;
            do
            {
              v88 = *(v71 + 112);
              v71 += 88;
            }

            while (v50 >= v88);
            *v235 = v71;
            v89 = *v233;
            do
            {
              v90 = *(v89 - 64);
              v89 -= 88;
            }

            while (v50 < v90);
            *v233 = v89;
          }

          while (v71 < v89);
        }

        v91 = (v71 - 88);
        if ((v71 - 88) != selfCopy)
        {
          v92 = *(v71 - 72);
          *selfCopy = *v91;
          *(selfCopy + 1) = v92;
          if (*(selfCopy + 55) < 0)
          {
            operator delete(*v65);
          }

          v93 = *(v71 - 56);
          selfCopy[6] = *(v71 - 40);
          *v65 = v93;
          *(v71 - 33) = 0;
          *(v71 - 56) = 0;
          selfCopy[7] = *(v71 - 32);
          if (*(selfCopy + 87) < 0)
          {
            operator delete(*v67);
          }

          v94 = *(v71 - 24);
          selfCopy[10] = *(v71 - 8);
          *v67 = v94;
          *(v71 - 1) = 0;
          *(v71 - 24) = 0;
        }

        v95 = v237;
        *(v71 - 72) = v238;
        *v91 = v95;
        *(v71 - 64) = v50;
        if (*(v71 - 33) < 0)
        {
          operator delete(*(v71 - 56));
        }

        *(v71 - 56) = v64;
        v96 = *&v234[0];
        *(v71 - 41) = *(v234 + 7);
        *(v71 - 48) = v96;
        *(v71 - 33) = v66;
        *(v71 - 32) = v69;
        if (*(v71 - 1) < 0)
        {
          operator delete(*(v71 - 24));
        }

        a4 = 0;
        *(v71 - 24) = v220;
        v97 = *v236;
        *(v71 - 9) = *&v236[14];
        *(v71 - 23) = v97;
        *(v71 - 1) = v68;
        v73 = *v235;
        selfCopy2 = *v235;
        a3 = v225;
        goto LABEL_122;
      }

      v219 = a4;
    }

    v51 = 0;
    v52 = *selfCopy;
    *&v238 = selfCopy[2];
    v237 = v52;
    v53 = (selfCopy + 4);
    v214 = *(selfCopy + 4);
    *v234 = selfCopy[5];
    *(v234 + 7) = *(selfCopy + 47);
    v54 = *(selfCopy + 55);
    selfCopy[4] = 0.0;
    selfCopy[5] = 0.0;
    selfCopy[6] = 0.0;
    v55 = *(selfCopy + 7);
    v56 = (selfCopy + 8);
    v216 = *(selfCopy + 64);
    *&v236[14] = *(selfCopy + 79);
    *v236 = *(selfCopy + 65);
    v57 = *(selfCopy + 87);
    selfCopy[8] = 0.0;
    selfCopy[9] = 0.0;
    selfCopy[10] = 0.0;
    do
    {
      v58 = selfCopy[v51 + 14];
      v51 += 11;
    }

    while (v58 < v50);
    v59 = &selfCopy[v51];
    *v235 = &selfCopy[v51];
    if (v51 == 11)
    {
      while (v59 < v6)
      {
        v60 = v6 - 11;
        v62 = *(v6 - 8);
        v6 -= 11;
        if (v62 < v50)
        {
          goto LABEL_75;
        }
      }

      v60 = v6;
    }

    else
    {
      do
      {
        v60 = v6 - 11;
        v61 = *(v6 - 8);
        v6 -= 11;
      }

      while (v61 >= v50);
    }

LABEL_75:
    *v233 = v60;
    v73 = &selfCopy[v51];
    if (v59 < v60)
    {
      do
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULServiceDO *&,ULServiceDO *&>(v235, v233);
        v73 = *v235;
        do
        {
          v74 = v73[14];
          v73 += 11;
        }

        while (v74 < v50);
        *v235 = v73;
        v75 = *v233;
        do
        {
          v76 = *(v75 - 64);
          v75 -= 88;
        }

        while (v76 >= v50);
        *v233 = v75;
      }

      while (v73 < v75);
    }

    v77 = v73 - 11;
    if (v73 - 11 != selfCopy)
    {
      v78 = *(v73 - 9);
      *selfCopy = *v77;
      *(selfCopy + 1) = v78;
      if (*(selfCopy + 55) < 0)
      {
        operator delete(*v53);
      }

      v79 = *(v73 - 7);
      selfCopy[6] = *(v73 - 5);
      *v53 = v79;
      *(v73 - 33) = 0;
      *(v73 - 56) = 0;
      selfCopy[7] = *(v73 - 4);
      if (*(selfCopy + 87) < 0)
      {
        operator delete(*v56);
      }

      v80 = *(v73 - 3);
      selfCopy[10] = *(v73 - 1);
      *v56 = v80;
      *(v73 - 1) = 0;
      *(v73 - 24) = 0;
    }

    v81 = v237;
    *(v73 - 9) = v238;
    *v77 = v81;
    *(v73 - 8) = v50;
    if (*(v73 - 33) < 0)
    {
      operator delete(*(v73 - 7));
    }

    *(v73 - 7) = v214;
    v82 = *&v234[0];
    *(v73 - 41) = *(v234 + 7);
    *(v73 - 6) = v82;
    *(v73 - 33) = v54;
    *(v73 - 4) = v55;
    a3 = v225;
    if (*(v73 - 1) < 0)
    {
      operator delete(*(v73 - 3));
    }

    a4 = v219;
    *(v73 - 24) = v216;
    v83 = *v236;
    *(v73 - 9) = *&v236[14];
    *(v73 - 23) = v83;
    *(v73 - 1) = v57;
    if (v59 < v60)
    {
      goto LABEL_92;
    }

    v84 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[ULServiceStore deleteOldestsServicesPerClientAboveMaxCount]::$_1 &,ULServiceDO *>(selfCopy2, v73 - 11);
    if (!std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[ULServiceStore deleteOldestsServicesPerClientAboveMaxCount]::$_1 &,ULServiceDO *>(v73, v230))
    {
      if (!v84)
      {
LABEL_92:
        std::__introsort<std::_ClassicAlgPolicy,[ULServiceStore deleteOldestsServicesPerClientAboveMaxCount]::$_1 &,ULServiceDO *,false>(selfCopy2, v73 - 11, v225, v219 & 1);
        a4 = 0;
      }

      selfCopy2 = v73;
      goto LABEL_122;
    }

    if (v84)
    {
      return;
    }

    v230 = v73 - 11;
    v73 = selfCopy2;
LABEL_122:
    v6 = v230;
    selfCopy = v73;
  }

  v230 = v6 - 11;
  *&v237 = selfCopy;
  *v236 = selfCopy + 11;
  *&v234[0] = selfCopy + 22;
  *v235 = selfCopy + 33;
  *v233 = v6 - 11;
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,-[ULServiceStore deleteOldestsServicesPerClientAboveMaxCount]::$_1 &,ULServiceDO *,0>(selfCopy, selfCopy + 11, selfCopy + 22, (selfCopy + 33));
  if (*(v6 - 8) < selfCopy[36])
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULServiceDO *&,ULServiceDO *&>(v235, v233);
    if (*(*v235 + 24) < selfCopy[25])
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULServiceDO *&,ULServiceDO *&>(v234, v235);
      if (*(*&v234[0] + 24) < selfCopy[14])
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULServiceDO *&,ULServiceDO *&>(v236, v234);
        v100 = *(*v236 + 24);
        v101 = selfCopy[3];
        goto LABEL_229;
      }
    }
  }
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
  v4 = [ULServiceMO createFromDO:a2 inManagedObjectContext:managedObjectContext];

  return v4;
}

@end