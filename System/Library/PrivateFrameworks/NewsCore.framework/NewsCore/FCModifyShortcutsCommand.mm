@interface FCModifyShortcutsCommand
- (BOOL)mergeLocalRecord:(id)record withRemoteRecord:(id)remoteRecord;
- (FCModifyShortcutsCommand)initWithShortcuts:(id)shortcuts merge:(BOOL)merge;
@end

@implementation FCModifyShortcutsCommand

- (FCModifyShortcutsCommand)initWithShortcuts:(id)shortcuts merge:(BOOL)merge
{
  mergeCopy = merge;
  v14 = *MEMORY[0x1E69E9840];
  shortcutsCopy = shortcuts;
  v7 = [shortcutsCopy fc_arrayByTransformingWithBlock:&__block_literal_global_132];
  v8 = FCShortcutListLog;
  if (os_log_type_enabled(FCShortcutListLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v12 = 134217984;
    v13 = [shortcutsCopy count];
    _os_log_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_DEFAULT, "Initialize favorites %lu", &v12, 0xCu);
  }

  v10 = [(FCModifyRecordsCommand *)self initWithLocalRecords:v7 merge:mergeCopy];

  return v10;
}

- (BOOL)mergeLocalRecord:(id)record withRemoteRecord:(id)remoteRecord
{
  v16 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  remoteRecordCopy = remoteRecord;
  v7 = [recordCopy objectForKeyedSubscript:@"dateAdded"];
  v8 = [remoteRecordCopy objectForKeyedSubscript:@"dateAdded"];
  v9 = [v7 compare:v8];
  if (v9 == 1)
  {
    v10 = [recordCopy objectForKeyedSubscript:@"dateAdded"];
    [remoteRecordCopy setObject:v10 forKeyedSubscript:@"dateAdded"];

    v11 = [recordCopy objectForKeyedSubscript:@"order"];
    [remoteRecordCopy setObject:v11 forKeyedSubscript:@"order"];

    v12 = [recordCopy objectForKeyedSubscript:@"type"];
    [remoteRecordCopy setObject:v12 forKeyedSubscript:@"type"];
  }

  v13 = FCShortcutListLog;
  if (os_log_type_enabled(FCShortcutListLog, OS_LOG_TYPE_DEFAULT))
  {
    v15[0] = 67109120;
    v15[1] = v9 == 1;
    _os_log_impl(&dword_1B63EF000, v13, OS_LOG_TYPE_DEFAULT, "Merge favorites local record %d", v15, 8u);
  }

  return v9 == 1;
}

@end