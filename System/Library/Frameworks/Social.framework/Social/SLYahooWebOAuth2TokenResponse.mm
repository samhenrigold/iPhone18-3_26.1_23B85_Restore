@interface SLYahooWebOAuth2TokenResponse
- (SLYahooWebOAuth2TokenResponse)initWithData:(id)data urlResponse:(id)response error:(id)error;
@end

@implementation SLYahooWebOAuth2TokenResponse

- (SLYahooWebOAuth2TokenResponse)initWithData:(id)data urlResponse:(id)response error:(id)error
{
  dataCopy = data;
  responseCopy = response;
  errorCopy = error;
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(dataCopy, "length")}];
  _SLLog(v5, 7, @"SLWebOAuth2TokenResponse initWithData: %@ length urlResponse: %@ error: %@", v13, v14, v15, v16, v17, v12);

  v57.receiver = self;
  v57.super_class = SLYahooWebOAuth2TokenResponse;
  v18 = [(SLYahooWebOAuth2TokenResponse *)&v57 init];
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
      _SLLog(v5, 7, @"SLWebOAuth2TokenResponse httpResponse status code %@", v27, v28, v29, v30, v31, v26);

      if (!v19->_error)
      {
        v56 = 0;
        v32 = [MEMORY[0x1E696ACB0] JSONObjectWithData:dataCopy options:0 error:&v56];
        v33 = v56;
        v34 = v56;
        if (v34)
        {
          objc_storeStrong(&v19->_error, v33);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_storeStrong(&v19->_data, v32);
          v40 = [(NSDictionary *)v19->_data objectForKeyedSubscript:@"access_token"];
          token = v19->_token;
          v19->_token = v40;

          v42 = [(NSDictionary *)v19->_data objectForKeyedSubscript:@"refresh_token"];
          refreshToken = v19->_refreshToken;
          v19->_refreshToken = v42;

          v44 = MEMORY[0x1E695DF00];
          v45 = [(NSDictionary *)v19->_data objectForKeyedSubscript:@"expires_in"];
          v46 = [v44 dateWithTimeIntervalSinceNow:{objc_msgSend(v45, "integerValue")}];
          expiryDate = v19->_expiryDate;
          v19->_expiryDate = v46;

          v48 = [(NSDictionary *)v19->_data objectForKeyedSubscript:@"error"];
          objc_opt_class();
          LOBYTE(v45) = objc_opt_isKindOfClass();

          if (v45)
          {
            v49 = [(NSDictionary *)v19->_data objectForKeyedSubscript:@"error"];
            errorMessage = v19->_errorMessage;
            v19->_errorMessage = v49;
          }

          v51 = [(NSDictionary *)v19->_data objectForKeyedSubscript:@"xoauth_yahoo_guid"];
          GUID = v19->_GUID;
          v19->_GUID = v51;
        }

        else
        {
          _SLLog(v5, 7, @"SLWebOAuth2TokenResponse response JSON data does not represent NSDictionary. Game over.", v35, v36, v37, v38, v39, v55);
        }
      }
    }

    else
    {
      _SLLog(v5, 7, @"SLWebOAuth2TokenResponse response is not NSHTTPURLResponse. Game over.", v20, v21, v22, v23, v24, v54);
    }
  }

  return v19;
}

@end