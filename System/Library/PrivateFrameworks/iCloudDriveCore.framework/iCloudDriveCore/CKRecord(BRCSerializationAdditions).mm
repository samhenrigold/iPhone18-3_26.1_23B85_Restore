@interface CKRecord(BRCSerializationAdditions)
+ (uint64_t)newFromSqliteStatement:()BRCSerializationAdditions atIndex:;
+ (uint64_t)newFromSqliteValue:()BRCSerializationAdditions;
- (BOOL)_verifyValueForRecordWithNumber:()BRCSerializationAdditions key:item:error:;
- (BOOL)deserializeiWorkSharingOptions:()BRCSerializationAdditions error:;
- (id)_createAppLibraryIfNecessary:()BRCSerializationAdditions session:;
- (id)getAndUpdateBoundaryKeyForItem:()BRCSerializationAdditions;
- (uint64_t)_deserializeModifiedTime:()BRCSerializationAdditions size:hasExactSize:outOfBandUpload:userInfo:error:;
- (uint64_t)_deserializeValue:()BRCSerializationAdditions forKey:encrypted:expectClass:allowNil:errorDescription:;
- (uint64_t)_locateSideCarServerZone:()BRCSerializationAdditions withShareAliasReference:sessionContext:;
- (uint64_t)_updateSize:()BRCSerializationAdditions mtime:shouldUseEnhancedDrivePrivacy:item:error:;
- (uint64_t)deserializeAliasInfo:()BRCSerializationAdditions serverZone:error:;
- (uint64_t)deserializeFilename:()BRCSerializationAdditions basename:bounceno:extension:userInfo:error:;
- (uint64_t)deserializeSideCarInfo:()BRCSerializationAdditions error:;
- (uint64_t)deserializeStatInfo:()BRCSerializationAdditions serverMetrics:itemID:session:error:;
- (uint64_t)deserializeSymlinkTarget:()BRCSerializationAdditions error:;
- (uint64_t)deserializeVersion:()BRCSerializationAdditions fakeStatInfo:contentBoundaryKey:clientZone:outOfBandUpload:error:;
- (uint64_t)locateSideCarServerZone:()BRCSerializationAdditions shareRecordName:sessionContext:;
- (uint64_t)serializeForContentUpload:()BRCSerializationAdditions size:mtime:etag:shouldUseEnhancedDrivePrivacy:error:;
- (uint64_t)serializeStatInfo:()BRCSerializationAdditions diffs:stageID:deadInServerTruth:shouldPCSChainStatus:basehashSaltGetter:childBasehashSaltGetter:error:;
- (uint64_t)serializeVersion:()BRCSerializationAdditions diffs:deadInServerTruth:basehashSalt:error:;
- (void)_deserializeRootSharingOptions:()BRCSerializationAdditions;
- (void)_processSaltingOnAppLibrary:()BRCSerializationAdditions;
- (void)_saveAppLibraryIfNecessary:()BRCSerializationAdditions;
- (void)processAppLibraryDataWithMovedZoneNames:()BRCSerializationAdditions serverZone:isDeltaSync:;
- (void)seralizeBirthtime:()BRCSerializationAdditions;
- (void)serializeContentBoundaryKey:()BRCSerializationAdditions;
- (void)serializeFilename:()BRCSerializationAdditions forCreation:setExtension:inSharedAlias:basehashSaltIfNotShareAlias:parentIDIsCloudDocsRoot:parentIDIsDocumentsFolder:;
- (void)serializeFinderTags:()BRCSerializationAdditions forCreation:;
- (void)serializeSideCarInfo:()BRCSerializationAdditions filenameExtension:diffs:deadInServerTruth:;
- (void)serializeSpecialIdentityForFilename:()BRCSerializationAdditions parentIDIsCloudDocsRoot:parentIDisDocumentsFolder:;
- (void)serializeSystemFields:()BRCSerializationAdditions includeCZMEtag:;
- (void)setLastUsedTime:()BRCSerializationAdditions;
- (void)sqliteBind:()BRCSerializationAdditions index:;
@end

@implementation CKRecord(BRCSerializationAdditions)

- (void)sqliteBind:()BRCSerializationAdditions index:
{
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  v6 = v7;
  sqlite3_bind_blob(a3, a4, [v7 bytes], objc_msgSend(v7, "length"), 0xFFFFFFFFFFFFFFFFLL);
}

+ (uint64_t)newFromSqliteValue:()BRCSerializationAdditions
{
  if (sqlite3_value_type(a3) == 4)
  {
    v4 = MEMORY[0x277CCAAC8];
    v5 = objc_opt_class();
    v6 = MEMORY[0x277CBEA90];
    v7 = sqlite3_value_blob(a3);
    v8 = [v6 dataWithBytes:v7 length:sqlite3_value_bytes(a3)];
    v9 = [v4 unarchivedObjectOfClass:v5 fromData:v8 error:0];
  }

  else
  {
    if (sqlite3_value_type(a3) != 5)
    {
      +[CKRecord(BRCSerializationAdditions) newFromSqliteValue:];
    }

    return 0;
  }

  return v9;
}

+ (uint64_t)newFromSqliteStatement:()BRCSerializationAdditions atIndex:
{
  if (sqlite3_column_type(a3, iCol) == 4)
  {
    v6 = MEMORY[0x277CCAAC8];
    v7 = objc_opt_class();
    v8 = MEMORY[0x277CBEA90];
    v9 = sqlite3_column_blob(a3, iCol);
    v10 = [v8 dataWithBytes:v9 length:{sqlite3_column_bytes(a3, iCol)}];
    v11 = [v6 unarchivedObjectOfClass:v7 fromData:v10 error:0];
  }

  else
  {
    if (sqlite3_column_type(a3, iCol) != 5)
    {
      +[CKRecord(BRCSerializationAdditions) newFromSqliteStatement:atIndex:];
    }

    return 0;
  }

  return v11;
}

- (uint64_t)_deserializeValue:()BRCSerializationAdditions forKey:encrypted:expectClass:allowNil:errorDescription:
{
  v13 = a4;
  if (a5)
  {
    encryptedValues = [self encryptedValues];
    v15 = [encryptedValues objectForKeyedSubscript:v13];

    if (v15)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v15 = [self objectForKeyedSubscript:v13];
    if (v15)
    {
      goto LABEL_6;
    }
  }

  if ((a7 & 1) == 0)
  {
    [CKRecord(BRCSerializationAdditions) _deserializeValue:a8 forKey:self encrypted:v13 expectClass:&v23 allowNil:? errorDescription:?];
    a8 = v23;
    goto LABEL_11;
  }

LABEL_6:
  if (v15 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a8)
    {
      v18 = MEMORY[0x277CCACA8];
      recordType = [self recordType];
      recordID = [self recordID];
      v21 = [v18 stringWithFormat:@"invalid value for key '%@' in %@ record %@: %@ %@", v13, recordType, recordID, objc_opt_class(), v15];
      v22 = *a8;
      *a8 = v21;

      a8 = 0;
    }
  }

  else
  {
    if (a3)
    {
      v16 = v15;
      *a3 = v15;
    }

    a8 = 1;
  }

LABEL_11:

  return a8;
}

- (uint64_t)deserializeFilename:()BRCSerializationAdditions basename:bounceno:extension:userInfo:error:
{
  v14 = a7;
  v54 = 0;
  v55[0] = 0;
  v15 = [self _deserializeValue:&v54 forKey:@"encryptedBasename" encrypted:1 expectClass:objc_opt_class() allowNil:0 errorDescription:v55];
  v16 = v54;
  if ((v15 & 1) == 0)
  {
    if (v14)
    {
      [v14 setObject:v55[0] forKeyedSubscript:@"encryptedBasename"];
    }

    else if (a8)
    {
      *a8 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v55[0]}];
    }

    v26 = brc_bread_crumbs();
    v27 = brc_default_log();
    if (os_log_type_enabled(v27, 0x90u))
    {
      [CKRecord(BRCSerializationAdditions) deserializeFilename:basename:bounceno:extension:userInfo:error:];
    }

    v25 = 0;
    v24 = 0;
    v28 = 0;
    v18 = 0;
    v29 = 0;
    v20 = v16;
    v16 = 0;
    goto LABEL_49;
  }

  v53 = 0;
  v17 = [self _deserializeValue:&v53 forKey:@"bounceNo" encrypted:0 expectClass:objc_opt_class() allowNil:1 errorDescription:v55];
  v18 = v53;
  if ((v17 & 1) == 0)
  {
    if (v14)
    {
      [v14 setObject:v55[0] forKeyedSubscript:@"bounceNo"];
    }

    else if (a8)
    {
      *a8 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v55[0]}];
    }

    v30 = brc_bread_crumbs();
    v31 = brc_default_log();
    if (os_log_type_enabled(v31, 0x90u))
    {
      [CKRecord(BRCSerializationAdditions) deserializeFilename:basename:bounceno:extension:userInfo:error:];
    }

    v25 = 0;
    v24 = 0;
    v28 = 0;
    v29 = 0;
    v20 = v18;
    v18 = 0;
    goto LABEL_49;
  }

  v52 = 0;
  v19 = [self _deserializeValue:&v52 forKey:@"extension" encrypted:0 expectClass:objc_opt_class() allowNil:1 errorDescription:v55];
  v20 = v52;
  if ((v19 & 1) == 0)
  {
    if (v14)
    {
      [v14 setObject:v55[0] forKeyedSubscript:@"extension"];
    }

    else if (a8)
    {
      *a8 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v55[0]}];
    }

    v32 = brc_bread_crumbs();
    v33 = brc_default_log();
    if (os_log_type_enabled(v33, 0x90u))
    {
      [CKRecord(BRCSerializationAdditions) deserializeFilename:basename:bounceno:extension:userInfo:error:];
    }

    v25 = 0;
    v24 = 0;
    v28 = 0;
    v29 = 0;
    goto LABEL_49;
  }

  if (v18 && [v18 integerValue] <= 1)
  {
    [CKRecord(BRCSerializationAdditions) deserializeFilename:v18 basename:? bounceno:? extension:? userInfo:? error:?];
    v18 = 0;
  }

  v21 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v16 encoding:4];
  if (!v21)
  {
    [CKRecord(BRCSerializationAdditions) deserializeFilename:basename:bounceno:extension:userInfo:error:];
    v21 = &stru_2837504F0;
  }

  location = a5;
  if ([(__CFString *)v21 length])
  {
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:{-[__CFString br_filenameSafeFileSystemRepresentation](v21, "br_filenameSafeFileSystemRepresentation")}];

    v23 = v22;
    v24 = v23;
    if (v18)
    {
      v25 = [v23 stringByAppendingFormat:@" %@", v18];

      goto LABEL_35;
    }
  }

  else
  {
    [CKRecord(BRCSerializationAdditions) deserializeFilename:basename:bounceno:extension:userInfo:error:];
    v18 = 0;
    v24 = v55[1];
  }

  v25 = v24;
LABEL_35:
  v34 = a6;
  if ([v20 length])
  {
    v35 = [v25 stringByAppendingPathExtension:v20];

    v25 = v35;
    a6 = v34;
  }

  if (a3)
  {
    v36 = MEMORY[0x277CCACA8];
    fileSystemRepresentation = [v25 fileSystemRepresentation];
    v38 = v36;
    a6 = v34;
    v39 = [v38 br_pathWithFileSystemRepresentation:fileSystemRepresentation];
    v40 = *a3;
    *a3 = v39;
  }

  if (a4)
  {
    v41 = MEMORY[0x277CCACA8];
    fileSystemRepresentation2 = [v24 fileSystemRepresentation];
    v43 = v41;
    a6 = v34;
    v44 = [v43 br_pathWithFileSystemRepresentation:fileSystemRepresentation2];
    v45 = *a4;
    *a4 = v44;
  }

  if (location)
  {
    objc_storeStrong(location, v18);
  }

  if (a6)
  {
    if (v20)
    {
      v46 = MEMORY[0x277CCACA8];
      fileSystemRepresentation3 = [v20 fileSystemRepresentation];
      v48 = v46;
      a6 = v34;
      v49 = [v48 br_pathWithFileSystemRepresentation:fileSystemRepresentation3];
    }

    else
    {
      v49 = 0;
    }

    v28 = v49;
    v20 = *a6;
    *a6 = v28;
    v29 = 1;
LABEL_49:

    v20 = v28;
    goto LABEL_50;
  }

  v29 = 1;
LABEL_50:

  return v29;
}

- (uint64_t)deserializeAliasInfo:()BRCSerializationAdditions serverZone:error:
{
  v122 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = [v8 db];
  [v9 assertOnQueue];

  session = [v8 session];

  dictionary = 0;
  v113 = 0;
  if (!a3)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  v112 = 0;
  v12 = [self _deserializeValue:&v112 forKey:@"parent" encrypted:0 expectClass:objc_opt_class() allowNil:0 errorDescription:&v113];
  v13 = v112;
  v14 = v13;
  if (v12)
  {
    v14 = v13;

    v111 = 0;
    v15 = [self _deserializeValue:&v111 forKey:@"target" encrypted:0 expectClass:objc_opt_class() allowNil:0 errorDescription:&v113];
    v16 = v111;
    v17 = v16;
    if (v15)
    {
      v17 = v16;

      v110 = 0;
      v18 = [self _deserializeValue:&v110 forKey:@"favoriteRank" encrypted:0 expectClass:objc_opt_class() allowNil:1 errorDescription:&v113];
      v19 = v110;
      v20 = v19;
      if (v18)
      {
        v21 = v19;

        v109 = 0;
        v22 = [self _deserializeValue:&v109 forKey:@"lastOpenTime" encrypted:0 expectClass:objc_opt_class() allowNil:1 errorDescription:&v113];
        v23 = v109;
        v24 = v23;
        if ((v22 & 1) == 0)
        {
          if (dictionary)
          {
            [dictionary setObject:v113 forKeyedSubscript:@"lastOpenTime"];
          }

          else if (a5)
          {
            *a5 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v113}];
          }

          v36 = brc_bread_crumbs();
          v37 = brc_default_log();
          if (os_log_type_enabled(v37, 0x90u))
          {
            [CKRecord(BRCSerializationAdditions) deserializeFilename:basename:bounceno:extension:userInfo:error:];
          }

          v32 = 0;
          v20 = v17;
          v17 = v14;
          goto LABEL_55;
        }

        v105 = v23;

        v108 = 0;
        v25 = [self _deserializeValue:&v108 forKey:@"finderTags" encrypted:1 expectClass:objc_opt_class() allowNil:1 errorDescription:&v113];
        v26 = v108;
        v27 = v26;
        if ((v25 & 1) == 0)
        {
          if (dictionary)
          {
            [dictionary setObject:v113 forKeyedSubscript:@"finderTags"];
          }

          else if (a5)
          {
            *a5 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v113}];
          }

          v45 = brc_bread_crumbs();
          v46 = brc_default_log();
          if (os_log_type_enabled(v46, 0x90u))
          {
            [CKRecord(BRCSerializationAdditions) deserializeFilename:basename:bounceno:extension:userInfo:error:];
          }

          v32 = 0;
          v20 = v14;
          goto LABEL_54;
        }

        v20 = v26;

        if ([dictionary count])
        {
          v28 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CFACB0] code:1001 userInfo:dictionary];
          if (v28)
          {
            v29 = brc_bread_crumbs();
            v30 = brc_default_log();
            if (os_log_type_enabled(v30, 0x90u))
            {
              v85 = "(passed to caller)";
              *buf = 136315906;
              v115 = "[CKRecord(BRCSerializationAdditions) deserializeAliasInfo:serverZone:error:]";
              v116 = 2080;
              if (!a5)
              {
                v85 = "(ignored by caller)";
              }

              v117 = v85;
              v118 = 2112;
              v119 = v28;
              v120 = 2112;
              v121 = v29;
              _os_log_error_impl(&dword_223E7A000, v30, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
            }
          }

          if (a5)
          {
            v31 = v28;
            *a5 = v28;
          }

          v32 = 0;
LABEL_54:
          v17 = v105;
LABEL_55:
          v14 = v21;
          goto LABEL_38;
        }

        v100 = v21;
        obja = [v14 recordID];
        zoneID = [obja zoneID];
        recordID = [self recordID];
        zoneID2 = [recordID zoneID];
        v96 = [zoneID isEqual:zoneID2];

        if ((v96 & 1) == 0)
        {
          v47 = brc_bread_crumbs();
          v48 = brc_default_log();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
          {
            recordID2 = [v14 recordID];
            zoneID3 = [recordID2 zoneID];
            recordID3 = [self recordID];
            [recordID3 zoneID];
            v87 = objb = v47;
            *buf = 138412802;
            v115 = zoneID3;
            v116 = 2112;
            v117 = v87;
            v118 = 2112;
            v119 = objb;
            _os_log_fault_impl(&dword_223E7A000, v48, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Aliases parent ref zoneID %@ must be equal to aliases zoneID %@!%@", buf, 0x20u);

            v47 = objb;
          }

          v49 = MEMORY[0x277CCA9B8];
          v98 = *MEMORY[0x277CFACB0];
          objc = [self recordID];
          zoneID4 = [objc zoneID];
          recordID4 = [v14 recordID];
          zoneID5 = [recordID4 zoneID];
          v53 = [v49 br_errorWithDomain:v98 code:1005 description:{@"Records zoneID %@ must be equal to parents zoneID %@", zoneID4, zoneID5}];

          v54 = v53;
          if (v53)
          {
            v55 = brc_bread_crumbs();
            v56 = brc_default_log();
            if (os_log_type_enabled(v56, 0x90u))
            {
              v88 = "(passed to caller)";
              *buf = 136315906;
              v115 = "[CKRecord(BRCSerializationAdditions) deserializeAliasInfo:serverZone:error:]";
              v116 = 2080;
              if (!a5)
              {
                v88 = "(ignored by caller)";
              }

              v117 = v88;
              v118 = 2112;
              v119 = v54;
              v120 = 2112;
              v121 = v55;
              _os_log_error_impl(&dword_223E7A000, v56, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
            }
          }

          if (a5)
          {
            v57 = v54;
            *a5 = v54;
          }

          v32 = 0;
          v17 = v105;
          goto LABEL_86;
        }

        obj = objc_opt_new();
        [obj setType:3];
        recordID5 = [v17 recordID];
        zoneID6 = [recordID5 zoneID];

        recordID6 = [v17 recordID];
        recordName = [recordID6 recordName];

        v94 = zoneID6;
        v43 = [objc_alloc(MEMORY[0x277CFAE60]) initWithRecordZoneID:zoneID6];
        v91 = v43;
        if ([v43 isPrivate])
        {
          v44 = [session getOrReserveLibraryRowIDForLibrary:v43];
        }

        else
        {
          v44 = 0;
        }

        recordID7 = [v17 recordID];
        zoneAppRetriever = [session zoneAppRetriever];
        v90 = v44;
        v60 = [recordID7 brc_itemIDOfTargetWithLibraryRowID:v44 zoneAppRetriever:zoneAppRetriever];

        v92 = v60;
        if ([recordName hasPrefix:@"documentContent/"])
        {
          v89 = MEMORY[0x277CCACA8];
          zoneName = [v94 zoneName];
          ownerName = [v94 ownerName];
          v63 = v60;
          itemIDString = ownerName;
          v65 = v63;
        }

        else
        {
          if ([recordName hasPrefix:@"documentStructure/"])
          {
            v70 = MEMORY[0x277CCACA8];
            zoneName2 = [v94 zoneName];
            itemIDString = [v60 itemIDString];
            v71 = [v70 stringWithFormat:@"%@/%@", zoneName2, itemIDString];
            v72 = obj[8];
            obj[8] = v71;

            goto LABEL_74;
          }

          if (![recordName hasPrefix:@"directory/"])
          {
            zoneName2 = brc_bread_crumbs();
            itemIDString = brc_default_log();
            if (os_log_type_enabled(itemIDString, OS_LOG_TYPE_FAULT))
            {
              [CKRecord(BRCSerializationAdditions) deserializeAliasInfo:serverZone:error:];
            }

            goto LABEL_74;
          }

          v89 = MEMORY[0x277CCACA8];
          zoneName = [v94 zoneName];
          itemIDString = [v94 ownerName];
          v65 = v92;
        }

        itemIDString2 = [v65 itemIDString];
        v67 = [v89 stringWithFormat:@"%@:%@/%@", zoneName, itemIDString, itemIDString2];
        v68 = obj[8];
        obj[8] = v67;

        zoneName2 = zoneName;
LABEL_74:

        recordID8 = [v14 recordID];
        zoneAppRetriever2 = [session zoneAppRetriever];
        v75 = [recordID8 brc_itemIDWithZoneAppRetriever:zoneAppRetriever2];
        [obj setParentID:v75];

        v76 = [[BRFieldCKInfo alloc] initWithRecord:self];
        [obj setCkInfo:v76];

        v77 = v105;
        [obj setLastUsedTime:{-[NSObject longLongValue](v105, "longLongValue")}];
        [obj setFavoriteRank:{-[NSObject longLongValue](v100, "longLongValue")}];
        if ([v20 length])
        {
          v78 = v20;
        }

        else
        {
          v78 = 0;
        }

        [obj setFinderTags:v78];
        encryptedValues = [self encryptedValues];
        v80 = [encryptedValues objectForKeyedSubscript:@"encryptedBasename"];

        if (v80)
        {
          v106 = 0;
          v107 = 0;
          v81 = [self deserializeFilename:&v107 basename:0 bounceno:0 extension:0 userInfo:dictionary error:&v106];
          v82 = v106;
          if ((v81 & 1) == 0)
          {
            v83 = brc_bread_crumbs();
            v84 = brc_default_log();
            if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v115 = v82;
              v116 = 2112;
              v117 = v83;
              _os_log_impl(&dword_223E7A000, v84, OS_LOG_TYPE_DEFAULT, "[WARNING] can't deserialize filename: %@%@", buf, 0x16u);
            }

            v77 = v105;
          }

          [obj setLogicalName:v107];
        }

        if (a3)
        {
          objc_storeStrong(a3, obj);
        }

        v32 = 1;
        v17 = v77;
LABEL_86:
        v14 = v100;
        goto LABEL_38;
      }

      if (dictionary)
      {
        [dictionary setObject:v113 forKeyedSubscript:@"favoriteRank"];
      }

      else if (a5)
      {
        *a5 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v113}];
      }

      v33 = brc_bread_crumbs();
      v34 = brc_default_log();
      if (os_log_type_enabled(v34, 0x90u))
      {
        [CKRecord(BRCSerializationAdditions) deserializeFilename:basename:bounceno:extension:userInfo:error:];
      }
    }

    else
    {
      if (dictionary)
      {
        [dictionary setObject:v113 forKeyedSubscript:@"target"];
      }

      else if (a5)
      {
        *a5 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v113}];
      }

      v20 = brc_bread_crumbs();
      v33 = brc_default_log();
      if (os_log_type_enabled(v33, 0x90u))
      {
        [CKRecord(BRCSerializationAdditions) deserializeFilename:basename:bounceno:extension:userInfo:error:];
      }
    }
  }

  else
  {
    if (dictionary)
    {
      [dictionary setObject:v113 forKeyedSubscript:@"parent"];
    }

    else if (a5)
    {
      *a5 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v113}];
    }

    v17 = brc_bread_crumbs();
    v20 = brc_default_log();
    if (os_log_type_enabled(v20, 0x90u))
    {
      [CKRecord(BRCSerializationAdditions) deserializeFilename:basename:bounceno:extension:userInfo:error:];
    }
  }

  v32 = 0;
LABEL_38:

  return v32;
}

- (void)_deserializeRootSharingOptions:()BRCSerializationAdditions
{
  share = [self share];

  if (!share)
  {
    v11 = 0;
    if (!a3)
    {
      return;
    }

    goto LABEL_8;
  }

  encryptedPublicSharingKey = [self encryptedPublicSharingKey];
  if (!encryptedPublicSharingKey || (v7 = encryptedPublicSharingKey, [self routingKey], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, !v8))
  {
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [CKRecord(BRCSerializationAdditions) _deserializeRootSharingOptions:];
    }
  }

  v11 = 4;
  if (a3)
  {
LABEL_8:
    *a3 = v11;
  }
}

- (BOOL)deserializeiWorkSharingOptions:()BRCSerializationAdditions error:
{
  v25 = 0;
  v26 = 0;
  [self _deserializeRootSharingOptions:&v25];
  dictionary = 0;
  if (!a3)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  v24 = 0;
  v8 = *MEMORY[0x277CBC148];
  v9 = [self _deserializeValue:&v24 forKey:*MEMORY[0x277CBC148] encrypted:0 expectClass:objc_opt_class() allowNil:1 errorDescription:&v26];
  v10 = v24;
  v11 = v10;
  if ((v9 & 1) == 0)
  {
    if (dictionary)
    {
      [dictionary setObject:v26 forKeyedSubscript:v8];
    }

    else if (a4)
    {
      *a4 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v26}];
    }

    v18 = brc_bread_crumbs();
    v19 = brc_default_log();
    if (os_log_type_enabled(v19, 0x90u))
    {
      [CKRecord(BRCSerializationAdditions) deserializeFilename:basename:bounceno:extension:userInfo:error:];
    }

    v11 = 0;
    goto LABEL_19;
  }

  if ([v10 BOOLValue])
  {
    v25 |= 1uLL;
    v23 = 0;
    v12 = *MEMORY[0x277CBC140];
    v13 = [self _deserializeValue:&v23 forKey:*MEMORY[0x277CBC140] encrypted:0 expectClass:objc_opt_class() allowNil:0 errorDescription:&v26];
    v14 = v23;
    v15 = v14;
    if (v13)
    {
      if ([v14 BOOLValue])
      {
        v25 |= 2uLL;
      }

      goto LABEL_11;
    }

    if (dictionary)
    {
      [dictionary setObject:v26 forKeyedSubscript:v12];
    }

    else if (a4)
    {
      *a4 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v26}];
    }

    v21 = brc_bread_crumbs();
    v22 = brc_default_log();
    if (os_log_type_enabled(v22, 0x90u))
    {
      [CKRecord(BRCSerializationAdditions) deserializeFilename:basename:bounceno:extension:userInfo:error:];
    }

LABEL_19:
    v15 = 0;
    v17 = 0;
    goto LABEL_20;
  }

  v15 = 0;
LABEL_11:
  v16 = [dictionary count];
  v17 = v16 == 0;
  if (a3 && !v16)
  {
    *a3 = v25;
    v17 = 1;
  }

LABEL_20:

  return v17;
}

- (uint64_t)deserializeStatInfo:()BRCSerializationAdditions serverMetrics:itemID:session:error:
{
  v252 = *MEMORY[0x277D85DE8];
  v11 = a5;
  v221 = a6;
  serverDB = [v221 serverDB];
  [serverDB assertOnQueue];

  dictionary = 0;
  v243 = 0;
  if (!a3)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  v225 = dictionary;
  recordID = [self recordID];
  zoneID = [recordID zoneID];
  ownerName = [zoneID ownerName];
  v17 = *MEMORY[0x277CBBF28];
  v18 = [ownerName isEqualToString:*MEMORY[0x277CBBF28]];

  v19 = v225;
  v242 = 0;
  recordID2 = [self recordID];
  recordName = [recordID2 recordName];
  v22 = [recordName hasPrefix:@"directory/"];

  v215 = v22;
  v222 = v11;
  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v24 = a7;
    recordID3 = [self recordID];
    recordName2 = [recordID3 recordName];
    v27 = [recordName2 hasPrefix:@"documentStructure/"];

    if (v27)
    {
      v23 = 1;
    }

    else
    {
      recordID4 = [self recordID];
      recordName3 = [recordID4 recordName];
      v30 = [recordName3 hasPrefix:@"finderBookmark/"];

      if (v30)
      {
        v23 = 6;
      }

      else
      {
        recordID5 = [self recordID];
        recordName4 = [recordID5 recordName];
        v33 = [recordName4 hasPrefix:@"symlink/"];

        if ((v33 & 1) == 0)
        {
          v78 = MEMORY[0x277CCACA8];
          recordID6 = [self recordID];
          recordType = [self recordType];
          v81 = [v78 stringWithFormat:@"invalid record type for record %@: %@", recordID6, recordType];
          v243 = v81;

          if (v225)
          {
            [v225 setObject:v81 forKeyedSubscript:@"recordType"];
          }

          else if (v24)
          {
            *v24 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v81}];
          }

          obj = brc_bread_crumbs();
          v83 = brc_default_log();
          if (os_log_type_enabled(v83, 0x90u))
          {
            [CKRecord(BRCSerializationAdditions) deserializeStatInfo:serverMetrics:itemID:session:error:];
          }

          v223 = 0;
          v224 = 0;
          v54 = 0;
          v55 = 0;
          v56 = 0;
          v220 = 0;
          v51 = 0;
          goto LABEL_50;
        }

        v23 = 5;
      }
    }

    a7 = v24;
    v19 = v225;
  }

  if ([v11 isDocumentsFolder])
  {
    v242 = *MEMORY[0x277CFAD50];
  }

  else
  {
    [self deserializeFilename:&v242 basename:0 bounceno:0 extension:0 userInfo:v19 error:a7];
  }

  v241 = 0;
  v34 = [self _deserializeValue:&v241 forKey:@"parent" encrypted:0 expectClass:objc_opt_class() allowNil:v18 ^ 1u errorDescription:&v243];
  v213 = v241;
  if ((v34 & 1) == 0)
  {
    if (v19)
    {
      [v19 setObject:v243 forKeyedSubscript:@"parent"];
      v50 = v213;
    }

    else
    {
      v50 = v213;
      if (a7)
      {
        *a7 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v243}];
      }
    }

    v52 = brc_bread_crumbs();
    v53 = brc_default_log();
    if (os_log_type_enabled(v53, 0x90u))
    {
      [CKRecord(BRCSerializationAdditions) deserializeFilename:basename:bounceno:extension:userInfo:error:];
    }

    v223 = 0;
    v224 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v220 = 0;
    v45 = 0;
    v57 = 0;
    v58 = 0;
    v214 = 0;
    v59 = 0;
    v60 = 0;
    v216 = 0;
    v61 = v50;
    v51 = 0;
    goto LABEL_34;
  }

  v240 = 0;
  v35 = [self _deserializeValue:&v240 forKey:@"exactBirthtime" encrypted:1 expectClass:objc_opt_class() allowNil:1 errorDescription:&v243];
  v36 = v240;
  if ((v35 & 1) == 0)
  {
    obj = v36;
    if (v19)
    {
      [v19 setObject:v243 forKeyedSubscript:@"exactBirthtime"];
      v51 = v213;
    }

    else
    {
      v51 = v213;
      if (a7)
      {
        *a7 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v243}];
      }
    }

    v75 = brc_bread_crumbs();
    v76 = brc_default_log();
    if (os_log_type_enabled(v76, 0x90u))
    {
      [CKRecord(BRCSerializationAdditions) deserializeFilename:basename:bounceno:extension:userInfo:error:];
    }

    goto LABEL_49;
  }

  v37 = v36;
  if (v36)
  {
    goto LABEL_20;
  }

  v239 = 0;
  v38 = [self _deserializeValue:&v239 forKey:@"birthtime" encrypted:0 expectClass:objc_opt_class() allowNil:1 errorDescription:&v243];
  v39 = v239;
  if ((v38 & 1) == 0)
  {
    obj = v39;
    if (v19)
    {
      [v19 setObject:v243 forKeyedSubscript:@"birthtime"];
      v51 = v213;
    }

    else
    {
      v51 = v213;
      if (a7)
      {
        *a7 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v243}];
      }
    }

    v75 = brc_bread_crumbs();
    v76 = brc_default_log();
    if (os_log_type_enabled(v76, 0x90u))
    {
      [CKRecord(BRCSerializationAdditions) deserializeFilename:basename:bounceno:extension:userInfo:error:];
    }

LABEL_49:

    v223 = 0;
    v224 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v220 = 0;
LABEL_50:
    v45 = 0;
    v57 = 0;
    v58 = 0;
    v214 = 0;
    v59 = 0;
    v60 = 0;
    v216 = 0;
    v62 = v222;
LABEL_51:
    v61 = obj;
    goto LABEL_52;
  }

  v37 = v39;
LABEL_20:
  v209 = a7;
  v210 = v37;
  recordID7 = [self recordID];
  zoneID2 = [recordID7 zoneID];
  ownerName2 = [zoneID2 ownerName];
  v43 = [ownerName2 isEqualToString:v17];

  if (!v43)
  {
    v206 = 0;
    v45 = 0;
    v47 = 0;
    goto LABEL_36;
  }

  v238 = 0;
  v44 = [self _deserializeValue:&v238 forKey:@"lastOpenTime" encrypted:0 expectClass:objc_opt_class() allowNil:1 errorDescription:&v243];
  v45 = v238;
  if ((v44 & 1) == 0)
  {
    if (v19)
    {
      [v19 setObject:v243 forKeyedSubscript:@"lastOpenTime"];
      v51 = v213;
    }

    else
    {
      v51 = v213;
      if (v209)
      {
        *v209 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v243}];
      }
    }

    v86 = brc_bread_crumbs();
    v87 = brc_default_log();
    if (os_log_type_enabled(v87, 0x90u))
    {
      [CKRecord(BRCSerializationAdditions) deserializeFilename:basename:bounceno:extension:userInfo:error:];
    }

    v223 = 0;
    v224 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v220 = 0;
    v57 = 0;
    v58 = 0;
    v214 = 0;
    v59 = 0;
    v216 = 0;
    v61 = v45;
    v45 = 0;
    goto LABEL_98;
  }

  v237 = 0;
  v46 = [self _deserializeValue:&v237 forKey:@"favoriteRank" encrypted:0 expectClass:objc_opt_class() allowNil:1 errorDescription:&v243];
  v47 = v237;
  if ((v46 & 1) == 0)
  {
    if (v19)
    {
      [v19 setObject:v243 forKeyedSubscript:@"favoriteRank"];
      v51 = v213;
    }

    else
    {
      v51 = v213;
      if (v209)
      {
        *v209 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v243}];
      }
    }

    v90 = brc_bread_crumbs();
    v91 = brc_default_log();
    if (os_log_type_enabled(v91, 0x90u))
    {
      [CKRecord(BRCSerializationAdditions) deserializeFilename:basename:bounceno:extension:userInfo:error:];
    }

    v223 = 0;
    v224 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v220 = 0;
    v58 = 0;
    v214 = 0;
    v59 = 0;
    v216 = 0;
    v61 = v47;
    v57 = 0;
LABEL_98:
    v62 = v222;
    v60 = v210;
    goto LABEL_52;
  }

  v236 = 0;
  v48 = [self _deserializeValue:&v236 forKey:@"finderTags" encrypted:1 expectClass:objc_opt_class() allowNil:1 errorDescription:&v243];
  v49 = v236;
  if ((v48 & 1) == 0)
  {
    obj = v49;
    v208 = v47;
    if (v19)
    {
      [v19 setObject:v243 forKeyedSubscript:@"finderTags"];
      v51 = v213;
    }

    else
    {
      v51 = v213;
      if (v209)
      {
        *v209 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v243}];
      }
    }

    v94 = brc_bread_crumbs();
    v95 = brc_default_log();
    if (os_log_type_enabled(v95, 0x90u))
    {
      [CKRecord(BRCSerializationAdditions) deserializeFilename:basename:bounceno:extension:userInfo:error:];
    }

    v223 = 0;
    v224 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v220 = 0;
    v58 = 0;
    v214 = 0;
    v59 = 0;
    v216 = 0;
    v62 = v222;
    v60 = v210;
    v57 = v208;
    goto LABEL_51;
  }

  v206 = v49;
LABEL_36:
  v235 = 0;
  v63 = [self _deserializeValue:&v235 forKey:@"hiddenExt" encrypted:0 expectClass:objc_opt_class() allowNil:1 errorDescription:&v243];
  v64 = v235;
  v207 = v47;
  if ((v63 & 1) == 0)
  {
    v82 = v64;
    if (v19)
    {
      [v19 setObject:v243 forKeyedSubscript:@"hiddenExt"];
      v51 = v213;
    }

    else
    {
      v51 = v213;
      if (v209)
      {
        *v209 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v243}];
      }
    }

    v84 = brc_bread_crumbs();
    v85 = brc_default_log();
    if (os_log_type_enabled(v85, 0x90u))
    {
      [CKRecord(BRCSerializationAdditions) deserializeFilename:basename:bounceno:extension:userInfo:error:];
    }

    v223 = 0;
    v224 = 0;
    v54 = 0;
    v55 = 0;
    v220 = 0;
    v58 = 0;
    v214 = 0;
    v216 = 0;
    v61 = v82;
    v59 = 0;
    v62 = v222;
    v60 = v210;
    v56 = v206;
    v57 = v207;
    goto LABEL_52;
  }

  v65 = v23;
  v205 = v64;
  v234 = 0;
  v66 = [self _deserializeValue:&v234 forKey:@"xattr" encrypted:0 expectClass:objc_opt_class() allowNil:1 errorDescription:&v243];
  v67 = v234;
  if ((v66 & 1) == 0)
  {
    if (v19)
    {
      [v19 setObject:v243 forKeyedSubscript:@"xattr"];
      v51 = v213;
    }

    else
    {
      v51 = v213;
      if (v209)
      {
        *v209 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v243}];
      }
    }

    v88 = brc_bread_crumbs();
    v89 = brc_default_log();
    if (os_log_type_enabled(v89, 0x90u))
    {
      [CKRecord(BRCSerializationAdditions) deserializeFilename:basename:bounceno:extension:userInfo:error:];
    }

    v223 = 0;
    v224 = 0;
    v55 = 0;
    v220 = 0;
    v58 = 0;
    v214 = 0;
    v216 = 0;
    v61 = v67;
    v54 = 0;
    v62 = v222;
    v60 = v210;
    v56 = v206;
    v57 = v207;
    v59 = v205;
    goto LABEL_52;
  }

  v233 = 0;
  v68 = [self _deserializeValue:&v233 forKey:@"xattrSignature" encrypted:1 expectClass:objc_opt_class() allowNil:1 errorDescription:&v243];
  v202 = v67;
  v203 = v233;
  if ((v68 & 1) == 0)
  {
    if (v19)
    {
      [v19 setObject:v243 forKeyedSubscript:@"xattrSignature"];
      v51 = v213;
    }

    else
    {
      v51 = v213;
      if (v209)
      {
        *v209 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v243}];
      }
    }

    v92 = brc_bread_crumbs();
    v93 = brc_default_log();
    if (os_log_type_enabled(v93, 0x90u))
    {
      [CKRecord(BRCSerializationAdditions) deserializeFilename:basename:bounceno:extension:userInfo:error:];
    }

    v223 = 0;
    v224 = 0;
    v220 = 0;
    v58 = 0;
    v214 = 0;
    v216 = 0;
    v61 = v203;
    v55 = 0;
    goto LABEL_125;
  }

  v232 = 0;
  v69 = [self _deserializeValue:&v232 forKey:@"restorePath" encrypted:1 expectClass:objc_opt_class() allowNil:1 errorDescription:&v243];
  v224 = v232;
  if ((v69 & 1) == 0)
  {
    if (v19)
    {
      [v19 setObject:v243 forKeyedSubscript:@"restorePath"];
      v51 = v213;
    }

    else
    {
      v51 = v213;
      if (v209)
      {
        *v209 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v243}];
      }
    }

    v55 = v203;
    v97 = brc_bread_crumbs();
    v98 = brc_default_log();
    if (os_log_type_enabled(v98, 0x90u))
    {
      [CKRecord(BRCSerializationAdditions) deserializeFilename:basename:bounceno:extension:userInfo:error:];
    }

    v220 = 0;
    v58 = 0;
    v214 = 0;
    v216 = 0;
    v61 = v224;
    v223 = 0;
    v224 = 0;
    goto LABEL_125;
  }

  v231 = 0;
  v70 = [self _deserializeValue:&v231 forKey:@"restoreParent" encrypted:0 expectClass:objc_opt_class() allowNil:1 errorDescription:&v243];
  v71 = v231;
  if ((v70 & 1) == 0)
  {
    v96 = v71;
    if (v19)
    {
      [v19 setObject:v243 forKeyedSubscript:@"restoreParent"];
      v51 = v213;
    }

    else
    {
      v51 = v213;
      if (v209)
      {
        *v209 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v243}];
      }
    }

    v55 = v203;
    v99 = brc_bread_crumbs();
    v100 = brc_default_log();
    if (os_log_type_enabled(v100, 0x90u))
    {
      [CKRecord(BRCSerializationAdditions) deserializeFilename:basename:bounceno:extension:userInfo:error:];
    }

    v223 = 0;
    v58 = 0;
    v214 = 0;
    v216 = 0;
    v61 = v96;
    v220 = 0;
LABEL_125:
    v62 = v222;
LABEL_126:
    v60 = v210;
    v56 = v206;
    v57 = v207;
    v59 = v205;
    v54 = v202;
    goto LABEL_52;
  }

  v220 = v71;
  v230 = 0;
  v72 = [self _deserializeValue:&v230 forKey:@"countMetrics" encrypted:0 expectClass:objc_opt_class() allowNil:1 errorDescription:&v243];
  v223 = v230;
  if ((v72 & 1) == 0)
  {
    v62 = v222;
    if (v19)
    {
      [v19 setObject:v243 forKeyedSubscript:@"countMetrics"];
      v51 = v213;
    }

    else
    {
      v51 = v213;
      if (v209)
      {
        *v209 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v243}];
      }
    }

    v55 = v203;
    v101 = brc_bread_crumbs();
    v102 = brc_default_log();
    if (os_log_type_enabled(v102, 0x90u))
    {
      [CKRecord(BRCSerializationAdditions) deserializeFilename:basename:bounceno:extension:userInfo:error:];
    }

    v58 = 0;
    v214 = 0;
    v216 = 0;
    v61 = v223;
    v223 = 0;
    goto LABEL_126;
  }

  signature = v203;
  if (v203)
  {
    v74 = 0x277CCA000uLL;
  }

  else
  {
    v74 = 0x277CCA000;
    if (v67)
    {
      signature = [v67 signature];
    }
  }

  v204 = signature;
  v201 = v65;
  if (!v210)
  {
    v103 = brc_bread_crumbs();
    v104 = brc_default_log();
    if (os_log_type_enabled(v104, OS_LOG_TYPE_FAULT))
    {
      [CKRecord(BRCSerializationAdditions) deserializeStatInfo:serverMetrics:itemID:session:error:];
    }

    goto LABEL_139;
  }

  if (BRCIsBusyDate([v210 longLongValue]))
  {
    v103 = brc_bread_crumbs();
    v104 = brc_default_log();
    if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v245 = v222;
      v246 = 2112;
      v247 = v103;
      _os_log_impl(&dword_223E7A000, v104, OS_LOG_TYPE_DEFAULT, "[WARNING] Ignoring Finder busy date on %@%@", buf, 0x16u);
    }

LABEL_139:

    v105 = *(v74 + 2992);
    creationDate = [self creationDate];
    [creationDate timeIntervalSince1970];
    if (!v107)
    {
      time(0);
    }

    v108 = [v105 numberWithUnsignedLongLong:?];

    v210 = v108;
  }

  if (v215)
  {
    v109 = 0;
    v110 = 0;
    goto LABEL_144;
  }

  v229 = 0;
  v117 = [self _deserializeValue:&v229 forKey:@"writable" encrypted:0 expectClass:objc_opt_class() allowNil:1 errorDescription:&v243];
  v110 = v229;
  if (v117)
  {
    v228 = 0;
    v118 = [self _deserializeValue:&v228 forKey:@"executable" encrypted:0 expectClass:objc_opt_class() allowNil:1 errorDescription:&v243];
    v119 = v228;
    if ((v118 & 1) == 0)
    {
      obj = v119;
      if (v19)
      {
        v127 = v19;
        v57 = v47;
        v62 = v222;
        [v127 setObject:v243 forKeyedSubscript:@"executable"];
        v51 = v213;
      }

      else
      {
        v57 = v47;
        v62 = v222;
        v51 = v213;
        if (v209)
        {
          *v209 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v243}];
        }
      }

      v214 = v110;
      v180 = brc_bread_crumbs();
      v181 = brc_default_log();
      if (os_log_type_enabled(v181, 0x90u))
      {
        [CKRecord(BRCSerializationAdditions) deserializeFilename:basename:bounceno:extension:userInfo:error:];
      }

      v58 = 0;
      v216 = 0;
      v60 = v210;
      goto LABEL_225;
    }

    v109 = v119;
LABEL_144:
    v111 = [v19 count];
    v112 = v19;
    v113 = v206;
    v214 = v110;
    if (v111)
    {
      v61 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CFACB0] code:1001 userInfo:v112];
      if (v61)
      {
        v114 = v61;
        v115 = brc_bread_crumbs();
        v116 = brc_default_log();
        if (os_log_type_enabled(v116, 0x90u))
        {
          v193 = "(passed to caller)";
          *buf = 136315906;
          v245 = "[CKRecord(BRCSerializationAdditions) deserializeStatInfo:serverMetrics:itemID:session:error:]";
          v246 = 2080;
          if (!v209)
          {
            v193 = "(ignored by caller)";
          }

          v247 = v193;
          v248 = 2112;
          v249 = v114;
          v250 = 2112;
          v251 = v115;
          _os_log_error_impl(&dword_223E7A000, v116, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
        }

        v61 = v114;
      }

      v58 = v109;
      v57 = v47;
      if (v209)
      {
        v61 = v61;
        v216 = 0;
        *v209 = v61;
LABEL_174:
        v51 = v213;
        v60 = v210;
        v59 = v205;
        v56 = v206;
        v54 = v202;
        v55 = v204;
LABEL_34:
        v62 = v222;
        goto LABEL_52;
      }

      goto LABEL_173;
    }

    v200 = v109;
    if (v213)
    {
      recordID8 = [v213 recordID];
      [recordID8 zoneID];
      v123 = v122 = v110;
      recordID9 = [self recordID];
      zoneID3 = [recordID9 zoneID];
      v217 = [v123 isEqual:zoneID3];

      v110 = v122;
      v113 = v206;
      v109 = v200;

      if ((v217 & 1) == 0)
      {
        v131 = brc_bread_crumbs();
        v132 = brc_default_log();
        if (os_log_type_enabled(v132, OS_LOG_TYPE_FAULT))
        {
          recordType2 = [self recordType];
          recordID10 = [v213 recordID];
          zoneID4 = [recordID10 zoneID];
          recordID11 = [self recordID];
          zoneID5 = [recordID11 zoneID];
          *buf = 138413058;
          v245 = recordType2;
          v246 = 2112;
          v247 = zoneID4;
          v248 = 2112;
          v249 = zoneID5;
          v250 = 2112;
          v251 = v131;
          _os_log_fault_impl(&dword_223E7A000, v132, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: %@ parent ref zoneID %@ must be equal to record's zoneID %@!%@", buf, 0x2Au);
        }

        v133 = MEMORY[0x277CCA9B8];
        v134 = *MEMORY[0x277CFACB0];
        recordID12 = [self recordID];
        zoneID6 = [recordID12 zoneID];
        recordID13 = [v213 recordID];
        zoneID7 = [recordID13 zoneID];
        v139 = [v133 br_errorWithDomain:v134 code:1005 description:{@"Records zoneID %@ must be equal to parents zoneID %@", zoneID6, zoneID7}];

        if (v139)
        {
          v140 = brc_bread_crumbs();
          v141 = brc_default_log();
          if (os_log_type_enabled(v141, 0x90u))
          {
            v198 = "(passed to caller)";
            *buf = 136315906;
            v245 = "[CKRecord(BRCSerializationAdditions) deserializeStatInfo:serverMetrics:itemID:session:error:]";
            v246 = 2080;
            if (!v209)
            {
              v198 = "(ignored by caller)";
            }

            v247 = v198;
            v248 = 2112;
            v249 = v139;
            v250 = 2112;
            v251 = v140;
            _os_log_error_impl(&dword_223E7A000, v141, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
          }
        }

        v58 = v200;
        v57 = v47;
        v61 = v139;
        if (v209)
        {
          v142 = v139;
          v61 = v139;
          v216 = 0;
          *v209 = v139;
          goto LABEL_174;
        }

LABEL_173:
        v216 = 0;
        goto LABEL_174;
      }
    }

    obj = objc_opt_new();
    [obj setType:v201];
    if ((v201 | 4) == 4)
    {
      v126 = 3;
    }

    else
    {
      bOOLValue = [v110 BOOLValue];
      if ([v109 BOOLValue])
      {
        v144 = 2;
      }

      else
      {
        v144 = 0;
      }

      v126 = v144 | bOOLValue;
    }

    [obj setMode:v126];
    [obj setLogicalName:v242];
    v199 = a3;
    if (v213)
    {
      if ([v222 isDocumentsFolder])
      {
        v145 = [BRCItemID alloc];
        appLibraryRowID = [v222 appLibraryRowID];
        zoneAppRetriever = [(BRCItemID *)v145 _initAsLibraryRootWithAppLibraryRowID:appLibraryRowID];
        v148 = obj;
        [obj setParentID:zoneAppRetriever];
      }

      else
      {
        appLibraryRowID = [v213 recordID];
        zoneAppRetriever = [v221 zoneAppRetriever];
        v155 = [appLibraryRowID brc_itemIDWithZoneAppRetriever:zoneAppRetriever];
        v148 = obj;
        [obj setParentID:v155];
      }
    }

    else
    {
      v149 = objc_alloc(MEMORY[0x277CFAE60]);
      recordID14 = [self recordID];
      zoneID8 = [recordID14 zoneID];
      appLibraryRowID = [v149 initWithRecordZoneID:zoneID8];

      zoneAppRetriever = [v221 sharedClientZoneByMangledID:appLibraryRowID];
      v152 = [BRCItemID alloc];
      dbRowID = [zoneAppRetriever dbRowID];
      v154 = [(BRCItemID *)v152 _initAsZoneRootWithZoneRowID:dbRowID];
      v148 = obj;
      [obj setParentID:v154];
    }

    [v148 setBirthtime:{objc_msgSend(v210, "longLongValue")}];
    [v148 setLastUsedTime:{objc_msgSend(v45, "longLongValue")}];
    [v148 setFavoriteRank:{objc_msgSend(v47, "longLongValue")}];
    [v148 setHiddenExt:{objc_msgSend(v205, "BOOLValue")}];
    if ([v113 length])
    {
      [v148 setFinderTags:v113];
      v156 = v202;
    }

    else
    {
      v227 = 0;
      v157 = [self _deserializeValue:&v227 forKey:@"ftags" encrypted:0 expectClass:objc_opt_class() allowNil:1 errorDescription:&v243];
      v158 = v227;
      recordName5 = v158;
      if ((v157 & 1) == 0)
      {
        if (v225)
        {
          [v225 setObject:v243 forKeyedSubscript:@"ftags"];
        }

        else if (v209)
        {
          *v209 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v243}];
        }

        v175 = brc_bread_crumbs();
        v192 = brc_default_log();
        v216 = 0;
        if (os_log_type_enabled(v192, 0x90u))
        {
          [CKRecord(BRCSerializationAdditions) deserializeFilename:basename:bounceno:extension:userInfo:error:];
          v216 = 0;
        }

        v62 = v222;
        v58 = v200;
        goto LABEL_224;
      }

      if ([v158 length])
      {
        [obj setFinderTags:recordName5];
      }

      v156 = v202;
      v148 = obj;
    }

    v160 = [[BRFieldCKInfo alloc] initWithRecord:self];
    [v148 setCkInfo:v160];

    [v148 setXattrSignature:v204];
    fileURL = [v156 fileURL];

    if (fileURL)
    {
      xattrStager = [v221 xattrStager];
      fileURL2 = [v156 fileURL];
      [xattrStager saveXattrAtURL:fileURL2 forSignature:v204 error:0];
    }

    if ([v224 length])
    {
      v164 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v224 encoding:4];
      v165 = obj;
      [obj setTrashPutBackPath:v164];
    }

    else
    {
      v165 = obj;
      [obj setTrashPutBackPath:0];
    }

    recordID15 = [v220 recordID];
    zoneAppRetriever2 = [v221 zoneAppRetriever];
    v168 = [recordID15 brc_itemIDWithZoneAppRetriever:zoneAppRetriever2];
    [v165 setTrashPutBackParentID:v168];

    creatorUserRecordID = [self creatorUserRecordID];
    recordName5 = [creatorUserRecordID recordName];

    cachedCurrentUserRecordName = [v221 cachedCurrentUserRecordName];
    v226 = 0;
    v171 = [self brc_lastModifiedUserRecordNameWithCurrentUserRecordName:cachedCurrentUserRecordName personNameComponents:&v226];
    v172 = v226;

    if (([v171 isEqualToString:recordName5]& 1) == 0)
    {

      v172 = 0;
    }

    serverReadWriteDatabaseFacade = [v221 serverReadWriteDatabaseFacade];
    v174 = [serverReadWriteDatabaseFacade getOrCreateUserKeyForOwnerName:recordName5];
    [obj setCreatorRowID:v174];

    v175 = v172;
    if (!v172)
    {
LABEL_215:
      v186 = objc_alloc_init(MEMORY[0x277CFAEC0]);
      if ([v223 count] >= 4)
      {
        v187 = [v223 objectAtIndexedSubscript:0];
        [v186 setQuotaUsed:v187];

        v188 = [v223 objectAtIndexedSubscript:1];
        [v186 setRecursiveChildCount:v188];

        v189 = [v223 objectAtIndexedSubscript:2];
        [v186 setSharedByMeRecursiveCount:v189];

        v190 = [v223 objectAtIndexedSubscript:3];
        [v186 setSharedAliasRecursiveCount:v190];
      }

      if ([v223 count] >= 5)
      {
        v191 = [v223 objectAtIndexedSubscript:4];
        [v186 setChildCount:v191];
      }

      v62 = v222;
      if (v199)
      {
        objc_storeStrong(v199, obj);
      }

      v192 = v171;
      if (a4)
      {
        objc_storeStrong(a4, v186);
      }

      v58 = v200;

      v216 = 1;
LABEL_224:

      v51 = v213;
      v60 = v210;
      v57 = v207;
LABEL_225:
      v59 = v205;
      v56 = v206;
      v54 = v202;
      v55 = v204;
      goto LABEL_51;
    }

    serverReadWriteDatabaseFacade2 = [v221 serverReadWriteDatabaseFacade];
    v177 = [serverReadWriteDatabaseFacade2 userIdentityForName:recordName5];
    v178 = v177;
    if (v177)
    {
      v179 = v177;
    }

    else
    {
      v179 = objc_alloc_init(BRFieldUserIdentity);
    }

    v182 = v179;

    nameComponents = [(BRFieldUserIdentity *)v182 nameComponents];
    if (nameComponents)
    {
      serverDB2 = nameComponents;
      nameComponents2 = [(BRFieldUserIdentity *)v182 nameComponents];
      if (([nameComponents2 br_shouldOverwriteExistingName] & 1) == 0)
      {

        goto LABEL_213;
      }

      br_shouldOverwriteExistingName = [v175 br_shouldOverwriteExistingName];

      if (br_shouldOverwriteExistingName)
      {
LABEL_214:

        goto LABEL_215;
      }
    }

    [(BRFieldUserIdentity *)v182 setNameComponents:v175];
    serverDB2 = [v221 serverDB];
    [serverDB2 execute:{@"UPDATE users SET user_plist = %@ WHERE user_name = %@", v182, recordName5}];
LABEL_213:

    goto LABEL_214;
  }

  if (v19)
  {
    v120 = v19;
    v57 = v47;
    v62 = v222;
    [v120 setObject:v243 forKeyedSubscript:@"writable"];
  }

  else
  {
    v57 = v47;
    v62 = v222;
    if (v209)
    {
      *v209 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v243}];
    }
  }

  v128 = v110;
  v129 = brc_bread_crumbs();
  v130 = brc_default_log();
  if (os_log_type_enabled(v130, 0x90u))
  {
    [CKRecord(BRCSerializationAdditions) deserializeFilename:basename:bounceno:extension:userInfo:error:];
  }

  v58 = 0;
  v216 = 0;
  v61 = v128;
  v214 = 0;
  v60 = v210;
  v59 = v205;
  v56 = v206;
  v54 = v202;
  v55 = v204;
  v51 = v213;
LABEL_52:

  return v216;
}

- (uint64_t)deserializeSymlinkTarget:()BRCSerializationAdditions error:
{
  v16 = 0;
  v17 = 0;
  v6 = [self _deserializeValue:&v16 forKey:@"targetPath" encrypted:1 expectClass:objc_opt_class() allowNil:0 errorDescription:&v17];
  v7 = v16;
  v8 = v7;
  if ((v6 & 1) == 0)
  {
    if (a4)
    {
      *a4 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v17}];
    }

    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, 0x90u))
    {
      [CKRecord(BRCSerializationAdditions) deserializeFilename:basename:bounceno:extension:userInfo:error:];
    }

    v10 = v8;
    v8 = 0;
    goto LABEL_10;
  }

  if (a3)
  {
    if (v7)
    {
      v9 = MEMORY[0x277CCACA8];
      v10 = v7;
      v11 = [[v9 alloc] initWithData:v10 encoding:4];
      v12 = *a3;
      *a3 = v11;

      v8 = v10;
    }

    else
    {
      v10 = *a3;
      *a3 = 0;
    }

LABEL_10:
  }

  return v6;
}

- (uint64_t)_deserializeModifiedTime:()BRCSerializationAdditions size:hasExactSize:outOfBandUpload:userInfo:error:
{
  v13 = a7;
  v35 = 0;
  v36 = 0;
  v14 = [self _deserializeValue:&v35 forKey:@"exactSize" encrypted:1 expectClass:objc_opt_class() allowNil:1 errorDescription:&v36];
  v15 = v35;
  v16 = v15;
  if ((v14 & 1) == 0)
  {
    if (v13)
    {
      [v13 setObject:v36 forKeyedSubscript:@"exactSize"];
    }

    else if (a8)
    {
      *a8 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v36}];
    }

    v26 = brc_bread_crumbs();
    v27 = brc_default_log();
    if (os_log_type_enabled(v27, 0x90u))
    {
      [CKRecord(BRCSerializationAdditions) deserializeFilename:basename:bounceno:extension:userInfo:error:];
    }

    goto LABEL_22;
  }

  v17 = v15;
  if (!v15)
  {
    v34 = 0;
    v18 = [self _deserializeValue:&v34 forKey:@"size" encrypted:0 expectClass:objc_opt_class() allowNil:a6 errorDescription:&v36];
    v16 = v34;
    if ((v18 & 1) == 0)
    {
      if (v13)
      {
        [v13 setObject:v36 forKeyedSubscript:@"size"];
      }

      else if (a8)
      {
        *a8 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v36}];
      }

      v26 = brc_bread_crumbs();
      v27 = brc_default_log();
      if (os_log_type_enabled(v27, 0x90u))
      {
        [CKRecord(BRCSerializationAdditions) deserializeFilename:basename:bounceno:extension:userInfo:error:];
      }

LABEL_22:

      v21 = 0;
      v16 = 0;
LABEL_30:
      v25 = 0;
      goto LABEL_31;
    }
  }

  v33 = 0;
  v19 = [self _deserializeValue:&v33 forKey:@"exactMtime" encrypted:1 expectClass:objc_opt_class() allowNil:1 errorDescription:&v36];
  v20 = v33;
  v21 = v20;
  if ((v19 & 1) == 0)
  {
    if (v13)
    {
      [v13 setObject:v36 forKeyedSubscript:@"exactMtime"];
    }

    else if (a8)
    {
      *a8 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v36}];
    }

    v28 = brc_bread_crumbs();
    v29 = brc_default_log();
    if (os_log_type_enabled(v29, 0x90u))
    {
      [CKRecord(BRCSerializationAdditions) deserializeFilename:basename:bounceno:extension:userInfo:error:];
    }

    goto LABEL_29;
  }

  if (!v20)
  {
    v32 = 0;
    v22 = [self _deserializeValue:&v32 forKey:@"mtime" encrypted:0 expectClass:objc_opt_class() allowNil:1 errorDescription:&v36];
    v21 = v32;
    if ((v22 & 1) == 0)
    {
      if (v13)
      {
        [v13 setObject:v36 forKeyedSubscript:@"mtime"];
      }

      else if (a8)
      {
        *a8 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v36}];
      }

      v28 = brc_bread_crumbs();
      v29 = brc_default_log();
      if (os_log_type_enabled(v29, 0x90u))
      {
        [CKRecord(BRCSerializationAdditions) deserializeFilename:basename:bounceno:extension:userInfo:error:];
      }

LABEL_29:

      v21 = 0;
      goto LABEL_30;
    }
  }

  if (a3)
  {
    v23 = v21;
    *a3 = v21;
  }

  if (a4)
  {
    v24 = v16;
    *a4 = v16;
  }

  if (a5)
  {
    *a5 = v17 != 0;
  }

  v25 = 1;
LABEL_31:

  return v25;
}

- (uint64_t)deserializeVersion:()BRCSerializationAdditions fakeStatInfo:contentBoundaryKey:clientZone:outOfBandUpload:error:
{
  v171 = *MEMORY[0x277D85DE8];
  v14 = a6;
  session = [v14 session];
  dictionary = 0;
  v160 = 0;
  if (!a3)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  v158 = 0;
  v159 = 0;
  v156 = 0;
  v157 = 0;
  v155 = 0;
  [self deserializeFilename:&v159 basename:&v158 bounceno:&v156 extension:&v157 userInfo:dictionary error:a8];
  v153 = 0;
  v154 = 0;
  v17 = [self _deserializeModifiedTime:&v154 size:&v153 hasExactSize:&v155 outOfBandUpload:a7 userInfo:dictionary error:a8];
  v142 = v154;
  v141 = v153;
  if (v17)
  {
    v138 = session;
    recordID = [self recordID];
    recordName = [recordID recordName];
    v20 = [recordName hasPrefix:@"finderBookmark/"];

    if (v20)
    {
      v152 = 0;
      v21 = [self _deserializeValue:&v152 forKey:@"bookmarkContent" encrypted:0 expectClass:objc_opt_class() allowNil:1 errorDescription:&v160];
      v22 = v152;
      if ((v21 & 1) == 0)
      {
        v137 = v22;
        if (dictionary)
        {
          [dictionary setObject:v160 forKeyedSubscript:@"bookmarkContent"];
          session = v138;
        }

        else
        {
          session = v138;
          if (a8)
          {
            *a8 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v160}];
          }
        }

        v41 = brc_bread_crumbs();
        v42 = brc_default_log();
        if (os_log_type_enabled(&v42->super, 0x90u))
        {
          [CKRecord(BRCSerializationAdditions) deserializeFilename:basename:bounceno:extension:userInfo:error:];
        }

        signature = 0;
        v29 = 0;
        v140 = 0;
        v24 = 0;
        v136 = 0;
        v34 = 0;
        goto LABEL_36;
      }

      v140 = 0;
      v135 = v22;
      v136 = 0;
    }

    else
    {
      v151 = 0;
      v36 = [self _deserializeValue:&v151 forKey:@"fileContent" encrypted:0 expectClass:objc_opt_class() allowNil:1 errorDescription:&v160];
      v135 = v151;
      if ((v36 & 1) == 0)
      {
        if (dictionary)
        {
          [dictionary setObject:v160 forKeyedSubscript:@"fileContent"];
          session = v138;
          v40 = v135;
        }

        else
        {
          session = v138;
          v40 = v135;
          if (a8)
          {
            *a8 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v160}];
          }
        }

        v41 = brc_bread_crumbs();
        v42 = brc_default_log();
        if (os_log_type_enabled(&v42->super, 0x90u))
        {
          [CKRecord(BRCSerializationAdditions) deserializeFilename:basename:bounceno:extension:userInfo:error:];
        }

        signature = 0;
        v29 = 0;
        v140 = 0;
        v24 = 0;
        v136 = 0;
        v137 = v40;
        v35 = 0;
        v34 = 0;
        goto LABEL_75;
      }

      v150 = 0;
      v37 = [self _deserializeValue:&v150 forKey:@"pkgSignature" encrypted:0 expectClass:objc_opt_class() allowNil:1 errorDescription:&v160];
      v140 = v150;
      if ((v37 & 1) == 0)
      {
        if (dictionary)
        {
          [dictionary setObject:v160 forKeyedSubscript:@"pkgSignature"];
          session = v138;
          v34 = v135;
        }

        else
        {
          session = v138;
          v34 = v135;
          if (a8)
          {
            *a8 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v160}];
          }
        }

        v41 = brc_bread_crumbs();
        v42 = brc_default_log();
        if (os_log_type_enabled(&v42->super, 0x90u))
        {
          [CKRecord(BRCSerializationAdditions) deserializeFilename:basename:bounceno:extension:userInfo:error:];
        }

        signature = 0;
        v29 = 0;
        v24 = 0;
        v35 = 0;
        v136 = 0;
        v137 = v140;
        v140 = 0;
        goto LABEL_75;
      }

      v149 = 0;
      v38 = [self _deserializeValue:&v149 forKey:@"thumb1024" encrypted:0 expectClass:objc_opt_class() allowNil:1 errorDescription:&v160];
      v39 = v149;
      if ((v38 & 1) == 0)
      {
        v137 = v39;
        if (dictionary)
        {
          [dictionary setObject:v160 forKeyedSubscript:@"thumb1024"];
          session = v138;
          v34 = v135;
        }

        else
        {
          session = v138;
          v34 = v135;
          if (a8)
          {
            *a8 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v160}];
          }
        }

        v41 = brc_bread_crumbs();
        v42 = brc_default_log();
        if (os_log_type_enabled(&v42->super, 0x90u))
        {
          [CKRecord(BRCSerializationAdditions) deserializeFilename:basename:bounceno:extension:userInfo:error:];
        }

        signature = 0;
        v29 = 0;
        v24 = 0;
        v136 = 0;
        goto LABEL_36;
      }

      v136 = v39;
    }

    v148 = 0;
    v23 = [self _deserializeValue:&v148 forKey:@"xattr" encrypted:0 expectClass:objc_opt_class() allowNil:1 errorDescription:&v160];
    v24 = v148;
    if ((v23 & 1) == 0)
    {
      session = v138;
      if (dictionary)
      {
        [dictionary setObject:v160 forKeyedSubscript:@"xattr"];
        v34 = v135;
      }

      else
      {
        v34 = v135;
        if (a8)
        {
          *a8 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v160}];
        }
      }

      v41 = brc_bread_crumbs();
      v42 = brc_default_log();
      if (os_log_type_enabled(&v42->super, 0x90u))
      {
        [CKRecord(BRCSerializationAdditions) deserializeFilename:basename:bounceno:extension:userInfo:error:];
      }

      signature = 0;
      v29 = 0;
      v35 = 0;
      v137 = v24;
      v24 = 0;
      goto LABEL_75;
    }

    v134 = a4;
    v147 = 0;
    v25 = [self _deserializeValue:&v147 forKey:@"xattrSignature" encrypted:1 expectClass:objc_opt_class() allowNil:1 errorDescription:&v160];
    v26 = v147;
    signature = v26;
    session = v138;
    if ((v25 & 1) == 0)
    {
      if (dictionary)
      {
        [dictionary setObject:v160 forKeyedSubscript:@"xattrSignature"];
        v34 = v135;
      }

      else
      {
        v34 = v135;
        if (a8)
        {
          *a8 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v160}];
        }
      }

      v41 = brc_bread_crumbs();
      v42 = brc_default_log();
      if (os_log_type_enabled(&v42->super, 0x90u))
      {
        [CKRecord(BRCSerializationAdditions) deserializeFilename:basename:bounceno:extension:userInfo:error:];
      }

      v29 = 0;
      v35 = 0;
      v137 = signature;
      signature = 0;
      goto LABEL_75;
    }

    if (!v26 && v24)
    {
      signature = [v24 signature];
    }

    v146 = 0;
    v28 = [self _deserializeValue:&v146 forKey:@"boundaryKey" encrypted:1 expectClass:objc_opt_class() allowNil:1 errorDescription:&v160];
    v29 = v146;
    if ((v28 & 1) == 0)
    {
      if (dictionary)
      {
        [dictionary setObject:v160 forKeyedSubscript:@"boundaryKey"];
        session = v138;
        v34 = v135;
      }

      else
      {
        session = v138;
        v34 = v135;
        if (a8)
        {
          *a8 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v160}];
        }
      }

      v41 = brc_bread_crumbs();
      v42 = brc_default_log();
      if (os_log_type_enabled(&v42->super, 0x90u))
      {
        [CKRecord(BRCSerializationAdditions) deserializeFilename:basename:bounceno:extension:userInfo:error:];
      }

      v35 = 0;
      v137 = v29;
      v29 = 0;
      goto LABEL_75;
    }

    v145 = 0;
    v30 = [self _deserializeValue:&v145 forKey:@"boundaryKeyValidationKey" encrypted:0 expectClass:objc_opt_class() allowNil:1 errorDescription:&v160];
    v137 = v145;
    if ((v30 & 1) == 0)
    {
      if (dictionary)
      {
        [dictionary setObject:v160 forKeyedSubscript:@"boundaryKeyValidationKey"];
        session = v138;
        v34 = v135;
      }

      else
      {
        session = v138;
        v34 = v135;
        if (a8)
        {
          *a8 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v160}];
        }
      }

      v41 = brc_bread_crumbs();
      v42 = brc_default_log();
      if (!os_log_type_enabled(&v42->super, 0x90u))
      {
        goto LABEL_36;
      }

      goto LABEL_159;
    }

    if (v29 && ([v29 brc_truncatedSHA256], v31 = objc_claimAutoreleasedReturnValue(), v125 = objc_msgSend(v31, "isEqualToData:", v137), v31, (v125 & 1) == 0))
    {
      *a5 = [MEMORY[0x277CBEA90] brc_generateBogusKey];
      v126 = brc_bread_crumbs();
      v44 = brc_default_log();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
      {
        [CKRecord(BRCSerializationAdditions) deserializeVersion:fakeStatInfo:contentBoundaryKey:clientZone:outOfBandUpload:error:];
      }

      v127 = objc_alloc(MEMORY[0x277CFAE60]);
      recordID2 = [self recordID];
      zoneID = [recordID2 zoneID];
      v128 = [v127 initWithRecordZoneID:zoneID];

      recordID3 = [self recordID];
      recordName2 = [recordID3 recordName];
      v121 = [AppTelemetryTimeSeriesEvent newEDPKeysMismatchForRecordID:recordName2 mangledID:v128];

      analyticsReporter = [v138 analyticsReporter];
      [analyticsReporter postReportForDefaultSubCategoryWithCategory:8 telemetryTimeEvent:v121];
    }

    else if (!a5)
    {
      goto LABEL_86;
    }

    v48 = v29;
    *a5 = v29;
LABEL_86:
    session = v138;
    if (!v142)
    {
      v143 = brc_bread_crumbs();
      v49 = brc_default_log();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
      {
        recordID4 = [self recordID];
        zoneAppRetriever = [v138 zoneAppRetriever];
        v111 = [recordID4 brc_itemIDWithZoneAppRetriever:zoneAppRetriever];
        uTF8String = [v111 UTF8String];
        *buf = 136315394;
        selfCopy = uTF8String;
        v163 = 2112;
        v164 = v143;
        _os_log_fault_impl(&dword_223E7A000, v49, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: The server should have set an mtime for %s%@", buf, 0x16u);

        session = v138;
      }

      v144 = MEMORY[0x277CCABB0];
      modificationDate = [self modificationDate];
      [modificationDate timeIntervalSince1970];
      if (!v51)
      {
        time(0);
      }

      v142 = [v144 numberWithUnsignedLongLong:?];
    }

    v52 = v135;
    if (v135)
    {
      if ((v155 & 1) == 0)
      {
        unsignedLongLongValue = [v141 unsignedLongLongValue];
        if (unsignedLongLongValue == [v135 size])
        {
          v52 = v135;
        }

        else
        {
          v59 = brc_bread_crumbs();
          v60 = brc_default_log();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
          {
            recordType = [self recordType];
            recordID5 = [self recordID];
            v117 = v59;
            longLongValue = [v141 longLongValue];
            v62 = [v135 size];
            *buf = 138413314;
            selfCopy = recordType;
            v163 = 2112;
            v164 = recordID5;
            v165 = 2048;
            v166 = longLongValue;
            v59 = v117;
            v167 = 2048;
            v168 = v62;
            v169 = 2112;
            v170 = v117;
            _os_log_impl(&dword_223E7A000, v60, OS_LOG_TYPE_DEFAULT, "[WARNING] %@ record %@ has a size inconsistency, %llu != %llu%@", buf, 0x34u);
          }

          v63 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v135, "size")}];

          v141 = v63;
          v52 = v135;
        }
      }

      if (v140)
      {
        v64 = MEMORY[0x277CCACA8];
        recordType2 = [self recordType];
        recordID6 = [self recordID];
        v67 = [v64 stringWithFormat:@"%@ record %@ is both a file and a package", recordType2, recordID6];
        v68 = v160;
        v160 = v67;

        if (dictionary)
        {
          [dictionary setObject:v160 forKeyedSubscript:@"asset+pkg"];
          v34 = v135;
        }

        else
        {
          v34 = v135;
          if (a8)
          {
            *a8 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v160}];
          }
        }

        v41 = brc_bread_crumbs();
        v42 = brc_default_log();
        session = v138;
        if (!os_log_type_enabled(&v42->super, 0x90u))
        {
          goto LABEL_36;
        }

        goto LABEL_159;
      }

      session = v138;
LABEL_106:
      if ([dictionary count])
      {
        v69 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CFACB0] code:1001 userInfo:dictionary];
        if (v69)
        {
          v139 = brc_bread_crumbs();
          v70 = brc_default_log();
          if (os_log_type_enabled(v70, 0x90u))
          {
            v113 = "(passed to caller)";
            *buf = 136315906;
            selfCopy = "[CKRecord(BRCSerializationAdditions) deserializeVersion:fakeStatInfo:contentBoundaryKey:clientZone:outOfBandUpload:error:]";
            v163 = 2080;
            if (!a8)
            {
              v113 = "(ignored by caller)";
            }

            v164 = v113;
            v165 = 2112;
            v166 = v69;
            v167 = 2112;
            v168 = v139;
            _os_log_error_impl(&dword_223E7A000, v70, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
          }
        }

        if (a8)
        {
          v71 = v69;
          *a8 = v69;
        }

        v41 = brc_bread_crumbs();
        v42 = brc_default_log();
        if (os_log_type_enabled(&v42->super, 0x90u))
        {
          *buf = 138412802;
          selfCopy = self;
          v163 = 2112;
          v164 = dictionary;
          v165 = 2112;
          v166 = v41;
          _os_log_error_impl(&dword_223E7A000, &v42->super, 0x90u, "[ERROR] failed deserializing version in %@: %@%@", buf, 0x20u);
        }

        v35 = 0;
      }

      else
      {
        modifiedByDevice = [self modifiedByDevice];

        if (!modifiedByDevice)
        {
          v73 = brc_bread_crumbs();
          v74 = brc_default_log();
          if (os_log_type_enabled(v74, 0x90u))
          {
            [CKRecord(BRCSerializationAdditions) deserializeVersion:fakeStatInfo:contentBoundaryKey:clientZone:outOfBandUpload:error:];
          }

          v52 = v135;
        }

        v41 = objc_opt_new();
        if ([self brc_currentUserOwnsLastEditorDeviceWithSessionContext:session])
        {
          brc_lastEditorDeviceName = [self brc_lastEditorDeviceName];
          [(BRCVersion *)v41 setLastEditorDeviceName:brc_lastEditorDeviceName];

          v52 = v135;
        }

        if ([v159 br_nameIsRepresentableOnHFS])
        {
          [(BRCVersion *)v41 setOriginalPOSIXName:v159];
        }

        else
        {
          v130 = v158;
          v76 = v156;
          v77 = v157;
          v118 = MEMORY[0x277CCACA8];
          v123 = v76;
          stringValue = [v76 stringValue];
          v79 = v118;
          v119 = v77;
          v80 = [v79 br_representableHFSFileNameWithBase:v130 suffix:stringValue extension:v77 makeDotFile:0];
          [(BRCVersion *)v41 setOriginalPOSIXName:v80];

          v81 = brc_bread_crumbs();
          v82 = brc_default_log();
          if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
          {
            v115 = v81;
            v83 = v159;
            originalPOSIXName = [(BRCVersion *)v41 originalPOSIXName];
            *buf = 138412802;
            selfCopy = v83;
            v81 = v115;
            v163 = 2112;
            v164 = originalPOSIXName;
            v165 = 2112;
            v166 = v115;
            _os_log_impl(&dword_223E7A000, v82, OS_LOG_TYPE_DEFAULT, "[WARNING] Server gave us an unrepresentable filename: %@ using %@%@", buf, 0x20u);
          }

          session = v138;
          v52 = v135;
        }

        -[BRCVersion setSize:](v41, "setSize:", [v141 longLongValue]);
        -[BRCVersion setMtime:](v41, "setMtime:", [v142 longLongValue]);
        if (v52)
        {
          signature2 = [v52 signature];
          [(BRCVersion *)v41 setContentSignature:signature2];
        }

        else
        {
          [(BRCVersion *)v41 setContentSignature:v140];
        }

        if (v136)
        {
          signature3 = [v136 signature];
          [(BRCVersion *)v41 setThumbnailSignature:signature3];

          v85 = [v136 size];
        }

        else
        {
          [(BRCVersion *)v41 setThumbnailSignature:0];
          v85 = 0;
        }

        [(BRCVersion *)v41 setThumbnailSize:v85];
        conflictLoserEtags = [self conflictLoserEtags];

        if (conflictLoserEtags)
        {
          v87 = objc_alloc(MEMORY[0x277CBEB98]);
          conflictLoserEtags2 = [self conflictLoserEtags];
          v89 = [v87 initWithArray:conflictLoserEtags2];
          [(BRCVersion *)v41 setConflictLoserEtags:v89];

          session = v138;
        }

        v90 = [[BRFieldCKInfo alloc] initWithRecord:self];
        [(BRCVersion *)v41 setCkInfo:v90];

        [(BRCVersion *)v41 setQuarantineInfo:0];
        [(BRCVersion *)v41 setXattrSignature:signature];
        fileURL = [v24 fileURL];

        if (fileURL)
        {
          xattrStager = [session xattrStager];
          fileURL2 = [v24 fileURL];
          [xattrStager saveXattrAtURL:fileURL2 forSignature:signature error:0];
        }

        if (a3)
        {
          v94 = v41;
          *a3 = v41;
        }

        if (!v134)
        {
          v35 = 1;
          session = v138;
          v34 = v135;
          goto LABEL_76;
        }

        v42 = objc_alloc_init(BRCStatInfo);
        [(BRCStatInfo *)v42 setType:1];
        -[BRCStatInfo setMode:](v42, "setMode:", [self permission] == 1);
        originalPOSIXName2 = [(BRCVersion *)v41 originalPOSIXName];
        [(BRCStatInfo *)v42 setLogicalName:originalPOSIXName2];

        recordID7 = [self recordID];
        recordName3 = [recordID7 recordName];
        v132 = [recordName3 hasPrefix:@"documentContent/"];

        if (v132)
        {
          v98 = [BRCItemID alloc];
          dbRowID = [v14 dbRowID];
          v100 = [(BRCItemID *)v98 _initAsZoneRootWithZoneRowID:dbRowID];
          [(BRCStatInfo *)v42 setParentID:v100];

          creationDate = [self creationDate];
          [creationDate timeIntervalSince1970];
          v103 = v102;
          if (!v102)
          {
            v103 = time(0);
          }

          unsignedLongLongValue2 = [v142 unsignedLongLongValue];
          if (v103 >= unsignedLongLongValue2)
          {
            v105 = unsignedLongLongValue2;
          }

          else
          {
            v105 = v103;
          }

          [(BRCStatInfo *)v42 setBirthtime:v105];
          ckInfo = [(BRCVersion *)v41 ckInfo];
          v107 = [ckInfo copy];
          [(BRCStatInfo *)v42 setCkInfo:v107];

          v35 = 1;
          [(BRCStatInfo *)v42 setHiddenExt:1];
          v108 = v42;
          *v134 = v42;
        }

        else
        {
          v109 = brc_bread_crumbs();
          v110 = brc_default_log();
          if (os_log_type_enabled(v110, OS_LOG_TYPE_FAULT))
          {
            [CKRecord(BRCSerializationAdditions) deserializeVersion:fakeStatInfo:contentBoundaryKey:clientZone:outOfBandUpload:error:];
          }

          v35 = 0;
        }

        session = v138;
      }

      v34 = v135;
LABEL_75:

LABEL_76:
      v32 = v140;
      v33 = v136;
      goto LABEL_77;
    }

    if (v140)
    {
      goto LABEL_106;
    }

    v54 = MEMORY[0x277CCACA8];
    recordType3 = [self recordType];
    recordID8 = [self recordID];
    v57 = [v54 stringWithFormat:@"%@ record %@ is neither a file nor a package", recordType3, recordID8];
    v58 = v160;
    v160 = v57;

    if (dictionary)
    {
      [dictionary setObject:v160 forKeyedSubscript:@"pkg+signature"];
    }

    else if (a8)
    {
      *a8 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v160}];
    }

    v41 = brc_bread_crumbs();
    v42 = brc_default_log();
    session = v138;
    v34 = 0;
    if (!os_log_type_enabled(&v42->super, 0x90u))
    {
      goto LABEL_36;
    }

LABEL_159:
    [CKRecord(BRCSerializationAdditions) deserializeFilename:basename:bounceno:extension:userInfo:error:];
LABEL_36:
    v35 = 0;
    goto LABEL_75;
  }

  signature = 0;
  v29 = 0;
  v32 = 0;
  v24 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
LABEL_77:

  return v35;
}

- (uint64_t)deserializeSideCarInfo:()BRCSerializationAdditions error:
{
  v7 = objc_alloc_init(BRCSideCarInfo);
  v26 = 0;
  v27 = 0;
  v8 = [self _deserializeValue:&v26 forKey:@"lastOpenTime" encrypted:0 expectClass:objc_opt_class() allowNil:1 errorDescription:&v27];
  v9 = v26;
  if ((v8 & 1) == 0)
  {
    if (a4)
    {
      *a4 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v27}];
    }

    v17 = brc_bread_crumbs();
    v18 = brc_default_log();
    if (os_log_type_enabled(v18, 0x90u))
    {
      [CKRecord(BRCSerializationAdditions) deserializeFilename:basename:bounceno:extension:userInfo:error:];
    }

    v9 = 0;
    goto LABEL_15;
  }

  v25 = 0;
  v10 = [self _deserializeValue:&v25 forKey:@"favoriteRank" encrypted:0 expectClass:objc_opt_class() allowNil:1 errorDescription:&v27];
  v11 = v25;
  if ((v10 & 1) == 0)
  {
    if (a4)
    {
      *a4 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v27}];
    }

    v19 = brc_bread_crumbs();
    v20 = brc_default_log();
    if (os_log_type_enabled(v20, 0x90u))
    {
      [CKRecord(BRCSerializationAdditions) deserializeFilename:basename:bounceno:extension:userInfo:error:];
    }

LABEL_15:
    v13 = 0;
    v11 = 0;
LABEL_16:
    v16 = 0;
    goto LABEL_17;
  }

  v24 = 0;
  v12 = [self _deserializeValue:&v24 forKey:@"finderTags" encrypted:1 expectClass:objc_opt_class() allowNil:1 errorDescription:&v27];
  v13 = v24;
  if ((v12 & 1) == 0)
  {
    if (a4)
    {
      *a4 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:1001 description:{@"%@", v27}];
    }

    v22 = brc_bread_crumbs();
    v23 = brc_default_log();
    if (os_log_type_enabled(v23, 0x90u))
    {
      [CKRecord(BRCSerializationAdditions) deserializeFilename:basename:bounceno:extension:userInfo:error:];
    }

    v13 = 0;
    goto LABEL_16;
  }

  v14 = [[BRFieldCKInfo alloc] initWithRecord:self];
  [(BRCSideCarInfo *)v7 setCkInfo:v14];

  -[BRCSideCarInfo setFavoriteRank:](v7, "setFavoriteRank:", [v11 longLongValue]);
  -[BRCSideCarInfo setLastUsedTime:](v7, "setLastUsedTime:", [v9 longLongValue]);
  [(BRCSideCarInfo *)v7 setFinderTags:v13];
  v15 = v7;
  *a3 = v7;
  v16 = 1;
LABEL_17:

  return v16;
}

- (uint64_t)_locateSideCarServerZone:()BRCSerializationAdditions withShareAliasReference:sessionContext:
{
  v8 = a5;
  recordID = [a4 recordID];
  zoneAppRetriever = [v8 zoneAppRetriever];
  v11 = [recordID brc_itemIDWithZoneAppRetriever:zoneAppRetriever error:0];

  if (v11)
  {
    itemFetcher = [v8 itemFetcher];
    v13 = [itemFetcher serverItemByItemID:v11];

    if (v13)
    {
      if (([v13 isBRAlias] & 1) == 0)
      {
        [CKRecord(BRCSerializationAdditions) _locateSideCarServerZone:withShareAliasReference:sessionContext:];
      }

      aliasTargetClientZone = [v13 aliasTargetClientZone];
      serverZone = [aliasTargetClientZone serverZone];
      asSharedZone = [serverZone asSharedZone];

      v17 = asSharedZone;
      *a3 = asSharedZone;
      v18 = asSharedZone != 0;
    }

    else
    {
      recordID2 = [self recordID];
      v18 = [recordID2 locateSideCarServerZone:a3 sessionContext:v8];
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (uint64_t)locateSideCarServerZone:()BRCSerializationAdditions shareRecordName:sessionContext:
{
  v8 = a5;
  v25 = 0;
  v26 = 0;
  v9 = [self _deserializeValue:&v25 forKey:@"shareReference" encrypted:0 expectClass:objc_opt_class() allowNil:0 errorDescription:&v26];
  v10 = v25;
  v11 = v10;
  if (v9)
  {
    recordID = [v10 recordID];
    *a4 = [recordID recordName];
    recordName = [recordID recordName];
    v14 = [recordName hasPrefix:@"shareAlias/"];

    if (v14)
    {
      v15 = [self _locateSideCarServerZone:a3 withShareAliasReference:v11 sessionContext:v8];
    }

    else
    {
      v17 = objc_alloc(MEMORY[0x277CFAE60]);
      zoneID = [recordID zoneID];
      v19 = [v17 initWithRecordZoneID:zoneID];

      zoneAppRetriever = [v8 zoneAppRetriever];
      v21 = [zoneAppRetriever serverZoneByMangledID:v19];
      asSharedZone = [v21 asSharedZone];

      v15 = asSharedZone != 0;
      if (asSharedZone)
      {
        v23 = asSharedZone;
        *a3 = asSharedZone;
      }
    }
  }

  else
  {
    recordID = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, 0x90u))
    {
      [CKRecord(BRCSerializationAdditions) deserializeFilename:basename:bounceno:extension:userInfo:error:];
    }

    v15 = 0;
  }

  return v15;
}

- (void)serializeSystemFields:()BRCSerializationAdditions includeCZMEtag:
{
  [a3 setCKInfoFieldsInRecord:self includeCZMEtag:?];
  v4 = objc_alloc(MEMORY[0x277CFAE60]);
  recordID = [self recordID];
  zoneID = [recordID zoneID];
  v9 = [v4 initWithRecordZoneID:zoneID];

  v7 = [BRCUserDefaults defaultsForMangledID:v9];
  if ([v7 useFailIfOutdatedForResets])
  {
    [self setKnownToServer:1];
    fakeEtagForFailIfOutdated = [v7 fakeEtagForFailIfOutdated];
    if (([fakeEtagForFailIfOutdated isEqualToString:@"none"] & 1) == 0)
    {
      [self setEtag:fakeEtagForFailIfOutdated];
    }
  }
}

- (void)serializeFinderTags:()BRCSerializationAdditions forCreation:
{
  v7 = a3;
  if ([v7 length])
  {
    encryptedValues = [self encryptedValues];
    [encryptedValues setObject:v7 forKeyedSubscript:@"finderTags"];
  }

  else if ((a4 & 1) == 0)
  {
    [self setObject:0 forKeyedSubscript:@"finderTags"];
  }
}

- (void)serializeContentBoundaryKey:()BRCSerializationAdditions
{
  v6 = a3;
  if ([v6 length])
  {
    encryptedValues = [self encryptedValues];
    [encryptedValues setObject:v6 forKeyedSubscript:@"boundaryKey"];

    brc_truncatedSHA256 = [v6 brc_truncatedSHA256];
    [self setObject:brc_truncatedSHA256 forKeyedSubscript:@"boundaryKeyValidationKey"];
  }
}

- (void)seralizeBirthtime:()BRCSerializationAdditions
{
  v5 = [BRCUserDefaults defaultsForMangledID:0];
  shouldSendRoundedTimestamps = [v5 shouldSendRoundedTimestamps];

  if (shouldSendRoundedTimestamps)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:BRCRoundedTimestamp(a3)];
    [self setObject:v7 forKeyedSubscript:@"birthtime"];
  }

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  encryptedValues = [self encryptedValues];
  [encryptedValues setObject:v9 forKeyedSubscript:@"exactBirthtime"];
}

- (void)serializeSpecialIdentityForFilename:()BRCSerializationAdditions parentIDIsCloudDocsRoot:parentIDisDocumentsFolder:
{
  v9 = a3;
  [self setObject:0 forKeyedSubscript:@"specialDirectoryIdentity"];
  if (a4)
  {
    if ([v9 isEqualToString:*MEMORY[0x277CFAD80]])
    {
      v8 = &unk_2837B0178;
LABEL_11:
      [self setObject:v8 forKeyedSubscript:@"specialDirectoryIdentity"];
      goto LABEL_12;
    }

    if ([v9 isEqualToString:*MEMORY[0x277CFAD90]])
    {
      v8 = &unk_2837B0190;
      goto LABEL_11;
    }

    if ([v9 isEqualToString:*MEMORY[0x277CFADB8]])
    {
LABEL_10:
      v8 = &unk_2837B01A8;
      goto LABEL_11;
    }

    if ([v9 isEqualToString:*MEMORY[0x277CFAD98]])
    {
      v8 = &unk_2837B01C0;
      goto LABEL_11;
    }
  }

  else if (a5 && [v9 isEqualToString:*MEMORY[0x277CFADB8]])
  {
    goto LABEL_10;
  }

LABEL_12:
}

- (void)serializeFilename:()BRCSerializationAdditions forCreation:setExtension:inSharedAlias:basehashSaltIfNotShareAlias:parentIDIsCloudDocsRoot:parentIDIsDocumentsFolder:
{
  v15 = a3;
  v16 = a7;
  v46 = 0;
  v47 = 0;
  v17 = [v15 br_stringByDeletingPathBounceNo:&v47 andPathExtension:&v46];
  v18 = v46;
  if (v17)
  {
    v45 = a8;
    v19 = [v17 dataUsingEncoding:4];
    encryptedValues = [self encryptedValues];
    [encryptedValues setObject:v19 forKeyedSubscript:@"encryptedBasename"];

    if (a6)
    {
      goto LABEL_23;
    }

    v21 = [BRCUserDefaults defaultsForMangledID:0];
    supportsEnhancedDrivePrivacy = [v21 supportsEnhancedDrivePrivacy];

    if (!supportsEnhancedDrivePrivacy)
    {
      brc_SHA256 = [v17 brc_SHA256];
      [self setObject:brc_SHA256 forKeyedSubscript:@"basehash"];

      goto LABEL_23;
    }

    if (v16)
    {
      brc_generateBogusKey = [MEMORY[0x277CBEA90] brc_generateBogusKey];
      v24 = [v16 isEqualToData:brc_generateBogusKey];

      if (v24)
      {
        pluginFields = [self pluginFields];
        if (pluginFields)
        {
          [self pluginFields];
          v26 = v44 = pluginFields;
          v27 = [v26 mutableCopy];

          pluginFields = v44;
        }

        else
        {
          v27 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
        }

        [v27 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"br_bougusSaltingKey"];
        [self setPluginFields:v27];
      }

      v38 = [v17 brc_SHA256WithSalt:v16];
      [self setObject:v38 forKeyedSubscript:@"basehash"];

      recordType = [self recordType];
      v40 = [recordType isEqualToString:@"structure"];

      if (v40)
      {
        brc_truncatedSHA256 = [v16 brc_truncatedSHA256];
        [self setObject:brc_truncatedSHA256 forKeyedSubscript:@"basehashSaltValidationKey"];

        [self serializeSpecialIdentityForFilename:v15 parentIDIsCloudDocsRoot:v45 parentIDisDocumentsFolder:a9];
      }

      goto LABEL_23;
    }

    brc_SHA2562 = [v17 brc_SHA256];
    [self setObject:brc_SHA2562 forKeyedSubscript:@"basehash"];

    recordType2 = [self recordType];
    v37 = [recordType2 isEqualToString:@"structure"];

    if (!v37)
    {
LABEL_23:

      if (v47 < 2)
      {
        if ((a4 & 1) == 0)
        {
          [self setObject:0 forKeyedSubscript:@"bounceNo"];
        }
      }

      else
      {
        v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
        [self setObject:v42 forKeyedSubscript:@"bounceNo"];
      }

      if (v18)
      {
        v43 = 0;
      }

      else
      {
        v43 = a4;
      }

      if (a5 && (v43 & 1) == 0)
      {
        [self setObject:v18 forKeyedSubscript:@"extension"];
      }

      goto LABEL_33;
    }

    [self setObject:0 forKeyedSubscript:@"basehashSaltValidationKey"];
    v29 = @"specialDirectoryIdentity";
    selfCopy = self;
LABEL_10:
    [selfCopy setObject:0 forKeyedSubscript:v29];
    goto LABEL_23;
  }

  if (a6)
  {
    selfCopy = [self encryptedValues];
    v19 = selfCopy;
    v29 = @"encryptedBasename";
    goto LABEL_10;
  }

  v30 = brc_bread_crumbs();
  v31 = brc_default_log();
  if (os_log_type_enabled(v31, 0x90u))
  {
    [CKRecord(BRCSerializationAdditions) serializeFilename:forCreation:setExtension:inSharedAlias:basehashSaltIfNotShareAlias:parentIDIsCloudDocsRoot:parentIDIsDocumentsFolder:];
  }

  v32 = brc_bread_crumbs();
  v33 = brc_default_log();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
  {
    [CKRecord(BRCSerializationAdditions) serializeFilename:forCreation:setExtension:inSharedAlias:basehashSaltIfNotShareAlias:parentIDIsCloudDocsRoot:parentIDIsDocumentsFolder:];
  }

LABEL_33:
}

- (BOOL)_verifyValueForRecordWithNumber:()BRCSerializationAdditions key:item:error:
{
  v34 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  unsignedLongLongValue = [v10 unsignedLongLongValue];
  if (unsignedLongLongValue < 0)
  {
    v27 = a6;
    session = [v12 session];
    analyticsReporter = [session analyticsReporter];
    recordID = [self recordID];
    recordName = [recordID recordName];
    clientZone = [v12 clientZone];
    mangledID = [clientZone mangledID];
    v17 = MEMORY[0x277CCABB0];
    [v12 clientZone];
    v19 = v18 = v11;
    v20 = [v17 numberWithBool:{objc_msgSend(v19, "enhancedDrivePrivacyEnabled")}];
    [analyticsReporter aggregateReportForAppTelemetryIdentifier:41 itemID:recordName zoneMangledID:mangledID enhancedDrivePrivacyEnabled:v20 error:0];

    v11 = v18;
    v21 = brc_bread_crumbs();
    v22 = brc_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412802;
      v29 = v11;
      v30 = 2112;
      v31 = v10;
      v32 = 2112;
      v33 = v21;
      _os_log_fault_impl(&dword_223E7A000, v22, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: %@ has negative value %@!%@", buf, 0x20u);
    }

    if (v27)
    {
      *v27 = [MEMORY[0x277CCA9B8] brc_errorInvalidParameter:v11 value:v10];
    }
  }

  return unsignedLongLongValue >= 0;
}

- (uint64_t)serializeStatInfo:()BRCSerializationAdditions diffs:stageID:deadInServerTruth:shouldPCSChainStatus:basehashSaltGetter:childBasehashSaltGetter:error:
{
  v126 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v114 = a5;
  v116 = a8;
  v115 = a9;
  v119 = [v15 st];
  HIDWORD(v111) = a6;
  if (a6)
  {
    v118 = 1;
  }

  else
  {
    ckInfo = [v119 ckInfo];
    etag = [ckInfo etag];
    v118 = etag == 0;
  }

  ckInfo2 = [v119 ckInfo];

  clientZone = [v15 clientZone];
  LODWORD(v111) = [clientZone enhancedDrivePrivacyEnabled];

  clientZone2 = [v15 clientZone];
  if ([clientZone2 isPrivateZone])
  {
    appLibrary = [v15 appLibrary];
    wasMovedToCloudDocs = [appLibrary wasMovedToCloudDocs];
  }

  else
  {
    wasMovedToCloudDocs = 0;
  }

  if (v118)
  {
    if ([v15 isDirectory])
    {
      if (v115)
      {
        v22 = v115[2]();
        if (v22)
        {
          [self brc_fillWithChildBasehashSalt:v22];
          clientZone3 = [v15 clientZone];
          itemID = [v15 itemID];
          v25 = [clientZone3 saltingStateForItemID:itemID];

          if (v25)
          {
            v26 = v25;
          }

          else
          {
            v26 = 3;
          }

          v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{v26, v111, v114}];
          [self setObject:v27 forKeyedSubscript:@"saltingState"];
        }
      }

      else
      {
        v29 = brc_bread_crumbs();
        v30 = brc_default_log();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
        {
          [CKRecord(BRCSerializationAdditions) serializeStatInfo:diffs:stageID:deadInServerTruth:shouldPCSChainStatus:basehashSaltGetter:childBasehashSaltGetter:error:];
        }
      }
    }
  }

  else if ((a4 & 0x60) == 0 && (a7 & 0x2C) == 0)
  {
    v28 = 0;
    goto LABEL_35;
  }

  if (wasMovedToCloudDocs && ([v15 itemID], v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v31, "isDocumentsFolder"), v31, v32))
  {
    clientZone4 = [v15 clientZone];
    asPrivateClientZone = [clientZone4 asPrivateClientZone];
    rootItemID = [asPrivateClientZone rootItemID];

    session = [v15 session];
    itemID2 = [v15 itemID];
    appLibraryRowID = [itemID2 appLibraryRowID];
    v39 = [session appLibraryByRowID:appLibraryRowID];
    appLibraryID = [v39 appLibraryID];

    v41 = [appLibraryID stringByReplacingOccurrencesOfString:@"." withString:@"~"];

    logicalNameWithoutLocalBounce = [v41 stringByAppendingString:@"_Documents"];
  }

  else
  {
    logicalNameWithoutLocalBounce = [v119 logicalNameWithoutLocalBounce];
    rootItemID = [v119 parentID];
  }

  appLibrary2 = [v15 appLibrary];
  if ([appLibrary2 isCloudDocsAppLibrary])
  {
    clientZone5 = [v15 clientZone];
    if ([clientZone5 isCloudDocsZone])
    {
      parentItemIDInZone = [v15 parentItemIDInZone];
      isNonDesktopRoot = [parentItemIDInZone isNonDesktopRoot];
    }

    else
    {
      isNonDesktopRoot = 0;
    }
  }

  else
  {
    isNonDesktopRoot = 0;
  }

  parentItemIDInZone2 = [v15 parentItemIDInZone];
  isDocumentsFolder = [parentItemIDInZone2 isDocumentsFolder];

  v28 = v116[2](v116, v15);
  [self serializeFilename:logicalNameWithoutLocalBounce forCreation:ckInfo2 == 0 basehashSalt:v28 parentIDIsCloudDocsRoot:isNonDesktopRoot parentIDIsDocumentsFolder:isDocumentsFolder];
  serverZone = [v15 serverZone];
  v50 = [rootItemID validatingDirectoryReferenceInZone:serverZone];
  [self setObject:v50 forKeyedSubscript:@"parent"];

  if ((a7 & 0x3C) != 0)
  {
    serverZone2 = [v15 serverZone];
    v52 = [rootItemID pcsChainParentReferenceInZone:serverZone2];
    [self setParent:v52];
  }

LABEL_35:
  if (a7 == 2)
  {
LABEL_45:
    [self setWantsChainPCS:{1, v111}];
    goto LABEL_46;
  }

  if ([v15 isDirectory])
  {
    if ((a7 & 0xC) == 0)
    {
      goto LABEL_46;
    }
  }

  else
  {
    isDocument = [v15 isDocument];
    if ((a7 & 0xC) != 0)
    {
      v54 = isDocument;
    }

    else
    {
      v54 = 0;
    }

    if ((v54 & 1) == 0)
    {
      goto LABEL_46;
    }
  }

  if (v118)
  {
    goto LABEL_45;
  }

  clientZone6 = [v15 clientZone];
  asPrivateClientZone2 = [clientZone6 asPrivateClientZone];
  itemID3 = [v15 itemID];
  v58 = [asPrivateClientZone2 pcsChainStateForItem:itemID3] < 2;

  if (v58)
  {
    goto LABEL_45;
  }

LABEL_46:
  v59 = !v118;
  if ((a4 & 0x10) != 0)
  {
    v59 = 0;
  }

  if (!v59)
  {
    birthtime = [v119 birthtime];
    v61 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:birthtime];
    v62 = [self _verifyValueForRecordWithNumber:v61 key:@"birthtime" item:v15 error:0];

    if (v62)
    {
      v63 = birthtime;
    }

    else
    {
      v63 = 0;
    }

    if (!v28)
    {
      v28 = v116[2](v116, v15);
    }

    v28 = v28;

    if ([v15 shouldUseEnhancedDrivePrivacyWhenNeedsPreserving:v28 != 0])
    {
      [self seralizeBirthtime:v63];
    }

    else
    {
      v64 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v63];
      [self setObject:v64 forKeyedSubscript:@"birthtime"];
    }
  }

  if (([v15 isSharedToMe] & 1) == 0)
  {
    if ((a4 & 0x800) != 0 || v118)
    {
      [self setLastUsedTime:{objc_msgSend(v119, "lastUsedTime")}];
    }

    if ((a4 & 0x1000) != 0 || v118)
    {
      favoriteRank = [v119 favoriteRank];
      if (favoriteRank)
      {
        v68 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v119, "favoriteRank")}];
      }

      else
      {
        v68 = 0;
      }

      [self setObject:v68 forKeyedSubscript:@"favoriteRank"];
      if (favoriteRank)
      {
      }
    }

    v69 = !v118;
    if ((a4 & 0x200) != 0)
    {
      v69 = 0;
    }

    if (!v69)
    {
      finderTags = [v119 finderTags];
      [self serializeFinderTags:finderTags forCreation:ckInfo2 == 0];
    }
  }

  v71 = !v118;
  if ((a4 & 0x80) != 0)
  {
    v71 = 0;
  }

  if (!v71)
  {
    v72 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v119, "isHiddenExt")}];
    [self setObject:v72 forKeyedSubscript:@"hiddenExt"];
  }

  if (ckInfo2)
  {
    [self setObject:0 forKeyedSubscript:@"ftags"];
  }

  if ((a4 & 4) != 0 || v118)
  {
    type = [v119 type];
    if (type <= 0xA && ((1 << type) & 0x611) != 0)
    {
      if (ckInfo2)
      {
        [self setObject:0 forKeyedSubscript:@"writable"];
        [self setObject:0 forKeyedSubscript:@"executable"];
      }
    }

    else
    {
      v75 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v119, "mode") & 1}];
      [self setObject:v75 forKeyedSubscript:@"writable"];

      v76 = [MEMORY[0x277CCABB0] numberWithInt:{(objc_msgSend(v119, "mode") >> 1) & 1}];
      [self setObject:v76 forKeyedSubscript:@"executable"];
    }
  }

  if ((a4 & 0x100) != 0 || v118)
  {
    xattrSignature = [v119 xattrSignature];

    if (xattrSignature)
    {
      session2 = [v15 session];
      xattrStager = [session2 xattrStager];
      xattrSignature2 = [v119 xattrSignature];
      v82 = [xattrStager urlForXattrSignature:xattrSignature2];

      v120 = 0;
      LODWORD(session2) = [v82 checkResourceIsReachableAndReturnError:&v120];
      encryptedValues2 = v120;
      if (session2)
      {
        if (v112)
        {
          brc_generateSaltingKey = [MEMORY[0x277CBEA90] brc_generateSaltingKey];
        }

        else
        {
          brc_generateSaltingKey = 0;
        }

        v88 = [MEMORY[0x277CBC190] br_assetWithFileURL:v82 boundaryKey:brc_generateSaltingKey];
        [self setObject:v88 forKeyedSubscript:@"xattr"];
        if (v112)
        {
          xattrSignature3 = [v119 xattrSignature];
        }

        else
        {
          xattrSignature3 = 0;
        }

        encryptedValues = [self encryptedValues];
        [encryptedValues setObject:xattrSignature3 forKeyedSubscript:@"xattrSignature"];

        if (v112)
        {
        }
      }

      else
      {
        v85 = brc_bread_crumbs();
        v86 = brc_default_log();
        if (os_log_type_enabled(v86, OS_LOG_TYPE_FAULT))
        {
          xattrSignature4 = [v119 xattrSignature];
          [CKRecord(BRCSerializationAdditions) serializeStatInfo:xattrSignature4 diffs:v85 stageID:v125 deadInServerTruth:v86 shouldPCSChainStatus:? basehashSaltGetter:? childBasehashSaltGetter:? error:?];
        }

        [self setObject:0 forKeyedSubscript:@"xattr"];
        brc_generateSaltingKey = [self encryptedValues];
        [brc_generateSaltingKey setObject:0 forKeyedSubscript:@"xattrSignature"];
      }
    }

    else
    {
      if (!ckInfo2)
      {
        goto LABEL_113;
      }

      [self setObject:0 forKeyedSubscript:@"xattr"];
      encryptedValues2 = [self encryptedValues];
      [encryptedValues2 setObject:0 forKeyedSubscript:@"xattrSignature"];
    }
  }

LABEL_113:
  v91 = !v118;
  if ((a4 & 0x400) != 0)
  {
    v91 = 0;
  }

  if (!v91)
  {
    v92 = [v15 st];
    trashPutBackPath = [v92 trashPutBackPath];
    v94 = [trashPutBackPath dataUsingEncoding:4];

    encryptedValues3 = [self encryptedValues];
    [encryptedValues3 setObject:v94 forKeyedSubscript:@"restorePath"];

    v96 = [v15 st];
    trashPutBackParentID = [v96 trashPutBackParentID];
    serverZone3 = [v15 serverZone];
    v99 = [trashPutBackParentID directoryReferenceInZone:serverZone3 action:0];
    [self setObject:v99 forKeyedSubscript:@"restoreParent"];
  }

  if ([v15 isSymLink])
  {
    v100 = !v118;
    if ((a4 & 0x2000) != 0)
    {
      v100 = 0;
    }

    if (!v100)
    {
      asSymlink = [v15 asSymlink];
      symlinkTarget = [asSymlink symlinkTarget];
      v103 = [symlinkTarget dataUsingEncoding:4];

      encryptedValues4 = [self encryptedValues];
      [encryptedValues4 setObject:v103 forKeyedSubscript:@"targetPath"];
    }
  }

  if ((v113 & 1) == 0)
  {
    ckInfo3 = [v119 ckInfo];
    if (!ckInfo3)
    {
      if ([v15 isFinderBookmark])
      {
        v106 = brc_bread_crumbs();
        v107 = brc_default_log();
        if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v122 = v15;
          v123 = 2112;
          v124 = v106;
          _os_log_impl(&dword_223E7A000, v107, OS_LOG_TYPE_DEFAULT, "[WARNING] Item is missing structure CKInfo so using the version CKInfo because they are the same record %@%@", buf, 0x16u);
        }

        asFinderBookmark = [v15 asFinderBookmark];
        currentVersion = [asFinderBookmark currentVersion];
        ckInfo3 = [currentVersion ckInfo];
      }

      else
      {
        ckInfo3 = 0;
      }
    }

    [self serializeSystemFields:ckInfo3 includeCZMEtag:{objc_msgSend(v15, "isDocumentBeingCopiedToNewZone") ^ 1}];
  }

  return 1;
}

- (uint64_t)_updateSize:()BRCSerializationAdditions mtime:shouldUseEnhancedDrivePrivacy:item:error:
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [BRCUserDefaults defaultsForMangledID:0];
  if (v10 && a5)
  {
    encryptedValues = [self encryptedValues];
    [encryptedValues setObject:v10 forKeyedSubscript:@"exactSize"];
  }

  if (v11)
  {
    if (([self _verifyValueForRecordWithNumber:v11 key:@"mtime" item:v12 error:0] & 1) == 0)
    {

      v11 = &unk_2837B01D8;
    }

    if (a5)
    {
      encryptedValues2 = [self encryptedValues];
      [encryptedValues2 setObject:v11 forKeyedSubscript:@"exactMtime"];

      if ([v13 shouldSendRoundedTimestamps])
      {
        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{BRCRoundedTimestamp(objc_msgSend(v11, "unsignedLongLongValue"))}];
        [self setObject:v16 forKeyedSubscript:@"mtime"];
      }
    }

    else
    {
      [self setObject:v11 forKeyedSubscript:@"mtime"];
    }
  }

  return 1;
}

- (uint64_t)serializeForContentUpload:()BRCSerializationAdditions size:mtime:etag:shouldUseEnhancedDrivePrivacy:error:
{
  v14 = a3;
  [self setEtag:a6];
  [self setKnownToServer:1];
  v15 = [MEMORY[0x277CCABB0] numberWithLongLong:a4];
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a5];
  v17 = [self _updateSize:v15 mtime:v16 shouldUseEnhancedDrivePrivacy:a7 item:v14 error:a8];

  return v17;
}

- (uint64_t)serializeVersion:()BRCSerializationAdditions diffs:deadInServerTruth:basehashSalt:error:
{
  v10 = a3;
  v80 = a6;
  currentVersion = [v10 currentVersion];
  v75 = a5;
  v12 = [v10 contentRecordNeedsForceAllFieldsWhenDeadInServerTruth:a5];
  ckInfo = [currentVersion ckInfo];

  if ((a4 & 0x4000000000000000) != 0)
  {
    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [CKRecord(BRCSerializationAdditions) serializeVersion:diffs:deadInServerTruth:basehashSalt:error:];
    }
  }

  if (!currentVersion)
  {
    v69 = brc_bread_crumbs();
    v70 = brc_default_log();
    if (os_log_type_enabled(v70, OS_LOG_TYPE_FAULT))
    {
      [CKRecord(BRCSerializationAdditions) serializeVersion:diffs:deadInServerTruth:basehashSalt:error:];
    }
  }

  appLibrary = [v10 appLibrary];
  if ([appLibrary isCloudDocsAppLibrary])
  {
    clientZone = [v10 clientZone];
    if ([clientZone isCloudDocsZone])
    {
      parentItemIDInZone = [v10 parentItemIDInZone];
      isNonDesktopRoot = [parentItemIDInZone isNonDesktopRoot];
    }

    else
    {
      isNonDesktopRoot = 0;
    }
  }

  else
  {
    isNonDesktopRoot = 0;
  }

  parentItemIDInZone2 = [v10 parentItemIDInZone];
  isDocumentsFolder = [parentItemIDInZone2 isDocumentsFolder];

  if ([v10 isSharedToMeTopLevelItem])
  {
    if (ckInfo)
    {
      v21 = 0;
    }

    else
    {
      v21 = v12;
    }

    if (v21 == 1)
    {
      clientZone2 = [v10 clientZone];
      itemID = [v10 itemID];
      v24 = [clientZone2 serverItemByItemID:itemID];

      latestVersion = [v24 latestVersion];
      originalPOSIXName = [latestVersion originalPOSIXName];
      v27 = originalPOSIXName;
      if (originalPOSIXName)
      {
        originalPOSIXName2 = originalPOSIXName;
      }

      else
      {
        originalPOSIXName2 = [currentVersion originalPOSIXName];
      }

      v31 = originalPOSIXName2;

      [self serializeFilename:v31 forCreation:1 basehashSalt:0 parentIDIsCloudDocsRoot:isNonDesktopRoot parentIDIsDocumentsFolder:isDocumentsFolder];
    }

    originalPOSIXName3 = [objc_alloc(MEMORY[0x277CBC5D0]) initShareIDWithShareableItem:v10];
    parentItemIDInZone2 = [objc_alloc(MEMORY[0x277CBC620]) initWithRecordID:originalPOSIXName3 action:0];
    [self setShare:parentItemIDInZone2];

    goto LABEL_26;
  }

  v29 = v12 ^ 1;
  if ((a4 & 0x40000) != 0)
  {
    v29 = 0;
  }

  if ((v29 & 1) == 0)
  {
    originalPOSIXName3 = [currentVersion originalPOSIXName];
    [self serializeFilename:originalPOSIXName3 forCreation:ckInfo == 0 basehashSalt:v80 parentIDIsCloudDocsRoot:isNonDesktopRoot parentIDIsDocumentsFolder:isDocumentsFolder];
LABEL_26:
  }

  if ((a4 & 0x80000) != 0)
  {
    v32 = 0;
  }

  else
  {
    v32 = v12 ^ 1;
  }

  if (v32)
  {
    v79 = 0;
  }

  else
  {
    parentItemIDInZone2 = MEMORY[0x277CCABB0];
    v79 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(currentVersion, "size")}];
    if ((a4 & 0x100000) == 0 && ([v10 isDocumentBeingCopiedToNewZone] & 1) == 0)
    {
      parentItemIDInZone2 = brc_bread_crumbs();
      v33 = brc_default_log();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
      {
        [CKRecord(BRCSerializationAdditions) serializeVersion:diffs:deadInServerTruth:basehashSalt:error:];
      }
    }
  }

  if ((a4 & 0x20000) != 0)
  {
    v34 = 0;
  }

  else
  {
    v34 = v12 ^ 1;
  }

  if (v34)
  {
    v78 = 0;
  }

  else
  {
    parentItemIDInZone2 = MEMORY[0x277CCABB0];
    v78 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(currentVersion, "mtime")}];
  }

  if (v80)
  {
    v35 = 1;
  }

  else
  {
    parentItemIDInZone2 = [self objectForKeyedSubscript:@"boundaryKey"];
    v35 = parentItemIDInZone2 != 0;
  }

  v36 = [v10 shouldUseEnhancedDrivePrivacyWhenNeedsPreserving:v35];
  if (!v80)
  {
  }

  v37 = [self _updateSize:v79 mtime:v78 shouldUseEnhancedDrivePrivacy:v36 item:v10 error:a7];
  if (v37)
  {
    v38 = v12 ^ 1;
    if ((a4 & 0x200000) != 0)
    {
      v38 = 0;
    }

    if ((v38 & 1) == 0)
    {
      xattrSignature = [currentVersion xattrSignature];
      v40 = xattrSignature == 0;

      if (v40)
      {
        if (ckInfo)
        {
          [self setObject:0 forKeyedSubscript:@"xattr"];
          encryptedValues = [self encryptedValues];
          [encryptedValues setObject:0 forKeyedSubscript:@"xattrSignature"];
          goto LABEL_60;
        }

LABEL_57:
        encryptedValues = [MEMORY[0x277CBEA90] data];
        encryptedValues2 = [self encryptedValues];
        [encryptedValues2 setObject:encryptedValues forKeyedSubscript:@"quarantine"];

LABEL_60:
LABEL_61:
        resolvedConflictLoserEtags = [v10 resolvedConflictLoserEtags];
        if ((a4 & 0x800000) != 0 && [resolvedConflictLoserEtags count] && ckInfo)
        {
          conflictLoserEtags = [currentVersion conflictLoserEtags];
          v48 = [conflictLoserEtags mutableCopy];

          [v48 minusSet:resolvedConflictLoserEtags];
          allObjects = [v48 allObjects];
          [self setConflictLoserEtags:allObjects];
        }

        if ([v10 isFinderBookmark])
        {
          v50 = [v10 st];
          ckInfo2 = [v50 ckInfo];
        }

        else
        {
          ckInfo2 = [currentVersion ckInfo];
        }

        v52 = [BRCUserDefaults defaultsForMangledID:0];
        session = [v10 session];
        accountFacade = [session accountFacade];
        v55 = [v52 saveLocalContentVersionIdentifierOnDiskWithAccountFacade:accountFacade];

        etag = [ckInfo2 etag];
        v58 = (a4 & 0x8400000000000000) != 0 && etag != 0;

        if (!(v55 & 1 | !v58))
        {
          [ckInfo2 overwriteEtag:0];
          v58 = 0;
        }

        if (!v75 || v58)
        {
          [self serializeSystemFields:ckInfo2 includeCZMEtag:{objc_msgSend(v10, "isDocumentBeingCopiedToNewZone") ^ 1}];
          if (v58)
          {
            pluginFields = [self pluginFields];
            if (pluginFields)
            {
              pluginFields2 = [self pluginFields];
              v65 = [pluginFields2 mutableCopy];
            }

            else
            {
              v65 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
            }

            [v65 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"br_itemUnderReset"];
            [self setPluginFields:v65];
          }
        }

        else
        {
          clientZone3 = [v10 clientZone];
          mangledID = [clientZone3 mangledID];
          v61 = [BRCUserDefaults defaultsForMangledID:mangledID];
          forceFailIfExistOnRevival = [v61 forceFailIfExistOnRevival];

          if (forceFailIfExistOnRevival)
          {
            [self setKnownToServer:0];
            [self setEtag:0];
          }
        }

        goto LABEL_89;
      }

      v41 = [self objectForKeyedSubscript:@"xattr"];
      v42 = v41 == 0;

      if (v42)
      {
        v71 = brc_bread_crumbs();
        v72 = brc_default_log();
        if (os_log_type_enabled(v72, OS_LOG_TYPE_FAULT))
        {
          [CKRecord(BRCSerializationAdditions) serializeVersion:diffs:deadInServerTruth:basehashSalt:error:];
        }
      }

      encryptedValues3 = [self encryptedValues];
      v44 = [encryptedValues3 objectForKeyedSubscript:@"xattrSignature"];
      if (v44)
      {
        goto LABEL_55;
      }

      clientZone4 = [v10 clientZone];
      enhancedDrivePrivacyEnabled = [clientZone4 enhancedDrivePrivacyEnabled];

      if (enhancedDrivePrivacyEnabled)
      {
        encryptedValues3 = brc_bread_crumbs();
        v44 = brc_default_log();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
        {
          [CKRecord(BRCSerializationAdditions) serializeVersion:diffs:deadInServerTruth:basehashSalt:error:];
        }

LABEL_55:
      }
    }

    if (ckInfo)
    {
      goto LABEL_61;
    }

    goto LABEL_57;
  }

LABEL_89:

  return v37;
}

- (void)serializeSideCarInfo:()BRCSerializationAdditions filenameExtension:diffs:deadInServerTruth:
{
  v16 = a3;
  v10 = a4;
  if ((a5 & 0x1000) != 0 || a6)
  {
    if (![v16 favoriteRank])
    {
      [self setObject:0 forKeyedSubscript:@"favoriteRank"];
      if ((a5 & 0x800) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    v11 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v16, "favoriteRank")}];
    [self setObject:v11 forKeyedSubscript:@"favoriteRank"];
  }

  if ((a5 & 0x800) != 0)
  {
LABEL_7:
    [self setLastUsedTime:{objc_msgSend(v16, "lastUsedTime")}];
    goto LABEL_8;
  }

LABEL_6:
  if (a6)
  {
    goto LABEL_7;
  }

LABEL_8:
  if ((a5 & 0x200) != 0 || a6)
  {
    finderTags = [v16 finderTags];
    ckInfo = [v16 ckInfo];
    etag = [ckInfo etag];
    [self serializeFinderTags:finderTags forCreation:etag == 0];
  }

  [self setObject:v10 forKeyedSubscript:@"extension"];
  if ((a6 & 1) == 0)
  {
    ckInfo2 = [v16 ckInfo];
    [self serializeSystemFields:ckInfo2];
  }
}

- (void)setLastUsedTime:()BRCSerializationAdditions
{
  if (a3)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithLongLong:?];
    [self setObject:v4 forKeyedSubscript:@"lastOpenTime"];
  }

  else
  {

    [self setObject:? forKeyedSubscript:?];
  }
}

- (id)_createAppLibraryIfNecessary:()BRCSerializationAdditions session:
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v5 = MEMORY[0x277CFAE60];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initWithAppLibraryName:v7];

  v9 = [v6 getOrCreateAppLibraryAndPrivateZonesIfNecessary:v8 appLibraryExists:&v13];

  if ((v13 & 1) == 0)
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEFAULT, "[WARNING] Created app library through sync flow %@%@", buf, 0x16u);
    }
  }

  return v9;
}

- (void)_saveAppLibraryIfNecessary:()BRCSerializationAdditions
{
  v7 = a3;
  v3 = [v7 db];
  [v3 assertOnQueue];

  if ([v7 needsSave])
  {
    session = [v7 session];
    clientReadWriteDatabaseFacade = [session clientReadWriteDatabaseFacade];
    [clientReadWriteDatabaseFacade saveAppLibrary:v7];

    v6 = [v7 db];
    [v6 flush];
  }
}

- (void)_processSaltingOnAppLibrary:()BRCSerializationAdditions
{
  v4 = a3;
  v6 = [[BRCBasehashSaltInfo alloc] initWithRecord:self];
  childBasehashSalt = [(BRCBasehashSaltInfo *)v6 childBasehashSalt];
  [v4 setChildBasehashSalt:childBasehashSalt];

  [v4 setSaltingState:{-[BRCBasehashSaltInfo saltingState](v6, "saltingState")}];
}

- (void)processAppLibraryDataWithMovedZoneNames:()BRCSerializationAdditions serverZone:isDeltaSync:
{
  v8 = a3;
  v9 = a4;
  recordType = [self recordType];
  v11 = [recordType isEqualToString:@"structure"];

  if (v11)
  {
    recordID = [self recordID];
    session = [v9 session];
    if ([recordID brc_isZoneRootRecordID])
    {
      session2 = [v9 session];
      clientTruthWorkloop = [session2 clientTruthWorkloop];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __102__CKRecord_BRCSerializationAdditions__processAppLibraryDataWithMovedZoneNames_serverZone_isDeltaSync___block_invoke;
      block[3] = &unk_278502F30;
      v45 = v9;
      selfCopy = self;
      v47 = a5;
      dispatch_async_and_wait(clientTruthWorkloop, block);

      v16 = v45;
LABEL_4:

LABEL_34:
      goto LABEL_35;
    }

    if ([recordID brc_isAppLibraryRootRecordID])
    {
      brc_appLibraryRootZoneName = [recordID brc_appLibraryRootZoneName];
      v18 = [self _createAppLibraryIfNecessary:brc_appLibraryRootZoneName session:session];

      session3 = [v9 session];
      clientTruthWorkloop2 = [session3 clientTruthWorkloop];
      v37 = MEMORY[0x277D85DD0];
      v38 = 3221225472;
      v39 = __102__CKRecord_BRCSerializationAdditions__processAppLibraryDataWithMovedZoneNames_serverZone_isDeltaSync___block_invoke_2;
      v40 = &unk_278502F30;
      selfCopy2 = self;
      v42 = v18;
      v43 = a5;
      v21 = v18;
      dispatch_async_and_wait(clientTruthWorkloop2, &v37);
    }

    if (![v9 isCloudDocsZone])
    {
      goto LABEL_34;
    }

    if ([recordID brc_isAppLibraryRootRecordID])
    {
      brc_appLibraryRootZoneName2 = [recordID brc_appLibraryRootZoneName];
      v23 = brc_bread_crumbs();
      v24 = brc_default_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        [CKRecord(BRCSerializationAdditions) processAppLibraryDataWithMovedZoneNames:serverZone:isDeltaSync:];
      }

      if ([brc_appLibraryRootZoneName2 isEqualToString:*MEMORY[0x277CFAD68]])
      {
        [CKRecord(BRCSerializationAdditions) processAppLibraryDataWithMovedZoneNames:serverZone:isDeltaSync:];
      }

      [v8 addObject:brc_appLibraryRootZoneName2];
    }

    if ([recordID brc_isAppLibraryDocumentsRecordID])
    {
      brc_appLibraryDocumentsZoneName = [recordID brc_appLibraryDocumentsZoneName];
      v26 = brc_bread_crumbs();
      v27 = brc_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        [CKRecord(BRCSerializationAdditions) processAppLibraryDataWithMovedZoneNames:serverZone:isDeltaSync:];
      }

      if ([brc_appLibraryDocumentsZoneName isEqualToString:*MEMORY[0x277CFAD68]])
      {
        [CKRecord(BRCSerializationAdditions) processAppLibraryDataWithMovedZoneNames:serverZone:isDeltaSync:];
      }

      [v8 addObject:brc_appLibraryDocumentsZoneName];
    }

    if (([v9 state] & 4) != 0)
    {
      goto LABEL_34;
    }

    v16 = [self objectForKeyedSubscript:@"parent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      recordID2 = [v16 recordID];
      brc_isAppLibraryRootRecordID = [recordID2 brc_isAppLibraryRootRecordID];
      v30 = MEMORY[0x277CFAD68];
      if (brc_isAppLibraryRootRecordID)
      {
        brc_appLibraryRootZoneName3 = [recordID2 brc_appLibraryRootZoneName];
        v32 = brc_bread_crumbs();
        v33 = brc_default_log();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          [CKRecord(BRCSerializationAdditions) processAppLibraryDataWithMovedZoneNames:serverZone:isDeltaSync:];
        }

        if ([brc_appLibraryRootZoneName3 isEqualToString:*v30])
        {
          [CKRecord(BRCSerializationAdditions) processAppLibraryDataWithMovedZoneNames:serverZone:isDeltaSync:];
        }

        [v8 addObject:brc_appLibraryRootZoneName3];
      }

      if (![recordID2 brc_isAppLibraryDocumentsRecordID])
      {
        goto LABEL_39;
      }

      brc_appLibraryDocumentsZoneName2 = [recordID2 brc_appLibraryDocumentsZoneName];
      v35 = brc_bread_crumbs();
      v36 = brc_default_log();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        [CKRecord(BRCSerializationAdditions) processAppLibraryDataWithMovedZoneNames:serverZone:isDeltaSync:];
      }

      if ([brc_appLibraryDocumentsZoneName2 isEqualToString:*v30])
      {
        [CKRecord(BRCSerializationAdditions) processAppLibraryDataWithMovedZoneNames:serverZone:isDeltaSync:];
      }

      [v8 addObject:brc_appLibraryDocumentsZoneName2];
    }

    else
    {
      recordID2 = brc_bread_crumbs();
      brc_appLibraryDocumentsZoneName2 = brc_default_log();
      if (os_log_type_enabled(brc_appLibraryDocumentsZoneName2, OS_LOG_TYPE_FAULT))
      {
        [CKRecord(BRCSerializationAdditions) processAppLibraryDataWithMovedZoneNames:serverZone:isDeltaSync:];
      }
    }

LABEL_39:
    goto LABEL_4;
  }

LABEL_35:
}

- (id)getAndUpdateBoundaryKeyForItem:()BRCSerializationAdditions
{
  v4 = a3;
  if (([v4 isFinderBookmark] & 1) != 0 || (+[BRCUserDefaults defaultsForMangledID:](BRCUserDefaults, "defaultsForMangledID:", 0), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "supportsEnhancedDrivePrivacy"), v5, !v6))
  {
    brc_generateSaltingKey = 0;
  }

  else
  {
    clientZone = [v4 clientZone];
    itemID = [v4 itemID];
    v9 = [v4 db];
    brc_generateSaltingKey = [clientZone contentBoundaryKeyForItemID:itemID withDB:v9];

    if ([v4 shouldUseEnhancedDrivePrivacyWhenNeedsPreserving:brc_generateSaltingKey != 0])
    {
      if (!brc_generateSaltingKey)
      {
        brc_generateSaltingKey = [MEMORY[0x277CBEA90] brc_generateSaltingKey];
      }

      [self serializeContentBoundaryKey:brc_generateSaltingKey];
      v11 = MEMORY[0x277CCABB0];
      currentVersion = [v4 currentVersion];
      v13 = [v11 numberWithLongLong:{objc_msgSend(currentVersion, "size")}];
      encryptedValues = [self encryptedValues];
      [encryptedValues setObject:v13 forKeyedSubscript:@"exactSize"];
    }
  }

  return brc_generateSaltingKey;
}

+ (void)newFromSqliteValue:()BRCSerializationAdditions .cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_3_2();
    _os_log_fault_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

+ (void)newFromSqliteStatement:()BRCSerializationAdditions atIndex:.cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_3_2();
    _os_log_fault_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

- (void)_deserializeValue:()BRCSerializationAdditions forKey:encrypted:expectClass:allowNil:errorDescription:.cold.1(void **a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if (a1)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [a2 recordType];
    v10 = [a2 recordID];
    v11 = [v8 stringWithFormat:@"missing key '%@' in %@ record %@", a3, v9, v10];
    v12 = *a1;
    *a1 = v11;
  }

  *a4 = 0;
}

- (void)deserializeFilename:()BRCSerializationAdditions basename:bounceno:extension:userInfo:error:.cold.1()
{
  OUTLINED_FUNCTION_21(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_6(&dword_223E7A000, v0, v1, "[ERROR] deserializeError: %@%@");
}

- (void)deserializeFilename:()BRCSerializationAdditions basename:bounceno:extension:userInfo:error:.cold.4(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3();
    v5 = 2112;
    v6 = v2;
    _os_log_impl(&dword_223E7A000, v3, OS_LOG_TYPE_DEFAULT, "[WARNING] The server sent a bounceNo <= 1: %@%@", v4, 0x16u);
  }
}

- (void)deserializeFilename:()BRCSerializationAdditions basename:bounceno:extension:userInfo:error:.cold.5()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_3();
    _os_log_debug_impl(&dword_223E7A000, v1, OS_LOG_TYPE_DEBUG, "[DEBUG] basename is nil -> replace with empty string%@", v2, 0xCu);
  }
}

- (id)deserializeFilename:()BRCSerializationAdditions basename:bounceno:extension:userInfo:error:.cold.6()
{
  OUTLINED_FUNCTION_18();
  v10 = *MEMORY[0x277D85DE8];
  if (v2)
  {
    v3 = v2;
    v7 = [v1 stringByAppendingFormat:@" %@", v2];

    v1 = v3;
  }

  else
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v9 = v4;
      _os_log_fault_impl(&dword_223E7A000, v5, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: empty basename and no bounceno%@", buf, 0xCu);
    }

    v7 = [MEMORY[0x277CCACA8] br_emptyFilenameAlternativeName];
  }

  *v0 = v7;

  return v7;
}

- (void)_deserializeRootSharingOptions:()BRCSerializationAdditions .cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_15_0(v0, v1, v2, v3, v4);
}

- (void)deserializeStatInfo:()BRCSerializationAdditions serverMetrics:itemID:session:error:.cold.14()
{
  OUTLINED_FUNCTION_18();
  [v0 UTF8String];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7(&dword_223E7A000, v1, v2, "[CRIT] UNREACHABLE: The server should have set a birthtime on %s%@", v3, v4, v5, v6);
}

- (void)deserializeVersion:()BRCSerializationAdditions fakeStatInfo:contentBoundaryKey:clientZone:outOfBandUpload:error:.cold.9()
{
  OUTLINED_FUNCTION_18();
  v1 = [v0 recordID];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7(&dword_223E7A000, v2, v3, "[CRIT] UNREACHABLE: Got unexpected content boundary key for recordID %@%@", v4, v5, v6, v7);
}

- (void)deserializeVersion:()BRCSerializationAdditions fakeStatInfo:contentBoundaryKey:clientZone:outOfBandUpload:error:.cold.11()
{
  OUTLINED_FUNCTION_18();
  v1 = v0;
  v2 = [v0 recordType];
  v7 = [v1 recordID];
  OUTLINED_FUNCTION_10_0();
  _os_log_error_impl(v3, v4, 0x90u, v5, v6, 0x20u);
}

- (void)_locateSideCarServerZone:()BRCSerializationAdditions withShareAliasReference:sessionContext:.cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_3_2();
    _os_log_fault_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

- (void)serializeStatInfo:()BRCSerializationAdditions diffs:stageID:deadInServerTruth:shouldPCSChainStatus:basehashSaltGetter:childBasehashSaltGetter:error:.cold.2(void *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  *a3 = 138412546;
  *(a3 + 4) = a1;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  OUTLINED_FUNCTION_15_0(&dword_223E7A000, a4, a3, "[CRIT] UNREACHABLE: Couldn't find xattr for signature %@%@", a3);
}

- (void)serializeVersion:()BRCSerializationAdditions diffs:deadInServerTruth:basehashSalt:error:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_8(v0, v1, v2, v3, v4);
}

- (void)processAppLibraryDataWithMovedZoneNames:()BRCSerializationAdditions serverZone:isDeltaSync:.cold.1()
{
  OUTLINED_FUNCTION_18();
  v1 = [v0 recordName];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_8(v2, v3, v4, v5, v6);
}

- (void)processAppLibraryDataWithMovedZoneNames:()BRCSerializationAdditions serverZone:isDeltaSync:.cold.2()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_3_2();
    _os_log_fault_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

- (void)processAppLibraryDataWithMovedZoneNames:()BRCSerializationAdditions serverZone:isDeltaSync:.cold.3()
{
  OUTLINED_FUNCTION_18();
  v1 = [v0 recordName];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_8(v2, v3, v4, v5, v6);
}

- (void)processAppLibraryDataWithMovedZoneNames:()BRCSerializationAdditions serverZone:isDeltaSync:.cold.4()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_3_2();
    _os_log_fault_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

- (void)processAppLibraryDataWithMovedZoneNames:()BRCSerializationAdditions serverZone:isDeltaSync:.cold.5()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_15_0(v0, v1, v2, v3, v4);
}

- (void)processAppLibraryDataWithMovedZoneNames:()BRCSerializationAdditions serverZone:isDeltaSync:.cold.6()
{
  OUTLINED_FUNCTION_18();
  v1 = [v0 recordName];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_8(v2, v3, v4, v5, v6);
}

- (void)processAppLibraryDataWithMovedZoneNames:()BRCSerializationAdditions serverZone:isDeltaSync:.cold.7()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_3_2();
    _os_log_fault_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

- (void)processAppLibraryDataWithMovedZoneNames:()BRCSerializationAdditions serverZone:isDeltaSync:.cold.8()
{
  OUTLINED_FUNCTION_18();
  v1 = [v0 recordName];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_8(v2, v3, v4, v5, v6);
}

- (void)processAppLibraryDataWithMovedZoneNames:()BRCSerializationAdditions serverZone:isDeltaSync:.cold.9()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_3_2();
    _os_log_fault_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

@end