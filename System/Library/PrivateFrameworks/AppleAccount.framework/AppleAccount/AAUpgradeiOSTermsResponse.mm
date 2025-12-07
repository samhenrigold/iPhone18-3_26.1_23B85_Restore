@interface AAUpgradeiOSTermsResponse
- (AAUpgradeiOSTermsResponse)initWithHTTPResponse:(id)response data:(id)data;
@end

@implementation AAUpgradeiOSTermsResponse

- (AAUpgradeiOSTermsResponse)initWithHTTPResponse:(id)response data:(id)data
{
  v16 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  dataCopy = data;
  v13.receiver = self;
  v13.super_class = AAUpgradeiOSTermsResponse;
  v8 = [(AAResponse *)&v13 initWithHTTPResponse:responseCopy data:dataCopy bodyIsPlist:0];
  if (v8)
  {
    if ([dataCopy length])
    {
      v9 = dataCopy;
      p_super = &v8->_xmlUIData->super;
      v8->_xmlUIData = v9;
    }

    else
    {
      p_super = _AALogSystem(0);
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
      {
        statusCode = [responseCopy statusCode];
        *buf = 134217984;
        v15 = statusCode;
        _os_log_impl(&dword_1B6F6A000, p_super, OS_LOG_TYPE_DEFAULT, "Empty response for iOS Terms XMLUI, HTTP response: %ld", buf, 0xCu);
      }
    }
  }

  return v8;
}

@end