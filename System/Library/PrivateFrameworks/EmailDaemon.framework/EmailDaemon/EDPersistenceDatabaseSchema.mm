@interface EDPersistenceDatabaseSchema
+ (EFSQLSchema)protectedSchema;
+ (EFSQLSchema)schema;
+ (id)_protectedSchemaProviders;
+ (id)_schemaProviders;
+ (id)_schemaWithPopulationBlock:(id)block;
+ (id)partialMailboxesTableSchema;
+ (id)propertiesTableSchema;
+ (void)_initializeSchemas;
+ (void)registerAdditionalPropertiesForPropertyMapper:(id)mapper;
+ (void)test_resetSchema;
@end

@implementation EDPersistenceDatabaseSchema

+ (void)test_resetSchema
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDPersistenceDatabaseSchema.m" lineNumber:49 description:{@"%s can only be called from unit tests", "+[EDPersistenceDatabaseSchema test_resetSchema]"}];
  }

  os_unfair_lock_lock(&sSchemaLock);
  v4 = sSchema;
  sSchema = 0;

  v5 = sProtectedSchema;
  sProtectedSchema = 0;

  os_unfair_lock_unlock(&sSchemaLock);
}

+ (EFSQLSchema)schema
{
  os_unfair_lock_lock(&sSchemaLock);
  v3 = sSchema;
  if (!sSchema)
  {
    [self _initializeSchemas];
    v3 = sSchema;
  }

  v4 = v3;
  os_unfair_lock_unlock(&sSchemaLock);

  return v4;
}

+ (EFSQLSchema)protectedSchema
{
  os_unfair_lock_lock(&sSchemaLock);
  v3 = sProtectedSchema;
  if (!sProtectedSchema)
  {
    [self _initializeSchemas];
    v3 = sProtectedSchema;
  }

  v4 = v3;
  os_unfair_lock_unlock(&sSchemaLock);

  return v4;
}

+ (void)_initializeSchemas
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __49__EDPersistenceDatabaseSchema__initializeSchemas__block_invoke;
  v21[3] = &unk_1E8255D20;
  selfCopy = self;
  v4 = v3;
  v22 = v4;
  v5 = [self _schemaWithPopulationBlock:v21];
  v6 = sSchema;
  sSchema = v5;

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __49__EDPersistenceDatabaseSchema__initializeSchemas__block_invoke_2;
  v20[3] = &__block_descriptor_40_e43_v24__0__NSMutableArray_8__NSMutableArray_16l;
  v20[4] = self;
  v7 = [self _schemaWithPopulationBlock:v20];
  v8 = sProtectedSchema;
  sProtectedSchema = v7;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v4;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v10)
  {
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if (([v13 resolveWithSchema:sSchema] & 1) == 0 && (objc_msgSend(v13, "resolveWithSchema:", sProtectedSchema) & 1) == 0)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"EDPersistenceDatabaseSchema.m" lineNumber:99 description:{@"Unable to resolve association: %@", v13}];
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v10);
  }
}

void __49__EDPersistenceDatabaseSchema__initializeSchemas__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [*(a1 + 40) _schemaProviders];
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        v15 = 0;
        v16 = 0;
        v12 = [v11 tablesAndForeignKeysToResolve:&v16 associationsToResolve:&v15];
        v13 = v16;
        v14 = v15;
        [v5 addObjectsFromArray:v12];
        [v6 addObjectsFromArray:v13];
        [*(a1 + 32) addObjectsFromArray:v14];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }
}

void __49__EDPersistenceDatabaseSchema__initializeSchemas__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [*(a1 + 32) _protectedSchemaProviders];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        v14 = 0;
        v12 = [v11 protectedTablesAndForeignKeysToResolve:&v14];
        v13 = v14;
        [v5 addObjectsFromArray:v12];
        [v6 addObjectsFromArray:v13];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }
}

+ (id)_schemaWithPopulationBlock:(id)block
{
  v26 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
  blockCopy[2](blockCopy, v5);
  v6 = [objc_alloc(MEMORY[0x1E699B940]) initWithTables:v5];
  v7 = objc_alloc(MEMORY[0x1E695DFD8]);
  v8 = +[EDMessagePersistence messagesTableName];
  mailboxesTableName = [self mailboxesTableName];
  v10 = [v7 initWithObjects:{v8, mailboxesTableName, 0}];
  selfCopy = self;

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = v20;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = *v22;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        if (([v15 resolveWithSchema:v6] & 1) == 0 && (objc_msgSend(v15, "resolveToStringForTableNames:", v10) & 1) == 0)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"EDPersistenceDatabaseSchema.m" lineNumber:113 description:{@"Unable to resolve foreign key constraint: %@", v15}];
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }

  return v6;
}

+ (id)_schemaProviders
{
  v7[14] = *MEMORY[0x1E69E9840];
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v7[2] = objc_opt_class();
  v7[3] = objc_opt_class();
  v7[4] = objc_opt_class();
  v7[5] = objc_opt_class();
  v7[6] = objc_opt_class();
  v7[7] = objc_opt_class();
  v7[8] = objc_opt_class();
  v7[9] = objc_opt_class();
  v7[10] = objc_opt_class();
  v7[11] = objc_opt_class();
  v7[12] = objc_opt_class();
  additionalSchemaProviders = [self additionalSchemaProviders];
  v7[13] = additionalSchemaProviders;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:14];
  ef_flatten = [v4 ef_flatten];

  return ef_flatten;
}

+ (id)_protectedSchemaProviders
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v4[3] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:4];

  return v2;
}

+ (void)registerAdditionalPropertiesForPropertyMapper:(id)mapper
{
  mapperCopy = mapper;
  [mapperCopy registerColumnName:@"ROWID" table:@"interaction_log" lookupKeys:MEMORY[0x1E695E0F8] forClass:objc_opt_class() property:sel_eventID];
  [mapperCopy registerColumnName:@"version" table:@"interaction_log" lookupKeys:MEMORY[0x1E695E0F8] forClass:objc_opt_class() property:sel_version];
  [mapperCopy registerColumnName:@"date" table:@"interaction_log" lookupKeys:MEMORY[0x1E695E0F8] forClass:objc_opt_class() property:sel_date];
  [mapperCopy registerColumnName:@"account" table:@"interaction_log" lookupKeys:MEMORY[0x1E695E0F8] forClass:objc_opt_class() property:sel_accountID];
  [mapperCopy registerColumnName:@"mailbox" table:@"interaction_log" lookupKeys:MEMORY[0x1E695E0F8] forClass:objc_opt_class() property:sel_mailboxID];
  [mapperCopy registerColumnName:@"conversation" table:@"interaction_log" lookupKeys:MEMORY[0x1E695E0F8] forClass:objc_opt_class() property:sel_conversationID];
  [mapperCopy registerColumnName:@"message_id_hash" table:@"interaction_log" lookupKeys:MEMORY[0x1E695E0F8] forClass:objc_opt_class() property:sel_messageIDHash];
  [mapperCopy registerColumnName:@"message" table:@"interaction_log" lookupKeys:MEMORY[0x1E695E0F8] forClass:objc_opt_class() property:sel_messagePersistentID];
  [mapperCopy registerColumnName:@"name" table:@"interaction_log" lookupKeys:MEMORY[0x1E695E0F8] forClass:objc_opt_class() property:sel_name];
  [mapperCopy registerColumnName:@"data" table:@"interaction_log" lookupKeys:MEMORY[0x1E695E0F8] forClass:objc_opt_class() property:sel_data];
}

+ (id)propertiesTableSchema
{
  v10[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E699B958]);
  propertiesTableName = [self propertiesTableName];
  v5 = [MEMORY[0x1E699B8D0] textColumnWithName:@"key" collation:1 nullable:0];
  v10[0] = v5;
  v6 = [MEMORY[0x1E699B8D0] blobColumnWithName:@"value" nullable:0];
  v10[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v8 = [v3 initWithName:propertiesTableName rowIDType:1 columns:v7];

  [v8 addUniquenessConstraintForColumns:&unk_1F45E6F10 conflictResolution:1];

  return v8;
}

+ (id)partialMailboxesTableSchema
{
  v12[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E699B958]);
  mailboxesTableName = [self mailboxesTableName];
  v5 = [MEMORY[0x1E699B8D0] textColumnWithName:@"url" collation:1 nullable:0];
  v12[0] = v5;
  v6 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"total_count" nullable:0 defaultValue:&unk_1F45E6898];
  v12[1] = v6;
  v7 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"unread_count" nullable:0 defaultValue:&unk_1F45E6898];
  v12[2] = v7;
  v8 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"deleted_count" nullable:0 defaultValue:&unk_1F45E6898];
  v12[3] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:4];
  v10 = [v3 initWithName:mailboxesTableName rowIDType:2 columns:v9];

  [v10 addUniquenessConstraintForColumns:&unk_1F45E6F28 conflictResolution:1];

  return v10;
}

@end