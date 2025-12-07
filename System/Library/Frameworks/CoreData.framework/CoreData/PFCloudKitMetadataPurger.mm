@interface PFCloudKitMetadataPurger
- (uint64_t)_purgeBatchOfObjectIDs:(uint64_t)ds fromStore:(void *)store inManagedObjectContext:(uint64_t)context error:;
- (uint64_t)_purgeObjectsMatchingFetchRequest:(void *)request fromStore:usingContext:error:;
- (uint64_t)_purgeZoneRelatedObjectsInZoneWithID:(uint64_t)d inDatabaseWithScope:(void *)scope withOptions:(char)options inStore:(uint64_t)store usingContext:(void *)context error:(void *)error;
- (uint64_t)deleteZoneMetadataFromStore:(uint64_t)store inMonitor:(uint64_t)monitor forRecordZones:(uint64_t)zones inDatabaseWithScope:(void *)scope error:;
- (uint64_t)purgeMetadataAfterAccountChangeFromStore:(uint64_t)store inMonitor:(uint64_t)monitor inDatabaseWithScope:(void *)scope error:;
- (uint64_t)purgeMetadataFromStore:(uint64_t)store inMonitor:(uint64_t)monitor withOptions:(uint64_t)options forRecordZones:(uint64_t)zones inDatabaseWithScope:(__CFString *)scope andTransactionAuthor:(void *)author error:;
- (uint64_t)purgeMetadataMatchingObjectIDs:(uint64_t)ds inRequest:(uint64_t)request inStore:(uint64_t)store withMonitor:(void *)monitor error:;
@end

@implementation PFCloudKitMetadataPurger

- (uint64_t)purgeMetadataFromStore:(uint64_t)store inMonitor:(uint64_t)monitor withOptions:(uint64_t)options forRecordZones:(uint64_t)zones inDatabaseWithScope:(__CFString *)scope andTransactionAuthor:(void *)author error:
{
  v37 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = 1;
    v23 = 0;
    v24 = &v23;
    v25 = 0x3052000000;
    v26 = __Block_byref_object_copy__32;
    v27 = __Block_byref_object_dispose__32;
    v28 = 0;
    newBackgroundContextForMonitoredCoordinator = [(PFCloudKitStoreMonitor *)store newBackgroundContextForMonitoredCoordinator];
    if ([(__CFString *)scope length])
    {
      scopeCopy = scope;
    }

    else
    {
      scopeCopy = @"NSCloudKitMirroringDelegate.reset";
    }

    [(NSManagedObjectContext *)newBackgroundContextForMonitoredCoordinator setTransactionAuthor:scopeCopy];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __135__PFCloudKitMetadataPurger_purgeMetadataFromStore_inMonitor_withOptions_forRecordZones_inDatabaseWithScope_andTransactionAuthor_error___block_invoke;
    v22[3] = &unk_1E6EC4218;
    v22[4] = a2;
    v22[5] = options;
    v22[10] = monitor;
    v22[11] = zones;
    v22[6] = newBackgroundContextForMonitoredCoordinator;
    v22[7] = self;
    v22[8] = &v29;
    v22[9] = &v23;
    [(NSManagedObjectContext *)newBackgroundContextForMonitoredCoordinator performBlockAndWait:v22];
    if ((v30[3] & 1) == 0)
    {
      v19 = v24[5];
      if (v19)
      {
        if (author)
        {
          *author = v19;
        }
      }

      else
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v34 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataPurger.m";
          v35 = 1024;
          v36 = 256;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
        }

        v21 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v34 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataPurger.m";
          v35 = 1024;
          v36 = 256;
          _os_log_fault_impl(&dword_18565F000, v21, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
        }
      }
    }

    v24[5] = 0;
    v17 = *(v30 + 24);
    _Block_object_dispose(&v23, 8);
    _Block_object_dispose(&v29, 8);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

void __135__PFCloudKitMetadataPurger_purgeMetadataFromStore_inMonitor_withOptions_forRecordZones_inDatabaseWithScope_andTransactionAuthor_error___block_invoke(uint64_t a1)
{
  v156[1] = *MEMORY[0x1E69E9840];
  v119 = 0;
  v84 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v83 = [objc_msgSend(objc_msgSend(*(a1 + 32) "_persistentStoreCoordinator")];
  v2 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:*(a1 + 40)];
  v90 = a1;
  if ((*(a1 + 80) & 4) != 0)
  {
    v3 = [NSCKDatabaseMetadata databaseMetadataForScope:*(a1 + 32) forStore:*(a1 + 48) inContext:&v119 error:?];
    if (v3)
    {
      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      v4 = [(NSManagedObject *)v3 recordZones];
      v5 = [v4 countByEnumeratingWithState:&v115 objects:v143 count:16];
      if (v5)
      {
        v6 = *v116;
        do
        {
          for (i = 0; i != v5; ++i)
          {
            if (*v116 != v6)
            {
              objc_enumerationMutation(v4);
            }

            v8 = [(NSCKRecordZoneMetadata *)*(*(&v115 + 1) + 8 * i) createRecordZoneID];
            [v2 addObject:v8];
          }

          v5 = [v4 countByEnumeratingWithState:&v115 objects:v143 count:16];
        }

        while (v5);
      }
    }

    else
    {
      *(*(*(a1 + 64) + 8) + 24) = 0;
    }
  }

  v9 = v90;
  if (*(*(*(v90 + 64) + 8) + 24) == 1)
  {
    v10 = *(v90 + 80);
    if ((v10 & 1) == 0)
    {
      if ((v10 & 2) != 0)
      {
        if (![v2 count])
        {
          LogStream = _PFLogGetLogStream(17);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Asked to purge system fields without any zones from which to purge.\n", buf, 2u);
          }

          v12 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_18565F000, v12, OS_LOG_TYPE_FAULT, "CoreData: Asked to purge system fields without any zones from which to purge.", buf, 2u);
          }
        }

        v109 = 0u;
        v110 = 0u;
        v107 = 0u;
        v108 = 0u;
        v88 = [v2 countByEnumeratingWithState:&v107 objects:v141 count:16];
        if (v88)
        {
          v86 = *v108;
LABEL_22:
          v13 = 0;
          while (1)
          {
            if (*v108 != v86)
            {
              objc_enumerationMutation(v2);
            }

            v14 = *(*(&v107 + 1) + 8 * v13);
            v15 = objc_autoreleasePoolPush();
            Stream = __PFCloudKitLoggingGetStream();
            v17 = Stream;
            if (__ckLoggingOverride == 17)
            {
              v18 = OS_LOG_TYPE_FAULT;
            }

            else
            {
              v18 = 16 * (__ckLoggingOverride == 16);
            }

            if (os_log_type_enabled(Stream, v18))
            {
              v19 = [*(v90 + 48) transactionAuthor];
              *buf = 136315906;
              *&buf[4] = "[PFCloudKitMetadataPurger purgeMetadataFromStore:inMonitor:withOptions:forRecordZones:inDatabaseWithScope:andTransactionAuthor:error:]_block_invoke";
              *&buf[12] = 1024;
              *&buf[14] = 99;
              *&buf[18] = 2112;
              *&buf[20] = v19;
              *&buf[28] = 2112;
              *&buf[30] = v14;
              _os_log_impl(&dword_18565F000, v17, v18, "CoreData+CloudKit: %s(%d): %@ - Purging system fields from data in zone: %@", buf, 0x26u);
            }

            objc_autoreleasePoolPop(v15);
            if (!*(v90 + 56))
            {
              break;
            }

            v20 = *(v90 + 32);
            v21 = *(v90 + 48);
            v133 = 0;
            v134 = &v133;
            v135 = 0x2020000000;
            v136 = 1;
            v127 = 0;
            v128 = &v127;
            v129 = 0x3052000000;
            v130 = __Block_byref_object_copy__32;
            v131 = __Block_byref_object_dispose__32;
            v132 = 0;
            v22 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKRecordMetadata entityPath]);
            [(NSFetchRequest *)v22 setReturnsObjectsAsFaults:0];
            [(NSFetchRequest *)v22 setFetchBatchSize:250];
            -[NSFetchRequest setPredicate:](v22, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"recordZone.ckRecordZoneName = %@ AND recordZone.ckOwnerName = %@", objc_msgSend(v14, "zoneName"), objc_msgSend(v14, "ownerName")]);
            v156[0] = v20;
            -[NSFetchRequest setAffectedStores:](v22, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:v156 count:1]);
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = __135__PFCloudKitMetadataPurger__wipeSystemFieldsAndResetUploadStateForMetadataInZoneWithID_inDatabaseWithScope_inStore_usingContext_error___block_invoke;
            *&buf[24] = &unk_1E6EC4240;
            *&buf[32] = v21;
            v147 = &v127;
            v148 = &v133;
            [_PFRoutines efficientlyEnumerateManagedObjectsInFetchRequest:v22 usingManagedObjectContext:v21 andApplyBlock:buf];
            v23 = *(v134 + 24);
            if (v23 == 1)
            {
              v24 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKMirroredRelationship entityPath]);
              [(NSFetchRequest *)v24 setReturnsObjectsAsFaults:0];
              [(NSFetchRequest *)v24 setFetchBatchSize:250];
              -[NSFetchRequest setPredicate:](v24, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"recordZone.ckRecordZoneName = %@ AND recordZone.ckOwnerName = %@", objc_msgSend(v14, "zoneName"), objc_msgSend(v14, "ownerName")]);
              v155 = v20;
              -[NSFetchRequest setAffectedStores:](v24, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v155 count:1]);
              v120 = MEMORY[0x1E69E9820];
              v121 = 3221225472;
              v122 = __135__PFCloudKitMetadataPurger__wipeSystemFieldsAndResetUploadStateForMetadataInZoneWithID_inDatabaseWithScope_inStore_usingContext_error___block_invoke_2;
              v123 = &unk_1E6EC4240;
              v124 = v21;
              v125 = &v127;
              v126 = &v133;
              [_PFRoutines efficientlyEnumerateManagedObjectsInFetchRequest:v24 usingManagedObjectContext:v21 andApplyBlock:&v120];
              v23 = *(v134 + 24);
            }

            if (!v23)
            {
              v25 = v128[5];
              if (v25)
              {
                v119 = v25;
              }

              else
              {
                v26 = _PFLogGetLogStream(17);
                if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                {
                  *v151 = 136315394;
                  v152 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataPurger.m";
                  v153 = 1024;
                  v154 = 625;
                  _os_log_error_impl(&dword_18565F000, v26, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", v151, 0x12u);
                }

                v27 = _PFLogGetLogStream(17);
                if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
                {
                  *v151 = 136315394;
                  v152 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataPurger.m";
                  v153 = 1024;
                  v154 = 625;
                  _os_log_fault_impl(&dword_18565F000, v27, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", v151, 0x12u);
                }
              }
            }

            v128[5] = 0;
            v28 = *(v134 + 24);
            _Block_object_dispose(&v127, 8);
            _Block_object_dispose(&v133, 8);
            if (v28 != 1)
            {
              break;
            }

            if (v88 == ++v13)
            {
              v88 = [v2 countByEnumeratingWithState:&v107 objects:v141 count:16];
              if (v88)
              {
                goto LABEL_22;
              }

              goto LABEL_84;
            }
          }

LABEL_83:
          *(*(*(v90 + 64) + 8) + 24) = 0;
        }
      }

      goto LABEL_84;
    }

    if (![v2 count])
    {
      v29 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_18565F000, v29, OS_LOG_TYPE_ERROR, "CoreData: fault: Asked to purge user rows without any zones from which to purge.\n", buf, 2u);
      }

      v30 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_18565F000, v30, OS_LOG_TYPE_FAULT, "CoreData: Asked to purge user rows without any zones from which to purge.", buf, 2u);
      }
    }

    v113 = 0u;
    v114 = 0u;
    v111 = 0u;
    v112 = 0u;
    v89 = [v2 countByEnumeratingWithState:&v111 objects:v142 count:16];
    if (!v89)
    {
LABEL_84:
      v9 = v90;
      if (*(v90 + 81))
      {
        [NSCKMetadataEntry updateOrInsertMetadataEntryWithKey:1 BOOLValue:*(v90 + 32) forStore:*(v90 + 48) intoManagedObjectContext:&v119 error:?];
        v9 = v90;
        if (v119 || (v54 = [*(v90 + 48) save:&v119], v9 = v90, (v54 & 1) == 0))
        {
          *(*(*(v9 + 64) + 8) + 24) = 0;
        }
      }

      goto LABEL_88;
    }

    v85 = *v112;
LABEL_51:
    v31 = 0;
    while (1)
    {
      if (*v112 != v85)
      {
        objc_enumerationMutation(v2);
      }

      v32 = *(*(&v111 + 1) + 8 * v31);
      v33 = objc_autoreleasePoolPush();
      v34 = __PFCloudKitLoggingGetStream();
      v35 = v34;
      if (__ckLoggingOverride == 17)
      {
        v36 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v36 = 16 * (__ckLoggingOverride == 16);
      }

      if (os_log_type_enabled(v34, v36))
      {
        v37 = [*(v90 + 48) transactionAuthor];
        *buf = 136315906;
        *&buf[4] = "[PFCloudKitMetadataPurger purgeMetadataFromStore:inMonitor:withOptions:forRecordZones:inDatabaseWithScope:andTransactionAuthor:error:]_block_invoke";
        *&buf[12] = 1024;
        *&buf[14] = 84;
        *&buf[18] = 2112;
        *&buf[20] = v37;
        *&buf[28] = 2112;
        *&buf[30] = v32;
        _os_log_impl(&dword_18565F000, v35, v36, "CoreData+CloudKit: %s(%d): %@ - Removing cloud metadata and client rows in zone: %@", buf, 0x26u);
      }

      objc_autoreleasePoolPop(v33);
      v38 = *(v90 + 56);
      if (!v38)
      {
        goto LABEL_83;
      }

      v87 = *(v90 + 88);
      v39 = *(v90 + 32);
      v40 = *(v90 + 48);
      v133 = 0;
      v134 = &v133;
      v135 = 0x2020000000;
      v136 = 1;
      v127 = 0;
      v128 = &v127;
      v129 = 0x3052000000;
      v130 = __Block_byref_object_copy__32;
      v131 = __Block_byref_object_dispose__32;
      v132 = 0;
      v41 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v42 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKRecordMetadata entityPath]);
      -[NSFetchRequest setPredicate:](v42, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"recordZone.ckRecordZoneName = %@ AND recordZone.ckOwnerName = %@ AND entityId != NULL AND entityPK != NULL", objc_msgSend(v32, "zoneName"), objc_msgSend(v32, "ownerName")]);
      [(NSFetchRequest *)v42 setPropertiesToFetch:&unk_1EF43D618];
      v156[0] = v39;
      -[NSFetchRequest setAffectedStores:](v42, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:v156 count:1]);
      [(NSFetchRequest *)v42 setFetchBatchSize:1000];
      v120 = MEMORY[0x1E69E9820];
      v121 = 3221225472;
      v122 = __113__PFCloudKitMetadataPurger__wipeUserRowsAndMetadataForZoneWithID_inDatabaseWithScope_inStore_usingContext_error___block_invoke;
      v123 = &unk_1E6EC4240;
      v124 = v41;
      v125 = &v133;
      v126 = &v127;
      [_PFRoutines efficientlyEnumerateManagedObjectsInFetchRequest:v42 usingManagedObjectContext:v40 andApplyBlock:&v120];
      v155 = 0;
      v43 = v134;
      if (*(v134 + 24) == 1)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __113__PFCloudKitMetadataPurger__wipeUserRowsAndMetadataForZoneWithID_inDatabaseWithScope_inStore_usingContext_error___block_invoke_2;
        *&buf[24] = &unk_1E6EC4268;
        *&buf[32] = v39;
        v147 = v38;
        v148 = v40;
        v149 = &v133;
        v150 = &v127;
        [v41 enumerateKeysAndObjectsUsingBlock:buf];
        v43 = v134;
        if (v134[3])
        {
          v44 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKRecordMetadata entityPath]);
          [(NSFetchRequest *)v44 setReturnsObjectsAsFaults:0];
          [(NSFetchRequest *)v44 setFetchBatchSize:250];
          -[NSFetchRequest setPredicate:](v44, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"recordZone.ckRecordZoneName = %@ AND recordZone.ckOwnerName = %@", objc_msgSend(v32, "zoneName"), objc_msgSend(v32, "ownerName")]);
          v145 = v39;
          -[NSFetchRequest setAffectedStores:](v44, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v145 count:1]);
          if (!-[PFCloudKitMetadataPurger _purgeObjectsMatchingFetchRequest:fromStore:usingContext:error:](v44, v40, &v155) || (v45 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKMirroredRelationship entityPath](NSCKMirroredRelationship, "entityPath")), -[NSFetchRequest setReturnsObjectsAsFaults:](v45, "setReturnsObjectsAsFaults:", 0), -[NSFetchRequest setFetchBatchSize:](v45, "setFetchBatchSize:", 250), -[NSFetchRequest setPredicate:](v45, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"recordZone.ckRecordZoneName = %@ AND recordZone.ckOwnerName = %@", objc_msgSend(v32, "zoneName"), objc_msgSend(v32, "ownerName")]), v144 = v39, -[NSFetchRequest setAffectedStores:](v45, "setAffectedStores:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v144, 1)), !-[PFCloudKitMetadataPurger _purgeObjectsMatchingFetchRequest:fromStore:usingContext:error:](v45, v40, &v155)))
          {
            *(v134 + 24) = 0;
            v48 = v155;
            goto LABEL_68;
          }

          v46 = [NSCKRecordZoneMetadata zoneMetadataForZoneID:v32 inDatabaseWithScope:v87 forStore:v39 inContext:v40 error:&v155];
          if (!v46)
          {
            v43 = v134;
LABEL_80:
            *(v43 + 24) = 0;
            v48 = v155;
LABEL_68:
            v128[5] = v48;
            v43 = v134;
            goto LABEL_69;
          }

          [v40 deleteObject:v46];
          v47 = [v40 save:&v155];
          v43 = v134;
          if ((v47 & 1) == 0)
          {
            goto LABEL_80;
          }
        }
      }

LABEL_69:
      if ((v43[3] & 1) == 0)
      {
        if (v128[5])
        {
          v119 = v128[5];
        }

        else
        {
          v49 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            *v151 = 136315394;
            v152 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataPurger.m";
            v153 = 1024;
            v154 = 496;
            _os_log_error_impl(&dword_18565F000, v49, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", v151, 0x12u);
          }

          v50 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
          {
            *v151 = 136315394;
            v152 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataPurger.m";
            v153 = 1024;
            v154 = 496;
            _os_log_fault_impl(&dword_18565F000, v50, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", v151, 0x12u);
          }
        }
      }

      v51 = v128[5];
      v128[5] = 0;
      v52 = *(v134 + 24);
      _Block_object_dispose(&v127, 8);
      _Block_object_dispose(&v133, 8);
      if (v52 != 1)
      {
        goto LABEL_83;
      }

      if (v89 == ++v31)
      {
        v53 = [v2 countByEnumeratingWithState:&v111 objects:v142 count:16];
        v89 = v53;
        if (v53)
        {
          goto LABEL_51;
        }

        goto LABEL_84;
      }
    }
  }

LABEL_88:
  if (*(*(*(v9 + 64) + 8) + 24) == 1)
  {
    v55 = *(v90 + 80);
    if ((v55 & 0x20) != 0)
    {
      [v84 addObject:@"NSCloudKitMirroringDelegateLastHistoryTokenKey"];
      v55 = *(v90 + 80);
    }

    if ((v55 & 0xC) != 0 && *(*(*(v90 + 64) + 8) + 24) == 1)
    {
      if ((v55 & 4) != 0)
      {
        v67 = [NSCKDatabaseMetadata databaseMetadataForScope:*(v90 + 32) forStore:*(v90 + 48) inContext:&v119 error:?];
        v68 = v67;
        if (v67)
        {
          [(NSManagedObject *)v67 setCurrentChangeToken:0];
          [(NSManagedObject *)v68 setHasSubscription:0];
          v105 = 0u;
          v106 = 0u;
          v103 = 0u;
          v104 = 0u;
          v69 = [(NSManagedObject *)v68 recordZones];
          v70 = [v69 countByEnumeratingWithState:&v103 objects:v140 count:16];
          if (v70)
          {
            v71 = *v104;
            do
            {
              for (j = 0; j != v70; ++j)
              {
                if (*v104 != v71)
                {
                  objc_enumerationMutation(v69);
                }

                v73 = *(*(&v103 + 1) + 8 * j);
                [v73 setCurrentChangeToken:0];
                [v73 setHasRecordZone:0];
                [v73 setHasSubscription:0];
                [v73 setSupportsFetchChanges:0];
                [v73 setSupportsAtomicChanges:0];
                [v73 setSupportsRecordSharing:0];
              }

              v70 = [v69 countByEnumeratingWithState:&v103 objects:v140 count:16];
            }

            while (v70);
          }

          if ([*(v90 + 48) save:&v119])
          {
            v101 = 0u;
            v102 = 0u;
            v99 = 0u;
            v100 = 0u;
            v74 = [v2 countByEnumeratingWithState:&v99 objects:v139 count:16];
            if (!v74)
            {
              goto LABEL_145;
            }

            v75 = *v100;
            while (1)
            {
              for (k = 0; k != v74; ++k)
              {
                if (*v100 != v75)
                {
                  objc_enumerationMutation(v2);
                }

                if (![PFCloudKitMetadataPurger _purgeZoneRelatedObjectsInZoneWithID:*(*(&v99 + 1) + 8 * k) inDatabaseWithScope:*(v90 + 80) withOptions:*(v90 + 32) inStore:*(v90 + 48) usingContext:&v119 error:?])
                {
                  goto LABEL_144;
                }
              }

              v74 = [v2 countByEnumeratingWithState:&v99 objects:v139 count:16];
              if (!v74)
              {
                goto LABEL_145;
              }
            }
          }
        }

        else if (!v119)
        {
          goto LABEL_145;
        }

LABEL_144:
        *(*(*(v90 + 64) + 8) + 24) = 0;
        goto LABEL_145;
      }

      if ((v55 & 8) != 0)
      {
        if (![v2 count])
        {
          v56 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_18565F000, v56, OS_LOG_TYPE_ERROR, "CoreData: fault: Asked to purge zone metadata (trying to recreate after the purge) without any zones from which to purge.\n", buf, 2u);
          }

          v57 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v57, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_18565F000, v57, OS_LOG_TYPE_FAULT, "CoreData: Asked to purge zone metadata (trying to recreate after the purge) without any zones from which to purge.", buf, 2u);
          }
        }

        v97 = 0u;
        v98 = 0u;
        v95 = 0u;
        v96 = 0u;
        v58 = [v2 countByEnumeratingWithState:&v95 objects:v138 count:16];
        if (v58)
        {
          v59 = *v96;
          do
          {
            v60 = 0;
            do
            {
              if (*v96 != v59)
              {
                objc_enumerationMutation(v2);
              }

              v61 = *(*(&v95 + 1) + 8 * v60);
              if (![PFCloudKitMetadataPurger _purgeZoneRelatedObjectsInZoneWithID:v61 inDatabaseWithScope:*(v90 + 80) withOptions:*(v90 + 32) inStore:*(v90 + 48) usingContext:&v119 error:?])
              {
LABEL_111:
                v64 = v90;
LABEL_112:
                *(*(*(v64 + 64) + 8) + 24) = 0;
                goto LABEL_118;
              }

              v62 = [NSCKRecordZoneMetadata zoneMetadataForZoneID:v61 inDatabaseWithScope:*(v90 + 88) forStore:*(v90 + 32) inContext:*(v90 + 48) createIfMissing:0 error:&v119];
              v63 = v62;
              if (v62)
              {
                v64 = v90;
                if (*(*(*(v90 + 64) + 8) + 24) != 1)
                {
                  goto LABEL_118;
                }

                if (*(v90 + 80))
                {
                  [*(v90 + 48) deleteObject:v62];
                }

                else
                {
                  [(NSManagedObject *)v62 setCurrentChangeToken:0];
                  [(NSManagedObject *)v63 setHasRecordZone:0];
                  [(NSManagedObject *)v63 setHasSubscription:0];
                }

                [-[NSManagedObject database](v63 "database")];
                goto LABEL_117;
              }

              if (v119)
              {
                goto LABEL_111;
              }

              v65 = [NSCKDatabaseMetadata databaseMetadataForScope:*(v90 + 32) forStore:*(v90 + 48) inContext:&v119 error:?];
              if (v65)
              {
                [(NSManagedObject *)v65 setHasSubscription:0];
LABEL_117:
                v64 = v90;
                goto LABEL_118;
              }

              v64 = v90;
              if (v119)
              {
                goto LABEL_112;
              }

LABEL_118:
              if (!*(*(*(v64 + 64) + 8) + 24))
              {
                goto LABEL_145;
              }

              ++v60;
            }

            while (v58 != v60);
            v66 = [v2 countByEnumeratingWithState:&v95 objects:v138 count:16];
            v58 = v66;
          }

          while (v66);
        }
      }
    }

LABEL_145:
    if (*(*(*(v90 + 64) + 8) + 24) == 1)
    {
      if (*(v90 + 80) & 0x10) == 0 || ([v84 addObject:@"NSCloudKitMirroringDelegateCheckedCKIdentityDefaultsKey"], objc_msgSend(v84, "addObject:", @"NSCloudKitMirroringDelegateCKIdentityRecordNameDefaultsKey"), (*(*(*(v90 + 64) + 8) + 24)))
      {
        if ([v84 count])
        {
          v77 = +[NSCKMetadataEntry entriesForKeys:fromStore:inManagedObjectContext:error:](NSCKMetadataEntry, [v84 allObjects], *(v90 + 32), *(v90 + 48), &v119);
          if (v77)
          {
            v93 = 0u;
            v94 = 0u;
            v91 = 0u;
            v92 = 0u;
            v78 = [v77 allValues];
            v79 = [v78 countByEnumeratingWithState:&v91 objects:v137 count:16];
            if (v79)
            {
              v80 = *v92;
              do
              {
                for (m = 0; m != v79; ++m)
                {
                  if (*v92 != v80)
                  {
                    objc_enumerationMutation(v78);
                  }

                  [*(v90 + 48) deleteObject:*(*(&v91 + 1) + 8 * m)];
                }

                v79 = [v78 countByEnumeratingWithState:&v91 objects:v137 count:16];
              }

              while (v79);
            }
          }

          else
          {
            *(*(*(v90 + 64) + 8) + 24) = 0;
          }
        }
      }
    }
  }

  v82 = *(*(*(v90 + 64) + 8) + 24);
  if (v82 == 1)
  {
    *(*(*(v90 + 64) + 8) + 24) = [*(v90 + 48) save:&v119];
    v82 = *(*(*(v90 + 64) + 8) + 24);
  }

  if (!v82)
  {
    *(*(*(v90 + 72) + 8) + 40) = v119;
  }
}

- (uint64_t)_purgeZoneRelatedObjectsInZoneWithID:(uint64_t)d inDatabaseWithScope:(void *)scope withOptions:(char)options inStore:(uint64_t)store usingContext:(void *)context error:(void *)error
{
  v28[1] = *MEMORY[0x1E69E9840];
  if (!d)
  {
    return 0;
  }

  v20 = 0;
  if ((options & 0x41) != 0)
  {
    v11 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKRecordMetadata entityPath]);
    [(NSFetchRequest *)v11 setFetchBatchSize:1000];
    -[NSFetchRequest setPredicate:](v11, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"recordZone.ckRecordZoneName = %@ AND recordZone.ckOwnerName = %@", objc_msgSend(scope, "zoneName"), objc_msgSend(scope, "ownerName")]);
    v28[0] = store;
    -[NSFetchRequest setAffectedStores:](v11, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1]);
    if (![PFCloudKitMetadataPurger _purgeObjectsMatchingFetchRequest:v11 fromStore:context usingContext:&v20 error:?])
    {
      goto LABEL_7;
    }
  }

  if ((options & 0x81) == 0)
  {
    return 1;
  }

  v12 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKMirroredRelationship entityPath]);
  [(NSFetchRequest *)v12 setFetchBatchSize:1000];
  -[NSFetchRequest setPredicate:](v12, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"recordZone.ckRecordZoneName = %@ AND recordZone.ckOwnerName = %@", objc_msgSend(scope, "zoneName"), objc_msgSend(scope, "ownerName")]);
  storeCopy = store;
  -[NSFetchRequest setAffectedStores:](v12, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:&storeCopy count:1]);
  if (!-[PFCloudKitMetadataPurger _purgeObjectsMatchingFetchRequest:fromStore:usingContext:error:](v12, context, &v20) || (v13 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKImportPendingRelationship entityPath](NSCKImportPendingRelationship)), -[NSFetchRequest setPredicate:](v13, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"recordZoneName = %@ AND recordZoneOwnerName = %@", objc_msgSend(scope, "zoneName"), objc_msgSend(scope, "ownerName")]), v26 = store, v14 = 1, -[NSFetchRequest setAffectedStores:](v13, "setAffectedStores:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v26, 1)), v15 = -[NSBatchDeleteRequest initWithFetchRequest:]([NSBatchDeleteRequest alloc], "initWithFetchRequest:", v13), -[NSBatchDeleteRequest setResultType:](v15, "setResultType:", 0), v25 = store, -[NSPersistentStoreRequest setAffectedStores:](v15, "setAffectedStores:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v25, 1)), -[NSBatchDeleteRequest setResultType:](v15, "setResultType:", 0), v16 = objc_msgSend(objc_msgSend(objc_msgSend(context, "executeRequest:error:", v15, &v20), "result"), "BOOLValue"), v15, (v16 & 1) == 0))
  {
LABEL_7:
    if (v20)
    {
      if (error)
      {
        v14 = 0;
        *error = v20;
        return v14;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v22 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataPurger.m";
        v23 = 1024;
        v24 = 686;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v18 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v22 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataPurger.m";
        v23 = 1024;
        v24 = 686;
        _os_log_fault_impl(&dword_18565F000, v18, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }

    return 0;
  }

  return v14;
}

- (uint64_t)purgeMetadataMatchingObjectIDs:(uint64_t)ds inRequest:(uint64_t)request inStore:(uint64_t)store withMonitor:(void *)monitor error:
{
  v30 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v16 = 0;
    v17 = &v16;
    v18 = 0x3052000000;
    v19 = __Block_byref_object_copy__32;
    v20 = __Block_byref_object_dispose__32;
    v21 = 0;
    newBackgroundContextForMonitoredCoordinator = [(PFCloudKitStoreMonitor *)store newBackgroundContextForMonitoredCoordinator];
    [(NSManagedObjectContext *)newBackgroundContextForMonitoredCoordinator setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __95__PFCloudKitMetadataPurger_purgeMetadataMatchingObjectIDs_inRequest_inStore_withMonitor_error___block_invoke;
    v15[3] = &unk_1E6EC3540;
    v15[4] = a2;
    v15[5] = request;
    v15[6] = newBackgroundContextForMonitoredCoordinator;
    v15[7] = &v22;
    v15[8] = &v16;
    [(NSManagedObjectContext *)newBackgroundContextForMonitoredCoordinator performBlockAndWait:v15];

    if ((v23[3] & 1) == 0)
    {
      v12 = v17[5];
      if (v12)
      {
        if (monitor)
        {
          *monitor = v12;
        }
      }

      else
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v27 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataPurger.m";
          v28 = 1024;
          v29 = 340;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
        }

        v14 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v27 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataPurger.m";
          v28 = 1024;
          v29 = 340;
          _os_log_fault_impl(&dword_18565F000, v14, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
        }
      }
    }

    v17[5] = 0;
    v10 = *(v23 + 24);
    _Block_object_dispose(&v16, 8);
    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

void __95__PFCloudKitMetadataPurger_purgeMetadataMatchingObjectIDs_inRequest_inStore_withMonitor_error___block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v2 = [PFCloudKitMetadataModel createMapOfEntityIDToPrimaryKeySetForObjectIDs:*(a1 + 32) fromStore:*(a1 + 40)];
  *(*(*(a1 + 56) + 8) + 24) = 1;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v2;
  v26 = [v2 countByEnumeratingWithState:&v37 objects:v46 count:16];
  if (v26)
  {
    v25 = *v38;
LABEL_3:
    v3 = 0;
    while (1)
    {
      if (*v38 != v25)
      {
        objc_enumerationMutation(obj);
      }

      v4 = *(*(&v37 + 1) + 8 * v3);
      context = objc_autoreleasePoolPush();
      v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v6 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKRecordMetadata entityPath]);
      -[NSFetchRequest setPredicate:](v6, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"entityId = %@ AND entityPK IN %@", v4, objc_msgSend(obj, "objectForKey:", v4)]);
      [(NSFetchRequest *)v6 setFetchBatchSize:100];
      v45 = *(a1 + 40);
      -[NSFetchRequest setAffectedStores:](v6, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1]);
      v7 = [*(a1 + 48) executeFetchRequest:v6 error:*(*(a1 + 64) + 8) + 40];
      if (v7)
      {
        v8 = v7;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v9 = [v7 countByEnumeratingWithState:&v33 objects:v44 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v34;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v34 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v33 + 1) + 8 * i);
              if ([v13 ckRecordName])
              {
                [v5 addObject:{objc_msgSend(v13, "ckRecordName")}];
              }

              [objc_msgSend(v13 "recordZone")];
              [objc_msgSend(v13 "recordZone")];
              [objc_msgSend(objc_msgSend(v13 "recordZone")];
              [objc_msgSend(objc_msgSend(v13 "recordZone")];
              [*(a1 + 48) deleteObject:v13];
            }

            v10 = [v8 countByEnumeratingWithState:&v33 objects:v44 count:16];
          }

          while (v10);
        }
      }

      else
      {
        *(*(*(a1 + 56) + 8) + 24) = 0;
        v14 = *(*(*(a1 + 64) + 8) + 40);
      }

      if (*(*(*(a1 + 56) + 8) + 24) == 1)
      {
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v42[0] = +[NSCKMirroredRelationship entityPath];
        v42[1] = +[NSCKImportPendingRelationship entityPath];
        v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:2];
        v16 = [v15 countByEnumeratingWithState:&v29 objects:v43 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v30;
          while (2)
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v30 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = [NSFetchRequest fetchRequestWithEntityName:*(*(&v29 + 1) + 8 * j)];
              -[NSFetchRequest setPredicate:](v20, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"recordName IN %@ OR relatedRecordName IN %@", v5, v5]);
              v21 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:v20];
              [(NSBatchDeleteRequest *)v21 setResultType:0];
              v41 = *(a1 + 40);
              -[NSPersistentStoreRequest setAffectedStores:](v21, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1]);
              [(NSBatchDeleteRequest *)v21 setResultType:0];
              if (([objc_msgSend(objc_msgSend(*(a1 + 48) executeRequest:v21 error:{*(*(a1 + 64) + 8) + 40), "result"), "BOOLValue"}] & 1) == 0)
              {
                *(*(*(a1 + 56) + 8) + 24) = 0;
                v22 = *(*(*(a1 + 64) + 8) + 40);

                goto LABEL_29;
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v29 objects:v43 count:16];
            if (v17)
            {
              continue;
            }

            break;
          }
        }
      }

LABEL_29:
      if (([*(a1 + 48) save:*(*(a1 + 64) + 8) + 40] & 1) == 0)
      {
        v23 = *(*(*(a1 + 64) + 8) + 40);
        *(*(*(a1 + 56) + 8) + 24) = 0;
      }

      [*(a1 + 48) reset];

      v24 = *(*(*(a1 + 56) + 8) + 24);
      objc_autoreleasePoolPop(context);
      if (!v24)
      {
        break;
      }

      if (++v3 == v26)
      {
        v26 = [obj countByEnumeratingWithState:&v37 objects:v46 count:16];
        if (v26)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

void __113__PFCloudKitMetadataPurger__wipeUserRowsAndMetadataForZoneWithID_inDatabaseWithScope_inStore_usingContext_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *(*(*(a1 + 48) + 8) + 40) = a3;
    *a4 = 1;
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [a2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = 0;
      v11 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(a2);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          if (!v9 || (v14 = [v9 integerValue], v14 != objc_msgSend(objc_msgSend(v13, "entityId"), "integerValue")))
          {

            v9 = [v13 entityId];
            v15 = [*(a1 + 32) objectForKey:v9];
            if (v15)
            {
              v10 = v15;
            }

            else
            {
              v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
              [*(a1 + 32) setObject:v10 forKey:{objc_msgSend(v13, "entityId")}];
            }
          }

          [v10 addObject:{objc_msgSend(v13, "entityPK")}];
        }

        v8 = [a2 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }
}

void __113__PFCloudKitMetadataPurger__wipeUserRowsAndMetadataForZoneWithID_inDatabaseWithScope_inStore_usingContext_error___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v8 = _sqlCoreLookupSQLEntityForEntityID(*(a1 + 32), [a2 unsignedLongValue]);
  if (v8)
  {
    v9 = v8;
    v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v11 = [a3 countByEnumeratingWithState:&v31 objects:v40 count:16];
    if (v11)
    {
      v13 = v11;
      v14 = *v32;
      *&v12 = 138412290;
      v30 = v12;
LABEL_4:
      v15 = 0;
      while (1)
      {
        if (*v32 != v14)
        {
          objc_enumerationMutation(a3);
        }

        v16 = *(*(&v31 + 1) + 8 * v15);
        if ([v16 longValue] < 1)
        {
          LogStream = _PFLogGetLogStream(17);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            v21 = [objc_msgSend(v9 "entityDescription")];
            *buf = v30;
            *&buf[4] = v21;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Cannot create objectID: got a 0 pk for entity: %@\n", buf, 0xCu);
          }

          v19 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
          {
            v22 = [objc_msgSend(v9 "entityDescription")];
            *buf = v30;
            *&buf[4] = v22;
            _os_log_fault_impl(&dword_18565F000, v19, OS_LOG_TYPE_FAULT, "CoreData: Cannot create objectID: got a 0 pk for entity: %@", buf, 0xCu);
          }
        }

        else
        {
          v17 = [*(a1 + 32) newObjectIDForEntity:v9 pk:{objc_msgSend(v16, "longValue")}];
          [v10 addObject:v17];
        }

        if ([v10 count] >= 0x1F4)
        {
          v20 = objc_autoreleasePoolPush();
          *buf = 0;
          if (([(PFCloudKitMetadataPurger *)*(a1 + 40) _purgeBatchOfObjectIDs:v10 fromStore:*(a1 + 32) inManagedObjectContext:*(a1 + 48) error:buf]& 1) == 0)
          {
            *(*(*(a1 + 56) + 8) + 24) = 0;
            *(*(*(a1 + 64) + 8) + 40) = *buf;
          }

          objc_autoreleasePoolPop(v20);
        }

        if (!*(*(*(a1 + 56) + 8) + 24))
        {
          break;
        }

        if (v13 == ++v15)
        {
          v13 = [a3 countByEnumeratingWithState:&v31 objects:v40 count:16];
          if (v13)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    if (*(*(*(a1 + 56) + 8) + 24) == 1 && [v10 count])
    {
      v23 = objc_autoreleasePoolPush();
      *buf = 0;
      if (([(PFCloudKitMetadataPurger *)*(a1 + 40) _purgeBatchOfObjectIDs:v10 fromStore:*(a1 + 32) inManagedObjectContext:*(a1 + 48) error:buf]& 1) == 0)
      {
        *(*(*(a1 + 56) + 8) + 24) = 0;
        *(*(*(a1 + 64) + 8) + 40) = *buf;
      }

      objc_autoreleasePoolPop(v23);
    }
  }

  else
  {
    v24 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v26 = *(a1 + 32);
      v27 = *(a1 + 40);
      *buf = 138412802;
      *&buf[4] = a2;
      v36 = 2112;
      v37 = v26;
      v38 = 2112;
      v39 = v27;
      _os_log_error_impl(&dword_18565F000, v24, OS_LOG_TYPE_ERROR, "CoreData: fault: Cannot create objectID. Unable to find entity with id '%@' in store '%@'\n%@\n", buf, 0x20u);
    }

    v25 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      v28 = *(a1 + 32);
      v29 = *(a1 + 40);
      *buf = 138412802;
      *&buf[4] = a2;
      v36 = 2112;
      v37 = v28;
      v38 = 2112;
      v39 = v29;
      _os_log_fault_impl(&dword_18565F000, v25, OS_LOG_TYPE_FAULT, "CoreData: Cannot create objectID. Unable to find entity with id '%@' in store '%@'\n%@", buf, 0x20u);
    }
  }

  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
  }
}

- (uint64_t)_purgeBatchOfObjectIDs:(uint64_t)ds fromStore:(void *)store inManagedObjectContext:(uint64_t)context error:
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  v9 = -[NSFetchRequest initWithEntityName:]([NSFetchRequest alloc], "initWithEntityName:", [objc_msgSend(objc_msgSend(a2 "anyObject")]);
  -[NSFetchRequest setPredicate:](v9, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF IN %@", a2]);
  v10 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:v9];
  [(NSBatchDeleteRequest *)v10 setResultType:0];
  v13[0] = ds;
  -[NSPersistentStoreRequest setAffectedStores:](v10, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1]);
  v11 = [objc_msgSend(objc_msgSend(store executeRequest:v10 error:{context), "result"), "BOOLValue"}];

  return v11;
}

- (uint64_t)_purgeObjectsMatchingFetchRequest:(void *)request fromStore:usingContext:error:
{
  v24 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = __Block_byref_object_copy__32;
  v14 = __Block_byref_object_dispose__32;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __91__PFCloudKitMetadataPurger__purgeObjectsMatchingFetchRequest_fromStore_usingContext_error___block_invoke;
  v9[3] = &unk_1E6EC4240;
  v9[4] = a2;
  v9[5] = &v10;
  v9[6] = &v16;
  [_PFRoutines efficientlyEnumerateManagedObjectsInFetchRequest:self usingManagedObjectContext:a2 andApplyBlock:v9];
  if ((v17[3] & 1) == 0)
  {
    v6 = v11[5];
    if (v6)
    {
      if (request)
      {
        *request = v6;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v21 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataPurger.m";
        v22 = 1024;
        v23 = 553;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v8 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v21 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataPurger.m";
        v22 = 1024;
        v23 = 553;
        _os_log_fault_impl(&dword_18565F000, v8, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

  v11[5] = 0;
  v4 = *(v17 + 24);
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v16, 8);
  return v4;
}

id __91__PFCloudKitMetadataPurger__purgeObjectsMatchingFetchRequest_fromStore_usingContext_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4, _BYTE *a5)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    *a4 = 1;
    *(*(*(a1 + 48) + 8) + 24) = 0;
    result = a3;
    *(*(*(a1 + 40) + 8) + 40) = result;
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v10 = [a2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        v13 = 0;
        do
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(a2);
          }

          [*(a1 + 32) deleteObject:*(*(&v14 + 1) + 8 * v13++)];
        }

        while (v11 != v13);
        v11 = [a2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }

    result = [*(a1 + 32) hasChanges];
    if (result)
    {
      result = [*(a1 + 32) save:*(*(a1 + 40) + 8) + 40];
      if ((result & 1) == 0)
      {
        *(*(*(a1 + 48) + 8) + 24) = 0;
        result = *(*(*(a1 + 40) + 8) + 40);
        *a4 = 1;
        *a5 = 1;
      }
    }
  }

  return result;
}

id __135__PFCloudKitMetadataPurger__wipeSystemFieldsAndResetUploadStateForMetadataInZoneWithID_inDatabaseWithScope_inStore_usingContext_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    *a4 = 1;
    *(*(*(a1 + 48) + 8) + 24) = 0;
    result = a3;
    *(*(*(a1 + 40) + 8) + 40) = result;
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = [a2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(a2);
          }

          v12 = *(*(&v13 + 1) + 8 * i);
          [v12 destroySystemFields];
          [v12 destroyEncodedRecord];
        }

        v9 = [a2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }

    result = [*(a1 + 32) hasChanges];
    if (result)
    {
      result = [*(a1 + 32) save:*(*(a1 + 40) + 8) + 40];
      if ((result & 1) == 0)
      {
        *(*(*(a1 + 48) + 8) + 24) = 0;
        result = *(*(*(a1 + 40) + 8) + 40);
        *a4 = 1;
      }
    }
  }

  return result;
}

id __135__PFCloudKitMetadataPurger__wipeSystemFieldsAndResetUploadStateForMetadataInZoneWithID_inDatabaseWithScope_inStore_usingContext_error___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    *a4 = 1;
    *(*(*(a1 + 48) + 8) + 24) = 0;
    result = a3;
    *(*(*(a1 + 40) + 8) + 40) = result;
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = [a2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(a2);
          }

          v12 = *(*(&v13 + 1) + 8 * i);
          [v12 destroySystemFieldsData];
          [v12 setIsUploadedBool:0];
        }

        v9 = [a2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }

    result = [*(a1 + 32) hasChanges];
    if (result)
    {
      result = [*(a1 + 32) save:*(*(a1 + 40) + 8) + 40];
      if ((result & 1) == 0)
      {
        *(*(*(a1 + 48) + 8) + 24) = 0;
        result = *(*(*(a1 + 40) + 8) + 40);
        *a4 = 1;
      }
    }
  }

  return result;
}

- (uint64_t)purgeMetadataAfterAccountChangeFromStore:(uint64_t)store inMonitor:(uint64_t)monitor inDatabaseWithScope:(void *)scope error:
{
  v29 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 1;
    v15 = 0;
    v16 = &v15;
    v17 = 0x3052000000;
    v18 = __Block_byref_object_copy__32;
    v19 = __Block_byref_object_dispose__32;
    v20 = 0;
    newBackgroundContextForMonitoredCoordinator = [(PFCloudKitStoreMonitor *)store newBackgroundContextForMonitoredCoordinator];
    [(NSManagedObjectContext *)newBackgroundContextForMonitoredCoordinator setTransactionAuthor:@"NSCloudKitMirroringDelegate.reset"];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __105__PFCloudKitMetadataPurger_purgeMetadataAfterAccountChangeFromStore_inMonitor_inDatabaseWithScope_error___block_invoke;
    v14[3] = &unk_1E6EC3C38;
    v14[4] = a2;
    v14[5] = newBackgroundContextForMonitoredCoordinator;
    v14[6] = &v21;
    v14[7] = &v15;
    v14[8] = monitor;
    [(NSManagedObjectContext *)newBackgroundContextForMonitoredCoordinator performBlockAndWait:v14];
    if ((v22[3] & 1) == 0)
    {
      v11 = v16[5];
      if (v11)
      {
        if (scope)
        {
          *scope = v11;
        }
      }

      else
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v26 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataPurger.m";
          v27 = 1024;
          v28 = 805;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
        }

        v13 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v26 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataPurger.m";
          v27 = 1024;
          v28 = 805;
          _os_log_fault_impl(&dword_18565F000, v13, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
        }
      }
    }

    v16[5] = 0;
    v9 = *(v22 + 24);
    _Block_object_dispose(&v15, 8);
    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void __105__PFCloudKitMetadataPurger_purgeMetadataAfterAccountChangeFromStore_inMonitor_inDatabaseWithScope_error___block_invoke(uint64_t a1)
{
  v1 = a1;
  v109 = *MEMORY[0x1E69E9840];
  v90 = 0;
  v2 = [objc_msgSend(objc_msgSend(*(a1 + 32) "_persistentStoreCoordinator")];
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  obj = v2;
  v3 = [v2 countByEnumeratingWithState:&v86 objects:v108 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v87;
    v6 = &__ckLoggingOverride;
    v7 = 0x1E6EC0000uLL;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v87 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v86 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        Stream = __PFCloudKitLoggingGetStream();
        v12 = Stream;
        v13 = *v6;
        if (v13 == 17)
        {
          v14 = OS_LOG_TYPE_FAULT;
        }

        else
        {
          v14 = 16 * (v13 == 16);
        }

        if (os_log_type_enabled(Stream, v14))
        {
          v15 = [*(v1 + 40) transactionAuthor];
          v72 = v10;
          v16 = v1;
          v17 = v4;
          v18 = v5;
          v19 = v7;
          v20 = v6;
          v21 = v15;
          v22 = [v9 name];
          *buf = 136315906;
          v101 = "[PFCloudKitMetadataPurger purgeMetadataAfterAccountChangeFromStore:inMonitor:inDatabaseWithScope:error:]_block_invoke";
          v102 = 1024;
          v103 = 703;
          v104 = 2112;
          v105 = v21;
          v6 = v20;
          v7 = v19;
          v5 = v18;
          v4 = v17;
          v1 = v16;
          v10 = v72;
          v106 = 2112;
          v107 = v22;
          _os_log_impl(&dword_18565F000, v12, v14, "CoreData+CloudKit: %s(%d): %@ - Removing rows after account change: %@", buf, 0x26u);
        }

        objc_autoreleasePoolPop(v10);
        v23 = [objc_alloc(*(v7 + 2344)) initWithFetchRequest:{+[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", objc_msgSend(v9, "name"))}];
        v99 = *(v1 + 32);
        [v23 setAffectedStores:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v99, 1)}];
        [v23 setResultType:0];
        if (([objc_msgSend(objc_msgSend(*(v1 + 40) executeRequest:v23 error:{&v90), "result"), "BOOLValue"}] & 1) == 0)
        {
          *(*(*(v1 + 48) + 8) + 24) = 0;

          goto LABEL_16;
        }
      }

      v4 = [obj countByEnumeratingWithState:&v86 objects:v108 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:
  if (*(*(*(v1 + 48) + 8) + 24) == 1)
  {
    PFBundleVersion = +[_PFRoutines _getPFBundleVersionNumber];
    v25 = [PFCloudKitMetadataModel newMetadataModelForFrameworkVersion:?];
    v26 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v27 = objc_opt_class();
    [v26 addObject:NSStringFromClass(v27)];
    v28 = objc_opt_class();
    [v26 addObject:NSStringFromClass(v28)];
    v29 = objc_opt_class();
    [v26 addObject:NSStringFromClass(v29)];
    v30 = objc_opt_class();
    [v26 addObject:NSStringFromClass(v30)];
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v73 = v25;
    v31 = [(NSManagedObjectModel *)v25 countByEnumeratingWithState:&v82 objects:v98 count:16];
    if (v31)
    {
      v33 = v31;
      v34 = *v83;
      *&v32 = 136315906;
      v69 = v32;
      while (2)
      {
        v35 = 0;
        v70 = v33;
        do
        {
          if (*v83 != v34)
          {
            objc_enumerationMutation(v73);
          }

          v36 = *(*(&v82 + 1) + 8 * v35);
          if (([v26 containsObject:{objc_msgSend(v36, "name", v69)}] & 1) == 0)
          {
            v37 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:[NSFetchRequest fetchRequestWithEntityName:_PFModelMapPathForEntity(v36)]];
            [(NSBatchDeleteRequest *)v37 setResultType:1];
            v97 = *(v1 + 32);
            -[NSPersistentStoreRequest setAffectedStores:](v37, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v97 count:1]);
            v38 = [*(v1 + 40) executeRequest:v37 error:&v90];

            if (![v38 result])
            {
              *(*(*(v1 + 48) + 8) + 24) = 0;
              v49 = objc_autoreleasePoolPush();
              v50 = __PFCloudKitLoggingGetStream();
              v51 = v50;
              if (__ckLoggingOverride == 17)
              {
                v52 = OS_LOG_TYPE_FAULT;
              }

              else
              {
                v52 = OS_LOG_TYPE_ERROR;
              }

              if (os_log_type_enabled(v50, v52))
              {
                v53 = [v36 name];
                *buf = v69;
                v101 = "[PFCloudKitMetadataPurger purgeMetadataAfterAccountChangeFromStore:inMonitor:inDatabaseWithScope:error:]_block_invoke";
                v102 = 1024;
                v103 = 745;
                v104 = 2112;
                v105 = v53;
                v106 = 2112;
                v107 = v90;
                _os_log_impl(&dword_18565F000, v51, v52, "CoreData+CloudKit: %s(%d): Failed to purge cloudkit metadata entity (%@): %@", buf, 0x26u);
              }

              objc_autoreleasePoolPop(v49);
              goto LABEL_40;
            }

            v39 = v34;
            v40 = v26;
            v41 = objc_autoreleasePoolPush();
            v42 = __PFCloudKitLoggingGetStream();
            v43 = v42;
            if (__ckLoggingOverride == 17)
            {
              v44 = OS_LOG_TYPE_FAULT;
            }

            else
            {
              v44 = 16 * (__ckLoggingOverride == 16);
            }

            if (os_log_type_enabled(v42, v44))
            {
              v45 = [*(v1 + 40) transactionAuthor];
              v46 = [v36 name];
              *buf = v69;
              v101 = "[PFCloudKitMetadataPurger purgeMetadataAfterAccountChangeFromStore:inMonitor:inDatabaseWithScope:error:]_block_invoke";
              v102 = 1024;
              v103 = 737;
              v104 = 2112;
              v105 = v45;
              v106 = 2112;
              v107 = v46;
              _os_log_impl(&dword_18565F000, v43, v44, "CoreData+CloudKit: %s(%d): %@ - Removed cloud metadata after account change %@", buf, 0x26u);
            }

            objc_autoreleasePoolPop(v41);
            v47 = [v38 result];
            v26 = v40;
            v34 = v39;
            v33 = v70;
            if ([v47 count])
            {
              v95 = @"deleted";
              v96 = v47;
              v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
              v94 = *(v1 + 40);
              +[NSManagedObjectContext mergeChangesFromRemoteContextSave:intoContexts:](NSManagedObjectContext, "mergeChangesFromRemoteContextSave:intoContexts:", v48, [MEMORY[0x1E695DEC8] arrayWithObjects:&v94 count:1]);
            }
          }

          ++v35;
        }

        while (v33 != v35);
        v33 = [(NSManagedObjectModel *)v73 countByEnumeratingWithState:&v82 objects:v98 count:16];
        if (v33)
        {
          continue;
        }

        break;
      }
    }

LABEL_40:

    if (*(*(*(v1 + 48) + 8) + 24) == 1)
    {
      v54 = [NSCKDatabaseMetadata databaseMetadataForScope:*(v1 + 32) forStore:*(v1 + 40) inContext:&v90 error:?];
      if (v54)
      {
        v55 = v54;
        [(NSManagedObject *)v54 setCurrentChangeToken:0];
        [(NSManagedObject *)v55 setHasSubscription:0];
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v56 = [(NSManagedObject *)v55 recordZones];
        v57 = [v56 countByEnumeratingWithState:&v78 objects:v93 count:16];
        if (v57)
        {
          v58 = v57;
          v59 = *v79;
          do
          {
            for (j = 0; j != v58; ++j)
            {
              if (*v79 != v59)
              {
                objc_enumerationMutation(v56);
              }

              v61 = *(*(&v78 + 1) + 8 * j);
              [v61 setCurrentChangeToken:0];
              [v61 setHasRecordZone:0];
              [v61 setHasSubscription:0];
              [v61 setSupportsFetchChanges:0];
              [v61 setSupportsAtomicChanges:0];
              [v61 setSupportsRecordSharing:0];
            }

            v58 = [v56 countByEnumeratingWithState:&v78 objects:v93 count:16];
          }

          while (v58);
        }
      }

      else if (v90)
      {
        *(*(*(v1 + 48) + 8) + 24) = 0;
      }
    }
  }

  if (*(*(*(v1 + 48) + 8) + 24) == 1)
  {
    v92[0] = @"NSCloudKitMirroringDelegateLastHistoryTokenKey";
    v92[1] = @"NSCloudKitMirroringDelegateCheckedCKIdentityDefaultsKey";
    v92[2] = @"NSCloudKitMirroringDelegateCKIdentityRecordNameDefaultsKey";
    v62 = +[NSCKMetadataEntry entriesForKeys:fromStore:inManagedObjectContext:error:](NSCKMetadataEntry, [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:3], *(v1 + 32), *(v1 + 40), &v90);
    if (v62)
    {
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v63 = [v62 allValues];
      v64 = [v63 countByEnumeratingWithState:&v74 objects:v91 count:16];
      if (v64)
      {
        v65 = v64;
        v66 = *v75;
        do
        {
          for (k = 0; k != v65; ++k)
          {
            if (*v75 != v66)
            {
              objc_enumerationMutation(v63);
            }

            [*(v1 + 40) deleteObject:*(*(&v74 + 1) + 8 * k)];
          }

          v65 = [v63 countByEnumeratingWithState:&v74 objects:v91 count:16];
        }

        while (v65);
      }
    }

    else
    {
      *(*(*(v1 + 48) + 8) + 24) = 0;
    }
  }

  v68 = *(*(*(v1 + 48) + 8) + 24);
  if (v68 == 1)
  {
    *(*(*(v1 + 48) + 8) + 24) = [*(v1 + 40) save:&v90];
    v68 = *(*(*(v1 + 48) + 8) + 24);
  }

  if (!v68)
  {
    *(*(*(v1 + 56) + 8) + 40) = v90;
  }
}

- (uint64_t)deleteZoneMetadataFromStore:(uint64_t)store inMonitor:(uint64_t)monitor forRecordZones:(uint64_t)zones inDatabaseWithScope:(void *)scope error:
{
  v31 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 1;
    v17 = 0;
    v18 = &v17;
    v19 = 0x3052000000;
    v20 = __Block_byref_object_copy__32;
    v21 = __Block_byref_object_dispose__32;
    v22 = 0;
    newBackgroundContextForMonitoredCoordinator = [(PFCloudKitStoreMonitor *)store newBackgroundContextForMonitoredCoordinator];
    [(NSManagedObjectContext *)newBackgroundContextForMonitoredCoordinator setTransactionAuthor:@"NSCloudKitMirroringDelegate.reset"];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __107__PFCloudKitMetadataPurger_deleteZoneMetadataFromStore_inMonitor_forRecordZones_inDatabaseWithScope_error___block_invoke;
    v16[3] = &unk_1E6EC3978;
    v16[4] = monitor;
    v16[5] = a2;
    v16[6] = newBackgroundContextForMonitoredCoordinator;
    v16[7] = &v23;
    v16[8] = &v17;
    v16[9] = zones;
    [(NSManagedObjectContext *)newBackgroundContextForMonitoredCoordinator performBlockAndWait:v16];
    if ((v24[3] & 1) == 0)
    {
      v13 = v18[5];
      if (v13)
      {
        if (scope)
        {
          *scope = v13;
        }
      }

      else
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v28 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataPurger.m";
          v29 = 1024;
          v30 = 859;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
        }

        v15 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v28 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataPurger.m";
          v29 = 1024;
          v30 = 859;
          _os_log_fault_impl(&dword_18565F000, v15, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
        }
      }
    }

    v18[5] = 0;
    v11 = *(v24 + 24);
    _Block_object_dispose(&v17, 8);
    _Block_object_dispose(&v23, 8);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

void __107__PFCloudKitMetadataPurger_deleteZoneMetadataFromStore_inMonitor_forRecordZones_inDatabaseWithScope_error___block_invoke(void *a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v25 = 0;
  v2 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:a1[4]];
  if (![v2 count])
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Asked to purge zone metadata (trying to recreate after the purge) without any zones from which to purge.\n", buf, 2u);
    }

    v4 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_18565F000, v4, OS_LOG_TYPE_FAULT, "CoreData: Asked to purge zone metadata (trying to recreate after the purge) without any zones from which to purge.", buf, 2u);
    }
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [v2 countByEnumeratingWithState:&v21 objects:v32 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v22;
    *&v6 = 134218498;
    v20 = v6;
LABEL_8:
    v9 = 0;
    while (1)
    {
      if (*v22 != v8)
      {
        objc_enumerationMutation(v2);
      }

      v10 = *(*(&v21 + 1) + 8 * v9);
      v11 = [NSCKRecordZoneMetadata zoneMetadataForZoneID:v10 inDatabaseWithScope:a1[9] forStore:a1[5] inContext:a1[6] error:&v25];
      if (v11)
      {
        v12 = v11;
        if ([-[NSManagedObject records](v11 "records")])
        {
          v13 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v15 = a1[9];
            v16 = [a1[5] URL];
            *buf = v20;
            v27 = v15;
            v28 = 2112;
            v29 = v16;
            v30 = 2112;
            v31 = v10;
            _os_log_error_impl(&dword_18565F000, v13, OS_LOG_TYPE_ERROR, "CoreData: fault: Attempting to delete a zone metadata that has records (%ld): %@ - %@\n", buf, 0x20u);
          }

          v14 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
          {
            v17 = a1[9];
            v18 = [a1[5] URL];
            *buf = v20;
            v27 = v17;
            v28 = 2112;
            v29 = v18;
            v30 = 2112;
            v31 = v10;
            _os_log_fault_impl(&dword_18565F000, v14, OS_LOG_TYPE_FAULT, "CoreData: Attempting to delete a zone metadata that has records (%ld): %@ - %@", buf, 0x20u);
          }
        }

        [a1[6] deleteObject:{v12, v20}];
      }

      else if (v25)
      {
        *(*(a1[7] + 8) + 24) = 0;
      }

      if (!*(*(a1[7] + 8) + 24))
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v2 countByEnumeratingWithState:&v21 objects:v32 count:16];
        if (v7)
        {
          goto LABEL_8;
        }

        break;
      }
    }
  }

  v19 = *(*(a1[7] + 8) + 24);
  if (v19 == 1)
  {
    *(*(a1[7] + 8) + 24) = [a1[6] save:&v25];
    v19 = *(*(a1[7] + 8) + 24);
  }

  if (!v19)
  {
    *(*(a1[8] + 8) + 40) = v25;
  }
}

@end