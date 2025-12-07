@interface DataClassMigrator
+ (id)dataClassMigratorForBundleAtPath:(id)path;
- (BOOL)didMigrateBackupFromDifferentDevice;
- (BOOL)didRestoreFromBackup;
- (BOOL)didRestoreFromCloudBackup;
- (BOOL)didUpgrade;
- (BOOL)shouldPreserveSettingsAfterRestore;
- (BOOL)wasPasscodeSetInBackup;
@end

@implementation DataClassMigrator

- (BOOL)didUpgrade
{
  v2 = [(NSDictionary *)self->_context objectForKey:@"SyntheticDidUpgrade"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)didRestoreFromBackup
{
  v2 = [(NSDictionary *)self->_context objectForKey:@"DidRestoreFromBackup"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)didMigrateBackupFromDifferentDevice
{
  v2 = [(NSDictionary *)self->_context objectForKey:@"DidMigrateBackupFromDifferentDevice"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)didRestoreFromCloudBackup
{
  v2 = [(NSDictionary *)self->_context objectForKey:@"DidRestoreFromCloudBackup"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)shouldPreserveSettingsAfterRestore
{
  v2 = [(NSDictionary *)self->_context objectForKey:@"ShouldPreserveSettingsAfterRestore"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)wasPasscodeSetInBackup
{
  v2 = [(NSDictionary *)self->_context objectForKey:@"WasPasscodeSetInBackup"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

+ (id)dataClassMigratorForBundleAtPath:(id)path
{
  pathCopy = path;
  _DMLogFunc(v3, 7, @"Will create migrator bundle at %@", v6, v7, v8, v9, v10, pathCopy);
  v16 = [MEMORY[0x277CCA8D8] bundleWithPath:pathCopy];
  if (!v16)
  {
    _DMLogFunc(v3, 3, @"%@ Failed to create migration plugin bundle at %@", v11, v12, v13, v14, v15, self);
LABEL_8:
    v48 = 0;
    bundleIdentifier = 0;
    goto LABEL_9;
  }

  _DMLogFunc(v3, 7, @"Will load migrator bundle", v11, v12, v13, v14, v15, v50);
  v54 = 0;
  v17 = [v16 loadAndReturnError:&v54];
  v18 = v54;
  v24 = v18;
  if ((v17 & 1) == 0)
  {
    _DMLogFunc(v3, 3, @"Cannot load migrator bundle at %@ with error %@", v19, v20, v21, v22, v23, pathCopy);

    goto LABEL_8;
  }

  _DMLogFunc(v3, 7, @"Will get migrator bundle identifier", v25, v26, v27, v28, v29, v51);
  bundleIdentifier = [v16 bundleIdentifier];
  _DMLogFunc(v3, 7, @"Will check migrator principal class", v31, v32, v33, v34, v35, v52);
  principalClass = [v16 principalClass];
  if (([(objc_class *)principalClass isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    _DMLogFunc(v3, 7, @"Will instantiate migrator principal class", v37, v38, v39, v40, v41, v53);
    v42 = objc_alloc_init(principalClass);
    v48 = v42;
    if (v42)
    {
      [v42 setDmBundleIdentifier:bundleIdentifier];
    }

    else
    {
      _DMLogFunc(v3, 3, @"Cannot instantiate migrator at %@", v43, v44, v45, v46, v47, pathCopy);
    }
  }

  else
  {
    _DMLogFunc(v3, 3, @"Wrong principal class (%@) for migration plugin bundle at %@", v37, v38, v39, v40, v41, principalClass);
    v48 = 0;
  }

LABEL_9:

  return v48;
}

@end