@interface FCModifyAudioPlaylistCommand
- (BOOL)mergeLocalRecord:(id)record withRemoteRecord:(id)remoteRecord;
- (FCModifyAudioPlaylistCommand)initWithItems:(id)items merge:(BOOL)merge;
@end

@implementation FCModifyAudioPlaylistCommand

- (FCModifyAudioPlaylistCommand)initWithItems:(id)items merge:(BOOL)merge
{
  mergeCopy = merge;
  v6 = [items fc_arrayByTransformingWithBlock:&__block_literal_global_77];
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
    v10 = [recordCopy objectForKeyedSubscript:@"articleID"];
    [remoteRecordCopy setObject:v10 forKeyedSubscript:@"articleID"];

    v11 = [recordCopy objectForKeyedSubscript:@"dateAdded"];
    [remoteRecordCopy setObject:v11 forKeyedSubscript:@"dateAdded"];

    v12 = [recordCopy objectForKeyedSubscript:@"order"];
    [remoteRecordCopy setObject:v12 forKeyedSubscript:@"order"];
  }

  return v9 == 1;
}

@end