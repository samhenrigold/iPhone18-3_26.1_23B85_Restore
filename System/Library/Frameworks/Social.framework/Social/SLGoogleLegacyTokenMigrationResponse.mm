@interface SLGoogleLegacyTokenMigrationResponse
- (SLGoogleLegacyTokenMigrationResponse)initWithData:(id)data urlResponse:(id)response error:(id)error;
@end

@implementation SLGoogleLegacyTokenMigrationResponse

- (SLGoogleLegacyTokenMigrationResponse)initWithData:(id)data urlResponse:(id)response error:(id)error
{
  dataCopy = data;
  responseCopy = response;
  errorCopy = error;
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(dataCopy, "length")}];
  _SLLog(v5, 7, @"SLGoogleLegacyTokenMigrationResponse initWithData: %@ length urlResponse: %@ error: %@", v13, v14, v15, v16, v17, v12);

  v35.receiver = self;
  v35.super_class = SLGoogleLegacyTokenMigrationResponse;
  v18 = [(SLGoogleLegacyTokenMigrationResponse *)&v35 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_error, error);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19->_statusCode = [responseCopy statusCode];
      v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:dataCopy encoding:4];
      responseBody = v19->_responseBody;
      v19->_responseBody = v25;

      v27 = [MEMORY[0x1E696AD98] numberWithInteger:v19->_statusCode];
      _SLLog(v5, 7, @"SLGoogleLegacyTokenMigrationResponse httpResponse status code %@", v28, v29, v30, v31, v32, v27);
    }

    else
    {
      _SLLog(v5, 7, @"SLGoogleLegacyTokenMigrationResponse response is not NSHTTPURLResponse. Game over.", v20, v21, v22, v23, v24, v34);
    }
  }

  return v19;
}

@end