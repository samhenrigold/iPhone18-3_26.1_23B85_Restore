@interface MFMailboxPersistence
@end

@implementation MFMailboxPersistence

void __45__MFMailboxPersistence_iOS_mailboxCacheQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.mail.account.mailbox-cache", v2);
  v1 = mailboxCacheQueue_queue;
  mailboxCacheQueue_queue = v0;
}

id __84__MFMailboxPersistence_iOS_mailboxDatabaseIDsForMailboxObjectIDs_createIfNecessary___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 url];
  v5 = [v4 absoluteString];

  v6 = [*(a1 + 32) mailboxIDForURLString:v5 createIfNecessary:0];
  v7 = *MEMORY[0x1E699A728];
  if (v6 == *MEMORY[0x1E699A728] && *(a1 + 48) == 1)
  {
    v8 = [*(a1 + 40) mailboxProvider];
    v9 = [v8 legacyMailboxForObjectID:v3];

    if (v9)
    {
      v6 = [*(a1 + 32) mailboxIDForURLString:v5 createIfNecessary:1];
    }
  }

  if (v6 == v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = [MEMORY[0x1E696AD98] numberWithLongLong:v6];
  }

  return v10;
}

uint64_t __67__MFMailboxPersistence_iOS_mailboxDatabaseIDsForMailboxURLStrings___block_invoke(uint64_t a1, void *a2)
{
  v17[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    v5 = [v3 preparedStatementForQueryString:{@"SELECT rowid, url FROM mailboxes WHERE substr(url, 1, :length) IS :pattern "}];;
    v6 = *(a1 + 32);
    v16[0] = @":pattern";
    v16[1] = @":length";
    v17[0] = v6;
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v6, "length")}];
    v17[1] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  }

  else
  {
    v5 = [v3 preparedStatementForQueryString:{@"SELECT rowid, url FROM mailboxes"}];;
    v8 = MEMORY[0x1E695E0F8];
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__MFMailboxPersistence_iOS_mailboxDatabaseIDsForMailboxURLStrings___block_invoke_2;
  v13[3] = &unk_1E7AA4378;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v14 = v9;
  v15 = v10;
  v11 = [v5 executeWithNamedBindings:v8 usingBlock:v13 error:0];

  return v11;
}

void __67__MFMailboxPersistence_iOS_mailboxDatabaseIDsForMailboxURLStrings___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 objectAtIndexedSubscript:1];
  v4 = [v3 stringValue];

  if ([*(a1 + 32) containsObject:v4])
  {
    v5 = [v7 objectAtIndexedSubscript:0];
    v6 = [v5 numberValue];

    if (v6 && v4)
    {
      [*(*(*(a1 + 40) + 8) + 40) setObject:v6 forKeyedSubscript:v4];
    }
  }
}

uint64_t __59__MFMailboxPersistence_iOS_insertDatabaseRowForMailboxURL___block_invoke(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(a1 + 32) insertGeneration:{objc_msgSend(v3, "transactionGeneration")}];
  v4 = [v3 preparedStatementForQueryString:@"INSERT OR IGNORE INTO mailboxes (url) values (?)"];;
  [v3 clearLastInsertedDatabaseID];
  v5 = [*(a1 + 40) absoluteString];
  v13[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  [v4 executeWithIndexedBindings:v6 usingBlock:&__block_literal_global_33 error:0];

  v7 = [v3 lastInsertedDatabaseID];
  if (v7)
  {
    *(*(*(a1 + 48) + 8) + 32) = v7;
  }

  else
  {

    v4 = [v3 preparedStatementForQueryString:@"SELECT rowid FROM mailboxes WHERE url = ?"];;
    v8 = [*(a1 + 40) absoluteString];
    v12 = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __59__MFMailboxPersistence_iOS_insertDatabaseRowForMailboxURL___block_invoke_3;
    v11[3] = &unk_1E7AA3810;
    v11[4] = *(a1 + 48);
    [v4 executeWithIndexedBindings:v9 usingBlock:v11 error:0];
  }

  return 1;
}

void __59__MFMailboxPersistence_iOS_insertDatabaseRowForMailboxURL___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 objectAtIndexedSubscript:0];
  *(*(*(a1 + 32) + 8) + 32) = [v3 int64Value];
}

uint64_t __59__MFMailboxPersistence_iOS_mailboxURLForMailboxDatabaseID___block_invoke(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [a2 preparedStatementForQueryString:@"SELECT url FROM mailboxes WHERE rowid IS :rowid "];;
  v9 = @":rowid";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a1 + 40)];
  v10[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__MFMailboxPersistence_iOS_mailboxURLForMailboxDatabaseID___block_invoke_2;
  v8[3] = &unk_1E7AA3810;
  v8[4] = *(a1 + 32);
  v6 = [v3 executeWithNamedBindings:v5 usingBlock:v8 error:0];

  return v6;
}

void __59__MFMailboxPersistence_iOS_mailboxURLForMailboxDatabaseID___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 objectAtIndexedSubscript:0];
  v4 = [v3 stringValue];

  if (v4)
  {
    v5 = [MEMORY[0x1E695DFF8] ef_urlWithString:v4];
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

uint64_t __62__MFMailboxPersistence_iOS_serverCountsForMailboxScope_block___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x1E699B948]);
  v5 = [MEMORY[0x1E699B610] mailboxesTableName];
  v6 = [v4 initWithResultColumn:@"url" table:v5];

  [v6 addResultColumn:@"server_unread_count"];
  [v6 addResultColumn:@"most_recent_status_count"];
  [v6 addResultColumn:@"last_sync_status_count"];
  [v6 setWhere:*(a1 + 32)];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__MFMailboxPersistence_iOS_serverCountsForMailboxScope_block___block_invoke_2;
  v9[3] = &unk_1E7AA3A18;
  v10 = *(a1 + 40);
  v7 = [v3 executeSelectStatement:v6 withBlock:v9 error:0];

  return v7;
}

void __62__MFMailboxPersistence_iOS_serverCountsForMailboxScope_block___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 objectAtIndexedSubscript:0];
  v4 = [v3 stringValue];

  v5 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v4];
  v6 = [objc_alloc(MEMORY[0x1E699AD20]) initWithURL:v5];
  v7 = [v10 objectAtIndexedSubscript:1];
  [v7 integerValue];

  v8 = [v10 objectAtIndexedSubscript:2];
  [v8 integerValue];

  v9 = [v10 objectAtIndexedSubscript:3];
  [v9 integerValue];

  (*(*(a1 + 32) + 16))();
}

@end