@interface MFMessagePersistence
@end

@implementation MFMessagePersistence

void __31__MFMessagePersistence_iOS_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_24;
  log_log_24 = v1;
}

uint64_t __49__MFMessagePersistence_iOS_defaultLibraryOptions__block_invoke()
{
  _MergedGlobals = 7342143;
  result = _os_feature_enabled_impl();
  if ((result & 1) != 0 || (result = _os_feature_enabled_impl(), result) && (result = EMIsGreymatterSupported(), result))
  {
    _MergedGlobals |= 0x200020u;
  }

  return result;
}

uint64_t __52__MFMessagePersistence_iOS_messageIDsWithBasePaths___block_invoke(void *a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __52__MFMessagePersistence_iOS_messageIDsWithBasePaths___block_invoke_2;
  v17[3] = &unk_1E7AA3DD8;
  v4 = a1[4];
  v5 = a1[6];
  v17[4] = a1[5];
  v18 = v5;
  v16 = 0;
  [a2 executeSelectStatement:v4 withBlock:v17 error:&v16];
  v6 = v16;
  if (v6)
  {
    v7 = EMLogCategoryMessageLoading();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __52__MFMessagePersistence_iOS_messageIDsWithBasePaths___block_invoke_cold_1(a1, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  else
  {
    v7 = EMLogCategoryMessageLoading();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v14 = a1[7];
      *buf = 138543362;
      v20 = v14;
      _os_log_impl(&dword_1B0389000, v7, OS_LOG_TYPE_DEFAULT, "Found attachment basepaths for messages %{public}@", buf, 0xCu);
    }
  }

  return 1;
}

void __52__MFMessagePersistence_iOS_messageIDsWithBasePaths___block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"global_message_id"];
  v5 = [v4 numberValue];

  v6 = [v3 objectForKeyedSubscript:@"mailbox"];
  v7 = [v6 numberValue];

  v8 = MEMORY[0x1E695DFF8];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 152));
  v10 = [WeakRetained urlForMailboxID:{objc_msgSend(v7, "longLongValue")}];
  v11 = [v8 URLWithString:v10];

  v12 = [MailAccount accountWithURL:v11];
  v13 = MEMORY[0x1E695DFF8];
  v14 = [v12 defaultPath];
  v15 = [v13 URLWithString:v14];

  v16 = [*(a1 + 40) objectForKeyedSubscript:v5];
  if (v16)
  {
    v17 = EMLogCategoryMessageLoading();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v19 = v5;
      _os_log_impl(&dword_1B0389000, v17, OS_LOG_TYPE_DEFAULT, "Already found base path for global message ID %lld (likely due to duplicate message)", buf, 0xCu);
    }

    [v16 addObject:v15];
  }

  else
  {
    v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v15, 0}];
    [*(a1 + 40) setObject:? forKeyedSubscript:?];
  }
}

void __106__MFMessagePersistence_iOS_requestContentForMessageObjectID_requestID_options_delegate_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7)
  {
    v6 = [*(a1 + 32) summary];
    if (v6)
    {
    }

    else if (([*(a1 + 40) isCancelled] & 1) == 0)
    {
      [*(a1 + 48) generateSummaryForMessage:*(a1 + 32) downloadIfNecessary:1];
    }
  }

  (*(*(a1 + 56) + 16))();
}

void __106__MFMessagePersistence_iOS_requestContentForMessageObjectID_requestID_options_delegate_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v7 = [v5 securityInformation];
    v8 = [v7 smimeError];
    if (v8 || ([v5 hasMoreContent] & 1) != 0)
    {
      v9 = *(a1 + 120);

      if (v9 == 1)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

LABEL_11:
    v18 = EMLogCategoryMessageLoading();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0389000, v18, OS_LOG_TYPE_DEFAULT, "Skipping the retry for message content with network", buf, 2u);
    }

    [*(a1 + 96) setCompletedUnitCount:2];
    (*(*(a1 + 104) + 16))();
    goto LABEL_14;
  }

  if ((*(a1 + 120) & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  v10 = EMLogCategoryMessageLoading();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [*(a1 + 32) requestedRepresentation];
    v12 = *(a1 + 40);
    *buf = 138543618;
    v32 = v11;
    v33 = 2114;
    v34 = v12;
    _os_log_impl(&dword_1B0389000, v10, OS_LOG_TYPE_DEFAULT, "Retrying the request %{public}@ content for message %{public}@ with network", buf, 0x16u);
  }

  v13 = [*(a1 + 48) messageStore];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __106__MFMessagePersistence_iOS_requestContentForMessageObjectID_requestID_options_delegate_completionHandler___block_invoke_63;
  v20[3] = &unk_1E7AA70D8;
  v14 = *(a1 + 48);
  v15 = *(a1 + 40);
  v16 = *(a1 + 112);
  v21 = v15;
  v30 = v16;
  v19 = *(a1 + 48);
  v17 = v19.i64[0];
  v22 = vextq_s8(v19, v19, 8uLL);
  v23 = *(a1 + 64);
  v24 = *(a1 + 72);
  v25 = *(a1 + 80);
  v26 = *(a1 + 32);
  v27 = *(a1 + 88);
  v29 = *(a1 + 104);
  v28 = *(a1 + 96);
  [v13 fetchBodyDataForMessage:v14 completionHandler:v20];

LABEL_14:
}

void __106__MFMessagePersistence_iOS_requestContentForMessageObjectID_requestID_options_delegate_completionHandler___block_invoke_63(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = EMLogCategoryMessageLoading();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    __106__MFMessagePersistence_iOS_requestContentForMessageObjectID_requestID_options_delegate_completionHandler___block_invoke_63_cold_1(a1, buf, [v3 length], v4);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    v5 = v5[20];
  }

  v6 = v5;
  v7 = *(a1 + 112);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = [v9 messageTransformer];
  v12 = [MFMessageContentRequest onScheduler:v6 requestID:v7 requestContentForObjectID:v8 messagePersistence:v9 legacyMessage:v10 messageTransformer:v11 mailDropAttachmentGenerator:*(a1 + 56) listUnsubscribeHandler:*(a1 + 64) clientIdentifier:*(a1 + 72) options:*(a1 + 80) delegate:*(a1 + 88) completionHandler:*(a1 + 104)];

  [*(a1 + 96) addChild:v12 withPendingUnitCount:1];
}

void __74__MFMessagePersistence_iOS_generateSummaryForMessage_downloadIfNecessary___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) summaryLoaderProvider];
  v3 = [v2 messageSummaryLoaderForMessage:*(a1 + 40)];

  v4 = [v3 requestSummaryImmediatelyFromDownloadedMessage:*(a1 + 40) downloadIfNecessary:*(a1 + 48)];
  if (v4)
  {
    [*(a1 + 40) setSummary:v4];
    v5 = EMLogCategoryMessageLoading();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "length")}];
      v7 = [*(a1 + 40) messageID];
      v8 = 138412802;
      v9 = v6;
      v10 = 2112;
      v11 = v7;
      v12 = 2048;
      v13 = v3;
      _os_log_debug_impl(&dword_1B0389000, v5, OS_LOG_TYPE_DEBUG, "Generated summary (length=%{publid}@) for: %@ (summaryLoader=%p)", &v8, 0x20u);
    }
  }

  else
  {
    v5 = EMLogCategoryMessageLoading();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [*(a1 + 40) messageID];
      objc_claimAutoreleasedReturnValue();
      __74__MFMessagePersistence_iOS_generateSummaryForMessage_downloadIfNecessary___block_invoke_cold_1();
    }
  }
}

uint64_t __88__MFMessagePersistence_iOS__libraryMessageForMessageObjectID_preferNonOutgoingMessages___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mailbox];
  v3 = [v2 isOutgoingMailboxUid];

  return v3 ^ 1u;
}

uint64_t __74__MFMessagePersistence_iOS_globalIDForMessageWithDatabaseID_mailboxScope___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x1E699B948]);
  v5 = [objc_opt_class() messagesTableName];
  v6 = [v4 initWithResultColumn:@"global_message_id" table:v5];

  v7 = MEMORY[0x1E699B768];
  if (*(a1 + 64) == 1)
  {
    v8 = [v6 join:@"mailboxes" sourceColumn:@"mailbox" targetColumn:*MEMORY[0x1E699B768]];
    [v8 addResultColumn:@"url"];
  }

  v9 = MEMORY[0x1E699B8C8];
  v10 = [objc_opt_class() messagesTableName];
  v11 = [v9 table:v10 column:*v7];
  v12 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 56)];
  v13 = [v11 equalTo:v12];
  [v6 setWhere:v13];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __74__MFMessagePersistence_iOS_globalIDForMessageWithDatabaseID_mailboxScope___block_invoke_2;
  v16[3] = &unk_1E7AA7190;
  v18 = *(a1 + 64);
  v17 = *(a1 + 40);
  v14 = [v3 executeSelectStatement:v6 withBlock:v16 error:0];

  return v14;
}

void __74__MFMessagePersistence_iOS_globalIDForMessageWithDatabaseID_mailboxScope___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 objectAtIndexedSubscript:0];
  *(*(*(a1 + 32) + 8) + 24) = [v3 databaseIDValue];

  if (*(a1 + 48) == 1)
  {
    v4 = [v8 objectAtIndexedSubscript:1];
    v5 = [v4 stringValue];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

void __88__MFMessagePersistence_iOS_messageObjectIDForSearchIndexerIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 absoluteString];
    v8 = [MailAccount mailboxUidFromActiveAccountsForURL:v7];

    v9 = [v8 account];
    v10 = [v9 taskManager];

    if (v10)
    {
      v11 = *(a1 + 32);
      if (v11)
      {
        v11 = v11[20];
      }

      v12 = v11;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __88__MFMessagePersistence_iOS_messageObjectIDForSearchIndexerIdentifier_completionHandler___block_invoke_89;
      v20[3] = &unk_1E7AA7208;
      v25 = a3;
      v21 = v10;
      v13 = v8;
      v14 = *(a1 + 32);
      v15 = *(a1 + 40);
      v22 = v13;
      v23 = v14;
      v24 = v15;
      [v12 performBlock:v20];
    }

    else
    {
      v18 = *(a1 + 40);
      v19 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E699A730] code:1024 userInfo:0];
      (*(v18 + 16))(v18, 0, v19);
    }
  }

  else
  {
    v16 = +[MFMessagePersistence_iOS log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0389000, v16, OS_LOG_TYPE_DEFAULT, "Received nil result from SearchIndexer.", buf, 2u);
    }

    v17 = *(a1 + 40);
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E699A730] code:1024 userInfo:0];
    (*(v17 + 16))(v17, 0, v8);
  }
}

void __88__MFMessagePersistence_iOS_messageObjectIDForSearchIndexerIdentifier_completionHandler___block_invoke_89(uint64_t a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v2 = [MFUIDSet alloc];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 64)];
  v14[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v5 = [(MFUIDSet *)v2 initWithUIDs:v4];

  v6 = [*(a1 + 32) downloadMessagesForUIDs:v5 inMailbox:*(a1 + 40)];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __88__MFMessagePersistence_iOS_messageObjectIDForSearchIndexerIdentifier_completionHandler___block_invoke_2;
  v11[3] = &unk_1E7AA71E0;
  v8 = *(a1 + 40);
  v7 = v8.i64[0];
  v12 = vextq_s8(v8, v8, 8uLL);
  v13 = *(a1 + 56);
  [v6 addSuccessBlock:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __88__MFMessagePersistence_iOS_messageObjectIDForSearchIndexerIdentifier_completionHandler___block_invoke_3;
  v9[3] = &unk_1E7AA68F0;
  v10 = *(a1 + 56);
  [v6 addFailureBlock:v9];
}

void __88__MFMessagePersistence_iOS_messageObjectIDForSearchIndexerIdentifier_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 uids];
  v4 = [v3 firstObject];

  if (v4 && (-[MFMessagePersistence_iOS library](*(a1 + 32)), v7 = objc_claimAutoreleasedReturnValue(), [v4 stringValue], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 40), "URLString"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "messageWithRemoteID:inRemoteMailbox:", v8, v9), v10 = objc_claimAutoreleasedReturnValue(), v9, v8, v7, objc_msgSend(v10, "objectID"), v11 = objc_claimAutoreleasedReturnValue(), v10, v11))
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v5 = *(a1 + 48);
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E699A730] code:1024 userInfo:0];
    (*(v5 + 16))(v5, 0, v6);

    v11 = 0;
  }
}

id __106__MFMessagePersistence_iOS_persistenceDidChangeGlobalMessageID_orConversationID_message_generationWindow___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E696AD98];
  v2 = [*(a1 + 32) persistedMessageID];
  v3 = [v1 numberWithLongLong:{objc_msgSend(v2, "databaseID")}];

  return v3;
}

uint64_t __45__MFMessagePersistence_iOS_collectStatistics__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 protectedDatabaseAttached];
  [*(a1 + 32) setProtectedDataAvailable:v4];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__MFMessagePersistence_iOS_collectStatistics__block_invoke_2;
  aBlock[3] = &unk_1E7AA7280;
  v5 = v3;
  v11 = v5;
  v6 = _Block_copy(aBlock);
  [*(a1 + 32) setMessageData:{v6[2](v6, @"SELECT COUNT(*) FROM message_data"}];
  [*(a1 + 32) setMessageDataDeleted:{v6[2](v6, @"SELECT COUNT(*) FROM message_data_deleted"}];
  [*(a1 + 32) setMessagesMarkedAsJournaled:{v6[2](v6, @"SELECT COUNT(*) FROM messages WHERE journaled = '1'"}];
  [*(a1 + 32) setMailboxesNeedingReconcilication:{v6[2](v6, @"SELECT COUNT(*) FROM mailboxes WHERE reconcile = '1'"}];
  if (v4)
  {
    [*(a1 + 32) setProtectedMessageData:{v6[2](v6, @"SELECT COUNT(*) FROM protected_message_data"}];
  }

  v7 = EMLogSearchableIndexStatus();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 32);
    *buf = 138543362;
    v13 = v8;
    _os_log_impl(&dword_1B0389000, v7, OS_LOG_TYPE_INFO, "Persistence statistics: %{public}@", buf, 0xCu);
  }

  return 1;
}

uint64_t __45__MFMessagePersistence_iOS_collectStatistics__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) preparedStatementForQueryString:v3];
  v5 = [v4 compiled];

  if (v5)
  {
    if (sqlite3_step(v5) == 100)
    {
      v6 = sqlite3_column_int(v5, 0);
    }

    else
    {
      v6 = 0;
    }

    sqlite3_reset(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __52__MFMessagePersistence_iOS_messageIDsWithBasePaths___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = *(a1 + 56);
  OUTLINED_FUNCTION_1_2(&dword_1B0389000, a2, a3, "Failed to fetch attachment basepaths for messages %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __106__MFMessagePersistence_iOS_requestContentForMessageObjectID_requestID_options_delegate_completionHandler___block_invoke_63_cold_1(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  v4 = *(a1 + 32);
  *buf = 134218242;
  *(buf + 4) = a3;
  *(buf + 6) = 2114;
  *(buf + 14) = v4;
  _os_log_impl(&dword_1B0389000, log, OS_LOG_TYPE_DEFAULT, "Fetched body data of length %lu for message %{public}@ with network", buf, 0x16u);
}

void __74__MFMessagePersistence_iOS_generateSummaryForMessage_downloadIfNecessary___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_7();
  *v1 = 138412546;
  *(v1 + 4) = v2;
  *(v1 + 12) = 2048;
  *(v1 + 14) = v3;
  _os_log_error_impl(&dword_1B0389000, v5, OS_LOG_TYPE_ERROR, "Failed to generate summary for %@ (summaryLoader=%p)", v4, 0x16u);
}

@end