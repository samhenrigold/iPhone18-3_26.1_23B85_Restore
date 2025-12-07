@interface MCCommunicationServiceRulesUtilities
+ (id)defaultAppBundleIDForCommunicationServiceType:(id)type forAccountWithIdentifier:(id)identifier;
+ (id)restrictionsForValidatedCommunicationServiceRules:(id)rules;
+ (id)validServiceTypes;
+ (id)validatedCommunicationServiceRules:(id)rules outError:(id *)error;
@end

@implementation MCCommunicationServiceRulesUtilities

+ (id)validServiceTypes
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"AudioCall";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

+ (id)validatedCommunicationServiceRules:(id)rules outError:(id *)error
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = [rules mutableCopy];
  v34 = 0;
  v7 = [v6 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"DefaultServiceHandlers" isRequired:0 outError:&v34];
  v8 = v34;
  v9 = [v7 mutableCopy];

  if (v8)
  {

    v10 = 0;
  }

  else
  {
    v27 = v6;
    errorCopy = error;
    v12 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v9, "count")}];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    validServiceTypes = [self validServiceTypes];
    v14 = [validServiceTypes countByEnumeratingWithState:&v30 objects:v39 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v31;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v31 != v16)
          {
            objc_enumerationMutation(validServiceTypes);
          }

          v18 = *(*(&v30 + 1) + 8 * i);
          v19 = objc_opt_class();
          v29 = 0;
          v20 = [v9 MCValidateAndRemoveObjectOfClass:v19 withKey:v18 isRequired:0 outError:&v29];
          v21 = v29;
          if (v21)
          {
            v8 = v21;

            v10 = 0;
            v11 = 0;
            v6 = v27;
            error = errorCopy;
            goto LABEL_23;
          }

          if (v20)
          {
            [v12 setObject:v20 forKeyedSubscript:v18];
          }
        }

        v15 = [validServiceTypes countByEnumeratingWithState:&v30 objects:v39 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    if ([v9 count])
    {
      v22 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v38 = v9;
        _os_log_impl(&dword_1A795B000, v22, OS_LOG_TYPE_ERROR, "The following communication service default handlers were not understood & ignored: %{public}@", buf, 0xCu);
      }
    }

    if ([v12 count])
    {
      v35 = @"DefaultServiceHandlers";
      v36 = v12;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    }

    else
    {
      v10 = 0;
    }

    v6 = v27;

    error = errorCopy;
    if ([v10 count])
    {
      v10 = v10;
      v8 = 0;
      v11 = v10;
      goto LABEL_23;
    }

    v8 = 0;
  }

  v11 = 0;
LABEL_23:
  if ([v6 count])
  {
    v23 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v38 = v6;
      _os_log_impl(&dword_1A795B000, v23, OS_LOG_TYPE_ERROR, "The following communication service rules were not understood & ignored: %{public}@", buf, 0xCu);
    }
  }

  if (error)
  {
    v24 = v8;
    *error = v8;
  }

  v25 = v11;

  return v11;
}

+ (id)restrictionsForValidatedCommunicationServiceRules:(id)rules
{
  v10[1] = *MEMORY[0x1E69E9840];
  rulesCopy = rules;
  v4 = objc_opt_new();
  v5 = [rulesCopy objectForKey:@"DefaultServiceHandlers"];

  v6 = [v5 objectForKey:@"AudioCall"];
  v7 = v6;
  if (v6)
  {
    v10[0] = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [v4 MCSetUnionRestriction:@"audioCallDefaultHandlerAppBundleIDs" values:v8];
  }

  if (![v4 count])
  {

    v4 = 0;
  }

  return v4;
}

+ (id)defaultAppBundleIDForCommunicationServiceType:(id)type forAccountWithIdentifier:(id)identifier
{
  v5 = MEMORY[0x1E6959A48];
  identifierCopy = identifier;
  typeCopy = type;
  defaultStore = [v5 defaultStore];
  v9 = [defaultStore accountWithIdentifier:identifierCopy];

  communicationServiceRules = [v9 communicationServiceRules];
  v11 = [communicationServiceRules objectForKeyedSubscript:@"DefaultServiceHandlers"];
  v12 = [v11 objectForKeyedSubscript:typeCopy];

  return v12;
}

@end