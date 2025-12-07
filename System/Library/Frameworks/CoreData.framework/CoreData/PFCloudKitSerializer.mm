@interface PFCloudKitSerializer
+ (BOOL)shouldTrackAttribute:(uint64_t)attribute;
+ (char)estimateByteSizeOfRecordID:(uint64_t)d;
+ (id)assetsOnRecord:(uint64_t)record withOptions:(void *)options;
+ (id)createSetOfObjectIDsRelatedToObject:(uint64_t)object;
+ (id)defaultRecordZoneIDForDatabaseScope:(int64_t)scope;
+ (id)newSetOfRecordKeysForAttribute:(int)attribute includeCKAssetsForFileBackedFutures:;
+ (id)newSetOfRecordKeysForEntitiesInConfiguration:(void *)configuration inManagedObjectModel:(uint64_t)model includeCKAssetsForFileBackedFutures:;
+ (uint64_t)applyCDPrefixToName:(uint64_t)name;
+ (uint64_t)assetStorageDirectoryURLForStore:(uint64_t)store;
+ (uint64_t)generateCKAssetFileURLForObjectInStore:(uint64_t)store;
+ (uint64_t)isMirroredRelationshipRecordType:(uint64_t)type;
+ (uint64_t)isPrivateAttribute:(uint64_t)attribute;
+ (uint64_t)isVariableLengthAttributeType:(uint64_t)type;
+ (uint64_t)mtmKeyForObjectWithRecordName:(uint64_t)name relatedToObjectWithRecordName:(uint64_t)recordName byRelationship:(uint64_t)relationship withInverse:;
+ (uint64_t)oldAssetStorageDirectoryURLForStore:(uint64_t)store;
+ (uint64_t)recordTypeForEntity:(uint64_t)entity;
+ (uint64_t)sizeOfVariableLengthAttribute:(void *)attribute withValue:;
+ (void)_invalidateStaticCaches;
+ (void)initialize;
- (PFCloudKitSerializer)initWithMirroringOptions:(id)options metadataCache:(id)cache recordNamePrefix:(id)prefix;
- (id)getRecordMetadataForObject:(void *)object inManagedObjectContext:(void *)context error:;
- (id)newCKRecordsFromObject:(int)object fullyMaterializeRecords:(int)records includeRelationships:(void *)relationships error:;
- (uint64_t)applyUpdatedRecords:(uint64_t)records deletedRecordIDs:(uint64_t)ds toStore:(void *)store inManagedObjectContext:(uint64_t)context onlyUpdatingAttributes:(uint64_t)attributes andRelationships:(uint64_t)relationships madeChanges:(void *)changes error:;
- (uint64_t)shouldEncryptValueForAttribute:(uint64_t)result;
- (void)dealloc;
@end

@implementation PFCloudKitSerializer

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __34__PFCloudKitSerializer_initialize__block_invoke;
    block[3] = &unk_1E6EC16F0;
    block[4] = self;
    if (initialize_onceToken != -1)
    {
      dispatch_once(&initialize_onceToken, block);
    }
  }
}

- (PFCloudKitSerializer)initWithMirroringOptions:(id)options metadataCache:(id)cache recordNamePrefix:(id)prefix
{
  v10.receiver = self;
  v10.super_class = PFCloudKitSerializer;
  v8 = [(PFCloudKitSerializer *)&v10 init];
  if (v8)
  {
    v8->_manyToManyRecordNameToRecord = objc_alloc_init(MEMORY[0x1E695DF90]);
    v8->_recordNamePrefix = [prefix copy];
    v8->_mirroringOptions = options;
    v8->_writtenAssetURLs = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8->_metadataCache = cache;
  }

  return v8;
}

- (void)dealloc
{
  self->_manyToManyRecordNameToRecord = 0;

  self->_recordNamePrefix = 0;
  self->_mirroringOptions = 0;

  self->_writtenAssetURLs = 0;
  self->_metadataCache = 0;
  v3.receiver = self;
  v3.super_class = PFCloudKitSerializer;
  [(PFCloudKitSerializer *)&v3 dealloc];
}

- (id)newCKRecordsFromObject:(int)object fullyMaterializeRecords:(int)records includeRelationships:(void *)relationships error:
{
  v145 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  v6 = a2;
  v127 = 0;
  v128 = &v127;
  v129 = 0x2020000000;
  v130 = 1;
  v121 = 0;
  v122 = &v121;
  v123 = 0x3052000000;
  v124 = __Block_byref_object_copy__37;
  v125 = __Block_byref_object_dispose__37;
  v126 = 0;
  managedObjectContext = [a2 managedObjectContext];
  v102 = objc_alloc_init(MEMORY[0x1E695DF70]);
  entity = [v6 entity];
  recordsCopy = records;
  v99 = [objc_msgSend(v6 "objectID")];
  managedObjectContext2 = [v6 managedObjectContext];
  v8 = [(PFCloudKitSerializer *)self getRecordMetadataForObject:v6 inManagedObjectContext:managedObjectContext2 error:v122 + 5];
  v103 = v8;
  if (v8)
  {
    v104 = -[NSCKRecordZoneMetadata createRecordZoneID]([v8 recordZone]);
    encodedRecordAsset = [v103 encodedRecordAsset];
    v10 = encodedRecordAsset;
    if (encodedRecordAsset)
    {
      if ([objc_msgSend(encodedRecordAsset "binaryData")])
      {
        binaryData = [v10 binaryData];
      }

      else
      {
        binaryData = [v10 externalBinaryData];
      }
    }

    else
    {
      binaryData = 0;
    }

    if ([binaryData length])
    {
      v13 = *(self + 24);
      if (v13)
      {
        v14 = *(v13 + 136);
      }

      else
      {
        v14 = 0;
      }

      encodedRecordAsset2 = [v103 encodedRecordAsset];
      v16 = encodedRecordAsset2;
      if (encodedRecordAsset2)
      {
        if ([objc_msgSend(encodedRecordAsset2 "binaryData")])
        {
          binaryData2 = [v16 binaryData];
        }

        else
        {
          binaryData2 = [v16 externalBinaryData];
        }
      }

      else
      {
        binaryData2 = 0;
      }

      createRecordFromSystemFields = [(PFCloudKitArchivingUtilities *)v14 recordFromEncodedData:binaryData2 error:v122 + 5];
      if (!createRecordFromSystemFields)
      {
        *(v128 + 24) = 0;
        v20 = v122[5];
        if (v128[3])
        {
          goto LABEL_22;
        }

        v18 = 0;
        v19 = 0;
        createRecordFromSystemFields = 0;
        goto LABEL_39;
      }
    }

    else
    {
      createRecordFromSystemFields = [v103 createRecordFromSystemFields];
    }

    if (v128[3])
    {
      if (createRecordFromSystemFields)
      {
        recordID = [(__CFString *)createRecordFromSystemFields recordID];
        goto LABEL_23;
      }

LABEL_22:
      createRecordID = [(NSCKRecordMetadata *)v103 createRecordID];
      v22 = objc_alloc(getCloudKitCKRecordClass[0]());
      recordID = createRecordID;
      createRecordFromSystemFields = [v22 initWithRecordType:+[PFCloudKitSerializer recordTypeForEntity:](PFCloudKitSerializer recordID:{entity), createRecordID}];
LABEL_23:
      name = [entity name];
      objc_opt_self();
      v24 = [@"CD_" stringByAppendingString:@"entityName"];
      useDeviceToDeviceEncryption = [*(self + 24) useDeviceToDeviceEncryption];
      encryptedValues = createRecordFromSystemFields;
      if (useDeviceToDeviceEncryption)
      {
        encryptedValues = [(__CFString *)createRecordFromSystemFields encryptedValues];
      }

      [(__CFString *)encryptedValues setObject:name forKey:v24];
      if ([objc_msgSend(v103 "moveReceipts")] || object)
      {
        if (object)
        {
          v27 = [@"Some sample move receipt data." dataUsingEncoding:4];
          objc_opt_self();
          v28 = [@"CD_" stringByAppendingString:@"moveReceipt"];
          useDeviceToDeviceEncryption2 = [*(self + 24) useDeviceToDeviceEncryption];
          encryptedValues2 = createRecordFromSystemFields;
          if (useDeviceToDeviceEncryption2)
          {
            encryptedValues2 = [(__CFString *)createRecordFromSystemFields encryptedValues];
          }

          [(__CFString *)encryptedValues2 setObject:v27 forKey:v28];
          v31 = +[PFCloudKitSerializer generateCKAssetFileURLForObjectInStore:](PFCloudKitSerializer, [objc_msgSend(v6 "objectID")]);
          if ([v27 writeToURL:v31 options:0 error:v122 + 5])
          {
            v32 = [*(self + 40) addObject:v31];
            v33 = [objc_alloc(getCloudKitCKAssetClass(v32)) initWithFileURL:v31];
            objc_opt_self();
            v34 = [@"CD_" stringByAppendingString:@"moveReceipt"];
            objc_opt_self();
            -[__CFString setObject:forKey:](createRecordFromSystemFields, "setObject:forKey:", v33, [v34 stringByAppendingString:@"_ckAsset"]);
          }

          else
          {
            v42 = objc_autoreleasePoolPush();
            Stream = __PFCloudKitLoggingGetStream();
            v44 = Stream;
            if (__ckLoggingOverride == 17)
            {
              v45 = OS_LOG_TYPE_FAULT;
            }

            else
            {
              v45 = OS_LOG_TYPE_ERROR;
            }

            if (os_log_type_enabled(Stream, v45))
            {
              objectID = [v6 objectID];
              recordID2 = [(__CFString *)createRecordFromSystemFields recordID];
              v48 = v122[5];
              *buf = 136316418;
              v134 = "[PFCloudKitSerializer newCKRecordsFromObject:fullyMaterializeRecords:includeRelationships:error:]";
              v135 = 1024;
              v136 = 224;
              v137 = 2112;
              v138 = @"moveReceipt";
              v139 = 2112;
              v140 = objectID;
              v141 = 2112;
              v142 = recordID2;
              v143 = 2112;
              v144 = v48;
              _os_log_impl(&dword_18565F000, v44, v45, "CoreData+CloudKit: %s(%d): Failed to write CKAsset data for '%@' on '%@' backing record '%@'.\n%@", buf, 0x3Au);
            }

            objc_autoreleasePoolPop(v42);
            *(v128 + 24) = 0;
            v49 = v122[5];
          }
        }

        else
        {
          v35 = [v103 createEncodedMoveReceiptData:v122 + 5];
          if (v35)
          {
            v36 = [objc_msgSend(*(self + 24) "ckAssetThresholdBytes")];
            objc_opt_self();
            v37 = [@"CD_" stringByAppendingString:@"moveReceipt"];
            objc_opt_self();
            v38 = [v37 stringByAppendingString:@"_ckAsset"];
            if (v36 && [v35 length] > v36 || (v39 = objc_msgSend(v35, "length"), (-[__CFString size](createRecordFromSystemFields, "size") + v39) >= 0xAAE61))
            {
              v40 = +[PFCloudKitSerializer generateCKAssetFileURLForObjectInStore:](PFCloudKitSerializer, [objc_msgSend(v6 "objectID")]);
              if ([v35 writeToURL:v40 options:0 error:v122 + 5])
              {
                v41 = [*(self + 40) addObject:v40];
                -[__CFString setObject:forKey:](createRecordFromSystemFields, "setObject:forKey:", [objc_alloc(getCloudKitCKAssetClass(v41)) initWithFileURL:v40], v38);
              }

              else
              {
                v54 = objc_autoreleasePoolPush();
                v55 = __PFCloudKitLoggingGetStream();
                v56 = v55;
                if (__ckLoggingOverride == 17)
                {
                  v57 = OS_LOG_TYPE_FAULT;
                }

                else
                {
                  v57 = OS_LOG_TYPE_ERROR;
                }

                if (os_log_type_enabled(v55, v57))
                {
                  v58 = v6;
                  objectID2 = [v6 objectID];
                  recordID3 = [(__CFString *)createRecordFromSystemFields recordID];
                  v61 = v122[5];
                  *buf = 136316418;
                  v134 = "[PFCloudKitSerializer newCKRecordsFromObject:fullyMaterializeRecords:includeRelationships:error:]";
                  v135 = 1024;
                  v136 = 194;
                  v137 = 2112;
                  v138 = @"moveReceipt";
                  v139 = 2112;
                  v140 = objectID2;
                  v141 = 2112;
                  v142 = recordID3;
                  v143 = 2112;
                  v144 = v61;
                  _os_log_impl(&dword_18565F000, v56, v57, "CoreData+CloudKit: %s(%d): Failed to write CKAsset data for '%@' on '%@' backing record '%@'.\n%@", buf, 0x3Au);
                  v6 = v58;
                }

                objc_autoreleasePoolPop(v54);
                *(v128 + 24) = 0;
                v62 = v122[5];
              }
            }

            else
            {
              objc_opt_self();
              v51 = [@"CD_" stringByAppendingString:@"moveReceipt"];
              useDeviceToDeviceEncryption3 = [*(self + 24) useDeviceToDeviceEncryption];
              encryptedValues3 = createRecordFromSystemFields;
              if (useDeviceToDeviceEncryption3)
              {
                encryptedValues3 = [(__CFString *)createRecordFromSystemFields encryptedValues];
              }

              [(__CFString *)encryptedValues3 setObject:v35 forKey:v51];
            }
          }

          else
          {
            *(v128 + 24) = 0;
            v50 = v122[5];
          }
        }
      }

      v63 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:{objc_msgSend(objc_msgSend(entity, "attributesByName"), "allValues")}];
      [v63 filterUsingPredicate:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithBlock:", &__block_literal_global_23)}];
      v19 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v63, "count")}];
      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      v18 = v63;
      v64 = [v63 countByEnumeratingWithState:&v117 objects:v132 count:16];
      if (v64)
      {
        v65 = *v118;
        do
        {
          for (i = 0; i != v64; ++i)
          {
            if (*v118 != v65)
            {
              objc_enumerationMutation(v18);
            }

            v67 = *(*(&v117 + 1) + 8 * i);
            v68 = objc_autoreleasePoolPush();
            name2 = [v67 name];
            v70 = objc_msgSend_valueForKey_(v6);
            if ([v67 attributeType] == 1800 || objc_msgSend(v67, "attributeType") == 2100)
            {
              if (v70)
              {
                uUIDString = [_PFRoutines retainedEncodeObjectValue:v70 forTransformableAttribute:v67];
              }

              else
              {
                if (!object)
                {
                  goto LABEL_75;
                }

                uUIDString = [PFCloudKitSchemaGenerator representativeValueFor:v67];
              }
            }

            else if ([v67 attributeType] == 1100)
            {
              uUIDString = [v70 UUIDString];
            }

            else
            {
              if ([v67 attributeType] != 1200)
              {
                goto LABEL_73;
              }

              uUIDString = [v70 absoluteString];
            }

            v70 = uUIDString;
LABEL_73:
            if (v70)
            {
              [v19 setObject:v70 forKey:name2];
            }

LABEL_75:
            objc_autoreleasePoolPop(v68);
          }

          v64 = [v18 countByEnumeratingWithState:&v117 objects:v132 count:16];
        }

        while (v64);
      }

LABEL_77:
      v72 = v18;
      if (*(v128 + 24) == 1)
      {
        v116[0] = MEMORY[0x1E69E9820];
        v116[1] = 3221225472;
        v116[2] = __98__PFCloudKitSerializer_newCKRecordsFromObject_fullyMaterializeRecords_includeRelationships_error___block_invoke_21;
        v116[3] = &unk_1E6EC4728;
        v116[4] = v19;
        [v18 sortUsingComparator:v116];
        v114 = 0u;
        v115 = 0u;
        v112 = 0u;
        v113 = 0u;
        v73 = [v18 countByEnumeratingWithState:&v112 objects:v131 count:16];
        if (v73)
        {
          v74 = *v113;
          do
          {
            for (j = 0; j != v73; ++j)
            {
              if (*v113 != v74)
              {
                objc_enumerationMutation(v18);
              }

              v76 = *(*(&v112 + 1) + 8 * j);
              if ([PFCloudKitSerializer shouldTrackAttribute:v76])
              {
                v110[0] = MEMORY[0x1E69E9820];
                v110[1] = 3221225472;
                v110[2] = __98__PFCloudKitSerializer_newCKRecordsFromObject_fullyMaterializeRecords_includeRelationships_error___block_invoke_2;
                v110[3] = &unk_1E6EC4750;
                v110[4] = v76;
                v110[5] = v19;
                objectCopy = object;
                v110[6] = self;
                v110[7] = createRecordFromSystemFields;
                v110[8] = v6;
                v110[9] = &v127;
                v110[10] = &v121;
                [_PFRoutines wrapBlockInGuardedAutoreleasePool:v110];
              }
            }

            v73 = [v18 countByEnumeratingWithState:&v112 objects:v131 count:16];
          }

          while (v73);
        }

        v72 = v18;
        if (recordsCopy)
        {
          relationshipsByName = [entity relationshipsByName];
          v109[0] = MEMORY[0x1E69E9820];
          v109[1] = 3221225472;
          v109[2] = __98__PFCloudKitSerializer_newCKRecordsFromObject_fullyMaterializeRecords_includeRelationships_error___block_invoke_28;
          v109[3] = &unk_1E6EC4778;
          v109[4] = v6;
          v109[5] = self;
          v109[6] = v103;
          v109[7] = recordID;
          v109[8] = v104;
          v109[12] = &v121;
          v109[13] = &v127;
          v109[9] = managedObjectContext;
          v109[10] = v102;
          v109[11] = createRecordFromSystemFields;
          [relationshipsByName enumerateKeysAndObjectsUsingBlock:v109];
        }
      }

      v78 = v72;
      if (*(v128 + 24) == 1)
      {
        if (createRecordFromSystemFields)
        {
          v79 = objc_autoreleasePoolPush();
          v80 = __PFCloudKitLoggingGetStream();
          v81 = v80;
          v82 = __ckLoggingOverride;
          if (__ckLoggingOverride > 0xFu)
          {
            if (__ckLoggingOverride != 16 && __ckLoggingOverride != 17)
            {
              v82 = OS_LOG_TYPE_DEBUG;
            }
          }

          else
          {
            if (__ckLoggingOverride == 1)
            {
              v83 = 1;
            }

            else
            {
              v83 = 2;
            }

            if (__ckLoggingOverride)
            {
              v82 = v83;
            }

            else
            {
              v82 = OS_LOG_TYPE_DEFAULT;
            }
          }

          if (os_log_type_enabled(v80, v82))
          {
            useDeviceToDeviceEncryption4 = [*(self + 24) useDeviceToDeviceEncryption];
            encryptedValueStore = createRecordFromSystemFields;
            if (useDeviceToDeviceEncryption4)
            {
              encryptedValueStore = [(__CFString *)createRecordFromSystemFields encryptedValueStore];
            }

            changedKeys = [(__CFString *)encryptedValueStore changedKeys];
            *buf = 136315906;
            v134 = "[PFCloudKitSerializer newCKRecordsFromObject:fullyMaterializeRecords:includeRelationships:error:]";
            v135 = 1024;
            v136 = 583;
            v137 = 2112;
            v138 = createRecordFromSystemFields;
            v139 = 2112;
            v140 = changedKeys;
            _os_log_impl(&dword_18565F000, v81, v82, "CoreData+CloudKit: %s(%d): Serializer has finished creating record: %@\nModified Fields: %@", buf, 0x26u);
          }

          v72 = v78;
          objc_autoreleasePoolPop(v79);
          [v102 addObject:createRecordFromSystemFields];
          goto LABEL_116;
        }

        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          v96 = v122[5];
          *buf = 138412290;
          v134 = v96;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Supposedly serialization succeeded but there's no record: %@\n", buf, 0xCu);
        }

        v85 = _PFLogGetLogStream(17);
        if (!os_log_type_enabled(v85, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_116;
        }

        v88 = v122[5];
        *buf = 138412290;
        v134 = v88;
        v86 = "CoreData: Supposedly serialization succeeded but there's no record: %@";
      }

      else
      {
        if (v122[5])
        {
          goto LABEL_116;
        }

        v84 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v134 = v6;
          _os_log_error_impl(&dword_18565F000, v84, OS_LOG_TYPE_ERROR, "CoreData: fault: Object serialization failed but did not set an error: %@\n", buf, 0xCu);
        }

        v85 = _PFLogGetLogStream(17);
        if (!os_log_type_enabled(v85, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_116;
        }

        *buf = 138412290;
        v134 = v6;
        v86 = "CoreData: Object serialization failed but did not set an error: %@";
      }

      _os_log_fault_impl(&dword_18565F000, v85, OS_LOG_TYPE_FAULT, v86, buf, 0xCu);
LABEL_116:

      goto LABEL_117;
    }

    v18 = 0;
    v19 = 0;
LABEL_39:
    recordID = 0;
    goto LABEL_77;
  }

  *(v128 + 24) = 0;
  v12 = v122[5];
LABEL_117:

  if ((v128[3] & 1) == 0)
  {
    v92 = v122[5];
    if (v92)
    {
      if (relationships)
      {
        *relationships = v92;
      }
    }

    else
    {
      v93 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v134 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitSerializer.m";
        v135 = 1024;
        v136 = 612;
        _os_log_error_impl(&dword_18565F000, v93, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v94 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v94, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v134 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitSerializer.m";
        v135 = 1024;
        v136 = 612;
        _os_log_fault_impl(&dword_18565F000, v94, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }

    v102 = 0;
  }

  v122[5] = 0;
  _Block_object_dispose(&v121, 8);
  _Block_object_dispose(&v127, 8);
  return v102;
}

- (id)getRecordMetadataForObject:(void *)object inManagedObjectContext:(void *)context error:
{
  v26 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  v19 = 0;
  v8 = *(self + 48);
  if (!v8 || (v9 = [*(v8 + 16) objectForKey:{objc_msgSend(a2, "objectID")}]) == 0)
  {
    v10 = [NSCKRecordMetadata metadataForObject:a2 inManagedObjectContext:object error:&v19];
    if (v10)
    {
      v9 = v10;
LABEL_6:
      [(PFCloudKitMetadataCache *)*(self + 48) registerRecordMetadata:v9 forObject:a2];
      return v9;
    }

    if (!v19)
    {
      v16 = +[PFCloudKitSerializer defaultRecordZoneIDForDatabaseScope:](PFCloudKitSerializer, "defaultRecordZoneIDForDatabaseScope:", [*(self + 24) databaseScope]);
      v9 = +[NSCKRecordMetadata insertMetadataForObject:setRecordName:inZoneWithID:recordNamePrefix:error:](NSCKRecordMetadata, "insertMetadataForObject:setRecordName:inZoneWithID:recordNamePrefix:error:", a2, [*(self + 24) preserveLegacyRecordMetadataBehavior], v16, *(self + 16), &v19);
      [v9 setNeedsUpload:1];

      if (v9)
      {
        goto LABEL_6;
      }
    }

    v12 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v14 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v15 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v15 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(Stream, v15))
    {
      *buf = 136315650;
      v21 = "[PFCloudKitSerializer getRecordMetadataForObject:inManagedObjectContext:error:]";
      v22 = 1024;
      v23 = 1591;
      v24 = 2112;
      v25 = v19;
      _os_log_impl(&dword_18565F000, v14, v15, "CoreData+CloudKit: %s(%d): Failed to get a metadata zone: %@", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v12);
    if (v19)
    {
      if (context)
      {
        v9 = 0;
        *context = v19;
        return v9;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v21 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitSerializer.m";
        v22 = 1024;
        v23 = 1596;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v18 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v21 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitSerializer.m";
        v22 = 1024;
        v23 = 1596;
        _os_log_fault_impl(&dword_18565F000, v18, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }

    return 0;
  }

  return v9;
}

+ (uint64_t)recordTypeForEntity:(uint64_t)entity
{
  objc_opt_self();
  if (a2)
  {
    if (atomic_load((a2 + 124)))
    {
      v4 = *(a2 + 72);
    }

    else
    {
      do
      {
        v4 = a2;
        a2 = [a2 superentity];
      }

      while (a2);
    }
  }

  else
  {
    v4 = 0;
  }

  name = [v4 name];
  objc_opt_self();

  return [@"CD_" stringByAppendingString:name];
}

+ (uint64_t)applyCDPrefixToName:(uint64_t)name
{
  objc_opt_self();

  return [@"CD_" stringByAppendingString:a2];
}

+ (uint64_t)generateCKAssetFileURLForObjectInStore:(uint64_t)store
{
  objc_opt_self();
  v3 = [PFCloudKitSerializer assetStorageDirectoryURLForStore:a2];
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")]);

  return [v3 URLByAppendingPathComponent:v4 isDirectory:0];
}

uint64_t __98__PFCloudKitSerializer_newCKRecordsFromObject_fullyMaterializeRecords_includeRelationships_error___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 isTransient])
  {
    return 0;
  }

  else
  {
    return [a2 isReadOnly] ^ 1;
  }
}

uint64_t __98__PFCloudKitSerializer_newCKRecordsFromObject_fullyMaterializeRecords_includeRelationships_error___block_invoke_21(uint64_t a1, void *a2, void *a3)
{
  v6 = +[PFCloudKitSerializer isVariableLengthAttributeType:](PFCloudKitSerializer, [a2 attributeType]);
  v7 = +[PFCloudKitSerializer isVariableLengthAttributeType:](PFCloudKitSerializer, [a3 attributeType]);
  v8 = v6 ^ 1;
  if ((v7 & 1) == 0 && !v8)
  {
    return 1;
  }

  if ((v6 & v7) != 1)
  {
    return ((v7 & v8) << 63) >> 63;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{+[PFCloudKitSerializer sizeOfVariableLengthAttribute:withValue:](PFCloudKitSerializer, a2, objc_msgSend(*(a1 + 32), "objectForKey:", objc_msgSend(a2, "name")))}];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{+[PFCloudKitSerializer sizeOfVariableLengthAttribute:withValue:](PFCloudKitSerializer, a3, objc_msgSend(*(a1 + 32), "objectForKey:", objc_msgSend(a3, "name")))}];

  return [v10 compare:v11];
}

+ (uint64_t)isVariableLengthAttributeType:(uint64_t)type
{
  objc_opt_self();
  result = 1;
  if (a2 > 799)
  {
    if (a2 > 1199)
    {
      if (a2 > 1999)
      {
        if (a2 == 2100)
        {
          return result;
        }

        return 0;
      }

      if (a2 != 1200 && a2 != 1800)
      {
        return 0;
      }
    }

    else if (a2 <= 999 || a2 != 1000)
    {
      return 0;
    }
  }

  else if (a2 <= 399 || a2 <= 600 || a2 != 700)
  {
    return 0;
  }

  return result;
}

+ (uint64_t)sizeOfVariableLengthAttribute:(void *)attribute withValue:
{
  objc_opt_self();
  attributeType = [a2 attributeType];
  if (!attribute)
  {
    return 0;
  }

  if (attributeType <= 1199)
  {
    if (attributeType == 700)
    {
      goto LABEL_13;
    }

    if (attributeType == 1000)
    {
      goto LABEL_6;
    }

    return 0;
  }

  if (attributeType == 1200)
  {
    goto LABEL_13;
  }

  if (attributeType != 2100 && attributeType != 1800)
  {
    return 0;
  }

LABEL_6:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return [attribute fileSize];
  }

LABEL_13:

  return [attribute length];
}

+ (BOOL)shouldTrackAttribute:(uint64_t)attribute
{
  objc_opt_self();
  if ((+[PFCloudKitSerializer isPrivateAttribute:](PFCloudKitSerializer, a2) & 1) != 0 || ![a2 attributeType])
  {
    return 0;
  }

  return [PFCloudKitSerializer shouldTrackProperty:a2];
}

void __98__PFCloudKitSerializer_newCKRecordsFromObject_fullyMaterializeRecords_includeRelationships_error___block_invoke_2(uint64_t a1)
{
  v68 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) name];
  objc_opt_self();
  v3 = [@"CD_" stringByAppendingString:v2];
  v4 = [*(a1 + 40) objectForKey:v2];
  if ([*(a1 + 32) attributeType] == 1000 || objc_msgSend(*(a1 + 32), "attributeType") == 1800)
  {
    v5 = [objc_msgSend(*(*(a1 + 48) + 24) "ckAssetThresholdBytes")];
    objc_opt_self();
    v6 = [@"CD_" stringByAppendingString:v2];
    objc_opt_self();
    v7 = [v6 stringByAppendingString:@"_ckAsset"];
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = [MEMORY[0x1E695DEF0] dataWithBytes:objc_msgSend(v4 length:{"bytes"), objc_msgSend(v4, "length")}];
      }

      if (([*(a1 + 32) isFileBackedFuture] & 1) != 0 || v5 || (*(a1 + 88) & 1) != 0 || (v8 = objc_msgSend(v4, "length"), (objc_msgSend(*(a1 + 56), "size") + v8) > 0xAAE60))
      {
        if (([*(a1 + 32) isFileBackedFuture] & 1) != 0 || objc_msgSend(v4, "length") >= v5 || (*(a1 + 88) & 1) != 0 || (v9 = objc_msgSend(v4, "length"), (objc_msgSend(*(a1 + 56), "size") + v9) > 0xAAE60))
        {
          if (*(a1 + 88))
          {
            v10 = *(a1 + 48);
            v11 = [(PFCloudKitSerializer *)v10 shouldEncryptValueForAttribute:?];
            v12 = v4;
            if (v10)
            {
              v13 = v11;
              v14 = *(a1 + 56);
              if (v13)
              {
                v14 = [v14 encryptedValues];
              }

              [v14 setObject:v4 forKey:v3];
              v12 = v4;
            }
          }

          else
          {
            v12 = 0;
          }

          v24 = +[PFCloudKitSerializer generateCKAssetFileURLForObjectInStore:](PFCloudKitSerializer, [objc_msgSend(*(a1 + 64) "objectID")]);
          v55 = 0;
          if ([*(a1 + 32) isFileBackedFuture])
          {
            v25 = [v4 fileURL];
            if (v25)
            {
              if ([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")])
              {
                v26 = [*(*(a1 + 48) + 40) addObject:v24];
                [*(a1 + 56) setObject:objc_msgSend(objc_alloc(getCloudKitCKAssetClass(v26)) forKey:{"initWithFileURL:", v24), v7}];
                v12 = [(_NSDataFileBackedFuture *)v4 _storeMetadata];

                goto LABEL_71;
              }

              v40 = objc_autoreleasePoolPush();
              Stream = __PFCloudKitLoggingGetStream();
              v42 = Stream;
              if (__ckLoggingOverride == 17)
              {
                v43 = OS_LOG_TYPE_FAULT;
              }

              else
              {
                v43 = OS_LOG_TYPE_ERROR;
              }

              if (os_log_type_enabled(Stream, v43))
              {
                v44 = [*(a1 + 64) objectID];
                v45 = [*(a1 + 56) recordID];
                *buf = 136316418;
                v57 = "[PFCloudKitSerializer newCKRecordsFromObject:fullyMaterializeRecords:includeRelationships:error:]_block_invoke_2";
                v58 = 1024;
                v59 = 346;
                v60 = 2112;
                v61 = v2;
                v62 = 2112;
                v63 = v44;
                v64 = 2112;
                v65 = v45;
                v66 = 2112;
                v67 = v55;
                _os_log_impl(&dword_18565F000, v42, v43, "CoreData+CloudKit: %s(%d): Failed to copy CKAsset data for '%@' on '%@' backing record '%@'.\n%@", buf, 0x3Au);
              }

              objc_autoreleasePoolPop(v40);
            }

            return;
          }

          if ([v4 writeToURL:v24 options:0 error:&v55])
          {
            v27 = [*(*(a1 + 48) + 40) addObject:v24];
            v28 = *(a1 + 56);
            v29 = objc_alloc(getCloudKitCKAssetClass(v27));
            v30 = v24;
LABEL_63:
            [v28 setObject:objc_msgSend(v29 forKey:{"initWithFileURL:", v30), v7}];
            goto LABEL_71;
          }

          v31 = objc_autoreleasePoolPush();
          v32 = __PFCloudKitLoggingGetStream();
          v33 = v32;
          if (__ckLoggingOverride == 17)
          {
            v34 = OS_LOG_TYPE_FAULT;
          }

          else
          {
            v34 = OS_LOG_TYPE_ERROR;
          }

          if (os_log_type_enabled(v32, v34))
          {
            v35 = [*(a1 + 64) objectID];
            v36 = [*(a1 + 56) recordID];
            *buf = 136316418;
            v57 = "[PFCloudKitSerializer newCKRecordsFromObject:fullyMaterializeRecords:includeRelationships:error:]_block_invoke";
            v58 = 1024;
            v59 = 361;
            v60 = 2112;
            v61 = v2;
            v62 = 2112;
            v63 = v35;
            v64 = 2112;
            v65 = v36;
            v66 = 2112;
            v67 = v55;
LABEL_69:
            _os_log_impl(&dword_18565F000, v33, v34, "CoreData+CloudKit: %s(%d): Failed to write CKAsset data for '%@' on '%@' backing record '%@'.\n%@", buf, 0x3Au);
            goto LABEL_70;
          }

          goto LABEL_70;
        }
      }

      goto LABEL_43;
    }

    v15 = *(a1 + 56);
    goto LABEL_20;
  }

  if ([*(a1 + 32) attributeType] != 700 && objc_msgSend(*(a1 + 32), "attributeType") != 1200)
  {
    goto LABEL_44;
  }

  v16 = [objc_msgSend(*(*(a1 + 48) + 24) "ckAssetThresholdBytes")];
  objc_opt_self();
  v17 = [@"CD_" stringByAppendingString:v2];
  objc_opt_self();
  v7 = [v17 stringByAppendingString:@"_ckAsset"];
  if (!v4)
  {
    v37 = *(a1 + 48);
    v38 = [(PFCloudKitSerializer *)v37 shouldEncryptValueForAttribute:?];
    if (!v37)
    {
      goto LABEL_21;
    }

    v39 = v38;
    v15 = *(a1 + 56);
    if (v39)
    {
      v15 = [v15 encryptedValues];
    }

LABEL_20:
    [v15 setObject:0 forKey:v7];
LABEL_21:
    v12 = 0;
    goto LABEL_71;
  }

  if (!v16 && (*(a1 + 88) & 1) == 0 && (v18 = [v4 length], (objc_msgSend(*(a1 + 56), "size") + v18) <= 0xAAE60) || objc_msgSend(v4, "length") < v16 && (*(a1 + 88) & 1) == 0 && (v19 = objc_msgSend(v4, "length"), (objc_msgSend(*(a1 + 56), "size") + v19) <= 0xAAE60))
  {
LABEL_43:
    [*(a1 + 56) setObject:0 forKey:v7];
LABEL_44:
    v12 = v4;
    goto LABEL_71;
  }

  if (*(a1 + 88))
  {
    v20 = *(a1 + 48);
    v21 = [(PFCloudKitSerializer *)v20 shouldEncryptValueForAttribute:?];
    v12 = v4;
    if (v20)
    {
      v22 = v21;
      v23 = *(a1 + 56);
      if (v22)
      {
        v23 = [v23 encryptedValues];
      }

      [v23 setObject:v4 forKey:v3];
      v12 = v4;
    }
  }

  else
  {
    v12 = 0;
  }

  v46 = +[PFCloudKitSerializer generateCKAssetFileURLForObjectInStore:](PFCloudKitSerializer, [objc_msgSend(*(a1 + 64) "objectID")]);
  v55 = 0;
  if ([objc_msgSend(v4 dataUsingEncoding:4 allowLossyConversion:{0), "writeToURL:options:error:", v46, 0, &v55}])
  {
    v47 = [*(*(a1 + 48) + 40) addObject:v46];
    v28 = *(a1 + 56);
    v29 = objc_alloc(getCloudKitCKAssetClass(v47));
    v30 = v46;
    goto LABEL_63;
  }

  v31 = objc_autoreleasePoolPush();
  v48 = __PFCloudKitLoggingGetStream();
  v33 = v48;
  if (__ckLoggingOverride == 17)
  {
    v34 = OS_LOG_TYPE_FAULT;
  }

  else
  {
    v34 = OS_LOG_TYPE_ERROR;
  }

  if (os_log_type_enabled(v48, v34))
  {
    v49 = [*(a1 + 64) objectID];
    v50 = [*(a1 + 56) recordID];
    *buf = 136316418;
    v57 = "[PFCloudKitSerializer newCKRecordsFromObject:fullyMaterializeRecords:includeRelationships:error:]_block_invoke";
    v58 = 1024;
    v59 = 409;
    v60 = 2112;
    v61 = v2;
    v62 = 2112;
    v63 = v49;
    v64 = 2112;
    v65 = v50;
    v66 = 2112;
    v67 = v55;
    goto LABEL_69;
  }

LABEL_70:
  objc_autoreleasePoolPop(v31);
  *(*(*(a1 + 72) + 8) + 24) = 0;
  *(*(*(a1 + 80) + 8) + 40) = v55;
LABEL_71:
  v51 = *(a1 + 48);
  v52 = [(PFCloudKitSerializer *)v51 shouldEncryptValueForAttribute:?];
  if (v51)
  {
    v53 = v52;
    v54 = *(a1 + 56);
    if (v53)
    {
      v54 = [v54 encryptedValues];
    }

    [v54 setObject:v12 forKey:v3];
  }
}

- (uint64_t)shouldEncryptValueForAttribute:(uint64_t)result
{
  if (result)
  {
    if ([*(result + 24) useDeviceToDeviceEncryption])
    {
      return 1;
    }

    else
    {
      v3 = [objc_msgSend(a2 "userInfo")];
      if (v3)
      {

        return [v3 BOOLValue];
      }

      else
      {

        return [a2 allowsCloudEncryption];
      }
    }
  }

  return result;
}

void __98__PFCloudKitSerializer_newCKRecordsFromObject_fullyMaterializeRecords_includeRelationships_error___block_invoke_28(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v88 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if (![PFCloudKitSerializer shouldTrackProperty:a3])
  {
    return;
  }

  v63 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v70 = [a3 inverseRelationship];
  if (![a3 isToMany] || !objc_msgSend(v70, "isToMany"))
  {
    if (([a3 isToMany] & 1) == 0)
    {
      v46 = objc_msgSend_valueForKey_(*(a1 + 32));
      v47 = *(a1 + 40);
      if (v46)
      {
        v48 = -[PFCloudKitSerializer getRecordMetadataForObject:inManagedObjectContext:error:](v47, v46, [v46 managedObjectContext], (*(*(a1 + 96) + 8) + 40));
        if (!v48)
        {
          *(*(*(a1 + 104) + 8) + 24) = 0;
          v59 = *(*(*(a1 + 96) + 8) + 40);
          v45 = 0;
          *a4 = 1;
          goto LABEL_69;
        }

        v49 = *(a1 + 40);
        v50 = [v48 ckRecordName];
        objc_opt_self();
        v51 = [@"CD_" stringByAppendingString:a2];
        v52 = [*(*(a1 + 40) + 24) useDeviceToDeviceEncryption];
        if (v49)
        {
          v53 = v52;
          v54 = *(a1 + 88);
          if (v53)
          {
            v54 = [v54 encryptedValues];
          }

          [v54 setObject:v50 forKey:v51];
        }
      }

      else
      {
        objc_opt_self();
        v55 = [@"CD_" stringByAppendingString:a2];
        v56 = [*(*(a1 + 40) + 24) useDeviceToDeviceEncryption];
        if (v47)
        {
          v57 = v56;
          v58 = *(a1 + 88);
          if (v57)
          {
            v58 = [v58 encryptedValues];
          }

          [v58 setObject:0 forKey:v55];
        }
      }
    }

    v45 = 0;
    goto LABEL_69;
  }

  obj = objc_msgSend_valueForKey_(*(a1 + 32));
  v66 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v67 = a3;
  v61 = a4;
  v62 = a2;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v69 = [obj countByEnumeratingWithState:&v76 objects:v87 count:16];
  if (!v69)
  {
    goto LABEL_38;
  }

  v68 = *v77;
  *&v8 = 138412802;
  v60 = v8;
  do
  {
    v9 = 0;
    do
    {
      if (*v77 != v68)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v76 + 1) + 8 * v9);
      context = objc_autoreleasePoolPush();
      v11 = -[PFCloudKitSerializer getRecordMetadataForObject:inManagedObjectContext:error:](*(a1 + 40), v10, [*(a1 + 32) managedObjectContext], (*(*(a1 + 96) + 8) + 40));
      if (v11)
      {
        v12 = +[PFCloudKitSerializer mtmKeyForObjectWithRecordName:relatedToObjectWithRecordName:byRelationship:withInverse:](PFCloudKitSerializer, [*(a1 + 48) ckRecordName], objc_msgSend(v11, "ckRecordName"), v67, v70);
        [v66 addObject:v12];
        v13 = *(*(a1 + 40) + 48);
        v14 = [*(a1 + 56) zoneID];
        if (v13 && (v15 = [objc_msgSend(v13[4] objectForKey:{v14), "objectForKey:", v12}], (v13 = v15) != 0))
        {
          if ([v15 isUploadedBool])
          {
            goto LABEL_33;
          }

          v16 = 0;
        }

        else
        {
          v16 = 1;
        }

        v18 = [*(*(a1 + 40) + 8) objectForKey:{v12, v60}];
        if (!v18)
        {
          v19 = [v13 ckRecordID];
          if ([v19 length])
          {
            v20 = objc_alloc(getCloudKitCKRecordIDClass());
          }

          else
          {
            v20 = objc_alloc(getCloudKitCKRecordIDClass());
            v19 = [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")];
          }

          v21 = [v20 initWithRecordName:v19 zoneID:*(a1 + 64)];
          v64 = [(NSCKRecordMetadata *)*(a1 + 48) createRecordID];
          v22 = [(NSCKRecordMetadata *)v11 createRecordID];
          v23 = -[PFMirroredManyToManyRelationshipV2 initWithRecordID:forRecordWithID:relatedToRecordWithID:byRelationship:withInverse:andType:]([PFMirroredManyToManyRelationshipV2 alloc], "initWithRecordID:forRecordWithID:relatedToRecordWithID:byRelationship:withInverse:andType:", v21, v64, v22, v67, [objc_msgSend(objc_msgSend(v10 "entity")], 0);
          if (v16)
          {
            v24 = +[NSCKMirroredRelationship insertMirroredRelationshipForManyToMany:inZoneWithMetadata:inStore:withManagedObjectContext:](NSCKMirroredRelationship, v23, [*(a1 + 48) recordZone], objc_msgSend(objc_msgSend(*(a1 + 32), "objectID"), "persistentStore"), *(a1 + 72));
            [(NSManagedObject *)v24 setIsUploadedBool:0];
            [(NSManagedObject *)v24 setNeedsDeleteBool:0];
            [(NSManagedObject *)v24 setIsPendingBool:0];
          }

          if (![objc_msgSend(v21 "zoneID")] || (objc_msgSend(objc_msgSend(v21, "zoneID"), "isEqual:", objc_msgSend(v22, "zoneID")) & 1) == 0)
          {
            LogStream = _PFLogGetLogStream(17);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              v30 = *(a1 + 56);
              *buf = v60;
              v82 = v21;
              v83 = 2112;
              v84 = v30;
              v85 = 2112;
              v86 = v22;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Serializer is attempting to link relationships across zones: %@ - %@ / %@\n", buf, 0x20u);
            }

            v26 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
            {
              v31 = *(a1 + 56);
              *buf = v60;
              v82 = v21;
              v83 = 2112;
              v84 = v31;
              v85 = 2112;
              v86 = v22;
              _os_log_fault_impl(&dword_18565F000, v26, OS_LOG_TYPE_FAULT, "CoreData: Serializer is attempting to link relationships across zones: %@ - %@ / %@", buf, 0x20u);
            }
          }

          v18 = [objc_alloc(getCloudKitCKRecordClass[0]()) initWithRecordType:@"CDMR" recordID:v21];
          [*(a1 + 80) addObject:v18];
          v27 = *(a1 + 40);
          if (v27)
          {
            v28 = [*(v27 + 24) useDeviceToDeviceEncryption];
            v29 = v18;
            if (v28)
            {
              v29 = [v18 encryptedValueStore];
            }
          }

          else
          {
            v29 = 0;
          }

          [(PFMirroredManyToManyRelationshipV2 *)v23 populateRecordValues:v29];
          [*(*(a1 + 40) + 8) setObject:v18 forKey:v12];
        }
      }

      else
      {
        *(*(*(a1 + 104) + 8) + 24) = 0;
        v17 = *(*(*(a1 + 96) + 8) + 40);
      }

LABEL_33:
      objc_autoreleasePoolPop(context);
      if (!v11)
      {
        goto LABEL_38;
      }

      ++v9;
    }

    while (v69 != v9);
    v32 = [obj countByEnumeratingWithState:&v76 objects:v87 count:16];
    v69 = v32;
  }

  while (v32);
LABEL_38:
  if ((*(*(*(a1 + 104) + 8) + 24) & 1) == 0)
  {
    *v61 = 1;
  }

  v33 = *(*(a1 + 40) + 48);
  v34 = [*(a1 + 32) objectID];
  if (v33)
  {
    v35 = [objc_msgSend(*(v33 + 40) objectForKey:{v34), "objectForKey:", v62}];
  }

  else
  {
    v35 = 0;
  }

  v36 = [v35 mutableCopy];
  [v36 minusSet:v66];
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v37 = [v36 countByEnumeratingWithState:&v72 objects:v80 count:16];
  if (v37)
  {
    v38 = *v73;
    do
    {
      v39 = 0;
      do
      {
        if (*v73 != v38)
        {
          objc_enumerationMutation(v36);
        }

        v40 = *(*(&v72 + 1) + 8 * v39);
        v41 = *(*(a1 + 40) + 48);
        v42 = [*(a1 + 56) zoneID];
        if (!v41 || (v41 = [objc_msgSend(v41[4] objectForKey:{v42), "objectForKey:", v40}]) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          v43 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v82 = v40;
            _os_log_error_impl(&dword_18565F000, v43, OS_LOG_TYPE_ERROR, "CoreData: fault: Failed to look up cached mirrored relationship for mtmKey: %@\n", buf, 0xCu);
          }

          v44 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            v82 = v40;
            _os_log_fault_impl(&dword_18565F000, v44, OS_LOG_TYPE_FAULT, "CoreData: Failed to look up cached mirrored relationship for mtmKey: %@", buf, 0xCu);
          }
        }

        [v41 setNeedsDeleteBool:1];
        [v41 setIsUploadedBool:0];
        [v41 setIsPendingBool:0];
        ++v39;
      }

      while (v37 != v39);
      v37 = [v36 countByEnumeratingWithState:&v72 objects:v80 count:16];
    }

    while (v37);
  }

  v45 = v66;
LABEL_69:
}

+ (uint64_t)mtmKeyForObjectWithRecordName:(uint64_t)name relatedToObjectWithRecordName:(uint64_t)recordName byRelationship:(uint64_t)relationship withInverse:
{
  v28[2] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v28[0] = recordName;
  v28[1] = relationship;
  v9 = [objc_msgSend(MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:{2), "sortedArrayUsingComparator:", &__block_literal_global_92}];
  v10 = MEMORY[0x1E696AEC0];
  superentity = [objc_msgSend(v9 objectAtIndexedSubscript:{0), "entity"}];
  if (superentity)
  {
    if (atomic_load((superentity + 124)))
    {
      v13 = *(superentity + 72);
    }

    else
    {
      do
      {
        v13 = superentity;
        superentity = [superentity superentity];
      }

      while (superentity);
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = objc_msgSend_stringWithFormat_(v10, @"CD_M2M_", [v13 name], objc_msgSend(objc_msgSend(v9, "objectAtIndexedSubscript:", 0), "name"));
  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v16 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v9);
        }

        if (*(*(&v23 + 1) + 8 * i) == recordName)
        {
          nameCopy = a2;
        }

        else
        {
          nameCopy = name;
        }

        [v15 addObject:nameCopy];
      }

      v17 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v17);
  }

  v21 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v14, [v15 componentsJoinedByString:@":"]);

  return v21;
}

- (uint64_t)applyUpdatedRecords:(uint64_t)records deletedRecordIDs:(uint64_t)ds toStore:(void *)store inManagedObjectContext:(uint64_t)context onlyUpdatingAttributes:(uint64_t)attributes andRelationships:(uint64_t)relationships madeChanges:(void *)changes error:
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
    v18 = __Block_byref_object_copy__37;
    v19 = __Block_byref_object_dispose__37;
    v20 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __150__PFCloudKitSerializer_applyUpdatedRecords_deletedRecordIDs_toStore_inManagedObjectContext_onlyUpdatingAttributes_andRelationships_madeChanges_error___block_invoke;
    v14[3] = &unk_1E6EC4840;
    v14[4] = store;
    v14[5] = self;
    v14[6] = ds;
    v14[7] = a2;
    v14[8] = records;
    v14[9] = context;
    v14[10] = attributes;
    v14[11] = &v15;
    v14[12] = &v21;
    v14[13] = relationships;
    [store performBlockAndWait:v14];
    if ((v22[3] & 1) == 0)
    {
      v11 = v16[5];
      if (v11)
      {
        if (changes)
        {
          *changes = v11;
        }
      }

      else
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v26 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitSerializer.m";
          v27 = 1024;
          v28 = 1225;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
        }

        v13 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v26 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitSerializer.m";
          v27 = 1024;
          v28 = 1225;
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

void __150__PFCloudKitSerializer_applyUpdatedRecords_deletedRecordIDs_toStore_inManagedObjectContext_onlyUpdatingAttributes_andRelationships_madeChanges_error___block_invoke(uint64_t a1)
{
  v339 = *MEMORY[0x1E69E9840];
  v258 = [objc_msgSend(*(a1 + 32) "persistentStoreCoordinator")];
  v264 = objc_alloc_init(MEMORY[0x1E695DF90]);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 32));
  v277 = a1;
  v2 = [v258 entitiesForConfiguration:{objc_msgSend(*(a1 + 48), "configurationName")}];
  v313[0] = MEMORY[0x1E69E9820];
  v313[1] = 3221225472;
  v313[2] = __150__PFCloudKitSerializer_applyUpdatedRecords_deletedRecordIDs_toStore_inManagedObjectContext_onlyUpdatingAttributes_andRelationships_madeChanges_error___block_invoke_2;
  v313[3] = &unk_1E6EC47A0;
  v313[4] = v264;
  [v2 enumerateObjectsUsingBlock:v313];
  v3 = -[PFCloudKitImportZoneContext initWithUpdatedRecords:deletedRecordTypeToRecordIDs:options:fileBackedFuturesDirectory:]([PFCloudKitImportZoneContext alloc], "initWithUpdatedRecords:deletedRecordTypeToRecordIDs:options:fileBackedFuturesDirectory:", *(v277 + 56), *(v277 + 64), *(*(v277 + 40) + 24), [*(v277 + 48) fileBackedFuturesDirectory]);
  v270 = v3;
  if ([(PFCloudKitImportZoneContext *)v3 initializeCachesWithManagedObjectContext:*(v277 + 48) andObservedStore:(*(*(v277 + 88) + 8) + 40) error:?])
  {
    v311 = 0u;
    v312 = 0u;
    v309 = 0u;
    v310 = 0u;
    v256 = v3;
    if (v3)
    {
      modifiedRecords = v3->_modifiedRecords;
    }

    else
    {
      modifiedRecords = 0;
    }

    obj = modifiedRecords;
    v261 = [(NSArray *)modifiedRecords countByEnumeratingWithState:&v309 objects:v328 count:16];
    if (v261)
    {
      v260 = *v310;
      v255 = *MEMORY[0x1E696A250];
      do
      {
        v267 = 0;
        do
        {
          if (*v310 != v260)
          {
            objc_enumerationMutation(obj);
          }

          v272 = *(*(&v309 + 1) + 8 * v267);
          context = objc_autoreleasePoolPush();
          v5 = [objc_msgSend(v272 "recordType")];
          v6 = *(v277 + 40);
          v7 = v6;
          v8 = @"entityName";
          if (v5)
          {
            objc_opt_self();
            v8 = [@"CD_" stringByAppendingString:@"entityName"];
            v7 = *(v277 + 40);
          }

          v9 = [*(v7 + 24) useDeviceToDeviceEncryption];
          if (!v6)
          {
            goto LABEL_16;
          }

          v10 = v9;
          v11 = v272;
          if (v10)
          {
            v12 = [(__CFString *)v8 hasSuffix:@"_ckAsset"];
            v11 = v272;
            if ((v12 & 1) == 0)
            {
              v11 = [v272 encryptedValues];
            }
          }

          v13 = [v11 objectForKey:v8];
          if (!v13)
          {
LABEL_16:
            v13 = [v272 recordType];
            objc_opt_self();
            if ([v13 hasPrefix:@"CD_"])
            {
              v13 = [v13 substringFromIndex:{objc_msgSend(@"CD_", "length")}];
            }
          }

          if (![v264 objectForKey:v13])
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

            if (os_log_type_enabled(Stream, v21))
            {
              v22 = [v264 allKeys];
              *buf = 136316162;
              v331 = "[PFCloudKitSerializer applyUpdatedRecords:deletedRecordIDs:toStore:inManagedObjectContext:onlyUpdatingAttributes:andRelationships:madeChanges:error:]_block_invoke";
              v332 = 1024;
              *v333 = 801;
              *&v333[4] = 2112;
              *&v333[6] = v13;
              v334 = 2112;
              v335 = v272;
              v336 = 2112;
              v337 = v22;
              _os_log_impl(&dword_18565F000, v20, v21, "CoreData+CloudKit: %s(%d): Skipping record because its entity '%@' is no longer in the managed object model's configured entities: %@\n%@", buf, 0x30u);
            }

            objc_autoreleasePoolPop(v18);
            goto LABEL_299;
          }

          v14 = [NSCKRecordMetadata metadataForRecord:v272 inManagedObjectContext:*(v277 + 32) fromStore:*(v277 + 48) error:(*(*(v277 + 88) + 8) + 40)];
          v268 = v14;
          if (!v14)
          {
            *(*(*(v277 + 96) + 8) + 24) = 0;
            v23 = *(*(*(v277 + 88) + 8) + 40);
            goto LABEL_299;
          }

          if (![(NSManagedObject *)v14 recordZone])
          {
            v15 = *(*(v277 + 40) + 48);
            v16 = [objc_msgSend(v272 "recordID")];
            if (!v15 || (v17 = [*(v15 + 8) objectForKey:v16]) == 0)
            {
              v17 = +[NSCKRecordZoneMetadata zoneMetadataForZoneID:inDatabaseWithScope:forStore:inContext:error:](NSCKRecordZoneMetadata, [objc_msgSend(v272 "recordID")], objc_msgSend(*(*(v277 + 40) + 24), "databaseScope"), *(v277 + 48), *(v277 + 32), *(*(v277 + 88) + 8) + 40);
              if (v17)
              {
                [(PFCloudKitMetadataCache *)*(*(v277 + 40) + 48) cacheZoneMetadata:v17];
              }

              else
              {
                *(*(*(v277 + 96) + 8) + 24) = 0;
                v24 = *(*(*(v277 + 88) + 8) + 40);
                v17 = 0;
              }
            }

            if (*(*(*(v277 + 96) + 8) + 24) == 1)
            {
              [(NSManagedObject *)v268 setRecordZone:v17];
            }
          }

          if (*(*(*(v277 + 96) + 8) + 24) != 1)
          {
            goto LABEL_281;
          }

          v25 = [v272 recordID];
          if (v270 && (v26 = [objc_msgSend(*(v270 + 64) objectForKey:{v13), "objectForKey:", v25}]) != 0)
          {
            v276 = [*(v277 + 32) objectWithID:v26];
            v27 = _sqlEntityForEntityDescription([*(v277 + 48) model], objc_msgSend(v26, "entity"));
            if (v27)
            {
              v28 = *(v27 + 184);
            }

            else
            {
              v28 = 0;
            }

            if ([-[NSManagedObject entityId](v268 "entityId")] != v28 || (v29 = objc_msgSend(v26, "_referenceData64"), v29 != objc_msgSend(-[NSManagedObject entityPK](v268, "entityPK"), "integerValue")))
            {
              LogStream = _PFLogGetLogStream(17);
              if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v331 = v26;
                v332 = 2112;
                *v333 = v268;
                _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Record metadata doesn't match row: %@\n%@\n", buf, 0x16u);
              }

              v31 = _PFLogGetLogStream(17);
              if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
              {
                *buf = 138412546;
                v331 = v26;
                v332 = 2112;
                *v333 = v268;
                _os_log_fault_impl(&dword_18565F000, v31, OS_LOG_TYPE_FAULT, "CoreData: Record metadata doesn't match row: %@\n%@", buf, 0x16u);
              }
            }
          }

          else
          {
            v276 = [NSEntityDescription insertNewObjectForEntityForName:v13 inManagedObjectContext:*(v277 + 32)];
            [(PFCloudKitImportZoneContext *)v270 registerObject:v276 forInsertedRecord:v272 withMetadata:v268];
          }

          v32 = *(v277 + 72);
          if (v32)
          {
            v33 = [v32 objectForKey:{-[NSEntityDescription name](-[NSManagedObject entity](v276, "entity"), "name")}];
            if (v33)
            {
              v34 = v33;
            }

            else
            {
              v34 = MEMORY[0x1E695E0F0];
            }
          }

          else
          {
            v34 = 0;
          }

          v35 = *(v277 + 80);
          if (v35)
          {
            v36 = [v35 objectForKey:{-[NSEntityDescription name](-[NSManagedObject entity](v276, "entity"), "name")}];
            v37 = MEMORY[0x1E695E0F0];
            if (v36)
            {
              v37 = v36;
            }

            v273 = v37;
          }

          else
          {
            v273 = 0;
          }

          v275 = *(v277 + 40);
          if (!v275)
          {
            goto LABEL_280;
          }

          v38 = *(*(v277 + 88) + 8);
          v322 = 0;
          if (-[NSManagedObject isInserted](v276, "isInserted") && [*(v275 + 24) preserveLegacyRecordMetadataBehavior] && -[NSDictionary objectForKey:](-[NSEntityDescription attributesByName](-[NSManagedObject entity](v276, "entity"), "attributesByName"), "objectForKey:", @"ckRecordID") && !objc_msgSend_valueForKey_(v276))
          {
            -[NSManagedObject setValue:forKey:](v276, "setValue:forKey:", [objc_msgSend(v272 "recordID")], @"ckRecordID");
          }

          v39 = *(v275 + 24);
          if (v39)
          {
            v40 = *(v39 + 136);
          }

          else
          {
            v40 = 0;
          }

          v41 = [(PFCloudKitArchivingUtilities *)v40 encodeRecord:v272 error:&v322];
          if (v41)
          {
            [(NSManagedObject *)v268 updateEncodedRecordWithData:v41];
            [(NSManagedObject *)v268 destroySystemFields];
          }

          v269 = [objc_msgSend(v272 "recordType")];
          if (!v41)
          {
            goto LABEL_274;
          }

          if (!v34)
          {
            v34 = [(NSDictionary *)[(NSEntityDescription *)[(NSManagedObject *)v276 entity] attributesByName] allValues];
          }

          v321 = 0u;
          v320 = 0u;
          v319 = 0u;
          v318 = 0u;
          v42 = [(NSArray *)v34 countByEnumeratingWithState:&v318 objects:v338 count:16];
          if (!v42)
          {
            goto LABEL_235;
          }

          v257 = v38;
          v43 = *v319;
          v263 = 1;
          v265 = v34;
LABEL_72:
          v44 = 0;
          while (1)
          {
            if (*v319 != v43)
            {
              objc_enumerationMutation(v34);
            }

            v45 = *(*(&v318 + 1) + 8 * v44);
            if (+[PFCloudKitSerializer isPrivateAttribute:](PFCloudKitSerializer, v45) & 1) != 0 || ([v45 isTransient] & 1) != 0 || (objc_msgSend(v45, "isReadOnly") & 1) != 0 || (objc_msgSend(objc_msgSend(objc_msgSend(v45, "userInfo"), "objectForKey:", @"NSCloudKitMirroringDelegateIgnoredPropertyKey"), "BOOLValue"))
            {
              goto LABEL_182;
            }

            v46 = [v45 name];
            v47 = v46;
            if (v269)
            {
              objc_opt_self();
              v47 = [@"CD_" stringByAppendingString:v46];
            }

            v48 = [(PFCloudKitSerializer *)v275 shouldEncryptValueForAttribute:v45];
            v49 = v272;
            if (v48)
            {
              v50 = [v47 hasSuffix:@"_ckAsset"];
              v49 = v272;
              if ((v50 & 1) == 0)
              {
                v49 = [v272 encryptedValues];
              }
            }

            v51 = [v49 objectForKey:v47];
            v52 = v51;
            if (!v51)
            {
              if (!+[PFCloudKitSerializer isVariableLengthAttributeType:](PFCloudKitSerializer, [v45 attributeType]))
              {
                goto LABEL_101;
              }

              v60 = v46;
              if (v269)
              {
                objc_opt_self();
                v60 = [@"CD_" stringByAppendingString:v46];
              }

              objc_opt_self();
              v51 = [v272 objectForKey:{objc_msgSend(v60, "stringByAppendingString:", @"_ckAsset"}];
              if (!v51)
              {
LABEL_101:
                if (([v45 isTransient] & 1) == 0)
                {
                  v61 = *(v275 + 48);
                  v62 = [(NSManagedObject *)v276 objectID];
                  if (v61 && ([objc_msgSend(*(v61 + 48) objectForKey:{v62), "containsObject:", v46}] & 1) != 0)
                  {
                    v63 = objc_autoreleasePoolPush();
                    v64 = __PFCloudKitLoggingGetStream();
                    v65 = v64;
                    v66 = __ckLoggingOverride;
                    if (__ckLoggingOverride && __ckLoggingOverride != 16 && __ckLoggingOverride != 17)
                    {
                      v66 = OS_LOG_TYPE_INFO;
                    }

                    if (os_log_type_enabled(v64, v66))
                    {
                      v67 = [(NSManagedObject *)v276 objectID];
                      *buf = 136315906;
                      v331 = "[PFCloudKitSerializer updateAttributes:andRelationships:onManagedObject:fromRecord:withRecordMetadata:importContext:error:]";
                      v332 = 1024;
                      *v333 = 1307;
                      *&v333[4] = 2112;
                      *&v333[6] = v46;
                      v334 = 2112;
                      v335 = v67;
                      _os_log_impl(&dword_18565F000, v65, v66, "CoreData+CloudKit: %s(%d): Importer is rejecting updated value for '%@' on '%@' because there are pending local edits that haven't been exported yet.", buf, 0x26u);
                    }

                    objc_autoreleasePoolPop(v63);
                  }

                  else
                  {
                    -[NSManagedObject setValue:forKey:](v276, "setValue:forKey:", [v45 defaultValue], v46);
                  }
                }

                v271 = 0;

                v88 = 1;
                v52 = 0;
                goto LABEL_180;
              }
            }

            v271 = objc_loadWeakRetained((v275 + 32));
            if ([v45 attributeType] == 1000 || objc_msgSend(v45, "attributeType") == 1800 || objc_msgSend(v45, "attributeType") == 2100)
            {
              v53 = [v45 isFileBackedFuture];
              if (!v53)
              {
                getCloudKitCKAssetClass(v53);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v68 = -[_PFEvanescentData initWithURL:]([_PFEvanescentData alloc], "initWithURL:", [v271 cloudKitSerializer:v275 safeSaveURLForAsset:v51]);
                  if (v68)
                  {

                    v52 = v68;
                  }

                  else
                  {

                    v89 = objc_autoreleasePoolPush();
                    v90 = __PFCloudKitLoggingGetStream();
                    v91 = v90;
                    if (__ckLoggingOverride == 17)
                    {
                      v92 = OS_LOG_TYPE_FAULT;
                    }

                    else
                    {
                      v92 = OS_LOG_TYPE_ERROR;
                    }

                    if (os_log_type_enabled(v90, v92))
                    {
                      *buf = 136315650;
                      v331 = "[PFCloudKitSerializer updateAttributes:andRelationships:onManagedObject:fromRecord:withRecordMetadata:importContext:error:]";
                      v332 = 1024;
                      *v333 = 1383;
                      *&v333[4] = 2112;
                      *&v333[6] = v51;
                      _os_log_impl(&dword_18565F000, v91, v92, "CoreData+CloudKit: %s(%d): Error attempting to read CKAsset file: %@", buf, 0x1Cu);
                    }

                    objc_autoreleasePoolPop(v89);
                    v52 = 0;
                  }
                }

                else
                {
                  getCloudKitCKEncryptedDataClass();
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {

                    v74 = [v51 data];
                    v75 = objc_autoreleasePoolPush();
                    v52 = v74;
                    v76 = __PFCloudKitLoggingGetStream();
                    v77 = v76;
                    if (__ckLoggingOverride == 17)
                    {
                      v78 = OS_LOG_TYPE_FAULT;
                    }

                    else
                    {
                      v78 = OS_LOG_TYPE_ERROR;
                    }

                    if (os_log_type_enabled(v76, v78))
                    {
                      *buf = 136316162;
                      v331 = "[PFCloudKitSerializer updateAttributes:andRelationships:onManagedObject:fromRecord:withRecordMetadata:importContext:error:]";
                      v332 = 1024;
                      *v333 = 1388;
                      *&v333[4] = 2112;
                      *&v333[6] = v275;
                      v334 = 2112;
                      v335 = v46;
                      v336 = 2112;
                      v337 = v272;
                      _os_log_impl(&dword_18565F000, v77, v78, "CoreData+CloudKit: %s(%d): %@ encountered CKEncryptedData blob on record (%@): %@", buf, 0x30u);
                    }

                    objc_autoreleasePoolPop(v75);
                  }

                  else if (([v51 isNSData] & 1) == 0)
                  {
                    v80 = objc_autoreleasePoolPush();
                    v81 = __PFCloudKitLoggingGetStream();
                    v82 = v81;
                    if (__ckLoggingOverride == 17)
                    {
                      v83 = OS_LOG_TYPE_FAULT;
                    }

                    else
                    {
                      v83 = OS_LOG_TYPE_ERROR;
                    }

                    if (os_log_type_enabled(v81, v83))
                    {
                      v84 = objc_opt_class();
                      *buf = 136315906;
                      v331 = "[PFCloudKitSerializer updateAttributes:andRelationships:onManagedObject:fromRecord:withRecordMetadata:importContext:error:]";
                      v332 = 1024;
                      *v333 = 1390;
                      *&v333[4] = 2112;
                      *&v333[6] = v84;
                      v334 = 2112;
                      v335 = v45;
                      _os_log_impl(&dword_18565F000, v82, v83, "CoreData+CloudKit: %s(%d): Unknown value class (%@) for attribute:\n%@", buf, 0x26u);
                    }

                    objc_autoreleasePoolPop(v80);

                    v52 = 0;
                  }
                }

                if ([v45 attributeType] == 1800 || objc_msgSend(v45, "attributeType") == 2100)
                {
                  v93 = [_PFRoutines retainedDecodeValue:v52 forTransformableAttribute:v45];

                  v52 = v93;
                }

                goto LABEL_167;
              }

              getCloudKitCKAssetClass(v53);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v54 = v51;
                v55 = v46;
                if (v269)
                {
                  objc_opt_self();
                  v55 = [@"CD_" stringByAppendingString:v46];
                }

                v56 = [(PFCloudKitSerializer *)v275 shouldEncryptValueForAttribute:v45];
                v57 = v272;
                if (v56)
                {
                  v58 = [v55 hasSuffix:@"_ckAsset"];
                  v57 = v272;
                  if ((v58 & 1) == 0)
                  {
                    v57 = [v272 encryptedValues];
                  }
                }

                v59 = [v57 objectForKey:v55];
                if (!v59)
                {
                  goto LABEL_166;
                }
              }

              else
              {
                v59 = v51;
                v69 = v46;
                if (v269)
                {
                  objc_opt_self();
                  v69 = [@"CD_" stringByAppendingString:v46];
                }

                objc_opt_self();
                v54 = [v272 objectForKey:{objc_msgSend(v69, "stringByAppendingString:", @"_ckAsset"}];
                if (!v59)
                {
                  goto LABEL_166;
                }
              }

              if (v54)
              {
                v70 = [v271 cloudKitSerializer:v275 safeSaveURLForAsset:v54];
                if (v70)
                {
                  v71 = [_NSCloudKitDataFileBackedFuture alloc];
                  if (v270)
                  {
                    v72 = *(v270 + 104);
                  }

                  else
                  {
                    v72 = 0;
                  }

                  v73 = [(_NSCloudKitDataFileBackedFuture *)v71 initWithStoreMetadata:v59 directory:v72 originalFileURL:v70];
                  goto LABEL_142;
                }

                v94 = _PFLogGetLogStream(17);
                if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v331 = v54;
                  _os_log_error_impl(&dword_18565F000, v94, OS_LOG_TYPE_ERROR, "CoreData: fault: Delegate didn't return a file url for asset: %@\n", buf, 0xCu);
                }

                v95 = _PFLogGetLogStream(17);
                if (os_log_type_enabled(v95, OS_LOG_TYPE_FAULT))
                {
                  *buf = 138412290;
                  v331 = v54;
                  _os_log_fault_impl(&dword_18565F000, v95, OS_LOG_TYPE_FAULT, "CoreData: Delegate didn't return a file url for asset: %@", buf, 0xCu);
                }

                v87 = 0;
              }

              else
              {
                v85 = [_NSCloudKitDataFileBackedFuture alloc];
                if (v270)
                {
                  v86 = *(v270 + 104);
                }

                else
                {
                  v86 = 0;
                }

                v73 = [(_NSDataFileBackedFuture *)v85 initWithStoreMetadata:v59 directory:v86];
LABEL_142:
                v87 = v73;
              }

              [v45 name];
              v96 = objc_msgSend_valueForKey_(v276);
              if ([v96 isEqual:v87] && (objc_msgSend(v96, "fileURL") || !v87 || !objc_getProperty(v87, v97, 16, 1)))
              {
              }

              else
              {

                v96 = v87;
              }

              v52 = v96;

LABEL_166:
              goto LABEL_167;
            }

            if ([v45 attributeType] == 1100)
            {

              v79 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v51];
              if (v79)
              {
                goto LABEL_131;
              }

              v113 = objc_autoreleasePoolPush();
              v114 = __PFCloudKitLoggingGetStream();
              v115 = v114;
              if (__ckLoggingOverride == 17)
              {
                v116 = OS_LOG_TYPE_FAULT;
              }

              else
              {
                v116 = OS_LOG_TYPE_ERROR;
              }

              if (os_log_type_enabled(v114, v116))
              {
                *buf = 136315906;
                v331 = "[PFCloudKitSerializer updateAttributes:andRelationships:onManagedObject:fromRecord:withRecordMetadata:importContext:error:]";
                v332 = 1024;
                *v333 = 1407;
                *&v333[4] = 2112;
                *&v333[6] = v51;
                v334 = 2112;
                v335 = v272;
                v117 = v116;
                v118 = v115;
                v119 = "CoreData+CloudKit: %s(%d): Failed to initialize NSUUID from CKRecord with value: %@\n%@";
                goto LABEL_200;
              }

              goto LABEL_201;
            }

            v107 = [v45 attributeType];
            if (v107 != 700)
            {
              v107 = [v45 attributeType];
              if (v107 != 1200)
              {
                goto LABEL_167;
              }
            }

            getCloudKitCKAssetClass(v107);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v108 = [v271 cloudKitSerializer:v275 safeSaveURLForAsset:v51];
              if (!v108)
              {
                v109 = _PFLogGetLogStream(17);
                if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v331 = v51;
                  _os_log_error_impl(&dword_18565F000, v109, OS_LOG_TYPE_ERROR, "CoreData: fault: Delegate didn't return a file url for asset: %@\n", buf, 0xCu);
                }

                v110 = _PFLogGetLogStream(17);
                if (os_log_type_enabled(v110, OS_LOG_TYPE_FAULT))
                {
                  *buf = 138412290;
                  v331 = v51;
                  _os_log_fault_impl(&dword_18565F000, v110, OS_LOG_TYPE_FAULT, "CoreData: Delegate didn't return a file url for asset: %@", buf, 0xCu);
                }
              }

              v111 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithContentsOfURL:v108 encoding:4 error:&v322];
              if (v111)
              {
                if ([v45 attributeType] == 700)
                {

                  v112 = v111;
                  goto LABEL_217;
                }

                if ([v45 attributeType] == 1200)
                {

                  v112 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v111];
                  if (v112)
                  {
LABEL_217:
                    v52 = v112;
                  }

                  else
                  {
                    v127 = objc_autoreleasePoolPush();
                    v128 = __PFCloudKitLoggingGetStream();
                    v129 = v128;
                    if (__ckLoggingOverride == 17)
                    {
                      v130 = OS_LOG_TYPE_FAULT;
                    }

                    else
                    {
                      v130 = OS_LOG_TYPE_ERROR;
                    }

                    if (os_log_type_enabled(v128, v130))
                    {
                      *buf = 136315906;
                      v331 = "[PFCloudKitSerializer updateAttributes:andRelationships:onManagedObject:fromRecord:withRecordMetadata:importContext:error:]";
                      v332 = 1024;
                      *v333 = 1430;
                      *&v333[4] = 2112;
                      *&v333[6] = v51;
                      v334 = 2112;
                      v335 = v272;
                      _os_log_impl(&dword_18565F000, v129, v130, "CoreData+CloudKit: %s(%d): Failed to initialize NSURL from CKAsset with value: %@\n%@", buf, 0x26u);
                    }

                    v52 = 0;
                    objc_autoreleasePoolPop(v127);
                  }
                }
              }

              else
              {
                v123 = objc_autoreleasePoolPush();
                v254 = v108;
                v124 = __PFCloudKitLoggingGetStream();
                v125 = v124;
                if (__ckLoggingOverride == 17)
                {
                  v126 = OS_LOG_TYPE_FAULT;
                }

                else
                {
                  v126 = OS_LOG_TYPE_ERROR;
                }

                if (os_log_type_enabled(v124, v126))
                {
                  *buf = 136315906;
                  v331 = "[PFCloudKitSerializer updateAttributes:andRelationships:onManagedObject:fromRecord:withRecordMetadata:importContext:error:]";
                  v332 = 1024;
                  *v333 = 1434;
                  *&v333[4] = 2112;
                  *&v333[6] = v254;
                  v334 = 2112;
                  v335 = v322;
                  _os_log_impl(&dword_18565F000, v125, v126, "CoreData+CloudKit: %s(%d): Failed to read value from asset at URL: %@\n%@", buf, 0x26u);
                }

                objc_autoreleasePoolPop(v123);
                v263 = 0;
              }

              goto LABEL_167;
            }

            if ([v45 attributeType] == 1200)
            {

              v79 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v51];
              if (v79)
              {
LABEL_131:
                v52 = v79;
                goto LABEL_167;
              }

              v113 = objc_autoreleasePoolPush();
              v120 = __PFCloudKitLoggingGetStream();
              v121 = v120;
              if (__ckLoggingOverride == 17)
              {
                v122 = OS_LOG_TYPE_FAULT;
              }

              else
              {
                v122 = OS_LOG_TYPE_ERROR;
              }

              if (os_log_type_enabled(v120, v122))
              {
                *buf = 136315906;
                v331 = "[PFCloudKitSerializer updateAttributes:andRelationships:onManagedObject:fromRecord:withRecordMetadata:importContext:error:]";
                v332 = 1024;
                *v333 = 1442;
                *&v333[4] = 2112;
                *&v333[6] = v51;
                v334 = 2112;
                v335 = v272;
                v117 = v122;
                v118 = v121;
                v119 = "CoreData+CloudKit: %s(%d): Failed to initialize NSURL from CKRecord with value: %@\n%@";
LABEL_200:
                _os_log_impl(&dword_18565F000, v118, v117, v119, buf, 0x26u);
              }

LABEL_201:
              v52 = 0;
              objc_autoreleasePoolPop(v113);
            }

LABEL_167:
            v98 = *(v275 + 48);
            v99 = [(NSManagedObject *)v276 objectID:v254];
            if (v98 && ([objc_msgSend(*(v98 + 48) objectForKey:{v99), "containsObject:", v46}] & 1) != 0)
            {
              v100 = [v45 usesMergeableStorage];
              v101 = objc_autoreleasePoolPush();
              if (v100)
              {
                [v52 merge:objc_msgSend_valueForKey_(v276)];
                v102 = [v52 copy];

                [(NSManagedObject *)v276 setValue:v102 forKey:v46];
                objc_autoreleasePoolPop(v101);
                v88 = v263;
                v52 = v102;
                goto LABEL_180;
              }

              v103 = __PFCloudKitLoggingGetStream();
              v104 = v103;
              v105 = __ckLoggingOverride;
              if (__ckLoggingOverride && __ckLoggingOverride != 16 && __ckLoggingOverride != 17)
              {
                v105 = OS_LOG_TYPE_INFO;
              }

              if (os_log_type_enabled(v103, v105))
              {
                v106 = [(NSManagedObject *)v276 objectID];
                *buf = 136315906;
                v331 = "[PFCloudKitSerializer updateAttributes:andRelationships:onManagedObject:fromRecord:withRecordMetadata:importContext:error:]";
                v332 = 1024;
                *v333 = 1461;
                *&v333[4] = 2112;
                *&v333[6] = v46;
                v334 = 2112;
                v335 = v106;
                _os_log_impl(&dword_18565F000, v104, v105, "CoreData+CloudKit: %s(%d): Importer is rejecting updated value for '%@' on '%@' because there are pending local edits that haven't been exported yet.", buf, 0x26u);
              }

              objc_autoreleasePoolPop(v101);
            }

            else
            {
              [(NSManagedObject *)v276 setValue:v52 forKey:v46];
            }

            v88 = v263;
LABEL_180:

            if ((v88 & 1) == 0)
            {
              break;
            }

            v34 = v265;
LABEL_182:
            if (v42 == ++v44)
            {
              v131 = [(NSArray *)v34 countByEnumeratingWithState:&v318 objects:v338 count:16];
              v42 = v131;
              if (!v131)
              {
                v38 = v257;
                goto LABEL_234;
              }

              goto LABEL_72;
            }
          }

          v38 = v257;
          if (!v322)
          {
            v132 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v132, OS_LOG_TYPE_ERROR))
            {
              v178 = [objc_msgSend(v45 "entity")];
              v179 = [v45 name];
              *buf = 138412546;
              v331 = v178;
              v332 = 2112;
              *v333 = v179;
              _os_log_error_impl(&dword_18565F000, v132, OS_LOG_TYPE_ERROR, "CoreData: fault: Attribute serialization failed but did not set an error: %@.%@\n", buf, 0x16u);
            }

            v133 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v133, OS_LOG_TYPE_FAULT))
            {
              v180 = [objc_msgSend(v45 "entity")];
              v181 = [v45 name];
              *buf = 138412546;
              v331 = v180;
              v332 = 2112;
              *v333 = v181;
              _os_log_fault_impl(&dword_18565F000, v133, OS_LOG_TYPE_FAULT, "CoreData: Attribute serialization failed but did not set an error: %@.%@", buf, 0x16u);
            }
          }

LABEL_234:
          if ((v263 & 1) == 0)
          {
LABEL_274:
            if (v322)
            {
              *(v38 + 40) = v322;
            }

            else
            {
              v162 = _PFLogGetLogStream(17);
              if (os_log_type_enabled(v162, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v331 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitSerializer.m";
                v332 = 1024;
                *v333 = 1519;
                _os_log_error_impl(&dword_18565F000, v162, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
              }

              v163 = _PFLogGetLogStream(17);
              if (os_log_type_enabled(v163, OS_LOG_TYPE_FAULT))
              {
                *buf = 136315394;
                v331 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitSerializer.m";
                v332 = 1024;
                *v333 = 1519;
                _os_log_fault_impl(&dword_18565F000, v163, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
              }
            }

LABEL_280:
            *(*(*(v277 + 96) + 8) + 24) = 0;
            v164 = *(*(*(v277 + 88) + 8) + 40);
            goto LABEL_281;
          }

LABEL_235:
          v134 = v273;
          if (!v273)
          {
            v134 = [(NSDictionary *)[(NSEntityDescription *)[(NSManagedObject *)v276 entity] relationshipsByName] allValues];
          }

          v317 = 0u;
          v316 = 0u;
          v315 = 0u;
          v314 = 0u;
          v274 = v134;
          v135 = [(NSArray *)v134 countByEnumeratingWithState:&v314 objects:v329 count:16];
          if (v135)
          {
            v136 = *v315;
            do
            {
              for (i = 0; i != v135; ++i)
              {
                if (*v315 != v136)
                {
                  objc_enumerationMutation(v274);
                }

                v138 = *(*(&v314 + 1) + 8 * i);
                if ((![v138 isToMany] || (objc_msgSend(objc_msgSend(v138, "inverseRelationship"), "isToMany") & 1) == 0) && (objc_msgSend(v138, "isToMany") & 1) == 0)
                {
                  v139 = *(v275 + 48);
                  v140 = [v138 name];
                  v141 = [(NSManagedObject *)v276 objectID];
                  if (v139 && ([objc_msgSend(*(v139 + 48) objectForKey:{v141), "containsObject:", v140}] & 1) != 0)
                  {
                    v142 = objc_autoreleasePoolPush();
                    v143 = __PFCloudKitLoggingGetStream();
                    v144 = v143;
                    v145 = __ckLoggingOverride;
                    if (__ckLoggingOverride && __ckLoggingOverride != 16 && __ckLoggingOverride != 17)
                    {
                      v145 = OS_LOG_TYPE_INFO;
                    }

                    if (os_log_type_enabled(v143, v145))
                    {
                      v146 = [v138 name];
                      v147 = [(NSManagedObject *)v276 objectID];
                      *buf = 136315906;
                      v331 = "[PFCloudKitSerializer updateAttributes:andRelationships:onManagedObject:fromRecord:withRecordMetadata:importContext:error:]";
                      v332 = 1024;
                      *v333 = 1512;
                      *&v333[4] = 2112;
                      *&v333[6] = v146;
                      v334 = 2112;
                      v335 = v147;
                      _os_log_impl(&dword_18565F000, v144, v145, "CoreData+CloudKit: %s(%d): Importer is rejecting updated value for '%@' on '%@' because there are pending local edits that haven't been exported yet.", buf, 0x26u);
                    }

                    objc_autoreleasePoolPop(v142);
                    continue;
                  }

                  v148 = [v138 name];
                  v149 = v148;
                  if (v269)
                  {
                    objc_opt_self();
                    v149 = [@"CD_" stringByAppendingString:v148];
                  }

                  v150 = [*(v275 + 24) useDeviceToDeviceEncryption];
                  v151 = v272;
                  if (v150)
                  {
                    v152 = [v149 hasSuffix:@"_ckAsset"];
                    v151 = v272;
                    if ((v152 & 1) == 0)
                    {
                      v151 = [v272 encryptedValues];
                    }
                  }

                  v153 = [v151 objectForKey:v149];
                  if (v153)
                  {
                    v154 = [(NSCKRecordMetadata *)v268 createRecordID];
                    v155 = [objc_alloc(getCloudKitCKRecordIDClass()) initWithRecordName:v153 zoneID:{objc_msgSend(v154, "zoneID")}];
                    v156 = objc_autoreleasePoolPush();
                    v157 = __PFCloudKitLoggingGetStream();
                    v158 = v157;
                    v159 = OS_LOG_TYPE_DEBUG;
                    if (__ckLoggingOverride > 0xFu)
                    {
                      if (__ckLoggingOverride != 16 && __ckLoggingOverride != 17)
                      {
                        goto LABEL_268;
                      }
                    }

                    else if (__ckLoggingOverride >= 2u)
                    {
                      goto LABEL_268;
                    }

                    v159 = __ckLoggingOverride;
LABEL_268:
                    if (os_log_type_enabled(v157, v159))
                    {
                      v160 = [v138 name];
                      *buf = 136316162;
                      v331 = "[PFCloudKitSerializer updateAttributes:andRelationships:onManagedObject:fromRecord:withRecordMetadata:importContext:error:]";
                      v332 = 1024;
                      *v333 = 1504;
                      *&v333[4] = 2112;
                      *&v333[6] = v154;
                      v334 = 2112;
                      v335 = v153;
                      v336 = 2112;
                      v337 = v160;
                      _os_log_impl(&dword_18565F000, v158, v159, "CoreData+CloudKit: %s(%d): Adding mirrored relationship to link for record %@ related to %@ by %@", buf, 0x30u);
                    }

                    objc_autoreleasePoolPop(v156);
                    v161 = [PFMirroredRelationship mirroredRelationshipWithManagedObject:v276 withRecordID:v154 relatedToObjectWithRecordID:v155 byRelationship:v138];
                    [(PFCloudKitImportZoneContext *)v270 addMirroredRelationshipToLink:v161];

                    continue;
                  }

                  if (([v138 isTransient] & 1) == 0)
                  {
                    [(NSManagedObject *)v276 setValue:0 forKey:v148];
                  }
                }
              }

              v135 = [(NSArray *)v274 countByEnumeratingWithState:&v314 objects:v329 count:16];
            }

            while (v135);
          }

LABEL_281:
          if (*(*(*(v277 + 96) + 8) + 24) == 1)
          {
            v165 = *(v277 + 40);
            if (v165)
            {
              v166 = v272;
              if ([*(v165 + 24) useDeviceToDeviceEncryption])
              {
                v166 = [v272 encryptedValueStore];
              }
            }

            else
            {
              v166 = 0;
            }

            objc_opt_self();
            v167 = [v166 objectForKey:{objc_msgSend(@"CD_", "stringByAppendingString:", @"moveReceipt"}];
            if (v167)
            {
LABEL_286:
              if (*(*(*(v277 + 96) + 8) + 24) == 1 && ([(NSManagedObject *)v268 mergeMoveReceiptsWithData:v167 error:*(*(v277 + 88) + 8) + 40]& 1) == 0)
              {
                *(*(*(v277 + 96) + 8) + 24) = 0;
                v168 = *(*(*(v277 + 88) + 8) + 40);
              }
            }

            else
            {
              objc_opt_self();
              v169 = [@"CD_" stringByAppendingString:@"moveReceipt"];
              objc_opt_self();
              v170 = [v272 objectForKey:{objc_msgSend(v169, "stringByAppendingString:", @"_ckAsset"}];
              if (v170)
              {
                v171 = [WeakRetained cloudKitSerializer:*(v277 + 40) safeSaveURLForAsset:v170];
                v167 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:v171 options:0 error:*(*(v277 + 88) + 8) + 40];
                if (v167)
                {
                  goto LABEL_286;
                }

                v172 = objc_autoreleasePoolPush();
                v173 = __PFCloudKitLoggingGetStream();
                v174 = v173;
                if (__ckLoggingOverride == 17)
                {
                  v175 = OS_LOG_TYPE_FAULT;
                }

                else
                {
                  v175 = OS_LOG_TYPE_ERROR;
                }

                if (os_log_type_enabled(v173, v175))
                {
                  *buf = 136315650;
                  v331 = "[PFCloudKitSerializer applyUpdatedRecords:deletedRecordIDs:toStore:inManagedObjectContext:onlyUpdatingAttributes:andRelationships:madeChanges:error:]_block_invoke";
                  v332 = 1024;
                  *v333 = 778;
                  *&v333[4] = 2112;
                  *&v333[6] = v170;
                  _os_log_impl(&dword_18565F000, v174, v175, "CoreData+CloudKit: %s(%d): Error attempting to read move receipt CKAsset file: %@", buf, 0x1Cu);
                }

                objc_autoreleasePoolPop(v172);
                *(*(*(v277 + 96) + 8) + 24) = 0;
                v176 = *(*(*(v277 + 88) + 8) + 40);
              }

              v167 = 0;
            }
          }

LABEL_299:
          v177 = *(*(*(v277 + 96) + 8) + 24);
          objc_autoreleasePoolPop(context);
          if (!v177)
          {
            goto LABEL_306;
          }

          ++v267;
        }

        while (v267 != v261);
        v182 = [(NSArray *)obj countByEnumeratingWithState:&v309 objects:v328 count:16];
        v261 = v182;
      }

      while (v182);
    }

LABEL_306:
    v183 = v277;
    if (*(*(*(v277 + 96) + 8) + 24) == 1)
    {
      v184 = objc_autoreleasePoolPush();
      v307 = 0u;
      v308 = 0u;
      v305 = 0u;
      v306 = 0u;
      if (v256)
      {
        v185 = *(v270 + 24);
      }

      else
      {
        v185 = 0;
      }

      v186 = [v185 countByEnumeratingWithState:&v305 objects:v327 count:16];
      if (v186)
      {
        v187 = *v306;
        do
        {
          for (j = 0; j != v186; ++j)
          {
            if (*v306 != v187)
            {
              objc_enumerationMutation(v185);
            }

            [*(v277 + 32) deleteObject:{objc_msgSend(*(v277 + 32), "objectWithID:", *(*(&v305 + 1) + 8 * j))}];
          }

          v186 = [v185 countByEnumeratingWithState:&v305 objects:v327 count:16];
        }

        while (v186);
      }

      objc_autoreleasePoolPop(v184);
      v189 = v270 ? *(v270 + 24) : 0;
      v190 = +[NSCKRecordMetadata metadataForObjectIDs:inStore:withManagedObjectContext:error:](NSCKRecordMetadata, [v189 allObjects], *(v277 + 48), *(v277 + 32), (*(*(v277 + 88) + 8) + 40));
      v191 = v190;
      if (v190)
      {
        v303 = 0u;
        v304 = 0u;
        v301 = 0u;
        v302 = 0u;
        v192 = [v190 countByEnumeratingWithState:&v301 objects:v326 count:16];
        if (v192)
        {
          v193 = *v302;
          do
          {
            for (k = 0; k != v192; ++k)
            {
              if (*v302 != v193)
              {
                objc_enumerationMutation(v191);
              }

              [*(v277 + 32) deleteObject:*(*(&v301 + 1) + 8 * k)];
            }

            v192 = [v191 countByEnumeratingWithState:&v301 objects:v326 count:16];
          }

          while (v192);
        }
      }

      else
      {
        *(*(*(v277 + 96) + 8) + 24) = 0;
        v227 = *(*(*(v277 + 88) + 8) + 40);
      }

      v183 = v277;
      if (*(*(*(v277 + 96) + 8) + 24) == 1)
      {
        v299 = 0u;
        v300 = 0u;
        v297 = 0u;
        v298 = 0u;
        v228 = v270 ? *(v270 + 112) : 0;
        v229 = [v228 countByEnumeratingWithState:&v297 objects:v325 count:16];
        v183 = v277;
        if (v229)
        {
          v230 = *v298;
          while (2)
          {
            for (m = 0; m != v229; ++m)
            {
              if (*v298 != v230)
              {
                objc_enumerationMutation(v228);
              }

              v232 = +[NSCKRecordZoneMetadata zoneMetadataForZoneID:inDatabaseWithScope:forStore:inContext:error:](NSCKRecordZoneMetadata, [*(*(&v297 + 1) + 8 * m) zoneID], objc_msgSend(*(*(v277 + 40) + 24), "databaseScope"), *(v277 + 48), *(v277 + 32), *(*(v277 + 88) + 8) + 40);
              if (!v232)
              {
                v183 = v277;
                *(*(*(v277 + 96) + 8) + 24) = 0;
                v233 = *(*(*(v277 + 88) + 8) + 40);
                goto LABEL_328;
              }

              [(NSManagedObject *)v232 destroyEncodedShareData];
            }

            v229 = [v228 countByEnumeratingWithState:&v297 objects:v325 count:16];
            v183 = v277;
            if (v229)
            {
              continue;
            }

            break;
          }
        }
      }
    }
  }

  else
  {
    v195 = *(*(*(v277 + 88) + 8) + 40);
    v183 = v277;
    *(*(*(v277 + 96) + 8) + 24) = 0;
  }

LABEL_328:
  v196 = *(v183 + 96);
  if (*(*(v196 + 8) + 24) != 1)
  {
    goto LABEL_335;
  }

  v197 = [(PFCloudKitImportZoneContext *)v270 linkInsertedObjectsAndMetadataInContext:(*(*(v277 + 88) + 8) + 40) error:?];
  v198 = v277;
  *(*(*(v277 + 96) + 8) + 24) = v197;
  if (*(*(*(v277 + 96) + 8) + 24) == 1)
  {
    if ([*(v277 + 32) hasChanges])
    {
      **(v277 + 104) = 1;
    }

    v199 = [*(v277 + 32) save:*(*(v277 + 88) + 8) + 40];
    v196 = *(v277 + 96);
    if (v199)
    {
      goto LABEL_335;
    }

    *(*(v196 + 8) + 24) = 0;
    v198 = v277;
  }

  v200 = *(*(*(v198 + 88) + 8) + 40);
  v196 = *(v277 + 96);
LABEL_335:
  if (*(*(v196 + 8) + 24) == 1)
  {
    v201 = v270 ? *(v270 + 48) : 0;
    v296[0] = MEMORY[0x1E69E9820];
    v296[1] = 3221225472;
    v296[2] = __150__PFCloudKitSerializer_applyUpdatedRecords_deletedRecordIDs_toStore_inManagedObjectContext_onlyUpdatingAttributes_andRelationships_madeChanges_error___block_invoke_47;
    v296[3] = &unk_1E6EC47C8;
    v202 = *(v277 + 32);
    v203 = *(v277 + 40);
    v296[4] = v270;
    v296[5] = v202;
    v296[6] = WeakRetained;
    v296[7] = v203;
    [v201 enumerateObjectsUsingBlock:v296];
    if (*(*(*(v277 + 96) + 8) + 24))
    {
      if (![(PFCloudKitImportZoneContext *)v270 populateUnresolvedIDsInStore:*(v277 + 32) withManagedObjectContext:(*(*(v277 + 88) + 8) + 40) error:?])
      {
        goto LABEL_431;
      }

      if (v270)
      {
        v204 = [*(v270 + 40) copy];
      }

      else
      {
        v204 = 0;
      }

      v290[0] = MEMORY[0x1E69E9820];
      v290[1] = 3221225472;
      v290[2] = __150__PFCloudKitSerializer_applyUpdatedRecords_deletedRecordIDs_toStore_inManagedObjectContext_onlyUpdatingAttributes_andRelationships_madeChanges_error___block_invoke_49;
      v290[3] = &unk_1E6EC47F0;
      v291 = *(v277 + 40);
      v205 = *(v277 + 32);
      v295 = vextq_s8(*(v277 + 88), *(v277 + 88), 8uLL);
      v292 = v205;
      v293 = v270;
      v294 = WeakRetained;
      [v204 enumerateObjectsUsingBlock:v290];
      if (*(*(*(v277 + 96) + 8) + 24) == 1)
      {
        if ([*(v277 + 32) hasChanges])
        {
          **(v277 + 104) = 1;
          if (([*(v277 + 32) save:*(*(v277 + 88) + 8) + 40] & 1) == 0)
          {
            *(*(*(v277 + 96) + 8) + 24) = 0;
            v206 = *(*(*(v277 + 88) + 8) + 40);
          }
        }
      }

      if (*(*(*(v277 + 96) + 8) + 24) == 1)
      {
        v207 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKImportPendingRelationship entityPath]);
        [(NSFetchRequest *)v207 setFetchBatchSize:200];
        [(NSFetchRequest *)v207 setReturnsObjectsAsFaults:0];
        v208 = *(v277 + 32);
        v287[0] = MEMORY[0x1E69E9820];
        v287[1] = 3221225472;
        v287[2] = __150__PFCloudKitSerializer_applyUpdatedRecords_deletedRecordIDs_toStore_inManagedObjectContext_onlyUpdatingAttributes_andRelationships_madeChanges_error___block_invoke_52;
        v287[3] = &unk_1E6EC4818;
        v287[4] = v208;
        v287[5] = v270;
        v209 = *(v277 + 48);
        v288 = vextq_s8(*(v277 + 88), *(v277 + 88), 8uLL);
        v287[6] = v209;
        v287[7] = v258;
        v289 = *(v277 + 104);
        [_PFRoutines efficientlyEnumerateManagedObjectsInFetchRequest:v207 usingManagedObjectContext:v208 andApplyBlock:v287];
        if (*(*(*(v277 + 96) + 8) + 24))
        {
          v210 = [NSCKMirroredRelationship fetchPendingMirroredRelationshipsInStore:*(v277 + 32) withManagedObjectContext:(*(*(v277 + 88) + 8) + 40) error:?];
          v211 = v210;
          if (v210)
          {
            v285 = 0u;
            v286 = 0u;
            v283 = 0u;
            v284 = 0u;
            v212 = [v210 countByEnumeratingWithState:&v283 objects:v324 count:16];
            if (v212)
            {
              v213 = *v284;
              do
              {
                v214 = 0;
                do
                {
                  if (*v284 != v213)
                  {
                    objc_enumerationMutation(v211);
                  }

                  v215 = *(*(&v283 + 1) + 8 * v214);
                  v216 = [(NSCKMirroredRelationship *)v215 createRecordIDForRecord];
                  v217 = [(NSCKMirroredRelationship *)v215 createRecordIDForRelatedRecord];
                  v218 = [v215 cdEntityName];
                  if (v270)
                  {
                    v219 = [objc_msgSend(*(v270 + 64) objectForKey:{v218), "objectForKey:", v216}];
                  }

                  else
                  {
                    v219 = 0;
                  }

                  v220 = [v215 relatedEntityName];
                  if (v270)
                  {
                    v221 = [objc_msgSend(*(v270 + 64) objectForKey:{v220), "objectForKey:", v217}];
                  }

                  else
                  {
                    v221 = 0;
                  }

                  if (v219 && v221)
                  {
                    v282 = 0;
                    if (-[NSCKMirroredRelationship updateRelationshipValueUsingImportContext:andManagedObjectContext:isDelete:error:](v215, v270, *(v277 + 32), [v215 needsDeleteBool], &v282))
                    {
                      goto LABEL_361;
                    }

                    v222 = objc_autoreleasePoolPush();
                    v223 = __PFCloudKitLoggingGetStream();
                    v224 = v223;
                    v225 = OS_LOG_TYPE_DEBUG;
                    if (__ckLoggingOverride > 0xFu)
                    {
                      if (__ckLoggingOverride != 16 && __ckLoggingOverride != 17)
                      {
                        goto LABEL_370;
                      }
                    }

                    else if (__ckLoggingOverride >= 2u)
                    {
                      goto LABEL_370;
                    }

                    v225 = __ckLoggingOverride;
LABEL_370:
                    if (os_log_type_enabled(v223, v225))
                    {
                      *buf = 136315906;
                      v331 = "[PFCloudKitSerializer applyUpdatedRecords:deletedRecordIDs:toStore:inManagedObjectContext:onlyUpdatingAttributes:andRelationships:madeChanges:error:]_block_invoke";
                      v332 = 1024;
                      *v333 = 1159;
                      *&v333[4] = 2112;
                      *&v333[6] = v215;
                      v334 = 2112;
                      v335 = v282;
                      _os_log_impl(&dword_18565F000, v224, v225, "CoreData+CloudKit: %s(%d): Failed to resolve pending relationship: %@\n%@", buf, 0x26u);
                    }

                    objc_autoreleasePoolPop(v222);
                    goto LABEL_373;
                  }

                  if ([v215 needsDeleteBool])
                  {
LABEL_361:
                    [v215 setIsPendingBool:0];
                  }

LABEL_373:
                  ++v214;
                }

                while (v212 != v214);
                v226 = [v211 countByEnumeratingWithState:&v283 objects:v324 count:16];
                v212 = v226;
              }

              while (v226);
            }
          }

          else
          {
            *(*(*(v277 + 96) + 8) + 24) = 0;
            v234 = *(*(*(v277 + 88) + 8) + 40);
          }
        }
      }

      if (*(*(*(v277 + 96) + 8) + 24) == 1)
      {
        v280 = 0u;
        v281 = 0u;
        v278 = 0u;
        v279 = 0u;
        v235 = v270 ? *(v270 + 48) : 0;
        v236 = [v235 countByEnumeratingWithState:&v278 objects:v323 count:16];
        if (v236)
        {
          v237 = *v279;
          v238 = *MEMORY[0x1E696A250];
          do
          {
            for (n = 0; n != v236; ++n)
            {
              if (*v279 != v237)
              {
                objc_enumerationMutation(v235);
              }

              v240 = *(*(&v278 + 1) + 8 * n);
              v241 = [NSCKMirroredRelationship mirroredRelationshipForManyToMany:v240 inStore:*(v277 + 48) withManagedObjectContext:*(v277 + 32) error:*(*(v277 + 88) + 8) + 40];
              v242 = v241;
              if (v241)
              {
                [v241 setNeedsDeleteBool:1];
                v282 = 0;
                if ([(NSCKMirroredRelationship *)v242 updateRelationshipValueUsingImportContext:v270 andManagedObjectContext:*(v277 + 32) isDelete:1 error:&v282])
                {
                  continue;
                }

                if ([objc_msgSend(v282 "domain")] && (objc_msgSend(v282, "code") == 134412 || objc_msgSend(v282, "code") == 134413))
                {
                  v243 = objc_autoreleasePoolPush();
                  v244 = __PFCloudKitLoggingGetStream();
                  v245 = v244;
                  v246 = OS_LOG_TYPE_DEBUG;
                  if (__ckLoggingOverride > 0xFu)
                  {
                    if (__ckLoggingOverride != 16 && __ckLoggingOverride != 17)
                    {
                      goto LABEL_422;
                    }
                  }

                  else if (__ckLoggingOverride >= 2u)
                  {
                    goto LABEL_422;
                  }

                  v246 = __ckLoggingOverride;
LABEL_422:
                  if (os_log_type_enabled(v244, v246))
                  {
                    *buf = 136315650;
                    v331 = "[PFCloudKitSerializer applyUpdatedRecords:deletedRecordIDs:toStore:inManagedObjectContext:onlyUpdatingAttributes:andRelationships:madeChanges:error:]_block_invoke";
                    v332 = 1024;
                    *v333 = 1184;
                    *&v333[4] = 2112;
                    *&v333[6] = v242;
                    _os_log_impl(&dword_18565F000, v245, v246, "CoreData+CloudKit: %s(%d): Marking deleted mirrored relationship fulfilled, one or more of the related objects is missing: %@", buf, 0x1Cu);
                  }

                  objc_autoreleasePoolPop(v243);
                  [v242 setNeedsDeleteBool:1];
                  [v242 setIsPendingBool:0];
                  continue;
                }

                [v242 setIsPendingBool:1];
                [WeakRetained cloudKitSerializer:*(v277 + 40) failedToUpdateRelationship:v240 withError:v282];
                v248 = objc_autoreleasePoolPush();
                v249 = __PFCloudKitLoggingGetStream();
                v250 = v249;
                v251 = __ckLoggingOverride;
                if (__ckLoggingOverride && __ckLoggingOverride != 16 && __ckLoggingOverride != 17)
                {
                  v251 = OS_LOG_TYPE_INFO;
                }

                if (os_log_type_enabled(v249, v251))
                {
                  *buf = 136315906;
                  v331 = "[PFCloudKitSerializer applyUpdatedRecords:deletedRecordIDs:toStore:inManagedObjectContext:onlyUpdatingAttributes:andRelationships:madeChanges:error:]_block_invoke";
                  v332 = 1024;
                  *v333 = 1192;
                  *&v333[4] = 2112;
                  *&v333[6] = v242;
                  v334 = 2112;
                  v335 = v282;
                  _os_log_impl(&dword_18565F000, v250, v251, "CoreData+CloudKit: %s(%d): Failed to update deleted mirrored relationship: %@\n%@", buf, 0x26u);
                }

                objc_autoreleasePoolPop(v248);
              }

              else if (*(*(*(v277 + 88) + 8) + 40))
              {
                *(*(*(v277 + 96) + 8) + 24) = 0;
                v247 = *(*(*(v277 + 88) + 8) + 40);
              }
            }

            v236 = [v235 countByEnumeratingWithState:&v278 objects:v323 count:16];
          }

          while (v236);
        }
      }

      if (*(*(*(v277 + 96) + 8) + 24) == 1)
      {
        v252 = v270 ? *(v270 + 56) : 0;
        if ((+[NSCKMirroredRelationship purgeMirroredRelationshipsWithRecordIDs:fromStore:withManagedObjectContext:error:](NSCKMirroredRelationship, [v252 allObjects], *(v277 + 48), *(v277 + 32), (*(*(v277 + 88) + 8) + 40)) & 1) == 0)
        {
LABEL_431:
          *(*(*(v277 + 96) + 8) + 24) = 0;
          v253 = *(*(*(v277 + 88) + 8) + 40);
        }
      }
    }
  }
}

uint64_t __150__PFCloudKitSerializer_applyUpdatedRecords_deletedRecordIDs_toStore_inManagedObjectContext_onlyUpdatingAttributes_andRelationships_madeChanges_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 name];

  return [v3 setObject:a2 forKey:v4];
}

void __150__PFCloudKitSerializer_applyUpdatedRecords_deletedRecordIDs_toStore_inManagedObjectContext_onlyUpdatingAttributes_andRelationships_madeChanges_error___block_invoke_47(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v18 = 0;
  if (([a2 updateRelationshipValueUsingImportContext:*(a1 + 32) andManagedObjectContext:*(a1 + 40) error:&v18] & 1) == 0)
  {
    v4 = [v18 domain];
    if ([v4 isEqualToString:*MEMORY[0x1E696A250]] && (objc_msgSend(v18, "code") == 134412 || objc_msgSend(v18, "code") == 134413))
    {
      v5 = objc_autoreleasePoolPush();
      Stream = __PFCloudKitLoggingGetStream();
      v7 = Stream;
      if (__ckLoggingOverride == 17)
      {
        v8 = 17;
      }

      else
      {
        v8 = 1;
      }

      if (__ckLoggingOverride == 16)
      {
        v8 = 16;
      }

      if (__ckLoggingOverride)
      {
        v9 = v8;
      }

      else
      {
        v9 = OS_LOG_TYPE_DEFAULT;
      }

      if (!os_log_type_enabled(Stream, v9))
      {
        goto LABEL_26;
      }

      *buf = 136315650;
      v20 = "[PFCloudKitSerializer applyUpdatedRecords:deletedRecordIDs:toStore:inManagedObjectContext:onlyUpdatingAttributes:andRelationships:madeChanges:error:]_block_invoke";
      v21 = 1024;
      v22 = 878;
      v23 = 2112;
      v24 = v18;
      v10 = "CoreData+CloudKit: %s(%d): Deleted relationship failed to update because one or more of the objects in it is already gone: %@";
      v11 = v7;
      v12 = v9;
      v13 = 28;
    }

    else
    {
      [*(a1 + 48) cloudKitSerializer:*(a1 + 56) failedToUpdateRelationship:a2 withError:v18];
      v5 = objc_autoreleasePoolPush();
      v14 = __PFCloudKitLoggingGetStream();
      v15 = v14;
      if (__ckLoggingOverride == 17)
      {
        v16 = 17;
      }

      else
      {
        v16 = 1;
      }

      if (__ckLoggingOverride == 16)
      {
        v16 = 16;
      }

      if (__ckLoggingOverride)
      {
        v17 = v16;
      }

      else
      {
        v17 = OS_LOG_TYPE_DEFAULT;
      }

      if (!os_log_type_enabled(v14, v17))
      {
        goto LABEL_26;
      }

      *buf = 136315906;
      v20 = "[PFCloudKitSerializer applyUpdatedRecords:deletedRecordIDs:toStore:inManagedObjectContext:onlyUpdatingAttributes:andRelationships:madeChanges:error:]_block_invoke";
      v21 = 1024;
      v22 = 883;
      v23 = 2112;
      v24 = a2;
      v25 = 2112;
      v26 = v18;
      v10 = "CoreData+CloudKit: %s(%d): Failed to update deleted mirrored relationship: %@\n%@";
      v11 = v15;
      v12 = v17;
      v13 = 38;
    }

    _os_log_impl(&dword_18565F000, v11, v12, v10, buf, v13);
LABEL_26:
    objc_autoreleasePoolPop(v5);
  }
}

id __150__PFCloudKitSerializer_applyUpdatedRecords_deletedRecordIDs_toStore_inManagedObjectContext_onlyUpdatingAttributes_andRelationships_madeChanges_error___block_invoke_49(uint64_t a1, uint64_t a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v30 = 0;
  v4 = objc_autoreleasePoolPush();
  Stream = __PFCloudKitLoggingGetStream();
  v6 = Stream;
  if (__ckLoggingOverride == 17)
  {
    v7 = 17;
  }

  else
  {
    v7 = 2;
  }

  if (__ckLoggingOverride == 16)
  {
    v7 = 16;
  }

  if (__ckLoggingOverride == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!__ckLoggingOverride)
  {
    v8 = 0;
  }

  if (__ckLoggingOverride <= 0xFu)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  if (os_log_type_enabled(Stream, v9))
  {
    *buf = 136315650;
    v32 = "[PFCloudKitSerializer applyUpdatedRecords:deletedRecordIDs:toStore:inManagedObjectContext:onlyUpdatingAttributes:andRelationships:madeChanges:error:]_block_invoke";
    v33 = 1024;
    v34 = 895;
    v35 = 2112;
    v36 = a2;
    _os_log_impl(&dword_18565F000, v6, v9, "CoreData+CloudKit: %s(%d): Updating relationship: %@", buf, 0x1Cu);
  }

  objc_autoreleasePoolPop(v4);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (a2)
    {
      v10 = +[PFCloudKitSerializer mtmKeyForObjectWithRecordName:relatedToObjectWithRecordName:byRelationship:withInverse:](PFCloudKitSerializer, [*(a2 + 48) recordName], objc_msgSend(*(a2 + 56), "recordName"), *(a2 + 16), *(a2 + 24));
      v11 = *(a2 + 32);
    }

    else
    {
      v10 = +[PFCloudKitSerializer mtmKeyForObjectWithRecordName:relatedToObjectWithRecordName:byRelationship:withInverse:](PFCloudKitSerializer, [0 recordName], objc_msgSend(0, "recordName"), 0, 0);
      v11 = 0;
    }

    v12 = *(*(a1 + 32) + 48);
    v13 = [v11 zoneID];
    if (!v12 || (v14 = [objc_msgSend(*(v12 + 32) objectForKey:{v13), "objectForKey:", v10}]) == 0)
    {
      v14 = [NSCKMirroredRelationship mirroredRelationshipForManyToMany:a2 inStore:*(a1 + 40) withManagedObjectContext:*(a1 + 48) error:&v30];
    }

    v15 = v30;
    if (v30)
    {
      *(*(*(a1 + 72) + 8) + 24) = 0;
      result = v15;
      *(*(*(a1 + 80) + 8) + 40) = result;
    }

    else
    {
      if (!v14)
      {
        v17 = *(*(a1 + 32) + 48);
        if (a2)
        {
          v18 = *(a2 + 48);
        }

        else
        {
          v18 = 0;
        }

        v19 = [v18 zoneID];
        if (!v17 || (v20 = [*(v17 + 8) objectForKey:v19]) == 0)
        {
          if (a2)
          {
            v21 = *(a2 + 48);
          }

          else
          {
            v21 = 0;
          }

          v22 = [v21 zoneID];
          v23 = *(a1 + 56);
          if (v23)
          {
            v24 = *(v23 + 96);
          }

          else
          {
            v24 = 0;
          }

          v25 = +[NSCKRecordZoneMetadata zoneMetadataForZoneID:inDatabaseWithScope:forStore:inContext:error:](NSCKRecordZoneMetadata, v22, [v24 databaseScope], *(a1 + 40), *(a1 + 48), &v30);
          if (v25)
          {
            v20 = v25;
            [(PFCloudKitMetadataCache *)*(*(a1 + 32) + 48) cacheZoneMetadata:v25];
          }

          else
          {
            LogStream = _PFLogGetLogStream(17);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v32 = v30;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Need to handle fetch errors here for the zone and abort serialization. %@\n", buf, 0xCu);
            }

            v27 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412290;
              v32 = v30;
              _os_log_fault_impl(&dword_18565F000, v27, OS_LOG_TYPE_FAULT, "CoreData: Need to handle fetch errors here for the zone and abort serialization. %@", buf, 0xCu);
            }

            v20 = 0;
          }
        }

        v14 = [NSCKMirroredRelationship insertMirroredRelationshipForManyToMany:a2 inZoneWithMetadata:v20 inStore:*(a1 + 40) withManagedObjectContext:*(a1 + 48)];
      }

      if ([a2 updateRelationshipValueUsingImportContext:*(a1 + 56) andManagedObjectContext:*(a1 + 48) error:&v30])
      {
        v28 = v14;
        v29 = 0;
      }

      else
      {
        v28 = v14;
        v29 = 1;
      }

      [v28 setIsPendingBool:v29];
      [v14 setNeedsDeleteBool:0];
      return [v14 setIsUploadedBool:1];
    }
  }

  else
  {
    result = [a2 updateRelationshipValueUsingImportContext:*(a1 + 56) andManagedObjectContext:*(a1 + 48) error:&v30];
    if ((result & 1) == 0)
    {
      return [*(a1 + 64) cloudKitSerializer:*(a1 + 32) failedToUpdateRelationship:a2 withError:v30];
    }
  }

  return result;
}

id __150__PFCloudKitSerializer_applyUpdatedRecords_deletedRecordIDs_toStore_inManagedObjectContext_onlyUpdatingAttributes_andRelationships_madeChanges_error___block_invoke_52(uint64_t a1, void *a2, void *a3, _BYTE *a4, _BYTE *a5)
{
  v107 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    *a4 = 1;
    *(*(*(a1 + 64) + 8) + 24) = 0;
    result = a3;
    *(*(*(a1 + 72) + 8) + 40) = result;
    return result;
  }

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v7 = [a2 countByEnumeratingWithState:&v93 objects:v106 count:16];
  if (!v7)
  {
    goto LABEL_110;
  }

  v8 = v7;
  v80 = *v94;
  v76 = *MEMORY[0x1E696A250];
  obj = a2;
  while (2)
  {
    v9 = 0;
    v77 = v8;
    do
    {
      if (*v94 != v80)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v93 + 1) + 8 * v9);
      v11 = objc_autoreleasePoolPush();
      v81 = [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(*(a1 + 32) "persistentStoreCoordinator")];
      v12 = [objc_alloc(getCloudKitCKRecordZoneIDClass[0]()) initWithZoneName:objc_msgSend(v10 ownerName:{"recordZoneName"), objc_msgSend(v10, "recordZoneOwnerName")}];
      v13 = [objc_alloc(getCloudKitCKRecordIDClass()) initWithRecordName:objc_msgSend(v10 zoneID:{"recordName"), v12}];
      v14 = [objc_alloc(getCloudKitCKRecordZoneIDClass[0]()) initWithZoneName:objc_msgSend(v10 ownerName:{"relatedRecordZoneName"), objc_msgSend(v10, "relatedRecordZoneOwnerName")}];
      v87 = [objc_alloc(getCloudKitCKRecordIDClass()) initWithRecordName:objc_msgSend(v10 zoneID:{"relatedRecordName"), v14}];
      v85 = v12;
      v83 = v14;
      if (([v12 isEqual:v14] & 1) == 0)
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v100 = v10;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Import is attempting to link objects across zones: %@\n", buf, 0xCu);
        }

        v16 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          v100 = v10;
          _os_log_fault_impl(&dword_18565F000, v16, OS_LOG_TYPE_FAULT, "CoreData: Import is attempting to link objects across zones: %@", buf, 0xCu);
        }
      }

      v82 = v9;
      context = v11;
      v17 = *(a1 + 40);
      v18 = [v10 cdEntityName];
      if (v17)
      {
        v19 = [objc_msgSend(*(v17 + 64) objectForKey:{v18), "objectForKey:", v13}];
      }

      else
      {
        v19 = 0;
      }

      v20 = *(a1 + 40);
      v21 = [v10 relatedEntityName];
      if (v20)
      {
        v22 = [objc_msgSend(*(v20 + 64) objectForKey:{v21), "objectForKey:", v87}];
        v23 = v22;
        if (v19 && v22)
        {
          goto LABEL_43;
        }

        v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v25 = v24;
        if (v19)
        {
          if (v23)
          {
            goto LABEL_22;
          }
        }

        else
        {
          [v24 addObject:v13];
          if (v23)
          {
            goto LABEL_22;
          }
        }
      }

      else
      {
        v67 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v25 = v67;
        if (!v19)
        {
          [v67 addObject:v13];
        }
      }

      [v25 addObject:v87];
      v23 = 0;
LABEL_22:
      v92 = 0;
      v26 = [NSCKRecordMetadata metadataForRecordIDs:v25 fromStore:*(a1 + 48) inManagedObjectContext:*(a1 + 32) error:&v92];
      if (!v26)
      {
        v70 = objc_autoreleasePoolPush();
        Stream = __PFCloudKitLoggingGetStream();
        v72 = Stream;
        if (__ckLoggingOverride == 17)
        {
          v73 = OS_LOG_TYPE_FAULT;
        }

        else
        {
          v73 = OS_LOG_TYPE_ERROR;
        }

        if (os_log_type_enabled(Stream, v73))
        {
          *buf = 136316162;
          v100 = "[PFCloudKitSerializer applyUpdatedRecords:deletedRecordIDs:toStore:inManagedObjectContext:onlyUpdatingAttributes:andRelationships:madeChanges:error:]_block_invoke";
          v101 = 1024;
          *v102 = 1031;
          *&v102[4] = 2112;
          *&v102[6] = v13;
          *&v102[14] = 2112;
          *&v102[16] = v87;
          v103 = 2112;
          v104 = v92;
          _os_log_impl(&dword_18565F000, v72, v73, "CoreData+CloudKit: %s(%d): Pending relationship Fallback fetch failed (%@ / %@): %@", buf, 0x30u);
        }

        objc_autoreleasePoolPop(v70);
        *(*(*(a1 + 64) + 8) + 24) = 0;
        *(*(*(a1 + 72) + 8) + 40) = v92;
        *a4 = 1;

        objc_autoreleasePoolPop(context);
        goto LABEL_110;
      }

      v27 = v26;
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v28 = [v26 countByEnumeratingWithState:&v88 objects:v105 count:16];
      if (v28)
      {
        v29 = v28;
        v79 = v25;
        v86 = v10;
        v30 = *v89;
        do
        {
          for (i = 0; i != v29; ++i)
          {
            if (*v89 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = *(*(&v88 + 1) + 8 * i);
            v33 = [(NSCKRecordMetadata *)v32 createRecordID];
            if ([v33 isEqual:v13])
            {
              v19 = [(NSCKRecordMetadata *)v32 createObjectIDForLinkedRow];
              v34 = *(a1 + 40);
              if (v34)
              {
                [(PFCloudKitImportZoneContext *)v34 addObjectID:v19 toCache:v34[8] andRecordID:v33];
              }
            }

            else if ([v33 isEqual:v87])
            {
              v23 = [(NSCKRecordMetadata *)v32 createObjectIDForLinkedRow];
              v35 = *(a1 + 40);
              if (v35)
              {
                [(PFCloudKitImportZoneContext *)v35 addObjectID:v23 toCache:v35[8] andRecordID:v33];
              }
            }

            else
            {
              v36 = _PFLogGetLogStream(17);
              if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412802;
                v100 = v33;
                v101 = 2112;
                *v102 = v27;
                *&v102[8] = 2112;
                *&v102[10] = v86;
                _os_log_error_impl(&dword_18565F000, v36, OS_LOG_TYPE_ERROR, "CoreData: fault: Unknown recordID returned as part of fetch for missing pending relationship objectIDs: %@ - %@ - %@\n", buf, 0x20u);
              }

              v37 = _PFLogGetLogStream(17);
              if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
              {
                *buf = 138412802;
                v100 = v33;
                v101 = 2112;
                *v102 = v27;
                *&v102[8] = 2112;
                *&v102[10] = v86;
                _os_log_fault_impl(&dword_18565F000, v37, OS_LOG_TYPE_FAULT, "CoreData: Unknown recordID returned as part of fetch for missing pending relationship objectIDs: %@ - %@ - %@", buf, 0x20u);
              }
            }
          }

          v29 = [v27 countByEnumeratingWithState:&v88 objects:v105 count:16];
        }

        while (v29);

        v8 = v77;
        v10 = v86;
LABEL_43:
        if (!v19)
        {
          goto LABEL_52;
        }

        goto LABEL_44;
      }

      v8 = v77;
      if (!v19)
      {
        goto LABEL_52;
      }

LABEL_44:
      if (v23)
      {
        if ([v81 isToMany] && objc_msgSend(objc_msgSend(v81, "inverseRelationship"), "isToMany"))
        {
          v98[0] = [v10 recordName];
          v98[1] = [v10 relatedRecordName];
          v38 = +[PFMirroredManyToManyRelationship ckRecordNameForOrderedRecordNames:](PFMirroredManyToManyRelationship, [MEMORY[0x1E695DEC8] arrayWithObjects:v98 count:2]);
          v97[0] = v81;
          v97[1] = [v81 inverseRelationship];
          v39 = +[PFMirroredManyToManyRelationship ckRecordTypeForOrderedRelationships:](PFMirroredManyToManyRelationship, [MEMORY[0x1E695DEC8] arrayWithObjects:v97 count:2]);
          v40 = [objc_alloc(getCloudKitCKRecordIDClass()) initWithRecordName:v38 zoneID:v85];
          if ([v10 needsDeleteBool])
          {
            v41 = [PFMirroredRelationship mirroredRelationshipWithDeletedRecordType:v39 recordID:v40 andManagedObjectModel:*(a1 + 56)];
          }

          else
          {
            v41 = [[PFMirroredManyToManyRelationship alloc] initWithRecordID:v40 recordType:v39 managedObjectModel:*(a1 + 56) andType:0];
          }

          v43 = v41;
          v44 = context;
          v45 = v82;
        }

        else
        {
          v92 = 0;
          v42 = [*(a1 + 32) existingObjectWithID:v19 error:&v92];
          if (v42)
          {
            v43 = [PFMirroredRelationship mirroredRelationshipWithManagedObject:v42 withRecordID:v13 relatedToObjectWithRecordID:v87 byRelationship:v81];
            v44 = context;
            v45 = v82;
          }

          else
          {
            v53 = v10;
            if ([objc_msgSend(v92 "domain")] && objc_msgSend(v92, "code") == 133000)
            {
              v54 = objc_autoreleasePoolPush();
              v55 = __PFCloudKitLoggingGetStream();
              v56 = v55;
              if (__ckLoggingOverride == 17)
              {
                v57 = OS_LOG_TYPE_FAULT;
              }

              else
              {
                v57 = 16 * (__ckLoggingOverride == 16);
              }

              if (os_log_type_enabled(v55, v57))
              {
                *buf = 136315906;
                v100 = "[PFCloudKitSerializer applyUpdatedRecords:deletedRecordIDs:toStore:inManagedObjectContext:onlyUpdatingAttributes:andRelationships:madeChanges:error:]_block_invoke";
                v101 = 1024;
                *v102 = 1084;
                *&v102[4] = 2112;
                *&v102[6] = v19;
                *&v102[14] = 2112;
                *&v102[16] = v53;
                _os_log_impl(&dword_18565F000, v56, v57, "CoreData+CloudKit: %s(%d): Skipping pending relationship because it's destination object has gone missing: %@\n%@", buf, 0x26u);
              }

              objc_autoreleasePoolPop(v54);

              v43 = 0;
              v87 = 0;
              v13 = 0;
              v44 = context;
              v45 = v82;
            }

            else
            {
              v58 = objc_autoreleasePoolPush();
              v59 = __PFCloudKitLoggingGetStream();
              v60 = v59;
              if (__ckLoggingOverride == 17)
              {
                v61 = OS_LOG_TYPE_FAULT;
              }

              else
              {
                v61 = 16 * (__ckLoggingOverride == 16);
              }

              v44 = context;
              v45 = v82;
              if (os_log_type_enabled(v59, v61))
              {
                *buf = 136315906;
                v100 = "[PFCloudKitSerializer applyUpdatedRecords:deletedRecordIDs:toStore:inManagedObjectContext:onlyUpdatingAttributes:andRelationships:madeChanges:error:]_block_invoke";
                v101 = 1024;
                *v102 = 1088;
                *&v102[4] = 2112;
                *&v102[6] = v53;
                *&v102[14] = 2112;
                *&v102[16] = v92;
                _os_log_impl(&dword_18565F000, v60, v61, "CoreData+CloudKit: %s(%d): Skipping pending relationship because existingObjectWithID failed: %@\n%@", buf, 0x26u);
              }

              objc_autoreleasePoolPop(v58);
              v43 = 0;
            }

            v10 = v53;
          }
        }

        v92 = 0;
        if ([(PFMirroredOneToManyRelationship *)v43 updateRelationshipValueUsingImportContext:*(a1 + 40) andManagedObjectContext:*(a1 + 32) error:&v92])
        {
          [*(a1 + 32) deleteObject:v10];
        }

        else
        {
          v62 = objc_autoreleasePoolPush();
          v63 = __PFCloudKitLoggingGetStream();
          v64 = v63;
          v65 = __ckLoggingOverride;
          if (__ckLoggingOverride > 0xFu)
          {
            if (__ckLoggingOverride == 17)
            {
              v66 = 17;
            }

            else
            {
              v66 = 2;
            }

            if (__ckLoggingOverride == 16)
            {
              v65 = OS_LOG_TYPE_ERROR;
            }

            else
            {
              v65 = v66;
            }
          }

          else if (__ckLoggingOverride >= 2u)
          {
            v65 = OS_LOG_TYPE_DEBUG;
          }

          if (os_log_type_enabled(v63, v65))
          {
            *buf = 136315906;
            v100 = "[PFCloudKitSerializer applyUpdatedRecords:deletedRecordIDs:toStore:inManagedObjectContext:onlyUpdatingAttributes:andRelationships:madeChanges:error:]_block_invoke";
            v101 = 1024;
            *v102 = 1098;
            *&v102[4] = 2112;
            *&v102[6] = v43;
            *&v102[14] = 2112;
            *&v102[16] = v92;
            _os_log_impl(&dword_18565F000, v64, v65, "CoreData+CloudKit: %s(%d): Failed to resolve pending relationship: %@\n%@", buf, 0x26u);
          }

          objc_autoreleasePoolPop(v62);
        }

        goto LABEL_96;
      }

LABEL_52:
      v46 = v10;
      v47 = objc_autoreleasePoolPush();
      v48 = __PFCloudKitLoggingGetStream();
      v49 = v48;
      v50 = __ckLoggingOverride;
      if (__ckLoggingOverride > 0xFu)
      {
        if (__ckLoggingOverride == 17)
        {
          v51 = 17;
        }

        else
        {
          v51 = 2;
        }

        if (__ckLoggingOverride == 16)
        {
          v50 = OS_LOG_TYPE_ERROR;
        }

        else
        {
          v50 = v51;
        }

        v44 = context;
        v45 = v82;
      }

      else
      {
        v44 = context;
        v45 = v82;
        if (__ckLoggingOverride >= 2u)
        {
          v50 = OS_LOG_TYPE_DEBUG;
        }
      }

      if (os_log_type_enabled(v48, v50))
      {
        v52 = [v46 objectID];
        *buf = 136316162;
        v100 = "[PFCloudKitSerializer applyUpdatedRecords:deletedRecordIDs:toStore:inManagedObjectContext:onlyUpdatingAttributes:andRelationships:madeChanges:error:]_block_invoke";
        v101 = 1024;
        *v102 = 1047;
        *&v102[4] = 2112;
        *&v102[6] = v13;
        *&v102[14] = 2112;
        *&v102[16] = v87;
        v103 = 2112;
        v104 = v52;
        _os_log_impl(&dword_18565F000, v49, v50, "CoreData+CloudKit: %s(%d): Failed to find matching objectIDs for %@ / %@ in pending relationship: %@", buf, 0x30u);
      }

      objc_autoreleasePoolPop(v47);
LABEL_96:

      objc_autoreleasePoolPop(v44);
      v9 = v45 + 1;
    }

    while (v9 != v8);
    v68 = [obj countByEnumeratingWithState:&v93 objects:v106 count:16];
    v8 = v68;
    if (v68)
    {
      continue;
    }

    break;
  }

LABEL_110:
  if ([*(a1 + 32) hasChanges])
  {
    **(a1 + 80) = 1;
    if ([objc_msgSend(*(a1 + 32) "deletedObjects")])
    {
      *a5 = 1;
    }
  }

  result = [*(a1 + 32) save:*(*(a1 + 72) + 8) + 40];
  if ((result & 1) == 0)
  {
    *a4 = 1;
    *(*(*(a1 + 64) + 8) + 24) = 0;
    return *(*(*(a1 + 72) + 8) + 40);
  }

  return result;
}

+ (uint64_t)isPrivateAttribute:(uint64_t)attribute
{
  objc_opt_self();
  if ([objc_msgSend(a2 "name")])
  {
    return 1;
  }

  name = [a2 name];

  return [name isEqualToString:@"ckRecordID"];
}

+ (uint64_t)assetStorageDirectoryURLForStore:(uint64_t)store
{
  objc_opt_self();
  if (+[_PFRoutines _isInMemoryStoreURL:](_PFRoutines, [a2 URL]))
  {
    v3 = MEMORY[0x1E695DFF8];
    v4 = -[NSString stringByAppendingPathComponent:](-[NSString stringByAppendingPathComponent:](NSTemporaryDirectory(), "stringByAppendingPathComponent:", [a2 identifier]), "stringByAppendingPathComponent:", @"inMemory_store_ckAssets");

    return [v3 fileURLWithPath:v4];
  }

  else
  {
    v6 = [a2 URL];
    v7 = [objc_msgSend(v6 "lastPathComponent")];
    uRLByDeletingLastPathComponent = [v6 URLByDeletingLastPathComponent];
    v9 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v7);

    return [uRLByDeletingLastPathComponent URLByAppendingPathComponent:v9];
  }
}

+ (uint64_t)oldAssetStorageDirectoryURLForStore:(uint64_t)store
{
  objc_opt_self();
  if (+[_PFRoutines _isInMemoryStoreURL:](_PFRoutines, [a2 URL]))
  {
    v3 = MEMORY[0x1E695DFF8];
    v4 = -[NSString stringByAppendingPathComponent:](-[NSString stringByAppendingPathComponent:](NSTemporaryDirectory(), "stringByAppendingPathComponent:", [a2 identifier]), "stringByAppendingPathComponent:", @"ckAssetFiles");

    return [v3 fileURLWithPath:v4];
  }

  else
  {
    v6 = [objc_msgSend(a2 "URL")];

    return [v6 URLByAppendingPathComponent:@"ckAssetFiles" isDirectory:1];
  }
}

+ (uint64_t)isMirroredRelationshipRecordType:(uint64_t)type
{
  objc_opt_self();
  if ([a2 hasPrefix:@"CD_M2M_"])
  {
    return 1;
  }

  return [a2 isEqualToString:@"CDMR"];
}

+ (id)assetsOnRecord:(uint64_t)record withOptions:(void *)options
{
  v18 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  allKeys = [options allKeys];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 hasSuffix:@"_ckAsset"])
        {
          v10 = [options objectForKey:v9];
          if (v10)
          {
            [v3 addObject:v10];
          }
        }
      }

      v6 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = [v3 copy];

  return v11;
}

+ (char)estimateByteSizeOfRecordID:(uint64_t)d
{
  objc_opt_self();
  v3 = [objc_msgSend(objc_msgSend(a2 "zoneID")];
  return (v3 + [objc_msgSend(a2 "recordName")] + 24);
}

+ (id)newSetOfRecordKeysForEntitiesInConfiguration:(void *)configuration inManagedObjectModel:(uint64_t)model includeCKAssetsForFileBackedFutures:
{
  modelCopy = model;
  v53 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v7 = 0x1E695D000uLL;
  v34 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = [configuration entitiesForConfiguration:a2];
  v35 = [obj countByEnumeratingWithState:&v38 objects:v50 count:16];
  if (v35)
  {
    v32 = *v39;
    v33 = modelCopy;
    do
    {
      v8 = 0;
      do
      {
        if (*v39 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v37 = v8;
        v9 = *(*(&v38 + 1) + 8 * v8);
        context = objc_autoreleasePoolPush();
        objc_opt_self();
        v10 = objc_alloc_init(*(v7 + 4008));
        objc_opt_self();
        [v10 addObject:{objc_msgSend(@"CD_", "stringByAppendingString:", @"entityName"}];
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v11 = [objc_msgSend(v9 "attributesByName")];
        v12 = [v11 countByEnumeratingWithState:&v46 objects:v52 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v47;
          do
          {
            v15 = 0;
            do
            {
              if (*v47 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v46 + 1) + 8 * v15);
              v17 = objc_autoreleasePoolPush();
              v18 = [PFCloudKitSerializer newSetOfRecordKeysForAttribute:v16 includeCKAssetsForFileBackedFutures:modelCopy];
              [v10 unionSet:v18];

              objc_autoreleasePoolPop(v17);
              ++v15;
            }

            while (v13 != v15);
            v13 = [v11 countByEnumeratingWithState:&v46 objects:v52 count:16];
          }

          while (v13);
        }

        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v19 = [objc_msgSend(v9 "relationshipsByName")];
        v20 = [v19 countByEnumeratingWithState:&v42 objects:v51 count:16];
        v7 = 0x1E695D000uLL;
        if (v20)
        {
          v21 = v20;
          v22 = *v43;
          do
          {
            v23 = 0;
            do
            {
              if (*v43 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v42 + 1) + 8 * v23);
              v25 = objc_autoreleasePoolPush();
              objc_opt_self();
              v26 = objc_alloc_init(*(v7 + 4008));
              if ([v24 isToMany])
              {
                if (![objc_msgSend(v24 "inverseRelationship")])
                {
                  goto LABEL_24;
                }

                [v26 addObject:@"CD_recordNames"];
                [v26 addObject:@"CD_relationships"];
                v27 = v26;
                v28 = @"CD_entityNames";
              }

              else
              {
                objc_opt_self();
                if (![PFCloudKitSerializer shouldTrackProperty:v24])
                {
                  goto LABEL_24;
                }

                name = [v24 name];
                v7 = 0x1E695D000;
                objc_opt_self();
                v28 = [@"CD_" stringByAppendingString:name];
                v27 = v26;
              }

              [v27 addObject:v28];
LABEL_24:
              [v10 unionSet:v26];

              objc_autoreleasePoolPop(v25);
              ++v23;
            }

            while (v21 != v23);
            v21 = [v19 countByEnumeratingWithState:&v42 objects:v51 count:16];
          }

          while (v21);
        }

        objc_opt_self();
        [v10 addObject:{objc_msgSend(@"CD_", "stringByAppendingString:", @"moveReceipt"}];
        [v34 unionSet:v10];

        objc_autoreleasePoolPop(context);
        v8 = v37 + 1;
        modelCopy = v33;
      }

      while (v37 + 1 != v35);
      v35 = [obj countByEnumeratingWithState:&v38 objects:v50 count:16];
    }

    while (v35);
  }

  return v34;
}

+ (id)newSetOfRecordKeysForAttribute:(int)attribute includeCKAssetsForFileBackedFutures:
{
  objc_opt_self();
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  if ([PFCloudKitSerializer shouldTrackAttribute:a2])
  {
    name = [a2 name];
    objc_opt_self();
    [v5 addObject:{objc_msgSend(@"CD_", "stringByAppendingString:", name)}];
    if (+[PFCloudKitSerializer isVariableLengthAttributeType:](PFCloudKitSerializer, [a2 attributeType]))
    {
      if (![a2 isFileBackedFuture] || attribute)
      {
        name2 = [a2 name];
        objc_opt_self();
        v8 = [@"CD_" stringByAppendingString:name2];
        objc_opt_self();
        [v5 addObject:{objc_msgSend(v8, "stringByAppendingString:", @"_ckAsset"}];
      }
    }
  }

  return v5;
}

void *__111__PFCloudKitSerializer_mtmKeyForObjectWithRecordName_relatedToObjectWithRecordName_byRelationship_withInverse___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 entity];
  if (v5)
  {
    if (atomic_load((v5 + 124)))
    {
      v7 = *(v5 + 72);
    }

    else
    {
      do
      {
        v7 = v5;
        v5 = [v5 superentity];
      }

      while (v5);
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 name];
  v9 = [a3 entity];
  if (v9)
  {
    if (atomic_load((v9 + 124)))
    {
      v11 = *(v9 + 72);
    }

    else
    {
      do
      {
        v11 = v9;
        v9 = [v9 superentity];
      }

      while (v9);
    }
  }

  else
  {
    v11 = 0;
  }

  result = [v8 compare:objc_msgSend(v11 options:{"name"), 1}];
  if (!result)
  {
    v13 = [a2 name];
    v14 = [a3 name];

    return [v13 compare:v14 options:1];
  }

  return result;
}

+ (id)createSetOfObjectIDsRelatedToObject:(uint64_t)object
{
  v36 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{a2, 0}];
  v5 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{objc_msgSend(a2, "objectID"), 0}];
  do
  {
    v6 = [v4 objectAtIndex:0];
    [v4 removeObjectAtIndex:0];
    [v3 addObject:{objc_msgSend(v6, "objectID")}];
    context = objc_autoreleasePoolPush();
    v24 = v6;
    entity = [v6 entity];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v23 = entity;
    obj = [entity relationshipsByName];
    v25 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v25)
    {
      v22 = *v31;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v31 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v30 + 1) + 8 * i);
          v10 = objc_autoreleasePoolPush();
          v11 = [objc_msgSend(objc_msgSend(v23 "relationshipsByName")];
          v12 = objc_msgSend_valueForKey_(v24);
          v13 = v12;
          if (v11)
          {
            v28 = 0u;
            v29 = 0u;
            v26 = 0u;
            v27 = 0u;
            v14 = [v12 countByEnumeratingWithState:&v26 objects:v34 count:16];
            if (v14)
            {
              v15 = v14;
              v16 = *v27;
              do
              {
                for (j = 0; j != v15; ++j)
                {
                  if (*v27 != v16)
                  {
                    objc_enumerationMutation(v13);
                  }

                  v18 = *(*(&v26 + 1) + 8 * j);
                  if (([v3 containsObject:{objc_msgSend(v18, "objectID")}] & 1) == 0 && (objc_msgSend(v5, "containsObject:", objc_msgSend(v18, "objectID")) & 1) == 0)
                  {
                    [v4 addObject:v18];
                    [v5 addObject:{objc_msgSend(v18, "objectID")}];
                  }
                }

                v15 = [v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
              }

              while (v15);
            }
          }

          else if (v12 && ([v3 containsObject:{objc_msgSend(v12, "objectID")}] & 1) == 0 && (objc_msgSend(v5, "containsObject:", objc_msgSend(v13, "objectID")) & 1) == 0)
          {
            [v4 addObject:v13];
            [v5 addObject:{objc_msgSend(v13, "objectID")}];
          }

          objc_autoreleasePoolPop(v10);
        }

        v25 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v25);
    }

    objc_autoreleasePoolPop(context);
    [objc_msgSend(v24 "managedObjectContext")];
  }

  while ([v4 count]);

  return v3;
}

+ (id)defaultRecordZoneIDForDatabaseScope:(int64_t)scope
{
  v11 = *MEMORY[0x1E69E9840];
  if (_MergedGlobals_83 != -1)
  {
    dispatch_once(&_MergedGlobals_83, &__block_literal_global_103);
  }

  if (scope == 1)
  {
    v4 = qword_1ED4BEAF8;
    goto LABEL_7;
  }

  if (scope == 2)
  {
    v4 = qword_1ED4BEAF0;
LABEL_7:

    return v4;
  }

  LogStream = _PFLogGetLogStream(17);
  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
  {
    v9 = 138412290;
    v10 = softLinkCKDatabaseScopeString(scope);
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Unable to provide a default CKRecordZoneID for database scope: %@\n", &v9, 0xCu);
  }

  v7 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    v8 = softLinkCKDatabaseScopeString(scope);
    v9 = 138412290;
    v10 = v8;
    _os_log_fault_impl(&dword_18565F000, v7, OS_LOG_TYPE_FAULT, "CoreData: Unable to provide a default CKRecordZoneID for database scope: %@", &v9, 0xCu);
  }

  return 0;
}

void *__60__PFCloudKitSerializer_defaultRecordZoneIDForDatabaseScope___block_invoke()
{
  v0 = objc_alloc(getCloudKitCKRecordZoneIDClass[0]());
  qword_1ED4BEAF0 = [v0 initWithZoneName:@"com.apple.coredata.cloudkit.zone" ownerName:getCloudKitCKCurrentUserDefaultName()];
  v1 = objc_alloc(getCloudKitCKRecordZoneIDClass[0]());
  CloudKitCKRecordZoneDefaultName = getCloudKitCKRecordZoneDefaultName();
  result = [v1 initWithZoneName:CloudKitCKRecordZoneDefaultName ownerName:getCloudKitCKCurrentUserDefaultName()];
  qword_1ED4BEAF8 = result;
  return result;
}

+ (void)_invalidateStaticCaches
{
  qword_1ED4BEAF0 = 0;

  qword_1ED4BEAF8 = 0;
}

@end