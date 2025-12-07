@interface BRCUploadCKRecordProvider
- (BRCUploadCKRecordProvider)initWithStageRegistry:(id)registry deviceID:(id)d;
- (id)_createFileRecordForURL:(id)l item:(id)item fileSize:(int64_t *)size boundaryKey:(id *)key error:(id *)error;
- (id)_createPackageRecordForURL:(id)l item:(id)item stageID:(id)d fileSize:(int64_t *)size boundaryKey:(id *)key error:(id *)error;
- (id)createCKRecordFor:(id)for document:(id)document stageID:(id)d mtime:(unint64_t)mtime etag:(id)etag xattrSignature:(id)signature transferSize:(int64_t *)size boundaryKey:(id *)self0 error:(id *)self1;
@end

@implementation BRCUploadCKRecordProvider

- (BRCUploadCKRecordProvider)initWithStageRegistry:(id)registry deviceID:(id)d
{
  registryCopy = registry;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = BRCUploadCKRecordProvider;
  v9 = [(BRCUploadCKRecordProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_stageRegistry, registry);
    objc_storeStrong(&v10->_deviceID, d);
  }

  return v10;
}

- (id)createCKRecordFor:(id)for document:(id)document stageID:(id)d mtime:(unint64_t)mtime etag:(id)etag xattrSignature:(id)signature transferSize:(int64_t *)size boundaryKey:(id *)self0 error:(id *)self1
{
  v68 = *MEMORY[0x277D85DE8];
  forCopy = for;
  documentCopy = document;
  dCopy = d;
  etagCopy = etag;
  signatureCopy = signature;
  v60 = 0;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [forCopy path];
  LODWORD(d) = [defaultManager fileExistsAtPath:path isDirectory:&v60];

  if (d)
  {
    *buf = 0;
    if (v60 == 1)
    {
      v59 = 0;
      v22 = &v59;
      v23 = [(BRCUploadCKRecordProvider *)self _createPackageRecordForURL:forCopy item:documentCopy stageID:dCopy fileSize:buf boundaryKey:&v59 error:error];
    }

    else
    {
      v58 = 0;
      v22 = &v58;
      v23 = [(BRCUploadCKRecordProvider *)self _createFileRecordForURL:forCopy item:documentCopy fileSize:buf boundaryKey:&v58 error:error];
    }

    v28 = v23;
    v29 = *v22;
    v24 = v29;
    if (v28)
    {
      if (key)
      {
        v30 = v29;
        *key = v24;
      }

      v31 = [documentCopy shouldUseEnhancedDrivePrivacyWhenNeedsPreserving:v24 != 0];
      if (![v28 serializeForContentUpload:documentCopy size:*buf mtime:mtime etag:etagCopy shouldUseEnhancedDrivePrivacy:v31 error:error])
      {

        v42 = 0;
        goto LABEL_40;
      }

      v32 = [BRCUserDefaults defaultsForMangledID:0];
      supportsEnhancedDrivePrivacy = [v32 supportsEnhancedDrivePrivacy];

      v55 = etagCopy;
      if (supportsEnhancedDrivePrivacy)
      {
        clientZone = [documentCopy clientZone];
        asPrivateClientZone = [clientZone asPrivateClientZone];
        itemID = [documentCopy itemID];
        v37 = [asPrivateClientZone childBaseSaltForItemID:itemID];

        appLibrary = [documentCopy appLibrary];
        if ([appLibrary isCloudDocsAppLibrary])
        {
          clientZone2 = [documentCopy clientZone];
          if ([clientZone2 isCloudDocsZone])
          {
            parentItemIDInZone = [documentCopy parentItemIDInZone];
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

        parentItemIDInZone2 = [documentCopy parentItemIDInZone];
        supportsEnhancedDrivePrivacy = [parentItemIDInZone2 isDocumentsFolder];
      }

      else
      {
        isNonDesktopRoot = 0;
        v37 = 0;
      }

      v44 = [documentCopy st];
      logicalName = [v44 logicalName];
      [v28 serializeFilename:logicalName forCreation:0 basehashSalt:v37 parentIDIsCloudDocsRoot:isNonDesktopRoot parentIDIsDocumentsFolder:supportsEnhancedDrivePrivacy];

      if (signatureCopy)
      {
        v54 = v37;
        v46 = [(BRCStageRegistry *)self->_stageRegistry urlForXattrSignature:signatureCopy];
        etagCopy = v55;
        if (v46)
        {
          v47 = [MEMORY[0x277CBC190] br_assetWithFileURL:v46 boundaryKey:v24];
          [v28 setObject:v47 forKeyedSubscript:@"xattr"];
          if (v24)
          {
            v48 = signatureCopy;
          }

          else
          {
            v48 = 0;
          }

          encryptedValues = [v28 encryptedValues];
          [encryptedValues setObject:v48 forKeyedSubscript:@"xattrSignature"];

          v50 = [v47 size];
        }

        else
        {
          v47 = brc_bread_crumbs();
          v51 = brc_default_log();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_FAULT))
          {
            [BRCUploadCKRecordProvider createCKRecordFor:document:stageID:mtime:etag:xattrSignature:transferSize:boundaryKey:error:];
          }

          v50 = 0;
        }

        v37 = v54;
      }

      else
      {
        v50 = 0;
        etagCopy = v55;
      }

      if (size)
      {
        *size = *buf + v50;
      }
    }
  }

  else
  {
    v24 = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:2];
    if (v24)
    {
      v25 = brc_bread_crumbs();
      v26 = brc_default_log();
      if (os_log_type_enabled(v26, 0x90u))
      {
        v53 = "(passed to caller)";
        *buf = 136315906;
        *&buf[4] = "[BRCUploadCKRecordProvider createCKRecordFor:document:stageID:mtime:etag:xattrSignature:transferSize:boundaryKey:error:]";
        v62 = 2080;
        if (!error)
        {
          v53 = "(ignored by caller)";
        }

        v63 = v53;
        v64 = 2112;
        v65 = v24;
        v66 = 2112;
        v67 = v25;
        _os_log_error_impl(&dword_223E7A000, v26, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (error)
    {
      v27 = v24;
      v28 = 0;
      *error = v24;
    }

    else
    {
      v28 = 0;
    }
  }

  v28 = v28;
  v42 = v28;
LABEL_40:

  return v42;
}

- (id)_createFileRecordForURL:(id)l item:(id)item fileSize:(int64_t *)size boundaryKey:(id *)key error:(id *)error
{
  v49 = *MEMORY[0x277D85DE8];
  lCopy = l;
  itemCopy = item;
  v13 = brc_bread_crumbs();
  v14 = brc_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [BRCUploadCKRecordProvider _createFileRecordForURL:lCopy item:? fileSize:? boundaryKey:? error:?];
  }

  v15 = [itemCopy baseRecordClearAllFields:1];
  v40 = 0;
  v16 = *MEMORY[0x277CBE838];
  v39 = 0;
  v17 = [lCopy getResourceValue:&v40 forKey:v16 error:&v39];
  v18 = v40;
  v19 = v39;
  v20 = v19;
  if (v17)
  {
    v21 = [v15 getAndUpdateBoundaryKeyForItem:itemCopy];
    v22 = [itemCopy shouldUseEnhancedDrivePrivacyWhenNeedsPreserving:v21 != 0];
    if (key)
    {
      v23 = v21;
      *key = v21;
    }

    v38 = v20;
    v24 = v18;
    sizeCopy = size;
    if ([itemCopy isFinderBookmark])
    {
      if (v22)
      {
        brc_generateSaltingKey = [MEMORY[0x277CBEA90] brc_generateSaltingKey];
      }

      else
      {
        brc_generateSaltingKey = 0;
      }

      v31 = kBRRecordKeyFinderBookmarkContent;
      v21 = brc_generateSaltingKey;
    }

    else
    {
      v31 = kBRRecordKeyFileContent;
    }

    v32 = [MEMORY[0x277CBC190] br_assetWithFileURL:lCopy boundaryKey:v21];
    [v15 setObject:v32 forKeyedSubscript:*v31];
    v33 = [itemCopy st];
    logicalName = [v33 logicalName];
    br_pathExtension = [logicalName br_pathExtension];
    [v32 setItemTypeHint:br_pathExtension];

    if (sizeCopy)
    {
      *sizeCopy = [v24 longLongValue];
    }

    v30 = v15;

    v18 = v24;
    v20 = v38;
  }

  else
  {
    v21 = v19;
    if (v21)
    {
      v27 = brc_bread_crumbs();
      v28 = brc_default_log();
      if (os_log_type_enabled(v28, 0x90u))
      {
        v37 = "(passed to caller)";
        *buf = 136315906;
        v42 = "[BRCUploadCKRecordProvider _createFileRecordForURL:item:fileSize:boundaryKey:error:]";
        v43 = 2080;
        if (!error)
        {
          v37 = "(ignored by caller)";
        }

        v44 = v37;
        v45 = 2112;
        v46 = v21;
        v47 = 2112;
        v48 = v27;
        _os_log_error_impl(&dword_223E7A000, v28, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (error)
    {
      v29 = v21;
      v30 = 0;
      *error = v21;
    }

    else
    {
      v30 = 0;
    }
  }

  return v30;
}

- (id)_createPackageRecordForURL:(id)l item:(id)item stageID:(id)d fileSize:(int64_t *)size boundaryKey:(id *)key error:(id *)error
{
  v93[2] = *MEMORY[0x277D85DE8];
  lCopy = l;
  itemCopy = item;
  dCopy = d;
  v14 = brc_bread_crumbs();
  v15 = brc_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [BRCUploadCKRecordProvider _createPackageRecordForURL:lCopy item:? stageID:? fileSize:? boundaryKey:? error:?];
  }

  v16 = [itemCopy baseRecordClearAllFields:1];
  v17 = [(BRCStageRegistry *)self->_stageRegistry createURLForUploadWithStageID:dCopy name:@"brpackage"];
  v62 = [(BRCStageRegistry *)self->_stageRegistry createURLForUploadWithStageID:dCopy name:@"ckpackage"];
  if ([itemCopy isFinderBookmark])
  {
    [BRCUploadCKRecordProvider _createPackageRecordForURL:item:stageID:fileSize:boundaryKey:error:];
  }

  v18 = [v16 getAndUpdateBoundaryKeyForItem:itemCopy];
  v19 = v18;
  if (key)
  {
    v20 = v18;
    *key = v19;
  }

  [itemCopy shouldUseEnhancedDrivePrivacyWhenNeedsPreserving:v19 != 0];
  v21 = [BRCPackageManifestWriter alloc];
  clientZone = [itemCopy clientZone];
  v23 = [(BRCPackageManifestWriter *)v21 initWithZone:clientZone stageID:dCopy url:v17];

  error = [(BRCPackageManifestWriter *)v23 error];

  if (!error)
  {
    *v90 = 0;
    *&v90[8] = v90;
    *&v90[16] = 0x3032000000;
    v91 = __Block_byref_object_copy__7;
    v92 = __Block_byref_object_dispose__7;
    v93[0] = 0;
    obj = 0;
    v61 = [MEMORY[0x277CBC538] br_packageWithBoundaryKey:v19 error:&obj];
    objc_storeStrong(v93, obj);
    if (v61)
    {
      v28 = *&v90[8];
      v78 = *(*&v90[8] + 40);
      v29 = [v61 anchorAtURL:v62 error:&v78];
      objc_storeStrong((v28 + 40), v78);
      if (v29)
      {
        v58 = [[BRCLazyPackage alloc] initWithRegistry:self->_stageRegistry stageID:dCopy name:@"ckpackage-xattrs" boundaryKey:v19];
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        v87 = 0;
        v57 = objc_opt_new();
        v77[0] = 0;
        v77[1] = v77;
        v77[2] = 0x2020000000;
        v77[3] = 0;
        v30 = [BRCFSPackageEnumerator alloc];
        v31 = *&v90[8];
        v76 = *(*&v90[8] + 40);
        v59 = [(BRCFSPackageEnumerator *)v30 initForURL:lCopy boundaryKey:v19 error:&v76];
        objc_storeStrong((v31 + 40), v76);
        if (v59)
        {
          v32 = objc_alloc_init(BRFieldPkgItem);
          v33 = *&v90[8];
          v75 = *(*&v90[8] + 40);
          v65[0] = MEMORY[0x277D85DD0];
          v65[1] = 3221225472;
          v65[2] = __96__BRCUploadCKRecordProvider__createPackageRecordForURL_item_stageID_fileSize_boundaryKey_error___block_invoke;
          v65[3] = &unk_278500E18;
          v65[4] = self;
          v72 = v77;
          v73 = v90;
          v66 = v61;
          v74 = buf;
          v34 = v32;
          v67 = v34;
          v35 = v57;
          v68 = v35;
          v69 = v58;
          v70 = v23;
          v71 = v17;
          [v59 enumeratePackageItemsWithSortOrder:2 error:&v75 usingBlock:v65];
          objc_storeStrong((v33 + 40), v75);
          [v35 done];
        }

        if (*(*&v90[8] + 40))
        {
          v36 = brc_bread_crumbs();
          v37 = brc_default_log();
          if (os_log_type_enabled(v37, 0x90u))
          {
            v54 = *(*&v90[8] + 40);
            *v80 = 138412802;
            v81 = v61;
            v82 = 2112;
            v83 = v54;
            v84 = 2112;
            v85 = v36;
            _os_log_error_impl(&dword_223E7A000, v37, 0x90u, "[ERROR] Fail to performTransactionBlock for package [%@] with error [%@]%@", v80, 0x20u);
          }

          if (error)
          {
            error3 = *(*&v90[8] + 40);
LABEL_42:
            v27 = 0;
            *error = error3;
LABEL_44:

            _Block_object_dispose(v77, 8);
            _Block_object_dispose(buf, 8);

            goto LABEL_45;
          }
        }

        else
        {
          if ([(BRCPackageManifestWriter *)v23 done])
          {
            package = [(BRCLazyPackage *)v58 package];
            if (package)
            {
              [v16 setObject:package forKeyedSubscript:@"pkgXattrs"];
            }

            v47 = [MEMORY[0x277CBC190] br_assetWithFileURL:v17 boundaryKey:{v19, v57}];
            [v16 setObject:v61 forKeyedSubscript:@"pkgContent"];
            [v16 setObject:v47 forKeyedSubscript:@"pkgManifest"];
            signature = [v57 signature];
            [v16 setObject:signature forKeyedSubscript:@"pkgSignature"];

            if (size)
            {
              *size = *(*&buf[8] + 24);
            }

            v27 = v16;

            goto LABEL_44;
          }

          v51 = brc_bread_crumbs();
          v52 = brc_default_log();
          if (os_log_type_enabled(v52, 0x90u))
          {
            path = [v17 path];
            error2 = [(BRCPackageManifestWriter *)v23 error];
            *v80 = 138412802;
            v81 = path;
            v82 = 2112;
            v83 = error2;
            v84 = 2112;
            v85 = v51;
            _os_log_error_impl(&dword_223E7A000, v52, 0x90u, "[ERROR] failed to create manifest at %@: %@%@", v80, 0x20u);
          }

          if (error)
          {
            error3 = [(BRCPackageManifestWriter *)v23 error];
            goto LABEL_42;
          }
        }

        v27 = 0;
        goto LABEL_44;
      }

      v42 = brc_bread_crumbs();
      v43 = brc_default_log();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        path2 = [v62 path];
        v45 = *(*&v90[8] + 40);
        *buf = 138413058;
        *&buf[4] = v61;
        *&buf[12] = 2112;
        *&buf[14] = path2;
        *&buf[22] = 2112;
        v87 = v45;
        v88 = 2112;
        v89 = v42;
        _os_log_impl(&dword_223E7A000, v43, OS_LOG_TYPE_DEFAULT, "[WARNING] Failed to anchor package %@ at %@: %@%@", buf, 0x2Au);
      }

      if (error)
      {
        v41 = *(*&v90[8] + 40);
        goto LABEL_30;
      }
    }

    else
    {
      v39 = brc_bread_crumbs();
      v40 = brc_default_log();
      if (os_log_type_enabled(v40, 0x90u))
      {
        [BRCUploadCKRecordProvider _createPackageRecordForURL:v39 item:v40 stageID:? fileSize:? boundaryKey:? error:?];
      }

      if (error)
      {
        v41 = *(*&v90[8] + 40);
LABEL_30:
        v27 = 0;
        *error = v41;
LABEL_45:

        _Block_object_dispose(v90, 8);
        goto LABEL_46;
      }
    }

    v27 = 0;
    goto LABEL_45;
  }

  v25 = brc_bread_crumbs();
  v26 = brc_default_log();
  if (os_log_type_enabled(v26, 0x90u))
  {
    path3 = [v17 path];
    error4 = [(BRCPackageManifestWriter *)v23 error];
    *v90 = 138412802;
    *&v90[4] = path3;
    *&v90[12] = 2112;
    *&v90[14] = error4;
    *&v90[22] = 2112;
    v91 = v25;
    _os_log_error_impl(&dword_223E7A000, v26, 0x90u, "[ERROR] failed to create manifest at %@: %@%@", v90, 0x20u);
  }

  if (error)
  {
    [(BRCPackageManifestWriter *)v23 error];
    *error = v27 = 0;
  }

  else
  {
    v27 = 0;
  }

LABEL_46:

  return v27;
}

void __96__BRCUploadCKRecordProvider__createPackageRecordForURL_item_stageID_fileSize_boundaryKey_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v62 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  if (![v7 isFile])
  {
    v14 = 0;
    goto LABEL_8;
  }

  v9 = objc_alloc(MEMORY[0x277CBC540]);
  v10 = *(*(a1 + 32) + 16);
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v7, "fileID")}];
  v12 = [v7 generationID];
  v13 = [v12 fsGenerationID];
  v14 = [v9 initWithDeviceID:v10 fileID:v11 generationID:v13];

  ++*(*(*(a1 + 88) + 8) + 24);
  [v14 setPackageIndex:?];
  v15 = [v7 pathInPackage];
  v16 = [v15 lastPathComponent];
  v17 = [v16 br_pathExtension];
  [v14 setItemTypeHint:v17];

  v18 = [*(a1 + 40) addItem:v14];
  v19 = *(*(a1 + 96) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v18;

  if (!*(*(*(a1 + 96) + 8) + 40))
  {
    *(*(*(a1 + 104) + 8) + 24) += [v7 size];
LABEL_8:
    [*(a1 + 48) updateWithPkgItem:v7];
    v24 = *(a1 + 48);
    v23 = *(a1 + 56);
    v55 = 0;
    v25 = [v23 addItem:v24 error:&v55];
    v26 = v55;
    v27 = v55;
    if (v25)
    {
      v28 = [v7 xattrSignature];

      if (v28)
      {
        v29 = *(*(a1 + 32) + 8);
        v30 = [v7 xattrSignature];
        v31 = [v29 urlForXattrSignature:v30];

        v54 = 0;
        LOBYTE(v30) = [v31 checkResourceIsReachableAndReturnError:&v54];
        v32 = v54;
        if (v30)
        {
          v50 = a4;
          v33 = [objc_alloc(MEMORY[0x277CBC540]) initWithFileURL:v31];
          v34 = [*(a1 + 64) itemCount];
          [v14 setPackageIndex:v34];
          v35 = *(a1 + 64);
          v51 = v33;
          v53 = v32;
          LOBYTE(v33) = [v35 addItem:v33 error:&v53];
          v36 = v53;

          if (v33)
          {
            [*(a1 + 48) setXattrIndex:v34];
          }

          else
          {
            v41 = brc_bread_crumbs();
            v42 = brc_default_log();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v57 = v36;
              v58 = 2112;
              v59 = v41;
              _os_log_impl(&dword_223E7A000, v42, OS_LOG_TYPE_DEFAULT, "[WARNING] Failed to add xattrs to xattrs package: %@%@", buf, 0x16u);
            }
          }

          v32 = v36;
          a4 = v50;
          v39 = v51;
        }

        else
        {
          v39 = brc_bread_crumbs();
          v40 = brc_default_log();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
          {
            v52 = [v7 xattrSignature];
            *buf = 138412802;
            v57 = v52;
            v58 = 2112;
            v59 = v32;
            v60 = 2112;
            v61 = v39;
            _os_log_fault_impl(&dword_223E7A000, v40, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: We're missing a package xattr for signature %@ - %@%@", buf, 0x20u);
          }
        }
      }

      if ([*(a1 + 72) addItem:*(a1 + 48)])
      {
        [*(a1 + 48) clear];
LABEL_30:

        goto LABEL_31;
      }

      v43 = [*(a1 + 72) error];
      v44 = *(*(a1 + 96) + 8);
      v45 = *(v44 + 40);
      *(v44 + 40) = v43;

      v46 = brc_bread_crumbs();
      v47 = brc_default_log();
      if (os_log_type_enabled(v47, 0x90u))
      {
        v48 = [*(a1 + 80) path];
        v49 = *(*(*(a1 + 96) + 8) + 40);
        *buf = 138412802;
        v57 = v48;
        v58 = 2112;
        v59 = v49;
        v60 = 2112;
        v61 = v46;
        _os_log_error_impl(&dword_223E7A000, v47, 0x90u, "[ERROR] failed to create manifest at %@: %@%@", buf, 0x20u);
      }
    }

    else
    {
      objc_storeStrong((*(*(a1 + 96) + 8) + 40), v26);
      v37 = brc_bread_crumbs();
      v38 = brc_default_log();
      if (os_log_type_enabled(v38, 0x90u))
      {
        __96__BRCUploadCKRecordProvider__createPackageRecordForURL_item_stageID_fileSize_boundaryKey_error___block_invoke_cold_2(v8, v37, v38);
      }
    }

    *a4 = 1;
    goto LABEL_30;
  }

  v21 = brc_bread_crumbs();
  v22 = brc_default_log();
  if (os_log_type_enabled(v22, 0x90u))
  {
    __96__BRCUploadCKRecordProvider__createPackageRecordForURL_item_stageID_fileSize_boundaryKey_error___block_invoke_cold_1(v21, v22);
  }

  *a4 = 1;
LABEL_31:
}

- (void)createCKRecordFor:document:stageID:mtime:etag:xattrSignature:transferSize:boundaryKey:error:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  v3 = v0;
  _os_log_fault_impl(&dword_223E7A000, v1, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: No xattr url found for signature %@%@", v2, 0x16u);
}

- (void)_createFileRecordForURL:(void *)a1 item:fileSize:boundaryKey:error:.cold.1(void *a1)
{
  v1 = [a1 path];
  v2 = [v1 fp_prettyPath];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1(&dword_223E7A000, v3, v4, "[DEBUG] Creating CK record for URL: %@%@", v5, v6, v7, v8);
}

- (void)_createPackageRecordForURL:(void *)a1 item:stageID:fileSize:boundaryKey:error:.cold.1(void *a1)
{
  v1 = [a1 path];
  v2 = [v1 fp_prettyPath];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1(&dword_223E7A000, v3, v4, "[DEBUG] Creating CK record for URL: %@%@", v5, v6, v7, v8);
}

- (void)_createPackageRecordForURL:item:stageID:fileSize:boundaryKey:error:.cold.2()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    v2 = 138412290;
    v3 = v0;
    _os_log_fault_impl(&dword_223E7A000, v1, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: !document.isFinderBookmark%@", &v2, 0xCu);
  }
}

- (void)_createPackageRecordForURL:(os_log_t)log item:stageID:fileSize:boundaryKey:error:.cold.3(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(*a1 + 40);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_223E7A000, log, 0x90u, "[ERROR] Failed to create package: %@%@", &v4, 0x16u);
}

void __96__BRCUploadCKRecordProvider__createPackageRecordForURL_item_stageID_fileSize_boundaryKey_error___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_223E7A000, a2, 0x90u, "[ERROR] Failed to add item to package%@", &v2, 0xCu);
}

void __96__BRCUploadCKRecordProvider__createPackageRecordForURL_item_stageID_fileSize_boundaryKey_error___block_invoke_cold_2(void *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = [a1 path];
  v6 = [v5 fp_obfuscatedPath];
  OUTLINED_FUNCTION_1_0();
  v8 = a2;
  _os_log_error_impl(&dword_223E7A000, a3, 0x90u, "[ERROR] Couldn't add item for checksumming at %@%@", v7, 0x16u);
}

@end