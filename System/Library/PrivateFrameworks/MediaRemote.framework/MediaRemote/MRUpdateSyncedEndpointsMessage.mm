@interface MRUpdateSyncedEndpointsMessage
- (MRUpdateSyncedEndpointsMessage)initWithEndpoints:(id)endpoints endpointFeature:(unsigned int)feature;
- (NSArray)endpoints;
- (unsigned)features;
@end

@implementation MRUpdateSyncedEndpointsMessage

- (MRUpdateSyncedEndpointsMessage)initWithEndpoints:(id)endpoints endpointFeature:(unsigned int)feature
{
  v4 = *&feature;
  endpointsCopy = endpoints;
  v12.receiver = self;
  v12.super_class = MRUpdateSyncedEndpointsMessage;
  v7 = [(MRProtocolMessage *)&v12 init];
  if (v7)
  {
    v8 = objc_alloc_init(_MRUpdateEndpointsMessageProtobuf);
    v9 = [endpointsCopy mr_map:&__block_literal_global_77];
    v10 = [v9 mutableCopy];
    [(_MRUpdateEndpointsMessageProtobuf *)v8 setEndpoints:v10];

    [(_MRUpdateEndpointsMessageProtobuf *)v8 setEndpointFeatures:v4];
    [(MRProtocolMessage *)v7 setUnderlyingCodableMessage:v8];
  }

  return v7;
}

- (NSArray)endpoints
{
  endpoints = self->_endpoints;
  if (!endpoints)
  {
    underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
    endpoints = [underlyingCodableMessage endpoints];
    v6 = [endpoints mr_map:&__block_literal_global_80];
    v7 = self->_endpoints;
    self->_endpoints = v6;

    endpoints = self->_endpoints;
  }

  return endpoints;
}

MRAVDistantEndpoint *__43__MRUpdateSyncedEndpointsMessage_endpoints__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MRAVDistantEndpoint alloc] initWithDescriptor:v2];

  return v3;
}

- (unsigned)features
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  endpointFeatures = [underlyingCodableMessage endpointFeatures];

  return endpointFeatures;
}

@end