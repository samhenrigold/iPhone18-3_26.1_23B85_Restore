@interface ULBackupHandlingStore
- (BOOL)_commitBatchToStore:(id)store forEntityName:(id)name stop:(BOOL *)stop;
- (BOOL)_transferDataUsingGroupIdsFilter:(BOOL)filter;
- (BOOL)_transferLOIsUsingGroupIdsFilter:(BOOL)filter;
- (BOOL)_transferRecordsForEntityName:(id)name relation:(id)relation relationUUID:(id)d uuidMap:(id)map sortAttribute:(id)attribute limit:(unint64_t)limit fetchBatchSize:(unint64_t)size;
- (BOOL)exportData;
- (BOOL)importData;
- (ULBackupHandlingStore)initWithSourceDatabase:(ULDatabaseStoreInterface *)database targetDatabase:(ULDatabaseStoreInterface *)targetDatabase andCancelFunc:(function<BOOL)(;
- (id)_getDistinctHomeLoiGroupIds;
- (id)_getUUIDToObjectIDMapForEntityName:(id)name uuidAttribute:(id)attribute sortAttribute:(id)sortAttribute atStore:(id)store;
- (void)_transferLOIsInBatch:(id)batch toStore:(id)store;
- (void)_transferRecordsInBatch:(id)batch forEntityName:(id)name relation:(id)relation relationUUID:(id)d uuidMap:(id)map toStore:(id)store;
- (void)logTransferResult:(BOOL)result isExport:(BOOL)export;
@end

@implementation ULBackupHandlingStore

- (ULBackupHandlingStore)initWithSourceDatabase:(ULDatabaseStoreInterface *)database targetDatabase:(ULDatabaseStoreInterface *)targetDatabase andCancelFunc:(function<BOOL)(
{
  v12 = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = ULBackupHandlingStore;
  v7 = [(ULStore *)&v10 initWithDbStore:database];
  if (v7)
  {
    v8 = [[ULStore alloc] initWithDbStore:targetDatabase];
    [(ULBackupHandlingStore *)v7 setTargetStore:v8];

    std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v11, a5);
    [(ULBackupHandlingStore *)v7 setShouldCancel:v11];
    std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v11);
  }

  return v7;
}

- (BOOL)exportData
{
  if (onceToken_MicroLocation_Default != -1)
  {
    [ULBackupHandlingStore exportData];
  }

  v3 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_258FE9000, v3, OS_LOG_TYPE_DEFAULT, "Exporting milo data", buf, 2u);
  }

  _getDistinctHomeLoiGroupIds = [(ULBackupHandlingStore *)self _getDistinctHomeLoiGroupIds];
  [(ULBackupHandlingStore *)self setDistinctHomeloiGroupIds:_getDistinctHomeLoiGroupIds];

  distinctHomeloiGroupIds = [(ULBackupHandlingStore *)self distinctHomeloiGroupIds];
  v6 = [distinctHomeloiGroupIds count];

  if (v6)
  {
    v7 = [(ULBackupHandlingStore *)self _transferDataUsingGroupIdsFilter:1];
    [(ULBackupHandlingStore *)self logTransferResult:v7 isExport:1];
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULBackupHandlingStore exportData];
    }

    v8 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "No Home LOI Group IDs found in LOI table. Will backup an empty db", v10, 2u);
    }

    LOBYTE(v7) = 1;
  }

  return v7;
}

- (BOOL)importData
{
  if (onceToken_MicroLocation_Default != -1)
  {
    [ULBackupHandlingStore exportData];
  }

  v3 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_258FE9000, v3, OS_LOG_TYPE_DEFAULT, "Importing milo data", v6, 2u);
  }

  v4 = [(ULBackupHandlingStore *)self _transferDataUsingGroupIdsFilter:0];
  [(ULBackupHandlingStore *)self logTransferResult:v4 isExport:0];
  return v4;
}

- (void)logTransferResult:(BOOL)result isExport:(BOOL)export
{
  resultCopy = result;
  v66 = *MEMORY[0x277D85DE8];
  if (export)
  {
    v5 = "Export";
  }

  else
  {
    v5 = "Import";
  }

  v44 = 6;
  LODWORD(__p[0]) = *v5;
  WORD2(__p[0]) = *(v5 + 2);
  BYTE6(__p[0]) = 0;
  if (result)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULBackupHandlingStore exportData];
    }

    log = logObject_MicroLocation_Default;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      targetStore = [(ULBackupHandlingStore *)self targetStore];
      dbStore = [targetStore dbStore];
      v37 = (*(*dbStore + 64))(dbStore);
      v41 = [v37 count];
      targetStore2 = [(ULBackupHandlingStore *)self targetStore];
      dbStore2 = [targetStore2 dbStore];
      v35 = (*(*dbStore2 + 168))(dbStore2);
      v40 = [v35 count];
      targetStore3 = [(ULBackupHandlingStore *)self targetStore];
      dbStore3 = [targetStore3 dbStore];
      v32 = (*(*dbStore3 + 160))(dbStore3);
      v39 = [v32 count];
      targetStore4 = [(ULBackupHandlingStore *)self targetStore];
      dbStore4 = [targetStore4 dbStore];
      v30 = (*(*dbStore4 + 144))(dbStore4);
      v34 = [v30 count];
      targetStore5 = [(ULBackupHandlingStore *)self targetStore];
      dbStore5 = [targetStore5 dbStore];
      v28 = (*(*dbStore5 + 176))(dbStore5);
      v12 = [v28 count];
      targetStore6 = [(ULBackupHandlingStore *)self targetStore];
      dbStore6 = [targetStore6 dbStore];
      v15 = (*(*dbStore6 + 184))(dbStore6);
      v16 = [v15 count];
      targetStore7 = [(ULBackupHandlingStore *)self targetStore];
      dbStore7 = [targetStore7 dbStore];
      v19 = (*(*dbStore7 + 192))(dbStore7);
      v20 = [v19 count];
      targetStore8 = [(ULBackupHandlingStore *)self targetStore];
      dbStore8 = [targetStore8 dbStore];
      v23 = (*(*dbStore8 + 128))(dbStore8);
      *buf = 68291331;
      v46 = 2082;
      v47 = "";
      v48 = 2081;
      v49 = __p;
      v50 = 1025;
      v51 = v41;
      v52 = 1025;
      v53 = v40;
      v54 = 1025;
      v55 = v39;
      v56 = 1025;
      v57 = v34;
      v58 = 1025;
      v59 = v12;
      v60 = 1025;
      v61 = v16;
      v62 = 1025;
      v63 = v20;
      v64 = 1025;
      v65 = [v23 count];
      _os_log_impl(&dword_258FE9000, log, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Successfully transferred milo data, Transfer Type:%{private, location:escape_only}s, LOIs:%{private}u, Anchor Appearance Maps:%{private}u, WiFi Histograms:%{private}u, Scanning Events:%{private}u, WiFi Measurements:%{private}u, BLE Measurements:%{private}u, UWB Measurements:%{private}u, Odometry records:%{private}u}", buf, 0x4Cu);
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULBackupHandlingStore exportData];
    }

    v24 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289283;
      *&buf[4] = 0;
      v46 = 2082;
      v47 = "";
      v48 = 2081;
      v49 = __p;
      _os_log_impl(&dword_258FE9000, v24, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Failed to transfer milo data, Transfer Type:%{private, location:escape_only}s}", buf, 0x1Cu);
    }
  }

  v25 = +[ULEventLog shared];
  v26 = __p;
  if (v44 < 0)
  {
    v26 = __p[0];
  }

  resultCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Backup %s: transfer complete. result: %d", v26, resultCopy];
  [v25 log:resultCopy];

  if (v44 < 0)
  {
    operator delete(__p[0]);
  }
}

- (BOOL)_transferDataUsingGroupIdsFilter:(BOOL)filter
{
  v4 = [(ULBackupHandlingStore *)self _transferLOIsUsingGroupIdsFilter:filter];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  targetStore = [(ULBackupHandlingStore *)self targetStore];
  v8 = [(ULBackupHandlingStore *)self _getUUIDToObjectIDMapForEntityName:v6 uuidAttribute:@"loiId" sortAttribute:@"lastSeenTimeStamp" atStore:targetStore];
  [(ULBackupHandlingStore *)self setLoiUUIDToObjectIDMap:v8];

  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  loiUUIDToObjectIDMap = [(ULBackupHandlingStore *)self loiUUIDToObjectIDMap];
  LODWORD(v8) = ULSettings::get<ULSettings::CloudBackupDefaultTableLimit>();
  LOBYTE(v8) = [(ULBackupHandlingStore *)self _transferRecordsForEntityName:v10 relation:@"loi" relationUUID:@"loiId" uuidMap:loiUUIDToObjectIDMap sortAttribute:@"timestamp" limit:v8 fetchBatchSize:ULSettings::get<ULSettings::ConfigurationTableMigrationPageSize>()];

  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  loiUUIDToObjectIDMap2 = [(ULBackupHandlingStore *)self loiUUIDToObjectIDMap];
  v64 = v8;
  LODWORD(v8) = ULSettings::get<ULSettings::CloudBackupDefaultTableLimit>();
  v63 = [(ULBackupHandlingStore *)self _transferRecordsForEntityName:v13 relation:@"loi" relationUUID:@"loiId" uuidMap:loiUUIDToObjectIDMap2 sortAttribute:@"timestamp" limit:v8 fetchBatchSize:ULSettings::get<ULSettings::ConfigurationTableMigrationPageSize>()];

  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  loiUUIDToObjectIDMap3 = [(ULBackupHandlingStore *)self loiUUIDToObjectIDMap];
  v18 = +[ULDefaultsSingleton shared];
  defaultsDictionary = [v18 defaultsDictionary];

  v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULCloudBackupOdometryLimit"];
  v21 = [defaultsDictionary objectForKey:v20];
  if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntValue = [v21 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = [&unk_286A717A8 unsignedIntValue];
  }

  v23 = unsignedIntValue;

  v24 = +[ULDefaultsSingleton shared];
  defaultsDictionary2 = [v24 defaultsDictionary];

  v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULCloudBackupOdometryPageSize"];
  v27 = [defaultsDictionary2 objectForKey:v26];
  if (v27 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntValue2 = [v27 unsignedIntValue];
  }

  else
  {
    unsignedIntValue2 = [&unk_286A71730 unsignedIntValue];
  }

  v29 = unsignedIntValue2;

  v62 = [(ULBackupHandlingStore *)self _transferRecordsForEntityName:v16 relation:@"loi" relationUUID:@"loiId" uuidMap:loiUUIDToObjectIDMap3 sortAttribute:@"timestamp" limit:v23 fetchBatchSize:v29];
  v30 = objc_opt_class();
  v31 = NSStringFromClass(v30);
  loiUUIDToObjectIDMap4 = [(ULBackupHandlingStore *)self loiUUIDToObjectIDMap];
  v33 = +[ULDefaultsSingleton shared];
  defaultsDictionary3 = [v33 defaultsDictionary];

  v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULCloudBackupScanningEventsLimit"];
  v36 = [defaultsDictionary3 objectForKey:v35];
  if (v36 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntValue3 = [v36 unsignedIntValue];
  }

  else
  {
    unsignedIntValue3 = [&unk_286A71790 unsignedIntValue];
  }

  v38 = unsignedIntValue3;

  v39 = +[ULDefaultsSingleton shared];
  defaultsDictionary4 = [v39 defaultsDictionary];

  v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULCloudBackupScanningEventsPageSize"];
  v42 = [defaultsDictionary4 objectForKey:v41];
  if (v42 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntValue4 = [v42 unsignedIntValue];
  }

  else
  {
    unsignedIntValue4 = [&unk_286A71730 unsignedIntValue];
  }

  v44 = unsignedIntValue4;

  v45 = [(ULBackupHandlingStore *)self _transferRecordsForEntityName:v31 relation:@"loi" relationUUID:@"loiId" uuidMap:loiUUIDToObjectIDMap4 sortAttribute:@"timestamp" limit:v38 fetchBatchSize:v44];
  v46 = objc_opt_class();
  v47 = NSStringFromClass(v46);
  targetStore2 = [(ULBackupHandlingStore *)self targetStore];
  v49 = [(ULBackupHandlingStore *)self _getUUIDToObjectIDMapForEntityName:v47 uuidAttribute:@"scanEventUUID" sortAttribute:@"timestamp" atStore:targetStore2];
  [(ULBackupHandlingStore *)self setScanEventUUIDToObjectIDMap:v49];

  v50 = objc_opt_class();
  v51 = NSStringFromClass(v50);
  scanEventUUIDToObjectIDMap = [(ULBackupHandlingStore *)self scanEventUUIDToObjectIDMap];
  v53 = [(ULBackupHandlingStore *)self _transferRecordsForEntityName:v51 relation:@"scanningEvent" relationUUID:@"scanEventUUID" uuidMap:scanEventUUIDToObjectIDMap sortAttribute:@"timestamp" limit:0 fetchBatchSize:ULSettings::get<ULSettings::MeasurementTableMigrationPageSize>()];

  v54 = objc_opt_class();
  v55 = NSStringFromClass(v54);
  scanEventUUIDToObjectIDMap2 = [(ULBackupHandlingStore *)self scanEventUUIDToObjectIDMap];
  LOBYTE(scanEventUUIDToObjectIDMap) = [(ULBackupHandlingStore *)self _transferRecordsForEntityName:v55 relation:@"scanningEvent" relationUUID:@"scanEventUUID" uuidMap:scanEventUUIDToObjectIDMap2 sortAttribute:@"timestamp" limit:0 fetchBatchSize:ULSettings::get<ULSettings::MeasurementTableMigrationPageSize>()];

  v57 = objc_opt_class();
  v58 = NSStringFromClass(v57);
  scanEventUUIDToObjectIDMap3 = [(ULBackupHandlingStore *)self scanEventUUIDToObjectIDMap];
  v60 = [(ULBackupHandlingStore *)self _transferRecordsForEntityName:v58 relation:@"scanningEvent" relationUUID:@"scanEventUUID" uuidMap:scanEventUUIDToObjectIDMap3 sortAttribute:@"timestamp" limit:0 fetchBatchSize:ULSettings::get<ULSettings::MeasurementTableMigrationPageSize>()];

  return v4 & v64 & (v63 && v62) & (v45 && v53) & scanEventUUIDToObjectIDMap & v60;
}

- (id)_getDistinctHomeLoiGroupIds
{
  v20[1] = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  array = [MEMORY[0x277CBEB18] array];
  v5 = MEMORY[0x277CCAC30];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"home"];
  v7 = [v5 predicateWithFormat:@"%K=%@", @"loiType", v6];
  [array addObject:v7];

  v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"lastSeenTimeStamp" ascending:0];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v20[0] = v8;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v12 = +[ULDefaultsSingleton shared];
  defaultsDictionary = [v12 defaultsDictionary];

  v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULCloudBackupMaxLoiGroupIdsToExport"];
  v15 = [defaultsDictionary objectForKey:v14];
  if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntValue = [v15 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = [&unk_286A71748 unsignedIntValue];
  }

  v17 = unsignedIntValue;

  v18 = [(ULStore *)self fetchPropertyForEntityName:v10 propertyToFetch:@"loiGroupId" distinctResults:1 byAndPredicates:array sortDescriptors:v11 andLimit:v17];

  objc_autoreleasePoolPop(v3);

  return v18;
}

- (BOOL)_transferLOIsUsingGroupIdsFilter:(BOOL)filter
{
  v15 = *MEMORY[0x277D85DE8];
  objc_msgSend_shouldCancel(self, a2);
  if (!v14)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v5 = (*(*v14 + 48))(v14);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](&v11);
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    LOBYTE(v14) = 1;
    managedObjectContext = [(ULStore *)self managedObjectContext];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __58__ULBackupHandlingStore__transferLOIsUsingGroupIdsFilter___block_invoke;
    v9[3] = &unk_2798D4550;
    filterCopy = filter;
    v9[4] = self;
    v9[5] = &v11;
    [managedObjectContext performBlockAndWait:v9];

    v6 = *(v12 + 24);
    _Block_object_dispose(&v11, 8);
  }

  return v6 & 1;
}

void __58__ULBackupHandlingStore__transferLOIsUsingGroupIdsFilter___block_invoke(uint64_t a1)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v18 = [MEMORY[0x277CBEB18] array];
  if (*(a1 + 48) == 1)
  {
    v2 = MEMORY[0x277CCAC30];
    v3 = [*(a1 + 32) distinctHomeloiGroupIds];
    v4 = [v2 predicateWithFormat:@"%K IN %@", @"loiGroupId", v3];
    [v18 addObject:v4];
  }

  v5 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"lastSeenTimeStamp" ascending:0];
  v6 = *(a1 + 32);
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v21[0] = v5;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  v10 = ULSettings::get<ULSettings::CloudBackupDefaultTableLimit>();
  v11 = +[ULDefaultsSingleton shared];
  v12 = [v11 defaultsDictionary];

  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULLoiTableMigrationPageSize"];
  v14 = [v12 objectForKey:v13];
  if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v15 = [v14 unsignedIntValue];
  }

  else
  {
    v15 = [&unk_286A71730 unsignedIntValue];
  }

  v16 = v15;

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __58__ULBackupHandlingStore__transferLOIsUsingGroupIdsFilter___block_invoke_2;
  v19[3] = &unk_2798D4528;
  v20 = *(a1 + 32);
  [v6 efficientlyFetchManagedObjectsWithEntityName:v8 byAndPredicates:v18 sortDescriptors:v9 andLimit:v10 fetchBatchSize:v16 andApplyBlock:v19];

  v17 = [*(a1 + 32) managedObjectContext];
  [v17 reset];
}

void __58__ULBackupHandlingStore__transferLOIsUsingGroupIdsFilter___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (v5)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      objc_msgSend_shouldCancel(v6);
      if (*(&v17 + 1))
      {
        v7 = (*(**(&v17 + 1) + 48))(*(&v17 + 1));
        std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](&v16);
        if (v7)
        {
          *a3 = 1;
          *(*(*(a1 + 40) + 8) + 24) = 0;
        }

        else
        {
          v8 = [*(a1 + 32) targetStore];
          v9 = [v8 managedObjectContext];
          v12[0] = MEMORY[0x277D85DD0];
          v12[1] = 3221225472;
          v12[2] = __58__ULBackupHandlingStore__transferLOIsUsingGroupIdsFilter___block_invoke_3;
          v12[3] = &unk_2798D4500;
          v12[4] = *(a1 + 32);
          v10 = v5;
          v11 = *(a1 + 40);
          v13 = v10;
          v14 = v11;
          v15 = a3;
          [v9 performBlockAndWait:v12];
        }

        goto LABEL_7;
      }
    }

    else
    {
      v16 = 0u;
      v17 = 0u;
    }

    std::__throw_bad_function_call[abi:ne200100]();
  }

LABEL_7:
}

void __58__ULBackupHandlingStore__transferLOIsUsingGroupIdsFilter___block_invoke_3(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v7 = [v2 targetStore];
  [v2 _transferLOIsInBatch:v3 toStore:?];

  v4 = a1[4];
  v8 = [v4 targetStore];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  *(*(a1[6] + 8) + 24) &= [v4 _commitBatchToStore:v8 forEntityName:v6 stop:a1[7]];
}

- (void)_transferLOIsInBatch:(id)batch toStore:(id)store
{
  v24 = *MEMORY[0x277D85DE8];
  batchCopy = batch;
  storeCopy = store;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = batchCopy;
  v7 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v19 + 1) + 8 * v9);
        v11 = [ULLoiMO alloc];
        managedObjectContext = [storeCopy managedObjectContext];
        v13 = [(ULLoiMO *)v11 initWithContext:managedObjectContext];

        entity = [v10 entity];
        attributesByName = [entity attributesByName];
        allKeys = [attributesByName allKeys];
        v17 = [v10 dictionaryWithValuesForKeys:allKeys];
        [(ULLoiMO *)v13 setValuesForKeysWithDictionary:v17];

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }
}

- (BOOL)_commitBatchToStore:(id)store forEntityName:(id)name stop:(BOOL *)stop
{
  v27 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  nameCopy = name;
  managedObjectContext = [storeCopy managedObjectContext];
  hasChanges = [managedObjectContext hasChanges];

  if (hasChanges)
  {
    managedObjectContext2 = [storeCopy managedObjectContext];
    v18 = 0;
    v12 = [managedObjectContext2 save:&v18];
    v13 = v18;
  }

  else
  {
    v13 = 0;
    v12 = 1;
  }

  managedObjectContext3 = [storeCopy managedObjectContext];
  [managedObjectContext3 reset];

  if (v13)
  {
    *stop = 1;
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULBackupHandlingStore exportData];
    }

    v15 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289539;
      v20 = 0;
      v21 = 2082;
      v22 = "";
      v23 = 2114;
      v24 = v13;
      v25 = 2113;
      v26 = nameCopy;
      _os_log_impl(&dword_258FE9000, v15, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Backup: Error transferring batch. Could not save changes to store, error:%{public, location:escape_only}@, Entity:%{private, location:escape_only}@}", buf, 0x26u);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      [ULBackupHandlingStore exportData];
    }

    v16 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(logObject_MicroLocation_Default))
    {
      *buf = 68289539;
      v20 = 0;
      v21 = 2082;
      v22 = "";
      v23 = 2114;
      v24 = v13;
      v25 = 2113;
      v26 = nameCopy;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Backup: Error transferring batch. Could not save changes to store", "{msg%{public}.0s:Backup: Error transferring batch. Could not save changes to store, error:%{public, location:escape_only}@, Entity:%{private, location:escape_only}@}", buf, 0x26u);
    }
  }

  return v12;
}

- (id)_getUUIDToObjectIDMapForEntityName:(id)name uuidAttribute:(id)attribute sortAttribute:(id)sortAttribute atStore:(id)store
{
  v34[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  attributeCopy = attribute;
  sortAttributeCopy = sortAttribute;
  storeCopy = store;
  v14 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:sortAttributeCopy ascending:1];
  targetStore = [(ULBackupHandlingStore *)self targetStore];
  v34[0] = v14;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
  managedObjectContext = [storeCopy managedObjectContext];
  v18 = [targetStore fetchManagedObjectsWithEntityName:nameCopy byAndPredicates:0 sortDescriptors:v16 andLimit:0 returnObjectsAsFaults:1 withManagedObjectContext:managedObjectContext];

  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__1;
  v32 = __Block_byref_object_dispose__1;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  managedObjectContext2 = [storeCopy managedObjectContext];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __96__ULBackupHandlingStore__getUUIDToObjectIDMapForEntityName_uuidAttribute_sortAttribute_atStore___block_invoke;
  v24[3] = &unk_2798D4578;
  v20 = v18;
  v25 = v20;
  v27 = &v28;
  v21 = attributeCopy;
  v26 = v21;
  [managedObjectContext2 performBlockAndWait:v24];

  v22 = v29[5];
  _Block_object_dispose(&v28, 8);

  return v22;
}

void __96__ULBackupHandlingStore__getUUIDToObjectIDMapForEntityName_uuidAttribute_sortAttribute_atStore___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        v7 = [v6 objectID];
        v8 = *(*(*(a1 + 48) + 8) + 40);
        v9 = [v6 valueForKey:*(a1 + 40)];
        [v8 setObject:v7 forKeyedSubscript:v9];
      }

      v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
  }
}

- (BOOL)_transferRecordsForEntityName:(id)name relation:(id)relation relationUUID:(id)d uuidMap:(id)map sortAttribute:(id)attribute limit:(unint64_t)limit fetchBatchSize:(unint64_t)size
{
  v38 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  relationCopy = relation;
  dCopy = d;
  mapCopy = map;
  attributeCopy = attribute;
  objc_msgSend_shouldCancel(self);
  if (!v37)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v20 = (*(*v37 + 48))(v37);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](&v34);
  if (v20)
  {
    v21 = 0;
  }

  else
  {
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    LOBYTE(v37) = 1;
    managedObjectContext = [(ULStore *)self managedObjectContext];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __120__ULBackupHandlingStore__transferRecordsForEntityName_relation_relationUUID_uuidMap_sortAttribute_limit_fetchBatchSize___block_invoke;
    v24[3] = &unk_2798D45F0;
    v25 = relationCopy;
    v26 = dCopy;
    v27 = mapCopy;
    v28 = attributeCopy;
    selfCopy = self;
    limitCopy = limit;
    sizeCopy = size;
    v30 = nameCopy;
    v31 = &v34;
    [managedObjectContext performBlockAndWait:v24];

    v21 = *(v35 + 24);
    _Block_object_dispose(&v34, 8);
  }

  return v21 & 1;
}

void __120__ULBackupHandlingStore__transferRecordsForEntityName_relation_relationUUID_uuidMap_sortAttribute_limit_fetchBatchSize___block_invoke(uint64_t a1)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = MEMORY[0x277CCAC30];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = [*(a1 + 48) allKeys];
  v7 = [v3 predicateWithFormat:@"%K.%K IN %@", v4, v5, v6];
  [v2 addObject:v7];

  v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*(a1 + 56) ascending:0];
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  v25[0] = v8;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  v12 = *(a1 + 88);
  v13 = *(a1 + 96);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __120__ULBackupHandlingStore__transferRecordsForEntityName_relation_relationUUID_uuidMap_sortAttribute_limit_fetchBatchSize___block_invoke_2;
  v20[3] = &unk_2798D45C8;
  v24 = *(a1 + 80);
  v19 = *(a1 + 64);
  v14 = *(&v19 + 1);
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  *&v17 = v15;
  *(&v17 + 1) = v16;
  v21 = v19;
  v22 = v17;
  v23 = *(a1 + 48);
  [v9 efficientlyFetchManagedObjectsWithEntityName:v10 byAndPredicates:v2 sortDescriptors:v11 andLimit:v12 fetchBatchSize:v13 andApplyBlock:v20];

  v18 = [*(a1 + 64) managedObjectContext];
  [v18 reset];
}

void __120__ULBackupHandlingStore__transferRecordsForEntityName_relation_relationUUID_uuidMap_sortAttribute_limit_fetchBatchSize___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (v5)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      objc_msgSend_shouldCancel(v6);
      if (*(&v23 + 1))
      {
        v7 = (*(**(&v23 + 1) + 48))(*(&v23 + 1));
        std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](&v22);
        if (v7)
        {
          *a3 = 1;
          *(*(*(a1 + 72) + 8) + 24) = 0;
        }

        else
        {
          v8 = [*(a1 + 32) targetStore];
          v9 = [v8 managedObjectContext];
          v16[0] = MEMORY[0x277D85DD0];
          v16[1] = 3221225472;
          v16[2] = __120__ULBackupHandlingStore__transferRecordsForEntityName_relation_relationUUID_uuidMap_sortAttribute_limit_fetchBatchSize___block_invoke_3;
          v16[3] = &unk_2798D45A0;
          v16[4] = *(a1 + 32);
          v17 = v5;
          v10 = *(a1 + 40);
          v11 = *(a1 + 48);
          v12 = *(a1 + 56);
          v13 = *(a1 + 64);
          *&v14 = v12;
          *(&v14 + 1) = v13;
          *&v15 = v10;
          *(&v15 + 1) = v11;
          v18 = v15;
          v19 = v14;
          v20 = *(a1 + 72);
          v21 = a3;
          [v9 performBlockAndWait:v16];
        }

        goto LABEL_7;
      }
    }

    else
    {
      v22 = 0u;
      v23 = 0u;
    }

    std::__throw_bad_function_call[abi:ne200100]();
  }

LABEL_7:
}

void __120__ULBackupHandlingStore__transferRecordsForEntityName_relation_relationUUID_uuidMap_sortAttribute_limit_fetchBatchSize___block_invoke_3(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[8];
  v7 = a1[9];
  v9 = [v2 targetStore];
  [v2 _transferRecordsInBatch:v3 forEntityName:v4 relation:v5 relationUUID:v6 uuidMap:v7 toStore:?];

  v8 = a1[4];
  v10 = [v8 targetStore];
  *(*(a1[10] + 8) + 24) &= [v8 _commitBatchToStore:? forEntityName:? stop:?];
}

- (void)_transferRecordsInBatch:(id)batch forEntityName:(id)name relation:(id)relation relationUUID:(id)d uuidMap:(id)map toStore:(id)store
{
  v41 = *MEMORY[0x277D85DE8];
  batchCopy = batch;
  nameCopy = name;
  relationCopy = relation;
  dCopy = d;
  mapCopy = map;
  storeCopy = store;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = batchCopy;
  v14 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v14)
  {
    v31 = *v37;
    do
    {
      v15 = 0;
      do
      {
        if (*v37 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v36 + 1) + 8 * v15);
        dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", relationCopy, dCopy];
        v18 = [v16 valueForKeyPath:dCopy];
        v19 = [mapCopy objectForKeyedSubscript:v18];

        if (v19)
        {
          managedObjectContext = [storeCopy managedObjectContext];
          v21 = [managedObjectContext existingObjectWithID:v19 error:0];

          if (v21)
          {
            v22 = MEMORY[0x277CBE408];
            managedObjectContext2 = [storeCopy managedObjectContext];
            v24 = [v22 insertNewObjectForEntityForName:nameCopy inManagedObjectContext:managedObjectContext2];

            entity = [v16 entity];
            attributesByName = [entity attributesByName];
            allKeys = [attributesByName allKeys];
            v28 = [v16 dictionaryWithValuesForKeys:allKeys];
            [v24 setValuesForKeysWithDictionary:v28];

            [v24 setValue:v21 forKeyPath:relationCopy];
          }
        }

        ++v15;
      }

      while (v14 != v15);
      v14 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v14);
  }
}

@end