@interface AAGenericTermsUIResponse
- (AAGenericTermsUIResponse)initWithHTTPResponse:(id)response data:(id)data;
@end

@implementation AAGenericTermsUIResponse

- (AAGenericTermsUIResponse)initWithHTTPResponse:(id)response data:(id)data
{
  v24 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v21.receiver = self;
  v21.super_class = AAGenericTermsUIResponse;
  v8 = [(AAResponse *)&v21 initWithHTTPResponse:response data:dataCopy bodyIsPlist:1];
  v9 = v8;
  if (v8 && [(NSHTTPURLResponse *)v8->super._httpResponse statusCode]== 200)
  {
    if (dataCopy)
    {
      objc_storeStrong(&v9->_responseData, data);
      v10 = [(NSDictionary *)v9->super._responseDictionary objectForKey:@"terms"];
      responseTermsDictionary = v9->_responseTermsDictionary;
      v9->_responseTermsDictionary = v10;

      v12 = [(NSDictionary *)v9->super._responseDictionary objectForKey:@"agreeUrl"];
      responseAgreeURL = v9->_responseAgreeURL;
      v9->_responseAgreeURL = v12;

      v15 = _AALogSystem(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        responseDictionary = v9->super._responseDictionary;
        *buf = 138412290;
        v23 = responseDictionary;
        v17 = "AAGenericTermsUIResponse _responseDictionary %@";
        v18 = v15;
        v19 = 12;
LABEL_8:
        _os_log_impl(&dword_1B6F6A000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
      }
    }

    else
    {
      v15 = _AALogSystem(200);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v17 = "ERROR: reponse data is nil";
        v18 = v15;
        v19 = 2;
        goto LABEL_8;
      }
    }
  }

  return v9;
}

@end