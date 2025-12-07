@interface MCTVRemotePayload
+ (id)typeStrings;
- (MCTVRemotePayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error;
- (id)_allowedRemotesDescription;
- (id)_allowedRemotesTitle;
- (id)_allowedTVsDescription;
- (id)_allowedTVsTitle;
- (id)payloadDescriptionKeyValueSections;
- (id)restrictions;
- (id)stubDictionary;
- (id)subtitle1Description;
- (id)subtitle1Label;
- (id)subtitle2Description;
- (id)subtitle2Label;
- (id)verboseDescription;
@end

@implementation MCTVRemotePayload

+ (id)typeStrings
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"com.apple.tvremote";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (MCTVRemotePayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error
{
  v59 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v53.receiver = self;
  v53.super_class = MCTVRemotePayload;
  v9 = [(MCPayload *)&v53 initWithDictionary:dictionaryCopy profile:profile outError:error];
  if (!v9)
  {
    goto LABEL_31;
  }

  v52 = 0;
  v10 = [MCProfile removeOptionalObjectInDictionary:dictionaryCopy key:@"AllowedTVs" type:objc_opt_class() errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v52];
  v11 = v52;
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    array3 = [MEMORY[0x1E695DF70] array];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    obj = v10;
    v42 = [(NSArray *)obj countByEnumeratingWithState:&v48 objects:v58 count:16];
    if (v42)
    {
      v43 = *v49;
      v44 = array;
      errorCopy = error;
      v45 = array2;
LABEL_6:
      v15 = 0;
      while (1)
      {
        if (*v49 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v48 + 1) + 8 * v15);
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        v47 = 0;
        v18 = [MCProfile removeRequiredNonZeroLengthStringInDictionary:v16 key:@"TVDeviceID" errorDomain:@"MCPayloadErrorDomain" missingDataCode:2002 missingDataErrorString:@"ERROR_PAYLOAD_REQUIRED_FIELD_MISSING_P_FIELD" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v47];
        v19 = v47;
        if (v19)
        {
          v12 = v19;

          goto LABEL_20;
        }

        uppercaseString = [v18 uppercaseString];

        [dictionary setObject:uppercaseString forKeyedSubscript:@"TVDeviceID"];
        [v45 addObject:uppercaseString];
        v46 = 0;
        v21 = [MCProfile removeOptionalNonZeroLengthStringInDictionary:v16 key:@"TVDeviceName" errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v46];
        v22 = v46;
        if (v22)
        {
          v12 = v22;

          goto LABEL_20;
        }

        if (v21)
        {
          [dictionary setObject:v21 forKeyedSubscript:@"TVDeviceName"];
          [array3 addObject:v21];
        }

        [v44 addObject:dictionary];

        if (v42 == ++v15)
        {
          error = errorCopy;
          array = v44;
          array2 = v45;
          v42 = [(NSArray *)obj countByEnumeratingWithState:&v48 objects:v58 count:16];
          if (v42)
          {
            goto LABEL_6;
          }

          goto LABEL_16;
        }
      }

      v12 = [MCPayload badFieldTypeErrorWithField:@"AllowedTVs"];
LABEL_20:

      v23 = obj;
      v24 = array3;
      allowedTVIDs = obj;
      error = errorCopy;
      array = v44;
      array2 = v45;
      goto LABEL_21;
    }

LABEL_16:
    v23 = obj;

    objc_storeStrong(&v9->_allowedTVs, array);
    v24 = array3;
    objc_storeStrong(&v9->_allowedTVNames, array3);
    v25 = array2;
    v12 = 0;
    allowedTVIDs = v9->_allowedTVIDs;
    v9->_allowedTVIDs = v25;
LABEL_21:

    if (!v12)
    {
      goto LABEL_27;
    }
  }

  v27 = [(MCPayload *)v9 malformedPayloadErrorWithError:v12];
  v28 = v27;
  if (error)
  {
    v29 = v27;
    *error = v28;
  }

  v30 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
  {
    v31 = v30;
    v32 = objc_opt_class();
    v33 = v32;
    mCVerboseDescription = [v28 MCVerboseDescription];
    *buf = 138543618;
    v55 = v32;
    v56 = 2114;
    v57 = mCVerboseDescription;
    _os_log_impl(&dword_1A795B000, v31, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
  }

  v9 = 0;
LABEL_27:
  if ([dictionaryCopy count])
  {
    v35 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
    {
      v36 = v35;
      friendlyName = [(MCPayload *)v9 friendlyName];
      *buf = 138543618;
      v55 = friendlyName;
      v56 = 2114;
      v57 = dictionaryCopy;
      _os_log_impl(&dword_1A795B000, v36, OS_LOG_TYPE_INFO, "Payload “%{public}@” contains ignored fields. They are: %{public}@", buf, 0x16u);
    }
  }

LABEL_31:
  return v9;
}

- (id)stubDictionary
{
  v7.receiver = self;
  v7.super_class = MCTVRemotePayload;
  stubDictionary = [(MCPayload *)&v7 stubDictionary];
  allowedTVs = [(MCTVRemotePayload *)self allowedTVs];

  if (allowedTVs)
  {
    allowedTVs2 = [(MCTVRemotePayload *)self allowedTVs];
    [stubDictionary setObject:allowedTVs2 forKey:@"AllowedTVs"];
  }

  return stubDictionary;
}

- (id)_allowedRemotesTitle
{
  allowedRemotes = [(MCTVRemotePayload *)self allowedRemotes];
  if ([allowedRemotes count])
  {
    v3 = MCLocalizedString(@"TVREMOTE_REMOTES_TITLE_COLON");
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_allowedRemotesDescription
{
  allowedRemotes = [(MCTVRemotePayload *)self allowedRemotes];
  if ([allowedRemotes count])
  {
    allowedRemotes2 = [(MCTVRemotePayload *)self allowedRemotes];
    v5 = [allowedRemotes2 count];
    v13 = MCLocalizedFormat(@"TVREMOTE_REMOTE_COUNT", v6, v7, v8, v9, v10, v11, v12, v5);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_allowedTVsTitle
{
  allowedTVs = [(MCTVRemotePayload *)self allowedTVs];
  if ([allowedTVs count])
  {
    v3 = MCLocalizedString(@"TVREMOTE_TVS_TITLE_COLON");
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_allowedTVsDescription
{
  allowedTVs = [(MCTVRemotePayload *)self allowedTVs];
  if ([allowedTVs count])
  {
    allowedTVs2 = [(MCTVRemotePayload *)self allowedTVs];
    v5 = [allowedTVs2 count];
    v13 = MCLocalizedFormat(@"TVREMOTE_TV_COUNT", v6, v7, v8, v9, v10, v11, v12, v5);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)subtitle1Label
{
  _allowedRemotesTitle = [(MCTVRemotePayload *)self _allowedRemotesTitle];
  v4 = _allowedRemotesTitle;
  if (_allowedRemotesTitle)
  {
    _allowedTVsTitle = _allowedRemotesTitle;
  }

  else
  {
    _allowedTVsTitle = [(MCTVRemotePayload *)self _allowedTVsTitle];
  }

  v6 = _allowedTVsTitle;

  return v6;
}

- (id)subtitle1Description
{
  _allowedRemotesDescription = [(MCTVRemotePayload *)self _allowedRemotesDescription];
  v4 = _allowedRemotesDescription;
  if (_allowedRemotesDescription)
  {
    _allowedTVsDescription = _allowedRemotesDescription;
  }

  else
  {
    _allowedTVsDescription = [(MCTVRemotePayload *)self _allowedTVsDescription];
  }

  v6 = _allowedTVsDescription;

  return v6;
}

- (id)subtitle2Label
{
  _allowedRemotesTitle = [(MCTVRemotePayload *)self _allowedRemotesTitle];
  if (_allowedRemotesTitle)
  {
    _allowedTVsTitle = [(MCTVRemotePayload *)self _allowedTVsTitle];
  }

  else
  {
    _allowedTVsTitle = 0;
  }

  return _allowedTVsTitle;
}

- (id)subtitle2Description
{
  _allowedRemotesDescription = [(MCTVRemotePayload *)self _allowedRemotesDescription];
  if (_allowedRemotesDescription)
  {
    _allowedTVsDescription = [(MCTVRemotePayload *)self _allowedTVsDescription];
  }

  else
  {
    _allowedTVsDescription = 0;
  }

  return _allowedTVsDescription;
}

- (id)verboseDescription
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD60];
  v34.receiver = self;
  v34.super_class = MCTVRemotePayload;
  v4 = [(MCPayload *)&v34 description];
  v5 = [v3 stringWithString:v4];

  allowedRemotes = [(MCTVRemotePayload *)self allowedRemotes];

  if (allowedRemotes)
  {
    allowedRemotes2 = [(MCTVRemotePayload *)self allowedRemotes];
    [v5 appendFormat:@"Allowed Remotes   : %lu entries\n", objc_msgSend(allowedRemotes2, "count")];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    allowedRemotes3 = [(MCTVRemotePayload *)self allowedRemotes];
    v9 = [allowedRemotes3 countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v31;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v31 != v11)
          {
            objc_enumerationMutation(allowedRemotes3);
          }

          [v5 appendFormat:@"                  %@\n", *(*(&v30 + 1) + 8 * i)];
        }

        v10 = [allowedRemotes3 countByEnumeratingWithState:&v30 objects:v36 count:16];
      }

      while (v10);
    }
  }

  allowedTVs = [(MCTVRemotePayload *)self allowedTVs];

  if (allowedTVs)
  {
    allowedTVs2 = [(MCTVRemotePayload *)self allowedTVs];
    [v5 appendFormat:@"Allowed TVs       : %lu entries\n", objc_msgSend(allowedTVs2, "count")];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = [(MCTVRemotePayload *)self allowedTVs];
    v15 = [obj countByEnumeratingWithState:&v26 objects:v35 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v27;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v27 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v26 + 1) + 8 * j);
          v20 = [v19 objectForKeyedSubscript:@"TVDeviceID"];
          v21 = [v19 objectForKeyedSubscript:@"TVDeviceName"];
          v22 = v21;
          if (v21)
          {
            v23 = v21;
          }

          else
          {
            v23 = &stru_1F1A7FAB0;
          }

          [v5 appendFormat:@"                  %@ (%@)\n", v20, v23];
        }

        v16 = [obj countByEnumeratingWithState:&v26 objects:v35 count:16];
      }

      while (v16);
    }
  }

  return v5;
}

- (id)payloadDescriptionKeyValueSections
{
  v3 = objc_opt_new();
  allowedRemotes = [(MCTVRemotePayload *)self allowedRemotes];
  v5 = [allowedRemotes count];

  if (v5)
  {
    allowedRemotes2 = [(MCTVRemotePayload *)self allowedRemotes];
    v7 = MCLocalizedString(@"TVREMOTE_ALLOWED_REMOTES");
    v8 = [MCKeyValueSection sectionWithLocalizedArray:allowedRemotes2 title:v7 footer:0];

    if (v8)
    {
      [v3 addObject:v8];
    }
  }

  allowedTVIDs = [(MCTVRemotePayload *)self allowedTVIDs];
  v10 = [allowedTVIDs count];

  if (v10)
  {
    allowedTVIDs2 = [(MCTVRemotePayload *)self allowedTVIDs];
    v12 = MCLocalizedString(@"TVREMOTE_ALLOWED_TVS");
    v13 = [MCKeyValueSection sectionWithLocalizedArray:allowedTVIDs2 title:v12 footer:0];

    if (v13)
    {
      [v3 addObject:v13];
    }
  }

  allowedTVNames = [(MCTVRemotePayload *)self allowedTVNames];
  v15 = [allowedTVNames count];

  if (v15)
  {
    allowedTVNames2 = [(MCTVRemotePayload *)self allowedTVNames];
    v17 = MCLocalizedString(@"TVREMOTE_ALLOWED_TV_NAMES");
    v18 = [MCKeyValueSection sectionWithLocalizedArray:allowedTVNames2 title:v17 footer:0];

    if (v18)
    {
      [v3 addObject:v18];
    }
  }

  if (![v3 count])
  {

    v3 = 0;
  }

  return v3;
}

- (id)restrictions
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:dictionary2 forKeyedSubscript:@"union"];
  dictionary3 = [MEMORY[0x1E695DF90] dictionary];
  allowedRemotes = [(MCTVRemotePayload *)self allowedRemotes];

  if (allowedRemotes)
  {
    [dictionary2 setObject:dictionary3 forKeyedSubscript:@"tvRemoteAllowedRemotes"];
    allowedRemotes2 = [(MCTVRemotePayload *)self allowedRemotes];
    [dictionary3 setObject:allowedRemotes2 forKeyedSubscript:@"values"];
  }

  dictionary4 = [MEMORY[0x1E695DF90] dictionary];
  allowedTVIDs = [(MCTVRemotePayload *)self allowedTVIDs];

  if (allowedTVIDs)
  {
    [dictionary2 setObject:dictionary4 forKeyedSubscript:@"tvRemoteAllowedTVs"];
    allowedTVIDs2 = [(MCTVRemotePayload *)self allowedTVIDs];
    [dictionary4 setObject:allowedTVIDs2 forKeyedSubscript:@"values"];
  }

  dictionary5 = [MEMORY[0x1E695DF90] dictionary];
  allowedTVNames = [(MCTVRemotePayload *)self allowedTVNames];

  if (allowedTVNames)
  {
    [dictionary2 setObject:dictionary5 forKeyedSubscript:@"tvRemoteAllowedTVNames"];
    allowedTVNames2 = [(MCTVRemotePayload *)self allowedTVNames];
    [dictionary5 setObject:allowedTVNames2 forKeyedSubscript:@"values"];
  }

  return dictionary;
}

@end