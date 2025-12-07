@interface FCModifyIssueHistoryCommand
- (BOOL)mergeLocalRecord:(id)record withRemoteRecord:(id)remoteRecord;
- (FCModifyIssueHistoryCommand)initWithIssueHistoryItems:(id)items merge:(BOOL)merge;
@end

@implementation FCModifyIssueHistoryCommand

- (FCModifyIssueHistoryCommand)initWithIssueHistoryItems:(id)items merge:(BOOL)merge
{
  mergeCopy = merge;
  v23 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  if (!itemsCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "historyItems != nil"];
    *buf = 136315906;
    v16 = "[FCModifyIssueHistoryCommand initWithIssueHistoryItems:merge:]";
    v17 = 2080;
    v18 = "FCModifyIssueHistoryCommand.m";
    v19 = 1024;
    v20 = 23;
    v21 = 2114;
    v22 = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__FCModifyIssueHistoryCommand_initWithIssueHistoryItems_merge___block_invoke;
  aBlock[3] = &unk_1E7C3B578;
  v14 = itemsCopy;
  v7 = itemsCopy;
  v8 = _Block_copy(aBlock);
  v12.receiver = self;
  v12.super_class = FCModifyIssueHistoryCommand;
  v9 = [(FCModifyRecordsCommand *)&v12 initWithLocalRecordsGenerator:v8 merge:mergeCopy];

  return v9;
}

- (BOOL)mergeLocalRecord:(id)record withRemoteRecord:(id)remoteRecord
{
  recordCopy = record;
  remoteRecordCopy = remoteRecord;
  v7 = [recordCopy objectForKeyedSubscript:@"lastVisited"];
  v30 = [remoteRecordCopy objectForKeyedSubscript:@"lastVisited"];
  v31 = v7;
  v8 = [v7 compare:v30];
  v9 = v8 == 1;
  if (v8 == 1)
  {
    v10 = [recordCopy objectForKeyedSubscript:@"lastVisited"];
    [remoteRecordCopy setObject:v10 forKeyedSubscript:@"lastVisited"];

    v11 = [recordCopy objectForKeyedSubscript:@"lastVisitedPageID"];
    [remoteRecordCopy setObject:v11 forKeyedSubscript:@"lastVisitedPageID"];

    v12 = [recordCopy objectForKeyedSubscript:@"lastVisitedArticleID"];
    [remoteRecordCopy setObject:v12 forKeyedSubscript:@"lastVisitedArticleID"];
  }

  v13 = [recordCopy objectForKeyedSubscript:@"lastBadged"];
  v28 = [remoteRecordCopy objectForKeyedSubscript:@"lastBadged"];
  v29 = v13;
  if ([v13 compare:v28] == 1)
  {
    v14 = [recordCopy objectForKeyedSubscript:@"lastBadged"];
    [remoteRecordCopy setObject:v14 forKeyedSubscript:@"lastBadged"];

    v9 = 1;
  }

  v15 = [recordCopy objectForKeyedSubscript:@"lastEngaged"];
  v16 = [remoteRecordCopy objectForKeyedSubscript:@"lastEngaged"];
  v17 = v16;
  if (v15 && (!v16 || [v15 compare:v16] == 1))
  {
    v18 = [recordCopy objectForKeyedSubscript:@"lastEngaged"];
    [remoteRecordCopy setObject:v18 forKeyedSubscript:@"lastEngaged"];

    v9 = 1;
  }

  v19 = [recordCopy objectForKeyedSubscript:@"lastSeen"];
  v20 = [remoteRecordCopy objectForKeyedSubscript:@"lastSeen"];
  v21 = v20;
  if (v19 && (!v20 || [v19 compare:v20] == 1))
  {
    v22 = [recordCopy objectForKeyedSubscript:@"lastSeen"];
    [remoteRecordCopy setObject:v22 forKeyedSubscript:@"lastSeen"];

    v9 = 1;
  }

  v23 = [recordCopy objectForKeyedSubscript:@"lastRemovedFromMyMagazines"];
  v24 = [remoteRecordCopy objectForKeyedSubscript:@"lastRemovedFromMyMagazines"];
  v25 = v24;
  if (v23 && (!v24 || [v23 compare:v24] == 1))
  {
    v26 = [recordCopy objectForKeyedSubscript:@"lastRemovedFromMyMagazines"];
    [remoteRecordCopy setObject:v26 forKeyedSubscript:@"lastRemovedFromMyMagazines"];

    v9 = 1;
  }

  return v9;
}

@end