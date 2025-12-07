@interface SLGoogleOAuth2TokenResponse
- (SLGoogleOAuth2TokenResponse)initWithData:(id)data urlResponse:(id)response error:(id)error;
@end

@implementation SLGoogleOAuth2TokenResponse

- (SLGoogleOAuth2TokenResponse)initWithData:(id)data urlResponse:(id)response error:(id)error
{
  dataCopy = data;
  responseCopy = response;
  errorCopy = error;
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(dataCopy, "length")}];
  _SLLog(v5, 7, @"SLGoogleOAuth2TokenResponse initWithData: %@ length urlResponse: %@ error: %@", v13, v14, v15, v16, v17, v12);

  v63.receiver = self;
  v63.super_class = SLGoogleOAuth2TokenResponse;
  v18 = [(SLGoogleOAuth2TokenResponse *)&v63 init];
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
      _SLLog(v5, 7, @"SLGoogleOAuth2TokenResponse httpResponse status code %@", v28, v29, v30, v31, v32, v27);

      if (!v19->_error)
      {
        v62 = 0;
        v33 = [MEMORY[0x1E696ACB0] JSONObjectWithData:dataCopy options:0 error:&v62];
        v34 = v62;
        v35 = v62;
        if (v35)
        {
          objc_storeStrong(&v19->_error, v34);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_storeStrong(&v19->_data, v33);
          v41 = [(NSDictionary *)v19->_data objectForKeyedSubscript:@"access_token"];
          token = v19->_token;
          v19->_token = v41;

          v43 = [(NSDictionary *)v19->_data objectForKeyedSubscript:@"refresh_token"];
          refreshToken = v19->_refreshToken;
          v19->_refreshToken = v43;

          v45 = [(NSDictionary *)v19->_data objectForKeyedSubscript:@"id_token"];
          idToken = v19->_idToken;
          v19->_idToken = v45;

          v47 = MEMORY[0x1E695DF00];
          v48 = [(NSDictionary *)v19->_data objectForKeyedSubscript:@"expires_in"];
          v49 = [v47 dateWithTimeIntervalSinceNow:{objc_msgSend(v48, "integerValue")}];
          expiryDate = v19->_expiryDate;
          v19->_expiryDate = v49;

          v51 = [(NSDictionary *)v19->_data objectForKeyedSubscript:@"scope"];
          v52 = [v51 componentsSeparatedByString:@" "];

          v53 = [SLGoogleWebClient dataclassesForScopes:v52];
          grantedDataclasses = v19->_grantedDataclasses;
          v19->_grantedDataclasses = v53;

          v55 = [(NSDictionary *)v19->_data objectForKeyedSubscript:@"error"];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v57 = [(NSDictionary *)v19->_data objectForKeyedSubscript:@"error"];
            errorMessage = v19->_errorMessage;
            v19->_errorMessage = v57;
          }
        }

        else
        {
          _SLLog(v5, 7, @"SLGoogleOAuth2TokenResponse response JSON data does not represent NSDictionary. Game over.", v36, v37, v38, v39, v40, v61);
        }
      }
    }

    else
    {
      _SLLog(v5, 7, @"SLGoogleOAuth2TokenResponse response is not NSHTTPURLResponse. Game over.", v20, v21, v22, v23, v24, v60);
    }
  }

  return v19;
}

@end