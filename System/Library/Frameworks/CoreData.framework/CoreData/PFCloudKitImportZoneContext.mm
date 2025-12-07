@interface PFCloudKitImportZoneContext
- (BOOL)linkInsertedObjectsAndMetadataInContext:(uint64_t *)context error:;
- (PFCloudKitImportZoneContext)initWithUpdatedRecords:(id)records deletedRecordTypeToRecordIDs:(id)ds options:(id)options fileBackedFuturesDirectory:(id)directory;
- (uint64_t)addMirroredRelationshipToLink:(uint64_t)result;
- (uint64_t)initializeCachesWithManagedObjectContext:(void *)context andObservedStore:(id *)store error:;
- (uint64_t)populateUnresolvedIDsInStore:(void *)store withManagedObjectContext:(void *)context error:;
- (void)addObjectID:(void *)d toCache:(uint64_t)cache andRecordID:;
- (void)addObjectID:(void *)d toCache:(uint64_t)cache forRecordWithType:(uint64_t)type andUniqueIdentifier:;
- (void)addUnresolvedRecordID:(uint64_t)d forRecordType:(uint64_t)type toCache:(void *)cache;
- (void)dealloc;
- (void)registerObject:(void *)object forInsertedRecord:(void *)record withMetadata:;
@end

@implementation PFCloudKitImportZoneContext

- (PFCloudKitImportZoneContext)initWithUpdatedRecords:(id)records deletedRecordTypeToRecordIDs:(id)ds options:(id)options fileBackedFuturesDirectory:(id)directory
{
  v12.receiver = self;
  v12.super_class = PFCloudKitImportZoneContext;
  v10 = [(PFCloudKitImportZoneContext *)&v12 init];
  if (v10)
  {
    v10->_updatedRecords = records;
    v10->_deletedRecordTypeToRecordID = ds;
    v10->_recordTypeToUnresolvedRecordIDs = objc_alloc_init(MEMORY[0x1E695DF90]);
    v10->_mirroringOptions = options;
    if (directory && [directory length])
    {
      v10->_fileBackedFuturesDirectory = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:directory];
    }

    v10->_metadatasToLink = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  return v10;
}

- (void)dealloc
{
  self->_updatedRecords = 0;

  self->_deletedRecordTypeToRecordID = 0;
  self->_deletedObjectIDs = 0;

  self->_deletedMirroredRelationshipRecordIDs = 0;
  self->_modifiedRecords = 0;

  self->_updatedRelationships = 0;
  self->_deletedRelationships = 0;

  self->_recordTypeToRecordIDToObjectID = 0;
  self->_recordTypeToUnresolvedRecordIDs = 0;

  self->_importOperations = 0;
  self->_mirroringOptions = 0;

  self->_fileBackedFuturesDirectory = 0;
  self->_metadatasToLink = 0;
  v3.receiver = self;
  v3.super_class = PFCloudKitImportZoneContext;
  [(PFCloudKitImportZoneContext *)&v3 dealloc];
}

- (uint64_t)initializeCachesWithManagedObjectContext:(void *)context andObservedStore:(id *)store error:
{
  v244 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    v144 = 0;
    return v144 & 1;
  }

  v224 = 0;
  v158 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v183 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v180 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v157 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v156 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v168 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v170 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v182 = [objc_msgSend(a2 "persistentStoreCoordinator")];
  v184 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  if ([context configurationName])
  {
    v6 = [v182 entitiesForConfiguration:{objc_msgSend(context, "configurationName")}];
  }

  else
  {
    v6 = [objc_msgSend(v182 "entitiesByName")];
  }

  v7 = v6;
  contextCopy = context;
  v174 = a2;
  v223 = 0u;
  v221 = 0u;
  v222 = 0u;
  v220 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v220 objects:v243 count:16];
  if (v8)
  {
    v9 = *v221;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v221 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [v184 addObject:{objc_msgSend(*(*(&v220 + 1) + 8 * i), "name")}];
      }

      v8 = [v7 countByEnumeratingWithState:&v220 objects:v243 count:16];
    }

    while (v8);
  }

  v218 = 0u;
  v219 = 0u;
  v216 = 0u;
  v217 = 0u;
  obj = *(self + 8);
  v11 = [obj countByEnumeratingWithState:&v216 objects:v242 count:16];
  if (v11)
  {
    v12 = *v217;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v217 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v216 + 1) + 8 * j);
        v15 = objc_autoreleasePoolPush();
        recordType = [v14 recordType];
        recordType2 = [v14 recordType];
        if ([recordType2 hasPrefix:@"CD_"])
        {
          recordType2 = [recordType2 substringFromIndex:{objc_msgSend(@"CD_", "length")}];
        }

        if (([recordType hasPrefix:@"CD_M2M_"] & 1) != 0 || objc_msgSend(recordType, "isEqualToString:", @"CDMR"))
        {
          v18 = objc_autoreleasePoolPush();
          Stream = __PFCloudKitLoggingGetStream();
          v20 = Stream;
          v21 = __ckLoggingOverride;
          if (__ckLoggingOverride > 0xFu)
          {
            if (__ckLoggingOverride == 17)
            {
              v22 = 17;
            }

            else
            {
              v22 = 2;
            }

            if (__ckLoggingOverride == 16)
            {
              v21 = OS_LOG_TYPE_ERROR;
            }

            else
            {
              v21 = v22;
            }
          }

          else if (__ckLoggingOverride >= 2u)
          {
            v21 = OS_LOG_TYPE_DEBUG;
          }

          if (os_log_type_enabled(Stream, v21))
          {
            *buf = 136315650;
            v233 = "[PFCloudKitImportZoneContext initializeCachesWithManagedObjectContext:andObservedStore:error:]";
            v234 = 1024;
            v235 = 131;
            v236 = 2112;
            selfCopy6 = v14;
            _os_log_impl(&dword_18565F000, v20, v21, "CoreData+CloudKit: %s(%d): Updating relationship described by record: %@", buf, 0x1Cu);
          }

          objc_autoreleasePoolPop(v18);
          encryptedValues = v14;
          if ([*(self + 96) useDeviceToDeviceEncryption])
          {
            encryptedValues = [v14 encryptedValues];
          }

          if ([PFMirroredRelationship isValidMirroredRelationshipRecord:v14 values:encryptedValues])
          {
            v24 = [PFMirroredRelationship mirroredRelationshipWithManyToManyRecord:v14 values:encryptedValues andManagedObjectModel:v182];
            v25 = v24;
            if (v24)
            {
              if (v24->super._relationshipDescription && v24->super._inverseRelationshipDescription)
              {
                [v157 addObject:v24];
                recordTypeToRecordID = [(PFMirroredManyToManyRelationship *)v25 recordTypeToRecordID];
                v215[0] = MEMORY[0x1E69E9820];
                v215[1] = 3221225472;
                v215[2] = __95__PFCloudKitImportZoneContext_initializeCachesWithManagedObjectContext_andObservedStore_error___block_invoke;
                v215[3] = &unk_1E6EC1888;
                v215[4] = v184;
                v215[5] = v183;
                v215[6] = self;
                v215[7] = v14;
                [recordTypeToRecordID enumerateKeysAndObjectsUsingBlock:v215];
                goto LABEL_68;
              }

              v27 = objc_autoreleasePoolPush();
              v32 = __PFCloudKitLoggingGetStream();
              v33 = v32;
              v34 = __ckLoggingOverride;
              if (__ckLoggingOverride && __ckLoggingOverride != 16 && __ckLoggingOverride != 17)
              {
                v34 = OS_LOG_TYPE_INFO;
              }

              if (os_log_type_enabled(v32, v34))
              {
                *buf = 136315906;
                v233 = "[PFCloudKitImportZoneContext initializeCachesWithManagedObjectContext:andObservedStore:error:]";
                v234 = 1024;
                v235 = 160;
                v236 = 2112;
                selfCopy6 = self;
                v238 = 2112;
                v239 = v14;
                v35 = v33;
                v36 = v34;
                v37 = "CoreData+CloudKit: %s(%d): %@ - Skipping mirrored relationship for unknown relationships: %@";
                goto LABEL_60;
              }
            }

            else
            {
              v27 = objc_autoreleasePoolPush();
              v38 = __PFCloudKitLoggingGetStream();
              v39 = v38;
              if (__ckLoggingOverride == 17)
              {
                v40 = OS_LOG_TYPE_FAULT;
              }

              else
              {
                v40 = OS_LOG_TYPE_ERROR;
              }

              if (os_log_type_enabled(v38, v40))
              {
                *buf = 136315906;
                v233 = "[PFCloudKitImportZoneContext initializeCachesWithManagedObjectContext:andObservedStore:error:]";
                v234 = 1024;
                v235 = 163;
                v236 = 2112;
                selfCopy6 = self;
                v238 = 2112;
                v239 = v14;
                v36 = v40;
                v35 = v39;
                v37 = "CoreData+CloudKit: %s(%d): %@: Failed to serialize many to many relationship from record: %@";
LABEL_60:
                _os_log_impl(&dword_18565F000, v35, v36, v37, buf, 0x26u);
              }
            }
          }

          else
          {
            v27 = objc_autoreleasePoolPush();
            v28 = __PFCloudKitLoggingGetStream();
            v29 = v28;
            if (__ckLoggingOverride == 17)
            {
              v30 = OS_LOG_TYPE_FAULT;
            }

            else
            {
              v30 = 16 * (__ckLoggingOverride == 16);
            }

            if (os_log_type_enabled(v28, v30))
            {
              *buf = 136315906;
              v233 = "[PFCloudKitImportZoneContext initializeCachesWithManagedObjectContext:andObservedStore:error:]";
              v234 = 1024;
              v235 = 166;
              v236 = 2112;
              selfCopy6 = self;
              v238 = 2112;
              v239 = v14;
              _os_log_impl(&dword_18565F000, v29, v30, "CoreData+CloudKit: %s(%d): %@: Skipping invalid mirrored relationship record: %@", buf, 0x26u);
            }
          }

LABEL_67:
          objc_autoreleasePoolPop(v27);
          goto LABEL_68;
        }

        if (![v184 containsObject:recordType2])
        {
          v27 = objc_autoreleasePoolPush();
          v41 = __PFCloudKitLoggingGetStream();
          v42 = v41;
          if (__ckLoggingOverride == 17)
          {
            v43 = OS_LOG_TYPE_FAULT;
          }

          else
          {
            v43 = 16 * (__ckLoggingOverride == 16);
          }

          if (os_log_type_enabled(v41, v43))
          {
            *buf = 136316162;
            v233 = "[PFCloudKitImportZoneContext initializeCachesWithManagedObjectContext:andObservedStore:error:]";
            v234 = 1024;
            v235 = 180;
            v236 = 2112;
            selfCopy6 = self;
            v238 = 2112;
            v239 = v14;
            v240 = 2112;
            v241 = v184;
            _os_log_impl(&dword_18565F000, v42, v43, "CoreData+CloudKit: %s(%d): %@ - Skipping unknown updated record: %@\nIt is not a part of: %@", buf, 0x30u);
          }

          goto LABEL_67;
        }

        v31 = [v183 objectForKey:recordType];
        if (!v31)
        {
          v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
          [v183 setObject:v31 forKey:recordType];
        }

        [v158 addObject:v14];
        [v31 addObject:{objc_msgSend(v14, "recordID")}];

LABEL_68:
        objc_autoreleasePoolPop(v15);
      }

      v11 = [obj countByEnumeratingWithState:&v216 objects:v242 count:16];
    }

    while (v11);
  }

  v213 = 0u;
  v214 = 0u;
  v211 = 0u;
  v212 = 0u;
  v159 = *(self + 16);
  v44 = [v159 countByEnumeratingWithState:&v211 objects:v231 count:16];
  if (!v44)
  {
    goto LABEL_164;
  }

  v160 = 1;
  v161 = *v212;
  do
  {
    v45 = 0;
    v162 = v44;
    do
    {
      if (*v212 != v161)
      {
        objc_enumerationMutation(v159);
      }

      v165 = v45;
      v46 = *(*(&v211 + 1) + 8 * v45);
      context = objc_autoreleasePoolPush();
      obja = [*(self + 16) objectForKey:v46];
      v173 = v46;
      if ([v46 hasPrefix:@"CD_"])
      {
        v173 = [v46 substringFromIndex:{objc_msgSend(@"CD_", "length")}];
      }

      v209 = 0u;
      v210 = 0u;
      v207 = 0u;
      v208 = 0u;
      v47 = [obja countByEnumeratingWithState:&v207 objects:v230 count:16];
      if (!v47)
      {
        goto LABEL_161;
      }

      v48 = *v208;
      while (2)
      {
        v49 = 0;
        do
        {
          if (*v208 != v48)
          {
            objc_enumerationMutation(obja);
          }

          v50 = *(*(&v207 + 1) + 8 * v49);
          v51 = objc_autoreleasePoolPush();
          v52 = __PFCloudKitLoggingGetStream();
          v53 = v52;
          v54 = __ckLoggingOverride;
          if (__ckLoggingOverride > 0xFu)
          {
            if (__ckLoggingOverride == 17)
            {
              v55 = 17;
            }

            else
            {
              v55 = 2;
            }

            if (__ckLoggingOverride == 16)
            {
              v54 = OS_LOG_TYPE_ERROR;
            }

            else
            {
              v54 = v55;
            }
          }

          else if (__ckLoggingOverride >= 2u)
          {
            v54 = OS_LOG_TYPE_DEBUG;
          }

          if (os_log_type_enabled(v52, v54))
          {
            *buf = 136315906;
            v233 = "[PFCloudKitImportZoneContext initializeCachesWithManagedObjectContext:andObservedStore:error:]";
            v234 = 1024;
            v235 = 191;
            v236 = 2112;
            selfCopy6 = v46;
            v238 = 2112;
            v239 = v50;
            _os_log_impl(&dword_18565F000, v53, v54, "CoreData+CloudKit: %s(%d): Deleting record with id (%@): %@", buf, 0x26u);
          }

          objc_autoreleasePoolPop(v51);
          if ([v46 hasPrefix:@"CD_M2M_"])
          {
            v56 = [PFMirroredRelationship mirroredRelationshipWithDeletedRecordType:v46 recordID:v50 andManagedObjectModel:v182];
            [v180 addObject:v56];
            recordTypeToRecordID2 = [(PFMirroredManyToManyRelationship *)v56 recordTypeToRecordID];
            v206[0] = MEMORY[0x1E69E9820];
            v206[1] = 3221225472;
            v206[2] = __95__PFCloudKitImportZoneContext_initializeCachesWithManagedObjectContext_andObservedStore_error___block_invoke_11;
            v206[3] = &unk_1E6EC1888;
            v206[4] = v184;
            v206[5] = v183;
            v206[6] = self;
            v206[7] = v50;
            [recordTypeToRecordID2 enumerateKeysAndObjectsUsingBlock:v206];
            goto LABEL_145;
          }

          if ([v46 isEqualToString:@"CDMR"])
          {
            v58 = +[NSCKMirroredRelationship fetchMirroredRelationshipsMatchingPredicate:fromStore:inManagedObjectContext:error:](NSCKMirroredRelationship, [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"ckRecordID", objc_msgSend(v50, "recordName")], contextCopy, v174, &v224);
            if (!v58)
            {
              v90 = objc_autoreleasePoolPush();
              v91 = __PFCloudKitLoggingGetStream();
              v92 = v91;
              if (__ckLoggingOverride == 17)
              {
                v93 = OS_LOG_TYPE_FAULT;
              }

              else
              {
                v93 = OS_LOG_TYPE_ERROR;
              }

              if (os_log_type_enabled(v91, v93))
              {
                *buf = 136315650;
                v233 = "[PFCloudKitImportZoneContext initializeCachesWithManagedObjectContext:andObservedStore:error:]";
                v234 = 1024;
                v235 = 264;
                v236 = 2112;
                selfCopy6 = v224;
                _os_log_impl(&dword_18565F000, v92, v93, "CoreData+CloudKit: %s(%d): Import context failed to fetch mirrored relationships during import: %@", buf, 0x1Cu);
              }

              objc_autoreleasePoolPop(v90);
              v160 = 0;
              v94 = v224;
              goto LABEL_161;
            }

            lastObject = [v58 lastObject];
            v60 = lastObject;
            if (!lastObject)
            {
              v75 = objc_autoreleasePoolPush();
              v76 = __PFCloudKitLoggingGetStream();
              v77 = v76;
              v78 = OS_LOG_TYPE_DEBUG;
              if (__ckLoggingOverride <= 0xFu)
              {
                if (__ckLoggingOverride >= 2u)
                {
                  goto LABEL_141;
                }

LABEL_140:
                v78 = __ckLoggingOverride;
                goto LABEL_141;
              }

              if (__ckLoggingOverride == 16 || __ckLoggingOverride == 17)
              {
                goto LABEL_140;
              }

LABEL_141:
              if (os_log_type_enabled(v76, v78))
              {
                *buf = 136315650;
                v233 = "[PFCloudKitImportZoneContext initializeCachesWithManagedObjectContext:andObservedStore:error:]";
                v234 = 1024;
                v235 = 261;
                v236 = 2112;
                selfCopy6 = v50;
                v82 = v77;
                v83 = v78;
                v84 = "CoreData+CloudKit: %s(%d): Skipping mirrored relationship with record id (not found locally): %@";
                v85 = 28;
LABEL_143:
                _os_log_impl(&dword_18565F000, v82, v83, v84, buf, v85);
              }

LABEL_144:
              objc_autoreleasePoolPop(v75);
              goto LABEL_145;
            }

            [lastObject setNeedsDeleteBool:1];
            [v60 setIsUploadedBool:1];
            if (![v184 containsObject:{objc_msgSend(v60, "cdEntityName")}])
            {
              v75 = objc_autoreleasePoolPush();
              v79 = __PFCloudKitLoggingGetStream();
              v80 = v79;
              if (__ckLoggingOverride == 17)
              {
                v81 = OS_LOG_TYPE_FAULT;
              }

              else
              {
                v81 = 16 * (__ckLoggingOverride == 16);
              }

              if (os_log_type_enabled(v79, v81))
              {
                *buf = 136316162;
                v233 = "[PFCloudKitImportZoneContext initializeCachesWithManagedObjectContext:andObservedStore:error:]";
                v234 = 1024;
                v235 = 258;
                v236 = 2112;
                selfCopy6 = self;
                v238 = 2112;
                v239 = v60;
                v240 = 2112;
                v241 = v50;
                v82 = v80;
                v83 = v81;
                v84 = "CoreData+CloudKit: %s(%d): %@ - Skipping unknown deleted relationship recordID: %@ - %@";
                v85 = 48;
                goto LABEL_143;
              }

              goto LABEL_144;
            }

            v61 = [objc_msgSend(objc_msgSend(objc_msgSend(v182 "entitiesByName")];
            createRecordIDForRecord = [(NSCKMirroredRelationship *)v60 createRecordIDForRecord];
            createRecordIDForRelatedRecord = [(NSCKMirroredRelationship *)v60 createRecordIDForRelatedRecord];
            v64 = -[PFMirroredManyToManyRelationshipV2 initWithRecordID:forRecordWithID:relatedToRecordWithID:byRelationship:withInverse:andType:]([PFMirroredManyToManyRelationshipV2 alloc], "initWithRecordID:forRecordWithID:relatedToRecordWithID:byRelationship:withInverse:andType:", v50, createRecordIDForRecord, createRecordIDForRelatedRecord, v61, [v61 inverseRelationship], 1);
            [v180 addObject:v64];
            if (v64)
            {
              relationshipDescription = v64->super._relationshipDescription;
            }

            else
            {
              relationshipDescription = 0;
            }

            v66 = [v183 objectForKey:{-[NSEntityDescription name](-[NSPropertyDescription entity](relationshipDescription, "entity"), "name")}];
            if (!v66)
            {
              v66 = objc_alloc_init(MEMORY[0x1E695DF70]);
              if (v64)
              {
                v67 = v64->super._relationshipDescription;
              }

              else
              {
                v67 = 0;
              }

              [v183 setObject:v66 forKey:{-[NSEntityDescription name](-[NSPropertyDescription entity](v67, "entity"), "name")}];
            }

            if (v64)
            {
              ckRecordID = v64->super._ckRecordID;
            }

            else
            {
              ckRecordID = 0;
            }

            [v66 addObject:ckRecordID];

            if (v64)
            {
              inverseRelationshipDescription = v64->super._inverseRelationshipDescription;
            }

            else
            {
              inverseRelationshipDescription = 0;
            }

            v70 = [v183 objectForKey:{-[NSEntityDescription name](-[NSPropertyDescription entity](inverseRelationshipDescription, "entity"), "name")}];
            if (!v70)
            {
              v70 = objc_alloc_init(MEMORY[0x1E695DF70]);
              if (v64)
              {
                v71 = v64->super._inverseRelationshipDescription;
              }

              else
              {
                v71 = 0;
              }

              [v183 setObject:v70 forKey:{-[NSEntityDescription name](-[NSPropertyDescription entity](v71, "entity"), "name")}];
            }

            if (v64)
            {
              relatedCKRecordID = v64->super._relatedCKRecordID;
            }

            else
            {
              relatedCKRecordID = 0;
            }

            [v70 addObject:relatedCKRecordID];
          }

          else
          {
            if (![v184 containsObject:v173])
            {
              if ([v46 isEqualToString:getCloudKitCKRecordTypeShare()])
              {
                [v168 addObject:v50];
                goto LABEL_145;
              }

              v75 = objc_autoreleasePoolPush();
              v86 = __PFCloudKitLoggingGetStream();
              v87 = v86;
              if (__ckLoggingOverride == 17)
              {
                v88 = OS_LOG_TYPE_FAULT;
              }

              else
              {
                v88 = 16 * (__ckLoggingOverride == 16);
              }

              if (os_log_type_enabled(v86, v88))
              {
                *buf = 136316162;
                v233 = "[PFCloudKitImportZoneContext initializeCachesWithManagedObjectContext:andObservedStore:error:]";
                v234 = 1024;
                v235 = 291;
                v236 = 2112;
                selfCopy6 = self;
                v238 = 2112;
                v239 = v46;
                v240 = 2112;
                v241 = v50;
                _os_log_impl(&dword_18565F000, v87, v88, "CoreData+CloudKit: %s(%d): %@ - Skipping unknown deleted record: %@ - %@", buf, 0x30u);
              }

              goto LABEL_144;
            }

            v73 = [v183 objectForKey:v46];
            if (!v73)
            {
              v73 = objc_alloc_init(MEMORY[0x1E695DF70]);
              [v183 setObject:v73 forKey:v46];
            }

            [v73 addObject:v50];

            v74 = [v170 objectForKey:v46];
            if (!v74)
            {
              v74 = objc_alloc_init(MEMORY[0x1E695DFA8]);
              [v170 setObject:v74 forKey:v46];
            }

            [v74 addObject:v50];
          }

LABEL_145:
          ++v49;
        }

        while (v47 != v49);
        v89 = [obja countByEnumeratingWithState:&v207 objects:v230 count:16];
        v47 = v89;
        if (v89)
        {
          continue;
        }

        break;
      }

LABEL_161:
      objc_autoreleasePoolPop(context);
      v45 = v165 + 1;
    }

    while (v165 + 1 != v162);
    v44 = [v159 countByEnumeratingWithState:&v211 objects:v231 count:16];
  }

  while (v44);
  if ((v160 & 1) == 0)
  {
    v148 = v224;
    v145 = v224;
    if (!v224)
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v233 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitImportZoneContext.m";
        v234 = 1024;
        v235 = 448;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v147 = _PFLogGetLogStream(17);
      if (!os_log_type_enabled(v147, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_248;
      }

      *buf = 136315394;
      v233 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitImportZoneContext.m";
      v234 = 1024;
      v235 = 448;
      goto LABEL_259;
    }

LABEL_243:
    if (store)
    {
      v171 = 0;
      v144 = 0;
      *store = v145;

      goto LABEL_262;
    }

    goto LABEL_248;
  }

LABEL_164:
  v95 = [NSCKMirroredRelationship fetchMirroredRelationshipsMatchingRelatingRecords:MEMORY[0x1E695E0F0] andRelatingRecordIDs:contextCopy fromStore:v174 inManagedObjectContext:&v224 error:?];
  v96 = v95;
  if (!v95)
  {
    v145 = v224;
    if (!v224)
    {
      v146 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v146, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v233 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitImportZoneContext.m";
        v234 = 1024;
        v235 = 444;
        _os_log_error_impl(&dword_18565F000, v146, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v147 = _PFLogGetLogStream(17);
      if (!os_log_type_enabled(v147, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_248;
      }

      *buf = 136315394;
      v233 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitImportZoneContext.m";
      v234 = 1024;
      v235 = 444;
LABEL_259:
      _os_log_fault_impl(&dword_18565F000, v147, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
LABEL_248:
      v171 = 0;
      v144 = 0;

      goto LABEL_262;
    }

    goto LABEL_243;
  }

  v204 = 0u;
  v205 = 0u;
  v202 = 0u;
  v203 = 0u;
  v97 = [v95 countByEnumeratingWithState:&v202 objects:v229 count:16];
  if (v97)
  {
    v98 = *v203;
    do
    {
      for (k = 0; k != v97; ++k)
      {
        if (*v203 != v98)
        {
          objc_enumerationMutation(v96);
        }

        v100 = *(*(&v202 + 1) + 8 * k);
        v101 = objc_autoreleasePoolPush();
        createRecordIDForRecord2 = [(NSCKMirroredRelationship *)v100 createRecordIDForRecord];
        createRecordIDForRelatedRecord2 = [(NSCKMirroredRelationship *)v100 createRecordIDForRelatedRecord];
        v104 = [v183 objectForKey:{objc_msgSend(v100, "cdEntityName")}];
        if (!v104)
        {
          v104 = objc_alloc_init(MEMORY[0x1E695DF70]);
          [v183 setObject:v104 forKey:{objc_msgSend(v100, "cdEntityName")}];
        }

        [v104 addObject:createRecordIDForRecord2];

        v105 = [v183 objectForKey:{objc_msgSend(v100, "relatedEntityName")}];
        if (!v105)
        {
          v105 = objc_alloc_init(MEMORY[0x1E695DF70]);
          [v183 setObject:v105 forKey:{objc_msgSend(v100, "relatedEntityName")}];
        }

        [v105 addObject:createRecordIDForRelatedRecord2];

        objc_autoreleasePoolPop(v101);
      }

      v97 = [v96 countByEnumeratingWithState:&v202 objects:v229 count:16];
    }

    while (v97);
  }

  v175 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v200 = 0u;
  v201 = 0u;
  v198 = 0u;
  v199 = 0u;
  v171 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:{objc_msgSend(v183, "allKeys")}];
  v106 = [v171 countByEnumeratingWithState:&v198 objects:v228 count:16];
  if (v106)
  {
    objb = *v199;
LABEL_178:
    v107 = 0;
    while (1)
    {
      if (*v199 != objb)
      {
        objc_enumerationMutation(v171);
      }

      v108 = [v183 objectForKey:*(*(&v198 + 1) + 8 * v107)];
      v109 = [NSCKRecordMetadata createMapOfMetadataMatchingRecords:v108 andRecordIDs:contextCopy inStore:v174 withManagedObjectContext:&v224 error:?];
      if (v109)
      {
        v196 = 0u;
        v197 = 0u;
        v194 = 0u;
        v195 = 0u;
        v110 = [v108 countByEnumeratingWithState:&v194 objects:v227 count:16];
        if (v110)
        {
          v111 = *v195;
          do
          {
            for (m = 0; m != v110; ++m)
            {
              if (*v195 != v111)
              {
                objc_enumerationMutation(v108);
              }

              v113 = *(*(&v194 + 1) + 8 * m);
              v114 = [v109 objectForKey:v113];
              if (v114)
              {
                createObjectIDForLinkedRow = [(NSCKRecordMetadata *)v114 createObjectIDForLinkedRow];
                [(PFCloudKitImportZoneContext *)self addObjectID:createObjectIDForLinkedRow toCache:v175 andRecordID:v113];
              }
            }

            v110 = [v108 countByEnumeratingWithState:&v194 objects:v227 count:16];
          }

          while (v110);
        }
      }

      else
      {
        v116 = v224;
      }

      if (!v109)
      {
        break;
      }

      if (++v107 == v106)
      {
        v106 = [v171 countByEnumeratingWithState:&v198 objects:v228 count:16];
        if (v106)
        {
          goto LABEL_178;
        }

        goto LABEL_196;
      }
    }

LABEL_250:
    if (v224)
    {
      if (store)
      {
        *store = v224;
      }
    }

    else
    {
      v151 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v151, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v233 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitImportZoneContext.m";
        v234 = 1024;
        v235 = 439;
        _os_log_error_impl(&dword_18565F000, v151, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v152 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v152, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v233 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitImportZoneContext.m";
        v234 = 1024;
        v235 = 439;
        _os_log_fault_impl(&dword_18565F000, v152, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }

    v144 = 0;
    v153 = v224;
  }

  else
  {
LABEL_196:
    v117 = [NSCKImportOperation fetchUnfinishedImportOperationsInStore:contextCopy withManagedObjectContext:v174 error:&v224];
    *(self + 88) = v117;
    if (!v117)
    {
      v150 = v224;
      goto LABEL_250;
    }

    v192 = 0u;
    v193 = 0u;
    v190 = 0u;
    v191 = 0u;
    contexta = v117;
    v118 = [v117 countByEnumeratingWithState:&v190 objects:v226 count:16];
    if (v118)
    {
      v166 = *v191;
      do
      {
        v119 = 0;
        v167 = v118;
        do
        {
          if (*v191 != v166)
          {
            objc_enumerationMutation(contexta);
          }

          v169 = v119;
          v120 = *(*(&v190 + 1) + 8 * v119);
          v186 = 0u;
          v187 = 0u;
          v188 = 0u;
          v189 = 0u;
          pendingRelationships = [v120 pendingRelationships];
          v122 = [pendingRelationships countByEnumeratingWithState:&v186 objects:v225 count:16];
          if (v122)
          {
            objc = *v187;
            do
            {
              for (n = 0; n != v122; ++n)
              {
                if (*v187 != objc)
                {
                  objc_enumerationMutation(pendingRelationships);
                }

                v124 = *(*(&v186 + 1) + 8 * n);
                v125 = [objc_msgSend(v182 "entitiesByName")];
                v126 = [objc_msgSend(v182 "entitiesByName")];
                if (v125)
                {
                  v127 = v126 == 0;
                }

                else
                {
                  v127 = 1;
                }

                if (v127)
                {
                  v128 = objc_autoreleasePoolPush();
                  v129 = __PFCloudKitLoggingGetStream();
                  v130 = v129;
                  if (__ckLoggingOverride == 17)
                  {
                    v131 = 17;
                  }

                  else
                  {
                    v131 = 1;
                  }

                  if (__ckLoggingOverride == 16)
                  {
                    v131 = 16;
                  }

                  if (__ckLoggingOverride)
                  {
                    v132 = v131;
                  }

                  else
                  {
                    v132 = OS_LOG_TYPE_DEFAULT;
                  }

                  if (os_log_type_enabled(v129, v132))
                  {
                    *buf = 136315650;
                    v233 = "[PFCloudKitImportZoneContext initializeCachesWithManagedObjectContext:andObservedStore:error:]";
                    v234 = 1024;
                    v235 = 403;
                    v236 = 2112;
                    selfCopy6 = v124;
                    _os_log_impl(&dword_18565F000, v130, v132, "CoreData+CloudKit: %s(%d): Deleting pending relationship because it's entities are no longer in the model: %@", buf, 0x1Cu);
                  }

                  objc_autoreleasePoolPop(v128);
                  [v174 deleteObject:v124];
                }

                else
                {
                  v133 = [PFCloudKitSerializer recordTypeForEntity:v125];
                  v134 = [objc_alloc(getCloudKitCKRecordZoneIDClass[0]()) initWithZoneName:objc_msgSend(v124 ownerName:{"recordZoneName"), objc_msgSend(v124, "recordZoneOwnerName")}];
                  v135 = [objc_alloc(getCloudKitCKRecordIDClass()) initWithRecordName:objc_msgSend(v124 zoneID:{"recordName"), v134}];
                  v136 = [objc_alloc(getCloudKitCKRecordZoneIDClass[0]()) initWithZoneName:objc_msgSend(v124 ownerName:{"relatedRecordZoneName"), objc_msgSend(v124, "relatedRecordZoneOwnerName")}];
                  v137 = [objc_alloc(getCloudKitCKRecordIDClass()) initWithRecordName:objc_msgSend(v124 zoneID:{"relatedRecordName"), v136}];
                  v138 = [v134 isEqual:v136];
                  if ((v138 & 1) == 0)
                  {
                    v139 = _PFLogGetLogStream(17);
                    if (os_log_type_enabled(v139, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      v233 = v124;
                      _os_log_error_impl(&dword_18565F000, v139, OS_LOG_TYPE_ERROR, "CoreData: fault: Import is attempting to link objects across zones: %@\n", buf, 0xCu);
                    }

                    v140 = _PFLogGetLogStream(17);
                    if (os_log_type_enabled(v140, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 138412290;
                      v233 = v124;
                      _os_log_fault_impl(&dword_18565F000, v140, OS_LOG_TYPE_FAULT, "CoreData: Import is attempting to link objects across zones: %@", buf, 0xCu);
                    }
                  }

                  [PFCloudKitImportZoneContext addUnresolvedRecordID:v135 forRecordType:v133 toCache:*(self + 72)];
                  v141 = +[PFCloudKitSerializer recordTypeForEntity:](PFCloudKitSerializer, [objc_msgSend(v182 "entitiesByName")]);
                  [PFCloudKitImportZoneContext addUnresolvedRecordID:v137 forRecordType:v141 toCache:*(self + 72)];
                  if (([objc_msgSend(v170 objectForKey:{v133), "containsObject:", v135}] & 1) != 0 || objc_msgSend(objc_msgSend(v170, "objectForKey:", v141), "containsObject:", v137))
                  {
                    [v174 deleteObject:v124];
                  }
                }
              }

              v122 = [pendingRelationships countByEnumeratingWithState:&v186 objects:v225 count:16];
            }

            while (v122);
          }

          v119 = v169 + 1;
        }

        while (v169 + 1 != v167);
        v118 = [contexta countByEnumeratingWithState:&v190 objects:v226 count:16];
      }

      while (v118);
    }

    *(self + 64) = v175;
    *(self + 32) = [v158 copy];
    *(self + 48) = [v180 copy];
    *(self + 56) = [v156 copy];
    *(self + 40) = v157;
    *(self + 112) = [v168 copy];
    v142 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v143 = *(self + 16);
    v185[0] = MEMORY[0x1E69E9820];
    v185[1] = 3221225472;
    v185[2] = __95__PFCloudKitImportZoneContext_initializeCachesWithManagedObjectContext_andObservedStore_error___block_invoke_21;
    v185[3] = &unk_1E6EC18B0;
    v185[4] = self;
    v185[5] = v142;
    [v143 enumerateKeysAndObjectsUsingBlock:v185];
    *(self + 24) = [v142 copy];

    v144 = 1;
  }

LABEL_262:
  return v144 & 1;
}

void __95__PFCloudKitImportZoneContext_initializeCachesWithManagedObjectContext_andObservedStore_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) containsObject:a2])
  {
    v6 = [*(a1 + 40) objectForKey:a2];
    if (!v6)
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [*(a1 + 40) setObject:v13 forKey:a2];
      v6 = v13;
    }

    v14 = v6;
    [v6 addObjectsFromArray:a3];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v9 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v10 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v10 = 16 * (__ckLoggingOverride == 16);
    }

    if (os_log_type_enabled(Stream, v10))
    {
      v11 = *(a1 + 48);
      v12 = *(a1 + 56);
      *buf = 136315906;
      v16 = "[PFCloudKitImportZoneContext initializeCachesWithManagedObjectContext:andObservedStore:error:]_block_invoke";
      v17 = 1024;
      v18 = 156;
      v19 = 2112;
      v20 = v11;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&dword_18565F000, v9, v10, "CoreData+CloudKit: %s(%d): %@ - Skipping unknown updated relationship record: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v7);
  }
}

void __95__PFCloudKitImportZoneContext_initializeCachesWithManagedObjectContext_andObservedStore_error___block_invoke_11(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) containsObject:a2])
  {
    v6 = [*(a1 + 40) objectForKey:a2];
    if (!v6)
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [*(a1 + 40) setObject:v13 forKey:a2];
      v6 = v13;
    }

    v14 = v6;
    [v6 addObjectsFromArray:a3];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v9 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v10 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v10 = 16 * (__ckLoggingOverride == 16);
    }

    if (os_log_type_enabled(Stream, v10))
    {
      v11 = *(a1 + 48);
      v12 = *(a1 + 56);
      *buf = 136316162;
      v16 = "[PFCloudKitImportZoneContext initializeCachesWithManagedObjectContext:andObservedStore:error:]_block_invoke";
      v17 = 1024;
      v18 = 210;
      v19 = 2112;
      v20 = v11;
      v21 = 2112;
      v22 = a2;
      v23 = 2112;
      v24 = v12;
      _os_log_impl(&dword_18565F000, v9, v10, "CoreData+CloudKit: %s(%d): %@ - Skipping unknown deleted relationship recordID: %@ - %@", buf, 0x30u);
    }

    objc_autoreleasePoolPop(v7);
  }
}

- (void)addObjectID:(void *)d toCache:(uint64_t)cache andRecordID:
{
  if (result)
  {
    v7 = result;
    entity = [a2 entity];
    name = [entity name];
    do
    {
      [(PFCloudKitImportZoneContext *)v7 addObjectID:a2 toCache:d forRecordWithType:name andUniqueIdentifier:cache];
      entity = [entity superentity];
      result = [entity name];
      name = result;
    }

    while (result);
  }

  return result;
}

- (void)addUnresolvedRecordID:(uint64_t)d forRecordType:(uint64_t)type toCache:(void *)cache
{
  v6 = [cache objectForKey:type];
  if (!v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [cache setObject:v7 forKey:type];
    v6 = v7;
  }

  v8 = v6;
  [v6 addObject:d];
}

void *__95__PFCloudKitImportZoneContext_initializeCachesWithManagedObjectContext_andObservedStore_error___block_invoke_21(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v16 = *MEMORY[0x1E69E9840];
  if ([a2 hasPrefix:@"CD_"])
  {
    v4 = [v4 substringFromIndex:{objc_msgSend(@"CD_", "length")}];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  result = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (result)
  {
    v7 = result;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(a3);
        }

        v10 = [objc_msgSend(*(*(a1 + 32) + 64) objectForKey:{v4), "objectForKey:", *(*(&v11 + 1) + 8 * v9)}];
        if (v10)
        {
          [*(a1 + 40) addObject:v10];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      result = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v7 = result;
    }

    while (result);
  }

  return result;
}

- (void)registerObject:(void *)object forInsertedRecord:(void *)record withMetadata:
{
  v21 = *MEMORY[0x1E69E9840];
  if (self)
  {
    -[PFCloudKitImportZoneContext addObjectID:toCache:andRecordID:](self, [a2 objectID], self[8], objc_msgSend(object, "recordID"));
    v7 = [_PFCKInsertedMetadataLink alloc];
    if (v7)
    {
      *v16 = v7;
      *&v16[8] = _PFCKInsertedMetadataLink;
      v8 = objc_msgSendSuper2(v16, sel_init);
      if (v8)
      {
        v8[2] = a2;
        v8[1] = record;
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v11 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v12 = 17;
    }

    else
    {
      v12 = 2;
    }

    if (__ckLoggingOverride == 16)
    {
      v12 = 16;
    }

    if (__ckLoggingOverride == 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (!__ckLoggingOverride)
    {
      v13 = 0;
    }

    if (__ckLoggingOverride <= 0xFu)
    {
      v14 = v13;
    }

    else
    {
      v14 = v12;
    }

    if (os_log_type_enabled(Stream, v14))
    {
      objectID = [a2 objectID];
      *v16 = 136315906;
      *&v16[4] = "[PFCloudKitImportZoneContext registerObject:forInsertedRecord:withMetadata:]";
      *&v16[12] = 1024;
      *&v16[14] = 497;
      v17 = 2112;
      v18 = objectID;
      v19 = 2112;
      recordCopy = record;
      _os_log_impl(&dword_18565F000, v11, v14, "CoreData+CloudKit: %s(%d): Linking %@ to %@", v16, 0x26u);
    }

    objc_autoreleasePoolPop(v9);
    [self[10] addObject:v8];
  }
}

- (uint64_t)addMirroredRelationshipToLink:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    [*(result + 40) addObject:a2];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      recordTypesToRecordIDs = [(PFMirroredOneToManyRelationship *)a2 recordTypesToRecordIDs];
      v11 = MEMORY[0x1E69E9820];
      v12 = 3221225472;
      v13 = __61__PFCloudKitImportZoneContext_addMirroredRelationshipToLink___block_invoke;
      v14 = &unk_1E6EC18D8;
      v15 = v3;
      v5 = &v11;
    }

    else
    {
      objc_opt_class();
      result = objc_opt_isKindOfClass();
      if ((result & 1) == 0)
      {
        return result;
      }

      recordTypesToRecordIDs = [(PFMirroredManyToManyRelationship *)a2 recordTypeToRecordID];
      v6 = MEMORY[0x1E69E9820];
      v7 = 3221225472;
      v8 = __61__PFCloudKitImportZoneContext_addMirroredRelationshipToLink___block_invoke_2;
      v9 = &unk_1E6EC18D8;
      v10 = v3;
      v5 = &v6;
    }

    return [recordTypesToRecordIDs enumerateKeysAndObjectsUsingBlock:{v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15}];
  }

  return result;
}

void *__61__PFCloudKitImportZoneContext_addMirroredRelationshipToLink___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  result = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (result)
  {
    v7 = result;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(a3);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (![objc_msgSend(*(*(a1 + 32) + 64) objectForKey:{a2), "objectForKey:", v10}])
        {
          v11 = [*(*(a1 + 32) + 72) objectForKey:a2];
          if (!v11)
          {
            v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
            [*(*(a1 + 32) + 72) setObject:v11 forKey:a2];
          }

          [v11 addObject:v10];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      result = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      v7 = result;
    }

    while (result);
  }

  return result;
}

void *__61__PFCloudKitImportZoneContext_addMirroredRelationshipToLink___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  result = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (result)
  {
    v7 = result;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(a3);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (![objc_msgSend(*(*(a1 + 32) + 64) objectForKey:{a2), "objectForKey:", v10}])
        {
          v11 = [*(*(a1 + 32) + 72) objectForKey:a2];
          if (!v11)
          {
            v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
            [*(*(a1 + 32) + 72) setObject:v11 forKey:a2];
          }

          [v11 addObject:v10];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      result = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      v7 = result;
    }

    while (result);
  }

  return result;
}

- (uint64_t)populateUnresolvedIDsInStore:(void *)store withManagedObjectContext:(void *)context error:
{
  v25 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 1;
    v11 = 0;
    v12 = &v11;
    v13 = 0x3052000000;
    v14 = __Block_byref_object_copy__5;
    v15 = __Block_byref_object_dispose__5;
    v16 = 0;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __91__PFCloudKitImportZoneContext_populateUnresolvedIDsInStore_withManagedObjectContext_error___block_invoke;
    v10[3] = &unk_1E6EC1900;
    v10[4] = self;
    v10[5] = a2;
    v10[6] = store;
    v10[7] = &v11;
    v10[8] = &v17;
    [store performBlockAndWait:v10];
    if ((v18[3] & 1) == 0)
    {
      v7 = v12[5];
      if (v7)
      {
        if (context)
        {
          *context = v7;
        }
      }

      else
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v22 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitImportZoneContext.m";
          v23 = 1024;
          v24 = 590;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
        }

        v9 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v22 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitImportZoneContext.m";
          v23 = 1024;
          v24 = 590;
          _os_log_fault_impl(&dword_18565F000, v9, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
        }
      }
    }

    v12[5] = 0;
    v5 = *(v18 + 24);
    _Block_object_dispose(&v11, 8);
    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void __91__PFCloudKitImportZoneContext_populateUnresolvedIDsInStore_withManagedObjectContext_error___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  Stream = __PFCloudKitLoggingGetStream();
  v4 = Stream;
  if (__ckLoggingOverride == 17)
  {
    v5 = 17;
  }

  else
  {
    v5 = 2;
  }

  if (__ckLoggingOverride == 16)
  {
    v5 = 16;
  }

  if (__ckLoggingOverride == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!__ckLoggingOverride)
  {
    v6 = 0;
  }

  if (__ckLoggingOverride <= 0xFu)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (os_log_type_enabled(Stream, v7))
  {
    v8 = *(*(a1 + 32) + 72);
    *buf = 136315650;
    v38 = "[PFCloudKitImportZoneContext populateUnresolvedIDsInStore:withManagedObjectContext:error:]_block_invoke";
    v39 = 1024;
    v40 = 551;
    v41 = 2112;
    v42 = v8;
    _os_log_impl(&dword_18565F000, v4, v7, "CoreData+CloudKit: %s(%d): Populating unresolved relationships:\n%@", buf, 0x1Cu);
  }

  objc_autoreleasePoolPop(v2);
  obj = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:{objc_msgSend(*(*(a1 + 32) + 72), "allKeys")}];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v9 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v9)
  {
    v26 = *v32;
LABEL_18:
    v10 = 0;
    v25 = v9;
    while (1)
    {
      if (*v32 != v26)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v31 + 1) + 8 * v10);
      v12 = objc_autoreleasePoolPush();
      v13 = [*(*(a1 + 32) + 72) objectForKey:v11];
      v14 = [NSCKRecordMetadata createMapOfMetadataMatchingRecords:v13 andRecordIDs:*(a1 + 40) inStore:*(a1 + 48) withManagedObjectContext:(*(*(a1 + 56) + 8) + 40) error:?];
      if (v14)
      {
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v15 = [v13 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v15)
        {
          v16 = *v28;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v28 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v27 + 1) + 8 * i);
              v19 = [v14 objectForKey:v18];
              v20 = v19;
              if (v19 && ([v19 isInserted] & 1) == 0)
              {
                v21 = [(NSCKRecordMetadata *)v20 createObjectIDForLinkedRow];
                [(PFCloudKitImportZoneContext *)*(a1 + 32) addObjectID:v21 toCache:*(*(a1 + 32) + 64) andRecordID:v18];
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v27 objects:v35 count:16];
          }

          while (v15);
        }
      }

      else
      {
        *(*(*(a1 + 64) + 8) + 24) = 0;
        v22 = *(*(*(a1 + 56) + 8) + 40);
      }

      v23 = *(*(*(a1 + 64) + 8) + 24);
      objc_autoreleasePoolPop(v12);
      if (!v23)
      {
        break;
      }

      if (++v10 == v25)
      {
        v9 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
        if (v9)
        {
          goto LABEL_18;
        }

        break;
      }
    }
  }
}

- (void)addObjectID:(void *)d toCache:(uint64_t)cache forRecordWithType:(uint64_t)type andUniqueIdentifier:
{
  if (self)
  {
    v9 = [d objectForKey:cache];
    if (!v9)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [d setObject:v10 forKey:cache];
      v9 = v10;
    }

    v11 = v9;
    [v9 setObject:a2 forKey:type];
  }
}

- (BOOL)linkInsertedObjectsAndMetadataInContext:(uint64_t *)context error:
{
  v49 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  v5 = result;
  v37 = 0;
  if ([a2 obtainPermanentIDsForObjects:objc_msgSend(objc_msgSend(a2 error:{"insertedObjects"), "allObjects"), &v37}])
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = v5[10];
    v6 = [obj countByEnumeratingWithState:&v33 objects:v48 count:16];
    if (v6)
    {
      v7 = v6;
      contextCopy = context;
      v8 = *v34;
      v31 = *MEMORY[0x1E696A250];
      v30 = *MEMORY[0x1E696A588];
      v9 = 1;
      do
      {
        v10 = 0;
        do
        {
          if (*v34 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v33 + 1) + 8 * v10);
          if (v11)
          {
            v12 = *(v11 + 16);
          }

          else
          {
            v12 = 0;
          }

          objectID = [v12 objectID];
          if ([objectID isTemporaryID])
          {
            LogStream = _PFLogGetLogStream(17);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              insertedObjects = [a2 insertedObjects];
              *buf = 138413058;
              v41 = objectID;
              v42 = 2112;
              v43 = v11;
              v44 = 2112;
              v45 = insertedObjects;
              v46 = 2112;
              v47 = v37;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Found temporary objectID for metadata link: %@\n%@\n%@\n%@\n", buf, 0x2Au);
            }

            v15 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
            {
              insertedObjects2 = [a2 insertedObjects];
              *buf = 138413058;
              v41 = objectID;
              v42 = 2112;
              v43 = v11;
              v44 = 2112;
              v45 = insertedObjects2;
              v46 = 2112;
              v47 = v37;
              _os_log_fault_impl(&dword_18565F000, v15, OS_LOG_TYPE_FAULT, "CoreData: Found temporary objectID for metadata link: %@\n%@\n%@\n%@", buf, 0x2Au);
            }

            v16 = MEMORY[0x1E696ABC0];
            v38 = v30;
            v39 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], objectID, v11, [a2 insertedObjects]);
            v9 = 0;
            v37 = [v16 errorWithDomain:v31 code:134410 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v39, &v38, 1)}];
          }

          else
          {
            v17 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(objectID, "_referenceData64")}];
            if (v11)
            {
              v18 = *(v11 + 8);
            }

            else
            {
              v18 = 0;
            }

            [v18 setEntityPK:v17];
            v19 = _sqlEntityForEntityDescription([objc_msgSend(objectID "persistentStore")], objc_msgSend(objectID, "entity"));
            if (v19)
            {
              v20 = *(v19 + 184);
            }

            else
            {
              v20 = 0;
            }

            v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v20];
            if (v11)
            {
              [*(v11 + 8) setEntityId:v21];
              v22 = *(v11 + 8);
            }

            else
            {
              [0 setEntityId:v21];
              v22 = 0;
            }

            createRecordID = [(NSCKRecordMetadata *)v22 createRecordID];
            [(PFCloudKitImportZoneContext *)v5 addObjectID:objectID toCache:v5[8] andRecordID:createRecordID];
          }

          ++v10;
        }

        while (v7 != v10);
        v26 = [obj countByEnumeratingWithState:&v33 objects:v48 count:16];
        v7 = v26;
      }

      while (v26);

      v5[10] = 0;
      context = contextCopy;
      if ((v9 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    else
    {

      v5[10] = 0;
    }

    return 1;
  }

LABEL_31:
  if (v37)
  {
    if (context)
    {
      result = 0;
      *context = v37;
      return result;
    }

    return 0;
  }

  v27 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v41 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitImportZoneContext.m";
    v42 = 1024;
    LODWORD(v43) = 674;
    _os_log_error_impl(&dword_18565F000, v27, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
  }

  v28 = _PFLogGetLogStream(17);
  result = os_log_type_enabled(v28, OS_LOG_TYPE_FAULT);
  if (result)
  {
    *buf = 136315394;
    v41 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitImportZoneContext.m";
    v42 = 1024;
    LODWORD(v43) = 674;
    _os_log_fault_impl(&dword_18565F000, v28, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    return 0;
  }

  return result;
}

@end