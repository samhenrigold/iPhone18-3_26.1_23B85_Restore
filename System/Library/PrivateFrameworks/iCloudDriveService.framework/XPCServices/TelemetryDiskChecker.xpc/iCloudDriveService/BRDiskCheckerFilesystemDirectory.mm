@interface BRDiskCheckerFilesystemDirectory
- (BOOL)_isMissingShareAliasAtFileURL:(id)l isDocument:(BOOL)document;
- (BRDiskCheckerFilesystemDirectory)initWithURL:(id)l parentIsShared:(BOOL)shared db:(id)db;
- (id)_countOfShareAliasesNotOnDisk;
- (id)_filesystemIdentifierFromURL:(id)l isDocument:(BOOL)document;
- (id)_lookupInjectionFromFileURL:(id)l isDocument:(BOOL)document;
- (id)generateTelemetryErrorEventsWithMetrics:(id)metrics itemID:(id)d zoneMangledID:(id)iD enhancedDrivePrivacyEnabled:(BOOL)enabled;
- (void)_addDocument:(id)document;
- (void)_processSharingInfoAtURL:(id)l isDocument:(BOOL)document isSharedToMeTopLevelItem:(BOOL *)item shareAliasIsMissing:(BOOL *)missing;
- (void)addSubdirectory:(id)subdirectory;
- (void)addSymlink:(id)symlink;
@end

@implementation BRDiskCheckerFilesystemDirectory

- (BRDiskCheckerFilesystemDirectory)initWithURL:(id)l parentIsShared:(BOOL)shared db:(id)db
{
  sharedCopy = shared;
  lCopy = l;
  dbCopy = db;
  v28.receiver = self;
  v28.super_class = BRDiskCheckerFilesystemDirectory;
  v11 = [(BRDiskCheckerFilesystemDirectory *)&v28 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_url, l);
    v13 = objc_opt_new();
    telemetryWarningEvents = v12->_telemetryWarningEvents;
    v12->_telemetryWarningEvents = v13;

    objc_storeStrong(&v12->_db, db);
    if (sharedCopy)
    {
      v12->_isShared = 1;
      v15 = brc_bread_crumbs();
      v16 = brc_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        sub_100007334(v15, v16);
      }

LABEL_5:

      goto LABEL_13;
    }

    [(BRDiskCheckerFilesystemDirectory *)v12 _processSharingInfoAtURL:lCopy isDocument:0 isSharedToMeTopLevelItem:&v12->_isSharedToMeTopLevelItem shareAliasIsMissing:&v12->_shareAliasMissing];
    if (!v12->_recursiveShareAliasCount && !v12->_recursiveSharedByMeCount && !v12->_isSharedToMeTopLevelItem)
    {
      _countOfShareAliasesNotOnDisk = [(BRDiskCheckerFilesystemDirectory *)v12 _countOfShareAliasesNotOnDisk];
      longLongValue = [_countOfShareAliasesNotOnDisk longLongValue];

      v22 = v12->_directChildCount + longLongValue;
      v12->_directChildCount = v22;
      v12->_recursiveShareAliasCount += longLongValue;
      if (v22 < 1)
      {
        goto LABEL_13;
      }

      v15 = brc_bread_crumbs();
      v16 = brc_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        path = [(NSURL *)v12->_url path];
        fp_obfuscatedPath = [path fp_obfuscatedPath];
        directChildCount = v12->_directChildCount;
        *buf = 138412802;
        v30 = fp_obfuscatedPath;
        v31 = 1024;
        *v32 = directChildCount;
        *&v32[4] = 2112;
        *&v32[6] = v15;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[WARNING] Item at url %@ has %d share aliases not on disk%@", buf, 0x1Cu);
      }

      goto LABEL_5;
    }

    v12->_isShared = 1;
    v17 = brc_bread_crumbs();
    v18 = brc_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v26 = "to me";
      if (!v12->_isSharedToMeTopLevelItem)
      {
        v26 = "by me";
      }

      v27 = &unk_10000BB13;
      if (v12->_isSharedToMeTopLevelItem && v12->_shareAliasMissing)
      {
        v27 = " with missing share alias";
      }

      *buf = 136315650;
      v30 = v26;
      v31 = 2080;
      *v32 = v27;
      *&v32[8] = 2112;
      *&v32[10] = v17;
      _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "[DEBUG] Directory is %s shared%s%@", buf, 0x20u);
    }

    if (v12->_isSharedToMeTopLevelItem && v12->_shareAliasMissing)
    {
      v12->_recursiveShareAliasCount = 1;
    }
  }

LABEL_13:

  return v12;
}

- (id)_countOfShareAliasesNotOnDisk
{
  selfCopy = self;
  v3 = [(BRDiskCheckerFilesystemDirectory *)self _filesystemIdentifierFromURL:self->_url isDocument:0];
  if (v3)
  {
    v4 = [(BRCPQLConnection *)selfCopy->_db fetch:@"SELECT item_id, zone_rowid FROM client_items WHERE item_file_id = %@ AND item_state IN (0)", v3];
    if ([v4 next])
    {
      v28 = v3;
      v5 = [v4 objectOfClass:objc_opt_class() atIndex:0];
      v26 = [v4 numberAtIndex:1];
      v27 = v5;
      v6 = [(BRCPQLConnection *)selfCopy->_db fetch:@"SELECT item_alias_target FROM server_items WHERE item_parent_id = %@ AND zone_rowid = %@ AND item_type = 3", v5, v26];

      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v25 = v6;
      obj = [v6 enumerateObjectsOfClass:objc_opt_class()];
      v30 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
      v7 = 0;
      if (v30)
      {
        v8 = *v35;
        do
        {
          for (i = 0; i != v30; i = i + 1)
          {
            if (*v35 != v8)
            {
              objc_enumerationMutation(obj);
            }

            v10 = *(*(&v34 + 1) + 8 * i);
            v11 = objc_autoreleasePoolPush();
            v32 = 0;
            v33 = 0;
            v31 = 0;
            v12 = [v10 parseUnsaltedBookmarkDataWithItemID:&v33 mangledID:&v32 error:&v31];
            v13 = v31;
            if (v12)
            {
              db = selfCopy->_db;
              v15 = v7;
              v16 = selfCopy;
              v17 = v33;
              ownerName = [v32 ownerName];
              appLibraryOrZoneName = [v32 appLibraryOrZoneName];
              v24 = v17;
              selfCopy = v16;
              v20 = [(BRCPQLConnection *)db numberWithSQL:@"SELECT 1 FROM server_items WHERE item_id = %@ AND item_id_is_root(item_parent_id) AND zone_rowid = (SELECT sz.rowid FROM server_zones AS sz WHERE sz.zone_owner = %@ AND sz.zone_name = %@)", v24, ownerName, appLibraryOrZoneName];

              v7 = v15 + ([v20 BOOLValue] ^ 1);
            }

            else
            {
              v20 = brc_bread_crumbs();
              v21 = brc_default_log();
              if (os_log_type_enabled(v21, 0x90u))
              {
                *buf = 138412802;
                v39 = v10;
                v40 = 2112;
                v41 = v13;
                v42 = 2112;
                v43 = v20;
                _os_log_error_impl(&_mh_execute_header, v21, 0x90u, "[ERROR] Can't parse alias target string %@ - %@%@", buf, 0x20u);
              }
            }

            objc_autoreleasePoolPop(v11);
          }

          v30 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
        }

        while (v30);
      }

      v22 = [NSNumber numberWithInt:v7];

      v4 = v25;
      v3 = v28;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)_filesystemIdentifierFromURL:(id)l isDocument:(BOOL)document
{
  documentCopy = document;
  lCopy = l;
  v6 = open([lCopy fileSystemRepresentation], 0);
  if ((v6 & 0x80000000) == 0)
  {
    v7 = v6;
    if (documentCopy)
    {
      DocID = BRCGetOrAllocateDocID();
      if (DocID)
      {
        v9 = [NSNumber numberWithUnsignedInt:DocID];
LABEL_10:
        v12 = v9;
LABEL_16:
        close(v7);
        goto LABEL_17;
      }

      v13 = brc_bread_crumbs();
      v14 = brc_default_log();
      if (os_log_type_enabled(v14, 0x90u))
      {
        sub_100007448();
      }
    }

    else
    {
      memset(&v16, 0, sizeof(v16));
      if ((fstat(v6, &v16) & 0x80000000) == 0)
      {
        v9 = [NSNumber numberWithUnsignedLongLong:v16.st_ino];
        goto LABEL_10;
      }

      v13 = brc_bread_crumbs();
      v14 = brc_default_log();
      if (os_log_type_enabled(v14, 0x90u))
      {
        sub_1000073AC();
      }
    }

    v12 = 0;
    goto LABEL_16;
  }

  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, 0x90u))
  {
    sub_1000074E4();
  }

  v12 = 0;
LABEL_17:

  return v12;
}

- (id)_lookupInjectionFromFileURL:(id)l isDocument:(BOOL)document
{
  documentCopy = document;
  v5 = [(BRDiskCheckerFilesystemDirectory *)self _filesystemIdentifierFromURL:l isDocument:?];
  if (v5)
  {
    if (documentCopy)
    {
      v6 = @"ci.item_doc_id = %@";
    }

    else
    {
      v6 = @"ci.item_file_id = %@";
    }

    v7 = [PQLFormatInjection formatInjection:v6, v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_isMissingShareAliasAtFileURL:(id)l isDocument:(BOOL)document
{
  documentCopy = document;
  lCopy = l;
  v7 = [(BRDiskCheckerFilesystemDirectory *)self _lookupInjectionFromFileURL:lCopy isDocument:documentCopy];
  if (v7)
  {
    v8 = [(BRCPQLConnection *)self->_db fetch:@"SELECT ci.item_id, cz.zone_owner, cz.zone_name FROM client_items AS ci INNER JOIN client_zones AS cz ON ci.zone_rowid = cz.rowid WHERE %@", v7];
    if ([v8 next])
    {
      v9 = [v8 objectOfClass:objc_opt_class() atIndex:0];
      v10 = [v8 stringAtIndex:1];
      v22 = [v8 stringAtIndex:2];
      v11 = [[BRMangledID alloc] initWithZoneName:v22 ownerName:v10];
      [v8 close];
      itemIDString = [v9 itemIDString];
      v13 = [NSString unsaltedBookmarkDataWithItemResolutionString:itemIDString serverZoneMangledID:v11];

      v14 = [(BRCPQLConnection *)self->_db numberWithSQL:@"SELECT 1 FROM server_items WHERE item_alias_target = %@ AND item_type = 3", v13];
      bOOLValue = [v14 BOOLValue];
      if ((bOOLValue & 1) == 0)
      {
        v21 = brc_bread_crumbs();
        v16 = brc_default_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          path = [lCopy path];
          fp_obfuscatedPath = [path fp_obfuscatedPath];
          *buf = 138412546;
          v24 = fp_obfuscatedPath;
          v25 = 2112;
          v26 = v21;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[WARNING] Share alias is missing for %@%@", buf, 0x16u);
        }
      }

      v17 = bOOLValue ^ 1;
    }

    else
    {
      v9 = brc_bread_crumbs();
      v10 = brc_default_log();
      if (os_log_type_enabled(v10, 0x90u))
      {
        sub_100007580();
      }

      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)_processSharingInfoAtURL:(id)l isDocument:(BOOL)document isSharedToMeTopLevelItem:(BOOL *)item shareAliasIsMissing:(BOOL *)missing
{
  documentCopy = document;
  lCopy = l;
  if (!self->_isShared)
  {
    v11 = [(BRDiskCheckerFilesystemDirectory *)self _lookupInjectionFromFileURL:lCopy isDocument:documentCopy];
    v12 = [(BRCPQLConnection *)self->_db fetch:@"SELECT ci.item_sharing_options, cz.zone_owner FROM client_items AS ci INNER JOIN client_zones AS cz ON ci.zone_rowid = cz.rowid WHERE %@", v11];
    if ([v12 next])
    {
      v13 = [v12 intAtIndex:0];
      v14 = [v12 stringAtIndex:1];
      v15 = v14;
      if ((v13 & 4) != 0)
      {
        if ([v14 isEqualToString:CKCurrentUserDefaultName])
        {
          ++self->_recursiveSharedByMeCount;
        }

        else
        {
          if (item)
          {
            *item = 1;
          }

          if ([(BRDiskCheckerFilesystemDirectory *)self _isMissingShareAliasAtFileURL:lCopy isDocument:documentCopy])
          {
            if (missing)
            {
              *missing = 1;
            }
          }

          else
          {
            ++self->_recursiveShareAliasCount;
          }
        }
      }
    }

    else
    {
      v16 = brc_bread_crumbs();
      v17 = brc_default_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        path = [lCopy path];
        fp_obfuscatedPath = [path fp_obfuscatedPath];
        lastError = [(BRCPQLConnection *)self->_db lastError];
        *buf = 138412802;
        v22 = fp_obfuscatedPath;
        v23 = 2112;
        v24 = lastError;
        v25 = 2112;
        v26 = v16;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[WARNING] Failed to get sharing options for %@ - %@%@", buf, 0x20u);
      }
    }
  }
}

- (void)_addDocument:(id)document
{
  documentCopy = document;
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_10000761C();
  }

  v11 = 0;
  [(BRDiskCheckerFilesystemDirectory *)self _processSharingInfoAtURL:documentCopy isDocument:1 isSharedToMeTopLevelItem:&v11 + 1 shareAliasIsMissing:&v11];
  if (self->_isShared || (v11 & 1) == 0)
  {
    ++self->_directChildCount;
  }

  else
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[WARNING] Not counting item missing a share alias%@", buf, 0xCu);
    }
  }

  if ((v11 & 0x100) != 0)
  {
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_1000076B8(v9, v10);
    }
  }

  else
  {
    ++self->_recursiveItemCount;
  }
}

- (void)addSymlink:(id)symlink
{
  symlinkCopy = symlink;
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100007730();
  }

  *&self->_directChildCount = vadd_s32(*&self->_directChildCount, 0x100000001);
}

- (void)addSubdirectory:(id)subdirectory
{
  subdirectoryCopy = subdirectory;
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1000077CC();
  }

  if (![subdirectoryCopy isSharedToMeTopLevelItem] || (objc_msgSend(subdirectoryCopy, "shareAliasMissing") & 1) == 0)
  {
    ++self->_directChildCount;
    self->_recursiveShareAliasCount += [subdirectoryCopy recursiveShareAliasCount];
    self->_recursiveSharedByMeCount += [subdirectoryCopy recursiveSharedByMeCount];
    if (([subdirectoryCopy isSharedToMeTopLevelItem] & 1) == 0)
    {
      self->_recursiveItemCount += [subdirectoryCopy recursiveItemCount];
    }
  }
}

- (id)generateTelemetryErrorEventsWithMetrics:(id)metrics itemID:(id)d zoneMangledID:(id)iD enhancedDrivePrivacyEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  metricsCopy = metrics;
  dCopy = d;
  iDCopy = iD;
  if (self->_childHasProblem)
  {
    v13 = 0;
    goto LABEL_24;
  }

  v13 = objc_opt_new();
  childCount = [metricsCopy childCount];
  if (childCount)
  {
    v15 = childCount;
    directChildCount = self->_directChildCount;
    childCount2 = [metricsCopy childCount];
    longLongValue = [childCount2 longLongValue];

    if (longLongValue != directChildCount)
    {
      v41 = self->_directChildCount;
      childCount3 = [metricsCopy childCount];
      v43 = v41 - [childCount3 intValue];

      v44 = brc_bread_crumbs();
      v45 = brc_default_log();
      if (os_log_type_enabled(v45, 0x90u))
      {
        debugItemIDString = [dCopy debugItemIDString];
        path = [(NSURL *)self->_url path];
        fp_obfuscatedPath = [path fp_obfuscatedPath];
        v66 = self->_directChildCount;
        childCount4 = [metricsCopy childCount];
        *buf = 138413314;
        v79 = debugItemIDString;
        v80 = 2112;
        v81 = fp_obfuscatedPath;
        v82 = 1024;
        v83 = v66;
        v84 = 2112;
        v85 = childCount4;
        v86 = 2112;
        v87 = v44;
        _os_log_error_impl(&_mh_execute_header, v45, 0x90u, "[ERROR] Direct child count mismatch for %@ at %@ (%d vs %@)%@", buf, 0x30u);
      }

      itemIDString = [dCopy itemIDString];
      v40 = [AppTelemetryTimeSeriesEvent newChildCountMismatchEventWithZoneMangledID:iDCopy enhancedDrivePrivacyEnabled:enabledCopy itemIDString:itemIDString magnitude:v43];
      goto LABEL_23;
    }
  }

  recursiveChildCount = [metricsCopy recursiveChildCount];
  if (recursiveChildCount)
  {
    v20 = recursiveChildCount;
    recursiveItemCount = self->_recursiveItemCount;
    recursiveChildCount2 = [metricsCopy recursiveChildCount];
    longLongValue2 = [recursiveChildCount2 longLongValue];

    if (longLongValue2 != recursiveItemCount)
    {
      v46 = self->_recursiveItemCount;
      recursiveChildCount3 = [metricsCopy recursiveChildCount];
      v48 = v46 - [recursiveChildCount3 intValue];

      v49 = brc_bread_crumbs();
      v50 = brc_default_log();
      if (os_log_type_enabled(v50, 0x90u))
      {
        debugItemIDString2 = [dCopy debugItemIDString];
        path2 = [(NSURL *)self->_url path];
        fp_obfuscatedPath2 = [path2 fp_obfuscatedPath];
        v67 = self->_recursiveItemCount;
        recursiveChildCount4 = [metricsCopy recursiveChildCount];
        *buf = 138413314;
        v79 = debugItemIDString2;
        v80 = 2112;
        v81 = fp_obfuscatedPath2;
        v82 = 1024;
        v83 = v67;
        v84 = 2112;
        v85 = recursiveChildCount4;
        v86 = 2112;
        v87 = v49;
        _os_log_error_impl(&_mh_execute_header, v50, 0x90u, "[ERROR] Recursive child count mismatch for %@ at %@ (%d vs %@)%@", buf, 0x30u);
      }

      itemIDString = [dCopy itemIDString];
      v40 = [AppTelemetryTimeSeriesEvent newRecursiveItemCountMismatchEventWithZoneMangledID:iDCopy enhancedDrivePrivacyEnabled:enabledCopy itemIDString:itemIDString magnitude:v48];
      goto LABEL_23;
    }
  }

  sharedByMeRecursiveCount = [metricsCopy sharedByMeRecursiveCount];
  if (sharedByMeRecursiveCount)
  {
    v25 = sharedByMeRecursiveCount;
    recursiveSharedByMeCount = self->_recursiveSharedByMeCount;
    sharedByMeRecursiveCount2 = [metricsCopy sharedByMeRecursiveCount];
    longLongValue3 = [sharedByMeRecursiveCount2 longLongValue];

    if (longLongValue3 != recursiveSharedByMeCount)
    {
      v51 = self->_recursiveSharedByMeCount;
      sharedByMeRecursiveCount3 = [metricsCopy sharedByMeRecursiveCount];
      v53 = v51 - [sharedByMeRecursiveCount3 intValue];

      v54 = brc_bread_crumbs();
      v55 = brc_default_log();
      if (os_log_type_enabled(v55, 0x90u))
      {
        debugItemIDString3 = [dCopy debugItemIDString];
        path3 = [(NSURL *)self->_url path];
        fp_obfuscatedPath3 = [path3 fp_obfuscatedPath];
        v68 = self->_recursiveSharedByMeCount;
        sharedByMeRecursiveCount4 = [metricsCopy sharedByMeRecursiveCount];
        *buf = 138413314;
        v79 = debugItemIDString3;
        v80 = 2112;
        v81 = fp_obfuscatedPath3;
        v82 = 1024;
        v83 = v68;
        v84 = 2112;
        v85 = sharedByMeRecursiveCount4;
        v86 = 2112;
        v87 = v54;
        _os_log_error_impl(&_mh_execute_header, v55, 0x90u, "[ERROR] Shared-by-me count mismatch for %@ at %@ (%d vs %@)%@", buf, 0x30u);
      }

      itemIDString = [dCopy itemIDString];
      v40 = [AppTelemetryTimeSeriesEvent newShareCountMismatchEventWithZoneMangledID:iDCopy enhancedDrivePrivacyEnabled:enabledCopy itemIDString:itemIDString magnitude:v53];
      goto LABEL_23;
    }
  }

  sharedAliasRecursiveCount = [metricsCopy sharedAliasRecursiveCount];
  if (sharedAliasRecursiveCount)
  {
    v30 = sharedAliasRecursiveCount;
    recursiveShareAliasCount = self->_recursiveShareAliasCount;
    sharedAliasRecursiveCount2 = [metricsCopy sharedAliasRecursiveCount];
    longLongValue4 = [sharedAliasRecursiveCount2 longLongValue];

    if (longLongValue4 != recursiveShareAliasCount)
    {
      v34 = self->_recursiveSharedByMeCount;
      sharedByMeRecursiveCount5 = [metricsCopy sharedByMeRecursiveCount];
      v36 = v34 - [sharedByMeRecursiveCount5 intValue];

      v37 = brc_bread_crumbs();
      v38 = brc_default_log();
      if (os_log_type_enabled(v38, 0x90u))
      {
        debugItemIDString4 = [dCopy debugItemIDString];
        path4 = [(NSURL *)self->_url path];
        fp_obfuscatedPath4 = [path4 fp_obfuscatedPath];
        v69 = self->_recursiveShareAliasCount;
        sharedAliasRecursiveCount3 = [metricsCopy sharedAliasRecursiveCount];
        *buf = 138413314;
        v79 = debugItemIDString4;
        v80 = 2112;
        v81 = fp_obfuscatedPath4;
        v82 = 1024;
        v83 = v69;
        v84 = 2112;
        v85 = sharedAliasRecursiveCount3;
        v86 = 2112;
        v87 = v37;
        _os_log_error_impl(&_mh_execute_header, v38, 0x90u, "[ERROR] Share alias count mismatch for %@ at %@ (%d vs %@)%@", buf, 0x30u);
      }

      itemIDString = [dCopy itemIDString];
      v40 = [AppTelemetryTimeSeriesEvent newShareAliasCountMismatchEventWithZoneMangledID:iDCopy enhancedDrivePrivacyEnabled:enabledCopy itemIDString:itemIDString magnitude:v36];
LABEL_23:
      v56 = v40;

      [v13 addObject:v56];
    }
  }

LABEL_24:

  return v13;
}

@end