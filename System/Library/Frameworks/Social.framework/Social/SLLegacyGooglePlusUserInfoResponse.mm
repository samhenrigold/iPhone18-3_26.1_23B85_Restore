@interface SLLegacyGooglePlusUserInfoResponse
- (void)_populateDataFromResponseDictionary:(id)dictionary;
@end

@implementation SLLegacyGooglePlusUserInfoResponse

- (void)_populateDataFromResponseDictionary:(id)dictionary
{
  v41 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  [(SLWebUserInfoResponse *)self setUserInfo:dictionaryCopy];
  _SLLog(v3, 7, @"SLLegacyGooglePlusUserInfoResponse got _userInfo: %@", v6, v7, v8, v9, v10, dictionaryCopy);
  v11 = [dictionaryCopy objectForKeyedSubscript:@"displayName"];
  [(SLWebUserInfoResponse *)self setDisplayName:v11];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v34 = dictionaryCopy;
  v12 = [dictionaryCopy objectForKeyedSubscript:@"emails"];
  v13 = [v12 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v36;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v36 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v35 + 1) + 8 * i);
        v18 = [v17 objectForKeyedSubscript:@"type"];
        if ([v18 isEqualToString:@"account"])
        {
        }

        else
        {
          emailAddresses = [(SLWebUserInfoResponse *)self emailAddresses];

          if (emailAddresses)
          {
            continue;
          }
        }

        v20 = [v17 objectForKeyedSubscript:@"value"];
        v39 = v20;
        v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
        [(SLWebUserInfoResponse *)self setEmailAddresses:v21];
      }

      v14 = [v12 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v14);
  }

  emailAddresses2 = [(SLWebUserInfoResponse *)self emailAddresses];

  if (!emailAddresses2)
  {
    _SLLog(v3, 3, @"Couldn't get an email address. userInfo was: %@", v23, v24, v25, v26, v27, v34);
  }

  v28 = [v34 objectForKeyedSubscript:@"error"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v30 = [v34 objectForKeyedSubscript:@"error"];
    v31 = [v30 objectForKeyedSubscript:@"message"];
    objc_opt_class();
    v32 = objc_opt_isKindOfClass();

    if (v32)
    {
      v33 = [v30 objectForKeyedSubscript:@"message"];
      [(SLWebUserInfoResponse *)self setErrorMessage:v33];
    }
  }
}

@end