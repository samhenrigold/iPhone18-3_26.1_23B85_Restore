@interface EDLocalActionPersistence
+ (OS_os_log)log;
+ (id)actionFlagsTableSchema;
+ (id)actionLabelsTableSchema;
+ (id)actionMessagesTableSchema;
+ (id)localMessageActionsTableSchema;
+ (id)tablesAndForeignKeysToResolve:(id *)resolve associationsToResolve:(id *)toResolve;
- (BOOL)_addActionMessageForMessage:(id)message destinationMessage:(id)destinationMessage actionID:(int64_t)d actionPhase:(int64_t)phase connection:(id)connection;
- (BOOL)_addActionMessageForSourceRemoteID:(id)d actionID:(int64_t)iD connection:(id)connection;
- (BOOL)_addFlagChange:(id)change actionID:(int64_t)d connection:(id)connection;
- (BOOL)_setLabelsOnAction:(int64_t)action labels:(id)labels add:(BOOL)add connection:(id)connection;
- (BOOL)mailboxURLIsInRemoteAccount:(id)account;
- (BOOL)moveSupportedFromMailboxURL:(id)l toURL:(id)rL;
- (BOOL)persistFlagChangeAction:(id)action;
- (BOOL)persistFlagChangeUndownloadedAction:(id)action;
- (BOOL)persistLabelChangeAction:(id)action;
- (BOOL)persistTransferAction:(id)action;
- (BOOL)persistTransferUndownloadedAction:(id)action;
- (BOOL)updateTransferAction:(id)action withResults:(id)results;
- (BOOL)updateTransferUndownloadedMessageAction:(id)action withResults:(id)results;
- (ECLocalMessageActionID)latestActionID;
- (EDLocalActionPersistence)initWithDatabase:(id)database gmailLabelPersistence:(id)persistence;
- (id)_flagChangeActionForRow:(id)row connection:(id)connection;
- (id)_flagChangeAllActionForRow:(id)row connection:(id)connection;
- (id)_flagChangeForAction:(int64_t)action connection:(id)connection;
- (id)_labelChangeActionForRow:(id)row connection:(id)connection;
- (id)_sourceRemoteIDListForCopyItems:(id)items;
- (id)_transferActionForRow:(id)row connection:(id)connection failedMessages:(id)messages;
- (id)_transferUndownloadedActionForRow:(id)row connection:(id)connection;
- (id)_whereClauseToFindCopyItems:(id)items;
- (id)messageActionsForAccountURL:(id)l previousActionID:(int64_t)d;
- (void)_deleteCopyItems:(id)items actionID:(int64_t)d connection:(id)connection;
- (void)_findMessagesForAction:(int64_t)action remoteIDs:(id)ds messages:(id)messages connection:(id)connection;
- (void)_updateCopyItems:(id)items toPhase:(int64_t)phase actionID:(int64_t)d connection:(id)connection;
- (void)removeMessageAction:(int64_t)action;
- (void)removeMessageActions:(id)actions;
- (void)updateFlagChangeAction:(id)action withRemainingUIDs:(id)ds;
@end

@implementation EDLocalActionPersistence

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__EDLocalActionPersistence_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_49 != -1)
  {
    dispatch_once(&log_onceToken_49, block);
  }

  v2 = log_log_49;

  return v2;
}

void __31__EDLocalActionPersistence_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_49;
  log_log_49 = v1;
}

+ (id)tablesAndForeignKeysToResolve:(id *)resolve associationsToResolve:(id *)toResolve
{
  v37[6] = *MEMORY[0x1E69E9840];
  localMessageActionsTableSchema = [self localMessageActionsTableSchema];
  actionMessagesTableSchema = [self actionMessagesTableSchema];
  actionLabelsTableSchema = [self actionLabelsTableSchema];
  actionFlagsTableSchema = [self actionFlagsTableSchema];
  v6 = [actionMessagesTableSchema columnForName:@"action"];
  [v6 setAsForeignKeyForTable:localMessageActionsTableSchema onDelete:2 onUpdate:0];

  v7 = [actionLabelsTableSchema columnForName:@"action"];
  [v7 setAsForeignKeyForTable:localMessageActionsTableSchema onDelete:2 onUpdate:0];

  v8 = [actionFlagsTableSchema columnForName:@"action"];
  [v8 setAsForeignKeyForTable:localMessageActionsTableSchema onDelete:2 onUpdate:0];

  v34 = +[EDMessagePersistence messagesTableName];
  v9 = +[EDPersistenceDatabaseSchema mailboxesTableName];
  v10 = [EDPersistenceForeignKeyPlaceholder alloc];
  v28 = [localMessageActionsTableSchema columnForName:@"mailbox"];
  v29 = [EDPersistenceForeignKeyPlaceholder initWithColumn:v10 tableName:"initWithColumn:tableName:onDelete:onUpdate:" onDelete:? onUpdate:?];
  v37[0] = v29;
  v11 = [EDPersistenceForeignKeyPlaceholder alloc];
  v26 = [localMessageActionsTableSchema columnForName:@"source_mailbox"];
  v27 = [EDPersistenceForeignKeyPlaceholder initWithColumn:v11 tableName:"initWithColumn:tableName:onDelete:onUpdate:" onDelete:? onUpdate:?];
  v37[1] = v27;
  v12 = [EDPersistenceForeignKeyPlaceholder alloc];
  v25 = [localMessageActionsTableSchema columnForName:@"destination_mailbox"];
  v13 = [EDPersistenceForeignKeyPlaceholder initWithColumn:v12 tableName:"initWithColumn:tableName:onDelete:onUpdate:" onDelete:? onUpdate:?];
  v37[2] = v13;
  v14 = [EDPersistenceForeignKeyPlaceholder alloc];
  v15 = [actionMessagesTableSchema columnForName:@"message"];
  v16 = [(EDPersistenceForeignKeyPlaceholder *)v14 initWithColumn:v15 tableName:v34 onDelete:3 onUpdate:0];
  v37[3] = v16;
  v17 = [EDPersistenceForeignKeyPlaceholder alloc];
  v18 = [actionMessagesTableSchema columnForName:@"destination_message"];
  v19 = [(EDPersistenceForeignKeyPlaceholder *)v17 initWithColumn:v18 tableName:v34 onDelete:2 onUpdate:0];
  v37[4] = v19;
  v20 = [EDPersistenceForeignKeyPlaceholder alloc];
  v21 = [actionLabelsTableSchema columnForName:@"label"];
  v22 = [(EDPersistenceForeignKeyPlaceholder *)v20 initWithColumn:v21 tableName:v9 onDelete:2 onUpdate:0];
  v37[5] = v22;
  *resolve = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:6];

  *toResolve = MEMORY[0x1E695E0F0];
  v36[0] = localMessageActionsTableSchema;
  v36[1] = actionMessagesTableSchema;
  v36[2] = actionLabelsTableSchema;
  v36[3] = actionFlagsTableSchema;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:4];

  return v23;
}

+ (id)localMessageActionsTableSchema
{
  v14[5] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v3 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"mailbox" nullable:1];
  v14[0] = v3;
  v4 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"source_mailbox" nullable:1];
  v14[1] = v4;
  v5 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"destination_mailbox" nullable:1];
  v14[2] = v5;
  v6 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"action_type" nullable:1];
  v14[3] = v6;
  v7 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"user_initiated" nullable:1];
  v14[4] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:5];
  v9 = [v2 initWithName:@"local_message_actions" rowIDType:2 columns:v8];

  v10 = *MEMORY[0x1E699B768];
  v13[0] = @"mailbox";
  v13[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  [v9 addIndexForColumns:v11];

  return v9;
}

+ (id)actionMessagesTableSchema
{
  v17[5] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v3 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"action" nullable:1];
  v17[0] = v3;
  v4 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"action_phase" nullable:1];
  v17[1] = v4;
  v5 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"message" nullable:1];
  v17[2] = v5;
  v6 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"remote_id" nullable:1];
  v17[3] = v6;
  v7 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"destination_message" nullable:1];
  v17[4] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:5];
  v9 = [v2 initWithName:@"action_messages" rowIDType:1 columns:v8];

  v16 = @"action";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
  [v9 addIndexForColumns:v10];

  v15 = @"message";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
  [v9 addIndexForColumns:v11];

  v14 = @"destination_message";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
  [v9 addIndexForColumns:v12];

  return v9;
}

+ (id)actionLabelsTableSchema
{
  v13[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v3 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"action" nullable:1];
  v13[0] = v3;
  v4 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"do_add" nullable:1];
  v13[1] = v4;
  v5 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"label" nullable:1];
  v13[2] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:3];
  v7 = [v2 initWithName:@"action_labels" rowIDType:1 columns:v6];

  v12 = @"action";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
  [v7 addIndexForColumns:v8];

  v11 = @"label";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
  [v7 addIndexForColumns:v9];

  return v7;
}

+ (id)actionFlagsTableSchema
{
  v11[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v3 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"action" nullable:1];
  v11[0] = v3;
  v4 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"flag_type" nullable:1];
  v11[1] = v4;
  v5 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"flag_value" nullable:1];
  v11[2] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:3];
  v7 = [v2 initWithName:@"action_flags" rowIDType:1 columns:v6];

  v10 = @"action";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];
  [v7 addIndexForColumns:v8];

  return v7;
}

- (EDLocalActionPersistence)initWithDatabase:(id)database gmailLabelPersistence:(id)persistence
{
  databaseCopy = database;
  persistenceCopy = persistence;
  v12.receiver = self;
  v12.super_class = EDLocalActionPersistence;
  v9 = [(EDLocalActionPersistence *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_database, database);
    objc_storeStrong(&v10->_gmailLabelPersistence, persistence);
  }

  return v10;
}

- (id)messageActionsForAccountURL:(id)l previousActionID:(int64_t)d
{
  v42 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v23 = objc_opt_new();
  v22 = objc_opt_new();
  v21 = objc_opt_new();
  database = [(EDLocalActionPersistence *)self database];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDLocalActionPersistence messageActionsForAccountURL:previousActionID:]"];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __73__EDLocalActionPersistence_messageActionsForAccountURL_previousActionID___block_invoke;
  v27[3] = &unk_1E8252EC8;
  v8 = lCopy;
  dCopy = d;
  v28 = v8;
  selfCopy = self;
  v9 = v21;
  v30 = v9;
  v10 = v23;
  v31 = v10;
  v11 = v22;
  v32 = v11;
  [database __performReadWithCaller:v7 usingBlock:v27];

  v12 = +[EDLocalActionPersistence log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v10 count];
    v14 = [v9 count];
    v15 = [v11 count];
    *buf = 134218752;
    dCopy2 = d;
    v36 = 2048;
    v37 = v13;
    v38 = 2048;
    v39 = v14;
    v40 = 2048;
    v41 = v15;
    _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_DEFAULT, "messageActionsForAccountURL database query for previousActionID: %lld completed: %lu actions found, %lu failed messages, %lu actions to delete", buf, 0x2Au);
  }

  if ([v11 count])
  {
    database2 = [(EDLocalActionPersistence *)self database];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDLocalActionPersistence messageActionsForAccountURL:previousActionID:]"];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __73__EDLocalActionPersistence_messageActionsForAccountURL_previousActionID___block_invoke_73;
    v25[3] = &unk_1E8251CB8;
    v26 = v11;
    [database2 __performWriteWithCaller:v17 usingBlock:v25];
  }

  if ([v9 count])
  {
    [(EDLocalActionPersistence *)self handledFailedCopyForMessages:v9];
  }

  v18 = v32;
  v19 = v10;

  return v10;
}

uint64_t __73__EDLocalActionPersistence_messageActionsForAccountURL_previousActionID___block_invoke(uint64_t a1, void *a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v5 = [*(a1 + 32) ef_SQLEscapedString];
  v6 = [v4 initWithFormat:@"SELECT ROWID, action_type, user_initiated, mailbox, source_mailbox, destination_mailbox FROM local_message_actions WHERE ((mailbox IN (SELECT ROWID FROM mailboxes WHERE url GLOB '%@*')) AND (ROWID > ?)) ORDER BY ROWID", v5];

  v7 = [v3 preparedStatementForQueryString:v6];
  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 72)];
  v17[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__EDLocalActionPersistence_messageActionsForAccountURL_previousActionID___block_invoke_2;
  v12[3] = &unk_1E8252EA0;
  v12[4] = *(a1 + 40);
  v10 = v3;
  v13 = v10;
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v16 = *(a1 + 64);
  [v7 executeWithIndexedBindings:v9 usingBlock:v12 error:0];

  return 1;
}

void __73__EDLocalActionPersistence_messageActionsForAccountURL_previousActionID___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 objectForKeyedSubscript:@"action_type"];
  v4 = [v3 integerValue];

  if (v4 > 4)
  {
    if ((v4 - 8) < 3)
    {
      v5 = [*(a1 + 32) _transferUndownloadedActionForRow:v10 connection:*(a1 + 40)];
      goto LABEL_13;
    }

    if ((v4 - 5) >= 2)
    {
      if (v4 != 7)
      {
        goto LABEL_15;
      }

      v5 = [*(a1 + 32) _flagChangeAllActionForRow:v10 connection:*(a1 + 40)];
      goto LABEL_13;
    }

LABEL_8:
    v5 = [*(a1 + 32) _transferActionForRow:v10 connection:*(a1 + 40) failedMessages:*(a1 + 48)];
    goto LABEL_13;
  }

  if ((v4 - 1) < 2)
  {
    goto LABEL_8;
  }

  if (v4 == 3)
  {
    v5 = [*(a1 + 32) _flagChangeActionForRow:v10 connection:*(a1 + 40)];
  }

  else
  {
    if (v4 != 4)
    {
      goto LABEL_15;
    }

    v5 = [*(a1 + 32) _labelChangeActionForRow:v10 connection:*(a1 + 40)];
  }

LABEL_13:
  v6 = v5;
  if (v5)
  {
    [*(a1 + 56) addObject:v5];
    goto LABEL_16;
  }

LABEL_15:
  v7 = *(a1 + 64);
  v8 = [v10 objectForKeyedSubscript:@"ROWID"];
  v9 = [v8 numberValue];
  [v7 addObject:v9];

  v6 = 0;
LABEL_16:
}

uint64_t __73__EDLocalActionPersistence_messageActionsForAccountURL_previousActionID___block_invoke_73(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v5 = [*(a1 + 32) componentsJoinedByString:{@", "}];
  v6 = [v4 initWithFormat:@"DELETE FROM local_message_actions WHERE ROWID IN (%@);", v5];

  v7 = [v3 preparedStatementForQueryString:v6];
  v11 = 0;
  v8 = [v7 executeUsingBlock:0 error:&v11];
  v9 = v11;
  if ((v8 & 1) == 0)
  {
    [v3 handleError:v9 message:@"deleting actions"];
  }

  return 1;
}

- (id)_transferActionForRow:(id)row connection:(id)connection failedMessages:(id)messages
{
  v71[1] = *MEMORY[0x1E69E9840];
  rowCopy = row;
  connectionCopy = connection;
  v7 = [rowCopy objectForKeyedSubscript:@"ROWID"];
  databaseIDValue = [v7 databaseIDValue];

  v8 = [rowCopy objectForKeyedSubscript:@"action_type"];
  integerValue = [v8 integerValue];

  v9 = +[EDLocalActionPersistence log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v62 = databaseIDValue;
    v63 = 2048;
    v64 = integerValue;
    _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_DEFAULT, "_transferActionForRow: Processing action %lld type %ld", buf, 0x16u);
  }

  v10 = [rowCopy objectForKeyedSubscript:@"mailbox"];
  databaseIDValue2 = [v10 databaseIDValue];

  v11 = [rowCopy objectForKeyedSubscript:@"source_mailbox"];
  databaseIDValue3 = [v11 databaseIDValue];

  v12 = [rowCopy objectForKeyedSubscript:@"destination_mailbox"];
  databaseIDValue4 = [v12 databaseIDValue];

  v13 = [rowCopy objectForKeyedSubscript:@"user_initiated"];
  bOOLValue = [v13 BOOLValue];

  v32 = objc_opt_new();
  v31 = objc_opt_new();
  v37 = objc_opt_new();
  v40 = [connectionCopy preparedStatementForQueryString:{@"SELECT action_phase, remote_id, message, destination_message FROM action_messages WHERE action = ?"}];
  v14 = [MEMORY[0x1E696AD98] numberWithLongLong:databaseIDValue];
  v71[0] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:1];
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __76__EDLocalActionPersistence__transferActionForRow_connection_failedMessages___block_invoke;
  v56[3] = &unk_1E8252F18;
  v56[4] = self;
  v60 = databaseIDValue4;
  v16 = v32;
  v57 = v16;
  v17 = v31;
  v58 = v17;
  v18 = v37;
  v59 = v18;
  [v40 executeWithIndexedBindings:v15 usingBlock:v56 error:0];

  v19 = [v16 count];
  v20 = [v17 count];
  v21 = [v18 count];
  v22 = +[EDLocalActionPersistence log];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [v16 count];
    v24 = [v17 count];
    v25 = [v18 count];
    *buf = 134219008;
    v62 = databaseIDValue;
    v63 = 2048;
    v64 = v20 + v19 + v21;
    v65 = 2048;
    v66 = v23;
    v67 = 2048;
    v68 = v24;
    v69 = 2048;
    v70 = v25;
    _os_log_impl(&dword_1C61EF000, v22, OS_LOG_TYPE_DEFAULT, "_transferActionForRow: Action %lld has %lu total messages (%lu download, %lu copy, %lu delete)", buf, 0x34u);
  }

  if ([v16 count] || objc_msgSend(v17, "count") || objc_msgSend(v18, "count"))
  {
    v26 = [(EDLocalActionPersistence *)self mailboxURLForDatabaseID:databaseIDValue2];
    v27 = objc_alloc(MEMORY[0x1E699B350]);
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __76__EDLocalActionPersistence__transferActionForRow_connection_failedMessages___block_invoke_90;
    v44[3] = &unk_1E8252F40;
    v50 = databaseIDValue;
    v28 = v26;
    v55 = bOOLValue;
    v45 = v28;
    selfCopy = self;
    v51 = databaseIDValue3;
    v52 = databaseIDValue4;
    v53 = integerValue;
    v54 = a2;
    v47 = v16;
    v48 = v17;
    v49 = v18;
    v29 = [v27 initWithBuilder:v44];
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

void __76__EDLocalActionPersistence__transferActionForRow_connection_failedMessages___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"action_phase"];
  v5 = [v4 integerValue];

  v6 = [v3 objectForKeyedSubscript:@"remote_id"];
  v7 = [v6 stringValue];

  if ([v7 length])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = [v3 objectForKeyedSubscript:@"message"];
  v11 = [v10 numberValue];

  v12 = [v3 objectForKeyedSubscript:@"destination_message"];
  v13 = [v12 databaseIDValue];

  v14 = [*(a1 + 32) messageForDatabaseID:v13];
  v15 = v14;
  if (*(a1 + 64) && !v14)
  {
    v16 = +[EDLocalActionPersistence log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __76__EDLocalActionPersistence__transferActionForRow_connection_failedMessages___block_invoke_cold_1(v13, v16);
    }
  }

  if (v13 || v5 == 4 && v9)
  {
    v17 = objc_alloc(MEMORY[0x1E699B358]);
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __76__EDLocalActionPersistence__transferActionForRow_connection_failedMessages___block_invoke_87;
    v25 = &unk_1E8252EF0;
    v18 = v11;
    v19 = *(a1 + 32);
    v26 = v18;
    v27 = v19;
    v28 = v9;
    v29 = v15;
    v20 = [v17 initWithBuilder:&v22];
    switch(v5)
    {
      case 1:
        v21 = 40;
        goto LABEL_19;
      case 3:
        if (*(a1 + 64))
        {
          v21 = 48;
          goto LABEL_19;
        }

        break;
      case 4:
        v21 = 56;
LABEL_19:
        [*(a1 + v21) addObject:{v20, v22, v23, v24, v25, v26, v27, v28}];
        break;
    }
  }
}

void __76__EDLocalActionPersistence__transferActionForRow_connection_failedMessages___block_invoke_87(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6 = v3;
  if (v4)
  {
    v5 = [*(a1 + 40) messageForDatabaseID:{objc_msgSend(v4, "longLongValue")}];
    [v6 setSourceMessage:v5];

    v3 = v6;
  }

  [v3 setSourceRemoteID:*(a1 + 48)];
  [v6 setDestinationMessage:*(a1 + 56)];
}

void __76__EDLocalActionPersistence__transferActionForRow_connection_failedMessages___block_invoke_90(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [objc_alloc(MEMORY[0x1E699B2D0]) initWithDatabaseID:*(a1 + 72)];
  [v8 setPersistentID:v3];

  [v8 setMailboxURL:*(a1 + 32)];
  [v8 setUserInitiated:*(a1 + 112)];
  if (*(a1 + 80))
  {
    v4 = [*(a1 + 40) mailboxURLForDatabaseID:?];
  }

  else
  {
    v4 = 0;
  }

  [v8 setSourceMailboxURL:v4];
  if (*(a1 + 88))
  {
    v5 = [*(a1 + 40) mailboxURLForDatabaseID:?];
  }

  else
  {
    v5 = 0;
  }

  [v8 setDestinationMailboxURL:v5];
  v6 = *(a1 + 96) - 1;
  if (v6 < 6 && ((0x33u >> v6) & 1) != 0)
  {
    [v8 setTransferType:qword_1C6471DB8[v6]];
  }

  else
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:*(a1 + 104) object:*(a1 + 40) file:@"EDLocalActionPersistence.m" lineNumber:317 description:@"Creating a transfer action when we don't have a transfer action type"];
  }

  [v8 setItemsToDownload:*(a1 + 48)];
  [v8 setItemsToCopy:*(a1 + 56)];
  [v8 setItemsToDelete:*(a1 + 64)];
}

- (id)_transferUndownloadedActionForRow:(id)row connection:(id)connection
{
  v39 = *MEMORY[0x1E69E9840];
  rowCopy = row;
  connectionCopy = connection;
  v9 = [rowCopy objectForKeyedSubscript:@"ROWID"];
  databaseIDValue = [v9 databaseIDValue];

  v11 = [rowCopy objectForKeyedSubscript:@"action_type"];
  integerValue = [v11 integerValue];

  v12 = [rowCopy objectForKeyedSubscript:@"mailbox"];
  databaseIDValue2 = [v12 databaseIDValue];

  v14 = [rowCopy objectForKeyedSubscript:@"source_mailbox"];
  databaseIDValue3 = [v14 databaseIDValue];

  v15 = [rowCopy objectForKeyedSubscript:@"destination_mailbox"];
  databaseIDValue4 = [v15 databaseIDValue];

  v17 = [rowCopy objectForKeyedSubscript:@"user_initiated"];
  bOOLValue = [v17 BOOLValue];

  v19 = objc_opt_new();
  [(EDLocalActionPersistence *)self _findMessagesForAction:databaseIDValue remoteIDs:v19 messages:0 connection:connectionCopy];
  if ([v19 count] == 1)
  {
    v25 = connectionCopy;
    anyObject = [v19 anyObject];
    v21 = [(EDLocalActionPersistence *)self mailboxURLForDatabaseID:databaseIDValue2];
    if (([anyObject isEqualToString:@"1"]& 1) != 0)
    {
      v22 = 0;
    }

    else
    {
      v23 = objc_alloc(MEMORY[0x1E699B370]);
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __73__EDLocalActionPersistence__transferUndownloadedActionForRow_connection___block_invoke;
      v28[3] = &unk_1E8252F68;
      v32 = databaseIDValue;
      v37 = bOOLValue;
      v29 = v21;
      selfCopy = self;
      v33 = databaseIDValue3;
      v34 = databaseIDValue4;
      v35 = integerValue;
      v36 = a2;
      v31 = anyObject;
      v22 = [v23 initWithBuilder:v28];

      connectionCopy = v25;
    }
  }

  else
  {
    anyObject = +[EDLocalActionPersistence log];
    if (os_log_type_enabled(anyObject, OS_LOG_TYPE_FAULT))
    {
      -[EDLocalActionPersistence _transferUndownloadedActionForRow:connection:].cold.1(buf, [v19 count], anyObject);
    }

    v22 = 0;
  }

  return v22;
}

void __73__EDLocalActionPersistence__transferUndownloadedActionForRow_connection___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [objc_alloc(MEMORY[0x1E699B2D0]) initWithDatabaseID:*(a1 + 56)];
  [v8 setPersistentID:v3];

  [v8 setMailboxURL:*(a1 + 32)];
  [v8 setUserInitiated:*(a1 + 96)];
  v4 = [*(a1 + 40) mailboxURLForDatabaseID:*(a1 + 64)];
  [v8 setSourceMailboxURL:v4];
  v5 = [*(a1 + 40) mailboxURLForDatabaseID:*(a1 + 72)];
  [v8 setDestinationMailboxURL:v5];
  v6 = *(a1 + 80) - 8;
  if (v6 >= 3)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:*(a1 + 88) object:*(a1 + 40) file:@"EDLocalActionPersistence.m" lineNumber:368 description:@"Creating a transfer action when we don't have a transfer action type"];
  }

  else
  {
    [v8 setTransferType:qword_1C6471DE8[v6]];
  }

  [v8 setOldestPersistedRemoteID:*(a1 + 48)];
}

- (id)_flagChangeActionForRow:(id)row connection:(id)connection
{
  rowCopy = row;
  connectionCopy = connection;
  v8 = [rowCopy objectForKeyedSubscript:@"ROWID"];
  databaseIDValue = [v8 databaseIDValue];

  v10 = [rowCopy objectForKeyedSubscript:@"mailbox"];
  databaseIDValue2 = [v10 databaseIDValue];

  v12 = [rowCopy objectForKeyedSubscript:@"user_initiated"];
  bOOLValue = [v12 BOOLValue];

  v14 = objc_opt_new();
  v15 = objc_opt_new();
  [(EDLocalActionPersistence *)self _findMessagesForAction:databaseIDValue remoteIDs:v14 messages:v15 connection:connectionCopy];
  v16 = [(EDLocalActionPersistence *)self _flagChangeForAction:databaseIDValue connection:connectionCopy];
  if ([v14 count] || objc_msgSend(v15, "count"))
  {
    v17 = [(EDLocalActionPersistence *)self mailboxURLForDatabaseID:databaseIDValue2];
    v18 = objc_alloc(MEMORY[0x1E699B270]);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __63__EDLocalActionPersistence__flagChangeActionForRow_connection___block_invoke;
    v22[3] = &unk_1E8252F90;
    v27 = databaseIDValue;
    v19 = v17;
    v23 = v19;
    v28 = bOOLValue;
    v24 = v14;
    v25 = v15;
    v26 = v16;
    v20 = [v18 initWithBuilder:v22];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

void __63__EDLocalActionPersistence__flagChangeActionForRow_connection___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [objc_alloc(MEMORY[0x1E699B2D0]) initWithDatabaseID:*(a1 + 64)];
  [v4 setPersistentID:v3];

  [v4 setMailboxURL:*(a1 + 32)];
  [v4 setUserInitiated:*(a1 + 72)];
  [v4 setRemoteIDs:*(a1 + 40)];
  [v4 setMessages:*(a1 + 48)];
  [v4 setFlagChange:*(a1 + 56)];
}

- (id)_flagChangeAllActionForRow:(id)row connection:(id)connection
{
  v29 = *MEMORY[0x1E69E9840];
  rowCopy = row;
  connectionCopy = connection;
  v8 = [rowCopy objectForKeyedSubscript:@"ROWID"];
  databaseIDValue = [v8 databaseIDValue];

  v10 = [rowCopy objectForKeyedSubscript:@"mailbox"];
  databaseIDValue2 = [v10 databaseIDValue];

  v12 = [rowCopy objectForKeyedSubscript:@"user_initiated"];
  bOOLValue = [v12 BOOLValue];

  v14 = objc_opt_new();
  v15 = objc_opt_new();
  [(EDLocalActionPersistence *)self _findMessagesForAction:databaseIDValue remoteIDs:v14 messages:v15 connection:connectionCopy];
  if ([v14 count] == 1)
  {
    anyObject = [v14 anyObject];
    v17 = [(EDLocalActionPersistence *)self _flagChangeForAction:databaseIDValue connection:connectionCopy];
    v18 = [(EDLocalActionPersistence *)self mailboxURLForDatabaseID:databaseIDValue2];
    if (([anyObject isEqualToString:@"1"]& 1) != 0)
    {
      v19 = 0;
    }

    else
    {
      v20 = objc_alloc(MEMORY[0x1E699B280]);
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __66__EDLocalActionPersistence__flagChangeAllActionForRow_connection___block_invoke;
      v22[3] = &unk_1E8252FB8;
      v26 = databaseIDValue;
      v23 = v18;
      v27 = bOOLValue;
      v24 = anyObject;
      v25 = v17;
      v19 = [v20 initWithBuilder:v22];
    }
  }

  else
  {
    anyObject = +[EDLocalActionPersistence log];
    if (os_log_type_enabled(anyObject, OS_LOG_TYPE_FAULT))
    {
      -[EDLocalActionPersistence _flagChangeAllActionForRow:connection:].cold.1(buf, [v14 count], anyObject);
    }

    v19 = 0;
  }

  return v19;
}

void __66__EDLocalActionPersistence__flagChangeAllActionForRow_connection___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [objc_alloc(MEMORY[0x1E699B2D0]) initWithDatabaseID:*(a1 + 56)];
  [v4 setPersistentID:v3];

  [v4 setMailboxURL:*(a1 + 32)];
  [v4 setUserInitiated:*(a1 + 64)];
  [v4 setOldestPersistedRemoteID:*(a1 + 40)];
  [v4 setFlagChange:*(a1 + 48)];
}

- (id)_labelChangeActionForRow:(id)row connection:(id)connection
{
  v43[1] = *MEMORY[0x1E69E9840];
  rowCopy = row;
  connectionCopy = connection;
  v30 = rowCopy;
  v7 = [rowCopy objectForKeyedSubscript:@"ROWID"];
  databaseIDValue = [v7 databaseIDValue];

  v9 = [rowCopy objectForKeyedSubscript:@"mailbox"];
  databaseIDValue2 = [v9 databaseIDValue];

  v11 = [rowCopy objectForKeyedSubscript:@"user_initiated"];
  bOOLValue = [v11 BOOLValue];

  v13 = objc_opt_new();
  v28 = objc_opt_new();
  [EDLocalActionPersistence _findMessagesForAction:"_findMessagesForAction:remoteIDs:messages:connection:" remoteIDs:databaseIDValue messages:v13 connection:?];
  v14 = objc_opt_new();
  v26 = objc_opt_new();
  v27 = [connectionCopy preparedStatementForQueryString:{@"SELECT label, do_add FROM action_labels WHERE action = ?"}];
  gmailLabelPersistence = [(EDLocalActionPersistence *)self gmailLabelPersistence];
  v16 = [MEMORY[0x1E696AD98] numberWithLongLong:{databaseIDValue, gmailLabelPersistence, v14}];
  v43[0] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:1];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __64__EDLocalActionPersistence__labelChangeActionForRow_connection___block_invoke;
  v39[3] = &unk_1E8252FE0;
  v18 = gmailLabelPersistence;
  v40 = v18;
  v19 = v14;
  v41 = v19;
  v20 = v26;
  v42 = v20;
  [v27 executeWithIndexedBindings:v17 usingBlock:v39 error:0];

  if (([v13 count] || objc_msgSend(v28, "count")) && (objc_msgSend(v19, "count") || objc_msgSend(v20, "count")))
  {
    v21 = [(EDLocalActionPersistence *)self mailboxURLForDatabaseID:databaseIDValue2];
    v22 = objc_alloc(MEMORY[0x1E699B2C0]);
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __64__EDLocalActionPersistence__labelChangeActionForRow_connection___block_invoke_2;
    v31[3] = &unk_1E8253008;
    v37 = databaseIDValue;
    v23 = v21;
    v32 = v23;
    v38 = bOOLValue;
    v33 = v13;
    v34 = v28;
    v35 = v19;
    v36 = v20;
    v24 = [v22 initWithBuilder:v31];
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

void __64__EDLocalActionPersistence__labelChangeActionForRow_connection___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 objectForKeyedSubscript:@"label"];
  v4 = [v3 integerValue];

  v5 = [*(a1 + 32) labelForDatabaseID:v4];
  if (v5)
  {
    v6 = [v10 objectForKeyedSubscript:@"do_add"];
    v7 = [v6 numberValue];
    v8 = [v7 BOOLValue];

    v9 = 48;
    if (v8)
    {
      v9 = 40;
    }

    [*(a1 + v9) addObject:v5];
  }
}

void __64__EDLocalActionPersistence__labelChangeActionForRow_connection___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [objc_alloc(MEMORY[0x1E699B2D0]) initWithDatabaseID:*(a1 + 72)];
  [v4 setPersistentID:v3];

  [v4 setMailboxURL:*(a1 + 32)];
  [v4 setUserInitiated:*(a1 + 80)];
  [v4 setRemoteIDs:*(a1 + 40)];
  [v4 setMessages:*(a1 + 48)];
  [v4 setLabelsToAdd:*(a1 + 56)];
  [v4 setLabelsToRemove:*(a1 + 64)];
}

- (void)_findMessagesForAction:(int64_t)action remoteIDs:(id)ds messages:(id)messages connection:(id)connection
{
  v20[1] = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  messagesCopy = messages;
  v12 = [connection preparedStatementForQueryString:{@"SELECT remote_id, message FROM action_messages WHERE action = ?"}];
  v13 = [MEMORY[0x1E696AD98] numberWithLongLong:action];
  v20[0] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __81__EDLocalActionPersistence__findMessagesForAction_remoteIDs_messages_connection___block_invoke;
  v17[3] = &unk_1E8252FE0;
  v17[4] = self;
  v15 = messagesCopy;
  v18 = v15;
  v16 = dsCopy;
  v19 = v16;
  [v12 executeWithIndexedBindings:v14 usingBlock:v17 error:0];
}

void __81__EDLocalActionPersistence__findMessagesForAction_remoteIDs_messages_connection___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 objectForKeyedSubscript:@"remote_id"];
  v4 = [v3 stringValue];

  v5 = *(a1 + 32);
  v6 = [v10 objectForKeyedSubscript:@"message"];
  v7 = [v5 messageForDatabaseID:{objc_msgSend(v6, "databaseIDValue")}];

  if (v7)
  {
    v8 = 40;
    v9 = v7;
  }

  else
  {
    if (!v4)
    {
      goto LABEL_6;
    }

    v8 = 48;
    v9 = v4;
  }

  [*(a1 + v8) addObject:v9];
LABEL_6:
}

- (id)_flagChangeForAction:(int64_t)action connection:(id)connection
{
  connectionCopy = connection;
  v6 = objc_alloc(MEMORY[0x1E699B300]);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__EDLocalActionPersistence__flagChangeForAction_connection___block_invoke;
  v10[3] = &unk_1E8253030;
  v7 = connectionCopy;
  v11 = v7;
  actionCopy = action;
  v8 = [v6 initWithBuilder:v10];

  return v8;
}

void __60__EDLocalActionPersistence__flagChangeForAction_connection___block_invoke(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) preparedStatementForQueryString:{@"SELECT flag_type, flag_value FROM action_flags WHERE action = ?"}];
  v5 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 40)];
  v12[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__EDLocalActionPersistence__flagChangeForAction_connection___block_invoke_2;
  v10[3] = &unk_1E8250300;
  v7 = v3;
  v11 = v7;
  v9 = 0;
  [v4 executeWithIndexedBindings:v6 usingBlock:v10 error:&v9];
  v8 = v9;
}

void __60__EDLocalActionPersistence__flagChangeForAction_connection___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = [v16 objectForKeyedSubscript:@"flag_type"];
  v4 = [v3 numberValue];
  v5 = [v4 unsignedIntegerValue];

  if (v5 > 5)
  {
    if (v5 <= 7)
    {
      v11 = *(a1 + 32);
      v7 = [v16 objectForKeyedSubscript:@"flag_value"];
      [v7 numberValue];
      if (v5 == 6)
        v8 = {;
        [v11 changesForwardedTo:{objc_msgSend(v8, "BOOLValue")}];
      }

      else
        v8 = {;
        [v11 changesRedirectedTo:{objc_msgSend(v8, "BOOLValue")}];
      }
    }

    else
    {
      switch(v5)
      {
        case 8:
          v14 = *(a1 + 32);
          v7 = [v16 objectForKeyedSubscript:@"flag_value"];
          v8 = [v7 numberValue];
          [v14 changesJunkLevelSetByUserTo:{objc_msgSend(v8, "BOOLValue")}];
          break;
        case 9:
          v15 = *(a1 + 32);
          v7 = [v16 objectForKeyedSubscript:@"flag_value"];
          v8 = [v7 numberValue];
          [v15 changesJunkLevelTo:{objc_msgSend(v8, "unsignedIntegerValue")}];
          break;
        case 10:
          v9 = *(a1 + 32);
          v7 = [v16 objectForKeyedSubscript:@"flag_value"];
          v8 = [v7 numberValue];
          [v9 changesFlagColorTo:{objc_msgSend(v8, "unsignedIntegerValue")}];
          break;
        default:
          goto LABEL_23;
      }
    }
  }

  else if (v5 <= 2)
  {
    if (v5 == 1)
    {
      v12 = *(a1 + 32);
      v7 = [v16 objectForKeyedSubscript:@"flag_value"];
      v8 = [v7 numberValue];
      [v12 changesReadTo:{objc_msgSend(v8, "BOOLValue")}];
    }

    else
    {
      if (v5 != 2)
      {
        goto LABEL_23;
      }

      v10 = *(a1 + 32);
      v7 = [v16 objectForKeyedSubscript:@"flag_value"];
      v8 = [v7 numberValue];
      [v10 changesDeletedTo:{objc_msgSend(v8, "BOOLValue")}];
    }
  }

  else if (v5 == 3)
  {
    v13 = *(a1 + 32);
    v7 = [v16 objectForKeyedSubscript:@"flag_value"];
    v8 = [v7 numberValue];
    [v13 changesRepliedTo:{objc_msgSend(v8, "BOOLValue")}];
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = [v16 objectForKeyedSubscript:@"flag_value"];
    [v7 numberValue];
    if (v5 == 4)
      v8 = {;
      [v6 changesFlaggedTo:{objc_msgSend(v8, "BOOLValue")}];
    }

    else
      v8 = {;
      [v6 changesDraftTo:{objc_msgSend(v8, "BOOLValue")}];
    }
  }

LABEL_23:
}

- (BOOL)persistFlagChangeAction:(id)action
{
  v20 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  mailboxURL = [actionCopy mailboxURL];
  v6 = [(EDLocalActionPersistence *)self mailboxDatabaseIDForURL:mailboxURL];

  v7 = +[EDLocalActionPersistence log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    messages = [actionCopy messages];
    *buf = 134218240;
    *&buf[4] = [messages count];
    *&buf[12] = 2050;
    *&buf[14] = v6;
    _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "Creating flag change action for %lu messages in mailbox %{public}llu", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v19 = 1;
  database = [(EDLocalActionPersistence *)self database];
  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDLocalActionPersistence persistFlagChangeAction:]"];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __52__EDLocalActionPersistence_persistFlagChangeAction___block_invoke;
  v14[3] = &unk_1E8253058;
  v16 = buf;
  v17 = v6;
  v14[4] = self;
  v11 = actionCopy;
  v15 = v11;
  [database __performWriteWithCaller:v10 usingBlock:v14];

  v12 = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);

  return v12 & 1;
}

uint64_t __52__EDLocalActionPersistence_persistFlagChangeAction___block_invoke(uint64_t a1, void *a2)
{
  v30[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 preparedStatementForQueryString:{@"INSERT INTO local_message_actions (action_type, mailbox) VALUES (?, ?)"}];
  v30[0] = &unk_1F45E66D0;
  v5 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 56)];
  v30[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
  v26 = 0;
  v7 = [v4 executeWithIndexedBindings:v6 usingBlock:0 error:&v26];
  v8 = v26;

  if (v7)
  {
    v9 = [v3 lastInsertedDatabaseID];
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) flagChange];
    [v10 _addFlagChange:v11 actionID:v9 connection:v3];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = [*(a1 + 40) messages];
    v13 = [v12 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v13)
    {
      v14 = *v23;
      do
      {
        v15 = 0;
        do
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v12);
          }

          [*(a1 + 32) _addActionMessageForMessage:*(*(&v22 + 1) + 8 * v15++) destinationMessage:0 actionID:v9 actionPhase:0 connection:v3];
        }

        while (v13 != v15);
        v13 = [v12 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v13);
    }

    goto LABEL_17;
  }

  v16 = [v8 domain];
  if (![v16 isEqualToString:*MEMORY[0x1E699B770]])
  {

    goto LABEL_16;
  }

  v17 = [v8 code] == 19;

  if (!v17)
  {
LABEL_16:
    [v3 handleError:v8 message:@"Adding flag change action"];
    *(*(*(a1 + 48) + 8) + 24) = 0;
    goto LABEL_17;
  }

  v18 = +[EDLocalActionPersistence log];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(a1 + 56);
    *buf = 134349056;
    v29 = v19;
    _os_log_impl(&dword_1C61EF000, v18, OS_LOG_TYPE_DEFAULT, "Got foreign key constraint error adding action for mailbox %{public}llu", buf, 0xCu);
  }

LABEL_17:
  v20 = *(*(*(a1 + 48) + 8) + 24);

  return v20 & 1;
}

- (BOOL)persistFlagChangeUndownloadedAction:(id)action
{
  v20 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  mailboxURL = [actionCopy mailboxURL];
  v6 = [(EDLocalActionPersistence *)self mailboxDatabaseIDForURL:mailboxURL];

  v7 = +[EDLocalActionPersistence log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134349056;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "Creating flag change all action in mailbox %{public}llu", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v18 = 0x2020000000;
  v19 = 1;
  database = [(EDLocalActionPersistence *)self database];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDLocalActionPersistence persistFlagChangeUndownloadedAction:]"];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__EDLocalActionPersistence_persistFlagChangeUndownloadedAction___block_invoke;
  v13[3] = &unk_1E8253058;
  p_buf = &buf;
  v16 = v6;
  v13[4] = self;
  v10 = actionCopy;
  v14 = v10;
  [database __performWriteWithCaller:v9 usingBlock:v13];

  v11 = *(*(&buf + 1) + 24);
  _Block_object_dispose(&buf, 8);

  return v11 & 1;
}

uint64_t __64__EDLocalActionPersistence_persistFlagChangeUndownloadedAction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E699B910]) initWithTable:@"local_message_actions" conflictResolution:4];
  [v4 setObject:&unk_1F45E66E8 forKeyedSubscript:@"action_type"];
  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 56)];
  [v4 setObject:v6 forKeyedSubscript:@"mailbox"];

  v14 = 0;
  *(*(*(a1 + 48) + 8) + 24) = [v3 executeInsertStatement:v4 rowsChanged:&v14];
  v5 = v14;
  LODWORD(v6) = *(*(*(a1 + 48) + 8) + 24);
  if (v6 != 1 || v14 == 0)
  {
    v8 = *MEMORY[0x1E699A728];
    if ((v6 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v8 = [v3 lastInsertedDatabaseID];
    v9 = *(a1 + 32);
    v10 = [*(a1 + 40) flagChange];
    *(*(*(a1 + 48) + 8) + 24) = [v9 _addFlagChange:v10 actionID:v8 connection:v3];

    LOBYTE(v6) = *(*(*(a1 + 48) + 8) + 24);
    if ((v6 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E699B910]) initWithTable:@"action_messages"];
    v11 = [MEMORY[0x1E696AD98] numberWithLongLong:v8];
    [v6 setObject:v11 forKeyedSubscript:@"action"];

    v12 = [*(a1 + 40) oldestPersistedRemoteID];
    [v6 setObject:v12 forKeyedSubscript:@"remote_id"];

    [v6 setObject:&unk_1F45E6700 forKeyedSubscript:@"action_phase"];
    *(*(*(a1 + 48) + 8) + 24) = [v3 executeInsertStatement:v6 error:0];

    LOBYTE(v6) = *(*(*(a1 + 48) + 8) + 24);
  }

LABEL_11:

  return v6 & 1;
}

- (BOOL)_addFlagChange:(id)change actionID:(int64_t)d connection:(id)connection
{
  changeCopy = change;
  connectionCopy = connection;
  v9 = [connectionCopy preparedStatementForQueryString:{@"INSERT INTO action_flags (action, flag_type, flag_value) VALUES (?, ?, ?)"}];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 1;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__16;
  v26 = __Block_byref_object_dispose__16;
  v27 = 0;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __63__EDLocalActionPersistence__addFlagChange_actionID_connection___block_invoke;
  v17 = &unk_1E8253080;
  v19 = &v28;
  v10 = v9;
  v20 = &v22;
  dCopy = d;
  v18 = v10;
  v11 = _Block_copy(&v14);
  v11[2](v11, [changeCopy readChanged], 1, objc_msgSend(changeCopy, "read"));
  v11[2](v11, [changeCopy deletedChanged], 2, objc_msgSend(changeCopy, "deleted"));
  v11[2](v11, [changeCopy repliedChanged], 3, objc_msgSend(changeCopy, "replied"));
  v11[2](v11, [changeCopy flaggedChanged], 4, objc_msgSend(changeCopy, "flagged"));
  v11[2](v11, [changeCopy draftChanged], 5, objc_msgSend(changeCopy, "draft"));
  v11[2](v11, [changeCopy forwardedChanged], 6, objc_msgSend(changeCopy, "forwarded"));
  v11[2](v11, [changeCopy redirectedChanged], 7, objc_msgSend(changeCopy, "redirected"));
  v11[2](v11, [changeCopy junkLevelSetByUserChanged], 8, objc_msgSend(changeCopy, "junkLevelSetByUser"));
  v11[2](v11, [changeCopy junkLevelChanged], 9, objc_msgSend(changeCopy, "junkLevel"));
  v11[2](v11, [changeCopy flagColorChanged], 10, objc_msgSend(changeCopy, "flagColor"));
  if (v29[3])
  {
    v12 = 1;
  }

  else
  {
    [connectionCopy handleError:v23[5] message:@"Adding flag change records"];
    v12 = *(v29 + 24);
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v12 & 1;
}

void __63__EDLocalActionPersistence__addFlagChange_actionID_connection___block_invoke(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v15[3] = *MEMORY[0x1E69E9840];
  if (*(*(a1[5] + 8) + 24) == 1 && a2 != 0)
  {
    v8 = a1[4];
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:a1[7]];
    v15[0] = v9;
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v15[1] = v10;
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    v15[2] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:3];
    v13 = *(a1[6] + 8);
    obj = *(v13 + 40);
    LOBYTE(v8) = [v8 executeWithIndexedBindings:v12 usingBlock:0 error:&obj];
    objc_storeStrong((v13 + 40), obj);
    *(*(a1[5] + 8) + 24) = v8;
  }
}

- (BOOL)persistTransferAction:(id)action
{
  v68 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  v5 = +[EDLocalActionPersistence log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v53 = actionCopy;
    _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "Persisting the transferAction: %@", buf, 0xCu);
  }

  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 1;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = *MEMORY[0x1E699A728];
  sourceMailboxURL = [(__CFString *)actionCopy sourceMailboxURL];
  if (sourceMailboxURL)
  {
    v7 = MEMORY[0x1E696AD98];
    sourceMailboxURL2 = [(__CFString *)actionCopy sourceMailboxURL];
    null = [v7 numberWithLongLong:{-[EDLocalActionPersistence mailboxDatabaseIDForURL:](self, "mailboxDatabaseIDForURL:", sourceMailboxURL2)}];
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  destinationMailboxURL = [(__CFString *)actionCopy destinationMailboxURL];
  if (destinationMailboxURL)
  {
    v11 = MEMORY[0x1E696AD98];
    destinationMailboxURL2 = [(__CFString *)actionCopy destinationMailboxURL];
    null2 = [v11 numberWithLongLong:{-[EDLocalActionPersistence mailboxDatabaseIDForURL:](self, "mailboxDatabaseIDForURL:", destinationMailboxURL2)}];
  }

  else
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  database = [(EDLocalActionPersistence *)self database];
  v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDLocalActionPersistence persistTransferAction:]"];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __50__EDLocalActionPersistence_persistTransferAction___block_invoke;
  v37[3] = &unk_1E82530A8;
  v15 = actionCopy;
  v38 = v15;
  selfCopy = self;
  v42 = &v48;
  v16 = null;
  v40 = v16;
  v17 = null2;
  v41 = v17;
  v43 = &v44;
  [database __performWriteWithCaller:v14 usingBlock:v37];

  transferType = [(__CFString *)v15 transferType];
  if (transferType >= 4)
  {
    v35 = 0;
  }

  else
  {
    v35 = off_1E8253138[transferType];
  }

  itemsToDownload = [(__CFString *)v15 itemsToDownload];
  v34 = [itemsToDownload count];
  itemsToCopy = [(__CFString *)v15 itemsToCopy];
  v33 = [itemsToCopy count];
  itemsToDelete = [(__CFString *)v15 itemsToDelete];
  v22 = [itemsToDelete count];

  v23 = +[EDLocalActionPersistence log];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = v45[3];
    itemsToDownload2 = [(__CFString *)v15 itemsToDownload];
    v25 = [itemsToDownload2 count];
    itemsToCopy2 = [(__CFString *)v15 itemsToCopy];
    v27 = [itemsToCopy2 count];
    itemsToDelete2 = [(__CFString *)v15 itemsToDelete];
    v29 = [itemsToDelete2 count];
    *buf = 138545154;
    v53 = v35;
    v54 = 2048;
    v55 = v24;
    v56 = 2048;
    v57 = v33 + v34 + v22;
    v58 = 2048;
    v59 = v25;
    v60 = 2048;
    v61 = v27;
    v62 = 2048;
    v63 = v29;
    v64 = 2112;
    v65 = v16;
    v66 = 2112;
    v67 = v17;
    _os_log_impl(&dword_1C61EF000, v23, OS_LOG_TYPE_DEFAULT, "Created %{public}@ action %lld for %lu messages (%lu download, %lu copy, %lu delete) in source mailbox %@, destination %@", buf, 0x52u);
  }

  v30 = *(v49 + 24);
  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v48, 8);

  return v30 & 1;
}

uint64_t __50__EDLocalActionPersistence_persistTransferAction___block_invoke(uint64_t a1, void *a2)
{
  v61[5] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v44 = [v3 preparedStatementForQueryString:{@"INSERT INTO local_message_actions (action_type, user_initiated, mailbox, source_mailbox, destination_mailbox) VALUES (?, ?, ?, ?, ?)"}];
  v4 = [*(a1 + 32) transferType];
  if (v4 >= 4)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_1C6471E00[v4];
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) mailboxURL];
  v8 = [v6 mailboxDatabaseIDForURL:v7];

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
  v61[0] = v9;
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "userInitiated")}];
  v61[1] = v10;
  v11 = [MEMORY[0x1E696AD98] numberWithLongLong:v8];
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v61[2] = v11;
  v61[3] = v12;
  v61[4] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:5];
  v57 = 0;
  v15 = [v44 executeWithIndexedBindings:v14 usingBlock:0 error:&v57];
  v16 = v57;
  *(*(*(a1 + 64) + 8) + 24) = v15;

  if (*(*(*(a1 + 64) + 8) + 24) != 1)
  {
    goto LABEL_31;
  }

  *(*(*(a1 + 72) + 8) + 24) = [v3 lastInsertedDatabaseID];
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v17 = [*(a1 + 32) itemsToDownload];
  v18 = [v17 countByEnumeratingWithState:&v53 objects:v60 count:16];
  if (v18)
  {
    v19 = *v54;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v54 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = *(*(&v53 + 1) + 8 * i);
        v22 = *(a1 + 40);
        v23 = [v21 sourceMessage];
        v24 = [v21 destinationMessage];
        [v22 _addActionMessageForMessage:v23 destinationMessage:v24 actionID:*(*(*(a1 + 72) + 8) + 24) actionPhase:1 connection:v3];
      }

      v18 = [v17 countByEnumeratingWithState:&v53 objects:v60 count:16];
    }

    while (v18);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v25 = [*(a1 + 32) itemsToCopy];
  v26 = [v25 countByEnumeratingWithState:&v49 objects:v59 count:16];
  if (v26)
  {
    v27 = *v50;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v50 != v27)
        {
          objc_enumerationMutation(v25);
        }

        v29 = *(*(&v49 + 1) + 8 * j);
        v30 = *(a1 + 40);
        v31 = [v29 sourceMessage];
        v32 = [v29 destinationMessage];
        [v30 _addActionMessageForMessage:v31 destinationMessage:v32 actionID:*(*(*(a1 + 72) + 8) + 24) actionPhase:3 connection:v3];
      }

      v26 = [v25 countByEnumeratingWithState:&v49 objects:v59 count:16];
    }

    while (v26);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v33 = [*(a1 + 32) itemsToDelete];
  v34 = [v33 countByEnumeratingWithState:&v45 objects:v58 count:16];
  if (v34)
  {
    v35 = *v46;
    do
    {
      for (k = 0; k != v34; ++k)
      {
        if (*v46 != v35)
        {
          objc_enumerationMutation(v33);
        }

        v37 = *(*(&v45 + 1) + 8 * k);
        v38 = [v37 sourceMessage];

        v39 = *(a1 + 40);
        if (v38)
        {
          v40 = [v37 sourceMessage];
          v41 = [v37 destinationMessage];
          [v39 _addActionMessageForMessage:v40 destinationMessage:v41 actionID:*(*(*(a1 + 72) + 8) + 24) actionPhase:4 connection:v3];
        }

        else
        {
          v40 = [v37 sourceRemoteID];
          [v39 _addActionMessageForSourceRemoteID:v40 actionID:*(*(*(a1 + 72) + 8) + 24) connection:v3];
        }
      }

      v34 = [v33 countByEnumeratingWithState:&v45 objects:v58 count:16];
    }

    while (v34);
  }

  if (*(*(*(a1 + 64) + 8) + 24))
  {
    v42 = 1;
  }

  else
  {
LABEL_31:
    [v3 handleError:v16 message:@"Adding copy action"];
    v42 = *(*(*(a1 + 64) + 8) + 24);
  }

  return v42 & 1;
}

- (BOOL)persistTransferUndownloadedAction:(id)action
{
  v51 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 1;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = *MEMORY[0x1E699A728];
  sourceMailboxURL = [actionCopy sourceMailboxURL];
  if (sourceMailboxURL)
  {
    v6 = MEMORY[0x1E696AD98];
    sourceMailboxURL2 = [actionCopy sourceMailboxURL];
    v8 = [v6 numberWithLongLong:{-[EDLocalActionPersistence mailboxDatabaseIDForURL:](self, "mailboxDatabaseIDForURL:", sourceMailboxURL2)}];
  }

  else
  {
    v8 = 0;
  }

  destinationMailboxURL = [actionCopy destinationMailboxURL];
  if (destinationMailboxURL)
  {
    v10 = MEMORY[0x1E696AD98];
    destinationMailboxURL2 = [actionCopy destinationMailboxURL];
    v12 = [v10 numberWithLongLong:{-[EDLocalActionPersistence mailboxDatabaseIDForURL:](self, "mailboxDatabaseIDForURL:", destinationMailboxURL2)}];
  }

  else
  {
    v12 = 0;
  }

  database = [(EDLocalActionPersistence *)self database];
  v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDLocalActionPersistence persistTransferUndownloadedAction:]"];
  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = __62__EDLocalActionPersistence_persistTransferUndownloadedAction___block_invoke;
  v28 = &unk_1E82530D0;
  v15 = actionCopy;
  v29 = v15;
  selfCopy = self;
  v16 = v8;
  v31 = v16;
  v17 = v12;
  v32 = v17;
  v33 = &v39;
  v34 = &v35;
  [database __performWriteWithCaller:v14 usingBlock:&v25];

  transferType = [v15 transferType];
  if (transferType >= 4)
  {
    v19 = 0;
  }

  else
  {
    v19 = off_1E8253138[transferType];
  }

  v20 = +[EDLocalActionPersistence log];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = v36[3];
    v22 = *(v40 + 24);
    *buf = 138544130;
    v44 = v19;
    v45 = 2048;
    v46 = v21;
    v47 = 2112;
    v48 = v17;
    v49 = 1024;
    v50 = v22;
    _os_log_impl(&dword_1C61EF000, v20, OS_LOG_TYPE_DEFAULT, "Created %{public}@ action %lld for undownloaded message in mailbox %@ (success = %d)", buf, 0x26u);
  }

  v23 = *(v40 + 24);
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);

  return v23 & 1;
}

uint64_t __62__EDLocalActionPersistence_persistTransferUndownloadedAction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) transferType];
  if (v4 >= 4)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_1C6471E20[v4];
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) mailboxURL];
  v8 = [v6 mailboxDatabaseIDForURL:v7];

  v9 = [objc_alloc(MEMORY[0x1E699B910]) initWithTable:@"local_message_actions" conflictResolution:4];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
  [v9 setObject:v10 forKeyedSubscript:@"action_type"];

  v11 = [MEMORY[0x1E696AD98] numberWithLongLong:v8];
  [v9 setObject:v11 forKeyedSubscript:@"mailbox"];

  v12 = *(a1 + 48);
  if (v12)
  {
    [v9 setObject:v12 forKeyedSubscript:@"source_mailbox"];
  }

  v13 = *(a1 + 56);
  if (v13)
  {
    [v9 setObject:v13 forKeyedSubscript:@"destination_mailbox"];
  }

  v14 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "userInitiated")}];
  [v9 setObject:v14 forKeyedSubscript:@"user_initiated"];

  v20 = 0;
  *(*(*(a1 + 64) + 8) + 24) = [v3 executeInsertStatement:v9 rowsChanged:&v20];
  LODWORD(v14) = *(*(*(a1 + 64) + 8) + 24);
  if (v14 == 1 && v20)
  {
    *(*(*(a1 + 72) + 8) + 24) = [v3 lastInsertedDatabaseID];
    if ([*(a1 + 32) transferType] == 3)
    {
      v15 = 4;
    }

    else
    {
      v15 = 3;
    }

    v14 = [objc_alloc(MEMORY[0x1E699B910]) initWithTable:@"action_messages"];
    v16 = [MEMORY[0x1E696AD98] numberWithLongLong:*(*(*(a1 + 72) + 8) + 24)];
    [v14 setObject:v16 forKeyedSubscript:@"action"];

    v17 = [*(a1 + 32) oldestPersistedRemoteID];
    [v14 setObject:v17 forKeyedSubscript:@"remote_id"];

    v18 = [MEMORY[0x1E696AD98] numberWithInteger:v15];
    [v14 setObject:v18 forKeyedSubscript:@"action_phase"];

    *(*(*(a1 + 64) + 8) + 24) = [v3 executeInsertStatement:v14 error:0];
    LOBYTE(v14) = *(*(*(a1 + 64) + 8) + 24);
  }

  return v14 & 1;
}

- (BOOL)persistLabelChangeAction:(id)action
{
  v21 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  mailboxURL = [actionCopy mailboxURL];
  v6 = [(EDLocalActionPersistence *)self mailboxDatabaseIDForURL:mailboxURL];

  v7 = +[EDLocalActionPersistence log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    messages = [actionCopy messages];
    *buf = 134218240;
    *&buf[4] = [messages count];
    *&buf[12] = 2050;
    *&buf[14] = v6;
    _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "Creating label change action for %lu messages in mailbox %{public}llu", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v20 = 1;
  database = [(EDLocalActionPersistence *)self database];
  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDLocalActionPersistence persistLabelChangeAction:]"];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __53__EDLocalActionPersistence_persistLabelChangeAction___block_invoke;
  v14[3] = &unk_1E8253058;
  v17 = buf;
  v18 = v6;
  v11 = actionCopy;
  v15 = v11;
  selfCopy = self;
  [database __performWriteWithCaller:v10 usingBlock:v14];

  v12 = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);

  return v12 & 1;
}

uint64_t __53__EDLocalActionPersistence_persistLabelChangeAction___block_invoke(uint64_t a1, void *a2)
{
  v23[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 preparedStatementForQueryString:{@"INSERT INTO local_message_actions (action_type, mailbox) VALUES (?, ?)"}];
  v23[0] = &unk_1F45E6718;
  v5 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 56)];
  v23[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  *(*(*(a1 + 48) + 8) + 24) = [v4 executeWithIndexedBindings:v6 usingBlock:0 error:0];

  v7 = [v3 lastInsertedDatabaseID];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [*(a1 + 32) messages];
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = *v19;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v19 != v10)
      {
        objc_enumerationMutation(v8);
      }

      *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 40) _addActionMessageForMessage:*(*(&v18 + 1) + 8 * v11) destinationMessage:0 actionID:v7 actionPhase:0 connection:v3];
      if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if (*(*(*(a1 + 48) + 8) + 24) == 1 && (v12 = *(a1 + 40), [*(a1 + 32) labelsToAdd], v13 = objc_claimAutoreleasedReturnValue(), *(*(*(a1 + 48) + 8) + 24) = objc_msgSend(v12, "_setLabelsOnAction:labels:add:connection:", v7, v13, 1, v3), v13, (*(*(*(a1 + 48) + 8) + 24) & 1) != 0))
  {
    v14 = *(a1 + 40);
    v15 = [*(a1 + 32) labelsToRemove];
    *(*(*(a1 + 48) + 8) + 24) = [v14 _setLabelsOnAction:v7 labels:v15 add:0 connection:v3];

    v16 = *(*(*(a1 + 48) + 8) + 24);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

- (BOOL)_setLabelsOnAction:(int64_t)action labels:(id)labels add:(BOOL)add connection:(id)connection
{
  addCopy = add;
  v34 = *MEMORY[0x1E69E9840];
  labelsCopy = labels;
  connectionCopy = connection;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = labelsCopy;
  v8 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v8)
  {
    v23 = *v29;
    v9 = 0x1E696A000uLL;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        v12 = [connectionCopy preparedStatementForQueryString:{@"INSERT INTO action_labels (action, label, do_add) VALUES (?, ?, ?)"}];
        v13 = [*(v9 + 3480) numberWithLongLong:action];
        v32[0] = v13;
        persistentID = [v11 persistentID];
        v32[1] = persistentID;
        v15 = v9;
        v16 = [*(v9 + 3480) numberWithBool:addCopy];
        v32[2] = v16;
        v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:3];
        v27 = 0;
        v18 = [v12 executeWithIndexedBindings:v17 usingBlock:0 error:&v27];
        v19 = v27;

        v9 = v15;
        if ((v18 & 1) == 0)
        {
          [connectionCopy handleError:v19 message:@"Adding flag change messages"];

          v20 = 0;
          goto LABEL_11;
        }
      }

      v8 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v20 = 1;
LABEL_11:

  return v20;
}

- (BOOL)_addActionMessageForMessage:(id)message destinationMessage:(id)destinationMessage actionID:(int64_t)d actionPhase:(int64_t)phase connection:(id)connection
{
  v44 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  destinationMessageCopy = destinationMessage;
  connectionCopy = connection;
  v34 = connectionCopy;
  persistentID = [destinationMessageCopy persistentID];
  longLongValue = [persistentID longLongValue];

  if ((phase & 0xFFFFFFFFFFFFFFFDLL) != 1 || longLongValue)
  {
    persistentID2 = [messageCopy persistentID];
    longLongValue2 = [persistentID2 longLongValue];

    if (longLongValue2)
    {
      [MEMORY[0x1E696AD98] numberWithLongLong:longLongValue2];
    }

    else
    {
      [MEMORY[0x1E695DFB0] null];
    }
    v16 = ;
    remoteID = [messageCopy remoteID];
    v21 = remoteID;
    if (remoteID)
    {
      null = remoteID;
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
    }

    if (longLongValue)
    {
      [MEMORY[0x1E696AD98] numberWithLongLong:longLongValue];
    }

    else
    {
      [MEMORY[0x1E695DFB0] null];
    }
    v22 = ;
    if (phase)
    {
      [MEMORY[0x1E696AD98] numberWithInteger:phase];
    }

    else
    {
      [MEMORY[0x1E695DFB0] null];
    }
    v23 = ;
    v24 = [objc_alloc(MEMORY[0x1E699B910]) initWithTable:@"action_messages"];
    v25 = [MEMORY[0x1E696AD98] numberWithLongLong:d];
    [v24 setObject:v25 forKeyedSubscript:@"action"];

    [v24 setObject:v16 forKeyedSubscript:@"message"];
    [v24 setObject:null forKeyedSubscript:@"remote_id"];
    [v24 setObject:v22 forKeyedSubscript:@"destination_message"];
    [v24 setObject:v23 forKeyedSubscript:@"action_phase"];
    v35 = 0;
    v26 = [connectionCopy executeInsertStatement:v24 error:&v35];
    v27 = v35;
    v28 = v27;
    if (v26)
    {
      goto LABEL_19;
    }

    domain = [v27 domain];
    if ([domain isEqualToString:*MEMORY[0x1E699B770]])
    {
      v30 = [v28 code] == 19;

      if (v30)
      {
LABEL_19:
        v17 = 1;
LABEL_25:

        goto LABEL_26;
      }
    }

    else
    {
    }

    [v34 handleError:v28 message:@"Adding flag change messages"];
    v17 = 0;
    goto LABEL_25;
  }

  v16 = +[EDLocalActionPersistence log];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
    *buf = 134218754;
    dCopy = d;
    v38 = 2114;
    v39 = destinationMessageCopy;
    v40 = 2114;
    v41 = messageCopy;
    v42 = 2114;
    v43 = callStackSymbols;
    _os_log_error_impl(&dword_1C61EF000, v16, OS_LOG_TYPE_ERROR, "Adding action message for transfer without destination message ID - action ID: %lld, destination message: %{public}@, source message: %{public}@\n%{public}@", buf, 0x2Au);
  }

  v17 = 1;
LABEL_26:

  return v17;
}

- (BOOL)_addActionMessageForSourceRemoteID:(id)d actionID:(int64_t)iD connection:(id)connection
{
  dCopy = d;
  connectionCopy = connection;
  v9 = objc_autoreleasePoolPush();
  v10 = [objc_alloc(MEMORY[0x1E699B910]) initWithTable:@"action_messages"];
  v11 = [MEMORY[0x1E696AD98] numberWithLongLong:iD];
  [v10 setObject:v11 forKeyedSubscript:@"action"];

  [v10 setObject:dCopy forKeyedSubscript:@"remote_id"];
  [v10 setObject:&unk_1F45E6718 forKeyedSubscript:@"action_phase"];
  v15 = 0;
  v12 = [connectionCopy executeInsertStatement:v10 error:&v15];
  v13 = v15;
  if ((v12 & 1) == 0)
  {
    [connectionCopy handleError:v13 message:@"Adding flag change messages"];
  }

  objc_autoreleasePoolPop(v9);
  return v12;
}

- (BOOL)updateTransferAction:(id)action withResults:(id)results
{
  v37 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  resultsCopy = results;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 1;
  v8 = +[EDLocalActionPersistence log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    completedItems = [resultsCopy completedItems];
    v10 = [completedItems count];
    failedItems = [resultsCopy failedItems];
    v12 = [failedItems count];
    phaseForResults = [resultsCopy phaseForResults];
    *buf = 138544130;
    v30 = actionCopy;
    v31 = 2048;
    v32 = v10;
    v33 = 2048;
    v34 = v12;
    v35 = 2048;
    v36 = phaseForResults;
    _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "Persisting results for action %{public}@, completed %lu, failed %lu for phase %lu", buf, 0x2Au);
  }

  database = [(EDLocalActionPersistence *)self database];
  v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDLocalActionPersistence updateTransferAction:withResults:]"];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __61__EDLocalActionPersistence_updateTransferAction_withResults___block_invoke;
  v20[3] = &unk_1E82530F8;
  v16 = actionCopy;
  v21 = v16;
  v17 = resultsCopy;
  v22 = v17;
  selfCopy = self;
  v24 = &v25;
  [database __performWriteWithCaller:v15 usingBlock:v20];

  v18 = *(v26 + 24);
  _Block_object_dispose(&v25, 8);

  return v18 & 1;
}

uint64_t __61__EDLocalActionPersistence_updateTransferAction_withResults___block_invoke(uint64_t a1, void *a2)
{
  v80[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) persistentID];
  v5 = [v4 databaseID];

  v6 = [*(a1 + 40) failedItems];
  v7 = [v6 count];

  if (v7)
  {
    v8 = *(a1 + 48);
    v9 = [*(a1 + 40) failedItems];
    [v8 _deleteCopyItems:v9 actionID:v5 connection:v3];

    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) failedItems];
    [v10 updateWithFailedItems:v11 forPhase:{objc_msgSend(*(a1 + 40), "phaseForResults")}];

    v12 = +[EDLocalActionPersistence log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [*(a1 + 32) persistentID];
      v14 = [*(a1 + 40) failedItems];
      *buf = 138543618;
      v74 = v13;
      v75 = 2048;
      v76 = [v14 count];
      _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_DEFAULT, "Action %{public}@ had %lu failed items", buf, 0x16u);
    }
  }

  v15 = [*(a1 + 32) itemsToDownload];
  if ([v15 count])
  {
    goto LABEL_8;
  }

  v16 = [*(a1 + 32) itemsToCopy];
  if ([v16 count])
  {

LABEL_8:
    goto LABEL_9;
  }

  v41 = [*(a1 + 32) itemsToDelete];
  v42 = [v41 count] == 0;

  if (v42)
  {
    [*(a1 + 48) removeMessageAction:v5];
    goto LABEL_29;
  }

LABEL_9:
  v17 = *(a1 + 32);
  v18 = [*(a1 + 40) completedItems];
  [v17 updateWithCompletedItems:v18 forPhase:{objc_msgSend(*(a1 + 40), "phaseForResults")}];

  if ([*(a1 + 40) phaseForResults] != 1)
  {
    if ([*(a1 + 40) phaseForResults] == 3)
    {
      v22 = [*(a1 + 32) sourceMailboxURL];
      if ([*(a1 + 32) transferType] == 1 && (v23 = *(a1 + 48), objc_msgSend(*(a1 + 32), "destinationMailboxURL"), v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v23, "moveSupportedFromMailboxURL:toURL:", v22, v24), v24, (v25 & 1) == 0))
      {
        v48 = *(a1 + 48);
        v49 = [*(a1 + 40) completedItems];
        [v48 _updateCopyItems:v49 toPhase:4 actionID:v5 connection:v3];

        v50 = [*(a1 + 32) itemsToCopy];
        v51 = [v50 count] == 0;

        if (v51)
        {
          v65 = *(a1 + 48);
          v66 = [*(a1 + 32) sourceMailboxURL];
          v67 = [v65 mailboxURLIsInRemoteAccount:v66];

          if (!v67)
          {
            v70 = +[EDLocalActionPersistence log];
            if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
            {
              v71 = [*(a1 + 32) persistentID];
              *buf = 138543362;
              v74 = v71;
              _os_log_impl(&dword_1C61EF000, v70, OS_LOG_TYPE_DEFAULT, "Finished action %{public}@", buf, 0xCu);
            }

            [*(a1 + 48) removeMessageAction:v5];
            v30 = 0;
            *(*(*(a1 + 56) + 8) + 24) = 0;
            goto LABEL_41;
          }

          v30 = v22;
          v68 = +[EDLocalActionPersistence log];
          if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
          {
            v69 = [*(a1 + 32) persistentID];
            *buf = 138543362;
            v74 = v69;
            _os_log_impl(&dword_1C61EF000, v68, OS_LOG_TYPE_DEFAULT, "Action %{public}@ finished copying items", buf, 0xCu);
          }

          goto LABEL_19;
        }
      }

      else
      {
        v26 = *(a1 + 48);
        v27 = [*(a1 + 40) completedItems];
        [v26 _deleteCopyItems:v27 actionID:v5 connection:v3];

        v28 = [*(a1 + 32) itemsToCopy];
        v29 = [v28 count] == 0;

        if (v29)
        {
          v30 = v22;
          v31 = +[EDLocalActionPersistence log];
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v32 = [*(a1 + 32) persistentID];
            *buf = 138543362;
            v74 = v32;
            _os_log_impl(&dword_1C61EF000, v31, OS_LOG_TYPE_DEFAULT, "Finished action %{public}@", buf, 0xCu);
          }

          [*(a1 + 48) removeMessageAction:v5];
          *(*(*(a1 + 56) + 8) + 24) = 0;
LABEL_19:
          v22 = v30;
          goto LABEL_41;
        }
      }

      v30 = 0;
      goto LABEL_41;
    }

    if ([*(a1 + 40) phaseForResults] != 4)
    {
      goto LABEL_49;
    }

    v33 = *(a1 + 48);
    v34 = [*(a1 + 40) completedItems];
    [v33 _deleteCopyItems:v34 actionID:v5 connection:v3];

    v35 = [*(a1 + 32) itemsToDelete];
    LODWORD(v33) = [v35 count] == 0;

    if (!v33)
    {
      goto LABEL_49;
    }

    v36 = +[EDLocalActionPersistence log];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = [*(a1 + 32) persistentID];
      *buf = 138543362;
      v74 = v37;
      _os_log_impl(&dword_1C61EF000, v36, OS_LOG_TYPE_DEFAULT, "Finished action %{public}@", buf, 0xCu);
    }

    [*(a1 + 48) removeMessageAction:v5];
LABEL_29:
    *(*(*(a1 + 56) + 8) + 24) = 0;
    goto LABEL_49;
  }

  v19 = [*(a1 + 32) destinationMailboxURL];

  if (v19)
  {
    v20 = *(a1 + 48);
    v21 = [*(a1 + 40) completedItems];
    [v20 _updateCopyItems:v21 toPhase:3 actionID:v5 connection:v3];
  }

  else
  {
    v38 = [*(a1 + 32) transferType];
    v39 = *(a1 + 40);
    v40 = *(a1 + 48);
    if (v38 == 1)
    {
      v21 = [v39 completedItems];
      [v40 _updateCopyItems:v21 toPhase:4 actionID:v5 connection:v3];
    }

    else
    {
      v21 = [v39 completedItems];
      [v40 _deleteCopyItems:v21 actionID:v5 connection:v3];
    }
  }

  v43 = [*(a1 + 32) itemsToDownload];
  v44 = [v43 count] == 0;

  if (!v44)
  {
    goto LABEL_49;
  }

  v30 = [*(a1 + 32) destinationMailboxURL];
  if (!v30 && [*(a1 + 32) transferType] != 1)
  {
    v45 = +[EDLocalActionPersistence log];
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v46 = [*(a1 + 32) persistentID];
      *buf = 138543362;
      v74 = v46;
      _os_log_impl(&dword_1C61EF000, v45, OS_LOG_TYPE_DEFAULT, "Finished action %{public}@", buf, 0xCu);
    }

    [*(a1 + 48) removeMessageAction:v5];
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  v22 = +[EDLocalActionPersistence log];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v47 = [*(a1 + 32) persistentID];
    *buf = 138543362;
    v74 = v47;
    _os_log_impl(&dword_1C61EF000, v22, OS_LOG_TYPE_DEFAULT, "Action %{public}@ finished downloading items", buf, 0xCu);
  }

LABEL_41:

  if (v30)
  {
    v52 = [*(a1 + 48) mailboxDatabaseIDForURL:v30];
    v53 = [v3 preparedStatementForQueryString:@"UPDATE local_message_actions SET mailbox = :mailbox WHERE ROWID = :action"];
    v79[0] = @":action";
    v54 = [MEMORY[0x1E696AD98] numberWithLongLong:v5];
    v79[1] = @":mailbox";
    v80[0] = v54;
    v55 = [MEMORY[0x1E696AD98] numberWithLongLong:v52];
    v80[1] = v55;
    v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v80 forKeys:v79 count:2];

    v72 = 0;
    LOBYTE(v55) = [v53 executeWithNamedBindings:v56 usingBlock:0 error:&v72];
    v57 = v72;
    if ((v55 & 1) == 0)
    {
      [v3 handleError:v57 message:@"Updating action phase"];
    }

    v58 = [*(a1 + 32) sourceMailboxURL];
    v59 = [v30 isEqual:v58];
    v60 = @"destination mailbox";
    if (v59)
    {
      v60 = @"source mailbox";
    }

    v61 = v60;

    v62 = +[EDLocalActionPersistence log];
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      v63 = [*(a1 + 32) persistentID];
      *buf = 138543874;
      v74 = v63;
      v75 = 2112;
      v76 = v61;
      v77 = 2048;
      v78 = v52;
      _os_log_impl(&dword_1C61EF000, v62, OS_LOG_TYPE_DEFAULT, "Updating action %{public}@ to %@ (%lu)", buf, 0x20u);
    }
  }

LABEL_49:

  return 1;
}

- (BOOL)moveSupportedFromMailboxURL:(id)l toURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  [(EDLocalActionPersistence *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EDLocalActionPersistence moveSupportedFromMailboxURL:toURL:]", "EDLocalActionPersistence.m", 974, "0");
}

- (BOOL)mailboxURLIsInRemoteAccount:(id)account
{
  accountCopy = account;
  v4 = accountCopy;
  if (accountCopy)
  {
    if ([accountCopy ef_hasScheme:*MEMORY[0x1E699A698]] & 1) != 0 || (objc_msgSend(v4, "ef_hasScheme:", *MEMORY[0x1E699A690]))
    {
      v5 = 1;
    }

    else
    {
      v5 = [v4 ef_hasScheme:*MEMORY[0x1E699A688]];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_updateCopyItems:(id)items toPhase:(int64_t)phase actionID:(int64_t)d connection:(id)connection
{
  connectionCopy = connection;
  v10 = [(EDLocalActionPersistence *)self _whereClauseToFindCopyItems:items];
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UPDATE action_messages SET action_phase = %ld WHERE action = %llu AND %@", phase, d, v10];
  [connectionCopy executeStatementString:v11 errorMessage:@"Updating copy item phase"];
}

- (void)_deleteCopyItems:(id)items actionID:(int64_t)d connection:(id)connection
{
  connectionCopy = connection;
  v8 = [(EDLocalActionPersistence *)self _whereClauseToFindCopyItems:items];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DELETE FROM action_messages WHERE action = %llu AND %@", d, v8];
  [connectionCopy executeStatementString:v9 errorMessage:@"Deleting copy items"];
}

- (id)_whereClauseToFindCopyItems:(id)items
{
  v30 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = itemsCopy;
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v8)
  {
    v9 = *v26;
    do
    {
      v10 = 0;
      do
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v25 + 1) + 8 * v10);
        destinationMessage = [v11 destinationMessage];

        if (destinationMessage)
        {
          destinationMessage2 = [v11 destinationMessage];
          persistentID = [destinationMessage2 persistentID];
          [v6 addObject:persistentID];
LABEL_10:

          goto LABEL_11;
        }

        sourceRemoteID = [v11 sourceRemoteID];

        if (sourceRemoteID)
        {
          destinationMessage2 = [v11 sourceRemoteID];
          persistentID = [destinationMessage2 ef_quotedSQLEscapedString];
          [v5 addObject:persistentID];
          goto LABEL_10;
        }

        destinationMessage2 = [MEMORY[0x1E696AAA8] currentHandler];
        [destinationMessage2 handleFailureInMethod:a2 object:self file:@"EDLocalActionPersistence.m" lineNumber:1005 description:@"Copy item had neither a source remoteID or a destination message"];
LABEL_11:

        ++v10;
      }

      while (v8 != v10);
      v16 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
      v8 = v16;
    }

    while (v16);
  }

  if ([v5 count] && objc_msgSend(v6, "count"))
  {
    v17 = MEMORY[0x1E696AEC0];
    v18 = [v5 componentsJoinedByString:{@", "}];
    v19 = [v6 componentsJoinedByString:{@", "}];
    v20 = objc_msgSend(v17, "stringWithFormat:", @"(remote_id IN (%@) OR destination_message IN (%@)"), v18, v19;
  }

  else
  {
    v21 = [v5 count];
    v22 = MEMORY[0x1E696AEC0];
    if (v21)
    {
      v18 = [v5 componentsJoinedByString:{@", "}];
      [v22 stringWithFormat:@"remote_id IN (%@)", v18];
    }

    else
    {
      v18 = [v6 componentsJoinedByString:{@", "}];
      [v22 stringWithFormat:@"destination_message IN (%@)", v18];
    }
    v20 = ;
  }

  return v20;
}

- (id)_sourceRemoteIDListForCopyItems:(id)items
{
  v17 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = itemsCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        sourceRemoteID = [*(*(&v12 + 1) + 8 * i) sourceRemoteID];
        ef_quotedSQLEscapedString = [sourceRemoteID ef_quotedSQLEscapedString];
        [v4 addObject:ef_quotedSQLEscapedString];
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v4;
}

- (BOOL)updateTransferUndownloadedMessageAction:(id)action withResults:(id)results
{
  actionCopy = action;
  resultsCopy = results;
  completedItems = [resultsCopy completedItems];
  if ([resultsCopy phaseForResults] != 3 || objc_msgSend(actionCopy, "transferType") != 1)
  {
    goto LABEL_7;
  }

  sourceMailboxURL = [actionCopy sourceMailboxURL];
  destinationMailboxURL = [actionCopy destinationMailboxURL];
  if ([(EDLocalActionPersistence *)self moveSupportedFromMailboxURL:sourceMailboxURL toURL:destinationMailboxURL])
  {

LABEL_7:
    persistentID = [actionCopy persistentID];
    -[EDLocalActionPersistence removeMessageAction:](self, "removeMessageAction:", [persistentID databaseID]);

    v16 = 0;
    goto LABEL_8;
  }

  v11 = [completedItems count];

  if (!v11)
  {
    goto LABEL_7;
  }

  [actionCopy updateWithCompletedCopyItems:completedItems];
  persistentID2 = [actionCopy persistentID];
  databaseID = [persistentID2 databaseID];

  database = [(EDLocalActionPersistence *)self database];
  v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDLocalActionPersistence updateTransferUndownloadedMessageAction:withResults:]"];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __80__EDLocalActionPersistence_updateTransferUndownloadedMessageAction_withResults___block_invoke;
  v19[3] = &unk_1E8251998;
  v20 = completedItems;
  selfCopy = self;
  v23 = databaseID;
  v22 = actionCopy;
  [database __performWriteWithCaller:v15 usingBlock:v19];

  v16 = 1;
LABEL_8:

  return v16;
}

uint64_t __80__EDLocalActionPersistence_updateTransferUndownloadedMessageAction_withResults___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = *v20;
    do
    {
      v7 = 0;
      do
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(a1 + 40);
        v9 = [*(*(&v19 + 1) + 8 * v7) sourceRemoteID];
        [v8 _addActionMessageForSourceRemoteID:v9 actionID:*(a1 + 56) connection:v3];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  v10 = *(a1 + 40);
  v11 = [*(a1 + 48) sourceMailboxURL];
  v12 = [v10 mailboxDatabaseIDForURL:v11];

  v13 = [objc_alloc(MEMORY[0x1E699B960]) initWithTable:@"local_message_actions"];
  [v13 setObject:&unk_1F45E66D0 forKeyedSubscript:@"action_type"];
  v14 = [MEMORY[0x1E696AD98] numberWithLongLong:v12];
  [v13 setObject:v14 forKeyedSubscript:@"mailbox"];

  v15 = [MEMORY[0x1E699B8C8] column:@"ROWID"];
  v16 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 56)];
  v17 = [v15 equalTo:v16];
  [v13 setWhereClause:v17];

  [v3 executeUpdateStatement:v13 error:0];
  return 1;
}

- (void)updateFlagChangeAction:(id)action withRemainingUIDs:(id)ds
{
  actionCopy = action;
  dsCopy = ds;
  database = [(EDLocalActionPersistence *)self database];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDLocalActionPersistence updateFlagChangeAction:withRemainingUIDs:]"];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69__EDLocalActionPersistence_updateFlagChangeAction_withRemainingUIDs___block_invoke;
  v12[3] = &unk_1E8250328;
  v10 = actionCopy;
  v13 = v10;
  v11 = dsCopy;
  v14 = v11;
  [database __performWriteWithCaller:v9 usingBlock:v12];
}

uint64_t __69__EDLocalActionPersistence_updateFlagChangeAction_withRemainingUIDs___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) persistentID];
  v5 = [v4 databaseID];

  v6 = MEMORY[0x1E696AEC0];
  v7 = [*(a1 + 40) ed_uidQueryExpression];
  v8 = [v6 stringWithFormat:@"DELETE FROM action_messages WHERE action = %lld AND NOT (%@)", v5, v7];

  [v3 executeStatementString:v8 errorMessage:@"Deleting flag change messages."];
  return 1;
}

- (void)removeMessageAction:(int64_t)action
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = +[EDLocalActionPersistence log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    actionCopy = action;
    _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "Action %llu finished", buf, 0xCu);
  }

  database = [(EDLocalActionPersistence *)self database];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDLocalActionPersistence removeMessageAction:]"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__EDLocalActionPersistence_removeMessageAction___block_invoke;
  v8[3] = &__block_descriptor_40_e41_B16__0__EDPersistenceDatabaseConnection_8l;
  v8[4] = action;
  [database __performWriteWithCaller:v7 usingBlock:v8];
}

uint64_t __48__EDLocalActionPersistence_removeMessageAction___block_invoke(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 preparedStatementForQueryString:@"DELETE FROM local_message_actions WHERE ROWID = ?"];
  v5 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 32)];
  v11[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v10 = 0;
  v7 = [v4 executeWithIndexedBindings:v6 usingBlock:0 error:&v10];
  v8 = v10;

  if ((v7 & 1) == 0)
  {
    [v3 handleError:v8 message:@"Removing completed action"];
  }

  return v7;
}

- (void)removeMessageActions:(id)actions
{
  v18 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  if ([actionsCopy count])
  {
    if ([actionsCopy count] == 1)
    {
      firstObject = [actionsCopy firstObject];
      -[EDLocalActionPersistence removeMessageAction:](self, "removeMessageAction:", [firstObject databaseID]);
    }

    else
    {
      v6 = [actionsCopy ef_map:&__block_literal_global_37];
      v7 = [v6 componentsJoinedByString:{@", "}];

      v8 = +[EDLocalActionPersistence log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v15 = [actionsCopy count];
        v16 = 2114;
        v17 = v7;
        _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "%llu Actions finished %{public}@", buf, 0x16u);
      }

      database = [(EDLocalActionPersistence *)self database];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDLocalActionPersistence removeMessageActions:]"];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __49__EDLocalActionPersistence_removeMessageActions___block_invoke_232;
      v12[3] = &unk_1E8251CB8;
      v11 = v7;
      v13 = v11;
      [database __performWriteWithCaller:v10 usingBlock:v12];
    }
  }
}

id __49__EDLocalActionPersistence_removeMessageActions___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 stringValue];

  return v2;
}

uint64_t __49__EDLocalActionPersistence_removeMessageActions___block_invoke_232(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DELETE FROM local_message_actions WHERE ROWID IN (%@)", *(a1 + 32)];
  v5 = [v3 preparedStatementForQueryString:v4];
  v9 = 0;
  v6 = [v5 executeUsingBlock:0 error:&v9];
  v7 = v9;
  if ((v6 & 1) == 0)
  {
    [v3 handleError:v7 message:@"Removing completed action"];
  }

  return v6;
}

- (ECLocalMessageActionID)latestActionID
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__16;
  v11 = __Block_byref_object_dispose__16;
  v12 = 0;
  database = [(EDLocalActionPersistence *)self database];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDLocalActionPersistence latestActionID]"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__EDLocalActionPersistence_latestActionID__block_invoke;
  v6[3] = &unk_1E8251DA0;
  v6[4] = &v7;
  [database __performReadWithCaller:v3 usingBlock:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __42__EDLocalActionPersistence_latestActionID__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SELECT MAX(ROWID) as latest FROM local_message_actions"];
  v5 = [v3 preparedStatementForQueryString:v4];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__EDLocalActionPersistence_latestActionID__block_invoke_2;
  v7[3] = &unk_1E8250418;
  v7[4] = *(a1 + 32);
  [v5 executeUsingBlock:v7 error:0];

  return 1;
}

void __42__EDLocalActionPersistence_latestActionID__block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = objc_alloc(MEMORY[0x1E699B2D0]);
  v4 = [v8 objectForKeyedSubscript:@"latest"];
  v5 = [v3 initWithDatabaseID:{objc_msgSend(v4, "databaseIDValue")}];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __76__EDLocalActionPersistence__transferActionForRow_connection_failedMessages___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_1C61EF000, a2, OS_LOG_TYPE_ERROR, "Could not find destination message for database ID %lld", &v2, 0xCu);
}

- (void)_transferUndownloadedActionForRow:(os_log_t)log connection:.cold.1(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 134217984;
  *(buf + 4) = a2;
  _os_log_fault_impl(&dword_1C61EF000, log, OS_LOG_TYPE_FAULT, "Transfer all action expected to have exactly one remote ID associated with it, but had %lu", buf, 0xCu);
}

- (void)_flagChangeAllActionForRow:(os_log_t)log connection:.cold.1(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 134217984;
  *(buf + 4) = a2;
  _os_log_fault_impl(&dword_1C61EF000, log, OS_LOG_TYPE_FAULT, "Flag change all action expected to have exactly one remote ID associated with it, but had %lu", buf, 0xCu);
}

@end