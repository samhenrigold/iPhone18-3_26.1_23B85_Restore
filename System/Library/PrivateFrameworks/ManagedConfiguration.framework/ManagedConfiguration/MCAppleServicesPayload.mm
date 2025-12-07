@interface MCAppleServicesPayload
+ (id)typeStrings;
- (MCAppleServicesPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error;
- (id)stubDictionary;
- (id)subtitle1Label;
- (id)verboseDescription;
@end

@implementation MCAppleServicesPayload

+ (id)typeStrings
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"com.apple.security.appleservices";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (MCAppleServicesPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error
{
  v59 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v51.receiver = self;
  v51.super_class = MCAppleServicesPayload;
  v9 = [(MCPayload *)&v51 initWithDictionary:dictionaryCopy profile:profile outError:error];
  if (!v9)
  {
    goto LABEL_40;
  }

  array = [MEMORY[0x1E695DF70] array];
  v50 = 0;
  v11 = [dictionaryCopy MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"PinningAdditions" isRequired:0 outError:&v50];
  v12 = v50;
  if (v12)
  {
    goto LABEL_31;
  }

  if (!v11)
  {
    v12 = 0;
    goto LABEL_30;
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v11;
  v13 = [obj countByEnumeratingWithState:&v46 objects:v58 count:16];
  if (!v13)
  {
    v12 = 0;
    goto LABEL_29;
  }

  v14 = v13;
  v15 = *v47;
  v43 = *MEMORY[0x1E697B368];
  v42 = *MEMORY[0x1E697B370];
  v41 = v11;
  while (2)
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v47 != v15)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v46 + 1) + 8 * i);
      v18 = [v17 objectForKeyedSubscript:@"Algorithm"];
      if (!v18)
      {
        v26 = [objc_opt_class() missingFieldErrorWithField:@"Algorithm" underlyingError:0];
LABEL_24:
        v12 = v26;
        goto LABEL_28;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v26 = [MCPayload badFieldTypeErrorWithField:@"Algorithm"];
        goto LABEL_24;
      }

      v18 = v18;
      if ([v18 isEqualToString:@"sha256"])
      {
        v19 = [v17 objectForKeyedSubscript:@"Hash"];
        if (v19)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v52[0] = v43;
            v52[1] = v42;
            v53[0] = v18;
            v53[1] = v19;
            v20 = MEMORY[0x1E695DF20];
            v21 = v19;
            v22 = [v20 dictionaryWithObjects:v53 forKeys:v52 count:2];

            [array addObject:v22];
            goto LABEL_17;
          }

          v27 = [MCPayload badFieldTypeErrorWithField:@"Hash"];
        }

        else
        {
          v27 = [objc_opt_class() missingFieldErrorWithField:@"Hash" underlyingError:0];
        }

        v12 = v27;

LABEL_28:
        v11 = v41;
        goto LABEL_29;
      }

      v23 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
      {
        v24 = v23;
        friendlyName = [(MCPayload *)v9 friendlyName];
        *buf = 138412546;
        v55 = friendlyName;
        v56 = 2112;
        v57 = v18;
        _os_log_impl(&dword_1A795B000, v24, OS_LOG_TYPE_DEFAULT, "Payload %@ has an unsupported hash algorithm %@. The hash will be ignored.", buf, 0x16u);
      }

LABEL_17:
    }

    v14 = [obj countByEnumeratingWithState:&v46 objects:v58 count:16];
    v12 = 0;
    v11 = v41;
    if (v14)
    {
      continue;
    }

    break;
  }

LABEL_29:

LABEL_30:
  objc_storeStrong(&v9->_hashDictionaries, array);
  if (v12)
  {
LABEL_31:
    v28 = [(MCPayload *)v9 malformedPayloadErrorWithError:v12];
    v29 = v28;
    if (error)
    {
      v30 = v28;
      *error = v29;
    }

    v31 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      v32 = v31;
      v33 = array;
      v34 = v11;
      v35 = objc_opt_class();
      obja = v35;
      mCVerboseDescription = [v29 MCVerboseDescription];
      *buf = 138412546;
      v55 = v35;
      v11 = v34;
      array = v33;
      v56 = 2112;
      v57 = mCVerboseDescription;
      _os_log_impl(&dword_1A795B000, v32, OS_LOG_TYPE_ERROR, "%@ Can't parse payload: %@", buf, 0x16u);
    }

    v9 = 0;
  }

  if ([dictionaryCopy count])
  {
    v37 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
    {
      v38 = v37;
      friendlyName2 = [(MCPayload *)v9 friendlyName];
      *buf = 138412546;
      v55 = friendlyName2;
      v56 = 2112;
      v57 = dictionaryCopy;
      _os_log_impl(&dword_1A795B000, v38, OS_LOG_TYPE_INFO, "Payload “%@” contains ignored fields. They are: %@", buf, 0x16u);
    }
  }

LABEL_40:
  return v9;
}

- (id)stubDictionary
{
  v25 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = MCAppleServicesPayload;
  stubDictionary = [(MCPayload *)&v21 stubDictionary];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](self->_hashDictionaries, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = self->_hashDictionaries;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v17 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    v7 = *MEMORY[0x1E697B368];
    v8 = *MEMORY[0x1E697B370];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v22[0] = @"Algorithm";
        v11 = [v10 objectForKeyedSubscript:v7];
        v22[1] = @"Hash";
        v23[0] = v11;
        v12 = [v10 objectForKeyedSubscript:v8];
        v23[1] = v12;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
        [v3 addObject:v13];
      }

      v5 = [(NSArray *)obj countByEnumeratingWithState:&v17 objects:v24 count:16];
    }

    while (v5);
  }

  [stubDictionary setObject:v3 forKeyedSubscript:@"PinningAdditions"];

  return stubDictionary;
}

- (id)verboseDescription
{
  v6.receiver = self;
  v6.super_class = MCAppleServicesPayload;
  verboseDescription = [(MCPayload *)&v6 verboseDescription];
  v4 = [verboseDescription mutableCopy];

  if (self->_hashDictionaries)
  {
    [v4 appendFormat:@"\nhashDictionaries:\n%@", self->_hashDictionaries];
  }

  return v4;
}

- (id)subtitle1Label
{
  v2 = [(NSArray *)self->_hashDictionaries count];
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = @"APPLE_SERVICES_PINNING_ADDITION_SINGULAR";
    }

    else
    {
      v3 = @"APPLE_SERVICES_PINNING_ADDITION_PLURAL";
    }

    v2 = MCLocalizedString(v3);
  }

  return v2;
}

@end