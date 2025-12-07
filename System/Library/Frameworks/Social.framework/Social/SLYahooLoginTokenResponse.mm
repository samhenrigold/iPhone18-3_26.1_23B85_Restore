@interface SLYahooLoginTokenResponse
- (SLYahooLoginTokenResponse)initWithData:(id)data urlResponse:(id)response error:(id)error;
@end

@implementation SLYahooLoginTokenResponse

- (SLYahooLoginTokenResponse)initWithData:(id)data urlResponse:(id)response error:(id)error
{
  dataCopy = data;
  responseCopy = response;
  errorCopy = error;
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(dataCopy, "length")}];
  _SLLog(v5, 7, @"SLYahooLoginTokenResponse initWithData: %@ length urlResponse: %@ error: %@", v13, v14, v15, v16, v17, v12);

  v41.receiver = self;
  v41.super_class = SLYahooLoginTokenResponse;
  v18 = [(SLYahooLoginTokenResponse *)&v41 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_error, error);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      statusCode = [responseCopy statusCode];
      v19->_statusCode = statusCode;
      v26 = [MEMORY[0x1E696AD98] numberWithInteger:statusCode];
      _SLLog(v5, 7, @"SLYahooLoginTokenResponse httpResponse status code %@", v27, v28, v29, v30, v31, v26);

      if (!v19->_error)
      {
        v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:dataCopy encoding:4];
        body = v19->_body;
        v19->_body = v32;

        v34 = [(NSString *)v19->_body componentsSeparatedByString:@"="];
        if ([v34 count] < 2)
        {
          v36 = v34;
        }

        else
        {
          v35 = [v34 objectAtIndexedSubscript:1];
          v36 = [v35 componentsSeparatedByString:@"\n"];

          if ([v36 count])
          {
            firstObject = [v36 firstObject];
            loginToken = v19->_loginToken;
            v19->_loginToken = firstObject;
          }
        }
      }
    }

    else
    {
      _SLLog(v5, 7, @"SLYahooLoginTokenResponse response is not NSHTTPURLResponse. Game over.", v20, v21, v22, v23, v24, v40);
    }
  }

  return v19;
}

@end