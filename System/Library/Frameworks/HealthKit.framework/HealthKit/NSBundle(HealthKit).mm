@interface NSBundle(HealthKit)
+ (id)hk_findContainedBundleWithIdentifier:()HealthKit directoryURL:;
- (id)hk_extensionPointIdentifier;
- (id)hk_findContainedBundleWithIdentifier:()HealthKit;
@end

@implementation NSBundle(HealthKit)

- (id)hk_extensionPointIdentifier
{
  v1 = [self objectForInfoDictionaryKey:@"NSExtension"];
  v2 = [v1 objectForKey:@"NSExtensionPointIdentifier"];

  return v2;
}

- (id)hk_findContainedBundleWithIdentifier:()HealthKit
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [self URLsForResourcesWithExtension:@"bundle" subdirectory:0];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v15 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = [MEMORY[0x1E696AAE8] bundleWithURL:{*(*(&v14 + 1) + 8 * v9), v14}];
      bundleIdentifier = [v10 bundleIdentifier];
      v12 = [bundleIdentifier isEqualToString:v4];

      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v10 = 0;
  }

  return v10;
}

+ (id)hk_findContainedBundleWithIdentifier:()HealthKit directoryURL:
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E696AC08]);
  [v7 enumeratorAtURL:v6 includingPropertiesForKeys:0 options:7 errorHandler:0];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = v25 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v20 = v7;
    v21 = v6;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        pathExtension = [v13 pathExtension];
        v15 = [pathExtension isEqualToString:@"bundle"];

        if (v15)
        {
          v16 = [MEMORY[0x1E696AAE8] bundleWithURL:v13];
          bundleIdentifier = [v16 bundleIdentifier];
          v18 = [bundleIdentifier isEqualToString:v5];

          if (v18)
          {
            goto LABEL_12;
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
    v16 = 0;
LABEL_12:
    v7 = v20;
    v6 = v21;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end