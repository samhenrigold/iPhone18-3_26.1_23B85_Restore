@interface EDServerMessagePersistence
+ (OS_os_log)log;
+ (id)serverLabelsTableSchema;
+ (id)serverMessagesTableSchema;
+ (id)tablesAndForeignKeysToResolve:(id *)resolve associationsToResolve:(id *)toResolve;
- (BOOL)_addLabels:(id)labels removeLabels:(id)removeLabels forUID:(unsigned int)d connection:(id)connection;
- (BOOL)addLabels:(id)labels removeLabels:(id)removeLabels toMessagesWithRemoteIDs:(id)ds;
- (BOOL)addServerMessage:(id)message invalidMessage:(BOOL *)invalidMessage duplicateRemoteID:(BOOL *)d;
- (BOOL)applyFlagChange:(id)change toMessagesWithRemoteIDs:(id)ds;
- (BOOL)applySortedFlags:(id)flags;
- (BOOL)attachMessage:(int64_t)message toServerMessageWithRemoteID:(id)d;
- (BOOL)deleteAllServerMessagesInMailbox;
- (BOOL)deleteServerMessagesWithRemoteIDs:(id)ds;
- (EDServerMessagePersistence)initWithDatabase:(id)database gmailLabelPersistence:(id)persistence mailboxID:(int64_t)d useNumericSearch:(BOOL)search supportsLabels:(BOOL)labels;
- (id)_remoteIDStringForRemoteIDArray:(id)array;
- (id)_serverMessageForRow:(id)row connection:(id)connection;
- (id)_serverMessagesWithWhereClause:(id)clause limitClause:(id)limitClause returnLastEntries:(BOOL)entries;
- (id)deleteAllClearedUIDMessages;
- (id)downloadStateForUIDs:(id)ds;
- (id)serverMessagesForIMAPUIDs:(id)ds limit:(unint64_t)limit returnLastEntries:(BOOL)entries;
- (id)serverMessagesForMessageIDHeaders:(id)headers;
- (id)serverMessagesForRemoteIDs:(id)ds;
- (unint64_t)messageCount;
- (unint64_t)undeletedMessageCount;
- (unint64_t)unreadMessageCount;
- (unsigned)maximumIMAPUID;
- (unsigned)minimumIMAPUID;
- (void)enumerateMessageBatchLimitUIDsWithWindow:(_NSRange)window batchSize:(int64_t)size newUIDCount:(int64_t)count block:(id)block;
- (void)enumerateUIDsInIndexSet:(id)set includingJSON:(id)n excludingJSON:(id)oN withBlock:(id)block;
- (void)enumerateUIDsInOlderThanDate:(id)date limit:(unint64_t)limit withBlock:(id)block;
- (void)enumerateUIDsInRanges:(id)ranges withBlock:(id)block;
- (void)groupInsideWriteTransactionWithDescription:(id)description block:(id)block;
- (void)setDownloadStateForUIDs:(id)ds;
@end

@implementation EDServerMessagePersistence

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__EDServerMessagePersistence_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_97 != -1)
  {
    dispatch_once(&log_onceToken_97, block);
  }

  v2 = log_log_97;

  return v2;
}

void __33__EDServerMessagePersistence_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_97;
  log_log_97 = v1;
}

+ (id)tablesAndForeignKeysToResolve:(id *)resolve associationsToResolve:(id *)toResolve
{
  v24[3] = *MEMORY[0x1E69E9840];
  serverMessagesTableSchema = [self serverMessagesTableSchema];
  serverLabelsTableSchema = [self serverLabelsTableSchema];
  v7 = [serverLabelsTableSchema columnForName:@"server_message"];
  [v7 setAsForeignKeyForTable:serverMessagesTableSchema onDelete:2 onUpdate:0];

  v22 = +[EDMessagePersistence messagesTableName];
  v8 = +[EDPersistenceDatabaseSchema mailboxesTableName];
  v9 = [EDPersistenceForeignKeyPlaceholder alloc];
  v10 = [serverMessagesTableSchema columnForName:@"message"];
  v11 = [(EDPersistenceForeignKeyPlaceholder *)v9 initWithColumn:v10 tableName:v22 onDelete:3 onUpdate:0];
  v24[0] = v11;
  v12 = [EDPersistenceForeignKeyPlaceholder alloc];
  v13 = [serverMessagesTableSchema columnForName:@"mailbox"];
  v14 = [(EDPersistenceForeignKeyPlaceholder *)v12 initWithColumn:v13 tableName:v8 onDelete:2 onUpdate:0];
  v24[1] = v14;
  v15 = [EDPersistenceForeignKeyPlaceholder alloc];
  v16 = [serverLabelsTableSchema columnForName:@"label"];
  v17 = [(EDPersistenceForeignKeyPlaceholder *)v15 initWithColumn:v16 tableName:v8 onDelete:2 onUpdate:0];
  v24[2] = v17;
  *resolve = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:3];

  *toResolve = MEMORY[0x1E695E0F0];
  v23[0] = serverMessagesTableSchema;
  v23[1] = serverLabelsTableSchema;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];

  return v18;
}

+ (id)serverMessagesTableSchema
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v21 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"message" nullable:1];
  v24 = v21;
  v25 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"mailbox" nullable:0];
  v20 = v25;
  v26 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"sequence_identifier" nullable:1];
  v19 = v26;
  v18 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"read" nullable:0];
  v27 = v18;
  v17 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"deleted" nullable:0];
  v28 = v17;
  v16 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"replied" nullable:0];
  v29 = v16;
  v15 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"flagged" nullable:0];
  v30 = v15;
  v3 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"draft" nullable:0];
  v31 = v3;
  v4 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"forwarded" nullable:0];
  v32 = v4;
  v5 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"redirected" nullable:0];
  v33 = v5;
  v6 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"junk_level_set_by_user" nullable:0];
  v34 = v6;
  v7 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"junk_level" nullable:0];
  v35 = v7;
  v8 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"flag_color" nullable:0];
  v36 = v8;
  v9 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"remote_id" nullable:0];
  v37 = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:14];
  v11 = [v2 initWithName:@"server_messages" rowIDType:2 columns:v10];

  v23[0] = @"mailbox";
  v23[1] = @"remote_id";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  [v11 addUniquenessConstraintForColumns:v12 conflictResolution:1];

  v22 = @"message";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
  [v11 addIndexForColumns:v13];

  return v11;
}

+ (id)serverLabelsTableSchema
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v3 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"server_message" nullable:1];
  v10[0] = v3;
  v4 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"label" nullable:1];
  v10[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v9[0] = @"server_message";
  v9[1] = @"label";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v7 = [v2 initWithName:@"server_labels" columns:v5 primaryKeyColumns:v6];

  return v7;
}

- (EDServerMessagePersistence)initWithDatabase:(id)database gmailLabelPersistence:(id)persistence mailboxID:(int64_t)d useNumericSearch:(BOOL)search supportsLabels:(BOOL)labels
{
  databaseCopy = database;
  persistenceCopy = persistence;
  if (*MEMORY[0x1E699A728] == d)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDServerMessagePersistence.m" lineNumber:156 description:{@"Invalid parameter not satisfying: %@", @"mailboxID != EMDatabaseIDUndefined"}];
  }

  v20.receiver = self;
  v20.super_class = EDServerMessagePersistence;
  v16 = [(EDServerMessagePersistence *)&v20 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_database, database);
    objc_storeStrong(&v17->_gmailLabelPersistence, persistence);
    v17->_mailboxID = d;
    v17->_useNumericSearch = search;
    v17->_supportsLabels = labels;
  }

  return v17;
}

- (unint64_t)messageCount
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  database = [(EDServerMessagePersistence *)self database];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDServerMessagePersistence messageCount]"];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__EDServerMessagePersistence_messageCount__block_invoke;
  v7[3] = &unk_1E8250350;
  v7[4] = self;
  v7[5] = &v8;
  [database __performReadWithCaller:v4 usingBlock:v7];

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __42__EDServerMessagePersistence_messageCount__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT count() FROM server_messages WHERE (mailbox = %lld)", objc_msgSend(*(a1 + 32), "mailboxID")];
  v5 = [v3 preparedStatementForQueryString:v4];
  v9 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __42__EDServerMessagePersistence_messageCount__block_invoke_2;
  v10[3] = &unk_1E8250418;
  v10[4] = *(a1 + 40);
  v6 = [v5 executeUsingBlock:v10 error:&v9];
  v7 = v9;
  if ((v6 & 1) == 0)
  {
    [v3 handleError:v7 message:@"Executing count query"];
  }

  return 1;
}

void __42__EDServerMessagePersistence_messageCount__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v6 = [v8 objectAtIndexedSubscript:0];
  v7 = [v6 numberValue];
  *(*(*(a1 + 32) + 8) + 24) = [v7 unsignedIntegerValue];

  *a4 = 1;
}

- (unint64_t)unreadMessageCount
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  database = [(EDServerMessagePersistence *)self database];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDServerMessagePersistence unreadMessageCount]"];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__EDServerMessagePersistence_unreadMessageCount__block_invoke;
  v7[3] = &unk_1E8250350;
  v7[4] = self;
  v7[5] = &v8;
  [database __performReadWithCaller:v4 usingBlock:v7];

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __48__EDServerMessagePersistence_unreadMessageCount__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT count() FROM server_messages WHERE (mailbox = %lld) AND (read = 0)", objc_msgSend(*(a1 + 32), "mailboxID")];
  v5 = [v3 preparedStatementForQueryString:v4];
  v9 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__EDServerMessagePersistence_unreadMessageCount__block_invoke_2;
  v10[3] = &unk_1E8250418;
  v10[4] = *(a1 + 40);
  v6 = [v5 executeUsingBlock:v10 error:&v9];
  v7 = v9;
  if ((v6 & 1) == 0)
  {
    [v3 handleError:v7 message:@"Executing unread count query"];
  }

  return 1;
}

void __48__EDServerMessagePersistence_unreadMessageCount__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v6 = [v8 objectAtIndexedSubscript:0];
  v7 = [v6 numberValue];
  *(*(*(a1 + 32) + 8) + 24) = [v7 unsignedIntegerValue];

  *a4 = 1;
}

- (unint64_t)undeletedMessageCount
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  database = [(EDServerMessagePersistence *)self database];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDServerMessagePersistence undeletedMessageCount]"];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__EDServerMessagePersistence_undeletedMessageCount__block_invoke;
  v7[3] = &unk_1E8250350;
  v7[4] = self;
  v7[5] = &v8;
  [database __performReadWithCaller:v4 usingBlock:v7];

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __51__EDServerMessagePersistence_undeletedMessageCount__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT count() FROM server_messages WHERE (mailbox = %lld) AND (deleted = 0)", objc_msgSend(*(a1 + 32), "mailboxID")];
  v5 = [v3 preparedStatementForQueryString:v4];
  v9 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__EDServerMessagePersistence_undeletedMessageCount__block_invoke_2;
  v10[3] = &unk_1E8250418;
  v10[4] = *(a1 + 40);
  v6 = [v5 executeUsingBlock:v10 error:&v9];
  v7 = v9;
  if ((v6 & 1) == 0)
  {
    [v3 handleError:v7 message:@"Executing unread count query"];
  }

  return 1;
}

void __51__EDServerMessagePersistence_undeletedMessageCount__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v6 = [v8 objectAtIndexedSubscript:0];
  v7 = [v6 numberValue];
  *(*(*(a1 + 32) + 8) + 24) = [v7 unsignedIntegerValue];

  *a4 = 1;
}

- (unsigned)maximumIMAPUID
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  database = [(EDServerMessagePersistence *)self database];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDServerMessagePersistence maximumIMAPUID]"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__EDServerMessagePersistence_maximumIMAPUID__block_invoke;
  v6[3] = &unk_1E8250350;
  v6[4] = self;
  v6[5] = &v7;
  [database __performReadWithCaller:v4 usingBlock:v6];

  LODWORD(database) = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return database;
}

uint64_t __44__EDServerMessagePersistence_maximumIMAPUID__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT MAX(remote_id) FROM server_messages WHERE (mailbox = %lld)", objc_msgSend(*(a1 + 32), "mailboxID")];
  v5 = [v3 preparedStatementForQueryString:v4];
  v9 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44__EDServerMessagePersistence_maximumIMAPUID__block_invoke_2;
  v10[3] = &unk_1E8250418;
  v10[4] = *(a1 + 40);
  v6 = [v5 executeUsingBlock:v10 error:&v9];
  v7 = v9;
  if ((v6 & 1) == 0)
  {
    [v3 handleError:v7 message:@"Executing max uid query"];
  }

  return 1;
}

void __44__EDServerMessagePersistence_maximumIMAPUID__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v6 = [v8 objectAtIndexedSubscript:0];
  v7 = [v6 numberValue];
  *(*(*(a1 + 32) + 8) + 24) = [v7 unsignedIntValue];

  *a4 = 1;
}

- (unsigned)minimumIMAPUID
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  database = [(EDServerMessagePersistence *)self database];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDServerMessagePersistence minimumIMAPUID]"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__EDServerMessagePersistence_minimumIMAPUID__block_invoke;
  v6[3] = &unk_1E8250350;
  v6[4] = self;
  v6[5] = &v7;
  [database __performReadWithCaller:v4 usingBlock:v6];

  LODWORD(database) = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return database;
}

uint64_t __44__EDServerMessagePersistence_minimumIMAPUID__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT MIN(remote_id) FROM server_messages WHERE (mailbox = %lld)", objc_msgSend(*(a1 + 32), "mailboxID")];
  v5 = [v3 preparedStatementForQueryString:v4];
  v9 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44__EDServerMessagePersistence_minimumIMAPUID__block_invoke_2;
  v10[3] = &unk_1E8250418;
  v10[4] = *(a1 + 40);
  v6 = [v5 executeUsingBlock:v10 error:&v9];
  v7 = v9;
  if ((v6 & 1) == 0)
  {
    [v3 handleError:v7 message:@"Executing min uid query"];
  }

  return 1;
}

void __44__EDServerMessagePersistence_minimumIMAPUID__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v6 = [v8 objectAtIndexedSubscript:0];
  v7 = [v6 numberValue];
  *(*(*(a1 + 32) + 8) + 24) = [v7 unsignedIntValue];

  *a4 = 1;
}

- (id)serverMessagesForRemoteIDs:(id)ds
{
  dsCopy = ds;
  v5 = objc_opt_new();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__EDServerMessagePersistence_serverMessagesForRemoteIDs___block_invoke;
  v10[3] = &unk_1E82579B0;
  v10[4] = self;
  v6 = v5;
  v11 = v6;
  [dsCopy ef_enumerateObjectsInBatchesOfSize:500 block:v10];
  v7 = v11;
  v8 = v6;

  return v6;
}

void __57__EDServerMessagePersistence_serverMessagesForRemoteIDs___block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = [*(a1 + 32) _remoteIDStringForRemoteIDArray:a2];
  v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"remote_id IN (%@)", v5];
  v4 = [*(a1 + 32) _serverMessagesWithWhereClause:v3 limitClause:&stru_1F45B4608 returnLastEntries:0];
  [*(a1 + 40) addObjectsFromArray:v4];
}

- (id)serverMessagesForIMAPUIDs:(id)ds limit:(unint64_t)limit returnLastEntries:(BOOL)entries
{
  entriesCopy = entries;
  v43[1] = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  add_explicit = atomic_fetch_add_explicit(serverMessagesForIMAPUIDsCounter, 1u, memory_order_relaxed);
  soft_PLShouldLogRegisteredEvent();
  if (v10)
  {
    v42 = @"call";
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:add_explicit];
    v43[0] = v11;
    soft_PLLogRegisteredEvent([MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:&v42 count:1]);
  }

  if (limit)
  {
    limitCopy = limit;
  }

  else
  {
    limitCopy = 100;
  }

  v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:limitCopy];
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v27 = MEMORY[0x1E69E9820];
  v28 = 3221225472;
  v29 = __80__EDServerMessagePersistence_serverMessagesForIMAPUIDs_limit_returnLastEntries___block_invoke;
  v30 = &unk_1E82579D8;
  v33 = &v35;
  selfCopy = self;
  v34 = entriesCopy;
  v14 = v13;
  v32 = v14;
  [dsCopy ed_enumerateUIDsWithLimit:limit reverseEnumeration:entriesCopy usingBlock:&v27];
  soft_PLShouldLogRegisteredEvent();
  if (v15)
  {
    v40[0] = @"call";
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{add_explicit, v27, v28, v29, v30, selfCopy}];
    v41[0] = v16;
    v40[1] = @"iterations";
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v36 + 6)];
    v41[1] = v17;
    v40[2] = @"count";
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(dsCopy, "count")}];
    v41[2] = v18;
    v40[3] = @"first";
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(dsCopy, "firstIndex")}];
    v41[3] = v19;
    v40[4] = @"last";
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(dsCopy, "lastIndex")}];
    v41[4] = v20;
    v40[5] = @"limit";
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:limit];
    v41[5] = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:6];

    soft_PLLogRegisteredEvent(v22);
  }

  if (limit && [v14 count] > limit)
  {
    v23 = +[EDServerMessagePersistence log];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      -[EDServerMessagePersistence serverMessagesForIMAPUIDs:limit:returnLastEntries:].cold.1(buf, [v14 count], limit, v23);
    }

    v24 = [v14 subarrayWithRange:{0, limit}];
  }

  else
  {
    v24 = v14;
  }

  v25 = v24;

  _Block_object_dispose(&v35, 8);

  return v25;
}

id __80__EDServerMessagePersistence_serverMessagesForIMAPUIDs_limit_returnLastEntries___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  ++*(*(*(a1 + 48) + 8) + 24);
  v5 = [a2 ed_uidQueryExpression];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@" LIMIT %llu", a3];
  v7 = [*(a1 + 32) _serverMessagesWithWhereClause:v5 limitClause:v6 returnLastEntries:*(a1 + 56)];
  [*(a1 + 40) addObjectsFromArray:v7];
  v8 = [MEMORY[0x1E696AD50] indexSet];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = *v15;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v9);
        }

        [v8 addIndex:{objc_msgSend(*(*(&v14 + 1) + 8 * i), "imapUID")}];
      }

      v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  return v8;
}

- (id)deleteAllClearedUIDMessages
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT message AS message_row_id FROM server_messages WHERE mailbox = %lld AND remote_id < 0", -[EDServerMessagePersistence mailboxID](self, "mailboxID")];
  database = [(EDServerMessagePersistence *)self database];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDServerMessagePersistence deleteAllClearedUIDMessages]"];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __57__EDServerMessagePersistence_deleteAllClearedUIDMessages__block_invoke;
  v14[3] = &unk_1E8250328;
  v8 = v5;
  v15 = v8;
  v16 = array;
  [database __performReadWithCaller:v7 usingBlock:v14];

  objc_autoreleasePoolPop(v4);
  database2 = [(EDServerMessagePersistence *)self database];
  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDServerMessagePersistence deleteAllClearedUIDMessages]"];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __57__EDServerMessagePersistence_deleteAllClearedUIDMessages__block_invoke_169;
  v13[3] = &unk_1E8250328;
  v13[4] = self;
  v13[5] = array;
  [database2 __performWriteWithCaller:v10 usingBlock:v13];

  v11 = array;
  return array;
}

uint64_t __57__EDServerMessagePersistence_deleteAllClearedUIDMessages__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = [a2 preparedStatementForQueryString:*(a1 + 32)];
  v9 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__EDServerMessagePersistence_deleteAllClearedUIDMessages__block_invoke_2;
  v10[3] = &unk_1E8250300;
  v10[4] = *(a1 + 40);
  v4 = [v3 executeUsingBlock:v10 error:&v9];
  v5 = v9;
  if ((v4 & 1) == 0)
  {
    v6 = +[EDServerMessagePersistence log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v7 = [v5 ef_publicDescription];
      __57__EDServerMessagePersistence_deleteAllClearedUIDMessages__block_invoke_cold_1(v7, v11, v6);
    }
  }

  return 1;
}

void __57__EDServerMessagePersistence_deleteAllClearedUIDMessages__block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 objectForKeyedSubscript:@"message_row_id"];
  v4 = [v3 int64Value];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:v4];
    [v5 addObject:v6];
  }
}

uint64_t __57__EDServerMessagePersistence_deleteAllClearedUIDMessages__block_invoke_169(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DELETE FROM server_messages WHERE server_messages.mailbox = %lld AND server_messages.remote_id < 0", objc_msgSend(*(a1 + 32), "mailboxID")];
  v5 = [v3 preparedStatementForQueryString:v4];
  v14 = 0;
  v6 = [MEMORY[0x1E695DF20] dictionary];
  v13 = 0;
  v7 = [v5 executeWithNamedBindings:v6 rowsChanged:&v14 error:&v13];
  v8 = v13;

  if ((v7 & 1) == 0)
  {
    v10 = +[EDServerMessagePersistence log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v11 = [v8 ef_publicDescription];
      __57__EDServerMessagePersistence_deleteAllClearedUIDMessages__block_invoke_169_cold_1(v11, buf, v10);
    }

    goto LABEL_7;
  }

  v9 = v14;
  if (v9 != [*(a1 + 40) count])
  {
    v10 = +[EDServerMessagePersistence log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __57__EDServerMessagePersistence_deleteAllClearedUIDMessages__block_invoke_169_cold_2(v14, [*(a1 + 40) count], buf, v10);
    }

LABEL_7:
  }

  return 1;
}

- (id)serverMessagesForMessageIDHeaders:(id)headers
{
  headersCopy = headers;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(headersCopy, "count")}];
  v6 = objc_autoreleasePoolPush();
  v7 = [headersCopy ef_map:&__block_literal_global_87];
  v8 = [v7 componentsJoinedByString:{@", "}];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT server_messages.ROWID, server_messages.message, server_messages.mailbox, server_messages.read, server_messages.deleted, server_messages.replied, server_messages.flagged, server_messages.draft, server_messages.forwarded, server_messages.redirected, server_messages.junk_level_set_by_user, server_messages.junk_level, server_messages.flag_color, server_messages.remote_id, messages.message_id AS message_id_header, messages.ROWID AS message_row_id FROM messages INNER JOIN server_messages ON messages.ROWID = server_messages.message WHERE (server_messages.mailbox = %lld AND messages.message_id IN (%@) AND server_messages.remote_id < 0)", -[EDServerMessagePersistence mailboxID](self, "mailboxID"), v8];

  objc_autoreleasePoolPop(v6);
  database = [(EDServerMessagePersistence *)self database];
  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDServerMessagePersistence serverMessagesForMessageIDHeaders:]"];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __64__EDServerMessagePersistence_serverMessagesForMessageIDHeaders___block_invoke_2;
  v15[3] = &unk_1E8250440;
  v12 = v9;
  v16 = v12;
  selfCopy = self;
  v18 = v5;
  [database __performReadWithCaller:v11 usingBlock:v15];

  v13 = v5;
  return v5;
}

id __64__EDServerMessagePersistence_serverMessagesForMessageIDHeaders___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_alloc(MEMORY[0x1E699B200]) initWithString:v2];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", objc_msgSend(v3, "int64Value")];

  return v4;
}

uint64_t __64__EDServerMessagePersistence_serverMessagesForMessageIDHeaders___block_invoke_2(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 preparedStatementForQueryString:a1[4]];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__EDServerMessagePersistence_serverMessagesForMessageIDHeaders___block_invoke_3;
  v13[3] = &unk_1E8252FE0;
  v13[4] = a1[5];
  v5 = v3;
  v6 = a1[6];
  v14 = v5;
  v15 = v6;
  v12 = 0;
  v7 = [v4 executeUsingBlock:v13 error:&v12];
  v8 = v12;
  if ((v7 & 1) == 0)
  {
    v9 = +[EDServerMessagePersistence log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v10 = [v8 ef_publicDescription];
      __64__EDServerMessagePersistence_serverMessagesForMessageIDHeaders___block_invoke_2_cold_1(v10, v16, v9);
    }
  }

  return 1;
}

void __64__EDServerMessagePersistence_serverMessagesForMessageIDHeaders___block_invoke_3(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [*(a1 + 32) _serverMessageForRow:? connection:?];
  v4 = [v11 objectForKeyedSubscript:@"message_id_header"];
  v5 = [v4 int64Value];

  v6 = [v11 objectForKeyedSubscript:@"message_row_id"];
  v7 = [v6 int64Value];

  if (v3 && v5 && v7)
  {
    v8 = [EDExistingMessageWithMessageIDHeader alloc];
    v9 = [objc_alloc(MEMORY[0x1E699B200]) initWithHash:v5];
    v10 = [(EDExistingMessageWithMessageIDHeader *)v8 initWithMessageIDHash:v9 serverMessage:v3 messagePersistentID:v7];

    [*(a1 + 48) addObject:v10];
  }
}

- (id)_serverMessagesWithWhereClause:(id)clause limitClause:(id)limitClause returnLastEntries:(BOOL)entries
{
  entriesCopy = entries;
  clauseCopy = clause;
  limitClauseCopy = limitClause;
  v10 = &stru_1F45B4608;
  if (entriesCopy)
  {
    v10 = @" DESC";
  }

  v11 = v10;
  array = [MEMORY[0x1E695DF70] array];
  limitClauseCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SELECT %@ FROM server_messages WHERE (mailbox = %lld) AND (%@) ORDER BY remote_id%@%@", @"ROWID, message, mailbox, read, deleted, replied, flagged, draft, forwarded, redirected, junk_level_set_by_user, junk_level, flag_color, remote_id", -[EDServerMessagePersistence mailboxID](self, "mailboxID"), clauseCopy, v11, limitClauseCopy];
  database = [(EDServerMessagePersistence *)self database];
  v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDServerMessagePersistence _serverMessagesWithWhereClause:limitClause:returnLastEntries:]"];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __91__EDServerMessagePersistence__serverMessagesWithWhereClause_limitClause_returnLastEntries___block_invoke;
  v20[3] = &unk_1E82512F0;
  v16 = limitClauseCopy;
  v21 = v16;
  v24 = entriesCopy;
  v17 = array;
  v22 = v17;
  selfCopy = self;
  [database __performReadWithCaller:v15 usingBlock:v20];

  v18 = v17;
  return v17;
}

uint64_t __91__EDServerMessagePersistence__serverMessagesWithWhereClause_limitClause_returnLastEntries___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 preparedStatementForQueryString:*(a1 + 32)];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __91__EDServerMessagePersistence__serverMessagesWithWhereClause_limitClause_returnLastEntries___block_invoke_2;
  v9[3] = &unk_1E8257888;
  v13 = *(a1 + 56);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v10 = v5;
  v11 = v6;
  v7 = v3;
  v12 = v7;
  [v4 executeUsingBlock:v9 error:0];

  return 1;
}

void __91__EDServerMessagePersistence__serverMessagesWithWhereClause_limitClause_returnLastEntries___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = v3;
  if (*(a1 + 56) == 1)
  {
    v7 = [v4 _serverMessageForRow:v3 connection:v6];
    [v5 insertObject:v7 atIndex:0];
  }

  else
  {
    v7 = [v4 _serverMessageForRow:v3 connection:v6];
    [v5 addObject:v7];
  }
}

- (id)_serverMessageForRow:(id)row connection:(id)connection
{
  v47[1] = *MEMORY[0x1E69E9840];
  rowCopy = row;
  connectionCopy = connection;
  v8 = objc_alloc(MEMORY[0x1E699B308]);
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __62__EDServerMessagePersistence__serverMessageForRow_connection___block_invoke;
  v45[3] = &unk_1E8257A00;
  v9 = rowCopy;
  v46 = v9;
  v10 = [v8 initWithBuilder:v45];
  v11 = [v9 objectForKeyedSubscript:@"remote_id"];
  objectValue = [v11 objectValue];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [v9 objectForKeyedSubscript:@"ROWID"];
    databaseIDValue = [v13 databaseIDValue];

    v15 = [v9 objectForKeyedSubscript:@"ROWID"];
    stringValue = [v15 stringValue];

    if ([(EDServerMessagePersistence *)self supportsLabels])
    {
      v30 = [connectionCopy preparedStatementForQueryString:@"SELECT label FROM server_labels WHERE server_message = ?"];
      v29 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      gmailLabelPersistence = [(EDServerMessagePersistence *)self gmailLabelPersistence];
      v16 = [MEMORY[0x1E696AD98] numberWithLongLong:databaseIDValue];
      v47[0] = v16;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:1];
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __62__EDServerMessagePersistence__serverMessageForRow_connection___block_invoke_2;
      v42[3] = &unk_1E82511B8;
      v18 = gmailLabelPersistence;
      v43 = v18;
      v19 = v29;
      v44 = v19;
      v41 = 0;
      v20 = [v30 executeWithIndexedBindings:v17 usingBlock:v42 error:&v41];
      v21 = v41;

      if ((v20 & 1) == 0)
      {
        [connectionCopy handleError:v21 message:@"Fetching server labels"];
      }
    }

    else
    {
      v19 = 0;
    }

    v25 = objc_alloc(MEMORY[0x1E699B320]);
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __62__EDServerMessagePersistence__serverMessageForRow_connection___block_invoke_211;
    v35[3] = &unk_1E8257A28;
    v24 = stringValue;
    v36 = v24;
    v37 = v9;
    v38 = objectValue;
    v39 = v10;
    v40 = v19;
    v26 = v19;
    v23 = [v25 initWithIMAPServerMessageBuilder:v35];
  }

  else
  {
    v22 = objc_alloc(MEMORY[0x1E699B320]);
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __62__EDServerMessagePersistence__serverMessageForRow_connection___block_invoke_2_213;
    v32[3] = &unk_1E8257A50;
    v33 = v9;
    v34 = v10;
    v23 = [v22 initWithServerMessageBuilder:v32];

    v24 = v33;
  }

  return v23;
}

void __62__EDServerMessagePersistence__serverMessageForRow_connection___block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"read"];
  [v13 setRead:{objc_msgSend(v3, "BOOLValue")}];

  v4 = [*(a1 + 32) objectForKeyedSubscript:@"deleted"];
  [v13 setDeleted:{objc_msgSend(v4, "BOOLValue")}];

  v5 = [*(a1 + 32) objectForKeyedSubscript:@"replied"];
  [v13 setReplied:{objc_msgSend(v5, "BOOLValue")}];

  v6 = [*(a1 + 32) objectForKeyedSubscript:@"flagged"];
  [v13 setFlagged:{objc_msgSend(v6, "BOOLValue")}];

  v7 = [*(a1 + 32) objectForKeyedSubscript:@"draft"];
  [v13 setDraft:{objc_msgSend(v7, "BOOLValue")}];

  v8 = [*(a1 + 32) objectForKeyedSubscript:@"forwarded"];
  [v13 setForwarded:{objc_msgSend(v8, "BOOLValue")}];

  v9 = [*(a1 + 32) objectForKeyedSubscript:@"redirected"];
  [v13 setRedirected:{objc_msgSend(v9, "BOOLValue")}];

  v10 = [*(a1 + 32) objectForKeyedSubscript:@"junk_level_set_by_user"];
  [v13 setJunkLevelSetByUser:{objc_msgSend(v10, "BOOLValue")}];

  v11 = [*(a1 + 32) objectForKeyedSubscript:@"junk_level"];
  [v13 setJunkLevel:{objc_msgSend(v11, "int64Value")}];

  v12 = [*(a1 + 32) objectForKeyedSubscript:@"flag_color"];
  [v13 setFlagColor:{objc_msgSend(v12, "int64Value")}];
}

void __62__EDServerMessagePersistence__serverMessageForRow_connection___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 objectAtIndexedSubscript:0];
  v5 = [v4 databaseIDValue];

  v6 = [*(a1 + 32) labelForDatabaseID:v5];
  if (v6)
  {
    [*(a1 + 40) addObject:v6];
  }

  else
  {
    v7 = [*(a1 + 32) labelURLForDatabaseID:v5];
    v8 = +[EDServerMessagePersistence log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      if (v7)
      {
        v9 = [MEMORY[0x1E699B858] ec_redactedStringForMailboxURL:v7];
      }

      else
      {
        v9 = 0;
      }

      v10 = 134218242;
      v11 = v5;
      v12 = 2112;
      v13 = v9;
      _os_log_fault_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_FAULT, "Unable to find label: %lld, %@", &v10, 0x16u);
      if (v7)
      {
      }
    }
  }
}

void __62__EDServerMessagePersistence__serverMessageForRow_connection___block_invoke_211(uint64_t a1, void *a2)
{
  v5 = a2;
  [v5 setPersistentID:*(a1 + 32)];
  v3 = [*(a1 + 40) objectForKeyedSubscript:@"message"];
  v4 = [v3 stringValue];
  [v5 setMessagePersistentID:v4];

  [v5 setImapUID:{objc_msgSend(*(a1 + 48), "integerValue")}];
  [v5 setServerFlags:*(a1 + 56)];
  if (*(a1 + 64))
  {
    [v5 setLabels:?];
  }
}

void __62__EDServerMessagePersistence__serverMessageForRow_connection___block_invoke_2_213(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"ROWID"];
  v4 = [v3 stringValue];
  [v9 setPersistentID:v4];

  v5 = [*(a1 + 32) objectForKeyedSubscript:@"message"];
  v6 = [v5 stringValue];
  [v9 setMessagePersistentID:v6];

  v7 = [*(a1 + 32) objectForKeyedSubscript:@"remote_id"];
  v8 = [v7 stringValue];
  [v9 setRemoteID:v8];

  [v9 setServerFlags:*(a1 + 40)];
}

- (BOOL)addServerMessage:(id)message invalidMessage:(BOOL *)invalidMessage duplicateRemoteID:(BOOL *)d
{
  messageCopy = message;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  if (invalidMessage)
  {
    *invalidMessage = 0;
  }

  if (d)
  {
    *d = 0;
  }

  database = [(EDServerMessagePersistence *)self database];
  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDServerMessagePersistence addServerMessage:invalidMessage:duplicateRemoteID:]"];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __80__EDServerMessagePersistence_addServerMessage_invalidMessage_duplicateRemoteID___block_invoke;
  v14[3] = &unk_1E8257A78;
  v11 = messageCopy;
  v15 = v11;
  selfCopy = self;
  v17 = &v20;
  invalidMessageCopy = invalidMessage;
  dCopy = d;
  [database __performWriteWithCaller:v10 usingBlock:v14];

  v12 = *(v21 + 24);
  _Block_object_dispose(&v20, 8);

  return v12;
}

uint64_t __80__EDServerMessagePersistence_addServerMessage_invalidMessage_duplicateRemoteID___block_invoke(uint64_t a1, void *a2)
{
  v56[13] = *MEMORY[0x1E69E9840];
  v51 = a2;
  v53 = [v51 preparedStatementForQueryString:{@"INSERT INTO server_messages (message, mailbox, read, deleted, replied, flagged, draft, forwarded, redirected, junk_level_set_by_user, junk_level, flag_color, remote_id) VALUES (:message, :mailbox, :read, :deleted, :replied, :flagged, :draft, :forwarded, :redirected, :junk_level_set_by_user, :junk_level, :flag_color, :remote_id)"}];
  v3 = [*(a1 + 32) messagePersistentID];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v6 = v5;

  v56[0] = v6;
  v55[0] = @":message";
  v55[1] = @":mailbox";
  v40 = v6;
  v48 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 40), "mailboxID")}];
  v56[1] = v48;
  v55[2] = @":remote_id";
  v49 = [*(a1 + 32) remoteIDObject];
  v56[2] = v49;
  v55[3] = @":read";
  v7 = MEMORY[0x1E696AD98];
  v50 = [*(a1 + 32) serverFlags];
  v46 = [v7 numberWithBool:{objc_msgSend(v50, "read")}];
  v56[3] = v46;
  v55[4] = @":deleted";
  v8 = MEMORY[0x1E696AD98];
  v47 = [*(a1 + 32) serverFlags];
  v44 = [v8 numberWithBool:{objc_msgSend(v47, "deleted")}];
  v56[4] = v44;
  v55[5] = @":replied";
  v9 = MEMORY[0x1E696AD98];
  v45 = [*(a1 + 32) serverFlags];
  v42 = [v9 numberWithBool:{objc_msgSend(v45, "replied")}];
  v56[5] = v42;
  v55[6] = @":flagged";
  v10 = MEMORY[0x1E696AD98];
  v43 = [*(a1 + 32) serverFlags];
  v39 = [v10 numberWithBool:{objc_msgSend(v43, "flagged")}];
  v56[6] = v39;
  v55[7] = @":draft";
  v11 = MEMORY[0x1E696AD98];
  v41 = [*(a1 + 32) serverFlags];
  v37 = [v11 numberWithBool:{objc_msgSend(v41, "draft")}];
  v56[7] = v37;
  v55[8] = @":forwarded";
  v12 = MEMORY[0x1E696AD98];
  v38 = [*(a1 + 32) serverFlags];
  v13 = [v12 numberWithBool:{objc_msgSend(v38, "forwarded")}];
  v56[8] = v13;
  v55[9] = @":redirected";
  v14 = MEMORY[0x1E696AD98];
  v15 = [*(a1 + 32) serverFlags];
  v16 = [v14 numberWithBool:{objc_msgSend(v15, "redirected")}];
  v56[9] = v16;
  v55[10] = @":junk_level_set_by_user";
  v17 = MEMORY[0x1E696AD98];
  v18 = [*(a1 + 32) serverFlags];
  v19 = [v17 numberWithBool:{objc_msgSend(v18, "junkLevelSetByUser")}];
  v56[10] = v19;
  v55[11] = @":junk_level";
  v20 = MEMORY[0x1E696AD98];
  v21 = [*(a1 + 32) serverFlags];
  v22 = [v20 numberWithUnsignedInteger:{objc_msgSend(v21, "junkLevel")}];
  v56[11] = v22;
  v55[12] = @":flag_color";
  v23 = MEMORY[0x1E696AD98];
  v24 = [*(a1 + 32) serverFlags];
  v25 = [v23 numberWithUnsignedInteger:{objc_msgSend(v24, "flagColor")}];
  v56[12] = v25;
  v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:13];

  v54 = 0;
  LODWORD(v15) = [v53 executeWithNamedBindings:v52 usingBlock:0 error:&v54];
  v26 = v54;
  v27 = v26;
  if (!v15)
  {
    v30 = [v26 domain];
    if ([v30 isEqualToString:*MEMORY[0x1E699B770]])
    {
      v31 = [v27 code] == 19;

      if (v31)
      {
        v32 = [v27 userInfo];
        v33 = [v32 objectForKeyedSubscript:*MEMORY[0x1E699B778]];
        v34 = [v33 integerValue];

        v35 = *(a1 + 56);
        if (v35 && v34 == 787 || (v35 = *(a1 + 64)) != 0 && v34 == 2067)
        {
          *v35 = 1;
        }

        v29 = 1;
        goto LABEL_20;
      }
    }

    else
    {
    }

    [v51 handleError:v27 message:@"Adding server message"];
    v29 = 0;
LABEL_20:
    *(*(*(a1 + 48) + 8) + 24) = 0;
    goto LABEL_21;
  }

  v28 = [*(a1 + 32) labels];
  if ([*(a1 + 40) supportsLabels] && objc_msgSend(v28, "count"))
  {
    v29 = [*(a1 + 40) _addLabels:v28 removeLabels:0 forUID:objc_msgSend(*(a1 + 32) connection:{"imapUID"), v51}];
  }

  else
  {
    v29 = 1;
  }

  *(*(*(a1 + 48) + 8) + 24) = v29;

LABEL_21:
  return v29;
}

- (BOOL)attachMessage:(int64_t)message toServerMessageWithRemoteID:(id)d
{
  dCopy = d;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 1;
  if ([(EDServerMessagePersistence *)self useNumericSearch])
  {
    ef_quotedSQLEscapedString = dCopy;
  }

  else
  {
    ef_quotedSQLEscapedString = [dCopy ef_quotedSQLEscapedString];
  }

  v8 = ef_quotedSQLEscapedString;
  database = [(EDServerMessagePersistence *)self database];
  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDServerMessagePersistence attachMessage:toServerMessageWithRemoteID:]"];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__EDServerMessagePersistence_attachMessage_toServerMessageWithRemoteID___block_invoke;
  v13[3] = &unk_1E8253058;
  v15 = &v17;
  messageCopy = message;
  v13[4] = self;
  v11 = v8;
  v14 = v11;
  [database __performWriteWithCaller:v10 usingBlock:v13];

  LOBYTE(v8) = *(v18 + 24);
  _Block_object_dispose(&v17, 8);

  return v8;
}

uint64_t __72__EDServerMessagePersistence_attachMessage_toServerMessageWithRemoteID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UPDATE server_messages SET message = %lld WHERE (mailbox = %lld) AND (remote_id = %@)", *(a1 + 56), objc_msgSend(*(a1 + 32), "mailboxID"), *(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = [v3 executeStatementString:v4 errorMessage:@"updating server message"];

  v5 = *(*(*(a1 + 48) + 8) + 24);
  return v5;
}

- (BOOL)deleteServerMessagesWithRemoteIDs:(id)ds
{
  dsCopy = ds;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  database = [(EDServerMessagePersistence *)self database];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDServerMessagePersistence deleteServerMessagesWithRemoteIDs:]"];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__EDServerMessagePersistence_deleteServerMessagesWithRemoteIDs___block_invoke;
  v9[3] = &unk_1E8250288;
  v9[4] = self;
  v7 = dsCopy;
  v10 = v7;
  v11 = &v12;
  [database __performWriteWithCaller:v6 usingBlock:v9];

  LOBYTE(dsCopy) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);

  return dsCopy;
}

uint64_t __64__EDServerMessagePersistence_deleteServerMessagesWithRemoteIDs___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _remoteIDStringForRemoteIDArray:*(a1 + 40)];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DELETE FROM server_messages WHERE (mailbox = %lld) AND (remote_id in (%@))", objc_msgSend(*(a1 + 32), "mailboxID"), v4];
  *(*(*(a1 + 48) + 8) + 24) = [v3 executeStatementString:v5 errorMessage:@"removing server messages"];

  v6 = *(*(*(a1 + 48) + 8) + 24);
  return v6;
}

- (BOOL)deleteAllServerMessagesInMailbox
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  database = [(EDServerMessagePersistence *)self database];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDServerMessagePersistence deleteAllServerMessagesInMailbox]"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__EDServerMessagePersistence_deleteAllServerMessagesInMailbox__block_invoke;
  v6[3] = &unk_1E8250FD8;
  v6[4] = self;
  v6[5] = &v7;
  [database __performWriteWithCaller:v4 usingBlock:v6];

  LOBYTE(database) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return database;
}

uint64_t __62__EDServerMessagePersistence_deleteAllServerMessagesInMailbox__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DELETE FROM server_messages WHERE mailbox = %llu", objc_msgSend(*(a1 + 32), "mailboxID")];
  *(*(*(a1 + 40) + 8) + 24) = [v3 executeStatementString:v4 errorMessage:@"removing all server messages"];

  v5 = *(*(*(a1 + 40) + 8) + 24);
  return v5;
}

- (BOOL)applyFlagChange:(id)change toMessagesWithRemoteIDs:(id)ds
{
  changeCopy = change;
  dsCopy = ds;
  if ([changeCopy hasChanges])
  {
    v8 = objc_opt_new();
    if ([changeCopy readChanged])
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"read = %d", objc_msgSend(changeCopy, "read")];
      [v8 addObject:v9];
    }

    if ([changeCopy deletedChanged])
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"deleted = %d", objc_msgSend(changeCopy, "deleted")];
      [v8 addObject:v10];
    }

    if ([changeCopy repliedChanged])
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"replied = %d", objc_msgSend(changeCopy, "replied")];
      [v8 addObject:v11];
    }

    if ([changeCopy flaggedChanged])
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"flagged = %d", objc_msgSend(changeCopy, "flagged")];
      [v8 addObject:v12];
    }

    if ([changeCopy draftChanged])
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"draft = %d", objc_msgSend(changeCopy, "draft")];
      [v8 addObject:v13];
    }

    if ([changeCopy forwardedChanged])
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"forwarded = %d", objc_msgSend(changeCopy, "forwarded")];
      [v8 addObject:v14];
    }

    if ([changeCopy redirectedChanged])
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"redirected = %d", objc_msgSend(changeCopy, "redirected")];
      [v8 addObject:v15];
    }

    if ([changeCopy junkLevelSetByUserChanged])
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"junk_level_set_by_user = %d", objc_msgSend(changeCopy, "junkLevelSetByUser")];
      [v8 addObject:v16];
    }

    if ([changeCopy junkLevelChanged])
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"junk_level = %d", objc_msgSend(changeCopy, "junkLevel")];
      [v8 addObject:v17];
    }

    if ([changeCopy flagColorChanged])
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"flag_color = %d", objc_msgSend(changeCopy, "flagColor")];
      [v8 addObject:v18];
    }

    v19 = [(EDServerMessagePersistence *)self _remoteIDStringForRemoteIDArray:dsCopy];
    v20 = MEMORY[0x1E696AEC0];
    v21 = [v8 componentsJoinedByString:{@", "}];
    v22 = [v20 stringWithFormat:@"UPDATE server_messages SET %@ WHERE (mailbox = %lld) AND (remote_id in (%@))", v21, -[EDServerMessagePersistence mailboxID](self, "mailboxID"), v19];

    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = 0;
    database = [(EDServerMessagePersistence *)self database];
    v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDServerMessagePersistence applyFlagChange:toMessagesWithRemoteIDs:]"];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __70__EDServerMessagePersistence_applyFlagChange_toMessagesWithRemoteIDs___block_invoke;
    v28[3] = &unk_1E8250FD8;
    v30 = &v31;
    v25 = v22;
    v29 = v25;
    [database __performWriteWithCaller:v24 usingBlock:v28];

    v26 = *(v32 + 24);
    _Block_object_dispose(&v31, 8);
  }

  else
  {
    v26 = 1;
  }

  return v26 & 1;
}

uint64_t __70__EDServerMessagePersistence_applyFlagChange_toMessagesWithRemoteIDs___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 40) + 8) + 24) = [v3 executeStatementString:*(a1 + 32) errorMessage:@"Setting flags"];
  v4 = *(*(*(a1 + 40) + 8) + 24);

  return v4;
}

- (BOOL)applySortedFlags:(id)flags
{
  flagsCopy = flags;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  database = [(EDServerMessagePersistence *)self database];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDServerMessagePersistence applySortedFlags:]"];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__EDServerMessagePersistence_applySortedFlags___block_invoke;
  v9[3] = &unk_1E8250288;
  v9[4] = self;
  v7 = flagsCopy;
  v10 = v7;
  v11 = &v12;
  [database __performWriteWithCaller:v6 usingBlock:v9];

  LOBYTE(flagsCopy) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);

  return flagsCopy;
}

uint64_t __47__EDServerMessagePersistence_applySortedFlags___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__EDServerMessagePersistence_applySortedFlags___block_invoke_2;
  aBlock[3] = &unk_1E8257AA0;
  aBlock[4] = *(a1 + 32);
  v4 = _Block_copy(aBlock);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = *(a1 + 40);
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(a1 + 48) + 8);
        if (*(v9 + 24) == 1)
        {
          v10 = v4[2](v4, *(*(&v13 + 1) + 8 * v8));
          *(*(*(a1 + 48) + 8) + 24) = [v3 executeStatementString:v10 errorMessage:{@"Setting flags", v13}];
        }

        else
        {
          *(v9 + 24) = 0;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v6);
  }

  v11 = *(*(*(a1 + 48) + 8) + 24);
  return v11 & 1;
}

id __47__EDServerMessagePersistence_applySortedFlags___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E696AD60] stringWithCapacity:100];
  [v4 appendString:@"UPDATE server_messages SET "];
  v5 = [v3 second];
  if ([v5 read])
  {
    v6 = @"read = 1";
  }

  else
  {
    v6 = @"read = 0";
  }

  [v4 appendString:v6];

  v7 = [v3 second];
  if ([v7 deleted])
  {
    v8 = @", deleted = 1";
  }

  else
  {
    v8 = @", deleted = 0";
  }

  [v4 appendString:v8];

  v9 = [v3 second];
  if ([v9 replied])
  {
    v10 = @", replied = 1";
  }

  else
  {
    v10 = @", replied = 0";
  }

  [v4 appendString:v10];

  v11 = [v3 second];
  if ([v11 flagged])
  {
    v12 = @", flagged = 1";
  }

  else
  {
    v12 = @", flagged = 0";
  }

  [v4 appendString:v12];

  v13 = [v3 second];
  if ([v13 draft])
  {
    v14 = @", draft = 1";
  }

  else
  {
    v14 = @", draft = 0";
  }

  [v4 appendString:v14];

  v15 = [v3 second];
  if ([v15 forwarded])
  {
    v16 = @", forwarded = 1";
  }

  else
  {
    v16 = @", forwarded = 0";
  }

  [v4 appendString:v16];

  v17 = [v3 second];
  if ([v17 redirected])
  {
    v18 = @", redirected = 1";
  }

  else
  {
    v18 = @", redirected = 0";
  }

  [v4 appendString:v18];

  v19 = [v3 second];
  [v4 appendFormat:@", junk_level = %d", objc_msgSend(v19, "junkLevel")];

  v20 = [v3 second];
  [v4 appendFormat:@", flag_color = %d", objc_msgSend(v20, "flagColor")];

  v21 = [*(a1 + 32) mailboxID];
  v22 = [v3 first];
  [v4 appendFormat:@" WHERE (mailbox = %lld) AND (remote_id = %@)", v21, v22];

  return v4;
}

- (void)enumerateUIDsInRanges:(id)ranges withBlock:(id)block
{
  rangesCopy = ranges;
  blockCopy = block;
  if ([rangesCopy count])
  {
    database = [(EDServerMessagePersistence *)self database];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDServerMessagePersistence enumerateUIDsInRanges:withBlock:]"];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __62__EDServerMessagePersistence_enumerateUIDsInRanges_withBlock___block_invoke;
    v10[3] = &unk_1E8257AC8;
    v11 = rangesCopy;
    selfCopy = self;
    v13 = blockCopy;
    [database __performReadWithCaller:v9 usingBlock:v10];
  }
}

uint64_t __62__EDServerMessagePersistence_enumerateUIDsInRanges_withBlock___block_invoke(id *a1, void *a2)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v22 = a2;
  v3 = [MEMORY[0x1E695DF70] array];
  for (i = 0; i < [a1[4] count]; ++i)
  {
    [v3 addObject:@"(? <= remote_id AND remote_id < ?)"];
  }

  v5 = [v3 componentsJoinedByString:@" OR "];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT remote_id FROM server_messages WHERE mailbox = ? AND (%@) ORDER BY remote_id", v5];
  v7 = MEMORY[0x1E695DF70];
  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(a1[5], "mailboxID")}];
  v26[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  v10 = [v7 arrayWithArray:v9];

  for (j = 0; j < [a1[4] count]; ++j)
  {
    v12 = [a1[4] objectAtIndexedSubscript:j];
    v13 = [v12 rangeValue];
    v15 = v14;

    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v13];
    [v10 addObject:v16];

    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v13 + v15];
    [v10 addObject:v17];
  }

  v18 = [v22 preparedStatementForQueryString:v6];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __62__EDServerMessagePersistence_enumerateUIDsInRanges_withBlock___block_invoke_2;
  v24[3] = &unk_1E8250500;
  v25 = a1[6];
  v23 = 0;
  v19 = [v18 executeWithIndexedBindings:v10 usingBlock:v24 error:&v23];
  v20 = v23;

  return v19;
}

void __62__EDServerMessagePersistence_enumerateUIDsInRanges_withBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 objectAtIndexedSubscript:0];
  v4 = [v3 int64Value];

  if (v4 <= 0xFFFFFFFFLL)
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)enumerateUIDsInIndexSet:(id)set includingJSON:(id)n excludingJSON:(id)oN withBlock:(id)block
{
  setCopy = set;
  nCopy = n;
  oNCopy = oN;
  blockCopy = block;
  database = [(EDServerMessagePersistence *)self database];
  v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDServerMessagePersistence enumerateUIDsInIndexSet:includingJSON:excludingJSON:withBlock:]"];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __92__EDServerMessagePersistence_enumerateUIDsInIndexSet_includingJSON_excludingJSON_withBlock___block_invoke;
  v20[3] = &unk_1E8257AF0;
  v16 = setCopy;
  v21 = v16;
  selfCopy = self;
  v17 = nCopy;
  v23 = v17;
  v18 = oNCopy;
  v24 = v18;
  v19 = blockCopy;
  v25 = v19;
  [database __performReadWithCaller:v15 usingBlock:v20];
}

uint64_t __92__EDServerMessagePersistence_enumerateUIDsInIndexSet_includingJSON_excludingJSON_withBlock___block_invoke(uint64_t a1, void *a2)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) ed_uidQueryExpression];
  v5 = MEMORY[0x1E695DF90];
  v22 = @":mailbox";
  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 40), "mailboxID")}];
  v23[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  v8 = [v5 dictionaryWithDictionary:v7];

  v9 = *(a1 + 48);
  if (v9)
  {
    [v8 setObject:v9 forKeyedSubscript:@":include"];
    v10 = @"remote_id IN (SELECT value FROM json_each(:include))";
  }

  else
  {
    v10 = @"0";
  }

  v11 = *(a1 + 56);
  if (v11)
  {
    [v8 setObject:v11 forKeyedSubscript:@":exclude"];
    v12 = @"(SELECT value FROM json_each(:exclude))";
  }

  else
  {
    v12 = @"()";
  }

  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT remote_id FROM server_messages WHERE mailbox = :mailbox AND ((%@) OR (%@)) AND (NOT remote_id IN %@) ORDER BY remote_id", v4, v10, v12];
  v14 = +[EDServerMessagePersistence log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    __92__EDServerMessagePersistence_enumerateUIDsInIndexSet_includingJSON_excludingJSON_withBlock___block_invoke_cold_1(v13, v8, v14);
  }

  v15 = [v3 preparedStatementForQueryString:v13];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __92__EDServerMessagePersistence_enumerateUIDsInIndexSet_includingJSON_excludingJSON_withBlock___block_invoke_405;
  v20[3] = &unk_1E8250500;
  v21 = *(a1 + 64);
  v19 = 0;
  v16 = [v15 executeWithNamedBindings:v8 usingBlock:v20 error:&v19];
  v17 = v19;

  return v16;
}

void __92__EDServerMessagePersistence_enumerateUIDsInIndexSet_includingJSON_excludingJSON_withBlock___block_invoke_405(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 objectAtIndexedSubscript:0];
  v4 = [v3 int64Value];

  if (v4 <= 0xFFFFFFFFLL)
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)enumerateUIDsInOlderThanDate:(id)date limit:(unint64_t)limit withBlock:(id)block
{
  dateCopy = date;
  blockCopy = block;
  database = [(EDServerMessagePersistence *)self database];
  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDServerMessagePersistence enumerateUIDsInOlderThanDate:limit:withBlock:]"];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __75__EDServerMessagePersistence_enumerateUIDsInOlderThanDate_limit_withBlock___block_invoke;
  v14[3] = &unk_1E8257B18;
  v14[4] = self;
  v12 = dateCopy;
  v15 = v12;
  limitCopy = limit;
  v13 = blockCopy;
  v16 = v13;
  [database __performReadWithCaller:v11 usingBlock:v14];
}

uint64_t __75__EDServerMessagePersistence_enumerateUIDsInOlderThanDate_limit_withBlock___block_invoke(uint64_t a1, void *a2)
{
  v17[4] = *MEMORY[0x1E69E9840];
  v3 = [a2 preparedStatementForQueryString:@"SELECT server_messages.remote_id FROM messages INNER JOIN server_messages ON messages.ROWID = server_messages.message WHERE (server_messages.mailbox = :mailbox AND messages.date_sent < :date AND 0 < server_messages.remote_id AND (messages.flags & :is_search_mask) == 0) ORDER BY messages.date_sent ASC LIMIT :limit"];
  v16[0] = @":mailbox";
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 32), "mailboxID")}];
  v17[0] = v4;
  v16[1] = @":date";
  v5 = MEMORY[0x1E696AD98];
  [*(a1 + 40) timeIntervalSince1970];
  v7 = [v5 numberWithLongLong:llround(v6)];
  v17[1] = v7;
  v16[2] = @":limit";
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 56)];
  v16[3] = @":is_search_mask";
  v17[2] = v8;
  v17[3] = &unk_1F45E6AA8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:4];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __75__EDServerMessagePersistence_enumerateUIDsInOlderThanDate_limit_withBlock___block_invoke_419;
  v14[3] = &unk_1E8250500;
  v15 = *(a1 + 48);
  v13 = 0;
  v10 = [v3 executeWithNamedBindings:v9 usingBlock:v14 error:&v13];
  v11 = v13;

  return v10;
}

void __75__EDServerMessagePersistence_enumerateUIDsInOlderThanDate_limit_withBlock___block_invoke_419(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 objectAtIndexedSubscript:0];
  v4 = [v3 int64Value];

  if ((v4 - 1) <= 0xFFFFFFFD)
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (id)downloadStateForUIDs:(id)ds
{
  dsCopy = ds;
  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(dsCopy, "count")}];
  database = [(EDServerMessagePersistence *)self database];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDServerMessagePersistence downloadStateForUIDs:]"];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__EDServerMessagePersistence_downloadStateForUIDs___block_invoke;
  v13[3] = &unk_1E8250440;
  v8 = dsCopy;
  v14 = v8;
  selfCopy = self;
  v9 = v5;
  v16 = v9;
  [database __performReadWithCaller:v7 usingBlock:v13];

  v10 = v16;
  v11 = v9;

  return v9;
}

uint64_t __51__EDServerMessagePersistence_downloadStateForUIDs___block_invoke(id *a1, void *a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [a1[4] ed_uidQueryExpressionWithTableName:@"server_messages"];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT message_global_data.download_state, server_messages.remote_id FROM message_global_data JOIN messages ON message_global_data.rowid == messages.global_message_id JOIN server_messages ON messages.rowid == server_messages.message WHERE server_messages.mailbox == :mailbox AND %@", v4];
  v6 = [v3 preparedStatementForQueryString:v5];
  v15 = @":mailbox";
  v7 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(a1[5], "mailboxID")}];
  v16[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__EDServerMessagePersistence_downloadStateForUIDs___block_invoke_2;
  v13[3] = &unk_1E8250300;
  v14 = a1[6];
  v12 = 0;
  v9 = [v6 executeWithNamedBindings:v8 usingBlock:v13 error:&v12];
  v10 = v12;

  return v9;
}

void __51__EDServerMessagePersistence_downloadStateForUIDs___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 objectAtIndexedSubscript:0];
  v4 = [v3 numberValue];

  v5 = [v9 objectAtIndexedSubscript:1];
  v6 = [v5 int64Value];

  if ((v6 - 1) <= 0xFFFFFFFD)
  {
    v7 = *(a1 + 32);
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
    [v7 setObject:v4 forKeyedSubscript:v8];
  }
}

- (void)setDownloadStateForUIDs:(id)ds
{
  v22 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  database = [(EDServerMessagePersistence *)self database];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDServerMessagePersistence setDownloadStateForUIDs:]"];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__EDServerMessagePersistence_setDownloadStateForUIDs___block_invoke;
  v10[3] = &unk_1E8250288;
  v7 = dsCopy;
  v11 = v7;
  selfCopy = self;
  v13 = &v14;
  [database __performWriteWithCaller:v6 usingBlock:v10];

  v8 = +[EDServerMessagePersistence log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v15[3];
    *buf = 134218240;
    selfCopy2 = self;
    v20 = 1024;
    v21 = v9;
    _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "%p: Updated download_state for %u rows.", buf, 0x12u);
  }

  _Block_object_dispose(&v14, 8);
}

uint64_t __54__EDServerMessagePersistence_setDownloadStateForUIDs___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__EDServerMessagePersistence_setDownloadStateForUIDs___block_invoke_2;
  v7[3] = &unk_1E8257B40;
  v8 = v3;
  v9 = *(a1 + 40);
  v5 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v7];

  return 1;
}

void __54__EDServerMessagePersistence_setDownloadStateForUIDs___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v16[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a2 ed_uidQueryExpressionWithTableName:@"server_messages"];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UPDATE message_global_data SET download_state = :new_state WHERE rowid in (SELECT messages.global_message_id FROM server_messages JOIN messages ON messages.rowid == server_messages.message WHERE server_messages.mailbox == :mailbox AND %@)", v6];
  v8 = [*(a1 + 32) preparedStatementForQueryString:v7];
  v15[1] = @":mailbox";
  v16[0] = v5;
  v14 = 0;
  v15[0] = @":new_state";
  v9 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 40), "mailboxID")}];
  v16[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v13 = 0;
  v11 = [v8 executeWithNamedBindings:v10 rowsChanged:&v14 error:&v13];
  v12 = v13;

  if (v11)
  {
    *(*(*(a1 + 48) + 8) + 24) += v14;
  }

  else
  {
    [*(a1 + 32) handleError:v12 message:@"Updating download state."];
  }
}

- (void)enumerateMessageBatchLimitUIDsWithWindow:(_NSRange)window batchSize:(int64_t)size newUIDCount:(int64_t)count block:(id)block
{
  length = window.length;
  location = window.location;
  blockCopy = block;
  if (size >= 1)
  {
    database = [(EDServerMessagePersistence *)self database];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDServerMessagePersistence enumerateMessageBatchLimitUIDsWithWindow:batchSize:newUIDCount:block:]"];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __99__EDServerMessagePersistence_enumerateMessageBatchLimitUIDsWithWindow_batchSize_newUIDCount_block___block_invoke;
    v14[3] = &unk_1E8257B68;
    v14[4] = self;
    sizeCopy = size;
    v17 = location;
    v18 = length;
    countCopy = count;
    v15 = blockCopy;
    [database __performReadWithCaller:v13 usingBlock:v14];
  }
}

uint64_t __99__EDServerMessagePersistence_enumerateMessageBatchLimitUIDsWithWindow_batchSize_newUIDCount_block___block_invoke(uint64_t a1, void *a2)
{
  v18[5] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v17[0] = @":mailbox";
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 32), "mailboxID")}];
  v18[0] = v4;
  v17[1] = @":batch_size";
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 48)];
  v18[1] = v5;
  v17[2] = @":lower";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 56)];
  v18[2] = v6;
  v17[3] = @":upper";
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 56) + *(a1 + 64) - 1];
  v18[3] = v7;
  v17[4] = @":new_uid_count";
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 72)];
  v18[4] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:5];

  v10 = [v3 preparedStatementForQueryString:{@"WITH cte AS NOT materialized   (SELECT remote_id   FROM server_messages   WHERE mailbox = :mailbox    AND remote_id IS NOT NULL    AND remote_id >= :lower    AND remote_id <= :upper  ORDER BY remote_id DESC) SELECT remote_id, rn FROM   (SELECT *, row_number() OVER () AS rn FROM cte) WHERE rn == 1   OR (rn + :new_uid_count) % :batch_size == 1   OR rn == (SELECT count(*) FROM cte) "}];;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __99__EDServerMessagePersistence_enumerateMessageBatchLimitUIDsWithWindow_batchSize_newUIDCount_block___block_invoke_2;
  v15[3] = &unk_1E8250500;
  v16 = *(a1 + 40);
  v14 = 0;
  v11 = [v10 executeWithNamedBindings:v9 usingBlock:v15 error:&v14];
  v12 = v14;

  return v11;
}

void __99__EDServerMessagePersistence_enumerateMessageBatchLimitUIDsWithWindow_batchSize_newUIDCount_block___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 objectAtIndexedSubscript:0];
  v4 = [v3 int64Value];

  v5 = [v6 objectAtIndexedSubscript:1];
  [v5 int64Value];

  if (v4 <= 0xFFFFFFFFLL)
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)groupInsideWriteTransactionWithDescription:(id)description block:(id)block
{
  descriptionCopy = description;
  blockCopy = block;
  database = [(EDServerMessagePersistence *)self database];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __79__EDServerMessagePersistence_groupInsideWriteTransactionWithDescription_block___block_invoke;
  v10[3] = &unk_1E8250F38;
  v9 = blockCopy;
  v11 = v9;
  [database __performWriteWithCaller:descriptionCopy usingBlock:v10];
}

- (BOOL)addLabels:(id)labels removeLabels:(id)removeLabels toMessagesWithRemoteIDs:(id)ds
{
  labelsCopy = labels;
  removeLabelsCopy = removeLabels;
  dsCopy = ds;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 1;
  database = [(EDServerMessagePersistence *)self database];
  v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[EDServerMessagePersistence addLabels:removeLabels:toMessagesWithRemoteIDs:]"];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __77__EDServerMessagePersistence_addLabels_removeLabels_toMessagesWithRemoteIDs___block_invoke;
  v17[3] = &unk_1E8257B90;
  v13 = dsCopy;
  v22 = &v23;
  v18 = v13;
  selfCopy = self;
  v14 = labelsCopy;
  v20 = v14;
  v15 = removeLabelsCopy;
  v21 = v15;
  [database __performWriteWithCaller:v12 usingBlock:v17];

  LOBYTE(labelsCopy) = *(v24 + 24);
  _Block_object_dispose(&v23, 8);

  return labelsCopy;
}

uint64_t __77__EDServerMessagePersistence_addLabels_removeLabels_toMessagesWithRemoteIDs___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v11 != v6)
      {
        objc_enumerationMutation(v4);
      }

      *(*(*(a1 + 64) + 8) + 24) = [*(a1 + 40) _addLabels:*(a1 + 48) removeLabels:*(a1 + 56) forUID:objc_msgSend(*(*(&v10 + 1) + 8 * v7) connection:{"integerValue", v10), v3}];
      if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v8 = *(*(*(a1 + 64) + 8) + 24);
  return v8 & 1;
}

- (BOOL)_addLabels:(id)labels removeLabels:(id)removeLabels forUID:(unsigned int)d connection:(id)connection
{
  v7 = *&d;
  v63[2] = *MEMORY[0x1E69E9840];
  labelsCopy = labels;
  removeLabelsCopy = removeLabels;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__43;
  v57 = __Block_byref_object_dispose__43;
  v58 = 0;
  connectionCopy = connection;
  v39 = [connectionCopy preparedStatementForQueryString:@"SELECT ROWID FROM server_messages WHERE remote_id = ? AND mailbox = ? LIMIT 1"];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v7];
  v63[0] = v10;
  v11 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[EDServerMessagePersistence mailboxID](self, "mailboxID")}];
  v63[1] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:2];
  v51 = 0;
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __72__EDServerMessagePersistence__addLabels_removeLabels_forUID_connection___block_invoke;
  v52[3] = &unk_1E8250418;
  v52[4] = &v53;
  v37 = [v39 executeWithIndexedBindings:v12 usingBlock:v52 error:&v51];
  v13 = v51;

  if (v37)
  {
    if (!v54[5])
    {
LABEL_3:
      v14 = 1;
      goto LABEL_28;
    }
  }

  else
  {
    [connectionCopy handleError:v13 message:{@"Getting server message ID", removeLabelsCopy}];
    if (!v54[5])
    {
LABEL_27:
      v14 = 0;
      goto LABEL_28;
    }
  }

  v15 = [connectionCopy preparedStatementForQueryString:{@"INSERT OR IGNORE INTO server_labels (server_message, label) VALUES (?, ?)", removeLabelsCopy}];
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v16 = labelsCopy;
  v17 = [v16 countByEnumeratingWithState:&v47 objects:v62 count:16];
  if (v17)
  {
    v18 = *v48;
    while (2)
    {
      v19 = 0;
      v20 = v13;
      do
      {
        if (*v48 != v18)
        {
          objc_enumerationMutation(v16);
        }

        persistentID = [*(*(&v47 + 1) + 8 * v19) persistentID];
        longLongValue = [persistentID longLongValue];

        v61[0] = v54[5];
        v23 = [MEMORY[0x1E696AD98] numberWithLongLong:longLongValue];
        v61[1] = v23;
        v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:2];
        v46 = v20;
        v25 = [v15 executeWithIndexedBindings:v24 usingBlock:0 error:&v46];
        v13 = v46;

        if ((v25 & 1) == 0)
        {
          [connectionCopy handleError:v13 message:@"Adding server label"];
LABEL_25:
          v14 = 0;
          goto LABEL_26;
        }

        ++v19;
        v20 = v13;
      }

      while (v17 != v19);
      v17 = [v16 countByEnumeratingWithState:&v47 objects:v62 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  if ((v37 & 1) == 0)
  {
    goto LABEL_27;
  }

  if (!v54[5])
  {
    goto LABEL_3;
  }

  v15 = [connectionCopy preparedStatementForQueryString:@"DELETE FROM server_labels WHERE server_message = ? AND label = ?"];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v16 = removeLabelsCopy;
  v26 = [v16 countByEnumeratingWithState:&v42 objects:v60 count:16];
  if (v26)
  {
    v27 = *v43;
    while (2)
    {
      v28 = 0;
      v29 = v13;
      do
      {
        if (*v43 != v27)
        {
          objc_enumerationMutation(v16);
        }

        persistentID2 = [*(*(&v42 + 1) + 8 * v28) persistentID];
        longLongValue2 = [persistentID2 longLongValue];

        v59[0] = v54[5];
        v32 = [MEMORY[0x1E696AD98] numberWithLongLong:longLongValue2];
        v59[1] = v32;
        v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:2];
        v41 = v29;
        v34 = [v15 executeWithIndexedBindings:v33 usingBlock:0 error:&v41];
        v13 = v41;

        if ((v34 & 1) == 0)
        {
          [connectionCopy handleError:v13 message:@"Removing server label"];
          goto LABEL_25;
        }

        ++v28;
        v29 = v13;
      }

      while (v26 != v28);
      v26 = [v16 countByEnumeratingWithState:&v42 objects:v60 count:16];
      v14 = 1;
      if (v26)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v14 = 1;
  }

LABEL_26:

LABEL_28:
  _Block_object_dispose(&v53, 8);

  return v14;
}

void __72__EDServerMessagePersistence__addLabels_removeLabels_forUID_connection___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 objectAtIndexedSubscript:0];
  v4 = [v3 numberValue];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)_remoteIDStringForRemoteIDArray:(id)array
{
  arrayCopy = array;
  if ([(EDServerMessagePersistence *)self useNumericSearch])
  {
    [arrayCopy ef_filter:&__block_literal_global_468_0];
  }

  else
  {
    [arrayCopy valueForKey:@"ef_quotedSQLEscapedString"];
  }
  v5 = ;
  v6 = [v5 componentsJoinedByString:{@", "}];

  return v6;
}

- (void)serverMessagesForIMAPUIDs:(uint64_t)a3 limit:(os_log_t)log returnLastEntries:.cold.1(uint8_t *buf, uint64_t a2, uint64_t a3, os_log_t log)
{
  *buf = 134218240;
  *(buf + 4) = a2;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Returned more results (%lu) than requested (%lu)", buf, 0x16u);
}

void __57__EDServerMessagePersistence_deleteAllClearedUIDMessages__block_invoke_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_5_1(&dword_1C61EF000, a2, a3, "Unable to read server messages with 'cleared' UIDs: %{public}@", a2);
}

void __57__EDServerMessagePersistence_deleteAllClearedUIDMessages__block_invoke_169_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_5_1(&dword_1C61EF000, a2, a3, "Unable to delete server messages with 'cleared' UIDs: %{public}@", a2);
}

void __57__EDServerMessagePersistence_deleteAllClearedUIDMessages__block_invoke_169_cold_2(int a1, int a2, uint8_t *buf, os_log_t log)
{
  *buf = 67109376;
  *(buf + 1) = a1;
  *(buf + 4) = 1024;
  *(buf + 10) = a2;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Number of deleted rows (%u) does not match server messages previously found (%u).", buf, 0xEu);
}

void __64__EDServerMessagePersistence_serverMessagesForMessageIDHeaders___block_invoke_2_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_5_1(&dword_1C61EF000, a2, a3, "Unable to look up existing messages based on message-id header: %{public}@", a2);
}

void __92__EDServerMessagePersistence_enumerateUIDsInIndexSet_includingJSON_excludingJSON_withBlock___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_debug_impl(&dword_1C61EF000, log, OS_LOG_TYPE_DEBUG, "enumerateUIDs query '%{public}@', bindings: %{public}@", &v3, 0x16u);
}

@end