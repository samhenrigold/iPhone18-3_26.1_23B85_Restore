@interface WLKPlayHistoryRemoveRequestOperation
- (WLKPlayHistoryRemoveRequestOperation)initWithChannelID:(id)d externalID:(id)iD caller:(id)caller;
- (void)processResponse;
@end

@implementation WLKPlayHistoryRemoveRequestOperation

- (WLKPlayHistoryRemoveRequestOperation)initWithChannelID:(id)d externalID:(id)iD caller:(id)caller
{
  v15[1] = *MEMORY[0x277D85DE8];
  callerCopy = caller;
  v9 = [WLKPlayActivityDecorateVODOperation identifierForPlayActivityID:iD channelID:d duration:0];
  v14 = @"deleteId";
  v15[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v11 = [WLKURLRequestProperties requestPropertiesWithEndpoint:@"watchlist/playHistory/remove" queryParameters:v10 httpMethod:@"POST" caller:callerCopy];

  v12 = [(WLKUTSNetworkRequestOperation *)self initWithRequestProperties:v11];
  return v12;
}

- (void)processResponse
{
  v6 = objc_alloc_init(WLKDictionaryResponseProcessor);
  [(WLKDictionaryResponseProcessor *)v6 setObjectClass:objc_opt_class()];
  data = [(WLKNetworkRequestOperation *)self data];
  v4 = [(WLKDictionaryResponseProcessor *)v6 processResponseData:data error:0];
  response = self->_response;
  self->_response = v4;
}

@end