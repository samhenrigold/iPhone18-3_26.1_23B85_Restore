@interface AATermsReportUserActionResponse
- (AATermsReportUserActionResponse)initWithHTTPResponse:(id)response data:(id)data;
@end

@implementation AATermsReportUserActionResponse

- (AATermsReportUserActionResponse)initWithHTTPResponse:(id)response data:(id)data
{
  v22 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v17.receiver = self;
  v17.super_class = AATermsReportUserActionResponse;
  v7 = [(AAResponse *)&v17 initWithHTTPResponse:response data:dataCopy bodyIsPlist:0];
  v8 = v7;
  if (dataCopy && v7 && [dataCopy length])
  {
    v16 = 0;
    v9 = [MEMORY[0x1E696ACB0] JSONObjectWithData:dataCopy options:0 error:&v16];
    v10 = v16;
    responseParameters = v8->_responseParameters;
    v8->_responseParameters = v9;

    if (v10)
    {
      v13 = _AALogSystem(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:dataCopy encoding:4];
        *buf = 138412546;
        v19 = v14;
        v20 = 2112;
        v21 = v10;
        _os_log_impl(&dword_1B6F6A000, v13, OS_LOG_TYPE_DEFAULT, "Error: Could not parse server response data: %@. Details: %@", buf, 0x16u);
      }
    }
  }

  return v8;
}

@end