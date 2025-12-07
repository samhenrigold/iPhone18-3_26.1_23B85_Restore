@interface STAskForTimeApplicationResource
- (STAskForTimeApplicationResource)initWithBundleIdentifier:(id)identifier changeHandler:(id)handler;
- (id)_fetchParentBundleIdentifierForBundleIdentifier:(id)identifier;
- (id)_fetchParentBundleIdentifiersForBundleIdentifier:(id)identifier;
@end

@implementation STAskForTimeApplicationResource

- (STAskForTimeApplicationResource)initWithBundleIdentifier:(id)identifier changeHandler:(id)handler
{
  v23 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v7 = MEMORY[0x1E69635F8];
  handlerCopy = handler;
  v18 = 0;
  v9 = [[v7 alloc] initWithBundleIdentifier:identifierCopy allowPlaceholder:1 error:&v18];
  v10 = v18;
  if (v9)
  {
    localizedName = [v9 localizedName];
  }

  else
  {
    v12 = +[STLog ask];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v20 = identifierCopy;
      v21 = 2114;
      v22 = v10;
      _os_log_impl(&dword_1B831F000, v12, OS_LOG_TYPE_INFO, "Failed to get application record for %{public}@ %{public}@", buf, 0x16u);
    }

    v13 = [identifierCopy componentsSeparatedByString:@"."];
    localizedName = [v13 lastObject];
  }

  v14 = [(STAskForTimeApplicationResource *)self _fetchParentBundleIdentifierForBundleIdentifier:identifierCopy];

  v17.receiver = self;
  v17.super_class = STAskForTimeApplicationResource;
  v15 = [(STAskForTimeResource *)&v17 initWithResourceIdentifier:v14 resourceDisplayName:localizedName usageType:0 changeHandler:handlerCopy];

  return v15;
}

- (id)_fetchParentBundleIdentifierForBundleIdentifier:(id)identifier
{
  v24 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = [(STAskForTimeApplicationResource *)self _fetchParentBundleIdentifiersForBundleIdentifier:identifierCopy];
  v6 = [v5 count];
  v7 = identifierCopy;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v23 count:16];
  v16 = v7;
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      v13 = v7;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v7 = *(*(&v17 + 1) + 8 * v12);

        if (v6 >= 2)
        {
          v14 = +[STLog ask];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v22 = v7;
            _os_log_impl(&dword_1B831F000, v14, OS_LOG_TYPE_DEFAULT, "Multiple Bundle Identifiers Found: %{public}@", buf, 0xCu);
          }
        }

        ++v12;
        v13 = v7;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v10);
  }

  return v7;
}

- (id)_fetchParentBundleIdentifiersForBundleIdentifier:(id)identifier
{
  v30 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v4 = objc_opt_new();
  v24 = 0;
  v5 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:identifierCopy allowPlaceholder:1 error:&v24];
  v6 = v24;
  v7 = v6;
  if (v5)
  {
    v19 = v6;
    appClipMetadata = [v5 appClipMetadata];
    parentApplicationIdentifiers = [appClipMetadata parentApplicationIdentifiers];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = parentApplicationIdentifiers;
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v29 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        v14 = 0;
        do
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v20 + 1) + 8 * v14);
          if (!CPCopyBundleIdentifierAndTeamFromApplicationIdentifier())
          {
            v16 = +[STLog ask];
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v26 = identifierCopy;
              v27 = 2114;
              v28 = v15;
              _os_log_error_impl(&dword_1B831F000, v16, OS_LOG_TYPE_ERROR, "Failed looking up parent bundle identifier for app: %{public}@ with parent application identifier %{public}@", buf, 0x16u);
            }
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v20 objects:v29 count:16];
      }

      while (v12);
    }

    v7 = v19;
  }

  else
  {
    v10 = +[STLog ask];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v26 = identifierCopy;
      v27 = 2114;
      v28 = v7;
      _os_log_impl(&dword_1B831F000, v10, OS_LOG_TYPE_DEFAULT, "No application record for bundle identifier: %{public}@ with error: %{public}@", buf, 0x16u);
    }
  }

  v17 = [v4 copy];

  return v17;
}

@end