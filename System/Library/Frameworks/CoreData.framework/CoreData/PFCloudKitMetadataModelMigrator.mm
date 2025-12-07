@interface PFCloudKitMetadataModelMigrator
- (PFCloudKitMetadataModelMigrator)initWithStore:(id)store metadataContext:(id)context databaseScope:(int64_t)scope metricsClient:(id)client;
- (uint64_t)addMigrationStatementForAddingAttribute:(_BYTE *)attribute toContext:(uint64_t)context inStore:(void *)store;
- (uint64_t)calculateMigrationStepsWithConnection:(void *)connection error:;
- (uint64_t)checkAndPerformMigrationIfNecessary:(uint64_t *)necessary;
- (uint64_t)checkForCorruptedRecordMetadataInStore:(void *)store inManagedObjectContext:(void *)context error:;
- (uint64_t)checkForOrphanedMirroredRelationshipsInStore:(void *)store inManagedObjectContext:(void *)context error:;
- (uint64_t)cleanUpAfterClientMigrationWithStore:(void *)store andContext:(void *)context error:;
- (uint64_t)computeAncillaryEntityPrimaryKeyTableEntriesForStore:(void *)store error:;
- (uint64_t)moveBinaryDataFromColumn:(uint64_t)column forAttribute:(uint64_t)attribute toMetadataAsset:(uint64_t)asset byRelationshipNamed:(void *)named error:;
- (void)addMigrationStatementForAddingRelationship:(void *)relationship toContext:(uint64_t)context inStore:(void *)store;
- (void)addMigrationStatementToContext:(uint64_t)context forRenamingAttributeNamed:(uint64_t)named withOldColumnName:(void *)name toAttributeName:(uint64_t)attributeName onOldSQLEntity:(uint64_t)entity andCurrentSQLEntity:(id *)lEntity;
- (void)dealloc;
@end

@implementation PFCloudKitMetadataModelMigrator

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PFCloudKitMetadataModelMigrator;
  [(PFCloudKitMetadataModelMigrator *)&v3 dealloc];
}

- (PFCloudKitMetadataModelMigrator)initWithStore:(id)store metadataContext:(id)context databaseScope:(int64_t)scope metricsClient:(id)client
{
  v13.receiver = self;
  v13.super_class = PFCloudKitMetadataModelMigrator;
  v10 = [(PFCloudKitMetadataModelMigrator *)&v13 init];
  if (v10)
  {
    v10->_store = store;
    contextCopy = context;
    v10->_metadataContext = contextCopy;
    [(NSManagedObjectContext *)contextCopy setTransactionAuthor:@"NSCloudKitMirroringDelegate.migration"];
    v10->_context = objc_alloc_init(PFCloudKitMetadataMigrationContext);
    v10->_databaseScope = scope;
    v10->_metricsClient = client;
  }

  return v10;
}

_DWORD *__70__PFCloudKitMetadataModelMigrator_prepareContextWithConnection_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) entityNamed:a2];
  if (a3)
  {
    v8 = *(a3 + 184);
    if (result)
    {
LABEL_3:
      v9 = result[46];
      goto LABEL_4;
    }
  }

  else
  {
    v8 = 0;
    if (result)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_4:
  if (v8 != v9)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (uint64_t)computeAncillaryEntityPrimaryKeyTableEntriesForStore:(void *)store error:
{
  v20 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 1;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __94__PFCloudKitMetadataModelMigrator_computeAncillaryEntityPrimaryKeyTableEntriesForStore_error___block_invoke;
    v11[3] = &unk_1E6EC3818;
    v11[4] = a2;
    v11[5] = &v12;
    v5 = [[NSSQLBlockRequestContext alloc] initWithBlock:v11 context:0 sqlCore:a2];
    [(NSSQLCore *)a2 dispatchRequest:v5 withRetries:0];

    if ((v13[3] & 1) == 0)
    {
      v8 = 0;
      if (v8)
      {
        if (store)
        {
          *store = v8;
        }
      }

      else
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v17 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataModelMigrator.m";
          v18 = 1024;
          v19 = 1455;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
        }

        v10 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v17 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataModelMigrator.m";
          v18 = 1024;
          v19 = 1455;
          _os_log_fault_impl(&dword_18565F000, v10, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
        }
      }
    }

    v6 = *(v13 + 24);
    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void __70__PFCloudKitMetadataModelMigrator_prepareContextWithConnection_error___block_invoke_8(void *a1)
{
  v29[1] = *MEMORY[0x1E69E9840];
  v27[0] = 0;
  v29[0] = @"PFCloudKitMetadataFrameworkVersionKey";
  v2 = [+[NSCKMetadataEntry entriesForKeys:onlyFetchingProperties:fromStore:inManagedObjectContext:error:](NSCKMetadataEntry objc_msgSend(MEMORY[0x1E695DEC8]];
  v3 = v27[0];
  if (v27[0])
  {
    *(*(a1[5] + 8) + 24) = 0;
    *(*(a1[6] + 8) + 40) = v3;
  }

  else if (v2)
  {
    v5 = [v2 integerValue];
    v6 = *(a1[4] + 24);
    if (v6)
    {
      objc_setProperty_nonatomic(v6, v4, v5, 96);
      v7 = *(a1[4] + 24);
      if (v7)
      {
        v6 = *(v7 + 96);
      }

      else
      {
        v6 = 0;
      }
    }

    v8 = [v6 integerValue];
    v9 = *(a1[4] + 24);
    if (v9 && (*(v9 + 49) = v8 < 940, (v10 = *(a1[4] + 24)) != 0))
    {
      v11 = *(v10 + 96);
    }

    else
    {
      v11 = 0;
    }

    v12 = [v11 integerValue];
    v13 = *(a1[4] + 24);
    if (v13 && (*(v13 + 53) = v12 < 1028, (v14 = *(a1[4] + 24)) != 0))
    {
      v15 = *(v14 + 96);
    }

    else
    {
      v15 = 0;
    }

    v16 = [v15 integerValue];
    v17 = *(a1[4] + 24);
    if (v17 && (*(v17 + 55) = v16 < 1244, (v18 = *(a1[4] + 24)) != 0))
    {
      v19 = *(v18 + 96);
    }

    else
    {
      v19 = 0;
    }

    v20 = [v19 integerValue];
    v21 = *(a1[4] + 24);
    if (v21)
    {
      *(v21 + 56) = v20 < 1336;
    }
  }

  if (*(*(a1[5] + 8) + 24) == 1)
  {
    v28 = @"PFCloudKitMetadataModelVersionHashesKey";
    v22 = [+[NSCKMetadataEntry entriesForKeys:onlyFetchingProperties:fromStore:inManagedObjectContext:error:](NSCKMetadataEntry objc_msgSend(MEMORY[0x1E695DEC8]];
    v23 = v27[0];
    if (v27[0])
    {
      *(*(a1[5] + 8) + 24) = 0;
      *(*(a1[6] + 8) + 40) = v23;
    }

    else
    {
      v25 = [v22 transformedValue];
      v26 = *(a1[4] + 24);
      if (v26)
      {
        objc_setProperty_nonatomic(v26, v24, v25, 104);
      }
    }
  }
}

- (uint64_t)calculateMigrationStepsWithConnection:(void *)connection error:
{
  v407 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    v274 = 0;
    return v274 & 1;
  }

  v368 = 0;
  v369 = &v368;
  v370 = 0x2020000000;
  v371 = 1;
  v362 = 0;
  v363 = &v362;
  v364 = 0x3052000000;
  v365 = __Block_byref_object_copy__50;
  v366 = __Block_byref_object_dispose__50;
  v367 = 0;
  v4 = self[3];
  if (v4)
  {
    if (*(v4 + 50))
    {
      adapter = [a2 adapter];
      v372 = 0u;
      v373 = 0u;
      v374 = 0u;
      v375 = 0u;
      v6 = [&unk_1EF43D888 countByEnumeratingWithState:&v372 objects:buf count:16];
      if (v6)
      {
        v7 = *v373;
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v373 != v7)
            {
              objc_enumerationMutation(&unk_1EF43D888);
            }

            v9 = [(NSSQLiteAdapter *)adapter newDropTableStatementForTableNamed:?];
            [*(v4 + 8) addObject:v9];
            *(v4 + 48) = 1;
          }

          v6 = [&unk_1EF43D888 countByEnumeratingWithState:&v372 objects:buf count:16];
        }

        while (v6);
      }

      v4 = self[3];
      v358 = 0u;
      v359 = 0u;
      v360 = 0u;
      v361 = 0u;
      if (!v4)
      {
        goto LABEL_487;
      }
    }

    else
    {
      v361 = 0u;
      v360 = 0u;
      v359 = 0u;
      v358 = 0u;
    }

    v10 = *(v4 + 72);
    if (!v10)
    {
LABEL_487:
      v11 = 0;
      goto LABEL_16;
    }

    v11 = *(v10 + 32);
  }

  else
  {
    v11 = 0;
    v361 = 0u;
    v360 = 0u;
    v359 = 0u;
    v358 = 0u;
  }

LABEL_16:
  obj = v11;
  v12 = [v11 countByEnumeratingWithState:&v358 objects:v397 count:16];
  if (!v12)
  {
    goto LABEL_475;
  }

  v285 = *v359;
  do
  {
    v291 = 0;
    v286 = v12;
    do
    {
      if (*v359 != v285)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v358 + 1) + 8 * v291);
      context = objc_autoreleasePoolPush();
      v287 = *(v369 + 24);
      if (!*(v369 + 24))
      {
        goto LABEL_169;
      }

      tableName = [v13 tableName];
      if (!a2 || ([(NSSQLiteConnection *)a2 _hasTableWithName:tableName isTemp:0]& 1) == 0)
      {
        [(PFCloudKitMetadataMigrationContext *)self[3] addSQLEntityToCreate:v13];
        goto LABEL_169;
      }

      if (!-[NSSQLiteConnection _tableHasRows:](a2, [v13 tableName]))
      {
        v34 = -[NSSQLiteAdapter newDropTableStatementForTableNamed:]([a2 adapter], objc_msgSend(v13, "tableName"));
        v35 = self[3];
        if (v35)
        {
          [*(v35 + 8) addObject:v34];
          *(v35 + 48) = 1;
        }

        goto LABEL_168;
      }

      v15 = [PFCloudKitMetadataMigrationSQLUtilities fetchSchemaSQLForEntity:v13 usingConnection:a2];
      v292 = [PFCloudKitMetadataMigrationSQLUtilities columnNamesFromCreateStatement:v15];
      [self[3] addColumnNames:v292 forTableName:{objc_msgSend(v13, "tableName")}];
      name = [v13 name];
      v17 = objc_opt_class();
      if (([name isEqualToString:NSStringFromClass(v17)] & 1) == 0)
      {
        name2 = [v13 name];
        v19 = objc_opt_class();
        if (![name2 isEqualToString:NSStringFromClass(v19)])
        {
          name3 = [v13 name];
          v62 = objc_opt_class();
          if (![name3 isEqualToString:NSStringFromClass(v62)])
          {
            goto LABEL_163;
          }

          v63 = self[2];
          v345[0] = MEMORY[0x1E69E9820];
          v345[1] = 3221225472;
          v345[2] = __79__PFCloudKitMetadataModelMigrator_calculateMigrationStepsWithConnection_error___block_invoke;
          v345[3] = &unk_1E6EC5650;
          v345[4] = self;
          v345[5] = v13;
          v345[6] = &v362;
          v345[7] = &v368;
          [v63 performBlockAndWait:v345];
          v344 = 0u;
          v342 = 0u;
          v343 = 0u;
          v341 = 0u;
          v64 = [&unk_1EF43D750 countByEnumeratingWithState:&v341 objects:v393 count:16];
          if (v64)
          {
            v65 = *v342;
            do
            {
              v66 = 0;
              do
              {
                if (*v342 != v65)
                {
                  objc_enumerationMutation(&unk_1EF43D750);
                }

                if (v13)
                {
                  v67 = [v13[5] objectForKey:*(*(&v341 + 1) + 8 * v66)];
                }

                else
                {
                  v67 = 0;
                }

                if (([v292 containsObject:{objc_msgSend(v67, "columnName")}] & 1) == 0)
                {
                  [PFCloudKitMetadataModelMigrator addMigrationStatementForAddingRelationship:v67 toContext:self[3] inStore:self[1]];
                }

                ++v66;
              }

              while (v64 != v66);
              v68 = [&unk_1EF43D750 countByEnumeratingWithState:&v341 objects:v393 count:16];
              v64 = v68;
            }

            while (v68);
          }

          if ([v292 containsObject:@"ZENCODEDSHAREDATA"])
          {
            v69 = [[NSSQLColumn alloc] initWithColumnName:@"ZENCODEDSHAREDATA" sqlType:16];
            v70 = v69;
            if (v69)
            {
              v69->super._entity = v13;
            }

            v71 = self[3];
            if (v71)
            {
              [*(v71 + 32) addObject:v69];
            }
          }

          v72 = self[3];
          if (v72)
          {
            [*(v72 + 24) addObject:v13];
          }

          adapter2 = [a2 adapter];
          if (adapter2)
          {
            v74 = [(NSSQLiteAdapter *)adapter2 newCreateIndexStatementsForEntity:v13 defaultIndicesOnly:0];
          }

          else
          {
            v74 = 0;
          }

          v339 = 0u;
          v340 = 0u;
          v337 = 0u;
          v338 = 0u;
          v75 = [v74 countByEnumeratingWithState:&v337 objects:v392 count:16];
          if (v75)
          {
            v76 = *v338;
            do
            {
              for (j = 0; j != v75; ++j)
              {
                if (*v338 != v76)
                {
                  objc_enumerationMutation(v74);
                }

                v78 = self[3];
                if (v78)
                {
                  [*(v78 + 8) addObject:*(*(&v337 + 1) + 8 * j)];
                  *(v78 + 48) = 1;
                }
              }

              v75 = [v74 countByEnumeratingWithState:&v337 objects:v392 count:16];
            }

            while (v75);
          }

LABEL_162:

          goto LABEL_163;
        }
      }

      v20 = self[3];
      if (v20)
      {
        v21 = *(v20 + 88);
      }

      else
      {
        v21 = 0;
      }

      v22 = [v21 entityNamed:{objc_msgSend(v13, "name")}];
      if ([v292 containsObject:@"ZENTITYNAME"])
      {
        [PFCloudKitMetadataModelMigrator addMigrationStatementToContext:@"entityName" forRenamingAttributeNamed:@"ZENTITYNAME" withOldColumnName:@"cdEntityName" toAttributeName:v22 onOldSQLEntity:v13 andCurrentSQLEntity:?];
      }

      if ([v292 containsObject:@"ZISDELETED"])
      {
        [PFCloudKitMetadataModelMigrator addMigrationStatementToContext:@"isDeleted" forRenamingAttributeNamed:@"ZISDELETED" withOldColumnName:@"needsDelete" toAttributeName:v22 onOldSQLEntity:v13 andCurrentSQLEntity:?];
      }

      name4 = [v13 name];
      v24 = objc_opt_class();
      if ([name4 isEqualToString:NSStringFromClass(v24)])
      {
        if (v13)
        {
          v25 = [v13[5] objectForKey:@"recordZone"];
        }

        else
        {
          v25 = 0;
        }

        if (([v292 containsObject:{objc_msgSend(v25, "columnName")}] & 1) == 0)
        {
          v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"ALTER TABLE %@ ADD COLUMN %@ INTEGER", objc_msgSend(v13, "tableName"), objc_msgSend(v25, "columnName")];
          v27 = [[NSSQLiteStatement alloc] initWithEntity:v13 sqlString:v26];
          v28 = self[3];
          if (v28)
          {
            [*(v28 + 8) addObject:v27];
            *(v28 + 48) = 1;
            v29 = self[3];
            if (v29)
            {
              *(v29 + 51) = 1;
            }
          }

          v30 = self[2];
          v31 = self[3];
          v32 = v363;
          v376 = 0;
          v377 = &v376;
          v378 = 0x2020000000;
          v379 = 1;
          *&v372 = 0;
          *(&v372 + 1) = &v372;
          *&v373 = 0x3052000000;
          *(&v373 + 1) = __Block_byref_object_copy__50;
          *&v374 = __Block_byref_object_dispose__50;
          *(&v374 + 1) = 0;
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = __149__PFCloudKitMetadataModelMigrator_addMigrationStatementsToDeleteDuplicateMirroredRelationshipsToContext_withManagedObjectContext_andSQLEntity_error___block_invoke;
          *&buf[24] = &unk_1E6EC56F0;
          *&buf[32] = v30;
          v399 = v13;
          v401 = &v372;
          v400 = v31;
          v402 = &v376;
          [v30 performBlockAndWait:buf];
          if ((v377[3] & 1) == 0)
          {
            v33 = *(*(&v372 + 1) + 40);
            if (v33)
            {
              v32[5] = v33;
            }

            else
            {
              LogStream = _PFLogGetLogStream(17);
              if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
              {
                *v403 = 136315394;
                v404 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataModelMigrator.m";
                v405 = 1024;
                v406 = 1956;
                _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", v403, 0x12u);
              }

              v80 = _PFLogGetLogStream(17);
              if (os_log_type_enabled(v80, OS_LOG_TYPE_FAULT))
              {
                *v403 = 136315394;
                v404 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataModelMigrator.m";
                v405 = 1024;
                v406 = 1956;
                _os_log_fault_impl(&dword_18565F000, v80, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", v403, 0x12u);
              }
            }
          }

          *(*(&v372 + 1) + 40) = 0;
          v81 = *(v377 + 24);
          _Block_object_dispose(&v372, 8);
          _Block_object_dispose(&v376, 8);
          if (v81)
          {
            v82 = 1;
            goto LABEL_129;
          }

          *(v369 + 24) = 0;
          v83 = v363[5];
        }

        v82 = 0;
LABEL_129:
        if ([v292 containsObject:@"ZCKRECORDSYSTEMFIELDS"])
        {
          v84 = [[NSSQLColumn alloc] initWithColumnName:@"ZCKRECORDSYSTEMFIELDS" sqlType:16];
          v85 = v84;
          if (v84)
          {
            v84->super._entity = v13;
          }

          v86 = self[3];
          if (v86)
          {
            [*(v86 + 32) addObject:v84];
          }
        }

        if (*(v369 + 24) == 1)
        {
          v357 = 0u;
          v356 = 0u;
          v355 = 0u;
          v354 = 0u;
          v87 = [&unk_1EF43D708 countByEnumeratingWithState:&v354 objects:v396 count:16];
          if (v87)
          {
            v88 = *v355;
            do
            {
              v89 = 0;
              do
              {
                if (*v355 != v88)
                {
                  objc_enumerationMutation(&unk_1EF43D708);
                }

                if (v13)
                {
                  v90 = [v13[5] objectForKey:*(*(&v354 + 1) + 8 * v89)];
                }

                else
                {
                  v90 = 0;
                }

                if (([v292 containsObject:{objc_msgSend(v90, "columnName")}] & 1) == 0)
                {
                  [PFCloudKitMetadataModelMigrator addMigrationStatementForAddingRelationship:v90 toContext:self[3] inStore:self[1]];
                  v82 = 1;
                }

                ++v89;
              }

              while (v87 != v89);
              v91 = [&unk_1EF43D708 countByEnumeratingWithState:&v354 objects:v396 count:16];
              v87 = v91;
            }

            while (v91);
          }
        }

        if (*(v369 + 24) == 1 && (v82 & 1) != 0)
        {
          adapter3 = [a2 adapter];
          if (adapter3)
          {
            v74 = [(NSSQLiteAdapter *)adapter3 newCreateIndexStatementsForEntity:v13 defaultIndicesOnly:0];
          }

          else
          {
            v74 = 0;
          }

          v353 = 0u;
          v352 = 0u;
          v351 = 0u;
          v350 = 0u;
          v93 = [v74 countByEnumeratingWithState:&v350 objects:v395 count:16];
          if (v93)
          {
            v94 = *v351;
            do
            {
              for (k = 0; k != v93; ++k)
              {
                if (*v351 != v94)
                {
                  objc_enumerationMutation(v74);
                }

                v96 = self[3];
                if (v96)
                {
                  [*(v96 + 8) addObject:*(*(&v350 + 1) + 8 * k)];
                  *(v96 + 48) = 1;
                }
              }

              v93 = [v74 countByEnumeratingWithState:&v350 objects:v395 count:16];
            }

            while (v93);
          }

          goto LABEL_162;
        }

        goto LABEL_163;
      }

      name5 = [v13 name];
      v37 = objc_opt_class();
      if ([name5 isEqualToString:NSStringFromClass(v37)])
      {
        v349 = 0u;
        v348 = 0u;
        v347 = 0u;
        v346 = 0u;
        v38 = [&unk_1EF43D720 countByEnumeratingWithState:&v346 objects:v394 count:16];
        if (v38)
        {
          v39 = *v347;
          do
          {
            v40 = 0;
            do
            {
              if (*v347 != v39)
              {
                objc_enumerationMutation(&unk_1EF43D720);
              }

              v41 = *(*(&v346 + 1) + 8 * v40);
              if (v13)
              {
                v42 = [v13[5] objectForKey:*(*(&v346 + 1) + 8 * v40)];
              }

              else
              {
                v42 = 0;
              }

              if ([v292 containsObject:{objc_msgSend(v42, "columnName")}])
              {
                v43 = objc_autoreleasePoolPush();
                Stream = __PFCloudKitLoggingGetStream();
                v45 = Stream;
                if (__ckLoggingOverride == 17)
                {
                  v46 = 17;
                }

                else
                {
                  v46 = 2;
                }

                if (__ckLoggingOverride == 16)
                {
                  v46 = 16;
                }

                if (__ckLoggingOverride == 1)
                {
                  v47 = 1;
                }

                else
                {
                  v47 = 2;
                }

                if (!__ckLoggingOverride)
                {
                  v47 = 0;
                }

                if (__ckLoggingOverride <= 0xFu)
                {
                  v48 = v47;
                }

                else
                {
                  v48 = v46;
                }

                if (os_log_type_enabled(Stream, v48))
                {
                  tableName2 = [v13 tableName];
                  columnName = [v42 columnName];
                  *buf = 136315906;
                  *&buf[4] = "[PFCloudKitMetadataModelMigrator calculateMigrationStepsWithConnection:error:]";
                  *&buf[12] = 1024;
                  *&buf[14] = 321;
                  *&buf[18] = 2112;
                  *&buf[20] = tableName2;
                  *&buf[28] = 2112;
                  *&buf[30] = columnName;
                  _os_log_impl(&dword_18565F000, v45, v48, "CoreData+CloudKit: %s(%d): Skipping migration for '%@' because it already has a column named '%@'", buf, 0x26u);
                }

                objc_autoreleasePoolPop(v43);
              }

              else
              {
                [PFCloudKitMetadataModelMigrator addMigrationStatementForAddingAttribute:v42 toContext:self[3] inStore:self[1]];
                if (([v41 isEqualToString:@"recordZoneName"] & 1) != 0 || objc_msgSend(v41, "isEqualToString:", @"relatedRecordZoneName"))
                {
                  v51 = [NSSQLiteStatement alloc];
                  v52 = -[NSSQLiteStatement initWithEntity:sqlString:](v51, "initWithEntity:sqlString:", v13, objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [v13 tableName], objc_msgSend(v42, "columnName"), @"com.apple.coredata.cloudkit.zone"));
                  v53 = self[3];
                  if (v53)
                  {
                    [*(v53 + 8) addObject:v52];
                    *(v53 + 48) = 1;
                  }

LABEL_76:

                  goto LABEL_77;
                }

                if (([v41 isEqualToString:@"recordZoneOwnerName"] & 1) != 0 || objc_msgSend(v41, "isEqualToString:", @"relatedRecordZoneOwnerName"))
                {
                  v54 = [NSSQLiteStatement alloc];
                  v55 = MEMORY[0x1E696AEC0];
                  tableName3 = [v13 tableName];
                  columnName2 = [v42 columnName];
                  CloudKitCKCurrentUserDefaultName = getCloudKitCKCurrentUserDefaultName();
                  v52 = [(NSSQLiteStatement *)v54 initWithEntity:v13 sqlString:objc_msgSend_stringWithFormat_(v55, tableName3, columnName2, CloudKitCKCurrentUserDefaultName)];
                  v59 = self[3];
                  if (v59)
                  {
                    [*(v59 + 8) addObject:v52];
                    *(v59 + 48) = 1;
                  }

                  goto LABEL_76;
                }
              }

LABEL_77:
              ++v40;
            }

            while (v38 != v40);
            v60 = [&unk_1EF43D720 countByEnumeratingWithState:&v346 objects:v394 count:16];
            v38 = v60;
          }

          while (v60);
        }
      }

LABEL_163:
      name6 = [v13 name];
      v98 = objc_opt_class();
      if ([name6 isEqualToString:NSStringFromClass(v98)] & 1) != 0 || (v99 = objc_msgSend(v13, "name"), v100 = objc_opt_class(), (objc_msgSend(v99, "isEqualToString:", NSStringFromClass(v100))) || (v101 = objc_msgSend(v13, "name"), v102 = objc_opt_class(), objc_msgSend(v101, "isEqualToString:", NSStringFromClass(v102))))
      {
        v34 = -[NSSQLiteAdapter newDropTableStatementForTableNamed:]([a2 adapter], objc_msgSend(v13, "tableName"));
        v103 = self[3];
        if (v103)
        {
          [*(v103 + 8) addObject:v34];
          *(v103 + 48) = 1;
        }

LABEL_168:

        [(PFCloudKitMetadataMigrationContext *)self[3] addSQLEntityToCreate:v13];
        goto LABEL_169;
      }

      name7 = [v13 name];
      v105 = objc_opt_class();
      if ([name7 isEqualToString:NSStringFromClass(v105)])
      {
        v335 = 0u;
        v336 = 0u;
        v333 = 0u;
        v334 = 0u;
        v106 = [&unk_1EF43D768 countByEnumeratingWithState:&v333 objects:v391 count:16];
        if (v106)
        {
          v107 = *v334;
          do
          {
            v108 = 0;
            do
            {
              if (*v334 != v107)
              {
                objc_enumerationMutation(&unk_1EF43D768);
              }

              if (v13)
              {
                v109 = [v13[5] objectForKey:*(*(&v333 + 1) + 8 * v108)];
              }

              else
              {
                v109 = 0;
              }

              if ([v292 containsObject:{objc_msgSend(v109, "columnName")}])
              {
                v110 = objc_autoreleasePoolPush();
                v111 = __PFCloudKitLoggingGetStream();
                v112 = v111;
                if (__ckLoggingOverride == 17)
                {
                  v113 = 17;
                }

                else
                {
                  v113 = 2;
                }

                if (__ckLoggingOverride == 16)
                {
                  v113 = 16;
                }

                if (__ckLoggingOverride == 1)
                {
                  v114 = 1;
                }

                else
                {
                  v114 = 2;
                }

                if (!__ckLoggingOverride)
                {
                  v114 = 0;
                }

                if (__ckLoggingOverride <= 0xFu)
                {
                  v115 = v114;
                }

                else
                {
                  v115 = v113;
                }

                if (os_log_type_enabled(v111, v115))
                {
                  tableName4 = [v13 tableName];
                  columnName3 = [v109 columnName];
                  *buf = 136315906;
                  *&buf[4] = "[PFCloudKitMetadataModelMigrator calculateMigrationStepsWithConnection:error:]";
                  *&buf[12] = 1024;
                  *&buf[14] = 406;
                  *&buf[18] = 2112;
                  *&buf[20] = tableName4;
                  *&buf[28] = 2112;
                  *&buf[30] = columnName3;
                  _os_log_impl(&dword_18565F000, v112, v115, "CoreData+CloudKit: %s(%d): Skipping migration for '%@' because it already has a column named '%@'", buf, 0x26u);
                }

                objc_autoreleasePoolPop(v110);
              }

              else
              {
                [PFCloudKitMetadataModelMigrator addMigrationStatementForAddingAttribute:v109 toContext:self[3] inStore:self[1]];
              }

              ++v108;
            }

            while (v106 != v108);
            v118 = [&unk_1EF43D768 countByEnumeratingWithState:&v333 objects:v391 count:16];
            v106 = v118;
          }

          while (v118);
        }

        v331 = 0u;
        v332 = 0u;
        v329 = 0u;
        v330 = 0u;
        v119 = [&unk_1EF43D780 countByEnumeratingWithState:&v329 objects:v390 count:16];
        if (v119)
        {
          v120 = *v330;
          do
          {
            for (m = 0; m != v119; ++m)
            {
              if (*v330 != v120)
              {
                objc_enumerationMutation(&unk_1EF43D780);
              }

              v122 = *(*(&v329 + 1) + 8 * m);
              if ([v292 containsObject:v122])
              {
                v123 = [[NSSQLColumn alloc] initWithColumnName:v122 sqlType:16];
                v124 = v123;
                if (v123)
                {
                  v123->super._entity = v13;
                }

                v125 = self[3];
                if (v125)
                {
                  [*(v125 + 32) addObject:v123];
                }

                if ([v122 isEqualToString:@"ZUNIQUEIDENTIFIER"])
                {
                  v126 = [[NSSQLiteStatement alloc] initWithEntity:v13 sqlString:@"DROP INDEX IF EXISTS Z_NSCKRecordMetadata_UNIQUE_uniqueIdentifier"];
                  v127 = self[3];
                  if (v127)
                  {
                    [*(v127 + 8) addObject:v126];
                    *(v127 + 48) = 1;
                  }
                }
              }
            }

            v119 = [&unk_1EF43D780 countByEnumeratingWithState:&v329 objects:v390 count:16];
          }

          while (v119);
        }

        v327 = 0u;
        v328 = 0u;
        v325 = 0u;
        v326 = 0u;
        v128 = [&unk_1EF43D798 countByEnumeratingWithState:&v325 objects:v389 count:16];
        if (v128)
        {
          v129 = *v326;
          do
          {
            v130 = 0;
            do
            {
              if (*v326 != v129)
              {
                objc_enumerationMutation(&unk_1EF43D798);
              }

              if (v13)
              {
                v131 = [v13[5] objectForKey:*(*(&v325 + 1) + 8 * v130)];
              }

              else
              {
                v131 = 0;
              }

              if (([v292 containsObject:{objc_msgSend(v131, "columnName")}] & 1) == 0)
              {
                [PFCloudKitMetadataModelMigrator addMigrationStatementForAddingRelationship:v131 toContext:self[3] inStore:self[1]];
              }

              ++v130;
            }

            while (v128 != v130);
            v132 = [&unk_1EF43D798 countByEnumeratingWithState:&v325 objects:v389 count:16];
            v128 = v132;
          }

          while (v132);
        }

        v133 = self[3];
        if (v133)
        {
          [*(v133 + 24) addObject:v13];
        }

        adapter4 = [a2 adapter];
        if (adapter4)
        {
          v135 = [(NSSQLiteAdapter *)adapter4 newCreateIndexStatementsForEntity:v13 defaultIndicesOnly:0];
        }

        else
        {
          v135 = 0;
        }

        v323 = 0u;
        v324 = 0u;
        v321 = 0u;
        v322 = 0u;
        v136 = [v135 countByEnumeratingWithState:&v321 objects:v388 count:16];
        if (v136)
        {
          v137 = *v322;
          do
          {
            for (n = 0; n != v136; ++n)
            {
              if (*v322 != v137)
              {
                objc_enumerationMutation(v135);
              }

              v139 = self[3];
              if (v139)
              {
                [*(v139 + 8) addObject:*(*(&v321 + 1) + 8 * n)];
                *(v139 + 48) = 1;
              }
            }

            v136 = [v135 countByEnumeratingWithState:&v321 objects:v388 count:16];
          }

          while (v136);
        }
      }

      name8 = [v13 name];
      v141 = objc_opt_class();
      if (([name8 isEqualToString:NSStringFromClass(v141)] & 1) != 0 || (v142 = objc_msgSend(v13, "name"), v143 = objc_opt_class(), objc_msgSend(v142, "isEqualToString:", NSStringFromClass(v143))))
      {
        if ([v292 containsObject:@"ZHASCHANGES"])
        {
          name9 = [v13 name];
          v145 = objc_opt_class();
          v290 = [name9 isEqualToString:NSStringFromClass(v145)];
          v283 = objc_msgSend(objc_alloc(MEMORY[0x1E696AD60]), "initWithFormat:", @"CREATE TEMPORARY TABLE %@_tmp("), objc_msgSend(v13, "tableName");
          v146 = objc_msgSend(objc_alloc(MEMORY[0x1E696AD60]), "initWithFormat:", @"INSERT INTO %@_tmp ("), objc_msgSend(v13, "tableName");
          v147 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"SELECT"];
          v282 = objc_msgSend(objc_alloc(MEMORY[0x1E696AD60]), "initWithFormat:", @"INSERT INTO %@ ("), objc_msgSend(v13, "tableName");
          v148 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"SELECT"];
          v149 = v13;
          while (v149)
          {
            v150 = v149;
            v149 = v149[21];
            if (v149 == v150)
            {
              v151 = v150[9];
              goto LABEL_252;
            }
          }

          v151 = 0;
LABEL_252:
          v152 = [v151 count];
          if (v152)
          {
            v153 = v152;
            v154 = 0;
            v155 = v152 - 1;
            do
            {
              v156 = objc_autoreleasePoolPush();
              v157 = v13;
              while (v157)
              {
                v158 = v157;
                v157 = v157[21];
                if (v157 == v158)
                {
                  v159 = v158[9];
                  goto LABEL_258;
                }
              }

              v159 = 0;
LABEL_258:
              v160 = [v159 objectAtIndexedSubscript:v154];
              if ([v292 containsObject:{objc_msgSend(v160, "columnName")}])
              {
                [v283 appendFormat:@" %@", objc_msgSend(v160, "columnName")];
                [v146 appendFormat:@" %@", objc_msgSend(v160, "columnName")];
                [v282 appendFormat:@" %@", objc_msgSend(v160, "columnName")];
                [v148 appendFormat:@" %@", objc_msgSend(v160, "columnName")];
                [v147 appendFormat:@" %@", objc_msgSend(v160, "columnName")];
                if (v154 < v155)
                {
                  [v283 appendString:{@", "}];
                  [v146 appendString:{@", "}];
                  [v282 appendString:{@", "}];
                  [v148 appendString:{@", "}];
                  [v147 appendString:{@", "}];
                }
              }

              objc_autoreleasePoolPop(v156);
              ++v154;
            }

            while (v154 != v153);
          }

          v319 = 0u;
          v320 = 0u;
          v317 = 0u;
          v318 = 0u;
          v386[0] = v283;
          v386[1] = v146;
          v386[2] = v282;
          v279 = v148;
          v280 = v147;
          v386[3] = v148;
          v386[4] = v147;
          v161 = [MEMORY[0x1E695DEC8] arrayWithObjects:v386 count:5];
          v162 = [v161 countByEnumeratingWithState:&v317 objects:v387 count:16];
          if (v162)
          {
            v163 = *v318;
            do
            {
              for (ii = 0; ii != v162; ++ii)
              {
                if (*v318 != v163)
                {
                  objc_enumerationMutation(v161);
                }

                v165 = *(*(&v317 + 1) + 8 * ii);
                if ([v165 hasSuffix:{@", "}])
                {
                  [v165 deleteCharactersInRange:{objc_msgSend(v165, "length") - 1, 1}];
                }
              }

              v162 = [v161 countByEnumeratingWithState:&v317 objects:v387 count:16];
            }

            while (v162);
          }

          [v283 appendString:@""]);
          [v282 appendString:@""]);
          [v146 appendString:@""]);
          [v280 appendFormat:@" FROM %@", objc_msgSend(v13, "tableName")];
          [v279 appendFormat:@" FROM %@_tmp", objc_msgSend(v13, "tableName")];
          v166 = [[NSSQLiteStatement alloc] initWithEntity:v13 sqlString:v283];
          v167 = self[3];
          if (v167)
          {
            [*(v167 + 8) addObject:v166];
            *(v167 + 48) = 1;
          }

          v168 = [NSSQLiteStatement alloc];
          v169 = [(NSSQLiteStatement *)v168 initWithEntity:v13 sqlString:objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v146, v280)];
          v170 = self[3];
          if (v170)
          {
            [*(v170 + 8) addObject:v169];
            *(v170 + 48) = 1;
          }

          v171 = [NSSQLiteStatement alloc];
          v172 = -[NSSQLiteStatement initWithEntity:sqlString:](v171, "initWithEntity:sqlString:", v13, objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [v13 tableName]));
          v173 = self[3];
          if (v173)
          {
            [*(v173 + 8) addObject:v172];
            *(v173 + 48) = 1;
          }

          v174 = -[NSSQLiteAdapter newCreateTableStatementForEntity:]([a2 adapter], v13);
          v175 = self[3];
          if (v175)
          {
            [*(v175 + 8) addObject:v174];
            *(v175 + 48) = 1;
          }

          v292 = [PFCloudKitMetadataMigrationSQLUtilities columnNamesFromCreateStatement:?];
          [self[3] addColumnNames:v292 forTableName:{objc_msgSend(v13, "tableName")}];

          v176 = [NSSQLiteStatement alloc];
          v177 = [(NSSQLiteStatement *)v176 initWithEntity:v13 sqlString:objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v282, v279)];
          v178 = self[3];
          if (v178)
          {
            [*(v178 + 8) addObject:v177];
            *(v178 + 48) = 1;
          }

          v179 = [NSSQLiteStatement alloc];
          v180 = -[NSSQLiteStatement initWithEntity:sqlString:](v179, "initWithEntity:sqlString:", v13, objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [v13 tableName]));
          v181 = self[3];
          if (v181)
          {
            [*(v181 + 8) addObject:v180];
            *(v181 + 48) = 1;
            v182 = self[3];
            if (v182)
            {
              [*(v182 + 24) addObject:v13];
            }
          }

          adapter5 = [a2 adapter];
          if (adapter5)
          {
            v184 = [(NSSQLiteAdapter *)adapter5 newCreateIndexStatementsForEntity:v13 defaultIndicesOnly:0];
          }

          else
          {
            v184 = 0;
          }

          v315 = 0u;
          v316 = 0u;
          v313 = 0u;
          v314 = 0u;
          v185 = [v184 countByEnumeratingWithState:&v313 objects:v385 count:16];
          if (v185)
          {
            v186 = *v314;
            do
            {
              for (jj = 0; jj != v185; ++jj)
              {
                if (*v314 != v186)
                {
                  objc_enumerationMutation(v184);
                }

                v188 = self[3];
                if (v188)
                {
                  [*(v188 + 8) addObject:*(*(&v313 + 1) + 8 * jj)];
                  *(v188 + 48) = 1;
                }
              }

              v185 = [v184 countByEnumeratingWithState:&v313 objects:v385 count:16];
            }

            while (v185);
          }
        }

        else
        {
          v290 = 0;
        }

        v311 = 0u;
        v312 = 0u;
        v309 = 0u;
        v310 = 0u;
        v189 = [&unk_1EF43D7B0 countByEnumeratingWithState:&v309 objects:v384 count:16];
        if (v189)
        {
          v190 = *v310;
          do
          {
            v191 = 0;
            do
            {
              if (*v310 != v190)
              {
                objc_enumerationMutation(&unk_1EF43D7B0);
              }

              if (v13)
              {
                v192 = [v13[5] objectForKey:*(*(&v309 + 1) + 8 * v191)];
              }

              else
              {
                v192 = 0;
              }

              if ([v292 containsObject:{objc_msgSend(v192, "columnName")}])
              {
                v193 = objc_autoreleasePoolPush();
                v194 = __PFCloudKitLoggingGetStream();
                v195 = v194;
                if (__ckLoggingOverride == 17)
                {
                  v196 = 17;
                }

                else
                {
                  v196 = 2;
                }

                if (__ckLoggingOverride == 16)
                {
                  v196 = 16;
                }

                if (__ckLoggingOverride == 1)
                {
                  v197 = 1;
                }

                else
                {
                  v197 = 2;
                }

                if (!__ckLoggingOverride)
                {
                  v197 = 0;
                }

                if (__ckLoggingOverride <= 0xFu)
                {
                  v198 = v197;
                }

                else
                {
                  v198 = v196;
                }

                if (os_log_type_enabled(v194, v198))
                {
                  tableName5 = [v13 tableName];
                  columnName4 = [v192 columnName];
                  *buf = 136315906;
                  *&buf[4] = "[PFCloudKitMetadataModelMigrator calculateMigrationStepsWithConnection:error:]";
                  *&buf[12] = 1024;
                  *&buf[14] = 546;
                  *&buf[18] = 2112;
                  *&buf[20] = tableName5;
                  *&buf[28] = 2112;
                  *&buf[30] = columnName4;
                  _os_log_impl(&dword_18565F000, v195, v198, "CoreData+CloudKit: %s(%d): Skipping migration for '%@' because it already has a column named '%@'", buf, 0x26u);
                }

                objc_autoreleasePoolPop(v193);
              }

              else
              {
                [PFCloudKitMetadataModelMigrator addMigrationStatementForAddingAttribute:v192 toContext:self[3] inStore:self[1]];
              }

              ++v191;
            }

            while (v189 != v191);
            v201 = [&unk_1EF43D7B0 countByEnumeratingWithState:&v309 objects:v384 count:16];
            v189 = v201;
          }

          while (v201);
        }

        name10 = [v13 name];
        v203 = objc_opt_class();
        if ([name10 isEqualToString:NSStringFromClass(v203)])
        {
          v307 = 0u;
          v308 = 0u;
          v305 = 0u;
          v306 = 0u;
          v204 = [&unk_1EF43D7C8 countByEnumeratingWithState:&v305 objects:v383 count:16];
          if (v204)
          {
            v205 = *v306;
            do
            {
              v206 = 0;
              do
              {
                if (*v306 != v205)
                {
                  objc_enumerationMutation(&unk_1EF43D7C8);
                }

                if (v13)
                {
                  v207 = [v13[5] objectForKey:*(*(&v305 + 1) + 8 * v206)];
                }

                else
                {
                  v207 = 0;
                }

                if ([v292 containsObject:{objc_msgSend(v207, "columnName")}])
                {
                  v208 = objc_autoreleasePoolPush();
                  v209 = __PFCloudKitLoggingGetStream();
                  v210 = v209;
                  if (__ckLoggingOverride == 17)
                  {
                    v211 = 17;
                  }

                  else
                  {
                    v211 = 2;
                  }

                  if (__ckLoggingOverride == 16)
                  {
                    v211 = 16;
                  }

                  if (__ckLoggingOverride == 1)
                  {
                    v212 = 1;
                  }

                  else
                  {
                    v212 = 2;
                  }

                  if (!__ckLoggingOverride)
                  {
                    v212 = 0;
                  }

                  if (__ckLoggingOverride <= 0xFu)
                  {
                    v213 = v212;
                  }

                  else
                  {
                    v213 = v211;
                  }

                  if (os_log_type_enabled(v209, v213))
                  {
                    tableName6 = [v13 tableName];
                    columnName5 = [v207 columnName];
                    *buf = 136315906;
                    *&buf[4] = "[PFCloudKitMetadataModelMigrator calculateMigrationStepsWithConnection:error:]";
                    *&buf[12] = 1024;
                    *&buf[14] = 562;
                    *&buf[18] = 2112;
                    *&buf[20] = tableName6;
                    *&buf[28] = 2112;
                    *&buf[30] = columnName5;
                    _os_log_impl(&dword_18565F000, v210, v213, "CoreData+CloudKit: %s(%d): Skipping migration for '%@' because it already has a column named '%@'", buf, 0x26u);
                  }

                  objc_autoreleasePoolPop(v208);
                }

                else
                {
                  [PFCloudKitMetadataModelMigrator addMigrationStatementForAddingAttribute:v207 toContext:self[3] inStore:self[1]];
                  v290 = 1;
                }

                ++v206;
              }

              while (v204 != v206);
              v216 = [&unk_1EF43D7C8 countByEnumeratingWithState:&v305 objects:v383 count:16];
              v204 = v216;
            }

            while (v216);
          }

          v303 = 0u;
          v304 = 0u;
          v301 = 0u;
          v302 = 0u;
          v217 = [&unk_1EF43D7E0 countByEnumeratingWithState:&v301 objects:v382 count:16];
          if (v217)
          {
            v218 = *v302;
            do
            {
              v219 = 0;
              do
              {
                if (*v302 != v218)
                {
                  objc_enumerationMutation(&unk_1EF43D7E0);
                }

                if (v13)
                {
                  v220 = [v13[5] objectForKey:*(*(&v301 + 1) + 8 * v219)];
                }

                else
                {
                  v220 = 0;
                }

                if ([v292 containsObject:{objc_msgSend(v220, "columnName")}])
                {
                  v221 = objc_autoreleasePoolPush();
                  v222 = __PFCloudKitLoggingGetStream();
                  v223 = v222;
                  if (__ckLoggingOverride == 17)
                  {
                    v224 = 17;
                  }

                  else
                  {
                    v224 = 2;
                  }

                  if (__ckLoggingOverride == 16)
                  {
                    v224 = 16;
                  }

                  if (__ckLoggingOverride == 1)
                  {
                    v225 = 1;
                  }

                  else
                  {
                    v225 = 2;
                  }

                  if (!__ckLoggingOverride)
                  {
                    v225 = 0;
                  }

                  if (__ckLoggingOverride <= 0xFu)
                  {
                    v226 = v225;
                  }

                  else
                  {
                    v226 = v224;
                  }

                  if (os_log_type_enabled(v222, v226))
                  {
                    tableName7 = [v13 tableName];
                    columnName6 = [v220 columnName];
                    *buf = 136315906;
                    *&buf[4] = "[PFCloudKitMetadataModelMigrator calculateMigrationStepsWithConnection:error:]";
                    *&buf[12] = 1024;
                    *&buf[14] = 579;
                    *&buf[18] = 2112;
                    *&buf[20] = tableName7;
                    *&buf[28] = 2112;
                    *&buf[30] = columnName6;
                    _os_log_impl(&dword_18565F000, v223, v226, "CoreData+CloudKit: %s(%d): Skipping migration for '%@' because it already has a column named '%@'", buf, 0x26u);
                  }

                  objc_autoreleasePoolPop(v221);
                }

                else
                {
                  [PFCloudKitMetadataModelMigrator addMigrationStatementForAddingAttribute:v220 toContext:self[3] inStore:self[1]];
                }

                ++v219;
              }

              while (v217 != v219);
              v229 = [&unk_1EF43D7E0 countByEnumeratingWithState:&v301 objects:v382 count:16];
              v217 = v229;
            }

            while (v229);
          }
        }

        if (v290)
        {
          v230 = [NSSQLiteStatement alloc];
          v231 = MEMORY[0x1E696AEC0];
          tableName8 = [v13 tableName];
          if (v13)
          {
            v233 = [v13[5] objectForKey:@"hasRecordZoneNum"];
          }

          else
          {
            v233 = 0;
          }

          v234 = -[NSSQLiteStatement initWithEntity:sqlString:](v230, "initWithEntity:sqlString:", v13, objc_msgSend_stringWithFormat_(v231, tableName8, [v233 columnName]));
          v235 = self[3];
          if (v235)
          {
            [*(v235 + 8) addObject:v234];
            *(v235 + 48) = 1;
          }
        }
      }

      name11 = [v13 name];
      v237 = objc_opt_class();
      if ([name11 isEqualToString:NSStringFromClass(v237)])
      {
        v299 = 0u;
        v300 = 0u;
        v297 = 0u;
        v298 = 0u;
        v238 = [&unk_1EF43D7F8 countByEnumeratingWithState:&v297 objects:v381 count:16];
        if (v238)
        {
          v239 = *v298;
          do
          {
            v240 = 0;
            do
            {
              if (*v298 != v239)
              {
                objc_enumerationMutation(&unk_1EF43D7F8);
              }

              if (v13)
              {
                v241 = [v13[5] objectForKey:*(*(&v297 + 1) + 8 * v240)];
              }

              else
              {
                v241 = 0;
              }

              if ([v292 containsObject:{objc_msgSend(v241, "columnName")}])
              {
                v242 = objc_autoreleasePoolPush();
                v243 = __PFCloudKitLoggingGetStream();
                v244 = v243;
                if (__ckLoggingOverride == 17)
                {
                  v245 = 17;
                }

                else
                {
                  v245 = 2;
                }

                if (__ckLoggingOverride == 16)
                {
                  v245 = 16;
                }

                if (__ckLoggingOverride == 1)
                {
                  v246 = 1;
                }

                else
                {
                  v246 = 2;
                }

                if (!__ckLoggingOverride)
                {
                  v246 = 0;
                }

                if (__ckLoggingOverride <= 0xFu)
                {
                  v247 = v246;
                }

                else
                {
                  v247 = v245;
                }

                if (os_log_type_enabled(v243, v247))
                {
                  tableName9 = [v13 tableName];
                  columnName7 = [v241 columnName];
                  *buf = 136315906;
                  *&buf[4] = "[PFCloudKitMetadataModelMigrator calculateMigrationStepsWithConnection:error:]";
                  *&buf[12] = 1024;
                  *&buf[14] = 603;
                  *&buf[18] = 2112;
                  *&buf[20] = tableName9;
                  *&buf[28] = 2112;
                  *&buf[30] = columnName7;
                  _os_log_impl(&dword_18565F000, v244, v247, "CoreData+CloudKit: %s(%d): Skipping migration for '%@' because it already has a column named '%@'", buf, 0x26u);
                }

                objc_autoreleasePoolPop(v242);
              }

              else
              {
                [PFCloudKitMetadataModelMigrator addMigrationStatementForAddingAttribute:v241 toContext:self[3] inStore:self[1]];
              }

              ++v240;
            }

            while (v238 != v240);
            v250 = [&unk_1EF43D7F8 countByEnumeratingWithState:&v297 objects:v381 count:16];
            v238 = v250;
          }

          while (v250);
        }
      }

      name12 = [v13 name];
      v252 = objc_opt_class();
      if ([name12 isEqualToString:NSStringFromClass(v252)])
      {
        v295 = 0u;
        v296 = 0u;
        v293 = 0u;
        v294 = 0u;
        v253 = [&unk_1EF43D810 countByEnumeratingWithState:&v293 objects:v380 count:16];
        if (v253)
        {
          v254 = *v294;
          do
          {
            v255 = 0;
            do
            {
              if (*v294 != v254)
              {
                objc_enumerationMutation(&unk_1EF43D810);
              }

              if (v13)
              {
                v256 = [v13[5] objectForKey:*(*(&v293 + 1) + 8 * v255)];
              }

              else
              {
                v256 = 0;
              }

              if ([v292 containsObject:{objc_msgSend(v256, "columnName")}])
              {
                v257 = objc_autoreleasePoolPush();
                v258 = __PFCloudKitLoggingGetStream();
                v259 = v258;
                if (__ckLoggingOverride == 17)
                {
                  v260 = 17;
                }

                else
                {
                  v260 = 2;
                }

                if (__ckLoggingOverride == 16)
                {
                  v260 = 16;
                }

                if (__ckLoggingOverride == 1)
                {
                  v261 = 1;
                }

                else
                {
                  v261 = 2;
                }

                if (!__ckLoggingOverride)
                {
                  v261 = 0;
                }

                if (__ckLoggingOverride <= 0xFu)
                {
                  v262 = v261;
                }

                else
                {
                  v262 = v260;
                }

                if (os_log_type_enabled(v258, v262))
                {
                  tableName10 = [v13 tableName];
                  columnName8 = [v256 columnName];
                  *buf = 136315906;
                  *&buf[4] = "[PFCloudKitMetadataModelMigrator calculateMigrationStepsWithConnection:error:]";
                  *&buf[12] = 1024;
                  *&buf[14] = 617;
                  *&buf[18] = 2112;
                  *&buf[20] = tableName10;
                  *&buf[28] = 2112;
                  *&buf[30] = columnName8;
                  _os_log_impl(&dword_18565F000, v259, v262, "CoreData+CloudKit: %s(%d): Skipping migration for '%@' because it already has a column named '%@'", buf, 0x26u);
                }

                objc_autoreleasePoolPop(v257);
              }

              else
              {
                [PFCloudKitMetadataModelMigrator addMigrationStatementForAddingAttribute:v256 toContext:self[3] inStore:self[1]];
              }

              ++v255;
            }

            while (v253 != v255);
            v265 = [&unk_1EF43D810 countByEnumeratingWithState:&v293 objects:v380 count:16];
            v253 = v265;
          }

          while (v265);
        }
      }

      v266 = self[3];
      if (v266)
      {
        v267 = *(v266 + 96);
      }

      else
      {
        v267 = 0;
      }

      if ([v267 integerValue] <= 976)
      {
        v268 = [NSSQLiteStatement alloc];
        v269 = -[NSSQLiteStatement initWithEntity:sqlString:](v268, "initWithEntity:sqlString:", v13, objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [v13 tableName]));
        v270 = self[3];
        if (v270)
        {
          [*(v270 + 8) addObject:v269];
          *(v270 + 48) = 1;
        }
      }

      v271 = self[3];
      if (v271)
      {
        v272 = *(v271 + 96);
      }

      else
      {
        v272 = 0;
      }

      if ([v272 integerValue] <= 1031)
      {
        v273 = self[3];
        if (v273)
        {
          *(v273 + 54) = 1;
        }
      }

LABEL_169:
      objc_autoreleasePoolPop(context);
      if (!v287)
      {
        goto LABEL_475;
      }

      ++v291;
    }

    while (v291 != v286);
    v12 = [obj countByEnumeratingWithState:&v358 objects:v397 count:16];
  }

  while (v12);
LABEL_475:
  if ((v369[3] & 1) == 0)
  {
    v276 = v363[5];
    if (v276)
    {
      if (connection)
      {
        *connection = v276;
      }
    }

    else
    {
      v277 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v277, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataModelMigrator.m";
        *&buf[12] = 1024;
        *&buf[14] = 637;
        _os_log_error_impl(&dword_18565F000, v277, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v278 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v278, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataModelMigrator.m";
        *&buf[12] = 1024;
        *&buf[14] = 637;
        _os_log_fault_impl(&dword_18565F000, v278, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

  v363[5] = 0;
  v274 = *(v369 + 24);
  _Block_object_dispose(&v362, 8);
  _Block_object_dispose(&v368, 8);
  return v274 & 1;
}

- (void)addMigrationStatementToContext:(uint64_t)context forRenamingAttributeNamed:(uint64_t)named withOldColumnName:(void *)name toAttributeName:(uint64_t)attributeName onOldSQLEntity:(uint64_t)entity andCurrentSQLEntity:(id *)lEntity
{
  v27 = *MEMORY[0x1E69E9840];
  if (lEntity && (v12 = [lEntity[5] objectForKey:attributeName]) != 0)
  {
    v13 = v12;
    if (entity)
    {
      v14 = [*(entity + 40) objectForKey:named];
      if (v14)
      {
        name = [v14 columnName];
      }
    }

    v15 = [NSSQLiteStatement alloc];
    v16 = -[NSSQLiteStatement initWithEntity:sqlString:](v15, "initWithEntity:sqlString:", lEntity, objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [lEntity tableName], name, objc_msgSend(v13, "columnName")));
    v17 = v16;
    if (context)
    {
      v20 = v16;
      v16 = [*(context + 8) addObject:v16];
      v17 = v20;
      *(context + 48) = 1;
    }

    MEMORY[0x1EEE66BB8](v16, v17);
  }

  else
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      attributeNameCopy2 = attributeName;
      v23 = 2112;
      namedCopy2 = named;
      v25 = 2112;
      lEntityCopy2 = lEntity;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Unable to find attribute to migrate to '%@' from '%@' on entity: %@\n", buf, 0x20u);
    }

    v19 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412802;
      attributeNameCopy2 = attributeName;
      v23 = 2112;
      namedCopy2 = named;
      v25 = 2112;
      lEntityCopy2 = lEntity;
      _os_log_fault_impl(&dword_18565F000, v19, OS_LOG_TYPE_FAULT, "CoreData: Unable to find attribute to migrate to '%@' from '%@' on entity: %@", buf, 0x20u);
    }
  }
}

- (void)addMigrationStatementForAddingRelationship:(void *)relationship toContext:(uint64_t)context inStore:(void *)store
{
  v20 = *MEMORY[0x1E69E9840];
  if ([relationship isToMany])
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      relationshipCopy4 = relationship;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: I don't know how to generate the sql for to-many relationships yet: %@\n", buf, 0xCu);
    }

    v7 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      relationshipCopy4 = relationship;
      _os_log_fault_impl(&dword_18565F000, v7, OS_LOG_TYPE_FAULT, "CoreData: I don't know how to generate the sql for to-many relationships yet: %@", buf, 0xCu);
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        relationshipCopy4 = relationship;
        _os_log_error_impl(&dword_18565F000, v8, OS_LOG_TYPE_ERROR, "CoreData: fault: I don't know how to generate the sql for relationships that aren't a to-one yet: %@\n", buf, 0xCu);
      }

      v9 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        relationshipCopy4 = relationship;
        _os_log_fault_impl(&dword_18565F000, v9, OS_LOG_TYPE_FAULT, "CoreData: I don't know how to generate the sql for relationships that aren't a to-one yet: %@", buf, 0xCu);
      }
    }

    entity = [relationship entity];
    foreignKey = [relationship foreignKey];
    v12 = [NSSQLiteStatement alloc];
    v13 = MEMORY[0x1E696AEC0];
    tableName = [entity tableName];
    columnName = [foreignKey columnName];
    v16 = -[NSSQLiteAdapter typeStringForColumn:]([store adapter], foreignKey);
    v17 = [(NSSQLiteStatement *)v12 initWithEntity:entity sqlString:objc_msgSend_stringWithFormat_(v13, tableName, columnName, v16)];
    if (context)
    {
      [*(context + 8) addObject:v17];
      *(context + 48) = 1;
    }
  }
}

- (uint64_t)addMigrationStatementForAddingAttribute:(_BYTE *)attribute toContext:(uint64_t)context inStore:(void *)store
{
  entity = [attribute entity];
  v7 = [NSSQLiteStatement alloc];
  v8 = MEMORY[0x1E696AEC0];
  tableName = [entity tableName];
  columnName = [attribute columnName];
  v11 = -[NSSQLiteAdapter typeStringForColumn:]([store adapter], attribute);
  v12 = [(NSSQLiteStatement *)v7 initWithEntity:entity sqlString:objc_msgSend_stringWithFormat_(v8, tableName, columnName, v11)];
  v13 = v12;
  if (context)
  {
    v15 = v12;
    v12 = [*(context + 8) addObject:v12];
    v13 = v15;
    *(context + 48) = 1;
  }

  return MEMORY[0x1EEE66BB8](v12, v13);
}

void __79__PFCloudKitMetadataModelMigrator_calculateMigrationStepsWithConnection_error___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(getCloudKitCKRecordZoneIDClass[0]());
  v3 = [v2 initWithZoneName:@"com.apple.coredata.cloudkit.zone" ownerName:getCloudKitCKCurrentUserDefaultName()];
  v4 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKRecordZoneMetadata entityPath]);
  -[NSFetchRequest setPredicate:](v4, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"ckRecordZoneName = %@ AND ckOwnerName = %@", objc_msgSend(v3, "zoneName"), objc_msgSend(v3, "ownerName")]);
  [(NSFetchRequest *)v4 setResultType:4];
  [(NSFetchRequest *)v4 setPropertiesToFetch:&unk_1EF43D738];
  v5 = *(*(a1 + 32) + 16);
  if (v5)
  {
    v6 = [(NSManagedObjectContext *)v5 _countForFetchRequest_:v4 error:(*(*(a1 + 48) + 8) + 40)];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      *(*(*(a1 + 56) + 8) + 24) = 0;
      v7 = *(*(*(a1 + 48) + 8) + 40);
    }

    else if (v6 >= 2)
    {
      v8 = [NSSQLiteStatement alloc];
      v9 = -[NSSQLiteStatement initWithEntity:sqlString:](v8, "initWithEntity:sqlString:", 0, objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [*(a1 + 40) tableName]));
      v10 = *(*(a1 + 32) + 24);
      if (v10)
      {
        [*(v10 + 8) addObject:v9];
        *(v10 + 48) = 1;
      }
    }
  }
}

void __69__PFCloudKitMetadataModelMigrator_commitMigrationMetadataAndCleanup___block_invoke(uint64_t a1)
{
  v259 = *MEMORY[0x1E69E9840];
  if (![_PFRoutines _isInMemoryStore:?])
  {
    v218 = 0;
    if (([*(*(a1 + 32) + 16) setQueryGenerationFromToken:0 error:&v218] & 1) == 0)
    {
      v1 = objc_autoreleasePoolPush();
      Stream = __PFCloudKitLoggingGetStream();
      v3 = Stream;
      if (__ckLoggingOverride == 17)
      {
        v4 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v4 = OS_LOG_TYPE_ERROR;
      }

      if (os_log_type_enabled(Stream, v4))
      {
        v5 = *(a1 + 32);
        *buf = 136315906;
        *&buf[4] = "[PFCloudKitMetadataModelMigrator commitMigrationMetadataAndCleanup:]_block_invoke";
        *&buf[12] = 1024;
        *&buf[14] = 710;
        *&buf[18] = 2112;
        *&buf[20] = v5;
        *&buf[28] = 2112;
        *&buf[30] = v218;
        _os_log_impl(&dword_18565F000, v3, v4, "CoreData+CloudKit: %s(%d): %@: Unable to set query generation on moc: %@", buf, 0x26u);
      }

      objc_autoreleasePoolPop(v1);
    }
  }

  v217 = 0;
  if (!+[NSCKMetadataEntry updateOrInsertMetadataEntryWithKey:BOOLValue:forStore:intoManagedObjectContext:error:](NSCKMetadataEntry, @"PFCloudKitMetadataModelMigratorMigrationBeganCommitKey", 1, *(*(a1 + 32) + 8), *(*(a1 + 32) + 16), &v217) || ([*(*(a1 + 32) + 16) save:&v217] & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *(*(*(a1 + 48) + 8) + 40) = v217;
  }

  if (*(*(*(a1 + 40) + 8) + 24) != 1)
  {
    return;
  }

  if (![_PFRoutines _isInMemoryStore:?])
  {
    v218 = 0;
    if (([*(*(a1 + 32) + 16) setQueryGenerationFromToken:+[NSQueryGenerationToken currentQueryGenerationToken](NSQueryGenerationToken error:{"currentQueryGenerationToken"), &v218}] & 1) == 0)
    {
      v6 = objc_autoreleasePoolPush();
      v7 = __PFCloudKitLoggingGetStream();
      v8 = v7;
      if (__ckLoggingOverride == 17)
      {
        v9 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v9 = OS_LOG_TYPE_ERROR;
      }

      if (os_log_type_enabled(v7, v9))
      {
        v10 = *(a1 + 32);
        *buf = 136315906;
        *&buf[4] = "[PFCloudKitMetadataModelMigrator commitMigrationMetadataAndCleanup:]_block_invoke";
        *&buf[12] = 1024;
        *&buf[14] = 736;
        *&buf[18] = 2112;
        *&buf[20] = v10;
        *&buf[28] = 2112;
        *&buf[30] = v218;
        _os_log_impl(&dword_18565F000, v8, v9, "CoreData+CloudKit: %s(%d): %@: Unable to set query generation on moc: %@", buf, 0x26u);
      }

      objc_autoreleasePoolPop(v6);
    }
  }

  v11 = [NSCKMetadataEntry entryForKey:*(*(a1 + 32) + 8) fromStore:*(*(a1 + 32) + 16) inManagedObjectContext:&v217 error:?];
  v12 = v217;
  if (v217 || (v13 = v11, v14 = [NSCKMetadataEntry entryForKey:*(*(a1 + 32) + 8) fromStore:*(*(a1 + 32) + 16) inManagedObjectContext:&v217 error:?], (v12 = v217) != 0))
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    v15 = v12;
    goto LABEL_24;
  }

  v32 = [v14 transformedValue];
  if (!v32 || ((v33 = *(*(a1 + 32) + 24)) == 0 ? (v34 = 0) : (v34 = *(v33 + 64)), ([objc_msgSend(v34 "entityVersionHashesByName")] & 1) == 0))
  {
    if (([(PFCloudKitMetadataModelMigrator *)*(a1 + 32) computeAncillaryEntityPrimaryKeyTableEntriesForStore:&v217 error:?]& 1) == 0)
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
      *(*(*(a1 + 48) + 8) + 40) = v217;
    }
  }

  v35 = *(a1 + 40);
  if (*(*(v35 + 8) + 24) == 1)
  {
    v36 = *(*(a1 + 32) + 24);
    v37 = v36 ? *(v36 + 64) : 0;
    v38 = +[NSCKMetadataEntry updateOrInsertMetadataEntryWithKey:transformedValue:forStore:intoManagedObjectContext:error:](NSCKMetadataEntry, @"PFCloudKitMetadataModelVersionHashesKey", [v37 entityVersionHashesByName], *(*(a1 + 32) + 8), *(*(a1 + 32) + 16), &v217);
    v35 = *(a1 + 40);
    if (!v38)
    {
      *(*(v35 + 8) + 24) = 0;
      *(*(*(a1 + 48) + 8) + 40) = v217;
      v35 = *(a1 + 40);
    }
  }

  v39 = *(*(v35 + 8) + 24);
  if (v39 == 1)
  {
    if (v13)
    {
      v40 = [objc_msgSend(v13 "integerValue")];
      v41 = [objc_msgSend(v13 "integerValue")] < 0x3B1;
      v184 = [objc_msgSend(v13 "integerValue")] < 0x3B3;
      if (v40 > 0x399)
      {
        goto LABEL_93;
      }
    }

    else
    {
      v184 = 0;
      v41 = 1;
    }

    v42 = [[NSCloudKitMirroringDelegatePreJazzkonMetadata alloc] initWithStore:*(*(a1 + 32) + 8)];
    if (![(NSCloudKitMirroringDelegatePreJazzkonMetadata *)v42 load:?])
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
      *(*(*(a1 + 48) + 8) + 40) = v217;
LABEL_92:

LABEL_93:
      if (*(*(*(a1 + 40) + 8) + 24) == 1 && v41)
      {
        context = objc_autoreleasePoolPush();
        v192 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v63 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKRecordZoneMetadata entityPath]);
        [(NSFetchRequest *)v63 setRelationshipKeyPathsForPrefetching:&unk_1EF43D828];
        [(NSFetchRequest *)v63 setReturnsObjectsAsFaults:0];
        v244[0] = *(*(a1 + 32) + 8);
        -[NSFetchRequest setAffectedStores:](v63, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:v244 count:1]);
        v64 = [*(*(a1 + 32) + 16) executeFetchRequest:v63 error:&v217];
        if (v64 && (v65 = [NSCKDatabaseMetadata databaseMetadataForScope:*(*(a1 + 32) + 8) forStore:*(*(a1 + 32) + 16) inContext:&v217 error:?]) != 0)
        {
          v185 = v65;
          v215 = 0u;
          v216 = 0u;
          v213 = 0u;
          v214 = 0u;
          v66 = [v64 countByEnumeratingWithState:&v213 objects:v243 count:16];
          if (v66)
          {
            v67 = *v214;
            v187 = *v214;
            do
            {
              v68 = 0;
              obja = v66;
              do
              {
                if (*v214 != v67)
                {
                  objc_enumerationMutation(v64);
                }

                v69 = *(*(&v213 + 1) + 8 * v68);
                v70 = objc_autoreleasePoolPush();
                if ([objc_msgSend(v69 "ckOwnerName")] && objc_msgSend(objc_msgSend(v69, "ckRecordZoneName"), "length"))
                {
                  v71 = [(NSCKRecordZoneMetadata *)v69 createRecordZoneID];
                  v72 = [v192 objectForKey:v71];
                  if (v72)
                  {
                    v73 = [objc_msgSend(v69 "mirroredRelationships")];
                    v211 = 0u;
                    v212 = 0u;
                    v209 = 0u;
                    v210 = 0u;
                    v74 = [v73 countByEnumeratingWithState:&v209 objects:v242 count:16];
                    if (v74)
                    {
                      v75 = *v210;
                      do
                      {
                        for (i = 0; i != v74; ++i)
                        {
                          if (*v210 != v75)
                          {
                            objc_enumerationMutation(v73);
                          }

                          [*(*(&v209 + 1) + 8 * i) setRecordZone:v72];
                        }

                        v74 = [v73 countByEnumeratingWithState:&v209 objects:v242 count:16];
                      }

                      while (v74);
                    }

                    v77 = [objc_msgSend(v69 "records")];
                    v207 = 0u;
                    v208 = 0u;
                    v205 = 0u;
                    v206 = 0u;
                    v78 = [v77 countByEnumeratingWithState:&v205 objects:v241 count:16];
                    if (v78)
                    {
                      v79 = *v206;
                      do
                      {
                        for (j = 0; j != v78; ++j)
                        {
                          if (*v206 != v79)
                          {
                            objc_enumerationMutation(v77);
                          }

                          [*(*(&v205 + 1) + 8 * j) setRecordZone:v72];
                        }

                        v78 = [v77 countByEnumeratingWithState:&v205 objects:v241 count:16];
                      }

                      while (v78);
                    }

                    v67 = v187;
                    v66 = obja;
                    [*(*(a1 + 32) + 16) deleteObject:v69];
                  }

                  else
                  {
                    [v69 setDatabase:v185];
                    [v192 setObject:v69 forKey:v71];
                  }
                }

                else
                {
                  [*(*(a1 + 32) + 16) deleteObject:v69];
                }

                objc_autoreleasePoolPop(v70);
                ++v68;
              }

              while (v68 != v66);
              v66 = [v64 countByEnumeratingWithState:&v213 objects:v243 count:16];
            }

            while (v66);
          }
        }

        else
        {
          *(*(*(a1 + 40) + 8) + 24) = 0;
          *(*(*(a1 + 48) + 8) + 40) = v217;
        }

        objc_autoreleasePoolPop(context);
        if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
        {
LABEL_133:
          v81 = *(a1 + 40);
          if (*(*(v81 + 8) + 24) != 1)
          {
            goto LABEL_190;
          }

          v82 = *(a1 + 32);
          v83 = *(v82 + 24);
          if (v83)
          {
            if (*(v83 + 51) == 1)
            {
              v84 = [PFCloudKitSerializer defaultRecordZoneIDForDatabaseScope:*(v82 + 32)];
              v85 = [NSCKRecordZoneMetadata zoneMetadataForZoneID:v84 inDatabaseWithScope:*(*(a1 + 32) + 32) forStore:*(*(a1 + 32) + 8) inContext:*(*(a1 + 32) + 16) error:&v217];
              if ([(NSManagedObject *)v85 isInserted])
              {
                *(*(*(a1 + 40) + 8) + 24) = [*(*(a1 + 32) + 16) save:&v217];
              }

              if (*(*(*(a1 + 40) + 8) + 24) == 1)
              {
                v86 = [[NSFetchRequest alloc] initWithEntityName:+[NSCKMirroredRelationship entityPath]];
                v240[0] = *(*(a1 + 32) + 8);
                -[NSFetchRequest setAffectedStores:](v86, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:v240 count:1]);
                [(NSFetchRequest *)v86 setFetchBatchSize:500];
                v87 = *(a1 + 32);
                v88 = *(v87 + 16);
                v203[0] = MEMORY[0x1E69E9820];
                v203[1] = 3221225472;
                v203[2] = __69__PFCloudKitMetadataModelMigrator_commitMigrationMetadataAndCleanup___block_invoke_294;
                v203[3] = &unk_1E6EC5368;
                v203[4] = v85;
                v203[5] = v87;
                v204 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
                [_PFRoutines efficientlyEnumerateManagedObjectsInFetchRequest:v86 usingManagedObjectContext:v88 andApplyBlock:v203];
              }

              else
              {
                v86 = 0;
              }

              v81 = *(a1 + 40);
              if ((*(*(v81 + 8) + 24) & 1) == 0)
              {
                goto LABEL_190;
              }
            }
          }

          v89 = *(*(a1 + 32) + 24);
          if (!v89 || *(v89 + 54) != 1)
          {
LABEL_163:
            v104 = *(a1 + 32);
            v105 = *(v104 + 24);
            if (v105)
            {
              if (*(v105 + 56) == 1)
              {
                *(*(*(a1 + 40) + 8) + 24) = [(PFCloudKitMetadataModelMigrator *)v104 checkForOrphanedMirroredRelationshipsInStore:*(v104 + 16) inManagedObjectContext:&v217 error:?];
                if (!*(*(*(a1 + 40) + 8) + 24))
                {
                  *(*(*(a1 + 48) + 8) + 40) = v217;
                  v81 = *(a1 + 40);
                  if ((*(*(v81 + 8) + 24) & 1) == 0)
                  {
                    goto LABEL_190;
                  }
                }
              }
            }

            if (v184)
            {
              if (([(PFCloudKitMetadataModelMigrator *)*(a1 + 32) checkForCorruptedRecordMetadataInStore:*(*(a1 + 32) + 16) inManagedObjectContext:&v217 error:?]& 1) == 0)
              {
                *(*(*(a1 + 40) + 8) + 24) = 0;
                v106 = v217;
LABEL_172:
                v109 = !v184;
                v110 = a1;
                *(*(*(a1 + 48) + 8) + 40) = v106;
                goto LABEL_177;
              }
            }

            else
            {
              v107 = [NSCKMetadataEntry entryForKey:*(*(a1 + 32) + 8) fromStore:*(*(a1 + 32) + 16) inManagedObjectContext:&v217 error:?];
              v108 = v217;
              if (v217)
              {
                *(*(*(a1 + 40) + 8) + 24) = 0;
                v106 = v108;
                goto LABEL_172;
              }

              if (v107)
              {
                v109 = [objc_msgSend(v107 "transformedValue")];
LABEL_176:
                v110 = a1;
LABEL_177:
                if (*(*(*(v110 + 40) + 8) + 24) != 1)
                {
                  goto LABEL_184;
                }

                if ([*(*(v110 + 32) + 16) hasChanges])
                {
                  v111 = [*(*(a1 + 32) + 16) save:&v217];
                }

                else
                {
                  v112 = [_PFRoutines _isInMemoryStore:?];
                  v110 = a1;
                  if (v112)
                  {
                    goto LABEL_184;
                  }

                  v111 = [*(*(a1 + 32) + 16) setQueryGenerationFromToken:+[NSQueryGenerationToken currentQueryGenerationToken](NSQueryGenerationToken error:{"currentQueryGenerationToken"), &v217}];
                }

                v110 = a1;
                if ((v111 & 1) == 0)
                {
                  *(*(*(a1 + 40) + 8) + 24) = 0;
                  v113 = v217;
                  v110 = a1;
                  *(*(*(a1 + 48) + 8) + 40) = v113;
                }

LABEL_184:
                v81 = *(v110 + 40);
                if (!(v109 & 1 | ((*(*(v81 + 8) + 24) & 1) == 0)))
                {
                  if (![(PFCloudKitMetadataModelMigrator *)*(a1 + 32) cleanUpAfterClientMigrationWithStore:*(*(a1 + 32) + 16) andContext:&v217 error:?])
                  {
                    *(*(*(a1 + 40) + 8) + 24) = 0;
                    v115 = v217;
                    goto LABEL_189;
                  }

                  v114 = +[NSCKMetadataEntry updateOrInsertMetadataEntryWithKey:transformedValue:forStore:intoManagedObjectContext:error:](NSCKMetadataEntry, @"PFCloudKitMetadataClientVersionHashesKey", [objc_msgSend(objc_msgSend(*(*(a1 + 32) + 16) "persistentStoreCoordinator")], *(*(a1 + 32) + 8), *(*(a1 + 32) + 16), &v217);
                  v81 = *(a1 + 40);
                  if (!v114)
                  {
                    *(*(v81 + 8) + 24) = 0;
                    v115 = v217;
LABEL_189:
                    *(*(*(a1 + 48) + 8) + 40) = v115;
                    v81 = *(a1 + 40);
                  }
                }

LABEL_190:
                if (*(*(v81 + 8) + 24) == 1)
                {
                  PFBundleVersion = +[_PFRoutines _getPFBundleVersionNumber];
                  if (![NSCKMetadataEntry updateOrInsertMetadataEntryWithKey:PFBundleVersion integerValue:*(*(a1 + 32) + 8) forStore:*(*(a1 + 32) + 16) intoManagedObjectContext:&v217 error:?]|| (v117 = *(a1 + 32), (v118 = *(v117 + 24)) != 0) && *(v118 + 49) == 1 && ![NSCKMetadataEntry updateOrInsertMetadataEntryWithKey:1 BOOLValue:*(v117 + 8) forStore:*(v117 + 16) intoManagedObjectContext:&v217 error:?])
                  {
                    *(*(*(a1 + 40) + 8) + 24) = 0;
                    *(*(*(a1 + 48) + 8) + 40) = v217;
                  }
                }

                v16 = a1;
                if (*(*(*(a1 + 40) + 8) + 24) != 1)
                {
                  goto LABEL_213;
                }

                v119 = *(*(a1 + 32) + 24);
                if (v119 && *(v119 + 52) == 1)
                {
                  v120 = [[NSBatchUpdateRequest alloc] initWithEntityName:+[NSCKRecordZoneMetadata entityPath]];
                  v238[0] = @"needsImport";
                  v239[0] = [MEMORY[0x1E696ABC8] expressionForConstantValue:MEMORY[0x1E695E118]];
                  v238[1] = @"currentChangeToken";
                  v239[1] = [MEMORY[0x1E696ABC8] expressionForConstantValue:0];
                  v238[2] = @"lastFetchDate";
                  v239[2] = [MEMORY[0x1E696ABC8] expressionForConstantValue:0];
                  -[NSBatchUpdateRequest setPropertiesToUpdate:](v120, "setPropertiesToUpdate:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v239 forKeys:v238 count:3]);
                  [(NSBatchUpdateRequest *)v120 setResultType:0];
                  if (([objc_msgSend(objc_msgSend(*(*(a1 + 32) + 16) executeRequest:v120 error:{&v217), "result"), "BOOLValue"}] & 1) == 0)
                  {
                    *(*(*(a1 + 40) + 8) + 24) = 0;
                    *(*(*(a1 + 48) + 8) + 40) = v217;

                    v120 = 0;
                  }

                  v16 = a1;
                  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
                  {
                    goto LABEL_213;
                  }
                }

                *(*(*(a1 + 40) + 8) + 24) = [*(*(v16 + 32) + 16) save:&v217];
                if (*(*(*(a1 + 40) + 8) + 24) & 1) != 0 || (*(*(*(a1 + 48) + 8) + 40) = v217, LOBYTE(v39) = *(*(*(a1 + 40) + 8) + 24), (v39))
                {
                  v121 = [objc_msgSend(*(*(a1 + 32) + 8) "metadata")];
                  v201 = 0u;
                  v202 = 0u;
                  v199 = 0u;
                  v200 = 0u;
                  v122 = +[NSCloudKitMirroringDelegatePreJazzkonMetadata allDefaultsKeys];
                  v123 = [v122 countByEnumeratingWithState:&v199 objects:v237 count:16];
                  if (v123)
                  {
                    v124 = *v200;
                    do
                    {
                      for (k = 0; k != v123; ++k)
                      {
                        if (*v200 != v124)
                        {
                          objc_enumerationMutation(v122);
                        }

                        [v121 removeObjectForKey:*(*(&v199 + 1) + 8 * k)];
                      }

                      v123 = [v122 countByEnumeratingWithState:&v199 objects:v237 count:16];
                    }

                    while (v123);
                  }

                  [v121 removeObjectForKey:@"_NSStoreAncillaryModelVersionHashesMetadataKey"];
                  [v121 removeObjectForKey:@"PFCloudKitMetadataNeedsZoneFetchAfterClientMigrationKey"];
                  [*(*(a1 + 32) + 8) setMetadata:v121];

                  *(*(*(a1 + 40) + 8) + 24) = [*(*(a1 + 32) + 16) save:&v217];
                  LOBYTE(v39) = *(*(*(a1 + 40) + 8) + 24);
                  if ((v39 & 1) == 0)
                  {
                    v15 = v217;
LABEL_24:
                    v16 = a1;
                    *(*(*(a1 + 48) + 8) + 40) = v15;
                    if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
                    {
                      goto LABEL_213;
                    }

                    goto LABEL_25;
                  }
                }

                goto LABEL_212;
              }
            }

            v109 = 0;
            goto LABEL_176;
          }

          v90 = objc_autoreleasePoolPush();
          v91 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKHistoryAnalyzerState entityPath]);
          -[NSFetchRequest setPredicate:](v91, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"entityId = 0"]);
          v92 = *(*(a1 + 32) + 16);
          if (!v92 || (v93 = [(NSManagedObjectContext *)v92 _countForFetchRequest_:v91 error:(*(*(a1 + 48) + 8) + 40)], (v94 = v93) == 0))
          {
LABEL_158:
            if (*(*(*(a1 + 40) + 8) + 24) == 1 && [*(*(a1 + 32) + 16) hasChanges] && (objc_msgSend(*(*(a1 + 32) + 16), "save:", *(*(a1 + 48) + 8) + 40) & 1) == 0)
            {
              *(*(*(a1 + 40) + 8) + 24) = 0;
              v103 = *(*(*(a1 + 48) + 8) + 40);
            }

            [*(*(a1 + 32) + 16) reset];
            objc_autoreleasePoolPop(v90);
            v81 = *(a1 + 40);
            if ((*(*(v81 + 8) + 24) & 1) == 0)
            {
              goto LABEL_190;
            }

            goto LABEL_163;
          }

          if (v93 == 0x7FFFFFFFFFFFFFFFLL)
          {
            *(*(*(a1 + 40) + 8) + 24) = 0;
            v95 = *(*(*(a1 + 48) + 8) + 40);
            goto LABEL_158;
          }

          v96 = objc_autoreleasePoolPush();
          v97 = __PFCloudKitLoggingGetStream();
          v98 = v97;
          if (__ckLoggingOverride == 17)
          {
            v99 = OS_LOG_TYPE_FAULT;
          }

          else
          {
            v99 = 16 * (__ckLoggingOverride == 16);
          }

          if (os_log_type_enabled(v97, v99))
          {
            *buf = 136315650;
            *&buf[4] = "[PFCloudKitMetadataModelMigrator commitMigrationMetadataAndCleanup:]_block_invoke_2";
            *&buf[12] = 1024;
            *&buf[14] = 1017;
            *&buf[18] = 2048;
            *&buf[20] = v94;
            _os_log_impl(&dword_18565F000, v98, v99, "CoreData+CloudKit: %s(%d): Found %lu corrupt analyzed history rows, purging.", buf, 0x1Cu);
          }

          objc_autoreleasePoolPop(v96);
          v100 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:+[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKHistoryAnalyzerState entityPath])];
          [(NSBatchDeleteRequest *)v100 setResultType:0];
          if ([objc_msgSend(objc_msgSend(*(*(a1 + 32) + 16) executeRequest:v100 error:{*(*(a1 + 48) + 8) + 40), "result"), "BOOLValue"}])
          {
            v101 = [NSCKMetadataEntry entryForKey:*(*(a1 + 32) + 8) fromStore:*(*(a1 + 32) + 16) inManagedObjectContext:*(*(a1 + 48) + 8) + 40 error:?];
            if (v101)
            {
              [*(*(a1 + 32) + 16) deleteObject:v101];
LABEL_157:

              goto LABEL_158;
            }

            if (!*(*(*(a1 + 48) + 8) + 40))
            {
              goto LABEL_157;
            }
          }

          *(*(*(a1 + 40) + 8) + 24) = 0;
          v102 = *(*(*(a1 + 48) + 8) + 40);
          goto LABEL_157;
        }
      }

      else if (!*(*(*(a1 + 40) + 8) + 24))
      {
        goto LABEL_133;
      }

      if ([*(*(a1 + 32) + 16) hasChanges] && (objc_msgSend(*(*(a1 + 32) + 16), "save:", &v217) & 1) == 0)
      {
        *(*(*(a1 + 40) + 8) + 24) = 0;
        *(*(*(a1 + 48) + 8) + 40) = v217;
      }

      goto LABEL_133;
    }

    v43 = [NSCKDatabaseMetadata databaseMetadataForScope:*(*(a1 + 32) + 8) forStore:*(*(a1 + 32) + 16) inContext:&v217 error:?];
    v44 = v217;
    if (v217)
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
      v45 = v44;
    }

    else
    {
      v51 = v43;
      [(NSManagedObject *)v43 setCurrentChangeToken:[(NSCloudKitMirroringDelegatePreJazzkonMetadata *)v42 changeTokenForDatabaseScope:?]];
      [(NSManagedObject *)v51 setHasSubscription:[(NSCloudKitMirroringDelegatePreJazzkonMetadata *)v42 hasInitializedDatabaseSubscription]];
      if (*(*(a1 + 32) + 32) == 2)
      {
        v54 = [PFCloudKitSerializer defaultRecordZoneIDForDatabaseScope:2];
        v55 = [NSCKRecordZoneMetadata zoneMetadataForZoneID:v54 inDatabaseWithScope:*(*(a1 + 32) + 32) forStore:*(*(a1 + 32) + 8) inContext:*(*(a1 + 32) + 16) error:&v217];
        v57 = v217;
        if (v217)
        {
          *(*(*(a1 + 40) + 8) + 24) = 0;
          *(*(*(a1 + 48) + 8) + 40) = v57;
        }

        else
        {
          v58 = v55;
          [(NSManagedObject *)v55 setHasSubscription:[(NSCloudKitMirroringDelegatePreJazzkonMetadata *)v42 hasInitializedZoneSubscription]];
          [(NSManagedObject *)v58 setCurrentChangeToken:[(NSCloudKitMirroringDelegatePreJazzkonMetadata *)v42 changeTokenForZoneWithID:v54 inDatabaseWithScope:*(*(a1 + 32) + 32)]];
          [(NSManagedObject *)v58 setHasRecordZone:0];
        }
      }

      if (*(*(*(a1 + 40) + 8) + 24) == 1)
      {
        if ([(NSCloudKitMirroringDelegatePreJazzkonMetadata *)v42 lastHistoryToken])
        {
          v59 = [(NSCloudKitMirroringDelegatePreJazzkonMetadata *)v42 lastHistoryToken];
          if (![NSCKMetadataEntry updateOrInsertMetadataEntryWithKey:v59 transformedValue:*(*(a1 + 32) + 8) forStore:*(*(a1 + 32) + 16) intoManagedObjectContext:&v217 error:?])
          {
            *(*(*(a1 + 40) + 8) + 24) = 0;
            *(*(*(a1 + 48) + 8) + 40) = v217;
          }
        }
      }

      if (*(*(*(a1 + 40) + 8) + 24) == 1)
      {
        if ([(NSCloudKitMirroringDelegatePreJazzkonMetadata *)v42 ckIdentityRecordName])
        {
          v60 = [(NSCloudKitMirroringDelegatePreJazzkonMetadata *)v42 ckIdentityRecordName];
          if (![NSCKMetadataEntry updateOrInsertMetadataEntryWithKey:v60 stringValue:*(*(a1 + 32) + 8) forStore:*(*(a1 + 32) + 16) intoManagedObjectContext:&v217 error:?])
          {
            *(*(*(a1 + 40) + 8) + 24) = 0;
            *(*(*(a1 + 48) + 8) + 40) = v217;
          }
        }
      }

      if (*(*(*(a1 + 40) + 8) + 24) != 1)
      {
        goto LABEL_91;
      }

      if (![(NSCloudKitMirroringDelegatePreJazzkonMetadata *)v42 hasCheckedCKIdentity])
      {
        goto LABEL_91;
      }

      v62 = [(NSCloudKitMirroringDelegatePreJazzkonMetadata *)v42 hasCheckedCKIdentity];
      if ([NSCKMetadataEntry updateOrInsertMetadataEntryWithKey:v62 BOOLValue:*(*(a1 + 32) + 8) forStore:*(*(a1 + 32) + 16) intoManagedObjectContext:&v217 error:?])
      {
        goto LABEL_91;
      }

      *(*(*(a1 + 40) + 8) + 24) = 0;
      v45 = v217;
    }

    *(*(*(a1 + 48) + 8) + 40) = v45;
LABEL_91:

    goto LABEL_92;
  }

LABEL_212:
  v16 = a1;
  if ((v39 & 1) == 0)
  {
    goto LABEL_213;
  }

LABEL_25:
  v17 = [NSCKMetadataEntry entryForKey:*(*(v16 + 32) + 8) fromStore:*(*(v16 + 32) + 16) inManagedObjectContext:&v217 error:?];
  v18 = v217;
  if (v217)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    v19 = v18;
  }

  else
  {
    v20 = [v17 BOOLValue];
    v16 = a1;
    if (!v20)
    {
      goto LABEL_213;
    }

    v21 = *(a1 + 32);
    v22 = *(v21 + 16);
    v191 = *(v21 + 8);
    v186 = v21;
    v232 = 0;
    v233 = &v232;
    v234 = 0x2020000000;
    v235 = 1;
    *v255 = 0;
    *&v255[8] = v255;
    *&v255[16] = 0x3052000000;
    v256 = __Block_byref_object_copy__50;
    v257 = __Block_byref_object_dispose__50;
    v258 = 0;
    v23 = [objc_msgSend(objc_msgSend(v22 "persistentStoreCoordinator")];
    v230 = 0u;
    v231 = 0u;
    v228 = 0u;
    v229 = 0u;
    obj = v23;
    v24 = [v23 countByEnumeratingWithState:&v228 objects:buf count:16];
    if (v24)
    {
      v25 = *v229;
LABEL_31:
      v26 = 0;
      while (1)
      {
        if (*v229 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v228 + 1) + 8 * v26);
        v28 = objc_autoreleasePoolPush();
        if ([objc_msgSend(v27 "attributesByName")] && objc_msgSend(objc_msgSend(v27, "attributesByName"), "objectForKey:", @"ckRecordSystemFields"))
        {
          v29 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", [v27 name]);
          v250[0] = @"ckRecordID";
          v250[1] = @"ckRecordSystemFields";
          -[NSFetchRequest setPropertiesToFetch:](v29, "setPropertiesToFetch:", [MEMORY[0x1E695DEC8] arrayWithObjects:v250 count:2]);
          -[NSFetchRequest setPredicate:](v29, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != nil", @"ckRecordID"]);
          [(NSFetchRequest *)v29 setFetchBatchSize:200];
          v249 = v191;
          -[NSFetchRequest setAffectedStores:](v29, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v249 count:1]);
          v218 = MEMORY[0x1E69E9820];
          v219 = 3221225472;
          v220 = __107__PFCloudKitMetadataModelMigrator_migrateMetadataForObjectsInStore_toNSCKRecordMetadataUsingContext_error___block_invoke;
          v221 = &unk_1E6EC56C8;
          v222 = v186;
          v223 = v27;
          v224 = v191;
          v225 = v22;
          v226 = v255;
          v227 = &v232;
          [_PFRoutines efficientlyEnumerateManagedObjectsInFetchRequest:v29 usingManagedObjectContext:v22 andApplyBlock:&v218];
          v30 = *(v233 + 24) == 0;
        }

        else
        {
          v30 = 0;
        }

        objc_autoreleasePoolPop(v28);
        if (v30)
        {
          break;
        }

        if (v24 == ++v26)
        {
          v24 = [obj countByEnumeratingWithState:&v228 objects:buf count:16];
          if (v24)
          {
            goto LABEL_31;
          }

          break;
        }
      }
    }

    if ((v233[3] & 1) == 0)
    {
      v31 = *(*&v255[8] + 40);
      if (v31)
      {
        v217 = v31;
      }

      else
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *v245 = 136315394;
          v246 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataModelMigrator.m";
          v247 = 1024;
          v248 = 1737;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", v245, 0x12u);
        }

        v47 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
        {
          *v245 = 136315394;
          v246 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataModelMigrator.m";
          v247 = 1024;
          v248 = 1737;
          _os_log_fault_impl(&dword_18565F000, v47, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", v245, 0x12u);
        }
      }
    }

    *(*&v255[8] + 40) = 0;
    v48 = *(v233 + 24);
    _Block_object_dispose(v255, 8);
    _Block_object_dispose(&v232, 8);
    if (v48 != 1)
    {
      v50 = v217;
      v16 = a1;
      *(*(*(a1 + 48) + 8) + 40) = v50;
      *(*(*(a1 + 40) + 8) + 24) = 0;
      goto LABEL_213;
    }

    if ([NSCKMetadataEntry updateOrInsertMetadataEntryWithKey:0 BOOLValue:*(*(a1 + 32) + 8) forStore:*(*(a1 + 32) + 16) intoManagedObjectContext:&v217 error:?])
    {
      v49 = [*(*(a1 + 32) + 16) save:&v217];
      v16 = a1;
      if (v49)
      {
        goto LABEL_213;
      }
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
    v19 = v217;
  }

  v16 = a1;
  *(*(*(a1 + 48) + 8) + 40) = v19;
LABEL_213:
  if (*(*(*(v16 + 40) + 8) + 24) == 1)
  {
    v193 = +[PFCloudKitMetadataModel _newMetadataModelV16];
    v197 = 0u;
    v198 = 0u;
    v195 = 0u;
    v196 = 0u;
    v126 = *(*(a1 + 32) + 24);
    if (v126)
    {
      v127 = *(v126 + 32);
    }

    else
    {
      v127 = 0;
    }

    objb = v127;
    v128 = [v127 countByEnumeratingWithState:&v195 objects:v236 count:16];
    if (v128)
    {
      v129 = *v196;
      do
      {
        v130 = 0;
        do
        {
          if (*v196 != v129)
          {
            objc_enumerationMutation(objb);
          }

          v131 = *(*(&v195 + 1) + 8 * v130);
          v132 = objc_autoreleasePoolPush();
          v133 = [objc_msgSend(v131 "entity")];
          v134 = objc_opt_class();
          if ([v133 isEqualToString:NSStringFromClass(v134)])
          {
            if (![objc_msgSend(v131 "columnName")])
            {
              goto LABEL_244;
            }

            v135 = *(a1 + 32);
            v136 = [(NSManagedObjectModel *)v193 entitiesByName];
            v137 = objc_opt_class();
            v138 = [objc_msgSend(-[NSDictionary objectForKeyedSubscript:](v136 objectForKeyedSubscript:{NSStringFromClass(v137)), "attributesByName"), "objectForKeyedSubscript:", @"encodedShareData"}];
            v139 = *(*(a1 + 32) + 24);
            if (v139 && (v140 = *(v139 + 72)) != 0)
            {
              v141 = *(v140 + 24);
            }

            else
            {
              v141 = 0;
            }

            v142 = objc_opt_class();
            v143 = [v141 objectForKeyedSubscript:NSStringFromClass(v142)];
            v144 = [(PFCloudKitMetadataModelMigrator *)v135 moveBinaryDataFromColumn:v131 forAttribute:v138 toMetadataAsset:v143 byRelationshipNamed:@"recordZone" error:&v217];
          }

          else
          {
            v145 = [objc_msgSend(v131 "entity")];
            v146 = objc_opt_class();
            if ([v145 isEqualToString:NSStringFromClass(v146)])
            {
              if ([objc_msgSend(v131 "columnName")])
              {
                v147 = *(a1 + 32);
                v148 = [(NSManagedObjectModel *)v193 entitiesByName];
                v149 = objc_opt_class();
                v150 = [objc_msgSend(-[NSDictionary objectForKeyedSubscript:](v148 objectForKeyedSubscript:{NSStringFromClass(v149)), "attributesByName"), "objectForKeyedSubscript:", @"ckRecordSystemFields"}];
                v151 = *(*(a1 + 32) + 24);
                if (v151 && (v152 = *(v151 + 72)) != 0)
                {
                  v153 = *(v152 + 24);
                }

                else
                {
                  v153 = 0;
                }
              }

              else
              {
                if (![objc_msgSend(v131 "columnName")])
                {
                  goto LABEL_244;
                }

                v147 = *(a1 + 32);
                v165 = [(NSManagedObjectModel *)v193 entitiesByName];
                v166 = objc_opt_class();
                v150 = [objc_msgSend(-[NSDictionary objectForKeyedSubscript:](v165 objectForKeyedSubscript:{NSStringFromClass(v166)), "attributesByName"), "objectForKeyedSubscript:", @"encodedRecord"}];
                v167 = *(*(a1 + 32) + 24);
                if (v167 && (v168 = *(v167 + 72)) != 0)
                {
                  v153 = *(v168 + 24);
                }

                else
                {
                  v153 = 0;
                }
              }

              v169 = objc_opt_class();
              v170 = [v153 objectForKeyedSubscript:NSStringFromClass(v169)];
              v144 = [(PFCloudKitMetadataModelMigrator *)v147 moveBinaryDataFromColumn:v131 forAttribute:v150 toMetadataAsset:v170 byRelationshipNamed:@"record" error:&v217];
            }

            else
            {
              v154 = [objc_msgSend(v131 "entity")];
              v155 = objc_opt_class();
              if (![v154 isEqualToString:NSStringFromClass(v155)] || !objc_msgSend(objc_msgSend(v131, "columnName"), "isEqualToString:", @"ZCKRECORDSYSTEMFIELDS"))
              {
                goto LABEL_244;
              }

              v156 = *(a1 + 32);
              v157 = [(NSManagedObjectModel *)v193 entitiesByName];
              v158 = objc_opt_class();
              v159 = [objc_msgSend(-[NSDictionary objectForKeyedSubscript:](v157 objectForKeyedSubscript:{NSStringFromClass(v158)), "attributesByName"), "objectForKeyedSubscript:", @"ckRecordSystemFields"}];
              v160 = *(*(a1 + 32) + 24);
              if (v160 && (v161 = *(v160 + 72)) != 0)
              {
                v162 = *(v161 + 24);
              }

              else
              {
                v162 = 0;
              }

              v163 = objc_opt_class();
              v164 = [v162 objectForKeyedSubscript:NSStringFromClass(v163)];
              v144 = [(PFCloudKitMetadataModelMigrator *)v156 moveBinaryDataFromColumn:v131 forAttribute:v159 toMetadataAsset:v164 byRelationshipNamed:@"mirroredRelationship" error:&v217];
            }
          }

          if ((v144 & 1) == 0)
          {
            goto LABEL_255;
          }

LABEL_244:
          v171 = *(a1 + 40);
          if (*(*(v171 + 8) + 24) != 1)
          {
            goto LABEL_254;
          }

          v172 = *(a1 + 32);
          if (v172)
          {
            *&v228 = 0;
            *(&v228 + 1) = &v228;
            *&v229 = 0x2020000000;
            BYTE8(v229) = 0;
            v218 = 0;
            v219 = &v218;
            v220 = 0x3052000000;
            v221 = __Block_byref_object_copy__50;
            v222 = __Block_byref_object_dispose__50;
            v223 = 0;
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = __52__PFCloudKitMetadataModelMigrator_dropColumn_error___block_invoke;
            *&buf[24] = &unk_1E6EC5790;
            *&buf[32] = v172;
            v252 = v131;
            v253 = &v228;
            v254 = &v218;
            v173 = [[NSSQLBlockRequestContext alloc] initWithBlock:buf context:0 sqlCore:*(v172 + 8)];
            [(NSSQLCore *)*(v172 + 8) dispatchRequest:v173 withRetries:0];

            if ((*(*(&v228 + 1) + 24) & 1) == 0)
            {
              v174 = *(v219 + 40);
              if (v174)
              {
                v217 = v174;
              }

              else
              {
                v175 = _PFLogGetLogStream(17);
                if (os_log_type_enabled(v175, OS_LOG_TYPE_ERROR))
                {
                  *v255 = 136315394;
                  *&v255[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataModelMigrator.m";
                  *&v255[12] = 1024;
                  *&v255[14] = 2359;
                  _os_log_error_impl(&dword_18565F000, v175, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", v255, 0x12u);
                }

                v176 = _PFLogGetLogStream(17);
                if (os_log_type_enabled(v176, OS_LOG_TYPE_FAULT))
                {
                  *v255 = 136315394;
                  *&v255[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataModelMigrator.m";
                  *&v255[12] = 1024;
                  *&v255[14] = 2359;
                  _os_log_fault_impl(&dword_18565F000, v176, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", v255, 0x12u);
                }
              }
            }

            *(v219 + 40) = 0;
            v177 = *(*(&v228 + 1) + 24);
            _Block_object_dispose(&v218, 8);
            _Block_object_dispose(&v228, 8);
            if (v177)
            {
LABEL_254:
              v178 = 1;
              goto LABEL_257;
            }

LABEL_255:
            v171 = *(a1 + 40);
          }

          *(*(v171 + 8) + 24) = 0;
          v178 = 0;
          *(*(*(a1 + 48) + 8) + 40) = v217;
LABEL_257:
          objc_autoreleasePoolPop(v132);
          if (!v178)
          {
            goto LABEL_265;
          }

          ++v130;
        }

        while (v128 != v130);
        v179 = [objb countByEnumeratingWithState:&v195 objects:v236 count:16];
        v128 = v179;
      }

      while (v179);
    }

LABEL_265:

    if (*(*(*(a1 + 40) + 8) + 24))
    {
      v180 = [NSCKMetadataEntry entryForKey:*(*(a1 + 32) + 8) fromStore:*(*(a1 + 32) + 16) inManagedObjectContext:&v217 error:?];
      if (v180)
      {
        [*(*(a1 + 32) + 16) deleteObject:v180];
        if ([*(*(a1 + 32) + 16) save:&v217])
        {
          return;
        }

        *(*(*(a1 + 40) + 8) + 24) = 0;
        v181 = v217;
      }

      else
      {
        v182 = v217;
        if (!v217)
        {
          return;
        }

        *(*(*(a1 + 40) + 8) + 24) = 0;
        v181 = v182;
      }

      *(*(*(a1 + 48) + 8) + 40) = v181;
    }
  }
}

id __69__PFCloudKitMetadataModelMigrator_commitMigrationMetadataAndCleanup___block_invoke_294(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    *(*(a1[7] + 8) + 24) = 0;
    result = a3;
    v13 = a1 + 6;
    goto LABEL_15;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [a2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(a2);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (![v11 recordZone])
        {
          [v11 setRecordZone:a1[4]];
        }
      }

      v8 = [a2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  result = [*(a1[5] + 16) hasChanges];
  if (result)
  {
    v13 = a1 + 6;
    result = [*(a1[5] + 16) save:*(a1[6] + 8) + 40];
    if ((result & 1) == 0)
    {
      *(*(a1[7] + 8) + 24) = 0;
      result = *(*(a1[6] + 8) + 40);
LABEL_15:
      *(*(*v13 + 8) + 40) = result;
      *a4 = 1;
    }
  }

  return result;
}

- (uint64_t)checkForOrphanedMirroredRelationshipsInStore:(void *)store inManagedObjectContext:(void *)context error:
{
  v61 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  v45[0] = 0;
  persistentStoreCoordinator = [a2 persistentStoreCoordinator];
  v7 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKMirroredRelationship entityPath]);
  [(NSFetchRequest *)v7 setPropertiesToFetch:&unk_1EF43D858];
  [(NSFetchRequest *)v7 setPropertiesToGroupBy:&unk_1EF43D870];
  [(NSFetchRequest *)v7 setResultType:2];
  v8 = [store executeFetchRequest:v7 error:v45];
  if (!v8)
  {
    v26 = v45[0];

    goto LABEL_25;
  }

  managedObjectModel = [persistentStoreCoordinator managedObjectModel];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v41 objects:v60 count:16];
  if (!v9)
  {
    goto LABEL_28;
  }

  storeCopy = store;
  v38 = v9;
  v32 = a2;
  v39 = *v42;
  v34 = 1;
  do
  {
    v10 = 0;
    do
    {
      if (*v42 != v39)
      {
        objc_enumerationMutation(v8);
      }

      v11 = *(*(&v41 + 1) + 8 * v10);
      v12 = objc_autoreleasePoolPush();
      v13 = [v11 objectForKeyedSubscript:@"cdEntityName"];
      v14 = [v11 objectForKeyedSubscript:@"relationshipName"];
      if ([objc_msgSend(objc_msgSend(objc_msgSend(managedObjectModel "entitiesByName")])
      {
        goto LABEL_16;
      }

      v15 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKMirroredRelationship entityPath]);
      -[NSFetchRequest setPredicate:](v15, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"cdEntityName = %@ AND relationshipName = %@", v13, v14]);
      v16 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:v15];
      [(NSBatchDeleteRequest *)v16 setResultType:2];
      v17 = [storeCopy executeRequest:v16 error:v45];
      if (v17)
      {
        v18 = objc_autoreleasePoolPush();
        Stream = __PFCloudKitLoggingGetStream();
        v20 = Stream;
        if (__ckLoggingOverride == 17)
        {
          v21 = OS_LOG_TYPE_FAULT;
        }

        else
        {
          v21 = 16 * (__ckLoggingOverride == 16);
        }

        type = v21;
        if (os_log_type_enabled(Stream, v21))
        {
          result = [v17 result];
          *buf = 136316674;
          v47 = "[PFCloudKitMetadataModelMigrator checkForOrphanedMirroredRelationshipsInStore:inManagedObjectContext:error:]";
          v48 = 1024;
          v49 = 1662;
          v50 = 2112;
          selfCopy = self;
          v52 = 2112;
          v53 = result;
          v54 = 2112;
          v55 = v13;
          v56 = 2112;
          v57 = v14;
          v58 = 2112;
          v59 = v32;
          _os_log_impl(&dword_18565F000, v20, type, "CoreData+CloudKit: %s(%d): %@ deleted %@ mirrored relationship entries because %@:%@ is no longer in the managed object model of this store: %@", buf, 0x44u);
        }

        objc_autoreleasePoolPop(v18);

LABEL_16:
        v23 = 1;
        goto LABEL_17;
      }

      v24 = v45[0];

      v23 = 0;
      v34 = 0;
LABEL_17:
      objc_autoreleasePoolPop(v12);
      if (!v23)
      {
        goto LABEL_22;
      }

      ++v10;
    }

    while (v38 != v10);
    v25 = [v8 countByEnumeratingWithState:&v41 objects:v60 count:16];
    v38 = v25;
  }

  while (v25);
LABEL_22:
  if (v34)
  {
LABEL_28:
    v28 = 1;
    goto LABEL_34;
  }

LABEL_25:
  v27 = v45[0];
  if (v27)
  {
    if (context)
    {
      v28 = 0;
      *context = v27;
      goto LABEL_34;
    }
  }

  else
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v47 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataModelMigrator.m";
      v48 = 1024;
      v49 = 1685;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
    }

    v30 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v47 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataModelMigrator.m";
      v48 = 1024;
      v49 = 1685;
      _os_log_fault_impl(&dword_18565F000, v30, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    }
  }

  v28 = 0;
LABEL_34:

  return v28;
}

- (uint64_t)checkForCorruptedRecordMetadataInStore:(void *)store inManagedObjectContext:(void *)context error:
{
  v48[1] = *MEMORY[0x1E69E9840];
  if (self)
  {
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v40 = 1;
    v31 = 0;
    v32 = &v31;
    v33 = 0x3052000000;
    v34 = __Block_byref_object_copy__50;
    v35 = __Block_byref_object_dispose__50;
    v36 = 0;
    v7 = [objc_msgSend(store "persistentStoreCoordinator")];
    v8 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKRecordMetadata entityPath]);
    [(NSFetchRequest *)v8 setFetchBatchSize:500];
    [(NSFetchRequest *)v8 setPropertiesToFetch:&unk_1EF43D8B8];
    v48[0] = a2;
    -[NSFetchRequest setAffectedStores:](v8, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:1]);
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 0;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __103__PFCloudKitMetadataModelMigrator_checkForCorruptedRecordMetadataInStore_inManagedObjectContext_error___block_invoke;
    v26[3] = &unk_1E6EC5718;
    v26[4] = a2;
    v26[5] = v7;
    v26[6] = &v27;
    v26[7] = &v37;
    v26[8] = &v31;
    [_PFRoutines efficientlyEnumerateManagedObjectsInFetchRequest:v8 usingManagedObjectContext:store andApplyBlock:v26];
    v9 = *(v38 + 24);
    if (v9 == 1 && *(v28 + 24) == 1)
    {
      v10 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:+[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKRecordMetadata entityPath])];
      [(NSBatchDeleteRequest *)v10 setResultType:0];
      v47 = a2;
      -[NSPersistentStoreRequest setAffectedStores:](v10, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1]);
      v11 = [objc_msgSend(objc_msgSend(store executeRequest:v10 error:{v32 + 5), "result"), "BOOLValue"}];
      v12 = objc_autoreleasePoolPush();
      if (v11)
      {
        Stream = __PFCloudKitLoggingGetStream();
        v14 = Stream;
        v15 = __ckLoggingOverride;
        if (__ckLoggingOverride && __ckLoggingOverride != 16 && __ckLoggingOverride != 17)
        {
          v15 = OS_LOG_TYPE_INFO;
        }

        if (os_log_type_enabled(Stream, v15))
        {
          *buf = 136315394;
          v42 = "[PFCloudKitMetadataModelMigrator checkForCorruptedRecordMetadataInStore:inManagedObjectContext:error:]";
          v43 = 1024;
          v44 = 2030;
          _os_log_impl(&dword_18565F000, v14, v15, "CoreData+CloudKit: %s(%d): Successfully purged record metadata during migration due to corrupted metadatas.", buf, 0x12u);
        }

        objc_autoreleasePoolPop(v12);
        *(v38 + 24) = 1;
      }

      else
      {
        v16 = __PFCloudKitLoggingGetStream();
        v17 = v16;
        if (__ckLoggingOverride == 17)
        {
          v18 = OS_LOG_TYPE_FAULT;
        }

        else
        {
          v18 = OS_LOG_TYPE_ERROR;
        }

        if (os_log_type_enabled(v16, v18))
        {
          v19 = v32[5];
          *buf = 136315650;
          v42 = "[PFCloudKitMetadataModelMigrator checkForCorruptedRecordMetadataInStore:inManagedObjectContext:error:]";
          v43 = 1024;
          v44 = 2033;
          v45 = 2112;
          v46 = v19;
          _os_log_impl(&dword_18565F000, v17, v18, "CoreData+CloudKit: %s(%d): Failed to purged corrupted record metadata during migration: %@", buf, 0x1Cu);
        }

        objc_autoreleasePoolPop(v12);
        *(v38 + 24) = 0;
        v20 = v32[5];
      }

      v9 = *(v38 + 24);
    }

    if (!v9)
    {
      v23 = v32[5];
      if (v23)
      {
        if (context)
        {
          *context = v23;
        }
      }

      else
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v42 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataModelMigrator.m";
          v43 = 1024;
          v44 = 2047;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
        }

        v25 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v42 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataModelMigrator.m";
          v43 = 1024;
          v44 = 2047;
          _os_log_fault_impl(&dword_18565F000, v25, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
        }
      }
    }

    v32[5] = 0;
    v21 = *(v38 + 24);
    _Block_object_dispose(&v27, 8);
    _Block_object_dispose(&v31, 8);
    _Block_object_dispose(&v37, 8);
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

- (uint64_t)cleanUpAfterClientMigrationWithStore:(void *)store andContext:(void *)context error:
{
  v52 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v41 = 0;
    v42 = &v41;
    v43 = 0x2020000000;
    v44 = 1;
    v35 = 0;
    v36 = &v35;
    v37 = 0x3052000000;
    v38 = __Block_byref_object_copy__50;
    v39 = __Block_byref_object_dispose__50;
    v40 = 0;
    v5 = objc_alloc(MEMORY[0x1E695DF70]);
    model = [a2 model];
    if (model)
    {
      model = model[4];
    }

    v7 = [v5 initWithCapacity:{objc_msgSend(model, "count")}];
    v8 = objc_alloc(MEMORY[0x1E695DFA8]);
    model2 = [a2 model];
    if (model2)
    {
      model2 = model2[4];
    }

    v10 = [v8 initWithCapacity:{objc_msgSend(model2, "count")}];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    model3 = [a2 model];
    if (model3)
    {
      v12 = *(model3 + 32);
    }

    else
    {
      v12 = 0;
    }

    v13 = [v12 countByEnumeratingWithState:&v31 objects:v51 count:16];
    if (v13)
    {
      v14 = *v32;
      do
      {
        v15 = 0;
        do
        {
          if (*v32 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v31 + 1) + 8 * v15);
          if (v16)
          {
            v17 = v16[46];
          }

          else
          {
            v17 = 0;
          }

          [v7 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v17)}];
          [v10 addObject:{objc_msgSend(v16, "name")}];
          ++v15;
        }

        while (v13 != v15);
        v18 = [v12 countByEnumeratingWithState:&v31 objects:v51 count:16];
        v13 = v18;
      }

      while (v18);
    }

    v19 = [[NSFetchRequest alloc] initWithEntityName:+[NSCKRecordMetadata entityPath]];
    -[NSFetchRequest setPredicate:](v19, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"NOT (entityId IN %@)", v7]);
    v20 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:v19];
    [(NSBatchDeleteRequest *)v20 setResultType:0];
    v50 = a2;
    -[NSPersistentStoreRequest setAffectedStores:](v20, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1]);
    if ([objc_msgSend(objc_msgSend(store executeRequest:v20 error:{v36 + 5), "result"), "BOOLValue"}])
    {
      v21 = [[NSFetchRequest alloc] initWithEntityName:+[NSCKMirroredRelationship entityPath]];
      [(NSFetchRequest *)v21 setFetchBatchSize:500];
      [(NSFetchRequest *)v21 setPropertiesToFetch:&unk_1EF43D8D0];
      v49 = a2;
      -[NSFetchRequest setAffectedStores:](v21, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1]);
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __89__PFCloudKitMetadataModelMigrator_cleanUpAfterClientMigrationWithStore_andContext_error___block_invoke;
      v30[3] = &unk_1E6EC5740;
      v30[4] = v10;
      v30[5] = a2;
      v30[6] = store;
      v30[7] = &v35;
      v30[8] = &v41;
      [_PFRoutines efficientlyEnumerateManagedObjectsInFetchRequest:v21 usingManagedObjectContext:store andApplyBlock:v30];
    }

    else
    {
      *(v42 + 24) = 0;
      v22 = v36[5];
    }

    if ((v42[3] & 1) == 0)
    {
      v25 = v36[5];
      if (v25)
      {
        if (context)
        {
          *context = v25;
        }
      }

      else
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v46 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataModelMigrator.m";
          v47 = 1024;
          v48 = 2143;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
        }

        v27 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v46 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataModelMigrator.m";
          v47 = 1024;
          v48 = 2143;
          _os_log_fault_impl(&dword_18565F000, v27, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
        }
      }
    }

    v36[5] = 0;
    v23 = *(v42 + 24);
    _Block_object_dispose(&v35, 8);
    _Block_object_dispose(&v41, 8);
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

- (uint64_t)moveBinaryDataFromColumn:(uint64_t)column forAttribute:(uint64_t)attribute toMetadataAsset:(uint64_t)asset byRelationshipNamed:(void *)named error:
{
  v40[1] = *MEMORY[0x1E69E9840];
  if (self)
  {
    if (!a2)
    {
      v14 = MEMORY[0x1E695DF30];
      v39 = @"selector";
      v40[0] = NSStringFromSelector(sel_moveBinaryDataFromColumn_forAttribute_toMetadataAsset_byRelationshipNamed_error_);
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v39 count:1];
      objc_exception_throw([v14 exceptionWithName:*MEMORY[0x1E695D940] reason:@"Missing 'column'" userInfo:v15]);
    }

    if (!column)
    {
      v16 = MEMORY[0x1E695DF30];
      v37 = @"selector";
      v38 = NSStringFromSelector(sel_moveBinaryDataFromColumn_forAttribute_toMetadataAsset_byRelationshipNamed_error_);
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      objc_exception_throw([v16 exceptionWithName:*MEMORY[0x1E695D940] reason:@"Missing 'attribute'" userInfo:v17]);
    }

    if (!attribute)
    {
      v18 = MEMORY[0x1E695DF30];
      v35 = @"selector";
      v36 = NSStringFromSelector(sel_moveBinaryDataFromColumn_forAttribute_toMetadataAsset_byRelationshipNamed_error_);
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      objc_exception_throw([v18 exceptionWithName:*MEMORY[0x1E695D940] reason:@"Missing 'metadataAssetEntity'" userInfo:v19]);
    }

    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 0;
    v21 = 0;
    v22 = &v21;
    v23 = 0x3052000000;
    v24 = __Block_byref_object_copy__50;
    v25 = __Block_byref_object_dispose__50;
    v26 = 0;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __115__PFCloudKitMetadataModelMigrator_moveBinaryDataFromColumn_forAttribute_toMetadataAsset_byRelationshipNamed_error___block_invoke;
    v20[3] = &unk_1E6EC5768;
    v20[4] = a2;
    v20[5] = attribute;
    v20[6] = asset;
    v20[7] = column;
    v20[8] = &v27;
    v20[9] = &v21;
    v8 = [[NSSQLBlockRequestContext alloc] initWithBlock:v20 context:0 sqlCore:*(self + 8)];
    [(NSSQLCore *)*(self + 8) dispatchRequest:v8 withRetries:0];

    if ((v28[3] & 1) == 0)
    {
      v11 = v22[5];
      if (v11)
      {
        if (named)
        {
          *named = v11;
        }
      }

      else
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v32 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataModelMigrator.m";
          v33 = 1024;
          v34 = 2287;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
        }

        v13 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v32 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataModelMigrator.m";
          v33 = 1024;
          v34 = 2287;
          _os_log_fault_impl(&dword_18565F000, v13, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
        }
      }
    }

    v22[5] = 0;
    v9 = *(v28 + 24);
    _Block_object_dispose(&v21, 8);
    _Block_object_dispose(&v27, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

- (uint64_t)checkAndPerformMigrationIfNecessary:(uint64_t *)necessary
{
  v76 = *MEMORY[0x1E69E9840];
  if (!necessary)
  {
    v21 = 0;
    return v21 & 1;
  }

  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3052000000;
  v36 = __Block_byref_object_copy__50;
  v37 = __Block_byref_object_dispose__50;
  v38 = 0;
  v26 = MEMORY[0x1E69E9820];
  v27 = 3221225472;
  v28 = __71__PFCloudKitMetadataModelMigrator_checkAndPerformMigrationIfNecessary___block_invoke;
  v29 = &unk_1E6EC5678;
  necessaryCopy = necessary;
  v31 = &v39;
  v32 = &v33;
  v4 = [[NSSQLBlockRequestContext alloc] initWithBlock:&v26 context:0 sqlCore:necessary[1]];
  [(NSSQLCore *)necessary[1] dispatchRequest:v4 withRetries:0];

  v5 = *(v40 + 24);
  if (v5 != 1)
  {
    goto LABEL_26;
  }

  v6 = v34;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 1;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3052000000;
  v47 = __Block_byref_object_copy__50;
  v48 = __Block_byref_object_dispose__50;
  v49 = 0;
  v7 = necessary[2];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __69__PFCloudKitMetadataModelMigrator_commitMigrationMetadataAndCleanup___block_invoke;
  v43[3] = &unk_1E6EC1EB8;
  v43[4] = necessary;
  v43[5] = &v50;
  v43[6] = &v44;
  [v7 performBlockAndWait:{v43, v26, v27, v28, v29, necessaryCopy, v31, v32}];
  LODWORD(persistentStoreCoordinator) = *(v51 + 24);
  if (persistentStoreCoordinator != 1)
  {
    goto LABEL_17;
  }

  if (necessary[4] == 2)
  {
    v9 = necessary[1];
    v10 = v45;
    v60 = 0;
    v61 = &v60;
    v62 = 0x2020000000;
    v63 = 1;
    v54 = 0;
    v55 = &v54;
    v56 = 0x3052000000;
    v57 = __Block_byref_object_copy__50;
    v58 = __Block_byref_object_dispose__50;
    v59 = 0;
    persistentStoreCoordinator = [v9 persistentStoreCoordinator];
    v11 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
    [(NSManagedObjectContext *)v11 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
    [(NSManagedObjectContext *)v11 setPersistentStoreCoordinator:persistentStoreCoordinator];
    [(NSManagedObjectContext *)v11 _setAllowAncillaryEntities:1];
    if (v11)
    {
      *&v11->_flags &= ~0x8000000u;
    }

    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __85__PFCloudKitMetadataModelMigrator_checkForRecordMetadataZoneCorruptionInStore_error___block_invoke;
    v69 = &unk_1E6EC56A0;
    necessaryCopy2 = necessary;
    v71 = v9;
    v74 = &v54;
    v75 = &v60;
    v72 = v11;
    v73 = persistentStoreCoordinator;
    [(NSManagedObjectContext *)v11 performBlockAndWait:buf];
    if ((v61[3] & 1) == 0)
    {
      v12 = v55[5];
      if (v12)
      {
        v10[5] = v12;
      }

      else
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *v64 = 136315394;
          v65 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataModelMigrator.m";
          v66 = 1024;
          v67 = 1625;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", v64, 0x12u);
        }

        v14 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          *v64 = 136315394;
          v65 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataModelMigrator.m";
          v66 = 1024;
          v67 = 1625;
          _os_log_fault_impl(&dword_18565F000, v14, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", v64, 0x12u);
        }
      }
    }

    v55[5] = 0;
    LOBYTE(persistentStoreCoordinator) = *(v61 + 24);
    _Block_object_dispose(&v54, 8);
    _Block_object_dispose(&v60, 8);
    *(v51 + 24) = persistentStoreCoordinator;
  }

  if ((persistentStoreCoordinator & 1) == 0)
  {
    v15 = v45[5];
    LODWORD(persistentStoreCoordinator) = *(v51 + 24);
LABEL_17:
    if (!persistentStoreCoordinator)
    {
      v16 = v45[5];
      if (v16)
      {
        v6[5] = v16;
      }

      else
      {
        v17 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataModelMigrator.m";
          *&buf[12] = 1024;
          *&buf[14] = 1334;
          _os_log_error_impl(&dword_18565F000, v17, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
        }

        v18 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataModelMigrator.m";
          *&buf[12] = 1024;
          *&buf[14] = 1334;
          _os_log_fault_impl(&dword_18565F000, v18, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
        }
      }
    }
  }

  v45[5] = 0;
  v19 = *(v51 + 24);
  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v50, 8);
  *(v40 + 24) = v19;
  if ((v19 & 1) == 0)
  {
    v20 = v34[5];
    v5 = *(v40 + 24);
LABEL_26:
    if (!v5)
    {
      v23 = v34[5];
      if (v23)
      {
        if (a2)
        {
          *a2 = v23;
        }
      }

      else
      {
        v24 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataModelMigrator.m";
          *&buf[12] = 1024;
          *&buf[14] = 1377;
          _os_log_error_impl(&dword_18565F000, v24, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
        }

        v25 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataModelMigrator.m";
          *&buf[12] = 1024;
          *&buf[14] = 1377;
          _os_log_fault_impl(&dword_18565F000, v25, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
        }
      }
    }
  }

  v34[5] = 0;
  v21 = *(v40 + 24);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v39, 8);
  return v21 & 1;
}

void __71__PFCloudKitMetadataModelMigrator_checkAndPerformMigrationIfNecessary___block_invoke(void *a1, void *a2)
{
  v2 = a2;
  v80[16] = *MEMORY[0x1E69E9840];
  *(*(a1[5] + 8) + 24) = 1;
  v3 = a1[4];
  if (a2)
  {
    v4 = a2[3];
    if (!v3)
    {
      goto LABEL_68;
    }
  }

  else
  {
    v4 = 0;
    if (!v3)
    {
      goto LABEL_68;
    }
  }

  v5 = *(a1[6] + 8);
  *&v59 = 0;
  *(&v59 + 1) = &v59;
  *&v60 = 0x2020000000;
  BYTE8(v60) = 1;
  v74 = 0;
  v75 = &v74;
  v76 = 0x3052000000;
  v77 = __Block_byref_object_copy__50;
  v78 = __Block_byref_object_dispose__50;
  v79 = 0;
  PFBundleVersion = +[_PFRoutines _getPFBundleVersionNumber];
  v7 = [PFCloudKitMetadataModel newMetadataModelForFrameworkVersion:?];
  v9 = [[NSSQLModel alloc] initWithManagedObjectModel:v7];
  v10 = v3[3];
  if (v10)
  {
    objc_setProperty_nonatomic(v10, v8, v7, 64);
    v12 = v3[3];
    if (v12)
    {
      objc_setProperty_nonatomic(v12, v11, v9, 72);
    }
  }

  v73[0] = 0;
  v13 = [PFCloudKitMetadataModel identifyModelForStore:v4 withConnection:v73 hasOldMetadataTables:?];
  v15 = [[NSSQLModel alloc] initWithManagedObjectModel:v13];
  v16 = v3[3];
  if (v16)
  {
    objc_setProperty_nonatomic(v16, v14, v13, 80);
    v18 = v3[3];
    if (v18)
    {
      objc_setProperty_nonatomic(v18, v17, v15, 88);
      v19 = v3[3];
      if (v19)
      {
        *(v19 + 50) = v73[0];
      }
    }
  }

  if ([objc_msgSend(v3[1] "metadata")])
  {
    v20 = v3[3];
    if (v20)
    {
      *(v20 + 52) = 1;
    }
  }

  v21 = objc_opt_class();
  v22 = [-[NSSQLModel entityNamed:](v9 entityNamed:{NSStringFromClass(v21)), "tableName"}];
  if (v4 && ([(NSSQLiteConnection *)v4 _hasTableWithName:v22 isTemp:0]& 1) != 0)
  {
    *v71 = 0;
    *&v71[8] = v71;
    *&v71[16] = 0x2020000000;
    v72 = 0;
    if (v9)
    {
      entitiesByName = v9->_entitiesByName;
    }

    else
    {
      entitiesByName = 0;
    }

    *&v63 = MEMORY[0x1E69E9820];
    *(&v63 + 1) = 3221225472;
    *&v64 = __70__PFCloudKitMetadataModelMigrator_prepareContextWithConnection_error___block_invoke;
    *(&v64 + 1) = &unk_1E6EC5628;
    *&v65 = v15;
    *(&v65 + 1) = v71;
    [(NSKnownKeysDictionary *)entitiesByName enumerateKeysAndObjectsUsingBlock:&v63];
    if (*(*&v71[8] + 24) == 1)
    {
      v24 = objc_autoreleasePoolPush();
      Stream = __PFCloudKitLoggingGetStream();
      v26 = Stream;
      v27 = __ckLoggingOverride;
      if (__ckLoggingOverride && __ckLoggingOverride != 16 && __ckLoggingOverride != 17)
      {
        v27 = OS_LOG_TYPE_INFO;
      }

      if (os_log_type_enabled(Stream, v27))
      {
        *buf = 136315394;
        v68 = "[PFCloudKitMetadataModelMigrator prepareContextWithConnection:error:]";
        v69 = 1024;
        v70 = 124;
        _os_log_impl(&dword_18565F000, v26, v27, "CoreData+CloudKit: %s(%d): Migration discovered mutated entity IDs, precomputing z_ent changes.", buf, 0x12u);
      }

      objc_autoreleasePoolPop(v24);
      v28 = [(PFCloudKitMetadataModelMigrator *)v3 computeAncillaryEntityPrimaryKeyTableEntriesForStore:v75 + 5 error:?];
      *(*(&v59 + 1) + 24) = v28;
      if ((v28 & 1) == 0)
      {
        v29 = v75[5];
      }
    }

    v30 = v3[2];
    v80[0] = MEMORY[0x1E69E9820];
    v80[1] = 3221225472;
    v80[2] = __70__PFCloudKitMetadataModelMigrator_prepareContextWithConnection_error___block_invoke_8;
    v80[3] = &unk_1E6EC1EB8;
    v80[4] = v3;
    v80[5] = &v59;
    v80[6] = &v74;
    [v30 performBlockAndWait:v80];
    _Block_object_dispose(v71, 8);
  }

  else
  {
    v31 = v3[3];
    if (v31)
    {
      *(v31 + 49) = 1;
      v32 = v3[3];
      if (v32)
      {
        *(v32 + 53) = 1;
      }
    }
  }

  if ((*(*(&v59 + 1) + 24) & 1) == 0)
  {
    v33 = v75[5];
    if (v33)
    {
      *(v5 + 40) = v33;
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *v71 = 136315394;
        *&v71[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataModelMigrator.m";
        *&v71[12] = 1024;
        *&v71[14] = 188;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", v71, 0x12u);
      }

      v35 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
      {
        *v71 = 136315394;
        *&v71[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataModelMigrator.m";
        *&v71[12] = 1024;
        *&v71[14] = 188;
        _os_log_fault_impl(&dword_18565F000, v35, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", v71, 0x12u);
      }
    }
  }

  v75[5] = 0;
  v36 = *(*(&v59 + 1) + 24);
  _Block_object_dispose(&v74, 8);
  _Block_object_dispose(&v59, 8);
  if (v36 == 1)
  {
    v37 = v2 ? v2[3] : 0;
    if ([(PFCloudKitMetadataModelMigrator *)a1[4] calculateMigrationStepsWithConnection:v37 error:(*(a1[6] + 8) + 40)])
    {
      v38 = a1[4];
      if (v2)
      {
        v2 = v2[3];
      }

      if (v38)
      {
        v39 = *(v38 + 24);
        if (v39 && *(v39 + 48) == 1)
        {
          [(NSSQLiteConnection *)v2 connect];
          [(NSSQLiteConnection *)v2 beginTransaction];
          v65 = 0u;
          v66 = 0u;
          v63 = 0u;
          v64 = 0u;
          v40 = *(v38 + 24);
          if (v40)
          {
            v41 = *(v40 + 24);
          }

          else
          {
            v41 = 0;
          }

          v42 = [v41 countByEnumeratingWithState:&v63 objects:v80 count:16];
          if (v42)
          {
            v43 = *v64;
            do
            {
              for (i = 0; i != v42; ++i)
              {
                if (*v64 != v43)
                {
                  objc_enumerationMutation(v41);
                }

                v45 = *(*(&v63 + 1) + 8 * i);
                v46 = objc_autoreleasePoolPush();
                [(NSSQLiteConnection *)v2 dedupeRowsForUniqueConstraintsInCloudKitMetadataEntity:v45];
                objc_autoreleasePoolPop(v46);
              }

              v42 = [v41 countByEnumeratingWithState:&v63 objects:v80 count:16];
            }

            while (v42);
          }

          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          v47 = *(v38 + 24);
          if (v47)
          {
            v48 = *(v47 + 8);
          }

          else
          {
            v48 = 0;
          }

          v49 = [v48 countByEnumeratingWithState:&v59 objects:&v74 count:16];
          if (v49)
          {
            v50 = *v60;
            do
            {
              for (j = 0; j != v49; ++j)
              {
                if (*v60 != v50)
                {
                  objc_enumerationMutation(v48);
                }

                v52 = *(*(&v59 + 1) + 8 * j);
                v53 = objc_autoreleasePoolPush();
                [(NSSQLiteConnection *)v2 prepareAndExecuteSQLStatement:v52];
                objc_autoreleasePoolPop(v53);
              }

              v49 = [v48 countByEnumeratingWithState:&v59 objects:&v74 count:16];
            }

            while (v49);
          }

          v54 = *(v38 + 24);
          if (v54)
          {
            v55 = *(v54 + 16);
          }

          else
          {
            v55 = 0;
          }

          [(NSSQLiteConnection *)v2 createTablesForEntities:v55];
          [(NSSQLiteConnection *)v2 commitTransaction];
        }

        [(NSSQLiteConnection *)v2 endFetchAndRecycleStatement:?];
        return;
      }
    }
  }

LABEL_68:
  *(*(a1[5] + 8) + 24) = 0;
  v56 = *(*(a1[6] + 8) + 40);

  v57 = v56;
}

void __94__PFCloudKitMetadataModelMigrator_computeAncillaryEntityPrimaryKeyTableEntriesForStore_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v44 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *(a2 + 24);
  }

  else
  {
    v3 = 0;
  }

  v33 = v3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [v3 adapter];
  v30 = a1;
  v6 = [objc_msgSend(*(a1 + 32) "ancillarySQLModels")];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  if (v6)
  {
    v7 = *(v6 + 32);
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v8)
  {
    v32 = *v39;
    obj = v7;
    do
    {
      v9 = 0;
      do
      {
        if (*v39 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v38 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        v12 = [NSSQLiteStatement alloc];
        if (v10)
        {
          v13 = v10[46];
        }

        else
        {
          v13 = 0;
        }

        v14 = -[NSSQLiteStatement initWithEntity:sqlString:](v12, "initWithEntity:sqlString:", 0, objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], @"Z_PRIMARYKEY", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v13]));
        [v4 addObject:v14];

        v15 = [(NSSQLiteAdapter *)v5 newPrimaryKeyInitializeStatementForEntity:v10 withInitialMaxPK:0];
        [v4 addObject:v15];

        v16 = [v10 tableName];
        if (v3 && [(NSSQLiteConnection *)v3 _hasTableWithName:v16 isTemp:0])
        {
          v17 = [(NSSQLiteAdapter *)v5 newSimplePrimaryKeyUpdateStatementForEntity:v10];
          [v4 addObject:v17];

          v18 = [NSSQLiteStatement alloc];
          v19 = MEMORY[0x1E696AEC0];
          v20 = [v10 tableName];
          if (v10)
          {
            v21 = v10[46];
          }

          else
          {
            v21 = 0;
          }

          v22 = -[NSSQLiteStatement initWithEntity:sqlString:](v18, "initWithEntity:sqlString:", 0, objc_msgSend_stringWithFormat_(v19, v20, [MEMORY[0x1E696AD98] numberWithUnsignedInt:v21]));
          [v4 addObject:v22];
        }

        objc_autoreleasePoolPop(v11);
        ++v9;
      }

      while (v8 != v9);
      v23 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
      v8 = v23;
    }

    while (v23);
  }

  v24 = v3;
  [(NSSQLiteConnection *)v3 connect];
  [(NSSQLiteConnection *)v3 beginTransaction];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v25 = [v4 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v25)
  {
    v26 = *v35;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v35 != v26)
        {
          objc_enumerationMutation(v4);
        }

        v28 = *(*(&v34 + 1) + 8 * i);
        v29 = objc_autoreleasePoolPush();
        v24 = v33;
        [(NSSQLiteConnection *)v33 prepareAndExecuteSQLStatement:v28];
        objc_autoreleasePoolPop(v29);
      }

      v25 = [v4 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v25);
  }

  [(NSSQLiteConnection *)v24 commitTransaction];
  *(*(*(v30 + 40) + 8) + 24) = 1;
  [(NSSQLiteConnection *)v24 endFetchAndRecycleStatement:?];
}

void __85__PFCloudKitMetadataModelMigrator_checkForRecordMetadataZoneCorruptionInStore_error___block_invoke(void *a1)
{
  v45[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(getCloudKitCKRecordZoneIDClass[0]());
  v3 = [v2 initWithZoneName:@"com.apple.coredata.cloudkit.zone" ownerName:getCloudKitCKCurrentUserDefaultName()];
  v4 = [NSCKRecordZoneMetadata zoneMetadataForZoneID:v3 inDatabaseWithScope:*(a1[4] + 32) forStore:a1[5] inContext:a1[6] error:*(a1[8] + 8) + 40];
  v5 = v4;
  if (v4)
  {
    if ([(NSManagedObject *)v4 isInserted])
    {
      *(*(a1[9] + 8) + 24) = [a1[6] save:*(a1[8] + 8) + 40];
      if ((*(*(a1[9] + 8) + 24) & 1) == 0)
      {
        v6 = *(*(a1[8] + 8) + 40);
      }
    }

    if (*(*(a1[9] + 8) + 24) == 1)
    {
      v7 = [(NSManagedObject *)v5 objectID];
      v8 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKRecordMetadata entityPath]);
      [(NSFetchRequest *)v8 setRelationshipKeyPathsForPrefetching:&unk_1EF43D840];
      v45[0] = a1[5];
      -[NSFetchRequest setAffectedStores:](v8, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:1]);
      [(NSFetchRequest *)v8 setFetchBatchSize:200];
      v9 = a1[6];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __85__PFCloudKitMetadataModelMigrator_checkForRecordMetadataZoneCorruptionInStore_error___block_invoke_2;
      v31[3] = &unk_1E6EC5368;
      v31[4] = v9;
      v31[5] = v7;
      v32 = *(a1 + 4);
      [_PFRoutines efficientlyEnumerateManagedObjectsInFetchRequest:v8 usingManagedObjectContext:v9 andApplyBlock:v31];
    }
  }

  else
  {
    *(*(a1[9] + 8) + 24) = 0;
    v10 = *(*(a1[8] + 8) + 40);
  }

  v11 = *(a1[4] + 24);
  if (v11 && *(v11 + 53) == 1)
  {
    v12 = a1[7];
    v44 = a1[5];
    v13 = [v12 currentPersistentHistoryTokenFromStores:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v44, 1)}];
    if (v13)
    {
      v14 = [objc_msgSend(v13 "storeTokens")];
    }

    else
    {
      v14 = &unk_1EF435F38;
    }

    v15 = *(a1[4] + 24);
    if (v15)
    {
      v16 = *(v15 + 64);
    }

    else
    {
      v16 = 0;
    }

    v17 = [v16 entitiesByName];
    v18 = objc_opt_class();
    v19 = [v17 objectForKeyedSubscript:NSStringFromClass(v18)];
    if ([objc_msgSend(v19 "propertiesByName")])
    {
      v20 = @"systemFieldsAsset";
    }

    else
    {
      if (![objc_msgSend(v19 "propertiesByName")])
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v43 = v19;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Unable to find a system fields attribute on entity: %@\n", buf, 0xCu);
        }

        v22 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          v43 = v19;
          _os_log_fault_impl(&dword_18565F000, v22, OS_LOG_TYPE_FAULT, "CoreData: Unable to find a system fields attribute on entity: %@", buf, 0xCu);
        }
      }

      v20 = @"ckRecordSystemFields";
    }

    if (*(*(a1[9] + 8) + 24) == 1)
    {
      v23 = [[NSBatchUpdateRequest alloc] initWithEntityName:+[NSCKRecordMetadata entityPath]];
      -[NSBatchUpdateRequest setPredicate:](v23, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == NULL", v20]);
      v40[0] = @"needsUpload";
      v24 = [MEMORY[0x1E696ABC8] expressionForConstantValue:MEMORY[0x1E695E118]];
      v40[1] = @"pendingExportTransactionNumber";
      v41[0] = v24;
      v41[1] = [MEMORY[0x1E696ABC8] expressionForConstantValue:v14];
      -[NSBatchUpdateRequest setPropertiesToUpdate:](v23, "setPropertiesToUpdate:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:2]);
      v39 = a1[5];
      -[NSPersistentStoreRequest setAffectedStores:](v23, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1]);
      [(NSBatchUpdateRequest *)v23 setResultType:0];
      if (([objc_msgSend(objc_msgSend(a1[6] executeRequest:v23 error:{*(a1[8] + 8) + 40), "result"), "BOOLValue"}] & 1) == 0)
      {
        *(*(a1[9] + 8) + 24) = 0;
        v25 = *(*(a1[8] + 8) + 40);
      }

      if (*(*(a1[9] + 8) + 24))
      {
        v26 = [[NSBatchUpdateRequest alloc] initWithEntityName:+[NSCKRecordMetadata entityPath]];
        -[NSBatchUpdateRequest setPredicate:](v26, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != NULL", v20]);
        v37 = @"lastExportedTransactionNumber";
        v38 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v14];
        -[NSBatchUpdateRequest setPropertiesToUpdate:](v26, "setPropertiesToUpdate:", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1]);
        [(NSBatchUpdateRequest *)v26 setResultType:0];
        v36 = a1[5];
        -[NSPersistentStoreRequest setAffectedStores:](v26, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1]);
        if (([objc_msgSend(objc_msgSend(a1[6] executeRequest:v26 error:{*(a1[8] + 8) + 40), "result"), "BOOLValue"}] & 1) == 0)
        {
          *(*(a1[9] + 8) + 24) = 0;
          v27 = *(*(a1[8] + 8) + 40);
        }
      }
    }
  }

  v28 = *(a1[4] + 24);
  if (v28 && *(v28 + 55) == 1 && *(*(a1[9] + 8) + 24) == 1)
  {
    v29 = [[NSBatchUpdateRequest alloc] initWithEntityName:+[NSCKRecordZoneMetadata entityPath]];
    -[NSBatchUpdateRequest setPredicate:](v29, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"needsNewShareInvitation == NULL"]);
    v34 = @"needsNewShareInvitation";
    v35 = [MEMORY[0x1E696ABC8] expressionForConstantValue:MEMORY[0x1E695E110]];
    -[NSBatchUpdateRequest setPropertiesToUpdate:](v29, "setPropertiesToUpdate:", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1]);
    [(NSBatchUpdateRequest *)v29 setResultType:0];
    v33 = a1[5];
    -[NSPersistentStoreRequest setAffectedStores:](v29, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1]);
    if (([objc_msgSend(objc_msgSend(a1[6] executeRequest:v29 error:{*(a1[8] + 8) + 40), "result"), "BOOLValue"}] & 1) == 0)
    {
      *(*(a1[9] + 8) + 24) = 0;
      v30 = *(*(a1[8] + 8) + 40);
    }
  }
}

id __85__PFCloudKitMetadataModelMigrator_checkForRecordMetadataZoneCorruptionInStore_error___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v4 = a4;
  v39 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    result = a3;
    *(*(*(a1 + 48) + 8) + 40) = result;
LABEL_37:
    *v4 = 1;
    return result;
  }

  v6 = [*(a1 + 32) existingObjectWithID:*(a1 + 40) error:*(*(a1 + 48) + 8) + 40];
  if (v6)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v7 = [a2 countByEnumeratingWithState:&v28 objects:v38 count:16];
    if (v7)
    {
      v8 = *v29;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v29 != v8)
          {
            objc_enumerationMutation(a2);
          }

          v10 = *(*(&v28 + 1) + 8 * i);
          v11 = objc_autoreleasePoolPush();
          v12 = [v10 recordZone];
          if (![v12 ckRecordZoneName] || objc_msgSend(v12, "isDeleted"))
          {
            v13 = objc_autoreleasePoolPush();
            Stream = __PFCloudKitLoggingGetStream();
            v15 = Stream;
            if (__ckLoggingOverride == 17)
            {
              v16 = 17;
            }

            else
            {
              v16 = 2;
            }

            if (__ckLoggingOverride == 16)
            {
              v16 = 16;
            }

            if (__ckLoggingOverride == 1)
            {
              v17 = 1;
            }

            else
            {
              v17 = 2;
            }

            if (!__ckLoggingOverride)
            {
              v17 = 0;
            }

            if (__ckLoggingOverride <= 0xFu)
            {
              v18 = v17;
            }

            else
            {
              v18 = v16;
            }

            if (os_log_type_enabled(Stream, v18))
            {
              v19 = [v10 objectID];
              *buf = 136315650;
              v33 = "[PFCloudKitMetadataModelMigrator checkForRecordMetadataZoneCorruptionInStore:error:]_block_invoke_2";
              v34 = 1024;
              v35 = 1510;
              v36 = 2112;
              v37 = v19;
              _os_log_impl(&dword_18565F000, v15, v18, "CoreData+CloudKit: %s(%d): Found corrupt zone on record metadata: %@", buf, 0x1Cu);
            }

            objc_autoreleasePoolPop(v13);
            [v10 setRecordZone:v6];
          }

          objc_autoreleasePoolPop(v11);
        }

        v7 = [a2 countByEnumeratingWithState:&v28 objects:v38 count:16];
      }

      while (v7);
    }

    result = [*(a1 + 32) save:*(*(a1 + 48) + 8) + 40];
    if ((result & 1) == 0)
    {
      *(*(*(a1 + 56) + 8) + 24) = 0;
      result = *(*(*(a1 + 48) + 8) + 40);
    }
  }

  else
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      v23 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138412290;
      v33 = v23;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Failed to refresh zone for assignment during corrupt zone cleanup: %@\n", buf, 0xCu);
    }

    v22 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      v24 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138412290;
      v33 = v24;
      _os_log_fault_impl(&dword_18565F000, v22, OS_LOG_TYPE_FAULT, "CoreData: Failed to refresh zone for assignment during corrupt zone cleanup: %@", buf, 0xCu);
    }

    result = *(*(*(a1 + 48) + 8) + 40);
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  v4 = a4;
  if (!*(*(*(a1 + 56) + 8) + 24))
  {
    goto LABEL_37;
  }

  return result;
}

void __107__PFCloudKitMetadataModelMigrator_migrateMetadataForObjectsInStore_toNSCKRecordMetadataUsingContext_error___block_invoke(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v47 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    *(*(a1[9] + 8) + 24) = 0;
    *(*(a1[8] + 8) + 40) = a3;
LABEL_33:
    *a4 = 1;
    return;
  }

  v4 = a1[4];
  if (!v4)
  {
LABEL_32:
    *(*(a1[9] + 8) + 24) = 0;
    v25 = *(*(a1[8] + 8) + 40);
    goto LABEL_33;
  }

  v7 = a1[5];
  v6 = a1[6];
  v8 = a1[7];
  v28 = *(a1[8] + 8);
  v39 = 0;
  v30 = [PFCloudKitSerializer defaultRecordZoneIDForDatabaseScope:*(v4 + 32)];
  v32 = [objc_alloc(getCloudKitCKRecordZoneClass()) initWithZoneID:v30];
  v9 = objc_msgSend_valueForKey_(a2);
  v34 = [NSCKRecordMetadata createMapOfMetadataMatchingObjectIDs:v9 inStore:v6 inManagedObjectContext:v8 error:&v39];
  v10 = [v6 mirroringDelegate];
  if (!v34)
  {
    v33 = 0;
    v34 = 0;
LABEL_25:

LABEL_26:
    if (v39)
    {
      *(v28 + 40) = v39;
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v41 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataModelMigrator.m";
        v42 = 1024;
        v43 = 1813;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v24 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v41 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataModelMigrator.m";
        v42 = 1024;
        v43 = 1813;
        _os_log_fault_impl(&dword_18565F000, v24, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }

    goto LABEL_32;
  }

  v11 = v10;
  v26 = v7;
  v27 = v8;
  v33 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a2, "count")}];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v12 = [a2 countByEnumeratingWithState:&v35 objects:v46 count:16];
  if (v12)
  {
    v13 = *v36;
    do
    {
      v14 = 0;
      do
      {
        if (*v36 != v13)
        {
          objc_enumerationMutation(a2);
        }

        v15 = *(*(&v35 + 1) + 8 * v14);
        v16 = objc_autoreleasePoolPush();
        if (![v34 objectForKey:{objc_msgSend(v15, "objectID")}])
        {
          if (v11)
          {
            v17 = *(v11 + 8);
          }

          else
          {
            v17 = 0;
          }

          v18 = +[NSCKRecordMetadata insertMetadataForObject:setRecordName:inZoneWithID:recordNamePrefix:error:](NSCKRecordMetadata, "insertMetadataForObject:setRecordName:inZoneWithID:recordNamePrefix:error:", v15, [v17 preserveLegacyRecordMetadataBehavior], objc_msgSend(v32, "zoneID"), 0, &v39);
          v19 = objc_msgSend_valueForKey_(v15);
          [v18 updateSystemFieldsWithData:v19];

          [v33 addObject:{objc_msgSend(v15, "objectID")}];
        }

        objc_autoreleasePoolPop(v16);
        ++v14;
      }

      while (v12 != v14);
      v20 = [a2 countByEnumeratingWithState:&v35 objects:v46 count:16];
      v12 = v20;
    }

    while (v20);
  }

  if ([v27 hasChanges] && !objc_msgSend(v27, "save:", &v39))
  {
    goto LABEL_25;
  }

  if (![v33 count])
  {

    return;
  }

  v21 = [[NSBatchUpdateRequest alloc] initWithEntity:v26];
  v44 = @"ckRecordSystemFields";
  v45 = [MEMORY[0x1E696ABC8] expressionForConstantValue:0];
  -[NSBatchUpdateRequest setPropertiesToUpdate:](v21, "setPropertiesToUpdate:", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1]);
  [(NSBatchUpdateRequest *)v21 setResultType:0];
  -[NSBatchUpdateRequest setPredicate:](v21, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF IN %@", v33]);
  v22 = [objc_msgSend(objc_msgSend(v27 executeRequest:v21 error:{&v39), "result"), "BOOLValue"}];

  if ((v22 & 1) == 0)
  {
    goto LABEL_26;
  }
}

void __149__PFCloudKitMetadataModelMigrator_addMigrationStatementsToDeleteDuplicateMirroredRelationshipsToContext_withManagedObjectContext_andSQLEntity_error___block_invoke(uint64_t a1)
{
  v47[2] = *MEMORY[0x1E69E9840];
  v1 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKMirroredRelationship entityPath]);
  v2 = objc_alloc_init(NSExpressionDescription);
  [(NSPropertyDescription *)v2 setName:@"count"];
  -[NSExpressionDescription setExpression:](v2, "setExpression:", [MEMORY[0x1E696ABC8] expressionWithFormat:@"ckRecordID.@count"]);
  [(NSExpressionDescription *)v2 setExpressionResultType:300];
  v47[0] = @"ckRecordID";
  v47[1] = v2;
  v31 = v2;
  -[NSFetchRequest setPropertiesToFetch:](v1, "setPropertiesToFetch:", [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:2]);
  [(NSFetchRequest *)v1 setPropertiesToGroupBy:&unk_1EF43D8A0];
  [(NSFetchRequest *)v1 setResultType:2];
  v3 = [*(a1 + 32) executeFetchRequest:v1 error:*(*(a1 + 56) + 8) + 40];
  v4 = v3;
  if (v3)
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v5 = [v3 countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v5)
    {
      v6 = *v42;
      v32 = v4;
      v33 = *v42;
LABEL_4:
      v7 = 0;
      v34 = v5;
      while (1)
      {
        if (*v42 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v41 + 1) + 8 * v7);
        if ([objc_msgSend(v8 objectForKey:{@"count", "integerValue"}] >= 2)
        {
          v9 = objc_autoreleasePoolPush();
          v10 = [v8 objectForKey:@"ckRecordID"];
          if (v10)
          {
            v11 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKMirroredRelationship entityPath]);
            -[NSFetchRequest setPredicate:](v11, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"ckRecordID = %@", v10]);
            [(NSFetchRequest *)v11 setResultType:1];
            v12 = [*(a1 + 32) executeFetchRequest:v11 error:*(*(a1 + 56) + 8) + 40];
            if (v12)
            {
              v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v39 = 0u;
              v40 = 0u;
              v37 = 0u;
              v38 = 0u;
              v14 = [v12 countByEnumeratingWithState:&v37 objects:v45 count:16];
              if (v14)
              {
                v15 = 0;
                v16 = *v38;
                do
                {
                  for (i = 0; i != v14; ++i)
                  {
                    if (*v38 != v16)
                    {
                      objc_enumerationMutation(v12);
                    }

                    if (v15)
                    {
                      [v13 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithLongLong:", objc_msgSend(*(*(&v37 + 1) + 8 * i), "_referenceData64"))}];
                    }

                    else
                    {
                      v15 = *(*(&v37 + 1) + 8 * i);
                    }
                  }

                  v14 = [v12 countByEnumeratingWithState:&v37 objects:v45 count:16];
                }

                while (v14);
              }

              if ([v13 count])
              {
                v18 = [NSSQLiteStatement alloc];
                v19 = MEMORY[0x1E696AEC0];
                v20 = [*(a1 + 40) tableName];
                v21 = *(a1 + 40);
                if (v21)
                {
                  v22 = *(v21 + 128);
                }

                else
                {
                  v22 = 0;
                }

                v23 = -[NSSQLiteStatement initWithEntity:sqlString:](v18, "initWithEntity:sqlString:", 0, objc_msgSend_stringWithFormat_(v19, v20, [v22 columnName], v13));
                v24 = *(a1 + 48);
                if (v24)
                {
                  [*(v24 + 8) addObject:v23];
                  *(v24 + 48) = 1;
                }
              }

              v25 = 1;
              v4 = v32;
            }

            else
            {
              *(*(*(a1 + 64) + 8) + 24) = 0;
              v28 = *(*(*(a1 + 56) + 8) + 40);
              v25 = 0;
            }
          }

          else
          {
            LogStream = _PFLogGetLogStream(17);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Found mirrored relationships without a recordID.\n", buf, 2u);
            }

            v27 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_fault_impl(&dword_18565F000, v27, OS_LOG_TYPE_FAULT, "CoreData: Found mirrored relationships without a recordID.", buf, 2u);
            }

            v25 = 1;
          }

          objc_autoreleasePoolPop(v9);
          v6 = v33;
          v5 = v34;
          if (!v25)
          {
            break;
          }
        }

        if (++v7 == v5)
        {
          v29 = [v4 countByEnumeratingWithState:&v41 objects:v46 count:16];
          v5 = v29;
          if (v29)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    v30 = *(*(*(a1 + 56) + 8) + 40);
  }
}

void __103__PFCloudKitMetadataModelMigrator_checkForCorruptedRecordMetadataInStore_inManagedObjectContext_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v42 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v6 = [a2 countByEnumeratingWithState:&v31 objects:v41 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v32;
      while (2)
      {
        v9 = 0;
        do
        {
          if (*v32 != v8)
          {
            objc_enumerationMutation(a2);
          }

          v10 = *(*(&v31 + 1) + 8 * v9);
          v11 = [objc_msgSend(v10 "entityId")];
          v12 = [*(a1 + 32) model];
          if (v12)
          {
            v13 = *(v12 + 64);
          }

          else
          {
            v13 = 0;
          }

          if (v11 > v13)
          {
            v15 = objc_autoreleasePoolPush();
            Stream = __PFCloudKitLoggingGetStream();
            v17 = Stream;
            if (__ckLoggingOverride == 17)
            {
              v18 = 17;
            }

            else
            {
              v18 = 1;
            }

            if (__ckLoggingOverride == 16)
            {
              v18 = 16;
            }

            if (__ckLoggingOverride)
            {
              v19 = v18;
            }

            else
            {
              v19 = OS_LOG_TYPE_DEFAULT;
            }

            if (os_log_type_enabled(Stream, v19))
            {
              *buf = 136315650;
              v36 = "[PFCloudKitMetadataModelMigrator checkForCorruptedRecordMetadataInStore:inManagedObjectContext:error:]_block_invoke";
              v37 = 1024;
              v38 = 1995;
              v39 = 2112;
              v40 = v10;
              _os_log_impl(&dword_18565F000, v17, v19, "CoreData+CloudKit: %s(%d): Found record metadata that points to missing entity: %@", buf, 0x1Cu);
            }

            objc_autoreleasePoolPop(v15);
            *(*(*(a1 + 48) + 8) + 24) = 1;
            return;
          }

          if (![objc_msgSend(*(a1 + 32) "model")])
          {
            v20 = objc_autoreleasePoolPush();
            v21 = __PFCloudKitLoggingGetStream();
            v22 = v21;
            if (__ckLoggingOverride == 17)
            {
              v23 = 17;
            }

            else
            {
              v23 = 1;
            }

            if (__ckLoggingOverride == 16)
            {
              v23 = 16;
            }

            if (__ckLoggingOverride)
            {
              v24 = v23;
            }

            else
            {
              v24 = OS_LOG_TYPE_DEFAULT;
            }

            if (os_log_type_enabled(v21, v24))
            {
              *buf = 136315650;
              v36 = "[PFCloudKitMetadataModelMigrator checkForCorruptedRecordMetadataInStore:inManagedObjectContext:error:]_block_invoke";
              v37 = 1024;
              v38 = 1999;
              v39 = 2112;
              v40 = v10;
              _os_log_impl(&dword_18565F000, v22, v24, "CoreData+CloudKit: %s(%d): Found record metadata that points to missing entity: %@", buf, 0x1Cu);
            }

            objc_autoreleasePoolPop(v20);
            *(*(*(a1 + 48) + 8) + 24) = 1;
            *a4 = 1;
            return;
          }

          if ([objc_msgSend(*(a1 + 32) "configurationName")] && (objc_msgSend(objc_msgSend(*(a1 + 32), "configurationName"), "isEqualToString:", @"PF_DEFAULT_CONFIGURATION_NAME") & 1) == 0 && (objc_msgSend(objc_msgSend(*(a1 + 40), "entitiesForConfiguration:", objc_msgSend(*(a1 + 32), "configurationName")), "containsObject:", objc_msgSend(objc_msgSend(*(a1 + 40), "entitiesByName"), "objectForKey:", objc_msgSend(objc_msgSend(objc_msgSend(*(a1 + 32), "model"), "entityForID:", objc_msgSend(objc_msgSend(v10, "entityId"), "unsignedLongValue")), "name"))) & 1) == 0)
          {
            v25 = objc_autoreleasePoolPush();
            v26 = __PFCloudKitLoggingGetStream();
            v27 = v26;
            v28 = __ckLoggingOverride;
            if (__ckLoggingOverride)
            {
              v29 = a4;
              if (__ckLoggingOverride != 16 && __ckLoggingOverride != 17)
              {
                v28 = OS_LOG_TYPE_INFO;
              }
            }

            else
            {
              v29 = a4;
            }

            if (os_log_type_enabled(v26, v28))
            {
              *buf = 136315650;
              v36 = "[PFCloudKitMetadataModelMigrator checkForCorruptedRecordMetadataInStore:inManagedObjectContext:error:]_block_invoke";
              v37 = 1024;
              v38 = 2008;
              v39 = 2112;
              v40 = v10;
              _os_log_impl(&dword_18565F000, v27, v28, "CoreData+CloudKit: %s(%d): Found record metadata that points to an entity that is no longer part of the store's configuration: %@", buf, 0x1Cu);
            }

            objc_autoreleasePoolPop(v25);
            *(*(*(a1 + 48) + 8) + 24) = 1;
            *v29 = 1;
            return;
          }

          ++v9;
        }

        while (v7 != v9);
        v14 = [a2 countByEnumeratingWithState:&v31 objects:v41 count:16];
        v7 = v14;
        if (v14)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    *a4 = 1;
    *(*(*(a1 + 64) + 8) + 40) = a3;
  }
}

void __89__PFCloudKitMetadataModelMigrator_cleanUpAfterClientMigrationWithStore_andContext_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4, _BYTE *a5)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = [a2 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v10)
    {
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(a2);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          if (![*(a1 + 32) containsObject:{objc_msgSend(v13, "cdEntityName")}] || (objc_msgSend(*(a1 + 32), "containsObject:", objc_msgSend(v13, "relatedEntityName")) & 1) == 0)
          {
            [v9 addObject:{objc_msgSend(v13, "objectID")}];
          }
        }

        v10 = [a2 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v10);
    }

    if ([v9 count])
    {
      v14 = [[NSBatchDeleteRequest alloc] initWithObjectIDs:v9];
      [(NSBatchDeleteRequest *)v14 setResultType:0];
      v20 = *(a1 + 40);
      -[NSPersistentStoreRequest setAffectedStores:](v14, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1]);
      if ([objc_msgSend(objc_msgSend(*(a1 + 48) executeRequest:v14 error:{*(*(a1 + 56) + 8) + 40), "result"), "BOOLValue"}])
      {
        *a5 = 1;
      }

      else
      {
        *(*(*(a1 + 64) + 8) + 24) = 0;
        v15 = *(*(*(a1 + 56) + 8) + 40);
        *a4 = 1;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 40) = a3;
    *(*(*(a1 + 64) + 8) + 24) = 0;
    *a4 = 1;
  }
}

void __115__PFCloudKitMetadataModelMigrator_moveBinaryDataFromColumn_forAttribute_toMetadataAsset_byRelationshipNamed_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v71 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 64) + 8) + 24) = 1;
  if (a2)
  {
    v2 = *(a2 + 24);
  }

  else
  {
    v2 = 0;
  }

  v61 = [*(a1 + 32) entity];
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = [*(v3 + 40) objectForKey:*(a1 + 48)];
  }

  else
  {
    v4 = 0;
  }

  v57 = [v4 foreignKey];
  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = [*(v5 + 40) objectForKey:*(a1 + 48)];
    if (v6)
    {
      v6 = [v6 propertyDescription];
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_msgSend(v6 "inverseRelationship")];
  if (v61)
  {
    v8 = [*(v61 + 40) objectForKey:v7];
  }

  else
  {
    v8 = 0;
  }

  v55 = [v8 foreignKey];
  v9 = [*(a1 + 56) allowsExternalBinaryDataStorage];
  v10 = *(a1 + 40);
  if (v10)
  {
    if (v9)
    {
      v11 = @"externalBinaryData";
    }

    else
    {
      v11 = @"binaryData";
    }

    v56 = [*(v10 + 40) objectForKey:v11];
  }

  else
  {
    v56 = 0;
  }

  do
  {
    v12 = objc_autoreleasePoolPush();
    v13 = [v61 tableName];
    if (v61)
    {
      v14 = *(v61 + 128);
      v15 = *(v61 + 136);
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }

    v16 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [*(a1 + 32) columnName]);
    v17 = [(NSSQLiteConnection *)v2 createArrayOfObjectIDsFromTableWithName:v13 usingPrimaryKeyColumn:v14 entityIDColumn:v15 matchingWhereClause:v16 limit:100 offset:0];
    objc_autoreleasePoolPop(v12);
    v54 = [v17 count];
    v60 = v17;
    if (v54)
    {
      [(NSSQLiteConnection *)v2 connect];
      [(NSSQLiteConnection *)v2 beginTransaction];
      v18 = [v17 count];
      v19 = [(NSSQLiteConnection *)v2 generatePrimaryKeysForEntity:v18 batch:?];
      obj = objc_alloc_init(MEMORY[0x1E695DF70]);
      if (v19 < 1)
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Failed to generate a primary key for asset insertion but didn't throw an error?\n", buf, 2u);
        }

        v48 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_18565F000, v48, OS_LOG_TYPE_FAULT, "CoreData: Failed to generate a primary key for asset insertion but didn't throw an error?", buf, 2u);
        }
      }

      else
      {
        v62 = 0;
        v58 = v19 - v18 + 1;
        while (v62 < [v60 count])
        {
          context = objc_autoreleasePoolPush();
          v20 = [v60 objectAtIndexedSubscript:v62];
          v21 = v20;
          v22 = *(a1 + 40);
          if (v22)
          {
            v23 = *(v22 + 184);
          }

          else
          {
            v23 = 0;
          }

          v24 = MEMORY[0x1E696AEC0];
          v25 = [v20 _referenceData64];
          v26 = [*(a1 + 32) columnName];
          v27 = [v61 tableName];
          if (v61)
          {
            v28 = *(v61 + 128);
          }

          else
          {
            v28 = 0;
          }

          v29 = objc_msgSend_stringWithFormat_(v24, v58 + v62, v23, v25, v26, v27, [v28 columnName], objc_msgSend(v21, "_referenceData64"));
          v30 = MEMORY[0x1E696AEC0];
          v31 = [*(a1 + 40) tableName];
          v32 = *(a1 + 40);
          if (v32)
          {
            v33 = *(v32 + 128);
          }

          else
          {
            v33 = 0;
          }

          v34 = [v33 columnName];
          v35 = *(a1 + 40);
          if (v35)
          {
            v36 = *(v35 + 136);
          }

          else
          {
            v36 = 0;
          }

          v37 = [v36 columnName];
          v38 = *(a1 + 40);
          if (v38)
          {
            v39 = *(v38 + 144);
          }

          else
          {
            v39 = 0;
          }

          v40 = -[NSSQLiteStatement initWithEntity:sqlString:]([NSSQLiteStatement alloc], "initWithEntity:sqlString:", *(a1 + 40), objc_msgSend_stringWithFormat_(v30, v31, v34, v37, [v39 columnName], objc_msgSend(v57, "columnName"), objc_msgSend(v56, "columnName"), v29));
          [obj addObject:v40];

          v41 = MEMORY[0x1E696AEC0];
          v42 = [v61 tableName];
          v43 = [*(a1 + 32) columnName];
          v44 = [v55 columnName];
          if (v61)
          {
            v45 = *(v61 + 128);
          }

          else
          {
            v45 = 0;
          }

          v46 = -[NSSQLiteStatement initWithEntity:sqlString:]([NSSQLiteStatement alloc], "initWithEntity:sqlString:", *(a1 + 40), objc_msgSend_stringWithFormat_(v41, v42, v43, v44, v58 + v62, [v45 columnName], objc_msgSend(v21, "_referenceData64")));
          [obj addObject:v46];

          objc_autoreleasePoolPop(context);
          ++v62;
        }
      }

      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v49 = [obj countByEnumeratingWithState:&v65 objects:v70 count:16];
      if (v49)
      {
        v50 = *v66;
        do
        {
          for (i = 0; i != v49; ++i)
          {
            if (*v66 != v50)
            {
              objc_enumerationMutation(obj);
            }

            v52 = *(*(&v65 + 1) + 8 * i);
            v53 = objc_autoreleasePoolPush();
            [(NSSQLiteConnection *)v2 prepareAndExecuteSQLStatement:v52];
            objc_autoreleasePoolPop(v53);
          }

          v49 = [obj countByEnumeratingWithState:&v65 objects:v70 count:16];
        }

        while (v49);
      }

      [(NSSQLiteConnection *)v2 commitTransaction];
    }
  }

  while (v54);
  [(NSSQLiteConnection *)v2 endFetchAndRecycleStatement:?];
}

void __52__PFCloudKitMetadataModelMigrator_dropColumn_error___block_invoke(void *a1, uint64_t a2)
{
  *(*(a1[6] + 8) + 24) = 1;
  if (a2)
  {
    v3 = *(a2 + 24);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1[4] + 24);
  if (v4 && *(v4 + 48) == 1)
  {
    [(NSSQLiteConnection *)v3 connect];
    [(NSSQLiteConnection *)v3 beginTransaction];
    if (a1[4])
    {
      v5 = -[NSSQLiteStatement initWithEntity:sqlString:]([NSSQLiteStatement alloc], "initWithEntity:sqlString:", [a1[5] entity], objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], objc_msgSend(objc_msgSend(a1[5], "entity"), "tableName"), objc_msgSend(a1[5], "columnName")));
    }

    else
    {
      v5 = 0;
    }

    [(NSSQLiteConnection *)v3 prepareAndExecuteSQLStatement:v5];
    [(NSSQLiteConnection *)v3 commitTransaction];
  }

  [(NSSQLiteConnection *)v3 endFetchAndRecycleStatement:?];
}

@end