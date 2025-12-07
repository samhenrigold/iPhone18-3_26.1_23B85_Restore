@interface BRCDownloadContent
- (BOOL)_prepareSecondStageWithManifest:(id)manifest package:(id)package error:(id *)error;
- (BOOL)_stageWithError:(id *)error;
- (BOOL)_stageWithManifest:(id)manifest package:(id)package xattrsPackage:(id)xattrsPackage error:(id *)error;
- (BRCDownloadContent)initWithDocument:(id)document stageID:(id)d etagIfLoser:(id)loser downloadKind:(int)kind downloadStager:(id)stager;
- (id)_getDesiredPackageIndicesUsingReader:(id)reader savedContentsURL:(id)l package:(id)package itemCount:(unint64_t)count error:(id *)error;
- (id)description;
- (id)etagIfLoser;
- (void)_prepareDataForPackageTwoPhaseDownloadIfNeededForItem:(id)item;
@end

@implementation BRCDownloadContent

- (id)etagIfLoser
{
  if (self->_isLoser)
  {
    return self->super._etag;
  }

  else
  {
    return 0;
  }
}

- (void)_prepareDataForPackageTwoPhaseDownloadIfNeededForItem:(id)item
{
  currentVersion = [item currentVersion];
  isPackage = [currentVersion isPackage];

  if (isPackage)
  {
    v16 = [(BRCDownloadStagingProtocol *)self->_downloadStager createURLForDownloadWithStageID:self->super._stageID name:@"brpackage-dlspec"];
    v6 = [MEMORY[0x277CFAE68] dataWithContentsOfURL:?];
    if (v6)
    {
      v7 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v6 error:0];
      v8 = [v7 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCA308]];
      desiredIndices = self->_desiredIndices;
      self->_desiredIndices = v8;
    }

    if (!self->_desiredIndices)
    {
      v10 = [(BRCDownloadStagingProtocol *)self->_downloadStager createURLForDownloadWithStageID:self->super._stageID name:@"brpackage-existing-content"];
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      path = [v10 path];
      v13 = [defaultManager fileExistsAtPath:path];

      if (v13)
      {
        v14 = objc_alloc_init(MEMORY[0x277CCAA78]);
        v15 = self->_desiredIndices;
        self->_desiredIndices = v14;

        self->_requiresTwoPhase = 1;
      }
    }
  }
}

- (BRCDownloadContent)initWithDocument:(id)document stageID:(id)d etagIfLoser:(id)loser downloadKind:(int)kind downloadStager:(id)stager
{
  documentCopy = document;
  loserCopy = loser;
  stagerCopy = stager;
  v24.receiver = self;
  v24.super_class = BRCDownloadContent;
  v15 = [(BRCDownload *)&v24 initWithDocument:documentCopy stageID:d];
  if (v15)
  {
    serverZone = [documentCopy serverZone];
    zone = v15->_zone;
    v15->_zone = serverZone;

    currentVersion = [documentCopy currentVersion];
    v15->super._totalSize = [currentVersion size];

    v15->_isFinderBookmark = [documentCopy isFinderBookmark];
    etag = loserCopy;
    if (!loserCopy)
    {
      etag = v15->super._etag;
    }

    objc_storeStrong(&v15->super._etag, etag);
    v15->_isLoser = loserCopy != 0;
    v15->_kind = kind;
    objc_storeStrong(&v15->_downloadStager, stager);
    currentVersion2 = [documentCopy currentVersion];
    dbFacade = [documentCopy dbFacade];
    v22 = [currentVersion2 lastEditorUserIdentityWithDBFacade:dbFacade];

    if (v22)
    {
      v15->_isDocumentModifiedByOtherUser = 1;
    }

    [(BRCDownloadContent *)v15 _prepareDataForPackageTwoPhaseDownloadIfNeededForItem:documentCopy];
  }

  return v15;
}

- (id)description
{
  if (self->_isLoser)
  {
    v2 = "loser";
  }

  else
  {
    v2 = "current";
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"<dl-content[%lld] %@_%@ %s>", self->super._throttleID, self->super._itemID, self->super._etag, v2];
}

- (id)_getDesiredPackageIndicesUsingReader:(id)reader savedContentsURL:(id)l package:(id)package itemCount:(unint64_t)count error:(id *)error
{
  v88 = *MEMORY[0x277D85DE8];
  readerCopy = reader;
  lCopy = l;
  packageCopy = package;
  v57 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v72 = 0;
  v73 = &v72;
  v74 = 0x3032000000;
  v75 = __Block_byref_object_copy__37;
  v76 = __Block_byref_object_dispose__37;
  v77 = 0;
  v10 = [BRCUserDefaults defaultsForMangledID:0];
  supportsEnhancedDrivePrivacy = [v10 supportsEnhancedDrivePrivacy];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v60 = 0;
  v12 = 0;
  v62 = 0;
  v13 = 0;
  v14 = "(passed to caller)";
  if (!error)
  {
    v14 = "(ignored by caller)";
  }

  v54 = v14;
  v56 = supportsEnhancedDrivePrivacy ^ 1;
  v55 = *MEMORY[0x277CFACB0];
  while (1)
  {
    nextObject = [readerCopy nextObject];

    if (!nextObject)
    {
      break;
    }

    v16 = objc_autoreleasePoolPush();
    if ([nextObject type] == 4)
    {
      ++v13;
    }

    else if ([nextObject type] == 2)
    {
      if (v13 >= count)
      {
        v32 = brc_bread_crumbs();
        v33 = brc_default_log();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
        {
          itemID = [(BRCDownload *)self itemID];
          *buf = 138413314;
          v79 = itemID;
          v80 = 2048;
          v81 = v13;
          v82 = 2048;
          countCopy = count;
          v84 = 2112;
          v85 = packageCopy;
          v86 = 2112;
          v87 = v32;
          _os_log_fault_impl(&dword_223E7A000, v33, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Package inside %@ is corrupted in the cloud\nAsking for asset index out of bounds %lu vs %lu in package: %@%@", buf, 0x34u);
        }

        v34 = MEMORY[0x277CCA9B8];
        itemID2 = [(BRCDownload *)self itemID];
        v36 = [v34 br_errorWithDomain:v55 code:15 description:{@"unreachable: Package inside %@ is corrupted in the cloud\nAsking for asset index out of bounds %lu vs %lu in package: %@", itemID2, v13, count, packageCopy}];

        if (v36)
        {
          v37 = brc_bread_crumbs();
          v38 = brc_default_log();
          if (os_log_type_enabled(v38, 0x90u))
          {
            *buf = 136315906;
            v79 = "[BRCDownloadContent _getDesiredPackageIndicesUsingReader:savedContentsURL:package:itemCount:error:]";
            v80 = 2080;
            v81 = v54;
            v82 = 2112;
            countCopy = v36;
            v84 = 2112;
            v85 = v37;
            _os_log_error_impl(&dword_223E7A000, v38, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
          }
        }

        if (error)
        {
          objc_storeStrong(error, v36);
        }

        if ([(BRCServerZone *)self->_zone isPrivateZone])
        {
          clientZone = [(BRCServerZone *)self->_zone clientZone];
          asPrivateClientZone = [clientZone asPrivateClientZone];
          recordID = [(BRCDownload *)self recordID];
          recordName = [recordID recordName];
          [asPrivateClientZone reportProblemWithType:9 recordName:recordName];
        }

        v31 = 1;
        goto LABEL_19;
      }

      if (((v56 | v60) & 1) == 0)
      {
        clientZone2 = [(BRCServerZone *)self->_zone clientZone];
        v18 = [clientZone2 db];
        serialQueue = [v18 serialQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __100__BRCDownloadContent__getDesiredPackageIndicesUsingReader_savedContentsURL_package_itemCount_error___block_invoke;
        block[3] = &unk_278500D08;
        v71 = &v72;
        v69 = clientZone2;
        selfCopy = self;
        v20 = clientZone2;
        dispatch_sync(serialQueue, block);

        v60 = 1;
      }

      path = [nextObject path];
      v22 = [lCopy URLByAppendingPathComponent:path];

      path2 = [v22 path];
      v24 = [defaultManager fileExistsAtPath:path2];

      if (!v24)
      {
        goto LABEL_44;
      }

      v25 = v73[5];
      v67 = v62;
      v26 = [BRCDocumentSignatureCalculator calculateSignatureForURL:v22 boundaryKey:v25 error:&v67];
      v27 = v67;
      v28 = v67;

      if (v28)
      {
        v62 = v28;
        v29 = brc_bread_crumbs();
        v30 = brc_default_log();
        if (os_log_type_enabled(v30, 0x90u))
        {
          *buf = 136315906;
          v79 = "[BRCDownloadContent _getDesiredPackageIndicesUsingReader:savedContentsURL:package:itemCount:error:]";
          v80 = 2080;
          v81 = v54;
          v82 = 2112;
          countCopy = v62;
          v84 = 2112;
          v85 = v29;
          _os_log_error_impl(&dword_223E7A000, v30, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
        }

        if (error)
        {
          objc_storeStrong(error, v27);
        }

        v31 = 1;
        goto LABEL_45;
      }

      v66 = 0;
      v43 = [packageCopy itemAtIndex:v13 error:&v66];
      v44 = v66;
      v45 = v66;
      v62 = v45;
      if (v43)
      {
        signature = [v43 signature];
        v47 = [v26 isEqualToData:signature];

        if (v47)
        {
          ++v13;
          v31 = 2;
          goto LABEL_42;
        }

LABEL_44:
        [v57 addIndex:v13];
        v31 = 0;
        ++v13;
      }

      else
      {
        v48 = v45;
        if (v48)
        {
          v53 = brc_bread_crumbs();
          v49 = brc_default_log();
          if (os_log_type_enabled(v49, 0x90u))
          {
            *buf = 136315906;
            v79 = "[BRCDownloadContent _getDesiredPackageIndicesUsingReader:savedContentsURL:package:itemCount:error:]";
            v80 = 2080;
            v81 = v54;
            v82 = 2112;
            countCopy = v48;
            v84 = 2112;
            v85 = v53;
            _os_log_error_impl(&dword_223E7A000, v49, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
          }
        }

        if (error)
        {
          objc_storeStrong(error, v44);
        }

        v31 = 1;
LABEL_42:
      }

LABEL_45:

      goto LABEL_19;
    }

    v31 = 2;
LABEL_19:
    objc_autoreleasePoolPop(v16);
    v12 = nextObject;
    if ((v31 | 2) != 2)
    {
      v51 = 0;
      goto LABEL_47;
    }
  }

  v51 = v57;
LABEL_47:

  _Block_object_dispose(&v72, 8);

  return v51;
}

void __100__BRCDownloadContent__getDesiredPackageIndicesUsingReader_savedContentsURL_package_itemCount_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[5] + 32);
  v7 = [v2 db];
  v4 = [v2 contentBoundaryKeyForItemID:v3 withDB:v7];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (BOOL)_prepareSecondStageWithManifest:(id)manifest package:(id)package error:(id *)error
{
  v37 = *MEMORY[0x277D85DE8];
  manifestCopy = manifest;
  packageCopy = package;
  itemCount = [packageCopy itemCount];
  v10 = [(BRCDownloadStagingProtocol *)self->_downloadStager createURLForDownloadWithStageID:self->super._stageID name:@"brpackage-existing-content"];
  memset(v28, 0, sizeof(v28));
  __brc_create_section(0, "[BRCDownloadContent _prepareSecondStageWithManifest:package:error:]", 373, 0, v28);
  v11 = brc_bread_crumbs();
  v12 = brc_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [BRCDownloadContent _prepareSecondStageWithManifest:package:error:];
  }

  v13 = [[BRCPackageManifestReader alloc] initWithAsset:manifestCopy];
  [(BRCPackageManifestReader *)v13 setItemClass:objc_opt_class()];
  v14 = [(BRCDownloadContent *)self _getDesiredPackageIndicesUsingReader:v13 savedContentsURL:v10 package:packageCopy itemCount:itemCount error:error];
  if (v14)
  {
    error = [(BRCPackageManifestReader *)v13 error];

    v16 = error == 0;
    if (error)
    {
      error2 = [(BRCPackageManifestReader *)v13 error];
      if (error2)
      {
        v18 = brc_bread_crumbs();
        v19 = brc_default_log();
        if (os_log_type_enabled(v19, 0x90u))
        {
          v26 = "(passed to caller)";
          *buf = 136315906;
          v30 = "[BRCDownloadContent _prepareSecondStageWithManifest:package:error:]";
          v31 = 2080;
          if (!error)
          {
            v26 = "(ignored by caller)";
          }

          v32 = v26;
          v33 = 2112;
          v34 = error2;
          v35 = 2112;
          v36 = v18;
          _os_log_error_impl(&dword_223E7A000, v19, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
        }
      }

      if (!error)
      {
        v16 = 0;
        goto LABEL_20;
      }

      error2 = error2;
      v20 = *error;
      *error = error2;
    }

    else
    {
      error2 = [(BRCDownloadStagingProtocol *)self->_downloadStager createURLForDownloadWithStageID:self->super._stageID name:@"brpackage-dlspec"];
      v20 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v14 requiringSecureCoding:1 error:0];
      if (([MEMORY[0x277CFAE68] writeData:v20 toURL:error2 atomically:1] & 1) == 0)
      {
        v21 = brc_bread_crumbs();
        v22 = brc_default_log();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
        {
          [BRCDownloadContent _prepareSecondStageWithManifest:v21 package:v22 error:?];
        }
      }

      v23 = brc_bread_crumbs();
      v24 = brc_default_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        v30 = v14;
        v31 = 2048;
        v32 = itemCount;
        v33 = 2112;
        v34 = v23;
        _os_log_debug_impl(&dword_223E7A000, v24, OS_LOG_TYPE_DEBUG, "[DEBUG] Desired indices are: %@ (itemCount: %ld)%@", buf, 0x20u);
      }
    }

LABEL_20:
    goto LABEL_21;
  }

  v16 = 0;
LABEL_21:

  __brc_leave_section(v28);
  return v16;
}

- (BOOL)_stageWithManifest:(id)manifest package:(id)package xattrsPackage:(id)xattrsPackage error:(id *)error
{
  v53 = *MEMORY[0x277D85DE8];
  manifestCopy = manifest;
  packageCopy = package;
  xattrsPackageCopy = xattrsPackage;
  v33 = [(BRCDownloadStagingProtocol *)self->_downloadStager createURLForDownloadWithStageID:self->super._stageID name:@"item"];
  v11 = [(BRCDownloadStagingProtocol *)self->_downloadStager createURLForDownloadWithStageID:self->super._stageID name:@"brpackage-extended"];
  desiredIndices = [(BRCDownloadContent *)self desiredIndices];

  if (!desiredIndices)
  {
    v13 = 0;
    goto LABEL_9;
  }

  v13 = [(BRCDownloadStagingProtocol *)self->_downloadStager createURLForDownloadWithStageID:self->super._stageID name:@"brpackage-existing-content"];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [v13 path];
  v16 = [defaultManager fileExistsAtPath:path];

  if (v16)
  {
LABEL_9:
    v22 = [[BRCPackageManifestReader alloc] initWithAsset:manifestCopy];
    v23 = [BRCPackageManifestWriter alloc];
    clientZone = [(BRCServerZone *)self->_zone clientZone];
    v25 = [(BRCPackageManifestWriter *)v23 initWithZone:clientZone stageID:self->super._stageID url:v11];

    v26 = MEMORY[0x277CBEBC0];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __69__BRCDownloadContent__stageWithManifest_package_xattrsPackage_error___block_invoke;
    v36[3] = &unk_278505478;
    v21 = v25;
    v37 = v21;
    v17 = v22;
    v38 = v17;
    v39 = packageCopy;
    v40 = xattrsPackageCopy;
    v41 = v33;
    v13 = v13;
    v42 = v13;
    selfCopy = self;
    errorCopy = error;
    [v26 br_setIOPolicy:1 type:7 forBlock:v36];
    fileURL = [manifestCopy fileURL];

    if (fileURL)
    {
      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      fileURL2 = [manifestCopy fileURL];
      [defaultManager2 removeItemAtURL:fileURL2 error:0];
    }

    error = [(BRCPackageManifestWriter *)v21 error];
    v20 = error == 0;

    goto LABEL_12;
  }

  v17 = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:2];
  if (v17)
  {
    v18 = brc_bread_crumbs();
    v19 = brc_default_log();
    if (os_log_type_enabled(v19, 0x90u))
    {
      v32 = "(passed to caller)";
      *buf = 136315906;
      v46 = "[BRCDownloadContent _stageWithManifest:package:xattrsPackage:error:]";
      v47 = 2080;
      if (!error)
      {
        v32 = "(ignored by caller)";
      }

      v48 = v32;
      v49 = 2112;
      v50 = v17;
      v51 = 2112;
      v52 = v18;
      _os_log_error_impl(&dword_223E7A000, v19, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    }
  }

  if (!error)
  {
    v20 = 0;
    goto LABEL_13;
  }

  v17 = v17;
  v20 = 0;
  v21 = *error;
  *error = v17;
LABEL_12:

LABEL_13:
  return v20;
}

void __69__BRCDownloadContent__stageWithManifest_package_xattrsPackage_error___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = [*(a1 + 80) recordID];
  v9 = [v8 recordName];
  LOBYTE(v16) = *(*(a1 + 80) + 144);
  LOBYTE(v2) = [v2 stagePackageWithReader:v3 package:v4 xattrsPackage:v5 stageItemURL:v6 existingContentsURL:v7 recordName:v9 isDocumentModifiedByOtherUser:v16];

  if ((v2 & 1) == 0)
  {
    v10 = [*(a1 + 32) error];
    if (v10)
    {
      v11 = brc_bread_crumbs();
      v12 = brc_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v14 = *(a1 + 88);
        *buf = 136315906;
        if (v14)
        {
          v15 = "(passed to caller)";
        }

        else
        {
          v15 = "(ignored by caller)";
        }

        v18 = "[BRCDownloadContent _stageWithManifest:package:xattrsPackage:error:]_block_invoke";
        v19 = 2080;
        v20 = v15;
        v21 = 2112;
        v22 = v10;
        v23 = 2112;
        v24 = v11;
        _os_log_debug_impl(&dword_223E7A000, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    v13 = *(a1 + 88);
    if (v13)
    {
      objc_storeStrong(v13, v10);
    }
  }
}

- (BOOL)_stageWithError:(id *)error
{
  v63 = *MEMORY[0x277D85DE8];
  isFinderBookmark = self->_isFinderBookmark;
  p_record = &self->super._record;
  record = self->super._record;
  if (isFinderBookmark)
  {
    v8 = kBRRecordKeyFinderBookmarkContent;
  }

  else
  {
    v8 = kBRRecordKeyFileContent;
  }

  v9 = [(CKRecord *)record objectForKeyedSubscript:*v8];
  if (v9)
  {
    v10 = v9;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [(BRCDownloadStagingProtocol *)self->_downloadStager createURLForDownloadWithStageID:self->super._stageID name:@"item"];
      fileURL = [v10 fileURL];

      if (fileURL)
      {
        v13 = v11 == 0;
      }

      else
      {
        v13 = 1;
      }

      if (v13)
      {
        v14 = brc_bread_crumbs();
        v15 = brc_default_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
        {
          fileURL2 = [v10 fileURL];
          *buf = 138412802;
          v56 = fileURL2;
          v57 = 2112;
          v58 = v11;
          v59 = 2112;
          v60 = v14;
          _os_log_fault_impl(&dword_223E7A000, v15, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: asset has a missing url (%@), or we can't compute the stage url %@%@", buf, 0x20u);
        }

        v16 = MEMORY[0x277CCA9B8];
        v17 = *MEMORY[0x277CFACB0];
        fileURL3 = [v10 fileURL];
        v40 = [v16 br_errorWithDomain:v17 code:15 description:{@"unreachable: asset has a missing url (%@), or we can't compute the stage url %@", fileURL3, v11}];

        if (v40)
        {
          v19 = brc_bread_crumbs();
          v20 = brc_default_log();
          if (os_log_type_enabled(v20, 0x90u))
          {
            v53 = "(passed to caller)";
            *buf = 136315906;
            v56 = "[BRCDownloadContent _stageWithError:]";
            v57 = 2080;
            if (!error)
            {
              v53 = "(ignored by caller)";
            }

            v58 = v53;
            v59 = 2112;
            v60 = v40;
            v61 = 2112;
            v62 = v19;
            _os_log_error_impl(&dword_223E7A000, v20, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
          }
        }

        if (error)
        {
          objc_storeStrong(error, v40);
        }

        v21 = 0;
      }

      else
      {
        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        fileURL4 = [v10 fileURL];
        v54 = 0;
        [defaultManager br_forceMoveItemAtURL:fileURL4 toURL:v11 error:&v54];
        v39 = v54;
        v40 = v54;

        if (error)
        {
          objc_storeStrong(error, v39);
        }

        v21 = v40 == 0;
      }

      goto LABEL_49;
    }

    v26 = brc_bread_crumbs();
    v27 = brc_default_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      [BRCDownloadContent _stageWithError:];
    }

    v11 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:{@"unreachable: file content is not a CKAsset: %@", *p_record}];
    if (v11)
    {
      v28 = brc_bread_crumbs();
      v29 = brc_default_log();
      if (os_log_type_enabled(v29, 0x90u))
      {
        v47 = "(passed to caller)";
        *buf = 136315906;
        v56 = "[BRCDownloadContent _stageWithError:]";
        v57 = 2080;
        if (!error)
        {
          v47 = "(ignored by caller)";
        }

        v58 = v47;
        v59 = 2112;
        v60 = v11;
        v61 = 2112;
        v62 = v28;
        _os_log_error_impl(&dword_223E7A000, v29, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (error)
    {
      objc_storeStrong(error, v11);
    }

LABEL_87:
    v21 = 0;
    goto LABEL_88;
  }

  if (!self->_isFinderBookmark)
  {
    v11 = [(CKRecord *)*p_record objectForKeyedSubscript:@"pkgContent"];
    v10 = [(CKRecord *)*p_record objectForKeyedSubscript:@"pkgManifest"];
    v40 = [(CKRecord *)*p_record objectForKeyedSubscript:@"pkgXattrs"];
    if (v11)
    {
      v30 = v10 == 0;
    }

    else
    {
      v30 = 1;
    }

    if (v30)
    {
      v31 = brc_bread_crumbs();
      v32 = brc_default_log();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
      {
        [BRCDownloadContent _stageWithError:];
      }

      v33 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:{@"unreachable: unknown type for downloaded object %@", *p_record}];
      if (!v33)
      {
        goto LABEL_84;
      }

      v34 = brc_bread_crumbs();
      v35 = brc_default_log();
      if (!os_log_type_enabled(v35, 0x90u))
      {
        goto LABEL_83;
      }

      v36 = "(passed to caller)";
      *buf = 136315906;
      v56 = "[BRCDownloadContent _stageWithError:]";
      v57 = 2080;
      if (!error)
      {
        v36 = "(ignored by caller)";
      }
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (!v40 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            if ([(BRCDownloadContent *)self requiresTwoPhase])
            {
              v42 = [(BRCDownloadContent *)self _prepareSecondStageWithManifest:v10 package:v11 error:error];
            }

            else
            {
              v42 = [(BRCDownloadContent *)self _stageWithManifest:v10 package:v11 xattrsPackage:v40 error:error];
            }

            v21 = v42;
LABEL_49:

            goto LABEL_88;
          }

          v49 = brc_bread_crumbs();
          v50 = brc_default_log();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
          {
            [BRCDownloadContent _stageWithError:];
          }

          v33 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:{@"unreachable: xattrs package is not a CKAsset: %@", *p_record}];
          if (!v33)
          {
            goto LABEL_84;
          }

          v34 = brc_bread_crumbs();
          v35 = brc_default_log();
          if (!os_log_type_enabled(v35, 0x90u))
          {
            goto LABEL_83;
          }

          v36 = "(passed to caller)";
          *buf = 136315906;
          v56 = "[BRCDownloadContent _stageWithError:]";
          v57 = 2080;
          if (!error)
          {
            v36 = "(ignored by caller)";
          }
        }

        else
        {
          v45 = brc_bread_crumbs();
          v46 = brc_default_log();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
          {
            [BRCDownloadContent _stageWithError:];
          }

          v33 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:{@"unreachable: package manifest is not a CKAsset: %@", *p_record}];
          if (!v33)
          {
            goto LABEL_84;
          }

          v34 = brc_bread_crumbs();
          v35 = brc_default_log();
          if (!os_log_type_enabled(v35, 0x90u))
          {
LABEL_83:

LABEL_84:
            if (error)
            {
              objc_storeStrong(error, v33);
            }

            goto LABEL_87;
          }

          v36 = "(passed to caller)";
          *buf = 136315906;
          v56 = "[BRCDownloadContent _stageWithError:]";
          v57 = 2080;
          if (!error)
          {
            v36 = "(ignored by caller)";
          }
        }
      }

      else
      {
        v43 = brc_bread_crumbs();
        v44 = brc_default_log();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
        {
          [BRCDownloadContent _stageWithError:];
        }

        v33 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:{@"unreachable: pkg content is not a CKPackage: %@", *p_record}];
        if (!v33)
        {
          goto LABEL_84;
        }

        v34 = brc_bread_crumbs();
        v35 = brc_default_log();
        if (!os_log_type_enabled(v35, 0x90u))
        {
          goto LABEL_83;
        }

        v36 = "(passed to caller)";
        *buf = 136315906;
        v56 = "[BRCDownloadContent _stageWithError:]";
        v57 = 2080;
        if (!error)
        {
          v36 = "(ignored by caller)";
        }
      }
    }

    v58 = v36;
    v59 = 2112;
    v60 = v33;
    v61 = 2112;
    v62 = v34;
    _os_log_error_impl(&dword_223E7A000, v35, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    goto LABEL_83;
  }

  v22 = brc_bread_crumbs();
  v23 = brc_default_log();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
  {
    [BRCDownloadContent _stageWithError:];
  }

  v10 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:{@"unreachable: finder bookmark without content: %@", *p_record}];
  if (v10)
  {
    v24 = brc_bread_crumbs();
    v25 = brc_default_log();
    if (os_log_type_enabled(v25, 0x90u))
    {
      v52 = "(passed to caller)";
      *buf = 136315906;
      v56 = "[BRCDownloadContent _stageWithError:]";
      v57 = 2080;
      if (!error)
      {
        v52 = "(ignored by caller)";
      }

      v58 = v52;
      v59 = 2112;
      v60 = v10;
      v61 = 2112;
      v62 = v24;
      _os_log_error_impl(&dword_223E7A000, v25, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    }
  }

  if (error)
  {
    v10 = v10;
    v21 = 0;
    v11 = *error;
    *error = v10;
LABEL_88:

    goto LABEL_89;
  }

  v21 = 0;
LABEL_89:

  return v21;
}

- (void)_prepareSecondStageWithManifest:package:error:.cold.1()
{
  OUTLINED_FUNCTION_21(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(&dword_223E7A000, v0, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx computing desired packages indices%@", v1, 0x16u);
}

- (void)_prepareSecondStageWithManifest:(uint64_t)a1 package:(NSObject *)a2 error:.cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_223E7A000, a2, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: false%@", &v2, 0xCu);
}

- (void)_stageWithError:.cold.1()
{
  OUTLINED_FUNCTION_21(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_6_1(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: file content is not a CKAsset: %@%@");
}

- (void)_stageWithError:.cold.2()
{
  OUTLINED_FUNCTION_21(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_6_1(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: unknown type for downloaded object %@%@");
}

- (void)_stageWithError:.cold.3()
{
  OUTLINED_FUNCTION_21(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_6_1(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: pkg content is not a CKPackage: %@%@");
}

- (void)_stageWithError:.cold.4()
{
  OUTLINED_FUNCTION_21(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_6_1(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: package manifest is not a CKAsset: %@%@");
}

- (void)_stageWithError:.cold.5()
{
  OUTLINED_FUNCTION_21(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_6_1(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: xattrs package is not a CKAsset: %@%@");
}

- (void)_stageWithError:.cold.6()
{
  OUTLINED_FUNCTION_21(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_6_1(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: finder bookmark without content: %@%@");
}

@end