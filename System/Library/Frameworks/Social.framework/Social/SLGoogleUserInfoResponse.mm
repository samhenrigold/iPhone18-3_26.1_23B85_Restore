@interface SLGoogleUserInfoResponse
- (void)_populateDataFromResponseDictionary:(id)dictionary;
@end

@implementation SLGoogleUserInfoResponse

- (void)_populateDataFromResponseDictionary:(id)dictionary
{
  v57 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  selfCopy = self;
  [(SLWebUserInfoResponse *)self setUserInfo:dictionaryCopy];
  _SLLog(v3, 7, @"SLGoogleUserInfoResponse got _userInfo: %@", v6, v7, v8, v9, v10, dictionaryCopy);
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v45 = dictionaryCopy;
  v11 = [dictionaryCopy objectForKeyedSubscript:@"names"];
  v12 = [v11 countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v52;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v52 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v51 + 1) + 8 * i);
        v17 = [v16 objectForKeyedSubscript:@"metadata"];
        v18 = [v17 objectForKeyedSubscript:@"primary"];
        bOOLValue = [v18 BOOLValue];

        if (bOOLValue)
        {
          v20 = [v16 objectForKeyedSubscript:@"displayName"];
          [(SLWebUserInfoResponse *)selfCopy setDisplayName:v20];

          goto LABEL_11;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v51 objects:v56 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  array = [MEMORY[0x1E695DF70] array];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v21 = [v45 objectForKeyedSubscript:@"emailAddresses"];
  v22 = [v21 countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v48;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v48 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v47 + 1) + 8 * j);
        v27 = [v26 objectForKeyedSubscript:@"value"];
        if (v27)
        {
          v28 = [v26 objectForKeyedSubscript:@"metadata"];
          v29 = [v28 objectForKeyedSubscript:@"primary"];
          bOOLValue2 = [v29 BOOLValue];

          if (bOOLValue2)
          {
            [array insertObject:v27 atIndex:0];
          }

          else
          {
            [array addObject:v27];
          }
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v47 objects:v55 count:16];
    }

    while (v23);
  }

  v31 = [array copy];
  [(SLWebUserInfoResponse *)selfCopy setEmailAddresses:v31];

  emailAddresses = [(SLWebUserInfoResponse *)selfCopy emailAddresses];

  if (!emailAddresses)
  {
    _SLLog(v3, 3, @"Couldn't get an email address. userInfo was: %@", v33, v34, v35, v36, v37, v45);
  }

  v38 = [v45 objectForKeyedSubscript:@"error"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v40 = [v45 objectForKeyedSubscript:@"error"];
    v41 = [v40 objectForKeyedSubscript:@"message"];
    objc_opt_class();
    v42 = objc_opt_isKindOfClass();

    if (v42)
    {
      v43 = [v40 objectForKeyedSubscript:@"message"];
      [(SLWebUserInfoResponse *)selfCopy setErrorMessage:v43];
    }
  }
}

@end