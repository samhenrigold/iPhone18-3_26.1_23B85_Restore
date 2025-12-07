@interface BRCFSImporter
- (BOOL)_deleteAppLibrary:(id)library documentsFolder:(id)folder error:(id *)error;
- (BOOL)_doesAppLibraryMatchWithItemURL:(id)l appLibraryRowID:(id)d;
- (BOOL)_isDesktopOrDocumentsItem:(id)item;
- (BOOL)_processParentAndFilenameIfNecessaryWithLocalItem:(id)item changedFields:(unint64_t)fields templateItem:(id)templateItem error:(id *)error;
- (BOOL)_shouldRejectItemDeleteDueToEtags:(id)etags baseVersion:(id)version error:(id *)error;
- (BOOL)_shouldRejectItemWithName:(id)name templateItem:(id)item existingItem:(id)existingItem options:(unint64_t)options shouldRemoveItemFromDrive:(BOOL *)drive;
- (BOOL)changeItem:(id)item baseVersion:(id)version changedFields:(unint64_t)fields newValues:(id)values contents:(id)contents additionalAttrs:(id)attrs clearCKInfoOnSyncUp:(BOOL)up stillPendingFields:(unint64_t *)self0 error:(id *)self1;
- (BOOL)deleteItem:(id)item recursively:(BOOL)recursively baseVersion:(id)version error:(id *)error;
- (BOOL)trashItem:(id)item parentItemInTrash:(id)trash error:(id *)error;
- (BRCFSImporter)initWithAccountSession:(id)session;
- (id)_createAndInsertNewItemWithImportObject:(id)object parentItem:(id)item fields:(unint64_t)fields templateItem:(id)templateItem fileURL:(id)l options:(unint64_t)options additionalAttrs:(id)attrs importBookmark:(id)self0 stillPendingFields:(unint64_t *)self1 error:(id *)self2;
- (id)_createBaseItemWithImportObject:(id)object importBookmark:(id)bookmark parentItem:(id)item options:(unint64_t)options error:(id *)error;
- (id)_findCollidingItemWithTemplateItem:(id)item parentItem:(id)parentItem logicalName:(id)name error:(id *)error;
- (id)_globalItemByDocumentID:(unsigned int)d;
- (id)_globalItemByFileID:(unint64_t)d;
- (id)_handleCollisionIfNecessaryWithTemplateItem:(id)item parentItem:(id)parentItem logicalName:(id)name fileURL:(id)l options:(unint64_t)options error:(id *)error;
- (id)_locateMatchingItemForTemplateItem:(id)item parentItem:(id)parentItem options:(unint64_t)options fileURL:(id)l fields:(unint64_t *)fields shouldReject:(BOOL *)reject additionalAttrs:(id)attrs importBookmark:(id)self0 ignoreImportBookmark:(BOOL *)self1 stillPendingFields:(unint64_t *)self2 error:(id *)self3;
- (id)_locateTemplateItemFromFPFSMigration:(id)migration fields:(unint64_t *)fields documentHasChanges:(BOOL *)changes;
- (id)_parseImportBookmark:(id)bookmark templateItem:(id)item fileURL:(id)l ignoreImportBookmark:(BOOL *)importBookmark;
- (id)createAndImportNewDirectoryWithLogicalName:(id)name parentItem:(id)item error:(id *)error;
- (id)getOrCreateTrashItemInAppLibrary:(id)library error:(id *)error;
- (id)importAppLibraryRootFromTemplateItem:(id)item;
- (id)importNewItemAtURL:(id)l parentItem:(id)item templateItem:(id)templateItem fields:(unint64_t)fields options:(unint64_t)options additionalItemAttributes:(id)attributes importBookmark:(id)bookmark stillPendingFields:(unint64_t *)self0 error:(id *)self1;
- (unsigned)_itemTypeToFileObjectIDType:(char)type itemID:(id)d;
- (unsigned)capabilityToMoveItem:(id)item toNewParentItem:(id)parentItem error:(id *)error;
- (void)_changeBasicFieldsOnItem:(id)item fields:(unint64_t)fields template:(id)template;
- (void)_childPropagationSchedule;
- (void)_cleanItemBatchAfterMigrationToFPFSIfNecessary;
- (void)_learnEtagsIfNecessaryWithItem:(id)item templateItem:(id)templateItem changedFields:(unint64_t)fields baseVersion:(id)version;
- (void)_learnLocalContentEtagXattrIfPossibleOnDocumentItem:(id)item templateItem:(id)templateItem;
- (void)_markNextChildBatchDead:(id)dead persistedState:(id)state batchSize:(int)size;
- (void)_processIngestBatch:(id)batch minRowID:(unint64_t)d;
- (void)_propagateDirectoryMergeOrCrossZoneMove:(id)move persistedState:(id)state batchSize:(int)size;
- (void)_propagateFieldsToNextChildBatch:(id)batch persistedState:(id)state minRowID:(unint64_t)d batchSize:(int)size;
- (void)_reportBouncingForMigration:(id)migration existingItem:(id)item;
- (void)_resolveConflictLosersForItem:(id)item localItem:(id)localItem;
- (void)_updateFPFSMigrationStatsForBouncing:(id)bouncing existingItem:(id)item;
- (void)resume;
@end

@implementation BRCFSImporter

- (BRCFSImporter)initWithAccountSession:(id)session
{
  sessionCopy = session;
  v17.receiver = self;
  v17.super_class = BRCFSImporter;
  v6 = [(BRCFSImporter *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_session, session);
    objc_initWeak(&location, v7);
    v8 = [BRCFairSource alloc];
    fairClientDBScheduler = [(BRCAccountSession *)v7->_session fairClientDBScheduler];
    v10 = [(BRCFairSource *)v8 initWithName:@"child-propagation" scheduler:fairClientDBScheduler];
    childPropagationSource = v7->_childPropagationSource;
    v7->_childPropagationSource = v10;

    clientTruthWorkloop = [sessionCopy clientTruthWorkloop];
    [(BRCFairSource *)v7->_childPropagationSource setWorkloop:clientTruthWorkloop];

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __40__BRCFSImporter_initWithAccountSession___block_invoke;
    v14[3] = &unk_2784FF400;
    objc_copyWeak(&v15, &location);
    [(BRCFairSource *)v7->_childPropagationSource setEventHandler:v14];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __40__BRCFSImporter_initWithAccountSession___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _childPropagationSchedule];
}

- (id)_createBaseItemWithImportObject:(id)object importBookmark:(id)bookmark parentItem:(id)item options:(unint64_t)options error:(id *)error
{
  optionsCopy = options;
  v54 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  bookmarkCopy = bookmark;
  itemCopy = item;
  if ([objectCopy isDocument])
  {
    v15 = off_2784FDA40;
    goto LABEL_5;
  }

  if ([objectCopy isSymLink])
  {
    v15 = off_2784FDD90;
    goto LABEL_5;
  }

  if (![objectCopy isBRAlias])
  {
    if ([objectCopy isFinderAlias])
    {
      v15 = off_2784FDB00;
    }

    else
    {
      if (([objectCopy isUnixDir] & 1) == 0)
      {
        v43 = brc_bread_crumbs();
        v44 = brc_default_log();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
        {
          [BRCFSImporter _createBaseItemWithImportObject:importBookmark:parentItem:options:error:];
        }

        v28 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:{@"unreachable: Import object of unknown type %@", objectCopy}];
        if (!v28)
        {
          goto LABEL_21;
        }

        v29 = brc_bread_crumbs();
        v30 = brc_default_log();
        if (!os_log_type_enabled(v30, 0x90u))
        {
          goto LABEL_20;
        }

        v45 = "(passed to caller)";
        *buf = 136315906;
        v47 = "[BRCFSImporter _createBaseItemWithImportObject:importBookmark:parentItem:options:error:]";
        v48 = 2080;
        if (!error)
        {
          v45 = "(ignored by caller)";
        }

        goto LABEL_54;
      }

      v15 = off_2784FDA38;
    }

LABEL_5:
    v16 = [objc_alloc(*v15) _initWithImportObject:objectCopy error:error];
    mangledID = [bookmarkCopy mangledID];
    isShared = [mangledID isShared];

    if (isShared)
    {
      v19 = brc_bread_crumbs();
      v20 = brc_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v47 = v16;
        v48 = 2112;
        v49 = v19;
        _os_log_impl(&dword_223E7A000, v20, OS_LOG_TYPE_DEFAULT, "[WARNING] Marking %@ as a top level shared item because it has top level share bookmark data%@", buf, 0x16u);
      }

      [v16 markImportedItemAsSharedWithImportBookmark:bookmarkCopy parent:itemCopy];
    }

    if ((optionsCopy & 1) == 0)
    {
      if ([(BRCFSImporter *)self _isDesktopOrDocumentsItem:v16])
      {
        v21 = brc_bread_crumbs();
        v22 = brc_default_log();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          [BRCFSImporter _createBaseItemWithImportObject:importBookmark:parentItem:options:error:];
        }

        logicalName = [objectCopy logicalName];
        v24 = [logicalName isEqualToString:*MEMORY[0x277CFAD80]];

        if (v24)
        {
          v25 = +[BRCItemID defaultDesktopItemID];
        }

        else
        {
          logicalName2 = [objectCopy logicalName];
          v38 = [logicalName2 isEqualToString:*MEMORY[0x277CFAD90]];

          if (!v38)
          {
            v39 = 0;
            goto LABEL_39;
          }

          v25 = +[BRCItemID defaultDocumentsItemID];
        }

        v39 = v25;
LABEL_39:
        clientZone = [v16 clientZone];
        v41 = [clientZone existsByItemID:v39];

        if ((v41 & 1) == 0)
        {
          [v16 learnItemID:v39 serverItem:0];
        }

        [v16 markFromInitialScan];

        goto LABEL_42;
      }

      if ([v16 isUserVisible])
      {
        goto LABEL_42;
      }

      if ([v16 isInDocumentScope])
      {
        appLibrary = [v16 appLibrary];
        containerMetadata = [appLibrary containerMetadata];
        isDocumentScopePublic = [containerMetadata isDocumentScopePublic];

        if (!isDocumentScopePublic)
        {
          goto LABEL_42;
        }
      }

      v35 = brc_bread_crumbs();
      v36 = brc_default_log();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        [BRCFSImporter _createBaseItemWithImportObject:importBookmark:parentItem:options:error:];
      }
    }

    [v16 markFromInitialScan];
    goto LABEL_42;
  }

  v26 = brc_bread_crumbs();
  v27 = brc_default_log();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
  {
    [BRCFSImporter _createBaseItemWithImportObject:importBookmark:parentItem:options:error:];
  }

  v28 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:{@"unreachable: Can't import br aliases anymore %@", objectCopy}];
  if (!v28)
  {
    goto LABEL_21;
  }

  v29 = brc_bread_crumbs();
  v30 = brc_default_log();
  if (os_log_type_enabled(v30, 0x90u))
  {
    v45 = "(passed to caller)";
    *buf = 136315906;
    v47 = "[BRCFSImporter _createBaseItemWithImportObject:importBookmark:parentItem:options:error:]";
    v48 = 2080;
    if (!error)
    {
      v45 = "(ignored by caller)";
    }

LABEL_54:
    v49 = v45;
    v50 = 2112;
    v51 = v28;
    v52 = 2112;
    v53 = v29;
    _os_log_error_impl(&dword_223E7A000, v30, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
  }

LABEL_20:

LABEL_21:
  if (error)
  {
    v31 = v28;
    *error = v28;
  }

  v16 = 0;
LABEL_42:

  return v16;
}

- (id)_globalItemByDocumentID:(unsigned int)d
{
  v3 = *&d;
  if ([(BRCFSImporter *)self isFPFSMigrationInProgress])
  {
    itemFetcher = [(BRCAccountSession *)self->_session itemFetcher];
    v6 = [itemFetcher globalItemByDocumentID:v3];

    if ([v6 isMigratingToFPFS])
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
  }

  else
  {
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [BRCFSImporter _globalItemByDocumentID:];
    }

    v8 = 0;
  }

  return v8;
}

- (id)_globalItemByFileID:(unint64_t)d
{
  if ([(BRCFSImporter *)self isFPFSMigrationInProgress])
  {
    itemFetcher = [(BRCAccountSession *)self->_session itemFetcher];
    v6 = [itemFetcher globalItemByFileID:d];

    if ([v6 isMigratingToFPFS])
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
  }

  else
  {
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [BRCFSImporter _globalItemByFileID:];
    }

    v8 = 0;
  }

  return v8;
}

- (BOOL)_shouldRejectItemWithName:(id)name templateItem:(id)item existingItem:(id)existingItem options:(unint64_t)options shouldRemoveItemFromDrive:(BOOL *)drive
{
  optionsCopy = options;
  v45 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  itemCopy = item;
  existingItemCopy = existingItem;
  v14 = [nameCopy br_stringByDeletingPathBounceNo:0];
  if ((optionsCopy & 1) == 0)
  {
    goto LABEL_10;
  }

  extendedAttributes = [itemCopy extendedAttributes];
  v16 = [extendedAttributes objectForKeyedSubscript:@"com.apple.fpfs.fileid"];
  if (!v16 || ([v14 isEqualToString:@".Trash-from-provider"] & 1) == 0)
  {

    goto LABEL_10;
  }

  [existingItemCopy st];
  v40 = v14;
  v18 = v17 = existingItemCopy;
  logicalName = [v18 logicalName];
  v20 = [logicalName br_stringByDeletingPathBounceNo:0];
  v21 = [v20 isEqualToString:@".Trash-from-provider"];

  existingItemCopy = v17;
  v14 = v40;

  if (!v21)
  {
LABEL_10:
    if ([v14 isEqualToString:*MEMORY[0x277CFADB8]] && (!existingItemCopy || -[NSObject isInTrashScope](existingItemCopy, "isInTrashScope")))
    {
      contentType2 = brc_bread_crumbs();
      v26 = brc_default_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v42 = contentType2;
        v27 = "[INFO] rejecting Trash folder%@";
LABEL_20:
        v31 = v26;
        v32 = OS_LOG_TYPE_INFO;
LABEL_26:
        _os_log_impl(&dword_223E7A000, v31, v32, v27, buf, 0xCu);
        goto LABEL_27;
      }

      goto LABEL_27;
    }

    if (itemCopy)
    {
      contentType = [itemCopy contentType];
      if ([contentType br_isAliasFileType])
      {
        extendedAttributes2 = [itemCopy extendedAttributes];
        v30 = [extendedAttributes2 objectForKeyedSubscript:@"com.apple.clouddocs.security"];

        if (v30)
        {
          contentType2 = brc_bread_crumbs();
          v26 = brc_default_log();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v42 = contentType2;
            v27 = "[INFO] rejecting BRAlias%@";
            goto LABEL_20;
          }

LABEL_27:

          v24 = 1;
          goto LABEL_36;
        }
      }

      else
      {
      }
    }

    if ([nameCopy isEqualToString:*MEMORY[0x277CFADB0]])
    {
      parentItemIdentifier = [itemCopy parentItemIdentifier];
      v34 = [parentItemIdentifier isEqualToString:*MEMORY[0x277CC6348]];

      if (v34)
      {
        contentType2 = brc_bread_crumbs();
        v26 = brc_default_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v42 = contentType2;
          v27 = "[WARNING] rejecting shared mangled containerID%@";
          v31 = v26;
          v32 = OS_LOG_TYPE_DEFAULT;
          goto LABEL_26;
        }

        goto LABEL_27;
      }
    }

    contentType2 = [itemCopy contentType];
    if (([contentType2 br_isDirectoryType]& 1) == 0)
    {
      v35 = [nameCopy isEqualToString:*MEMORY[0x277CFAD90]];

      if (!v35)
      {
        goto LABEL_35;
      }

      v36 = MEMORY[0x277CFAE50];
      parentItemIdentifier2 = [itemCopy parentItemIdentifier];
      contentType2 = [v36 fileObjectIDWithString:parentItemIdentifier2];

      if ([contentType2 isAppLibraryRoot])
      {
        v26 = brc_bread_crumbs();
        v38 = brc_default_log();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v42 = v26;
          _os_log_impl(&dword_223E7A000, v38, OS_LOG_TYPE_DEFAULT, "[WARNING] Rejecting documents folder to be anything other then directory%@", buf, 0xCu);
        }

        goto LABEL_27;
      }
    }

LABEL_35:
    v24 = 0;
    goto LABEL_36;
  }

  v22 = brc_bread_crumbs();
  v23 = brc_default_log();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v42 = existingItemCopy;
    v43 = 2112;
    v44 = v22;
    _os_log_impl(&dword_223E7A000, v23, OS_LOG_TYPE_DEFAULT, "[WARNING] Rejecting .Trash-from-provider item that was mapped to %@%@", buf, 0x16u);
  }

  v24 = 1;
  if (drive)
  {
    *drive = 1;
  }

LABEL_36:

  return v24;
}

- (BOOL)_isDesktopOrDocumentsItem:(id)item
{
  itemCopy = item;
  parentFileObjectID = [itemCopy parentFileObjectID];
  if ([parentFileObjectID isCloudDocsRoot] && objc_msgSend(itemCopy, "isDirectory") && objc_msgSend(itemCopy, "itemScope") == 2)
  {
    v5 = [itemCopy st];
    logicalName = [v5 logicalName];
    if ([logicalName isEqualToString:*MEMORY[0x277CFAD80]])
    {
      v7 = 1;
    }

    else
    {
      v9 = [itemCopy st];
      logicalName2 = [v9 logicalName];
      v7 = [logicalName2 isEqualToString:*MEMORY[0x277CFAD90]];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unsigned)capabilityToMoveItem:(id)item toNewParentItem:(id)parentItem error:(id *)error
{
  v48 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  parentItemCopy = parentItem;
  if (parentItemCopy)
  {
    if (!itemCopy)
    {
      clientZone = [MEMORY[0x277CCA9B8] brc_errorItemNotFound:0];
      if (clientZone)
      {
        v14 = brc_bread_crumbs();
        v15 = brc_default_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          v37 = "(passed to caller)";
          v40 = 136315906;
          v41 = "[BRCFSImporter capabilityToMoveItem:toNewParentItem:error:]";
          v42 = 2080;
          if (!error)
          {
            v37 = "(ignored by caller)";
          }

          v43 = v37;
          v44 = 2112;
          v45 = clientZone;
          v46 = 2112;
          v47 = v14;
          _os_log_debug_impl(&dword_223E7A000, v15, OS_LOG_TYPE_DEBUG, "[DEBUG] %s: %s error: %@%@", &v40, 0x2Au);
        }
      }

      if (error)
      {
        v16 = clientZone;
        *error = clientZone;
      }

      v13 = 1;
      goto LABEL_75;
    }

    clientZone = [itemCopy clientZone];
    clientZone2 = [parentItemCopy clientZone];
    if ([itemCopy isSharedToMeChildItem] && (objc_msgSend(itemCopy, "sharingOptions") & 0x20) != 0)
    {
      v11 = brc_bread_crumbs();
      v12 = brc_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v40 = 138412546;
        v41 = itemCopy;
        v42 = 2112;
        v43 = v11;
        v18 = "[WARNING] Can't edit a readonly share for %@%@";
LABEL_38:
        _os_log_impl(&dword_223E7A000, v12, OS_LOG_TYPE_DEFAULT, v18, &v40, 0x16u);
      }
    }

    else
    {
      if (![parentItemCopy isSharedToMe] || (objc_msgSend(parentItemCopy, "sharingOptions") & 0x20) == 0)
      {
        if ((([itemCopy isSharedToMeTopLevelItem] & 1) != 0 || objc_msgSend(itemCopy, "isSharedByMe") && objc_msgSend(itemCopy, "hasShareIDAndIsOwnedByMe")) && objc_msgSend(parentItemCopy, "isInTrashScope"))
        {
          v11 = brc_bread_crumbs();
          v12 = brc_default_log();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v40 = 138412802;
            v41 = itemCopy;
            v42 = 2112;
            v43 = parentItemCopy;
            v44 = 2112;
            v45 = v11;
            _os_log_impl(&dword_223E7A000, v12, OS_LOG_TYPE_DEFAULT, "[WARNING] Trying to move shared top item %@ into trash at parent %@%@", &v40, 0x20u);
          }

          v13 = 4096;
          goto LABEL_73;
        }

        if (([clientZone isEqualToClientZone:clientZone2] & 1) == 0)
        {
          if ([itemCopy isSharedToMeTopLevelItem])
          {
            if ([clientZone2 isSharedZone])
            {
              v11 = brc_bread_crumbs();
              v12 = brc_default_log();
              if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
              {
                v40 = 138412802;
                v41 = itemCopy;
                v42 = 2112;
                v43 = parentItemCopy;
                v44 = 2112;
                v45 = v11;
                _os_log_impl(&dword_223E7A000, v12, OS_LOG_TYPE_DEFAULT, "[WARNING] Trying to move shared top item %@ into another shared item %@%@", &v40, 0x20u);
              }

              v13 = 2;
            }

            else
            {
              appLibrary = [itemCopy appLibrary];
              defaultClientZone = [appLibrary defaultClientZone];
              v30 = [defaultClientZone isEqualToClientZone:clientZone2];

              if (v30)
              {
                v11 = brc_bread_crumbs();
                v12 = brc_default_log();
                if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
                {
                  [BRCFSImporter capabilityToMoveItem:toNewParentItem:error:];
                }

                v13 = 64;
              }

              else
              {
                v11 = brc_bread_crumbs();
                v12 = brc_default_log();
                if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
                {
                  v40 = 138412546;
                  v41 = itemCopy;
                  v42 = 2112;
                  v43 = v11;
                  _os_log_impl(&dword_223E7A000, v12, OS_LOG_TYPE_DEFAULT, "[WARNING] Top level shared item %@ moved across zone boundaries.  Allowing it%@", &v40, 0x16u);
                }

                v13 = 256;
              }
            }

            goto LABEL_73;
          }

          if (([clientZone isSharedZone] & 1) == 0 && !objc_msgSend(clientZone2, "isSharedZone"))
          {
            v11 = brc_bread_crumbs();
            v12 = brc_default_log();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              v40 = 138412802;
              v41 = itemCopy;
              v42 = 2112;
              v43 = parentItemCopy;
              v44 = 2112;
              v45 = v11;
              v13 = 32;
              _os_log_impl(&dword_223E7A000, v12, OS_LOG_TYPE_DEFAULT, "[WARNING] We need to download item %@ which is crossing zone boundaries to %@%@", &v40, 0x20u);
            }

            else
            {
              v13 = 32;
            }

            goto LABEL_73;
          }

          if (([clientZone isSharedZone] & 1) != 0 || !objc_msgSend(itemCopy, "isDirectory") || (objc_msgSend(itemCopy, "asDirectory"), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "possiblyContainsSharedItem"), v25, !v26))
          {
            v11 = brc_bread_crumbs();
            v12 = brc_default_log();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              v40 = 138412802;
              v41 = itemCopy;
              v42 = 2112;
              v43 = parentItemCopy;
              v44 = 2112;
              v45 = v11;
              _os_log_impl(&dword_223E7A000, v12, OS_LOG_TYPE_DEFAULT, "[WARNING] We need to download item %@ which is moving in or out of a shared zone to parent %@%@", &v40, 0x20u);
            }

            v13 = 16;
            goto LABEL_73;
          }

          v11 = brc_bread_crumbs();
          v12 = brc_default_log();
          if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_89;
          }

          v40 = 138412802;
          v41 = itemCopy;
          v42 = 2112;
          v43 = parentItemCopy;
          v44 = 2112;
          v45 = v11;
          v27 = "[WARNING] Moving an unshared directory %@ into a shared parent %@ where the source item has shared subitems%@";
          goto LABEL_88;
        }

        if ([itemCopy hasShareIDAndIsOwnedByMe])
        {
          if (([parentItemCopy isOwnedByMe] & 1) == 0)
          {
            [BRCFSImporter capabilityToMoveItem:toNewParentItem:error:];
          }

          if ([parentItemCopy isSharedByMe])
          {
            v11 = brc_bread_crumbs();
            v12 = brc_default_log();
            if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
LABEL_72:
              v13 = 128;
              goto LABEL_73;
            }

            v40 = 138412802;
            v41 = itemCopy;
            v42 = 2112;
            v43 = parentItemCopy;
            v44 = 2112;
            v45 = v11;
            v17 = "[WARNING] Trying to move shared top item %@ into another shared item %@%@";
LABEL_28:
            _os_log_impl(&dword_223E7A000, v12, OS_LOG_TYPE_DEFAULT, v17, &v40, 0x20u);
            goto LABEL_72;
          }

LABEL_80:
          if ([itemCopy isDirectory] && (objc_msgSend(itemCopy, "isSharedByMe") & 1) == 0 && (objc_msgSend(itemCopy, "isSharedToMe") & 1) == 0)
          {
            if (([parentItemCopy isSharedToMe] & 1) != 0 || objc_msgSend(parentItemCopy, "isSharedByMe"))
            {
              asDirectory = [itemCopy asDirectory];
              possiblyContainsSharedItem = [asDirectory possiblyContainsSharedItem];

              if (possiblyContainsSharedItem)
              {
                v11 = brc_bread_crumbs();
                v12 = brc_default_log();
                if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
                {
LABEL_89:
                  v13 = 1024;
                  goto LABEL_73;
                }

                v40 = 138412802;
                v41 = itemCopy;
                v42 = 2112;
                v43 = parentItemCopy;
                v44 = 2112;
                v45 = v11;
                v27 = "[WARNING] Moving item with a shared child %@ into a share with parent %@%@";
LABEL_88:
                _os_log_impl(&dword_223E7A000, v12, OS_LOG_TYPE_DEFAULT, v27, &v40, 0x20u);
                goto LABEL_89;
              }
            }

            if ([parentItemCopy isInTrashScope])
            {
              asDirectory2 = [itemCopy asDirectory];
              possiblyContainsSharedItem2 = [asDirectory2 possiblyContainsSharedItem];

              if (possiblyContainsSharedItem2)
              {
                v11 = brc_bread_crumbs();
                v12 = brc_default_log();
                if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
                {
                  v40 = 138412802;
                  v41 = itemCopy;
                  v42 = 2112;
                  v43 = parentItemCopy;
                  v44 = 2112;
                  v45 = v11;
                  _os_log_impl(&dword_223E7A000, v12, OS_LOG_TYPE_DEFAULT, "[WARNING] Moving an item with a shared child %@ into trash at parent %@%@", &v40, 0x20u);
                }

                v13 = 2048;
                goto LABEL_73;
              }
            }
          }

          v13 = 64;
          goto LABEL_74;
        }

        if ([itemCopy isOwnedByMe])
        {
          if (![itemCopy isSharedByMe])
          {
            if ([parentItemCopy isSharedByMe])
            {
              v11 = brc_bread_crumbs();
              v12 = brc_default_log();
              if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_72;
              }

              v40 = 138412802;
              v41 = itemCopy;
              v42 = 2112;
              v43 = parentItemCopy;
              v44 = 2112;
              v45 = v11;
              v17 = "[WARNING] Moving item %@ into a share with parent %@%@";
              goto LABEL_28;
            }

            goto LABEL_80;
          }

          if (([parentItemCopy isOwnedByMe] & 1) == 0)
          {
            [BRCFSImporter capabilityToMoveItem:toNewParentItem:error:];
          }

          if (([parentItemCopy isSharedByMe] & 1) == 0)
          {
            v11 = brc_bread_crumbs();
            v12 = brc_default_log();
            if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_72;
            }

            v40 = 138412802;
            v41 = itemCopy;
            v42 = 2112;
            v43 = parentItemCopy;
            v44 = 2112;
            v45 = v11;
            v17 = "[WARNING] Moving item %@ out of the share to new parent %@%@";
            goto LABEL_28;
          }

          v11 = [MEMORY[0x277CBC5D0] brc_fetchShareIDWithSharedItem:itemCopy];
          v12 = [MEMORY[0x277CBC5D0] brc_fetchShareIDWithSharedItem:parentItemCopy];
          if (!v12 || ([v11 recordName], v19 = objc_claimAutoreleasedReturnValue(), -[NSObject recordName](v12, "recordName"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v19, "isEqualToString:", v20), v20, v19, (v21 & 1) == 0))
          {
            v22 = brc_bread_crumbs();
            v23 = brc_default_log();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              v40 = 138412802;
              v41 = itemCopy;
              v42 = 2112;
              v43 = parentItemCopy;
              v44 = 2112;
              v45 = v22;
              v24 = "[WARNING] Moving item %@ into a different share with parent %@%@";
LABEL_70:
              _os_log_impl(&dword_223E7A000, v23, OS_LOG_TYPE_DEFAULT, v24, &v40, 0x20u);
              goto LABEL_71;
            }

            goto LABEL_71;
          }
        }

        else
        {
          if ([parentItemCopy isOwnedByMe])
          {
            [BRCFSImporter capabilityToMoveItem:toNewParentItem:error:];
          }

          v11 = [MEMORY[0x277CBC5D0] brc_fetchShareIDWithSharedItem:itemCopy];
          v12 = [MEMORY[0x277CBC5D0] brc_fetchShareIDWithSharedItem:parentItemCopy];
          if (!v12 || ([v11 recordName], v31 = objc_claimAutoreleasedReturnValue(), -[NSObject recordName](v12, "recordName"), v32 = objc_claimAutoreleasedReturnValue(), v33 = objc_msgSend(v31, "isEqualToString:", v32), v32, v31, (v33 & 1) == 0))
          {
            v22 = brc_bread_crumbs();
            v23 = brc_default_log();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              v40 = 138412802;
              v41 = itemCopy;
              v42 = 2112;
              v43 = parentItemCopy;
              v44 = 2112;
              v45 = v22;
              v24 = "[WARNING] Moving item %@ into another shared item %@%@";
              goto LABEL_70;
            }

LABEL_71:

            goto LABEL_72;
          }
        }

        goto LABEL_80;
      }

      v11 = brc_bread_crumbs();
      v12 = brc_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v40 = 138412546;
        v41 = parentItemCopy;
        v42 = 2112;
        v43 = v11;
        v18 = "[WARNING] Can't add a file to a readonly share with parent %@%@";
        goto LABEL_38;
      }
    }

    v13 = 512;
LABEL_73:

LABEL_74:
LABEL_75:

    goto LABEL_76;
  }

  v13 = 8;
LABEL_76:

  return v13;
}

- (void)_resolveConflictLosersForItem:(id)item localItem:(id)localItem
{
  v19 = *MEMORY[0x277D85DE8];
  localItemCopy = localItem;
  conflictingVersions = [item conflictingVersions];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [conflictingVersions countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(conflictingVersions);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 conflictResolved])
        {
          br_contentEtag = [v11 br_contentEtag];
          asDocument = [localItemCopy asDocument];
          [asDocument appDidResolveConflictLoserWithEtag:br_contentEtag];
        }
      }

      v8 = [conflictingVersions countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (void)_changeBasicFieldsOnItem:(id)item fields:(unint64_t)fields template:(id)template
{
  fieldsCopy = fields;
  itemCopy = item;
  templateCopy = template;
  v8 = templateCopy;
  if ((fieldsCopy & 8) != 0)
  {
    lastUsedDate = [templateCopy lastUsedDate];
    [itemCopy updateWithLastUsedDate:lastUsedDate];

    if ((fieldsCopy & 0x10) == 0)
    {
LABEL_3:
      if ((fieldsCopy & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((fieldsCopy & 0x10) == 0)
  {
    goto LABEL_3;
  }

  tagData = [v8 tagData];
  v12 = FPGetTagsFromTagsData();
  v13 = [v12 valueForKey:@"label"];

  [itemCopy updateWithFinderTagNames:v13];
  if ((fieldsCopy & 0x20) == 0)
  {
LABEL_4:
    if ((fieldsCopy & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  favoriteRank = [v8 favoriteRank];
  [itemCopy updateWithFavoriteRank:{objc_msgSend(favoriteRank, "longLongValue")}];

  if ((fieldsCopy & 0x40) == 0)
  {
LABEL_5:
    if ((fieldsCopy & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  creationDate = [v8 creationDate];
  [itemCopy updateWithCreationDate:creationDate];

  if ((fieldsCopy & 0x80) == 0)
  {
LABEL_6:
    if ((fieldsCopy & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  contentModificationDate = [v8 contentModificationDate];
  [itemCopy updateWithContentModificationDate:contentModificationDate];

  if ((fieldsCopy & 0x100) == 0)
  {
LABEL_7:
    if ((fieldsCopy & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  [itemCopy updateWithFileSystemFlags:{objc_msgSend(v8, "fileSystemFlags")}];
  if ((fieldsCopy & 0x200) != 0)
  {
LABEL_8:
    extendedAttributes = [v8 extendedAttributes];
    [itemCopy updateWithXattrs:extendedAttributes];
  }

LABEL_9:
}

- (void)_updateFPFSMigrationStatsForBouncing:(id)bouncing existingItem:(id)item
{
  bouncingCopy = bouncing;
  itemCopy = item;
  contentType = [bouncingCopy contentType];
  br_isDirectoryType = [contentType br_isDirectoryType];

  if (br_isDirectoryType)
  {
    v9 = 0;
  }

  else
  {
    contentType2 = [bouncingCopy contentType];
    br_isSymbolicLinkType = [contentType2 br_isSymbolicLinkType];

    if (br_isSymbolicLinkType)
    {
      v9 = 4;
    }

    else
    {
      contentType3 = [bouncingCopy contentType];
      br_isAliasFileType = [contentType3 br_isAliasFileType];

      if (br_isAliasFileType)
      {
        v9 = 3;
      }

      else
      {
        contentType4 = [bouncingCopy contentType];
        br_isPackageType = [contentType4 br_isPackageType];

        if (br_isPackageType)
        {
          v9 = 2;
        }

        else
        {
          v9 = 1;
        }
      }
    }
  }

  if ([itemCopy isDirectory])
  {
    v16 = 0;
  }

  else if ([itemCopy isSymLink])
  {
    v16 = 4;
  }

  else if ([itemCopy isFinderBookmark])
  {
    v16 = 3;
  }

  else if ([itemCopy isPackage])
  {
    v16 = 2;
  }

  else
  {
    v16 = 1;
  }

  [(BRCAccountSession *)self->_session _updateFPFSMigrationBouncedItemType:v9 withExistingItemType:v16];
}

- (void)_reportBouncingForMigration:(id)migration existingItem:(id)item
{
  v30 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  [(BRCFSImporter *)self _updateFPFSMigrationStatsForBouncing:migration existingItem:itemCopy];
  if ([(BRCFSImporter *)self isFPFSMigrationInProgress])
  {
    if ([itemCopy isDirectory])
    {
      v7 = [BRCUserDefaults defaultsForMangledID:0];
      filterDecendantsOfNotMigratedFolders = [v7 filterDecendantsOfNotMigratedFolders];

      if (filterDecendantsOfNotMigratedFolders)
      {
        clientDB = [(BRCAccountSession *)self->_session clientDB];
        if (isFPFSMigrationNonMigratedFoldersExists(clientDB, v10))
        {
          itemGlobalID = [itemCopy itemGlobalID];
          v12 = brc_bread_crumbs();
          v13 = brc_default_log();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            [BRCFSImporter _reportBouncingForMigration:existingItem:];
          }

          itemID = [itemGlobalID itemID];
          zoneRowID = [itemGlobalID zoneRowID];
          v16 = [clientDB execute:{@"INSERT OR IGNORE INTO fpfs_folders_not_migrated (item_id, zone_rowid) VALUES (%@, %@)", itemID, zoneRowID}];

          if (!v16 || ![clientDB changes])
          {
            v17 = brc_bread_crumbs();
            v18 = brc_default_log();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              itemID2 = [itemGlobalID itemID];
              zoneRowID2 = [itemGlobalID zoneRowID];
              lastError = [clientDB lastError];
              *buf = 138413058;
              v23 = itemID2;
              v24 = 2112;
              v25 = zoneRowID2;
              v26 = 2112;
              v27 = lastError;
              v28 = 2112;
              v29 = v17;
              _os_log_impl(&dword_223E7A000, v18, OS_LOG_TYPE_DEFAULT, "[WARNING] Failed inserting to fpfs_folders_not_migrated with %@, %@. Error: %@%@", buf, 0x2Au);
            }
          }
        }
      }
    }
  }
}

- (id)_parseImportBookmark:(id)bookmark templateItem:(id)item fileURL:(id)l ignoreImportBookmark:(BOOL *)importBookmark
{
  v53 = *MEMORY[0x277D85DE8];
  bookmarkCopy = bookmark;
  itemCopy = item;
  lCopy = l;
  mangledID = [bookmarkCopy mangledID];
  itemID = [bookmarkCopy itemID];
  v14 = [(BRCAccountSession *)self->_session clientZoneByMangledID:mangledID];
  if (![bookmarkCopy isTrashBookmark])
  {
    v24 = [v14 itemByItemID:itemID];
    if (!v24)
    {
      v35 = brc_bread_crumbs();
      v36 = brc_default_log();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        debugItemIDString = [itemID debugItemIDString];
        *buf = 138412802;
        *&buf[4] = debugItemIDString;
        *&buf[12] = 2112;
        *&buf[14] = mangledID;
        *&buf[22] = 2112;
        v50 = v35;
        _os_log_impl(&dword_223E7A000, v36, OS_LOG_TYPE_DEFAULT, "[WARNING] Couldn't find item by bookmark data %@ (%@)%@", buf, 0x20u);
      }

      goto LABEL_31;
    }

    v25 = brc_bread_crumbs();
    v26 = brc_default_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      [BRCFSImporter _parseImportBookmark:templateItem:fileURL:ignoreImportBookmark:];
    }

    if ((itemsHaveTheSameKind(v24, itemCopy) & 1) == 0)
    {
      v41 = brc_bread_crumbs();
      v42 = brc_default_log();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v41;
        _os_log_impl(&dword_223E7A000, v42, OS_LOG_TYPE_DEFAULT, "[WARNING] The existing shared item doesn't have the right kind%@", buf, 0xCu);
      }

      if (importBookmark)
      {
        asDirectory = 0;
        v40 = 0;
        *importBookmark = 1;
        goto LABEL_41;
      }

LABEL_32:
      asDirectory = 0;
      v40 = 0;
      goto LABEL_41;
    }

    if ([v24 isDocument])
    {
      asDocument = [v24 asDocument];
      currentVersion = [asDocument currentVersion];
      if ([currentVersion size] <= 0)
      {

LABEL_38:
        goto LABEL_39;
      }

      documentSize = [itemCopy documentSize];
      v29 = [documentSize longLongValue] == 0;

      if (v29)
      {
        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        asDocument = [defaultManager enumeratorAtURL:lCopy includingPropertiesForKeys:0 options:0 errorHandler:0];

        nextObject = [asDocument nextObject];
        v32 = nextObject == 0;

        if (v32)
        {
          v33 = brc_bread_crumbs();
          v34 = brc_default_log();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412802;
            *&buf[4] = itemCopy;
            *&buf[12] = 2112;
            *&buf[14] = v24;
            *&buf[22] = 2112;
            v50 = v33;
            _os_log_fault_impl(&dword_223E7A000, v34, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: can't match an empty shared package %@ to the existing shared package item %@%@", buf, 0x20u);
          }

          if (importBookmark)
          {
            *importBookmark = 1;
          }

          goto LABEL_32;
        }

        goto LABEL_38;
      }
    }

LABEL_39:
    asDirectory = 0;
    goto LABEL_40;
  }

  if (([v14 isPrivateZone] & 1) == 0)
  {
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = mangledID;
      *&buf[12] = 2112;
      *&buf[14] = v15;
      _os_log_impl(&dword_223E7A000, v16, OS_LOG_TYPE_DEFAULT, "[WARNING] Can't find zone for trash putback %@, falling back to clouddocs zone%@", buf, 0x16u);
    }

    cloudDocsClientZone = [(BRCAccountSession *)self->_session cloudDocsClientZone];

    v14 = cloudDocsClientZone;
  }

  v18 = [v14 itemByItemID:itemID];
  asDirectory = [v18 asDirectory];

  if (([asDirectory isInTrashScope] & 1) == 0)
  {
    v20 = brc_bread_crumbs();
    v21 = brc_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = itemID;
      *&buf[12] = 2112;
      *&buf[14] = v20;
      _os_log_impl(&dword_223E7A000, v21, OS_LOG_TYPE_DEFAULT, "[WARNING] Can't find trash parent for %@, falling back to one at the zone root%@", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v50 = __Block_byref_object_copy__25;
    v51 = __Block_byref_object_dispose__25;
    v52 = 0;
    v22 = [v14 db];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __80__BRCFSImporter__parseImportBookmark_templateItem_fileURL_ignoreImportBookmark___block_invoke;
    v46[3] = &unk_278503390;
    v48 = buf;
    v46[4] = self;
    v47 = v14;
    [v22 groupInBatch:v46];

    v23 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);

    asDirectory = v23;
  }

  if (!asDirectory)
  {
    v38 = brc_bread_crumbs();
    v39 = brc_default_log();
    if (os_log_type_enabled(v39, 0x90u))
    {
      [BRCFSImporter _parseImportBookmark:templateItem:fileURL:ignoreImportBookmark:];
    }

LABEL_31:
    v24 = 0;
    goto LABEL_32;
  }

  v24 = 0;
LABEL_40:
  [v24 markDoneMigratingToFPFS];
  v24 = v24;
  v40 = v24;
LABEL_41:

  return v40;
}

void __80__BRCFSImporter__parseImportBookmark_templateItem_fileURL_ignoreImportBookmark___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) asPrivateClientZone];
  v4 = [v3 defaultAppLibrary];
  v12 = 0;
  v5 = [v2 getOrCreateTrashItemInAppLibrary:v4 error:&v12];
  v6 = v12;
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, 0x90u))
    {
      v11 = v6;
      if (!v6)
      {
        v5 = [*(*(*(a1 + 48) + 8) + 40) db];
        v11 = [v5 lastError];
      }

      *buf = 138412546;
      v14 = v11;
      v15 = 2112;
      v16 = v9;
      _os_log_error_impl(&dword_223E7A000, v10, 0x90u, "[ERROR] Can't create trash item - %@%@", buf, 0x16u);
      if (!v6)
      {
      }
    }
  }
}

- (id)_locateTemplateItemFromFPFSMigration:(id)migration fields:(unint64_t *)fields documentHasChanges:(BOOL *)changes
{
  v50 = *MEMORY[0x277D85DE8];
  migrationCopy = migration;
  if (changes)
  {
    *changes = 0;
  }

  if ([(BRCAccountSession *)self->_session fpfsMigrationState]!= 1)
  {
    v12 = 0;
    goto LABEL_53;
  }

  extendedAttributes = [migrationCopy extendedAttributes];
  v9 = [extendedAttributes objectForKeyedSubscript:@"com.apple.fpfs.fileid"];

  v43 = 0;
  v42 = 0;
  v41 = 0;
  if (!v9 || ![v9 getFileIDFromXattr:&v43 docID:&v42 genCount:&v41])
  {
    goto LABEL_51;
  }

  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 134218754;
    v45 = v43;
    v46 = 1024;
    *v47 = v42;
    *&v47[4] = 2048;
    *&v47[6] = v41;
    *&v47[14] = 2112;
    *&v47[16] = v10;
    _os_log_impl(&dword_223E7A000, v11, OS_LOG_TYPE_INFO, "[INFO] trying to import from on-disk ID: fileID=%llu docID=%u genCount=%llu%@", buf, 0x26u);
  }

  if (!v42)
  {
    v12 = 0;
    goto LABEL_41;
  }

  v12 = [(BRCFSImporter *)self _globalItemByDocumentID:?];
  asDocument = [v12 asDocument];
  v14 = asDocument;
  if (v12)
  {
    if ((itemsHaveTheSameKind(v12, migrationCopy) & 1) == 0)
    {
      v15 = brc_bread_crumbs();
      v16 = brc_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v45 = v12;
        v46 = 2112;
        *v47 = v15;
        _os_log_impl(&dword_223E7A000, v16, OS_LOG_TYPE_DEFAULT, "[WARNING] Mismatching type for the found item (%@), ignoring!%@", buf, 0x16u);
      }

      goto LABEL_25;
    }

    if (!v14)
    {
      v15 = brc_bread_crumbs();
      v16 = brc_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [BRCFSImporter _locateTemplateItemFromFPFSMigration:fields:documentHasChanges:];
      }

LABEL_25:

      goto LABEL_26;
    }

LABEL_17:
    v17 = brc_bread_crumbs();
    v18 = brc_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [BRCFSImporter _locateTemplateItemFromFPFSMigration:fields:documentHasChanges:];
    }

    fileIDForUpload = [v14 fileIDForUpload];
    longLongValue = [fileIDForUpload longLongValue];

    generationIDForUpload = [v14 generationIDForUpload];
    fsGenerationID = [generationIDForUpload fsGenerationID];
    unsignedLongLongValue = [fsGenerationID unsignedLongLongValue];

    if (longLongValue == v43)
    {
      if ([v14 isPackage])
      {
        v40 = unsignedLongLongValue;
        contentModificationDate = [migrationCopy contentModificationDate];
        [contentModificationDate timeIntervalSince1970];
        v26 = v25;

        currentVersion = [v14 currentVersion];
        mtime = [currentVersion mtime];

        if (mtime == v26)
        {
          v29 = 0;
        }

        else
        {
          v39 = brc_bread_crumbs();
          v30 = brc_default_log();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134218498;
            v45 = v26;
            v46 = 2048;
            *v47 = mtime;
            *&v47[8] = 2112;
            *&v47[10] = v39;
            _os_log_debug_impl(&dword_223E7A000, v30, OS_LOG_TYPE_DEBUG, "[DEBUG] mtimes don't match %lld vs %lld%@", buf, 0x20u);
          }

          v29 = 1;
        }

        unsignedLongLongValue = v40;
      }

      else
      {
        v29 = unsignedLongLongValue != v41;
      }
    }

    else
    {
      v29 = 1;
    }

    if (changes)
    {
      *changes = v29;
    }

    if (v29)
    {
      v31 = brc_bread_crumbs();
      v32 = brc_default_log();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134219010;
        v45 = longLongValue;
        v46 = 2048;
        *v47 = v43;
        *&v47[8] = 2048;
        *&v47[10] = unsignedLongLongValue;
        *&v47[18] = 2048;
        *&v47[20] = v41;
        v48 = 2112;
        v49 = v31;
        _os_log_debug_impl(&dword_223E7A000, v32, OS_LOG_TYPE_DEBUG, "[DEBUG] We have changes to upload on imported item f:(%llu vs %llu) g:(%llu vs %llu)%@", buf, 0x34u);
      }
    }

    [v14 markDoneMigratingToFPFS];
    goto LABEL_40;
  }

  if (asDocument)
  {
    goto LABEL_17;
  }

LABEL_26:
  v12 = 0;
LABEL_40:

LABEL_41:
  if (v12)
  {
    goto LABEL_52;
  }

  if (!v43)
  {
    goto LABEL_52;
  }

  v33 = [(BRCFSImporter *)self _globalItemByFileID:?];
  v12 = v33;
  if (!v33)
  {
    goto LABEL_52;
  }

  if (itemsHaveTheSameKind(v33, migrationCopy))
  {
    v34 = brc_bread_crumbs();
    v35 = brc_default_log();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      [BRCFSImporter _locateTemplateItemFromFPFSMigration:fields:documentHasChanges:];
    }

    [v12 markDoneMigratingToFPFS];
    goto LABEL_52;
  }

  v36 = brc_bread_crumbs();
  v37 = brc_default_log();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v45 = v12;
    v46 = 2112;
    *v47 = v36;
    _os_log_impl(&dword_223E7A000, v37, OS_LOG_TYPE_DEFAULT, "[WARNING] Mismatching type for the found item (%@), ignoring!%@", buf, 0x16u);
  }

LABEL_51:
  v12 = 0;
LABEL_52:

LABEL_53:

  return v12;
}

- (id)_findCollidingItemWithTemplateItem:(id)item parentItem:(id)parentItem logicalName:(id)name error:(id *)error
{
  v55 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  parentItemCopy = parentItem;
  nameCopy = name;
  parentItemIdentifier = [itemCopy parentItemIdentifier];
  v14 = [parentItemIdentifier isEqualToString:*MEMORY[0x277CC6358]];

  itemID = [parentItemCopy itemID];
  if (v14)
  {
    v41 = 0;
    v42 = &v41;
    v43 = 0x3032000000;
    v44 = __Block_byref_object_copy__25;
    v45 = __Block_byref_object_dispose__25;
    v46 = 0;
    v35 = 0;
    v36 = &v35;
    v37 = 0x3032000000;
    v38 = __Block_byref_object_copy__25;
    v39 = __Block_byref_object_dispose__25;
    v40 = 0;
    appLibrary = [parentItemCopy appLibrary];
    v17 = [appLibrary db];
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __81__BRCFSImporter__findCollidingItemWithTemplateItem_parentItem_logicalName_error___block_invoke;
    v30 = &unk_2785033B8;
    v33 = &v35;
    selfCopy = self;
    v32 = parentItemCopy;
    v34 = &v41;
    [v17 groupInBatch:&v27];

    v18 = v42[5];
    if (v18)
    {
      v19 = v18;
      v20 = brc_bread_crumbs();
      v21 = brc_default_log();
      if (os_log_type_enabled(v21, 0x90u))
      {
        v26 = "(passed to caller)";
        *buf = 136315906;
        v48 = "[BRCFSImporter _findCollidingItemWithTemplateItem:parentItem:logicalName:error:]";
        v49 = 2080;
        if (!error)
        {
          v26 = "(ignored by caller)";
        }

        v50 = v26;
        v51 = 2112;
        v52 = v19;
        v53 = 2112;
        v54 = v20;
        _os_log_error_impl(&dword_223E7A000, v21, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }

      if (error)
      {
        v22 = v19;
        *error = v19;
      }
    }

    else
    {
      [v36[5] itemID];
      itemID = v19 = itemID;
    }

    _Block_object_dispose(&v35, 8);
    _Block_object_dispose(&v41, 8);

    if (v18)
    {
      goto LABEL_10;
    }
  }

  if (!itemID)
  {
LABEL_10:
    v24 = 0;
  }

  else
  {
    clientZone = [parentItemCopy clientZone];
    v24 = [clientZone liveItemByParentID:itemID andLogicalName:nameCopy excludingItemGlobalID:0];
  }

  return v24;
}

void __81__BRCFSImporter__findCollidingItemWithTemplateItem_parentItem_logicalName_error___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) appLibrary];
  v13 = 0;
  v5 = [v3 getOrCreateTrashItemInAppLibrary:v4 error:&v13];
  v6 = v13;
  v7 = v13;
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, 0x90u))
    {
      v12 = v7;
      if (!v7)
      {
        v1 = [*(*(*(a1 + 48) + 8) + 40) db];
        v12 = [v1 lastError];
      }

      *buf = 138412546;
      v15 = v12;
      v16 = 2112;
      v17 = v10;
      _os_log_error_impl(&dword_223E7A000, v11, 0x90u, "[ERROR] Can't create trash item - %@%@", buf, 0x16u);
      if (!v7)
      {
      }
    }

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v6);
  }
}

- (id)_handleCollisionIfNecessaryWithTemplateItem:(id)item parentItem:(id)parentItem logicalName:(id)name fileURL:(id)l options:(unint64_t)options error:(id *)error
{
  optionsCopy = options;
  v74 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  lCopy = l;
  v16 = [(BRCFSImporter *)self _findCollidingItemWithTemplateItem:itemCopy parentItem:parentItem logicalName:name error:error];
  if (!v16)
  {
    goto LABEL_57;
  }

  if (lCopy)
  {
    br_isDocumentType = 0;
    if (optionsCopy)
    {
      goto LABEL_9;
    }
  }

  else
  {
    contentType = [itemCopy contentType];
    br_isDocumentType = [contentType br_isDocumentType];

    if (optionsCopy)
    {
LABEL_9:
      v19 = 0;
      goto LABEL_10;
    }
  }

  if (([v16 isInDataScope]& 1) != 0 || ![v16 isUserVisible]|| [(BRCFSImporter *)self _isDesktopOrDocumentsItem:v16])
  {
    goto LABEL_9;
  }

  itemID = [v16 itemID];
  if ([itemID isDocumentsFolder])
  {
    v65 = itemID;
    v19 = 1;
LABEL_10:
    v20 = v16;
    v21 = itemCopy;
    v66 = lCopy;
    parentItemIdentifier = [v21 parentItemIdentifier];
    if ([parentItemIdentifier isEqualToString:*MEMORY[0x277CC6358]])
    {
      isInTrashScope = [v20 isInTrashScope];

      if ((isInTrashScope & 1) == 0)
      {
        v67 = brc_bread_crumbs();
        asDocument = brc_default_log();
        if (os_log_type_enabled(asDocument, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412802;
          v69 = v21;
          v70 = 2112;
          v71 = v20;
          v72 = 2112;
          v73 = v67;
          v25 = "[DEBUG] template item %@ differs in trash-ness from %@%@";
LABEL_20:
          _os_log_debug_impl(&dword_223E7A000, asDocument, OS_LOG_TYPE_DEBUG, v25, buf, 0x20u);
          goto LABEL_29;
        }

        goto LABEL_29;
      }
    }

    else
    {
    }

    if (itemsHaveTheSameKind(v20, v21))
    {
      extendedAttributes = [v21 extendedAttributes];
      v27 = [extendedAttributes objectForKeyedSubscript:@"com.apple.clouddocs.private.share-bookmark#B"];
      v28 = v27;
      if (v27)
      {
        v67 = v27;
      }

      else
      {
        [v21 extendedAttributes];
        v63 = itemCopy;
        v29 = v19;
        v30 = lCopy;
        selfCopy = self;
        v33 = v32 = br_isDocumentType;
        v67 = [v33 objectForKeyedSubscript:@"com.apple.finder.copy.preserveinbackups.com.apple.clouddocs.private.share-bookmark#N"];

        br_isDocumentType = v32;
        self = selfCopy;
        lCopy = v30;
        v19 = v29;
        itemCopy = v63;
      }

      if ((![v20 isSharedToMeTopLevelItem]|| v67) && (([v20 isSharedToMe]& 1) != 0 || !v67))
      {
        if (![v20 isDocument])
        {
          v35 = 1;
LABEL_31:

          if (v19)
          {

            if ((v35 & 1) == 0)
            {
              goto LABEL_33;
            }
          }

          else if (!v35)
          {
LABEL_33:
            if (br_isDocumentType)
            {
              goto LABEL_57;
            }

            goto LABEL_34;
          }

          v43 = brc_bread_crumbs();
          v44 = brc_default_log();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v69 = v20;
            v70 = 2112;
            v71 = v43;
            _os_log_impl(&dword_223E7A000, v44, OS_LOG_TYPE_INFO, "[INFO] found item that seems to match template: %@%@", buf, 0x16u);
          }

          [v20 markDoneMigratingToFPFS];
          v42 = v20;
          goto LABEL_43;
        }

        asDocument = [v20 asDocument];
        isPackage = [asDocument isPackage];
        v35 = 1;
        if (!v66 || !isPackage)
        {
LABEL_30:

          goto LABEL_31;
        }

        documentSize = [v21 documentSize];
        if ([documentSize longLongValue])
        {
        }

        else
        {
          v64 = br_isDocumentType;
          currentVersion = [asDocument currentVersion];
          v61 = [currentVersion size];

          if (!v61)
          {
            v35 = 1;
            br_isDocumentType = v64;
            goto LABEL_30;
          }

          defaultManager = [MEMORY[0x277CCAA00] defaultManager];
          v57 = [defaultManager enumeratorAtURL:v66 includingPropertiesForKeys:0 options:0 errorHandler:0];

          v62 = v57;
          nextObject = [v57 nextObject];

          br_isDocumentType = v64;
          if (!nextObject)
          {
            v60 = brc_bread_crumbs();
            v59 = brc_default_log();
            if (os_log_type_enabled(v59, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412802;
              v69 = v21;
              v70 = 2112;
              v71 = asDocument;
              v72 = 2112;
              v73 = v60;
              _os_log_fault_impl(&dword_223E7A000, v59, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: can't path-match an empty package %@ to the existing package item %@%@", buf, 0x20u);
            }

            goto LABEL_29;
          }
        }

        v35 = 1;
        goto LABEL_30;
      }

      asDocument = brc_bread_crumbs();
      v34 = brc_default_log();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        v69 = v21;
        v70 = 2112;
        v71 = v20;
        v72 = 2112;
        v73 = asDocument;
        _os_log_debug_impl(&dword_223E7A000, v34, OS_LOG_TYPE_DEBUG, "[DEBUG] template item %@ differs in share-bookmark from %@%@", buf, 0x20u);
      }
    }

    else
    {
      v67 = brc_bread_crumbs();
      asDocument = brc_default_log();
      if (os_log_type_enabled(asDocument, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        v69 = v21;
        v70 = 2112;
        v71 = v20;
        v72 = 2112;
        v73 = v67;
        v25 = "[DEBUG] template item %@ differs in kind from %@%@";
        goto LABEL_20;
      }
    }

LABEL_29:
    v35 = 0;
    goto LABEL_30;
  }

  if (br_isDocumentType)
  {
    goto LABEL_57;
  }

LABEL_34:
  v36 = [v16 st];
  fpCreationItemIdentifier = [v36 fpCreationItemIdentifier];
  itemIdentifier = [itemCopy itemIdentifier];
  v39 = [fpCreationItemIdentifier isEqualToString:itemIdentifier];

  if (v39)
  {
    if (itemsHaveTheSameKind(v16, itemCopy))
    {
      v40 = brc_bread_crumbs();
      v41 = brc_default_log();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        [BRCFSImporter _handleCollisionIfNecessaryWithTemplateItem:parentItem:logicalName:fileURL:options:error:];
      }

      v42 = v16;
LABEL_43:
      v45 = v42;
      goto LABEL_58;
    }

    v48 = brc_bread_crumbs();
    v49 = brc_default_log();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412802;
      v69 = v16;
      v70 = 2112;
      v71 = itemCopy;
      v72 = 2112;
      v73 = v48;
      _os_log_fault_impl(&dword_223E7A000, v49, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Items have the same creation identifier but are of differnt kinds %@ vs %@%@", buf, 0x20u);
    }
  }

  v50 = brc_bread_crumbs();
  v51 = brc_default_log();
  if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v69 = v16;
    v70 = 2112;
    v71 = itemCopy;
    v72 = 2112;
    v73 = v50;
    _os_log_impl(&dword_223E7A000, v51, OS_LOG_TYPE_INFO, "[INFO] Bouncing item %@ because of %@%@", buf, 0x20u);
  }

  bouncingAnalyzer = [(BRCAccountSession *)self->_session bouncingAnalyzer];
  [bouncingAnalyzer analyzeBouncingOfItem:v16 withTemplateItem:itemCopy];

  [v16 markBouncedToNextAvailableBounceNumber:504];
  LODWORD(bouncingAnalyzer) = [v16 isMigratingToFPFS];
  [v16 markDoneMigratingToFPFS];
  [v16 saveToDB];
  if (bouncingAnalyzer)
  {
    [(BRCFSImporter *)self _reportBouncingForMigration:itemCopy existingItem:v16];
  }

LABEL_57:
  v45 = 0;
LABEL_58:

  return v45;
}

- (id)_locateMatchingItemForTemplateItem:(id)item parentItem:(id)parentItem options:(unint64_t)options fileURL:(id)l fields:(unint64_t *)fields shouldReject:(BOOL *)reject additionalAttrs:(id)attrs importBookmark:(id)self0 ignoreImportBookmark:(BOOL *)self1 stillPendingFields:(unint64_t *)self2 error:(id *)self3
{
  v137 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  parentItemCopy = parentItem;
  lCopy = l;
  attrsCopy = attrs;
  bookmarkCopy = bookmark;
  v120 = 0;
  v121 = &v120;
  v122 = 0x3032000000;
  v123 = __Block_byref_object_copy__25;
  v124 = __Block_byref_object_dispose__25;
  v125 = 0;
  v119 = 0;
  filename = [itemCopy filename];
  if (options)
  {
    v21 = [(BRCFSImporter *)self _locateTemplateItemFromFPFSMigration:itemCopy fields:fields documentHasChanges:&v119];
    v22 = v121[5];
    v121[5] = v21;

    v23 = v121[5];
    v103 = v23 != 0;
    if (bookmarkCopy && !v23)
    {
      v24 = [(BRCFSImporter *)self _parseImportBookmark:bookmarkCopy templateItem:itemCopy fileURL:lCopy ignoreImportBookmark:importBookmark];
      v25 = v121[5];
      v121[5] = v24;
    }
  }

  else
  {
    v103 = 0;
  }

  v26 = v121[5];
  if (v26 && (itemsHaveTheSameKind(v26, itemCopy) & 1) == 0)
  {
    v27 = brc_bread_crumbs();
    v28 = brc_default_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      v96 = v121[5];
      *buf = 138412802;
      *&buf[4] = v96;
      *&buf[12] = 2112;
      *&buf[14] = itemCopy;
      *&buf[22] = 2112;
      v135 = v27;
      _os_log_fault_impl(&dword_223E7A000, v28, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Items dont have the same kind so can't be matched! %@ vs %@%@", buf, 0x20u);
    }

    v29 = v121[5];
    v121[5] = 0;
  }

  br_isAliasFileType = 0;
  *reject = 0;
  if (!lCopy)
  {
    contentType = [itemCopy contentType];
    if ([contentType br_isDocumentType])
    {
      br_isAliasFileType = 1;
    }

    else
    {
      contentType2 = [itemCopy contentType];
      br_isAliasFileType = [contentType2 br_isAliasFileType];
    }

    if ((((options & 1) == 0) & br_isAliasFileType) == 1)
    {
      v101 = brc_bread_crumbs();
      v102 = brc_default_log();
      if (os_log_type_enabled(v102, OS_LOG_TYPE_FAULT))
      {
        [BRCFSImporter _locateMatchingItemForTemplateItem:parentItem:options:fileURL:fields:shouldReject:additionalAttrs:importBookmark:ignoreImportBookmark:stillPendingFields:error:];
      }

      br_isAliasFileType = 1;
    }
  }

  v118 = 0;
  if ([(BRCFSImporter *)self _shouldRejectItemWithName:filename templateItem:itemCopy existingItem:v121[5] options:options shouldRemoveItemFromDrive:&v118])
  {
    *reject = 1;
    v33 = v121[5];
    if (v33)
    {
      if (v118 == 1)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v135 = __Block_byref_object_copy__25;
        *&v136 = __Block_byref_object_dispose__25;
        *(&v136 + 1) = 0;
        v34 = [v33 db];
        v117[0] = MEMORY[0x277D85DD0];
        v117[1] = 3221225472;
        v117[2] = __176__BRCFSImporter__locateMatchingItemForTemplateItem_parentItem_options_fileURL_fields_shouldReject_additionalAttrs_importBookmark_ignoreImportBookmark_stillPendingFields_error___block_invoke;
        v117[3] = &unk_2785033E0;
        v117[5] = &v120;
        v117[6] = buf;
        v117[4] = self;
        [v34 groupInBatch:v117];

        v35 = *(*&buf[8] + 40);
        if (v35)
        {
          v36 = v35;
          v37 = brc_bread_crumbs();
          v38 = brc_default_log();
          if (os_log_type_enabled(v38, 0x90u))
          {
            v98 = "(passed to caller)";
            *v126 = 136315906;
            v127 = "[BRCFSImporter _locateMatchingItemForTemplateItem:parentItem:options:fileURL:fields:shouldReject:additionalAttrs:importBookmark:ignoreImportBookmark:stillPendingFields:error:]";
            v128 = 2080;
            if (!error)
            {
              v98 = "(ignored by caller)";
            }

            v129 = v98;
            v130 = 2112;
            v131 = v36;
            v132 = 2112;
            v133 = v37;
            _os_log_error_impl(&dword_223E7A000, v38, 0x90u, "[ERROR] %s: %s error: %@%@", v126, 0x2Au);
          }

          if (error)
          {
            v39 = v36;
            *error = v36;
          }
        }

        _Block_object_dispose(buf, 8);
      }

      else if (([v33 saveToDB] & 1) == 0)
      {
        clientDB = [(BRCAccountSession *)self->_session clientDB];
        lastError = [clientDB lastError];

        if (lastError)
        {
          v83 = brc_bread_crumbs();
          v84 = brc_default_log();
          if (os_log_type_enabled(v84, 0x90u))
          {
            v100 = "(passed to caller)";
            *buf = 136315906;
            *&buf[4] = "[BRCFSImporter _locateMatchingItemForTemplateItem:parentItem:options:fileURL:fields:shouldReject:additionalAttrs:importBookmark:ignoreImportBookmark:stillPendingFields:error:]";
            *&buf[12] = 2080;
            if (!error)
            {
              v100 = "(ignored by caller)";
            }

            *&buf[14] = v100;
            *&buf[22] = 2112;
            v135 = lastError;
            LOWORD(v136) = 2112;
            *(&v136 + 2) = v83;
            _os_log_error_impl(&dword_223E7A000, v84, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
          }
        }

        if (error)
        {
          v85 = lastError;
          *error = lastError;
        }
      }
    }

    goto LABEL_86;
  }

  v40 = v121;
  v41 = v121[5];
  if (v41)
  {
    goto LABEL_32;
  }

  v42 = [(BRCFSImporter *)self _handleCollisionIfNecessaryWithTemplateItem:itemCopy parentItem:parentItemCopy logicalName:filename fileURL:lCopy options:options error:error];
  v43 = v121[5];
  v121[5] = v42;

  v44 = v121[5];
  if (v44 && (itemsHaveTheSameKind(v44, itemCopy) & 1) == 0)
  {
    v45 = brc_bread_crumbs();
    v46 = brc_default_log();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
    {
      v99 = v121[5];
      *buf = 138412802;
      *&buf[4] = v99;
      *&buf[12] = 2112;
      *&buf[14] = itemCopy;
      *&buf[22] = 2112;
      v135 = v45;
      _os_log_fault_impl(&dword_223E7A000, v46, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Can't match items of different kind! %@ vs %@%@", buf, 0x20u);
    }

    v47 = v121[5];
    v121[5] = 0;
  }

  v40 = v121;
  v41 = v121[5];
  if (v41)
  {
LABEL_32:
    if (br_isAliasFileType)
    {
      *fields &= ~1uLL;
      v41 = v40[5];
    }

    syncUpState = [v41 syncUpState];
    if (!lCopy && syncUpState == 7)
    {
      clientZone = [v121[5] clientZone];
      itemID = [v121[5] itemID];
      v51 = [clientZone serverItemByItemID:itemID];

      v52 = brc_bread_crumbs();
      v53 = brc_default_log();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *&buf[4] = v51;
        *&buf[12] = 2112;
        *&buf[14] = v52;
        _os_log_impl(&dword_223E7A000, v53, OS_LOG_TYPE_DEFAULT, "[WARNING] Can't find file id for %@.  Updating from server item because we have no way to get its content%@", buf, 0x16u);
      }

      v54 = [v51 newLocalItemWithDBRowID:{objc_msgSend(v121[5], "dbRowID")}];
      v55 = v121[5];
      v121[5] = v54;
    }

    if ([v121[5] syncUpState])
    {
      isMigratingToFPFS = [v121[5] isMigratingToFPFS];
    }

    else
    {
      isMigratingToFPFS = 1;
    }

    if ([v121[5] isDocument] & isMigratingToFPFS) == 1 && (*fields)
    {
      asDocument = [v121[5] asDocument];
      currentVersion = [asDocument currentVersion];
      mtime = [currentVersion mtime];
      contentModificationDate = [itemCopy contentModificationDate];
      [contentModificationDate timeIntervalSince1970];
      v62 = v61;

      currentVersion2 = [asDocument currentVersion];
      versionSignature = [currentVersion2 versionSignature];
      LODWORD(currentVersion) = [versionSignature isPendingSignature];

      localDiffs = [asDocument localDiffs];
      if (!((v119 | currentVersion) & 1 | (trunc(v62) != mtime)) && (localDiffs & 0x180000) == 0)
      {
        if (([asDocument isPackage] & 1) != 0 || (objc_msgSend(asDocument, "currentVersion"), v66 = objc_claimAutoreleasedReturnValue(), v67 = objc_msgSend(v66, "size"), objc_msgSend(itemCopy, "documentSize"), v68 = objc_claimAutoreleasedReturnValue(), LODWORD(v67) = v67 == objc_msgSend(v68, "longLongValue"), v68, v66, v67))
        {
          v69 = brc_bread_crumbs();
          v70 = brc_default_log();
          if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
          {
            [BRCFSImporter _locateMatchingItemForTemplateItem:parentItem:options:fileURL:fields:shouldReject:additionalAttrs:importBookmark:ignoreImportBookmark:stillPendingFields:error:];
          }

          *fields &= ~1uLL;
        }
      }
    }

    if ([parentItemCopy isSharedToMe] && (objc_msgSend(parentItemCopy, "sharingOptions") & 0x20) != 0)
    {
      v86 = brc_bread_crumbs();
      v87 = brc_default_log();
      if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v86;
        _os_log_impl(&dword_223E7A000, v87, OS_LOG_TYPE_DEFAULT, "[WARNING] This isn't implemented yet in FPFS%@", buf, 0xCu);
      }

      v88 = brc_bread_crumbs();
      v89 = brc_default_log();
      if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
      {
        [BRCFSImporter _locateMatchingItemForTemplateItem:parentItem:options:fileURL:fields:shouldReject:additionalAttrs:importBookmark:ignoreImportBookmark:stillPendingFields:error:];
      }

      [v121[5] saveToDB];
      if ((options & 1) == 0)
      {
        v90 = brc_bread_crumbs();
        v91 = brc_default_log();
        if (os_log_type_enabled(v91, OS_LOG_TYPE_FAULT))
        {
          [BRCFSImporter _locateMatchingItemForTemplateItem:parentItem:options:fileURL:fields:shouldReject:additionalAttrs:importBookmark:ignoreImportBookmark:stillPendingFields:error:];
        }
      }
    }

    else
    {
      v71 = v121[5];
      if (!v71)
      {
LABEL_81:
        v92 = v71;
        goto LABEL_87;
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v135 = __Block_byref_object_copy__25;
      *&v136 = __Block_byref_object_dispose__25;
      *(&v136 + 1) = 0;
      clientDB2 = [(BRCAccountSession *)self->_session clientDB];
      v108[0] = MEMORY[0x277D85DD0];
      v108[1] = 3221225472;
      v108[2] = __176__BRCFSImporter__locateMatchingItemForTemplateItem_parentItem_options_fileURL_fields_shouldReject_additionalAttrs_importBookmark_ignoreImportBookmark_stillPendingFields_error___block_invoke_36;
      v108[3] = &unk_278503408;
      v108[4] = self;
      v112 = &v120;
      fieldsCopy = fields;
      v73 = itemCopy;
      v109 = v73;
      v110 = lCopy;
      v116 = v103;
      pendingFieldsCopy = pendingFields;
      v111 = attrsCopy;
      v113 = buf;
      [clientDB2 groupInTransaction:v108];

      v74 = *(*&buf[8] + 40);
      if (v74)
      {
        v75 = brc_bread_crumbs();
        v76 = brc_default_log();
        if (os_log_type_enabled(v76, 0x90u))
        {
          v97 = "(passed to caller)";
          *v126 = 136315906;
          v127 = "[BRCFSImporter _locateMatchingItemForTemplateItem:parentItem:options:fileURL:fields:shouldReject:additionalAttrs:importBookmark:ignoreImportBookmark:stillPendingFields:error:]";
          v128 = 2080;
          if (!error)
          {
            v97 = "(ignored by caller)";
          }

          v129 = v97;
          v130 = 2112;
          v131 = v74;
          v132 = 2112;
          v133 = v75;
          _os_log_error_impl(&dword_223E7A000, v76, 0x90u, "[ERROR] %s: %s error: %@%@", v126, 0x2Au);
        }
      }

      if (error)
      {
        v77 = v74;
        *error = v74;
      }

      if ((options & 1) == 0)
      {
        v78 = brc_bread_crumbs();
        v79 = brc_default_log();
        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
        {
          v80 = v121[5];
          *v126 = 138412802;
          v127 = v80;
          v128 = 2112;
          v129 = v73;
          v130 = 2112;
          v131 = v78;
          _os_log_impl(&dword_223E7A000, v79, OS_LOG_TYPE_DEFAULT, "[WARNING] Merging existing item without may already exist flag %@ with template %@%@", v126, 0x20u);
        }
      }

      _Block_object_dispose(buf, 8);
    }

    v71 = v121[5];
    goto LABEL_81;
  }

  if (!br_isAliasFileType)
  {
LABEL_86:
    v92 = 0;
    goto LABEL_87;
  }

  v93 = brc_bread_crumbs();
  v94 = brc_default_log();
  if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v93;
    _os_log_impl(&dword_223E7A000, v94, OS_LOG_TYPE_DEFAULT, "[WARNING] Rejecting dataless item which doesn't exist in our db%@", buf, 0xCu);
  }

  v92 = 0;
  *reject = 1;
LABEL_87:

  _Block_object_dispose(&v120, 8);

  return v92;
}

void __176__BRCFSImporter__locateMatchingItemForTemplateItem_parentItem_options_fileURL_fields_shouldReject_additionalAttrs_importBookmark_ignoreImportBookmark_stillPendingFields_error___block_invoke(void *a1)
{
  [*(*(a1[5] + 8) + 40) markRemovedFromFilesystemRecursively:1];
  if (([*(*(a1[5] + 8) + 40) saveToDB] & 1) == 0)
  {
    v5 = [*(a1[4] + 8) clientDB];
    v2 = [v5 lastError];
    v3 = *(a1[6] + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }
}

uint64_t __176__BRCFSImporter__locateMatchingItemForTemplateItem_parentItem_options_fileURL_fields_shouldReject_additionalAttrs_importBookmark_ignoreImportBookmark_stillPendingFields_error___block_invoke_36(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = *(*(*(a1 + 64) + 8) + 40);
  v4 = *(a1 + 88);
  v5 = **(a1 + 80);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 96) ^ 1;
  v11 = *(v2 + 8);
  obj = *(v11 + 40);
  LOBYTE(v16) = v10;
  v12 = [v6 changeItem:v3 baseVersion:0 changedFields:v5 newValues:v7 contents:v8 additionalAttrs:v9 clearCKInfoOnSyncUp:v16 stillPendingFields:v4 error:&obj];
  objc_storeStrong((v11 + 40), obj);
  if ((v12 & 1) == 0)
  {
    v13 = *(*(a1 + 64) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = 0;
  }

  return v12;
}

- (id)_createAndInsertNewItemWithImportObject:(id)object parentItem:(id)item fields:(unint64_t)fields templateItem:(id)templateItem fileURL:(id)l options:(unint64_t)options additionalAttrs:(id)attrs importBookmark:(id)self0 stillPendingFields:(unint64_t *)self1 error:(id *)self2
{
  v72 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  itemCopy = item;
  templateItemCopy = templateItem;
  lCopy = l;
  attrsCopy = attrs;
  bookmarkCopy = bookmark;
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = __Block_byref_object_copy__25;
  v62 = __Block_byref_object_dispose__25;
  v63 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__25;
  v56 = __Block_byref_object_dispose__25;
  v57 = 0;
  clientDB = [(BRCAccountSession *)self->_session clientDB];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __160__BRCFSImporter__createAndInsertNewItemWithImportObject_parentItem_fields_templateItem_fileURL_options_additionalAttrs_importBookmark_stillPendingFields_error___block_invoke;
  v39[3] = &unk_278503430;
  v23 = objectCopy;
  v40 = v23;
  selfCopy = self;
  v47 = &v58;
  fieldsCopy = fields;
  v24 = templateItemCopy;
  v42 = v24;
  v25 = lCopy;
  v43 = v25;
  v26 = attrsCopy;
  pendingFieldsCopy = pendingFields;
  v44 = v26;
  v48 = &v52;
  v27 = bookmarkCopy;
  v45 = v27;
  v28 = itemCopy;
  v46 = v28;
  optionsCopy = options;
  v29 = [clientDB groupInTransaction:v39];

  if ((v29 & 1) == 0)
  {
    v30 = v53[5];
    if (v30)
    {
      v31 = brc_bread_crumbs();
      v32 = brc_default_log();
      if (os_log_type_enabled(v32, 0x90u))
      {
        v36 = "(passed to caller)";
        *buf = 136315906;
        v65 = "[BRCFSImporter _createAndInsertNewItemWithImportObject:parentItem:fields:templateItem:fileURL:options:additionalAttrs:importBookmark:stillPendingFields:error:]";
        v66 = 2080;
        if (!error)
        {
          v36 = "(ignored by caller)";
        }

        v67 = v36;
        v68 = 2112;
        v69 = v30;
        v70 = 2112;
        v71 = v31;
        _os_log_error_impl(&dword_223E7A000, v32, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (error)
    {
      v33 = v30;
      *error = v30;
    }
  }

  if (v29)
  {
    v34 = v59[5];
  }

  else
  {
    v34 = 0;
  }

  _Block_object_dispose(&v52, 8);

  _Block_object_dispose(&v58, 8);

  return v34;
}

uint64_t __160__BRCFSImporter__createAndInsertNewItemWithImportObject_parentItem_fields_templateItem_fileURL_options_additionalAttrs_importBookmark_stillPendingFields_error___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isDocumentsFolder])
  {
    v2 = [*(a1 + 32) appLibrary];
    v3 = [v2 documentsFolder];
    v4 = *(*(a1 + 88) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    if (*(*(*(a1 + 88) + 8) + 40))
    {
      v6 = brc_bread_crumbs();
      v7 = brc_default_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        __160__BRCFSImporter__createAndInsertNewItemWithImportObject_parentItem_fields_templateItem_fileURL_options_additionalAttrs_importBookmark_stillPendingFields_error___block_invoke_cold_1();
      }

      v8 = brc_bread_crumbs();
      v9 = brc_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        __160__BRCFSImporter__createAndInsertNewItemWithImportObject_parentItem_fields_templateItem_fileURL_options_additionalAttrs_importBookmark_stillPendingFields_error___block_invoke_cold_2();
      }

      v10 = *(*(*(a1 + 88) + 8) + 40);
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      v13 = *(a1 + 56);
      v14 = *(a1 + 64);
      v15 = *(a1 + 104);
      v16 = *(a1 + 112);
      v17 = *(*(a1 + 96) + 8);
      v58 = *(v17 + 40);
      LOBYTE(v54) = 1;
      v18 = [v11 changeItem:v10 baseVersion:0 changedFields:v15 newValues:v12 contents:v13 additionalAttrs:v14 clearCKInfoOnSyncUp:v54 stillPendingFields:v16 error:&v58];
      v19 = v58;
      v20 = *(v17 + 40);
      *(v17 + 40) = v19;
LABEL_32:

      return v18;
    }
  }

  v22 = *(a1 + 32);
  v21 = *(a1 + 40);
  v23 = *(a1 + 72);
  v24 = *(a1 + 80);
  v25 = *(a1 + 120);
  v26 = *(*(a1 + 96) + 8);
  obj = *(v26 + 40);
  v27 = [v21 _createBaseItemWithImportObject:v22 importBookmark:v23 parentItem:v24 options:v25 error:&obj];
  objc_storeStrong((v26 + 40), obj);
  v28 = *(*(a1 + 88) + 8);
  v29 = *(v28 + 40);
  *(v28 + 40) = v27;

  v30 = *(*(*(a1 + 88) + 8) + 40);
  if (!v30)
  {
    return 0;
  }

  if (*(a1 + 48))
  {
    if ([v30 isDocument] && (*(a1 + 120) & 1) != 0)
    {
      v31 = *(a1 + 40);
      v32 = [*(*(*(a1 + 88) + 8) + 40) asDocument];
      [v31 _learnLocalContentEtagXattrIfPossibleOnDocumentItem:v32 templateItem:*(a1 + 48)];
    }

    [*(a1 + 40) _changeBasicFieldsOnItem:*(*(*(a1 + 88) + 8) + 40) fields:*(a1 + 104) template:*(a1 + 48)];
    v33 = [*(a1 + 48) parentItemIdentifier];
    if ([v33 isEqualToString:*MEMORY[0x277CC6358]])
    {
      v34 = [*(a1 + 80) isInTrashScope];

      if ((v34 & 1) == 0)
      {
        v35 = *(a1 + 40);
        v36 = *(*(*(a1 + 88) + 8) + 40);
        v37 = *(*(a1 + 96) + 8);
        v56 = *(v37 + 40);
        v38 = [v35 _trashItem:v36 error:&v56];
        objc_storeStrong((v37 + 40), v56);
        if ((v38 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else
    {
    }
  }

  if (![*(*(*(a1 + 88) + 8) + 40) isDirectory] || (objc_msgSend(*(*(*(a1 + 88) + 8) + 40), "asDirectory"), v39 = objc_claimAutoreleasedReturnValue(), v40 = objc_msgSend(v39, "handlePathMatchConflictForDirectoryCreationIfNecessary"), v39, (v40 & 1) == 0))
  {
    [*(*(*(a1 + 88) + 8) + 40) markNeedsUploadOrSyncingUp];
    if (([*(*(*(a1 + 88) + 8) + 40) saveToDB] & 1) == 0)
    {
      v48 = [*(*(*(a1 + 88) + 8) + 40) db];
      v49 = [v48 lastError];

      if (v49)
      {
        v50 = brc_bread_crumbs();
        v51 = brc_default_log();
        if (os_log_type_enabled(v51, 0x90u))
        {
          __160__BRCFSImporter__createAndInsertNewItemWithImportObject_parentItem_fields_templateItem_fileURL_options_additionalAttrs_importBookmark_stillPendingFields_error___block_invoke_cold_3();
        }
      }

      v18 = 0;
      v52 = *(*(a1 + 96) + 8);
      v20 = *(v52 + 40);
      *(v52 + 40) = v49;
      goto LABEL_32;
    }
  }

  if (!*(a1 + 56) || ![*(*(*(a1 + 88) + 8) + 40) isDocument] || !objc_msgSend(*(*(*(a1 + 88) + 8) + 40), "needsUpload") || (objc_msgSend(*(*(a1 + 40) + 8), "stageRegistry"), v41 = objc_claimAutoreleasedReturnValue(), v42 = *(a1 + 56), objc_msgSend(*(*(*(a1 + 88) + 8) + 40), "liveStageFilename"), v43 = objc_claimAutoreleasedReturnValue(), v44 = *(*(a1 + 96) + 8), v55 = *(v44 + 40), v18 = objc_msgSend(v41, "moveFromURLToLiveStage:liveStageFilename:error:", v42, v43, &v55), objc_storeStrong((v44 + 40), v55), v43, v41, v18))
  {
    if (*(a1 + 120))
    {
      return 1;
    }

    v45 = *(*(*(a1 + 88) + 8) + 40);
    v46 = [*(a1 + 48) itemIdentifier];
    [v45 updateFPCreationItemIdentifier:v46];

    v20 = [*(*(a1 + 40) + 8) clientState];
    v47 = [MEMORY[0x277CBEAA8] date];
    [v20 setObjectAndScheduleFlush:v47 forKey:@"most-recent-item-creation-date"];

    v18 = 1;
    goto LABEL_32;
  }

  return v18;
}

- (id)importAppLibraryRootFromTemplateItem:(id)item
{
  v25 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v5 = objc_alloc(MEMORY[0x277CFAE60]);
  filename = [itemCopy filename];
  v7 = [v5 initWithMangledString:filename];

  v8 = [(BRCAccountSession *)self->_session appLibraryByMangledID:v7];
  if (v8)
  {
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      *&buf[4] = v8;
      *&buf[12] = 2112;
      *&buf[14] = v7;
      *&buf[22] = 2112;
      v22 = v9;
      _os_log_debug_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] Importing an existing app library %@ with mangledID %@%@", buf, 0x20u);
    }
  }

  else
  {
    v8 = [(BRCAccountSession *)self->_session getOrCreateAppLibraryAndPrivateZonesIfNecessary:v7];
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v22 = __Block_byref_object_copy__25;
  v23 = __Block_byref_object_dispose__25;
  v24 = 0;
  clientReadWriteDatabaseFacade = [(BRCAccountSession *)self->_session clientReadWriteDatabaseFacade];
  workloop = [clientReadWriteDatabaseFacade workloop];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__BRCFSImporter_importAppLibraryRootFromTemplateItem___block_invoke;
  block[3] = &unk_278502B88;
  v18 = v8;
  v19 = clientReadWriteDatabaseFacade;
  v20 = buf;
  v13 = clientReadWriteDatabaseFacade;
  v14 = v8;
  dispatch_async_and_wait(workloop, block);

  v15 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

  return v15;
}

void __54__BRCFSImporter_importAppLibraryRootFromTemplateItem___block_invoke(uint64_t a1)
{
  v8 = [*(a1 + 32) fetchRootItemWithFacade:*(a1 + 40)];
  v2 = [[BRCNotification alloc] initWithLocalItem:v8 itemDiffs:0];
  v3 = MEMORY[0x277CFAE98];
  v4 = [*(a1 + 32) containerMetadata];
  v5 = [v3 containerItemForContainer:v4 withRepresentativeItem:v2];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)importNewItemAtURL:(id)l parentItem:(id)item templateItem:(id)templateItem fields:(unint64_t)fields options:(unint64_t)options additionalItemAttributes:(id)attributes importBookmark:(id)bookmark stillPendingFields:(unint64_t *)self0 error:(id *)self1
{
  v68 = *MEMORY[0x277D85DE8];
  lCopy = l;
  itemCopy = item;
  templateItemCopy = templateItem;
  fieldsCopy = fields;
  attributesCopy = attributes;
  bookmarkCopy = bookmark;
  v58 = 0;
  filename = [templateItemCopy filename];
  v55 = itemCopy;
  v57 = 0;
  v56 = 0;
  v22 = itemCopy;
  v23 = lCopy;
  v24 = [(BRCFSImporter *)self _locateMatchingItemForTemplateItem:templateItemCopy parentItem:v22 options:options fileURL:lCopy fields:&fieldsCopy shouldReject:&v58 additionalAttrs:attributesCopy importBookmark:bookmarkCopy ignoreImportBookmark:&v57 stillPendingFields:pendingFields error:&v56];
  v25 = v56;
  v26 = v25;
  if (v25)
  {
    if (error)
    {
      v27 = v25;
      v28 = 0;
      *error = v26;
LABEL_6:
      v29 = v23;
      goto LABEL_7;
    }

LABEL_5:
    v28 = 0;
    goto LABEL_6;
  }

  if (v58)
  {
    goto LABEL_5;
  }

  if (v57 == 1)
  {

    bookmarkCopy = 0;
  }

  if (!v24)
  {
    [(BRCAccountSession *)self->_session updateFPFSMigrationNewItemsInDB];
    if (v23)
    {
      v33 = [[BRCImportObject alloc] initWithURL:v23 logicalName:filename quarantineInfo:0 parentItem:v55 error:error];
    }

    else
    {
      contentType = [templateItemCopy contentType];
      br_isSymbolicLinkType = [contentType br_isSymbolicLinkType];

      if (br_isSymbolicLinkType)
      {
        symlinkTargetPath = [templateItemCopy symlinkTargetPath];
        if (!symlinkTargetPath)
        {
          symlinkTargetPath = [attributesCopy objectForKey:@"symlink-target"];
        }

        v52 = symlinkTargetPath;
        v49 = [[BRCImportObject alloc] initAsSymlinkWithTarget:symlinkTargetPath parentItem:v55 logicalName:filename error:error];

        v34 = v49;
        if (!v49)
        {
          goto LABEL_5;
        }

LABEL_29:
        selfCopy = self;
        v44 = v34;
        v29 = v23;
        v28 = [(BRCFSImporter *)selfCopy _createAndInsertNewItemWithImportObject:v34 parentItem:v55 fields:fieldsCopy templateItem:templateItemCopy fileURL:v23 options:options additionalAttrs:attributesCopy importBookmark:bookmarkCopy stillPendingFields:pendingFields error:error];
LABEL_30:

        goto LABEL_7;
      }

      contentType2 = [templateItemCopy contentType];
      br_isDirectoryType = [contentType2 br_isDirectoryType];

      if (!br_isDirectoryType)
      {
        v44 = brc_bread_crumbs();
        v45 = brc_default_log();
        if (os_log_type_enabled(v45, 0x90u))
        {
          [BRCFSImporter importNewItemAtURL:parentItem:templateItem:fields:options:additionalItemAttributes:importBookmark:stillPendingFields:error:];
        }

        v28 = 0;
        v29 = 0;
        goto LABEL_30;
      }

      v33 = [[BRCImportObject alloc] initAsNewDirectoryWithLogicalName:filename parentItem:v55];
    }

    v34 = v33;
    if (!v33)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

  isPackage = [v24 isPackage];
  session = self->_session;
  if (isPackage)
  {
    [(BRCAccountSession *)self->_session updateFPFSMigrationMigratedTypesWithPackage];
  }

  else
  {
    v35 = [v24 st];
    -[BRCAccountSession updateFPFSMigrationMigratedTypes:](session, "updateFPFSMigrationMigratedTypes:", [v35 type]);
  }

  v29 = v23;
  isMigratingToFPFS = [v24 isMigratingToFPFS];
  dbItemIsMigratingToFPFS = [v24 dbItemIsMigratingToFPFS];
  v38 = dbItemIsMigratingToFPFS;
  if ((isMigratingToFPFS & 1) != 0 || dbItemIsMigratingToFPFS)
  {
    v39 = brc_bread_crumbs();
    v40 = brc_default_log();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
    {
      v46 = "not-migrating";
      *buf = 138413058;
      v61 = v24;
      if (isMigratingToFPFS)
      {
        v47 = "migrating";
      }

      else
      {
        v47 = "not-migrating";
      }

      v62 = 2080;
      v63 = v47;
      if (v38)
      {
        v46 = "migrating";
      }

      v64 = 2080;
      v65 = v46;
      v66 = 2112;
      v67 = v39;
      _os_log_fault_impl(&dword_223E7A000, v40, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: item %@ local state: %s db state: %s%@", buf, 0x2Au);
    }

    v41 = +[BRCAutoBugCaptureReporter sharedABCReporter];
    [v41 captureLogsForOperationType:@"FPFSMigration" ofSubtype:@"MigratingItem" forError:0];
  }

  v28 = v24;
LABEL_7:

  return v28;
}

- (id)createAndImportNewDirectoryWithLogicalName:(id)name parentItem:(id)item error:(id *)error
{
  v40 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  itemCopy = item;
  v10 = [[BRCImportObject alloc] initAsNewDirectoryWithLogicalName:nameCopy parentItem:itemCopy];
  v11 = v10;
  if (v10)
  {
    if (([v10 isUnixDir] & 1) == 0)
    {
      [BRCFSImporter createAndImportNewDirectoryWithLogicalName:parentItem:error:];
    }

    v12 = [(BRCFSImporter *)self _createBaseItemWithImportObject:v11 importBookmark:0 parentItem:itemCopy options:0 error:error];
    asDirectory = [v12 asDirectory];

    if ([asDirectory handlePathMatchConflictForDirectoryCreationIfNecessary] || (objc_msgSend(asDirectory, "markNeedsUploadOrSyncingUp"), (objc_msgSend(asDirectory, "saveToDB") & 1) != 0))
    {
      v14 = asDirectory;
      v15 = 0;
    }

    else
    {
      v20 = [asDirectory db];
      lastError = [v20 lastError];
      v22 = lastError;
      if (lastError)
      {
        v15 = lastError;
      }

      else
      {
        v23 = MEMORY[0x277CCA9B8];
        itemID = [itemCopy itemID];
        debugItemIDString = [itemID debugItemIDString];
        v15 = [v23 brc_errorItemNotFound:debugItemIDString];
      }

      if (error)
      {
        v26 = v15;
        *error = v15;
      }

      v27 = brc_bread_crumbs();
      v28 = brc_default_log();
      if (os_log_type_enabled(v28, 0x90u))
      {
        itemID2 = [itemCopy itemID];
        v32 = 138413058;
        v33 = nameCopy;
        v34 = 2112;
        v35 = itemID2;
        v36 = 2112;
        v37 = v15;
        v38 = 2112;
        v39 = v27;
        _os_log_error_impl(&dword_223E7A000, v28, 0x90u, "[ERROR] Fail to create new directory with name %@ and parent %@. Returning error %@%@", &v32, 0x2Au);
      }

      v14 = 0;
    }
  }

  else
  {
    v16 = brc_bread_crumbs();
    v17 = brc_default_log();
    if (os_log_type_enabled(v17, 0x90u))
    {
      itemID3 = [itemCopy itemID];
      v32 = 138412802;
      v33 = nameCopy;
      v34 = 2112;
      v35 = itemID3;
      v36 = 2112;
      v37 = v16;
      _os_log_error_impl(&dword_223E7A000, v17, 0x90u, "[ERROR] Fail to create directory import object with name %@ and parent %@%@", &v32, 0x20u);
    }

    v18 = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:22];
    v15 = v18;
    if (error)
    {
      v19 = v18;
      v14 = 0;
      *error = v15;
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (id)getOrCreateTrashItemInAppLibrary:(id)library error:(id *)error
{
  libraryCopy = library;
  v7 = [libraryCopy db];
  isBatchSuspended = [v7 isBatchSuspended];

  if ((isBatchSuspended & 1) == 0)
  {
    [BRCFSImporter getOrCreateTrashItemInAppLibrary:error:];
  }

  documentsFolderItemID = [libraryCopy documentsFolderItemID];
  defaultClientZone = [libraryCopy defaultClientZone];
  v11 = *MEMORY[0x277CFADB8];
  v12 = [defaultClientZone itemByParentID:documentsFolderItemID andLogicalName:*MEMORY[0x277CFADB8]];
  asDirectory = [v12 asDirectory];

  if (!asDirectory)
  {
    defaultClientZone2 = [libraryCopy defaultClientZone];
    v15 = [defaultClientZone2 itemByItemID:documentsFolderItemID];
    asDirectory2 = [v15 asDirectory];

    if (!asDirectory2)
    {
      createDocumentsFolder = [libraryCopy createDocumentsFolder];
      if (!createDocumentsFolder)
      {
        asDirectory2 = brc_bread_crumbs();
        v19 = brc_default_log();
        if (os_log_type_enabled(v19, 0x90u))
        {
          [BRCFSImporter getOrCreateTrashItemInAppLibrary:error:];
        }

        asDirectory = 0;
        goto LABEL_8;
      }

      asDirectory2 = createDocumentsFolder;
    }

    asDirectory = [(BRCFSImporter *)self createAndImportNewDirectoryWithLogicalName:v11 parentItem:asDirectory2 error:error];
LABEL_8:
  }

  return asDirectory;
}

- (BOOL)trashItem:(id)item parentItemInTrash:(id)trash error:(id *)error
{
  v57 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  trashCopy = trash;
  clientDB = [(BRCAccountSession *)self->_session clientDB];
  isInTransaction = [clientDB isInTransaction];

  if ((isInTransaction & 1) == 0)
  {
    [BRCFSImporter trashItem:parentItemInTrash:error:];
  }

  if ([itemCopy isSharedToMe])
  {
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v50 = v12;
      _os_log_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEFAULT, "[WARNING] We can't trash shared-to-me items. Marking dead%@", buf, 0xCu);
    }

    v14 = 1;
    [itemCopy markRemovedFromFilesystemRecursively:1];
  }

  else
  {
    appLibrary = [itemCopy appLibrary];
    v48 = 0;
    v16 = [(BRCFSImporter *)self getOrCreateTrashItemInAppLibrary:appLibrary error:&v48];
    v17 = v48;

    v14 = v16 != 0;
    if (v16)
    {
      if (trashCopy && ([v16 itemGlobalID], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(trashCopy, "itemGlobalID"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v18, "isEqual:", v19), v19, v18, !v20))
      {
        parentID = 0;
        computeItemPathRelativeToRoot = 0;
      }

      else
      {
        computeItemPathRelativeToRoot = [itemCopy computeItemPathRelativeToRoot];
        v22 = [itemCopy st];
        parentID = [v22 parentID];

        v24 = v16;
        trashCopy = v24;
      }

      v47 = computeItemPathRelativeToRoot;
      v30 = brc_bread_crumbs();
      v31 = brc_default_log();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        itemID = [itemCopy itemID];
        debugItemIDString = [itemID debugItemIDString];
        debugItemIDString2 = [parentID debugItemIDString];
        *buf = 138413058;
        v50 = debugItemIDString;
        v51 = 2112;
        v52 = v47;
        v53 = 2112;
        v54 = debugItemIDString2;
        v55 = 2112;
        v56 = v30;
        _os_log_debug_impl(&dword_223E7A000, v31, OS_LOG_TYPE_DEBUG, "[DEBUG] item %@ put back: path [%@] parentID [%@]%@", buf, 0x2Au);
      }

      if ([trashCopy itemScope] != 3)
      {
        [BRCFSImporter trashItem:parentItemInTrash:error:];
      }

      clientZone = [trashCopy clientZone];
      itemID2 = [trashCopy itemID];
      v34 = [itemCopy st];
      logicalName = [v34 logicalName];
      itemGlobalID = [itemCopy itemGlobalID];
      v37 = [clientZone existsByParentID:itemID2 andLogicalName:logicalName excludingItemGlobalID:itemGlobalID];

      itemGlobalID2 = [trashCopy itemGlobalID];
      v29 = v47;
      [itemCopy updateToBeInTrashWithParent:itemGlobalID2 trashPutBackPath:v47 trashPutBackParentID:parentID];

      if (v37)
      {
        [itemCopy markBouncedToNextAvailableBounceNumber:508];
      }

      v39 = brc_bread_crumbs();
      v40 = brc_default_log();
      v14 = v16 != 0;
      v17 = v45;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        [BRCFSImporter trashItem:parentItemInTrash:error:];
      }
    }

    else
    {
      v25 = v17;
      if (v25)
      {
        v26 = brc_bread_crumbs();
        v27 = brc_default_log();
        if (os_log_type_enabled(v27, 0x90u))
        {
          v44 = "(passed to caller)";
          *buf = 136315906;
          v50 = "[BRCFSImporter trashItem:parentItemInTrash:error:]";
          v51 = 2080;
          if (!error)
          {
            v44 = "(ignored by caller)";
          }

          v52 = v44;
          v53 = 2112;
          v54 = v25;
          v55 = 2112;
          v56 = v26;
          _os_log_error_impl(&dword_223E7A000, v27, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
        }
      }

      if (error)
      {
        v28 = v25;
        *error = v25;
      }

      v29 = brc_bread_crumbs();
      parentID = brc_default_log();
      if (os_log_type_enabled(parentID, OS_LOG_TYPE_DEBUG))
      {
        [BRCFSImporter trashItem:parentItemInTrash:error:];
      }
    }
  }

  return v14;
}

- (BOOL)_processParentAndFilenameIfNecessaryWithLocalItem:(id)item changedFields:(unint64_t)fields templateItem:(id)templateItem error:(id *)error
{
  fieldsCopy = fields;
  v80 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  templateItemCopy = templateItem;
  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = __100__BRCFSImporter__processParentAndFilenameIfNecessaryWithLocalItem_changedFields_templateItem_error___block_invoke;
  v68[3] = &unk_278503458;
  v12 = itemCopy;
  v69 = v12;
  v13 = templateItemCopy;
  v70 = v13;
  selfCopy = self;
  v14 = MEMORY[0x22AA4A310](v68);
  if ((fieldsCopy & 4) != 0)
  {
    parentItemIdentifier = [v13 parentItemIdentifier];
    v21 = [parentItemIdentifier isEqualToString:*MEMORY[0x277CC6358]];

    if (v21)
    {
      if ((fieldsCopy & 2) != 0)
      {
        filename = [v13 filename];
        [v12 updateWithLogicalName:filename newParent:0];
      }

      if ([(BRCFSImporter *)self _trashItem:v12 error:error])
      {
        goto LABEL_54;
      }

      goto LABEL_47;
    }

    parentItemIdentifier2 = [v13 parentItemIdentifier];
    v24 = [parentItemIdentifier2 isEqualToString:*MEMORY[0x277CC6348]];

    if (v24)
    {
      v25 = brc_bread_crumbs();
      v26 = brc_default_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        [BRCFSImporter _processParentAndFilenameIfNecessaryWithLocalItem:changedFields:templateItem:error:];
      }

      if (([v12 isInTrashScope] & 1) == 0)
      {
        [BRCFSImporter _processParentAndFilenameIfNecessaryWithLocalItem:changedFields:templateItem:error:];
      }

      appLibrary = [v12 appLibrary];
      fetchDocumentsDirectoryItem = [appLibrary fetchDocumentsDirectoryItem];
      fileObjectID = [fetchDocumentsDirectoryItem fileObjectID];
    }

    else
    {
      v30 = MEMORY[0x277CFAE50];
      appLibrary = [v13 parentItemIdentifier];
      fileObjectID = [v30 fileObjectIDWithString:appLibrary];
    }

    if (!fileObjectID)
    {
      v47 = MEMORY[0x277CCA9B8];
      parentItemIdentifier3 = [v13 parentItemIdentifier];
      v43 = [v47 brc_errorInvalidParameter:@"parentItemIdentifier" value:parentItemIdentifier3];

      if (v43)
      {
        v49 = brc_bread_crumbs();
        v50 = brc_default_log();
        if (os_log_type_enabled(v50, 0x90u))
        {
          v66 = "(passed to caller)";
          *buf = 136315906;
          v73 = "[BRCFSImporter _processParentAndFilenameIfNecessaryWithLocalItem:changedFields:templateItem:error:]";
          v74 = 2080;
          if (!error)
          {
            v66 = "(ignored by caller)";
          }

          v75 = v66;
          v76 = 2112;
          v77 = v43;
          v78 = 2112;
          v79 = v49;
          _os_log_error_impl(&dword_223E7A000, v50, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
        }
      }

      if (error)
      {
        v51 = v43;
        *error = v43;
      }

      goto LABEL_46;
    }

    session = [v12 session];
    itemFetcher = [session itemFetcher];
    v67 = fileObjectID;
    v33 = [itemFetcher itemByFileObjectID:fileObjectID];
    asDirectory = [v33 asDirectory];

    if (asDirectory && ![asDirectory isDead])
    {
      if (([(BRCFSImporter *)self capabilityToMoveItem:v12 toNewParentItem:asDirectory error:0]& 0x35FB) != 0)
      {
        if ((fieldsCopy & 2) != 0)
        {
          filename2 = [v13 filename];
        }

        else
        {
          v52 = [v12 st];
          filename2 = [v52 logicalName];
        }

        clientZone = [asDirectory clientZone];
        itemID = [asDirectory itemID];
        v64 = (v14)[2](v14, filename2, clientZone, itemID, asDirectory);

        v43 = v67;
        if (!v64)
        {
LABEL_45:

LABEL_46:
          goto LABEL_47;
        }
      }

      else
      {
        v60 = brc_bread_crumbs();
        v61 = brc_default_log();
        v43 = v67;
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412802;
          v73 = v12;
          v74 = 2112;
          v75 = asDirectory;
          v76 = 2112;
          v77 = v60;
          _os_log_debug_impl(&dword_223E7A000, v61, OS_LOG_TYPE_DEBUG, "[DEBUG] Can't reparent to folder: undoing reparent on %@ to %@%@", buf, 0x20u);
        }

        asDirectory = 0;
      }

LABEL_54:
      v59 = 1;
      goto LABEL_55;
    }

    if (([asDirectory isDead] & 1) != 0 || (objc_msgSend(v12, "session"), v35 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v35, "recentsEnumerator"), v36 = objc_claimAutoreleasedReturnValue(), v37 = objc_msgSend(v36, "hasDeletedFileObjectID:", v67), v36, v35, v37))
    {
      v38 = brc_bread_crumbs();
      v39 = brc_default_log();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        [BRCFSImporter _processParentAndFilenameIfNecessaryWithLocalItem:changedFields:templateItem:error:];
      }

      v40 = MEMORY[0x277CCA9B8];
      parentItemIdentifier4 = [v13 parentItemIdentifier];
      v42 = [v40 brc_errorParentItemRemotelyDeleted:parentItemIdentifier4];

      v43 = v67;
      if (!v42)
      {
        goto LABEL_42;
      }

      v44 = brc_bread_crumbs();
      v45 = brc_default_log();
      if (!os_log_type_enabled(v45, 0x90u))
      {
LABEL_41:

LABEL_42:
        if (error)
        {
          v58 = v42;
          *error = v42;
        }

        goto LABEL_45;
      }

      v46 = "(passed to caller)";
      *buf = 136315906;
      v73 = "[BRCFSImporter _processParentAndFilenameIfNecessaryWithLocalItem:changedFields:templateItem:error:]";
      v74 = 2080;
      if (!error)
      {
        v46 = "(ignored by caller)";
      }
    }

    else
    {
      v54 = brc_bread_crumbs();
      v55 = brc_default_log();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
      {
        [BRCFSImporter _processParentAndFilenameIfNecessaryWithLocalItem:changedFields:templateItem:error:];
      }

      v56 = MEMORY[0x277CCA9B8];
      parentItemIdentifier5 = [v13 parentItemIdentifier];
      v42 = [v56 brc_errorItemNotFound:parentItemIdentifier5];

      v43 = v67;
      if (!v42)
      {
        goto LABEL_42;
      }

      v44 = brc_bread_crumbs();
      v45 = brc_default_log();
      if (!os_log_type_enabled(v45, 0x90u))
      {
        goto LABEL_41;
      }

      v46 = "(passed to caller)";
      *buf = 136315906;
      v73 = "[BRCFSImporter _processParentAndFilenameIfNecessaryWithLocalItem:changedFields:templateItem:error:]";
      v74 = 2080;
      if (!error)
      {
        v46 = "(ignored by caller)";
      }
    }

    v75 = v46;
    v76 = 2112;
    v77 = v42;
    v78 = 2112;
    v79 = v44;
    _os_log_error_impl(&dword_223E7A000, v45, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    goto LABEL_41;
  }

  if ((fieldsCopy & 2) == 0)
  {
    goto LABEL_54;
  }

  filename3 = [v13 filename];
  parentClientZone = [v12 parentClientZone];
  v17 = [v12 st];
  parentID = [v17 parentID];
  v19 = (v14)[2](v14, filename3, parentClientZone, parentID, 0);

  if (v19)
  {
    goto LABEL_54;
  }

LABEL_47:
  v59 = 0;
LABEL_55:

  return v59;
}

uint64_t __100__BRCFSImporter__processParentAndFilenameIfNecessaryWithLocalItem_changedFields_templateItem_error___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v27 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a5;
  v11 = *(a1 + 32);
  v12 = a4;
  v13 = a3;
  v14 = [v11 itemGlobalID];
  v15 = [v13 liveItemByParentID:v12 andLogicalName:v9 excludingItemGlobalID:v14];

  if (v15)
  {
    v16 = brc_bread_crumbs();
    v17 = brc_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = *(a1 + 40);
      v21 = 138412802;
      v22 = v15;
      v23 = 2112;
      v24 = v18;
      v25 = 2112;
      v26 = v16;
      _os_log_impl(&dword_223E7A000, v17, OS_LOG_TYPE_INFO, "[INFO] Bouncing item %@ because of %@%@", &v21, 0x20u);
    }

    [v15 markBouncedToNextAvailableBounceNumber:505];
    v19 = [v15 isMigratingToFPFS];
    [v15 markDoneMigratingToFPFS];
    [v15 saveToDB];
    if (v19)
    {
      [*(a1 + 48) _reportBouncingForMigration:*(a1 + 40) existingItem:v15];
    }
  }

  [*(a1 + 32) updateWithLogicalName:v9 newParent:v10];

  return 1;
}

- (void)_learnLocalContentEtagXattrIfPossibleOnDocumentItem:(id)item templateItem:(id)templateItem
{
  v26 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  templateItemCopy = templateItem;
  v8 = [BRCUserDefaults defaultsForMangledID:0];
  accountFacade = [(BRCAccountSession *)self->_session accountFacade];
  v10 = [v8 saveLocalContentVersionIdentifierOnDiskWithAccountFacade:accountFacade];

  if (v10)
  {
    extendedAttributes = [templateItemCopy extendedAttributes];
    v12 = [extendedAttributes objectForKeyedSubscript:@"com.apple.clouddocs.local.fpfs.ct.version.identifier#CB"];
    if (v12)
    {
      v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v12 encoding:4];
      if (v13)
      {
        [itemCopy learnContentVersionFromVersionIdentifier:v13];
        v14 = brc_bread_crumbs();
        v15 = brc_default_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          currentVersion = [itemCopy currentVersion];
          ckInfo = [currentVersion ckInfo];
          v18 = 138413058;
          v19 = itemCopy;
          v20 = 2112;
          v21 = v13;
          v22 = 2112;
          v23 = ckInfo;
          v24 = 2112;
          v25 = v14;
          _os_log_debug_impl(&dword_223E7A000, v15, OS_LOG_TYPE_DEBUG, "[DEBUG] Learned etag on %@ from the content xattr in reimport flow - versionIdentifier = %@, ckInfo = %@%@", &v18, 0x2Au);
        }
      }
    }
  }
}

- (void)_learnEtagsIfNecessaryWithItem:(id)item templateItem:(id)templateItem changedFields:(unint64_t)fields baseVersion:(id)version
{
  v49 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  templateItemCopy = templateItem;
  versionCopy = version;
  if (![itemCopy isDocument] || (objc_msgSend(itemCopy, "asDocument"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isDocumentBeingCopiedToNewZone"), v13, (v14 & 1) == 0))
  {
    if ((fields & 1) != 0 && [versionCopy br_isValidContentVersion] && objc_msgSend(itemCopy, "isDocument"))
    {
      br_contentSignature = [versionCopy br_contentSignature];
      orig = [itemCopy orig];
      asDocument = [orig asDocument];
      currentVersion = [asDocument currentVersion];
      versionSignature = [currentVersion versionSignature];

      if (([br_contentSignature isEquivalentToSignature:versionSignature] & 1) == 0)
      {
        v20 = brc_bread_crumbs();
        v21 = brc_default_log();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          [br_contentSignature versionIdentifier];
          v22 = v41 = v20;
          versionIdentifier = [versionSignature versionIdentifier];
          *buf = 138412802;
          v44 = v22;
          v45 = 2112;
          v46 = versionIdentifier;
          v47 = 2112;
          v48 = v41;
          _os_log_impl(&dword_223E7A000, v21, OS_LOG_TYPE_DEFAULT, "[WARNING] Base version differs from local version content! overwriting our local version (%@ vs %@)%@", buf, 0x20u);

          v20 = v41;
        }

        asDocument2 = [itemCopy asDocument];
        currentVersion2 = [asDocument2 currentVersion];
        ckInfo = [currentVersion2 ckInfo];
        [br_contentSignature etag];
        v26 = br_contentSignature;
        v28 = v27 = versionSignature;
        [ckInfo overwriteEtag:v28];

        versionSignature = v27;
        br_contentSignature = v26;
      }
    }

    if (fields >= 2 && [versionCopy br_isValidStructureVersion])
    {
      br_structureSignature = [versionCopy br_structureSignature];
      orig2 = [itemCopy orig];
      v31 = [orig2 st];
      versionSignature2 = [v31 versionSignature];

      if (([br_structureSignature isEquivalentToSignature:versionSignature2] & 1) == 0)
      {
        v33 = brc_bread_crumbs();
        v34 = brc_default_log();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          versionIdentifier2 = [br_structureSignature versionIdentifier];
          versionIdentifier3 = [versionSignature2 versionIdentifier];
          *buf = 138412802;
          v44 = versionIdentifier2;
          v45 = 2112;
          v46 = versionIdentifier3;
          v47 = 2112;
          v48 = v33;
          _os_log_impl(&dword_223E7A000, v34, OS_LOG_TYPE_DEFAULT, "[WARNING] Base version differs from local version structure! overwriting our local version (%@ vs %@)%@", buf, 0x20u);
        }

        v37 = [itemCopy st];
        ckInfo2 = [v37 ckInfo];
        etag = [br_structureSignature etag];
        [ckInfo2 overwriteEtag:etag];
      }
    }

    if (!versionCopy && [itemCopy isDocument])
    {
      asDocument3 = [itemCopy asDocument];
      [(BRCFSImporter *)self _learnLocalContentEtagXattrIfPossibleOnDocumentItem:asDocument3 templateItem:templateItemCopy];
    }
  }
}

- (BOOL)changeItem:(id)item baseVersion:(id)version changedFields:(unint64_t)fields newValues:(id)values contents:(id)contents additionalAttrs:(id)attrs clearCKInfoOnSyncUp:(BOOL)up stillPendingFields:(unint64_t *)self0 error:(id *)self1
{
  v117 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  versionCopy = version;
  valuesCopy = values;
  contentsCopy = contents;
  attrsCopy = attrs;
  clientDB = [(BRCAccountSession *)self->_session clientDB];
  LOBYTE(version) = [clientDB isInTransaction];

  if ((version & 1) == 0)
  {
    [BRCFSImporter changeItem:baseVersion:changedFields:newValues:contents:additionalAttrs:clearCKInfoOnSyncUp:stillPendingFields:error:];
  }

  if (![itemCopy isZoneRoot])
  {
    if ([itemCopy isShareAcceptationFault])
    {
      lastError = brc_bread_crumbs();
      v22 = brc_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        [BRCFSImporter changeItem:baseVersion:changedFields:newValues:contents:additionalAttrs:clearCKInfoOnSyncUp:stillPendingFields:error:];
      }

      goto LABEL_9;
    }

    v102 = contentsCopy;
    if ([itemCopy isZoneRoot])
    {
LABEL_39:
      parentFileObjectID = [itemCopy parentFileObjectID];
      if ([parentFileObjectID isAppLibraryRoot])
      {
        itemID = [itemCopy itemID];
        v42 = ([itemID isDocumentsFolder] & 1) != 0 || -[BRCFSImporter _isDesktopOrDocumentsItem:](self, "_isDesktopOrDocumentsItem:", itemCopy);
      }

      else
      {
        v42 = [(BRCFSImporter *)self _isDesktopOrDocumentsItem:itemCopy];
      }

      if ((fields & 6) != 0 && v42)
      {
        v43 = brc_bread_crumbs();
        v44 = brc_default_log();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
        {
          [BRCFSImporter changeItem:baseVersion:changedFields:newValues:contents:additionalAttrs:clearCKInfoOnSyncUp:stillPendingFields:error:];
        }

        fields &= 0xFFFFFFFFFFFFFFF9;
      }

      if ((fields & 1) == 0)
      {
        v23 = 0;
        goto LABEL_87;
      }

      if (contentsCopy)
      {
        if (([itemCopy isDocument] & 1) == 0)
        {
          [BRCFSImporter changeItem:baseVersion:changedFields:newValues:contents:additionalAttrs:clearCKInfoOnSyncUp:stillPendingFields:error:];
        }

        fsUploader = [(BRCAccountSession *)self->_session fsUploader];
        asDocument = [itemCopy asDocument];
        v47 = [fsUploader isUploadingItem:asDocument];

        if (v47)
        {
          v48 = brc_bread_crumbs();
          v49 = brc_default_log();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
          {
            [BRCFSImporter changeItem:baseVersion:changedFields:newValues:contents:additionalAttrs:clearCKInfoOnSyncUp:stillPendingFields:error:];
          }

          contentsCopy = v102;
          if (error)
          {
            [MEMORY[0x277CCA9B8] brc_errorPostponeUpload];
            lastError = 0;
            v23 = 0;
            *error = v24 = 0;
            goto LABEL_10;
          }

          lastError = 0;
LABEL_121:
          v23 = 0;
          goto LABEL_122;
        }

        if ([itemCopy isDocument])
        {
          asDocument2 = [itemCopy asDocument];
          currentVersion = [asDocument2 currentVersion];
          quarantineInfo = [currentVersion quarantineInfo];
        }

        else
        {
          quarantineInfo = 0;
        }

        contentsCopy = v102;
        v108 = 0;
        lastError = [[BRCImportObject alloc] initWithURL:v102 existingItem:itemCopy quarantineInfo:quarantineInfo error:&v108];
        asDocument3 = v108;
      }

      else
      {
        contentType = [valuesCopy contentType];
        br_isSymbolicLinkType = [contentType br_isSymbolicLinkType];

        if (!br_isSymbolicLinkType)
        {
          v60 = brc_bread_crumbs();
          v61 = brc_default_log();
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v110 = v60;
            _os_log_impl(&dword_223E7A000, v61, OS_LOG_TYPE_DEFAULT, "[NOTICE] Got nil content URL and the item is not a symbolic link. Ignoring the content change field%@", buf, 0xCu);
          }

          asDocument3 = 0;
          lastError = 0;
          v23 = 0;
          if (![0 br_isPOSIXErrorCode:1])
          {
            goto LABEL_86;
          }

          goto LABEL_81;
        }

        quarantineInfo = [valuesCopy symlinkTargetPath];
        if (!quarantineInfo)
        {
          quarantineInfo = [attrsCopy objectForKey:@"symlink-target"];
        }

        v53 = [BRCImportObject alloc];
        parentItemOnFS = [itemCopy parentItemOnFS];
        v55 = [itemCopy st];
        logicalName = [v55 logicalName];
        v107 = 0;
        lastError = [(BRCImportObject *)v53 initAsSymlinkWithTarget:quarantineInfo parentItem:parentItemOnFS logicalName:logicalName error:&v107];
        asDocument3 = v107;

        contentsCopy = v102;
      }

      if (lastError)
      {
        v106 = asDocument3;
        v62 = [itemCopy updateWithImportObject:lastError onlyContentDependentProperties:valuesCopy != 0 error:&v106];
        v23 = v106;

        if (v62)
        {
          if (!contentsCopy)
          {
            goto LABEL_86;
          }

          stageRegistry = [(BRCAccountSession *)self->_session stageRegistry];
          liveStageFilename = [itemCopy liveStageFilename];
          v65 = contentsCopy;
          v66 = liveStageFilename;
          v67 = [stageRegistry moveFromURLToLiveStage:v65 liveStageFilename:liveStageFilename error:error];

          if (!v67)
          {
            v24 = 0;
            contentsCopy = v102;
            goto LABEL_10;
          }

          if (![itemCopy isDocument])
          {
            goto LABEL_86;
          }

          asDocument3 = [itemCopy asDocument];
          filename = [valuesCopy filename];
          if (filename)
          {
            [asDocument3 updateWithOriginalPosixName:filename];
          }

          else
          {
            v92 = [itemCopy st];
            filename2 = [v92 filename];
            [asDocument3 updateWithOriginalPosixName:filename2];
          }

          goto LABEL_85;
        }

        asDocument3 = v23;
      }

      if (([asDocument3 br_isPOSIXErrorCode:1] & 1) == 0)
      {
        v23 = asDocument3;
        if (v23)
        {
          v87 = brc_bread_crumbs();
          v88 = brc_default_log();
          if (os_log_type_enabled(v88, 0x90u))
          {
            v95 = "(passed to caller)";
            *buf = 136315906;
            v110 = "[BRCFSImporter changeItem:baseVersion:changedFields:newValues:contents:additionalAttrs:clearCKInfoOnSyncUp:stillPendingFields:error:]";
            v111 = 2080;
            if (!error)
            {
              v95 = "(ignored by caller)";
            }

            v112 = v95;
            v113 = 2112;
            v114 = v23;
            v115 = 2112;
            v116 = v87;
            _os_log_error_impl(&dword_223E7A000, v88, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
          }
        }

        if (error)
        {
          v89 = v23;
          *error = v23;
        }

        goto LABEL_122;
      }

LABEL_81:
      v69 = brc_bread_crumbs();
      v70 = brc_default_log();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v110 = itemCopy;
        v111 = 2112;
        v112 = v69;
        _os_log_impl(&dword_223E7A000, v70, OS_LOG_TYPE_DEFAULT, "[WARNING] Failed updating the content of the item %@ from the template due to EPERM error, will continue and flag the content of the item as pending%@", buf, 0x16u);
      }

      v23 = 0;
      if (pendingFields)
      {
        *pendingFields |= 1uLL;
      }

LABEL_85:

LABEL_86:
LABEL_87:
      v71 = v23;
      [(BRCFSImporter *)self _learnEtagsIfNecessaryWithItem:itemCopy templateItem:valuesCopy changedFields:fields baseVersion:versionCopy];
      v105 = v23;
      v72 = [(BRCFSImporter *)self _processParentAndFilenameIfNecessaryWithLocalItem:itemCopy changedFields:fields templateItem:valuesCopy error:&v105];
      v23 = v105;

      if (!v72)
      {
        lastError = v23;
        contentsCopy = v102;
        if (lastError)
        {
          v80 = brc_bread_crumbs();
          v81 = brc_default_log();
          if (os_log_type_enabled(v81, 0x90u))
          {
            v90 = "(passed to caller)";
            *buf = 136315906;
            v110 = "[BRCFSImporter changeItem:baseVersion:changedFields:newValues:contents:additionalAttrs:clearCKInfoOnSyncUp:stillPendingFields:error:]";
            v111 = 2080;
            if (!error)
            {
              v90 = "(ignored by caller)";
            }

            v112 = v90;
            v113 = 2112;
            v114 = lastError;
            v115 = 2112;
            v116 = v80;
            _os_log_error_impl(&dword_223E7A000, v81, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
          }
        }

        if (error)
        {
          v82 = lastError;
          v24 = 0;
          *error = lastError;
        }

        else
        {
          v24 = 0;
        }

        v23 = lastError;
        goto LABEL_10;
      }

      [(BRCFSImporter *)self _changeBasicFieldsOnItem:itemCopy fields:fields template:valuesCopy];
      if ((fields & 0x80000000) != 0 && [itemCopy isDocument])
      {
        [(BRCFSImporter *)self _resolveConflictLosersForItem:valuesCopy localItem:itemCopy];
      }

      [itemCopy markNeedsUploadOrSyncingUp];
      contentsCopy = v102;
      if (up && ([itemCopy isIdleOrRejected] & 1) == 0)
      {
        v73 = brc_bread_crumbs();
        v74 = brc_default_log();
        if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
        {
          [BRCFSImporter changeItem:baseVersion:changedFields:newValues:contents:additionalAttrs:clearCKInfoOnSyncUp:stillPendingFields:error:];
        }

        localDiffs = [itemCopy localDiffs];
        v76 = [itemCopy diffAgainstOriginalItem] | localDiffs;
        if ([itemCopy isDocument] && (v76 & 0x1FE0000) != 0)
        {
          asDocument4 = [itemCopy asDocument];
          currentVersion2 = [asDocument4 currentVersion];
          [currentVersion2 clearCKInfo];

          contentsCopy = v102;
        }

        if ((v76 & 0x3FFE) != 0)
        {
          v79 = [itemCopy st];
          [v79 clearCKInfo];
        }
      }

      if ([itemCopy saveToDB])
      {
        v24 = 1;
        goto LABEL_11;
      }

      v83 = [itemCopy db];
      lastError = [v83 lastError];

      if (lastError)
      {
        v84 = brc_bread_crumbs();
        v85 = brc_default_log();
        if (os_log_type_enabled(v85, 0x90u))
        {
          v91 = "(passed to caller)";
          *buf = 136315906;
          v110 = "[BRCFSImporter changeItem:baseVersion:changedFields:newValues:contents:additionalAttrs:clearCKInfoOnSyncUp:stillPendingFields:error:]";
          v111 = 2080;
          if (!error)
          {
            v91 = "(ignored by caller)";
          }

          v112 = v91;
          v113 = 2112;
          v114 = lastError;
          v115 = 2112;
          v116 = v84;
          _os_log_error_impl(&dword_223E7A000, v85, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
        }
      }

      if (error)
      {
        v86 = lastError;
        v24 = 0;
        *error = lastError;
        goto LABEL_10;
      }

LABEL_122:
      v24 = 0;
      goto LABEL_10;
    }

    appLibrary = [itemCopy appLibrary];
    mangledID = [appLibrary mangledID];
    v28 = [BRCUserDefaults defaultsForMangledID:mangledID];
    if ([v28 failModifyRequestsWhenInFlightUnAckedChanges])
    {
      isKnownByServer = [itemCopy isKnownByServer];
      if (!isKnownByServer)
      {
        v100 = 0;
        v101 = 0;
        goto LABEL_18;
      }

      v30 = [itemCopy st];
      if ([v30 localChangeCount])
      {
        v100 = 0;
        v101 = isKnownByServer;
        v98 = v30;
        goto LABEL_18;
      }

      if ([itemCopy isDocument])
      {
        asDocument5 = [itemCopy asDocument];
        currentVersion3 = [asDocument5 currentVersion];
        if ([currentVersion3 localChangeCount])
        {
          v98 = v30;
          v100 = 1;
          v101 = isKnownByServer;
LABEL_18:
          clientZone = [itemCopy clientZone];
          dbRowID = [clientZone dbRowID];
          if ([itemCopy inFlightSyncUpDiffsInZoneRowID:dbRowID])
          {
            clientZone2 = [itemCopy clientZone];
            v99 = ([clientZone2 syncState] >> 2) & 1;

            contentsCopy = v102;
            if (v100)
            {
              goto LABEL_20;
            }
          }

          else
          {

            v99 = 0;
            if (v100)
            {
LABEL_20:

              v34 = v98;
              if ((v101 & 1) == 0)
              {
                goto LABEL_21;
              }

              goto LABEL_25;
            }
          }

          v34 = v98;
          if (!v101)
          {
LABEL_21:

            if (!v99)
            {
              goto LABEL_39;
            }

LABEL_26:
            v35 = brc_bread_crumbs();
            v36 = brc_default_log();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v110 = itemCopy;
              v111 = 2112;
              v112 = v35;
              _os_log_impl(&dword_223E7A000, v36, OS_LOG_TYPE_DEFAULT, "[WARNING] Received modify item request while we have un-acked in-flight diffs for %@. Returning with an error to retry later%@", buf, 0x16u);
            }

            lastError = [MEMORY[0x277CCA9B8] brc_errorPostponeUpload];
            if (lastError)
            {
              v37 = brc_bread_crumbs();
              v38 = brc_default_log();
              if (os_log_type_enabled(v38, 0x90u))
              {
                v94 = "(passed to caller)";
                *buf = 136315906;
                v110 = "[BRCFSImporter changeItem:baseVersion:changedFields:newValues:contents:additionalAttrs:clearCKInfoOnSyncUp:stillPendingFields:error:]";
                v111 = 2080;
                if (!error)
                {
                  v94 = "(ignored by caller)";
                }

                v112 = v94;
                v113 = 2112;
                v114 = lastError;
                v115 = 2112;
                v116 = v37;
                _os_log_error_impl(&dword_223E7A000, v38, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
              }
            }

            if (error)
            {
              v39 = lastError;
              v23 = 0;
              v24 = 0;
              *error = lastError;
              goto LABEL_10;
            }

            goto LABEL_121;
          }

LABEL_25:

          if ((v99 & 1) == 0)
          {
            goto LABEL_39;
          }

          goto LABEL_26;
        }
      }
    }

    goto LABEL_39;
  }

  lastError = brc_bread_crumbs();
  v22 = brc_default_log();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    [BRCFSImporter changeItem:baseVersion:changedFields:newValues:contents:additionalAttrs:clearCKInfoOnSyncUp:stillPendingFields:error:];
  }

LABEL_9:

  v23 = 0;
  v24 = 1;
LABEL_10:

LABEL_11:
  return v24;
}

- (unsigned)_itemTypeToFileObjectIDType:(char)type itemID:(id)d
{
  typeCopy = type;
  if ([d isDocumentsFolder])
  {
    return 4;
  }

  if (typeCopy > 0xA)
  {
    return 5;
  }

  return byte_2241ABFD4[typeCopy];
}

- (BOOL)_deleteAppLibrary:(id)library documentsFolder:(id)folder error:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  libraryCopy = library;
  folderCopy = folder;
  if (libraryCopy)
  {
    deleteAppLibrary = [libraryCopy deleteAppLibrary];
    v10 = deleteAppLibrary;
    if (deleteAppLibrary)
    {
      v11 = deleteAppLibrary;
      v12 = brc_bread_crumbs();
      v13 = brc_default_log();
      if (os_log_type_enabled(v13, 0x90u))
      {
        v24 = "(passed to caller)";
        *buf = 136315906;
        v29 = "[BRCFSImporter _deleteAppLibrary:documentsFolder:error:]";
        v30 = 2080;
        if (!error)
        {
          v24 = "(ignored by caller)";
        }

        v31 = v24;
        v32 = 2112;
        v33 = v11;
        v34 = 2112;
        v35 = v12;
        _os_log_error_impl(&dword_223E7A000, v13, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }

      if (error)
      {
        v14 = v11;
        *error = v11;
      }
    }

    else
    {
      [libraryCopy didRemoveDocumentsFolder];
      rootFileObjectID = [libraryCopy rootFileObjectID];
      asString = [rootFileObjectID asString];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __57__BRCFSImporter__deleteAppLibrary_documentsFolder_error___block_invoke;
      v26[3] = &unk_2784FF540;
      v17 = folderCopy;
      v27 = v17;
      [BRCImportUtil forceIngestionForItemID:asString completionHandler:v26];

      v18 = [[BRCNotification alloc] initWithLocalItem:v17 itemDiffs:0];
      v19 = [MEMORY[0x277CCA9B8] brc_errorForRejectedDeletionOfItem:v18];
      if (v19)
      {
        v20 = brc_bread_crumbs();
        v21 = brc_default_log();
        if (os_log_type_enabled(v21, 0x90u))
        {
          v25 = "(passed to caller)";
          *buf = 136315906;
          v29 = "[BRCFSImporter _deleteAppLibrary:documentsFolder:error:]";
          v30 = 2080;
          if (!error)
          {
            v25 = "(ignored by caller)";
          }

          v31 = v25;
          v32 = 2112;
          v33 = v19;
          v34 = 2112;
          v35 = v20;
          _os_log_error_impl(&dword_223E7A000, v21, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
        }
      }

      if (error)
      {
        v22 = v19;
        *error = v19;
      }

      v11 = v27;
    }
  }

  else if (error)
  {
    *error = 0;
  }

  return 0;
}

void __57__BRCFSImporter__deleteAppLibrary_documentsFolder_error___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [*(a1 + 32) appLibrary];
      v7 = 138412802;
      v8 = v6;
      v9 = 2112;
      v10 = v3;
      v11 = 2112;
      v12 = v4;
      _os_log_debug_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] Failed force ingesting the root of the app library %@ - %@%@", &v7, 0x20u);
    }
  }
}

- (BOOL)_shouldRejectItemDeleteDueToEtags:(id)etags baseVersion:(id)version error:(id *)error
{
  v44 = *MEMORY[0x277D85DE8];
  etagsCopy = etags;
  versionCopy = version;
  appLibrary = [etagsCopy appLibrary];
  mangledID = [appLibrary mangledID];
  v11 = [BRCUserDefaults defaultsForMangledID:mangledID];
  rejectDeletionsBasedOnEtag = [v11 rejectDeletionsBasedOnEtag];

  if (!rejectDeletionsBasedOnEtag || ([etagsCopy isSharedToMeTopLevelItem] & 1) != 0)
  {
    goto LABEL_8;
  }

  br_structureSignature = [versionCopy br_structureSignature];
  v14 = [etagsCopy st];
  versionSignature = [v14 versionSignature];

  if (([versionSignature isEquivalentToSignature:br_structureSignature] & 1) == 0)
  {
    v22 = brc_bread_crumbs();
    v23 = brc_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v37 = versionSignature;
      v38 = 2112;
      v39 = br_structureSignature;
      v40 = 2112;
      v41 = v22;
      _os_log_debug_impl(&dword_223E7A000, v23, OS_LOG_TYPE_DEBUG, "[DEBUG] Structure signature mismatch for deletion %@ vs %@%@", buf, 0x20u);
    }

    br_contentSignature = [[BRCNotification alloc] initWithLocalItem:etagsCopy itemDiffs:0];
    versionSignature2 = [MEMORY[0x277CCA9B8] brc_errorForRejectedDeletionOfItem:br_contentSignature];
    if (versionSignature2)
    {
      v24 = brc_bread_crumbs();
      v25 = brc_default_log();
      if (os_log_type_enabled(v25, 0x90u))
      {
        v33 = "(passed to caller)";
        *buf = 136315906;
        v37 = "[BRCFSImporter _shouldRejectItemDeleteDueToEtags:baseVersion:error:]";
        v38 = 2080;
        if (!error)
        {
          v33 = "(ignored by caller)";
        }

        v39 = v33;
        v40 = 2112;
        v41 = versionSignature2;
        v42 = 2112;
        v43 = v24;
        _os_log_error_impl(&dword_223E7A000, v25, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (error)
    {
      v26 = versionSignature2;
      *error = versionSignature2;
    }

    goto LABEL_25;
  }

  if ([etagsCopy isDocument])
  {
    br_contentSignature = [versionCopy br_contentSignature];
    asDocument = [etagsCopy asDocument];
    currentVersion = [asDocument currentVersion];
    versionSignature2 = [currentVersion versionSignature];

    if ([versionSignature2 isEquivalentToSignature:br_contentSignature])
    {

      goto LABEL_7;
    }

    v27 = brc_bread_crumbs();
    v28 = brc_default_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v37 = br_contentSignature;
      v38 = 2112;
      v39 = versionSignature2;
      v40 = 2112;
      v41 = v27;
      _os_log_debug_impl(&dword_223E7A000, v28, OS_LOG_TYPE_DEBUG, "[DEBUG] Content signature mismatch for deletion %@ vs %@%@", buf, 0x20u);
    }

    v29 = [[BRCNotification alloc] initWithLocalItem:etagsCopy itemDiffs:0];
    v30 = [MEMORY[0x277CCA9B8] brc_errorForRejectedDeletionOfItem:v29];
    if (v30)
    {
      v35 = brc_bread_crumbs();
      v31 = brc_default_log();
      if (os_log_type_enabled(v31, 0x90u))
      {
        v34 = "(passed to caller)";
        *buf = 136315906;
        v37 = "[BRCFSImporter _shouldRejectItemDeleteDueToEtags:baseVersion:error:]";
        v38 = 2080;
        if (!error)
        {
          v34 = "(ignored by caller)";
        }

        v39 = v34;
        v40 = 2112;
        v41 = v30;
        v42 = 2112;
        v43 = v35;
        _os_log_error_impl(&dword_223E7A000, v31, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (error)
    {
      v32 = v30;
      *error = v30;
    }

LABEL_25:
    v20 = 1;
    goto LABEL_9;
  }

LABEL_7:

LABEL_8:
  v20 = 0;
LABEL_9:

  return v20;
}

- (BOOL)deleteItem:(id)item recursively:(BOOL)recursively baseVersion:(id)version error:(id *)error
{
  v49 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  versionCopy = version;
  clientDB = [(BRCAccountSession *)self->_session clientDB];
  [clientDB assertOnQueue];

  if (!itemCopy || [itemCopy isDead])
  {
    if (error)
    {
      v13 = 0;
      *error = 0;
      goto LABEL_22;
    }

LABEL_21:
    v13 = 0;
    goto LABEL_22;
  }

  if (!recursively && [itemCopy isDirectory])
  {
    asDirectory = [itemCopy asDirectory];
    if ([asDirectory hasLiveChildren])
    {

LABEL_11:
      brc_errorDeletingNonEmptyDirectoryNonRecursively = [MEMORY[0x277CCA9B8] brc_errorDeletingNonEmptyDirectoryNonRecursively];
      if (brc_errorDeletingNonEmptyDirectoryNonRecursively)
      {
        v19 = brc_bread_crumbs();
        v20 = brc_default_log();
        if (os_log_type_enabled(v20, 0x90u))
        {
          v32 = "(passed to caller)";
          *v46 = 136315906;
          *&v46[4] = "[BRCFSImporter deleteItem:recursively:baseVersion:error:]";
          *&v46[12] = 2080;
          if (!error)
          {
            v32 = "(ignored by caller)";
          }

          *&v46[14] = v32;
          *&v46[22] = 2112;
          v47 = brc_errorDeletingNonEmptyDirectoryNonRecursively;
          LOWORD(v48) = 2112;
          *(&v48 + 2) = v19;
          _os_log_error_impl(&dword_223E7A000, v20, 0x90u, "[ERROR] %s: %s error: %@%@", v46, 0x2Au);
        }
      }

      if (error)
      {
        v21 = brc_errorDeletingNonEmptyDirectoryNonRecursively;
        *error = brc_errorDeletingNonEmptyDirectoryNonRecursively;
      }

      goto LABEL_21;
    }

    if ([itemCopy isDirectoryFault])
    {
      asDirectory2 = [itemCopy asDirectory];
      childItemCount = [asDirectory2 childItemCount];
      longLongValue = [childItemCount longLongValue];

      if (longLongValue > 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  fileObjectID = [itemCopy fileObjectID];
  isAppLibraryDocumentsFolder = [fileObjectID isAppLibraryDocumentsFolder];

  if (isAppLibraryDocumentsFolder)
  {
    appLibrary = [itemCopy appLibrary];
    [(BRCFSImporter *)self _deleteAppLibrary:appLibrary documentsFolder:itemCopy error:error];

    goto LABEL_21;
  }

  if ([(BRCFSImporter *)self _shouldRejectItemDeleteDueToEtags:itemCopy baseVersion:versionCopy error:error])
  {
    goto LABEL_21;
  }

  *v46 = 0;
  *&v46[8] = v46;
  *&v46[16] = 0x3032000000;
  v47 = __Block_byref_object_copy__25;
  *&v48 = __Block_byref_object_dispose__25;
  *(&v48 + 1) = 0;
  v26 = [itemCopy db];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __58__BRCFSImporter_deleteItem_recursively_baseVersion_error___block_invoke;
  v33[3] = &unk_278503480;
  recursivelyCopy = recursively;
  selfCopy = self;
  v36 = v46;
  v34 = itemCopy;
  [v26 groupInBatch:v33];

  v27 = *(*&v46[8] + 40);
  if (v27)
  {
    v28 = brc_bread_crumbs();
    v29 = brc_default_log();
    if (os_log_type_enabled(v29, 0x90u))
    {
      v31 = "(passed to caller)";
      *buf = 136315906;
      v39 = "[BRCFSImporter deleteItem:recursively:baseVersion:error:]";
      v40 = 2080;
      if (!error)
      {
        v31 = "(ignored by caller)";
      }

      v41 = v31;
      v42 = 2112;
      v43 = v27;
      v44 = 2112;
      v45 = v28;
      _os_log_error_impl(&dword_223E7A000, v29, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    }
  }

  if (error)
  {
    v30 = v27;
    *error = v27;
  }

  v13 = *(*&v46[8] + 40) == 0;
  _Block_object_dispose(v46, 8);

LABEL_22:
  return v13;
}

void __58__BRCFSImporter_deleteItem_recursively_baseVersion_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) markRemovedFromFilesystemRecursively:*(a1 + 56)];
  if ([*(a1 + 32) saveToDB])
  {
    v7 = [*(a1 + 32) db];
    [v7 flush];
  }

  else
  {
    v2 = [*(*(a1 + 40) + 8) clientDB];
    v3 = [v2 lastError];
    v4 = v3;
    if (!v3)
    {
      v5 = brc_bread_crumbs();
      v6 = brc_default_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        __58__BRCFSImporter_deleteItem_recursively_baseVersion_error___block_invoke_cold_1();
      }

      v4 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:@"unreachable: Failed to save to db without an error"];
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v4);
    if (!v3)
    {
    }
  }
}

- (void)_markNextChildBatchDead:(id)dead persistedState:(id)state batchSize:(int)size
{
  v5 = *&size;
  deadCopy = dead;
  stateCopy = state;
  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [BRCFSImporter _markNextChildBatchDead:persistedState:batchSize:];
  }

  v41 = stateCopy;
  nextNotifRank = [stateCopy nextNotifRank];
  v42 = v5;
  v43 = v5;
  v12 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:?];
  v13 = objc_opt_new();
  clientZone = [deadCopy clientZone];
  dbRowID = [clientZone dbRowID];

  v40 = dbRowID;
  longLongValue = [dbRowID longLongValue];
  v59[0] = 0;
  v59[1] = v59;
  v59[2] = 0x2020000000;
  v59[3] = brc_current_date_nsec();
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __66__BRCFSImporter__markNextChildBatchDead_persistedState_batchSize___block_invoke;
  v54[3] = &unk_2785034A8;
  v54[4] = self;
  v47 = v12;
  v55 = v47;
  v58 = longLongValue;
  v39 = v13;
  v56 = v39;
  v57 = v59;
  v46 = MEMORY[0x22AA4A310](v54);
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __66__BRCFSImporter__markNextChildBatchDead_persistedState_batchSize___block_invoke_78;
  v52[3] = &unk_2784FF870;
  v17 = deadCopy;
  v53 = v17;
  v45 = MEMORY[0x22AA4A310](v52);
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __66__BRCFSImporter__markNextChildBatchDead_persistedState_batchSize___block_invoke_81;
  v51[3] = &__block_descriptor_40_e48_v28__0__sqlite3_context__8i16___sqlite3_value_20l;
  v51[4] = longLongValue;
  v44 = MEMORY[0x22AA4A310](v51);
  clientDB = [(BRCAccountSession *)self->_session clientDB];
  v19 = MEMORY[0x22AA4A310](v46);
  v20 = MEMORY[0x22AA4A310](v44);
  v21 = MEMORY[0x22AA4A310](v45);
  v22 = MEMORY[0x22AA4A310](v45);
  itemID = [v17 itemID];
  clientZone2 = [v17 clientZone];
  dbRowID2 = [clientZone2 dbRowID];
  [clientDB execute:{@"UPDATE client_items SET item_notifs_rank = fetch_and_inc64(%p), item_state = 1, item_processing_stamp = call_block(%p, item_type, rowid, zone_rowid, item_id, item_filename), item_localsyncupstate = 4, item_file_id = NULL, item_doc_id = NULL, item_generation = NULL, item_bouncedname = NULL, item_filename = call_block(%p, item_id), item_staged_file_id = NULL, item_staged_generation = NULL, item_local_diffs = call_block(%p, item_local_diffs, zone_rowid), item_stat_ckinfo = call_block(%p, item_stat_ckinfo), version_ckinfo = call_block(%p, version_ckinfo), item_user_visible = 0  WHERE item_parent_id = %@ AND item_parent_zone_rowid = %@ AND item_state = 0 LIMIT %d", &nextNotifRank, v19, &__block_literal_global_33, v20, v21, v22, itemID, dbRowID2, v42}];

  clientDB2 = [(BRCAccountSession *)self->_session clientDB];
  changes = [clientDB2 changes];

  if (changes != [v47 count])
  {
    v37 = brc_bread_crumbs();
    v38 = brc_default_log();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
    {
      [BRCFSImporter _markNextChildBatchDead:persistedState:batchSize:];
    }
  }

  [v41 setNextNotifRank:nextNotifRank];
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __66__BRCFSImporter__markNextChildBatchDead_persistedState_batchSize___block_invoke_85;
  v48[3] = &unk_2785034F0;
  v48[4] = self;
  v28 = v40;
  v49 = v28;
  v29 = v39;
  v50 = v29;
  [v47 enumerateKeysAndObjectsUsingBlock:v48];
  if (changes == v43)
  {
    v30 = brc_bread_crumbs();
    v31 = brc_default_log();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      [BRCFSImporter _markNextChildBatchDead:persistedState:batchSize:];
    }

    fileObjectID = [v17 fileObjectID];
    currentPropagationObject = self->_currentPropagationObject;
    self->_currentPropagationObject = fileObjectID;

    self->_currentPropagationMinRowID = 0;
  }

  else
  {
    v34 = brc_bread_crumbs();
    v35 = brc_default_log();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      [BRCFSImporter _markNextChildBatchDead:persistedState:batchSize:];
    }

    v36 = self->_currentPropagationObject;
    self->_currentPropagationObject = 0;

    self->_currentPropagationMinRowID = 0;
    [v17 markChildPropagationComplete];
    [v17 saveToDB];
  }

  _Block_object_dispose(v59, 8);
}

void __66__BRCFSImporter__markNextChildBatchDead_persistedState_batchSize___block_invoke(uint64_t a1, sqlite3_context *a2, int a3, uint64_t a4)
{
  if (a3 != 5)
  {
    __66__BRCFSImporter__markNextChildBatchDead_persistedState_batchSize___block_invoke_cold_1();
  }

  v7 = sqlite3_value_int(*a4);
  v8 = [BRCItemID newFromSqliteValue:*(a4 + 24)];
  v9 = [*(a1 + 32) _itemTypeToFileObjectIDType:v7 itemID:v8];
  v10 = sqlite3_value_int64(*(a4 + 8));
  v11 = sqlite3_value_int64(*(a4 + 16));
  v12 = [objc_alloc(MEMORY[0x277CFAE48]) initWithRowID:v10 type:v9];
  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:sqlite3_value_text(*(a4 + 32))];
  v14 = [v13 br_pathExtension];
  if (v14)
  {
    [*(a1 + 40) setObject:v14 forKeyedSubscript:v12];
  }

  else
  {
    v15 = [MEMORY[0x277CBEB68] null];
    [*(a1 + 40) setObject:v15 forKeyedSubscript:v12];
  }

  if (v11 != *(a1 + 64))
  {
    v16 = [MEMORY[0x277CCABB0] numberWithLongLong:v11];
    [*(a1 + 48) setObject:v16 forKeyedSubscript:v12];
  }

  if (v7 <= 0xAu && ((1 << v7) & 0x611) != 0)
  {
    v17 = *(*(a1 + 56) + 8);
    v18 = *(v17 + 24);
    *(v17 + 24) = v18 + 1;
    sqlite3_result_int64(a2, v18);
  }

  else
  {
    sqlite3_result_null(a2);
  }
}

void __66__BRCFSImporter__markNextChildBatchDead_persistedState_batchSize___block_invoke_78(uint64_t a1, sqlite3_context *a2, int a3, sqlite3_value **a4)
{
  if (a3 != 1)
  {
    __66__BRCFSImporter__markNextChildBatchDead_persistedState_batchSize___block_invoke_78_cold_1();
  }

  v7 = [*(a1 + 32) st];
  v8 = [v7 ckInfo];
  v9 = [v8 hasDeletionChangeToken];

  if (v9)
  {
    v10 = [BRFieldCKInfo newFromSqliteValue:*a4];
    v11 = v10;
    if (v10)
    {
      if ([v10 hasDeletionChangeToken])
      {
        sqlite3_result_value(a2, *a4);
      }

      else
      {
        v12 = [*(a1 + 32) st];
        v13 = [v12 ckInfo];
        v14 = [v13 deletionChangeToken];
        [v11 setDeletionChangeToken:v14];

        v15 = [v11 data];
        sqlite3_result_blob(a2, [v15 bytes], objc_msgSend(v15, "length"), 0xFFFFFFFFFFFFFFFFLL);
      }
    }

    else
    {
      sqlite3_result_null(a2);
    }
  }

  else
  {
    sqlite3_result_value(a2, *a4);
  }
}

void __66__BRCFSImporter__markNextChildBatchDead_persistedState_batchSize___block_invoke_80(uint64_t a1, sqlite3_context *a2, int a3, void *a4)
{
  if (a3 != 1)
  {
    __66__BRCFSImporter__markNextChildBatchDead_persistedState_batchSize___block_invoke_80_cold_1();
  }

  v6 = [BRCItemID newFromSqliteValue:*a4];
  v7 = [v6 itemIDString];
  sqlite3_result_text(a2, [v7 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
}

void __66__BRCFSImporter__markNextChildBatchDead_persistedState_batchSize___block_invoke_81(uint64_t a1, sqlite3_context *a2, int a3, sqlite3_value **a4)
{
  if (a3 != 2)
  {
    __66__BRCFSImporter__markNextChildBatchDead_persistedState_batchSize___block_invoke_81_cold_1();
  }

  v7 = sqlite3_value_int64(*a4);
  if (sqlite3_value_int64(a4[1]) == *(a1 + 32))
  {
    v8 = v7;
  }

  else
  {
    v8 = v7 | 8;
  }

  sqlite3_result_int64(a2, v8 | 2);
}

void __66__BRCFSImporter__markNextChildBatchDead_persistedState_batchSize___block_invoke_85(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(*(a1 + 32) + 8) syncUpScheduler];
  [v7 createSyncUpJobForRowID:objc_msgSend(v5 inZone:{"rawID"), *(a1 + 40)}];

  v8 = [*(a1 + 48) objectForKeyedSubscript:v5];
  if (v8)
  {
    v9 = [*(*(a1 + 32) + 8) syncUpScheduler];
    [v9 createSyncUpJobForRowID:objc_msgSend(v5 inZone:{"rawID"), v8}];
  }

  if ([v5 type] == 2)
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __66__BRCFSImporter__markNextChildBatchDead_persistedState_batchSize___block_invoke_85_cold_1();
    }

    v12 = [*(*(a1 + 32) + 8) clientDB];
    v13 = [v5 itemDBRowID];
    [v12 execute:{@"INSERT OR IGNORE INTO item_recursive_properties (item_rowid, item_id, item_parent_id, item_type, zone_rowid, item_parent_zone_rowid, needs_delete_doc_count, needs_sync_up_count) SELECT rowid, item_id, item_parent_id, item_type, zone_rowid, item_parent_zone_rowid, 0, 0 FROM client_items WHERE rowid = %@", v13}];

    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      __66__BRCFSImporter__markNextChildBatchDead_persistedState_batchSize___block_invoke_85_cold_2();
    }

    v16 = [*(*(a1 + 32) + 8) clientDB];
    v17 = [v5 itemDBRowID];
    [v16 execute:{@"UPDATE item_recursive_properties SET needs_delete_doc_count =  1, needs_sync_up_count = 1 WHERE item_rowid = %@", v17}];
  }

  v18 = [v5 asString];
  v19 = [MEMORY[0x277CBEB68] null];
  if (v19 != v6)
  {
    v20 = [v18 stringByAppendingPathExtension:v6];

    v18 = v20;
  }

  v21 = [*(*(a1 + 32) + 8) stageRegistry];
  [v21 unlinkLiveStageFilename:v18];
}

- (void)_propagateDirectoryMergeOrCrossZoneMove:(id)move persistedState:(id)state batchSize:(int)size
{
  v65 = *MEMORY[0x277D85DE8];
  moveCopy = move;
  clientZone = [moveCopy clientZone];
  dbRowID = [clientZone dbRowID];
  previousItemGlobalID = [moveCopy previousItemGlobalID];
  zoneRowID = [previousItemGlobalID zoneRowID];
  v12 = [dbRowID br_isEqualToNumber:zoneRowID];

  if (v12)
  {
    clientZone2 = [moveCopy clientZone];
    previousItemGlobalID2 = [moveCopy previousItemGlobalID];
    itemID = [previousItemGlobalID2 itemID];
    v16 = [clientZone2 itemByItemID:itemID];

    isKnownByServer = [v16 isKnownByServer];
    v17 = "directory merge";
  }

  else
  {
    isKnownByServer = 0;
    v17 = "cross-zone move";
  }

  v48 = v17;
  v18 = brc_bread_crumbs();
  v19 = brc_default_log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v60 = v48;
    v61 = 2112;
    v62 = moveCopy;
    v63 = 2112;
    v64 = v18;
    _os_log_debug_impl(&dword_223E7A000, v19, OS_LOG_TYPE_DEBUG, "[DEBUG] Propagating %s of %@ to children%@", buf, 0x20u);
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  itemFetcher = [(BRCAccountSession *)self->_session itemFetcher];
  previousItemGlobalID3 = [moveCopy previousItemGlobalID];
  selfCopy = self;
  clientReadWriteDatabaseFacade = [(BRCAccountSession *)self->_session clientReadWriteDatabaseFacade];
  sizeCopy = size;
  v23 = [itemFetcher enumerateChildrenOfItemGlobalID:previousItemGlobalID3 dbFacade:clientReadWriteDatabaseFacade sortOrder:0 offset:0 limit:size];

  obj = v23;
  v24 = [v23 countByEnumeratingWithState:&v54 objects:v58 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = 0;
    v27 = *v55;
    v28 = "[BRCFSImporter _propagateDirectoryMergeOrCrossZoneMove:persistedState:batchSize:]";
    v50 = moveCopy;
    v51 = *v55;
    do
    {
      v49 = v26;
      for (i = 0; i != v25; ++i)
      {
        if (*v55 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v30 = *(*(&v54 + 1) + 8 * i);
        v31 = brc_bread_crumbs();
        v32 = brc_default_log();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v60 = v48;
          v61 = 2112;
          v62 = v30;
          v63 = 2112;
          v64 = v31;
          _os_log_debug_impl(&dword_223E7A000, v32, OS_LOG_TYPE_DEBUG, "[DEBUG] Propagating %s to item: %@%@", buf, 0x20u);
        }

        [v30 updateWithLogicalName:0 newParent:moveCopy];
        if (v12)
        {
          clientZone3 = [moveCopy clientZone];
          itemID2 = [moveCopy itemID];
          [v30 st];
          v36 = v35 = v12;
          [v36 logicalName];
          v37 = v25;
          v39 = v38 = v28;
          v40 = [clientZone3 existsByParentID:itemID2 andLogicalName:v39];

          v28 = v38;
          v25 = v37;

          v12 = v35;
          moveCopy = v50;
          v27 = v51;

          if (v40)
          {
            [v30 markBouncedToNextAvailableBounceNumber:509];
          }
        }

        [v30 saveToDB];
        if (isKnownByServer && ![v30 syncUpState])
        {
          [v30 _markNeedsSyncingUp];
          [v30 saveToDB];
        }
      }

      v26 = v49 + v25;
      v25 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
    }

    while (v25);
  }

  else
  {
    v26 = 0;
  }

  if (v26 == sizeCopy)
  {
    fileObjectID = [moveCopy fileObjectID];
    currentPropagationObject = selfCopy->_currentPropagationObject;
    selfCopy->_currentPropagationObject = fileObjectID;

    selfCopy->_currentPropagationMinRowID = 0;
  }

  else
  {
    v43 = brc_bread_crumbs();
    v44 = brc_default_log();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v60 = v48;
      v61 = 2112;
      v62 = moveCopy;
      v63 = 2112;
      v64 = v43;
      _os_log_debug_impl(&dword_223E7A000, v44, OS_LOG_TYPE_DEBUG, "[DEBUG] Finished propagating %s of %@ to children%@", buf, 0x20u);
    }

    v45 = selfCopy->_currentPropagationObject;
    selfCopy->_currentPropagationObject = 0;

    selfCopy->_currentPropagationMinRowID = 0;
    [moveCopy markDirectoryMergeOrCrossZonePropagationComplete];
    [moveCopy markChildPropagationComplete];
    [moveCopy saveToDB];
  }
}

- (void)_propagateFieldsToNextChildBatch:(id)batch persistedState:(id)state minRowID:(unint64_t)d batchSize:(int)size
{
  v153 = *MEMORY[0x277D85DE8];
  batchCopy = batch;
  stateCopy = state;
  itemID = [batchCopy itemID];
  isNonDesktopRoot = [itemID isNonDesktopRoot];

  itemID2 = [batchCopy itemID];
  isDocumentsFolder = [itemID2 isDocumentsFolder];

  sharingOptions = [batchCopy sharingOptions];
  itemScope = [batchCopy itemScope];
  appLibrary = [batchCopy appLibrary];
  isUserVisible = [batchCopy isUserVisible];
  v11 = [batchCopy st];
  logicalName = [v11 logicalName];

  localDiffs = [batchCopy localDiffs];
  if ([batchCopy isSharedToMe])
  {
    v61 = ([batchCopy sharingOptions] & 0x20) == 0;
  }

  else
  {
    v61 = 0;
  }

  v12 = objc_opt_new();
  v13 = objc_opt_new();
  v14 = objc_opt_new();
  v15 = objc_opt_new();
  v16 = objc_opt_new();
  v59 = objc_alloc_init(MEMORY[0x277CCAB58]);
  dbRowID = [appLibrary dbRowID];
  longLongValue = [dbRowID longLongValue];

  v151[0] = 0;
  v151[1] = v151;
  v151[2] = 0x2020000000;
  v151[3] = brc_current_date_nsec();
  v147 = 0;
  v148 = &v147;
  v149 = 0x2020000000;
  nextNotifRank = [stateCopy nextNotifRank];
  v143 = 0;
  v144 = &v143;
  v145 = 0x2020000000;
  v146 = 0;
  v141[0] = 0;
  v141[1] = v141;
  v141[2] = 0x2020000000;
  v142 = 0;
  v18 = brc_bread_crumbs();
  v19 = brc_default_log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    [BRCFSImporter _propagateFieldsToNextChildBatch:persistedState:minRowID:batchSize:];
  }

  v138[0] = MEMORY[0x277D85DD0];
  v138[1] = 3221225472;
  v138[2] = __84__BRCFSImporter__propagateFieldsToNextChildBatch_persistedState_minRowID_batchSize___block_invoke;
  v138[3] = &unk_278503318;
  v20 = v12;
  v139 = v20;
  v140 = v141;
  v56 = MEMORY[0x22AA4A310](v138);
  v135[0] = MEMORY[0x277D85DD0];
  v135[1] = 3221225472;
  v135[2] = __84__BRCFSImporter__propagateFieldsToNextChildBatch_persistedState_minRowID_batchSize___block_invoke_96;
  v135[3] = &unk_278503318;
  v21 = v13;
  v136 = v21;
  v137 = v141;
  v55 = MEMORY[0x22AA4A310](v135);
  v132[0] = MEMORY[0x277D85DD0];
  v132[1] = 3221225472;
  v132[2] = __84__BRCFSImporter__propagateFieldsToNextChildBatch_persistedState_minRowID_batchSize___block_invoke_97;
  v132[3] = &unk_278503318;
  v22 = v14;
  v133 = v22;
  v134 = v141;
  v54 = MEMORY[0x22AA4A310](v132);
  v129[0] = MEMORY[0x277D85DD0];
  v129[1] = 3221225472;
  v129[2] = __84__BRCFSImporter__propagateFieldsToNextChildBatch_persistedState_minRowID_batchSize___block_invoke_98;
  v129[3] = &unk_278503318;
  v23 = v16;
  v130 = v23;
  v131 = v141;
  v53 = MEMORY[0x22AA4A310](v129);
  v126[0] = MEMORY[0x277D85DD0];
  v126[1] = 3221225472;
  v126[2] = __84__BRCFSImporter__propagateFieldsToNextChildBatch_persistedState_minRowID_batchSize___block_invoke_99;
  v126[3] = &unk_278503318;
  v24 = v15;
  v127 = v24;
  v128 = v141;
  v52 = MEMORY[0x22AA4A310](v126);
  v123[0] = MEMORY[0x277D85DD0];
  v123[1] = 3221225472;
  v123[2] = __84__BRCFSImporter__propagateFieldsToNextChildBatch_persistedState_minRowID_batchSize___block_invoke_100;
  v123[3] = &unk_278503518;
  v125 = v61;
  v25 = v59;
  v124 = v25;
  v26 = MEMORY[0x22AA4A310](v123);
  v104[0] = MEMORY[0x277D85DD0];
  v104[1] = 3221225472;
  v104[2] = __84__BRCFSImporter__propagateFieldsToNextChildBatch_persistedState_minRowID_batchSize___block_invoke_101;
  v104[3] = &unk_278503540;
  v27 = (localDiffs >> 39) & 1;
  v113 = &v143;
  v116 = sharingOptions & 0x78;
  v118 = isUserVisible;
  v119 = isNonDesktopRoot;
  v120 = itemScope;
  v49 = logicalName;
  v105 = v49;
  v48 = appLibrary;
  v106 = v48;
  v121 = isDocumentsFolder;
  v122 = (localDiffs & 0x8000000000) != 0;
  v81 = v25;
  v107 = v81;
  v114 = v151;
  v117 = longLongValue;
  v115 = &v147;
  v50 = v20;
  v108 = v50;
  v51 = v21;
  v109 = v51;
  v58 = v22;
  v110 = v58;
  v60 = v24;
  v111 = v60;
  v62 = v23;
  v112 = v62;
  v28 = MEMORY[0x22AA4A310](v104);
  clientDB = [(BRCAccountSession *)self->_session clientDB];
  v90[0] = MEMORY[0x277D85DD0];
  v90[1] = 3221225472;
  v90[2] = __84__BRCFSImporter__propagateFieldsToNextChildBatch_persistedState_minRowID_batchSize___block_invoke_103;
  v90[3] = &unk_278503568;
  v64 = v56;
  v92 = v64;
  v66 = v55;
  v93 = v66;
  v68 = v54;
  v94 = v68;
  v100 = longLongValue;
  v70 = v53;
  v95 = v70;
  v72 = v52;
  v96 = v72;
  v76 = v26;
  v97 = v76;
  v103 = v27;
  v30 = batchCopy;
  v91 = v30;
  dCopy = d;
  sizeCopy = size;
  v79 = v28;
  v98 = v79;
  v99 = v141;
  [clientDB groupInTransaction:v90];

  clientDB2 = [(BRCAccountSession *)self->_session clientDB];
  changes = [clientDB2 changes];

  v33 = v148[3];
  if (v33 != [stateCopy nextNotifRank])
  {
    appLibrary2 = [v30 appLibrary];
    hasActiveQueries = [appLibrary2 hasActiveQueries];

    if (hasActiveQueries)
    {
      clientDB3 = [(BRCAccountSession *)self->_session clientDB];
      nextNotifRank2 = [stateCopy nextNotifRank];
      v74 = [clientDB3 fetch:{@"SELECT rowid, zone_rowid, item_id, item_creator_id, item_sharing_options, item_side_car_ckinfo, item_parent_zone_rowid, item_localsyncupstate, item_local_diffs, item_notifs_rank, app_library_rowid, item_min_supported_os_rowid, item_user_visible, item_stat_ckinfo, item_state, item_type, item_mode, item_birthtime, item_lastusedtime, item_favoriterank, item_parent_id, item_filename, item_hidden_ext, item_finder_tags, item_xattr_signature, item_trash_put_back_path, item_trash_put_back_parent_id, item_alias_target, item_creator, item_processing_stamp, item_bouncedname, item_scope, item_local_change_count, item_old_version_identifier, fp_creation_item_identifier, version_name, version_ckinfo, version_mtime, version_size, version_thumb_size, version_thumb_signature, version_content_signature, version_xattr_signature, version_edited_since_shared, version_device, version_conflict_loser_etags, version_quarantine_info, version_uploaded_assets, version_upload_error, version_old_zone_item_id, version_old_zone_rowid, version_local_change_count, version_old_version_identifier, item_live_conflict_loser_etags, item_file_id, item_generation FROM client_items WHERE item_notifs_rank >= %lld AND item_notifs_rank < %lld ORDER BY item_notifs_rank", nextNotifRank2, v148[3], v48, v49, v50, v51}];

      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v85[0] = MEMORY[0x277D85DD0];
      v85[1] = 3221225472;
      v85[2] = __84__BRCFSImporter__propagateFieldsToNextChildBatch_persistedState_minRowID_batchSize___block_invoke_2;
      v85[3] = &unk_2784FF910;
      v85[4] = self;
      v38 = [v74 enumerateObjects:v85];
      v39 = [v38 countByEnumeratingWithState:&v86 objects:v152 count:16];
      if (v39)
      {
        v40 = *v87;
        do
        {
          for (i = 0; i != v39; ++i)
          {
            if (*v87 != v40)
            {
              objc_enumerationMutation(v38);
            }

            v42 = [BRCNotification notificationFromItem:*(*(&v86 + 1) + 8 * i)];
            notificationManager = [(BRCAccountSession *)self->_session notificationManager];
            [notificationManager queueUpdate:v42];
          }

          v39 = [v38 countByEnumeratingWithState:&v86 objects:v152 count:16];
        }

        while (v39);
      }
    }

    [stateCopy setNextNotifRank:v148[3]];
  }

  v83[0] = MEMORY[0x277D85DD0];
  v83[1] = 3221225472;
  v83[2] = __84__BRCFSImporter__propagateFieldsToNextChildBatch_persistedState_minRowID_batchSize___block_invoke_3;
  v83[3] = &unk_2785020F0;
  v83[4] = self;
  v44 = v30;
  v84 = v44;
  [v81 enumerateIndexesUsingBlock:v83];
  if (changes == size)
  {
    fileObjectID = [v44 fileObjectID];
    currentPropagationObject = self->_currentPropagationObject;
    self->_currentPropagationObject = fileObjectID;

    self->_currentPropagationMinRowID = v144[3];
  }

  else
  {
    v47 = self->_currentPropagationObject;
    self->_currentPropagationObject = 0;

    self->_currentPropagationMinRowID = 0;
    [v44 markChildPropagationComplete];
    [v44 saveToDB];
  }

  _Block_object_dispose(v141, 8);
  _Block_object_dispose(&v143, 8);
  _Block_object_dispose(&v147, 8);
  _Block_object_dispose(v151, 8);
}

void __84__BRCFSImporter__propagateFieldsToNextChildBatch_persistedState_minRowID_batchSize___block_invoke(uint64_t a1, sqlite3_context *a2, int a3, sqlite3_value **a4)
{
  if (a3 != 1)
  {
    __84__BRCFSImporter__propagateFieldsToNextChildBatch_persistedState_minRowID_batchSize___block_invoke_cold_1();
  }

  v7 = sqlite3_value_int64(*a4);
  v8 = *(a1 + 32);
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v7];
  v10 = [v8 objectForKeyedSubscript:v9];

  if (!v10)
  {
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      __84__BRCFSImporter__propagateFieldsToNextChildBatch_persistedState_minRowID_batchSize___block_invoke_cold_2();
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  sqlite3_result_int(a2, [v10 intValue]);
}

void __84__BRCFSImporter__propagateFieldsToNextChildBatch_persistedState_minRowID_batchSize___block_invoke_96(uint64_t a1, sqlite3_context *a2, int a3, sqlite3_value **a4)
{
  if (a3 != 1)
  {
    __84__BRCFSImporter__propagateFieldsToNextChildBatch_persistedState_minRowID_batchSize___block_invoke_96_cold_1();
  }

  v7 = sqlite3_value_int64(*a4);
  v8 = *(a1 + 32);
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v7];
  v10 = [v8 objectForKeyedSubscript:v9];

  if (!v10)
  {
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      __84__BRCFSImporter__propagateFieldsToNextChildBatch_persistedState_minRowID_batchSize___block_invoke_96_cold_2();
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  sqlite3_result_int(a2, [v10 intValue]);
}

void __84__BRCFSImporter__propagateFieldsToNextChildBatch_persistedState_minRowID_batchSize___block_invoke_97(uint64_t a1, sqlite3_context *a2, int a3, sqlite3_value **a4)
{
  if (a3 != 1)
  {
    __84__BRCFSImporter__propagateFieldsToNextChildBatch_persistedState_minRowID_batchSize___block_invoke_97_cold_1();
  }

  v7 = sqlite3_value_int64(*a4);
  v8 = *(a1 + 32);
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v7];
  v10 = [v8 objectForKeyedSubscript:v9];

  if (!v10)
  {
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      __84__BRCFSImporter__propagateFieldsToNextChildBatch_persistedState_minRowID_batchSize___block_invoke_97_cold_2();
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  sqlite3_result_int(a2, [v10 intValue]);
}

void __84__BRCFSImporter__propagateFieldsToNextChildBatch_persistedState_minRowID_batchSize___block_invoke_98(uint64_t a1, sqlite3_context *a2, int a3, sqlite3_value **a4)
{
  if (a3 != 1)
  {
    __84__BRCFSImporter__propagateFieldsToNextChildBatch_persistedState_minRowID_batchSize___block_invoke_98_cold_1();
  }

  v7 = sqlite3_value_int64(*a4);
  v8 = *(a1 + 32);
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v7];
  v10 = [v8 objectForKeyedSubscript:v9];

  if (!v10)
  {
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      __84__BRCFSImporter__propagateFieldsToNextChildBatch_persistedState_minRowID_batchSize___block_invoke_98_cold_2();
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  v13 = [v10 longLongValue];
  if (v13)
  {
    sqlite3_result_int64(a2, v13);
  }

  else
  {
    sqlite3_result_null(a2);
  }
}

void __84__BRCFSImporter__propagateFieldsToNextChildBatch_persistedState_minRowID_batchSize___block_invoke_99(uint64_t a1, sqlite3_context *a2, int a3, sqlite3_value **a4)
{
  if (a3 != 1)
  {
    __84__BRCFSImporter__propagateFieldsToNextChildBatch_persistedState_minRowID_batchSize___block_invoke_99_cold_1();
  }

  v7 = sqlite3_value_int64(*a4);
  v8 = *(a1 + 32);
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v7];
  v10 = [v8 objectForKeyedSubscript:v9];

  if (!v10)
  {
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      __84__BRCFSImporter__propagateFieldsToNextChildBatch_persistedState_minRowID_batchSize___block_invoke_99_cold_2();
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  sqlite3_result_int64(a2, [v10 longLongValue]);
}

void __84__BRCFSImporter__propagateFieldsToNextChildBatch_persistedState_minRowID_batchSize___block_invoke_100(uint64_t a1, sqlite3_context *a2, int a3, sqlite3_value **a4)
{
  if (a3 != 2)
  {
    __84__BRCFSImporter__propagateFieldsToNextChildBatch_persistedState_minRowID_batchSize___block_invoke_100_cold_1();
  }

  v7 = sqlite3_value_int64(*a4);
  if (*(a1 + 40) == 1 && (v8 = v7, v9 = [MEMORY[0x277CCA9B8] newFromSqliteValue:a4[1]], v10 = objc_msgSend(v9, "br_isCloudDocsErrorCode:", 43), v9, v10))
  {
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __84__BRCFSImporter__propagateFieldsToNextChildBatch_persistedState_minRowID_batchSize___block_invoke_100_cold_2();
    }

    sqlite3_result_null(a2);
    [*(a1 + 32) addIndex:v8];
  }

  else
  {
    sqlite3_result_value(a2, a4[1]);
  }
}

void __84__BRCFSImporter__propagateFieldsToNextChildBatch_persistedState_minRowID_batchSize___block_invoke_101(uint64_t a1, sqlite3_context *a2, int a3, uint64_t a4)
{
  if (a3 != 9)
  {
    __84__BRCFSImporter__propagateFieldsToNextChildBatch_persistedState_minRowID_batchSize___block_invoke_101_cold_1();
  }

  v6 = sqlite3_value_int(*a4);
  v26 = sqlite3_value_int(*(a4 + 8));
  v28 = [MEMORY[0x277CCACA8] newFromSqliteValue:*(a4 + 16)];
  v24 = sqlite3_value_int(*(a4 + 24));
  v23 = sqlite3_value_int64(*(a4 + 32));
  v25 = sqlite3_value_int(*(a4 + 40));
  v7 = sqlite3_value_int64(*(a4 + 48));
  v8 = sqlite3_value_int(*(a4 + 56));
  *(*(*(a1 + 96) + 8) + 24) = sqlite3_value_int64(*(a4 + 64));
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(*(*(a1 + 96) + 8) + 24)];
  if ((v6 & 4) != 0)
  {
    v11 = 0;
    v10 = v6;
  }

  else
  {
    v10 = *(a1 + 120);
    v11 = (v10 & 4) == 0;
  }

  v12 = [BRCLocalItem computeUserVisibleStatusOfLiveItemWithParentVisible:*(a1 + 136) parentIsNonDesktopRoot:*(a1 + 137) parentScope:*(a1 + 138) itemFilename:v28 parentFilename:*(a1 + 32) appLibrary:*(a1 + 40)];
  v13 = [BRCLocalItem computeItemScopeFromParentIsRoot:*(a1 + 137) parentIsDocuments:*(a1 + 139) parentScope:*(a1 + 138) logicalName:v28];
  if (v13 == 3 && !v11)
  {
    [*(a1 + 48) addIndex:{objc_msgSend(v9, "longLongValue")}];
  }

  if (v8 == 8)
  {
    [*(a1 + 48) addIndex:{objc_msgSend(v9, "longLongValue")}];
  }

  if (v10 == v6 && (v26 == 0) != v12 && v13 == v24 && *(a1 + 128) == v23 && *(a1 + 140) != 1)
  {
    v14 = 0;
    v17 = 0;
  }

  else
  {
    v14 = 0;
    if (v25 <= 0xAu && ((1 << v25) & 0x611) != 0)
    {
      v15 = *(*(a1 + 104) + 8);
      v14 = *(v15 + 24);
      *(v15 + 24) = v14 + 1;
    }

    v16 = *(*(a1 + 112) + 8);
    v7 = *(v16 + 24);
    *(v16 + 24) = v7 + 1;
    v17 = 1;
  }

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
  [*(a1 + 56) setObject:v18 forKeyedSubscript:v9];

  v19 = [MEMORY[0x277CCABB0] numberWithBool:v12];
  [*(a1 + 64) setObject:v19 forKeyedSubscript:v9];

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v13];
  [*(a1 + 72) setObject:v20 forKeyedSubscript:v9];

  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v7];
  [*(a1 + 80) setObject:v21 forKeyedSubscript:v9];

  v22 = [MEMORY[0x277CCABB0] numberWithLongLong:v14];
  [*(a1 + 88) setObject:v22 forKeyedSubscript:v9];

  sqlite3_result_int(a2, v17);
}

uint64_t __84__BRCFSImporter__propagateFieldsToNextChildBatch_persistedState_minRowID_batchSize___block_invoke_103(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v23 = a2;
  v22 = MEMORY[0x22AA4A310](v3);
  v21 = MEMORY[0x22AA4A310](*(a1 + 48));
  v4 = MEMORY[0x22AA4A310](*(a1 + 56));
  v19 = *(a1 + 104);
  v5 = MEMORY[0x22AA4A310](*(a1 + 64));
  v6 = MEMORY[0x22AA4A310](*(a1 + 72));
  v7 = MEMORY[0x22AA4A310](*(a1 + 80));
  v8 = v7;
  v9 = 0x8000000000;
  if (!*(a1 + 124))
  {
    v9 = 0;
  }

  v17 = v9;
  v18 = v7;
  v10 = [*(a1 + 32) itemID];
  v11 = [*(a1 + 32) clientZone];
  v12 = [v11 dbRowID];
  v13 = *(a1 + 112);
  v14 = MEMORY[0x22AA4A310](*(a1 + 88));
  v20 = [v23 execute:{@"UPDATE client_items SET item_sharing_options = call_block(%p, rowid), item_user_visible = call_block(%p, rowid), item_scope = call_block(%p, rowid), app_library_rowid = %llu, item_processing_stamp = call_block(%p, rowid), item_notifs_rank = call_block(%p, rowid), version_upload_error = call_block(%p, rowid, version_upload_error), item_local_diffs = (item_local_diffs | %lld) WHERE item_parent_id = %@ AND item_parent_zone_rowid = %@ AND item_state = 0 AND rowid > %lld  AND call_block(%p, item_sharing_options, item_user_visible, item_filename, item_scope, app_library_rowid, item_type, item_notifs_rank, item_localsyncupstate, rowid) ORDER BY rowid LIMIT %d", v22, v21, v4, v19, v5, v6, v8, v17, v10, v12, v13, v14, *(a1 + 120)}];

  v15 = v20;
  if (v20)
  {
    v15 = *(*(*(a1 + 96) + 8) + 24) ^ 1;
  }

  return v15 & 1;
}

id __84__BRCFSImporter__propagateFieldsToNextChildBatch_persistedState_minRowID_batchSize___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = a2;
  v6 = [v4 clientDB];
  v7 = [v4 newLocalItemFromPQLResultSet:v5 db:v6 error:a3];

  return v7;
}

void __84__BRCFSImporter__propagateFieldsToNextChildBatch_persistedState_minRowID_batchSize___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = [*(*(a1 + 32) + 8) itemFetcher];
  v6 = [v5 itemByRowID:a2];

  v7 = [v6 st];
  v8 = [v7 logicalName];
  [v6 updateWithLogicalName:v8 newParent:*(a1 + 40)];

  if ([v6 isInTrashScope] && objc_msgSend(v6, "isSharedToMeTopLevelItem"))
  {
    [v6 markRemovedFromFilesystemRecursively:1];
  }

  [v6 markNeedsUploadOrSyncingUp];
  [v6 saveToDB];

  objc_autoreleasePoolPop(v4);
}

- (void)_processIngestBatch:(id)batch minRowID:(unint64_t)d
{
  batchCopy = batch;
  v7 = [BRCUserDefaults defaultsForMangledID:0];
  readerScanBatchSize = [v7 readerScanBatchSize];

  v9 = [(BRCPersistedState *)BRCClientRanksPersistedState loadFromClientStateInSession:self->_session];
  clientDB = [(BRCAccountSession *)self->_session clientDB];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __46__BRCFSImporter__processIngestBatch_minRowID___block_invoke;
  v13[3] = &unk_278503590;
  v14 = batchCopy;
  selfCopy = self;
  v18 = readerScanBatchSize;
  v16 = v9;
  dCopy = d;
  v11 = v9;
  v12 = batchCopy;
  [clientDB groupInBatch:v13];
}

uint64_t __46__BRCFSImporter__processIngestBatch_minRowID___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isDead])
  {
    v3 = *(a1 + 32);
    v2 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 64);

    return [v2 _markNextChildBatchDead:v3 persistedState:v4 batchSize:v5];
  }

  else
  {
    v7 = [*(a1 + 32) previousItemGlobalID];

    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10 = *(a1 + 48);
    if (v7)
    {
      v11 = *(a1 + 64);

      return [v8 _propagateDirectoryMergeOrCrossZoneMove:v9 persistedState:v10 batchSize:v11];
    }

    else
    {
      v12 = *(a1 + 56);
      v13 = *(a1 + 64);

      return [v8 _propagateFieldsToNextChildBatch:v9 persistedState:v10 minRowID:v12 batchSize:v13];
    }
  }
}

- (void)resume
{
  [(BRCFairSource *)self->_childPropagationSource resume];
  childPropagationSource = self->_childPropagationSource;

  [(BRCFairSource *)childPropagationSource signal];
}

- (void)_childPropagationSchedule
{
  if (self->_currentPropagationObject && (-[BRCAccountSession itemFetcher](self->_session, "itemFetcher"), v3 = objc_claimAutoreleasedReturnValue(), [v3 itemByFileObjectID:self->_currentPropagationObject], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "asDirectory"), v34 = objc_claimAutoreleasedReturnValue(), v4, v3, v34))
  {
    [(BRCFSImporter *)self _processIngestBatch:v34 minRowID:self->_currentPropagationMinRowID];
    [(BRCFairSource *)self->_childPropagationSource signal];
  }

  else
  {
    v5 = [BRCUserDefaults defaultsForMangledID:0];
    maxSyncPathDepth = [v5 maxSyncPathDepth];

    clientDB = [(BRCAccountSession *)self->_session clientDB];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __42__BRCFSImporter__childPropagationSchedule__block_invoke;
    v36[3] = &unk_2784FF910;
    v36[4] = self;
    v8 = [clientDB fetchObject:v36 sql:{@"SELECT rowid, zone_rowid, item_id, item_creator_id, item_sharing_options, item_side_car_ckinfo, item_parent_zone_rowid, item_localsyncupstate, item_local_diffs, item_notifs_rank, app_library_rowid, item_min_supported_os_rowid, item_user_visible, item_stat_ckinfo, item_state, item_type, item_mode, item_birthtime, item_lastusedtime, item_favoriterank, item_parent_id, item_filename, item_hidden_ext, item_finder_tags, item_xattr_signature, item_trash_put_back_path, item_trash_put_back_parent_id, item_alias_target, item_creator, item_processing_stamp, item_bouncedname, item_scope, item_local_change_count, item_old_version_identifier, fp_creation_item_identifier, version_name, version_ckinfo, version_mtime, version_size, version_thumb_size, version_thumb_signature, version_content_signature, version_xattr_signature, version_edited_since_shared, version_device, version_conflict_loser_etags, version_quarantine_info, version_uploaded_assets, version_upload_error, version_old_zone_item_id, version_old_zone_rowid, version_local_change_count, version_old_version_identifier, item_live_conflict_loser_etags, item_file_id, item_generation FROM client_items WHERE item_processing_stamp IS NOT NULL ORDER BY item_processing_stamp ASC LIMIT 1"}];
    asDirectory = [v8 asDirectory];

    if (asDirectory)
    {
      clientDB2 = [(BRCAccountSession *)self->_session clientDB];
      v11 = [asDirectory st];
      parentID = [v11 parentID];
      parentClientZone = [asDirectory parentClientZone];
      dbRowID = [parentClientZone dbRowID];
      v15 = [clientDB2 fetch:{@"WITH RECURSIVE item_parents  (rowid, item_parent_id, item_parent_zone_rowid, item_state, item_processing_stamp) AS( SELECT rowid, item_parent_id, item_parent_zone_rowid, item_state, item_processing_stamp FROM client_items      WHERE item_id = %@ AND zone_rowid = %@  UNION ALL     SELECT li.rowid, li.item_parent_id, li.item_parent_zone_rowid, li.item_state, li.item_processing_stamp FROM client_items AS li  INNER JOIN item_parents AS p WHERE p.item_parent_id = li.item_id AND p.item_parent_zone_rowid = li.zone_rowid      LIMIT %u) SELECT rowid, item_processing_stamp FROM item_parents WHERE item_processing_stamp IS NOT NULL", parentID, dbRowID, maxSyncPathDepth}];

      v16 = objc_opt_new();
      v17 = objc_opt_new();
      if ([v15 next])
      {
        do
        {
          v18 = objc_autoreleasePoolPush();
          v19 = [v15 numberAtIndex:0];
          v20 = [v15 numberAtIndex:1];
          [v16 insertObject:v19 atIndex:0];
          [v17 insertObject:v20 atIndex:0];

          objc_autoreleasePoolPop(v18);
        }

        while (([v15 next] & 1) != 0);
      }

      v35 = asDirectory;
      if ([v17 count])
      {
        v21 = [v17 objectAtIndexedSubscript:0];
        unsignedLongLongValue = [v21 unsignedLongLongValue];
      }

      else
      {
        unsignedLongLongValue = 0;
      }

      if ([v16 count] >= 2)
      {
        v23 = 1;
        do
        {
          v24 = [v17 objectAtIndexedSubscript:v23];
          unsignedLongLongValue2 = [v24 unsignedLongLongValue];

          if (unsignedLongLongValue2 >= unsignedLongLongValue)
          {
            unsignedLongLongValue = unsignedLongLongValue2 + 1;
          }

          else
          {
            if (unsignedLongLongValue < 0x7FFFFFFFFFFFFFFFLL)
            {
              ++unsignedLongLongValue;
            }

            else
            {
              unsignedLongLongValue = 0x7FFFFFFFFFFFFFFFLL;
            }

            clientDB3 = [(BRCAccountSession *)self->_session clientDB];
            v27 = [v16 objectAtIndexedSubscript:v23];
            [clientDB3 execute:{@"UPDATE client_items SET item_processing_stamp = %lld WHERE rowid = %llu", unsignedLongLongValue, objc_msgSend(v27, "unsignedLongLongValue")}];
          }

          ++v23;
        }

        while (v23 < [v16 count]);
      }

      if ([v16 count])
      {
        itemFetcher = [(BRCAccountSession *)self->_session itemFetcher];
        v29 = [v16 objectAtIndexedSubscript:0];
        v30 = [itemFetcher itemByRowID:{objc_msgSend(v29, "unsignedLongLongValue")}];
        asDirectory2 = [v30 asDirectory];
      }

      else
      {
        asDirectory2 = v35;
      }

      fileObjectID = [asDirectory2 fileObjectID];
      currentPropagationObject = self->_currentPropagationObject;
      self->_currentPropagationObject = fileObjectID;

      [(BRCFSImporter *)self _processIngestBatch:asDirectory2 minRowID:0];
      [(BRCFairSource *)self->_childPropagationSource signal];
    }

    else
    {
      [(BRCFSImporter *)self _cleanItemBatchAfterMigrationToFPFSIfNecessary];
    }
  }
}

id __42__BRCFSImporter__childPropagationSchedule__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = a2;
  v6 = [v4 clientDB];
  v7 = [v4 newLocalItemFromPQLResultSet:v5 db:v6 error:a3];

  return v7;
}

- (BOOL)_doesAppLibraryMatchWithItemURL:(id)l appLibraryRowID:(id)d
{
  lCopy = l;
  dCopy = d;
  if (dCopy)
  {
    v8 = [(BRCAccountSession *)self->_session appLibraryByRowID:dCopy];
    mangledID = [v8 mangledID];

    v10 = objc_alloc(MEMORY[0x277CFAE60]);
    br_containerID = [lCopy br_containerID];
    v12 = [v10 initWithAppLibraryName:br_containerID];

    v13 = 0;
    if (mangledID && v12)
    {
      v13 = [v12 isEqualToMangledID:mangledID];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_cleanItemBatchAfterMigrationToFPFSIfNecessary
{
  if ([(BRCAccountSession *)self->_session fpfsMigrationState]== 2)
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [BRCFSImporter _cleanItemBatchAfterMigrationToFPFSIfNecessary];
    }

    v5 = [BRCUserDefaults defaultsForMangledID:0];
    fpfsMigrationCleanupBatchSize = [v5 fpfsMigrationCleanupBatchSize];
    fpfsMigrationCleanupLastRowID = [(BRCAccountSession *)self->_session fpfsMigrationCleanupLastRowID];
    v68[0] = 0;
    v68[1] = v68;
    v68[2] = 0x2020000000;
    clientState = [(BRCAccountSession *)self->_session clientState];
    v9 = [clientState objectForKeyedSubscript:@"kBRCFPFSMigrationLostItemCountKey"];
    unsignedLongLongValue = [v9 unsignedLongLongValue];

    v68[3] = unsignedLongLongValue;
    v67[0] = 0;
    v67[1] = v67;
    v67[2] = 0x2020000000;
    clientState2 = [(BRCAccountSession *)self->_session clientState];
    v12 = [clientState2 objectForKeyedSubscript:@"kBRCFPFSMigrationChildItemsLostItemCountKey"];
    unsignedLongLongValue2 = [v12 unsignedLongLongValue];

    v67[3] = unsignedLongLongValue2;
    v66[0] = 0;
    v66[1] = v66;
    v66[2] = 0x2020000000;
    clientState3 = [(BRCAccountSession *)self->_session clientState];
    v15 = [clientState3 objectForKeyedSubscript:@"kBRCFPFSMigrationBusyDateLostItemCountKey"];
    unsignedLongLongValue3 = [v15 unsignedLongLongValue];
    v39 = fpfsMigrationCleanupLastRowID;

    v66[3] = unsignedLongLongValue3;
    v65[0] = 0;
    v65[1] = v65;
    v65[2] = 0x2020000000;
    clientState4 = [(BRCAccountSession *)self->_session clientState];
    v18 = [clientState4 objectForKeyedSubscript:@"kBRCFPFSMigrationIgnoredFromSyncLostItemCountKey"];
    unsignedLongLongValue4 = [v18 unsignedLongLongValue];

    v65[3] = unsignedLongLongValue4;
    v20 = objc_opt_new();
    itemsNotMigratedToInvestigateLimit = [v5 itemsNotMigratedToInvestigateLimit];
    itemsNotMigratedTelemetryLimit = [v5 itemsNotMigratedTelemetryLimit];
    v64[0] = 0;
    v64[1] = v64;
    v64[2] = 0x2020000000;
    v64[3] = [(BRCAccountSession *)self->_session fpfsMigrationInvestigatedItemsCount];
    v58 = 0;
    v59 = &v58;
    v60 = 0x3032000000;
    v61 = __Block_byref_object_copy__25;
    v62 = __Block_byref_object_dispose__25;
    fpfsMigrationItemsNotMigratedDictionary = [(BRCAccountSession *)self->_session fpfsMigrationItemsNotMigratedDictionary];
    if (!v59[5])
    {
      v23 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:itemsNotMigratedTelemetryLimit];
      v24 = v59[5];
      v59[5] = v23;
    }

    v25 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:fpfsMigrationCleanupBatchSize];
    v26 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:fpfsMigrationCleanupBatchSize];
    v37 = itemsNotMigratedToInvestigateLimit;
    v38 = itemsNotMigratedTelemetryLimit;
    v27 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:fpfsMigrationCleanupBatchSize];
    v28 = self->_session;
    clientDB = [(BRCAccountSession *)self->_session clientDB];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __63__BRCFSImporter__cleanItemBatchAfterMigrationToFPFSIfNecessary__block_invoke;
    v40[3] = &unk_278503630;
    v54 = v39;
    v30 = v5;
    v41 = v30;
    v31 = v25;
    v42 = v31;
    v32 = v27;
    v43 = v32;
    v33 = v26;
    v44 = v33;
    v48 = v65;
    v49 = v66;
    v34 = v20;
    v45 = v34;
    v35 = v28;
    v50 = v67;
    v51 = v64;
    v55 = fpfsMigrationCleanupBatchSize;
    v56 = v37;
    v57 = v38;
    v46 = v35;
    selfCopy = self;
    v52 = &v58;
    v53 = v68;
    [clientDB groupInTransaction:v40];

    [(BRCFairSource *)self->_childPropagationSource signal];
    _Block_object_dispose(&v58, 8);

    _Block_object_dispose(v64, 8);
    _Block_object_dispose(v65, 8);
    _Block_object_dispose(v66, 8);
    _Block_object_dispose(v67, 8);
    _Block_object_dispose(v68, 8);
  }

  else
  {
    v30 = brc_bread_crumbs();
    v36 = brc_default_log();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      [BRCFSImporter _cleanItemBatchAfterMigrationToFPFSIfNecessary];
    }
  }
}

uint64_t __63__BRCFSImporter__cleanItemBatchAfterMigrationToFPFSIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v79 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (!*(a1 + 136))
  {
    dropFPFSMigrationTablesWithDB(v3);
    if ([*(a1 + 32) filterDecendantsOfNotMigratedFolders])
    {
      fillFPFSMigrationNonMigratedFoldersTable(v4);
    }
  }

  v73[0] = MEMORY[0x277D85DD0];
  v73[1] = 3221225472;
  v73[2] = __63__BRCFSImporter__cleanItemBatchAfterMigrationToFPFSIfNecessary__block_invoke_2;
  v73[3] = &unk_2784FF870;
  v74 = *(a1 + 40);
  v5 = MEMORY[0x22AA4A310](v73);
  v69 = 0;
  v70 = &v69;
  v71 = 0x2020000000;
  v72 = 0;
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = __63__BRCFSImporter__cleanItemBatchAfterMigrationToFPFSIfNecessary__block_invoke_136;
  v61[3] = &unk_2785035B8;
  v67 = &v69;
  v62 = *(a1 + 48);
  v63 = *(a1 + 32);
  v64 = *(a1 + 56);
  v68 = *(a1 + 88);
  v65 = *(a1 + 64);
  v66 = *(a1 + 72);
  v43 = MEMORY[0x22AA4A310](v61);
  v6 = MEMORY[0x22AA4A310](v5);
  v7 = MEMORY[0x22AA4A310](v5);
  v8 = MEMORY[0x22AA4A310](v43);
  [v4 execute:{@"UPDATE client_items SET item_file_id = call_block(%p, item_file_id, item_type, item_localsyncupstate, rowid, item_generation, item_local_diffs, item_doc_id, app_library_rowid), item_generation = call_block(%p, item_generation, item_type, item_localsyncupstate), item_localsyncupstate = call_block(%p, item_localsyncupstate, rowid, item_stat_ckinfo IS NULL, item_type, item_birthtime, item_id, item_filename, version_content_signature, item_parent_zone_rowid, item_parent_id), item_doc_id = NULL WHERE rowid > %llu ORDER BY rowid ASC LIMIT %llu", v6, v7, v8, *(a1 + 136), *(a1 + 144)}];

  v9 = [v4 lastError];

  if (v9)
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, 0x90u))
    {
      v12 = [v4 lastError];
      __63__BRCFSImporter__cleanItemBatchAfterMigrationToFPFSIfNecessary__block_invoke_cold_1(v12, v10, buf, v11);
    }

LABEL_8:
    v13 = 0;
  }

  else
  {
    v42 = [v4 changes];
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v10 = *(a1 + 64);
    v15 = [v10 countByEnumeratingWithState:&v57 objects:v77 count:16];
    if (v15)
    {
      v16 = *v58;
      while (2)
      {
        v17 = 0;
        do
        {
          if (*v58 != v16)
          {
            objc_enumerationMutation(v10);
          }

          v18 = *(*(&v57 + 1) + 8 * v17);
          v19 = [*(a1 + 72) itemFetcher];
          v20 = [v19 itemByRowID:{objc_msgSend(v18, "unsignedLongLongValue")}];

          if (!v20)
          {
            v40 = brc_bread_crumbs();
            v41 = brc_default_log();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
            {
              __63__BRCFSImporter__cleanItemBatchAfterMigrationToFPFSIfNecessary__block_invoke_cold_2();
            }

            goto LABEL_8;
          }

          [v20 markNeedsUploadOrSyncingUp];
          v21 = [v20 saveToDB];

          if (!v21)
          {
            goto LABEL_8;
          }

          ++v17;
        }

        while (v15 != v17);
        v15 = [v10 countByEnumeratingWithState:&v57 objects:v77 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    if ([*(a1 + 32) filterDecendantsOfNotMigratedFolders] && isFPFSMigrationNonMigratedFoldersExists(v4, v22))
    {
      v23 = *(a1 + 56);
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = __63__BRCFSImporter__cleanItemBatchAfterMigrationToFPFSIfNecessary__block_invoke_143;
      v53[3] = &unk_2785035E0;
      v54 = v4;
      v24 = *(a1 + 48);
      v25 = *(a1 + 104);
      v55 = v24;
      v56 = v25;
      [v23 enumerateKeysAndObjectsUsingBlock:v53];
    }

    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __63__BRCFSImporter__cleanItemBatchAfterMigrationToFPFSIfNecessary__block_invoke_148;
    v44[3] = &unk_278503608;
    v26 = *(a1 + 48);
    v27 = *(a1 + 40);
    v28 = *(a1 + 112);
    v45 = v27;
    v48 = v28;
    v51 = *(a1 + 152);
    v29 = *(a1 + 72);
    v30 = vextq_s8(*(a1 + 88), *(a1 + 88), 8uLL);
    v52 = *(a1 + 160);
    v31 = *(a1 + 80);
    v46 = v29;
    v47 = v31;
    v32 = *(a1 + 120);
    v49 = v30;
    v50 = v32;
    [v26 enumerateKeysAndObjectsUsingBlock:v44];
    v33 = brc_bread_crumbs();
    v34 = brc_default_log();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      __63__BRCFSImporter__cleanItemBatchAfterMigrationToFPFSIfNecessary__block_invoke_cold_3();
    }

    [*(a1 + 72) updateFPFSMigrationCleanupLastRowID:v70[3] lostItemCount:*(*(*(a1 + 128) + 8) + 24) childLostItemCount:*(*(*(a1 + 104) + 8) + 24) busyDateLostItemCount:*(*(*(a1 + 96) + 8) + 24) ignoredFromSyncLostItemCount:*(*(*(a1 + 88) + 8) + 24) investigatedItemsCount:*(*(*(a1 + 112) + 8) + 24) notMigratedItems:*(*(*(a1 + 120) + 8) + 40)];
    if (v42 < *(a1 + 144))
    {
      v35 = MEMORY[0x277CCABB0];
      v36 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(*(*(a1 + 128) + 8) + 24)];
      v37 = [v35 numberWithLongLong:{objc_msgSend(v36, "br_roundedLongLongValue")}];

      v75[0] = @"ProcessingComplete";
      v75[1] = @"LostItemCount";
      v76[0] = MEMORY[0x277CBEC38];
      v76[1] = v37;
      v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:v75 count:2];
      AnalyticsSendEvent();

      v39 = [*(a1 + 72) applyScheduler];
      [v39 rescheduleAllItemsPendingMigration];

      [*(a1 + 72) sendNonMigratedItemTelemetryWithfileIDs:*(*(*(a1 + 120) + 8) + 40)];
      [*(a1 + 72) markMigrationToFPFSCleanupComplete];
      dropFPFSMigrationNonMigratedFoldersTable(v4);
    }

    v13 = 1;
    v10 = v45;
  }

  _Block_object_dispose(&v69, 8);
  return v13;
}

void __63__BRCFSImporter__cleanItemBatchAfterMigrationToFPFSIfNecessary__block_invoke_2(uint64_t a1, sqlite3_context *a2, int a3, sqlite3_value **a4)
{
  v30[5] = *MEMORY[0x277D85DE8];
  if (a3 != 3 && a3 != 8)
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      __63__BRCFSImporter__cleanItemBatchAfterMigrationToFPFSIfNecessary__block_invoke_2_cold_1();
    }
  }

  v10 = sqlite3_value_int(a4[1]);
  v11 = sqlite3_value_int(a4[2]);
  if (a3 == 8)
  {
    v29 = sqlite3_value_int64(a4[3]);
    v12 = sqlite3_value_int64(*a4);
    v13 = sqlite3_value_int64(a4[4]);
    v14 = sqlite3_value_int64(a4[5]);
    v15 = sqlite3_value_int64(a4[6]);
    v16 = sqlite3_value_int64(a4[7]);
    if (v12)
    {
      v17 = v16;
      v27 = *(a1 + 32);
      v28 = a2;
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v12];
      v30[0] = v18;
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v13];
      v30[1] = v19;
      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v14];
      v30[2] = v20;
      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v15];
      v30[3] = v21;
      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v17];
      v30[4] = v22;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:5];
      v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v29];
      [v27 setObject:v23 forKey:v24];

      a2 = v28;
    }
  }

  v25 = (v10 - 1) < 2 || v10 == 8;
  if (v25 && (v11 <= 6 ? (v26 = ((1 << v11) & 0x63) == 0) : (v26 = 1), v26))
  {
    sqlite3_result_value(a2, *a4);
  }

  else
  {
    sqlite3_result_null(a2);
  }
}

void __63__BRCFSImporter__cleanItemBatchAfterMigrationToFPFSIfNecessary__block_invoke_136(uint64_t a1, sqlite3_context *a2, int a3, uint64_t a4)
{
  if (a3 != 10)
  {
    __63__BRCFSImporter__cleanItemBatchAfterMigrationToFPFSIfNecessary__block_invoke_136_cold_1();
  }

  v7 = sqlite3_value_int(*a4);
  v8 = sqlite3_value_int64(*(a4 + 8));
  v9 = v8;
  v10 = *(*(a1 + 72) + 8);
  if (v8 > *(v10 + 24))
  {
    *(v10 + 24) = v8;
  }

  v11 = sqlite3_value_int(*(a4 + 24));
  v12 = sqlite3_value_int64(*(a4 + 32));
  if (v7 == 6)
  {
    v23 = brc_bread_crumbs();
    v24 = brc_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      __63__BRCFSImporter__cleanItemBatchAfterMigrationToFPFSIfNecessary__block_invoke_136_cold_2();
    }

    [*(a1 + 64) updateFPFSMigrationNonMigratedTypes:v11];
    v25 = a2;
    v26 = 1;
    goto LABEL_16;
  }

  if (v7 != 5)
  {
    v25 = a2;
    v26 = v7;
LABEL_16:
    sqlite3_result_int(v25, v26);
    return;
  }

  v13 = v12;
  v14 = [BRCItemID isDocumentsItemIDWithSQLiteValue:*(a4 + 40)];
  v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:sqlite3_value_text(*(a4 + 48))];
  v16 = objc_alloc(MEMORY[0x277CBEA90]);
  v17 = sqlite3_value_blob(*(a4 + 56));
  v18 = [v16 initWithBytesNoCopy:v17 length:sqlite3_value_bytes(*(a4 + 56)) freeWhenDone:0];
  v19 = v18;
  v20 = 0;
  if (v11 == 1)
  {
    v20 = [v18 brc_signatureIsPackage] ^ 1;
  }

  busy = BRCIsBusyDate(v13);
  if (((busy | v14) & 1) == 0)
  {
    v27 = [BRCImportUtil isFileNameIgnoredForSync:v15 isRegFile:v20];
    if (![v15 length] || !v27)
    {
      v41 = *(a1 + 32);
      v30 = MEMORY[0x277CFAE78];
      v31 = [MEMORY[0x277CCABB0] numberWithBool:v20];
      v32 = [MEMORY[0x277CCABB0] numberWithChar:v11];
      v33 = [v30 pairWithLeft:v31 andRight:v32];
      v34 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v9];
      [v41 setObject:v33 forKey:v34];

      if ([*(a1 + 40) filterDecendantsOfNotMigratedFolders])
      {
        v35 = sqlite3_value_int64(*(a4 + 64));
        v36 = [BRCItemID newFromSqliteValue:*(a4 + 72)];
        v42 = *(a1 + 48);
        v37 = [BRCItemGlobalID alloc];
        v38 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v35];
        v39 = [(BRCItemGlobalID *)v37 initWithZoneRowID:v38 itemID:v36];
        v40 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v9];
        [v42 setObject:v39 forKey:v40];
      }

      goto LABEL_21;
    }

    v22 = *(a1 + 80);
    goto LABEL_20;
  }

  if (busy)
  {
    v22 = *(a1 + 88);
LABEL_20:
    ++*(*(v22 + 8) + 24);
  }

LABEL_21:
  sqlite3_result_int(a2, 0);
  if (sqlite3_value_int(*(a4 + 16)))
  {
    v28 = *(a1 + 56);
    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v9];
    [v28 addObject:v29];
  }
}

void __63__BRCFSImporter__cleanItemBatchAfterMigrationToFPFSIfNecessary__block_invoke_143(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [v6 itemID];
  v9 = [v6 zoneRowID];
  v10 = [v7 numberWithSQL:{@"SELECT 1 from fpfs_folders_not_migrated WHERE item_id = %@ and zone_rowid = %@", v8, v9}];
  v11 = [v10 BOOLValue];

  if (v11)
  {
    [*(a1 + 40) removeObjectForKey:v5];
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v15 = v5;
      v16 = 2112;
      v17 = v6;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEFAULT, "[NOTICE] item with rowID %@ was not migrated but it's parent %@ was also not migrated%@", buf, 0x20u);
    }

    ++*(*(*(a1 + 48) + 8) + 24);
  }
}

void __63__BRCFSImporter__cleanItemBatchAfterMigrationToFPFSIfNecessary__block_invoke_148(uint64_t a1, void *a2, void *a3)
{
  v39[5] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = [v6 objectForKey:v5];
  v9 = [v8 objectAtIndexedSubscript:0];

  v10 = [*(a1 + 32) objectForKey:v5];
  v11 = [v10 objectAtIndexedSubscript:3];

  v12 = [v7 left];
  v13 = [v12 BOOLValue];

  v14 = [v7 right];

  v15 = [v14 intValue];
  v16 = *(*(a1 + 56) + 8);
  v17 = *(v16 + 24);
  if (v17 > *(a1 + 96) || v9 == 0)
  {
    v19 = brc_bread_crumbs();
    v20 = brc_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      __63__BRCFSImporter__cleanItemBatchAfterMigrationToFPFSIfNecessary__block_invoke_148_cold_1();
    }

    v26 = 0;
    goto LABEL_9;
  }

  *(v16 + 24) = v17 + 1;
  v38 = 0;
  v22 = MEMORY[0x277CCABB0];
  v23 = [*(a1 + 40) volume];
  v24 = [v22 numberWithInt:{objc_msgSend(v23, "deviceID")}];
  v37 = 0;
  v25 = [BRCImportUtil shouldFileIDBeIgnoredAsNonMigrated:v9 docID:v11 deviceID:v24 isRegFile:v13 rowid:v5 outItemURL:&v37 isBusyDate:&v38 + 1 isIgnoredFromSync:&v38];
  v26 = v37;

  if (!v25)
  {
    v27 = *(*(*(a1 + 80) + 8) + 40);
    if (v27 && [v27 count] < *(a1 + 104))
    {
      v35 = [*(a1 + 32) objectForKey:v5];
      v36 = [v35 objectAtIndexedSubscript:1];
      v34 = [v35 objectAtIndexedSubscript:2];
      v28 = *(a1 + 48);
      v29 = [v35 objectAtIndexedSubscript:4];
      v30 = [v28 _doesAppLibraryMatchWithItemURL:v26 appLibraryRowID:v29];

      v33 = *(*(*(a1 + 80) + 8) + 40);
      v39[0] = v5;
      v39[1] = v36;
      v39[2] = v34;
      v39[3] = v11;
      v31 = [MEMORY[0x277CCABB0] numberWithBool:v30];
      v39[4] = v31;
      v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:5];
      [v33 setObject:v32 forKey:v9];
    }

LABEL_9:
    ++*(*(*(a1 + 88) + 8) + 24);
    v21 = *(a1 + 40);
    if ((v15 != 1) | v13 & 1)
    {
      [v21 updateFPFSMigrationNonMigratedTypes:v15];
    }

    else
    {
      [v21 updateFPFSMigrationNonMigratedTypesWithPackage];
    }

    goto LABEL_17;
  }

  if (HIBYTE(v38) == 1)
  {
    ++*(*(*(a1 + 64) + 8) + 24);
  }

  if (v38 == 1)
  {
    ++*(*(*(a1 + 72) + 8) + 24);
  }

LABEL_17:
}

- (void)capabilityToMoveItem:toNewParentItem:error:.cold.2()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: !parent.isOwnedByMe%@", v5, v6, v7, v8);
  }
}

- (void)capabilityToMoveItem:toNewParentItem:error:.cold.3()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: parent.isOwnedByMe%@", v5, v6, v7, v8);
  }
}

- (void)capabilityToMoveItem:toNewParentItem:error:.cold.4()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: parent.isOwnedByMe%@", v5, v6, v7, v8);
  }
}

- (void)_parseImportBookmark:templateItem:fileURL:ignoreImportBookmark:.cold.2()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_locateMatchingItemForTemplateItem:parentItem:options:fileURL:fields:shouldReject:additionalAttrs:importBookmark:ignoreImportBookmark:stillPendingFields:error:.cold.3()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] forcing child of read-only share to match what exists in our db %@%@");
}

- (void)_locateMatchingItemForTemplateItem:parentItem:options:fileURL:fields:shouldReject:additionalAttrs:importBookmark:ignoreImportBookmark:stillPendingFields:error:.cold.4()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_6_1(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: Child of readonly share path-match should always already exist - %@%@");
}

void __160__BRCFSImporter__createAndInsertNewItemWithImportObject_parentItem_fields_templateItem_fileURL_options_additionalAttrs_importBookmark_stillPendingFields_error___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Found existing documents folder %@%@");
}

void __160__BRCFSImporter__createAndInsertNewItemWithImportObject_parentItem_fields_templateItem_fileURL_options_additionalAttrs_importBookmark_stillPendingFields_error___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Au);
}

- (void)importNewItemAtURL:parentItem:templateItem:fields:options:additionalItemAttributes:importBookmark:stillPendingFields:error:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)getOrCreateTrashItemInAppLibrary:error:.cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: appLibrary.db.isBatchSuspended%@", v5, v6, v7, v8);
  }
}

- (void)getOrCreateTrashItemInAppLibrary:error:.cold.2()
{
  OUTLINED_FUNCTION_18();
  v6 = *MEMORY[0x277D85DE8];
  v3 = [v2 mangledID];
  OUTLINED_FUNCTION_1_0();
  v5 = v1;
  _os_log_error_impl(&dword_223E7A000, v0, 0x90u, "[ERROR] Failed to create documents folder for app library %@%@", v4, 0x16u);
}

- (void)trashItem:parentItemInTrash:error:.cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: _session.clientDB.isInTransaction%@", v5, v6, v7, v8);
  }
}

- (void)trashItem:parentItemInTrash:error:.cold.2()
{
  OUTLINED_FUNCTION_18();
  v1 = [v0 appLibrary];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)trashItem:parentItemInTrash:error:.cold.3()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: parentItemInTrash.itemScope == BRC_ITEM_SCOPE_TRASH%@", v5, v6, v7, v8);
  }
}

- (void)_processParentAndFilenameIfNecessaryWithLocalItem:changedFields:templateItem:error:.cold.2()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: li.isInTrashScope%@", v5, v6, v7, v8);
  }
}

- (void)_processParentAndFilenameIfNecessaryWithLocalItem:changedFields:templateItem:error:.cold.3()
{
  OUTLINED_FUNCTION_18();
  v1 = [v0 parentItemIdentifier];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_processParentAndFilenameIfNecessaryWithLocalItem:changedFields:templateItem:error:.cold.4()
{
  OUTLINED_FUNCTION_18();
  v1 = [v0 parentItemIdentifier];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)changeItem:baseVersion:changedFields:newValues:contents:additionalAttrs:clearCKInfoOnSyncUp:stillPendingFields:error:.cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: _session.clientDB.isInTransaction%@", v5, v6, v7, v8);
  }
}

- (void)changeItem:baseVersion:changedFields:newValues:contents:additionalAttrs:clearCKInfoOnSyncUp:stillPendingFields:error:.cold.3()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: li.isDocument%@", v5, v6, v7, v8);
  }
}

- (void)changeItem:baseVersion:changedFields:newValues:contents:additionalAttrs:clearCKInfoOnSyncUp:stillPendingFields:error:.cold.4()
{
  OUTLINED_FUNCTION_18();
  v1 = [v0 itemID];
  v2 = [v1 debugItemIDString];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __66__BRCFSImporter__markNextChildBatchDead_persistedState_batchSize___block_invoke_cold_1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: argc == 5%@", v5, v6, v7, v8);
  }
}

void __66__BRCFSImporter__markNextChildBatchDead_persistedState_batchSize___block_invoke_78_cold_1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: argc == 1%@", v5, v6, v7, v8);
  }
}

void __66__BRCFSImporter__markNextChildBatchDead_persistedState_batchSize___block_invoke_80_cold_1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: argc == 1%@", v5, v6, v7, v8);
  }
}

void __66__BRCFSImporter__markNextChildBatchDead_persistedState_batchSize___block_invoke_81_cold_1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: argc == 2%@", v5, v6, v7, v8);
  }
}

void __66__BRCFSImporter__markNextChildBatchDead_persistedState_batchSize___block_invoke_85_cold_1()
{
  OUTLINED_FUNCTION_18();
  [v0 type];
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void __66__BRCFSImporter__markNextChildBatchDead_persistedState_batchSize___block_invoke_85_cold_2()
{
  OUTLINED_FUNCTION_18();
  v1 = [v0 itemDBRowID];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __84__BRCFSImporter__propagateFieldsToNextChildBatch_persistedState_minRowID_batchSize___block_invoke_cold_1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: argc == 1%@", v5, v6, v7, v8);
  }
}

void __84__BRCFSImporter__propagateFieldsToNextChildBatch_persistedState_minRowID_batchSize___block_invoke_96_cold_1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: argc == 1%@", v5, v6, v7, v8);
  }
}

void __84__BRCFSImporter__propagateFieldsToNextChildBatch_persistedState_minRowID_batchSize___block_invoke_97_cold_1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: argc == 1%@", v5, v6, v7, v8);
  }
}

void __84__BRCFSImporter__propagateFieldsToNextChildBatch_persistedState_minRowID_batchSize___block_invoke_98_cold_1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: argc == 1%@", v5, v6, v7, v8);
  }
}

void __84__BRCFSImporter__propagateFieldsToNextChildBatch_persistedState_minRowID_batchSize___block_invoke_99_cold_1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: argc == 1%@", v5, v6, v7, v8);
  }
}

void __84__BRCFSImporter__propagateFieldsToNextChildBatch_persistedState_minRowID_batchSize___block_invoke_100_cold_1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: argc == 2%@", v5, v6, v7, v8);
  }
}

void __84__BRCFSImporter__propagateFieldsToNextChildBatch_persistedState_minRowID_batchSize___block_invoke_101_cold_1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: argc == 9%@", v5, v6, v7, v8);
  }
}

void __63__BRCFSImporter__cleanItemBatchAfterMigrationToFPFSIfNecessary__block_invoke_cold_1(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_223E7A000, log, 0x90u, "[ERROR] Failed to update client items - %@%@", buf, 0x16u);
}

void __63__BRCFSImporter__cleanItemBatchAfterMigrationToFPFSIfNecessary__block_invoke_136_cold_1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: argc == 10%@", v5, v6, v7, v8);
  }
}

@end