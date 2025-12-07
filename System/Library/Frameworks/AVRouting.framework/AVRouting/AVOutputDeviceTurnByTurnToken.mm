@interface AVOutputDeviceTurnByTurnToken
- (AVOutputDeviceTurnByTurnToken)initWithEndpoint:(OpaqueFigEndpoint *)endpoint;
- (void)dealloc;
@end

@implementation AVOutputDeviceTurnByTurnToken

- (AVOutputDeviceTurnByTurnToken)initWithEndpoint:(OpaqueFigEndpoint *)endpoint
{
  v10.receiver = self;
  v10.super_class = AVOutputDeviceTurnByTurnToken;
  v4 = [(AVOutputDeviceTurnByTurnToken *)&v10 init];
  v5 = v4;
  if (v4)
  {
    if (endpoint)
    {
      v6 = CFRetain(endpoint);
      v5->_endpoint = v6;
      if (v6)
      {
        CMBaseObject = FigEndpointGetCMBaseObject();
        v8 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v8)
        {
          v8(CMBaseObject, *MEMORY[0x1E6962358], *MEMORY[0x1E695E4D0]);
        }
      }
    }

    else
    {
      v4->_endpoint = 0;
    }
  }

  return v5;
}

- (void)dealloc
{
  if (self->_endpoint)
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v4)
    {
      v4(CMBaseObject, *MEMORY[0x1E6962358], *MEMORY[0x1E695E4C0]);
    }

    endpoint = self->_endpoint;
    if (endpoint)
    {
      CFRelease(endpoint);
    }
  }

  v6.receiver = self;
  v6.super_class = AVOutputDeviceTurnByTurnToken;
  [(AVOutputDeviceTurnByTurnToken *)&v6 dealloc];
}

@end