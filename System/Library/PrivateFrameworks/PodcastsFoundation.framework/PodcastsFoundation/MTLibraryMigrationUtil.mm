@interface MTLibraryMigrationUtil
+ (BOOL)createPersistentStoreForModel:(id)model attemptMigration:(BOOL)migration;
+ (BOOL)isMomCompatible:(id)compatible;
+ (BOOL)isNewInstall;
+ (BOOL)needsCoreDataMigration;
+ (BOOL)needsDataMigration;
+ (BOOL)needsImageStoreMigration;
+ (id)_fallbackCoreDataChecksumFromLibraryFile;
+ (id)libraryImageStoreType;
+ (id)storeOptionsWithUpgrade:(BOOL)upgrade;
+ (void)setLibraryImageStoreType:(id)type;
@end

@implementation MTLibraryMigrationUtil

+ (BOOL)isNewInstall
{
  v2 = +[MTDB libraryPath];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [v2 path];
  v5 = [defaultManager fileExistsAtPath:path];

  return v5 ^ 1;
}

+ (BOOL)needsCoreDataMigration
{
  v3 = +[MTDB managedObjectModel];
  versionChecksum = [v3 versionChecksum];
  _fallbackCoreDataChecksumFromLibraryFile = +[MTDB coreDataChecksum];
  if (!_fallbackCoreDataChecksumFromLibraryFile)
  {
    _fallbackCoreDataChecksumFromLibraryFile = [self _fallbackCoreDataChecksumFromLibraryFile];
  }

  v6 = [versionChecksum isEqualToString:_fallbackCoreDataChecksumFromLibraryFile];

  return v6 ^ 1;
}

+ (BOOL)needsDataMigration
{
  v2 = +[MTDB libraryDataVersion];
  if (v2)
  {
    LOBYTE(v2) = +[MTDB libraryDataVersion]< 70;
  }

  return v2;
}

+ (BOOL)needsImageStoreMigration
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = +[MTImageStoreConstants deprecatedImageStoreURL];
  path = [v2 path];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [defaultManager fileExistsAtPath:path];

  v6 = +[MTLibraryMigrationUtil libraryImageStoreType];
  v7 = +[MTImageStoreConstants fileType];
  v8 = [v6 isEqual:v7];
  v9 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109634;
    v11[1] = v5;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_1D8CEC000, v9, OS_LOG_TYPE_DEFAULT, "Needs image store migration: oldDirectoryExists:%d currentType: %@ targetType: %@", v11, 0x1Cu);
  }

  return v5 & 1 | ((v8 & 1) == 0);
}

+ (id)libraryImageStoreType
{
  _applePodcastsFoundationSharedUserDefaults = [MEMORY[0x1E695E000] _applePodcastsFoundationSharedUserDefaults];
  v3 = [_applePodcastsFoundationSharedUserDefaults stringForKey:@"MTImageCacheFormatIdentifier"];

  if (v3)
  {
    v4 = [MEMORY[0x1E6982C40] typeWithIdentifier:v3];
  }

  else
  {
    _applePodcastsFoundationSharedUserDefaults2 = [MEMORY[0x1E695E000] _applePodcastsFoundationSharedUserDefaults];
    [_applePodcastsFoundationSharedUserDefaults2 BOOLForKey:@"MTHeicImageMigrationHasOccurred"];

    v4 = *MEMORY[0x1E6982E58];
  }

  v6 = v4;

  return v6;
}

+ (id)_fallbackCoreDataChecksumFromLibraryFile
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = +[MTDB libraryPath];
  v3 = *MEMORY[0x1E695D4A8];
  v9 = 0;
  v4 = [MEMORY[0x1E695D6C0] metadataForPersistentStoreOfType:v3 URL:v2 options:0 error:&v9];
  v5 = v9;
  if (v5)
  {
    v6 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v5;
      _os_log_impl(&dword_1D8CEC000, v6, OS_LOG_TYPE_ERROR, "Could not manually load checksum for persistent store due to error: %@.", buf, 0xCu);
    }

    v7 = 0;
  }

  else
  {
    v7 = [v4 objectForKeyedSubscript:*MEMORY[0x1E695D410]];
    v6 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v7;
      _os_log_impl(&dword_1D8CEC000, v6, OS_LOG_TYPE_DEFAULT, "Retrieved checksum from persistent store: %@", buf, 0xCu);
    }
  }

  return v7;
}

+ (void)setLibraryImageStoreType:(id)type
{
  v3 = MEMORY[0x1E695E000];
  typeCopy = type;
  _applePodcastsFoundationSharedUserDefaults = [v3 _applePodcastsFoundationSharedUserDefaults];
  identifier = [typeCopy identifier];

  [_applePodcastsFoundationSharedUserDefaults setObject:identifier forKey:@"MTImageCacheFormatIdentifier"];
  _applePodcastsFoundationSharedUserDefaults2 = [MEMORY[0x1E695E000] _applePodcastsFoundationSharedUserDefaults];
  [_applePodcastsFoundationSharedUserDefaults2 setBool:0 forKey:@"MTHeicImageMigrationHasOccurred"];
}

+ (BOOL)isMomCompatible:(id)compatible
{
  compatibleCopy = compatible;
  if ([self isNewInstall])
  {
    v5 = 1;
  }

  else
  {
    v5 = [self createPersistentStoreForModel:compatibleCopy attemptMigration:0];
  }

  return v5;
}

+ (id)storeOptionsWithUpgrade:(BOOL)upgrade
{
  upgradeCopy = upgrade;
  v4 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"WAL", @"journal_mode", 0}];
  v5 = objc_alloc(MEMORY[0x1E695DF20]);
  v6 = *MEMORY[0x1E695D4A0];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:upgradeCopy];
  v8 = *MEMORY[0x1E695D380];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:upgradeCopy];
  v10 = [v5 initWithObjectsAndKeys:{v4, v6, v7, v8, v9, *MEMORY[0x1E695D318], *MEMORY[0x1E696A3A8], *MEMORY[0x1E695D3F8], MEMORY[0x1E695E118], *MEMORY[0x1E695D3C0], MEMORY[0x1E695E118], *MEMORY[0x1E695D430], MEMORY[0x1E695E118], *MEMORY[0x1E695D448], 0}];

  return v10;
}

+ (BOOL)createPersistentStoreForModel:(id)model attemptMigration:(BOOL)migration
{
  migrationCopy = migration;
  v29 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  v7 = +[MTDB libraryPath];
  v8 = [self storeOptionsWithUpgrade:migrationCopy];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [v7 path];
  v11 = [defaultManager fileExistsAtPath:path];

  v12 = [objc_alloc(MEMORY[0x1E695D6C0]) initWithManagedObjectModel:modelCopy];
  if (migrationCopy)
  {
    v13 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = +[MTDB coreDataChecksum];
      versionChecksum = [modelCopy versionChecksum];
      *buf = 138412546;
      v26 = v14;
      v27 = 2112;
      v28 = versionChecksum;
      _os_log_impl(&dword_1D8CEC000, v13, OS_LOG_TYPE_DEFAULT, "[Migration] (CoreData) Migrating. Current CoreData version is %@. New version will be %@", buf, 0x16u);
    }
  }

  v16 = *MEMORY[0x1E695D4A8];
  v17 = +[MTDB libraryPath];
  v24 = 0;
  v18 = [v12 addPersistentStoreWithType:v16 configuration:0 URL:v17 options:v8 error:&v24];
  v19 = v24;

  if (v18)
  {
    if ((v11 & 1) == 0)
    {
      +[MTDBExtensionAccess postDatabaseCreatedNotification];
    }

    v20 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D8CEC000, v20, OS_LOG_TYPE_DEFAULT, "[Migration] (CoreData) added persistent store.", buf, 2u);
    }
  }

  else
  {
    v20 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = +[MTDB libraryPath];
      localizedDescription = [v19 localizedDescription];
      *buf = 138412546;
      v26 = v21;
      v27 = 2112;
      v28 = localizedDescription;
      _os_log_impl(&dword_1D8CEC000, v20, OS_LOG_TYPE_ERROR, "[Migration] (CoreData) Could not create persistend store for library (%@) %@", buf, 0x16u);
    }
  }

  return v18 != 0;
}

@end