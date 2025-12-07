@interface STBlueprintBackedDowntimeOverrideModifier
- (BOOL)_saveWithError:(id *)error;
- (BOOL)applyDowntimeOverride:(id)override error:(id *)error;
- (BOOL)removeDowntimeOverrideWithError:(id *)error;
- (STBlueprintBackedDowntimeOverrideModifier)initWithDowntimeBlueprint:(id)blueprint;
- (STDowntimeOverride)activeOverride;
- (void)_deleteOrphanedOrTombstonedDowntimeOverridesInContext:(id)context;
- (void)_tombstoneDowntimeOverride;
@end

@implementation STBlueprintBackedDowntimeOverrideModifier

- (STBlueprintBackedDowntimeOverrideModifier)initWithDowntimeBlueprint:(id)blueprint
{
  blueprintCopy = blueprint;
  v8.receiver = self;
  v8.super_class = STBlueprintBackedDowntimeOverrideModifier;
  v5 = [(STBlueprintBackedDowntimeOverrideModifier *)&v8 init];
  downtimeBlueprint = v5->_downtimeBlueprint;
  v5->_downtimeBlueprint = blueprintCopy;

  return v5;
}

- (STDowntimeOverride)activeOverride
{
  downtimeBlueprint = [(STBlueprintBackedDowntimeOverrideModifier *)self downtimeBlueprint];
  activeOverride = [downtimeBlueprint activeOverride];

  return activeOverride;
}

- (BOOL)applyDowntimeOverride:(id)override error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  overrideCopy = override;
  downtimeBlueprint = [(STBlueprintBackedDowntimeOverrideModifier *)self downtimeBlueprint];
  managedObjectContext = [downtimeBlueprint managedObjectContext];
  override = [downtimeBlueprint override];
  v10 = [STDowntimeOverrideTransformer coreOverrideFromDowntimeOverride:overrideCopy existingDowntimeOverride:override inContext:managedObjectContext];

  [downtimeBlueprint setOverride:v10];
  [downtimeBlueprint setIsDirty:1];
  [(STBlueprintBackedDowntimeOverrideModifier *)self _deleteOrphanedOrTombstonedDowntimeOverridesInContext:managedObjectContext];
  v22 = 0;
  v11 = [(STBlueprintBackedDowntimeOverrideModifier *)self _saveWithError:&v22];
  v12 = v22;
  if (v11)
  {
    v13 = +[STLog blueprint];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = overrideCopy;
      _os_log_impl(&dword_1B831F000, v13, OS_LOG_TYPE_DEFAULT, "Saved downtime override: %@", buf, 0xCu);
    }
  }

  else
  {
    v13 = +[STLog persistence];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(STBlueprintBackedDowntimeOverrideModifier *)v12 applyDowntimeOverride:v13 error:v14, v15, v16, v17, v18, v19];
    }
  }

  if (error)
  {
    v20 = v12;
    *error = v12;
  }

  return v11;
}

- (BOOL)removeDowntimeOverrideWithError:(id *)error
{
  [(STBlueprintBackedDowntimeOverrideModifier *)self _tombstoneDowntimeOverride];
  v5 = [(STBlueprintBackedDowntimeOverrideModifier *)self _saveWithError:error];
  if (v5)
  {
    v6 = +[STLog blueprint];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_1B831F000, v6, OS_LOG_TYPE_DEFAULT, "Removed downtime override", v15, 2u);
    }
  }

  else
  {
    v6 = +[STLog persistence];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(STBlueprintBackedDowntimeOverrideModifier *)v6 removeDowntimeOverrideWithError:v7, v8, v9, v10, v11, v12, v13];
    }
  }

  return v5;
}

- (BOOL)_saveWithError:(id *)error
{
  downtimeBlueprint = [(STBlueprintBackedDowntimeOverrideModifier *)self downtimeBlueprint];
  managedObjectContext = [downtimeBlueprint managedObjectContext];

  if ([managedObjectContext hasChanges])
  {
    v9 = 0;
    v6 = [managedObjectContext save:&v9];
    v7 = v9;
    if (error)
    {
      v7 = v7;
      *error = v7;
    }
  }

  else
  {
    v7 = 0;
    v6 = 1;
  }

  return v6;
}

- (void)_deleteOrphanedOrTombstonedDowntimeOverridesInContext:(id)context
{
  v29 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v4 = +[STCoreDowntimeOverride fetchRequest];
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == nil OR %K == YES", @"downtime", @"isTombstoned"];
  [v4 setPredicate:v5];

  v25 = 0;
  v6 = [contextCopy executeFetchRequest:v4 error:&v25];
  v7 = v25;
  if (v6)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v28 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      do
      {
        v12 = 0;
        do
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [contextCopy deleteObject:*(*(&v21 + 1) + 8 * v12++)];
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v21 objects:v28 count:16];
      }

      while (v10);
    }

    v13 = +[STLog blueprint];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v8, "count")}];
      *buf = 138412290;
      v27 = v14;
      _os_log_impl(&dword_1B831F000, v13, OS_LOG_TYPE_DEFAULT, "Deleted %@ orphaned/tombstoned downtime overrides", buf, 0xCu);
    }
  }

  else
  {
    v13 = +[STLog blueprint];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(STBlueprintBackedDowntimeOverrideModifier *)v7 _deleteOrphanedOrTombstonedDowntimeOverridesInContext:v13, v15, v16, v17, v18, v19, v20];
    }
  }
}

- (void)_tombstoneDowntimeOverride
{
  v11 = *MEMORY[0x1E69E9840];
  downtimeBlueprint = [(STBlueprintBackedDowntimeOverrideModifier *)self downtimeBlueprint];
  override = [downtimeBlueprint override];
  v4 = override;
  if (override)
  {
    [override setIsTombstoned:1];
    [downtimeBlueprint setIsDirty:1];
    v5 = +[STLog blueprint];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v4;
      v6 = "Tombstoning existing downtime override: %@";
      v7 = v5;
      v8 = 12;
LABEL_6:
      _os_log_impl(&dword_1B831F000, v7, OS_LOG_TYPE_DEFAULT, v6, &v9, v8);
    }
  }

  else
  {
    v5 = +[STLog blueprint];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      v6 = "No existing downtime override - nothing to do";
      v7 = v5;
      v8 = 2;
      goto LABEL_6;
    }
  }
}

- (void)applyDowntimeOverride:(uint64_t)a3 error:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, a2, a3, "Failed to save downtime override: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_deleteOrphanedOrTombstonedDowntimeOverridesInContext:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, a2, a3, "Could not fetch orphaned/tombstoned downtime overrides: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end