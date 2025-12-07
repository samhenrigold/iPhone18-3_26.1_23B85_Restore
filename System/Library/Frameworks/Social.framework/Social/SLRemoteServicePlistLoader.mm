@interface SLRemoteServicePlistLoader
+ (id)allServices;
+ (id)loadRemoteServicesFromPlistResourceName:(id)name inBundle:(id)bundle;
@end

@implementation SLRemoteServicePlistLoader

+ (id)allServices
{
  v2 = objc_opt_class();
  v3 = SLSocialFrameworkBundle(v2);
  v4 = [v2 loadRemoteServicesFromPlistResourceName:@"SystemRemoteServices-iOS" inBundle:v3];

  return v4;
}

+ (id)loadRemoteServicesFromPlistResourceName:(id)name inBundle:(id)bundle
{
  v34 = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  v7 = [bundleCopy pathForResource:name ofType:@"plist"];
  v13 = [MEMORY[0x1E695DEC8] arrayWithContentsOfFile:v7];
  if (v13)
  {
    v28 = objc_opt_new();
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v30;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v30 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v29 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v25 = [[SLRemoteService alloc] initWithServiceBundle:bundleCopy socialInfoDictionary:v19];
            if (v25)
            {
              [v28 addObject:v25];
            }
          }

          else
          {
            _SLLog(v4, 3, @"Incorrect type for service info dict, service entries must be dictionaries", v20, v21, v22, v23, v24, v27);
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v16);
    }
  }

  else
  {
    _SLLog(v4, 3, @"Unable to load remote service info dicts from %@", v8, v9, v10, v11, v12, v7);
    v28 = 0;
  }

  return v28;
}

@end