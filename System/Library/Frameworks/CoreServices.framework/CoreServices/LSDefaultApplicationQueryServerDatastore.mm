@interface LSDefaultApplicationQueryServerDatastore
- (__n128)setEntry:forApplication:category:;
- (id)entryForApplication:(id)application category:(unint64_t)category;
- (uint64_t)removeEntriesForBundleIdentifier:;
- (void)removeEntriesForBundleIdentifier:;
- (void)removeEntriesForBundleIdentifier:(id)identifier;
- (void)setEntry:(id)entry forApplication:(id)application category:(unint64_t)category;
- (void)setEntry:forApplication:category:;
@end

@implementation LSDefaultApplicationQueryServerDatastore

- (id)entryForApplication:(id)application category:(unint64_t)category
{
  applicationCopy = application;
  {
    [LSDefaultApplicationQueryServerDatastore entryForApplication:category:];
  }

  v6 = v15 = 0;
  v7 = v15;
  if (v6)
  {
  }

  else
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  bundleIdentifier = [applicationCopy bundleIdentifier];
  v9 = v14;
  v10 = [v14 objectForKey:bundleIdentifier];
  v11 = LSDefaultAppCategoryCopyName(category);
  v12 = [v10 objectForKey:v11];

  return v12;
}

- (void)setEntry:(id)entry forApplication:(id)application category:(unint64_t)category
{
  v10 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  categoryCopy = category;
  applicationCopy = application;
  {
    [LSDefaultApplicationQueryServerDatastore entryForApplication:category:];
  }

  operator new();
}

- (void)removeEntriesForBundleIdentifier:(id)identifier
{
  v12 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v9 = identifierCopy;
  v4 = _LSDefaultLog(identifierCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = objc_opt_class();
    *&buf[12] = 2112;
    *&buf[14] = identifierCopy;
    v5 = *&buf[4];
    _os_log_impl(&dword_18162D000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: clearing entries for %@", buf, 0x16u);
  }

  {
    [LSDefaultApplicationQueryServerDatastore removeEntriesForBundleIdentifier:];
  }

  *buf = &unk_1EEF61D28;
  *&buf[8] = &v9;
  v6 = v11 = buf;
  if (v6)
  {
    v8 = _LSDefaultLog(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [LSDefaultApplicationQueryServerDatastore removeEntriesForBundleIdentifier:];
    }
  }
}

- (__n128)setEntry:forApplication:category:
{
  *a2 = &unk_1EEF61CE0;
  result = *(self + 8);
  *(a2 + 24) = *(self + 24);
  *(a2 + 8) = result;
  return result;
}

- (void)setEntry:forApplication:category:
{
  v12 = *a2;
  v13 = *a2;
  *a2 = 0;
  bundleIdentifier = [**(self + 8) bundleIdentifier];
  v6 = **(self + 16);
  v7 = **(self + 24);
  v8 = bundleIdentifier;
  v9 = v7;
  v10 = [*a3 objectForKey:v8];
  if (!v10)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [*a3 setObject:? forKey:?];
  }

  v11 = LSDefaultAppCategoryCopyName(v6);
  [v10 setObject:v9 forKey:v11];
}

- (uint64_t)removeEntriesForBundleIdentifier:
{
  v2 = *(result + 8);
  *a2 = &unk_1EEF61D28;
  a2[1] = v2;
  return result;
}

- (void)removeEntriesForBundleIdentifier:
{
  v6 = *a2;
  v5 = v6;
  *a2 = 0;
  [*a3 removeObjectForKey:**(self + 8)];
}

- (void)setEntry:(uint64_t)a1 forApplication:(NSObject *)a2 category:.cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_18162D000, a2, OS_LOG_TYPE_ERROR, "Couldn't save default application query state: %@", &v2, 0xCu);
}

@end