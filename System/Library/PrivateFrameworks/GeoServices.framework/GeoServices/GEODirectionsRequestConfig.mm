@interface GEODirectionsRequestConfig
- (GEODirectionsRequestConfig)initWithRequest:(id)request requestPriority:(id)priority;
- (id)additionalHTTPHeaders;
- (id)additionalStatesForNetworkEvent;
- (id)additionalURLQueryItems;
@end

@implementation GEODirectionsRequestConfig

- (id)additionalStatesForNetworkEvent
{
  v3 = objc_alloc_init(GEOLogMsgState);
  v4 = objc_alloc_init(GEOLogMsgStateDirectionsDetail);
  [v3 setDirectionsDetail:v4];

  [v3 setStateType:721];
  routeAttributes = [(GEODirectionsRequest *)self->_request routeAttributes];
  hasMainTransportType = [routeAttributes hasMainTransportType];

  if (hasMainTransportType)
  {
    routeAttributes2 = [(GEODirectionsRequest *)self->_request routeAttributes];
    mainTransportType = [routeAttributes2 mainTransportType];
    directionsDetail = [v3 directionsDetail];
    [directionsDetail setTransportType:mainTransportType];
  }

  routeAttributes3 = [(GEODirectionsRequest *)self->_request routeAttributes];
  automobileOptions = [routeAttributes3 automobileOptions];
  vehicleSpecifications = [automobileOptions vehicleSpecifications];
  hasEvInfo = [vehicleSpecifications hasEvInfo];
  directionsDetail2 = [v3 directionsDetail];
  [directionsDetail2 setIsEv:hasEvInfo];

  v17 = v3;
  v15 = [NSArray arrayWithObjects:&v17 count:1];

  return v15;
}

- (id)additionalHTTPHeaders
{
  requestPriority = self->_requestPriority;
  if (requestPriority)
  {
    v3 = [NSString stringWithFormat:@"%ld", [(NSNumber *)requestPriority integerValue]];
    v6 = @"x-msg-priority";
    v7 = v3;
    v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)additionalURLQueryItems
{
  v3 = GEOConfigGetString();
  if ([v3 length])
  {
    if ([v3 hasPrefix:@"?"])
    {
      v4 = @"http://www.apple.com/";
    }

    else
    {
      v4 = @"http://www.apple.com/?";
    }

    v5 = [(__CFString *)v4 stringByAppendingString:v3];
    v6 = [NSURLComponents componentsWithString:v5];
    queryItems = [v6 queryItems];

    if (queryItems)
    {
      queryItems2 = [v6 queryItems];
      queryItems = [NSMutableArray arrayWithArray:queryItems2];
    }
  }

  else
  {
    queryItems = 0;
  }

  v9 = GEOConfigGetDictionary();
  if ([v9 count])
  {
    if (!queryItems)
    {
      queryItems = +[NSMutableArray array];
    }

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100046540;
    v14[3] = &unk_100083550;
    queryItems = queryItems;
    v15 = queryItems;
    [v9 enumerateKeysAndObjectsUsingBlock:v14];
  }

  if (queryItems)
  {
    additionalURLQueryItems = queryItems;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = GEODirectionsRequestConfig;
    additionalURLQueryItems = [(GEODirectionsRequestConfig *)&v13 additionalURLQueryItems];
  }

  v11 = additionalURLQueryItems;

  return v11;
}

- (GEODirectionsRequestConfig)initWithRequest:(id)request requestPriority:(id)priority
{
  requestCopy = request;
  priorityCopy = priority;
  v14.receiver = self;
  v14.super_class = GEODirectionsRequestConfig;
  v9 = [(GEODirectionsRequestConfig *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, request);
    v11 = [priorityCopy copy];
    requestPriority = v10->_requestPriority;
    v10->_requestPriority = v11;
  }

  return v10;
}

@end