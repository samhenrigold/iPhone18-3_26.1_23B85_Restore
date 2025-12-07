@interface AASigningSessionResponse
- (AASigningSessionResponse)initWithHTTPResponse:(id)response data:(id)data;
@end

@implementation AASigningSessionResponse

- (AASigningSessionResponse)initWithHTTPResponse:(id)response data:(id)data
{
  v11.receiver = self;
  v11.super_class = AASigningSessionResponse;
  v5 = [(AAResponse *)&v11 initWithHTTPResponse:response data:data bodyIsPlist:0];
  v6 = v5;
  if (v5)
  {
    if (data)
    {
      v7 = [(NSDictionary *)v5->super._responseDictionary objectForKey:@"session-info"];
      if (v7)
      {
        v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v7 options:0];
        p_super = &v6->_sessionData->super;
        v6->_sessionData = v8;
      }

      else
      {
        p_super = _AALogSystem(0);
        if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
        {
          [AASigningSessionResponse initWithHTTPResponse:data:];
        }
      }
    }

    else
    {
      v7 = _AALogSystem(v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [AASigningSessionResponse initWithHTTPResponse:data:];
      }
    }
  }

  return v6;
}

@end