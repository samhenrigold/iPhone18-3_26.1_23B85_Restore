@interface FCModifyReadingListCommand
- (BOOL)mergeLocalRecord:(id)record withRemoteRecord:(id)remoteRecord;
- (FCModifyReadingListCommand)initWithReadingListEntries:(id)entries merge:(BOOL)merge;
@end

@implementation FCModifyReadingListCommand

- (FCModifyReadingListCommand)initWithReadingListEntries:(id)entries merge:(BOOL)merge
{
  mergeCopy = merge;
  v6 = [entries fc_arrayByTransformingWithBlock:&__block_literal_global_136];
  v7 = [(FCModifyRecordsCommand *)self initWithLocalRecords:v6 merge:mergeCopy];

  return v7;
}

- (BOOL)mergeLocalRecord:(id)record withRemoteRecord:(id)remoteRecord
{
  recordCopy = record;
  remoteRecordCopy = remoteRecord;
  v7 = [recordCopy objectForKeyedSubscript:@"dateAdded"];
  v8 = [remoteRecordCopy objectForKeyedSubscript:@"dateAdded"];
  v9 = [v7 compare:v8];
  if (v9 == 1)
  {
    v10 = [recordCopy objectForKeyedSubscript:@"dateAdded"];
    [remoteRecordCopy setObject:v10 forKeyedSubscript:@"dateAdded"];

    v11 = [recordCopy objectForKeyedSubscript:@"articleID"];
    [remoteRecordCopy setObject:v11 forKeyedSubscript:@"articleID"];

    v12 = [recordCopy objectForKeyedSubscript:@"origin"];
    [remoteRecordCopy setObject:v12 forKeyedSubscript:@"origin"];
  }

  return v9 == 1;
}

@end