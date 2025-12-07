@interface ULMeasurementStore
+ (unsigned)maxEntriesInTable;
- (BOOL)batchTransferRecordsUsingBatchSize:(unint64_t)size andLimit:(unint64_t)limit usingDistinctRecords:(BOOL)records intoTargetStore:(id)store;
- (BOOL)deleteMeasurementsFromRecordingUUIDs:(const void *)ds;
- (BOOL)deleteRecordsOlderThan:(double)than orNewerThan:(double)newerThan;
- (BOOL)insertDataObjects:(const void *)objects;
- (id)insertDataObjects:;
- (uint64_t)insertDataObjects:;
- (unsigned)numLocalizationScansFromTime:(double)time toTime:(double)toTime;
- (unsigned)numRecordingScansFromTime:(double)time toTime:(double)toTime;
- (vector<ULMeasurementDO,)fetchAllLocalizingMeasurementsWithLimit:(ULMeasurementStore *)self;
- (vector<ULMeasurementDO,)fetchLearningMeasurementsAtLoiGroupId:(ULMeasurementStore *)self fromTime:(SEL)time toTime:(const uuid *)toTime;
- (vector<ULMeasurementDO,)fetchMeasurementsForRecordingUUIDs:(ULMeasurementStore *)self;
@end

@implementation ULMeasurementStore

+ (unsigned)maxEntriesInTable
{
  v2 = +[ULDefaultsSingleton shared];
  defaultsDictionary = [v2 defaultsDictionary];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMeasurementTableMaxRows"];
  v5 = [defaultsDictionary objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntValue = [v5 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = [&unk_286A717F0 unsignedIntValue];
  }

  v7 = unsignedIntValue;

  return v7;
}

- (BOOL)insertDataObjects:(const void *)objects
{
  v6[4] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v6[0] = &unk_286A55C60;
  v6[1] = &selfCopy;
  v6[3] = v6;
  inserted = ULDBUtils::insertDataObjects<ULMeasurementDO,ULMeasurementMO_deprecated>(self, objects, v6);
  std::__function::__value_func<ULMeasurementMO_deprecated * ()(ULMeasurementDO const&)>::~__value_func[abi:ne200100](v6);
  return inserted;
}

- (BOOL)deleteRecordsOlderThan:(double)than orNewerThan:(double)newerThan
{
  v34 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    [ULMeasurementStore deleteRecordsOlderThan:orNewerThan:];
  }

  v7 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    *buf = 136315138;
    uTF8String = [v9 UTF8String];
    _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_DEFAULT, "Deleting old records for entity: %s", buf, 0xCu);
  }

  array = [MEMORY[0x277CBEB18] array];
  dbStore = [(ULStore *)self dbStore];
  v12 = (*(dbStore->var0 + 12))(dbStore);
  v13 = [v12 getRecordingUUIDsOlderThan:than orNewerThan:newerThan];

  v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"recordingUUID", v13];
  [array addObject:v14];

  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v17 = [(ULStore *)self batchDeleteObjectsWithEntityName:v16 byAndPredicates:array sortDescriptors:0 andLimit:0];

  array2 = [MEMORY[0x277CBEB18] array];
  v19 = MEMORY[0x277CCAC30];
  v20 = [MEMORY[0x277CCABB0] numberWithDouble:than];
  v21 = [v19 predicateWithFormat:@"%K < %@", @"scanCFTimestamp", v20];
  [array2 addObject:v21];

  v22 = +[ULDefaultsSingleton shared];
  defaultsDictionary = [v22 defaultsDictionary];

  v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMeasurementTableMaxOldEntriesToDelete"];
  v25 = [defaultsDictionary objectForKey:v24];
  if (v25 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntValue = [v25 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = [&unk_286A71808 unsignedIntValue];
  }

  v27 = unsignedIntValue;

  v28 = objc_opt_class();
  v29 = NSStringFromClass(v28);
  v30 = [(ULStore *)self batchDeleteObjectsWithEntityName:v29 byAndPredicates:array2 sortDescriptors:0 andLimit:v27];

  return v17 && v30;
}

- (BOOL)deleteMeasurementsFromRecordingUUIDs:(const void *)ds
{
  if (*ds == *(ds + 1))
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULMeasurementStore deleteRecordsOlderThan:orNewerThan:];
    }

    v12 = logObject_MicroLocation_Default;
    v11 = 0;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v12, OS_LOG_TYPE_DEFAULT, "#Warning No UUIDs are passed in to delete measurements entries", buf, 2u);
      return 0;
    }
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    array = [MEMORY[0x277CBEB18] array];
    v7 = ULDBUtils::NSStringArrayFromBoostUUIDs(ds);
    v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"recordingUUID", v7];
    [array addObject:v8];

    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [(ULStore *)self batchDeleteObjectsWithEntityName:v10 byAndPredicates:array sortDescriptors:0 andLimit:0];

    objc_autoreleasePoolPop(v5);
  }

  return v11;
}

- (vector<ULMeasurementDO,)fetchMeasurementsForRecordingUUIDs:(ULMeasurementStore *)self
{
  v16[1] = *MEMORY[0x277D85DE8];
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  v7 = objc_autoreleasePoolPush();
  ULSettings::get<ULSettings::DatabaseSelectionLimit>();
  v8 = ULDBUtils::NSStringArrayFromBoostUUIDs(a4);
  array = [MEMORY[0x277CBEB18] array];
  v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"recordingUUID", v8];
  [array addObject:v10];

  v11 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"scanCFTimestamp" ascending:0];
  v16[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  objc_msgSend__fetchMeasurementEntriesByAndPredicates_sortDescriptors_andLimit_(self);
  std::vector<ULMeasurementDO>::__vdeallocate(retstr);
  *retstr = v14;
  memset(&v14, 0, sizeof(v14));
  v15 = &v14;
  std::vector<ULMeasurementDO>::__destroy_vector::operator()[abi:ne200100](&v15);

  objc_autoreleasePoolPop(v7);
  return result;
}

- (vector<ULMeasurementDO,)fetchLearningMeasurementsAtLoiGroupId:(ULMeasurementStore *)self fromTime:(SEL)time toTime:(const uuid *)toTime
{
  v23 = *MEMORY[0x277D85DE8];
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  v11 = objc_autoreleasePoolPush();
  ULSettings::get<ULSettings::DatabaseSelectionLimit>();
  array = [MEMORY[0x277CBEB18] array];
  dbStore = [(ULStore *)self dbStore];
  v14 = (*(dbStore->var0 + 12))(dbStore);
  *&v22.var0 = *toTime;
  LOBYTE(v22.var2) = 1;
  v15 = [v14 getRecordingUUIDsForRecordingEventActionsAtLoiGroupId:&v22 fromTime:*&a5 toTime:1 withLimit:{*&a6, 1, 0}];

  v16 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"recordingUUID", v15];
  [array addObject:v16];

  v17 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"scanCFTimestamp" ascending:0];
  v21 = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
  objc_msgSend__fetchMeasurementEntriesByAndPredicates_sortDescriptors_andLimit_(self);
  std::vector<ULMeasurementDO>::__vdeallocate(retstr);
  *retstr = v22;
  memset(&v22, 0, sizeof(v22));
  v20 = &v22;
  std::vector<ULMeasurementDO>::__destroy_vector::operator()[abi:ne200100](&v20);

  objc_autoreleasePoolPop(v11);
  return result;
}

- (vector<ULMeasurementDO,)fetchAllLocalizingMeasurementsWithLimit:(ULMeasurementStore *)self
{
  v17[1] = *MEMORY[0x277D85DE8];
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  v6 = objc_autoreleasePoolPush();
  array = [MEMORY[0x277CBEB18] array];
  dbStore = [(ULStore *)self dbStore];
  v9 = (*(dbStore->var0 + 12))(dbStore);
  v10 = [v9 getRecordingUUIDsForLocalizationActionsFromTime:0 toTime:{0, 0, 0}];

  v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"recordingUUID", v10];
  [array addObject:v11];

  v12 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"scanCFTimestamp" ascending:0];
  v17[0] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  objc_msgSend__fetchMeasurementEntriesByAndPredicates_sortDescriptors_andLimit_(self);
  std::vector<ULMeasurementDO>::__vdeallocate(retstr);
  *retstr = v15;
  memset(&v15, 0, sizeof(v15));
  v16 = &v15;
  std::vector<ULMeasurementDO>::__destroy_vector::operator()[abi:ne200100](&v16);

  objc_autoreleasePoolPop(v6);
  return result;
}

- (unsigned)numRecordingScansFromTime:(double)time toTime:(double)toTime
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = objc_autoreleasePoolPush();
  array = [MEMORY[0x277CBEB18] array];
  dbStore = [(ULStore *)self dbStore];
  v10 = (*(dbStore->var0 + 12))(dbStore);
  v20[0] = 0;
  v20[16] = 0;
  v11 = [v10 getRecordingUUIDsForRecordingEventActionsAtLoiGroupId:v20 fromTime:*&time toTime:1 withLimit:{*&toTime, 1, 0}];

  v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"recordingUUID", v11];
  [array addObject:v12];

  v13 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"scanMCTimestamp" ascending:0];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v19 = v13;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
  v17 = [(ULStore *)self fetchPropertyForEntityName:v15 propertyToFetch:@"scanMCTimestamp" distinctResults:1 byAndPredicates:array sortDescriptors:v16 andLimit:0];

  objc_autoreleasePoolPop(v7);
  LODWORD(array) = [v17 count];

  return array;
}

- (unsigned)numLocalizationScansFromTime:(double)time toTime:(double)toTime
{
  v19[1] = *MEMORY[0x277D85DE8];
  v7 = objc_autoreleasePoolPush();
  array = [MEMORY[0x277CBEB18] array];
  dbStore = [(ULStore *)self dbStore];
  v10 = (*(dbStore->var0 + 12))(dbStore);
  v11 = [v10 getRecordingUUIDsForLocalizationActionsFromTime:*&time toTime:{1, *&toTime, 1}];

  v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"recordingUUID", v11];
  [array addObject:v12];

  v13 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"scanMCTimestamp" ascending:0];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v19[0] = v13;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v17 = [(ULStore *)self fetchPropertyForEntityName:v15 propertyToFetch:@"scanMCTimestamp" distinctResults:1 byAndPredicates:array sortDescriptors:v16 andLimit:0];

  objc_autoreleasePoolPop(v7);
  LODWORD(array) = [v17 count];

  return array;
}

- (BOOL)batchTransferRecordsUsingBatchSize:(unint64_t)size andLimit:(unint64_t)limit usingDistinctRecords:(BOOL)records intoTargetStore:(id)store
{
  recordsCopy = records;
  storeCopy = store;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v11 = objc_autoreleasePoolPush();
  array = [MEMORY[0x277CBEB18] array];
  if (recordsCopy)
  {
    v13 = ULSettings::get<ULSettings::DatabaseSelectionLimit>();
    dbStore = [(ULStore *)self dbStore];
    v15 = (*(dbStore->var0 + 12))(dbStore);
    v16 = [v15 getDistinctRecordingUUIDsWithLimit:v13];

    v17 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"recordingUUID", v16];
    [array addObject:v17];
  }

  v18 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"scanCFTimestamp" ascending:0];
  managedObjectContext = [(ULStore *)self managedObjectContext];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __103__ULMeasurementStore_batchTransferRecordsUsingBatchSize_andLimit_usingDistinctRecords_intoTargetStore___block_invoke;
  v25[3] = &unk_2798D47A0;
  v29 = &v32;
  v25[4] = self;
  v20 = array;
  v26 = v20;
  v21 = v18;
  v27 = v21;
  sizeCopy = size;
  limitCopy = limit;
  v22 = storeCopy;
  v28 = v22;
  [managedObjectContext performBlockAndWait:v25];

  objc_autoreleasePoolPop(v11);
  v23 = *(v33 + 24);
  _Block_object_dispose(&v32, 8);

  return v23;
}

void __103__ULMeasurementStore_batchTransferRecordsUsingBatchSize_andLimit_usingDistinctRecords_intoTargetStore___block_invoke(void *a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = a1[5];
  v7[0] = a1[6];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  *(*(a1[8] + 8) + 24) = [v2 batchTransferManagedObjectsWithEntityName:v4 byAndPredicates:v5 sortDescriptors:v6 batchSize:a1[9] limit:a1[10] intoTargetStore:a1[7]];
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
  v4 = [ULMeasurementMO_deprecated createFromDO:a2 inManagedObjectContext:managedObjectContext];

  return v4;
}

@end