@interface SLWebUserInfoResponse
- (SLWebUserInfoResponse)initWithData:(id)data urlResponse:(id)response error:(id)error;
@end

@implementation SLWebUserInfoResponse

- (SLWebUserInfoResponse)initWithData:(id)data urlResponse:(id)response error:(id)error
{
  dataCopy = data;
  responseCopy = response;
  errorCopy = error;
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(dataCopy, "length")}];
  _SLLog(v5, 7, @"SLWebUserInfoResponse initWithData: %@ length urlResponse: %@ error: %@", v13, v14, v15, v16, v17, v12);

  v44.receiver = self;
  v44.super_class = SLWebUserInfoResponse;
  v18 = [(SLWebUserInfoResponse *)&v44 init];
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
      _SLLog(v5, 7, @"SLWebUserInfoResponse httpResponse status code %@", v27, v28, v29, v30, v31, v26);

      if (!v19->_error)
      {
        v43 = 0;
        v32 = [MEMORY[0x1E696ACB0] JSONObjectWithData:dataCopy options:0 error:&v43];
        v33 = v43;
        v34 = v43;
        if (v34)
        {
          objc_storeStrong(&v19->_error, v33);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(SLWebUserInfoResponse *)v19 _populateDataFromResponseDictionary:v32];
        }

        else
        {
          _SLLog(v5, 7, @"SLWebUserInfoResponse response JSON data does not represent NSDictionary. Game over.", v35, v36, v37, v38, v39, v42);
        }
      }
    }

    else
    {
      _SLLog(v5, 7, @"SLWebUserInfoResponse response is not NSHTTPURLResponse. Game over.", v20, v21, v22, v23, v24, v41);
    }
  }

  return v19;
}

@end