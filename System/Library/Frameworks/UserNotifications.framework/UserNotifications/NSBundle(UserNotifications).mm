@interface NSBundle(UserNotifications)
+ (id)userNotificationsBundleWithIdentifier:()UserNotifications;
@end

@implementation NSBundle(UserNotifications)

+ (id)userNotificationsBundleWithIdentifier:()UserNotifications
{
  v37[3] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 8uLL, 1);
    v7 = 0x1E695D000uLL;
    if (UNIsInternalInstall())
    {
      v8 = MEMORY[0x1E696AEC0];
      v9 = BSSystemRootDirectory();
      v37[0] = v9;
      v37[1] = @"AppleInternal";
      v37[2] = @"Library";
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:3];
      v11 = [v8 pathWithComponents:v10];
      v12 = [v6 arrayByAddingObject:v11];

      v6 = v12;
    }

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = v6;
    v14 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v32;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v32 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v31 + 1) + 8 * i);
          v19 = MEMORY[0x1E695DFF8];
          v20 = BSSystemRootDirectory();
          v35[0] = v20;
          v35[1] = v18;
          v35[2] = @"UserNotifications";
          v35[3] = @"Bundles";
          v21 = [v5 stringByAppendingPathExtension:@"bundle"];
          v35[4] = v21;
          v22 = v7;
          v23 = [*(v7 + 3784) arrayWithObjects:v35 count:5];
          v24 = [v19 fileURLWithPathComponents:v23];

          v30 = 0;
          path = [v24 path];
          LODWORD(v21) = [defaultManager fileExistsAtPath:path isDirectory:&v30];
          v26 = v30;

          if (v21 && (v26 & 1) != 0)
          {
            v27 = [MEMORY[0x1E696AAE8] bundleWithURL:v24];

            goto LABEL_15;
          }

          v7 = v22;
        }

        v15 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v27 = 0;
LABEL_15:
  }

  else
  {
    [(NSBundle(UserNotifications) *)a2 userNotificationsBundleWithIdentifier:self];
    v27 = 0;
  }

  return v27;
}

+ (void)userNotificationsBundleWithIdentifier:()UserNotifications .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NSBundle+UserNotifications.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"identifier != nil"}];
}

@end