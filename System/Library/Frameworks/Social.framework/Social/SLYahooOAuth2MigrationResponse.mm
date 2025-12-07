@interface SLYahooOAuth2MigrationResponse
- (SLYahooOAuth2MigrationResponse)initWithData:(id)data urlResponse:(id)response error:(id)error;
@end

@implementation SLYahooOAuth2MigrationResponse

- (SLYahooOAuth2MigrationResponse)initWithData:(id)data urlResponse:(id)response error:(id)error
{
  dataCopy = data;
  responseCopy = response;
  errorCopy = error;
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(dataCopy, "length")}];
  _SLLog(v5, 7, @"SLYahooOAuth2MigrationResponse initWithData: %@ length urlResponse: %@ error: %@", v13, v14, v15, v16, v17, v12);

  v53.receiver = self;
  v53.super_class = SLYahooOAuth2MigrationResponse;
  v18 = [(SLYahooOAuth2MigrationResponse *)&v53 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_error, error);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = responseCopy;
      statusCode = [v25 statusCode];
      v19->_statusCode = statusCode;
      v27 = [MEMORY[0x1E696AD98] numberWithInteger:statusCode];
      _SLLog(v5, 7, @"SLYahooOAuth2MigrationResponse httpResponse status code %@", v28, v29, v30, v31, v32, v27);

      if (!v19->_error)
      {
        v52 = 0;
        v33 = [MEMORY[0x1E696ACB0] JSONObjectWithData:dataCopy options:0 error:&v52];
        v34 = v52;
        v35 = v52;
        if (v35)
        {
          objc_storeStrong(&v19->_error, v34);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_storeStrong(&v19->_responseBody, v33);
          v41 = [(NSDictionary *)v19->_responseBody objectForKeyedSubscript:@"access_token"];
          accessToken = v19->_accessToken;
          v19->_accessToken = v41;

          v43 = [(NSDictionary *)v19->_responseBody objectForKeyedSubscript:@"refresh_token"];
          refreshToken = v19->_refreshToken;
          v19->_refreshToken = v43;

          v45 = MEMORY[0x1E695DF00];
          v46 = [(NSDictionary *)v19->_responseBody objectForKeyedSubscript:@"expires_in"];
          v47 = [v45 dateWithTimeIntervalSinceNow:{objc_msgSend(v46, "integerValue")}];
          expiryDate = v19->_expiryDate;
          v19->_expiryDate = v47;
        }

        else
        {
          _SLLog(v5, 7, @"SLYahooOAuth2MigrationResponse response JSON data does not represent NSDictionary. Game over.", v36, v37, v38, v39, v40, v51);
        }
      }
    }

    else
    {
      _SLLog(v5, 7, @"SLYahooOAuth2MigrationResponse response is not NSHTTPURLResponse. Game over.", v20, v21, v22, v23, v24, v50);
    }
  }

  return v19;
}

@end