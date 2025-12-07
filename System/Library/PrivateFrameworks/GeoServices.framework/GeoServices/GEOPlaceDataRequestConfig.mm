@interface GEOPlaceDataRequestConfig
- (id)additionalHTTPHeaders;
- (id)additionalStatesForNetworkEvent;
@end

@implementation GEOPlaceDataRequestConfig

- (id)additionalHTTPHeaders
{
  v7[1] = *MEMORY[0x1E69E9840];
  requestPriority = self->_requestPriority;
  if (requestPriority)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", -[NSNumber unsignedIntegerValue](requestPriority, "unsignedIntegerValue")];
    v6 = @"x-msg-priority";
    v7[0] = v3;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)additionalStatesForNetworkEvent
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(GEOLogMsgState);
  [(GEOLogMsgState *)v3 setStateType:707];
  v4 = objc_alloc_init(GEOLogMsgStatePlaceRequest);
  [(GEOLogMsgState *)v3 setPlaceRequest:v4];

  requestType = [(GEOPDPlaceRequest *)self->_placeRequest requestType];
  placeRequest = [(GEOLogMsgState *)v3 placeRequest];
  [placeRequest setPlaceRequestType:requestType];

  v9[0] = v3;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];

  return v7;
}

@end