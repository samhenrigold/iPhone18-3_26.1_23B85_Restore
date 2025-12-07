@interface WFProgressiveCoreDataMigrator
+ (BOOL)migrateDatabaseAtPersistentStoreDescription:(id)description error:(id *)error;
+ (id)customModificationsStepForSchemaWithIdentifier:(id)identifier;
@end

@implementation WFProgressiveCoreDataMigrator

+ (BOOL)migrateDatabaseAtPersistentStoreDescription:(id)description error:(id *)error
{
  v154[1] = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  v116 = [descriptionCopy URL];
  v115 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v102 = [v115 URLForResource:@"Shortcuts" withExtension:@"momd"];
  v4 = *MEMORY[0x1E695D4A8];
  v133 = 0;
  v103 = v4;
  v105 = [MEMORY[0x1E695D6C0] metadataForPersistentStoreOfType:? URL:? options:? error:?];
  v100 = 0;
  if (!v105)
  {
    v12 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v147 = "+[WFProgressiveCoreDataMigrator migrateDatabaseAtPersistentStoreDescription:error:]";
      v148 = 2114;
      v149 = v100;
      _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_DEFAULT, "%s Not migrating, since persistent store metadata creation failed (likely no store has been created yet): %{public}@", buf, 0x16u);
    }

    v13 = 1;
    goto LABEL_122;
  }

  context = v102;
  v111 = v105;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v138 = 0;
  v6 = [defaultManager contentsOfDirectoryAtURL:context includingPropertiesForKeys:0 options:0 error:&v138];
  v109 = v138;
  v118 = [v6 mutableCopy];

  if (v118)
  {
    v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"lastPathComponent.pathExtension", @"mom"];
    [v118 filterUsingPredicate:v7];

    v8 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"lastPathComponent" ascending:0 comparator:&__block_literal_global_9751];
    v154[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v154 count:1];
    [v118 sortUsingDescriptors:v9];

    v120 = objc_opt_new();
    v10 = [v111 objectForKeyedSubscript:*MEMORY[0x1E695D4B0]];
    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v16 = v11;

    firstObject = [v16 firstObject];

    if (firstObject)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = firstObject;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;

    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    reverseObjectEnumerator = v118;
    v21 = [reverseObjectEnumerator countByEnumeratingWithState:&v134 objects:buf count:16];
    if (v21)
    {
      v22 = *v135;
      while (2)
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v135 != v22)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v24 = *(*(&v134 + 1) + 8 * i);
          v25 = [objc_alloc(MEMORY[0x1E695D638]) initWithContentsOfURL:v24];
          if (!v25)
          {
            v30 = getWFDatabaseLogObject();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
            {
              *v142 = 136315394;
              v143 = "WFManagedObjectModelsFromCurrentToLatest";
              v144 = 2114;
              v145 = v24;
              _os_log_impl(&dword_1CA256000, v30, OS_LOG_TYPE_FAULT, "%s Failed to create managed object model from URL %{public}@", v142, 0x16u);
            }

            goto LABEL_37;
          }

          [v120 addObject:v25];
          versionIdentifiers = [v25 versionIdentifiers];
          anyObject = [versionIdentifiers anyObject];
          isEqualToString = objc_msgSend_isEqualToString_(anyObject);

          if (isEqualToString)
          {
            goto LABEL_30;
          }
        }

        v21 = [reverseObjectEnumerator countByEnumeratingWithState:&v134 objects:buf count:16];
        if (v21)
        {
          continue;
        }

        break;
      }
    }

LABEL_30:

    v29 = [v120 count];
    if (v29 == [reverseObjectEnumerator count])
    {
      reverseObjectEnumerator = getWFDatabaseLogObject();
      if (os_log_type_enabled(reverseObjectEnumerator, OS_LOG_TYPE_DEFAULT))
      {
        *v142 = 136315138;
        v143 = "WFManagedObjectModelsFromCurrentToLatest";
        _os_log_impl(&dword_1CA256000, reverseObjectEnumerator, OS_LOG_TYPE_DEFAULT, "%s None of the models are compatible with with the store metadata, the database was likely truncated before.", v142, 0xCu);
      }

LABEL_37:
      allObjects = MEMORY[0x1E695E0F0];
    }

    else
    {
      reverseObjectEnumerator = [v120 reverseObjectEnumerator];
      allObjects = [reverseObjectEnumerator allObjects];
    }
  }

  else
  {
    v14 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v147 = "WFManagedObjectModelsFromCurrentToLatest";
      v148 = 2114;
      v149 = context;
      v150 = 2114;
      v151 = v109;
      _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_ERROR, "%s Failed to get model URLs in directory %{public}@: %{public}@", buf, 0x20u);
    }

    if (error)
    {
      v15 = v109;
      *error = v109;
    }

    allObjects = MEMORY[0x1E695E0F0];
  }

  if ([allObjects count]<= 1)
  {
    oslog = getWFDatabaseLogObject();
    v13 = 1;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      v31 = [allObjects count];
      *buf = 136315394;
      v147 = "+[WFProgressiveCoreDataMigrator migrateDatabaseAtPersistentStoreDescription:error:]";
      v148 = 2050;
      v149 = v31;
      _os_log_impl(&dword_1CA256000, oslog, OS_LOG_TYPE_INFO, "%s Found %{public}lu models, Core Data migration not necessary, bailing out.", buf, 0x16u);
    }

    goto LABEL_121;
  }

  oslog = [MEMORY[0x1E6996F68] createTemporaryDirectoryWithFilename:@"ProgressiveMigration"];
  if (!oslog)
  {
    v36 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v147 = "+[WFProgressiveCoreDataMigrator migrateDatabaseAtPersistentStoreDescription:error:]";
      _os_log_impl(&dword_1CA256000, v36, OS_LOG_TYPE_ERROR, "%s Failed to perform Core Data migration because a temporary directory could not be created.", buf, 0xCu);
    }

    goto LABEL_112;
  }

  firstObject2 = [allObjects firstObject];
  v33 = [firstObject2 isConfiguration:0 compatibleWithStoreMetadata:v111];

  if ((v33 & 1) == 0)
  {
    v34 = objc_alloc(MEMORY[0x1E695D6C0]);
    firstObject3 = [allObjects firstObject];
    v36 = [v34 initWithManagedObjectModel:firstObject3];

    v37 = *MEMORY[0x1E695D318];
    v140[0] = *MEMORY[0x1E695D380];
    v140[1] = v37;
    v141[0] = MEMORY[0x1E695E118];
    v141[1] = MEMORY[0x1E695E118];
    v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v141 forKeys:v140 count:2];
    type = [descriptionCopy type];
    configuration = [descriptionCopy configuration];
    v41 = [descriptionCopy URL];
    v42 = [v36 addPersistentStoreWithType:type configuration:configuration URL:v41 options:v38 error:error];
    v43 = v42 == 0;

    if (!v43)
    {

      goto LABEL_46;
    }

    v91 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v147 = "+[WFProgressiveCoreDataMigrator migrateDatabaseAtPersistentStoreDescription:error:]";
      _os_log_impl(&dword_1CA256000, v91, OS_LOG_TYPE_ERROR, "%s Failed to perform Core Data migration because current model can not be mapped to the same version's model", buf, 0xCu);
    }

LABEL_112:
    v13 = 0;
    goto LABEL_120;
  }

LABEL_46:
  v44 = objc_alloc(MEMORY[0x1E695D6C0]);
  lastObject = [allObjects lastObject];
  v46 = [v44 initWithManagedObjectModel:lastObject];

  v47 = objc_opt_new();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__WFProgressiveCoreDataMigrator_migrateDatabaseAtPersistentStoreDescription_error___block_invoke;
  aBlock[3] = &unk_1E837F870;
  v106 = v47;
  v131 = v106;
  v97 = v46;
  v132 = v97;
  v98 = _Block_copy(aBlock);
  v48 = getWFDatabaseLogObject();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v147 = "+[WFProgressiveCoreDataMigrator migrateDatabaseAtPersistentStoreDescription:error:]";
    _os_log_impl(&dword_1CA256000, v48, OS_LOG_TYPE_INFO, "%s Starting Core Data migration", buf, 0xCu);
  }

  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  v50 = 0;
  v51 = 0;
  v52 = allObjects;
  while (v50 < [v52 count]- 1)
  {
    contexta = objc_autoreleasePoolPush();
    v53 = [allObjects objectAtIndexedSubscript:v50];
    v54 = v50 + 1;
    v121 = [allObjects objectAtIndexedSubscript:v54];
    lastObject2 = [v106 lastObject];
    v56 = lastObject2;
    v57 = v116;
    if (lastObject2)
    {
      v57 = lastObject2;
    }

    v119 = v57;

    v112 = v54 - 1;
    v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Shortcuts-%@-%lu.sqlite", uUIDString, v54 - 1];
    v59 = [oslog URLByAppendingPathComponent:v58];

    v60 = MEMORY[0x1E695D648];
    v139 = v115;
    v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v139 count:1];
    v62 = [v60 mappingModelFromBundles:v61 forSourceModel:v53 destinationModel:v121];

    if (v62)
    {
      v63 = v51;
    }

    else
    {
      v64 = getWFDatabaseLogObject();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v147 = "+[WFProgressiveCoreDataMigrator migrateDatabaseAtPersistentStoreDescription:error:]";
        _os_log_impl(&dword_1CA256000, v64, OS_LOG_TYPE_DEFAULT, "%s Could not find explicit mapping model, trying to construct inferred one", buf, 0xCu);
      }

      v129 = v51;
      v62 = [MEMORY[0x1E695D648] inferredMappingModelForSourceModel:v53 destinationModel:v121 error:&v129];
      v63 = v129;

      if (!v62)
      {
        v62 = getWFDatabaseLogObject();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v147 = "+[WFProgressiveCoreDataMigrator migrateDatabaseAtPersistentStoreDescription:error:]";
          _os_log_impl(&dword_1CA256000, v62, OS_LOG_TYPE_ERROR, "%s Failed to create mapping model, bailing out", buf, 0xCu);
        }

        v83 = 0;
        v51 = v63;
        goto LABEL_99;
      }
    }

    versionIdentifiers2 = [v53 versionIdentifiers];
    anyObject2 = [versionIdentifiers2 anyObject];

    if (anyObject2)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v67 = anyObject2;
      }

      else
      {
        v67 = 0;
      }
    }

    else
    {
      v67 = 0;
    }

    v110 = v67;

    versionIdentifiers3 = [v121 versionIdentifiers];
    anyObject3 = [versionIdentifiers3 anyObject];

    if (anyObject3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v70 = anyObject3;
      }

      else
      {
        v70 = 0;
      }
    }

    else
    {
      v70 = 0;
    }

    v71 = v70;

    v72 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v147 = "+[WFProgressiveCoreDataMigrator migrateDatabaseAtPersistentStoreDescription:error:]";
      v148 = 2114;
      v149 = v71;
      _os_log_impl(&dword_1CA256000, v72, OS_LOG_TYPE_INFO, "%s Migrating to schema with identifier %{public}@", buf, 0x16u);
    }

    v73 = [self customModificationsStepForSchemaWithIdentifier:v71];
    if (objc_opt_respondsToSelector())
    {
      v128 = v63;
      v126[0] = MEMORY[0x1E69E9820];
      v126[1] = 3221225472;
      v126[2] = __83__WFProgressiveCoreDataMigrator_migrateDatabaseAtPersistentStoreDescription_error___block_invoke_178;
      v126[3] = &unk_1E83754E8;
      v127 = v73;
      v74 = WFPerformCustomModificationsStep(v53, v119, &v128, v126);
      v51 = v128;

      if (!v74)
      {
        v85 = getWFDatabaseLogObject();
        if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v147 = "+[WFProgressiveCoreDataMigrator migrateDatabaseAtPersistentStoreDescription:error:]";
          v148 = 2114;
          v149 = v71;
          v150 = 2114;
          v151 = v51;
          _os_log_impl(&dword_1CA256000, v85, OS_LOG_TYPE_ERROR, "%s Failed to perform custom database modifications for Core Data schema with identifier %{public}@: %{public}@", buf, 0x20u);
        }

        v83 = 0;
        v77 = v127;
        goto LABEL_98;
      }
    }

    else
    {
      v51 = v63;
    }

    if ((objc_msgSend_isEqualToString_(v71) & 1) != 0 || objc_msgSend_isEqualToString_(v71))
    {
      v75 = MEMORY[0x1E696B0A0];
      v76 = objc_opt_new();
      [v75 setValueTransformer:v76 forName:@"WFOrderedSetValue"];
    }

    v77 = [objc_alloc(MEMORY[0x1E695D658]) initWithSourceModel:v53 destinationModel:v121];
    v125 = v51;
    v78 = [v77 migrateStoreFromURL:v119 type:v103 options:0 withMappingModel:v62 toDestinationURL:v59 destinationType:v103 destinationOptions:0 error:&v125];
    v79 = v125;

    if ((v78 & 1) == 0)
    {
      v84 = getWFDatabaseLogObject();
      if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v147 = "+[WFProgressiveCoreDataMigrator migrateDatabaseAtPersistentStoreDescription:error:]";
        v148 = 2114;
        v149 = v110;
        v150 = 2114;
        v151 = v71;
        v152 = 2114;
        v153 = v79;
        _os_log_impl(&dword_1CA256000, v84, OS_LOG_TYPE_ERROR, "%s Failed to migrate from schema with identifier %{public}@ to %{public}@. Error: %{public}@", buf, 0x2Au);
      }

      v83 = 0;
      goto LABEL_96;
    }

    [v106 addObject:v59];
    if (v73)
    {
      v80 = getWFDatabaseLogObject();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v147 = "+[WFProgressiveCoreDataMigrator migrateDatabaseAtPersistentStoreDescription:error:]";
        v148 = 2114;
        v149 = v71;
        _os_log_impl(&dword_1CA256000, v80, OS_LOG_TYPE_INFO, "%s Running custom modifications step after migrating to schema with identifier %{public}@", buf, 0x16u);
      }

      v124 = v79;
      v122[0] = MEMORY[0x1E69E9820];
      v122[1] = 3221225472;
      v122[2] = __83__WFProgressiveCoreDataMigrator_migrateDatabaseAtPersistentStoreDescription_error___block_invoke_192;
      v122[3] = &unk_1E83754E8;
      v123 = v73;
      v81 = WFPerformCustomModificationsStep(v121, v59, &v124, v122);
      v82 = v124;

      if (v81)
      {
        v83 = 1;
      }

      else
      {
        v86 = getWFDatabaseLogObject();
        if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v147 = "+[WFProgressiveCoreDataMigrator migrateDatabaseAtPersistentStoreDescription:error:]";
          v148 = 2114;
          v149 = v71;
          v150 = 2114;
          v151 = v82;
          _os_log_impl(&dword_1CA256000, v86, OS_LOG_TYPE_ERROR, "%s Failed to perform custom database modifications for Core Data schema with identifier %{public}@: %{public}@", buf, 0x20u);
        }

        v83 = 0;
      }

      v84 = v123;
      v79 = v82;
LABEL_96:

      goto LABEL_97;
    }

    v83 = 1;
LABEL_97:
    v51 = v79;
LABEL_98:

LABEL_99:
    objc_autoreleasePoolPop(contexta);
    v52 = allObjects;
    v50 = v112 + 1;
    if ((v83 & 1) == 0)
    {
      break;
    }
  }

  if (v51)
  {
    if (error)
    {
      v87 = v51;
      v13 = 0;
      *error = v51;
      goto LABEL_119;
    }

LABEL_118:
    v13 = 0;
  }

  else
  {
    lastObject3 = [v106 lastObject];
    v89 = [v97 replacePersistentStoreAtURL:v116 destinationOptions:0 withPersistentStoreFromURL:lastObject3 sourceOptions:0 storeType:v103 error:error];

    if ((v89 & 1) == 0)
    {
      v92 = getWFDatabaseLogObject();
      if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
      {
        lastObject4 = [v106 lastObject];
        v94 = lastObject4;
        errorCopy = error;
        if (error)
        {
          errorCopy = *error;
        }

        *buf = 136315906;
        v147 = "+[WFProgressiveCoreDataMigrator migrateDatabaseAtPersistentStoreDescription:error:]";
        v148 = 2114;
        v149 = v116;
        v150 = 2114;
        v151 = lastObject4;
        v152 = 2114;
        v153 = errorCopy;
        _os_log_impl(&dword_1CA256000, v92, OS_LOG_TYPE_ERROR, "%s Failed to replace persistent store at %{public}@ with %{public}@. Error: %{public}@", buf, 0x2Au);
      }

      goto LABEL_118;
    }

    v90 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v147 = "+[WFProgressiveCoreDataMigrator migrateDatabaseAtPersistentStoreDescription:error:]";
      _os_log_impl(&dword_1CA256000, v90, OS_LOG_TYPE_INFO, "%s Core Data migration completed successfully", buf, 0xCu);
    }

    v13 = 1;
  }

LABEL_119:

  v98[2]();
  v36 = v97;
LABEL_120:

LABEL_121:
  v12 = allObjects;
LABEL_122:

  return v13;
}

void __83__WFProgressiveCoreDataMigrator_migrateDatabaseAtPersistentStoreDescription_error___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    v6 = *MEMORY[0x1E695D4A8];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = objc_autoreleasePoolPush();
        v10 = *(a1 + 40);
        v14 = 0;
        v11 = [v10 destroyPersistentStoreAtURL:v8 withType:v6 options:0 error:&v14];
        v12 = v14;
        if ((v11 & 1) == 0)
        {
          v13 = getWFDatabaseLogObject();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v20 = "+[WFProgressiveCoreDataMigrator migrateDatabaseAtPersistentStoreDescription:error:]_block_invoke";
            v21 = 2114;
            v22 = v12;
            _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_ERROR, "%s Failed to destroy temporary persistent store after migration: %{public}@", buf, 0x16u);
          }
        }

        objc_autoreleasePoolPop(v9);
      }

      v4 = [v2 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v4);
  }
}

+ (id)customModificationsStepForSchemaWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ((objc_msgSend_isEqualToString_(identifierCopy) & 1) != 0 || (objc_msgSend_isEqualToString_(identifierCopy) & 1) != 0 || (objc_msgSend_isEqualToString_(identifierCopy) & 1) != 0 || (objc_msgSend_isEqualToString_(identifierCopy) & 1) != 0 || objc_msgSend_isEqualToString_(identifierCopy))
  {
    v4 = objc_opt_new();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end