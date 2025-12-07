@interface HDAssociationEntity
+ (BOOL)_bulkInsertEntriesWithParentUUID:(id)d childIDs:(id)ds provenance:(int64_t)provenance syncIdentity:(int64_t)identity type:(unint64_t)type behavior:(unint64_t)behavior creationDate:(id)date destinationSubObjectReference:(id)self0 profile:(id)self1 error:(id *)self2;
+ (BOOL)_enumerateAssociationsWithPredicate:(id)predicate syncEntityClass:(Class)class session:(id)session syncAnchorRange:(HDSyncAnchorRange)range lastSyncAnchor:(int64_t *)anchor healthDatabase:(id)database error:(id *)error block:(id)self0;
+ (BOOL)_enumerateTypedAssociationsWithPredicate:(id)predicate syncEntityClass:(Class)class session:(id)session syncAnchorRange:(HDSyncAnchorRange)range lastSyncAnchor:(int64_t *)anchor healthDatabase:(id)database transaction:(id)transaction error:(id *)self0 block:(id)self1;
+ (BOOL)_insertCodableObjectAssociations:(id)associations syncStore:(id)store profile:(id)profile error:(id *)error;
+ (BOOL)_insertEntriesWithParentUUID:(id)d childUUIDsData:(id)data provenance:(int64_t)provenance syncIdentity:(int64_t)identity type:(unint64_t)type behavior:(unint64_t)behavior deleted:(BOOL)deleted creationDate:(id)self0 destinationSubObjectReference:(id)self1 enforceSameSource:(BOOL)self2 permitPendingAssociations:(BOOL)self3 profile:(id)self4 lastInsertedEntityID:(id *)self5 error:(id *)self6;
+ (BOOL)associateSampleUUIDData:(id)data withSampleUUID:(id)d type:(unint64_t)type behavior:(unint64_t)behavior destinationSubObjectReference:(id)reference lastInsertedEntityID:(id *)iD profile:(id)profile error:(id *)self0;
+ (BOOL)associateSampleUUIDs:(id)ds withSampleUUID:(id)d type:(unint64_t)type behavior:(unint64_t)behavior destinationSubObjectReference:(id)reference lastInsertedEntityID:(id *)iD profile:(id)profile error:(id *)self0;
+ (BOOL)associateSampleUUIDs:(id)ds withSampleUUID:(id)d type:(unint64_t)type behavior:(unint64_t)behavior destinationSubObjectReference:(id)reference lastInsertedEntityID:(id *)iD profile:(id)profile provenance:(int64_t)self0 syncIdentity:(int64_t)self1 creationDate:(id)self2 error:(id *)self3;
+ (BOOL)bulkInsertAssociationsWithParentUUID:(id)d childIDs:(id)ds type:(unint64_t)type behavior:(unint64_t)behavior destinationSubObjectReference:(id)reference syncIdentity:(int64_t)identity profile:(id)profile error:(id *)self0;
+ (BOOL)copyAssociationsFromChildID:(id)d toObjectID:(id)iD profile:(id)profile error:(id *)error;
+ (BOOL)copyAssociationsFromObject:(id)object toObject:(id)toObject profile:(id)profile error:(id *)error;
+ (BOOL)copyAssociationsFromObject:(id)object toObject:(id)toObject type:(unint64_t)type behavior:(unint64_t)behavior profile:(id)profile error:(id *)error;
+ (BOOL)disassociateSampleUUIDData:(id)data withSampleUUID:(id)d type:(unint64_t)type behavior:(unint64_t)behavior destinationSubObjectReference:(id)reference profile:(id)profile error:(id *)error;
+ (BOOL)disassociateSampleUUIDs:(id)ds withSampleUUID:(id)d type:(unint64_t)type behavior:(unint64_t)behavior destinationSubObjectReference:(id)reference lastInsertedEntityID:(id *)iD profile:(id)profile error:(id *)self0;
+ (BOOL)insertEntriesWithAssociation:(id)association objects:(id)objects type:(unint64_t)type behavior:(unint64_t)behavior destinationSubObject:(id)object enforceSameSource:(BOOL)source profile:(id)profile transaction:(id)self0 error:(id *)self1;
+ (BOOL)insertEntriesWithAssociationUUID:(id)d objectUUIDsData:(id)data type:(unint64_t)type behavior:(unint64_t)behavior destinationSubObjectReference:(id)reference profile:(id)profile error:(id *)error;
+ (BOOL)realizePendingAssociationsWithTransaction:(id)transaction startingAnchor:(int64_t)anchor error:(id *)error;
+ (id)_findAssociationEntryWithParentID:(uint64_t)d childID:(uint64_t)iD type:(uint64_t)type behavior:(void *)behavior destinationSubObjectID:(char)objectID deleted:(void *)deleted database:(uint64_t)database error:;
+ (id)countOfObjectsAssociatedWithObjectPID:(int64_t)d excludeDeleted:(BOOL)deleted associationType:(unint64_t)type behavior:(unint64_t)behavior anchor:(int64_t)anchor transaction:(id)transaction error:(id *)error;
+ (id)countOfObjectsAssociatedWithObjectUUID:(id)d subObjectReference:(id)reference excludeDeleted:(BOOL)deleted profile:(id)profile error:(id *)error;
+ (id)deleteStatementForChildIDsWithTransaction:(id)transaction;
+ (id)deleteStatementForParentIDWithTransaction:(id)transaction;
+ (id)indices;
+ (id)joinClausesForProperty:(id)property;
+ (id)journalEntryForAssociation:(id)association objects:(id)objects profile:(id)profile;
+ (id)objectIDsForAssociationEntityWithPersistentID:(int64_t)d profile:(id)profile error:(id *)error;
+ (id)objectsAssociatedWithObjectPID:(int64_t)d subObjectReference:(id)reference dataTypes:(id)types associationType:(unint64_t)type behavior:(unint64_t)behavior limit:(unint64_t)limit sortDescending:(BOOL)descending profile:(id)self0 error:(id *)self1;
+ (id)privateSubEntities;
+ (id)uniquedColumns;
+ (uint64_t)_insertAssociationEntryWithParentID:(uint64_t)d childID:(uint64_t)iD provenance:(uint64_t)provenance syncIdentity:(uint64_t)identity type:(uint64_t)type behavior:(void *)behavior destinationSubObjectID:(char)objectID deleted:(void *)self0 creationDate:(void *)self1 lastInsertedEntityID:(void *)self2 database:(uint64_t)self3 error:;
+ (uint64_t)_insertEntriesWithParentUUID:(void *)d childUUIDsData:(uint64_t)data provenance:(uint64_t)provenance syncIdentity:(uint64_t)identity type:(uint64_t)type behavior:(char)behavior deleted:(void *)deleted creationDate:(void *)self0 destinationSubObjectReference:(void *)self1 lastInsertedEntityID:(void *)self2 context:(void *)self3 error:;
+ (uint64_t)_insertPendingAssociationForParentUUID:(uint64_t)d childUUIDBytes:(uint64_t)bytes provenance:(uint64_t)provenance syncIdentity:(uint64_t)identity type:(uint64_t)type behavior:(void *)behavior destinationSubObjectID:(char)iD deleted:(void *)self0 creationDate:(void *)self1 database:(void *)self2 error:;
+ (uint64_t)_removeAssociationEntryWithParentID:(uint64_t)d childID:(uint64_t)iD provenance:(uint64_t)provenance syncIdentity:(void *)identity type:(void *)type behavior:(uint64_t)behavior destinationSubObjectID:deleted:database:error:;
+ (void)_UUIDsAssociatedWithUUID:(void *)d subObjectReference:(void *)reference predicateProperty:(void *)property enumerateProperty:(char)enumerateProperty excludeDeleted:(void *)deleted profile:(uint64_t)profile error:;
@end

@implementation HDAssociationEntity

+ (id)uniquedColumns
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"destination_object_id";
  v4[1] = @"source_object_id";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];

  return v2;
}

+ (id)indices
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277D10B40]);
  v3 = objc_opt_class();
  v8 = @"source_object_id";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v8 count:1];
  v5 = [v2 initWithEntity:v3 name:@"source_object_id" columns:v4];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  return v6;
}

+ (id)joinClausesForProperty:(id)property
{
  propertyCopy = property;
  if ([propertyCopy isEqualToString:@"parent_id_objects.uuid"])
  {
    v6 = @"destination_object_id";
    goto LABEL_5;
  }

  if ([propertyCopy isEqualToString:@"child_id_objects.uuid"])
  {
    goto LABEL_4;
  }

  if (([propertyCopy isEqualToString:@"child_id_samples.end_date"] & 1) == 0)
  {
    if ([propertyCopy isEqualToString:@"child_id_objects.creation_date"])
    {
LABEL_4:
      v6 = @"source_object_id";
      goto LABEL_5;
    }

    if (([propertyCopy isEqualToString:@"child_id_samples.data_type"] & 1) == 0 && !objc_msgSend(propertyCopy, "isEqualToString:", @"child_id_samples.data_id"))
    {
      goto LABEL_14;
    }
  }

  v6 = @"source_object_id";
LABEL_5:
  v7 = objc_opt_class();
  if (!v7)
  {
LABEL_14:
    v17.receiver = self;
    v17.super_class = &OBJC_METACLASS___HDAssociationEntity;
    v14 = objc_msgSendSuper2(&v17, sel_joinClausesForProperty_, propertyCopy);
    goto LABEL_15;
  }

  v8 = v7;
  v9 = [propertyCopy componentsSeparatedByString:@"."];
  if ([v9 count] != 2)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDAssociationEntity.m" lineNumber:186 description:{@"Invalid parameter not satisfying: %@", @"[components count] == 2"}];
  }

  v10 = MEMORY[0x277D10B50];
  disambiguatedDatabaseTable = [self disambiguatedDatabaseTable];
  v12 = [v9 objectAtIndexedSubscript:0];
  v13 = [v10 innerJoinClauseFromTable:disambiguatedDatabaseTable toTargetEntity:v8 as:v12 localReference:v6 targetKey:@"data_id"];

  v14 = [MEMORY[0x277CBEB98] setWithObject:v13];

LABEL_15:

  return v14;
}

+ (id)privateSubEntities
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

+ (BOOL)associateSampleUUIDs:(id)ds withSampleUUID:(id)d type:(unint64_t)type behavior:(unint64_t)behavior destinationSubObjectReference:(id)reference lastInsertedEntityID:(id *)iD profile:(id)profile error:(id *)self0
{
  v16 = MEMORY[0x277CBEAA8];
  profileCopy = profile;
  referenceCopy = reference;
  dCopy = d;
  dsCopy = ds;
  if (type)
  {
    [v16 now];
  }

  else
  {
    [v16 distantPast];
  }
  v21 = ;
  hk_dataForAllUUIDs = [dsCopy hk_dataForAllUUIDs];

  LOWORD(v26) = 256;
  LOBYTE(v25) = 0;
  v23 = [self _insertEntriesWithParentUUID:dCopy childUUIDsData:hk_dataForAllUUIDs provenance:0 syncIdentity:objc_msgSend(profileCopy type:"currentSyncIdentityPersistentID") behavior:type deleted:behavior creationDate:v25 destinationSubObjectReference:v21 enforceSameSource:referenceCopy permitPendingAssociations:v26 profile:profileCopy lastInsertedEntityID:iD error:error];

  return v23;
}

+ (BOOL)associateSampleUUIDData:(id)data withSampleUUID:(id)d type:(unint64_t)type behavior:(unint64_t)behavior destinationSubObjectReference:(id)reference lastInsertedEntityID:(id *)iD profile:(id)profile error:(id *)self0
{
  v17 = MEMORY[0x277CBEAA8];
  profileCopy = profile;
  referenceCopy = reference;
  dCopy = d;
  dataCopy = data;
  if (type)
  {
    [v17 now];
  }

  else
  {
    [v17 distantPast];
  }
  v22 = ;
  LOWORD(v26) = 0;
  LOBYTE(v25) = 0;
  v23 = [self _insertEntriesWithParentUUID:dCopy childUUIDsData:dataCopy provenance:0 syncIdentity:objc_msgSend(profileCopy type:"currentSyncIdentityPersistentID") behavior:type deleted:behavior creationDate:v25 destinationSubObjectReference:v22 enforceSameSource:referenceCopy permitPendingAssociations:v26 profile:profileCopy lastInsertedEntityID:iD error:error];

  return v23;
}

+ (BOOL)associateSampleUUIDs:(id)ds withSampleUUID:(id)d type:(unint64_t)type behavior:(unint64_t)behavior destinationSubObjectReference:(id)reference lastInsertedEntityID:(id *)iD profile:(id)profile provenance:(int64_t)self0 syncIdentity:(int64_t)self1 creationDate:(id)self2 error:(id *)self3
{
  dsCopy = ds;
  dCopy = d;
  referenceCopy = reference;
  profileCopy = profile;
  dateCopy = date;
  if (!dateCopy)
  {
    if (type)
    {
      [MEMORY[0x277CBEAA8] now];
    }

    else
    {
      [MEMORY[0x277CBEAA8] distantPast];
    }
    dateCopy = ;
  }

  hk_dataForAllUUIDs = [dsCopy hk_dataForAllUUIDs];
  LOWORD(v26) = 256;
  LOBYTE(v25) = 0;
  v23 = [self _insertEntriesWithParentUUID:dCopy childUUIDsData:hk_dataForAllUUIDs provenance:provenance syncIdentity:identity type:type behavior:behavior deleted:v25 creationDate:dateCopy destinationSubObjectReference:referenceCopy enforceSameSource:v26 permitPendingAssociations:profileCopy profile:iD lastInsertedEntityID:error error:?];

  return v23;
}

+ (BOOL)bulkInsertAssociationsWithParentUUID:(id)d childIDs:(id)ds type:(unint64_t)type behavior:(unint64_t)behavior destinationSubObjectReference:(id)reference syncIdentity:(int64_t)identity profile:(id)profile error:(id *)self0
{
  v17 = MEMORY[0x277CBEAA8];
  profileCopy = profile;
  referenceCopy = reference;
  dsCopy = ds;
  dCopy = d;
  if (type)
  {
    [v17 now];
  }

  else
  {
    [v17 distantPast];
  }
  v22 = ;
  v23 = [self _bulkInsertEntriesWithParentUUID:dCopy childIDs:dsCopy provenance:0 syncIdentity:identity type:type behavior:behavior creationDate:v22 destinationSubObjectReference:referenceCopy profile:profileCopy error:error];

  return v23;
}

+ (BOOL)disassociateSampleUUIDs:(id)ds withSampleUUID:(id)d type:(unint64_t)type behavior:(unint64_t)behavior destinationSubObjectReference:(id)reference lastInsertedEntityID:(id *)iD profile:(id)profile error:(id *)self0
{
  v16 = MEMORY[0x277CBEAA8];
  profileCopy = profile;
  referenceCopy = reference;
  dCopy = d;
  dsCopy = ds;
  if (type)
  {
    [v16 now];
  }

  else
  {
    [v16 distantPast];
  }
  v21 = ;
  hk_dataForAllUUIDs = [dsCopy hk_dataForAllUUIDs];

  LOWORD(v26) = 256;
  LOBYTE(v25) = 1;
  v23 = [self _insertEntriesWithParentUUID:dCopy childUUIDsData:hk_dataForAllUUIDs provenance:0 syncIdentity:objc_msgSend(profileCopy type:"currentSyncIdentityPersistentID") behavior:type deleted:behavior creationDate:v25 destinationSubObjectReference:v21 enforceSameSource:referenceCopy permitPendingAssociations:v26 profile:profileCopy lastInsertedEntityID:iD error:error];

  return v23;
}

+ (BOOL)disassociateSampleUUIDData:(id)data withSampleUUID:(id)d type:(unint64_t)type behavior:(unint64_t)behavior destinationSubObjectReference:(id)reference profile:(id)profile error:(id *)error
{
  v15 = MEMORY[0x277CBEAA8];
  profileCopy = profile;
  referenceCopy = reference;
  dCopy = d;
  dataCopy = data;
  if (type)
  {
    [v15 now];
  }

  else
  {
    [v15 distantPast];
  }
  v20 = ;
  LOWORD(v24) = 0;
  LOBYTE(v23) = 1;
  v21 = [self _insertEntriesWithParentUUID:dCopy childUUIDsData:dataCopy provenance:0 syncIdentity:objc_msgSend(profileCopy type:"currentSyncIdentityPersistentID") behavior:type deleted:behavior creationDate:v23 destinationSubObjectReference:v20 enforceSameSource:referenceCopy permitPendingAssociations:v24 profile:profileCopy lastInsertedEntityID:0 error:error];

  return v21;
}

+ (BOOL)insertEntriesWithAssociation:(id)association objects:(id)objects type:(unint64_t)type behavior:(unint64_t)behavior destinationSubObject:(id)object enforceSameSource:(BOOL)source profile:(id)profile transaction:(id)self0 error:(id *)self1
{
  sourceCopy = source;
  v43 = *MEMORY[0x277D85DE8];
  associationCopy = association;
  objectsCopy = objects;
  objectCopy = object;
  profileCopy = profile;
  transactionCopy = transaction;
  v17 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v18 = objectsCopy;
  v19 = [v18 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v39;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v39 != v21)
        {
          objc_enumerationMutation(v18);
        }

        uUID = [*(*(&v38 + 1) + 8 * i) UUID];
        [v17 hk_appendBytesWithUUID:uUID];
      }

      v20 = [v18 countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v20);
  }

  typeCopy = type;
  if (type)
  {
    [MEMORY[0x277CBEAA8] now];
  }

  else
  {
    [MEMORY[0x277CBEAA8] distantPast];
  }
  v25 = ;
  uUID2 = [associationCopy UUID];
  v27 = transactionCopy;
  v28 = [[_HDAssociationInsertionContext alloc] initWithParentUUID:uUID2 enforceSameSource:sourceCopy permitPendingAssociations:0 profile:profileCopy transaction:transactionCopy];
  currentSyncIdentityPersistentID = [profileCopy currentSyncIdentityPersistentID];
  v30 = HDReferenceForAssociatableObject(objectCopy);
  v31 = [(HDAssociationEntity *)self _insertEntriesWithParentUUID:uUID2 childUUIDsData:v17 provenance:0 syncIdentity:currentSyncIdentityPersistentID type:typeCopy behavior:behavior deleted:0 creationDate:v25 destinationSubObjectReference:v30 lastInsertedEntityID:0 context:v28 error:error];

  return v31;
}

+ (uint64_t)_insertEntriesWithParentUUID:(void *)d childUUIDsData:(uint64_t)data provenance:(uint64_t)provenance syncIdentity:(uint64_t)identity type:(uint64_t)type behavior:(char)behavior deleted:(void *)deleted creationDate:(void *)self0 destinationSubObjectReference:(void *)self1 lastInsertedEntityID:(void *)self2 context:(void *)self3 error:
{
  v130 = *MEMORY[0x277D85DE8];
  v76 = a2;
  dCopy = d;
  deletedCopy = deleted;
  dateCopy = date;
  iDCopy = iD;
  v15 = objc_opt_self();
  enforceSameSource = [iDCopy enforceSameSource];
  permitPendingAssociations = [iDCopy permitPendingAssociations];
  transaction = [iDCopy transaction];
  v77 = [transaction databaseForEntityClass:v15];

  v100 = 0;
  v101 = &v100;
  v102 = 0x3032000000;
  v103 = __Block_byref_object_copy__43;
  v104 = __Block_byref_object_dispose__43;
  v105 = 0;
  v17 = HDDataEntityPredicateForDataUUID();
  v99 = 0;
  v75 = [HDDataEntity anyInDatabase:v77 predicate:v17 error:&v99];
  v71 = v99;

  if (v75)
  {
    persistentID = [v75 persistentID];
    if (!enforceSameSource)
    {
      v36 = MEMORY[0x277CCACA8];
      v37 = +[(HDSQLiteSchemaEntity *)HDDataEntity];
      v32 = [v36 stringWithFormat:@"SELECT %@, %@ FROM %@ WHERE %@ = ?", @"data_id", @"type", v37, @"uuid", 0];

      uUIDString = 0;
LABEL_11:
      if (dateCopy)
      {
        transaction2 = [iDCopy transaction];
        v97 = 0;
        v39 = [dateCopy persistentIDInTransaction:transaction2 error:&v97];
        v21 = v97;
      }

      else
      {
        v39 = 0;
        v21 = 0;
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v117 = __Block_byref_object_copy__43;
      v118 = __Block_byref_object_dispose__43;
      v119 = 0;
      v110 = 0;
      v111 = &v110;
      v112 = 0x2020000000;
      LOBYTE(v113) = 1;
      v78[0] = MEMORY[0x277D85DD0];
      v78[1] = 3221225472;
      v78[2] = __191__HDAssociationEntity__insertEntriesWithParentUUID_childUUIDsData_provenance_syncIdentity_type_behavior_deleted_creationDate_destinationSubObjectReference_lastInsertedEntityID_context_error___block_invoke_428;
      v78[3] = &unk_278619CE0;
      v78[4] = v77;
      v32 = v32;
      v94 = enforceSameSource;
      v79 = v32;
      v85 = &v110;
      v86 = buf;
      uUIDString = uUIDString;
      v80 = uUIDString;
      behaviorCopy = behavior;
      v81 = v76;
      v88 = v15;
      v89 = persistentID;
      dataCopy = data;
      provenanceCopy = provenance;
      identityCopy = identity;
      typeCopy = type;
      v18 = v39;
      v82 = v18;
      v83 = deletedCopy;
      v87 = &v100;
      v96 = permitPendingAssociations;
      v84 = dateCopy;
      [dCopy hk_enumerateUUIDBytesUsingBlock:v78];
      if ((v111[3] & 1) == 0)
      {
        v53 = *(*&buf[8] + 40);
        v54 = v53;
        if (v53)
        {
          if (context)
          {
            v55 = v53;
            *context = v54;
          }

          else
          {
            _HKLogDroppedError();
          }
        }
      }

      if (reference)
      {
        v59 = v101[5];
        if (v59)
        {
          *reference = v59;
        }
      }

      v35 = *(v111 + 24);

      _Block_object_dispose(&v110, 8);
      _Block_object_dispose(buf, 8);

      goto LABEL_45;
    }

    v18 = [v75 valueForProperty:? database:?];
    profile = [iDCopy profile];
    sourceManager = [profile sourceManager];
    v98 = 0;
    v63 = [sourceManager clientSourceForPersistentID:v18 error:&v98];
    v21 = v98;

    if (v63)
    {
      profile2 = [iDCopy profile];
      sourceManager2 = [profile2 sourceManager];
      bundleIdentifier = [v63 bundleIdentifier];
      v25 = [sourceManager2 allSourcesForBundleIdentifier:bundleIdentifier error:context];
      uUIDString = [v25 hk_map:&__block_literal_global_418];

      if (uUIDString)
      {
        v27 = [HDDataEntity joinClausesForProperty:@"data_provenances.source_id"];
        v61 = [v27 count];
        if (v61 == 1)
        {
          v28 = MEMORY[0x277CCACA8];
          v29 = +[(HDSQLiteSchemaEntity *)HDDataEntity];
          anyObject = [v27 anyObject];
          sQLJoinClause = [anyObject SQLJoinClause];
          v32 = [v28 stringWithFormat:@"SELECT %@, %@, %@ FROM %@ %@ WHERE %@ = ?", @"data_id", @"type", @"data_provenances.source_id", v29, sQLJoinClause, @"uuid", 0];
        }

        else
        {
          _HKInitializeLogging();
          v57 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
          {
            *buf = 138543618;
            *&buf[4] = @"data_provenances.source_id";
            *&buf[12] = 2114;
            *&buf[14] = v27;
            _os_log_fault_impl(&dword_228986000, v57, OS_LOG_TYPE_FAULT, "Unexpected join clauses for %{public}@: %{public}@", buf, 0x16u);
          }

          [MEMORY[0x277CCA9B8] hk_assignError:context code:100 format:{@"Unexpected join clauses for %@", @"data_provenances.source_id"}];
          v32 = 0;
        }

        if (v61 != 1)
        {
          v35 = 0;
LABEL_46:

          goto LABEL_47;
        }

        goto LABEL_11;
      }

LABEL_38:

      uUIDString = 0;
      v32 = 0;
      v35 = 0;
LABEL_45:

      goto LABEL_46;
    }

    if (v21)
    {
      v21 = v21;
    }

    else
    {
      v21 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:sel__insertEntriesWithParentUUID_childUUIDsData_provenance_syncIdentity_type_behavior_deleted_creationDate_destinationSubObjectReference_lastInsertedEntityID_context_error_ format:{@"Unable to find parent source for source id %@", v18}];
      if (!v21)
      {
LABEL_37:

        goto LABEL_38;
      }
    }

    if (context)
    {
      v58 = v21;
      *context = v21;
    }

    else
    {
      _HKLogDroppedError();
    }

    goto LABEL_37;
  }

  if (v71)
  {
    v33 = v71;
    uUIDString = v33;
    if (context)
    {
      v34 = v33;
      v35 = 0;
      *context = uUIDString;
      goto LABEL_47;
    }

    _HKLogDroppedError();
LABEL_27:
    v35 = 0;
    goto LABEL_47;
  }

  if (![iDCopy permitPendingAssociations])
  {
    v56 = MEMORY[0x277CCA9B8];
    uUIDString = [v76 UUIDString];
    [v56 hk_assignError:context code:3 format:{@"Unable to find parent object for UUID %@ when inserting associations.", uUIDString}];
    goto LABEL_27;
  }

  uUID = [dateCopy UUID];
  v41 = v76;
  v42 = dCopy;
  v43 = deletedCopy;
  v44 = uUID;
  v45 = v77;
  v46 = objc_opt_self();
  v110 = 0;
  v111 = &v110;
  v112 = 0x3032000000;
  v113 = __Block_byref_object_copy__43;
  v114 = __Block_byref_object_dispose__43;
  v115 = 0;
  v106 = 0;
  v107 = &v106;
  v108 = 0x2020000000;
  v109 = 1;
  *buf = MEMORY[0x277D85DD0];
  *&buf[8] = 3221225472;
  *&buf[16] = __176__HDAssociationEntity__insertPendingAssociationsForParentUUID_childUUIDData_provenance_syncIdentity_type_behavior_deleted_creationDate_destinationSubObjectUUID_database_error___block_invoke;
  v117 = &unk_278619E48;
  v124 = v46;
  v47 = v41;
  v118 = v47;
  dataCopy2 = data;
  provenanceCopy2 = provenance;
  identityCopy2 = identity;
  typeCopy2 = type;
  uUIDString = v44;
  v119 = uUIDString;
  behaviorCopy2 = behavior;
  v48 = v43;
  v120 = v48;
  v49 = v45;
  v121 = v49;
  v122 = &v110;
  v123 = &v106;
  [v42 hk_enumerateUUIDBytesUsingBlock:buf];
  v35 = *(v107 + 24);
  if ((v35 & 1) == 0)
  {
    v50 = v111[5];
    v51 = v50;
    if (v50)
    {
      if (context)
      {
        v52 = v50;
        *context = v51;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v35 = *(v107 + 24);
  }

  _Block_object_dispose(&v106, 8);
  _Block_object_dispose(&v110, 8);

LABEL_47:
  _Block_object_dispose(&v100, 8);

  return v35 & 1;
}

+ (BOOL)insertEntriesWithAssociationUUID:(id)d objectUUIDsData:(id)data type:(unint64_t)type behavior:(unint64_t)behavior destinationSubObjectReference:(id)reference profile:(id)profile error:(id *)error
{
  v15 = MEMORY[0x277CBEAA8];
  profileCopy = profile;
  referenceCopy = reference;
  dataCopy = data;
  dCopy = d;
  if (type)
  {
    [v15 now];
  }

  else
  {
    [v15 distantPast];
  }
  v20 = ;
  LOWORD(v24) = 256;
  LOBYTE(v23) = 0;
  v21 = [self _insertEntriesWithParentUUID:dCopy childUUIDsData:dataCopy provenance:0 syncIdentity:objc_msgSend(profileCopy type:"currentSyncIdentityPersistentID") behavior:type deleted:behavior creationDate:v23 destinationSubObjectReference:v20 enforceSameSource:referenceCopy permitPendingAssociations:v24 profile:profileCopy lastInsertedEntityID:0 error:error];

  return v21;
}

+ (BOOL)copyAssociationsFromObject:(id)object toObject:(id)toObject profile:(id)profile error:(id *)error
{
  objectCopy = object;
  toObjectCopy = toObject;
  profileCopy = profile;
  if ([self copyAssociationsFromObject:objectCopy toObject:toObjectCopy type:0 behavior:0 profile:profileCopy error:error])
  {
    v13 = [self copyAssociationsFromObject:objectCopy toObject:toObjectCopy type:1 behavior:0 profile:profileCopy error:error];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (BOOL)copyAssociationsFromObject:(id)object toObject:(id)toObject type:(unint64_t)type behavior:(unint64_t)behavior profile:(id)profile error:(id *)error
{
  objectCopy = object;
  toObjectCopy = toObject;
  database = [profile database];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __87__HDAssociationEntity_copyAssociationsFromObject_toObject_type_behavior_profile_error___block_invoke;
  v20[3] = &unk_278619C68;
  v21 = objectCopy;
  v22 = toObjectCopy;
  selfCopy = self;
  typeCopy = type;
  behaviorCopy = behavior;
  v17 = toObjectCopy;
  v18 = objectCopy;
  LOBYTE(error) = [self performWriteTransactionWithHealthDatabase:database error:error block:v20];

  return error;
}

uint64_t __87__HDAssociationEntity_copyAssociationsFromObject_toObject_type_behavior_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 databaseForEntityClass:*(a1 + 48)];
  v6 = [*(a1 + 32) UUID];
  v7 = HDDataEntityPredicateForDataUUID();
  v31 = 0;
  v8 = [(HDDataEntity *)HDSampleEntity anyInDatabase:v5 predicate:v7 error:&v31];
  v9 = v31;

  if (!v9)
  {
    v12 = [*(a1 + 40) UUID];
    v13 = HDDataEntityPredicateForDataUUID();
    v30 = 0;
    v14 = [(HDDataEntity *)HDSampleEntity anyInDatabase:v5 predicate:v13 error:&v30];
    v9 = v30;

    if (v9)
    {
      if (a3)
      {
        v15 = v9;
        v11 = 0;
        *a3 = v9;
LABEL_17:

        goto LABEL_18;
      }

      _HKLogDroppedError();
    }

    else
    {
      if (v8 && v14)
      {
        v16 = [v8 persistentID];
        v17 = [v14 persistentID];
        if (*(a1 + 56) == 1)
        {
          [MEMORY[0x277CBEAA8] date];
        }

        else
        {
          [MEMORY[0x277CBEAA8] distantPast];
        }
        v18 = ;
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __87__HDAssociationEntity_copyAssociationsFromObject_toObject_type_behavior_profile_error___block_invoke_2;
        v29[3] = &__block_descriptor_40_e15___NSString_8__0l;
        v29[4] = *(a1 + 48);
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __87__HDAssociationEntity_copyAssociationsFromObject_toObject_type_behavior_profile_error___block_invoke_3;
        v24[3] = &unk_278619C40;
        v25 = v18;
        v26 = v17;
        v27 = v16;
        v28 = *(a1 + 56);
        v22 = v18;
        v11 = [v5 executeCachedStatementForKey:&HDAssociationEntityPropertyChildDataID_block_invoke_insertKey error:a3 SQLGenerator:v29 bindingHandler:v24 enumerationHandler:0];

        goto LABEL_17;
      }

      v19 = MEMORY[0x277CCA9B8];
      v20 = [*(a1 + 32) UUID];
      v21 = [*(a1 + 40) UUID];
      [v19 hk_assignError:a3 code:3 format:{@"One of the provided objects (UUIDs %@ and %@) was not found in database", v20, v21}];
    }

    v11 = 0;
    goto LABEL_17;
  }

  if (a3)
  {
    v10 = v9;
    v11 = 0;
    *a3 = v9;
  }

  else
  {
    _HKLogDroppedError();
    v11 = 0;
  }

LABEL_18:

  return v11;
}

id __87__HDAssociationEntity_copyAssociationsFromObject_toObject_type_behavior_profile_error___block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  v3 = [*(a1 + 32) disambiguatedDatabaseTable];
  v4 = [*(a1 + 32) disambiguatedDatabaseTable];
  v5 = [v2 initWithFormat:@"INSERT INTO %@(%@, %@, %@, %@, %@, %@, %@, %@) SELECT ?, %@, %@, %@, %@, %@, %@, ? FROM %@ WHERE %@=? AND %@=? AND %@=? AND %@=? AND %@ IS NULL", v3, @"destination_object_id", @"source_object_id", @"sync_provenance", @"sync_identity", @"type", @"behavior", @"deleted", @"creation_date", @"source_object_id", @"sync_provenance", @"sync_identity", @"type", @"behavior", @"deleted", v4, @"destination_object_id", @"type", @"behavior", @"deleted", @"destination_sub_object_id", 0];

  return v5;
}

uint64_t __87__HDAssociationEntity_copyAssociationsFromObject_toObject_type_behavior_profile_error___block_invoke_3(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 40));
  [*(a1 + 32) timeIntervalSinceReferenceDate];
  sqlite3_bind_double(a2, 2, v4);
  sqlite3_bind_int64(a2, 3, *(a1 + 48));
  sqlite3_bind_int64(a2, 4, *(a1 + 56));
  sqlite3_bind_int64(a2, 5, *(a1 + 64));

  return sqlite3_bind_int64(a2, 6, 0);
}

+ (BOOL)copyAssociationsFromChildID:(id)d toObjectID:(id)iD profile:(id)profile error:(id *)error
{
  dCopy = d;
  iDCopy = iD;
  profileCopy = profile;
  database = [profileCopy database];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __76__HDAssociationEntity_copyAssociationsFromChildID_toObjectID_profile_error___block_invoke;
  v18[3] = &unk_278613550;
  v19 = dCopy;
  v20 = profileCopy;
  v21 = iDCopy;
  selfCopy = self;
  v14 = iDCopy;
  v15 = profileCopy;
  v16 = dCopy;
  LOBYTE(error) = [self performWriteTransactionWithHealthDatabase:database error:error block:v18];

  return error;
}

uint64_t __76__HDAssociationEntity_copyAssociationsFromChildID_toObjectID_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v18[8] = *MEMORY[0x277D85DE8];
  v5 = [a2 databaseForEntityClass:*(a1 + 56)];
  v6 = [MEMORY[0x277D10B18] predicateWithProperty:@"source_object_id" equalToValue:*(a1 + 32)];
  v18[0] = @"destination_object_id";
  v18[1] = @"sync_provenance";
  v18[2] = @"sync_identity";
  v18[3] = @"type";
  v18[4] = @"behavior";
  v18[5] = @"destination_sub_object_id";
  v18[6] = @"deleted";
  v18[7] = @"creation_date";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:8];
  v8 = *(a1 + 56);
  v9 = [*(a1 + 40) database];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __76__HDAssociationEntity_copyAssociationsFromChildID_toObjectID_profile_error___block_invoke_2;
  v14[3] = &unk_278617E98;
  v10 = *(a1 + 48);
  v17 = *(a1 + 56);
  v15 = v10;
  v16 = v5;
  v11 = v5;
  v12 = [v8 enumerateProperties:v7 withPredicate:v6 healthDatabase:v9 error:a3 enumerationHandler:v14];

  return v12;
}

uint64_t __76__HDAssociationEntity_copyAssociationsFromChildID_toObjectID_profile_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = HDSQLiteColumnWithNameAsInt64();
  v7 = HDSQLiteColumnWithNameAsInt64();
  v8 = HDSQLiteColumnWithNameAsInt64();
  v9 = HDSQLiteColumnWithNameAsInt64();
  v10 = HDSQLiteColumnWithNameAsInt64();
  v11 = [MEMORY[0x277CCABB0] numberWithLongLong:HDSQLiteColumnWithNameAsInt64()];
  v12 = HDSQLiteColumnWithNameAsBoolean();
  v13 = HDSQLiteColumnWithNameAsDate();
  v14 = +[HDAssociationEntity _insertAssociationEntryWithParentID:childID:provenance:syncIdentity:type:behavior:destinationSubObjectID:deleted:creationDate:lastInsertedEntityID:database:error:](*(a1 + 48), v6, [*(a1 + 32) longLongValue], v7, v8, v9, v10, v11, v12, v13, &v17, *(a1 + 40), a5);

  return v14;
}

+ (uint64_t)_insertAssociationEntryWithParentID:(uint64_t)d childID:(uint64_t)iD provenance:(uint64_t)provenance syncIdentity:(uint64_t)identity type:(uint64_t)type behavior:(void *)behavior destinationSubObjectID:(char)objectID deleted:(void *)self0 creationDate:(void *)self1 lastInsertedEntityID:(void *)self2 database:(uint64_t)self3 error:
{
  behaviorCopy = behavior;
  deletedCopy = deleted;
  entityIDCopy = entityID;
  v27 = objc_opt_self();
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __185__HDAssociationEntity__insertAssociationEntryWithParentID_childID_provenance_syncIdentity_type_behavior_destinationSubObjectID_deleted_creationDate_lastInsertedEntityID_database_error___block_invoke_2;
  v29[3] = &unk_278619DF8;
  v32 = a2;
  dCopy = d;
  iDCopy = iD;
  provenanceCopy = provenance;
  identityCopy = identity;
  typeCopy = type;
  objectIDCopy = objectID;
  v30 = behaviorCopy;
  v31 = deletedCopy;
  v28 = deletedCopy;
  v20 = behaviorCopy;
  v21 = [entityIDCopy executeCachedStatementForKey:&_insertAssociationEntryWithParentID_childID_provenance_syncIdentity_type_behavior_destinationSubObjectID_deleted_creationDate_lastInsertedEntityID_database_error__insertKey error:database SQLGenerator:&__block_literal_global_451 bindingHandler:v29 enumerationHandler:0];
  v22 = [(HDAssociationEntity *)v27 _findAssociationEntryWithParentID:a2 childID:d type:identity behavior:type destinationSubObjectID:v20 deleted:objectID database:entityIDCopy error:database];

  v23 = v22;
  *date = v22;

  return v21;
}

+ (uint64_t)_insertPendingAssociationForParentUUID:(uint64_t)d childUUIDBytes:(uint64_t)bytes provenance:(uint64_t)provenance syncIdentity:(uint64_t)identity type:(uint64_t)type behavior:(void *)behavior destinationSubObjectID:(char)iD deleted:(void *)self0 creationDate:(void *)self1 database:(void *)self2 error:
{
  v16 = a2;
  behaviorCopy = behavior;
  deletedCopy = deleted;
  dateCopy = date;
  objc_opt_self();
  v41 = 0;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __174__HDAssociationEntity__insertPendingAssociationForParentUUID_childUUIDBytes_provenance_syncIdentity_type_behavior_destinationSubObjectID_deleted_creationDate_database_error___block_invoke_2;
  v31[3] = &unk_278619C90;
  v20 = v16;
  v32 = v20;
  dCopy = d;
  bytesCopy = bytes;
  provenanceCopy = provenance;
  identityCopy = identity;
  typeCopy = type;
  iDCopy = iD;
  v21 = deletedCopy;
  v33 = v21;
  v22 = behaviorCopy;
  v34 = v22;
  LOBYTE(deletedCopy) = [dateCopy executeCachedStatementForKey:&_insertPendingAssociationForParentUUID_childUUIDBytes_provenance_syncIdentity_type_behavior_destinationSubObjectID_deleted_creationDate_database_error__insertKey error:&v41 SQLGenerator:&__block_literal_global_48 bindingHandler:v31 enumerationHandler:0];

  v23 = v41;
  v24 = v23;
  if (deletedCopy & 1) != 0 || ([v23 hd_isConstraintViolation])
  {
    v25 = 1;
  }

  else
  {
    v26 = v24;
    if (v26)
    {
      if (database)
      {
        v27 = v26;
        *database = v26;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v25 = 0;
  }

  return v25;
}

id __174__HDAssociationEntity__insertPendingAssociationForParentUUID_childUUIDBytes_provenance_syncIdentity_type_behavior_destinationSubObjectID_deleted_creationDate_database_error___block_invoke()
{
  v0 = MEMORY[0x277CCACA8];
  v1 = +[(HDSQLiteSchemaEntity *)HDPendingAssociationEntity];
  v2 = [v0 stringWithFormat:@"INSERT INTO %@ (%@, %@, %@, %@, %@, %@, %@, %@, %@) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)", v1, @"parent_uuid", @"child_uuid", @"sync_provenance", @"sync_identity", @"type", @"behavior", @"deleted", @"creation_date", @"destination_sub_uuid", 0];

  return v2;
}

uint64_t __174__HDAssociationEntity__insertPendingAssociationForParentUUID_childUUIDBytes_provenance_syncIdentity_type_behavior_destinationSubObjectID_deleted_creationDate_database_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  HDSQLiteBindFoundationValueToStatement();
  sqlite3_bind_blob(a2, 2, *(a1 + 56), 16, 0xFFFFFFFFFFFFFFFFLL);
  sqlite3_bind_int64(a2, 3, *(a1 + 64));
  sqlite3_bind_int64(a2, 4, *(a1 + 72));
  sqlite3_bind_int64(a2, 5, *(a1 + 80));
  sqlite3_bind_int64(a2, 6, *(a1 + 88));
  sqlite3_bind_int64(a2, 7, *(a1 + 96));
  [*(a1 + 40) timeIntervalSinceReferenceDate];
  sqlite3_bind_double(a2, 8, v4);
  if (*(a1 + 48))
  {

    return HDSQLiteBindFoundationValueToStatement();
  }

  else
  {

    return sqlite3_bind_null(a2, 9);
  }
}

+ (id)journalEntryForAssociation:(id)association objects:(id)objects profile:(id)profile
{
  v30 = *MEMORY[0x277D85DE8];
  associationCopy = association;
  objectsCopy = objects;
  profileCopy = profile;
  v10 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = objectsCopy;
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        uUID = [*(*(&v25 + 1) + 8 * i) UUID];
        [v10 hk_appendBytesWithUUID:uUID];
      }

      v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v13);
  }

  v17 = [_HDAssociationInsertionJournalEntry alloc];
  uUID2 = [associationCopy UUID];
  currentSyncIdentityPersistentID = [profileCopy currentSyncIdentityPersistentID];
  v20 = [MEMORY[0x277CBEAA8] now];
  LOBYTE(v24) = 0;
  LOBYTE(v23) = 0;
  v21 = [(_HDAssociationInsertionJournalEntry *)v17 initWithParentUUID:uUID2 childUUIDsData:v10 provenance:0 syncIdentity:currentSyncIdentityPersistentID type:0 behavior:0 deleted:v23 creationDate:v20 destinationSubObjectReference:0 enforceSameSource:v24, v25];

  return v21;
}

uint64_t __191__HDAssociationEntity__insertEntriesWithParentUUID_childUUIDsData_provenance_syncIdentity_type_behavior_deleted_creationDate_destinationSubObjectReference_lastInsertedEntityID_context_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 persistentID];

  return [v2 numberWithLongLong:v3];
}

void __191__HDAssociationEntity__insertEntriesWithParentUUID_childUUIDsData_provenance_syncIdentity_type_behavior_deleted_creationDate_destinationSubObjectReference_lastInsertedEntityID_context_error___block_invoke_428(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v95 = *MEMORY[0x277D85DE8];
  v83 = 0;
  v84 = &v83;
  v85 = 0x2020000000;
  v86 = 0;
  v79 = 0;
  v80 = &v79;
  v81 = 0x2020000000;
  v82 = 0;
  v75 = 0;
  v76 = &v75;
  v77 = 0x2020000000;
  v78 = -1;
  v71 = 0;
  v72 = &v71;
  v73 = 0x2020000000;
  v74 = -1;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v69[4] = a2;
  v70 = 0;
  v69[0] = MEMORY[0x277D85DD0];
  v69[1] = 3221225472;
  v69[2] = __191__HDAssociationEntity__insertEntriesWithParentUUID_childUUIDsData_provenance_syncIdentity_type_behavior_deleted_creationDate_destinationSubObjectReference_lastInsertedEntityID_context_error___block_invoke_2;
  v69[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __191__HDAssociationEntity__insertEntriesWithParentUUID_childUUIDsData_provenance_syncIdentity_type_behavior_deleted_creationDate_destinationSubObjectReference_lastInsertedEntityID_context_error___block_invoke_3;
  v67[3] = &unk_278619CB8;
  v67[4] = &v75;
  v67[5] = &v79;
  v68 = *(a1 + 160);
  v67[6] = &v71;
  v67[7] = &v83;
  v8 = [v6 executeSQL:v7 error:&v70 bindingHandler:v69 enumerationHandler:v67];
  v9 = v70;
  v10 = v70;
  if ((v8 & 1) == 0)
  {
    *(*(*(a1 + 88) + 8) + 24) = 0;
    *a3 = 1;
    objc_storeStrong((*(*(a1 + 96) + 8) + 40), v9);
    goto LABEL_7;
  }

  if (*(v80 + 24) == 1)
  {
    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a2];
      v13 = [v12 UUIDString];
      *buf = 138543362;
      v88 = v13;
      _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_DEFAULT, "Not inserting association since object %{public}@ was previously deleted", buf, 0xCu);
    }

LABEL_5:

    goto LABEL_7;
  }

  if (*(v84 + 24) != 1)
  {
    if (*(a1 + 161) == 1)
    {
      *a3 = 1;
      *(*(*(a1 + 88) + 8) + 24) = 0;
      v26 = [MEMORY[0x277CCA9B8] hk_error:118 description:@"Unable to find relationship for parentUUID and child."];
      v27 = *(*(a1 + 96) + 8);
      v28 = *(v27 + 40);
      *(v27 + 40) = v26;

      goto LABEL_7;
    }

    if (*(a1 + 162) != 1)
    {
      _HKInitializeLogging();
      v11 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v53 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a2];
        v54 = [v53 UUIDString];
        *buf = 138543362;
        v88 = v54;
        _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_DEFAULT, "Not inserting association, unable to look up entity for object %{public}@ and pending associations are disabled.", buf, 0xCu);
      }

      goto LABEL_5;
    }

    v29 = *(a1 + 112);
    v30 = *(a1 + 56);
    v61 = *(a1 + 136);
    v62 = *(a1 + 128);
    v31 = *(a1 + 144);
    v32 = *(a1 + 152);
    v33 = [*(a1 + 80) UUID];
    v34 = *(a1 + 161);
    v35 = *(a1 + 72);
    v36 = *(a1 + 32);
    v37 = *(*(a1 + 96) + 8);
    v63 = *(v37 + 40);
    v38 = [(HDAssociationEntity *)v29 _insertPendingAssociationForParentUUID:v30 childUUIDBytes:a2 provenance:v62 syncIdentity:v61 type:v31 behavior:v32 destinationSubObjectID:v33 deleted:v34 creationDate:v35 database:v36 error:&v63];
    objc_storeStrong((v37 + 40), v63);

    if (v38)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

  if (*(a1 + 160) != 1 || (v14 = *(a1 + 48), [MEMORY[0x277CCABB0] numberWithLongLong:v72[3]], v15 = objc_claimAutoreleasedReturnValue(), LOBYTE(v14) = objc_msgSend(v14, "containsObject:", v15), v15, (v14 & 1) != 0))
  {
    if (*(a1 + 161) == 1)
    {
      v16 = *(a1 + 112);
      v17 = *(a1 + 120);
      v18 = v76[3];
      v19 = *(a1 + 144);
      v20 = *(a1 + 152);
      v21 = *(a1 + 64);
      v22 = *(a1 + 32);
      v23 = *(*(a1 + 96) + 8);
      obj = *(v23 + 40);
      v24 = [HDAssociationEntity _removeAssociationEntryWithParentID:v16 childID:v17 provenance:v18 syncIdentity:v19 type:v20 behavior:v21 destinationSubObjectID:v22 deleted:&obj database:? error:?];
      objc_storeStrong((v23 + 40), obj);
      if (!v24)
      {
        goto LABEL_21;
      }

      v25 = *(a1 + 161);
    }

    else
    {
      v25 = 0;
    }

    v39 = *(a1 + 112);
    v40 = *(a1 + 120);
    v41 = v76[3];
    v42 = *(a1 + 128);
    v43 = *(a1 + 136);
    v44 = *(a1 + 144);
    v45 = *(a1 + 152);
    v46 = *(a1 + 64);
    v47 = *(a1 + 72);
    v48 = *(a1 + 96);
    v49 = *(*(a1 + 104) + 8);
    v65 = *(v49 + 40);
    v50 = *(a1 + 32);
    v51 = *(v48 + 8);
    v64 = *(v51 + 40);
    v52 = [(HDAssociationEntity *)v39 _insertAssociationEntryWithParentID:v40 childID:v41 provenance:v42 syncIdentity:v43 type:v44 behavior:v45 destinationSubObjectID:v46 deleted:v25 & 1 creationDate:v47 lastInsertedEntityID:&v65 database:v50 error:&v64];
    objc_storeStrong((v49 + 40), v65);
    objc_storeStrong((v51 + 40), v64);
    if (v52)
    {
      goto LABEL_7;
    }

LABEL_21:
    *(*(*(a1 + 88) + 8) + 24) = 0;
    *a3 = 1;
    goto LABEL_7;
  }

  _HKInitializeLogging();
  v55 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
  {
    v56 = [*(a1 + 56) UUIDString];
    v57 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a2];
    v58 = [v57 UUIDString];
    v59 = v72[3];
    v60 = *(a1 + 48);
    *buf = 138544130;
    v88 = v56;
    v89 = 2114;
    v90 = v58;
    v91 = 2048;
    v92 = v59;
    v93 = 2114;
    v94 = v60;
    _os_log_error_impl(&dword_228986000, v55, OS_LOG_TYPE_ERROR, "Not inserting assocation from %{public}@ to %{public}@ because child source ID %lld is not in the allowable set of parent source IDs %{public}@", buf, 0x2Au);
  }

LABEL_7:
  _Block_object_dispose(&v71, 8);
  _Block_object_dispose(&v75, 8);
  _Block_object_dispose(&v79, 8);
  _Block_object_dispose(&v83, 8);
}

uint64_t __191__HDAssociationEntity__insertEntriesWithParentUUID_childUUIDsData_provenance_syncIdentity_type_behavior_deleted_creationDate_destinationSubObjectReference_lastInsertedEntityID_context_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_blob(a2, 1, *(a1 + 32), 16, 0);

  return sqlite3_bind_int64(a2, 2, 1);
}

uint64_t __191__HDAssociationEntity__insertEntriesWithParentUUID_childUUIDsData_provenance_syncIdentity_type_behavior_deleted_creationDate_destinationSubObjectReference_lastInsertedEntityID_context_error___block_invoke_3(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 24) = HDSQLiteColumnAsInt64();
  *(*(*(a1 + 40) + 8) + 24) = HDSQLiteColumnAsInt64() == 2;
  if (*(a1 + 64) == 1)
  {
    *(*(*(a1 + 48) + 8) + 24) = HDSQLiteColumnAsInt64();
  }

  *(*(*(a1 + 56) + 8) + 24) = 1;
  return 1;
}

+ (uint64_t)_removeAssociationEntryWithParentID:(uint64_t)d childID:(uint64_t)iD provenance:(uint64_t)provenance syncIdentity:(void *)identity type:(void *)type behavior:(uint64_t)behavior destinationSubObjectID:deleted:database:error:
{
  typeCopy = type;
  identityCopy = identity;
  v16 = objc_opt_self();
  v17 = [(HDAssociationEntity *)v16 _findAssociationEntryWithParentID:a2 childID:d type:iD behavior:provenance destinationSubObjectID:identityCopy deleted:0 database:typeCopy error:behavior];

  if (v17)
  {
    v18 = MEMORY[0x277CCACA8];
    v19 = +[(HDSQLiteSchemaEntity *)HDAssociationEntity];
    v20 = [v18 stringWithFormat:@"DELETE FROM %@ WHERE %@ = ?", v19, *MEMORY[0x277D10A40]];

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __151__HDAssociationEntity__removeAssociationEntryWithParentID_childID_provenance_syncIdentity_type_behavior_destinationSubObjectID_deleted_database_error___block_invoke;
    v23[3] = &unk_278614860;
    v24 = v17;
    v21 = [typeCopy executeSQL:v20 error:behavior bindingHandler:v23 enumerationHandler:0];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

+ (BOOL)_insertEntriesWithParentUUID:(id)d childUUIDsData:(id)data provenance:(int64_t)provenance syncIdentity:(int64_t)identity type:(unint64_t)type behavior:(unint64_t)behavior deleted:(BOOL)deleted creationDate:(id)self0 destinationSubObjectReference:(id)self1 enforceSameSource:(BOOL)self2 permitPendingAssociations:(BOOL)self3 profile:(id)self4 lastInsertedEntityID:(id *)self5 error:(id *)self6
{
  dCopy = d;
  dataCopy = data;
  dateCopy = date;
  referenceCopy = reference;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__43;
  v33 = __Block_byref_object_dispose__43;
  v34 = 0;
  profileCopy = profile;
  v22 = dCopy;
  v23 = dataCopy;
  v24 = dateCopy;
  v25 = referenceCopy;
  v26 = HKWithAutoreleasePool();
  if (iD)
  {
    v27 = v30[5];
    if (v27)
    {
      *iD = v27;
    }
  }

  _Block_object_dispose(&v29, 8);
  return v26;
}

uint64_t __235__HDAssociationEntity__insertEntriesWithParentUUID_childUUIDsData_provenance_syncIdentity_type_behavior_deleted_creationDate_destinationSubObjectReference_enforceSameSource_permitPendingAssociations_profile_lastInsertedEntityID_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 80);
  v5 = [*(a1 + 32) database];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __235__HDAssociationEntity__insertEntriesWithParentUUID_childUUIDsData_provenance_syncIdentity_type_behavior_deleted_creationDate_destinationSubObjectReference_enforceSameSource_permitPendingAssociations_profile_lastInsertedEntityID_error___block_invoke_2;
  v30[3] = &unk_278619D08;
  v6 = *(a1 + 40);
  v38 = *(a1 + 120);
  v7 = *(a1 + 32);
  v35 = *(a1 + 80);
  v8 = *(a1 + 48);
  v36 = *(a1 + 88);
  v37 = *(a1 + 104);
  v39 = *(a1 + 122);
  v9 = *(a1 + 56);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  *&v11 = v6;
  *(&v11 + 1) = v7;
  v31 = v11;
  v32 = v10;
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  v33 = v12;
  v34 = v13;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __235__HDAssociationEntity__insertEntriesWithParentUUID_childUUIDsData_provenance_syncIdentity_type_behavior_deleted_creationDate_destinationSubObjectReference_enforceSameSource_permitPendingAssociations_profile_lastInsertedEntityID_error___block_invoke_3;
  v22[3] = &unk_278619D30;
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v26 = *(a1 + 88);
  v27 = *(a1 + 104);
  v28 = *(a1 + 122);
  v16 = *(a1 + 56);
  v17 = *(a1 + 64);
  *&v18 = v16;
  *(&v18 + 1) = v17;
  *&v19 = v14;
  *(&v19 + 1) = v15;
  v23 = v19;
  v24 = v18;
  v29 = *(a1 + 120);
  v25 = *(a1 + 32);
  v20 = [v4 performWriteTransactionWithHealthDatabase:v5 error:a2 block:v30 inaccessibilityHandler:v22];

  return v20;
}

uint64_t __235__HDAssociationEntity__insertEntriesWithParentUUID_childUUIDsData_provenance_syncIdentity_type_behavior_deleted_creationDate_destinationSubObjectReference_enforceSameSource_permitPendingAssociations_profile_lastInsertedEntityID_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [[_HDAssociationInsertionContext alloc] initWithParentUUID:*(a1 + 32) enforceSameSource:*(a1 + 120) permitPendingAssociations:*(a1 + 121) profile:*(a1 + 40) transaction:v5];

  v7 = *(a1 + 32);
  v8 = *(a1 + 80);
  v9 = *(a1 + 88);
  v10 = *(a1 + 96);
  v11 = *(a1 + 104);
  v12 = *(a1 + 112);
  v13 = *(a1 + 122);
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v16 = *(a1 + 64);
  v17 = *(*(a1 + 72) + 8);
  obj = *(v17 + 40);
  v18 = [(HDAssociationEntity *)v8 _insertEntriesWithParentUUID:v7 childUUIDsData:v14 provenance:v9 syncIdentity:v10 type:v11 behavior:v12 deleted:v13 creationDate:v15 destinationSubObjectReference:v16 lastInsertedEntityID:&obj context:v6 error:a3];
  objc_storeStrong((v17 + 40), obj);

  return v18;
}

uint64_t __235__HDAssociationEntity__insertEntriesWithParentUUID_childUUIDsData_provenance_syncIdentity_type_behavior_deleted_creationDate_destinationSubObjectReference_enforceSameSource_permitPendingAssociations_profile_lastInsertedEntityID_error___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [_HDAssociationInsertionJournalEntry alloc];
  LOBYTE(v11) = *(a1 + 105);
  LOBYTE(v10) = *(a1 + 104);
  v6 = [(_HDAssociationInsertionJournalEntry *)v5 initWithParentUUID:*(a1 + 32) childUUIDsData:*(a1 + 40) provenance:*(a1 + 72) syncIdentity:*(a1 + 80) type:*(a1 + 88) behavior:*(a1 + 96) deleted:v10 creationDate:*(a1 + 48) destinationSubObjectReference:*(a1 + 56) enforceSameSource:v11];
  v7 = [*(a1 + 64) database];
  v8 = [v7 addJournalEntry:v6 error:a3];

  return v8;
}

+ (BOOL)_bulkInsertEntriesWithParentUUID:(id)d childIDs:(id)ds provenance:(int64_t)provenance syncIdentity:(int64_t)identity type:(unint64_t)type behavior:(unint64_t)behavior creationDate:(id)date destinationSubObjectReference:(id)self0 profile:(id)self1 error:(id *)self2
{
  dCopy = d;
  dsCopy = ds;
  dateCopy = date;
  referenceCopy = reference;
  profileCopy = profile;
  database = [profileCopy database];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __160__HDAssociationEntity__bulkInsertEntriesWithParentUUID_childIDs_provenance_syncIdentity_type_behavior_creationDate_destinationSubObjectReference_profile_error___block_invoke;
  v41[3] = &unk_278619D80;
  v42 = dCopy;
  v43 = profileCopy;
  selfCopy = self;
  selfCopy2 = self;
  v44 = dsCopy;
  provenanceCopy = provenance;
  identityCopy = identity;
  typeCopy = type;
  behaviorCopy = behavior;
  v45 = dateCopy;
  v46 = referenceCopy;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __160__HDAssociationEntity__bulkInsertEntriesWithParentUUID_childIDs_provenance_syncIdentity_type_behavior_creationDate_destinationSubObjectReference_profile_error___block_invoke_2;
  v31[3] = &unk_278619DA8;
  v32 = v42;
  v33 = v44;
  identityCopy2 = identity;
  typeCopy2 = type;
  behaviorCopy2 = behavior;
  v34 = v45;
  v35 = v46;
  v36 = v43;
  provenanceCopy2 = provenance;
  v23 = v43;
  v24 = v46;
  v25 = v45;
  v26 = v44;
  v27 = v42;
  LOBYTE(dateCopy) = [selfCopy performWriteTransactionWithHealthDatabase:database error:error block:v41 inaccessibilityHandler:v31];

  return dateCopy;
}

BOOL __160__HDAssociationEntity__bulkInsertEntriesWithParentUUID_childIDs_provenance_syncIdentity_type_behavior_creationDate_destinationSubObjectReference_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [[_HDAssociationInsertionContext alloc] initWithParentUUID:*(a1 + 32) enforceSameSource:0 permitPendingAssociations:0 profile:*(a1 + 40) transaction:v5];

  v7 = *(a1 + 32);
  v55 = *(a1 + 80);
  v56 = *(a1 + 96);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = v7;
  v60 = v8;
  v59 = v9;
  v12 = v10;
  v13 = v6;
  v14 = objc_opt_self();
  v15 = [(_HDAssociationInsertionContext *)v13 transaction];
  v16 = [v15 databaseForEntityClass:v14];

  v17 = HDDataEntityPredicateForDataUUID();
  v63 = 0;
  v58 = v16;
  v18 = [HDDataEntity anyInDatabase:v16 predicate:v17 error:&v63];
  v19 = v63;

  if (!v18)
  {
    if (v19)
    {
      if (a3)
      {
        v21 = v19;
        v22 = 0;
        *a3 = v19;
        goto LABEL_27;
      }

      _HKLogDroppedError();
    }

    else
    {
      v44 = MEMORY[0x277CCA9B8];
      v45 = [v11 UUIDString];
      [v44 hk_assignError:a3 code:3 format:{@"Unable to find parent object for UUID %@ when inserting associations.", v45}];
    }

    v22 = 0;
    goto LABEL_27;
  }

  v52 = v11;
  v51 = v12;
  v47 = a3;
  v49 = v19;
  if (v12)
  {
    v20 = [(_HDAssociationInsertionContext *)v13 transaction];
    v62 = 0;
    v57 = [v12 persistentIDInTransaction:v20 error:&v62];
    v48 = v62;
  }

  else
  {
    v48 = 0;
    v57 = 0;
  }

  v50 = v18;
  v54 = [v18 persistentID];
  v23 = [v60 count];
  v24 = 0;
  v25 = 0;
  v53 = *MEMORY[0x277D10A88];
  do
  {
    v22 = v24 >= v23;
    if (v24 >= v23)
    {
      v11 = v52;
      v18 = v50;
      v12 = v51;
      v42 = v48;
      v19 = v49;
      goto LABEL_26;
    }

    if (v24 + v53 >= v23)
    {
      v26 = v23;
    }

    else
    {
      v26 = v24 + v53;
    }

    v27 = [v60 subarrayWithRange:{v24, v26 - v24}];
    v61 = v25;
    v28 = v27;
    v29 = v57;
    v30 = v59;
    v31 = v58;
    objc_opt_self();
    v32 = MEMORY[0x277CCAB68];
    v33 = +[(HDSQLiteSchemaEntity *)HDAssociationEntity];
    v34 = [v32 stringWithFormat:@"INSERT OR REPLACE INTO %@ (%@, %@, %@, %@, %@, %@, %@, %@, %@) VALUES ", v33, @"destination_object_id", @"source_object_id", @"sync_provenance", @"sync_identity", @"destination_sub_object_id", @"type", @"behavior", @"deleted", @"creation_date"];

    if ([v28 count])
    {
      v35 = 0;
      do
      {
        [v34 appendString:{@"(?, ?, ?, ?, ?, ?, ?, ?, ?), "}];
        ++v35;
      }

      while ([v28 count] > v35);
    }

    [v34 deleteCharactersInRange:{objc_msgSend(v34, "length") - 1, 1}];
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __156__HDAssociationEntity__bulkInsertAssociationsForParentID_childIDs_provenance_syncIdentity_type_behavior_destinationSubObjectID_creationDate_database_error___block_invoke;
    v64[3] = &unk_278619E20;
    v65 = v28;
    v66 = v29;
    v70 = v56;
    v69 = v55;
    v67 = v30;
    v68 = v54;
    v36 = v30;
    v37 = v29;
    v38 = v28;
    v39 = [v31 executeUncachedSQL:v34 error:&v61 bindingHandler:v64 enumerationHandler:0];

    v40 = v61;
    v24 = v26;
    v25 = v40;
  }

  while ((v39 & 1) != 0);
  v41 = v40;
  v25 = v41;
  v11 = v52;
  v12 = v51;
  v42 = v48;
  v19 = v49;
  if (v41)
  {
    if (v47)
    {
      v43 = v41;
      *v47 = v25;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v18 = v50;
  v22 = 0;
LABEL_26:

LABEL_27:
  return v22;
}

uint64_t __160__HDAssociationEntity__bulkInsertEntriesWithParentUUID_childIDs_provenance_syncIdentity_type_behavior_creationDate_destinationSubObjectReference_profile_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [[_HDAssociationInsertionJournalEntry alloc] initWithParentUUID:*(a1 + 32) childIDs:*(a1 + 40) provenance:*(a1 + 72) syncIdentity:*(a1 + 80) type:*(a1 + 88) behavior:*(a1 + 96) creationDate:*(a1 + 48) destinationSubObjectReference:*(a1 + 56)];
  v6 = [*(a1 + 64) database];
  v7 = [v6 addJournalEntry:v5 error:a3];

  return v7;
}

+ (id)_findAssociationEntryWithParentID:(uint64_t)d childID:(uint64_t)iD type:(uint64_t)type behavior:(void *)behavior destinationSubObjectID:(char)objectID deleted:(void *)deleted database:(uint64_t)database error:
{
  behaviorCopy = behavior;
  deletedCopy = deleted;
  objc_opt_self();
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__43;
  v40 = __Block_byref_object_dispose__43;
  v41 = 0;
  v10 = MEMORY[0x277CCACA8];
  v11 = +[(HDSQLiteSchemaEntity *)HDAssociationEntity];
  v12 = *MEMORY[0x277D10A40];
  v13 = [v10 stringWithFormat:@"SELECT %@ FROM %@ WHERE %@ = ? AND %@ = ? AND %@ = ? AND %@ = ? AND %@ = ? AND %@ IS NULL", *MEMORY[0x277D10A40], v11, @"destination_object_id", @"source_object_id", @"type", @"behavior", @"deleted", @"destination_sub_object_id"];

  if (behaviorCopy)
  {
    v14 = MEMORY[0x277CCACA8];
    v15 = +[(HDSQLiteSchemaEntity *)HDAssociationEntity];
    v16 = [v14 stringWithFormat:@"SELECT %@ FROM %@ WHERE %@ = ? AND %@ = ? AND %@ = ? AND %@ = ? AND %@ = ? AND %@ = ?", v12, v15, @"destination_object_id", @"source_object_id", @"type", @"behavior", @"deleted", @"destination_sub_object_id"];

    v13 = v16;
  }

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __125__HDAssociationEntity__findAssociationEntryWithParentID_childID_type_behavior_destinationSubObjectID_deleted_database_error___block_invoke;
  v29[3] = &unk_278619DD0;
  v31 = a2;
  dCopy = d;
  iDCopy = iD;
  typeCopy = type;
  objectIDCopy = objectID;
  v17 = behaviorCopy;
  v30 = v17;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __125__HDAssociationEntity__findAssociationEntryWithParentID_childID_type_behavior_destinationSubObjectID_deleted_database_error___block_invoke_2;
  v28[3] = &unk_278614620;
  v28[4] = &v36;
  if ([deletedCopy executeSQL:v13 error:database bindingHandler:v29 enumerationHandler:v28])
  {
    v18 = v37[5];
    if (!v18)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:database code:3 format:{@"Unable to find all associations for parent object for %lld when dis-associating.", a2}];
      v18 = v37[5];
    }

    v19 = objc_msgSend_copy(v18);
  }

  else
  {
    v19 = 0;
  }

  _Block_object_dispose(&v36, 8);

  return v19;
}

void *__125__HDAssociationEntity__findAssociationEntryWithParentID_childID_type_behavior_destinationSubObjectID_deleted_database_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 40));
  sqlite3_bind_int64(a2, 2, *(a1 + 48));
  sqlite3_bind_int64(a2, 3, *(a1 + 56));
  sqlite3_bind_int64(a2, 4, *(a1 + 64));
  sqlite3_bind_int64(a2, 5, *(a1 + 72));
  result = *(a1 + 32);
  if (result)
  {
    v5 = [result longLongValue];

    return sqlite3_bind_int64(a2, 6, v5);
  }

  return result;
}

uint64_t __125__HDAssociationEntity__findAssociationEntryWithParentID_childID_type_behavior_destinationSubObjectID_deleted_database_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCABB0] numberWithLongLong:HDSQLiteColumnAsInt64()];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 1;
}

uint64_t __151__HDAssociationEntity__removeAssociationEntryWithParentID_childID_provenance_syncIdentity_type_behavior_destinationSubObjectID_deleted_database_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) longLongValue];

  return sqlite3_bind_int64(a2, 1, v3);
}

id __185__HDAssociationEntity__insertAssociationEntryWithParentID_childID_provenance_syncIdentity_type_behavior_destinationSubObjectID_deleted_creationDate_lastInsertedEntityID_database_error___block_invoke()
{
  v0 = MEMORY[0x277CCACA8];
  v1 = +[(HDSQLiteSchemaEntity *)HDAssociationEntity];
  v2 = [v0 stringWithFormat:@"INSERT OR REPLACE INTO %@ (%@, %@, %@, %@, %@, %@, %@, %@, %@) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)", v1, @"destination_object_id", @"source_object_id", @"sync_provenance", @"sync_identity", @"destination_sub_object_id", @"type", @"behavior", @"deleted", @"creation_date", 0];

  return v2;
}

uint64_t __185__HDAssociationEntity__insertAssociationEntryWithParentID_childID_provenance_syncIdentity_type_behavior_destinationSubObjectID_deleted_creationDate_lastInsertedEntityID_database_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 48));
  sqlite3_bind_int64(a2, 2, *(a1 + 56));
  sqlite3_bind_int64(a2, 3, *(a1 + 64));
  sqlite3_bind_int64(a2, 4, *(a1 + 72));
  v4 = *(a1 + 32);
  if (v4)
  {
    sqlite3_bind_int64(a2, 5, [v4 longLongValue]);
  }

  else
  {
    sqlite3_bind_null(a2, 5);
  }

  sqlite3_bind_int64(a2, 6, *(a1 + 80));
  sqlite3_bind_int64(a2, 7, *(a1 + 88));
  sqlite3_bind_int64(a2, 8, *(a1 + 96));
  [*(a1 + 40) timeIntervalSinceReferenceDate];

  return sqlite3_bind_double(a2, 9, v5);
}

void *__156__HDAssociationEntity__bulkInsertAssociationsForParentID_childIDs_provenance_syncIdentity_type_behavior_destinationSubObjectID_creationDate_database_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  result = [*(a1 + 32) count];
  if (result)
  {
    v5 = 0;
    v6 = 5;
    do
    {
      sqlite3_bind_int64(a2, v6 - 4, *(a1 + 56));
      v7 = [*(a1 + 32) objectAtIndexedSubscript:v5];
      sqlite3_bind_int64(a2, v6 - 3, [v7 intValue]);

      sqlite3_bind_int64(a2, v6 - 2, *(a1 + 64));
      sqlite3_bind_int64(a2, v6 - 1, *(a1 + 72));
      v8 = *(a1 + 40);
      if (v8)
      {
        sqlite3_bind_int64(a2, v6, [v8 longLongValue]);
      }

      else
      {
        sqlite3_bind_null(a2, v6);
      }

      sqlite3_bind_int64(a2, v6 + 1, *(a1 + 80));
      sqlite3_bind_int64(a2, v6 + 2, *(a1 + 88));
      sqlite3_bind_int64(a2, v6 + 3, 0);
      [*(a1 + 48) timeIntervalSinceReferenceDate];
      sqlite3_bind_double(a2, v6 + 4, v9);
      ++v5;
      result = [*(a1 + 32) count];
      v6 += 9;
    }

    while (result > v5);
  }

  return result;
}

void __176__HDAssociationEntity__insertPendingAssociationsForParentUUID_childUUIDData_provenance_syncIdentity_type_behavior_deleted_creationDate_destinationSubObjectUUID_database_error___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = *(a1 + 80);
  v7 = *(a1 + 88);
  v8 = *(a1 + 96);
  v9 = *(a1 + 104);
  v10 = *(a1 + 112);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = *(a1 + 120);
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v16 = *(*(a1 + 64) + 8);
  obj = *(v16 + 40);
  v17 = [(HDAssociationEntity *)v6 _insertPendingAssociationForParentUUID:v11 childUUIDBytes:a2 provenance:v7 syncIdentity:v8 type:v9 behavior:v10 destinationSubObjectID:v12 deleted:v13 creationDate:v14 database:v15 error:&obj];
  objc_storeStrong((v16 + 40), obj);
  if ((v17 & 1) == 0)
  {
    *(*(*(a1 + 72) + 8) + 24) = 0;
    *a3 = 1;
  }
}

+ (BOOL)realizePendingAssociationsWithTransaction:(id)transaction startingAnchor:(int64_t)anchor error:(id *)error
{
  v34 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  if (qword_27D86C110 != -1)
  {
    dispatch_once(&qword_27D86C110, &__block_literal_global_464);
  }

  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = [transactionCopy databaseForEntityClass:self];
  v11 = _MergedGlobals_3;
  selfCopy = self;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __86__HDAssociationEntity_realizePendingAssociationsWithTransaction_startingAnchor_error___block_invoke_2;
  v32[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v32[4] = anchor;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __86__HDAssociationEntity_realizePendingAssociationsWithTransaction_startingAnchor_error___block_invoke_3;
  v28[3] = &unk_278619E70;
  v12 = v10;
  v29 = v12;
  v13 = v9;
  v30 = v13;
  if ([v12 executeSQL:v11 error:error bindingHandler:v32 enumerationHandler:v28])
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v24 objects:v33 count:16];
    if (v15)
    {
      v16 = v15;
      v22 = v13;
      v17 = *v25;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v24 + 1) + 8 * i);
          v23[0] = MEMORY[0x277D85DD0];
          v23[1] = 3221225472;
          v23[2] = __86__HDAssociationEntity_realizePendingAssociationsWithTransaction_startingAnchor_error___block_invoke_4;
          v23[3] = &unk_278614860;
          v23[4] = v19;
          if (![v12 executeSQL:qword_27D86C108 error:error bindingHandler:v23 enumerationHandler:0])
          {
            v20 = 0;
            goto LABEL_15;
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v24 objects:v33 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }

      v20 = 1;
LABEL_15:
      v13 = v22;
    }

    else
    {
      v20 = 1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

void __86__HDAssociationEntity_realizePendingAssociationsWithTransaction_startingAnchor_error___block_invoke()
{
  v12 = MEMORY[0x277CCACA8];
  v11 = *MEMORY[0x277D10A40];
  v10 = +[(HDSQLiteSchemaEntity *)HDDataEntity];
  v9 = +[(HDSQLiteSchemaEntity *)HDPendingAssociationEntity];
  v0 = +[(HDSQLiteSchemaEntity *)HDDataEntity];
  v1 = +[(HDSQLiteSchemaEntity *)HDDataEntity];
  v2 = +[(HDSQLiteSchemaEntity *)HDPendingAssociationEntity];
  v3 = +[(HDSQLiteSchemaEntity *)HDDataEntity];
  v4 = [v12 stringWithFormat:@"SELECT parent.%@, child.%@, a.%@, a.%@, a.%@, a.%@, a.%@, a.%@, a.%@, a.%@ FROM %@ parent CROSS JOIN %@ a ON parent.%@ = a.%@ INNER JOIN %@ child ON child.%@ = a.%@ WHERE parent.%@ > ? UNION SELECT parent.%@, child.%@, a.%@, a.%@, a.%@, a.%@, a.%@, a.%@, a.%@, a.%@ FROM %@ child CROSS JOIN %@ a ON child.%@ = a.%@ INNER JOIN %@ parent ON parent.%@ = a.%@ WHERE child.%@ > ?", @"data_id", @"data_id", @"sync_provenance", @"sync_identity", v11, @"type", @"behavior", @"deleted", @"creation_date", @"destination_sub_uuid", v10, v9, @"uuid", @"parent_uuid", v0, @"uuid", @"child_uuid", @"data_id", @"data_id", @"data_id", @"sync_provenance", @"sync_identity", v11, @"type", @"behavior", @"deleted", @"creation_date", @"destination_sub_uuid", v1, v2, @"uuid", @"child_uuid", v3, @"uuid", @"parent_uuid", @"data_id"];
  v5 = _MergedGlobals_3;
  _MergedGlobals_3 = v4;

  v6 = MEMORY[0x277CCACA8];
  v13 = +[(HDSQLiteSchemaEntity *)HDPendingAssociationEntity];
  v7 = [v6 stringWithFormat:@"DELETE FROM %@ WHERE %@ = ?", v13, v11];
  v8 = qword_27D86C108;
  qword_27D86C108 = v7;
}

uint64_t __86__HDAssociationEntity_realizePendingAssociationsWithTransaction_startingAnchor_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 32));
  v4 = *(a1 + 32);

  return sqlite3_bind_int64(a2, 2, v4);
}

uint64_t __86__HDAssociationEntity_realizePendingAssociationsWithTransaction_startingAnchor_error___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = HDSQLiteColumnAsInt64();
  v7 = HDSQLiteColumnAsInt64();
  v19 = HDSQLiteColumnAsInt64();
  v18 = HDSQLiteColumnAsInt64();
  v8 = MEMORY[0x22AAC6C80](a2, 4);
  v9 = HDSQLiteColumnAsInt64();
  v10 = HDSQLiteColumnAsInt64();
  v11 = MEMORY[0x22AAC6C10](a2, 7);
  v12 = MEMORY[0x22AAC6C40](a2, 8);
  v13 = MEMORY[0x22AAC6C80](a2, 9);
  if (v11 && ![HDAssociationEntity _removeAssociationEntryWithParentID:v6 childID:v7 provenance:v9 syncIdentity:v10 type:v13 behavior:*(a1 + 32) destinationSubObjectID:a3 deleted:? database:? error:?])
  {
    v15 = 0;
  }

  else
  {
    v14 = *(a1 + 48);
    v20 = 0;
    v15 = [(HDAssociationEntity *)v14 _insertAssociationEntryWithParentID:v6 childID:v7 provenance:v19 syncIdentity:v18 type:v9 behavior:v10 destinationSubObjectID:v13 deleted:v11 creationDate:v12 lastInsertedEntityID:&v20 database:*(a1 + 32) error:a3];
    v16 = v20;
    if (v15)
    {
      [*(a1 + 40) addObject:v8];
    }
  }

  return v15;
}

uint64_t __86__HDAssociationEntity_realizePendingAssociationsWithTransaction_startingAnchor_error___block_invoke_4(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) longLongValue];

  return sqlite3_bind_int64(a2, 1, v3);
}

+ (id)objectIDsForAssociationEntityWithPersistentID:(int64_t)d profile:(id)profile error:(id *)error
{
  profileCopy = profile;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__43;
  v17 = __Block_byref_object_dispose__43;
  array = [MEMORY[0x277CBEB18] array];
  database = [profileCopy database];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __83__HDAssociationEntity_objectIDsForAssociationEntityWithPersistentID_profile_error___block_invoke;
  v12[3] = &unk_278619EC0;
  v12[5] = self;
  v12[6] = d;
  v12[4] = &v13;
  LOBYTE(error) = [self performReadTransactionWithHealthDatabase:database error:error block:v12];

  if (error)
  {
    v10 = v14[5];
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  _Block_object_dispose(&v13, 8);

  return v10;
}

uint64_t __83__HDAssociationEntity_objectIDsForAssociationEntityWithPersistentID_profile_error___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = [a2 databaseForEntityClass:a1[5]];
  v6 = MEMORY[0x277D10B18];
  v7 = [MEMORY[0x277CCABB0] numberWithLongLong:a1[6]];
  v8 = [v6 predicateWithProperty:@"destination_object_id" equalToValue:v7];

  v9 = objc_alloc_init(MEMORY[0x277D10B80]);
  [v9 setPredicate:v8];
  [v9 setEntityClass:a1[5]];
  v15[0] = @"source_object_id";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v11 = [objc_alloc(MEMORY[0x277D10B78]) initWithDatabase:v5 descriptor:v9];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __83__HDAssociationEntity_objectIDsForAssociationEntityWithPersistentID_profile_error___block_invoke_2;
  v14[3] = &unk_278619E98;
  v14[4] = a1[4];
  v12 = [v11 enumerateProperties:v10 error:a3 enumerationHandler:v14];

  return v12;
}

uint64_t __83__HDAssociationEntity_objectIDsForAssociationEntityWithPersistentID_profile_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x22AAC6C80](a3, 0);
  if (v4)
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v4];
  }

  return 1;
}

+ (id)deleteStatementForParentIDWithTransaction:(id)transaction
{
  v4 = [transaction databaseForEntityClass:self];
  v5 = [self deleteStatementWithProperty:@"destination_object_id" database:v4];

  return v5;
}

+ (id)deleteStatementForChildIDsWithTransaction:(id)transaction
{
  v4 = [transaction databaseForEntityClass:self];
  v5 = [self deleteStatementWithProperty:@"source_object_id" database:v4];

  return v5;
}

+ (id)objectsAssociatedWithObjectPID:(int64_t)d subObjectReference:(id)reference dataTypes:(id)types associationType:(unint64_t)type behavior:(unint64_t)behavior limit:(unint64_t)limit sortDescending:(BOOL)descending profile:(id)self0 error:(id *)self1
{
  referenceCopy = reference;
  typesCopy = types;
  profileCopy = profile;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__43;
  v47 = __Block_byref_object_dispose__43;
  v48 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x3032000000;
  v41[3] = __Block_byref_object_copy__43;
  v41[4] = __Block_byref_object_dispose__43;
  v42 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3032000000;
  v39[3] = __Block_byref_object_copy__43;
  v39[4] = __Block_byref_object_dispose__43;
  v40 = 0;
  database = [profileCopy database];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __143__HDAssociationEntity_objectsAssociatedWithObjectPID_subObjectReference_dataTypes_associationType_behavior_limit_sortDescending_profile_error___block_invoke;
  v26[3] = &unk_278619F10;
  v19 = typesCopy;
  v27 = v19;
  dCopy = d;
  v20 = referenceCopy;
  v28 = v20;
  descendingCopy = descending;
  typeCopy = type;
  behaviorCopy = behavior;
  selfCopy = self;
  limitCopy = limit;
  v21 = profileCopy;
  v29 = v21;
  v30 = v39;
  v31 = v41;
  v32 = &v43;
  LOBYTE(types) = [(HDHealthEntity *)HDDataEntity performReadTransactionWithHealthDatabase:database error:error block:v26];

  if (types)
  {
    v22 = v44[5];
  }

  else
  {
    v22 = 0;
  }

  _Block_object_dispose(v39, 8);
  _Block_object_dispose(v41, 8);

  _Block_object_dispose(&v43, 8);

  return v22;
}

uint64_t __143__HDAssociationEntity_objectsAssociatedWithObjectPID_subObjectReference_dataTypes_associationType_behavior_limit_sortDescending_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v61 = *MEMORY[0x277D85DE8];
  v48 = a2;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = *(a1 + 32);
  v50 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
  if (v50)
  {
    v4 = 0x277D10000uLL;
    v5 = 0x277CCA000uLL;
    v49 = *v55;
    v6 = @"child_id_samples.data_type";
    while (2)
    {
      for (i = 0; i != v50; ++i)
      {
        if (*v55 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v54 + 1) + 8 * i);
        v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v10 = *(v4 + 2840);
        v11 = [*(v5 + 2992) numberWithLongLong:*(a1 + 80)];
        v12 = [v10 predicateWithProperty:@"destination_object_id" equalToValue:v11];
        [v9 addObject:v12];

        v13 = *(a1 + 40);
        if (v13)
        {
          v14 = [v13 persistentIDInTransaction:v48 error:a3];
          if (!v14)
          {
            goto LABEL_25;
          }

          v15 = v14;
          v16 = [v14 longLongValue];
          v17 = *(v4 + 2840);
          v18 = [*(v5 + 2992) numberWithLongLong:v16];
          v19 = [v17 predicateWithProperty:@"destination_sub_object_id" equalToValue:v18];
          [v9 addObject:v19];
        }

        else
        {
          v15 = [MEMORY[0x277D10B60] isNullPredicateWithProperty:@"destination_sub_object_id"];
          [v9 addObject:v15];
        }

        v20 = [*(v4 + 2840) predicateWithProperty:@"deleted" equalToValue:MEMORY[0x277CBEC28]];
        [v9 addObject:v20];

        v21 = *(v4 + 2840);
        v22 = [*(v5 + 2992) numberWithInteger:{objc_msgSend(v8, "code")}];
        v23 = [v21 predicateWithProperty:v6 equalToValue:v22];
        [v9 addObject:v23];

        v24 = *(v4 + 2840);
        v25 = [*(v5 + 2992) numberWithUnsignedInteger:*(a1 + 88)];
        v26 = [v24 predicateWithProperty:@"type" equalToValue:v25];
        [v9 addObject:v26];

        v27 = *(v4 + 2840);
        v28 = [*(v5 + 2992) numberWithUnsignedInteger:*(a1 + 96)];
        v29 = [v27 predicateWithProperty:@"behavior" equalToValue:v28];
        [v9 addObject:v29];

        if (*(a1 + 120) == 1)
        {
          v30 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"creation_date" entityClass:objc_opt_class() ascending:0];
          v31 = [MEMORY[0x277D10B68] orderingTermWithProperty:v6 entityClass:objc_opt_class() ascending:0];
          v32 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"ROWID" entityClass:*(a1 + 104) ascending:0];
          v59[0] = v31;
          v59[1] = v30;
          v59[2] = v32;
          v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:3];
        }

        else
        {
          v33 = 0;
        }

        v34 = *(a1 + 104);
        v35 = v6;
        v58[0] = v6;
        v58[1] = @"child_id_samples.data_id";
        v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:2];
        v37 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v9];
        v38 = *(a1 + 112);
        v39 = [*(a1 + 48) database];
        v52[0] = MEMORY[0x277D85DD0];
        v52[1] = 3221225472;
        v52[2] = __143__HDAssociationEntity_objectsAssociatedWithObjectPID_subObjectReference_dataTypes_associationType_behavior_limit_sortDescending_profile_error___block_invoke_2;
        v52[3] = &unk_278619EE8;
        v53 = *(a1 + 56);
        LODWORD(v34) = [v34 enumerateProperties:v36 withPredicate:v37 orderingTerms:v33 groupBy:0 limit:v38 healthDatabase:v39 error:a3 enumerationHandler:v52];

        if (!v34)
        {
          goto LABEL_24;
        }

        v5 = 0x277CCA000;
        v6 = v35;
        v4 = 0x277D10000;
        if (*(*(*(a1 + 56) + 8) + 40) && [*(*(*(a1 + 64) + 8) + 40) count])
        {
          v40 = [MEMORY[0x277D10B28] containsPredicateWithProperty:@"data_id" values:*(*(*(a1 + 64) + 8) + 40)];
          v41 = [HDSampleEntity samplesWithType:*(*(*(a1 + 56) + 8) + 40) profile:*(a1 + 48) encodingOptions:0 predicate:v40 limit:*(a1 + 112) anchor:0 error:a3];
          v42 = v41;
          if (!*(*(*(a1 + 56) + 8) + 40) || ![v41 count])
          {

LABEL_24:
LABEL_25:

            v45 = 0;
            goto LABEL_26;
          }

          [*(*(*(a1 + 72) + 8) + 40) addObjectsFromArray:v42];
          [*(*(*(a1 + 64) + 8) + 40) removeAllObjects];
          v43 = *(*(a1 + 56) + 8);
          v44 = *(v43 + 40);
          *(v43 + 40) = 0;
        }
      }

      v45 = 1;
      v50 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
      if (v50)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v45 = 1;
  }

LABEL_26:

  return v45;
}

uint64_t __143__HDAssociationEntity_objectsAssociatedWithObjectPID_subObjectReference_dataTypes_associationType_behavior_limit_sortDescending_profile_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [MEMORY[0x277CCD8D8] dataTypeWithCode:HDSQLiteColumnAsInt64()];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = HDSQLiteColumnAsInt64();
  v9 = *(*(*(a1 + 40) + 8) + 40);
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
  [v9 addObject:v10];

  return 1;
}

+ (id)countOfObjectsAssociatedWithObjectUUID:(id)d subObjectReference:(id)reference excludeDeleted:(BOOL)deleted profile:(id)profile error:(id *)error
{
  dCopy = d;
  referenceCopy = reference;
  profileCopy = profile;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__43;
  v31 = __Block_byref_object_dispose__43;
  v32 = 0;
  database = [profileCopy database];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __110__HDAssociationEntity_countOfObjectsAssociatedWithObjectUUID_subObjectReference_excludeDeleted_profile_error___block_invoke;
  v21[3] = &unk_278619F38;
  v16 = dCopy;
  v22 = v16;
  v17 = referenceCopy;
  deletedCopy = deleted;
  v23 = v17;
  v24 = &v27;
  selfCopy = self;
  LODWORD(error) = [(HDHealthEntity *)HDDataEntity performReadTransactionWithHealthDatabase:database error:error block:v21];

  if (error)
  {
    v18 = v28[5];
  }

  else
  {
    v18 = &unk_283CB0978;
  }

  v19 = v18;

  _Block_object_dispose(&v27, 8);

  return v19;
}

BOOL __110__HDAssociationEntity_countOfObjectsAssociatedWithObjectUUID_subObjectReference_excludeDeleted_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 protectedDatabase];
  v7 = HDDataEntityPredicateForDataUUID();
  v8 = [HDDataEntity anyInDatabase:v6 predicate:v7 error:a3];

  if (v8)
  {
    v9 = objc_opt_new();
    v10 = MEMORY[0x277D10B18];
    v11 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v8, "persistentID")}];
    v12 = [v10 predicateWithProperty:@"destination_object_id" equalToValue:v11];
    [v9 addObject:v12];

    v13 = *(a1 + 40);
    if (v13)
    {
      v14 = MEMORY[0x277D10B18];
      v15 = [v13 UUID];
      v16 = _HDSQLiteValueForUUID();
      v17 = [v14 predicateWithProperty:@"child_id_objects.uuid" equalToValue:v16];
      [v9 addObject:v17];
    }

    else
    {
      v15 = [MEMORY[0x277D10B60] isNullPredicateWithProperty:@"destination_sub_object_id"];
      [v9 addObject:v15];
    }

    if (*(a1 + 64) == 1)
    {
      v19 = MEMORY[0x277D10B18];
      v20 = [MEMORY[0x277CCABB0] numberWithInt:0];
      v21 = [v19 predicateWithProperty:@"deleted" equalToValue:v20];
      [v9 addObject:v21];
    }

    v22 = *(a1 + 56);
    v23 = *MEMORY[0x277D10A48];
    v24 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v9];
    v25 = [v5 protectedDatabase];
    v26 = [v22 countValueForProperty:v23 predicate:v24 database:v25 error:a3];
    v27 = *(*(a1 + 48) + 8);
    v28 = *(v27 + 40);
    *(v27 + 40) = v26;

    v18 = *(*(*(a1 + 48) + 8) + 40) != 0;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (id)countOfObjectsAssociatedWithObjectPID:(int64_t)d excludeDeleted:(BOOL)deleted associationType:(unint64_t)type behavior:(unint64_t)behavior anchor:(int64_t)anchor transaction:(id)transaction error:(id *)error
{
  deletedCopy = deleted;
  transactionCopy = transaction;
  v15 = objc_opt_new();
  v16 = MEMORY[0x277D10B18];
  v17 = [MEMORY[0x277CCABB0] numberWithLongLong:d];
  v18 = [v16 predicateWithProperty:@"destination_object_id" equalToValue:v17];
  [v15 addObject:v18];

  if (deletedCopy)
  {
    v19 = MEMORY[0x277D10B18];
    v20 = [MEMORY[0x277CCABB0] numberWithInt:0];
    v21 = [v19 predicateWithProperty:@"deleted" equalToValue:v20];
    [v15 addObject:v21];
  }

  v22 = MEMORY[0x277D10B18];
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  v24 = [v22 predicateWithProperty:@"type" equalToValue:v23];
  [v15 addObject:v24];

  v25 = MEMORY[0x277D10B18];
  v26 = [MEMORY[0x277CCABB0] numberWithLongLong:anchor];
  v27 = [v25 predicateWithProperty:@"ROWID" greaterThanValue:v26];
  [v15 addObject:v27];

  v28 = *MEMORY[0x277D10A48];
  v29 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v15];
  protectedDatabase = [transactionCopy protectedDatabase];

  v31 = [self countValueForProperty:v28 predicate:v29 database:protectedDatabase error:error];

  return v31;
}

+ (void)_UUIDsAssociatedWithUUID:(void *)d subObjectReference:(void *)reference predicateProperty:(void *)property enumerateProperty:(char)enumerateProperty excludeDeleted:(void *)deleted profile:(uint64_t)profile error:
{
  v13 = a2;
  dCopy = d;
  referenceCopy = reference;
  propertyCopy = property;
  deletedCopy = deleted;
  v18 = objc_opt_self();
  v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
  database = [deletedCopy database];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __132__HDAssociationEntity__UUIDsAssociatedWithUUID_subObjectReference_predicateProperty_enumerateProperty_excludeDeleted_profile_error___block_invoke;
  v31[3] = &unk_278619F60;
  v32 = v13;
  v33 = dCopy;
  enumeratePropertyCopy = enumerateProperty;
  v37 = v19;
  v38 = v18;
  v34 = referenceCopy;
  v35 = propertyCopy;
  v36 = deletedCopy;
  v21 = v19;
  v22 = deletedCopy;
  v23 = propertyCopy;
  v24 = referenceCopy;
  v25 = dCopy;
  v26 = v13;
  LODWORD(v19) = [(HDHealthEntity *)HDDataEntity performReadTransactionWithHealthDatabase:database error:profile block:v31];

  if (v19)
  {
    v27 = v21;
  }

  else
  {
    v27 = MEMORY[0x277CBEBF8];
  }

  v28 = v27;

  return v27;
}

uint64_t __132__HDAssociationEntity__UUIDsAssociatedWithUUID_subObjectReference_predicateProperty_enumerateProperty_excludeDeleted_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v36[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 protectedDatabase];
  v7 = HDDataEntityPredicateForDataUUID();
  v35 = 0;
  v8 = [HDDataEntity anyInDatabase:v6 predicate:v7 error:&v35];
  v9 = v35;

  if (v8)
  {
    v10 = *(a1 + 40);
    if (v10)
    {
      v34 = 0;
      v11 = [v10 persistentIDInTransaction:v5 error:&v34];
      v12 = v34;
      if (!v11)
      {
        v15 = v12;
        if (v15)
        {
          if (a3)
          {
            v29 = v15;
            v14 = 0;
            *a3 = v15;
          }

          else
          {
            _HKLogDroppedError();
            v14 = 0;
          }

          v11 = v15;
        }

        else
        {
          v11 = 0;
          v14 = 1;
        }

        goto LABEL_15;
      }

      v30 = a3;
    }

    else
    {
      v30 = a3;
      v11 = 0;
    }

    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v16 = MEMORY[0x277D10B18];
    v17 = *(a1 + 48);
    v18 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v8, "persistentID")}];
    v19 = [v16 predicateWithProperty:v17 equalToValue:v18];
    [v15 addObject:v19];

    if (v11)
    {
      [MEMORY[0x277D10B18] predicateWithProperty:@"destination_sub_object_id" equalToValue:v11];
    }

    else
    {
      [MEMORY[0x277D10B60] isNullPredicateWithProperty:@"destination_sub_object_id"];
    }
    v20 = ;
    [v15 addObject:{v20, v30}];

    if (*(a1 + 88) == 1)
    {
      v21 = MEMORY[0x277D10B18];
      v22 = [MEMORY[0x277CCABB0] numberWithInt:0];
      v23 = [v21 predicateWithProperty:@"deleted" equalToValue:v22];
      [v15 addObject:v23];
    }

    v24 = *(a1 + 80);
    v36[0] = *(a1 + 56);
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
    v26 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v15];
    v27 = [*(a1 + 64) database];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __132__HDAssociationEntity__UUIDsAssociatedWithUUID_subObjectReference_predicateProperty_enumerateProperty_excludeDeleted_profile_error___block_invoke_2;
    v32[3] = &unk_278615128;
    v33 = *(a1 + 72);
    v14 = [v24 enumerateProperties:v25 withPredicate:v26 healthDatabase:v27 error:v31 enumerationHandler:v32];

LABEL_15:
    goto LABEL_16;
  }

  v11 = v9;
  if (v11)
  {
    if (a3)
    {
      v13 = v11;
      v14 = 0;
      *a3 = v11;
    }

    else
    {
      _HKLogDroppedError();
      v14 = 0;
    }
  }

  else
  {
    v14 = 1;
  }

LABEL_16:

  return v14;
}

uint64_t __132__HDAssociationEntity__UUIDsAssociatedWithUUID_subObjectReference_predicateProperty_enumerateProperty_excludeDeleted_profile_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x22AAC6CA0](a4, 0, a3);
  if (v5)
  {
    [*(a1 + 32) addObject:v5];
  }

  return 1;
}

+ (BOOL)_enumerateAssociationsWithPredicate:(id)predicate syncEntityClass:(Class)class session:(id)session syncAnchorRange:(HDSyncAnchorRange)range lastSyncAnchor:(int64_t *)anchor healthDatabase:(id)database error:(id *)error block:(id)self0
{
  end = range.end;
  start = range.start;
  v33[3] = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  sessionCopy = session;
  databaseCopy = database;
  blockCopy = block;
  v20 = [self predicateForSyncWithPredicate:predicateCopy syncEntityClass:class session:sessionCopy syncAnchorRange:{start, end}];
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = start;
  v33[0] = @"parent_id_objects.uuid";
  v33[1] = @"child_id_objects.uuid";
  v33[2] = @"sync_identity";
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:3];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __141__HDAssociationEntity__enumerateAssociationsWithPredicate_syncEntityClass_session_syncAnchorRange_lastSyncAnchor_healthDatabase_error_block___block_invoke;
  v26[3] = &unk_278619FB0;
  v22 = blockCopy;
  v27 = v22;
  v28 = &v29;
  v23 = [self enumerateProperties:v21 withPredicate:v20 healthDatabase:databaseCopy error:error enumerationHandler:v26];

  v24 = v23 ^ 1;
  if (!anchor)
  {
    v24 = 1;
  }

  if ((v24 & 1) == 0)
  {
    *anchor = v30[3];
  }

  _Block_object_dispose(&v29, 8);
  return v23;
}

uint64_t __141__HDAssociationEntity__enumerateAssociationsWithPredicate_syncEntityClass_session_syncAnchorRange_lastSyncAnchor_healthDatabase_error_block___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a1 + 32);
  v5 = HKWithAutoreleasePool();

  return v5;
}

uint64_t __141__HDAssociationEntity__enumerateAssociationsWithPredicate_syncEntityClass_session_syncAnchorRange_lastSyncAnchor_healthDatabase_error_block___block_invoke_2(void *a1)
{
  v2 = MEMORY[0x22AAC6CA0](a1[6], 0);
  v3 = MEMORY[0x22AAC6CA0](a1[6], 1);
  HDSQLiteColumnAsInt64();
  (*(a1[4] + 16))();
  *(*(a1[5] + 8) + 24) = a1[7];

  return 1;
}

+ (BOOL)_enumerateTypedAssociationsWithPredicate:(id)predicate syncEntityClass:(Class)class session:(id)session syncAnchorRange:(HDSyncAnchorRange)range lastSyncAnchor:(int64_t *)anchor healthDatabase:(id)database transaction:(id)transaction error:(id *)self0 block:(id)self1
{
  end = range.end;
  start = range.start;
  v37[8] = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  sessionCopy = session;
  databaseCopy = database;
  transactionCopy = transaction;
  blockCopy = block;
  v21 = [self predicateForSyncWithPredicate:predicateCopy syncEntityClass:class session:sessionCopy syncAnchorRange:{start, end}];
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = start;
  v37[0] = @"parent_id_objects.uuid";
  v37[1] = @"child_id_objects.uuid";
  v37[2] = @"sync_identity";
  v37[3] = @"type";
  v37[4] = @"behavior";
  v37[5] = @"deleted";
  v37[6] = @"creation_date";
  v37[7] = @"destination_sub_object_id";
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:8];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __158__HDAssociationEntity__enumerateTypedAssociationsWithPredicate_syncEntityClass_session_syncAnchorRange_lastSyncAnchor_healthDatabase_transaction_error_block___block_invoke;
  v29[3] = &unk_27861A000;
  v23 = transactionCopy;
  v30 = v23;
  v24 = blockCopy;
  v31 = v24;
  v32 = &v33;
  v25 = [self enumerateProperties:v22 withPredicate:v21 healthDatabase:databaseCopy error:error enumerationHandler:v29];

  v26 = v25 ^ 1;
  if (!anchor)
  {
    v26 = 1;
  }

  if ((v26 & 1) == 0)
  {
    *anchor = v34[3];
  }

  _Block_object_dispose(&v33, 8);
  return v25;
}

uint64_t __158__HDAssociationEntity__enumerateTypedAssociationsWithPredicate_syncEntityClass_session_syncAnchorRange_lastSyncAnchor_healthDatabase_transaction_error_block___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v6 = HKWithAutoreleasePool();

  return v6;
}

uint64_t __158__HDAssociationEntity__enumerateTypedAssociationsWithPredicate_syncEntityClass_session_syncAnchorRange_lastSyncAnchor_healthDatabase_transaction_error_block___block_invoke_2(void *a1, void *a2)
{
  v4 = MEMORY[0x22AAC6CA0](a1[7], 0);
  v5 = MEMORY[0x22AAC6CA0](a1[7], 1);
  HDSQLiteColumnAsInt64();
  HDSQLiteColumnAsInt64();
  HDSQLiteColumnAsInt64();
  MEMORY[0x22AAC6C10](a1[7], 5);
  v6 = MEMORY[0x22AAC6C40](a1[7], 6);
  v7 = HDSQLiteColumnAsInt64();
  v8 = HDReferenceForUnknownAssociatableObjectWithPersistentID(v7, a1[4], a2);
  v9 = [v8 UUID];
  (*(a1[5] + 16))(a1[5], v4, v5);
  *(*(a1[6] + 8) + 24) = a1[8];

  return 1;
}

+ (BOOL)_insertCodableObjectAssociations:(id)associations syncStore:(id)store profile:(id)profile error:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  associationsCopy = associations;
  storeCopy = store;
  profileCopy = profile;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = associationsCopy;
  v11 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v19 = profileCopy;
        v20 = storeCopy;
        v15 = HKWithAutoreleasePool();

        if (!v15)
        {
          v16 = 0;
          goto LABEL_11;
        }
      }

      v12 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v16 = 1;
LABEL_11:

  return v16;
}

BOOL __80__HDAssociationEntity__insertCodableObjectAssociations_syncStore_profile_error___block_invoke(id *a1, uint64_t a2)
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__43;
  v26 = __Block_byref_object_dispose__43;
  v4 = [a1[4] syncIdentityManager];
  v27 = [v4 legacySyncIdentity];

  v5 = [a1[4] database];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __80__HDAssociationEntity__insertCodableObjectAssociations_syncStore_profile_error___block_invoke_2;
  v19[3] = &unk_278619980;
  v21 = &v22;
  v18 = *(a1 + 2);
  v6 = v18.i64[0];
  v20 = vextq_s8(v18, v18, 8uLL);
  v7 = [(HDHealthEntity *)HDSyncIdentityEntity performWriteTransactionWithHealthDatabase:v5 error:a2 block:v19];

  if (v7)
  {
    v8 = [a1[5] decodedAssociationUUID];
    v9 = [a1[5] objectUuids];
    v10 = [a1[6] syncProvenance];
    v11 = [v23[5] entity];
    v12 = [v11 persistentID];
    v13 = [MEMORY[0x277CBEAA8] distantPast];
    LOWORD(v17) = 256;
    LOBYTE(v16) = 0;
    v14 = [HDAssociationEntity _insertEntriesWithParentUUID:v8 childUUIDsData:v9 provenance:v10 syncIdentity:v12 type:0 behavior:0 deleted:v16 creationDate:v13 destinationSubObjectReference:0 enforceSameSource:v17 permitPendingAssociations:a1[4] profile:0 lastInsertedEntityID:a2 error:?];
  }

  else
  {
    v14 = 0;
  }

  _Block_object_dispose(&v22, 8);
  return v14;
}

uint64_t __80__HDAssociationEntity__insertCodableObjectAssociations_syncStore_profile_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([*(a1 + 32) hasSyncIdentity])
  {
    v6 = [*(a1 + 32) syncIdentity];
    v20 = 0;
    v7 = [HDSyncIdentity syncIdentityWithCodable:v6 error:&v20];
    v8 = v20;

    if (v7)
    {
      v9 = [*(a1 + 40) syncIdentityManager];
      v19 = v8;
      v10 = 1;
      v11 = [v9 concreteIdentityForIdentity:v7 shouldCreate:1 transaction:v5 error:&v19];
      v12 = v19;

      v13 = *(*(a1 + 48) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v11;

      if (*(*(*(a1 + 48) + 8) + 40))
      {
LABEL_16:

        goto LABEL_17;
      }

      _HKInitializeLogging();
      v15 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        v22 = v12;
        _os_log_fault_impl(&dword_228986000, v15, OS_LOG_TYPE_FAULT, "ConcreteSyncIdentity from received codable is nil %{public}@", buf, 0xCu);
      }

      v12 = v12;
      if (!v12)
      {
LABEL_15:

        v10 = 0;
        goto LABEL_16;
      }

      if (!a3)
      {
LABEL_8:
        _HKLogDroppedError();
        goto LABEL_15;
      }
    }

    else
    {
      _HKInitializeLogging();
      v16 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        v22 = v8;
        _os_log_fault_impl(&dword_228986000, v16, OS_LOG_TYPE_FAULT, "SyncIdentity from received codable is nil %{public}@", buf, 0xCu);
      }

      v12 = v8;
      if (!v12)
      {
        goto LABEL_15;
      }

      if (!a3)
      {
        goto LABEL_8;
      }
    }

    v17 = v12;
    *a3 = v12;
    goto LABEL_15;
  }

  v10 = 1;
LABEL_17:

  return v10;
}

@end