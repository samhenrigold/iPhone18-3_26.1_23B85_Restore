@interface TBTileRemoteFetchResponse
+ (id)responseWithTileItems:(id)items;
- (TBTileRemoteFetchResponse)initWithTileItems:(id)items;
@end

@implementation TBTileRemoteFetchResponse

+ (id)responseWithTileItems:(id)items
{
  itemsCopy = items;
  v5 = [[self alloc] initWithTileItems:itemsCopy];

  return v5;
}

- (TBTileRemoteFetchResponse)initWithTileItems:(id)items
{
  v13[1] = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v5 = itemsCopy;
  if (itemsCopy && [itemsCopy count])
  {
    v6 = 0;
  }

  else
  {
    v7 = [TBError alloc];
    v12 = *MEMORY[0x277CCA450];
    v13[0] = @"No results returned from remote source";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v6 = [(TBError *)v7 initWithType:154 userInfo:v8];
  }

  v11.receiver = self;
  v11.super_class = TBTileRemoteFetchResponse;
  v9 = [(TBRemoteFetchResponse *)&v11 initWithResults:0 tiles:v5 error:v6];

  return v9;
}

@end