@interface EDAddThreadTablesUpgradeStep
+ (EFSQLTableSchema)threadMailboxesTableSchema;
+ (EFSQLTableSchema)threadRecipientsTableSchema;
+ (EFSQLTableSchema)threadScopesTableSchema;
+ (EFSQLTableSchema)threadSendersTableSchema;
+ (EFSQLTableSchema)threadsTableSchema;
+ (id)_schemaWithMessagesTable:(id)table mailboxesTable:(id)mailboxesTable conversationsTable:(id)conversationsTable;
+ (int)runWithConnection:(id)connection;
@end

@implementation EDAddThreadTablesUpgradeStep

+ (id)_schemaWithMessagesTable:(id)table mailboxesTable:(id)mailboxesTable conversationsTable:(id)conversationsTable
{
  v25[5] = *MEMORY[0x1E69E9840];
  tableCopy = table;
  mailboxesTableCopy = mailboxesTable;
  conversationsTableCopy = conversationsTable;
  threadScopesTableSchema = [self threadScopesTableSchema];
  threadsTableSchema = [self threadsTableSchema];
  threadMailboxesTableSchema = [self threadMailboxesTableSchema];
  threadSendersTableSchema = [self threadSendersTableSchema];
  threadRecipientsTableSchema = [self threadRecipientsTableSchema];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __91__EDAddThreadTablesUpgradeStep__schemaWithMessagesTable_mailboxesTable_conversationsTable___block_invoke_2;
  aBlock[3] = &unk_1E82501C0;
  v24 = &__block_literal_global_2;
  v15 = _Block_copy(aBlock);
  v15[2](v15, threadScopesTableSchema, @"mailbox", mailboxesTableCopy);
  v15[2](v15, threadsTableSchema, @"scope", threadScopesTableSchema);
  v16 = (v15[2])(v15, threadsTableSchema, @"conversation", conversationsTableCopy);
  __91__EDAddThreadTablesUpgradeStep__schemaWithMessagesTable_mailboxesTable_conversationsTable___block_invoke(v16, threadsTableSchema, @"newest_read_message", tableCopy, 3);
  __91__EDAddThreadTablesUpgradeStep__schemaWithMessagesTable_mailboxesTable_conversationsTable___block_invoke(v17, threadsTableSchema, @"display_message", tableCopy, 3);
  v15[2](v15, threadMailboxesTableSchema, @"thread", threadsTableSchema);
  v15[2](v15, threadMailboxesTableSchema, @"mailbox", mailboxesTableCopy);
  v15[2](v15, threadSendersTableSchema, @"thread", threadsTableSchema);
  v15[2](v15, threadRecipientsTableSchema, @"thread", threadsTableSchema);
  v18 = objc_alloc(MEMORY[0x1E699B940]);
  v25[0] = threadScopesTableSchema;
  v25[1] = threadsTableSchema;
  v25[2] = threadMailboxesTableSchema;
  v25[3] = threadSendersTableSchema;
  v25[4] = threadRecipientsTableSchema;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:5];
  v20 = [v18 initWithTables:v19];

  return v20;
}

void __91__EDAddThreadTablesUpgradeStep__schemaWithMessagesTable_mailboxesTable_conversationsTable___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = a4;
  v8 = [a2 columnForName:a3];
  [v8 setAsForeignKeyForTable:v9 onDelete:a5 onUpdate:0];
}

+ (EFSQLTableSchema)threadScopesTableSchema
{
  v84[5] = *MEMORY[0x1E69E9840];
  v70 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"mailbox" nullable:1];
  v67 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"mailbox_type" nullable:1];
  v68 = [MEMORY[0x1E699B8D0] blobColumnWithName:@"filter_predicate" nullable:1];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v84[0] = v70;
  v84[1] = v67;
  v84[2] = v68;
  v3 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"needs_update" nullable:0 defaultValue:&unk_1F45E6598];
  v84[3] = v3;
  v4 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"last_viewed" nullable:0 defaultValue:&unk_1F45E6598];
  v84[4] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:5];
  v6 = [v2 initWithName:@"thread_scopes" rowIDType:2 columns:v5];

  columnExpression = [v70 columnExpression];
  columnExpression2 = [v67 columnExpression];
  columnExpression3 = [v68 columnExpression];
  v7 = objc_alloc(MEMORY[0x1E699B898]);
  isNotNull = [columnExpression isNotNull];
  v83[0] = isNotNull;
  isNull = [columnExpression2 isNull];
  v83[1] = isNull;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:2];
  v64 = [v7 initWithExpressions:v10];

  v11 = objc_alloc(MEMORY[0x1E699B898]);
  isNull2 = [columnExpression isNull];
  v82[0] = isNull2;
  isNotNull2 = [columnExpression2 isNotNull];
  v82[1] = isNotNull2;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:2];
  v63 = [v11 initWithExpressions:v14];

  v15 = objc_alloc(MEMORY[0x1E699B928]);
  v81[0] = v64;
  v81[1] = v63;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v81 count:2];
  v62 = [v15 initWithExpressions:v16];

  [v6 addCheckConstraintForExpression:v62];
  v17 = objc_alloc(MEMORY[0x1E699B898]);
  isNotNull3 = [columnExpression isNotNull];
  v80[0] = isNotNull3;
  isNull3 = [columnExpression3 isNull];
  v80[1] = isNull3;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:2];
  v21 = [v17 initWithExpressions:v20];

  v22 = objc_alloc(MEMORY[0x1E699B900]);
  name = [v6 name];
  name2 = [v70 name];
  v79 = name2;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v79 count:1];
  v61 = [v22 initWithTableName:name columnNames:v25 where:v21 unique:1];

  [v6 addIndex:v61];
  v26 = objc_alloc(MEMORY[0x1E699B898]);
  isNotNull4 = [columnExpression isNotNull];
  v78[0] = isNotNull4;
  isNotNull5 = [columnExpression3 isNotNull];
  v78[1] = isNotNull5;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v78 count:2];
  v30 = [v26 initWithExpressions:v29];

  v31 = objc_alloc(MEMORY[0x1E699B900]);
  name3 = [v6 name];
  name4 = [v70 name];
  v77[0] = name4;
  name5 = [v68 name];
  v77[1] = name5;
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:2];
  v36 = [v31 initWithTableName:name3 columnNames:v35 where:v30 unique:1];

  [v6 addIndex:v36];
  v37 = objc_alloc(MEMORY[0x1E699B898]);
  isNotNull6 = [columnExpression2 isNotNull];
  v76[0] = isNotNull6;
  isNull4 = [columnExpression3 isNull];
  v76[1] = isNull4;
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:2];
  v41 = [v37 initWithExpressions:v40];

  v42 = objc_alloc(MEMORY[0x1E699B900]);
  name6 = [v6 name];
  name7 = [v67 name];
  v75 = name7;
  v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v75 count:1];
  v46 = [v42 initWithTableName:name6 columnNames:v45 where:v41 unique:1];

  [v6 addIndex:v46];
  v47 = objc_alloc(MEMORY[0x1E699B898]);
  isNotNull7 = [columnExpression2 isNotNull];
  v74[0] = isNotNull7;
  isNotNull8 = [columnExpression3 isNotNull];
  v74[1] = isNotNull8;
  v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:2];
  v51 = [v47 initWithExpressions:v50];

  v52 = objc_alloc(MEMORY[0x1E699B900]);
  name8 = [v6 name];
  name9 = [v67 name];
  v73[0] = name9;
  name10 = [v68 name];
  v73[1] = name10;
  v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:2];
  v57 = [v52 initWithTableName:name8 columnNames:v56 where:v51 unique:1];

  [v6 addIndex:v57];
  v72 = @"needs_update";
  v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v72 count:1];
  [v6 addIndexForColumns:v58];

  v71 = @"last_viewed";
  v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v71 count:1];
  [v6 addIndexForColumns:v59];

  return v6;
}

+ (EFSQLTableSchema)threadsTableSchema
{
  v33[23] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v30 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"scope" nullable:0];
  v33[0] = v30;
  v29 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"conversation" nullable:0];
  v33[1] = v29;
  v28 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"newest_read_message" nullable:1];
  v33[2] = v28;
  v27 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"display_message" nullable:1];
  v33[3] = v27;
  v26 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"date" nullable:0];
  v33[4] = v26;
  v25 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"read" nullable:0 defaultValue:&unk_1F45E6598];
  v33[5] = v25;
  v24 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"flagged" nullable:0 defaultValue:&unk_1F45E6598];
  v33[6] = v24;
  v23 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"has_red_flag" nullable:0 defaultValue:&unk_1F45E6598];
  v33[7] = v23;
  v22 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"has_orange_flag" nullable:0 defaultValue:&unk_1F45E6598];
  v33[8] = v22;
  v21 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"has_yellow_flag" nullable:0 defaultValue:&unk_1F45E6598];
  v33[9] = v21;
  v20 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"has_green_flag" nullable:0 defaultValue:&unk_1F45E6598];
  v33[10] = v20;
  v19 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"has_blue_flag" nullable:0 defaultValue:&unk_1F45E6598];
  v33[11] = v19;
  v18 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"has_purple_flag" nullable:0 defaultValue:&unk_1F45E6598];
  v33[12] = v18;
  v17 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"has_gray_flag" nullable:0 defaultValue:&unk_1F45E6598];
  v33[13] = v17;
  v16 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"draft" nullable:0 defaultValue:&unk_1F45E6598];
  v33[14] = v16;
  v3 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"replied" nullable:0 defaultValue:&unk_1F45E6598];
  v33[15] = v3;
  v4 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"forwarded" nullable:0 defaultValue:&unk_1F45E6598];
  v33[16] = v4;
  v5 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"redirected" nullable:0 defaultValue:&unk_1F45E6598];
  v33[17] = v5;
  v6 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"junk_level_set_by_user" nullable:0 defaultValue:&unk_1F45E6598];
  v33[18] = v6;
  v7 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"junk_level" nullable:0 defaultValue:&unk_1F45E6598];
  v33[19] = v7;
  v8 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"has_unflagged" nullable:0 defaultValue:&unk_1F45E6598];
  v33[20] = v8;
  v9 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"has_attachments" nullable:0 defaultValue:&unk_1F45E6598];
  v33[21] = v9;
  v10 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"count" nullable:0];
  v33[22] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:23];
  v12 = [v2 initWithName:@"threads" rowIDType:2 columns:v11];

  v32[0] = @"scope";
  v32[1] = @"conversation";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
  [v12 addUniquenessConstraintForColumns:v13 conflictResolution:1];

  v31[0] = @"scope";
  v31[1] = @"date";
  v31[2] = @"conversation";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:3];
  [v12 addIndexForColumns:v14];

  return v12;
}

+ (EFSQLTableSchema)threadMailboxesTableSchema
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v3 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"thread" nullable:0];
  v10[0] = v3;
  v4 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"mailbox" nullable:0];
  v10[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v9[0] = @"thread";
  v9[1] = @"mailbox";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v7 = [v2 initWithName:@"thread_mailboxes" columns:v5 primaryKeyColumns:v6];

  return v7;
}

+ (EFSQLTableSchema)threadSendersTableSchema
{
  v16[4] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v3 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"thread" nullable:0];
  v16[0] = v3;
  v4 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"address" nullable:0];
  v16[1] = v4;
  v5 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"date" nullable:0];
  v16[2] = v5;
  v6 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"priority" nullable:0 defaultValue:&unk_1F45E6598];
  v16[3] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:4];
  v15[0] = @"thread";
  v15[1] = @"address";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v9 = [v2 initWithName:@"thread_senders" columns:v7 primaryKeyColumns:v8];

  v14[0] = @"address";
  v14[1] = @"thread";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  [v9 addIndexForColumns:v10];

  v13[0] = @"thread";
  v13[1] = @"priority";
  v13[2] = @"date";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:3];
  [v9 addIndexForColumns:v11];

  return v9;
}

+ (EFSQLTableSchema)threadRecipientsTableSchema
{
  v17[5] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v3 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"thread" nullable:0];
  v17[0] = v3;
  v4 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"address" nullable:0];
  v17[1] = v4;
  v5 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"type" nullable:0];
  v17[2] = v5;
  v6 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"date" nullable:0];
  v17[3] = v6;
  v7 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"priority" nullable:0 defaultValue:&unk_1F45E6598];
  v17[4] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:5];
  v16[0] = @"thread";
  v16[1] = @"type";
  v16[2] = @"address";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:3];
  v10 = [v2 initWithName:@"thread_recipients" columns:v8 primaryKeyColumns:v9];

  v15[0] = @"address";
  v15[1] = @"thread";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  [v10 addIndexForColumns:v11];

  v14[0] = @"thread";
  v14[1] = @"priority";
  v14[2] = @"date";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:3];
  [v10 addIndexForColumns:v12];

  return v10;
}

+ (int)runWithConnection:(id)connection
{
  connectionCopy = connection;
  v5 = objc_alloc(MEMORY[0x1E699B958]);
  v6 = [v5 initWithName:@"messages" rowIDType:2 columns:MEMORY[0x1E695E0F0]];
  v7 = objc_alloc(MEMORY[0x1E699B958]);
  v8 = [v7 initWithName:@"mailboxes" rowIDType:2 columns:MEMORY[0x1E695E0F0]];
  v9 = objc_alloc(MEMORY[0x1E699B958]);
  v10 = [v9 initWithName:@"conversations" rowIDType:2 rowIDAlias:@"conversation_id" columns:MEMORY[0x1E695E0F0]];
  v11 = [self _schemaWithMessagesTable:v6 mailboxesTable:v8 conversationsTable:v10];
  v12 = [v11 definitionWithDatabaseName:0];
  v13 = sqlite3_exec([connectionCopy sqlDB], objc_msgSend(v12, "UTF8String"), 0, 0, 0);

  return v13;
}

@end