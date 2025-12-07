@interface FCModifySubscriptionsCommand
- (BOOL)mergeLocalRecord:(id)record withRemoteRecord:(id)remoteRecord;
- (FCModifySubscriptionsCommand)initWithSubscriptions:(id)subscriptions merge:(BOOL)merge;
@end

@implementation FCModifySubscriptionsCommand

- (FCModifySubscriptionsCommand)initWithSubscriptions:(id)subscriptions merge:(BOOL)merge
{
  mergeCopy = merge;
  v6 = [subscriptions fc_arrayByTransformingWithBlock:&__block_literal_global_93];
  v7 = [(FCModifyRecordsCommand *)self initWithLocalRecords:v6 merge:mergeCopy];

  return v7;
}

- (BOOL)mergeLocalRecord:(id)record withRemoteRecord:(id)remoteRecord
{
  recordCopy = record;
  remoteRecordCopy = remoteRecord;
  v7 = [recordCopy objectForKeyedSubscript:@"dateAdded"];
  v8 = [remoteRecordCopy objectForKeyedSubscript:@"dateAdded"];
  v9 = [v7 fc_isLaterThan:v8];
  if (v9)
  {
    v10 = [recordCopy objectForKeyedSubscript:@"dateAdded"];
    [remoteRecordCopy setObject:v10 forKeyedSubscript:@"dateAdded"];
  }

  return v9;
}

@end