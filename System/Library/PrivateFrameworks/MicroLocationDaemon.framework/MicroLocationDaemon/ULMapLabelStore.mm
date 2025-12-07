@interface ULMapLabelStore
+ (unsigned)maxEntriesInTable;
- (BOOL)deleteOrphanRecords;
- (BOOL)insertDataObjects:(const void *)objects forLabelObjectID:(id)d andModelUUID:(const uuid *)iD;
- (BOOL)insertLabelDOAndMapLabelDO:(const void *)o forScanningEventUUID:(const uuid *)d;
- (BOOL)insertMapLabelsWithRelatedLabelsObjectIDs:(const void *)ds;
- (__n128)insertDataObjects:forLabelObjectID:andModelUUID:;
- (id)_createLabelMOFromDO:(const void *)o forScanningEventUUID:(const uuid *)d andServiceUUID:(const uuid *)iD;
- (id)_createMapLabelMOFromDO:(const void *)o withLabelMO:(id)mO modelMO:(id)modelMO;
- (id)_fetchLabelMOWithObjectID:(id)d withManagedObjectContext:(id)context;
- (id)_fetchRelatedModelMOWithUUID:(const uuid *)d;
- (id)insertDataObjects:forLabelObjectID:andModelUUID:;
- (uint64_t)insertDataObjects:forLabelObjectID:andModelUUID:;
- (vector<ULMapLabelDO,)fetchInternalMapLabelsForModel:(ULMapLabelStore *)self limit:(SEL)limit ascending:(const uuid *)ascending;
- (vector<ULMapLabelDO,)fetchMapLabelsForModel:(ULMapLabelStore *)self andContextLayers:(SEL)layers limit:(const uuid *)limit ascending:(const void *)ascending;
- (vector<ULMapLabelDO,)fetchMapLabelsForModel:(ULMapLabelStore *)self forService:(SEL)service limit:(const uuid *)limit ascending:(const uuid *)ascending;
@end

@implementation ULMapLabelStore

+ (unsigned)maxEntriesInTable
{
  v2 = +[ULDefaultsSingleton shared];
  defaultsDictionary = [v2 defaultsDictionary];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMapLabelTableMaxRows"];
  v5 = [defaultsDictionary objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntValue = [v5 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = [&unk_286A71A48 unsignedIntValue];
  }

  v7 = unsignedIntValue;

  return v7;
}

- (BOOL)insertDataObjects:(const void *)objects forLabelObjectID:(id)d andModelUUID:(const uuid *)iD
{
  dCopy = d;
  if (*objects == *(objects + 1))
  {
    v10 = 1;
  }

  else
  {
    managedObjectContext = [(ULStore *)self managedObjectContext];
    v12 = [(ULMapLabelStore *)self _fetchLabelMOWithObjectID:dCopy withManagedObjectContext:managedObjectContext];

    if (v12)
    {
      [(ULMapLabelStore *)self _fetchRelatedModelMOWithUUID:iD];
      if (objc_claimAutoreleasedReturnValue())
      {
        operator new();
      }

      v10 = 0;
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (BOOL)insertMapLabelsWithRelatedLabelsObjectIDs:(const void *)ds
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = *ds;
  v4 = *(ds + 1);
  if (*ds == v4)
  {
    v16 = 1;
  }

  else
  {
    v25 = *(v3 + 216);
    do
    {
      if (*(v3 + 216) != v25 || *(v3 + 224) != *(&v25 + 1))
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          [ULMapLabelStore insertMapLabelsWithRelatedLabelsObjectIDs:];
        }

        v17 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_258FE9000, v17, OS_LOG_TYPE_ERROR, "Map labels provided for insert expected to include same model UUID", buf, 2u);
        }

        v16 = 0;
        return v16 & 1;
      }

      v3 += 240;
    }

    while (v3 != v4);
    *buf = 0;
    v22 = buf;
    v23 = 0x2020000000;
    v24 = 0;
    v8 = [(ULMapLabelStore *)self _fetchRelatedModelMOWithUUID:&v25];
    if (v8)
    {
      v9 = *ds;
      v10 = *(ds + 1);
      while (v9 != v10)
      {
        v11 = *(v9 + 232);
        managedObjectContext = [(ULStore *)self managedObjectContext];
        v13 = [(ULMapLabelStore *)self _fetchLabelMOWithObjectID:v11 withManagedObjectContext:managedObjectContext];

        if (!v13)
        {
          goto LABEL_21;
        }

        v14 = [(ULMapLabelStore *)self _createMapLabelMOFromDO:v9 withLabelMO:v13 modelMO:v8];
        v15 = v14 == 0;

        if (v15)
        {
          goto LABEL_21;
        }

        v9 += 240;
      }

      managedObjectContext2 = [(ULStore *)self managedObjectContext];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __61__ULMapLabelStore_insertMapLabelsWithRelatedLabelsObjectIDs___block_invoke;
      v20[3] = &unk_2798D44D8;
      v20[4] = self;
      v20[5] = buf;
      [managedObjectContext2 performBlockAndWait:v20];

      v16 = v22[24];
    }

    else
    {
LABEL_21:
      v16 = 0;
    }

    _Block_object_dispose(buf, 8);
  }

  return v16 & 1;
}

uint64_t __61__ULMapLabelStore_insertMapLabelsWithRelatedLabelsObjectIDs___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) commitChangesToStore];
  v2 = *(a1 + 32);

  return [v2 deleteOldestRecordsIfFull];
}

- (BOOL)insertLabelDOAndMapLabelDO:(const void *)o forScanningEventUUID:(const uuid *)d
{
  v18 = *MEMORY[0x277D85DE8];
  if ((*(o + 152) & 1) == 0)
  {
    [ULMapLabelStore insertLabelDOAndMapLabelDO:a2 forScanningEventUUID:?];
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v6 = [(ULMapLabelStore *)self _createLabelMOFromDO:o + 88 forScanningEventUUID:d andServiceUUID:o + 136];
  if (v6)
  {
    v7 = [(ULMapLabelStore *)self _fetchRelatedModelMOWithUUID:o + 216];
    if (v7)
    {
      v8 = [(ULMapLabelStore *)self _createMapLabelMOFromDO:o withLabelMO:v6 modelMO:v7];
      if (v8)
      {
        managedObjectContext = [(ULStore *)self managedObjectContext];
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __67__ULMapLabelStore_insertLabelDOAndMapLabelDO_forScanningEventUUID___block_invoke;
        v13[3] = &unk_2798D44D8;
        v13[4] = self;
        v13[5] = &v14;
        [managedObjectContext performBlockAndWait:v13];

        v10 = *(v15 + 24);
LABEL_16:

        goto LABEL_17;
      }
    }

    else
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULMapLabelStore insertLabelDOAndMapLabelDO:forScanningEventUUID:];
      }

      v11 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        operator new();
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        [ULMapLabelStore insertLabelDOAndMapLabelDO:forScanningEventUUID:];
      }

      v8 = logObject_MicroLocation_Default;
      if (os_signpost_enabled(v8))
      {
        operator new();
      }
    }

    v10 = 0;
    goto LABEL_16;
  }

  v10 = 0;
LABEL_17:

  _Block_object_dispose(&v14, 8);
  return v10 & 1;
}

uint64_t __67__ULMapLabelStore_insertLabelDOAndMapLabelDO_forScanningEventUUID___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) commitChangesToStore];
  v2 = [*(a1 + 32) dbStore];
  v3 = (*(*v2 + 48))(v2);
  [v3 deleteOldestRecordsIfFull];

  v4 = *(a1 + 32);

  return [v4 deleteOldestRecordsIfFull];
}

- (vector<ULMapLabelDO,)fetchMapLabelsForModel:(ULMapLabelStore *)self forService:(SEL)service limit:(const uuid *)limit ascending:(const uuid *)ascending
{
  v7 = a7;
  v25[1] = *MEMORY[0x277D85DE8];
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  v12 = objc_autoreleasePoolPush();
  v13 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:limit];
  uUIDString = [v13 UUIDString];

  v15 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:ascending];
  uUIDString2 = [v15 UUIDString];

  array = [MEMORY[0x277CBEB18] array];
  v18 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K=%@", @"model", @"modelUUID", uUIDString];
  [array addObject:v18];

  v19 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K.%K=%@", @"label", @"service", @"serviceUUID", uUIDString2];
  [array addObject:v19];

  v20 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"timestamp" ascending:v7];
  v25[0] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  objc_msgSend__fetchMapLabelByAndPredicates_sortDescriptors_andLimit_(self);
  std::vector<ULMapLabelDO>::__vdeallocate(retstr);
  *retstr = v23;
  memset(&v23, 0, sizeof(v23));
  v24 = &v23;
  std::vector<ULMapLabelDO>::__destroy_vector::operator()[abi:ne200100](&v24);

  objc_autoreleasePoolPop(v12);
  return result;
}

- (vector<ULMapLabelDO,)fetchInternalMapLabelsForModel:(ULMapLabelStore *)self limit:(SEL)limit ascending:(const uuid *)ascending
{
  v6 = a6;
  v21[1] = *MEMORY[0x277D85DE8];
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  v10 = objc_autoreleasePoolPush();
  v11 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:ascending];
  uUIDString = [v11 UUIDString];

  array = [MEMORY[0x277CBEB18] array];
  v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K = %@", @"model", @"modelUUID", uUIDString];
  [array addObject:v14];

  v15 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K = NIL AND %K.%K = NIL", @"label", @"service", @"label", @"scanningEvent"];
  [array addObject:v15];

  v16 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"timestamp" ascending:v6];
  v21[0] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  objc_msgSend__fetchMapLabelByAndPredicates_sortDescriptors_andLimit_(self);
  std::vector<ULMapLabelDO>::__vdeallocate(retstr);
  *retstr = v19;
  memset(&v19, 0, sizeof(v19));
  v20 = &v19;
  std::vector<ULMapLabelDO>::__destroy_vector::operator()[abi:ne200100](&v20);

  objc_autoreleasePoolPop(v10);
  return result;
}

- (vector<ULMapLabelDO,)fetchMapLabelsForModel:(ULMapLabelStore *)self andContextLayers:(SEL)layers limit:(const uuid *)limit ascending:(const void *)ascending
{
  v7 = a7;
  v27[1] = *MEMORY[0x277D85DE8];
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  v12 = objc_autoreleasePoolPush();
  v13 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:limit];
  uUIDString = [v13 UUIDString];

  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  for (i = *(ascending + 2); i; i = *i)
  {
    if (i[2])
    {
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
      [array2 addObject:v18];
    }
  }

  v19 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K = %@", @"model", @"modelUUID", uUIDString];
  [array addObject:v19];

  v20 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K IN %@", @"label", @"contextLayerType", array2];
  [array addObject:v20];

  v21 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"timestamp" ascending:v7];
  v27[0] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
  objc_msgSend__fetchMapLabelByAndPredicates_sortDescriptors_andLimit_(self);
  std::vector<ULMapLabelDO>::__vdeallocate(retstr);
  *&retstr->var0 = v24;
  retstr->var2 = v25;
  v25 = 0;
  v24 = 0uLL;
  v26 = &v24;
  std::vector<ULMapLabelDO>::__destroy_vector::operator()[abi:ne200100](&v26);

  objc_autoreleasePoolPop(v12);
  return result;
}

- (BOOL)deleteOrphanRecords
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = NIL || %K = NIL", @"label", @"model"];
  [array addObject:v4];

  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  LOBYTE(self) = [(ULStore *)self batchDeleteObjectsWithEntityName:v6 byAndPredicates:array sortDescriptors:0 andLimit:0];

  return self;
}

- (id)_createLabelMOFromDO:(const void *)o forScanningEventUUID:(const uuid *)d andServiceUUID:(const uuid *)iD
{
  v49 = *MEMORY[0x277D85DE8];
  dbStore = [(ULStore *)self dbStore];
  v10 = (*(dbStore->var0 + 18))(dbStore);
  managedObjectContext = [(ULStore *)self managedObjectContext];
  v12 = [v10 fetchScanningEventManagedObjectWithUUID:d withManagedObjectContext:managedObjectContext];

  if (v12)
  {
    dbStore2 = [(ULStore *)self dbStore];
    v14 = (*(dbStore2->var0 + 13))(dbStore2);
    managedObjectContext2 = [(ULStore *)self managedObjectContext];
    v16 = [v14 fetchServiceManagedObjectWithUUID:iD withManagedObjectContext:managedObjectContext2];

    if (v16)
    {
      *buf = 0;
      v44 = buf;
      v45 = 0x3032000000;
      v46 = __Block_byref_object_copy__15;
      v47 = __Block_byref_object_dispose__15;
      v48 = 0;
      managedObjectContext3 = [(ULStore *)self managedObjectContext];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __76__ULMapLabelStore__createLabelMOFromDO_forScanningEventUUID_andServiceUUID___block_invoke;
      v31[3] = &unk_2798D4868;
      v35 = buf;
      oCopy = o;
      v32 = v12;
      v33 = v16;
      selfCopy = self;
      [managedObjectContext3 performBlockAndWait:v31];

      v18 = *(v44 + 5);
      if (v18)
      {
        v19 = v18;
      }

      else
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          [ULMapLabelStore insertLabelDOAndMapLabelDO:forScanningEventUUID:];
        }

        v24 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = objc_opt_class();
          v26 = NSStringFromClass(v25);
          *v37 = 68289283;
          v38 = 0;
          v39 = 2082;
          v40 = "";
          v41 = 2113;
          v42 = v26;
          _os_log_impl(&dword_258FE9000, v24, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to create label MO from DO, MO:%{private, location:escape_only}@}", v37, 0x1Cu);
        }

        if (onceToken_MicroLocation_Default != -1)
        {
          [ULMapLabelStore insertLabelDOAndMapLabelDO:forScanningEventUUID:];
        }

        v27 = logObject_MicroLocation_Default;
        if (os_signpost_enabled(v27))
        {
          v28 = objc_opt_class();
          v29 = NSStringFromClass(v28);
          *v37 = 68289283;
          v38 = 0;
          v39 = 2082;
          v40 = "";
          v41 = 2113;
          v42 = v29;
          _os_signpost_emit_with_name_impl(&dword_258FE9000, v27, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to create label MO from DO", "{msg%{public}.0s:Failed to create label MO from DO, MO:%{private, location:escape_only}@}", v37, 0x1Cu);
        }

        [(ULStore *)self resetMOC];
      }

      _Block_object_dispose(buf, 8);
    }

    else
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULMapLabelStore insertMapLabelsWithRelatedLabelsObjectIDs:];
      }

      v22 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        operator new();
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        [ULMapLabelStore insertLabelDOAndMapLabelDO:forScanningEventUUID:];
      }

      v23 = logObject_MicroLocation_Default;
      if (os_signpost_enabled(v23))
      {
        operator new();
      }

      [(ULStore *)self resetMOC];
      v18 = 0;
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULMapLabelStore insertMapLabelsWithRelatedLabelsObjectIDs:];
    }

    v20 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      operator new();
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      [ULMapLabelStore insertLabelDOAndMapLabelDO:forScanningEventUUID:];
    }

    v21 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v21))
    {
      operator new();
    }

    [(ULStore *)self resetMOC];
    v18 = 0;
  }

  return v18;
}

void __76__ULMapLabelStore__createLabelMOFromDO_forScanningEventUUID_andServiceUUID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8 = [*(a1 + 48) managedObjectContext];
  v5 = [ULLabelMO createFromDO:v2 withScanningEventMO:v3 serviceMO:v4 inManagedObjectContext:?];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)_fetchRelatedModelMOWithUUID:(const uuid *)d
{
  dbStore = [(ULStore *)self dbStore];
  v6 = (*(dbStore->var0 + 10))(dbStore);
  managedObjectContext = [(ULStore *)self managedObjectContext];
  v8 = [v6 fetchModelManagedObjectWithUUID:d withManagedObjectContext:managedObjectContext];

  if (!v8)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULMapLabelStore insertMapLabelsWithRelatedLabelsObjectIDs:];
    }

    v9 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      operator new();
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      [ULMapLabelStore insertLabelDOAndMapLabelDO:forScanningEventUUID:];
    }

    v10 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v10))
    {
      operator new();
    }

    [(ULStore *)self resetMOC];
  }

  return v8;
}

- (id)_fetchLabelMOWithObjectID:(id)d withManagedObjectContext:(id)context
{
  v35 = *MEMORY[0x277D85DE8];
  dCopy = d;
  contextCopy = context;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__15;
  v27 = __Block_byref_object_dispose__15;
  v28 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __70__ULMapLabelStore__fetchLabelMOWithObjectID_withManagedObjectContext___block_invoke;
  v19[3] = &unk_2798D4890;
  v22 = &v23;
  v8 = contextCopy;
  v20 = v8;
  v9 = dCopy;
  v21 = v9;
  [v8 performBlockAndWait:v19];
  v10 = v24[5];
  if (!v10)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULMapLabelStore insertLabelDOAndMapLabelDO:forScanningEventUUID:];
    }

    v11 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 68289283;
      v30 = 0;
      v31 = 2082;
      v32 = "";
      v33 = 2113;
      v34 = v13;
      _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Did not find related label for labelObjectID, MO:%{private, location:escape_only}@}", buf, 0x1Cu);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      [ULMapLabelStore insertLabelDOAndMapLabelDO:forScanningEventUUID:];
    }

    v14 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v14))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *buf = 68289283;
      v30 = 0;
      v31 = 2082;
      v32 = "";
      v33 = 2113;
      v34 = v16;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Did not find related label for labelObjectID", "{msg%{public}.0s:Did not find related label for labelObjectID, MO:%{private, location:escape_only}@}", buf, 0x1Cu);
    }

    [(ULStore *)self resetMOC];
    v10 = v24[5];
  }

  v17 = v10;

  _Block_object_dispose(&v23, 8);

  return v17;
}

void __70__ULMapLabelStore__fetchLabelMOWithObjectID_withManagedObjectContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectWithID:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_createMapLabelMOFromDO:(const void *)o withLabelMO:(id)mO modelMO:(id)modelMO
{
  v40 = *MEMORY[0x277D85DE8];
  mOCopy = mO;
  modelMOCopy = modelMO;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__15;
  v32 = __Block_byref_object_dispose__15;
  v33 = 0;
  managedObjectContext = [(ULStore *)self managedObjectContext];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __63__ULMapLabelStore__createMapLabelMOFromDO_withLabelMO_modelMO___block_invoke;
  v22[3] = &unk_2798D4868;
  v26 = &v28;
  oCopy = o;
  v11 = mOCopy;
  v23 = v11;
  v12 = modelMOCopy;
  v24 = v12;
  selfCopy = self;
  [managedObjectContext performBlockAndWait:v22];

  v13 = v29[5];
  if (!v13)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULMapLabelStore insertLabelDOAndMapLabelDO:forScanningEventUUID:];
    }

    v14 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *buf = 68289283;
      v35 = 0;
      v36 = 2082;
      v37 = "";
      v38 = 2113;
      v39 = v16;
      _os_log_impl(&dword_258FE9000, v14, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to create mapLabel MO from DO, MO:%{private, location:escape_only}@}", buf, 0x1Cu);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      [ULMapLabelStore insertLabelDOAndMapLabelDO:forScanningEventUUID:];
    }

    v17 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v17))
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      *buf = 68289283;
      v35 = 0;
      v36 = 2082;
      v37 = "";
      v38 = 2113;
      v39 = v19;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to create mapLabel MO from DO", "{msg%{public}.0s:Failed to create mapLabel MO from DO, MO:%{private, location:escape_only}@}", buf, 0x1Cu);
    }

    [(ULStore *)self resetMOC];
    v13 = v29[5];
  }

  v20 = v13;

  _Block_object_dispose(&v28, 8);

  return v20;
}

void __63__ULMapLabelStore__createMapLabelMOFromDO_withLabelMO_modelMO___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8 = [*(a1 + 48) managedObjectContext];
  v5 = [ULMapLabelMO createFromDO:v2 withLabelMO:v3 modelMO:v4 inManagedObjectContext:?];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (__n128)insertDataObjects:forLabelObjectID:andModelUUID:
{
  *a2 = &unk_286A56630;
  result = *(self + 8);
  *(a2 + 24) = *(self + 24);
  *(a2 + 8) = result;
  return result;
}

- (id)insertDataObjects:forLabelObjectID:andModelUUID:
{
  v3 = **(self + 8);
  v4 = **(self + 16);
  managedObjectContext = [**(self + 24) managedObjectContext];
  v6 = [ULMapLabelMO createFromDO:a2 withLabelMO:v3 modelMO:v4 inManagedObjectContext:managedObjectContext];

  return v6;
}

- (uint64_t)insertDataObjects:forLabelObjectID:andModelUUID:
{
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

- (void)insertLabelDOAndMapLabelDO:(uint64_t)a1 forScanningEventUUID:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = _CLLogObjectForCategory_MicroLocation_Default(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:insertLabelDOAndMapLabelDO:forScanningEventUUID is only valid for labels with fServiceUUID, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  v5 = _CLLogObjectForCategory_MicroLocation_Default(v3, v4);
  if (os_signpost_enabled(v5))
  {
    OUTLINED_FUNCTION_1();
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "insertLabelDOAndMapLabelDO:forScanningEventUUID is only valid for labels with fServiceUUID", "{msg%{public}.0s:insertLabelDOAndMapLabelDO:forScanningEventUUID is only valid for labels with fServiceUUID, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  v8 = _CLLogObjectForCategory_MicroLocation_Default(v6, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_INFO, "{msg%{public}.0s:insertLabelDOAndMapLabelDO:forScanningEventUUID is only valid for labels with fServiceUUID, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/MicroLocationLogic/Persistence/DataStores/ULMapLabelStore.mm", 107, "[ULMapLabelStore insertLabelDOAndMapLabelDO:forScanningEventUUID:]");
  __break(1u);
}

@end