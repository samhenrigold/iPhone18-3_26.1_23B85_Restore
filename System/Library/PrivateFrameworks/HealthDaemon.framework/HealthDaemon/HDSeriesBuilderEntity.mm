@interface HDSeriesBuilderEntity
+ (BOOL)discardBuilderWithIdentifier:(id)identifier profile:(id)profile error:(id *)error;
+ (Class)seriesEntityClass;
+ (id)createPersistentEntityForBuilderIdentifier:(id)identifier seriesType:(id)type state:(int64_t)state profile:(id)profile error:(id *)error;
+ (id)freezeSeriesWithIdentifier:(id)identifier metadata:(id)metadata profile:(id)profile error:(id *)error;
+ (id)persistentEntityForBuilderIdentifier:(id)identifier profile:(id)profile error:(id *)error;
- (BOOL)insertMetadata:(id)metadata transaction:(id)transaction error:(id *)error;
- (BOOL)setBuilderState:(int64_t)state transaction:(id)transaction error:(id *)error;
- (id)metadataWithTransaction:(id)transaction error:(id *)error;
- (int64_t)stateWithTransaction:(id)transaction error:(id *)error;
@end

@implementation HDSeriesBuilderEntity

+ (Class)seriesEntityClass
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

+ (id)persistentEntityForBuilderIdentifier:(id)identifier profile:(id)profile error:(id *)error
{
  v8 = MEMORY[0x277D10B18];
  profileCopy = profile;
  v10 = [v8 predicateWithProperty:@"uuid" equalToValue:identifier];
  database = [profileCopy database];

  v12 = [self anyWithPredicate:v10 healthDatabase:database error:error];

  return v12;
}

+ (id)createPersistentEntityForBuilderIdentifier:(id)identifier seriesType:(id)type state:(int64_t)state profile:(id)profile error:(id *)error
{
  v26[3] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  typeCopy = type;
  v26[0] = @"uuid";
  v26[1] = @"state";
  v26[2] = @"series_type";
  v14 = MEMORY[0x277CBEA60];
  profileCopy = profile;
  v16 = [v14 arrayWithObjects:v26 count:3];
  database = [profileCopy database];

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __99__HDSeriesBuilderEntity_createPersistentEntityForBuilderIdentifier_seriesType_state_profile_error___block_invoke;
  v22[3] = &unk_278613AE8;
  v24 = typeCopy;
  stateCopy = state;
  v23 = identifierCopy;
  v18 = typeCopy;
  v19 = identifierCopy;
  v20 = [self insertOrReplaceEntity:0 healthDatabase:database properties:v16 error:error bindingHandler:v22];

  return v20;
}

void __99__HDSeriesBuilderEntity_createPersistentEntityForBuilderIdentifier_seriesType_state_profile_error___block_invoke(uint64_t a1, uint64_t a2)
{
  MEMORY[0x22AAC6C00](a2, @"uuid", *(a1 + 32));
  MEMORY[0x22AAC6B90](a2, @"state", *(a1 + 48));
  [*(a1 + 40) code];

  JUMPOUT(0x22AAC6B90);
}

+ (id)freezeSeriesWithIdentifier:(id)identifier metadata:(id)metadata profile:(id)profile error:(id *)error
{
  identifierCopy = identifier;
  metadataCopy = metadata;
  profileCopy = profile;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__96;
  v31 = __Block_byref_object_dispose__96;
  v32 = 0;
  database = [profileCopy database];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __75__HDSeriesBuilderEntity_freezeSeriesWithIdentifier_metadata_profile_error___block_invoke;
  v21[3] = &unk_27861DAA8;
  v14 = identifierCopy;
  v22 = v14;
  v15 = profileCopy;
  v23 = v15;
  v16 = metadataCopy;
  v24 = v16;
  v25 = &v27;
  selfCopy = self;
  v17 = [self performReadTransactionWithHealthDatabase:database error:error block:v21];

  if ((v17 & 1) != 0 && ([v28[5] performOrJournalWithProfile:v15 error:error] & 1) != 0 && objc_msgSend(self, "discardBuilderWithIdentifier:profile:error:", v14, v15, error))
  {
    v18 = v28[5];
    if (v18)
    {
      v18 = v18[5];
    }

    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  _Block_object_dispose(&v27, 8);

  return v19;
}

BOOL __75__HDSeriesBuilderEntity_freezeSeriesWithIdentifier_metadata_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = a2;
  v6 = [HDSeriesBuilderEntity persistentEntityForBuilderIdentifier:*(a1 + 32) profile:*(a1 + 40) error:a3];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v8 = [v6 metadataWithTransaction:v5 error:a3];
    v9 = v8;
    v10 = *a3;
    v11 = *a3 == 0;
    if (!v10)
    {
      if (v8)
      {
        [v7 addEntriesFromDictionary:v8];
      }

      if (*(a1 + 48))
      {
        [v7 addEntriesFromDictionary:?];
      }

      v12 = [HDFreezeSeriesOperation alloc];
      v13 = *(a1 + 32);
      v14 = [*(a1 + 64) seriesEntityClass];
      v15 = v13;
      v16 = v7;
      if (v12)
      {
        v24.receiver = v12;
        v24.super_class = HDFreezeSeriesOperation;
        v12 = objc_msgSendSuper2(&v24, sel_init);
        if (v12)
        {
          v17 = objc_msgSend_copy(v15);
          identifier = v12->_identifier;
          v12->_identifier = v17;

          v19 = objc_msgSend_copy(v16);
          metadata = v12->_metadata;
          v12->_metadata = v19;

          objc_storeStrong(&v12->_entityClass, v14);
        }
      }

      v21 = *(*(a1 + 56) + 8);
      v22 = *(v21 + 40);
      *(v21 + 40) = v12;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)discardBuilderWithIdentifier:(id)identifier profile:(id)profile error:(id *)error
{
  v8 = MEMORY[0x277D10B18];
  profileCopy = profile;
  v10 = [v8 predicateWithProperty:@"uuid" equalToValue:identifier];
  database = [profileCopy database];

  LOBYTE(error) = [self deleteEntitiesWithPredicate:v10 healthDatabase:database error:error];
  return error;
}

- (int64_t)stateWithTransaction:(id)transaction error:(id *)error
{
  v16[1] = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v16[0] = @"state";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v8 = [transactionCopy databaseForEntityProtectionClass:{objc_msgSend(objc_opt_class(), "protectionClass")}];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__HDSeriesBuilderEntity_stateWithTransaction_error___block_invoke;
  v11[3] = &unk_278618B98;
  v11[4] = &v12;
  [(HDSQLiteEntity *)self getValuesForProperties:v7 database:v8 error:error handler:v11];

  v9 = v13[3];
  _Block_object_dispose(&v12, 8);

  return v9;
}

uint64_t __52__HDSeriesBuilderEntity_stateWithTransaction_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = HDSQLiteColumnWithNameAsInt64();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (BOOL)setBuilderState:(int64_t)state transaction:(id)transaction error:(id *)error
{
  v14[1] = *MEMORY[0x277D85DE8];
  v14[0] = @"state";
  v8 = MEMORY[0x277CBEA60];
  transactionCopy = transaction;
  v10 = [v8 arrayWithObjects:v14 count:1];
  v11 = [transactionCopy databaseForEntityProtectionClass:{objc_msgSend(objc_opt_class(), "protectionClass")}];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __59__HDSeriesBuilderEntity_setBuilderState_transaction_error___block_invoke;
  v13[3] = &__block_descriptor_40_e34_v16__0__HDSQLiteStatementBinder__8l;
  v13[4] = state;
  LOBYTE(error) = [(HDSQLiteEntity *)self updateProperties:v10 database:v11 error:error bindingHandler:v13];

  return error;
}

- (id)metadataWithTransaction:(id)transaction error:(id *)error
{
  v18[1] = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__96;
  v16 = __Block_byref_object_dispose__96;
  v17 = 0;
  v18[0] = @"metadata";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v8 = [transactionCopy databaseForEntityProtectionClass:{objc_msgSend(objc_opt_class(), "protectionClass")}];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__HDSeriesBuilderEntity_metadataWithTransaction_error___block_invoke;
  v11[3] = &unk_278618B98;
  v11[4] = &v12;
  [(HDSQLiteEntity *)self getValuesForProperties:v7 database:v8 error:error handler:v11];

  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

void __55__HDSeriesBuilderEntity_metadataWithTransaction_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = HDSQLiteColumnWithNameAsData();
  v4 = [HDCodableMetadataDictionary decodeMetadataFromData:v7];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (BOOL)insertMetadata:(id)metadata transaction:(id)transaction error:(id *)error
{
  v25[1] = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  transactionCopy = transaction;
  v10 = [(HDSeriesBuilderEntity *)self metadataWithTransaction:transactionCopy error:error];
  v11 = v10;
  if (*error)
  {
    v12 = 0;
  }

  else
  {
    v13 = [v10 mutableCopy];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    v16 = v15;

    [v16 addEntriesFromDictionary:metadataCopy];
    v17 = objc_msgSend_copy(v16);
    if (self)
    {
      v25[0] = @"metadata";
      v18 = MEMORY[0x277CBEA60];
      v19 = transactionCopy;
      v20 = [v18 arrayWithObjects:v25 count:1];
      v21 = [v19 databaseForEntity:self];

      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __56__HDSeriesBuilderEntity__setMetadata_transaction_error___block_invoke;
      v23[3] = &unk_278614508;
      v24 = v17;
      v12 = [(HDSQLiteEntity *)self updateProperties:v20 database:v21 error:error bindingHandler:v23];
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

void __56__HDSeriesBuilderEntity__setMetadata_transaction_error___block_invoke(uint64_t a1, uint64_t a2)
{
  if (![*(a1 + 32) count])
  {

    JUMPOUT(0x22AAC6BA0);
  }

  v5 = [*(a1 + 32) hk_codableMetadata];
  v4 = [v5 data];
  MEMORY[0x22AAC6B40](a2, @"metadata", v4);
}

@end