@interface HDContributorEntity
+ (BOOL)deleteContributorWithUUID:(id)d profile:(id)profile error:(id *)error;
+ (id)_insertWithUUID:(uint64_t)d appleID:(void *)iD callerID:(void *)callerID deleted:(void *)deleted modificationDate:(uint64_t)date syncAnchor:(uint64_t)anchor syncProvenance:(uint64_t)provenance syncIdentity:(char)identity primaryUser:(double)user database:(void *)d0 error:(uint64_t)d1;
+ (id)_nextSyncAnchorInDatabase:(void *)database error:;
+ (id)_predicateForContributorReference:(uint64_t)reference;
+ (id)_predicateForContributorWithUUID:(uint64_t)d;
+ (id)contributorEntityForNoContributorWithProfile:(id)profile error:(id *)error;
+ (id)contributorEntityWithUUID:(id)d profile:(id)profile includeDeleted:(BOOL)deleted error:(id *)error;
+ (id)contributorForReference:(id)reference profile:(id)profile error:(id *)error;
+ (id)externalReferenceForContributorReference:(id)reference profile:(id)profile error:(id *)error;
+ (id)insertOrLookupContributorEntityForNoContributorWithTransaction:(id)transaction syncIdentity:(int64_t)identity error:(id *)error;
+ (id)insertPrimaryUserWithAppleID:(id)d callerID:(id)iD syncIdentity:(int64_t)identity database:(id)database error:(id *)error;
+ (id)insertWithUUID:(id)d appleID:(id)iD callerID:(id)callerID primaryUser:(BOOL)user profile:(id)profile error:(id *)error;
+ (id)insertWithUUID:(id)d appleID:(id)iD callerID:(id)callerID primaryUser:(BOOL)user syncProvenance:(int64_t)provenance syncIdentity:(int64_t)identity transaction:(id)transaction error:(id *)self0;
+ (id)noneContributorUUID;
+ (id)primaryUserContributorInDatabase:(id)database error:(id *)error;
+ (id)primaryUserContributorInProfile:(id)profile error:(id *)error;
- (BOOL)deletedInProfile:(id)profile error:(id *)error;
- (BOOL)updateAppleID:(id)d profile:(id)profile error:(id *)error;
- (BOOL)updateCallerID:(id)d profile:(id)profile error:(id *)error;
- (id)appleIDInProfile:(id)profile error:(id *)error;
- (id)callerIDInProfile:(id)profile error:(id *)error;
- (id)modificationDateInProfile:(id)profile error:(id *)error;
- (id)syncAnchorInProfile:(id)profile error:(id *)error;
@end

@implementation HDContributorEntity

+ (id)insertOrLookupContributorEntityForNoContributorWithTransaction:(id)transaction syncIdentity:(int64_t)identity error:(id *)error
{
  v23[9] = *MEMORY[0x277D85DE8];
  v8 = [transaction databaseForEntityClass:self];
  noneContributorUUID = [self noneContributorUUID];
  v10 = [(HDContributorEntity *)self _predicateForContributorWithUUID:noneContributorUUID];
  v22 = 0;
  v11 = [self anyInDatabase:v8 predicate:v10 error:&v22];
  v12 = v22;
  v13 = v12;
  if (v11)
  {
    v14 = v11;
  }

  else if (v12)
  {
    if (error)
    {
      v16 = v12;
      v14 = 0;
      *error = v13;
    }

    else
    {
      _HKLogDroppedError();
      v14 = 0;
    }
  }

  else
  {
    v23[0] = @"uuid";
    v23[1] = @"apple_id";
    v23[2] = @"caller_id";
    v23[3] = @"deleted";
    v23[4] = @"mod_date";
    v23[5] = @"sync_anchor";
    v23[6] = @"sync_provenance";
    v23[7] = @"sync_identity";
    v23[8] = @"primary_user";
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:9];
    v21 = 0;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __105__HDContributorEntity_insertOrLookupContributorEntityForNoContributorWithTransaction_syncIdentity_error___block_invoke;
    v18[3] = &unk_278616B10;
    v19 = noneContributorUUID;
    identityCopy = identity;
    v14 = [self insertOrReplaceEntity:0 database:v8 properties:v17 error:&v21 bindingHandler:v18];
    v13 = v21;
  }

  return v14;
}

+ (id)_predicateForContributorWithUUID:(uint64_t)d
{
  v2 = a2;
  objc_opt_self();
  v3 = MEMORY[0x277D10B18];
  v4 = _HDSQLiteValueForUUID();

  v5 = [v3 predicateWithProperty:@"uuid" equalToValue:v4];

  return v5;
}

void __105__HDContributorEntity_insertOrLookupContributorEntityForNoContributorWithTransaction_syncIdentity_error___block_invoke(uint64_t a1, uint64_t a2)
{
  MEMORY[0x22AAC6C00](a2, @"uuid", *(a1 + 32));
  MEMORY[0x22AAC6BA0](a2, @"apple_id");
  MEMORY[0x22AAC6BA0](a2, @"caller_id");
  MEMORY[0x22AAC6B30](a2, @"deleted", 0);
  Current = CFAbsoluteTimeGetCurrent();
  MEMORY[0x22AAC6B60](a2, @"mod_date", Current);
  MEMORY[0x22AAC6B90](a2, @"sync_anchor", 0);
  MEMORY[0x22AAC6B90](a2, @"sync_provenance", 0);
  MEMORY[0x22AAC6B90](a2, @"sync_identity", *(a1 + 40));

  JUMPOUT(0x22AAC6B30);
}

+ (id)insertWithUUID:(id)d appleID:(id)iD callerID:(id)callerID primaryUser:(BOOL)user profile:(id)profile error:(id *)error
{
  dCopy = d;
  iDCopy = iD;
  callerIDCopy = callerID;
  profileCopy = profile;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__39;
  v37 = __Block_byref_object_dispose__39;
  v38 = 0;
  database = [profileCopy database];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __81__HDContributorEntity_insertWithUUID_appleID_callerID_primaryUser_profile_error___block_invoke;
  v25[3] = &unk_2786192F8;
  v30 = &v33;
  selfCopy = self;
  v19 = dCopy;
  v26 = v19;
  v20 = iDCopy;
  v27 = v20;
  v21 = callerIDCopy;
  v28 = v21;
  v22 = profileCopy;
  v29 = v22;
  userCopy = user;
  [self performWriteTransactionWithHealthDatabase:database error:error block:v25];

  v23 = v34[5];
  _Block_object_dispose(&v33, 8);

  return v23;
}

uint64_t __81__HDContributorEntity_insertWithUUID_appleID_callerID_primaryUser_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 databaseForEntityClass:*(a1 + 72)];
  v6 = *(a1 + 72);
  v32 = 0;
  v7 = [(HDContributorEntity *)v6 _nextSyncAnchorInDatabase:v5 error:&v32];
  v8 = v32;
  v9 = v8;
  if (!v7)
  {
    v21 = v8;
    if (!v21)
    {
LABEL_10:

      v24 = 0;
      goto LABEL_11;
    }

    if (!a3)
    {
LABEL_9:
      _HKLogDroppedError();
      goto LABEL_10;
    }

LABEL_6:
    v25 = v21;
    *a3 = v21;
    goto LABEL_10;
  }

  v10 = *(a1 + 72);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v27 = a3;
  v28 = *(a1 + 48);
  Current = CFAbsoluteTimeGetCurrent();
  v29 = v7;
  v14 = [v7 longLongValue];
  v15 = [*(a1 + 56) syncIdentityManager];
  v16 = [v15 currentSyncIdentity];
  v17 = [v16 entity];
  v18 = [v17 persistentID];
  v19 = *(a1 + 80);
  v30 = v5;
  v31 = v9;
  v20 = [HDContributorEntity _insertWithUUID:v10 appleID:v11 callerID:v12 deleted:v28 modificationDate:v14 syncAnchor:0 syncProvenance:v18 syncIdentity:v19 primaryUser:Current database:v5 error:&v31];
  v21 = v31;

  v22 = *(*(a1 + 64) + 8);
  v23 = *(v22 + 40);
  *(v22 + 40) = v20;

  if (!*(*(*(a1 + 64) + 8) + 40))
  {
    v21 = v21;
    v7 = v29;
    v5 = v30;
    if (!v21)
    {
      goto LABEL_10;
    }

    a3 = v27;
    if (!v27)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v24 = 1;
  v7 = v29;
  v5 = v30;
LABEL_11:

  return v24;
}

+ (id)_nextSyncAnchorInDatabase:(void *)database error:
{
  v4 = a2;
  v11 = 0;
  v5 = [objc_opt_self() maxValueForProperty:@"sync_anchor" predicate:0 database:v4 error:&v11];

  v6 = v11;
  v7 = v6;
  if (v5 || !v6)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v5, "longLongValue") + 1}];
  }

  else if (database)
  {
    v8 = v6;
    v9 = 0;
    *database = v7;
  }

  else
  {
    _HKLogDroppedError();
    v9 = 0;
  }

  return v9;
}

+ (id)_insertWithUUID:(uint64_t)d appleID:(void *)iD callerID:(void *)callerID deleted:(void *)deleted modificationDate:(uint64_t)date syncAnchor:(uint64_t)anchor syncProvenance:(uint64_t)provenance syncIdentity:(char)identity primaryUser:(double)user database:(void *)d0 error:(uint64_t)d1
{
  v39[9] = *MEMORY[0x277D85DE8];
  iDCopy = iD;
  callerIDCopy = callerID;
  deletedCopy = deleted;
  databaseCopy = database;
  v22 = objc_opt_self();
  v39[0] = @"uuid";
  v39[1] = @"apple_id";
  v39[2] = @"caller_id";
  v39[3] = @"deleted";
  v39[4] = @"mod_date";
  v39[5] = @"sync_anchor";
  v39[6] = @"sync_provenance";
  v39[7] = @"sync_identity";
  v39[8] = @"primary_user";
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:9];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __147__HDContributorEntity__insertWithUUID_appleID_callerID_deleted_modificationDate_syncAnchor_syncProvenance_syncIdentity_primaryUser_database_error___block_invoke;
  v29[3] = &unk_278619320;
  v30 = iDCopy;
  v31 = callerIDCopy;
  v32 = deletedCopy;
  v37 = 0;
  userCopy = user;
  dateCopy = date;
  anchorCopy = anchor;
  provenanceCopy = provenance;
  identityCopy = identity;
  v24 = deletedCopy;
  v25 = callerIDCopy;
  v26 = iDCopy;
  v27 = [v22 insertOrReplaceEntity:0 database:databaseCopy properties:v23 error:error bindingHandler:v29];

  return v27;
}

+ (id)insertWithUUID:(id)d appleID:(id)iD callerID:(id)callerID primaryUser:(BOOL)user syncProvenance:(int64_t)provenance syncIdentity:(int64_t)identity transaction:(id)transaction error:(id *)self0
{
  dCopy = d;
  iDCopy = iD;
  callerIDCopy = callerID;
  v19 = [transaction databaseForEntityClass:self];
  v20 = [(HDContributorEntity *)self _nextSyncAnchorInDatabase:v19 error:error];
  if (v20)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v22 = +[HDContributorEntity _insertWithUUID:appleID:callerID:deleted:modificationDate:syncAnchor:syncProvenance:syncIdentity:primaryUser:database:error:](self, dCopy, iDCopy, callerIDCopy, [v20 longLongValue], provenance, identity, user, Current, v19, error);
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

+ (id)insertPrimaryUserWithAppleID:(id)d callerID:(id)iD syncIdentity:(int64_t)identity database:(id)database error:(id *)error
{
  dCopy = d;
  iDCopy = iD;
  databaseCopy = database;
  v15 = [(HDContributorEntity *)self _nextSyncAnchorInDatabase:databaseCopy error:error];
  if (v15)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    Current = CFAbsoluteTimeGetCurrent();
    v18 = +[HDContributorEntity _insertWithUUID:appleID:callerID:deleted:modificationDate:syncAnchor:syncProvenance:syncIdentity:primaryUser:database:error:](self, uUID, dCopy, iDCopy, [v15 longLongValue], 0, identity, 1, Current, databaseCopy, error);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

void __147__HDContributorEntity__insertWithUUID_appleID_callerID_deleted_modificationDate_syncAnchor_syncProvenance_syncIdentity_primaryUser_database_error___block_invoke(uint64_t a1, uint64_t a2)
{
  MEMORY[0x22AAC6C00](a2, @"uuid", *(a1 + 32));
  if (*(a1 + 40))
  {
    MEMORY[0x22AAC6BD0](a2, @"apple_id");
  }

  else
  {
    MEMORY[0x22AAC6BA0](a2, @"apple_id");
  }

  if (*(a1 + 48))
  {
    MEMORY[0x22AAC6BD0](a2, @"caller_id");
  }

  else
  {
    MEMORY[0x22AAC6BA0](a2, @"caller_id");
  }

  MEMORY[0x22AAC6B30](a2, @"deleted", *(a1 + 88));
  MEMORY[0x22AAC6B60](a2, @"mod_date", *(a1 + 56));
  MEMORY[0x22AAC6B90](a2, @"sync_anchor", *(a1 + 64));
  MEMORY[0x22AAC6B90](a2, @"sync_provenance", *(a1 + 72));
  MEMORY[0x22AAC6B90](a2, @"sync_identity", *(a1 + 80));

  JUMPOUT(0x22AAC6B30);
}

+ (BOOL)deleteContributorWithUUID:(id)d profile:(id)profile error:(id *)error
{
  dCopy = d;
  database = [profile database];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__HDContributorEntity_deleteContributorWithUUID_profile_error___block_invoke;
  v12[3] = &unk_278619348;
  v13 = dCopy;
  selfCopy = self;
  v10 = dCopy;
  LOBYTE(error) = [self performWriteTransactionWithHealthDatabase:database error:error block:v12];

  return error;
}

uint64_t __63__HDContributorEntity_deleteContributorWithUUID_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25[5] = *MEMORY[0x277D85DE8];
  v5 = [a2 databaseForEntityClass:*(a1 + 40)];
  v6 = *(a1 + 40);
  v23 = 0;
  v7 = [(HDContributorEntity *)v6 _nextSyncAnchorInDatabase:v5 error:&v23];
  v8 = v23;
  v9 = v8;
  if (v7)
  {
    v25[0] = @"apple_id";
    v25[1] = @"caller_id";
    v25[2] = @"deleted";
    v25[3] = @"mod_date";
    v25[4] = @"sync_anchor";
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:5];
    v11 = [(HDContributorEntity *)*(a1 + 40) _predicateForContributorWithUUID:?];
    v24[0] = v11;
    objc_opt_self();
    v12 = [MEMORY[0x277D10B18] predicateWithProperty:@"deleted" equalToValue:MEMORY[0x277CBEC28]];
    v24[1] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];

    v14 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v13];
    v15 = *(a1 + 40);
    v22 = v9;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __63__HDContributorEntity_deleteContributorWithUUID_profile_error___block_invoke_2;
    v20[3] = &unk_278614508;
    v21 = v7;
    v16 = [v15 updateProperties:v10 predicate:v14 database:v5 error:&v22 bindingHandler:v20];
    v17 = v22;
  }

  else
  {
    v10 = v8;
    if (v10)
    {
      if (a3)
      {
        v18 = v10;
        v16 = 0;
        *a3 = v10;
      }

      else
      {
        _HKLogDroppedError();
        v16 = 0;
      }

      v17 = v10;
    }

    else
    {
      v17 = 0;
      v16 = 0;
    }
  }

  return v16;
}

void __63__HDContributorEntity_deleteContributorWithUUID_profile_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  MEMORY[0x22AAC6BA0](a2, @"apple_id");
  MEMORY[0x22AAC6BA0](a2, @"caller_id");
  MEMORY[0x22AAC6B30](a2, @"deleted", 1);
  Current = CFAbsoluteTimeGetCurrent();
  MEMORY[0x22AAC6B60](a2, @"mod_date", Current);
  [*(a1 + 32) longLongValue];

  JUMPOUT(0x22AAC6B90);
}

+ (id)contributorEntityWithUUID:(id)d profile:(id)profile includeDeleted:(BOOL)deleted error:(id *)error
{
  v19[2] = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  v11 = [(HDContributorEntity *)self _predicateForContributorWithUUID:d];
  if (!deleted)
  {
    objc_opt_self();
    v12 = [MEMORY[0x277D10B18] predicateWithProperty:@"deleted" equalToValue:MEMORY[0x277CBEC28]];
    v13 = MEMORY[0x277D10B20];
    v19[0] = v11;
    v19[1] = v12;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
    v15 = [v13 predicateMatchingAllPredicates:v14];

    v11 = v15;
  }

  database = [profileCopy database];
  v17 = [self anyWithPredicate:v11 healthDatabase:database error:error];

  return v17;
}

+ (id)contributorEntityForNoContributorWithProfile:(id)profile error:(id *)error
{
  profileCopy = profile;
  noneContributorUUID = [self noneContributorUUID];
  v8 = [(HDContributorEntity *)self _predicateForContributorWithUUID:noneContributorUUID];
  database = [profileCopy database];

  v10 = [self anyWithPredicate:v8 healthDatabase:database error:error];

  return v10;
}

+ (id)primaryUserContributorInProfile:(id)profile error:(id *)error
{
  v6 = MEMORY[0x277D10B18];
  profileCopy = profile;
  v8 = [v6 predicateWithProperty:@"primary_user" equalToValue:MEMORY[0x277CBEC38]];
  database = [profileCopy database];

  v10 = [self anyWithPredicate:v8 healthDatabase:database error:error];

  return v10;
}

+ (id)primaryUserContributorInDatabase:(id)database error:(id *)error
{
  v6 = MEMORY[0x277D10B18];
  databaseCopy = database;
  v8 = [v6 predicateWithProperty:@"primary_user" equalToValue:MEMORY[0x277CBEC38]];
  v9 = [self anyInDatabase:databaseCopy predicate:v8 error:error];

  return v9;
}

+ (id)contributorForReference:(id)reference profile:(id)profile error:(id *)error
{
  v31[2] = *MEMORY[0x277D85DE8];
  referenceCopy = reference;
  profileCopy = profile;
  if ([referenceCopy contributorType] == 2)
  {
    v10 = 0;
  }

  else
  {
    v11 = [(HDContributorEntity *)self _predicateForContributorReference:referenceCopy];
    objc_opt_self();
    v12 = [MEMORY[0x277D10B18] predicateWithProperty:@"deleted" equalToValue:MEMORY[0x277CBEC28]];
    v13 = MEMORY[0x277D10B20];
    v31[0] = v11;
    v31[1] = v12;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
    v15 = [v13 predicateMatchingAllPredicates:v14];

    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__39;
    v29 = __Block_byref_object_dispose__39;
    v30 = 0;
    database = [profileCopy database];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __61__HDContributorEntity_contributorForReference_profile_error___block_invoke;
    v21[3] = &unk_278616AA0;
    selfCopy = self;
    v17 = v15;
    v22 = v17;
    v23 = &v25;
    v18 = [self performReadTransactionWithHealthDatabase:database error:error block:v21];

    if (v18)
    {
      v19 = v26[5];
    }

    else
    {
      v19 = 0;
    }

    v10 = v19;

    _Block_object_dispose(&v25, 8);
  }

  return v10;
}

+ (id)_predicateForContributorReference:(uint64_t)reference
{
  v2 = a2;
  v3 = objc_opt_self();
  contributorType = [v2 contributorType];
  if (contributorType > 2)
  {
    if (contributorType == 3)
    {
      falsePredicate = [MEMORY[0x277D10B18] predicateWithProperty:@"primary_user" equalToValue:MEMORY[0x277CBEC38]];
      goto LABEL_12;
    }

    if (contributorType == 4)
    {
      uUID = [v2 UUID];
      goto LABEL_8;
    }
  }

  else
  {
    if (contributorType == 1)
    {
      v9 = MEMORY[0x277D10B18];
      v10 = *MEMORY[0x277D10A40];
      persistentID = [v2 persistentID];
      v7 = [v9 predicateWithProperty:v10 equalToValue:persistentID];

      goto LABEL_13;
    }

    if (contributorType == 2)
    {
      uUID = [v3 noneContributorUUID];
LABEL_8:
      v6 = uUID;
      v7 = [(HDContributorEntity *)v3 _predicateForContributorWithUUID:uUID];

      goto LABEL_13;
    }
  }

  falsePredicate = [MEMORY[0x277D10B70] falsePredicate];
LABEL_12:
  v7 = falsePredicate;
LABEL_13:

  return v7;
}

uint64_t __61__HDContributorEntity_contributorForReference_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v13[3] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 48);
  v6 = [a2 databaseForEntityClass:v5];
  v7 = [v5 queryWithDatabase:v6 predicate:*(a1 + 32)];

  v13[0] = @"uuid";
  v13[1] = @"apple_id";
  v13[2] = @"caller_id";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:3];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__HDContributorEntity_contributorForReference_profile_error___block_invoke_2;
  v11[3] = &unk_278619370;
  v12 = *(a1 + 40);
  v9 = [v7 enumerateProperties:v8 error:a3 enumerationHandler:v11];

  return v9;
}

uint64_t __61__HDContributorEntity_contributorForReference_profile_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = HDSQLiteColumnWithNameAsUUID();
  v5 = [*(a1 + 40) noneContributorUUID];
  v6 = [v4 isEqual:v5];

  if ((v6 & 1) == 0)
  {
    v7 = HDSQLiteColumnWithNameAsString();
    v8 = HDSQLiteColumnWithNameAsString();
    v9 = [objc_alloc(MEMORY[0x277CCD228]) _initWithUUID:v4 appleID:v7 callerID:v8];
    v10 = *(*(a1 + 32) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  return 0;
}

+ (id)externalReferenceForContributorReference:(id)reference profile:(id)profile error:(id *)error
{
  v34[2] = *MEMORY[0x277D85DE8];
  referenceCopy = reference;
  profileCopy = profile;
  contributorType = [referenceCopy contributorType];
  if (contributorType > 2)
  {
    if (contributorType != 3)
    {
      if (contributorType != 4)
      {
        goto LABEL_12;
      }

      goto LABEL_7;
    }

LABEL_8:
    v11 = [(HDContributorEntity *)self _predicateForContributorReference:referenceCopy];
    objc_opt_self();
    v23 = [MEMORY[0x277D10B18] predicateWithProperty:@"deleted" equalToValue:MEMORY[0x277CBEC28]];
    v12 = MEMORY[0x277D10B20];
    v34[0] = v11;
    v34[1] = v23;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
    v14 = [v12 predicateMatchingAllPredicates:v13];

    v15 = v14;
    v16 = profileCopy;
    v17 = objc_opt_self();
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__39;
    v32 = __Block_byref_object_dispose__39;
    v33 = 0;
    database = [v16 database];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __85__HDContributorEntity__contributorReferenceForEntityMatchingPredicate_profile_error___block_invoke;
    v24[3] = &unk_278616AA0;
    v27 = v17;
    v19 = v15;
    v25 = v19;
    v26 = &v28;
    v20 = [v17 performReadTransactionWithHealthDatabase:database error:error block:v24];

    if (v20)
    {
      v21 = v29[5];
    }

    else
    {
      v21 = 0;
    }

    error = v21;

    _Block_object_dispose(&v28, 8);
    goto LABEL_12;
  }

  if (contributorType == 1)
  {
    goto LABEL_8;
  }

  if (contributorType == 2)
  {
LABEL_7:
    error = referenceCopy;
  }

LABEL_12:

  return error;
}

- (id)appleIDInProfile:(id)profile error:(id *)error
{
  database = [profile database];
  v7 = [(HDHealthEntity *)self valueForProperty:@"apple_id" healthDatabase:database error:error];

  return v7;
}

- (BOOL)updateAppleID:(id)d profile:(id)profile error:(id *)error
{
  dCopy = d;
  profileCopy = profile;
  v10 = objc_opt_class();
  database = [profileCopy database];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __51__HDContributorEntity_updateAppleID_profile_error___block_invoke;
  v14[3] = &unk_278613218;
  v14[4] = self;
  v15 = dCopy;
  v12 = dCopy;
  LOBYTE(error) = [v10 performWriteTransactionWithHealthDatabase:database error:error block:v14];

  return error;
}

uint64_t __51__HDContributorEntity_updateAppleID_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20[3] = *MEMORY[0x277D85DE8];
  v5 = [a2 databaseForEntity:*(a1 + 32)];
  v19 = 0;
  v6 = [HDContributorEntity _nextSyncAnchorInDatabase:v5 error:&v19];
  v7 = v19;
  v8 = v7;
  if (v6)
  {
    v20[0] = @"apple_id";
    v20[1] = @"mod_date";
    v20[2] = @"sync_anchor";
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:3];
    v18 = v8;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __51__HDContributorEntity_updateAppleID_profile_error___block_invoke_2;
    v15[3] = &unk_278613DE8;
    v10 = *(a1 + 32);
    v16 = *(a1 + 40);
    v17 = v6;
    v11 = [v10 updateProperties:v9 database:v5 error:&v18 bindingHandler:v15];
    v12 = v18;
  }

  else
  {
    v9 = v7;
    if (v9)
    {
      if (a3)
      {
        v13 = v9;
        v11 = 0;
        *a3 = v9;
      }

      else
      {
        _HKLogDroppedError();
        v11 = 0;
      }

      v12 = v9;
    }

    else
    {
      v12 = 0;
      v11 = 0;
    }
  }

  return v11;
}

void __51__HDContributorEntity_updateAppleID_profile_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    MEMORY[0x22AAC6BD0](a2, @"apple_id");
  }

  else
  {
    MEMORY[0x22AAC6BA0](a2, @"apple_id");
  }

  Current = CFAbsoluteTimeGetCurrent();
  MEMORY[0x22AAC6B60](a2, @"mod_date", Current);
  [*(a1 + 40) longLongValue];

  JUMPOUT(0x22AAC6B90);
}

- (id)callerIDInProfile:(id)profile error:(id *)error
{
  database = [profile database];
  v7 = [(HDHealthEntity *)self valueForProperty:@"caller_id" healthDatabase:database error:error];

  return v7;
}

- (BOOL)updateCallerID:(id)d profile:(id)profile error:(id *)error
{
  dCopy = d;
  profileCopy = profile;
  v10 = objc_opt_class();
  database = [profileCopy database];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __52__HDContributorEntity_updateCallerID_profile_error___block_invoke;
  v14[3] = &unk_278613218;
  v14[4] = self;
  v15 = dCopy;
  v12 = dCopy;
  LOBYTE(error) = [v10 performWriteTransactionWithHealthDatabase:database error:error block:v14];

  return error;
}

uint64_t __52__HDContributorEntity_updateCallerID_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20[3] = *MEMORY[0x277D85DE8];
  v5 = [a2 databaseForEntity:*(a1 + 32)];
  v19 = 0;
  v6 = [HDContributorEntity _nextSyncAnchorInDatabase:v5 error:&v19];
  v7 = v19;
  v8 = v7;
  if (v6)
  {
    v20[0] = @"caller_id";
    v20[1] = @"mod_date";
    v20[2] = @"sync_anchor";
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:3];
    v18 = v8;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __52__HDContributorEntity_updateCallerID_profile_error___block_invoke_2;
    v15[3] = &unk_278613DE8;
    v10 = *(a1 + 32);
    v16 = *(a1 + 40);
    v17 = v6;
    v11 = [v10 updateProperties:v9 database:v5 error:&v18 bindingHandler:v15];
    v12 = v18;
  }

  else
  {
    v9 = v7;
    if (v9)
    {
      if (a3)
      {
        v13 = v9;
        v11 = 0;
        *a3 = v9;
      }

      else
      {
        _HKLogDroppedError();
        v11 = 0;
      }

      v12 = v9;
    }

    else
    {
      v12 = 0;
      v11 = 0;
    }
  }

  return v11;
}

void __52__HDContributorEntity_updateCallerID_profile_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    MEMORY[0x22AAC6BD0](a2, @"caller_id");
  }

  else
  {
    MEMORY[0x22AAC6BA0](a2, @"caller_id");
  }

  Current = CFAbsoluteTimeGetCurrent();
  MEMORY[0x22AAC6B60](a2, @"mod_date", Current);
  [*(a1 + 40) longLongValue];

  JUMPOUT(0x22AAC6B90);
}

- (id)modificationDateInProfile:(id)profile error:(id *)error
{
  database = [profile database];
  v7 = [(HDHealthEntity *)self valueForProperty:@"mod_date" healthDatabase:database error:error];

  if (v7)
  {
    v8 = MEMORY[0x277CBEAA8];
    [v7 doubleValue];
    v9 = [v8 dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)syncAnchorInProfile:(id)profile error:(id *)error
{
  database = [profile database];
  v7 = [(HDHealthEntity *)self valueForProperty:@"sync_anchor" healthDatabase:database error:error];

  return v7;
}

- (BOOL)deletedInProfile:(id)profile error:(id *)error
{
  database = [profile database];
  v7 = [(HDHealthEntity *)self valueForProperty:@"deleted" healthDatabase:database error:error];

  LOBYTE(self) = [v7 BOOLValue];
  return self;
}

+ (id)noneContributorUUID
{
  v2 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];

  return v2;
}

uint64_t __85__HDContributorEntity__contributorReferenceForEntityMatchingPredicate_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 48);
  v6 = [a2 databaseForEntityClass:v5];
  v7 = [v5 queryWithDatabase:v6 predicate:*(a1 + 32)];

  v13[0] = @"uuid";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __85__HDContributorEntity__contributorReferenceForEntityMatchingPredicate_profile_error___block_invoke_2;
  v11[3] = &unk_278619370;
  v12 = *(a1 + 40);
  v9 = [v7 enumerateProperties:v8 error:a3 enumerationHandler:v11];

  return v9;
}

uint64_t __85__HDContributorEntity__contributorReferenceForEntityMatchingPredicate_profile_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = HDSQLiteColumnWithNameAsUUID();
  v5 = [*(a1 + 40) noneContributorUUID];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    +[HDContributorReference contributorReferenceForNoContributor];
  }

  else
  {
    [HDContributorReference contributorReferenceForOtherUserWithUUID:v4];
  }
  v7 = ;
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  return 0;
}

@end