@interface MFMailMessageLibraryRebuildThreadsTableUpgradeStep
+ (id)_threadsTableSchemaWithMessagesTable:(id)table conversationsTable:(id)conversationsTable threadScopesTable:(id)scopesTable;
+ (int)runWithConnection:(id)connection;
@end

@implementation MFMailMessageLibraryRebuildThreadsTableUpgradeStep

+ (id)_threadsTableSchemaWithMessagesTable:(id)table conversationsTable:(id)conversationsTable threadScopesTable:(id)scopesTable
{
  v87 = *MEMORY[0x1E69E9840];
  tableCopy = table;
  conversationsTableCopy = conversationsTable;
  scopesTableCopy = scopesTable;
  v7 = objc_alloc(MEMORY[0x1E699B958]);
  v63 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"scope" nullable:0];
  v49 = v63;
  v64 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"conversation" nullable:0];
  v48 = v64;
  v47 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"newest_read_message" nullable:1];
  v65 = v47;
  v46 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"display_message" nullable:1];
  v66 = v46;
  v45 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"date" nullable:0];
  v67 = v45;
  v44 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"read" nullable:0 defaultValue:&unk_1F2775CE8];
  v68 = v44;
  v43 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"flagged" nullable:0 defaultValue:&unk_1F2775CE8];
  v69 = v43;
  v42 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"has_red_flag" nullable:0 defaultValue:&unk_1F2775CE8];
  v70 = v42;
  v41 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"has_orange_flag" nullable:0 defaultValue:&unk_1F2775CE8];
  v71 = v41;
  v40 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"has_yellow_flag" nullable:0 defaultValue:&unk_1F2775CE8];
  v72 = v40;
  v39 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"has_green_flag" nullable:0 defaultValue:&unk_1F2775CE8];
  v73 = v39;
  v38 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"has_blue_flag" nullable:0 defaultValue:&unk_1F2775CE8];
  v74 = v38;
  v37 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"has_purple_flag" nullable:0 defaultValue:&unk_1F2775CE8];
  v75 = v37;
  v36 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"has_gray_flag" nullable:0 defaultValue:&unk_1F2775CE8];
  v76 = v36;
  v35 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"draft" nullable:0 defaultValue:&unk_1F2775CE8];
  v77 = v35;
  v34 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"replied" nullable:0 defaultValue:&unk_1F2775CE8];
  v78 = v34;
  v33 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"forwarded" nullable:0 defaultValue:&unk_1F2775CE8];
  v79 = v33;
  v8 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"redirected" nullable:0 defaultValue:&unk_1F2775CE8];
  v80 = v8;
  v9 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"junk_level_set_by_user" nullable:0 defaultValue:&unk_1F2775CE8];
  v81 = v9;
  v10 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"junk_level" nullable:0 defaultValue:&unk_1F2775CE8];
  v82 = v10;
  v11 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"has_unflagged" nullable:0 defaultValue:&unk_1F2775CE8];
  v83 = v11;
  v12 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"has_attachments" nullable:0 defaultValue:&unk_1F2775CE8];
  v84 = v12;
  v13 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"count" nullable:0];
  v85 = v13;
  v14 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"journaled" nullable:0 defaultValue:&unk_1F2775CE8];
  v86 = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v63 count:24];
  v16 = [v7 initWithName:@"threads" rowIDType:2 columns:v15];

  v62[0] = @"scope";
  v62[1] = @"conversation";
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:2];
  [v16 addUniquenessConstraintForColumns:v17 conflictResolution:1];

  v61[0] = @"scope";
  v61[1] = @"date";
  v61[2] = @"conversation";
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:3];
  [v16 addIndexForColumns:v18];

  v60[0] = @"journaled";
  v60[1] = @"scope";
  v60[2] = @"date";
  v60[3] = @"conversation";
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:4];
  [v16 addIndexForColumns:v19];

  v59 = @"display_message";
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:1];
  [v16 addIndexForColumns:v20];

  v58 = @"newest_read_message";
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v58 count:1];
  [v16 addIndexForColumns:v21];

  v22 = objc_alloc(MEMORY[0x1E699B900]);
  v57[0] = @"journaled";
  v57[1] = @"date";
  v57[2] = @"scope";
  v57[3] = @"conversation";
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:4];
  v24 = [MEMORY[0x1E699B8C8] column:@"journaled"];
  v25 = [v24 equalTo:&unk_1F2775D00];
  v26 = [v22 initWithTableName:@"threads" columnNames:v23 where:v25 unique:0];

  [v16 addIndex:v26];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __128__MFMailMessageLibraryRebuildThreadsTableUpgradeStep__threadsTableSchemaWithMessagesTable_conversationsTable_threadScopesTable___block_invoke;
  aBlock[3] = &unk_1E7AA6658;
  v27 = v16;
  v56 = v27;
  v28 = _Block_copy(aBlock);
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __128__MFMailMessageLibraryRebuildThreadsTableUpgradeStep__threadsTableSchemaWithMessagesTable_conversationsTable_threadScopesTable___block_invoke_2;
  v53[3] = &unk_1E7AA6680;
  v29 = v28;
  v54 = v29;
  v30 = _Block_copy(v53);
  v30[2](v30, @"scope", scopesTableCopy);
  v30[2](v30, @"conversation", conversationsTableCopy);
  (*(v29 + 2))(v29, @"newest_read_message", tableCopy, 3);
  (*(v29 + 2))(v29, @"display_message", tableCopy, 3);
  v31 = v27;

  return v27;
}

void __128__MFMailMessageLibraryRebuildThreadsTableUpgradeStep__threadsTableSchemaWithMessagesTable_conversationsTable_threadScopesTable___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = a3;
  v7 = [*(a1 + 32) columnForName:a2];
  [v7 setAsForeignKeyForTable:v8 onDelete:a4 onUpdate:0];
}

+ (int)runWithConnection:(id)connection
{
  connectionCopy = connection;
  if (([connectionCopy executeStatementString:@"DROP TABLE threads" errorMessage:@"Dropping threads"] & 1) != 0 && objc_msgSend(connectionCopy, "executeStatementString:errorMessage:", @"DELETE FROM thread_scopes", @"Clearing thread_scopes") && objc_msgSend(connectionCopy, "executeStatementString:errorMessage:", @"DELETE FROM thread_mailboxes", @"Clearing thread_mailboxes") && objc_msgSend(connectionCopy, "executeStatementString:errorMessage:", @"DELETE FROM thread_senders", @"Clearing thread_senders") && objc_msgSend(connectionCopy, "executeStatementString:errorMessage:", @"DELETE FROM thread_recipients", @"Clearing thread_recipients"))
  {
    v5 = objc_alloc(MEMORY[0x1E699B958]);
    v6 = [v5 initWithName:@"messages" rowIDType:2 columns:MEMORY[0x1E695E0F0]];
    v7 = objc_alloc(MEMORY[0x1E699B958]);
    v8 = [v7 initWithName:@"conversations" rowIDType:2 rowIDAlias:@"conversation_id" columns:MEMORY[0x1E695E0F0]];
    v9 = objc_alloc(MEMORY[0x1E699B958]);
    v10 = [v9 initWithName:@"thread_scopes" rowIDType:2 columns:MEMORY[0x1E695E0F0]];
    v11 = [self _threadsTableSchemaWithMessagesTable:v6 conversationsTable:v8 threadScopesTable:v10];
    v12 = [v11 definitionWithDatabaseName:0];
    v13 = [connectionCopy executeStatementString:v12 errorMessage:@"Creating new threads"] ^ 1;
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

@end