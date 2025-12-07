@interface BRCSyncUpOperationBuilder
- (BOOL)_checkIfShouldDedicateOpToPCSChainingItem:(id)item;
- (BOOL)_checkIfShouldDedicateOpToSaltingBasehashItem:(id)item;
- (BOOL)_recoverItemIDChangedWhileUploadingIfNecessary:(id)necessary;
- (BOOL)_validateSharedDocumentFieldsForRecord:(id)record item:(id)item;
- (BOOL)checkIfSyncAllowedInSharedZoneForItem:(id)item;
- (BRCSyncUpOperationBuilder)initWithSessionContext:(id)context syncUpOperation:(id)operation;
- (float)addDeletionOfAlias:(id)alias;
- (float)addDeletionOfDirectory:(id)directory;
- (float)addDeletionOfDocument:(id)document;
- (float)addDeletionOfFinderBookmark:(id)bookmark;
- (float)addDeletionOfItem:(id)item;
- (float)addDeletionOfRecordID:(id)d ckInfo:(id)info;
- (float)addDeletionOfSharedTopLevelItem:(id)item;
- (float)addEditOfDirectory:(id)directory;
- (float)addEditOfDocument:(id)document;
- (float)addEditOfFinderBookmark:(id)bookmark;
- (float)addEditOfSharedTopLevelItem:(id)item;
- (float)addEditOfSymlink:(id)symlink;
- (float)addItem:(id)item;
- (float)fakeSyncForItem:(id)item serverItem:(id)serverItem inZone:(id)zone;
- (id)_generateChildBasehashSaltGetterBlock;
- (id)_generateSaltGetterBlock;
- (id)_getChildBasehashSaltForItem:(id)item;
- (id)_getChildBasehashSaltForItemID:(id)d;
- (id)_getSaltForItem:(id)item;
- (unsigned)shouldPCSChainStatusForItem:(id)item;
- (void)handleDeletionOfSharedItem:(id)item;
- (void)handleEditOfSharedItem:(id)item;
- (void)prepareAppLibraryRootSyncUpForItem:(id)item;
@end

@implementation BRCSyncUpOperationBuilder

- (BRCSyncUpOperationBuilder)initWithSessionContext:(id)context syncUpOperation:(id)operation
{
  contextCopy = context;
  operationCopy = operation;
  v22.receiver = self;
  v22.super_class = BRCSyncUpOperationBuilder;
  v9 = [(BRCSyncUpOperationBuilder *)&v22 init];
  if (v9)
  {
    v10 = objc_opt_new();
    fullyChainedParentIDWhitelist = v9->_fullyChainedParentIDWhitelist;
    v9->_fullyChainedParentIDWhitelist = v10;

    v12 = objc_opt_new();
    halfChainedParentIDWhitelist = v9->_halfChainedParentIDWhitelist;
    v9->_halfChainedParentIDWhitelist = v12;

    v14 = objc_opt_new();
    parentItemIDToChildBasehashSalt = v9->_parentItemIDToChildBasehashSalt;
    v9->_parentItemIDToChildBasehashSalt = v14;

    objc_storeStrong(&v9->_sessionContext, context);
    objc_storeStrong(&v9->_op, operation);
    serverZone = [(BRCSyncUpOperation *)v9->_op serverZone];
    clientZone = [serverZone clientZone];
    mangledID = [clientZone mangledID];
    v19 = [BRCUserDefaults defaultsForMangledID:mangledID];
    defaults = v9->_defaults;
    v9->_defaults = v19;
  }

  return v9;
}

- (unsigned)shouldPCSChainStatusForItem:(id)item
{
  itemCopy = item;
  if (![itemCopy isSharedToMeChildItem])
  {
    v32 = 0;
    v6 = [itemCopy isNewToServer:&v32];
    if ([itemCopy isSharedToMeTopLevelItem])
    {
      asSharedToMeTopLevelItem = [itemCopy asSharedToMeTopLevelItem];
      sharedAliasItemID = [asSharedToMeTopLevelItem sharedAliasItemID];
    }

    else
    {
      sharedAliasItemID = [itemCopy itemID];
    }

    v9 = [itemCopy st];
    parentID = [v9 parentID];

    appLibrary = [itemCopy appLibrary];
    mangledID = [appLibrary mangledID];
    v13 = [BRCUserDefaults defaultsForMangledID:mangledID];

    serverZone = [(BRCSyncUpOperation *)self->_op serverZone];
    clientZone = [serverZone clientZone];

    if (![clientZone isPrivateZone] || (objc_msgSend(sharedAliasItemID, "isDocumentsFolder") & 1) != 0 || (objc_msgSend(itemCopy, "parentClientZone"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqualToClientZone:", clientZone), v16, !v17))
    {
      v5 = 1;
LABEL_15:

      goto LABEL_16;
    }

    asPrivateClientZone = [clientZone asPrivateClientZone];
    accountFacade = [(BRCSessionContext *)self->_sessionContext accountFacade];
    if ([v13 optimisticallyPCSChainWithAccountFacade:accountFacade])
    {
      accountFacade2 = [(BRCSessionContext *)self->_sessionContext accountFacade];
      v20 = [v13 optimisticallyPCSChainDuringResetWithAccountFacade:accountFacade2];
      v21 = v20 | v32 ^ 1;
    }

    else
    {
      v21 = 0;
    }

    should2PhasePCSChain = [v13 should2PhasePCSChain];
    v24 = [asPrivateClientZone pcsChainStateForItem:sharedAliasItemID];
    if ((v24 & 0xFFFFFFFE) == 2)
    {
      if ([itemCopy isDirectory])
      {
        [(NSMutableSet *)self->_fullyChainedParentIDWhitelist addObject:sharedAliasItemID];
      }

      if (v6)
      {
        v5 = 8;
      }

      else
      {
        v5 = 16;
      }

      goto LABEL_52;
    }

    v25 = v24;
    if (([(NSMutableSet *)self->_fullyChainedParentIDWhitelist containsObject:parentID]& 1) != 0)
    {
LABEL_25:
      [(NSMutableSet *)self->_fullyChainedParentIDWhitelist addObject:parentID];
      if ([itemCopy isDirectory])
      {
        [(NSMutableSet *)self->_fullyChainedParentIDWhitelist addObject:sharedAliasItemID];
      }

      v5 = 8;
      goto LABEL_52;
    }

    if (([(NSMutableSet *)self->_halfChainedParentIDWhitelist containsObject:parentID]& 1) != 0)
    {
      v26 = 4;
    }

    else
    {
      v26 = [asPrivateClientZone pcsChainStateForItem:parentID];
      if ((v26 & 0xFFFFFFFE) == 2)
      {
        goto LABEL_25;
      }
    }

    v30 = v26;
    if ((v21 & 1) != 0 && [itemCopy isInDocumentOrTrashScope])
    {
      if ([itemCopy isDirectory])
      {
        if (v30 < 2 || ([asPrivateClientZone parentIDHasLiveUnchainedChildren:sharedAliasItemID] & 1) != 0)
        {
          if (!((v25 < 2) | v6 & 1))
          {
LABEL_51:
            v5 = 1;
            goto LABEL_52;
          }

          goto LABEL_42;
        }

        [(NSMutableSet *)self->_fullyChainedParentIDWhitelist addObject:sharedAliasItemID];
LABEL_54:
        v5 = 4;
        goto LABEL_52;
      }

      if (v25 < 2)
      {
        v28 = should2PhasePCSChain;
      }

      else
      {
        v28 = 0;
      }

      if (v30 >= 2 && !v28)
      {
        goto LABEL_54;
      }

      isDocument = [itemCopy isDocument];
      if (v25 > 1 || (isDocument & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v27 = v6 ^ 1;
      if (v25 < 2)
      {
        v27 = 1;
      }

      if (v27)
      {
        goto LABEL_51;
      }

      if ([itemCopy isDirectory])
      {
LABEL_42:
        [(NSMutableSet *)self->_halfChainedParentIDWhitelist addObject:sharedAliasItemID];
      }
    }

    v5 = 2;
LABEL_52:

    goto LABEL_15;
  }

  v5 = 8;
  if ([itemCopy hasValidCKInfo])
  {
    if ([itemCopy isKnownByServer])
    {
      v5 = 32;
    }

    else
    {
      v5 = 8;
    }
  }

LABEL_16:

  return v5;
}

- (BOOL)_checkIfShouldDedicateOpToSaltingBasehashItem:(id)item
{
  v45 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  if (([itemCopy isDead] & 1) == 0 && objc_msgSend(itemCopy, "shouldUseEnhancedDrivePrivacyWhenNeedsPreserving:", 0))
  {
    v5 = [itemCopy st];
    parentID = [v5 parentID];

    parentClientZone = [itemCopy parentClientZone];
    v8 = [parentClientZone saltingStateForItemID:parentID];
    if (v8 > 2)
    {
      if (v8 == -1 && !self->_rootChildBasehashSalt && [parentID isNonDesktopRoot])
      {
        v15 = [(NSMutableDictionary *)self->_parentItemIDToChildBasehashSalt objectForKeyedSubscript:parentID];

        if (v15)
        {
          [BRCSyncUpOperationBuilder _checkIfShouldDedicateOpToSaltingBasehashItem:];
        }

        parentClientZone2 = [itemCopy parentClientZone];
        asPrivateClientZone = [parentClientZone2 asPrivateClientZone];
        v18 = [asPrivateClientZone childBaseSaltForItemID:parentID];
        rootChildBasehashSalt = self->_rootChildBasehashSalt;
        self->_rootChildBasehashSalt = v18;

        v20 = self->_rootChildBasehashSalt;
        if (!v20)
        {
          brc_generateSaltingKey = [MEMORY[0x277CBEA90] brc_generateSaltingKey];
          v22 = self->_rootChildBasehashSalt;
          self->_rootChildBasehashSalt = brc_generateSaltingKey;

          v23 = brc_bread_crumbs();
          v24 = brc_default_log();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            brc_truncatedSHA256 = [(NSData *)self->_rootChildBasehashSalt brc_truncatedSHA256];
            brc_hexadecimalString = [brc_truncatedSHA256 brc_hexadecimalString];
            v38 = [parentID debugDescription];
            v39 = 138412802;
            v40 = brc_hexadecimalString;
            v41 = 2112;
            v42 = v38;
            v43 = 2112;
            v44 = v23;
            _os_log_debug_impl(&dword_223E7A000, v24, OS_LOG_TYPE_DEBUG, "[DEBUG] Generated root child basehash salt %@ for %@%@", &v39, 0x20u);
          }

          v20 = self->_rootChildBasehashSalt;
        }

        [(NSMutableDictionary *)self->_parentItemIDToChildBasehashSalt setObject:v20 forKeyedSubscript:parentID];
      }
    }

    else if (([itemCopy localDiffs] & 0x1000000060) != 0)
    {
      v9 = [parentClientZone itemByItemID:parentID];
      asDirectory = [v9 asDirectory];
      itemNeedingBasehashSalting = self->_itemNeedingBasehashSalting;
      self->_itemNeedingBasehashSalting = asDirectory;

      brc_generateSaltingKey2 = brc_bread_crumbs();
      v13 = 1;
      itemID4 = brc_default_log();
      if (os_log_type_enabled(itemID4, OS_LOG_TYPE_DEBUG))
      {
        [BRCSyncUpOperationBuilder _checkIfShouldDedicateOpToSaltingBasehashItem:parentID];
      }

      goto LABEL_26;
    }

    if (![itemCopy isDirectory])
    {
      v13 = 0;
      goto LABEL_28;
    }

    clientZone = [itemCopy clientZone];
    itemID = [itemCopy itemID];
    brc_generateSaltingKey2 = [clientZone childBaseSaltForItemID:itemID];

    if (!brc_generateSaltingKey2)
    {
      parentItemIDToChildBasehashSalt = self->_parentItemIDToChildBasehashSalt;
      itemID2 = [itemCopy itemID];
      v29 = [(NSMutableDictionary *)parentItemIDToChildBasehashSalt objectForKeyedSubscript:itemID2];

      if (v29)
      {
        [BRCSyncUpOperationBuilder _checkIfShouldDedicateOpToSaltingBasehashItem:];
      }

      brc_generateSaltingKey2 = [MEMORY[0x277CBEA90] brc_generateSaltingKey];
      v30 = brc_bread_crumbs();
      v31 = brc_default_log();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        itemID3 = [itemCopy itemID];
        v35 = [itemID3 debugDescription];
        v39 = 138412802;
        v40 = brc_generateSaltingKey2;
        v41 = 2112;
        v42 = v35;
        v43 = 2112;
        v44 = v30;
        _os_log_debug_impl(&dword_223E7A000, v31, OS_LOG_TYPE_DEBUG, "[DEBUG] Generated child basehash salt %@ for %@%@", &v39, 0x20u);
      }
    }

    v32 = self->_parentItemIDToChildBasehashSalt;
    itemID4 = [itemCopy itemID];
    [(NSMutableDictionary *)v32 setObject:brc_generateSaltingKey2 forKeyedSubscript:itemID4];
    v13 = 0;
LABEL_26:

LABEL_28:
    goto LABEL_29;
  }

  v13 = 0;
LABEL_29:

  return v13;
}

- (BOOL)_checkIfShouldDedicateOpToPCSChainingItem:(id)item
{
  itemCopy = item;
  if ([itemCopy isDead])
  {
    goto LABEL_11;
  }

  appLibrary = [itemCopy appLibrary];
  mangledID = [appLibrary mangledID];
  v8 = [BRCUserDefaults defaultsForMangledID:mangledID];
  should2PhasePCSChain = [v8 should2PhasePCSChain];

  if (([itemCopy isDeadOrMissingInServerTruth] & 1) != 0 || (objc_msgSend(itemCopy, "localDiffs") & 0x20) == 0 || (objc_msgSend(itemCopy, "isDirectory") & 1) == 0 && (objc_msgSend(itemCopy, "isDocument") & should2PhasePCSChain) != 1)
  {
    goto LABEL_11;
  }

  itemID = [itemCopy itemID];
  if ([itemID isDocumentsFolder])
  {
    goto LABEL_7;
  }

  clientZone = [itemCopy clientZone];
  isPrivateZone = [clientZone isPrivateZone];

  if (!isPrivateZone)
  {
    goto LABEL_11;
  }

  clientZone2 = [itemCopy clientZone];
  itemID = [clientZone2 asPrivateClientZone];

  fullyChainedParentIDWhitelist = self->_fullyChainedParentIDWhitelist;
  v15 = [itemCopy st];
  parentID = [v15 parentID];
  if ([(NSMutableSet *)fullyChainedParentIDWhitelist containsObject:parentID])
  {
  }

  else
  {
    v19 = [itemCopy st];
    parentID2 = [v19 parentID];
    v21 = [itemID pcsChainStateForItem:parentID2] & 0xFFFFFFFE;

    if (v21 != 2)
    {
LABEL_7:

LABEL_11:
      v17 = 0;
      goto LABEL_12;
    }
  }

  itemID2 = [itemCopy itemID];
  v23 = [itemID pcsChainStateForItem:itemID2];

  if (((v23 < 2) & should2PhasePCSChain) == 0)
  {
    if ((v23 & 0xFFFFFFFE) == 2)
    {
      goto LABEL_7;
    }

    itemID3 = [itemCopy itemID];
    v27 = [itemID parentIDHasLiveUnchainedChildren:itemID3];

    if (!v27)
    {
      goto LABEL_7;
    }
  }

  v24 = brc_bread_crumbs();
  v25 = brc_default_log();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    [BRCSyncUpOperationBuilder _checkIfShouldDedicateOpToPCSChainingItem:itemCopy];
  }

  objc_storeStrong(&self->_itemNeedingPCSChaining, item);
  v17 = 1;
LABEL_12:

  return v17;
}

- (BOOL)checkIfSyncAllowedInSharedZoneForItem:(id)item
{
  itemCopy = item;
  serverZone = [(BRCSyncUpOperation *)self->_op serverZone];
  if (![serverZone isSharedZone] || objc_msgSend(itemCopy, "isSharedToMeTopLevelItem") && (objc_msgSend(itemCopy, "isDead") & 1) != 0)
  {
    v6 = 1;
    goto LABEL_25;
  }

  if ([itemCopy isDeadOrMissingInServerTruth] && objc_msgSend(itemCopy, "isSharedToMeTopLevelItem"))
  {
    serverZone2 = [itemCopy serverZone];
    if (([serverZone2 state] & 4) != 0)
    {
    }

    else
    {
      localDiffs = [itemCopy localDiffs];

      if ((localDiffs & 0x400000000000000) != 0)
      {
        v9 = brc_bread_crumbs();
        v10 = brc_default_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          [BRCSyncUpOperationBuilder checkIfSyncAllowedInSharedZoneForItem:];
        }

LABEL_24:
        v6 = 0;
        goto LABEL_25;
      }
    }

    v18 = brc_bread_crumbs();
    v19 = brc_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [BRCSyncUpOperationBuilder checkIfSyncAllowedInSharedZoneForItem:];
    }

    [(BRCSyncUpOperationBuilder *)self fakeSyncForItem:itemCopy serverItem:0 inZone:serverZone];
    goto LABEL_24;
  }

  clientZone = [itemCopy clientZone];
  itemID = [itemCopy itemID];
  v13 = [clientZone serverItemByItemID:itemID];

  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = itemCopy;
  }

  sharingOptions = [v14 sharingOptions];
  v6 = (sharingOptions & 0x20) == 0;
  if ((sharingOptions & 0x20) != 0)
  {
    v16 = brc_bread_crumbs();
    v17 = brc_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [BRCSyncUpOperationBuilder checkIfSyncAllowedInSharedZoneForItem:itemCopy];
    }

    [(BRCSyncUpOperationBuilder *)self fakeSyncForItem:itemCopy serverItem:v13 inZone:serverZone];
  }

LABEL_25:
  return v6;
}

- (float)addDeletionOfItem:(id)item
{
  itemCopy = item;
  if ([itemCopy isSharedToMeTopLevelItem])
  {
    [BRCSyncUpOperationBuilder addDeletionOfItem:];
  }

  structureRecordID = [itemCopy structureRecordID];
  v6 = [itemCopy st];

  ckInfo = [v6 ckInfo];

  [(BRCSyncUpOperationBuilder *)self addDeletionOfRecordID:structureRecordID ckInfo:ckInfo];
  v9 = v8;

  return v9;
}

- (float)addDeletionOfRecordID:(id)d ckInfo:(id)info
{
  v28 = *MEMORY[0x277D85DE8];
  dCopy = d;
  infoCopy = info;
  v8 = self->_op;
  deletedRecordIDs = [(BRCSyncUpOperation *)v8 deletedRecordIDs];
  [deletedRecordIDs addObject:dCopy];

  if ([infoCopy hasEtag])
  {
    etag = [infoCopy etag];
    recordIDsToDeleteToEtags = [(BRCSyncUpOperation *)v8 recordIDsToDeleteToEtags];
    etagBeforeCrossZoneMove = recordIDsToDeleteToEtags;
    v13 = etag;
    v14 = dCopy;
LABEL_7:
    [recordIDsToDeleteToEtags setObject:v13 forKeyedSubscript:v14];
    goto LABEL_8;
  }

  if ([infoCopy hasEtagBeforeCrossZoneMove])
  {
    pluginFieldsForRecordDeletesByID = [(BRCSyncUpOperation *)v8 pluginFieldsForRecordDeletesByID];
    etag = [pluginFieldsForRecordDeletesByID objectForKeyedSubscript:dCopy];

    if (!etag)
    {
      etag = objc_opt_new();
      pluginFieldsForRecordDeletesByID2 = [(BRCSyncUpOperation *)v8 pluginFieldsForRecordDeletesByID];
      [pluginFieldsForRecordDeletesByID2 setObject:etag forKeyedSubscript:dCopy];
    }

    etagBeforeCrossZoneMove = [infoCopy etagBeforeCrossZoneMove];
    v14 = @"br_etagInPreviousZone";
    recordIDsToDeleteToEtags = etag;
    v13 = etagBeforeCrossZoneMove;
    goto LABEL_7;
  }

  etag = brc_bread_crumbs();
  etagBeforeCrossZoneMove = brc_default_log();
  if (os_log_type_enabled(etagBeforeCrossZoneMove, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 138412290;
    v27 = etag;
    _os_log_impl(&dword_223E7A000, etagBeforeCrossZoneMove, OS_LOG_TYPE_DEFAULT, "[WARNING] item should really have an etag%@", &v26, 0xCu);
  }

LABEL_8:

  if ([infoCopy hasDeletionChangeToken])
  {
    recordName = [(__CFString *)dCopy recordName];
    v18 = [recordName hasPrefix:@"shareAlias/"];

    if ((v18 & 1) == 0)
    {
      pluginFieldsForRecordDeletesByID3 = [(BRCSyncUpOperation *)v8 pluginFieldsForRecordDeletesByID];
      v20 = [pluginFieldsForRecordDeletesByID3 objectForKeyedSubscript:dCopy];

      if (!v20)
      {
        v20 = objc_opt_new();
        pluginFieldsForRecordDeletesByID4 = [(BRCSyncUpOperation *)v8 pluginFieldsForRecordDeletesByID];
        [pluginFieldsForRecordDeletesByID4 setObject:v20 forKeyedSubscript:dCopy];
      }

      deletionChangeToken = [infoCopy deletionChangeToken];
      [v20 setObject:deletionChangeToken forKeyedSubscript:@"br_deleteChangeToken"];
    }
  }

  [(BRCUserDefaults *)self->_defaults syncUpStructureDeleteCost];
  v24 = v23;

  return v24;
}

- (id)_getChildBasehashSaltForItemID:(id)d
{
  dCopy = d;
  v5 = [(NSMutableDictionary *)self->_parentItemIDToChildBasehashSalt objectForKeyedSubscript:dCopy];
  if (v5)
  {
    v6 = v5;
    null = [MEMORY[0x277CBEB68] null];

    if (v6 == null)
    {
      v8 = 0;
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  serverZone = [(BRCSyncUpOperation *)self->_op serverZone];
  clientZone = [serverZone clientZone];
  v6 = [clientZone childBaseSaltForItemID:dCopy];

  if (v6)
  {
    [(NSMutableDictionary *)self->_parentItemIDToChildBasehashSalt setObject:v6 forKeyedSubscript:dCopy];
LABEL_6:
    v8 = v6;
    v6 = v8;
    goto LABEL_7;
  }

  null2 = [MEMORY[0x277CBEB68] null];
  [(NSMutableDictionary *)self->_parentItemIDToChildBasehashSalt setObject:null2 forKeyedSubscript:dCopy];

  v8 = 0;
  v6 = 0;
LABEL_7:

  return v8;
}

- (id)_getChildBasehashSaltForItem:(id)item
{
  itemCopy = item;
  if ([itemCopy shouldUseEnhancedDrivePrivacyWhenNeedsPreserving:1] && objc_msgSend(itemCopy, "isDirectory"))
  {
    itemID = [itemCopy itemID];
    v6 = [(BRCSyncUpOperationBuilder *)self _getChildBasehashSaltForItemID:itemID];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_getSaltForItem:(id)item
{
  itemCopy = item;
  v5 = [BRCUserDefaults defaultsForMangledID:0];
  supportsEnhancedDrivePrivacy = [v5 supportsEnhancedDrivePrivacy];

  if (supportsEnhancedDrivePrivacy && ([itemCopy isSharedToMeTopLevelItem] & 1) == 0)
  {
    v8 = [itemCopy st];
    parentID = [v8 parentID];

    if (!parentID)
    {
      [BRCSyncUpOperationBuilder _getSaltForItem:];
    }

    v7 = [(BRCSyncUpOperationBuilder *)self _getChildBasehashSaltForItemID:parentID];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_generateSaltGetterBlock
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__BRCSyncUpOperationBuilder__generateSaltGetterBlock__block_invoke;
  v5[3] = &unk_2785045C8;
  v5[4] = self;
  v2 = MEMORY[0x22AA4A310](v5, a2);
  v3 = MEMORY[0x22AA4A310]();

  return v3;
}

- (id)_generateChildBasehashSaltGetterBlock
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __66__BRCSyncUpOperationBuilder__generateChildBasehashSaltGetterBlock__block_invoke;
  v5[3] = &unk_2785045C8;
  v5[4] = self;
  v2 = MEMORY[0x22AA4A310](v5, a2);
  v3 = MEMORY[0x22AA4A310]();

  return v3;
}

- (float)addEditOfSharedTopLevelItem:(id)item
{
  v40 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v5 = self->_op;
  serverZone = [(BRCSyncUpOperation *)v5 serverZone];
  isSharedZone = [serverZone isSharedZone];

  if (!isSharedZone)
  {
    localDiffs = [itemCopy localDiffs];
    parentClientZone = [itemCopy parentClientZone];
    serverZone2 = [(BRCSyncUpOperation *)v5 serverZone];
    clientZone = [serverZone2 clientZone];
    v14 = [parentClientZone isEqualToClientZone:clientZone];

    if ((v14 & 1) == 0)
    {
      v24 = brc_bread_crumbs();
      v25 = brc_default_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v34 = 138412546;
        v35 = itemCopy;
        v36 = 2112;
        v37 = v24;
        _os_log_impl(&dword_223E7A000, v25, OS_LOG_TYPE_DEFAULT, "[WARNING] Fake syncing up share alias in the wrong zone! %@%@", &v34, 0x16u);
      }

      goto LABEL_15;
    }

    if ((localDiffs & 0x1A69) == 0)
    {
LABEL_16:
      serverZone3 = [(BRCSyncUpOperation *)v5 serverZone];
      [(BRCSyncUpOperationBuilder *)self fakeSyncForItem:itemCopy serverItem:0 inZone:serverZone3];
      goto LABEL_17;
    }

    session = [itemCopy session];
    itemFetcher = [session itemFetcher];
    serverZone4 = [(BRCSyncUpOperation *)v5 serverZone];
    v18 = [itemFetcher serverAliasItemForSharedItem:itemCopy inZone:serverZone4];

    v19 = [(BRCSyncUpOperationBuilder *)self shouldPCSChainStatusForItem:itemCopy];
    serverZone5 = [(BRCSyncUpOperation *)v5 serverZone];
    serverZone3 = [itemCopy structureRecordBeingDeadInServerTruth:v18 == 0 shouldPCSChainStatus:v19 inZone:serverZone5];

    v21 = brc_bread_crumbs();
    v22 = brc_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      if ((v19 & 0x2C) != 0)
      {
        v32 = "pcs chained ";
      }

      else
      {
        v32 = "";
      }

      v33 = [serverZone3 description];
      v34 = 136315650;
      v35 = v32;
      v36 = 2112;
      v37 = v33;
      v38 = 2112;
      v39 = v21;
      _os_log_debug_impl(&dword_223E7A000, v22, OS_LOG_TYPE_DEBUG, "[DEBUG] Syncing up %sshared document alias record %@%@", &v34, 0x20u);
    }

    if (serverZone3)
    {
      recordsToSave = [(BRCSyncUpOperation *)v5 recordsToSave];
      [recordsToSave addObject:serverZone3];

      if ([itemCopy isFromInitialScan])
      {
        [(BRCUserDefaults *)self->_defaults syncUpInitialItemCost];
      }

      else
      {
        isKnownByServer = [itemCopy isKnownByServer];
        defaults = self->_defaults;
        if (isKnownByServer)
        {
          [(BRCUserDefaults *)defaults syncUpStructureEditCost];
        }

        else
        {
          [(BRCUserDefaults *)defaults syncUpStructureCreateCost];
        }
      }

      goto LABEL_17;
    }

LABEL_22:
    v26 = -1.0;
    goto LABEL_18;
  }

  if (![itemCopy isDocument])
  {
    if ([itemCopy isDirectory])
    {
      v24 = brc_bread_crumbs();
      v25 = brc_default_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        [BRCSyncUpOperationBuilder addEditOfSharedTopLevelItem:];
      }

LABEL_15:

      goto LABEL_16;
    }

    v28 = brc_bread_crumbs();
    v29 = brc_default_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      [BRCSyncUpOperationBuilder addEditOfSharedTopLevelItem:];
    }

    goto LABEL_22;
  }

  serverZone3 = [itemCopy asDocument];
  [(BRCSyncUpOperationBuilder *)self addEditOfDocument:serverZone3];
LABEL_17:
  v26 = v9;

LABEL_18:
  return v26;
}

- (float)addDeletionOfSharedTopLevelItem:(id)item
{
  v25 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  serverZone = [(BRCSyncUpOperation *)self->_op serverZone];
  isSharedZone = [serverZone isSharedZone];

  if (isSharedZone)
  {
    v7 = objc_alloc(MEMORY[0x277CBC5D0]);
    asShareableItem = [itemCopy asShareableItem];
    v9 = [v7 initShareIDWithShareableItem:asShareableItem];

    deletedRecordIDs = [(BRCSyncUpOperation *)self->_op deletedRecordIDs];
    [deletedRecordIDs addObject:v9];

    [(BRCUserDefaults *)self->_defaults syncUpDocumentDeleteCost];
    v12 = v11;
  }

  else
  {
    serverZone2 = [(BRCSyncUpOperation *)self->_op serverZone];
    v9 = [itemCopy structureRecordIDInZone:serverZone2];

    if (v9)
    {
      v14 = brc_bread_crumbs();
      v15 = brc_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [BRCSyncUpOperationBuilder addDeletionOfSharedTopLevelItem:];
      }

      serverZone3 = [itemCopy st];
      ckInfo = [serverZone3 ckInfo];
      [(BRCSyncUpOperationBuilder *)self addDeletionOfRecordID:v9 ckInfo:ckInfo];
      v12 = v18;
    }

    else
    {
      v19 = brc_bread_crumbs();
      v20 = brc_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 138412290;
        v24 = v19;
        _os_log_impl(&dword_223E7A000, v20, OS_LOG_TYPE_DEFAULT, "[WARNING] syncing the structure of an item without an alias item%@", &v23, 0xCu);
      }

      serverZone3 = [(BRCSyncUpOperation *)self->_op serverZone];
      [(BRCSyncUpOperationBuilder *)self fakeSyncForItem:itemCopy serverItem:0 inZone:serverZone3];
      v12 = v21;
    }
  }

  return v12;
}

- (void)prepareAppLibraryRootSyncUpForItem:(id)item
{
  itemCopy = item;
  appLibrary = [itemCopy appLibrary];
  mangledID = [appLibrary mangledID];

  if (mangledID)
  {
    clientZone = [itemCopy clientZone];
    if (([clientZone isPrivateZone] & 1) == 0)
    {
LABEL_10:

      goto LABEL_11;
    }

    appLibrary2 = [itemCopy appLibrary];
    if (([appLibrary2 state] & 0x300002) != 0x200000)
    {
LABEL_9:

      goto LABEL_10;
    }

    createdAppLibraryNames = [(BRCSyncUpOperation *)self->_op createdAppLibraryNames];
    appLibraryOrZoneName = [mangledID appLibraryOrZoneName];
    if ([createdAppLibraryNames containsObject:appLibraryOrZoneName])
    {
LABEL_8:

      goto LABEL_9;
    }

    clientZone2 = [itemCopy clientZone];
    zoneName = [clientZone2 zoneName];
    if (![zoneName isEqualToString:*MEMORY[0x277CFAD68]] || (objc_msgSend(mangledID, "isCloudDocsMangledID") & 1) != 0)
    {

      goto LABEL_8;
    }

    appLibrary3 = [itemCopy appLibrary];
    isiCloudDesktopAppLibrary = [appLibrary3 isiCloudDesktopAppLibrary];

    if ((isiCloudDesktopAppLibrary & 1) == 0)
    {
      v14 = objc_alloc(MEMORY[0x277CBC5F8]);
      clientZone3 = [itemCopy clientZone];
      zoneName2 = [clientZone3 zoneName];
      v17 = [v14 initWithZoneName:zoneName2 ownerName:*MEMORY[0x277CBBF28]];

      appLibrary4 = [itemCopy appLibrary];
      childBasehashSalt = [appLibrary4 childBasehashSalt];

      v20 = [MEMORY[0x277CBC5A0] rootAppLibraryRecordForAppLibraryID:mangledID zoneID:v17];
      v21 = v20;
      if (childBasehashSalt)
      {
        [v20 brc_fillWithChildBasehashSalt:childBasehashSalt];
        appLibrary5 = [itemCopy appLibrary];
        saltingState = [appLibrary5 saltingState];

        if (saltingState <= 1)
        {
          v24 = 3;
        }

        else
        {
          v24 = saltingState;
        }

        v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v24];
        [v21 setObject:v25 forKeyedSubscript:@"saltingState"];
      }

      appLibrary6 = [itemCopy appLibrary];
      if ([appLibrary6 includesDataScope])
      {
      }

      else
      {
        [itemCopy appLibrary];
        v27 = v39 = v17;
        [v27 mangledID];
        v28 = v37 = childBasehashSalt;
        v29 = [BRCUserDefaults defaultsForMangledID:v28];
        accountFacade = [(BRCSessionContext *)self->_sessionContext accountFacade];
        v31 = [v29 optimisticallyPCSChainWithAccountFacade:accountFacade];

        childBasehashSalt = v37;
        v17 = v39;

        if (v31)
        {
          [v21 setWantsChainPCS:1];
        }
      }

      if (v21)
      {
        v32 = brc_bread_crumbs();
        v33 = brc_default_log();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          [BRCSyncUpOperationBuilder prepareAppLibraryRootSyncUpForItem:];
        }

        recordsToSave = [(BRCSyncUpOperation *)self->_op recordsToSave];
        [recordsToSave addObject:v21];

        createdAppLibraryNames2 = [(BRCSyncUpOperation *)self->_op createdAppLibraryNames];
        appLibraryOrZoneName2 = [mangledID appLibraryOrZoneName];
        [createdAppLibraryNames2 addObject:appLibraryOrZoneName2];
      }
    }
  }

LABEL_11:
}

- (float)fakeSyncForItem:(id)item serverItem:(id)serverItem inZone:(id)zone
{
  v65 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  serverItemCopy = serverItem;
  zoneCopy = zone;
  v10 = [itemCopy st];
  ckInfo = [v10 ckInfo];
  etag = [ckInfo etag];
  if (etag || ![itemCopy isSharedToMeChildItem])
  {
  }

  else
  {
    isSharedZone = [zoneCopy isSharedZone];

    if (isSharedZone)
    {
      v14 = brc_bread_crumbs();
      v15 = brc_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [BRCSyncUpOperationBuilder fakeSyncForItem:serverItem:inZone:];
      }

      [itemCopy prepareForSyncUpSideCarZone];
      [itemCopy markLatestSyncRequestAcknowledgedInZone:&unk_2837B0298];
    }
  }

  localDiffs = [itemCopy localDiffs];
  dbRowID = [zoneCopy dbRowID];
  v18 = [itemCopy inFlightSyncUpDiffsInZoneRowID:dbRowID];

  if ([itemCopy isSharedToMeChildItem])
  {
    v19 = [MEMORY[0x277CBC5D0] brc_fetchShareIDWithSharedItem:itemCopy];
    brc_shareItemID = [v19 brc_shareItemID];
    clientZone = [itemCopy clientZone];
    v22 = [clientZone serverItemByItemID:brc_shareItemID];
    isLive = [v22 isLive];

    if ((isLive & 1) == 0)
    {
      v24 = brc_bread_crumbs();
      v25 = brc_default_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v60 = itemCopy;
        v61 = 2112;
        v62 = v24;
        _os_log_impl(&dword_223E7A000, v25, OS_LOG_TYPE_DEFAULT, "[WARNING] Marking %@ as rejected because the root share is dead%@", buf, 0x16u);
      }
    }

    v26 = isLive ^ 1;
LABEL_14:

    goto LABEL_18;
  }

  if ([itemCopy isSharedToMeTopLevelItem])
  {
    clientZone2 = [itemCopy clientZone];
    itemID = [itemCopy itemID];
    v29 = [clientZone2 serverItemByItemID:itemID];
    isLive2 = [v29 isLive];

    if ((isLive2 & 1) == 0)
    {
      v19 = brc_bread_crumbs();
      brc_shareItemID = brc_default_log();
      if (os_log_type_enabled(brc_shareItemID, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v60 = itemCopy;
        v61 = 2112;
        v62 = v19;
        _os_log_impl(&dword_223E7A000, brc_shareItemID, OS_LOG_TYPE_DEFAULT, "[WARNING] Marking %@ as rejected because the server item is dead%@", buf, 0x16u);
      }

      v26 = 1;
      goto LABEL_14;
    }
  }

  v26 = 0;
LABEL_18:
  if ([itemCopy isDocumentBeingCopiedToNewZone])
  {
    v31 = brc_bread_crumbs();
    v32 = brc_default_log();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
    {
      [BRCSyncUpOperationBuilder fakeSyncForItem:serverItem:inZone:];
    }
  }

  v33 = v18 | localDiffs;
  if (v26)
  {
    [itemCopy markForceRejected];
    goto LABEL_39;
  }

  if (([itemCopy isKnownByServer] & 1) != 0 || !objc_msgSend(itemCopy, "isSharedToMeChildItem"))
  {
    [itemCopy prepareForSyncUpInZone:zoneCopy];
    dbRowID2 = [zoneCopy dbRowID];
    [itemCopy markLatestSyncRequestAcknowledgedInZone:dbRowID2];

    if (([serverItemCopy sharingOptions] & 0x20) != 0 && objc_msgSend(itemCopy, "isDocument"))
    {
      asDocument = [itemCopy asDocument];
      currentVersion = [asDocument currentVersion];
      ckInfo2 = [currentVersion ckInfo];
      if (ckInfo2)
      {

        if ((v33 & 0x180000) != 0)
        {
          asDocument2 = [itemCopy asDocument];
          currentVersion2 = [asDocument2 currentVersion];
          v44 = MEMORY[0x277CCA9B8];
          asDocument3 = [itemCopy asDocument];
          fileIDForUpload = [asDocument3 fileIDForUpload];
          v47 = [v44 brc_errorItemIneligibleFromSyncForInode:fileIDForUpload localizedDescription:0];
          [currentVersion2 setUploadError:v47];
        }
      }

      else
      {
      }
    }

LABEL_39:
    v37 = 0;
    if ((v33 & 0x1000000000000000) != 0)
    {
      goto LABEL_45;
    }

    goto LABEL_40;
  }

  if ([itemCopy isDocument])
  {
    asDocument4 = [itemCopy asDocument];
    currentVersion3 = [asDocument4 currentVersion];
    v36 = [MEMORY[0x277CCA9B8] brc_errorItemIneligibleFromSyncForInode:0 localizedDescription:0];
    [currentVersion3 setUploadError:v36];
  }

  v37 = 1;
  if ((v33 & 0x1000000000000000) == 0)
  {
LABEL_40:
    if (serverItemCopy || ([zoneCopy clientZone], v48 = objc_claimAutoreleasedReturnValue(), objc_msgSend(itemCopy, "itemID"), v49 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v48, "serverItemByItemID:", v49), serverItemCopy = objc_claimAutoreleasedReturnValue(), v49, v48, serverItemCopy))
    {
      memset(v58, 0, sizeof(v58));
      __brc_create_section(0, "[BRCSyncUpOperationBuilder fakeSyncForItem:serverItem:inZone:]", 559, 0, v58);
      v50 = brc_bread_crumbs();
      v51 = brc_default_log();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218498;
        v60 = v58[0];
        v61 = 2112;
        v62 = serverItemCopy;
        v63 = 2112;
        v64 = v50;
        _os_log_debug_impl(&dword_223E7A000, v51, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx re-scheduling apply jobs for %@ because it finished sync-up%@", buf, 0x20u);
      }

      clientZone3 = [zoneCopy clientZone];
      [clientZone3 scheduleApplyWithLocalItem:itemCopy serverItem:serverItemCopy];

      __brc_leave_section(v58);
    }
  }

LABEL_45:
  [itemCopy saveToDB];
  if (v37)
  {
    syncUpCallback = [*(v57 + 56) syncUpCallback];
    dbRowID3 = [zoneCopy dbRowID];
    [syncUpCallback ineligibleSyncUpCallback:itemCopy inZone:dbRowID3];
  }

  return -1.0;
}

- (void)handleDeletionOfSharedItem:(id)item
{
  v4 = MEMORY[0x277CBC5D0];
  itemCopy = item;
  v7 = [[v4 alloc] initShareIDWithShareableItem:itemCopy];

  deletedRecordIDs = [(BRCSyncUpOperation *)self->_op deletedRecordIDs];
  [deletedRecordIDs addObject:v7];
}

- (void)handleEditOfSharedItem:(id)item
{
  itemCopy = item;
  if ([itemCopy itemScope] == 3)
  {
    v5 = [objc_alloc(MEMORY[0x277CBC5D0]) initShareIDWithShareableItem:itemCopy];
    v6 = [itemCopy st];
    iWorkShareable = [v6 iWorkShareable];

    op = self->_op;
    if (iWorkShareable)
    {
      [(BRCSyncUpOperation *)op iworkUnsharedShareIDs];
    }

    else
    {
      [(BRCSyncUpOperation *)op deletedRecordIDs];
    }
    v14 = ;
    [v14 addObject:v5];

    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [BRCSyncUpOperationBuilder handleEditOfSharedItem:];
    }

LABEL_10:

    goto LABEL_11;
  }

  if (([itemCopy localDiffs] & 0x40) != 0)
  {
    v5 = [objc_alloc(MEMORY[0x277CBC5D0]) initShareIDWithShareableItem:itemCopy];
    v9 = [itemCopy st];
    logicalName = [v9 logicalName];
    renamedShareIDsToNames = [(BRCSyncUpOperation *)self->_op renamedShareIDsToNames];
    [renamedShareIDsToNames setObject:logicalName forKeyedSubscript:v5];

    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [BRCSyncUpOperationBuilder handleEditOfSharedItem:];
    }

    goto LABEL_10;
  }

LABEL_11:
}

- (float)addEditOfDirectory:(id)directory
{
  v42 = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  isDeadOrMissingInServerTruth = [directoryCopy isDeadOrMissingInServerTruth];
  v6 = (isDeadOrMissingInServerTruth & 1) != 0 || ([directoryCopy localDiffs] & 0x3FFE) != 0;
  isKnownByServer = [directoryCopy isKnownByServer];
  itemID = [directoryCopy itemID];
  if ([itemID isDocumentsFolder])
  {
    appLibrary = [directoryCopy appLibrary];
    v10 = (([appLibrary state] & 0x40000) == 0) | isKnownByServer;

    v11 = -1.0;
    if ((v10 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  if ([directoryCopy hasShareIDAndIsOwnedByMe])
  {
    asShareableItem = [directoryCopy asShareableItem];
    [(BRCSyncUpOperationBuilder *)self handleEditOfSharedItem:asShareableItem];
  }

  if (v6)
  {
    v13 = [(BRCSyncUpOperationBuilder *)self shouldPCSChainStatusForItem:directoryCopy];
    stageID = [(BRCSyncUpOperation *)self->_op stageID];
    _generateSaltGetterBlock = [(BRCSyncUpOperationBuilder *)self _generateSaltGetterBlock];
    _generateChildBasehashSaltGetterBlock = [(BRCSyncUpOperationBuilder *)self _generateChildBasehashSaltGetterBlock];
    v17 = [directoryCopy structureRecordBeingDeadInServerTruth:isDeadOrMissingInServerTruth stageID:stageID shouldPCSChainStatus:v13 saltGetter:_generateSaltGetterBlock childBasehashSaltGetter:_generateChildBasehashSaltGetterBlock];

    if (v17)
    {
      if ([directoryCopy shouldUseEnhancedDrivePrivacyWhenNeedsPreserving:0] && objc_msgSend(directoryCopy, "isNewToServer:", 0))
      {
        encryptedValues = [v17 encryptedValues];
        v19 = [encryptedValues objectForKeyedSubscript:@"childBasehashSalt"];

        if (!v19)
        {
          [BRCSyncUpOperationBuilder addEditOfDirectory:];
        }

        [v17 setObject:&unk_2837B02B0 forKeyedSubscript:@"saltingState"];
      }

      v20 = brc_bread_crumbs();
      v21 = brc_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v29 = "half chained ";
        if (v13 != 2)
        {
          v29 = "";
        }

        if ((v13 & 0x2C) != 0)
        {
          v30 = "pcs chained ";
        }

        else
        {
          v30 = v29;
        }

        v31 = [v17 description];
        v32 = v31;
        v33 = "\n(dead in server truth)";
        v34 = 136315906;
        v35 = v30;
        if (!isDeadOrMissingInServerTruth)
        {
          v33 = "";
        }

        v36 = 2112;
        v37 = v31;
        v38 = 2080;
        v39 = v33;
        v40 = 2112;
        v41 = v20;
        _os_log_debug_impl(&dword_223E7A000, v21, OS_LOG_TYPE_DEBUG, "[DEBUG] Syncing up %sdirectory record %@%s%@", &v34, 0x2Au);
      }

      recordsToSave = [(BRCSyncUpOperation *)self->_op recordsToSave];
      [recordsToSave addObject:v17];

      if ([directoryCopy isFromInitialScan])
      {
        [(BRCUserDefaults *)self->_defaults syncUpInitialItemCost];
      }

      else
      {
        isKnownByServer2 = [directoryCopy isKnownByServer];
        defaults = self->_defaults;
        if (isKnownByServer2)
        {
          [(BRCUserDefaults *)defaults syncUpStructureEditCost];
        }

        else
        {
          [(BRCUserDefaults *)defaults syncUpStructureCreateCost];
        }
      }

      v11 = v23;
    }

    else
    {
      v11 = -1.0;
    }
  }

  else
  {
    serverZone = [(BRCSyncUpOperation *)self->_op serverZone];
    [(BRCSyncUpOperationBuilder *)self fakeSyncForItem:directoryCopy serverItem:0 inZone:serverZone];
    v11 = v25;
  }

LABEL_27:

  return v11;
}

- (float)addDeletionOfDirectory:(id)directory
{
  directoryCopy = directory;
  if ([directoryCopy hasShareIDAndIsOwnedByMe])
  {
    asShareableItem = [directoryCopy asShareableItem];
    [(BRCSyncUpOperationBuilder *)self handleDeletionOfSharedItem:asShareableItem];
  }

  if ([directoryCopy isSharedToMeTopLevelItem])
  {
    [BRCSyncUpOperationBuilder addDeletionOfDirectory:];
  }

  [(BRCSyncUpOperationBuilder *)self addDeletionOfItem:directoryCopy];
  v7 = v6;

  return v7;
}

- (float)addDeletionOfAlias:(id)alias
{
  v23 = *MEMORY[0x277D85DE8];
  aliasCopy = alias;
  targetClientZone = [aliasCopy targetClientZone];
  if ([targetClientZone isSharedZone])
  {
    targetItemID = [aliasCopy targetItemID];
    v7 = [targetClientZone itemByItemID:targetItemID];
    asSharedToMeTopLevelItem = [v7 asSharedToMeTopLevelItem];

    parentClientZone = [asSharedToMeTopLevelItem parentClientZone];
    clientZone = [aliasCopy clientZone];
    v11 = [parentClientZone isEqualToClientZone:clientZone];

    if (v11)
    {
      v12 = brc_bread_crumbs();
      v13 = brc_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412546;
        v20 = aliasCopy;
        v21 = 2112;
        v22 = v12;
        _os_log_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEFAULT, "[WARNING] Faking sync for alias item alive in the same zone as the target %@%@", &v19, 0x16u);
      }

      serverZone = [aliasCopy serverZone];
      [(BRCSyncUpOperationBuilder *)self fakeSyncForItem:aliasCopy serverItem:0 inZone:serverZone];
      v16 = v15;

      goto LABEL_10;
    }
  }

  if ([aliasCopy isSharedToMeTopLevelItem])
  {
    [BRCSyncUpOperationBuilder addDeletionOfAlias:];
  }

  [(BRCSyncUpOperationBuilder *)self addDeletionOfItem:aliasCopy];
  v16 = v17;
LABEL_10:

  return v16;
}

- (float)addDeletionOfDocument:(id)document
{
  v26 = *MEMORY[0x277D85DE8];
  documentCopy = document;
  v5 = self->_op;
  if ([documentCopy hasShareIDAndIsOwnedByMe])
  {
    asShareableItem = [documentCopy asShareableItem];
    [(BRCSyncUpOperationBuilder *)self handleDeletionOfSharedItem:asShareableItem];
  }

  currentVersion = [documentCopy currentVersion];
  ckInfo = [currentVersion ckInfo];

  if (([ckInfo hasEtag] & 1) != 0 || objc_msgSend(ckInfo, "hasEtagBeforeCrossZoneMove"))
  {
    documentRecordID = [documentCopy documentRecordID];
    [(BRCSyncUpOperationBuilder *)self addDeletionOfRecordID:documentRecordID ckInfo:ckInfo];
    [(BRCSyncUpOperationBuilder *)self addDeletionOfItem:documentCopy];
    isInDocumentScope = [documentCopy isInDocumentScope];
    defaults = self->_defaults;
    if (isInDocumentScope)
    {
      [(BRCUserDefaults *)defaults syncUpDocumentDeleteCost];
    }

    else
    {
      [(BRCUserDefaults *)defaults syncUpDataDeleteCost];
    }

    v13 = v12;
  }

  else
  {
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412546;
      selfCopy = self;
      v24 = 2112;
      v25 = v14;
      _os_log_impl(&dword_223E7A000, v15, OS_LOG_TYPE_DEFAULT, "[WARNING] Not syncing deletion of ETag-less version: %@%@", &v22, 0x16u);
    }

    clientZone = [documentCopy clientZone];
    itemID = [documentCopy itemID];
    documentRecordID = [clientZone serverItemByItemID:itemID];

    if ([documentRecordID isLive])
    {
      clientZone2 = [documentCopy clientZone];
      [clientZone2 scheduleApplyWithLocalItem:documentCopy serverItem:documentRecordID];
    }

    serverZone = [(BRCSyncUpOperation *)v5 serverZone];
    [(BRCSyncUpOperationBuilder *)self fakeSyncForItem:documentCopy serverItem:documentRecordID inZone:serverZone];
    v13 = v20;
  }

  return v13;
}

- (BOOL)_recoverItemIDChangedWhileUploadingIfNecessary:(id)necessary
{
  v24 = *MEMORY[0x277D85DE8];
  necessaryCopy = necessary;
  currentVersion = [necessaryCopy currentVersion];
  uploadedAssets = [currentVersion uploadedAssets];

  if (uploadedAssets)
  {
    recordID = [uploadedAssets recordID];
    zoneAppRetriever = [(BRCSessionContext *)self->_sessionContext zoneAppRetriever];
    v9 = [recordID brc_itemIDWithZoneAppRetriever:zoneAppRetriever];

    if (v9 && ([necessaryCopy itemID], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "isEqualToItemID:", v10), v10, (v11 & 1) == 0))
    {
      v13 = brc_bread_crumbs();
      v14 = brc_default_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        itemID = [necessaryCopy itemID];
        v18 = 138412802;
        v19 = v9;
        v20 = 2112;
        v21 = itemID;
        v22 = 2112;
        v23 = v13;
        _os_log_debug_impl(&dword_223E7A000, v14, OS_LOG_TYPE_DEBUG, "[DEBUG] ItemID changed while uploading (%@ -> %@), starting over%@", &v18, 0x20u);
      }

      currentVersion2 = [necessaryCopy currentVersion];
      [currentVersion2 clearUploadedAssets];

      [necessaryCopy markNeedsUploadOrSyncingUp];
      [necessaryCopy saveToDB];
      v12 = 1;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)_validateSharedDocumentFieldsForRecord:(id)record item:(id)item
{
  recordCopy = record;
  itemCopy = item;
  if ([(BRCSyncUpOperationBuilder *)self _recoverItemIDChangedWhileUploadingIfNecessary:itemCopy])
  {
    goto LABEL_5;
  }

  session = [itemCopy session];
  v9 = [recordCopy validateEnhancedDrivePrivacyFieldsWithSession:session error:0];

  if ((v9 & 1) == 0)
  {
    currentVersion = [itemCopy currentVersion];
    [currentVersion clearUploadedAssets];

    [itemCopy markNeedsUploadOrSyncingUp];
    [itemCopy saveToDB];
LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v10 = 1;
LABEL_6:

  return v10;
}

- (float)addEditOfDocument:(id)document
{
  v161 = *MEMORY[0x277D85DE8];
  documentCopy = document;
  v152 = self->_op;
  isDeadOrMissingInServerTruth = [documentCopy isDeadOrMissingInServerTruth];
  localDiffs = [documentCopy localDiffs];
  v7 = [documentCopy st];
  ckInfo = [v7 ckInfo];
  v9 = ckInfo;
  if (!ckInfo || (isDeadOrMissingInServerTruth & 1) != 0)
  {
    v11 = [documentCopy st];
    LODWORD(v10) = [v11 iWorkShareable];

    if ((v10 & isDeadOrMissingInServerTruth) == 1)
    {
      v12 = [documentCopy sharingOptions] & 4;
      v13 = v12 == 0;
      v10 = v12 >> 2;
      goto LABEL_7;
    }
  }

  else
  {

    LOBYTE(v10) = 0;
  }

  v13 = 0;
LABEL_7:
  v14 = localDiffs & 0x3FFE;
  v15 = localDiffs & 0x1FE0000;
  if (![documentCopy sharingOptions])
  {
    goto LABEL_16;
  }

  currentVersion = [documentCopy currentVersion];
  ckInfo2 = [currentVersion ckInfo];
  if (ckInfo2)
  {

    goto LABEL_16;
  }

  clientZone = [documentCopy clientZone];
  if ([clientZone isPrivateZone])
  {
  }

  else
  {
    isSharedToMeTopLevelItem = [documentCopy isSharedToMeTopLevelItem];

    if (!isSharedToMeTopLevelItem)
    {
      goto LABEL_16;
    }
  }

  v20 = brc_bread_crumbs();
  v21 = brc_default_log();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    [BRCSyncUpOperationBuilder addEditOfDocument:];
  }

  LOBYTE(v10) = 1;
LABEL_16:
  v151 = v10;
  v22 = v15 != 0;
  v23 = v14 != 0;
  localDiffs2 = [documentCopy localDiffs];
  v25 = (localDiffs2 >> 59) & 1;
  v26 = ((localDiffs2 & 0x800000000000000) != 0) | isDeadOrMissingInServerTruth;
  v27 = v26 | v22;
  serverZone = [documentCopy serverZone];
  isSharedZone = [serverZone isSharedZone];

  if (isSharedZone)
  {
    isSharedToMeChildItem = [documentCopy isSharedToMeChildItem];
    clientZone2 = [documentCopy clientZone];
    itemID = [documentCopy itemID];
    v33 = [clientZone2 serverItemByItemID:itemID];

    if (isDeadOrMissingInServerTruth && ([documentCopy isSharedToMeTopLevelItem] & 1) != 0 || (v33 ? (v34 = v33) : (v34 = documentCopy), (objc_msgSend(v34, "sharingOptions") & 0x20) != 0))
    {
      v35 = brc_bread_crumbs();
      v36 = brc_default_log();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        [BRCSyncUpOperationBuilder addEditOfDocument:];
      }

      v27 = 0;
    }
  }

  else
  {
    isSharedToMeChildItem = v26 | v23;
  }

  v37 = v25 | v13;
  v38 = [(BRCSyncUpOperationBuilder *)self shouldPCSChainStatusForItem:documentCopy];
  if (((v38 & 4) == 0) | v27 & 1)
  {
    v39 = v38;
  }

  else
  {
    v39 = 2;
  }

  if (isSharedToMeChildItem & 1 | ((v38 & 6) == 0))
  {
    v40 = v39;
  }

  else
  {
    v40 = 1;
  }

  v41 = v40;
  if ((v40 & 0xC) != 0)
  {
    v42 = brc_bread_crumbs();
    v43 = brc_default_log();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      [BRCSyncUpOperationBuilder addEditOfDocument:];
    }

    isSharedToMeChildItem = 1;
  }

  else if ((v27 & 1) == 0)
  {
    v150 = v40;
    v48 = 0;
    uploadedAssets = 0;
    v53 = 0;
    goto LABEL_49;
  }

  currentVersion2 = [documentCopy currentVersion];
  uploadedAssets = [currentVersion2 uploadedAssets];

  if ([uploadedAssets brc_isfakeRecordWithErrorMarkerFor20716676])
  {
    v46 = brc_bread_crumbs();
    v47 = brc_default_log();
    if (os_log_type_enabled(v47, 0x90u))
    {
      [BRCSyncUpOperationBuilder addEditOfDocument:];
    }

    [documentCopy markForceUpload];
    [documentCopy saveToDB];
    v48 = 0;
    goto LABEL_62;
  }

  if (uploadedAssets)
  {
    v49 = -1.0;
    if (![(BRCSyncUpOperationBuilder *)self _validateSharedDocumentFieldsForRecord:uploadedAssets item:documentCopy])
    {
      v48 = 0;
      goto LABEL_63;
    }

    v50 = [uploadedAssets objectForKeyedSubscript:@"thumb1024"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v150 = v41;
    if (isKindOfClass)
    {
      v52 = [uploadedAssets objectForKeyedSubscript:@"thumb1024"];
      if ([v52 isRereferencedAssetUpload])
      {
        v48 = 0;
      }

      else
      {
        fileURL = [v52 fileURL];
        v154 = 0;
        v77 = [fileURL checkResourceIsReachableAndReturnError:&v154];
        v143 = v154;

        if ((v77 & 1) == 0)
        {
          v107 = brc_bread_crumbs();
          v108 = brc_default_log();
          if (os_log_type_enabled(v108, 0x90u))
          {
            [BRCSyncUpOperationBuilder addEditOfDocument:];
          }

          [documentCopy markForceUpload];
          [documentCopy saveToDB];

          v62 = v152;
          v48 = v143;
          goto LABEL_64;
        }

        v48 = v143;
      }
    }

    else
    {
      v48 = 0;
    }

    currentVersion3 = [documentCopy currentVersion];
    isPackage = [currentVersion3 isPackage];

    v148 = v37;
    if (isPackage)
    {
      v144 = v48;
      v80 = [uploadedAssets objectForKeyedSubscript:@"pkgContent"];
      if (v80)
      {
        v81 = v80;
        v82 = [uploadedAssets objectForKeyedSubscript:@"pkgManifest"];
        if (v82)
        {
          v83 = v82;
          v84 = [uploadedAssets objectForKeyedSubscript:@"pkgSignature"];

          if (v84)
          {
            v85 = [uploadedAssets objectForKeyedSubscript:@"pkgContent"];
            v86 = [uploadedAssets objectForKeyedSubscript:@"pkgManifest"];
            v87 = [uploadedAssets objectForKeyedSubscript:@"thumb1024"];
            Current = CFAbsoluteTimeGetCurrent();
            v48 = v144;
            if ([v86 size] && (objc_msgSend(v86, "uploadReceiptExpiration"), v89 < Current) || objc_msgSend(v87, "size") && (objc_msgSend(v87, "uploadReceiptExpiration"), v90 < Current))
            {
              v91 = brc_bread_crumbs();
              v92 = brc_default_log();
              if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v156 = documentCopy;
                v157 = 2112;
                v158 = v91;
                _os_log_impl(&dword_223E7A000, v92, OS_LOG_TYPE_DEFAULT, "[WARNING] Forcing re-upload of an item which has an expired put receipt - %@%@", buf, 0x16u);
              }

              [documentCopy markForceUpload];
              [documentCopy saveToDB];

LABEL_131:
              goto LABEL_63;
            }

            goto LABEL_144;
          }
        }

        else
        {
        }
      }

      v109 = brc_bread_crumbs();
      v110 = brc_default_log();
      v48 = v144;
      if (os_log_type_enabled(v110, OS_LOG_TYPE_FAULT))
      {
        [BRCSyncUpOperationBuilder addEditOfDocument:];
      }

LABEL_120:

      [documentCopy markForceUpload];
      [documentCopy saveToDB];
      goto LABEL_63;
    }

    v93 = [uploadedAssets objectForKeyedSubscript:@"fileContent"];
    if (v93)
    {
    }

    else
    {
      v94 = [uploadedAssets objectForKeyedSubscript:@"bookmarkContent"];

      if (!v94)
      {
        v109 = brc_bread_crumbs();
        v110 = brc_default_log();
        if (os_log_type_enabled(v110, OS_LOG_TYPE_FAULT))
        {
          [BRCSyncUpOperationBuilder addEditOfDocument:];
        }

        goto LABEL_120;
      }
    }

    v85 = [uploadedAssets objectForKeyedSubscript:@"fileContent"];
    v95 = [uploadedAssets objectForKeyedSubscript:@"thumb1024"];
    v96 = CFAbsoluteTimeGetCurrent();
    if ([v85 size])
    {
      [v85 uploadReceiptExpiration];
      if (v97 >= v96)
      {
        v145 = v48;
        v98 = v85;
        deviceID = [v85 deviceID];
        longLongValue = [deviceID longLongValue];
        volume = [(BRCSessionContext *)self->_sessionContext volume];
        if (longLongValue == [volume deviceID])
        {
          if (![v95 size])
          {

            v48 = v145;
            v85 = v98;
LABEL_143:

LABEL_144:
            goto LABEL_145;
          }

          [v95 uploadReceiptExpiration];
          v103 = v102;

          v48 = v145;
          v85 = v98;
          if (v103 >= v96)
          {
            goto LABEL_143;
          }
        }

        else
        {

          v48 = v145;
          v85 = v98;
        }
      }
    }

    else
    {
      if (![v95 size])
      {
        goto LABEL_143;
      }

      [v95 uploadReceiptExpiration];
      if (v104 >= v96)
      {
        goto LABEL_143;
      }
    }

    v111 = brc_bread_crumbs();
    v112 = brc_default_log();
    if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v156 = documentCopy;
      v157 = 2112;
      v158 = v111;
      _os_log_impl(&dword_223E7A000, v112, OS_LOG_TYPE_DEFAULT, "[WARNING] Forcing re-upload of an item which has an expired put receipt - %@%@", buf, 0x16u);
    }

    [documentCopy markForceUpload];
    [documentCopy saveToDB];

    goto LABEL_131;
  }

  if ([documentCopy contentRecordNeedsForceAllFieldsWhenDeadInServerTruth:isDeadOrMissingInServerTruth])
  {
    v65 = brc_bread_crumbs();
    v66 = brc_default_log();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
    {
      [BRCSyncUpOperationBuilder addEditOfDocument:];
    }

    [documentCopy markForceUpload];
    [documentCopy saveToDB];
    v48 = 0;
    goto LABEL_61;
  }

  v148 = v37;
  v150 = v41;
  uploadedAssets = [documentCopy baseRecord];
  v48 = 0;
LABEL_145:
  v117 = v48;
  localDiffs3 = [documentCopy localDiffs];
  v119 = [(BRCSyncUpOperationBuilder *)self _getSaltForItem:documentCopy];
  v153 = v48;
  LOBYTE(localDiffs3) = [uploadedAssets serializeVersion:documentCopy diffs:localDiffs3 deadInServerTruth:isDeadOrMissingInServerTruth basehashSalt:v119 error:&v153];
  v48 = v153;

  if ((localDiffs3 & 1) == 0)
  {
    v136 = brc_bread_crumbs();
    v137 = brc_default_log();
    v62 = v152;
    if (os_log_type_enabled(v137, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v156 = v48;
      v157 = 2112;
      v158 = documentCopy;
      v159 = 2112;
      v160 = v136;
      _os_log_debug_impl(&dword_223E7A000, v137, OS_LOG_TYPE_DEBUG, "[DEBUG] Error creating record %@ for item %@%@", buf, 0x20u);
    }

    v49 = -1.0;
    goto LABEL_64;
  }

  session = [documentCopy session];
  v121 = [uploadedAssets validateEnhancedDrivePrivacyFieldsWithSession:session error:0];

  v49 = -1.0;
  if (!v121)
  {
    goto LABEL_63;
  }

  resolvedConflictLoserEtags = [documentCopy resolvedConflictLoserEtags];
  if ([resolvedConflictLoserEtags count])
  {
    allObjects = [resolvedConflictLoserEtags allObjects];
    conflictLosersToResolveByRecordID = [(BRCSyncUpOperation *)v152 conflictLosersToResolveByRecordID];
    recordID = [uploadedAssets recordID];
    [conflictLosersToResolveByRecordID setObject:allObjects forKeyedSubscript:recordID];
  }

  v142 = resolvedConflictLoserEtags;
  v53 = uploadedAssets != 0;
  v37 = v148;
  if (!uploadedAssets)
  {
    goto LABEL_162;
  }

  if ((v150 & 0x2C) != 0)
  {
    itemID2 = [documentCopy itemID];
    serverZone2 = [documentCopy serverZone];
    zoneID = [serverZone2 zoneID];
    [itemID2 pcsChainDocumentStructureReferenceInZoneID:zoneID];
    v129 = v128 = v48;
    [uploadedAssets setParent:v129];

    v48 = v128;
  }

  v130 = brc_bread_crumbs();
  v131 = brc_default_log();
  if (os_log_type_enabled(v131, OS_LOG_TYPE_DEBUG))
  {
    v147 = v48;
    if ((v150 & 0x2C) != 0)
    {
      v139 = "pcs chained ";
    }

    else
    {
      v139 = "";
    }

    v140 = [uploadedAssets description];
    *buf = 136315650;
    v156 = v139;
    v48 = v147;
    v157 = 2112;
    v158 = v140;
    v159 = 2112;
    v160 = v130;
    _os_log_debug_impl(&dword_223E7A000, v131, OS_LOG_TYPE_DEBUG, "[DEBUG] Syncing up %sversion record %@%@", buf, 0x20u);
  }

  v132 = brc_bread_crumbs();
  v133 = brc_default_log();
  if (os_log_type_enabled(v133, OS_LOG_TYPE_DEBUG))
  {
    v141 = "";
    *buf = 138412802;
    v156 = documentCopy;
    if (isDeadOrMissingInServerTruth)
    {
      v141 = "\n(dead in server truth)";
    }

    v157 = 2080;
    v158 = v141;
    v159 = 2112;
    v160 = v132;
    _os_log_debug_impl(&dword_223E7A000, v133, OS_LOG_TYPE_DEBUG, "[DEBUG] for %@%s%@", buf, 0x20u);
  }

  recordsToSave = [(BRCSyncUpOperation *)v152 recordsToSave];
  [recordsToSave addObject:uploadedAssets];

  v37 = v148;
  if (v151)
  {
    recordsNeedingUpdatedSharingProtectionInfo = [(BRCSyncUpOperation *)v152 recordsNeedingUpdatedSharingProtectionInfo];
LABEL_161:
    v138 = recordsNeedingUpdatedSharingProtectionInfo;
    [recordsNeedingUpdatedSharingProtectionInfo addObject:uploadedAssets];

    goto LABEL_162;
  }

  if (v148)
  {
    recordsNeedingUpdatedSharingProtectionInfo = [(BRCSyncUpOperation *)v152 recordsNeedingNewSharingProtectionInfo];
    goto LABEL_161;
  }

LABEL_162:

LABEL_49:
  if ([documentCopy hasShareIDAndIsOwnedByMe])
  {
    asShareableItem = [documentCopy asShareableItem];
    [(BRCSyncUpOperationBuilder *)self handleEditOfSharedItem:asShareableItem];
  }

  if ((isSharedToMeChildItem & 1) == 0)
  {
    if (!v53)
    {
      v62 = v152;
      serverZone3 = [(BRCSyncUpOperation *)v152 serverZone];
      [(BRCSyncUpOperationBuilder *)self fakeSyncForItem:documentCopy serverItem:0 inZone:serverZone3];
      v49 = v69;

      goto LABEL_64;
    }

    v62 = v152;
    goto LABEL_76;
  }

  stageID = [(BRCSyncUpOperation *)v152 stageID];
  _generateSaltGetterBlock = [(BRCSyncUpOperationBuilder *)self _generateSaltGetterBlock];
  v57 = [documentCopy structureRecordBeingDeadInServerTruth:isDeadOrMissingInServerTruth stageID:stageID shouldPCSChainStatus:v150 saltGetter:_generateSaltGetterBlock childBasehashSaltGetter:0];

  if (!v57)
  {
LABEL_61:
    uploadedAssets = 0;
LABEL_62:
    v49 = -1.0;
LABEL_63:
    v62 = v152;
    goto LABEL_64;
  }

  v58 = brc_bread_crumbs();
  v59 = brc_default_log();
  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
  {
    v113 = "";
    if (v150 == 2)
    {
      v113 = "half chained ";
    }

    v149 = v37;
    if ((v150 & 0x2C) != 0)
    {
      v114 = "pcs chained ";
    }

    else
    {
      v114 = v113;
    }

    v115 = [v57 description];
    *buf = 136315650;
    v156 = v114;
    v37 = v149;
    v157 = 2112;
    v158 = v115;
    v159 = 2112;
    v160 = v58;
    _os_log_debug_impl(&dword_223E7A000, v59, OS_LOG_TYPE_DEBUG, "[DEBUG] Syncing up %sdocument structure record %@%@", buf, 0x20u);
  }

  v60 = brc_bread_crumbs();
  v61 = brc_default_log();
  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
  {
    v116 = "";
    *buf = 138412802;
    v156 = documentCopy;
    if (isDeadOrMissingInServerTruth)
    {
      v116 = "\n(dead in server truth)";
    }

    v157 = 2080;
    v158 = v116;
    v159 = 2112;
    v160 = v60;
    _os_log_debug_impl(&dword_223E7A000, v61, OS_LOG_TYPE_DEBUG, "[DEBUG] for %@%s%@", buf, 0x20u);
  }

  v62 = v152;
  recordsToSave2 = [(BRCSyncUpOperation *)v152 recordsToSave];
  [recordsToSave2 addObject:v57];

  if (v151)
  {
    recordsNeedingUpdatedSharingProtectionInfo2 = [(BRCSyncUpOperation *)v152 recordsNeedingUpdatedSharingProtectionInfo];
LABEL_73:
    v70 = recordsNeedingUpdatedSharingProtectionInfo2;
    [recordsNeedingUpdatedSharingProtectionInfo2 addObject:v57];

    goto LABEL_74;
  }

  if (v37)
  {
    recordsNeedingUpdatedSharingProtectionInfo2 = [(BRCSyncUpOperation *)v152 recordsNeedingNewSharingProtectionInfo];
    goto LABEL_73;
  }

LABEL_74:
  if (v53)
  {
    uploadedAssets = v57;
LABEL_76:
    isInDocumentScope = [documentCopy isInDocumentScope];
    if ([documentCopy isFromInitialScan])
    {
      [(BRCUserDefaults *)self->_defaults syncUpInitialItemCost];
    }

    else
    {
      isKnownByServer = [documentCopy isKnownByServer];
      defaults = self->_defaults;
      if (isKnownByServer)
      {
        if (isInDocumentScope)
        {
          [(BRCUserDefaults *)defaults syncUpDocumentEditCost];
        }

        else
        {
          [(BRCUserDefaults *)defaults syncUpDataEditCost];
        }
      }

      else if (isInDocumentScope)
      {
        [(BRCUserDefaults *)defaults syncUpDocumentCreateCost];
      }

      else
      {
        [(BRCUserDefaults *)defaults syncUpDataCreateCost];
      }
    }

    v49 = v72;
    goto LABEL_64;
  }

  if ([documentCopy isFromInitialScan])
  {
    [(BRCUserDefaults *)self->_defaults syncUpInitialItemCost];
  }

  else
  {
    isKnownByServer2 = [documentCopy isKnownByServer];
    v106 = self->_defaults;
    if (isKnownByServer2)
    {
      [(BRCUserDefaults *)v106 syncUpStructureEditCost];
    }

    else
    {
      [(BRCUserDefaults *)v106 syncUpStructureCreateCost];
    }
  }

  v49 = v75;
  uploadedAssets = v57;
LABEL_64:

  return v49;
}

- (float)addEditOfFinderBookmark:(id)bookmark
{
  v60 = *MEMORY[0x277D85DE8];
  bookmarkCopy = bookmark;
  isDeadOrMissingInServerTruth = [bookmarkCopy isDeadOrMissingInServerTruth];
  if ((isDeadOrMissingInServerTruth & 1) == 0)
  {
    v6 = [bookmarkCopy st];
    ckInfo = [v6 ckInfo];
    etag = [ckInfo etag];
    if (etag)
    {
      v9 = etag;
      currentVersion = [bookmarkCopy currentVersion];
      ckInfo2 = [currentVersion ckInfo];
      etag2 = [ckInfo2 etag];

      if (etag2)
      {
        v13 = ([bookmarkCopy localDiffs] & 0x3FFE) != 0;
        v14 = ([bookmarkCopy localDiffs] & 0x1FE0000) != 0;
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v13 = 1;
  v14 = 1;
LABEL_7:
  v15 = [(BRCSyncUpOperationBuilder *)self shouldPCSChainStatusForItem:bookmarkCopy];
  v16 = v15 & 0x2C;
  currentVersion2 = [bookmarkCopy currentVersion];
  uploadedAssets = [currentVersion2 uploadedAssets];

  if (uploadedAssets)
  {
    goto LABEL_13;
  }

  if (![bookmarkCopy contentRecordNeedsForceAllFieldsWhenDeadInServerTruth:isDeadOrMissingInServerTruth])
  {
    uploadedAssets = [bookmarkCopy baseRecord];
LABEL_13:
    v22 = (v15 & 0x2C) != 0 || v13;
    if (!v14 && (v15 & 0x2C) == 0 && !v13)
    {
      serverZone = [(BRCSyncUpOperation *)self->_op serverZone];
      [(BRCSyncUpOperationBuilder *)self fakeSyncForItem:bookmarkCopy serverItem:0 inZone:serverZone];
      v21 = v29;

LABEL_37:
      goto LABEL_38;
    }

    v23 = [(BRCSyncUpOperationBuilder *)self _getSaltForItem:bookmarkCopy];
    if (v14)
    {
      v53 = 0;
      v24 = [uploadedAssets serializeVersion:bookmarkCopy diffs:objc_msgSend(bookmarkCopy deadInServerTruth:"localDiffs") basehashSalt:isDeadOrMissingInServerTruth error:{v23, &v53}];
      v25 = v53;
      if ((v24 & 1) == 0)
      {
        v26 = brc_bread_crumbs();
        v27 = brc_default_log();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412802;
          v55 = v25;
          v56 = 2112;
          v57 = bookmarkCopy;
          v58 = 2112;
          v59 = v26;
          _os_log_debug_impl(&dword_223E7A000, v27, OS_LOG_TYPE_DEBUG, "[DEBUG] Error creating record %@ for item %@%@", buf, 0x20u);
        }

        v21 = -1.0;
        goto LABEL_36;
      }
    }

    else
    {
      v25 = 0;
    }

    if (v22)
    {
      v51 = v23;
      v30 = v25;
      localDiffs = [bookmarkCopy localDiffs];
      stageID = [(BRCSyncUpOperation *)self->_op stageID];
      _generateSaltGetterBlock = [(BRCSyncUpOperationBuilder *)self _generateSaltGetterBlock];
      v52 = 0;
      LOBYTE(localDiffs) = [uploadedAssets serializeStatInfo:bookmarkCopy diffs:localDiffs stageID:stageID deadInServerTruth:isDeadOrMissingInServerTruth shouldPCSChainStatus:v15 basehashSaltGetter:_generateSaltGetterBlock childBasehashSaltGetter:0 error:&v52];
      v34 = v52;

      if ((localDiffs & 1) == 0)
      {
        v41 = brc_bread_crumbs();
        v42 = brc_default_log();
        v25 = v30;
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412802;
          v55 = v34;
          v56 = 2112;
          v57 = bookmarkCopy;
          v58 = 2112;
          v59 = v41;
          _os_log_debug_impl(&dword_223E7A000, v42, OS_LOG_TYPE_DEBUG, "[DEBUG] Error creating record %@ for item %@%@", buf, 0x20u);
        }

        v21 = -1.0;
        v23 = v51;
        goto LABEL_36;
      }

      v25 = v30;
      v23 = v51;
    }

    v21 = -1.0;
    if ([(BRCSyncUpOperationBuilder *)self _validateSharedDocumentFieldsForRecord:uploadedAssets item:bookmarkCopy])
    {
      v35 = brc_bread_crumbs();
      v36 = brc_default_log();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        if (v16)
        {
          v46 = "pcs chained ";
        }

        else
        {
          v46 = "";
        }

        [uploadedAssets description];
        v47 = v23;
        v49 = v48 = v25;
        *buf = 136315650;
        v55 = v46;
        v56 = 2112;
        v57 = v49;
        v58 = 2112;
        v59 = v35;
        _os_log_debug_impl(&dword_223E7A000, v36, OS_LOG_TYPE_DEBUG, "[DEBUG] Syncing up %sfinder alias record %@%@", buf, 0x20u);

        v25 = v48;
        v23 = v47;
      }

      v37 = brc_bread_crumbs();
      v38 = brc_default_log();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        v50 = "";
        *buf = 138412802;
        v55 = bookmarkCopy;
        if (isDeadOrMissingInServerTruth)
        {
          v50 = "\n(dead in server truth)";
        }

        v56 = 2080;
        v57 = v50;
        v58 = 2112;
        v59 = v37;
        _os_log_debug_impl(&dword_223E7A000, v38, OS_LOG_TYPE_DEBUG, "[DEBUG] for %@%s%@", buf, 0x20u);
      }

      recordsToSave = [(BRCSyncUpOperation *)self->_op recordsToSave];
      [recordsToSave addObject:uploadedAssets];

      if ([bookmarkCopy isFromInitialScan])
      {
        [(BRCUserDefaults *)self->_defaults syncUpInitialItemCost];
      }

      else
      {
        isKnownByServer = [bookmarkCopy isKnownByServer];
        defaults = self->_defaults;
        if (isKnownByServer)
        {
          [(BRCUserDefaults *)defaults syncUpStructureEditCost];
        }

        else
        {
          [(BRCUserDefaults *)defaults syncUpStructureCreateCost];
        }
      }

      v21 = v40;
    }

LABEL_36:

    goto LABEL_37;
  }

  v19 = brc_bread_crumbs();
  v20 = brc_default_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    [BRCSyncUpOperationBuilder addEditOfDocument:];
  }

  [bookmarkCopy markForceUpload];
  [bookmarkCopy saveToDB];
  v21 = -1.0;
LABEL_38:

  return v21;
}

- (float)addDeletionOfFinderBookmark:(id)bookmark
{
  op = self->_op;
  bookmarkCopy = bookmark;
  deletedRecordIDs = [(BRCSyncUpOperation *)op deletedRecordIDs];
  documentRecordID = [bookmarkCopy documentRecordID];

  [deletedRecordIDs addObject:documentRecordID];
  defaults = self->_defaults;

  [(BRCUserDefaults *)defaults syncUpDocumentDeleteCost];
  return result;
}

- (float)addEditOfSymlink:(id)symlink
{
  v30 = *MEMORY[0x277D85DE8];
  symlinkCopy = symlink;
  isDeadOrMissingInServerTruth = [symlinkCopy isDeadOrMissingInServerTruth];
  v6 = [(BRCSyncUpOperationBuilder *)self shouldPCSChainStatusForItem:symlinkCopy];
  stageID = [(BRCSyncUpOperation *)self->_op stageID];
  _generateSaltGetterBlock = [(BRCSyncUpOperationBuilder *)self _generateSaltGetterBlock];
  v9 = [symlinkCopy structureRecordBeingDeadInServerTruth:isDeadOrMissingInServerTruth stageID:stageID shouldPCSChainStatus:v6 saltGetter:_generateSaltGetterBlock childBasehashSaltGetter:0];

  if (v9)
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      if ((v6 & 0x2C) != 0)
      {
        v18 = "pcs chained ";
      }

      else
      {
        v18 = "";
      }

      v19 = [v9 description];
      v20 = v19;
      v21 = "\n(dead in server truth)";
      v22 = 136315906;
      v23 = v18;
      if (!isDeadOrMissingInServerTruth)
      {
        v21 = "";
      }

      v24 = 2112;
      v25 = v19;
      v26 = 2080;
      v27 = v21;
      v28 = 2112;
      v29 = v10;
      _os_log_debug_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] Syncing up %ssymlink record %@%s%@", &v22, 0x2Au);
    }

    recordsToSave = [(BRCSyncUpOperation *)self->_op recordsToSave];
    [recordsToSave addObject:v9];

    if ([symlinkCopy isFromInitialScan])
    {
      [(BRCUserDefaults *)self->_defaults syncUpInitialItemCost];
    }

    else
    {
      isKnownByServer = [symlinkCopy isKnownByServer];
      defaults = self->_defaults;
      if (isKnownByServer)
      {
        [(BRCUserDefaults *)defaults syncUpStructureEditCost];
      }

      else
      {
        [(BRCUserDefaults *)defaults syncUpStructureCreateCost];
      }
    }

    v14 = v13;
  }

  else
  {
    v14 = -1.0;
  }

  return v14;
}

- (float)addItem:(id)item
{
  v53 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  appLibrary = [itemCopy appLibrary];

  if (!appLibrary)
  {
    v18 = +[BRCAutoBugCaptureReporter sharedABCReporter];
    [v18 captureLogsForOperationType:@"SyncHealth" ofSubtype:@"SyncUp" withContext:@"AppLibrary is nil"];

    analyticsReporter = [(BRCSessionContext *)self->_sessionContext analyticsReporter];
    [analyticsReporter aggregateReportForAppTelemetryIdentifier:216 error:0];

    v6 = -1.0;
    goto LABEL_18;
  }

  [(BRCSyncUpOperationBuilder *)self prepareAppLibraryRootSyncUpForItem:itemCopy];
  v6 = -1.0;
  if ([(BRCSyncUpOperationBuilder *)self checkIfSyncAllowedInSharedZoneForItem:itemCopy]&& ![(BRCSyncUpOperationBuilder *)self _checkIfShouldDedicateOpToSaltingBasehashItem:itemCopy]&& ![(BRCSyncUpOperationBuilder *)self _checkIfShouldDedicateOpToPCSChainingItem:itemCopy])
  {
    serverZone = [(BRCSyncUpOperation *)self->_op serverZone];
    mangledID = [serverZone mangledID];
    v9 = [BRCUserDefaults defaultsForMangledID:mangledID];
    preventRecordSyncWithoutDiffs = [v9 preventRecordSyncWithoutDiffs];

    if (!preventRecordSyncWithoutDiffs)
    {
      goto LABEL_10;
    }

    clientZone = [itemCopy clientZone];
    itemID = [itemCopy itemID];
    v13 = [clientZone serverItemByItemID:itemID];

    if (!v13 || (v14 = [itemCopy diffAgainstServerItem:v13], (objc_msgSend(itemCopy, "metadataSyncUpMask:", 1) & v14) != 0) || (objc_msgSend(itemCopy, "forceNeedsSyncUpWithoutDiffs") & 1) != 0)
    {

LABEL_10:
      if ([itemCopy isDead])
      {
        if ([itemCopy isDeadOrMissingInServerTruth])
        {
          if ([itemCopy isSharedToMeTopLevelItem])
          {
            asSharedToMeTopLevelItem = [itemCopy asSharedToMeTopLevelItem];
            [asSharedToMeTopLevelItem insertTombstoneAliasRecordInZone:0];
          }

          v16 = brc_bread_crumbs();
          v17 = brc_default_log();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            [BRCSyncUpOperationBuilder addItem:];
          }

          [itemCopy markNeedsDeleteWhenAlreadyDeadInServerTruth];
          [itemCopy saveToDB];
          goto LABEL_18;
        }

        v42 = 0;
        v43 = 0;
        v44 = 0;
        __brc_create_section(0, "[BRCSyncUpOperationBuilder addItem:]", 1142, 0, &v42);
        v25 = brc_bread_crumbs();
        v26 = brc_default_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          v38 = v42;
          v39 = [itemCopy st];
          v40 = BRCPrettyPrintEnumWithContext([v39 type], &brc_item_type_pretty_entries, 0);
          *buf = 134218754;
          v46 = v38;
          v47 = 2112;
          v48 = v40;
          v49 = 2112;
          v50 = itemCopy;
          v51 = 2112;
          v52 = v25;
          _os_log_debug_impl(&dword_223E7A000, v26, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Deleting %@ record for %@%@", buf, 0x2Au);
        }

        if ([itemCopy isSharedToMeTopLevelItem])
        {
          asSharedToMeTopLevelItem2 = [itemCopy asSharedToMeTopLevelItem];
          [(BRCSyncUpOperationBuilder *)self addDeletionOfSharedTopLevelItem:asSharedToMeTopLevelItem2];
        }

        else if ([itemCopy isFinderBookmark])
        {
          asSharedToMeTopLevelItem2 = [itemCopy asFinderBookmark];
          [(BRCSyncUpOperationBuilder *)self addDeletionOfFinderBookmark:asSharedToMeTopLevelItem2];
        }

        else if ([itemCopy isDocument])
        {
          asSharedToMeTopLevelItem2 = [itemCopy asDocument];
          [(BRCSyncUpOperationBuilder *)self addDeletionOfDocument:asSharedToMeTopLevelItem2];
        }

        else if ([itemCopy isDirectory])
        {
          asSharedToMeTopLevelItem2 = [itemCopy asDirectory];
          [(BRCSyncUpOperationBuilder *)self addDeletionOfDirectory:asSharedToMeTopLevelItem2];
        }

        else
        {
          if (![itemCopy isBRAlias])
          {
            [(BRCSyncUpOperationBuilder *)self addDeletionOfItem:itemCopy];
            v6 = v41;
            goto LABEL_49;
          }

          asSharedToMeTopLevelItem2 = [itemCopy asBRAlias];
          [(BRCSyncUpOperationBuilder *)self addDeletionOfAlias:asSharedToMeTopLevelItem2];
        }

        v6 = v28;

LABEL_49:
        __brc_leave_section(&v42);
LABEL_50:
        if (v6 >= 0.0)
        {
          serverZone2 = [(BRCSyncUpOperation *)self->_op serverZone];
          [itemCopy prepareForSyncUpInZone:serverZone2];
        }

        goto LABEL_18;
      }

      v42 = 0;
      v43 = 0;
      v44 = 0;
      __brc_create_section(0, "[BRCSyncUpOperationBuilder addItem:]", 1158, 0, &v42);
      v21 = brc_bread_crumbs();
      v22 = brc_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v33 = v42;
        itemID2 = [itemCopy itemID];
        debugItemIDString = [itemID2 debugItemIDString];
        *buf = 134218498;
        v46 = v33;
        v47 = 2112;
        v48 = debugItemIDString;
        v49 = 2112;
        v50 = v21;
        _os_log_debug_impl(&dword_223E7A000, v22, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx preparing sync-up of %@%@", buf, 0x20u);
      }

      if ([itemCopy isSharedToMeTopLevelItem])
      {
        asSharedToMeTopLevelItem3 = [itemCopy asSharedToMeTopLevelItem];
        [(BRCSyncUpOperationBuilder *)self addEditOfSharedTopLevelItem:asSharedToMeTopLevelItem3];
      }

      else if ([itemCopy isFinderBookmark])
      {
        asSharedToMeTopLevelItem3 = [itemCopy asFinderBookmark];
        [(BRCSyncUpOperationBuilder *)self addEditOfFinderBookmark:asSharedToMeTopLevelItem3];
      }

      else if ([itemCopy isSymLink])
      {
        asSharedToMeTopLevelItem3 = [itemCopy asSymlink];
        [(BRCSyncUpOperationBuilder *)self addEditOfSymlink:asSharedToMeTopLevelItem3];
      }

      else if ([itemCopy isDocument])
      {
        asSharedToMeTopLevelItem3 = [itemCopy asDocument];
        [(BRCSyncUpOperationBuilder *)self addEditOfDocument:asSharedToMeTopLevelItem3];
      }

      else
      {
        if (![itemCopy isDirectory])
        {
          asSharedToMeTopLevelItem3 = brc_bread_crumbs();
          v37 = brc_default_log();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
          {
            [BRCSyncUpOperationBuilder addItem:];
          }

          v6 = 0.0;
          goto LABEL_45;
        }

        asSharedToMeTopLevelItem3 = [itemCopy asDirectory];
        [(BRCSyncUpOperationBuilder *)self addEditOfDirectory:asSharedToMeTopLevelItem3];
      }

      v6 = v24;
LABEL_45:

      __brc_leave_section(&v42);
      goto LABEL_50;
    }

    v29 = brc_bread_crumbs();
    v30 = brc_default_log();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v46 = itemCopy;
      v47 = 2112;
      v48 = v13;
      v49 = 2112;
      v50 = v29;
      _os_log_impl(&dword_223E7A000, v30, OS_LOG_TYPE_DEFAULT, "[WARNING] Faking sync for item because it doesn't have field differences with the server item %@ vs %@%@", buf, 0x20u);
    }

    serverZone3 = [(BRCSyncUpOperation *)self->_op serverZone];
    [(BRCSyncUpOperationBuilder *)self fakeSyncForItem:itemCopy serverItem:v13 inZone:serverZone3];
    v6 = v32;
  }

LABEL_18:

  return v6;
}

- (void)_checkIfShouldDedicateOpToSaltingBasehashItem:.cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: _parentItemIDToChildBasehashSalt[parentItemID] == nil%@", v5, v6, v7, v8);
  }
}

- (void)_checkIfShouldDedicateOpToSaltingBasehashItem:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 debugItemIDString];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1(&dword_223E7A000, v2, v3, "[DEBUG] Sync: Dedicating sync op to metadata salting %@%@", v4, v5, v6, v7);
}

- (void)_checkIfShouldDedicateOpToSaltingBasehashItem:.cold.3()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: _parentItemIDToChildBasehashSalt[item.itemID] == nil%@", v5, v6, v7, v8);
  }
}

- (void)_checkIfShouldDedicateOpToPCSChainingItem:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 itemID];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1(&dword_223E7A000, v2, v3, "[DEBUG] Sync: Dedicating sync op to pcs chaining %@%@", v4, v5, v6, v7);
}

- (void)checkIfSyncAllowedInSharedZoneForItem:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 itemID];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1(&dword_223E7A000, v2, v3, "[DEBUG] shared document %@ is read-only, do not sync%@", v4, v5, v6, v7);
}

- (void)addDeletionOfItem:.cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: !item.isSharedToMeTopLevelItem%@", v5, v6, v7, v8);
  }
}

- (void)_getSaltForItem:.cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: parentItemID != nil%@", v5, v6, v7, v8);
  }
}

- (void)addEditOfSharedTopLevelItem:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(&dword_223E7A000, v0, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: unsupported top level item kind%@", v1, 0xCu);
}

- (void)addEditOfSharedTopLevelItem:.cold.2()
{
  v0 = [0 description];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1(&dword_223E7A000, v1, v2, "[DEBUG] Fake syncing up shared folder record %@%@", v3, v4, v5, v6);
}

- (void)fakeSyncForItem:serverItem:inZone:.cold.2()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_15_0(v0, v1, v2, v3, v4);
}

- (void)addEditOfDirectory:.cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: record.encryptedValues[kBRRecordKeyChildBasehashSalt]%@", v5, v6, v7, v8);
  }
}

- (void)addDeletionOfDirectory:.cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: !item.isSharedToMeTopLevelItem%@", v5, v6, v7, v8);
  }
}

- (void)addDeletionOfAlias:.cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: !item.isSharedToMeTopLevelItem%@", v5, v6, v7, v8);
  }
}

- (void)addEditOfDocument:.cold.4()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_223E7A000, v0, 0x90u, "[ERROR] thumbnail not found.  Force upload again%@", v1, 0xCu);
}

- (void)addEditOfDocument:.cold.5()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_15_0(v0, v1, v2, v3, v4);
}

- (void)addEditOfDocument:.cold.6()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_15_0(v0, v1, v2, v3, v4);
}

- (void)addEditOfDocument:.cold.8()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v0, v1, 0x90u, v2, v3, 0x16u);
}

- (void)addItem:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_15_0(v0, v1, v2, v3, v4);
}

@end