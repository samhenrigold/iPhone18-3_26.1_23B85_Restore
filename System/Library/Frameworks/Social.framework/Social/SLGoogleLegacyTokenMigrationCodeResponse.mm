@interface SLGoogleLegacyTokenMigrationCodeResponse
- (SLGoogleLegacyTokenMigrationCodeResponse)initWithData:(id)data urlResponse:(id)response error:(id)error;
@end

@implementation SLGoogleLegacyTokenMigrationCodeResponse

- (SLGoogleLegacyTokenMigrationCodeResponse)initWithData:(id)data urlResponse:(id)response error:(id)error
{
  v40 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  v38.receiver = self;
  v38.super_class = SLGoogleLegacyTokenMigrationCodeResponse;
  v10 = [(SLGoogleLegacyTokenMigrationResponse *)&v38 initWithData:data urlResponse:responseCopy error:error];
  v11 = v10;
  if (!error)
  {
    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = objc_alloc_init(MEMORY[0x1E695DEC8]);
        v13 = MEMORY[0x1E696AC58];
        allHeaderFields = [responseCopy allHeaderFields];
        v15 = [MEMORY[0x1E695DFF8] URLWithString:&stru_1F41EC300];
        v16 = [v13 cookiesWithResponseHeaderFields:allHeaderFields forURL:v15];

        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v17 = v16;
        v18 = [v17 countByEnumeratingWithState:&v34 objects:v39 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v35;
          while (2)
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v35 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v34 + 1) + 8 * i);
              name = [v22 name];
              v24 = [name isEqualToString:@"oauth_code"];

              if (v24)
              {
                _SLLog(v5, 5, @"Successfully got an auth code", v25, v26, v27, v28, v29, v33);
                value = [v22 value];
                code = v11->_code;
                v11->_code = value;

                goto LABEL_14;
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v34 objects:v39 count:16];
            if (v19)
            {
              continue;
            }

            break;
          }
        }

LABEL_14:
      }
    }
  }

  return v11;
}

@end