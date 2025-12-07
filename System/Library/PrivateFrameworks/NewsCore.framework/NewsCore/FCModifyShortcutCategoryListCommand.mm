@interface FCModifyShortcutCategoryListCommand
- (BOOL)mergeLocalRecord:(id)record withRemoteRecord:(id)remoteRecord;
- (FCModifyShortcutCategoryListCommand)initWithShortcutCategories:(id)categories merge:(BOOL)merge;
@end

@implementation FCModifyShortcutCategoryListCommand

- (FCModifyShortcutCategoryListCommand)initWithShortcutCategories:(id)categories merge:(BOOL)merge
{
  mergeCopy = merge;
  v14 = *MEMORY[0x1E69E9840];
  categoriesCopy = categories;
  v7 = [categoriesCopy fc_arrayByTransformingWithBlock:&__block_literal_global_109];
  v8 = FCShortcutCategoryListLog;
  if (os_log_type_enabled(FCShortcutCategoryListLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v12 = 134217984;
    v13 = [categoriesCopy count];
    _os_log_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_DEFAULT, "Initialize shortcut categories count=%lu", &v12, 0xCu);
  }

  v10 = [(FCModifyRecordsCommand *)self initWithLocalRecords:v7 merge:mergeCopy];

  return v10;
}

- (BOOL)mergeLocalRecord:(id)record withRemoteRecord:(id)remoteRecord
{
  v17 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  remoteRecordCopy = remoteRecord;
  v7 = [recordCopy objectForKeyedSubscript:@"dateAdded"];
  v8 = [remoteRecordCopy objectForKeyedSubscript:@"dateAdded"];
  v9 = [v7 compare:v8];
  if (v9 == 1)
  {
    v10 = [recordCopy objectForKeyedSubscript:@"dateAdded"];
    [remoteRecordCopy setObject:v10 forKeyedSubscript:@"dateAdded"];

    v11 = [recordCopy objectForKeyedSubscript:@"type"];
    [remoteRecordCopy setObject:v11 forKeyedSubscript:@"type"];

    v12 = [recordCopy objectForKeyedSubscript:@"categoryID"];
    [remoteRecordCopy setObject:v12 forKeyedSubscript:@"categoryID"];

    v13 = [recordCopy objectForKeyedSubscript:@"status"];
    [remoteRecordCopy setObject:v13 forKeyedSubscript:@"status"];
  }

  v14 = FCShortcutCategoryListLog;
  if (os_log_type_enabled(FCShortcutCategoryListLog, OS_LOG_TYPE_DEFAULT))
  {
    v16[0] = 67109120;
    v16[1] = v9 == 1;
    _os_log_impl(&dword_1B63EF000, v14, OS_LOG_TYPE_DEFAULT, "Merge shortcut categories local record %d", v16, 8u);
  }

  return v9 == 1;
}

@end