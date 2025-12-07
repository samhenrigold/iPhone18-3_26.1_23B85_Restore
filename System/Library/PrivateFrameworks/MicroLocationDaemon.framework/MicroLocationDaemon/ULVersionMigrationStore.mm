@interface ULVersionMigrationStore
- (BOOL)_commitBatchForEntityName:(id)name migratingAttribute:(id)attribute stop:(BOOL *)stop;
- (BOOL)_connectLabelsToScanningEvents;
- (BOOL)_createScanningEventFromRecordingEvent:(id)event withRelatedLOIObjectID:(id)d;
- (BOOL)_migrateAttributeToRelationshipForEntityName:(id)name deprecatedAttribute:(id)attribute sortAttribute:(id)sortAttribute relationship:(id)relationship relatedEntityName:(id)entityName relatedAttribute:(id)relatedAttribute relatedSortAttribute:(id)relatedSortAttribute fetchBatchSize:(unint64_t)self0;
- (BOOL)_migrateAttributesToRelationships;
- (BOOL)_migrateConfigurations;
- (BOOL)_migrateMeasurements;
- (BOOL)_migrateRecordingEvents;
- (BOOL)_updateLabelsContextLayers;
- (BOOL)performVersionMigrationForModelVersion:(id)version;
- (ULVersionMigrationStore)initWithDbStore:(ULDatabaseStoreInterface *)store;
- (id).cxx_construct;
- (id)_getTriggerToRecordingUUIDMap;
- (id)_getUUIDToObjectIDMapForRelatedEntityName:(id)name relatedAttribute:(id)attribute relatedSortAttribute:(id)sortAttribute filterUUIDs:(id)ds;
- (void)_connectLabelsInBatch:(id)batch withTriggerUUIDMap:(id)map andScanEventsUUIDMap:(id)dMap;
- (void)_createAnchorAppearanceMapMOFromConfigurationMO:(id)o withLOIObjectID:(id)d;
- (void)_createBLEMeasurementFromDeprecatedMeasurement:(id)measurement withMeasurementProto:()unique_ptr<CLMicroLocationProto:(std:(id)proto :default_delete<CLMicroLocationProto::Measurement>>)a4 :Measurement andRelatedScanningEventObjectID:;
- (void)_createMeasurementFromDeprecatedMeasurement:(id)measurement withRelatedScanningEventObjectID:(id)d;
- (void)_createUWBMeasurementFromDeprecatedMeasurement:(id)measurement withMeasurementProto:()unique_ptr<CLMicroLocationProto:(std:(id)proto :default_delete<CLMicroLocationProto::Measurement>>)a4 :Measurement andRelatedScanningEventObjectID:;
- (void)_createWiFiHistogramMOFromConfigurationMO:(id)o withLOIObjectID:(id)d;
- (void)_createWiFiMeasurementFromDeprecatedMeasurement:(id)measurement withMeasurementProto:()unique_ptr<CLMicroLocationProto:(std:(id)proto :default_delete<CLMicroLocationProto::Measurement>>)a4 :Measurement andRelatedScanningEventObjectID:;
- (void)_migrateBatch:(id)batch forDeprecatedAttribute:(id)attribute relationship:(id)relationship withRelationUUIDMap:(id)map;
- (void)_migrateConfigurationInBatch:(id)batch withLOIMap:(id)map;
- (void)_migrateMeasurementsInBatch:(id)batch withRelationUUIDMap:(id)map;
- (void)_migrateRecordingEventsInBatch:(id)batch withRelationUUIDMap:(id)map;
- (void)_updateContextLayersForLabelsInBatch:(id)batch;
- (void)setAnchorDeviceModelAllowedMap:()map<std:()DeviceModel :()std:(std:(DeviceModel>>> *)std :allocator<std::pair<const)std::string :less<std::string> string;
@end

@implementation ULVersionMigrationStore

- (ULVersionMigrationStore)initWithDbStore:(ULDatabaseStoreInterface *)store
{
  v7.receiver = self;
  v7.super_class = ULVersionMigrationStore;
  v3 = [(ULStore *)&v7 initWithDbStore:store];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEB58] set];
    [(ULVersionMigrationStore *)v3 setHandledRecordingUUIDs:v4];

    CLMicroLocationUtils::getAnchorDeviceModelAllowedMap(v6);
    [(ULVersionMigrationStore *)v3 setAnchorDeviceModelAllowedMap:v6];
    std::__tree<std::__value_type<std::string,DeviceModel>,std::__map_value_compare<std::string,std::__value_type<std::string,DeviceModel>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeviceModel>>>::destroy(v6, v6[1]);
  }

  return v3;
}

- (BOOL)performVersionMigrationForModelVersion:(id)version
{
  versionCopy = version;
  if ([versionCopy unsignedIntValue] > 1)
  {
    v9 = 1;
  }

  else
  {
    _migrateAttributesToRelationships = [(ULVersionMigrationStore *)self _migrateAttributesToRelationships];
    _migrateConfigurations = [(ULVersionMigrationStore *)self _migrateConfigurations];
    _migrateRecordingEvents = [(ULVersionMigrationStore *)self _migrateRecordingEvents];
    _migrateMeasurements = [(ULVersionMigrationStore *)self _migrateMeasurements];
    v9 = (_migrateAttributesToRelationships && _migrateConfigurations && _migrateRecordingEvents && _migrateMeasurements) & [(ULVersionMigrationStore *)self _connectLabelsToScanningEvents];
  }

  if ([versionCopy unsignedIntValue] <= 2)
  {
    v9 &= [(ULVersionMigrationStore *)self _updateLabelsContextLayers];
  }

  return v9;
}

- (BOOL)_migrateAttributeToRelationshipForEntityName:(id)name deprecatedAttribute:(id)attribute sortAttribute:(id)sortAttribute relationship:(id)relationship relatedEntityName:(id)entityName relatedAttribute:(id)relatedAttribute relatedSortAttribute:(id)relatedSortAttribute fetchBatchSize:(unint64_t)self0
{
  nameCopy = name;
  attributeCopy = attribute;
  sortAttributeCopy = sortAttribute;
  relationshipCopy = relationship;
  entityNameCopy = entityName;
  relatedAttributeCopy = relatedAttribute;
  relatedSortAttributeCopy = relatedSortAttribute;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 1;
  managedObjectContext = [(ULStore *)self managedObjectContext];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __190__ULVersionMigrationStore__migrateAttributeToRelationshipForEntityName_deprecatedAttribute_sortAttribute_relationship_relatedEntityName_relatedAttribute_relatedSortAttribute_fetchBatchSize___block_invoke;
  v35[3] = &unk_2798D4AC0;
  v35[4] = self;
  v32 = nameCopy;
  v22 = nameCopy;
  v36 = v22;
  v31 = attributeCopy;
  v23 = attributeCopy;
  v37 = v23;
  v24 = entityNameCopy;
  v38 = v24;
  v25 = relatedAttributeCopy;
  v39 = v25;
  v30 = relatedAttributeCopy;
  v26 = relatedSortAttributeCopy;
  v40 = v26;
  v27 = sortAttributeCopy;
  v41 = v27;
  sizeCopy = size;
  v28 = relationshipCopy;
  v42 = v28;
  v43 = &v45;
  [managedObjectContext performBlockAndWait:{v35, v30, v31, v32}];

  LOBYTE(attribute) = *(v46 + 24);
  _Block_object_dispose(&v45, 8);

  return attribute;
}

void __190__ULVersionMigrationStore__migrateAttributeToRelationshipForEntityName_deprecatedAttribute_sortAttribute_relationship_relatedEntityName_relatedAttribute_relatedSortAttribute_fetchBatchSize___block_invoke(uint64_t a1)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) fetchPropertyForEntityName:*(a1 + 40) propertyToFetch:*(a1 + 48) distinctResults:1 byAndPredicates:0 sortDescriptors:0 andLimit:0];
  if ([v2 count])
  {
    v3 = [*(a1 + 32) _getUUIDToObjectIDMapForRelatedEntityName:*(a1 + 56) relatedAttribute:*(a1 + 64) relatedSortAttribute:*(a1 + 72) filterUUIDs:v2];
    if ([v3 count])
    {
      v4 = [MEMORY[0x277CBEB18] array];
      v5 = MEMORY[0x277CCAC30];
      v6 = *(a1 + 48);
      v7 = [v3 allKeys];
      v8 = [v5 predicateWithFormat:@"%K IN %@", v6, v7];
      [v4 addObject:v8];

      v9 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*(a1 + 80) ascending:1];
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      v23[0] = v9;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
      v13 = *(a1 + 104);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __190__ULVersionMigrationStore__migrateAttributeToRelationshipForEntityName_deprecatedAttribute_sortAttribute_relationship_relatedEntityName_relatedAttribute_relatedSortAttribute_fetchBatchSize___block_invoke_2;
      v17[3] = &unk_2798D4A98;
      v17[4] = *(a1 + 32);
      v18 = *(a1 + 48);
      v19 = *(a1 + 88);
      v14 = v3;
      v15 = *(a1 + 96);
      v20 = v14;
      v22 = v15;
      v21 = *(a1 + 40);
      [v10 efficientlyFetchManagedObjectsWithEntityName:v11 byAndPredicates:0 sortDescriptors:v12 andLimit:0 fetchBatchSize:v13 andApplyBlock:v17];
    }
  }

  v16 = [*(a1 + 32) managedObjectContext];
  [v16 reset];
}

void __190__ULVersionMigrationStore__migrateAttributeToRelationshipForEntityName_deprecatedAttribute_sortAttribute_relationship_relatedEntityName_relatedAttribute_relatedSortAttribute_fetchBatchSize___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    v6 = v5;
    [*(a1 + 32) _migrateBatch:v5 forDeprecatedAttribute:*(a1 + 40) relationship:*(a1 + 48) withRelationUUIDMap:*(a1 + 56)];
    *(*(*(a1 + 72) + 8) + 24) &= [*(a1 + 32) _commitBatchForEntityName:*(a1 + 64) migratingAttribute:*(a1 + 40) stop:a3];
    v5 = v6;
  }
}

- (void)_migrateBatch:(id)batch forDeprecatedAttribute:(id)attribute relationship:(id)relationship withRelationUUIDMap:(id)map
{
  v28 = *MEMORY[0x277D85DE8];
  batchCopy = batch;
  attributeCopy = attribute;
  relationshipCopy = relationship;
  mapCopy = map;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = batchCopy;
  v13 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v13)
  {
    v14 = *v24;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v23 + 1) + 8 * i);
        v17 = [v16 valueForKey:attributeCopy];
        v18 = [mapCopy objectForKeyedSubscript:v17];

        if (v18)
        {
          managedObjectContext = [(ULStore *)self managedObjectContext];
          v20 = [managedObjectContext existingObjectWithID:v18 error:0];
          [v16 setValue:v20 forKey:relationshipCopy];
        }

        [v16 setValue:0 forKey:attributeCopy];
      }

      v13 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v13);
  }
}

- (BOOL)_commitBatchForEntityName:(id)name migratingAttribute:(id)attribute stop:(BOOL *)stop
{
  v31 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  attributeCopy = attribute;
  managedObjectContext = [(ULStore *)self managedObjectContext];
  hasChanges = [managedObjectContext hasChanges];

  if (hasChanges)
  {
    managedObjectContext2 = [(ULStore *)self managedObjectContext];
    v20 = 0;
    v13 = [managedObjectContext2 save:&v20];
    v14 = v20;

    if (v14)
    {
      *stop = 1;
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULVersionMigrationStore _commitBatchForEntityName:migratingAttribute:stop:];
      }

      v15 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289795;
        v22 = 0;
        v23 = 2082;
        v24 = "";
        v25 = 2114;
        v26 = v14;
        v27 = 2113;
        v28 = nameCopy;
        v29 = 2113;
        v30 = attributeCopy;
        _os_log_impl(&dword_258FE9000, v15, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Version Migration: Error migrating batch. Could not save changes to store, error:%{public, location:escape_only}@, Migrating Entity:%{private, location:escape_only}@, Migrating Property:%{private, location:escape_only}@}", buf, 0x30u);
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        [ULVersionMigrationStore _commitBatchForEntityName:migratingAttribute:stop:];
      }

      v16 = logObject_MicroLocation_Default;
      if (os_signpost_enabled(logObject_MicroLocation_Default))
      {
        *buf = 68289795;
        v22 = 0;
        v23 = 2082;
        v24 = "";
        v25 = 2114;
        v26 = v14;
        v27 = 2113;
        v28 = nameCopy;
        v29 = 2113;
        v30 = attributeCopy;
        _os_signpost_emit_with_name_impl(&dword_258FE9000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Version Migration: Error migrating batch. Could not save changes to store", "{msg%{public}.0s:Version Migration: Error migrating batch. Could not save changes to store, error:%{public, location:escape_only}@, Migrating Entity:%{private, location:escape_only}@, Migrating Property:%{private, location:escape_only}@}", buf, 0x30u);
      }

      dbStore = [(ULStore *)self dbStore];
      v18 = (*(dbStore->var0 + 2))(dbStore);
      [v18 handleDatabaseError:v14];
    }
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

- (id)_getUUIDToObjectIDMapForRelatedEntityName:(id)name relatedAttribute:(id)attribute relatedSortAttribute:(id)sortAttribute filterUUIDs:(id)ds
{
  v35[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  attributeCopy = attribute;
  sortAttributeCopy = sortAttribute;
  dsCopy = ds;
  array = [MEMORY[0x277CBEB18] array];
  if (dsCopy)
  {
    dsCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", attributeCopy, dsCopy];
    [array addObject:dsCopy];
  }

  v16 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:sortAttributeCopy ascending:1];
  v35[0] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
  managedObjectContext = [(ULStore *)self managedObjectContext];
  v19 = [(ULStore *)self fetchManagedObjectsWithEntityName:nameCopy byAndPredicates:array sortDescriptors:v17 andLimit:0 returnObjectsAsFaults:1 withManagedObjectContext:managedObjectContext];

  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__26;
  v33 = __Block_byref_object_dispose__26;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  managedObjectContext2 = [(ULStore *)self managedObjectContext];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __119__ULVersionMigrationStore__getUUIDToObjectIDMapForRelatedEntityName_relatedAttribute_relatedSortAttribute_filterUUIDs___block_invoke;
  v25[3] = &unk_2798D4578;
  v21 = v19;
  v26 = v21;
  v28 = &v29;
  v22 = attributeCopy;
  v27 = v22;
  [managedObjectContext2 performBlockAndWait:v25];

  v23 = v30[5];
  _Block_object_dispose(&v29, 8);

  return v23;
}

void __119__ULVersionMigrationStore__getUUIDToObjectIDMapForRelatedEntityName_relatedAttribute_relatedSortAttribute_filterUUIDs___block_invoke(uint64_t a1)
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

- (BOOL)_migrateAttributesToRelationships
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = +[ULDefaultsSingleton shared];
  defaultsDictionary = [v7 defaultsDictionary];

  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULAssociatedStateTableMigrationPageSize"];
  v10 = [defaultsDictionary objectForKey:v9];
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntValue = [v10 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = [&unk_286A71C58 unsignedIntValue];
  }

  v12 = unsignedIntValue;

  v51 = [(ULVersionMigrationStore *)self _migrateAttributeToRelationshipForEntityName:v4 deprecatedAttribute:@"loiId_deprecated" sortAttribute:@"timestamp" relationship:@"loi" relatedEntityName:v6 relatedAttribute:@"loiId" relatedSortAttribute:@"lastSeenTimeStamp" fetchBatchSize:v12];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v17 = +[ULDefaultsSingleton shared];
  defaultsDictionary2 = [v17 defaultsDictionary];

  v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULRapportTableMigrationPageSize"];
  v20 = [defaultsDictionary2 objectForKey:v19];
  if (v20 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntValue2 = [v20 unsignedIntValue];
  }

  else
  {
    unsignedIntValue2 = [&unk_286A71C58 unsignedIntValue];
  }

  v22 = unsignedIntValue2;

  v23 = [(ULVersionMigrationStore *)self _migrateAttributeToRelationshipForEntityName:v14 deprecatedAttribute:@"loiId_deprecated" sortAttribute:@"generationTimestamp" relationship:@"loi" relatedEntityName:v16 relatedAttribute:@"loiId" relatedSortAttribute:@"lastSeenTimeStamp" fetchBatchSize:v22];
  v24 = objc_opt_class();
  v25 = NSStringFromClass(v24);
  v26 = objc_opt_class();
  v27 = NSStringFromClass(v26);
  v28 = [(ULVersionMigrationStore *)self _migrateAttributeToRelationshipForEntityName:v25 deprecatedAttribute:@"serviceUUID_deprecated" sortAttribute:@"receivedTimestamp" relationship:@"service" relatedEntityName:v27 relatedAttribute:@"serviceUUID" relatedSortAttribute:@"lastActiveTimestamp" fetchBatchSize:ULSettings::get<ULSettings::LabelTableMigrationPageSize>()];

  v29 = objc_opt_class();
  v30 = NSStringFromClass(v29);
  v31 = objc_opt_class();
  v32 = NSStringFromClass(v31);
  v33 = [(ULVersionMigrationStore *)self _migrateAttributeToRelationshipForEntityName:v30 deprecatedAttribute:@"loiId_deprecated" sortAttribute:@"lastSeenTimeStamp" relationship:@"loi" relatedEntityName:v32 relatedAttribute:@"loiId" relatedSortAttribute:@"lastSeenTimeStamp" fetchBatchSize:ULSettings::get<ULSettings::CustomLoiTableMigrationPageSize>()];

  v34 = objc_opt_class();
  v35 = NSStringFromClass(v34);
  v36 = objc_opt_class();
  v37 = NSStringFromClass(v36);
  LOBYTE(v32) = [(ULVersionMigrationStore *)self _migrateAttributeToRelationshipForEntityName:v35 deprecatedAttribute:@"serviceId_deprecated" sortAttribute:@"lastSeenTimeStamp" relationship:@"service" relatedEntityName:v37 relatedAttribute:@"serviceUUID" relatedSortAttribute:@"lastActiveTimestamp" fetchBatchSize:ULSettings::get<ULSettings::CustomLoiTableMigrationPageSize>()];

  v38 = objc_opt_class();
  v39 = NSStringFromClass(v38);
  v40 = objc_opt_class();
  v41 = NSStringFromClass(v40);
  v42 = [(ULVersionMigrationStore *)self _migrateAttributeToRelationshipForEntityName:v39 deprecatedAttribute:@"loiId_deprecated" sortAttribute:@"generationTimestamp" relationship:@"loi" relatedEntityName:v41 relatedAttribute:@"loiId" relatedSortAttribute:@"lastSeenTimeStamp" fetchBatchSize:ULSettings::get<ULSettings::ModelTableMigrationPageSize>()];

  v43 = objc_opt_class();
  v44 = NSStringFromClass(v43);
  v45 = objc_opt_class();
  v46 = NSStringFromClass(v45);
  v47 = [(ULVersionMigrationStore *)self _migrateAttributeToRelationshipForEntityName:v44 deprecatedAttribute:@"serviceUUID_deprecated" sortAttribute:@"generationTimestamp" relationship:@"service" relatedEntityName:v46 relatedAttribute:@"serviceUUID" relatedSortAttribute:@"lastActiveTimestamp" fetchBatchSize:ULSettings::get<ULSettings::ModelTableMigrationPageSize>()];
  v48 = v51 && v23 && v28 && v33;
  v49 = v32 & v42 & v47;

  return v48 & v49;
}

- (BOOL)_migrateConfigurations
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  managedObjectContext = [(ULStore *)self managedObjectContext];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__ULVersionMigrationStore__migrateConfigurations__block_invoke;
  v5[3] = &unk_2798D4908;
  v5[4] = self;
  v5[5] = &v6;
  [managedObjectContext performBlockAndWait:v5];

  LOBYTE(managedObjectContext) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return managedObjectContext;
}

void __49__ULVersionMigrationStore__migrateConfigurations__block_invoke(uint64_t a1)
{
  v32[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 fetchPropertyForEntityName:v4 propertyToFetch:@"loiId" distinctResults:1 byAndPredicates:0 sortDescriptors:0 andLimit:0];

  if ([v5 count])
  {
    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v6 _getUUIDToObjectIDMapForRelatedEntityName:v8 relatedAttribute:@"loiId" relatedSortAttribute:@"lastSeenTimeStamp" filterUUIDs:v5];

    if ([v9 count])
    {
      v10 = [MEMORY[0x277CBEB18] array];
      v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"configurationType", &unk_286A73C68];
      [v10 addObject:v11];

      v12 = MEMORY[0x277CCAC30];
      v13 = [v9 allKeys];
      v14 = [v12 predicateWithFormat:@"%K IN %@", @"loiId", v13];
      [v10 addObject:v14];

      v28 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"generationTimestamp" ascending:1];
      v15 = *(a1 + 32);
      v16 = objc_opt_class();
      v27 = NSStringFromClass(v16);
      v32[0] = v28;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
      v18 = +[ULDefaultsSingleton shared];
      v19 = [v18 defaultsDictionary];

      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULConfigurationTableMigrationPageSize"];
      v21 = [v19 objectForKey:v20];
      if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v22 = [v21 unsignedIntValue];
      }

      else
      {
        v22 = [&unk_286A71C70 unsignedIntValue];
      }

      v23 = v22;

      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __49__ULVersionMigrationStore__migrateConfigurations__block_invoke_59;
      v29[3] = &unk_2798D4AE8;
      v29[4] = *(a1 + 32);
      v24 = v9;
      v25 = *(a1 + 40);
      v30 = v24;
      v31 = v25;
      [v15 efficientlyFetchManagedObjectsWithEntityName:v27 byAndPredicates:v10 sortDescriptors:v17 andLimit:0 fetchBatchSize:v23 andApplyBlock:v29];
    }
  }

  v26 = [*(a1 + 32) managedObjectContext];
  [v26 reset];
}

void __49__ULVersionMigrationStore__migrateConfigurations__block_invoke_59(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    v9 = v5;
    [*(a1 + 32) _migrateConfigurationInBatch:v5 withLOIMap:*(a1 + 40)];
    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *(*(*(a1 + 48) + 8) + 24) &= [v6 _commitBatchForEntityName:v8 migratingAttribute:0 stop:a3];

    v5 = v9;
  }
}

- (void)_migrateConfigurationInBatch:(id)batch withLOIMap:(id)map
{
  v21 = *MEMORY[0x277D85DE8];
  batchCopy = batch;
  mapCopy = map;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = batchCopy;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        loiId = [v12 loiId];
        v14 = [mapCopy objectForKeyedSubscript:loiId];

        if (v14)
        {
          configurationType = [v12 configurationType];
          if (configurationType)
          {
            if (configurationType == 1)
            {
              [(ULVersionMigrationStore *)self _createAnchorAppearanceMapMOFromConfigurationMO:v12 withLOIObjectID:v14];
            }
          }

          else
          {
            [(ULVersionMigrationStore *)self _createWiFiHistogramMOFromConfigurationMO:v12 withLOIObjectID:v14];
          }
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }
}

- (void)_createWiFiHistogramMOFromConfigurationMO:(id)o withLOIObjectID:(id)d
{
  oCopy = o;
  dCopy = d;
  ConfigProtoFromConfigurationMO = objc_msgSend__getConfigProtoFromConfigurationMO_(self);
  if (v14)
  {
    if ((*(v14 + 48) & 4) != 0)
    {
      v10 = *(v14 + 16);
      if (!v10)
      {
        v10 = *(CLMicroLocationProto::Configuration::default_instance(ConfigProtoFromConfigurationMO) + 16);
      }

      CLMicroLocationProto::WifiHistogram::WifiHistogram(buf, v10);
      CLMicroLocationProto::WifiHistogram::ByteSize(buf, v11);
      operator new[]();
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      [ULVersionMigrationStore _commitBatchForEntityName:migratingAttribute:stop:];
    }

    v9 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_ERROR, "Version Migration: wifiHistogram proto not found in configuration", buf, 2u);
    }

    v12 = v14;
    v14 = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }
  }
}

- (void)_createAnchorAppearanceMapMOFromConfigurationMO:(id)o withLOIObjectID:(id)d
{
  oCopy = o;
  dCopy = d;
  ConfigProtoFromConfigurationMO = objc_msgSend__getConfigProtoFromConfigurationMO_(self);
  if (v14)
  {
    if ((*(v14 + 48) & 8) != 0)
    {
      v10 = *(v14 + 24);
      if (!v10)
      {
        v10 = *(CLMicroLocationProto::Configuration::default_instance(ConfigProtoFromConfigurationMO) + 24);
      }

      CLMicroLocationProto::AnchorAppearanceConfiguration::AnchorAppearanceConfiguration(buf, v10);
      CLMicroLocationProto::AnchorAppearanceConfiguration::ByteSize(buf, v11);
      operator new[]();
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      [ULVersionMigrationStore _commitBatchForEntityName:migratingAttribute:stop:];
    }

    v9 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_ERROR, "Version Migration: anchorAppearance proto not found in configuration", buf, 2u);
    }

    v12 = v14;
    v14 = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }
  }
}

- (BOOL)_migrateRecordingEvents
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  managedObjectContext = [(ULStore *)self managedObjectContext];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__ULVersionMigrationStore__migrateRecordingEvents__block_invoke;
  v5[3] = &unk_2798D4908;
  v5[4] = self;
  v5[5] = &v6;
  [managedObjectContext performBlockAndWait:v5];

  LOBYTE(managedObjectContext) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return managedObjectContext;
}

void __50__ULVersionMigrationStore__migrateRecordingEvents__block_invoke(uint64_t a1)
{
  v32[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 fetchPropertyForEntityName:v4 propertyToFetch:@"loiId" distinctResults:1 byAndPredicates:0 sortDescriptors:0 andLimit:0];

  if ([v5 count])
  {
    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v6 _getUUIDToObjectIDMapForRelatedEntityName:v8 relatedAttribute:@"loiId" relatedSortAttribute:@"lastSeenTimeStamp" filterUUIDs:v5];

    if ([v9 count])
    {
      v10 = [MEMORY[0x277CBEB18] array];
      v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K=%@", @"eventType", &unk_286A71C28];
      [v10 addObject:v11];

      v12 = MEMORY[0x277CCAC30];
      v13 = [v9 allKeys];
      v14 = [v12 predicateWithFormat:@"%K IN %@", @"loiId", v13];
      [v10 addObject:v14];

      v28 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"recordingTimestamp" ascending:1];
      v15 = *(a1 + 32);
      v16 = objc_opt_class();
      v27 = NSStringFromClass(v16);
      v32[0] = v28;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
      v18 = +[ULDefaultsSingleton shared];
      v19 = [v18 defaultsDictionary];

      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULRecordingEventTableMigrationPageSize"];
      v21 = [v19 objectForKey:v20];
      if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v22 = [v21 unsignedIntValue];
      }

      else
      {
        v22 = [&unk_286A71C58 unsignedIntValue];
      }

      v23 = v22;

      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __50__ULVersionMigrationStore__migrateRecordingEvents__block_invoke_2;
      v29[3] = &unk_2798D4AE8;
      v29[4] = *(a1 + 32);
      v24 = v9;
      v25 = *(a1 + 40);
      v30 = v24;
      v31 = v25;
      [v15 efficientlyFetchManagedObjectsWithEntityName:v27 byAndPredicates:v10 sortDescriptors:v17 andLimit:0 fetchBatchSize:v23 andApplyBlock:v29];
    }
  }

  v26 = [*(a1 + 32) managedObjectContext];
  [v26 reset];
}

void __50__ULVersionMigrationStore__migrateRecordingEvents__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    v9 = v5;
    [*(a1 + 32) _migrateRecordingEventsInBatch:v5 withRelationUUIDMap:*(a1 + 40)];
    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *(*(*(a1 + 48) + 8) + 24) &= [v6 _commitBatchForEntityName:v8 migratingAttribute:0 stop:a3];

    v5 = v9;
  }
}

- (void)_migrateRecordingEventsInBatch:(id)batch withRelationUUIDMap:(id)map
{
  v25 = *MEMORY[0x277D85DE8];
  batchCopy = batch;
  mapCopy = map;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = batchCopy;
  v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        loiId = [v11 loiId];
        v13 = [mapCopy objectForKeyedSubscript:loiId];

        if (v13)
        {
          handledRecordingUUIDs = [(ULVersionMigrationStore *)self handledRecordingUUIDs];
          recordingUUID = [v11 recordingUUID];
          v16 = [handledRecordingUUIDs containsObject:recordingUUID];

          if ((v16 & 1) == 0)
          {
            if ([(ULVersionMigrationStore *)self _createScanningEventFromRecordingEvent:v11 withRelatedLOIObjectID:v13])
            {
              handledRecordingUUIDs2 = [(ULVersionMigrationStore *)self handledRecordingUUIDs];
              recordingUUID2 = [v11 recordingUUID];
              [handledRecordingUUIDs2 addObject:recordingUUID2];
            }
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }
}

- (BOOL)_createScanningEventFromRecordingEvent:(id)event withRelatedLOIObjectID:(id)d
{
  eventCopy = event;
  dCopy = d;
  event = [eventCopy event];
  bytes = [event bytes];
  event2 = [eventCopy event];
  [event2 length];
  v11 = wireless_diagnostics::google::protobuf::MessageLite::ParseFromArray(v32, bytes);

  if (v11)
  {
    v12 = [ULScanningEventMO alloc];
    managedObjectContext = [(ULStore *)self managedObjectContext];
    v14 = [(ULScanningEventMO *)v12 initWithContext:managedObjectContext];

    recordingUUID = [eventCopy recordingUUID];
    [(ULScanningEventMO *)v14 setScanEventUUID:recordingUUID];

    deviceClass = [MEMORY[0x277D28868] deviceClass];
    [(ULScanningEventMO *)v14 setDeviceIdentifier:deviceClass];

    [eventCopy recordingTimestamp];
    [(ULScanningEventMO *)v14 setTimestamp:?];
    managedObjectContext2 = [(ULStore *)self managedObjectContext];
    v18 = [managedObjectContext2 existingObjectWithID:dCopy error:0];
    [(ULScanningEventMO *)v14 setLoi:v18];

    -[ULScanningEventMO setScanType:](v14, "setScanType:", [eventCopy eventSubType] != 2);
    [(ULScanningEventMO *)v14 setBleSuspended:v32[77] & ((v35 & 0x2000) >> 13)];
    [(ULScanningEventMO *)v14 setUwbSuspended:v32[76] & ((v35 & 0x800) >> 11)];
    [(ULScanningEventMO *)v14 setWifiDisabled:0];
    [(ULScanningEventMO *)v14 setScanResult:0];
    v19 = [(ULScanningEventMO *)v14 setMotionState:0];
    if ((v36 & 2) != 0 && v33 <= 3)
    {
      v19 = [(ULScanningEventMO *)v14 setMotionState:(0x3000200020001uLL >> (16 * v33)) & 3];
    }

    if (v36)
    {
      v20 = v34;
      if (!v34)
      {
        v19 = CLMicroLocationProto::RecordingEvent::default_instance(v19);
        v20 = *(v19 + 16);
      }

      if (*(v20 + 24))
      {
        v21 = v34;
        if (!v34)
        {
          v19 = CLMicroLocationProto::RecordingEvent::default_instance(v19);
          v21 = *(v19 + 16);
        }

        if ((*(v21 + 24) & 2) != 0)
        {
          v22 = MEMORY[0x277CCABB0];
          v23 = v34;
          if (!v34)
          {
            v23 = *(CLMicroLocationProto::RecordingEvent::default_instance(v19) + 128);
          }

          v24 = [v22 numberWithUnsignedLongLong:*(v23 + 8)];
          [(ULScanningEventMO *)v14 setWifiAssociationBSSID:v24];

          v26 = MEMORY[0x277CCABB0];
          v27 = v34;
          if (!v34)
          {
            v27 = *(CLMicroLocationProto::RecordingEvent::default_instance(v25) + 128);
          }

          v28 = [v26 numberWithInt:*(v27 + 16)];
          [(ULScanningEventMO *)v14 setWifiAssociationRSSI:v28];
        }
      }
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULVersionMigrationStore _commitBatchForEntityName:migratingAttribute:stop:];
    }

    v29 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *v31 = 0;
      _os_log_impl(&dword_258FE9000, v29, OS_LOG_TYPE_ERROR, "Version Migration: Failed to deserialize recordingEvent protobuf from byte stream", v31, 2u);
    }
  }

  CLMicroLocationProto::RecordingEvent::~RecordingEvent(v32);

  return v11;
}

- (BOOL)_migrateMeasurements
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  managedObjectContext = [(ULStore *)self managedObjectContext];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__ULVersionMigrationStore__migrateMeasurements__block_invoke;
  v5[3] = &unk_2798D4908;
  v5[4] = self;
  v5[5] = &v6;
  [managedObjectContext performBlockAndWait:v5];

  LOBYTE(managedObjectContext) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return managedObjectContext;
}

void __47__ULVersionMigrationStore__migrateMeasurements__block_invoke(uint64_t a1)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 _getUUIDToObjectIDMapForRelatedEntityName:v4 relatedAttribute:@"scanEventUUID" relatedSortAttribute:@"timestamp" filterUUIDs:0];

  if ([v5 count])
  {
    v6 = [MEMORY[0x277CBEB18] array];
    v7 = MEMORY[0x277CCAC30];
    v8 = [v5 allKeys];
    v9 = [v7 predicateWithFormat:@"%K IN %@", @"recordingUUID", v8];
    [v6 addObject:v9];

    v23 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"scanCFTimestamp" ascending:1];
    v10 = *(a1 + 32);
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v27[0] = v23;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
    v14 = +[ULDefaultsSingleton shared];
    v15 = [v14 defaultsDictionary];

    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMeasurementTableMigrationPageSize"];
    v17 = [v15 objectForKey:v16];
    if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v18 = [v17 unsignedIntValue];
    }

    else
    {
      v18 = [&unk_286A71C58 unsignedIntValue];
    }

    v19 = v18;

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __47__ULVersionMigrationStore__migrateMeasurements__block_invoke_2;
    v24[3] = &unk_2798D4AE8;
    v24[4] = *(a1 + 32);
    v20 = v5;
    v21 = *(a1 + 40);
    v25 = v20;
    v26 = v21;
    [v10 efficientlyFetchManagedObjectsWithEntityName:v12 byAndPredicates:v6 sortDescriptors:v13 andLimit:0 fetchBatchSize:v19 andApplyBlock:v24];
  }

  v22 = [*(a1 + 32) managedObjectContext];
  [v22 reset];
}

void __47__ULVersionMigrationStore__migrateMeasurements__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    v9 = v5;
    [*(a1 + 32) _migrateMeasurementsInBatch:v5 withRelationUUIDMap:*(a1 + 40)];
    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *(*(*(a1 + 48) + 8) + 24) &= [v6 _commitBatchForEntityName:v8 migratingAttribute:0 stop:a3];

    v5 = v9;
  }
}

- (void)_migrateMeasurementsInBatch:(id)batch withRelationUUIDMap:(id)map
{
  v20 = *MEMORY[0x277D85DE8];
  batchCopy = batch;
  mapCopy = map;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = batchCopy;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        recordingUUID = [v12 recordingUUID];
        v14 = [mapCopy objectForKeyedSubscript:recordingUUID];

        if (v14)
        {
          [(ULVersionMigrationStore *)self _createMeasurementFromDeprecatedMeasurement:v12 withRelatedScanningEventObjectID:v14];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

- (void)_createMeasurementFromDeprecatedMeasurement:(id)measurement withRelatedScanningEventObjectID:(id)d
{
  measurementCopy = measurement;
  dCopy = d;
  operator new();
}

- (void)_createWiFiMeasurementFromDeprecatedMeasurement:(id)measurement withMeasurementProto:()unique_ptr<CLMicroLocationProto:(std:(id)proto :default_delete<CLMicroLocationProto::Measurement>>)a4 :Measurement andRelatedScanningEventObjectID:
{
  measurementCopy = measurement;
  protoCopy = proto;
  if ((a4.var0->var0[9] & 4) != 0)
  {
    v9 = [ULWiFiMeasurementMO alloc];
    managedObjectContext = [(ULStore *)self managedObjectContext];
    v11 = [(ULWiFiMeasurementMO *)v9 initWithContext:managedObjectContext];

    managedObjectContext2 = [(ULStore *)self managedObjectContext];
    v13 = [managedObjectContext2 existingObjectWithID:protoCopy error:0];
    [(ULWiFiMeasurementMO *)v11 setScanningEvent:v13];

    v14 = [(ULWiFiMeasurementMO *)v11 setTimestamp:*(a4.var0->var0 + 1)];
    v15 = *(a4.var0->var0 + 2);
    if (!v15)
    {
      v15 = *(CLMicroLocationProto::Measurement::default_instance(v14) + 16);
    }

    [(ULWiFiMeasurementMO *)v11 setChannel:*(v15 + 32)];
    v16 = -[ULWiFiMeasurementMO setFlags:](v11, "setFlags:", [measurementCopy flags]);
    v17 = *(a4.var0->var0 + 2);
    if (!v17)
    {
      v17 = *(CLMicroLocationProto::Measurement::default_instance(v16) + 16);
    }

    v18 = [(ULWiFiMeasurementMO *)v11 setRssi:*(v17 + 20)];
    v19 = *(a4.var0->var0 + 2);
    if (!v19)
    {
      v19 = *(CLMicroLocationProto::Measurement::default_instance(v18) + 16);
    }

    [(ULWiFiMeasurementMO *)v11 setSourceBSSID:*(v19 + 24)];
    if ([(ULWiFiMeasurementMO *)v11 channel]<= 13)
    {
      v20 = 1;
    }

    else
    {
      v20 = 2;
    }

    [(ULWiFiMeasurementMO *)v11 setBand:v20];
  }
}

- (void)_createBLEMeasurementFromDeprecatedMeasurement:(id)measurement withMeasurementProto:()unique_ptr<CLMicroLocationProto:(std:(id)proto :default_delete<CLMicroLocationProto::Measurement>>)a4 :Measurement andRelatedScanningEventObjectID:
{
  v34 = *MEMORY[0x277D85DE8];
  measurementCopy = measurement;
  protoCopy = proto;
  if ((a4.var0->var0[9] & 0x40) != 0)
  {
    v10 = [ULBLEMeasurementMO alloc];
    managedObjectContext = [(ULStore *)self managedObjectContext];
    v12 = [(ULBLEMeasurementMO *)v10 initWithContext:managedObjectContext];

    managedObjectContext2 = [(ULStore *)self managedObjectContext];
    v14 = [managedObjectContext2 existingObjectWithID:protoCopy error:0];
    [(ULBLEMeasurementMO *)v12 setScanningEvent:v14];

    v15 = [(ULBLEMeasurementMO *)v12 setTimestamp:*(a4.var0->var0 + 1)];
    v16 = *(a4.var0->var0 + 6);
    if (!v16)
    {
      v16 = *(CLMicroLocationProto::Measurement::default_instance(v15) + 48);
    }

    v17 = [(ULBLEMeasurementMO *)v12 setRssi:*(v16 + 20)];
    v18 = *(a4.var0->var0 + 6);
    if (!v18)
    {
      v17 = CLMicroLocationProto::Measurement::default_instance(v17);
      v18 = *(v17 + 6);
    }

    if ((*(v18 + 64) & 0x80) != 0)
    {
      v19 = *(a4.var0->var0 + 6);
      if (!v19)
      {
        v19 = *(CLMicroLocationProto::Measurement::default_instance(v17) + 48);
      }

      CLMicroLocationProtobufHelper::uuidFromProtobuf(*(v19 + 48), v32);
      if (v33 == 1)
      {
        v20 = objc_alloc(MEMORY[0x277CCAD78]);
        if ((v33 & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        v21 = [v20 initWithUUIDBytes:v32];
        uUIDString = [v21 UUIDString];
        [(ULBLEMeasurementMO *)v12 setSourceIdsUUID:uUIDString];
      }
    }

    v23 = [(ULBLEMeasurementMO *)v12 setDeviceModel:0];
    v24 = *(a4.var0->var0 + 6);
    if (!v24)
    {
      v23 = CLMicroLocationProto::Measurement::default_instance(v23);
      v24 = *(v23 + 6);
    }

    if ((*(v24 + 64) & 0x40) != 0)
    {
      v25 = *(a4.var0->var0 + 6);
      if (!v25)
      {
        v25 = *(CLMicroLocationProto::Measurement::default_instance(v23) + 48);
      }

      v26 = *(v25 + 40);
      if (*(v26 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v30, *v26, *(v26 + 1));
      }

      else
      {
        v27 = *v26;
        v30.__r_.__value_.__r.__words[2] = *(v26 + 2);
        *&v30.__r_.__value_.__l.__data_ = v27;
      }

      v31 = 1;
      objc_msgSend_anchorDeviceModelAllowedMap(self);
      [(ULBLEMeasurementMO *)v12 setDeviceModel:CLMicroLocationUtils::convertModelStringToDeviceModel(&v30, v28)];
      std::__tree<std::__value_type<std::string,DeviceModel>,std::__map_value_compare<std::string,std::__value_type<std::string,DeviceModel>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeviceModel>>>::destroy(v28, v29);
      if (v31 == 1 && SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v30.__r_.__value_.__l.__data_);
      }
    }
  }
}

- (void)_createUWBMeasurementFromDeprecatedMeasurement:(id)measurement withMeasurementProto:()unique_ptr<CLMicroLocationProto:(std:(id)proto :default_delete<CLMicroLocationProto::Measurement>>)a4 :Measurement andRelatedScanningEventObjectID:
{
  v28 = *MEMORY[0x277D85DE8];
  measurementCopy = measurement;
  protoCopy = proto;
  if ((a4.var0->var0[9] & 0x80) != 0)
  {
    v10 = [ULUWBMeasurementMO alloc];
    managedObjectContext = [(ULStore *)self managedObjectContext];
    v12 = [(ULUWBMeasurementMO *)v10 initWithContext:managedObjectContext];

    managedObjectContext2 = [(ULStore *)self managedObjectContext];
    v14 = [managedObjectContext2 existingObjectWithID:protoCopy error:0];
    [(ULUWBMeasurementMO *)v12 setScanningEvent:v14];

    v15 = [(ULUWBMeasurementMO *)v12 setTimestamp:*(a4.var0->var0 + 1)];
    v17 = *(a4.var0->var0 + 7);
    if (!v17)
    {
      v17 = *(CLMicroLocationProto::Measurement::default_instance(v15) + 56);
    }

    LODWORD(v16) = *(v17 + 20);
    v18 = [(ULUWBMeasurementMO *)v12 setRange:v16];
    v19 = *(a4.var0->var0 + 7);
    if (!v19)
    {
      v18 = CLMicroLocationProto::Measurement::default_instance(v18);
      v19 = *(v18 + 7);
    }

    if ((*(v19 + 56) & 0x10) != 0)
    {
      v20 = *(a4.var0->var0 + 7);
      if (!v20)
      {
        v20 = *(CLMicroLocationProto::Measurement::default_instance(v18) + 56);
      }

      CLMicroLocationProtobufHelper::uuidFromProtobuf(*(v20 + 32), v26);
      if (v27 == 1)
      {
        v21 = objc_alloc(MEMORY[0x277CCAD78]);
        if ((v27 & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        v22 = [v21 initWithUUIDBytes:v26];
        uUIDString = [v22 UUIDString];
        [(ULUWBMeasurementMO *)v12 setSourceIdsUUID:uUIDString];
      }
    }

    v24 = [(ULUWBMeasurementMO *)v12 setDeviceModel:0];
    v25 = *(a4.var0->var0 + 7);
    if (!v25)
    {
      v25 = *(CLMicroLocationProto::Measurement::default_instance(v24) + 56);
    }

    if (*(v25 + 40) == 2)
    {
      [(ULUWBMeasurementMO *)v12 setDeviceModel:2];
    }
  }
}

- (BOOL)_connectLabelsToScanningEvents
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 1;
  _getTriggerToRecordingUUIDMap = [(ULVersionMigrationStore *)self _getTriggerToRecordingUUIDMap];
  if ([_getTriggerToRecordingUUIDMap count])
  {
    managedObjectContext = [(ULStore *)self managedObjectContext];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __57__ULVersionMigrationStore__connectLabelsToScanningEvents__block_invoke;
    v7[3] = &unk_2798D4B38;
    v7[4] = self;
    v8 = _getTriggerToRecordingUUIDMap;
    v9 = &v10;
    [managedObjectContext performBlockAndWait:v7];

    v5 = *(v11 + 24);
  }

  else
  {
    v5 = 1;
  }

  _Block_object_dispose(&v10, 8);
  return v5 & 1;
}

void __57__ULVersionMigrationStore__connectLabelsToScanningEvents__block_invoke(uint64_t a1)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [*(a1 + 40) allValues];
  v6 = [v2 _getUUIDToObjectIDMapForRelatedEntityName:v4 relatedAttribute:@"scanEventUUID" relatedSortAttribute:@"timestamp" filterUUIDs:v5];

  if ([v6 count])
  {
    v7 = [MEMORY[0x277CBEB18] array];
    v8 = MEMORY[0x277CCAC30];
    v9 = [*(a1 + 40) allKeys];
    v10 = [v8 predicateWithFormat:@"%K IN %@", @"triggerUUID_deprecated", v9];
    [v7 addObject:v10];

    v11 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"receivedTimestamp" ascending:1];
    v12 = *(a1 + 32);
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v25[0] = v11;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
    v16 = ULSettings::get<ULSettings::LabelTableMigrationPageSize>();
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __57__ULVersionMigrationStore__connectLabelsToScanningEvents__block_invoke_2;
    v21[3] = &unk_2798D4B10;
    v17 = *(a1 + 40);
    v21[4] = *(a1 + 32);
    v22 = v17;
    v18 = v6;
    v19 = *(a1 + 48);
    v23 = v18;
    v24 = v19;
    [v12 efficientlyFetchManagedObjectsWithEntityName:v14 byAndPredicates:v7 sortDescriptors:v15 andLimit:0 fetchBatchSize:v16 andApplyBlock:v21];
  }

  v20 = [*(a1 + 32) managedObjectContext];
  [v20 reset];
}

void __57__ULVersionMigrationStore__connectLabelsToScanningEvents__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    v9 = v5;
    [*(a1 + 32) _connectLabelsInBatch:v5 withTriggerUUIDMap:*(a1 + 40) andScanEventsUUIDMap:*(a1 + 48)];
    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *(*(*(a1 + 56) + 8) + 24) &= [v6 _commitBatchForEntityName:v8 migratingAttribute:@"triggerUUID_deprecated" stop:a3];

    v5 = v9;
  }
}

- (void)_connectLabelsInBatch:(id)batch withTriggerUUIDMap:(id)map andScanEventsUUIDMap:(id)dMap
{
  selfCopy = self;
  v28 = *MEMORY[0x277D85DE8];
  batchCopy = batch;
  mapCopy = map;
  dMapCopy = dMap;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = batchCopy;
  v10 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        triggerUUID_deprecated = [v13 triggerUUID_deprecated];
        v15 = [mapCopy objectForKeyedSubscript:triggerUUID_deprecated];

        if (v15)
        {
          v16 = [dMapCopy objectForKeyedSubscript:v15];
          if (v16)
          {
            managedObjectContext = [(ULStore *)selfCopy managedObjectContext];
            v18 = [managedObjectContext existingObjectWithID:v16 error:0];
            [v13 setScanningEvent:v18];

            scanningEvent = [v13 scanningEvent];
            v20 = [scanningEvent loi];
            [v13 setLoi:v20];
          }

          [v13 setTriggerUUID_deprecated:0];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }
}

- (id)_getTriggerToRecordingUUIDMap
{
  v32[2] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v23 = [(ULStore *)self fetchPropertyForEntityName:v4 propertyToFetch:@"triggerUUID_deprecated" distinctResults:1 byAndPredicates:0 sortDescriptors:0 andLimit:0];

  array = [MEMORY[0x277CBEB18] array];
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"triggerUUID", v23];
  [array addObject:v6];

  v24 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"receivedTimestamp" ascending:1];
  v32[0] = @"triggerUUID";
  v32[1] = @"recordingUUID";
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v31 = v24;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
  LOBYTE(v21) = 1;
  v22 = [(ULStore *)self fetchPropertiesForEntityName:v8 propertiesToFetch:v25 propertiesToGroupBy:0 distinctResults:1 byAndPredicates:array sortDescriptors:v9 andLimit:0 resetContext:v21];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = v22;
  v12 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v12)
  {
    v13 = *v27;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v26 + 1) + 8 * i);
        v16 = [v15 objectForKeyedSubscript:@"triggerUUID"];
        v17 = [v15 objectForKeyedSubscript:@"recordingUUID"];
        v18 = v17;
        if (v16)
        {
          v19 = v17 == 0;
        }

        else
        {
          v19 = 1;
        }

        if (!v19)
        {
          [dictionary setObject:v17 forKeyedSubscript:v16];
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v12);
  }

  return dictionary;
}

- (void)_updateContextLayersForLabelsInBatch:(id)batch
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  batchCopy = batch;
  v4 = [batchCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(batchCopy);
        }

        v7 = *(*(&v13 + 1) + 8 * v6);
        v8 = objc_alloc(MEMORY[0x277CCAD78]);
        service = [v7 service];
        serviceUUID = [service serviceUUID];
        v11 = [v8 initWithUUIDString:serviceUUID];

        v12 = [MEMORY[0x277D28788] getDefaultContextLayerForService:v11];
        [v7 setContextLayerType:{objc_msgSend(MEMORY[0x277D28788], "contextLayerEnumFromStringType:", v12)}];

        ++v6;
      }

      while (v4 != v6);
      v4 = [batchCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }
}

- (BOOL)_updateLabelsContextLayers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  managedObjectContext = [(ULStore *)self managedObjectContext];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__ULVersionMigrationStore__updateLabelsContextLayers__block_invoke;
  v5[3] = &unk_2798D4908;
  v5[4] = self;
  v5[5] = &v6;
  [managedObjectContext performBlockAndWait:v5];

  LOBYTE(managedObjectContext) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return managedObjectContext;
}

void __53__ULVersionMigrationStore__updateLabelsContextLayers__block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"receivedTimestamp" ascending:1];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %@", @"contextLayerType", &unk_286A71C40];
  [v3 addObject:v4];

  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != NIL", @"service"];
  [v3 addObject:v5];

  v6 = *(a1 + 32);
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v14[0] = v2;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v10 = ULSettings::get<ULSettings::LabelTableMigrationPageSize>();
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__ULVersionMigrationStore__updateLabelsContextLayers__block_invoke_109;
  v12[3] = &unk_2798D4528;
  v13 = *(a1 + 32);
  [v6 efficientlyFetchManagedObjectsWithEntityName:v8 byAndPredicates:v3 sortDescriptors:v9 andLimit:0 fetchBatchSize:v10 andApplyBlock:v12];

  v11 = [*(a1 + 32) managedObjectContext];
  [v11 reset];
}

void __53__ULVersionMigrationStore__updateLabelsContextLayers__block_invoke_109(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    v9 = v5;
    [*(a1 + 32) _updateContextLayersForLabelsInBatch:v5];
    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *(*(*(a1 + 40) + 8) + 24) &= [v6 _commitBatchForEntityName:v8 migratingAttribute:@"contextLayerType" stop:a3];

    v5 = v9;
  }
}

- (void)setAnchorDeviceModelAllowedMap:()map<std:()DeviceModel :()std:(std:(DeviceModel>>> *)std :allocator<std::pair<const)std::string :less<std::string> string
{
  p_anchorDeviceModelAllowedMap = &self->_anchorDeviceModelAllowedMap;
  if (p_anchorDeviceModelAllowedMap != std)
  {
    std::__tree<std::__value_type<std::string,DeviceModel>,std::__map_value_compare<std::string,std::__value_type<std::string,DeviceModel>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,DeviceModel>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,DeviceModel>,std::__tree_node<std::__value_type<std::string,DeviceModel>,void *> *,long>>(p_anchorDeviceModelAllowedMap, std->__tree_.__begin_node_, &std->__tree_.__end_node_.__left_);
  }
}

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 5) = 0;
  *(self + 4) = self + 40;
  return self;
}

@end