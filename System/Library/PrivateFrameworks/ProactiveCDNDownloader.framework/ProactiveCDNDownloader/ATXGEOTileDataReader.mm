@interface ATXGEOTileDataReader
- (id)appAndClipEntryForTileData:(id)data;
@end

@implementation ATXGEOTileDataReader

- (id)appAndClipEntryForTileData:(id)data
{
  dataCopy = data;
  data = [dataCopy data];

  if (data)
  {
    data2 = [dataCopy data];
    v7 = [(ATXGEOTileDataReader *)self readTileData:data2];
LABEL_5:
    v10 = v7;

    goto LABEL_6;
  }

  fileURL = [dataCopy fileURL];

  if (fileURL)
  {
    data2 = [dataCopy fileURL];
    v7 = [(ATXGEOTileDataReader *)self readFileURL:data2];
    goto LABEL_5;
  }

  v12 = __atxlog_handle_hero(v9);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [ATXGEOTileDataReader appAndClipEntryForTileData:v12];
  }

  v10 = 0;
LABEL_6:

  return v10;
}

@end