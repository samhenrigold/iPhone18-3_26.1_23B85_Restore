@interface NSMigrationManager
+ (uint64_t)_performSanityCheckForMapping:(void *)mapping fromSourceModel:(void *)model toDestinationModel:;
- (BOOL)migrateStoreFromURL:(NSURL *)sourceURL type:(NSString *)sStoreType options:(NSDictionary *)sOptions withMappingModel:(NSMappingModel *)mappings toDestinationURL:(NSURL *)dURL destinationType:(NSString *)dStoreType destinationOptions:(NSDictionary *)dOptions error:(NSError *)error;
- (NSArray)destinationInstancesForEntityMappingNamed:(NSString *)mappingName sourceInstances:(NSArray *)sourceInstances;
- (NSArray)sourceInstancesForEntityMappingNamed:(NSString *)mappingName destinationInstances:(NSArray *)destinationInstances;
- (NSEntityDescription)destinationEntityForEntityMapping:(NSEntityMapping *)mEntity;
- (NSEntityDescription)sourceEntityForEntityMapping:(NSEntityMapping *)mEntity;
- (NSEntityMapping)currentEntityMapping;
- (NSMigrationManager)initWithSourceModel:(NSManagedObjectModel *)sourceModel destinationModel:(NSManagedObjectModel *)destinationModel;
- (float)migrationProgress;
- (id)currentPropertyMapping;
- (id)destinationInstancesForSourceRelationshipNamed:(id)named sourceInstances:(id)instances;
- (id)fetchRequestForSourceEntityNamed:(id)named predicateString:(id)string includesSubentities:(BOOL)subentities;
- (uint64_t)_validateAllObjectsAfterMigration:(void *)migration;
- (void)_doCleanupOnFailure:(id *)failure;
- (void)associateSourceInstance:(NSManagedObject *)sourceInstance withDestinationInstance:(NSManagedObject *)destinationInstance forEntityMapping:(NSEntityMapping *)entityMapping;
- (void)cancelMigrationWithError:(NSError *)error;
- (void)dealloc;
- (void)setUserInfo:(NSDictionary *)userInfo;
- (void)setUsesStoreSpecificMigrationManager:(BOOL)usesStoreSpecificMigrationManager;
@end

@implementation NSMigrationManager

- (NSMigrationManager)initWithSourceModel:(NSManagedObjectModel *)sourceModel destinationModel:(NSManagedObjectModel *)destinationModel
{
  v12.receiver = self;
  v12.super_class = NSMigrationManager;
  v6 = [(NSMigrationManager *)&v12 init];
  v7 = v6;
  if (v6)
  {
    if (!sourceModel || !destinationModel)
    {

      if (sourceModel)
      {
        v11 = @"Cannot create an NSMigrationManager with a nil destination model";
      }

      else
      {
        v11 = @"Cannot create an NSMigrationManager with a nil source model";
      }

      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v11 userInfo:0]);
    }

    v8 = [(NSManagedObjectModel *)sourceModel copy];
    v7->_sourceModel = v8;
    if ((*&sourceModel->_managedObjectModelFlags & 0x10) != 0 && v8)
    {
      *&v8->_managedObjectModelFlags |= 0x10u;
      v8 = v7->_sourceModel;
    }

    v7->_sourceEntitiesByVersionHash = [(NSManagedObjectModel *)v8 _entitiesByVersionHash];
    [(NSManagedObjectModel *)v7->_sourceModel _stripForMigration];
    v9 = [(NSManagedObjectModel *)destinationModel copy];
    v7->_destinationModel = v9;
    v7->_destinationEntitiesByVersionHash = [(NSManagedObjectModel *)v9 _entitiesByVersionHash];
    [(NSManagedObjectModel *)v7->_destinationModel _stripForMigration];
    v7->_migrationManagerFlags = (*&v7->_migrationManagerFlags & 0xFFFFFFFC | (2 * BYTE2(z9dsptsiQ80etb9782fsrs98bfdle88)));
    v7->_destinationConfigurationForCloudKitValidation = 0;
  }

  return v7;
}

- (void)dealloc
{
  [NSMigrationManager _doCleanupOnFailure:?];

  self->_sourceModel = 0;
  self->_sourceEntitiesByVersionHash = 0;

  self->_destinationModel = 0;
  self->_destinationEntitiesByVersionHash = 0;

  self->_userInfo = 0;
  self->_destinationConfigurationForCloudKitValidation = 0;
  v3.receiver = self;
  v3.super_class = NSMigrationManager;
  [(NSMigrationManager *)&v3 dealloc];
}

- (void)_doCleanupOnFailure:(id *)failure
{
  if (failure)
  {

    failure[6] = 0;
    failure[7] = 0;

    failure[8] = 0;
    failure[5] = 0;

    failure[13] = 0;
  }
}

- (BOOL)migrateStoreFromURL:(NSURL *)sourceURL type:(NSString *)sStoreType options:(NSDictionary *)sOptions withMappingModel:(NSMappingModel *)mappings toDestinationURL:(NSURL *)dURL destinationType:(NSString *)dStoreType destinationOptions:(NSDictionary *)dOptions error:(NSError *)error
{
  v136 = *MEMORY[0x1E69E9840];
  v103 = [(_PFBackgroundRuntimeVoucher *)_PFRunningBoardBackgroundMigrationVoucher _beginPowerAssertionNamed:@"CoreData: Schema migration (manager)"];
  selfCopy = self;
  v15 = objc_opt_class();
  if (v15 == objc_opt_class() && [(NSMigrationManager *)self usesStoreSpecificMigrationManager]&& [(NSString *)sStoreType isEqualToString:dStoreType])
  {
    sStoreType = [(NSDictionary *)+[NSPersistentStoreCoordinator registeredStoreTypes](NSPersistentStoreCoordinator objectForKey:"objectForKey:", sStoreType];
    if (objc_opt_class() != sStoreType)
    {
      if (![sStoreType isNSValue])
      {
        goto LABEL_21;
      }

      sStoreType = [sStoreType pointerValue];
    }

    if (sStoreType)
    {
      migrationManagerClass = [sStoreType migrationManagerClass];
      if (objc_opt_respondsToSelector())
      {
        v18 = [migrationManagerClass _canMigrateWithMappingModel:mappings];
        if (migrationManagerClass)
        {
          v19 = v18;
        }

        else
        {
          v19 = 0;
        }

        if ((v19 & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      else if (!migrationManagerClass)
      {
        goto LABEL_21;
      }

      if (migrationManagerClass != objc_opt_class())
      {
        v20 = [[migrationManagerClass alloc] initWithSourceModel:-[NSMigrationManager sourceModel](self destinationModel:{"sourceModel"), -[NSMigrationManager destinationModel](self, "destinationModel")}];
        [v20 setDestinationConfigurationForCloudKitValidation:{-[NSMigrationManager destinationConfigurationForCloudKitValidation](self, "destinationConfigurationForCloudKitValidation")}];
        sourceModel = [(NSMigrationManager *)self sourceModel];
        if (sourceModel)
        {
          if ((*&sourceModel->_managedObjectModelFlags & 0x10) != 0)
          {
            sourceModel2 = [v20 sourceModel];
            if (sourceModel2)
            {
              *(sourceModel2 + 64) |= 0x10u;
            }
          }
        }

        v23 = [v20 migrateStoreFromURL:sourceURL type:sStoreType options:sOptions withMappingModel:mappings toDestinationURL:dURL destinationType:dStoreType destinationOptions:dOptions error:error];

        goto LABEL_148;
      }
    }
  }

LABEL_21:
  if (!self)
  {
    goto LABEL_131;
  }

  if (([NSMigrationManager _performSanityCheckForMapping:[(NSMigrationManager *)self sourceModel] fromSourceModel:[(NSMigrationManager *)self destinationModel] toDestinationModel:?]& 1) == 0)
  {
    v95 = MEMORY[0x1E695DF30];
    v96 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{-[NSMigrationManager sourceModel](self, "sourceModel"), @"sourceModel", -[NSMigrationManager destinationModel](self, "destinationModel"), @"destinationModel", mappings, @"mappingModel", 0}];
    objc_exception_throw([v95 exceptionWithName:*MEMORY[0x1E695D940] reason:@"Mismatch between mapping and source/destination models" userInfo:v96]);
  }

  self->_mappingModel = mappings;
  self->_migrationContext = [[NSMigrationContext alloc] initWithMigrationManager:self];
  v122 = 0;
  v24 = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:[(NSMigrationManager *)self sourceModel]];
  v25 = [[NSManagedObjectContext alloc] initWithConcurrencyType:3];
  self->_sourceManagedObjectContext = v25;
  [(NSManagedObjectContext *)v25 setPersistentStoreCoordinator:v24];
  [(NSManagedObjectContext *)self->_sourceManagedObjectContext setUndoManager:0];

  if (!sOptions)
  {
    v27 = objc_alloc(MEMORY[0x1E695DF20]);
    v26 = [v27 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", 1), @"NSReadOnlyPersistentStoreOption", 0}];
    goto LABEL_27;
  }

  if ([(NSDictionary *)sOptions objectForKey:@"NSReadOnlyPersistentStoreOption"])
  {
    v26 = sOptions;
LABEL_27:
    v28 = v26;
    goto LABEL_29;
  }

  v28 = [(NSDictionary *)sOptions mutableCopy];
  -[NSDictionary setObject:forKey:](v28, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithBool:1], @"NSReadOnlyPersistentStoreOption");
LABEL_29:
  v29 = [(NSPersistentStoreCoordinator *)v24 addPersistentStoreWithType:sStoreType configuration:0 URL:sourceURL options:v28 error:&v122];

  if (!v29)
  {
    if (error)
    {
      v35 = MEMORY[0x1E696ABC0];
      v36 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"Can't add source store", @"reason", v122, *MEMORY[0x1E696AA08], 0}];
LABEL_129:
      *error = [v35 errorWithDomain:*MEMORY[0x1E696A250] code:134110 userInfo:v36];
    }

LABEL_130:
    [NSMigrationManager _doCleanupOnFailure:?];
    goto LABEL_131;
  }

  v30 = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:[(NSMigrationManager *)self destinationModel]];
  v31 = [[NSManagedObjectContext alloc] initWithConcurrencyType:3];
  self->_destinationManagedObjectContext = v31;
  [(NSManagedObjectContext *)v31 setPersistentStoreCoordinator:v30];
  [(NSManagedObjectContext *)self->_destinationManagedObjectContext setUndoManager:0];

  if (dOptions)
  {
    v32 = [(NSDictionary *)dOptions objectForKey:@"NSSQLitePragmasOption"];
    v33 = v32;
    if (v32)
    {
      if ([v32 objectForKey:@"journal_mode]"])
      {
        v34 = dOptions;
      }

      else
      {
        v34 = [(NSDictionary *)dOptions mutableCopy];
        v41 = [v33 mutableCopy];
        [v41 setObject:objc_msgSend(MEMORY[0x1E695DFB0] forKey:{"null"), @"journal_mode"}];
        [(NSDictionary *)v34 setObject:v41 forKey:@"NSSQLitePragmasOption"];
      }
    }

    else
    {
      v34 = [(NSDictionary *)dOptions mutableCopy];
      v39 = objc_alloc(MEMORY[0x1E695DF20]);
      v40 = [v39 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E695DFB0], "null"), @"journal_mode", 0}];
      [(NSDictionary *)v34 setObject:v40 forKey:@"NSSQLitePragmasOption"];
    }
  }

  else
  {
    v37 = objc_alloc(MEMORY[0x1E695DF20]);
    v38 = [v37 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E695DFB0], "null"), @"journal_mode", 0}];
    v34 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v38, @"NSSQLitePragmasOption", 0}];
  }

  v99 = [(NSPersistentStoreCoordinator *)v30 addPersistentStoreWithType:dStoreType configuration:0 URL:dURL options:v34 error:&v122];

  if (!v99)
  {
    if (error)
    {
      v35 = MEMORY[0x1E696ABC0];
      v36 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"Can't add destination store", @"reason", v122, *MEMORY[0x1E696AA08], 0}];
      goto LABEL_129;
    }

    goto LABEL_130;
  }

  v121[0] = MEMORY[0x1E69E9820];
  v121[1] = 3221225472;
  v121[2] = __148__NSMigrationManager_InternalMethods___migrateStoreFromURL_type_options_withMappingModel_toDestinationURL_destinationType_destinationOptions_error___block_invoke;
  v121[3] = &unk_1E6EC2920;
  v121[4] = v30;
  v121[5] = v29;
  v121[6] = v99;
  v121[7] = self;
  [(NSPersistentStoreCoordinator *)v30 performBlockAndWait:v121];
  entityMappings = [(NSMappingModel *)mappings entityMappings];
  v98 = v29;
  v120 = 0;
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v43 = selfCopy;
  v44 = [(NSArray *)entityMappings countByEnumeratingWithState:&v116 objects:v134 count:16];
  if (!v44)
  {
    goto LABEL_74;
  }

  v45 = *v117;
  v100 = *MEMORY[0x1E696A250];
  v46 = 0x1E696A000uLL;
  obja = entityMappings;
  do
  {
    for (i = 0; i != v44; ++i)
    {
      if (*v117 != v45)
      {
        objc_enumerationMutation(obja);
      }

      v48 = *(*(&v116 + 1) + 8 * i);
      v109 = objc_alloc_init(*(v46 + 2760));
      _migrationPolicy = [(NSEntityMapping *)v48 _migrationPolicy];
      if (![(NSEntityMigrationPolicy *)_migrationPolicy beginEntityMapping:v48 manager:v43 error:&v120])
      {
        v55 = 0;
LABEL_60:
        LOBYTE(v124) = 0;
        v56 = 1;
        goto LABEL_67;
      }

      if (*&v43->_migrationManagerFlags)
      {
        v55 = 1;
        v120 = v43->_migrationCancellationError;
        goto LABEL_60;
      }

      [(NSMigrationContext *)&v43->_migrationContext->super.isa setCurrentEntityMapping:v48];
      v50 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:8];
      [v50 setValue:selfCopy forKey:@"manager"];
      [v50 setValue:v48 forKey:@"entityMapping"];
      [v50 setValue:_migrationPolicy forKey:@"entityPolicy"];
      v51 = [-[NSEntityMigrationPolicy sourceExpression](v48 "sourceExpression")];

      v132 = 0u;
      v133 = 0u;
      v130 = 0u;
      v131 = 0u;
      v52 = [v51 countByEnumeratingWithState:&v130 objects:v135 count:16];
      if (v52)
      {
        v53 = *v131;
        while (2)
        {
          for (j = 0; j != v52; ++j)
          {
            if (*v131 != v53)
            {
              objc_enumerationMutation(v51);
            }

            if (![(NSEntityMigrationPolicy *)_migrationPolicy createDestinationInstancesForSourceInstance:*(*(&v130 + 1) + 8 * j) entityMapping:v48 manager:selfCopy error:&v120])
            {
              v55 = 0;
              goto LABEL_64;
            }

            if (*&selfCopy->_migrationManagerFlags)
            {
              v120 = selfCopy->_migrationCancellationError;
              LOBYTE(v124) = 0;
              v56 = 1;
              v55 = 1;
              goto LABEL_65;
            }
          }

          v52 = [v51 countByEnumeratingWithState:&v130 objects:v135 count:16];
          if (v52)
          {
            continue;
          }

          break;
        }
      }

      v55 = [(NSEntityMigrationPolicy *)_migrationPolicy endInstanceCreationForEntityMapping:v48 manager:selfCopy error:&v120];
      v43 = selfCopy;
      if (*&selfCopy->_migrationManagerFlags)
      {
        v120 = selfCopy->_migrationCancellationError;
LABEL_64:
        LOBYTE(v124) = 0;
        v56 = 1;
LABEL_65:
        v43 = selfCopy;
      }

      else
      {
        v56 = 0;
      }

      v46 = 0x1E696A000;
LABEL_67:

      if ((v56 | 2) == 2)
      {
        if (!v55)
        {
          goto LABEL_132;
        }
      }

      else if ((v124 & 1) == 0)
      {
LABEL_132:
        v73 = v109;
        v86 = v120;
LABEL_134:
        [NSMigrationManager _doCleanupOnFailure:?];
LABEL_138:
        v123 = 0;
        if (v73)
        {
          [v73 drain];
        }

        v85 = 0;
        goto LABEL_141;
      }

      v122 = 0;
      if (![(NSManagedObjectContext *)v43->_destinationManagedObjectContext save:&v122])
      {
        v73 = v109;
        v120 = [MEMORY[0x1E696ABC0] errorWithDomain:v100 code:134110 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjectsAndKeys:", @"Failed to save new store after first pass of migration.", @"reason", v122, *MEMORY[0x1E696AA08], 0)}];
        goto LABEL_134;
      }

      [v109 drain];
    }

    entityMappings = obja;
    v44 = [(NSArray *)obja countByEnumeratingWithState:&v116 objects:v134 count:16];
  }

  while (v44);
LABEL_74:
  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  v57 = [(NSArray *)entityMappings countByEnumeratingWithState:&v112 objects:&v130 count:16];
  if (!v57)
  {
    goto LABEL_105;
  }

  v102 = *v113;
  v97 = *MEMORY[0x1E696A250];
  objb = entityMappings;
  while (2)
  {
    v58 = 0;
    v101 = v57;
    while (2)
    {
      if (*v113 != v102)
      {
        objc_enumerationMutation(objb);
      }

      v59 = *(*(&v112 + 1) + 8 * v58);
      v104 = v58;
      v110 = objc_alloc_init(MEMORY[0x1E696AAC8]);
      v128 = 0;
      _migrationPolicy2 = [(NSEntityMapping *)v59 _migrationPolicy];
      [(NSMigrationContext *)&v43->_migrationContext->super.isa setCurrentEntityMapping:v59];
      v61 = [(NSMigrationContext *)&v43->_migrationContext->super.isa destinationInstancesForEntityMapping:v59 sourceInstance:0];
      v126 = 0u;
      v127 = 0u;
      v124 = 0u;
      v125 = 0u;
      v62 = [v61 countByEnumeratingWithState:&v124 objects:v135 count:16];
      if (v62)
      {
        v63 = *v125;
LABEL_81:
        v64 = 0;
        while (1)
        {
          if (*v125 != v63)
          {
            objc_enumerationMutation(v61);
          }

          v65 = *(*(&v124 + 1) + 8 * v64);
          v66 = objc_alloc_init(MEMORY[0x1E696AAC8]);
          if (![(NSEntityMigrationPolicy *)_migrationPolicy2 createRelationshipsForDestinationInstance:v65 entityMapping:v59 manager:selfCopy error:&v128])
          {
            break;
          }

          if (*&selfCopy->_migrationManagerFlags)
          {
            v70 = 1;
            v57 = v101;
            v128 = selfCopy->_migrationCancellationError;
            goto LABEL_93;
          }

          [v66 drain];
          if (v62 == ++v64)
          {
            v62 = [v61 countByEnumeratingWithState:&v124 objects:v135 count:16];
            v57 = v101;
            if (v62)
            {
              goto LABEL_81;
            }

            goto LABEL_88;
          }
        }

        v57 = v101;
        v71 = v128;
        v70 = 0;
LABEL_93:
        v129 = 0;
        v69 = 1;
        goto LABEL_96;
      }

LABEL_88:
      v67 = [(NSEntityMigrationPolicy *)_migrationPolicy2 endRelationshipCreationForEntityMapping:v59 manager:selfCopy error:&v128];
      v68 = v67;
      if (*&selfCopy->_migrationManagerFlags)
      {
        v66 = 0;
        v128 = selfCopy->_migrationCancellationError;
        v129 = 0;
        v69 = 1;
        v70 = v68;
      }

      else if (v67)
      {
        v66 = 0;
        v69 = 0;
        v70 = 1;
      }

      else
      {
        v72 = v128;
        v66 = 0;
        v69 = 0;
        v70 = 0;
      }

LABEL_96:
      v73 = v110;

      if (v66)
      {
        [v66 drain];
      }

      v120 = v128;
      v74 = v128;
      v75 = 0;
      if ((v69 | 2) != 2)
      {
        v43 = selfCopy;
        if (v129)
        {
          goto LABEL_102;
        }

LABEL_135:
        v87 = v120;
        goto LABEL_137;
      }

      v43 = selfCopy;
      if ((v70 & 1) == 0)
      {
        goto LABEL_135;
      }

LABEL_102:
      v122 = 0;
      if (![(NSManagedObjectContext *)v43->_destinationManagedObjectContext save:&v122])
      {
        v120 = [MEMORY[0x1E696ABC0] errorWithDomain:v97 code:134110 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjectsAndKeys:", @"Failed to save new store after second pass of migration.", @"reason", v122, *MEMORY[0x1E696AA08], 0)}];
LABEL_137:
        [NSMigrationManager _doCleanupOnFailure:?];
        goto LABEL_138;
      }

      [v110 drain];
      ++v58;
      if (v104 + 1 != v57)
      {
        continue;
      }

      break;
    }

    entityMappings = objb;
    v57 = [(NSArray *)objb countByEnumeratingWithState:&v112 objects:&v130 count:16];
    if (v57)
    {
      continue;
    }

    break;
  }

LABEL_105:
  [(NSManagedObjectModel *)[(NSMigrationManager *)v43 sourceModel] _restoreValidation];
  [(NSManagedObjectModel *)[(NSMigrationManager *)v43 destinationModel] _restoreValidation];
  if (([(NSMigrationManager *)v43 _validateAllObjectsAfterMigration:?]& 1) != 0)
  {
    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    v76 = [(NSArray *)entityMappings countByEnumeratingWithState:&v124 objects:v135 count:16];
    if (!v76)
    {
      v85 = 1;
      goto LABEL_141;
    }

    v77 = *v125;
LABEL_108:
    v78 = 0;
    while (1)
    {
      if (*v125 != v77)
      {
        objc_enumerationMutation(entityMappings);
      }

      v79 = *(*(&v124 + 1) + 8 * v78);
      v80 = 1;
      _migrationPolicy3 = [(NSEntityMapping *)v79 _migrationPolicy];
      [(NSMigrationContext *)&selfCopy->_migrationContext->super.isa setCurrentEntityMapping:v79];
      if (![(NSEntityMigrationPolicy *)_migrationPolicy3 performCustomValidationForEntityMapping:v79 manager:selfCopy error:&v120])
      {
        break;
      }

      if ((*&selfCopy->_migrationManagerFlags & 1) == 0)
      {
        v82 = [NSEntityMigrationPolicy endEntityMapping:_migrationPolicy3 manager:"endEntityMapping:manager:error:" error:v79];
        if (*&selfCopy->_migrationManagerFlags)
        {
          v120 = selfCopy->_migrationCancellationError;
          LOBYTE(v128) = 0;
          v83 = 1;
        }

        else
        {
          v83 = 0;
        }

        v80 = v82;
        goto LABEL_119;
      }

      v120 = selfCopy->_migrationCancellationError;
      LOBYTE(v128) = 0;
      v84 = _migrationPolicy3;
      v83 = 1;
LABEL_120:

      if ((v83 | 2) == 2)
      {
        if ((v80 & 1) == 0)
        {
          goto LABEL_151;
        }
      }

      else if ((v128 & 1) == 0)
      {
LABEL_151:
        v43 = selfCopy;
        v94 = v120;
        [NSMigrationManager _doCleanupOnFailure:?];
        goto LABEL_152;
      }

      if (v76 == ++v78)
      {
        v76 = [(NSArray *)entityMappings countByEnumeratingWithState:&v124 objects:v135 count:16];
        v85 = 1;
        v43 = selfCopy;
        if (v76)
        {
          goto LABEL_108;
        }

        goto LABEL_141;
      }
    }

    v80 = 0;
    LOBYTE(v128) = 0;
    v83 = 1;
LABEL_119:
    v84 = _migrationPolicy3;
    goto LABEL_120;
  }

  v93 = v120;
  [NSMigrationManager _doCleanupOnFailure:?];
LABEL_152:
  v85 = 0;
  v123 = 0;
LABEL_141:
  v88 = v120;
  if (error && v120)
  {
    *error = v120;
  }

  v89 = v88;
  if ((v85 & 1) == 0)
  {
    v23 = v123;
    goto LABEL_148;
  }

  v122 = 0;
  if ([(NSManagedObjectContext *)v43->_destinationManagedObjectContext save:&v122])
  {

    selfCopy->_mappingModel = 0;
    [(NSPersistentStoreCoordinator *)[(NSManagedObjectContext *)selfCopy->_destinationManagedObjectContext persistentStoreCoordinator] removePersistentStore:v99 error:0];
    [(NSPersistentStoreCoordinator *)[(NSManagedObjectContext *)selfCopy->_sourceManagedObjectContext persistentStoreCoordinator] removePersistentStore:v98 error:0];
    [NSMigrationManager _doCleanupOnFailure:?];
    v23 = 1;
    goto LABEL_148;
  }

  v91 = MEMORY[0x1E696ABC0];
  v92 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"Failed to save new store.", @"reason", v122, *MEMORY[0x1E696AA08], 0}];
  *error = [v91 errorWithDomain:*MEMORY[0x1E696A250] code:134110 userInfo:v92];
  [NSMigrationManager _doCleanupOnFailure:?];
LABEL_131:
  v23 = 0;
LABEL_148:
  [(_PFBackgroundRuntimeVoucher *)_PFRunningBoardBackgroundMigrationVoucher _endPowerAssertionWithVoucher:v103];
  return v23 & 1;
}

- (NSEntityDescription)sourceEntityForEntityMapping:(NSEntityMapping *)mEntity
{
  sourceEntitiesByVersionHash = self->_sourceEntitiesByVersionHash;
  sourceEntityVersionHash = [(NSEntityMapping *)mEntity sourceEntityVersionHash];

  return [(NSDictionary *)sourceEntitiesByVersionHash objectForKey:sourceEntityVersionHash];
}

- (NSEntityDescription)destinationEntityForEntityMapping:(NSEntityMapping *)mEntity
{
  destinationEntitiesByVersionHash = self->_destinationEntitiesByVersionHash;
  destinationEntityVersionHash = [(NSEntityMapping *)mEntity destinationEntityVersionHash];

  return [(NSDictionary *)destinationEntitiesByVersionHash objectForKey:destinationEntityVersionHash];
}

- (void)associateSourceInstance:(NSManagedObject *)sourceInstance withDestinationInstance:(NSManagedObject *)destinationInstance forEntityMapping:(NSEntityMapping *)entityMapping
{
  if (!entityMapping)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Manager requires an entity mapping for associations" userInfo:{v5, v6}]);
  }

  if (self)
  {
    self = self->_migrationContext;
  }

  [(NSMigrationContext *)&self->super.isa associateSourceInstance:destinationInstance withDestinationInstance:entityMapping forEntityMapping:?];
}

- (NSArray)destinationInstancesForEntityMappingNamed:(NSString *)mappingName sourceInstances:(NSArray *)sourceInstances
{
  v45 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sourceInstances = [MEMORY[0x1E695DEC8] arrayWithObject:sourceInstances];
  }

  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](sourceInstances, "count")}];
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  if (mappingName)
  {
    if (!self || (v9 = objc_msgSend_valueForKey_([(NSMappingModel *)[(NSMigrationManager *)self mappingModel] entityMappingsByName])) == 0)
    {

      CFRelease(Mutable);
      v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] userInfo:{mappingName), 0}];
      objc_exception_throw(v10);
    }
  }

  else
  {
    v9 = 0;
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v28 = [(NSArray *)sourceInstances countByEnumeratingWithState:&v33 objects:v44 count:16];
  if (v28)
  {
    v27 = *v34;
    obj = sourceInstances;
    do
    {
      v11 = 0;
      do
      {
        if (*v34 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v33 + 1) + 8 * v11);
        if (self)
        {
          migrationContext = self->_migrationContext;
        }

        else
        {
          migrationContext = 0;
        }

        v14 = [(NSMigrationContext *)&migrationContext->super.isa destinationInstancesForEntityMapping:v9 sourceInstance:*(*(&v33 + 1) + 8 * v11)];
        if ([v14 count] >= 2 && +[NSMigrationManager migrationDebugLevel](NSMigrationManager, "migrationDebugLevel") >= 2)
        {
          v15 = objc_autoreleasePoolPush();
          _pflogInitialize(4);
          if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              LogStream = _PFLogGetLogStream(1);
              if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412802;
                v39 = v12;
                v40 = 2112;
                v41 = v14;
                v42 = 2112;
                v43 = v9;
                _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: (migration) got more destinations for source than we expected. (%@, %@, %@)\n", buf, 0x20u);
              }
            }

            else
            {
              v17 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412802;
                v39 = v12;
                v40 = 2112;
                v41 = v14;
                v42 = 2112;
                v43 = v9;
                _os_log_impl(&dword_18565F000, v17, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: (migration) got more destinations for source than we expected. (%@, %@, %@)\n", buf, 0x20u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v18 = 1;
          }

          else
          {
            v18 = 4;
          }

          _NSCoreDataLog_console(v18, "(migration) got more destinations for source than we expected. (%@, %@, %@)", v12, v14, v9);
          objc_autoreleasePoolPop(v15);
        }

        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v19 = [v14 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v30;
          do
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v30 != v21)
              {
                objc_enumerationMutation(v14);
              }

              v23 = *(*(&v29 + 1) + 8 * i);
              if (!CFSetContainsValue(Mutable, v23))
              {
                [v7 addObject:v23];
                CFSetAddValue(Mutable, v23);
              }
            }

            v20 = [v14 countByEnumeratingWithState:&v29 objects:v37 count:16];
          }

          while (v20);
        }

        ++v11;
      }

      while (v11 != v28);
      v24 = [(NSArray *)obj countByEnumeratingWithState:&v33 objects:v44 count:16];
      v28 = v24;
    }

    while (v24);
  }

  CFRelease(Mutable);
  return v7;
}

- (id)destinationInstancesForSourceRelationshipNamed:(id)named sourceInstances:(id)instances
{
  v104 = *MEMORY[0x1E69E9840];
  v7 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  currentEntityMapping = [(NSMigrationManager *)self currentEntityMapping];
  currentPropertyMapping = [(NSMigrationManager *)self currentPropertyMapping];
  v10 = [(NSMigrationManager *)self sourceEntityForEntityMapping:currentEntityMapping];
  v64 = currentEntityMapping;
  v11 = [(NSMigrationManager *)self destinationEntityForEntityMapping:currentEntityMapping];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    instances = [MEMORY[0x1E695DEC8] arrayWithObject:instances];
  }

  if (!named)
  {
    v57 = MEMORY[0x1E695DF30];
    v58 = *MEMORY[0x1E695D940];
    v59 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], -[NSEntityMapping name](v64, "name"), [currentPropertyMapping name]);
    v60 = v57;
    v61 = v58;
    goto LABEL_73;
  }

  obj = instances;
  v12 = [(NSEntityDescription *)v10 _relationshipNamed:named];
  if (!v12)
  {
    v62 = MEMORY[0x1E695DF30];
    v63 = *MEMORY[0x1E695D940];
    v59 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], named, [(NSEntityDescription *)v10 name]);
    v60 = v62;
    v61 = v63;
LABEL_73:
    objc_exception_throw([v60 exceptionWithName:v61 reason:v59 userInfo:0]);
  }

  v13 = v12;
  v65 = currentPropertyMapping;
  v14 = -[NSEntityDescription _relationshipNamed:](v11, [currentPropertyMapping name]);
  destinationEntity = [v13 destinationEntity];
  destinationEntity2 = [v14 destinationEntity];
  array = [MEMORY[0x1E695DF70] array];
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  entityMappings = [(NSMappingModel *)[(NSMigrationManager *)self mappingModel] entityMappings];
  v18 = [(NSArray *)entityMappings countByEnumeratingWithState:&v86 objects:v103 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v87;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v87 != v20)
        {
          objc_enumerationMutation(entityMappings);
        }

        v22 = *(*(&v86 + 1) + 8 * i);
        if ([(NSEntityDescription *)[(NSMigrationManager *)self sourceEntityForEntityMapping:v22] isKindOfEntity:destinationEntity]&& [(NSEntityDescription *)[(NSMigrationManager *)self destinationEntityForEntityMapping:v22] isKindOfEntity:destinationEntity2])
        {
          [array addObject:v22];
        }
      }

      v19 = [(NSArray *)entityMappings countByEnumeratingWithState:&v86 objects:v103 count:16];
    }

    while (v19);
  }

  v66 = v7;
  v23 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(obj, "count")}];
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v69 = [obj countByEnumeratingWithState:&v82 objects:v102 count:16];
  if (v69)
  {
    v68 = *v83;
    do
    {
      v25 = 0;
      do
      {
        if (*v83 != v68)
        {
          objc_enumerationMutation(obj);
        }

        v70 = v25;
        v26 = *(*(&v82 + 1) + 8 * v25);
        v78 = 0u;
        v79 = 0u;
        v80 = 0u;
        v81 = 0u;
        v73 = [array countByEnumeratingWithState:&v78 objects:v101 count:16];
        if (v73)
        {
          v72 = *v79;
          do
          {
            v27 = 0;
            do
            {
              if (*v79 != v72)
              {
                objc_enumerationMutation(array);
              }

              v28 = *(*(&v78 + 1) + 8 * v27);
              if (self)
              {
                selfCopy = self;
                migrationContext = self->_migrationContext;
              }

              else
              {
                selfCopy = 0;
                migrationContext = 0;
              }

              v31 = [(NSMigrationContext *)&migrationContext->super.isa destinationInstancesForEntityMapping:v26 sourceInstance:?];
              if ([v31 count] >= 2 && +[NSMigrationManager migrationDebugLevel](NSMigrationManager, "migrationDebugLevel") >= 2)
              {
                v32 = objc_autoreleasePoolPush();
                _pflogInitialize(4);
                if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
                {
                  if (_pflogging_catastrophic_mode)
                  {
                    LogStream = _PFLogGetLogStream(1);
                    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412802;
                      v91 = v26;
                      v92 = 2112;
                      v93 = v31;
                      v94 = 2112;
                      v95 = v28;
                      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: (migration) got more destinations for source than we expected. (%@, %@, %@)\n", buf, 0x20u);
                    }
                  }

                  else
                  {
                    v34 = _PFLogGetLogStream(4);
                    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412802;
                      v91 = v26;
                      v92 = 2112;
                      v93 = v31;
                      v94 = 2112;
                      v95 = v28;
                      _os_log_impl(&dword_18565F000, v34, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: (migration) got more destinations for source than we expected. (%@, %@, %@)\n", buf, 0x20u);
                    }
                  }
                }

                if (_pflogging_catastrophic_mode)
                {
                  v35 = 1;
                }

                else
                {
                  v35 = 4;
                }

                _NSCoreDataLog_console(v35, "(migration) got more destinations for source than we expected. (%@, %@, %@)", v26, v31, v28);
                objc_autoreleasePoolPop(v32);
              }

              v76 = 0u;
              v77 = 0u;
              v74 = 0u;
              v75 = 0u;
              v36 = [v31 countByEnumeratingWithState:&v74 objects:v100 count:16];
              if (v36)
              {
                v37 = v36;
                v38 = *v75;
                do
                {
                  for (j = 0; j != v37; ++j)
                  {
                    if (*v75 != v38)
                    {
                      objc_enumerationMutation(v31);
                    }

                    v40 = *(*(&v74 + 1) + 8 * j);
                    if (!CFSetContainsValue(Mutable, v40))
                    {
                      [v23 addObject:v40];
                      CFSetAddValue(Mutable, v40);
                    }
                  }

                  v37 = [v31 countByEnumeratingWithState:&v74 objects:v100 count:16];
                }

                while (v37);
              }

              ++v27;
              self = selfCopy;
            }

            while (v27 != v73);
            v41 = [array countByEnumeratingWithState:&v78 objects:v101 count:16];
            v73 = v41;
          }

          while (v41);
        }

        v25 = v70 + 1;
      }

      while (v70 + 1 != v69);
      v69 = [obj countByEnumeratingWithState:&v82 objects:v102 count:16];
    }

    while (v69);
  }

  if (+[NSMigrationManager migrationDebugLevel]>= 2)
  {
    v42 = [v23 count];
    if (v42 != [obj count])
    {
      v43 = [v23 count];
      if (v43 <= [obj count])
      {
        v44 = @"fewer";
      }

      else
      {
        v44 = @"more";
      }

      v45 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v46 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            v47 = [v23 count];
            v48 = [obj count];
            *buf = 138413314;
            v91 = v44;
            v92 = 2048;
            v93 = v47;
            v94 = 2048;
            v95 = v48;
            v96 = 2112;
            v97 = v64;
            v98 = 2112;
            v99 = v65;
            _os_log_error_impl(&dword_18565F000, v46, OS_LOG_TYPE_ERROR, "CoreData: error: (migration) got %@ destinations[%lu] for sources[%lu] than we expected. (%@, %@)\n", buf, 0x34u);
          }
        }

        else
        {
          v49 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            v50 = [v23 count];
            v51 = [obj count];
            *buf = 138413314;
            v91 = v44;
            v92 = 2048;
            v93 = v50;
            v94 = 2048;
            v95 = v51;
            v96 = 2112;
            v97 = v64;
            v98 = 2112;
            v99 = v65;
            _os_log_impl(&dword_18565F000, v49, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: (migration) got %@ destinations[%lu] for sources[%lu] than we expected. (%@, %@)\n", buf, 0x34u);
          }
        }
      }

      v52 = _pflogging_catastrophic_mode;
      v53 = [v23 count];
      v54 = [obj count];
      v55 = 4;
      if (v52)
      {
        v55 = 1;
      }

      _NSCoreDataLog_console(v55, "(migration) got %@ destinations[%lu] for sources[%lu] than we expected. (%@, %@)", v44, v53, v54, v64, v65);
      objc_autoreleasePoolPop(v45);
    }
  }

  CFRelease(Mutable);
  return v23;
}

- (NSArray)sourceInstancesForEntityMappingNamed:(NSString *)mappingName destinationInstances:(NSArray *)destinationInstances
{
  v46 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    destinationInstances = [MEMORY[0x1E695DEC8] arrayWithObject:destinationInstances];
  }

  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](destinationInstances, "count")}];
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  if (mappingName)
  {
    if (!self || (v9 = objc_msgSend_valueForKey_([(NSMappingModel *)[(NSMigrationManager *)self mappingModel] entityMappingsByName])) == 0)
    {
      CFRelease(Mutable);

      v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] userInfo:{mappingName), 0}];
      objc_exception_throw(v10);
    }
  }

  else
  {
    v9 = 0;
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v29 = [(NSArray *)destinationInstances countByEnumeratingWithState:&v34 objects:v45 count:16];
  if (v29)
  {
    v28 = *v35;
    obj = destinationInstances;
    do
    {
      v11 = 0;
      do
      {
        if (*v35 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v34 + 1) + 8 * v11);
        if (self)
        {
          migrationContext = self->_migrationContext;
        }

        else
        {
          migrationContext = 0;
        }

        v14 = [(NSMigrationContext *)&migrationContext->super.isa sourceInstancesForEntityMapping:v9 destinationInstance:*(*(&v34 + 1) + 8 * v11)];
        v15 = v14;
        if (v9 && [v14 count] >= 2 && +[NSMigrationManager migrationDebugLevel](NSMigrationManager, "migrationDebugLevel") >= 2)
        {
          v16 = objc_autoreleasePoolPush();
          _pflogInitialize(4);
          if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              LogStream = _PFLogGetLogStream(1);
              if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412802;
                v40 = v12;
                v41 = 2112;
                v42 = v15;
                v43 = 2112;
                v44 = v9;
                _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: (migration) got more sources for destination than we expected. (%@, %@, %@)\n", buf, 0x20u);
              }
            }

            else
            {
              v18 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412802;
                v40 = v12;
                v41 = 2112;
                v42 = v15;
                v43 = 2112;
                v44 = v9;
                _os_log_impl(&dword_18565F000, v18, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: (migration) got more sources for destination than we expected. (%@, %@, %@)\n", buf, 0x20u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v19 = 1;
          }

          else
          {
            v19 = 4;
          }

          _NSCoreDataLog_console(v19, "(migration) got more sources for destination than we expected. (%@, %@, %@)", v12, v15, v9);
          objc_autoreleasePoolPop(v16);
        }

        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v20 = [v15 countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v31;
          do
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v31 != v22)
              {
                objc_enumerationMutation(v15);
              }

              v24 = *(*(&v30 + 1) + 8 * i);
              if (!CFSetContainsValue(Mutable, v24))
              {
                [v7 addObject:v24];
                CFSetAddValue(Mutable, v24);
              }
            }

            v21 = [v15 countByEnumeratingWithState:&v30 objects:v38 count:16];
          }

          while (v21);
        }

        ++v11;
      }

      while (v11 != v29);
      v25 = [(NSArray *)obj countByEnumeratingWithState:&v34 objects:v45 count:16];
      v29 = v25;
    }

    while (v25);
  }

  CFRelease(Mutable);
  return v7;
}

- (NSEntityMapping)currentEntityMapping
{
  if (self)
  {
    destinationEntityName = self->_destinationEntityName;
    if (destinationEntityName)
    {
      return destinationEntityName[6].super.isa;
    }

    else
    {
      return 0;
    }
  }

  return self;
}

- (id)currentPropertyMapping
{
  if (self)
  {
    v2 = *(self + 8);
    if (v2)
    {
      return *(v2 + 64);
    }

    else
    {
      return 0;
    }
  }

  return self;
}

- (float)migrationProgress
{
  v3 = [(NSArray *)[(NSMappingModel *)[(NSMigrationManager *)self mappingModel] entityMappings] count];
  if (!v3)
  {
    return 0.0;
  }

  currentStep = 0.0;
  if (self)
  {
    migrationContext = self->_migrationContext;
    if (migrationContext)
    {
      currentStep = migrationContext->_currentStep;
    }
  }

  return currentStep / (v3 * 3.0);
}

- (void)setUserInfo:(NSDictionary *)userInfo
{
  v3 = self->_userInfo;
  if (v3 != userInfo)
  {

    self->_userInfo = userInfo;
  }
}

- (void)cancelMigrationWithError:(NSError *)error
{
  *&self->_migrationManagerFlags |= 1u;
  migrationCancellationError = self->_migrationCancellationError;
  if (migrationCancellationError != error)
  {

    self->_migrationCancellationError = error;
  }
}

- (void)setUsesStoreSpecificMigrationManager:(BOOL)usesStoreSpecificMigrationManager
{
  if (usesStoreSpecificMigrationManager)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_migrationManagerFlags = (*&self->_migrationManagerFlags & 0xFFFFFFFD | v3);
}

- (id)fetchRequestForSourceEntityNamed:(id)named predicateString:(id)string includesSubentities:(BOOL)subentities
{
  subentitiesCopy = subentities;
  sourceModel = [(NSMigrationManager *)self sourceModel];
  if (!sourceModel || (v9 = [(NSMutableDictionary *)sourceModel->_entities objectForKey:named]) == 0)
  {
    v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] userInfo:{named), 0}];
    objc_exception_throw(v14);
  }

  v10 = v9;
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:string];
  v12 = objc_alloc_init(NSFetchRequest);
  [(NSFetchRequest *)v12 setEntity:v10];
  [(NSFetchRequest *)v12 setPredicate:v11];
  [(NSFetchRequest *)v12 setIncludesSubentities:subentitiesCopy];

  return v12;
}

+ (uint64_t)_performSanityCheckForMapping:(void *)mapping fromSourceModel:(void *)model toDestinationModel:
{
  v23 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v7 = objc_msgSend_valueForKey_([mapping entities]);
  v8 = objc_msgSend_valueForKey_([model entities]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  entityMappings = [a2 entityMappings];
  v10 = [entityMappings countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(entityMappings);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        if ([v14 sourceEntityVersionHash])
        {
          v15 = [v7 containsObject:{objc_msgSend(v14, "sourceEntityVersionHash")}] ^ 1;
        }

        else
        {
          v15 = 0;
        }

        if ([v14 destinationEntityVersionHash])
        {
          v16 = [v8 containsObject:{objc_msgSend(v14, "destinationEntityVersionHash")}] ^ 1;
        }

        else
        {
          v16 = 0;
        }

        if ((v15 | v16))
        {
          return 0;
        }
      }

      v11 = [entityMappings countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  return 1;
}

- (uint64_t)_validateAllObjectsAfterMigration:(void *)migration
{
  v25 = a2;
  v27[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_msgSend(migration "destinationContext")];
  v3 = [v2 count];
  v4 = v3;
  if (v3 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3;
  }

  if (v3 >= 0x201)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  v7 = &v25 - ((8 * v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v3 >= 0x201)
  {
    v7 = NSAllocateScannedUncollectable();
    [v2 getObjects:v7];
  }

  else
  {
    bzero(&v25 - ((8 * v6 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v5);
    [v2 getObjects:v7];
    if (!v4)
    {
      v8 = 1;
      return v8 & 1;
    }
  }

  v9 = 0;
  v10 = 0;
  v11 = *MEMORY[0x1E696A250];
  v26 = @"NSDetailedErrors";
  v8 = 1;
  do
  {
    v12 = *&v7[8 * v10];
    v27[0] = 0;
    if (([v12 validateForUpdate:v27] & 1) == 0)
    {
      if (!v9)
      {
        v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v2, "count")}];
      }

      if (v27[0])
      {
        if ([objc_msgSend(v27[0] "domain")] && objc_msgSend(v27[0], "code") == 1560)
        {
          userInfo = [v27[0] userInfo];
          [v9 addObjectsFromArray:{objc_msgSend(userInfo, "objectForKey:", v26)}];
        }

        else
        {
          v14 = [objc_msgSend(v27[0] "userInfo")];
          v15 = v27[0];
          if (v14)
          {
            v16 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{objc_msgSend(v27[0], "userInfo")}];
            [v16 setObject:objc_msgSend(objc_msgSend(v16 forKey:{"objectForKey:", @"NSValidationErrorObject", "description"), @"NSValidationErrorObject"}];
            v17 = MEMORY[0x1E696ABC0];
            domain = [v27[0] domain];
            v15 = [v17 errorWithDomain:domain code:objc_msgSend(v27[0] userInfo:{"code"), v16}];
            v27[0] = v15;
          }

          [v9 addObject:v15];
        }
      }

      v8 = 0;
    }

    ++v10;
  }

  while (v4 != v10);
  if ((v8 & 1) == 0)
  {
    if ([v9 count] == 1)
    {
      if (v25)
      {
        v19 = [v9 objectAtIndex:0];
        *v25 = v19;
      }
    }

    else
    {
      v20 = [v9 count];
      if (v25 && v20 >= 2)
      {
        v21 = objc_alloc(MEMORY[0x1E695DF20]);
        v22 = [v21 initWithObjectsAndKeys:{v9, v26, 0}];
        v23 = [MEMORY[0x1E696ABC0] errorWithDomain:v11 code:1560 userInfo:v22];
        *v25 = v23;
      }
    }
  }

  if (v4 >= 0x201)
  {
    NSZoneFree(0, v7);
  }

  return v8 & 1;
}

@end