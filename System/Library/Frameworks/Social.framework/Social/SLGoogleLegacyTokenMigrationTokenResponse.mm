@interface SLGoogleLegacyTokenMigrationTokenResponse
- (SLGoogleLegacyTokenMigrationTokenResponse)initWithData:(id)data urlResponse:(id)response error:(id)error;
@end

@implementation SLGoogleLegacyTokenMigrationTokenResponse

- (SLGoogleLegacyTokenMigrationTokenResponse)initWithData:(id)data urlResponse:(id)response error:(id)error
{
  v31 = *MEMORY[0x1E69E9840];
  v29.receiver = self;
  v29.super_class = SLGoogleLegacyTokenMigrationTokenResponse;
  v7 = [(SLGoogleLegacyTokenMigrationResponse *)&v29 initWithData:data urlResponse:response error:?];
  v8 = v7;
  if (!error && v7)
  {
    responseBody = [(SLGoogleLegacyTokenMigrationResponse *)v7 responseBody];
    v10 = [responseBody componentsSeparatedByString:@"\n"];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v26;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v26 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v25 + 1) + 8 * i);
          if ([v16 hasPrefix:{@"Auth=", v25}])
          {
            v17 = [v16 substringFromIndex:5];
            token = v8->_token;
            v8->_token = v17;

            _SLLog(v5, 5, @"Successfully got a token", v19, v20, v21, v22, v23, v25);
            goto LABEL_13;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return v8;
}

@end