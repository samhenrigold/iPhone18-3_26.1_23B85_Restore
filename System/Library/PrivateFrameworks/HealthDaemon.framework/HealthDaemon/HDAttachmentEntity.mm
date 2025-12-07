@interface HDAttachmentEntity
+ (BOOL)enumerateAttachmentsWithPredicate:(id)predicate transaction:(id)transaction error:(id *)error enumerationHandler:(id)handler;
+ (id)_attachmentForEntity:(void *)entity database:(uint64_t)database error:;
+ (id)_insertAttachment:(id)attachment transaction:(id)transaction error:(id *)error;
+ (id)_insertIfDoesNotExistAttachment:(id)attachment transaction:(id)transaction error:(id *)error;
+ (id)_propertiesForEntity;
+ (id)attachmentWithIdentifier:(id)identifier profile:(id)profile error:(id *)error;
+ (id)attachmentWithIdentifier:(id)identifier transaction:(id)transaction error:(id *)error;
@end

@implementation HDAttachmentEntity

+ (BOOL)enumerateAttachmentsWithPredicate:(id)predicate transaction:(id)transaction error:(id *)error enumerationHandler:(id)handler
{
  predicateCopy = predicate;
  transactionCopy = transaction;
  handlerCopy = handler;
  v13 = [transactionCopy databaseForEntityClass:self];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__93;
  v30 = __Block_byref_object_dispose__93;
  v31 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __93__HDAttachmentEntity_enumerateAttachmentsWithPredicate_transaction_error_enumerationHandler___block_invoke;
  v21[3] = &unk_278615698;
  selfCopy = self;
  v14 = v13;
  v22 = v14;
  v24 = &v26;
  v15 = handlerCopy;
  v23 = v15;
  v16 = [(HDSQLiteEntity *)HDAttachmentEntity enumerateEntitiesInDatabase:v14 predicate:predicateCopy error:error enumerationHandler:v21];
  v17 = v27[5];
  v18 = v17;
  if (v17)
  {
    if (error)
    {
      v19 = v17;
      *error = v18;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  _Block_object_dispose(&v26, 8);
  return v16;
}

uint64_t __93__HDAttachmentEntity_enumerateAttachmentsWithPredicate_transaction_error_enumerationHandler___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[7];
  v5 = *(a1[6] + 8);
  obj = *(v5 + 40);
  v6 = [(HDAttachmentEntity *)v4 _attachmentForEntity:a2 database:v3 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  if (v6)
  {
    v7 = a1[5];
    v8 = *(a1[6] + 8);
    v11 = *(v8 + 40);
    v9 = (*(v7 + 16))();
    objc_storeStrong((v8 + 40), v11);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)_attachmentForEntity:(void *)entity database:(uint64_t)database error:
{
  v6 = a2;
  entityCopy = entity;
  v8 = objc_opt_self();
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__93;
  v17 = __Block_byref_object_dispose__93;
  v18 = 0;
  v9 = +[(HDAttachmentEntity *)v8];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__HDAttachmentEntity__attachmentForEntity_database_error___block_invoke;
  v12[3] = &unk_278618B98;
  v12[4] = &v13;
  [v6 getValuesForProperties:v9 database:entityCopy error:database handler:v12];

  v10 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v10;
}

+ (id)attachmentWithIdentifier:(id)identifier profile:(id)profile error:(id *)error
{
  identifierCopy = identifier;
  profileCopy = profile;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__93;
  v22 = __Block_byref_object_dispose__93;
  v23 = 0;
  database = [profileCopy database];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61__HDAttachmentEntity_attachmentWithIdentifier_profile_error___block_invoke;
  v14[3] = &unk_2786169D8;
  v16 = &v18;
  selfCopy = self;
  v11 = identifierCopy;
  v15 = v11;
  [self performReadTransactionWithHealthDatabase:database error:error block:v14];

  v12 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v12;
}

BOOL __61__HDAttachmentEntity_attachmentWithIdentifier_profile_error___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a1[4];
  v19 = 0;
  v6 = a2;
  v7 = v5;
  v8 = objc_opt_self();
  v9 = [MEMORY[0x277D10B18] predicateWithProperty:@"identifier" equalToValue:v7];

  v10 = [v6 databaseForEntityClass:objc_opt_class()];

  v11 = [v8 anyInDatabase:v10 predicate:v9 error:&v19];
  if (v11)
  {
    v12 = [(HDAttachmentEntity *)v8 _attachmentForEntity:v11 database:v10 error:&v19];
  }

  else
  {
    v12 = 0;
  }

  v13 = v19;
  v14 = *(a1[5] + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v12;

  v16 = v13;
  if (v16)
  {
    if (a3)
    {
      v17 = v16;
      *a3 = v16;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  return v16 == 0;
}

+ (id)attachmentWithIdentifier:(id)identifier transaction:(id)transaction error:(id *)error
{
  v8 = MEMORY[0x277D10B18];
  transactionCopy = transaction;
  v10 = [v8 predicateWithProperty:@"identifier" equalToValue:identifier];
  v11 = [transactionCopy databaseForEntityClass:self];

  v12 = [self anyInDatabase:v11 predicate:v10 error:error];
  if (v12)
  {
    v13 = [(HDAttachmentEntity *)self _attachmentForEntity:v12 database:v11 error:error];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)_propertiesForEntity
{
  v3[8] = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v3[0] = @"identifier";
  v3[1] = @"name";
  v3[2] = @"type";
  v3[3] = @"hash";
  v3[4] = @"size";
  v3[5] = @"creation_date";
  v3[6] = @"metadata";
  v3[7] = @"encryption_key";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:8];

  return v1;
}

void __58__HDAttachmentEntity__attachmentForEntity_database_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [HDAttachment alloc];
  v16 = HDSQLiteColumnWithNameAsUUID();
  v5 = HDSQLiteColumnWithNameAsString();
  v6 = HDSQLiteColumnWithNameAsString();
  v7 = HDSQLiteColumnWithNameAsString();
  v8 = HDSQLiteColumnWithNameAsInt64();
  v9 = HDSQLiteColumnWithNameAsDate();
  v10 = HDSQLiteColumnWithNameAsData();
  v11 = [HDCodableMetadataDictionary decodeMetadataFromData:v10];
  objc_opt_class();
  v12 = HDSQLiteColumnWithNameAsObject();
  v13 = [(HDAttachment *)v4 initWithIdentifier:v16 name:v5 type:v6 hash:v7 size:v8 creationDate:v9 metadata:v11 encryptionKey:v12];
  v14 = *(*(a1 + 32) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;
}

+ (id)_insertAttachment:(id)attachment transaction:(id)transaction error:(id *)error
{
  attachmentCopy = attachment;
  transactionCopy = transaction;
  metadata = [attachmentCopy metadata];
  if (metadata && (v11 = metadata, [attachmentCopy metadata], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "hk_validateAttachmentMetadataKeysAndValuesWithError:", error), v12, v11, !v13))
  {
    v16 = 0;
  }

  else
  {
    v14 = [transactionCopy databaseForEntityClass:self];
    v15 = +[(HDAttachmentEntity *)self];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __58__HDAttachmentEntity__insertAttachment_transaction_error___block_invoke;
    v18[3] = &unk_278614508;
    v19 = attachmentCopy;
    v16 = [self insertOrReplaceEntity:0 database:v14 properties:v15 error:error bindingHandler:v18];
  }

  return v16;
}

void __58__HDAttachmentEntity__insertAttachment_transaction_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) identifier];
  MEMORY[0x22AAC6C00](a2, @"identifier", v4);

  v5 = [*(a1 + 32) name];
  MEMORY[0x22AAC6BD0](a2, @"name", v5);

  v6 = [*(a1 + 32) type];
  MEMORY[0x22AAC6BD0](a2, @"type", v6);

  v7 = [*(a1 + 32) fileHash];
  MEMORY[0x22AAC6BD0](a2, @"hash", v7);

  MEMORY[0x22AAC6B90](a2, @"size", [*(a1 + 32) size]);
  v8 = [*(a1 + 32) creationDate];
  MEMORY[0x22AAC6B50](a2, @"creation_date", v8);

  v9 = [*(a1 + 32) encryptionKey];
  HDSQLiteBindSecureCodingObjectToProperty();

  v10 = [*(a1 + 32) metadata];
  v11 = [v10 count];

  if (!v11)
  {

    JUMPOUT(0x22AAC6BA0);
  }

  v14 = [*(a1 + 32) metadata];
  v12 = [v14 hk_codableMetadata];
  v13 = [v12 data];
  MEMORY[0x22AAC6B40](a2, @"metadata", v13);
}

+ (id)_insertIfDoesNotExistAttachment:(id)attachment transaction:(id)transaction error:(id *)error
{
  attachmentCopy = attachment;
  transactionCopy = transaction;
  metadata = [attachmentCopy metadata];
  if (metadata && (v11 = metadata, [attachmentCopy metadata], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "hk_validateAttachmentMetadataKeysAndValuesWithError:", error), v12, v11, !v13))
  {
    v20 = 0;
  }

  else
  {
    identifier = [attachmentCopy identifier];
    v15 = [MEMORY[0x277D10B18] predicateWithProperty:@"identifier" equalToValue:identifier];

    v16 = [transactionCopy databaseForEntityClass:objc_opt_class()];
    v23 = 0;
    v17 = [self anyInDatabase:v16 predicate:v15 error:&v23];
    v18 = v23;
    if (v18)
    {
      if (error)
      {
        v19 = v18;
        v20 = 0;
        *error = v18;
      }

      else
      {
        _HKLogDroppedError();
        v20 = 0;
      }
    }

    else
    {
      if (v17)
      {
        v21 = v17;
      }

      else
      {
        v21 = [self _insertAttachment:attachmentCopy transaction:transactionCopy error:error];
      }

      v20 = v21;
    }
  }

  return v20;
}

@end