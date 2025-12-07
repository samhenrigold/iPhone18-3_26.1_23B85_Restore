@interface WLKChannelsRequestOperation
- (WLKChannelsRequestOperation)initWithCaller:(id)caller isFilteredByUserChannels:(BOOL)channels;
- (void)processResponse;
@end

@implementation WLKChannelsRequestOperation

- (WLKChannelsRequestOperation)initWithCaller:(id)caller isFilteredByUserChannels:(BOOL)channels
{
  channelsCopy = channels;
  v15[1] = *MEMORY[0x277D85DE8];
  callerCopy = caller;
  if (channelsCopy)
  {
    v7 = @"true";
  }

  else
  {
    v7 = @"false";
  }

  v14 = @"filterByUserChannels";
  v15[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v9 = [WLKURLRequestProperties requestPropertiesWithEndpoint:@"channels" queryParameters:v8 httpMethod:0 headers:0 caller:callerCopy timeout:0 options:0];
  v13.receiver = self;
  v13.super_class = WLKChannelsRequestOperation;
  v10 = [(WLKUTSNetworkRequestOperation *)&v13 initWithRequestProperties:v9];
  v11 = v10;
  if (v10)
  {
    [(WLKChannelsRequestOperation *)v10 setCaller:callerCopy];
    [(WLKChannelsRequestOperation *)v11 setFiltered:channelsCopy];
  }

  return v11;
}

- (void)processResponse
{
  responseDictionary = [(WLKUTSNetworkRequestOperation *)self responseDictionary];
  if (responseDictionary)
  {
    v8 = responseDictionary;
    v4 = [responseDictionary wlk_numberForKey:@"expirationInSeconds"];
    if (v4)
    {
      httpHeaderMaxAge = v4;
    }

    else
    {
      httpHeaderMaxAge = [(WLKNetworkRequestOperation *)self httpHeaderMaxAge];
      if (!httpHeaderMaxAge)
      {
        v6 = 0;
        goto LABEL_6;
      }
    }

    v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:{objc_msgSend(httpHeaderMaxAge, "unsignedIntegerValue")}];
LABEL_6:
    v7 = [[WLKChannelsResponse alloc] initWithDictionary:v8 expirationDate:v6 environmentHash:[(WLKUTSNetworkRequestOperation *)self environmentHash] filtered:[(WLKChannelsRequestOperation *)self filtered]];
    [(WLKChannelsRequestOperation *)self setChannelsResponse:v7];

    responseDictionary = v8;
  }
}

@end