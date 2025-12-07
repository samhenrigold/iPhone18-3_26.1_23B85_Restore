@interface AAUniversalLinkHelper
+ (id)infoForComponents:(id)components;
+ (id)stringForBenefiaryMessagesURLWithUUID:(id)d;
+ (id)stringForCustodianMessagesURLWithUUID:(id)d;
@end

@implementation AAUniversalLinkHelper

+ (id)infoForComponents:(id)components
{
  v36 = *MEMORY[0x1E69E9840];
  componentsCopy = components;
  queryItems = [componentsCopy queryItems];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v5 = [queryItems countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (!v5)
  {
    v6 = 0;
    v25 = 0;
    goto LABEL_26;
  }

  v28 = componentsCopy;
  v29 = 0;
  v30 = 0;
  v6 = 0;
  v7 = 0;
  v8 = *v32;
  do
  {
    for (i = 0; i != v5; i = i + 1)
    {
      if (*v32 != v8)
      {
        objc_enumerationMutation(queryItems);
      }

      v10 = *(*(&v31 + 1) + 8 * i);
      name = [v10 name];
      v12 = [name isEqualToString:@"id"];

      if (v12)
      {
        value = [v10 value];
        v14 = v6;
        v6 = value;
      }

      else
      {
        name2 = [v10 name];
        v16 = [name2 isEqualToString:@"flow"];

        if (v16)
        {
          value2 = [v10 value];
          v14 = v7;
          v7 = value2;
        }

        else
        {
          name3 = [v10 name];
          v19 = [name3 isEqualToString:@"domainState"];

          if (v19)
          {
            value3 = [v10 value];
            v14 = v30;
            v30 = value3;
          }

          else
          {
            name4 = [v10 name];
            v22 = [name4 isEqualToString:@"state"];

            if (!v22)
            {
              continue;
            }

            value4 = [v10 value];
            v14 = v29;
            v29 = value4;
          }
        }
      }
    }

    v5 = [queryItems countByEnumeratingWithState:&v31 objects:v35 count:16];
  }

  while (v5);
  if (v7)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setValue:v7 forKey:@"flow"];
    componentsCopy = v28;
    v25 = v29;
    v5 = v30;
    if (v6)
    {
      [dictionary setValue:v6 forKey:@"id"];
    }

    if (v30)
    {
      [dictionary setValue:v30 forKey:@"domainState"];
    }

    if (v29)
    {
      [dictionary setValue:v29 forKey:@"state"];
    }

    goto LABEL_29;
  }

  componentsCopy = v28;
  v25 = v29;
  v5 = v30;
LABEL_26:
  v26 = _AALogSystem(0);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    [AAUniversalLinkHelper infoForComponents:v26];
  }

  v7 = 0;
  dictionary = 0;
LABEL_29:

  return dictionary;
}

+ (id)stringForCustodianMessagesURLWithUUID:(id)d
{
  dCopy = d;
  if (!dCopy)
  {
    [(AAUniversalLinkHelper *)a2 stringForCustodianMessagesURLWithUUID:self];
  }

  v6 = MEMORY[0x1E696AEC0];
  uUIDString = [dCopy UUIDString];
  v8 = [v6 stringWithFormat:@"https://setup.icloud.com/private/trustedcontact?%@=%@&%@=%@", @"flow", @"custodian", @"id", uUIDString];

  return v8;
}

+ (id)stringForBenefiaryMessagesURLWithUUID:(id)d
{
  dCopy = d;
  if (!dCopy)
  {
    [(AAUniversalLinkHelper *)a2 stringForBenefiaryMessagesURLWithUUID:self];
  }

  v6 = MEMORY[0x1E696AEC0];
  uUIDString = [dCopy UUIDString];
  v8 = [v6 stringWithFormat:@"https://setup.icloud.com/private/trustedcontact?%@=%@&%@=%@", @"flow", @"digitalLegacy", @"id", uUIDString];

  return v8;
}

+ (void)stringForCustodianMessagesURLWithUUID:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"AAUniversalLinkHelper.m" lineNumber:65 description:{@"Invalid parameter not satisfying: %@", @"uuid"}];
}

+ (void)stringForBenefiaryMessagesURLWithUUID:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"AAUniversalLinkHelper.m" lineNumber:70 description:{@"Invalid parameter not satisfying: %@", @"uuid"}];
}

@end