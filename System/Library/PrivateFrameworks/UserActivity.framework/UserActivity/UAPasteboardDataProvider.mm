@interface UAPasteboardDataProvider
- (UAPasteboardDataProvider)initWithData:(id)data type:(id)type;
- (void)getDataWithCompletionBlock:(id)block;
@end

@implementation UAPasteboardDataProvider

- (UAPasteboardDataProvider)initWithData:(id)data type:(id)type
{
  dataCopy = data;
  typeCopy = type;
  v11.receiver = self;
  v11.super_class = UAPasteboardDataProvider;
  v8 = [(UAPasteboardDataProvider *)&v11 init];
  if (v8)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    [(UAPasteboardDataProvider *)v8 setUuid:uUID];

    [(UAPasteboardDataProvider *)v8 setType:typeCopy];
    [(UAPasteboardDataProvider *)v8 setData:dataCopy];
  }

  return v8;
}

- (void)getDataWithCompletionBlock:(id)block
{
  v17[1] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  data = [(UAPasteboardDataProvider *)self data];

  if (data)
  {
    v6 = MEMORY[0x277CBEAE0];
    data2 = [(UAPasteboardDataProvider *)self data];
    v13 = [v6 inputStreamWithData:data2];

    blockCopy[2](blockCopy, v13, 0);
  }

  else
  {
    v8 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277CCA450];
    v17[0] = @"Zero length data to convert";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v10 = [v8 errorWithDomain:@"UAContinuityErrorDomain" code:-124 userInfo:v9];

    v11 = _uaGetLogForCategory(@"pasteboard-client");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      type = [(UAPasteboardDataProvider *)self type];
      *buf = 138412290;
      v15 = type;
      _os_log_impl(&dword_226A4E000, v11, OS_LOG_TYPE_ERROR, "[Local Pasteboard] Error, providing nil data for type: %@", buf, 0xCu);
    }

    (blockCopy)[2](blockCopy, 0, v10);
  }
}

@end