@interface AVOutputDeviceScreenBorrowToken
- (AVOutputDeviceScreenBorrowToken)initWithEndpoint:(OpaqueFigEndpoint *)endpoint client:(id)client reason:(id)reason;
- (void)dealloc;
@end

@implementation AVOutputDeviceScreenBorrowToken

- (AVOutputDeviceScreenBorrowToken)initWithEndpoint:(OpaqueFigEndpoint *)endpoint client:(id)client reason:(id)reason
{
  v15.receiver = self;
  v15.super_class = AVOutputDeviceScreenBorrowToken;
  v8 = [(AVOutputDeviceScreenBorrowToken *)&v15 init];
  if (v8)
  {
    if (endpoint)
    {
      v9 = CFRetain(endpoint);
    }

    else
    {
      v9 = 0;
    }

    v8->_endpoint = v9;
    v8->_client = [client copy];
    v8->_reason = [reason copy];
    endpoint = v8->_endpoint;
    if (endpoint)
    {
      FigEndpointExtendedGetClassID();
      if (CMBaseObjectIsMemberOfClass())
      {
        client = v8->_client;
        reason = v8->_reason;
        v13 = *(*(CMBaseObjectGetVTable() + 24) + 16);
        if (v13)
        {
          v13(endpoint, client, reason);
        }
      }
    }
  }

  return v8;
}

- (void)dealloc
{
  endpoint = self->_endpoint;
  if (endpoint)
  {
    FigEndpointExtendedGetClassID();
    if (CMBaseObjectIsMemberOfClass())
    {
      client = self->_client;
      reason = self->_reason;
      v6 = *(*(CMBaseObjectGetVTable() + 24) + 24);
      if (v6)
      {
        v6(endpoint, client, reason);
      }
    }

    v7 = self->_endpoint;
    if (v7)
    {
      CFRelease(v7);
    }
  }

  v8.receiver = self;
  v8.super_class = AVOutputDeviceScreenBorrowToken;
  [(AVOutputDeviceScreenBorrowToken *)&v8 dealloc];
}

@end