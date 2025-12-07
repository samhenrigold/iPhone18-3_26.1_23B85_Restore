@interface LNExtensionHostConfigurator
+ (id)extensionIdentityWithExtensionPointIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier error:(id *)error;
+ (id)extensionProcessWithExtensionRecord:(id)record extensionType:(int64_t *)type error:(id *)error;
@end

@implementation LNExtensionHostConfigurator

+ (id)extensionIdentityWithExtensionPointIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier error:(id *)error
{
  v25[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  v9 = objc_alloc(MEMORY[0x1E6966CE0]);
  bundleIdentifierCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"bundleIdentifier = %@", bundleIdentifierCopy];
  v11 = [v9 initWithExtensionPointIdentifier:identifierCopy predicate:bundleIdentifierCopy];

  v12 = [MEMORY[0x1E6966CF8] executeQuery:v11];
  if ([v12 count])
  {
    if ([v12 count] >= 2)
    {
      v13 = getLNLogCategoryConnection();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        firstObject = [v12 firstObject];
        v15 = [firstObject url];
        *buf = 138412546;
        v21 = bundleIdentifierCopy;
        v22 = 2112;
        v23 = v15;
      }
    }

    error = [v12 firstObject];
  }

  else if (error)
  {
    v16 = MEMORY[0x1E696ABC0];
    v17 = v24 = *MEMORY[0x1E696A578];
    v25[0] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    *error = [v16 errorWithDomain:@"LNConnectionErrorDomain" code:1100 userInfo:v18];

    error = 0;
  }

  return error;
}

+ (id)extensionProcessWithExtensionRecord:(id)record extensionType:(int64_t *)type error:(id *)error
{
  v23 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  if (!recordCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNExtensionHostConfigurator.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"extensionRecord"}];
  }

  extensionPointRecord = [recordCopy extensionPointRecord];
  identifier = [extensionPointRecord identifier];

  if ([identifier isEqualToString:@"com.apple.appintents-extension"])
  {
    *type = 0;
  }

  if ([identifier isEqualToString:@"com.apple.widgetkit-extension"])
  {
    v12 = 0;
    *type = 1;
  }

  else if (type)
  {
    bundleIdentifier = [recordCopy bundleIdentifier];
    v14 = [self extensionIdentityWithExtensionPointIdentifier:identifier bundleIdentifier:bundleIdentifier error:error];

    if (v14)
    {
      v15 = [objc_alloc(MEMORY[0x1E6966CC8]) initWithExtensionIdentity:v14];
      v12 = [MEMORY[0x1E6966CC0] extensionProcessWithConfiguration:v15 error:error];
    }

    else
    {
      v17 = getLNLogCategoryConnection();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = *error;
        *buf = 138543362;
        v22 = v18;
        _os_log_impl(&dword_19763D000, v17, OS_LOG_TYPE_ERROR, "Unable to create extension identity: %{public}@", buf, 0xCu);
      }

      v12 = 0;
    }
  }

  else
  {
    v16 = getLNLogCategoryConnection();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v22 = identifier;
      _os_log_impl(&dword_19763D000, v16, OS_LOG_TYPE_ERROR, "Unsupported extension point identifier %{public}@", buf, 0xCu);
    }

    v12 = 0;
  }

  return v12;
}

@end