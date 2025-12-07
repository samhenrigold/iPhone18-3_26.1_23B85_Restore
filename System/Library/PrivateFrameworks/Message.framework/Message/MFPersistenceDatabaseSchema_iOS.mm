@interface MFPersistenceDatabaseSchema_iOS
+ (id)_messagesTableSchemaAndForeignKeysToResolve:(uint64_t)resolve associationsToResolve:;
+ (id)accountsTableSchema;
+ (id)additionalSchemaProviders;
+ (id)mailboxesTableSchema;
+ (id)messageDataDeletedTableSchema;
+ (id)messageDataTableSchema;
+ (id)popUIDsTableSchema;
+ (id)tablesAndForeignKeysToResolve:(id *)resolve associationsToResolve:(id *)toResolve;
@end

@implementation MFPersistenceDatabaseSchema_iOS

+ (id)additionalSchemaProviders
{
  v5[3] = *MEMORY[0x1E69E9840];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = self;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:3];

  return v3;
}

+ (id)tablesAndForeignKeysToResolve:(id *)resolve associationsToResolve:(id *)toResolve
{
  v33[9] = *MEMORY[0x1E69E9840];
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v31 = 0;
  v32 = 0;
  v26 = [(MFPersistenceDatabaseSchema_iOS *)self _messagesTableSchemaAndForeignKeysToResolve:&v31 associationsToResolve:?];
  v9 = v32;
  v10 = v31;
  [v7 addObjectsFromArray:v9];
  [v8 addObjectsFromArray:v10];
  v29 = v10;
  v30 = v9;
  v25 = [MEMORY[0x1E699B5C0] recipientsTableSchemaAndForeignKeysToResolve:&v30 associationsToResolve:&v29];
  v24 = v30;

  v11 = v29;
  [v7 addObjectsFromArray:v24];
  [v8 addObjectsFromArray:v11];
  v28 = v11;
  v12 = [MEMORY[0x1E699B5C0] messageGlobalDataTableSchemaAndAssociationsToResolve:&v28];
  v23 = v28;

  [v8 addObjectsFromArray:v23];
  v13 = v7;
  *resolve = v7;
  v14 = v8;
  *toResolve = v8;
  v33[0] = v26;
  v33[1] = v25;
  v33[2] = v12;
  v15 = +[(MFPersistenceDatabaseSchema_iOS *)self];
  v33[3] = v15;
  v16 = +[(MFPersistenceDatabaseSchema_iOS *)self];
  v33[4] = v16;
  v17 = +[(MFPersistenceDatabaseSchema_iOS *)self];
  v33[5] = v17;
  v18 = +[(MFPersistenceDatabaseSchema_iOS *)self];
  v33[6] = v18;
  v19 = +[(MFPersistenceDatabaseSchema_iOS *)self];
  v33[7] = v19;
  v27.receiver = self;
  v27.super_class = &OBJC_METACLASS___MFPersistenceDatabaseSchema_iOS;
  v20 = objc_msgSendSuper2(&v27, sel_propertiesTableSchema);
  v33[8] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:9];

  return v21;
}

+ (id)_messagesTableSchemaAndForeignKeysToResolve:(uint64_t)resolve associationsToResolve:
{
  v56[4] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v5 = [MEMORY[0x1E699B5C0] partialMessagesTableSchemaAndForeignKeysToResolve:a2 associationsToResolve:resolve];
  v6 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"original_mailbox" nullable:1];
  [v5 addColumn:v6];

  v7 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"visible" nullable:1];
  [v5 addColumn:v7];

  v8 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"sender_vip" nullable:1];
  [v5 addColumn:v8];

  v9 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"encoding" nullable:1];
  [v5 addColumn:v9];

  v10 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"content_type" nullable:1];
  [v5 addColumn:v10];

  v11 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"sequence_identifier" nullable:1 defaultValue:&unk_1F2776120];
  [v5 addColumn:v11];

  v12 = [MEMORY[0x1E699B8D0] textColumnWithName:@"external_id" collation:1 nullable:1];
  [v5 addColumn:v12];

  v13 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"unique_id" nullable:1];
  [v5 addColumn:v13];

  v14 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"content_index_transaction_id" nullable:1];
  [v5 addColumn:v14];

  v15 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"journaled" nullable:1];
  [v5 addColumn:v15];

  v54 = __101__MFPersistenceDatabaseSchema_iOS__messagesTableSchemaAndForeignKeysToResolve_associationsToResolve___block_invoke(v16, &unk_1F2775508);
  v17 = [objc_alloc(MEMORY[0x1E699B908]) initWithColumnName:@"date_received" orderDirection:2];
  [v54 addObject:v17];

  v18 = [objc_alloc(MEMORY[0x1E699B908]) initWithColumnName:@"ROWID" orderDirection:2];
  [v54 addObject:v18];

  v19 = objc_alloc(MEMORY[0x1E699B900]);
  name = [v5 name];
  v21 = [v19 initWithTableName:name indexedColumns:v54];
  [v5 addIndex:v21];

  [v5 addIndexForColumns:&unk_1F2775520];
  [v5 addIndexForColumns:&unk_1F2775538];
  [v5 addIndexForColumns:&unk_1F2775550];
  [v5 addIndexForColumns:&unk_1F2775568];
  [v5 addIndexForColumns:&unk_1F2775580];
  [v5 addIndexForColumns:&unk_1F2775598];
  [v5 addIndexForColumns:&unk_1F27755B0];
  [v5 addIndexForColumns:&unk_1F27755C8];
  [v5 addIndexForColumns:&unk_1F27755E0];
  [v5 addIndexForColumns:&unk_1F27755F8];
  v22 = [MEMORY[0x1E699B8C8] column:@"sender_vip"];
  v52 = [v22 equalTo:&unk_1F2776138];

  v23 = [MEMORY[0x1E699B8C8] column:@"journaled"];
  v24 = [v23 equalTo:&unk_1F2776120];

  v25 = [MEMORY[0x1E699B8C8] column:@"deleted"];
  v53 = [v25 equalTo:&unk_1F2776120];

  v26 = [MEMORY[0x1E699B8C8] column:@"read"];
  v51 = [v26 equalTo:&unk_1F2776120];

  v27 = objc_alloc(MEMORY[0x1E699B898]);
  v56[0] = v52;
  v56[1] = v24;
  v56[2] = v53;
  v56[3] = v51;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:4];
  v29 = [v27 initWithExpressions:v28];

  v30 = objc_alloc(MEMORY[0x1E699B900]);
  name2 = [v5 name];
  v32 = [v30 initWithTableName:name2 columnNames:&unk_1F2775610 where:v29 unique:0];

  [v5 addIndex:v32];
  v33 = [MEMORY[0x1E699B8C8] column:@"journaled"];
  v34 = [v33 equalTo:&unk_1F2776138];

  v35 = objc_alloc(MEMORY[0x1E699B898]);
  v55[0] = v34;
  v55[1] = v53;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:2];
  v37 = [v35 initWithExpressions:v36];

  v38 = objc_alloc(MEMORY[0x1E699B900]);
  name3 = [v5 name];
  v40 = [v38 initWithTableName:name3 columnNames:&unk_1F2775628 where:v37 unique:0];

  [v5 addIndex:v40];
  v41 = objc_alloc(MEMORY[0x1E699B900]);
  name4 = [v5 name];
  v43 = [v41 initWithTableName:name4 columnNames:&unk_1F2775640 where:v24 unique:0];

  [v5 addIndex:v43];
  v44 = objc_alloc(MEMORY[0x1E699B900]);
  name5 = [v5 name];
  v46 = [v44 initWithTableName:name5 columnNames:&unk_1F2775658 where:v24 unique:0];

  [v5 addIndex:v46];
  v47 = objc_alloc(MEMORY[0x1E699B900]);
  name6 = [v5 name];
  v49 = [v47 initWithTableName:name6 columnNames:&unk_1F2775670 where:v24 unique:0];

  [v5 addIndex:v49];

  return v5;
}

+ (id)mailboxesTableSchema
{
  v14.receiver = objc_opt_self();
  v14.super_class = &OBJC_METACLASS___MFPersistenceDatabaseSchema_iOS;
  v1 = objc_msgSendSuper2(&v14, sel_partialMailboxesTableSchema);
  v2 = [MEMORY[0x1E699B8D0] textColumnWithName:@"sequence_identifier" collation:1 nullable:1];
  [v1 addColumn:v2];

  v3 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"flagged_count" nullable:0 defaultValue:&unk_1F2776120];
  [v1 addColumn:v3];

  v4 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"attachment_count" nullable:0 defaultValue:&unk_1F2776120];
  [v1 addColumn:v4];

  v5 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"to_cc_count" nullable:0 defaultValue:&unk_1F2776120];
  [v1 addColumn:v5];

  v6 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"server_unread_count" nullable:0 defaultValue:&unk_1F2776120];
  [v1 addColumn:v6];

  v7 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"last_sync_status_count" nullable:0 defaultValue:&unk_1F2776120];
  [v1 addColumn:v7];

  v8 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"most_recent_status_count" nullable:0 defaultValue:&unk_1F2776120];
  [v1 addColumn:v8];

  v9 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"reconcile" nullable:0 defaultValue:&unk_1F2776120];
  [v1 addColumn:v9];

  v10 = [MEMORY[0x1E699B8D0] blobColumnWithName:@"frecency" nullable:1];
  [v1 addColumn:v10];

  v11 = [MEMORY[0x1E699B8D0] blobColumnWithName:@"server_metadata" nullable:1];
  [v1 addColumn:v11];

  v12 = [MEMORY[0x1E699B8D0] blobColumnWithName:@"sync_info" nullable:1];
  [v1 addColumn:v12];

  return v1;
}

+ (id)messageDataTableSchema
{
  v10[5] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v1 = objc_alloc(MEMORY[0x1E699B958]);
  v2 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"message_id" nullable:1];
  v3 = [MEMORY[0x1E699B8D0] textColumnWithName:@"part" collation:1 nullable:{1, v2}];
  v10[1] = v3;
  v4 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"partial" nullable:1];
  v10[2] = v4;
  v5 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"complete" nullable:1];
  v10[3] = v5;
  v6 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"length" nullable:1];
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];
  v8 = [v1 initWithName:@"message_data" rowIDType:2 columns:v7];

  [v8 addUniquenessConstraintForColumns:&unk_1F2775688 conflictResolution:1];

  return v8;
}

+ (id)messageDataDeletedTableSchema
{
  objc_opt_self();
  v1 = objc_alloc(MEMORY[0x1E699B958]);
  v2 = [v1 initWithName:@"message_data_deleted" rowIDType:1 rowIDAlias:@"message_data_id" columns:MEMORY[0x1E695E0F0]];

  return v2;
}

+ (id)popUIDsTableSchema
{
  v10[5] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v1 = objc_alloc(MEMORY[0x1E699B958]);
  v2 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"mailbox" nullable:1];
  v3 = [MEMORY[0x1E699B8D0] textColumnWithName:@"uid" collation:1 nullable:{1, v2}];
  v10[1] = v3;
  v4 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"date_added" nullable:1];
  v10[2] = v4;
  v5 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"flags" nullable:1];
  v10[3] = v5;
  v6 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"del" nullable:1];
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];
  v8 = [v1 initWithName:@"pop_uids" rowIDType:1 columns:v7];

  [v8 addUniquenessConstraintForColumns:&unk_1F27756A0 conflictResolution:1];
  [v8 addIndexForColumns:&unk_1F27756B8];

  return v8;
}

+ (id)accountsTableSchema
{
  v6[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v1 = objc_alloc(MEMORY[0x1E699B958]);
  v2 = [MEMORY[0x1E699B8D0] textColumnWithName:@"text_id" collation:1 nullable:1];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  v4 = [v1 initWithName:@"accounts" rowIDType:2 columns:v3];

  [v4 addUniquenessConstraintForColumns:&unk_1F27756D0 conflictResolution:1];

  return v4;
}

@end