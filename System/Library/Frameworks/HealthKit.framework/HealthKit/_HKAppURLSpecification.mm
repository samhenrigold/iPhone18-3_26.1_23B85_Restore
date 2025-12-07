@interface _HKAppURLSpecification
+ (BOOL)isAtrialFibrillationEventURL:(id)l;
+ (BOOL)isClinicalLoginRedirectURL:(id)l;
+ (BOOL)isClinicalOnboardingURL:(id)l;
+ (BOOL)parseClinicalLoginRedirectURL:(id)l resultHandler:(id)handler errorHandler:(id)errorHandler;
+ (BOOL)parseClinicalOnboardingURL:(id)l resultHandler:(id)handler errorHandler:(id)errorHandler;
@end

@implementation _HKAppURLSpecification

+ (BOOL)isClinicalOnboardingURL:(id)l
{
  lCopy = l;
  v4 = objc_alloc_init(MEMORY[0x1E696AF20]);
  [v4 setHost:@"provider-universal.health.apple.com"];
  [v4 setPath:@"/o"];
  [v4 setScheme:@"https"];
  v5 = [v4 URL];

  scheme = [lCopy scheme];
  scheme2 = [v5 scheme];
  if (scheme != scheme2)
  {
    scheme3 = [v5 scheme];
    if (!scheme3)
    {
      v19 = 0;
      goto LABEL_15;
    }

    v9 = scheme3;
    scheme4 = [lCopy scheme];
    scheme5 = [v5 scheme];
    if (![scheme4 isEqual:scheme5])
    {
      v19 = 0;
LABEL_14:

      goto LABEL_15;
    }

    v26 = scheme5;
    v27 = scheme4;
    v28 = v9;
  }

  host = [lCopy host];
  lowercaseString = [host lowercaseString];
  host2 = [v5 host];
  lowercaseString2 = [host2 lowercaseString];
  if (lowercaseString == lowercaseString2)
  {
    v19 = 1;
  }

  else
  {
    host3 = [v5 host];
    lowercaseString3 = [host3 lowercaseString];
    if (lowercaseString3)
    {
      host4 = [lCopy host];
      lowercaseString4 = [host4 lowercaseString];
      [v5 host];
      v17 = v24 = host;
      [v17 lowercaseString];
      v18 = v23 = lowercaseString;
      v19 = [lowercaseString4 isEqual:v18];

      lowercaseString = v23;
      host = v24;
    }

    else
    {
      v19 = 0;
    }
  }

  scheme4 = v27;
  v9 = v28;
  scheme5 = v26;
  if (scheme != scheme2)
  {
    goto LABEL_14;
  }

LABEL_15:

  return v19;
}

+ (BOOL)parseClinicalOnboardingURL:(id)l resultHandler:(id)handler errorHandler:(id)errorHandler
{
  lCopy = l;
  handlerCopy = handler;
  errorHandlerCopy = errorHandler;
  if ([self isClinicalOnboardingURL:lCopy])
  {
    v11 = [lCopy hk_valueForFirstInstanceOfParameterNamed:@"g"];
    v12 = [lCopy hk_valueForFirstInstanceOfParameterNamed:@"b"];
    v13 = [lCopy hk_valueForFirstInstanceOfParameterNamed:@"src"];
    if (v11 && v12)
    {
      v14 = [lCopy hk_valueForFirstInstanceOfParameterNamed:@"f"];
      v15 = handlerCopy[2](handlerCopy, v11, v12, v13, [v14 isEqualToString:@"clinical-sharing"]);
    }

    else
    {
      v17 = MEMORY[0x1E696ABC0];
      v14 = HKSensitiveLogItem(lCopy);
      v18 = [v17 hk_error:3 format:{@"Failed to parse onboarding URL: %@", v14}];
      v15 = errorHandlerCopy[2](errorHandlerCopy, v18);
    }
  }

  else
  {
    v16 = MEMORY[0x1E696ABC0];
    v11 = HKSensitiveLogItem(lCopy);
    v12 = [v16 hk_error:3 format:{@"Invalid onboarding URL: %@", v11}];
    v15 = errorHandlerCopy[2](errorHandlerCopy, v12);
  }

  return v15;
}

+ (BOOL)isClinicalLoginRedirectURL:(id)l
{
  v91 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v52 = [MEMORY[0x1E695DFD8] setWithObjects:{@"code", @"state", 0}];
  [MEMORY[0x1E695DFD8] setWithObject:@"error"];
  v50 = v49 = lCopy;
  v7 = [MEMORY[0x1E696AF20] componentsWithURL:lCopy resolvingAgainstBaseURL:1];
  v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v51 = v7;
  queryItems = [v7 queryItems];
  v10 = [queryItems countByEnumeratingWithState:&v84 objects:v90 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v85;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v85 != v12)
        {
          objc_enumerationMutation(queryItems);
        }

        name = [*(*(&v84 + 1) + 8 * i) name];
        [v8 addObject:name];
      }

      v11 = [queryItems countByEnumeratingWithState:&v84 objects:v90 count:16];
    }

    while (v11);
  }

  if (([v52 isSubsetOfSet:v8] & 1) == 0 && !objc_msgSend(v50, "isSubsetOfSet:", v8))
  {
    v47 = 0;
    goto LABEL_61;
  }

  path = [v51 path];
  v15 = [path length];

  if (!v15)
  {
    [v51 setPath:@"/"];
  }

  v56 = [v51 URL];
  v16 = objc_alloc_init(MEMORY[0x1E696AF20]);
  [v16 setHost:@"HealthProviderLogin"];
  [v16 setPath:@"/"];
  [v16 setScheme:@"x-argonaut-app"];
  v17 = [v16 URL];

  v89[0] = v17;
  v18 = objc_alloc_init(MEMORY[0x1E696AF20]);
  [v18 setHost:@"redirect.health.apple.com"];
  v19 = [@"/" stringByAppendingPathComponent:@"HealthProviderLogin"];
  [v18 setPath:v19];

  [v18 setScheme:@"https"];
  v20 = [v18 URL];

  v89[1] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v89 count:2];

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  obj = v21;
  v76 = [obj countByEnumeratingWithState:&v80 objects:v88 count:16];
  if (!v76)
  {
    v47 = 0;
    v22 = v56;
    goto LABEL_59;
  }

  v75 = *v81;
  v22 = v56;
  while (2)
  {
    for (j = 0; j != v76; ++j)
    {
      v79 = v5;
      port4 = i;
      if (*v81 != v75)
      {
        objc_enumerationMutation(obj);
      }

      v25 = *(*(&v80 + 1) + 8 * j);
      scheme = [v22 scheme];
      scheme2 = [v25 scheme];
      if (scheme != scheme2)
      {
        scheme3 = [v25 scheme];
        if (!scheme3)
        {
          i = port4;
          goto LABEL_33;
        }

        scheme4 = [v22 scheme];
        scheme5 = [v25 scheme];
        v74 = scheme4;
        v30 = scheme4;
        v21 = scheme5;
        if (![v30 isEqual:scheme5])
        {
          i = port4;
          goto LABEL_32;
        }
      }

      v77 = scheme3;
      port = [v22 port];
      port2 = [v25 port];
      v33 = port2;
      v78 = port;
      if (port != port2)
      {
        port3 = [v25 port];
        if (port3)
        {
          port4 = [v22 port];
          port5 = [v25 port];
          v79 = port5;
          if ([port4 isEqual:port5])
          {
            v69 = v33;
            v35 = v21;
            goto LABEL_26;
          }

          scheme3 = v77;
          i = port4;
          if (scheme == scheme2)
          {
LABEL_33:

            v5 = v79;
            continue;
          }
        }

        else
        {

          port3 = 0;
          scheme3 = v77;
          i = port4;
          if (scheme == scheme2)
          {
            goto LABEL_33;
          }
        }

LABEL_32:

        goto LABEL_33;
      }

      v69 = port2;
      v35 = v21;
LABEL_26:
      host = [v22 host];
      lowercaseString = [host lowercaseString];
      host2 = [v25 host];
      lowercaseString2 = [host2 lowercaseString];
      v73 = lowercaseString;
      if (lowercaseString == lowercaseString2)
      {
        v65 = host;
        v71 = v35;
        goto LABEL_35;
      }

      host3 = [v25 host];
      lowercaseString3 = [host3 lowercaseString];
      v21 = v35;
      if (lowercaseString3)
      {
        v65 = host;
        host4 = [v22 host];
        lowercaseString4 = [host4 lowercaseString];
        host5 = [v25 host];
        [host5 lowercaseString];
        v57 = v59 = lowercaseString4;
        v39 = v69;
        if (![lowercaseString4 isEqual:?])
        {
          v68 = 0;
          i = port4;
          v5 = v79;
          v22 = v56;
          host = v65;
LABEL_46:

          goto LABEL_47;
        }

        v71 = v21;
        v22 = v56;
LABEL_35:
        path2 = [v22 path];
        lowercaseString5 = [path2 lowercaseString];
        path3 = [v25 path];
        lowercaseString6 = [path3 lowercaseString];
        v61 = lowercaseString5;
        if (lowercaseString5 == lowercaseString6)
        {
          v68 = 1;
          i = port4;
          v5 = v79;
          v39 = v69;
        }

        else
        {
          path4 = [v25 path];
          lowercaseString7 = [path4 lowercaseString];
          if (lowercaseString7)
          {
            v54 = lowercaseString7;
            path5 = [v22 path];
            lowercaseString8 = [path5 lowercaseString];
            path6 = [v25 path];
            lowercaseString9 = [path6 lowercaseString];
            v68 = [lowercaseString8 isEqual:lowercaseString9];

            v22 = v56;
            lowercaseString7 = v54;
          }

          else
          {
            v68 = 0;
          }

          i = port4;
          v39 = v69;

          v5 = v79;
        }

        v21 = v71;
        host = v65;
        if (v73 == lowercaseString2)
        {
          goto LABEL_48;
        }

        goto LABEL_46;
      }

      v68 = 0;
      lowercaseString3 = 0;
      i = port4;
      v5 = v79;
      v39 = v69;
LABEL_47:

LABEL_48:
      if (v78 != v39)
      {
      }

      if (scheme == scheme2)
      {

        scheme3 = v77;
      }

      else
      {

        scheme3 = v77;
      }

      if (v68)
      {
        v47 = 1;
        goto LABEL_59;
      }
    }

    v76 = [obj countByEnumeratingWithState:&v80 objects:v88 count:16];
    if (v76)
    {
      continue;
    }

    break;
  }

  v47 = 0;
LABEL_59:

LABEL_61:
  return v47;
}

+ (BOOL)parseClinicalLoginRedirectURL:(id)l resultHandler:(id)handler errorHandler:(id)errorHandler
{
  lCopy = l;
  handlerCopy = handler;
  errorHandlerCopy = errorHandler;
  if ([self isClinicalLoginRedirectURL:lCopy])
  {
    v11 = [lCopy hk_valueForFirstInstanceOfParameterNamed:@"code"];
    v12 = [lCopy hk_valueForFirstInstanceOfParameterNamed:@"state"];
    if (v12)
    {
      v13 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v12];
      v14 = v13;
      if (v11)
      {
        if (v13)
        {
          v15 = handlerCopy[2](handlerCopy, v11, v13);
LABEL_9:
          v17 = v15;
LABEL_12:

          goto LABEL_13;
        }

        v14 = LABEL_8:;
        v15 = errorHandlerCopy[2](errorHandlerCopy, v14, 0);
        goto LABEL_9;
      }
    }

    else
    {
      if (v11)
      {
        goto LABEL_8;
      }

      v14 = 0;
    }

    v18 = [lCopy hk_valueForFirstInstanceOfParameterNamed:@"error"];
    v19 = [MEMORY[0x1E696ABC0] hk_OAuth2_errorFromErrorValue:v18];
    v17 = (errorHandlerCopy)[2](errorHandlerCopy, v19, v14);

    goto LABEL_12;
  }

  v16 = MEMORY[0x1E696ABC0];
  v11 = HKSensitiveLogItem(lCopy);
  v12 = [v16 hk_error:3 format:{@"Invalid redirect URL: %@", v11}];
  v17 = errorHandlerCopy[2](errorHandlerCopy, v12, 0);
LABEL_13:

  return v17;
}

+ (BOOL)isAtrialFibrillationEventURL:(id)l
{
  v3 = MEMORY[0x1E695DFF8];
  lCopy = l;
  _hk_urlForAtrialFibrillationEventType = [v3 _hk_urlForAtrialFibrillationEventType];
  v6 = [lCopy isEqual:_hk_urlForAtrialFibrillationEventType];

  return v6;
}

@end