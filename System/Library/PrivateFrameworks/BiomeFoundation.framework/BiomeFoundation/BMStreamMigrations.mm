@interface BMStreamMigrations
+ (Class)legacyClassForLibraryStream:(id)stream;
+ (id)libraryPathForStreamIdentifier:(id)identifier;
+ (id)pathToVersionFile;
+ (int64_t)handleFloatReturnValue:(id)value;
+ (int64_t)readCurrentDatabaseVersion;
+ (void)readCurrentDatabaseVersion;
+ (void)setDatabaseVersion:(int64_t)version;
- (void)_migrateStreamsToLibrary:(id)library streamType:(unint64_t)type;
- (void)_moveStreamsWithPathMapping:(id)mapping;
- (void)_removeStreamPaths:(id)paths;
- (void)migrate;
- (void)migrateFromVersion:(int64_t)version;
@end

@implementation BMStreamMigrations

+ (id)pathToVersionFile
{
  v2 = +[BMProcess current];
  isRunningInUserContext = [v2 isRunningInUserContext];

  v4 = [BMPaths biomeDirectoryForDomain:isRunningInUserContext ^ 1u];
  v5 = [v4 stringByAppendingPathComponent:@"databaseVersion.json"];

  return v5;
}

+ (int64_t)handleFloatReturnValue:(id)value
{
  valueCopy = value;
  [valueCopy doubleValue];
  if (v4 <= 0.0 || v4 >= 0.99)
  {
    integerValue = [valueCopy integerValue];
  }

  else
  {
    integerValue = 1;
  }

  return integerValue;
}

+ (int64_t)readCurrentDatabaseVersion
{
  v2 = +[BMStreamMigrations pathToVersionFile];
  v27 = 0;
  v3 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v2 options:0 error:&v27];
  v4 = v27;
  if (v4)
  {
    v5 = v4;
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v7 = [defaultManager fileExistsAtPath:v2];

    v8 = __biome_log_for_category(0);
    v9 = v8;
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AC15D000, v9, OS_LOG_TYPE_DEFAULT, "Unable to read existing database version file. Using 1 as the default version", buf, 2u);
      }

      v10 = 1;
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(BMStreamMigrations *)v5 readCurrentDatabaseVersion:v9];
      }

      v10 = 0;
    }
  }

  else
  {
    v25 = 0;
    v9 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v3 options:0 error:&v25];
    v5 = v25;
    if (v5)
    {
      v11 = __biome_log_for_category(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(BMStreamMigrations *)v5 readCurrentDatabaseVersion:v11];
      }

      v10 = 0;
    }

    else
    {
      v11 = [v9 objectForKeyedSubscript:@"Version"];
      v10 = [BMStreamMigrations handleFloatReturnValue:v11];
    }
  }

  return v10;
}

+ (void)setDatabaseVersion:(int64_t)version
{
  v24[1] = *MEMORY[0x1E69E9840];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v5 = +[BMStreamMigrations pathToVersionFile];
  v23 = @"Version";
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:version];
  v24[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];

  v22 = 0;
  v8 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v7 options:0 error:&v22];
  v9 = v22;
  stringByDeletingLastPathComponent = [v5 stringByDeletingLastPathComponent];
  v21 = v9;
  [defaultManager createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v21];
  v11 = v21;

  v20 = v11;
  [v8 writeToFile:v5 options:268435457 error:&v20];
  v12 = v20;

  if (v12)
  {
    v13 = __biome_log_for_category(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(BMStreamMigrations *)v12 setDatabaseVersion:v13, v14, v15, v16, v17, v18, v19];
    }
  }
}

- (void)migrate
{
  v3 = +[BMStreamMigrations readCurrentDatabaseVersion];

  [(BMStreamMigrations *)self migrateFromVersion:v3];
}

- (void)migrateFromVersion:(int64_t)version
{
  v17 = *MEMORY[0x1E69E9840];
  if (version != 9)
  {
    versionCopy = version;
    v5 = __biome_log_for_category(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInteger:versionCopy];
      v13 = 138412546;
      v14 = v6;
      v15 = 2112;
      v16 = &unk_1F20EBBF0;
      _os_log_impl(&dword_1AC15D000, v5, OS_LOG_TYPE_DEFAULT, "Initiating Biome migration from version %@ to version %@.", &v13, 0x16u);
    }

    if (versionCopy <= 8)
    {
      do
      {
        if (versionCopy <= 3)
        {
          if (versionCopy <= 1)
          {
            if (versionCopy)
            {
              if (versionCopy == 1)
              {
                v7 = +[BMPublicStreamUtilities libraryPublicStreamMigrationPaths];
                [(BMStreamMigrations *)self _migrateStreamsToLibrary:v7 streamType:1];

                v8 = +[BMStreamMigrations libraryRestrictedStreamMigrationPaths];
                [(BMStreamMigrations *)self _migrateStreamsToLibrary:v8 streamType:2];
              }

              goto LABEL_25;
            }

            [(BMStreamMigrations *)self _removeStreamPaths:&unk_1F20EBDD0];
            selfCopy5 = self;
            v12 = &unk_1F20EC298;
            goto LABEL_24;
          }

          if (versionCopy != 2)
          {
            selfCopy5 = self;
            v12 = &unk_1F20EC2E8;
LABEL_24:
            [(BMStreamMigrations *)selfCopy5 _moveStreamsWithPathMapping:v12];
            goto LABEL_25;
          }

          [(BMStreamMigrations *)self _moveStreamsWithPathMapping:&unk_1F20EC2C0];
          selfCopy7 = self;
          v10 = &unk_1F20EBDE8;
          goto LABEL_22;
        }

        if (versionCopy > 5)
        {
          if (versionCopy == 6)
          {
            selfCopy5 = self;
            v12 = &unk_1F20EC310;
            goto LABEL_24;
          }

          if (versionCopy == 7)
          {
            selfCopy5 = self;
            v12 = &unk_1F20EC338;
            goto LABEL_24;
          }
        }

        else
        {
          if (versionCopy == 4)
          {
            selfCopy7 = self;
            v10 = &unk_1F20EBE00;
            goto LABEL_22;
          }

          if ([MEMORY[0x1E69C5CF8] isInternalBuild])
          {
            selfCopy7 = self;
            v10 = &unk_1F20EBE18;
LABEL_22:
            [(BMStreamMigrations *)selfCopy7 _removeStreamPaths:v10];
          }
        }

LABEL_25:
        [BMStreamMigrations setDatabaseVersion:++versionCopy];
      }

      while (versionCopy != 9);
    }
  }
}

- (void)_moveStreamsWithPathMapping:(id)mapping
{
  v39 = *MEMORY[0x1E69E9840];
  mappingCopy = mapping;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = mappingCopy;
  v6 = [v5 countByEnumeratingWithState:&v28 objects:v38 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v29;
    v25 = *MEMORY[0x1E696A250];
    *&v7 = 138543874;
    v24 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        v12 = [v5 objectForKeyedSubscript:{v11, v24}];
        if ([defaultManager fileExistsAtPath:v12])
        {
          v13 = __biome_log_for_category(0);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = 138543618;
            v33 = v11;
            v34 = 2114;
            v35 = v12;
            _os_log_impl(&dword_1AC15D000, v13, OS_LOG_TYPE_INFO, "Skipping migration of %{public}@ to %{public}@ because destination already exists", buf, 0x16u);
          }

          v14 = 0;
        }

        else
        {
          v27 = 0;
          v15 = [defaultManager moveItemAtPath:v11 toPath:v12 error:&v27];
          v16 = v27;
          v14 = v16;
          if (v15)
          {
            goto LABEL_21;
          }

          domain = [v16 domain];
          if (![domain isEqualToString:v25])
          {

LABEL_15:
            v13 = __biome_log_for_category(0);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              *buf = v24;
              v33 = v11;
              v34 = 2114;
              v35 = v12;
              v36 = 2114;
              v37 = v14;
              _os_log_error_impl(&dword_1AC15D000, v13, OS_LOG_TYPE_ERROR, "Failed to migrate %{public}@ to %{public}@ with error %{public}@", buf, 0x20u);
            }

            goto LABEL_20;
          }

          if ([v14 code] == 260)
          {
          }

          else
          {
            code = [v14 code];

            if (code != 4)
            {
              goto LABEL_15;
            }
          }

          v13 = __biome_log_for_category(0);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = 138543618;
            v33 = v11;
            v34 = 2114;
            v35 = v12;
            _os_log_impl(&dword_1AC15D000, v13, OS_LOG_TYPE_INFO, "Skipping migration of %{public}@ to %{public}@ because source does not exist", buf, 0x16u);
          }
        }

LABEL_20:

LABEL_21:
        v26 = v14;
        v19 = [defaultManager removeItemAtPath:v11 error:&v26];
        v20 = v26;

        if (v19)
        {
          goto LABEL_29;
        }

        domain2 = [v20 domain];
        if ([domain2 isEqualToString:v25])
        {
          code2 = [v20 code];

          if (code2 == 4)
          {
            goto LABEL_29;
          }
        }

        else
        {
        }

        v23 = __biome_log_for_category(0);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v33 = v11;
          v34 = 2114;
          v35 = v20;
          _os_log_error_impl(&dword_1AC15D000, v23, OS_LOG_TYPE_ERROR, "Failed to remove %{public}@ with error %{public}@", buf, 0x16u);
        }

LABEL_29:
      }

      v8 = [v5 countByEnumeratingWithState:&v28 objects:v38 count:16];
    }

    while (v8);
  }
}

- (void)_removeStreamPaths:(id)paths
{
  v30 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = pathsCopy;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v22;
    v10 = *MEMORY[0x1E696A250];
    *&v7 = 138543618;
    v19 = v7;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v21 + 1) + 8 * v11);
        v20 = 0;
        v13 = [defaultManager removeItemAtPath:v12 error:{&v20, v19}];
        v14 = v20;
        v15 = v14;
        if ((v13 & 1) == 0)
        {
          domain = [v14 domain];
          if ([domain isEqualToString:v10])
          {
            code = [v15 code];

            if (code == 4)
            {
              goto LABEL_14;
            }
          }

          else
          {
          }

          v18 = __biome_log_for_category(0);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = v19;
            v26 = v12;
            v27 = 2114;
            v28 = v15;
            _os_log_error_impl(&dword_1AC15D000, v18, OS_LOG_TYPE_ERROR, "Failed to remove %{public}@ with error %{public}@", buf, 0x16u);
          }
        }

LABEL_14:

        ++v11;
      }

      while (v8 != v11);
      v8 = [v5 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v8);
  }
}

- (void)_migrateStreamsToLibrary:(id)library streamType:(unint64_t)type
{
  v49 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = libraryCopy;
  v7 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v43;
    v35 = *MEMORY[0x1E696A250];
    v11 = 0x1E796A000uLL;
    *&v8 = 138412290;
    v34 = v8;
    typeCopy = type;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v43 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v42 + 1) + 8 * i);
        v14 = [*(v11 + 2312) pathForStreamIdentifier:v13 streamType:{type, v34}];
        if ([defaultManager fileExistsAtPath:v14])
        {
          v15 = __biome_log_for_category(0);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            *buf = v34;
            v47 = v13;
            _os_log_debug_impl(&dword_1AC15D000, v15, OS_LOG_TYPE_DEBUG, "Migrating stream %@ to BMLibrary.", buf, 0xCu);
          }

          v16 = v11;
          v17 = *(v11 + 2312);
          v18 = [obj valueForKey:v13];
          v19 = [v17 pathForStreamIdentifier:v18 streamType:2];

          v20 = __biome_log_for_category(0);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            *buf = v34;
            v47 = v19;
            _os_log_debug_impl(&dword_1AC15D000, v20, OS_LOG_TYPE_DEBUG, "New path: %@", buf, 0xCu);
          }

          v41 = 1;
          stringByDeletingLastPathComponent = [v19 stringByDeletingLastPathComponent];
          v22 = [defaultManager fileExistsAtPath:stringByDeletingLastPathComponent isDirectory:&v41];

          if (v22)
          {
            v23 = 0;
          }

          else
          {
            stringByDeletingLastPathComponent2 = [v19 stringByDeletingLastPathComponent];
            v40 = 0;
            [defaultManager createDirectoryAtPath:stringByDeletingLastPathComponent2 withIntermediateDirectories:1 attributes:0 error:&v40];
            v23 = v40;

            if (v23)
            {
              v25 = __biome_log_for_category(0);
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                *buf = v34;
                v47 = v23;
                _os_log_error_impl(&dword_1AC15D000, v25, OS_LOG_TYPE_ERROR, "Error creating migrated path: %@", buf, 0xCu);
              }
            }
          }

          v39 = v23;
          v26 = [defaultManager moveItemAtPath:v14 toPath:v19 error:&v39];
          v27 = v39;

          if (v26)
          {
            v28 = v27;
LABEL_30:
            type = typeCopy;

            v11 = v16;
            goto LABEL_31;
          }

          domain = [v27 domain];
          if ([domain isEqual:v35])
          {
            code = [v27 code];

            if (code == 516)
            {
              v31 = __biome_log_for_category(0);
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v34;
                v47 = v19;
                _os_log_impl(&dword_1AC15D000, v31, OS_LOG_TYPE_DEFAULT, "Skip migrating stream since the new path already exists: %@", buf, 0xCu);
              }

LABEL_26:

              v38 = v27;
              v32 = [defaultManager removeItemAtPath:v14 error:&v38];
              v28 = v38;

              if ((v32 & 1) == 0)
              {
                v33 = __biome_log_for_category(0);
                if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                {
                  *buf = v34;
                  v47 = v28;
                  _os_log_error_impl(&dword_1AC15D000, v33, OS_LOG_TYPE_ERROR, "Error removing old stream, %@", buf, 0xCu);
                }
              }

              goto LABEL_30;
            }
          }

          else
          {
          }

          v31 = __biome_log_for_category(0);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            *buf = v34;
            v47 = v27;
            _os_log_error_impl(&dword_1AC15D000, v31, OS_LOG_TYPE_ERROR, "Error moving stream to library location, %@", buf, 0xCu);
          }

          goto LABEL_26;
        }

LABEL_31:
      }

      v9 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
    }

    while (v9);
  }
}

+ (id)libraryPathForStreamIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[BMPublicStreamUtilities libraryPublicStreamMigrationPaths];
  v5 = [v4 objectForKey:identifierCopy];

  if (!v5)
  {
    v6 = +[BMStreamMigrations libraryRestrictedStreamMigrationPaths];
    v5 = [v6 objectForKey:identifierCopy];
  }

  return v5;
}

+ (Class)legacyClassForLibraryStream:(id)stream
{
  v3 = [self legacyClassNameForLibraryStream:stream];
  v4 = v3;
  if (v3)
  {
    v5 = NSClassFromString(v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)readCurrentDatabaseVersion
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = self;
  OUTLINED_FUNCTION_0(&dword_1AC15D000, a2, a3, "Error deserializing migration version file, %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)setDatabaseVersion:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0(&dword_1AC15D000, a2, a3, "Error writing migration version file, %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end