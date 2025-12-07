@interface BRCStageRegistry
+ (void)migrateStageToVersion2_0WithSession:(id)session;
- (BOOL)_graveyardAt:(int)at path:(id)path forItemID:(id)d;
- (BOOL)_hasActiveUploadWithStageID:(id)d;
- (BOOL)_hasContentsInPath:(id)path;
- (BOOL)_moveFromURLToTargetStageLocation:(id)location stageIndex:(unsigned __int8)index filename:(id)filename error:(id *)error;
- (BOOL)clonePackageExistingContentFromSourceURL:(id)l stageID:(id)d error:(id *)error;
- (BOOL)copyPackageFileWithPackageFd:(int)fd toStageFd:(int)stageFd relpath:(id)relpath;
- (BOOL)existsInStage:(unint64_t)stage generationID:(unsigned int *)d;
- (BOOL)existsInUploadOrLiveItemsStage:(unint64_t)stage generationID:(unsigned int *)d;
- (BOOL)markUploadActiveForStageID:(id)d;
- (BOOL)rescueUnuploadedFile:(unint64_t)file error:(id *)error;
- (BOOL)saveXattrAtURL:(id)l forSignature:(id)signature error:(id *)error;
- (BOOL)saveXattrBlob:(id)blob forSignature:(id)signature error:(id *)error;
- (BOOL)saveXattrsForURL:(id)l withMaximumSize:(unint64_t)size xattrSignature:(id *)signature error:(id *)error;
- (BRCStageRegistry)initWithAccountSession:(id)session;
- (id)_anchorNameForChangeToken:(id)token recordZoneID:(id)d;
- (id)_anchorNameForRecordID:(id)d;
- (id)_anchorNamePrefixForRecordZoneID:(id)d;
- (id)_getActiveDownloadStageIDs;
- (id)_liveURLForliveStageFilename:(id)filename;
- (id)_pathForDirIndex:(unsigned __int8)index;
- (id)_pathInStage:(unint64_t)stage index:(unsigned __int8 *)index generationID:(unsigned int *)d;
- (id)cloneFileURL:(id)l toUploadStageID:(id)d liveStageFilename:(id)filename error:(id *)error;
- (id)createStageURLForThumbnailFromLiveStageFilename:(id)filename error:(id *)error;
- (id)createStageURLFromLiveURLForItem:(id)item options:(unint64_t)options error:(id *)error;
- (id)createURLForDownloadWithStageID:(id)d name:(id)name;
- (id)createURLForThumbnailUploadWithStageID:(id)d;
- (id)createURLForUploadWithStageID:(id)d name:(id)name;
- (id)createURLForUserNotificationThumbnailGenerationWithStageID:(id)d;
- (id)downloadStageURLWithStageID:(id)d;
- (id)loadXattrBlobForSignature:(id)signature error:(id *)error;
- (id)pendingDeltaFetchRecordDirWithStartingChangeToken:(id)token recordZoneID:(id)d;
- (id)pendingListRecordDirWithStartingChangeToken:(id)token;
- (id)urlForXattrSignature:(id)signature;
- (int)_openStageDirectory:(unsigned __int8)directory;
- (int)_performInStageDirectory:(unsigned __int8)directory block:(id)block;
- (int64_t)_garbageCollectDeltaSyncDatabases;
- (int64_t)_garbageCollectDownloads;
- (int64_t)_garbageCollectItemsIncludingActiveItems:(BOOL)items stageIndex:(unsigned __int8)index maxAge:(int64_t)age deletePredicate:(id)predicate;
- (int64_t)_garbageCollectLiveItemsIncludingActiveItems:(BOOL)items;
- (int64_t)_garbageCollectQBSDatabases;
- (int64_t)_garbageCollectSpace:(int64_t)space;
- (int64_t)_garbageCollectUploadThumbnailsIncludingActiveUploads:(BOOL)uploads;
- (int64_t)_garbageCollectUploadsIncludingActiveUploads:(BOOL)uploads;
- (int64_t)_purgeAllUploadsWithIncludeActiveItems:(BOOL)items;
- (int64_t)_purgeSpaceUnderQueue:(int64_t)queue withUrgency:(int)urgency;
- (int64_t)_removeUnusedXattrBlobs;
- (int64_t)garbageCollectSpace:(int64_t)space;
- (int64_t)purgableSpace;
- (int64_t)purgeGraveyardSpace:(int64_t)space withUrgency:(int)urgency;
- (int64_t)purgeSpace:(int64_t)space withUrgency:(int)urgency;
- (unint64_t)_processPendingListDatabaseObjects:(id)objects;
- (void)_updatePersistedStateWithLatestGCStartTime:(int64_t)time;
- (void)associateSyncUpStageID:(id)d withOperation:(id)operation;
- (void)cleanupStagedDownloadWithID:(id)d;
- (void)cleanupStagedDownloadWithID:(id)d forItemID:(id)iD;
- (void)cleanupStagedSyncUpWithID:(id)d;
- (void)cleanupStagedUploadWithID:(id)d;
- (void)close;
- (void)disarmLockedTestTimer;
- (void)lowDiskStatusChangedForDevice:(int)device hasEnoughSpace:(BOOL)space;
- (void)markDownloadActiveForStageID:(id)d;
- (void)open;
- (void)purgableSpace;
- (void)removeDatabaseObjectsForZone:(id)zone;
- (void)resume;
- (void)unlinkLiveStageFilename:(id)filename;
- (void)unlinkPackageAuxiliaryContentsForStageID:(id)d;
@end

@implementation BRCStageRegistry

- (BRCStageRegistry)initWithAccountSession:(id)session
{
  sessionCopy = session;
  v19.receiver = self;
  v19.super_class = BRCStageRegistry;
  v6 = [(BRCStageRegistry *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_session, session);
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    activeUploadStageIDs = v7->_activeUploadStageIDs;
    v7->_activeUploadStageIDs = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
    activeDownloadStageIDs = v7->_activeDownloadStageIDs;
    v7->_activeDownloadStageIDs = v10;

    v12 = brc_task_tracker_create("com.apple.brc.stage");
    tracker = v7->_tracker;
    v7->_tracker = v12;

    v14 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(v14, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create("com.apple.brc.stage", v15);

    queue = v7->_queue;
    v7->_queue = v16;
  }

  return v7;
}

- (id)_pathForDirIndex:(unsigned __int8)index
{
  indexCopy = index;
  if (_pathForDirIndex__once != -1)
  {
    [BRCStageRegistry _pathForDirIndex:];
  }

  session = self->_session;
  if (indexCopy)
  {
    [(BRCAccountSession *)session sessionDirPath];
  }

  else
  {
    [(BRCAccountSession *)session cacheDirPath];
  }
  v6 = ;
  v7 = _pathForDirIndex__dirsMapping;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:indexCopy];
  v9 = [v7 objectForKey:v8];
  v10 = [v6 stringByAppendingPathComponent:v9];

  return v10;
}

void __37__BRCStageRegistry__pathForDirIndex___block_invoke()
{
  v3[8] = *MEMORY[0x277D85DE8];
  v2[0] = &unk_2837B0370;
  v2[1] = &unk_2837B0388;
  v3[0] = @"g";
  v3[1] = @"d";
  v2[2] = &unk_2837B03A0;
  v2[3] = &unk_2837B03B8;
  v3[2] = @"u";
  v3[3] = @"s";
  v2[4] = &unk_2837B03D0;
  v2[5] = &unk_2837B03E8;
  v3[4] = @"l";
  v3[5] = @"t";
  v2[6] = &unk_2837B0400;
  v2[7] = &unk_2837B0418;
  v3[6] = @"x";
  v3[7] = @"i";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:8];
  v1 = _pathForDirIndex__dirsMapping;
  _pathForDirIndex__dirsMapping = v0;
}

- (void)open
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    *self = 138412290;
    *a2 = v2;
    _os_log_fault_impl(&dword_223E7A000, v5, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: _stageDirectoryFileID[dirIndex] != 0%@", self, 0xCu);
  }
}

void __24__BRCStageRegistry_open__block_invoke()
{
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(v3, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.brc.stage.backup-exclusion-queue", v0);

  v2 = open_backupExclusionQueue;
  open_backupExclusionQueue = v1;
}

uint64_t __24__BRCStageRegistry_open__block_invoke_2(uint64_t a1)
{
  v1 = open_backupExclusionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __24__BRCStageRegistry_open__block_invoke_3;
  block[3] = &unk_2784FF450;
  v4 = *(a1 + 32);
  dispatch_async(v1, block);

  return 0;
}

void __24__BRCStageRegistry_open__block_invoke_3(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) lastPathComponent];
  v3 = [v2 isEqualToString:@"x"];

  v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:*(a1 + 32)];
  v5 = v4;
  v6 = *MEMORY[0x277CBE878];
  if (v3)
  {
    v16 = 0;
    v7 = [v4 setResourceValue:MEMORY[0x277CBEC28] forKey:v6 error:&v16];
    v8 = v16;

    if ((v7 & 1) == 0)
    {
      v9 = brc_bread_crumbs();
      v10 = brc_default_log();
      if (os_log_type_enabled(v10, 0x90u))
      {
        v11 = *(a1 + 32);
        *buf = 138412802;
        v18 = v11;
        v19 = 2112;
        v20 = v8;
        v21 = 2112;
        v22 = v9;
        v12 = "[ERROR] Unable to include '%@' in backups: %@%@";
LABEL_10:
        _os_log_error_impl(&dword_223E7A000, v10, 0x90u, v12, buf, 0x20u);
        goto LABEL_7;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v15 = 0;
    v13 = [v4 setResourceValue:MEMORY[0x277CBEC38] forKey:v6 error:&v15];
    v8 = v15;

    if ((v13 & 1) == 0)
    {
      v9 = brc_bread_crumbs();
      v10 = brc_default_log();
      if (os_log_type_enabled(v10, 0x90u))
      {
        v14 = *(a1 + 32);
        *buf = 138412802;
        v18 = v14;
        v19 = 2112;
        v20 = v8;
        v21 = 2112;
        v22 = v9;
        v12 = "[ERROR] Unable to exclude '%@' from backups: %@%@";
        goto LABEL_10;
      }

LABEL_7:
    }
  }
}

- (int)_openStageDirectory:(unsigned __int8)directory
{
  directoryCopy = directory;
  v128 = *MEMORY[0x277D85DE8];
  memset(&v89, 0, sizeof(v89));
  v5 = &self->super.isa + directory;
  v7 = v5[2];
  v6 = (v5 + 2);
  v8 = v7;
  fileSystemRepresentation = [(objc_class *)v8 fileSystemRepresentation];
  v15 = BRCOpenAt(0xFFFFFFFFLL, fileSystemRepresentation, 33028, v10, v11, v12, v13, v14, v86);
  if (v15 < 0)
  {
    if (*__error() != 2)
    {
      v29 = *__error();
      v30 = brc_bread_crumbs();
      v31 = brc_default_log();
      if (!os_log_type_enabled(v31, 0x90u))
      {
        goto LABEL_121;
      }

      goto LABEL_66;
    }

LABEL_100:
    if (mkdir([(objc_class *)v8 fileSystemRepresentation], 0x1EDu) < 0 && *__error() != 17)
    {
      if (*__error() != 2)
      {
        v29 = *__error();
        v30 = brc_bread_crumbs();
        v31 = brc_default_log();
        if (!os_log_type_enabled(v31, 0x90u))
        {
          goto LABEL_121;
        }

        *buf = 138412802;
        *v91 = v8;
        *&v91[8] = 1024;
        *&v91[10] = v29;
        *&v91[14] = 2112;
        *&v91[16] = v30;
        v47 = "[ERROR] mkdir('%@') failed %{errno}d%@";
LABEL_118:
        v81 = v31;
        v82 = 28;
LABEL_119:
        _os_log_error_impl(&dword_223E7A000, v81, 0x90u, v47, buf, v82);
        goto LABEL_121;
      }

      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v88 = 0;
      v79 = [defaultManager createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:&v88];
      v80 = v88;

      if ((v79 & 1) == 0)
      {
        v84 = brc_bread_crumbs();
        v85 = brc_default_log();
        if (os_log_type_enabled(v85, 0x90u))
        {
          *buf = 138412802;
          *v91 = v8;
          *&v91[8] = 2112;
          *&v91[10] = v80;
          *&v91[18] = 2112;
          *&v91[20] = v84;
          _os_log_error_impl(&dword_223E7A000, v85, 0x90u, "[ERROR] mkdir('%@') withIntermediateDirectories failed: %@%@", buf, 0x20u);
        }

        goto LABEL_122;
      }
    }

    fileSystemRepresentation2 = [(objc_class *)v8 fileSystemRepresentation];
    v72 = BRCOpenAt(0xFFFFFFFFLL, fileSystemRepresentation2, 33028, v67, v68, v69, v70, v71, v87);
    if ((v72 & 0x80000000) == 0)
    {
      v16 = v72;
      if ((fstat(v72, &v89) & 0x80000000) == 0)
      {
        if (fcntl(v16, 64, 3))
        {
          v73 = *__error();
          v74 = brc_bread_crumbs();
          v75 = brc_default_log();
          if (os_log_type_enabled(v75, 0x90u))
          {
            [BRCStageRegistry _openStageDirectory:];
          }

          *__error() = v73;
        }

        goto LABEL_108;
      }

      v48 = *__error();
      v49 = brc_bread_crumbs();
      v50 = brc_default_log();
      if (!os_log_type_enabled(v50, 0x90u))
      {
LABEL_112:

        *__error() = v48;
        close(v16);
LABEL_122:
        v16 = -1;
        goto LABEL_123;
      }

      *buf = 138412802;
      *v91 = v8;
      *&v91[8] = 1024;
      *&v91[10] = v48;
      *&v91[14] = 2112;
      *&v91[16] = v49;
      v51 = "[ERROR] fstat('%@') failed %{errno}d%@";
      v52 = v50;
      v53 = 28;
LABEL_128:
      _os_log_error_impl(&dword_223E7A000, v52, 0x90u, v51, buf, v53);
      goto LABEL_112;
    }

    v29 = *__error();
    v30 = brc_bread_crumbs();
    v31 = brc_default_log();
    if (!os_log_type_enabled(v31, 0x90u))
    {
      goto LABEL_121;
    }

LABEL_66:
    *buf = 138412802;
    *v91 = v8;
    *&v91[8] = 1024;
    *&v91[10] = v29;
    *&v91[14] = 2112;
    *&v91[16] = v30;
    v47 = "[ERROR] open('%@') failed %{errno}d%@";
    goto LABEL_118;
  }

  v16 = v15;
  if (fstat(v15, &v89) < 0)
  {
    v48 = *__error();
    v49 = brc_bread_crumbs();
    v50 = brc_default_log();
    if (!os_log_type_enabled(v50, 0x90u))
    {
      goto LABEL_112;
    }

    *buf = 67109890;
    *v91 = v16;
    *&v91[4] = 2112;
    *&v91[6] = v8;
    *&v91[14] = 1024;
    *&v91[16] = v48;
    *&v91[20] = 2112;
    *&v91[22] = v49;
    v51 = "[ERROR] fstat(%d) '%@' failed %{errno}d%@";
    v52 = v50;
    v53 = 34;
    goto LABEL_128;
  }

  if ((v89.st_mode & 0xF000) != 0x4000)
  {
    v54 = brc_bread_crumbs();
    v55 = brc_default_log();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      v56 = aPcDBLSW[v89.st_mode >> 12];
      if ((v89.st_mode & 0x100) != 0)
      {
        v57 = 114;
      }

      else
      {
        v57 = 45;
      }

      if ((v89.st_mode & 0x80) != 0)
      {
        v58 = 119;
      }

      else
      {
        v58 = 45;
      }

      if ((v89.st_mode & 0x40) != 0)
      {
        v59 = 120;
      }

      else
      {
        v59 = 45;
      }

      if ((v89.st_mode & 0x20) != 0)
      {
        v60 = 114;
      }

      else
      {
        v60 = 45;
      }

      if ((v89.st_mode & 0x10) != 0)
      {
        v61 = 119;
      }

      else
      {
        v61 = 45;
      }

      if ((v89.st_mode & 8) != 0)
      {
        v62 = 120;
      }

      else
      {
        v62 = 45;
      }

      if ((v89.st_mode & 4) != 0)
      {
        v63 = 114;
      }

      else
      {
        v63 = 45;
      }

      if ((v89.st_mode & 2) != 0)
      {
        v64 = 119;
      }

      else
      {
        v64 = 45;
      }

      if (v89.st_mode)
      {
        v65 = 120;
      }

      else
      {
        v65 = 45;
      }

      *buf = 138417666;
      *v91 = v8;
      *&v91[8] = 1024;
      *&v91[10] = v89.st_dev;
      *&v91[14] = 2048;
      *&v91[16] = v89.st_ino;
      *&v91[24] = 1024;
      *&v91[26] = v56;
      v92 = 1024;
      v93 = v57;
      v94 = 1024;
      v95 = v58;
      v96 = 1024;
      v97 = v59;
      v98 = 1024;
      v99 = v60;
      v100 = 1024;
      v101 = v61;
      v102 = 1024;
      v103 = v62;
      v104 = 1024;
      v105 = v63;
      v106 = 1024;
      v107 = v64;
      v108 = 1024;
      v109 = v65;
      v110 = 1024;
      st_nlink = v89.st_nlink;
      v112 = 1024;
      st_uid = v89.st_uid;
      v114 = 1024;
      st_gid = v89.st_gid;
      v116 = 2048;
      tv_sec = v89.st_atimespec.tv_sec;
      v118 = 2048;
      v119 = v89.st_mtimespec.tv_sec;
      v120 = 2048;
      v121 = v89.st_ctimespec.tv_sec;
      v122 = 2048;
      st_size = v89.st_size;
      v124 = 1024;
      st_flags = v89.st_flags;
      v126 = 2112;
      *v127 = v54;
      _os_log_impl(&dword_223E7A000, v55, OS_LOG_TYPE_DEFAULT, "[WARNING] '%@' is not a directory deviceID:%u fileID:%llu mode:%c%c%c%c%c%c%c%c%c%c nlink:%u uid:%u gid:%u atime:%lu mtime:%lu ctime:%lu size:%llu flags:0x%x%@", buf, 0xA2u);
    }

    close(v16);
    if (unlink([(objc_class *)v8 fileSystemRepresentation]) < 0 && *__error() != 2)
    {
      v29 = *__error();
      v30 = brc_bread_crumbs();
      v31 = brc_default_log();
      if (!os_log_type_enabled(v31, 0x90u))
      {
        goto LABEL_121;
      }

      st_dev = v89.st_dev;
      v33 = aPcDBLSW[v89.st_mode >> 12];
      if ((v89.st_mode & 0x100) != 0)
      {
        v34 = 114;
      }

      else
      {
        v34 = 45;
      }

      v35 = v89.st_nlink;
      if ((v89.st_mode & 0x80) != 0)
      {
        v36 = 119;
      }

      else
      {
        v36 = 45;
      }

      v37 = v89.st_uid;
      v38 = v89.st_gid;
      if ((v89.st_mode & 0x40) != 0)
      {
        v39 = 120;
      }

      else
      {
        v39 = 45;
      }

      if ((v89.st_mode & 0x20) != 0)
      {
        v40 = 114;
      }

      else
      {
        v40 = 45;
      }

      if ((v89.st_mode & 0x10) != 0)
      {
        v41 = 119;
      }

      else
      {
        v41 = 45;
      }

      if ((v89.st_mode & 8) != 0)
      {
        v42 = 120;
      }

      else
      {
        v42 = 45;
      }

      if ((v89.st_mode & 4) != 0)
      {
        v43 = 114;
      }

      else
      {
        v43 = 45;
      }

      if ((v89.st_mode & 2) != 0)
      {
        v44 = 119;
      }

      else
      {
        v44 = 45;
      }

      v45 = v89.st_flags;
      if (v89.st_mode)
      {
        v46 = 120;
      }

      else
      {
        v46 = 45;
      }

      goto LABEL_156;
    }

    goto LABEL_100;
  }

  if (v89.st_dev != self->_deviceID)
  {
    v17 = brc_bread_crumbs();
    v18 = brc_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = aPcDBLSW[v89.st_mode >> 12];
      if ((v89.st_mode & 0x100) != 0)
      {
        v20 = 114;
      }

      else
      {
        v20 = 45;
      }

      if ((v89.st_mode & 0x80) != 0)
      {
        v21 = 119;
      }

      else
      {
        v21 = 45;
      }

      if ((v89.st_mode & 0x40) != 0)
      {
        v22 = 120;
      }

      else
      {
        v22 = 45;
      }

      if ((v89.st_mode & 0x20) != 0)
      {
        v23 = 114;
      }

      else
      {
        v23 = 45;
      }

      if ((v89.st_mode & 0x10) != 0)
      {
        v24 = 119;
      }

      else
      {
        v24 = 45;
      }

      if ((v89.st_mode & 8) != 0)
      {
        v25 = 120;
      }

      else
      {
        v25 = 45;
      }

      if ((v89.st_mode & 4) != 0)
      {
        v26 = 114;
      }

      else
      {
        v26 = 45;
      }

      if ((v89.st_mode & 2) != 0)
      {
        v27 = 119;
      }

      else
      {
        v27 = 45;
      }

      if (v89.st_mode)
      {
        v28 = 120;
      }

      else
      {
        v28 = 45;
      }

      *buf = 138417666;
      *v91 = v8;
      *&v91[8] = 1024;
      *&v91[10] = v89.st_dev;
      *&v91[14] = 2048;
      *&v91[16] = v89.st_ino;
      *&v91[24] = 1024;
      *&v91[26] = v19;
      v92 = 1024;
      v93 = v20;
      v94 = 1024;
      v95 = v21;
      v96 = 1024;
      v97 = v22;
      v98 = 1024;
      v99 = v23;
      v100 = 1024;
      v101 = v24;
      v102 = 1024;
      v103 = v25;
      v104 = 1024;
      v105 = v26;
      v106 = 1024;
      v107 = v27;
      v108 = 1024;
      v109 = v28;
      v110 = 1024;
      st_nlink = v89.st_nlink;
      v112 = 1024;
      st_uid = v89.st_uid;
      v114 = 1024;
      st_gid = v89.st_gid;
      v116 = 2048;
      tv_sec = v89.st_atimespec.tv_sec;
      v118 = 2048;
      v119 = v89.st_mtimespec.tv_sec;
      v120 = 2048;
      v121 = v89.st_ctimespec.tv_sec;
      v122 = 2048;
      st_size = v89.st_size;
      v124 = 1024;
      st_flags = v89.st_flags;
      v126 = 2112;
      *v127 = v17;
      _os_log_impl(&dword_223E7A000, v18, OS_LOG_TYPE_DEFAULT, "[WARNING] '%@' is not on the same volume as the root deviceID:%u fileID:%llu mode:%c%c%c%c%c%c%c%c%c%c nlink:%u uid:%u gid:%u atime:%lu mtime:%lu ctime:%lu size:%llu flags:0x%x%@", buf, 0xA2u);
    }

    close(v16);
    if (unlink([(objc_class *)v8 fileSystemRepresentation]) < 0 && *__error() != 2)
    {
      v29 = *__error();
      v30 = brc_bread_crumbs();
      v31 = brc_default_log();
      if (os_log_type_enabled(v31, 0x90u))
      {
        st_dev = v89.st_dev;
        v33 = aPcDBLSW[v89.st_mode >> 12];
        if ((v89.st_mode & 0x100) != 0)
        {
          v34 = 114;
        }

        else
        {
          v34 = 45;
        }

        v35 = v89.st_nlink;
        if ((v89.st_mode & 0x80) != 0)
        {
          v36 = 119;
        }

        else
        {
          v36 = 45;
        }

        v37 = v89.st_uid;
        v38 = v89.st_gid;
        if ((v89.st_mode & 0x40) != 0)
        {
          v39 = 120;
        }

        else
        {
          v39 = 45;
        }

        if ((v89.st_mode & 0x20) != 0)
        {
          v40 = 114;
        }

        else
        {
          v40 = 45;
        }

        if ((v89.st_mode & 0x10) != 0)
        {
          v41 = 119;
        }

        else
        {
          v41 = 45;
        }

        if ((v89.st_mode & 8) != 0)
        {
          v42 = 120;
        }

        else
        {
          v42 = 45;
        }

        if ((v89.st_mode & 4) != 0)
        {
          v43 = 114;
        }

        else
        {
          v43 = 45;
        }

        if ((v89.st_mode & 2) != 0)
        {
          v44 = 119;
        }

        else
        {
          v44 = 45;
        }

        v45 = v89.st_flags;
        if (v89.st_mode)
        {
          v46 = 120;
        }

        else
        {
          v46 = 45;
        }

LABEL_156:
        *buf = 138417922;
        *v91 = v8;
        *&v91[8] = 1024;
        *&v91[10] = st_dev;
        *&v91[14] = 2048;
        *&v91[16] = v89.st_ino;
        *&v91[24] = 1024;
        *&v91[26] = v33;
        v92 = 1024;
        v93 = v34;
        v94 = 1024;
        v95 = v36;
        v96 = 1024;
        v97 = v39;
        v98 = 1024;
        v99 = v40;
        v100 = 1024;
        v101 = v41;
        v102 = 1024;
        v103 = v42;
        v104 = 1024;
        v105 = v43;
        v106 = 1024;
        v107 = v44;
        v108 = 1024;
        v109 = v46;
        v110 = 1024;
        st_nlink = v35;
        v112 = 1024;
        st_uid = v37;
        v114 = 1024;
        st_gid = v38;
        v116 = 2048;
        tv_sec = v89.st_atimespec.tv_sec;
        v118 = 2048;
        v119 = v89.st_mtimespec.tv_sec;
        v120 = 2048;
        v121 = v89.st_ctimespec.tv_sec;
        v122 = 2048;
        st_size = v89.st_size;
        v124 = 1024;
        st_flags = v45;
        v126 = 1024;
        *v127 = v29;
        *&v127[4] = 2112;
        *&v127[6] = v30;
        v47 = "[ERROR] unlink('%@') failed deviceID:%u fileID:%llu mode:%c%c%c%c%c%c%c%c%c%c nlink:%u uid:%u gid:%u atime:%lu mtime:%lu ctime:%lu size:%llu flags:0x%x %{errno}d%@";
        v81 = v31;
        v82 = 168;
        goto LABEL_119;
      }

LABEL_121:

      *__error() = v29;
      goto LABEL_122;
    }

    goto LABEL_100;
  }

LABEL_108:
  v76 = directoryCopy;
  v77 = [(BRCStageRegistry *)self _pathForDirIndex:directoryCopy];

  objc_storeStrong(v6, v77);
  self->_stageDirectoryFileID[v76] = v89.st_ino;
  v8 = v77;
LABEL_123:

  return v16;
}

- (int)_performInStageDirectory:(unsigned __int8)directory block:(id)block
{
  directoryCopy = directory;
  blockCopy = block;
  v7 = [(BRCStageRegistry *)self _openStageDirectory:directoryCopy];
  if ((v7 & 0x80000000) != 0)
  {
    v9 = -1;
  }

  else
  {
    v8 = v7;
    v9 = blockCopy[2](blockCopy, v7);
    v10 = *__error();
    close(v8);
    *__error() = v10;
  }

  return v9;
}

- (BOOL)copyPackageFileWithPackageFd:(int)fd toStageFd:(int)stageFd relpath:(id)relpath
{
  relpathCopy = relpath;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__BRCStageRegistry_copyPackageFileWithPackageFd_toStageFd_relpath___block_invoke;
  v12[3] = &unk_278504FD8;
  v13 = relpathCopy;
  fdCopy = fd;
  stageFdCopy = stageFd;
  v9 = relpathCopy;
  v10 = [(BRCStageRegistry *)self _performInStageDirectory:0 block:v12];

  return v10 >= 0;
}

uint64_t __67__BRCStageRegistry_copyPackageFileWithPackageFd_toStageFd_relpath___block_invoke(uint64_t a1, uint64_t a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCAD78] UUID];
  v5 = [v4 UUIDString];

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) fileSystemRepresentation];
  v13 = BRCOpenAt(v6, v7, 33028, v8, v9, v10, v11, v12, v41);
  if (v13 < 0)
  {
    v27 = *__error();
    v30 = brc_bread_crumbs();
    v31 = brc_default_log();
    if (os_log_type_enabled(v31, 0x90u))
    {
      v37 = *(a1 + 40);
      v38 = *(a1 + 32);
      *buf = 67109890;
      v43 = v37;
      v44 = 2112;
      *v45 = v38;
      *&v45[8] = 1024;
      *v46 = v27;
      *&v46[4] = 2112;
      *&v46[6] = v30;
      _os_log_error_impl(&dword_223E7A000, v31, 0x90u, "[ERROR] BRCOpenAt(%d, %@, O_RDONLY) failed %{errno}d%@", buf, 0x22u);
    }

    goto LABEL_17;
  }

  v14 = v13;
  v15 = [v5 fileSystemRepresentation];
  v21 = BRCOpenAt(a2, v15, 2822, v16, v17, v18, v19, v20, 0x1B0u);
  if (v21 < 0)
  {
    v32 = *__error();
    v33 = brc_bread_crumbs();
    v34 = brc_default_log();
    if (os_log_type_enabled(v34, 0x90u))
    {
      *buf = 67109890;
      v43 = a2;
      v44 = 2112;
      *v45 = v5;
      *&v45[8] = 1024;
      *v46 = v32;
      *&v46[4] = 2112;
      *&v46[6] = v33;
      _os_log_error_impl(&dword_223E7A000, v34, 0x90u, "[ERROR] BRCOpenAt(%d, %@, O_CREAT|O_RDWR|O_EXCL) %{errno}d%@", buf, 0x22u);
    }

    *__error() = v32;
    v27 = *__error();
    close(v14);
    goto LABEL_18;
  }

  v22 = v21;
  v23 = fcopyfile(v14, v21, 0, 8u);
  v24 = *__error();
  close(v14);
  *__error() = v24;
  v25 = *__error();
  close(v22);
  *__error() = v25;
  if (v23 < 0)
  {
    v27 = *__error();
    v30 = brc_bread_crumbs();
    v35 = brc_default_log();
    if (os_log_type_enabled(v35, 0x90u))
    {
      *buf = 67109890;
      v43 = v14;
      v44 = 1024;
      *v45 = v22;
      *&v45[4] = 1024;
      *&v45[6] = v27;
      *v46 = 2112;
      *&v46[2] = v30;
      _os_log_error_impl(&dword_223E7A000, v35, 0x90u, "[ERROR] fcopyfile(%d, %d, NULL, COPYFILE_DATA) %{errno}d%@", buf, 0x1Eu);
    }

LABEL_17:
LABEL_18:
    *__error() = v27;
    v26 = 0xFFFFFFFFLL;
    goto LABEL_19;
  }

  v26 = 0;
  if ((BRCRenameAt(a2, v5, *(a1 + 44), *(a1 + 32), 0) & 0x80000000) != 0)
  {
    v27 = *__error();
    v28 = brc_bread_crumbs();
    v29 = brc_default_log();
    if (os_log_type_enabled(v29, 0x90u))
    {
      v39 = *(a1 + 44);
      v40 = *(a1 + 32);
      *buf = 67110402;
      v43 = a2;
      v44 = 2112;
      *v45 = v5;
      *&v45[8] = 1024;
      *v46 = v39;
      *&v46[4] = 2112;
      *&v46[6] = v40;
      v47 = 1024;
      v48 = v27;
      v49 = 2112;
      v50 = v28;
      _os_log_error_impl(&dword_223E7A000, v29, 0x90u, "[ERROR] BRCRenameAt(%d, %@, %d, %@, 0) %{errno}d%@", buf, 0x32u);
    }

    goto LABEL_18;
  }

LABEL_19:

  return v26;
}

- (id)_pathInStage:(unint64_t)stage index:(unsigned __int8 *)index generationID:(unsigned int *)d
{
  v29 = *MEMORY[0x277D85DE8];
  v22 = 0;
  v9 = BRCOpenByID(self->_deviceID, stage, 2129924);
  if (v9 < 0)
  {
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [BRCStageRegistry _pathInStage:index:generationID:];
    }

    v12 = 0;
    goto LABEL_14;
  }

  v10 = v9;
  v21 = 0;
  v11 = _fstatItem(v9, &v22, d, 0, &v21);
  v12 = v21;
  close(v10);
  if (v11 < 0)
  {
LABEL_14:
    v19 = 0;
    goto LABEL_15;
  }

  if (v22 != stage)
  {
    v17 = brc_bread_crumbs();
    v18 = brc_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218498;
      v24 = v22;
      v25 = 2048;
      stageCopy = stage;
      v27 = 2112;
      v28 = v17;
      _os_log_fault_impl(&dword_223E7A000, v18, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: returnedFileID(%llu) != fileID(%llu)%@", buf, 0x20u);
    }

    goto LABEL_14;
  }

  v13 = 0;
  stageDirectoryPath = self->_stageDirectoryPath;
  while (![v12 hasPrefix:stageDirectoryPath[v13]])
  {
    if (++v13 == 8)
    {
      goto LABEL_14;
    }
  }

  *index = v13;
  v12 = v12;
  v19 = v12;
LABEL_15:

  return v19;
}

- (BOOL)markUploadActiveForStageID:(id)d
{
  dCopy = d;
  v5 = self->_activeUploadStageIDs;
  objc_sync_enter(v5);
  v6 = [(NSMutableSet *)self->_activeUploadStageIDs containsObject:dCopy];
  if ((v6 & 1) == 0)
  {
    [(NSMutableSet *)self->_activeUploadStageIDs addObject:dCopy];
  }

  objc_sync_exit(v5);

  return v6 ^ 1;
}

- (void)associateSyncUpStageID:(id)d withOperation:(id)operation
{
  dCopy = d;
  operationCopy = operation;
  if ([(BRCStageRegistry *)self markUploadActiveForStageID:dCopy])
  {
    completionBlock = [operationCopy completionBlock];
    objc_initWeak(&location, self);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __57__BRCStageRegistry_associateSyncUpStageID_withOperation___block_invoke;
    v10[3] = &unk_278505000;
    objc_copyWeak(&v13, &location);
    v9 = completionBlock;
    v12 = v9;
    v11 = dCopy;
    [operationCopy setCompletionBlock:v10];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __57__BRCStageRegistry_associateSyncUpStageID_withOperation___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[18];
    objc_sync_enter(v5);
    [v4[18] removeObject:*(a1 + 32)];
    objc_sync_exit(v5);

    v6 = *(a1 + 40);
    if (v6)
    {
      (*(v6 + 16))();
    }

    [v4 cleanupStagedSyncUpWithID:*(a1 + 32)];
  }

  else
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      (*(v7 + 16))();
    }
  }

  objc_autoreleasePoolPop(v2);
}

- (void)markDownloadActiveForStageID:(id)d
{
  dCopy = d;
  v4 = self->_activeDownloadStageIDs;
  objc_sync_enter(v4);
  if (([(NSMutableSet *)self->_activeDownloadStageIDs containsObject:dCopy]& 1) == 0)
  {
    [(NSMutableSet *)self->_activeDownloadStageIDs addObject:dCopy];
  }

  objc_sync_exit(v4);
}

- (id)_anchorNamePrefixForRecordZoneID:(id)d
{
  v3 = MEMORY[0x277CFAE60];
  dCopy = d;
  v5 = [[v3 alloc] initWithRecordZoneID:dCopy];

  mangledIDString = [v5 mangledIDString];
  v7 = [mangledIDString stringByAppendingString:@":"];

  return v7;
}

- (id)_anchorNameForChangeToken:(id)token recordZoneID:(id)d
{
  tokenCopy = token;
  v7 = [(BRCStageRegistry *)self _anchorNamePrefixForRecordZoneID:d];
  v8 = [tokenCopy hash];

  v9 = [v7 stringByAppendingFormat:@"%llx", v8];

  return v9;
}

- (id)_anchorNameForRecordID:(id)d
{
  dCopy = d;
  recordName = [dCopy recordName];
  zoneID = [dCopy zoneID];
  zoneName = [zoneID zoneName];
  v7 = [recordName stringByAppendingPathComponent:zoneName];

  zoneID2 = [dCopy zoneID];
  ownerName = [zoneID2 ownerName];
  LOBYTE(zoneName) = [ownerName isEqualToString:*MEMORY[0x277CBBF28]];

  if ((zoneName & 1) == 0)
  {
    zoneID3 = [dCopy zoneID];
    ownerName2 = [zoneID3 ownerName];
    v12 = [v7 stringByAppendingFormat:@":%@", ownerName2];

    v7 = v12;
  }

  v13 = [v7 stringByReplacingOccurrencesOfString:@"/" withString:@":"];

  return v13;
}

- (id)pendingListRecordDirWithStartingChangeToken:(id)token
{
  v4 = [(BRCStageRegistry *)self _anchorNameForRecordID:token];
  v5 = [(NSString *)self->_stageDirectoryPath[4] stringByAppendingPathComponent:v4];
  v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5 isDirectory:1];

  return v6;
}

- (id)pendingDeltaFetchRecordDirWithStartingChangeToken:(id)token recordZoneID:(id)d
{
  v5 = [(BRCStageRegistry *)self _anchorNameForChangeToken:token recordZoneID:d];
  if (v5)
  {
    v6 = [(NSString *)self->_stageDirectoryPath[3] stringByAppendingPathComponent:v5];
    if (v6)
    {
      v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:v6 isDirectory:1];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)createURLForUploadWithStageID:(id)d name:(id)name
{
  dCopy = d;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __55__BRCStageRegistry_createURLForUploadWithStageID_name___block_invoke;
  v12[3] = &unk_278504FB0;
  v13 = dCopy;
  v7 = dCopy;
  nameCopy = name;
  [(BRCStageRegistry *)self _performInStageDirectory:2 block:v12];
  nameCopy = [(NSString *)self->_stageDirectoryPath[2] stringByAppendingFormat:@"/%@/%@", v7, nameCopy];

  v10 = [MEMORY[0x277CBEBC0] fileURLWithPath:nameCopy isDirectory:0];

  return v10;
}

- (id)createURLForThumbnailUploadWithStageID:(id)d
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", self->_stageDirectoryPath[5], d];
  v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3 isDirectory:0];

  return v4;
}

- (id)createURLForUserNotificationThumbnailGenerationWithStageID:(id)d
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@-userNotification.jpg", self->_stageDirectoryPath[5], d];
  v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3 isDirectory:0];

  return v4;
}

- (void)cleanupStagedSyncUpWithID:(id)d
{
  v5 = [(NSString *)self->_stageDirectoryPath[2] stringByAppendingPathComponent:d];
  diskReclaimer = [(BRCAccountSession *)self->_session diskReclaimer];
  [diskReclaimer renameAndUnlinkInBackgroundItemAt:0xFFFFFFFFLL path:v5];
}

- (void)cleanupStagedDownloadWithID:(id)d
{
  dCopy = d;
  v4 = self->_activeDownloadStageIDs;
  objc_sync_enter(v4);
  [(NSMutableSet *)self->_activeDownloadStageIDs removeObject:dCopy];
  objc_sync_exit(v4);

  _stageDirectoryForDownloads = [(BRCStageRegistry *)self _stageDirectoryForDownloads];
  v6 = [_stageDirectoryForDownloads stringByAppendingPathComponent:dCopy];

  diskReclaimer = [(BRCAccountSession *)self->_session diskReclaimer];
  [diskReclaimer renameAndUnlinkInBackgroundItemAt:0xFFFFFFFFLL path:v6];
}

- (void)cleanupStagedUploadWithID:(id)d
{
  v14[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = self->_activeUploadStageIDs;
  objc_sync_enter(v5);
  [(NSMutableSet *)self->_activeUploadStageIDs removeObject:dCopy];
  objc_sync_exit(v5);

  v6 = [(NSString *)self->_stageDirectoryPath[2] stringByAppendingPathComponent:dCopy];
  v7 = MEMORY[0x277CBEBC0];
  v14[0] = v6;
  v14[1] = @"ckpackage";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v9 = [v7 fileURLWithPathComponents:v8];

  [MEMORY[0x277CBC538] destroyAnchorAndPackageAnchoredAtURL:v9];
  p_session = &self->_session;
  diskReclaimer = [(BRCAccountSession *)self->_session diskReclaimer];
  [diskReclaimer renameAndUnlinkInBackgroundItemAt:0xFFFFFFFFLL path:v6];

  v12 = [(NSString *)self->_stageDirectoryPath[5] stringByAppendingPathComponent:dCopy];

  diskReclaimer2 = [(BRCAccountSession *)*p_session diskReclaimer];
  [diskReclaimer2 renameAndUnlinkInBackgroundItemAt:0xFFFFFFFFLL path:v12];
}

- (id)createURLForDownloadWithStageID:(id)d name:(id)name
{
  dCopy = d;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __57__BRCStageRegistry_createURLForDownloadWithStageID_name___block_invoke;
  v12[3] = &unk_278504FB0;
  v13 = dCopy;
  v7 = dCopy;
  nameCopy = name;
  [(BRCStageRegistry *)self _performInStageDirectory:1 block:v12];
  nameCopy = [(NSString *)self->_stageDirectoryPath[1] stringByAppendingFormat:@"/%@/%@", v7, nameCopy];

  v10 = [MEMORY[0x277CBEBC0] fileURLWithPath:nameCopy isDirectory:0];

  return v10;
}

- (void)cleanupStagedDownloadWithID:(id)d forItemID:(id)iD
{
  iDCopy = iD;
  v6 = [(NSString *)self->_stageDirectoryPath[1] stringByAppendingPathComponent:d];
  if (!iDCopy || ![(BRCStageRegistry *)self _graveyardAt:0xFFFFFFFFLL path:v6 forItemID:iDCopy])
  {
    diskReclaimer = [(BRCAccountSession *)self->_session diskReclaimer];
    [diskReclaimer renameAndUnlinkInBackgroundItemAt:0xFFFFFFFFLL path:v6];
  }
}

- (BOOL)_graveyardAt:(int)at path:(id)path forItemID:(id)d
{
  v6 = *&at;
  v31 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  dCopy = d;
  lowDiskSpace = self->_lowDiskSpace;
  memset(&v24, 0, sizeof(v24));
  if (!dCopy || lowDiskSpace || !fstatat(v6, [pathCopy fileSystemRepresentation], &v24, 32) && (st_size = v24.st_size, (v24.st_size & 0xF000) == 0x8000) && (+[BRCUserDefaults defaultsForMangledID:](BRCUserDefaults, "defaultsForMangledID:", 0), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "minFileSizeForGraveyard"), v12, st_size <= v13))
  {
    v16 = brc_bread_crumbs();
    v17 = brc_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109634;
      v26 = v6;
      v27 = 2112;
      v28 = pathCopy;
      v29 = 2112;
      v30 = v16;
      _os_log_debug_impl(&dword_223E7A000, v17, OS_LOG_TYPE_DEBUG, "[DEBUG] deleting (%d, '%@') asynchronously%@", buf, 0x1Cu);
    }

    diskReclaimer = [(BRCAccountSession *)self->_session diskReclaimer];
    v14 = [diskReclaimer renameAndUnlinkInBackgroundItemAt:v6 path:pathCopy];
  }

  else
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __48__BRCStageRegistry__graveyardAt_path_forItemID___block_invoke;
    v19[3] = &unk_278505028;
    v20 = dCopy;
    selfCopy = self;
    v23 = v6;
    v22 = pathCopy;
    v14 = [(BRCStageRegistry *)self _performInStageDirectory:0 block:v19]== 0;

    diskReclaimer = v20;
  }

  return v14;
}

uint64_t __48__BRCStageRegistry__graveyardAt_path_forItemID___block_invoke(uint64_t a1, uint64_t a2)
{
  v24[2] = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 32) itemIDString];
  v5 = [*(*(a1 + 40) + 8) diskReclaimer];
  [v5 renameAndUnlinkInBackgroundItemAt:a2 path:v4];

  if ((BRCRenameAt(*(a1 + 56), *(a1 + 48), a2, v4, 0) & 0x80000000) != 0)
  {
    v6 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v17 = *(a1 + 56);
      v18 = *(a1 + 48);
      v19 = *__error();
      v20 = 67110402;
      *v21 = v17;
      *&v21[4] = 2112;
      *&v21[6] = v18;
      v22 = 1024;
      *v23 = a2;
      *&v23[4] = 2112;
      *&v23[6] = v4;
      *&v23[14] = 1024;
      *&v23[16] = v19;
      LOWORD(v24[0]) = 2112;
      *(v24 + 2) = v6;
      _os_log_debug_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] renameat(%d, '%@', %d, '%@') failed %{errno}d%@", &v20, 0x32u);
    }

    v12 = 0xFFFFFFFFLL;
  }

  else
  {
    v6 = [*(*(a1 + 40) + 16) stringByAppendingPathComponent:v4];
    if (chflags([v6 fileSystemRepresentation], 0) < 0)
    {
      v7 = *__error();
      v8 = brc_bread_crumbs();
      v9 = brc_default_log();
      if (os_log_type_enabled(v9, 0x90u))
      {
        v20 = 138412802;
        *v21 = v6;
        *&v21[8] = 1024;
        *&v21[10] = v7;
        v22 = 2112;
        *v23 = v8;
        _os_log_error_impl(&dword_223E7A000, v9, 0x90u, "[ERROR] failed removing documentID for %@ %{errno}d%@", &v20, 0x1Cu);
      }

      *__error() = v7;
    }

    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v14 = *(a1 + 56);
      v15 = *(a1 + 48);
      v16 = *(a1 + 32);
      v20 = 67110146;
      *v21 = v14;
      *&v21[4] = 2112;
      *&v21[6] = v15;
      v22 = 2112;
      *v23 = v6;
      *&v23[8] = 2112;
      *&v23[10] = v16;
      *&v23[18] = 2112;
      v24[0] = v10;
      _os_log_debug_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] moved (%d, '%@') to the graveyard at '%@' for %@%@", &v20, 0x30u);
    }

    v12 = 0;
  }

  return v12;
}

- (BOOL)existsInStage:(unint64_t)stage generationID:(unsigned int *)d
{
  v10 = 0;
  if (!stage)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [BRCStageRegistry existsInStage:generationID:];
    }

    if (d)
    {
      v6 = 0;
      *d = 0;
      return v6;
    }

    return 0;
  }

  v5 = [(BRCStageRegistry *)self _pathInStage:stage index:&v10 generationID:d];
  if (!v5)
  {
    return 0;
  }

  v6 = v10 == 1;

  return v6;
}

- (int64_t)_purgeSpaceUnderQueue:(int64_t)queue withUrgency:(int)urgency
{
  v4 = *&urgency;
  v7 = [(BRCStageRegistry *)self garbageCollectSpace:?];
  if (v7 < queue && v4 <= 4)
  {
    do
    {
      v8 = objc_autoreleasePoolPush();
      v7 += [(BRCStageRegistry *)self purgeGraveyardSpace:queue - v7 withUrgency:v4];
      objc_autoreleasePoolPop(v8);
      if (v4 == -2)
      {
        break;
      }

      if (v7 >= queue)
      {
        break;
      }

      v9 = v4 <= 3;
      v4 = (v4 + 1);
    }

    while (v9);
  }

  return v7;
}

- (int64_t)purgeSpace:(int64_t)space withUrgency:(int)urgency
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__BRCStageRegistry_purgeSpace_withUrgency___block_invoke;
  v7[3] = &unk_278505050;
  v7[4] = self;
  v7[5] = &v9;
  v7[6] = space;
  urgencyCopy = urgency;
  dispatch_sync(queue, v7);
  v5 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v5;
}

void *__43__BRCStageRegistry_purgeSpace_withUrgency___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _purgeSpaceUnderQueue:*(a1 + 48) withUrgency:*(a1 + 56)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)lowDiskStatusChangedForDevice:(int)device hasEnoughSpace:(BOOL)space
{
  if (space)
  {
    self->_lowDiskSpace = 0;
  }

  else if (!self->_lowDiskSpace)
  {
    v8[5] = v4;
    v8[6] = v5;
    self->_lowDiskSpace = 1;
    queue = self->_queue;
    tracker = self->_tracker;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __65__BRCStageRegistry_lowDiskStatusChangedForDevice_hasEnoughSpace___block_invoke;
    v8[3] = &unk_2784FF450;
    v8[4] = self;
    brc_task_tracker_async_with_logs(tracker, queue, v8, 0);
  }
}

uint64_t __65__BRCStageRegistry_lowDiskStatusChangedForDevice_hasEnoughSpace___block_invoke(uint64_t a1)
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __65__BRCStageRegistry_lowDiskStatusChangedForDevice_hasEnoughSpace___block_invoke_cold_1();
  }

  return [*(a1 + 32) _purgeSpaceUnderQueue:0x7FFFFFFFFFFFFFFFLL withUrgency:3];
}

- (int64_t)purgableSpace
{
  v26[2] = *MEMORY[0x277D85DE8];
  v2 = self->_stageDirectoryPath[0];
  v26[0] = [(NSString *)v2 fileSystemRepresentation];
  v26[1] = 0;
  v3 = fts_open(v26, 16, 0);
  value = 0;
  if (!v3)
  {
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, 0x90u))
    {
      [BRCStageRegistry purgableSpace];
    }

    v7 = 0;
    goto LABEL_33;
  }

  v4 = v3;
  v5 = fts_read(v3);
  if (!v5)
  {
    v7 = 0;
    goto LABEL_32;
  }

  v6 = v5;
  v7 = 0;
  while (1)
  {
    fts_info = v6->fts_info;
    if (fts_info > 6)
    {
      break;
    }

    if (fts_info == 1)
    {
      if (v6->fts_level == 1)
      {
        if (getxattr(v6->fts_path, "com.apple.bird.graveyard.size#N", &value, 8uLL, 0, 0) == 8)
        {
          v7 += value;
          fts_set(v4, v6, 4);
        }

        else
        {
          value = 0;
        }
      }

      goto LABEL_23;
    }

    if (fts_info == 6 && v6->fts_level == 1)
    {
      setxattr(v6->fts_path, "com.apple.bird.graveyard.size#N", &value, 8uLL, 0, 0);
      st_size = value;
LABEL_11:
      v7 += st_size;
    }

LABEL_23:
    v6 = fts_read(v4);
    if (!v6)
    {
      goto LABEL_32;
    }
  }

  if (fts_info == 8)
  {
    st_size = v6->fts_statp->st_size;
    if (v6->fts_level != 1)
    {
      value += st_size;
      goto LABEL_23;
    }

    goto LABEL_11;
  }

  if (fts_info != 7 && fts_info != 10)
  {
    goto LABEL_23;
  }

  v13 = *__error();
  v14 = brc_bread_crumbs();
  v15 = brc_default_log();
  if (os_log_type_enabled(v15, 0x90u))
  {
    fts_path = v6->fts_path;
    *buf = 136315650;
    v21 = fts_path;
    v22 = 1024;
    v23 = v13;
    v24 = 2112;
    v25 = v14;
    _os_log_error_impl(&dword_223E7A000, v15, 0x90u, "[ERROR] fts_read() failed for path %s %{errno}d%@", buf, 0x1Cu);
  }

  *__error() = v13;
LABEL_32:
  fts_close(v4);
LABEL_33:

  return v7;
}

- (int64_t)purgeGraveyardSpace:(int64_t)space withUrgency:(int)urgency
{
  v6 = self->_stageDirectoryPath[0];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v7 = time(0);
  if (urgency > 2)
  {
    if ((urgency - 3) >= 2)
    {
      v10 = 0;
    }

    else
    {
      v10 = 0x8000000000000000;
    }
  }

  else
  {
    if (urgency == -2 || urgency == 1)
    {
      v8 = [BRCUserDefaults defaultsForMangledID:0];
      [v8 graveyardAgeDeltaInLowUrgency];
      goto LABEL_10;
    }

    if (urgency == 2)
    {
      v8 = [BRCUserDefaults defaultsForMangledID:0];
      [v8 graveyardAgeDeltaInMedUrgency];
LABEL_10:
      v10 = v9;

      goto LABEL_11;
    }

    v10 = 0;
  }

LABEL_11:
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __52__BRCStageRegistry_purgeGraveyardSpace_withUrgency___block_invoke;
  v16[3] = &unk_278505078;
  v11 = v6;
  v17 = v11;
  v18 = &v22;
  spaceCopy = space;
  v20 = v7;
  v21 = v10;
  BRCRemoveFolderInAutoreleasepool(v11, v16, 1, 0);
  v12 = brc_bread_crumbs();
  v13 = brc_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [BRCStageRegistry purgeGraveyardSpace:withUrgency:];
  }

  v14 = v23[3];
  _Block_object_dispose(&v22, 8);

  return v14;
}

uint64_t __52__BRCStageRegistry_purgeGraveyardSpace_withUrgency___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [MEMORY[0x277CCACA8] br_pathWithFileSystemRepresentation:a2];
  v6 = [v5 br_pathRelativeToPath:a1[4]];
  v7 = [v6 pathComponents];
  if ([v5 isEqualToString:a1[4]])
  {
    v8 = 0;
  }

  else
  {
    v9 = [v7 count];
    v10 = *(a1[5] + 8);
    v11 = *(v10 + 24);
    if (v9 != 1)
    {
      goto LABEL_7;
    }

    if (v11 >= a1[6])
    {
      v8 = 2;
      goto LABEL_9;
    }

    if (a1[7] - *(a3 + 48) < a1[8])
    {
      v8 = 1;
    }

    else
    {
LABEL_7:
      v8 = 0;
      *(v10 + 24) = v11 + *(a3 + 96);
    }
  }

LABEL_9:

  return v8;
}

- (int64_t)_purgeAllUploadsWithIncludeActiveItems:(BOOL)items
{
  itemsCopy = items;
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [BRCStageRegistry _purgeAllUploadsWithIncludeActiveItems:];
  }

  v7 = [(BRCStageRegistry *)self _garbageCollectUploadsIncludingActiveUploads:itemsCopy];
  v8 = [(BRCStageRegistry *)self _garbageCollectLiveItemsIncludingActiveItems:itemsCopy]+ v7;
  v9 = [(BRCStageRegistry *)self _garbageCollectUploadThumbnailsIncludingActiveUploads:itemsCopy];
  v10 = v9 + [(BRCStageRegistry *)self _removeUnusedXattrBlobs];
  v11 = brc_bread_crumbs();
  v12 = brc_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [BRCStageRegistry _purgeAllUploadsWithIncludeActiveItems:];
  }

  return v8 + v10;
}

- (BOOL)_hasActiveUploadWithStageID:(id)d
{
  dCopy = d;
  v5 = self->_activeUploadStageIDs;
  objc_sync_enter(v5);
  v6 = [(NSMutableSet *)self->_activeUploadStageIDs containsObject:dCopy];
  objc_sync_exit(v5);

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    clientDB = [(BRCAccountSession *)self->_session clientDB];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __48__BRCStageRegistry__hasActiveUploadWithStageID___block_invoke;
    v10[3] = &unk_278502C70;
    v11 = dCopy;
    v12 = &v13;
    [clientDB performWithFlags:1 action:v10];

    v7 = *(v14 + 24);
    _Block_object_dispose(&v13, 8);
  }

  return v7 & 1;
}

uint64_t __48__BRCStageRegistry__hasActiveUploadWithStageID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 numberWithSQL:{@"SELECT 1 FROM client_uploads WHERE transfer_stage = %@", *(a1 + 32)}];
  if ([v3 BOOLValue])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return 1;
}

- (int64_t)_garbageCollectUploadsIncludingActiveUploads:(BOOL)uploads
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __65__BRCStageRegistry__garbageCollectUploadsIncludingActiveUploads___block_invoke;
  v4[3] = &unk_2785050A0;
  uploadsCopy = uploads;
  v4[4] = self;
  return [(BRCStageRegistry *)self _garbageCollectItemsIncludingActiveItems:uploads stageIndex:2 maxAge:0 deletePredicate:v4];
}

uint64_t __65__BRCStageRegistry__garbageCollectUploadsIncludingActiveUploads___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 pathComponents];
  v8 = [v7 count];

  if (v8 == 1)
  {
    v9 = [v6 lastPathComponent];
    if (*(a1 + 40) & 1) == 0 && ([*(a1 + 32) _hasActiveUploadWithStageID:v9])
    {
      goto LABEL_7;
    }
  }

  v10 = [v6 lastPathComponent];
  v11 = [v10 isEqualToString:@"ckpackage"];

  if (!v11)
  {
    v13 = 1;
    goto LABEL_9;
  }

  v12 = MEMORY[0x277CBC538];
  v9 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5 isDirectory:0];
  [v12 destroyAnchorAndPackageAnchoredAtURL:v9];
LABEL_7:

  v13 = 0;
LABEL_9:

  return v13;
}

- (id)_getActiveDownloadStageIDs
{
  v3 = self->_activeDownloadStageIDs;
  objc_sync_enter(v3);
  v4 = [(NSMutableSet *)self->_activeDownloadStageIDs copy];
  objc_sync_exit(v3);

  return v4;
}

- (int64_t)_garbageCollectDownloads
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  _stageDirectoryForDownloads = [(BRCStageRegistry *)self _stageDirectoryForDownloads];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__BRCStageRegistry__garbageCollectDownloads__block_invoke;
  v7[3] = &unk_2785050F0;
  v4 = _stageDirectoryForDownloads;
  v8 = v4;
  selfCopy = self;
  v10 = &v11;
  [BRCFileSystemWrapper removeFolderInAutoreleasepoolAtPath:v4 excludingSelf:1 allowLongPaths:0 callback:v7];
  v5 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v5;
}

uint64_t __44__BRCStageRegistry__garbageCollectDownloads__block_invoke(void *a1, uint64_t a2, int *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCACA8] br_pathWithFileSystemRepresentation:a2];
  v6 = [v5 br_pathRelativeToPath:a1[4]];
  v7 = [v6 pathComponents];
  v8 = [v7 count];

  if (v8 == 1)
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    v9 = v6;
    v10 = *(a1[5] + 152);
    objc_sync_enter(v10);
    v11 = [*(a1[5] + 152) containsObject:v9];
    objc_sync_exit(v10);

    if (v11)
    {
      v12 = 1;
    }

    else
    {
      v13 = [*(a1[5] + 8) clientReadDatabaseFacade];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __44__BRCStageRegistry__garbageCollectDownloads__block_invoke_2;
      v21[3] = &unk_2785050C8;
      v14 = v13;
      v22 = v14;
      v15 = v9;
      v23 = v15;
      v24 = &v25;
      [v14 performWithFlags:1 action:v21];
      v12 = *(v26 + 6);
      if (!v12)
      {
        *(*(a1[6] + 8) + 24) += *(a3 + 12);
        v16 = brc_bread_crumbs();
        v17 = brc_default_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v19 = *a3;
          v20 = *(a3 + 1);
          *buf = 138413058;
          v30 = v15;
          v31 = 1024;
          v32 = v19;
          v33 = 2048;
          v34 = v20;
          v35 = 2112;
          v36 = v16;
          _os_log_debug_impl(&dword_223E7A000, v17, OS_LOG_TYPE_DEBUG, "[DEBUG] removing staged file for download: %@ device:%d ino:%lld%@", buf, 0x26u);
        }

        v12 = *(v26 + 6);
      }
    }

    _Block_object_dispose(&v25, 8);
  }

  else
  {
    v12 = 0;
    *(*(a1[6] + 8) + 24) += *(a3 + 12);
  }

  return v12;
}

uint64_t __44__BRCStageRegistry__garbageCollectDownloads__block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) hasDownloadJobWithTransferStageID:*(a1 + 40)])
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  return 1;
}

- (int64_t)_garbageCollectDeltaSyncDatabases
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v3 = objc_opt_new();
  serverDB = [(BRCAccountSession *)self->_session serverDB];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__BRCStageRegistry__garbageCollectDeltaSyncDatabases__block_invoke;
  v8[3] = &unk_278503AD8;
  v8[4] = self;
  v5 = v3;
  v9 = v5;
  v10 = &v11;
  [serverDB performWithFlags:1 action:v8];

  v6 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v6;
}

uint64_t __53__BRCStageRegistry__garbageCollectDeltaSyncDatabases__block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 8);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __53__BRCStageRegistry__garbageCollectDeltaSyncDatabases__block_invoke_2;
  v14[3] = &unk_278504EC0;
  v14[4] = v3;
  v15 = v2;
  [v4 enumerateServerZones:v14];
  v5 = *(*(a1 + 32) + 40);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__BRCStageRegistry__garbageCollectDeltaSyncDatabases__block_invoke_3;
  v10[3] = &unk_2785050F0;
  v11 = v5;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v12 = v6;
  v13 = v7;
  v8 = v5;
  BRCRemoveFolderInAutoreleasepool(v8, v10, 1, 0);

  return 1;
}

uint64_t __53__BRCStageRegistry__garbageCollectDeltaSyncDatabases__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 changeState];
  v6 = [v5 changeToken];
  v7 = [v4 zoneID];

  v8 = [v3 _anchorNameForChangeToken:v6 recordZoneID:v7];

  [*(a1 + 40) addObject:v8];
  return 1;
}

uint64_t __53__BRCStageRegistry__garbageCollectDeltaSyncDatabases__block_invoke_3(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  v5 = [MEMORY[0x277CCACA8] br_pathWithFileSystemRepresentation:a2];
  v6 = [v5 br_pathRelativeToPath:a1[4]];
  v7 = [v6 pathComponents];
  if ([v7 count] == 1 && (v8 = a1[5], objc_msgSend(v7, "objectAtIndexedSubscript:", 0), v9 = objc_claimAutoreleasedReturnValue(), LOBYTE(v8) = objc_msgSend(v8, "containsObject:", v9), v9, (v8 & 1) != 0))
  {
    v10 = 1;
  }

  else
  {
    v10 = 0;
    *(*(a1[6] + 8) + 24) += *(a3 + 96);
  }

  return v10;
}

- (int64_t)_garbageCollectQBSDatabases
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v3 = self->_session;
  serverDB = [(BRCAccountSession *)v3 serverDB];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__BRCStageRegistry__garbageCollectQBSDatabases__block_invoke;
  v8[3] = &unk_278505140;
  v10 = &v11;
  v8[4] = self;
  v5 = v3;
  v9 = v5;
  [serverDB performWithFlags:1 action:v8];

  v6 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v6;
}

uint64_t __47__BRCStageRegistry__garbageCollectQBSDatabases__block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__BRCStageRegistry__garbageCollectQBSDatabases__block_invoke_2;
  v4[3] = &unk_278505118;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  *(*(*(a1 + 48) + 8) + 24) += [v2 _processPendingListDatabaseObjects:v4];

  return 1;
}

BOOL __47__BRCStageRegistry__garbageCollectQBSDatabases__block_invoke_2(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = [*(a1 + 32) serverZoneByName:v8 ownerName:a4];
  v10 = [v9 zoneID];

  if (v10)
  {
    v11 = objc_alloc(MEMORY[0x277CBC5D0]);
    v12 = [v9 zoneID];
    v10 = [v11 initWithRecordName:v7 zoneID:v12];

    v13 = [*(a1 + 32) zoneAppRetriever];
    v14 = [v10 brc_itemIDWithZoneAppRetriever:v13];

    if (v9 && v10 && v14)
    {
      v15 = [v9 clientZone];
      v16 = [*(a1 + 32) serverReadWriteDatabaseFacade];
      v17 = [v15 serverItemTypeByItemID:v14 dbFacade:v16];

      v18 = (v17 - 9) < 2;
      goto LABEL_10;
    }
  }

  else
  {
    v14 = 0;
  }

  v19 = brc_bread_crumbs();
  v20 = brc_default_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
  {
    v22 = 138412802;
    v23 = v7;
    v24 = 2112;
    v25 = v8;
    v26 = 2112;
    v27 = v19;
    _os_log_fault_impl(&dword_223E7A000, v20, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Failed to parse record name %@ or zone %@%@", &v22, 0x20u);
  }

  v18 = 0;
LABEL_10:

  return v18;
}

- (unint64_t)_processPendingListDatabaseObjects:(id)objects
{
  objectsCopy = objects;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v5 = self->_stageDirectoryPath[4];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__BRCStageRegistry__processPendingListDatabaseObjects___block_invoke;
  v10[3] = &unk_278505168;
  v6 = v5;
  v11 = v6;
  v13 = &v14;
  v7 = objectsCopy;
  v12 = v7;
  BRCRemoveFolderInAutoreleasepool(v6, v10, 1, 0);
  v8 = v15[3];

  _Block_object_dispose(&v14, 8);
  return v8;
}

uint64_t __55__BRCStageRegistry__processPendingListDatabaseObjects___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = [MEMORY[0x277CCACA8] br_pathWithFileSystemRepresentation:a2];
    v6 = [v5 br_pathRelativeToPath:a1[4]];
    v7 = [v6 pathComponents];
    if ([v7 count] != 1)
    {
      v10 = 0;
      *(*(a1[6] + 8) + 24) += *(a3 + 96);
LABEL_16:

      return v10;
    }

    v8 = [v6 componentsSeparatedByString:@":"];
    if ([v8 count] == 3)
    {
      v19 = v5;
      v9 = *MEMORY[0x277CBBF28];
    }

    else
    {
      if ([v8 count] != 4)
      {
        v16 = brc_bread_crumbs();
        v17 = brc_default_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          __55__BRCStageRegistry__processPendingListDatabaseObjects___block_invoke_cold_1();
        }

        v10 = 0;
        *(*(a1[6] + 8) + 24) += *(a3 + 96);
        goto LABEL_15;
      }

      v19 = v5;
      v9 = [v8 lastObject];
    }

    v11 = v9;
    v12 = [v8 objectAtIndexedSubscript:2];
    v13 = [v8 objectAtIndexedSubscript:0];
    v14 = [v8 objectAtIndexedSubscript:1];
    v15 = [v13 stringByAppendingPathComponent:v14];

    v10 = (*(a1[5] + 16))();
    if (!v10)
    {
      *(*(a1[6] + 8) + 24) += *(a3 + 96);
    }

    v5 = v19;
LABEL_15:

    goto LABEL_16;
  }

  return 1;
}

- (void)removeDatabaseObjectsForZone:(id)zone
{
  zoneCopy = zone;
  zoneID = [zoneCopy zoneID];
  v6 = [(BRCStageRegistry *)self _anchorNamePrefixForRecordZoneID:zoneID];

  v7 = self->_stageDirectoryPath[3];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __49__BRCStageRegistry_removeDatabaseObjectsForZone___block_invoke;
  v13[3] = &unk_278505190;
  v14 = v7;
  v15 = v6;
  v8 = v6;
  v9 = v7;
  BRCRemoveFolderInAutoreleasepool(v9, v13, 1, 0);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__BRCStageRegistry_removeDatabaseObjectsForZone___block_invoke_2;
  v11[3] = &unk_278505118;
  v12 = zoneCopy;
  v10 = zoneCopy;
  [(BRCStageRegistry *)self _processPendingListDatabaseObjects:v11];
}

BOOL __49__BRCStageRegistry_removeDatabaseObjectsForZone___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  v4 = [MEMORY[0x277CCACA8] br_pathWithFileSystemRepresentation:a2];
  v5 = [v4 br_pathRelativeToPath:*(a1 + 32)];
  v6 = [v5 pathComponents];
  v7 = [v6 firstObject];
  if ([v7 hasPrefix:*(a1 + 40)])
  {

    v8 = 0;
  }

  else
  {
    v8 = [v5 length] != 0;
  }

  return v8;
}

BOOL __49__BRCStageRegistry_removeDatabaseObjectsForZone___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = *(a1 + 32);
  v8 = a3;
  v9 = [v7 zoneName];
  LOBYTE(v7) = [v9 isEqualToString:v8];

  if (v7)
  {
    v10 = [*(a1 + 32) ownerName];
    v11 = v10;
    if (!v10)
    {
      v10 = *MEMORY[0x277CBBF28];
    }

    v12 = [v10 isEqualToString:v6];

    v13 = (v12 & 1) == 0;
  }

  else
  {

    v13 = 1;
  }

  return v13;
}

- (BOOL)_hasContentsInPath:(id)path
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEBC0] fileURLWithPath:path];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  [defaultManager enumeratorAtURL:v3 includingPropertiesForKeys:0 options:5 errorHandler:&__block_literal_global_128_1];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v13 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([v3 br_isParentOfURL:{*(*(&v10 + 1) + 8 * i), v10}])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

uint64_t __39__BRCStageRegistry__hasContentsInPath___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, 0x90u))
  {
    v9 = 138412802;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_error_impl(&dword_223E7A000, v7, 0x90u, "[ERROR] Failed checking contents at %@ - %@%@", &v9, 0x20u);
  }

  return 1;
}

- (int64_t)_removeUnusedXattrBlobs
{
  v26 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v3 = time(0);
  v4 = [BRCUserDefaults defaultsForMangledID:0];
  [v4 xattrAgeDelta];
  v6 = v5;

  v7 = self->_session;
  if ([(BRCStageRegistry *)self _hasContentsInPath:self->_stageDirectoryPath[3]])
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v8;
      v10 = "[WARNING] Skipping xattr check because we're in the middle of fetching delta change records%@";
LABEL_7:
      _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEFAULT, v10, buf, 0xCu);
    }
  }

  else
  {
    if (![(BRCStageRegistry *)self _hasContentsInPath:self->_stageDirectoryPath[4]])
    {
      v12 = self->_stageDirectoryPath[7];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __43__BRCStageRegistry__removeUnusedXattrBlobs__block_invoke;
      v14[3] = &unk_2785051B8;
      v8 = v12;
      v15 = v8;
      v18 = v3;
      v19 = v6;
      v16 = v7;
      v17 = &v20;
      BRCRemoveFolderInAutoreleasepool(v8, v14, 1, 0);
      v11 = v21[3];

      v9 = v15;
      goto LABEL_10;
    }

    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v8;
      v10 = "[WARNING] Skipping xattr check because we're in the middle of fetching item records%@";
      goto LABEL_7;
    }
  }

  v11 = 0;
LABEL_10:

  _Block_object_dispose(&v20, 8);
  return v11;
}

uint64_t __43__BRCStageRegistry__removeUnusedXattrBlobs__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    return 1;
  }

  v5 = [MEMORY[0x277CCACA8] br_pathWithFileSystemRepresentation:a2];
  v6 = [v5 br_pathRelativeToPath:*(a1 + 32)];
  v7 = [v6 pathComponents];
  if ([v6 length])
  {
    if (*(a1 + 56) - *(a3 + 48) >= *(a1 + 64))
    {
      if ([v7 count] != 1)
      {
        __43__BRCStageRegistry__removeUnusedXattrBlobs__block_invoke_cold_1();
      }

      v9 = [v7 firstObject];
      v10 = [v9 brc_dataFromHexidecimalString];
      if (v10)
      {
        v20 = 0;
        v21 = &v20;
        v22 = 0x2020000000;
        v23 = 0;
        v11 = [*(a1 + 40) clientTruthWorkloop];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __43__BRCStageRegistry__removeUnusedXattrBlobs__block_invoke_129;
        block[3] = &unk_278502B88;
        v17 = *(a1 + 40);
        v12 = v10;
        v18 = v12;
        v19 = &v20;
        dispatch_async_and_wait(v11, block);

        if (v21[3])
        {
          v8 = 1;
        }

        else
        {
          v13 = brc_bread_crumbs();
          v14 = brc_default_log();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v25 = v12;
            v26 = 2112;
            v27 = v13;
            _os_log_impl(&dword_223E7A000, v14, OS_LOG_TYPE_DEFAULT, "[WARNING] Removing unused xattr signature %@%@", buf, 0x16u);
          }

          v8 = 0;
          *(*(*(a1 + 48) + 8) + 24) += *(a3 + 96);
        }

        _Block_object_dispose(&v20, 8);
      }

      else
      {
        v8 = 1;
      }
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __43__BRCStageRegistry__removeUnusedXattrBlobs__block_invoke_129(uint64_t a1)
{
  v2 = [*(a1 + 32) clientDB];
  v7 = [v2 numberWithSQL:{@"SELECT EXISTS (SELECT 1 FROM client_pkg_upload_items WHERE xattr_signature = %@)", *(a1 + 40)}];

  if ([v7 BOOLValue] & 1) != 0 || (objc_msgSend(*(a1 + 32), "clientDB"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "numberWithSQL:", @"SELECT EXISTS (SELECT 1 FROM client_items WHERE item_xattr_signature = %@ OR version_xattr_signature = %@ LIMIT 1)", *(a1 + 40), *(a1 + 40)), v7, v3, (objc_msgSend(v4, "BOOLValue")) || (objc_msgSend(*(a1 + 32), "clientDB"), v5 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v5, "numberWithSQL:", @"SELECT EXISTS (SELECT 1 FROM server_items WHERE item_xattr_signature = %@ OR version_xattr_signature = %@ LIMIT 1)", *(a1 + 40), *(a1 + 40)), v4, v5, objc_msgSend(v8, "BOOLValue")))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  return MEMORY[0x2821F96F8]();
}

- (int64_t)_garbageCollectItemsIncludingActiveItems:(BOOL)items stageIndex:(unsigned __int8)index maxAge:(int64_t)age deletePredicate:(id)predicate
{
  indexCopy = index;
  predicateCopy = predicate;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v11 = time(0);
  v12 = self->_stageDirectoryPath[indexCopy];
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v26 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __95__BRCStageRegistry__garbageCollectItemsIncludingActiveItems_stageIndex_maxAge_deletePredicate___block_invoke;
  v17[3] = &unk_2785051E0;
  v20 = v25;
  v13 = v12;
  itemsCopy = items;
  v18 = v13;
  v21 = &v27;
  v22 = v11;
  ageCopy = age;
  v14 = predicateCopy;
  v19 = v14;
  BRCRemoveFolderInAutoreleasepool(v13, v17, 1, 0);
  v15 = v28[3];

  _Block_object_dispose(v25, 8);
  _Block_object_dispose(&v27, 8);

  return v15;
}

uint64_t __95__BRCStageRegistry__garbageCollectItemsIncludingActiveItems_stageIndex_maxAge_deletePredicate___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) != 0 || ([MEMORY[0x277CCACA8] stringWithUTF8String:a2], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", *(a1 + 32)), v6, !v7))
  {
    if (a3)
    {
      if (*(a1 + 80) == 1)
      {
        v9 = brc_bread_crumbs();
        v10 = brc_default_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          __95__BRCStageRegistry__garbageCollectItemsIncludingActiveItems_stageIndex_maxAge_deletePredicate___block_invoke_cold_2();
        }

        v8 = 0;
        *(*(*(a1 + 56) + 8) + 24) += a3[12];
      }

      else
      {
        v11 = [MEMORY[0x277CCACA8] br_pathWithFileSystemRepresentation:a2];
        v12 = [v11 br_pathRelativeToPath:*(a1 + 32)];
        v13 = [v12 pathComponents];
        v14 = [v13 count];

        if (v14)
        {
          v15 = *(a1 + 64);
          v16 = *(a1 + 72);
          if (v15 - a3[8] >= v16 && v15 - a3[6] >= v16 && (*(*(a1 + 40) + 16))())
          {
            v17 = brc_bread_crumbs();
            v18 = brc_default_log();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              __95__BRCStageRegistry__garbageCollectItemsIncludingActiveItems_stageIndex_maxAge_deletePredicate___block_invoke_cold_1();
            }

            v8 = 0;
            *(*(*(a1 + 56) + 8) + 24) += a3[12];
          }

          else
          {
            v8 = 1;
          }
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v8 = 0;
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  return v8;
}

- (int64_t)_garbageCollectLiveItemsIncludingActiveItems:(BOOL)items
{
  itemsCopy = items;
  v5 = [BRCUserDefaults defaultsForMangledID:0];
  [v5 liveItemsStageAgeDelta];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__BRCStageRegistry__garbageCollectLiveItemsIncludingActiveItems___block_invoke;
  v9[3] = &unk_278505230;
  v9[4] = self;
  v7 = [(BRCStageRegistry *)self _garbageCollectItemsIncludingActiveItems:itemsCopy stageIndex:6 maxAge:v6 deletePredicate:v9];

  return v7;
}

uint64_t __65__BRCStageRegistry__garbageCollectLiveItemsIncludingActiveItems___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [v8 lastPathComponent];
  v10 = [v9 brc_stringByDeletingPathExtension];

  v11 = [MEMORY[0x277CFAE50] fileObjectIDWithString:v10];
  if (v11)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v12 = [*(*(a1 + 32) + 8) clientDB];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __65__BRCStageRegistry__garbageCollectLiveItemsIncludingActiveItems___block_invoke_2;
    v16[3] = &unk_278505208;
    v13 = *(a1 + 32);
    v18 = &v20;
    v16[4] = v13;
    v17 = v11;
    v19 = a4;
    [v12 performWithFlags:1 action:v16];

    v14 = *(v21 + 24);
    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v14 = 1;
  }

  return v14 & 1;
}

uint64_t __65__BRCStageRegistry__garbageCollectLiveItemsIncludingActiveItems___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) clientDB];
  v3 = [v2 numberWithSQL:{@"SELECT 1 FROM client_items WHERE rowid = %lld AND item_type IN (1, 2, 8, 5, 6, 7) AND item_file_id = %lld LIMIT 1", objc_msgSend(*(a1 + 40), "rawID"), *(a1 + 56)}];
  *(*(*(a1 + 48) + 8) + 24) = [v3 BOOLValue] ^ 1;

  return 1;
}

- (int64_t)_garbageCollectUploadThumbnailsIncludingActiveUploads:(BOOL)uploads
{
  uploadsCopy = uploads;
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [BRCStageRegistry _garbageCollectUploadThumbnailsIncludingActiveUploads:];
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __74__BRCStageRegistry__garbageCollectUploadThumbnailsIncludingActiveUploads___block_invoke;
  v8[3] = &unk_2785050A0;
  v9 = uploadsCopy;
  v8[4] = self;
  return [(BRCStageRegistry *)self _garbageCollectItemsIncludingActiveItems:uploadsCopy stageIndex:5 maxAge:0 deletePredicate:v8];
}

uint64_t __74__BRCStageRegistry__garbageCollectUploadThumbnailsIncludingActiveUploads___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 pathComponents];
  v6 = [v5 count];

  if (v6 == 1)
  {
    v7 = [v4 lastPathComponent];
    if (*(a1 + 40))
    {
      v8 = 1;
    }

    else
    {
      v8 = [*(a1 + 32) _hasActiveUploadWithStageID:v7] ^ 1;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (int64_t)_garbageCollectSpace:(int64_t)space
{
  dispatch_assert_queue_V2(self->_queue);
  v4 = [(BRCStageRegistry *)self _purgeAllUploadsWithIncludeActiveItems:0];
  v5 = [(BRCStageRegistry *)self _garbageCollectDownloads]+ v4;
  _garbageCollectDeltaSyncDatabases = [(BRCStageRegistry *)self _garbageCollectDeltaSyncDatabases];
  v7 = v5 + _garbageCollectDeltaSyncDatabases + [(BRCStageRegistry *)self _garbageCollectQBSDatabases];
  _removeUnusedXattrBlobs = [(BRCStageRegistry *)self _removeUnusedXattrBlobs];
  v9 = _removeUnusedXattrBlobs + [(BRCStageRegistry *)self _garbageCollectUploadThumbnailsIncludingActiveUploads:0];
  return v7 + v9 + [(BRCStageRegistry *)self _garbageCollectUnusedLiveItems];
}

- (int64_t)garbageCollectSpace:(int64_t)space
{
  v5 = time(0);
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [BRCStageRegistry garbageCollectSpace:];
  }

  v8 = [(BRCStageRegistry *)self _garbageCollectSpace:space];
  [(BRCStageRegistry *)self _updatePersistedStateWithLatestGCStartTime:v5];
  return v8;
}

- (void)_updatePersistedStateWithLatestGCStartTime:(int64_t)time
{
  dispatch_assert_queue_V2(self->_queue);
  clientTruthWorkloop = [(BRCAccountSession *)self->_session clientTruthWorkloop];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__BRCStageRegistry__updatePersistedStateWithLatestGCStartTime___block_invoke;
  v6[3] = &unk_278500D50;
  v6[4] = self;
  v6[5] = time;
  dispatch_async_and_wait(clientTruthWorkloop, v6);
}

void __63__BRCStageRegistry__updatePersistedStateWithLatestGCStartTime___block_invoke(uint64_t a1)
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __63__BRCStageRegistry__updatePersistedStateWithLatestGCStartTime___block_invoke_cold_1();
  }

  v4 = [[BRCStagePersistedState alloc] initWithLatestGCStartTime:*(a1 + 40)];
  v5 = *(a1 + 32);
  v6 = *(v5 + 176);
  *(v5 + 176) = v4;

  v7 = *(a1 + 32);
  v8 = *(v7 + 176);
  v9 = [*(v7 + 8) clientState];
  [v9 setObject:v8 forKeyedSubscript:@"stage"];

  v10 = [*(*(a1 + 32) + 8) clientDB];
  [v10 forceBatchStart];
}

+ (void)migrateStageToVersion2_0WithSession:(id)session
{
  sessionDirPath = [session sessionDirPath];
  v4 = [sessionDirPath stringByAppendingPathComponent:@"i"];

  BRCRemoveFolder(v4, 0, 0, 0);
}

- (void)close
{
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [BRCStageRegistry close];
  }

  v5 = +[BRCBGSystemTaskManager sharedManager];
  [v5 unregisterTaskWithIdentifier:@"com.apple.bird.stage.gc"];

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__BRCStageRegistry_close__block_invoke;
  block[3] = &unk_2784FF450;
  block[4] = self;
  dispatch_sync(queue, block);
  brc_task_tracker_wait(self->_tracker);
}

void __25__BRCStageRegistry_close__block_invoke(uint64_t a1)
{
  v4 = +[BRCSystemResourcesManager manager];
  [v4 removeLowDiskObserver:*(a1 + 32) forDevice:*(*(a1 + 32) + 208)];
  v2 = *(a1 + 32);
  v3 = *(v2 + 176);
  *(v2 + 176) = 0;
}

- (void)disarmLockedTestTimer
{
  lockedTestTimer = self->_lockedTestTimer;
  if (lockedTestTimer)
  {
    dispatch_source_cancel(lockedTestTimer);
    v4 = self->_lockedTestTimer;
    self->_lockedTestTimer = 0;
  }
}

- (void)resume
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: maxDelta > minDelta%@", v5, v6, v7, v8);
  }
}

void __26__BRCStageRegistry_resume__block_invoke(uint64_t a1)
{
  v2 = a1 + 32;
  v1 = *(a1 + 32);
  if (*(v1 + 176))
  {
    __26__BRCStageRegistry_resume__block_invoke_cold_1((a1 + 32), &v5);
    v1 = v5;
  }

  v3 = [(BRCPersistedState *)BRCStagePersistedState loadFromClientStateInSession:*(v1 + 8)];
  v4 = *(*v2 + 176);
  *(*v2 + 176) = v3;

  if (!*(*v2 + 176))
  {
    __26__BRCStageRegistry_resume__block_invoke_cold_2();
  }
}

void __26__BRCStageRegistry_resume__block_invoke_151(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[24];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __26__BRCStageRegistry_resume__block_invoke_2;
    block[3] = &unk_2785010A0;
    v7 = *(a1 + 48);
    block[4] = WeakRetained;
    v12 = v7;
    v11 = *(a1 + 32);
    dispatch_sync(v6, block);
    v8 = +[BRCBGSystemTaskManager sharedManager];
    [v8 completeTask:v3];
  }

  else
  {
    v9 = +[BRCBGSystemTaskManager sharedManager];
    [v9 completeTask:v3];
  }
}

void __26__BRCStageRegistry_resume__block_invoke_2(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = +[BRCAccountsManager sharedManager];
  v3 = [*(*(a1 + 32) + 8) accountHandler];
  v4 = [v3 acAccountID];
  v5 = [v2 personaIdentifierForACAccountID:v4];

  if ([v5 isEqualToString:@"__defaultPersonaID__"])
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  v7 = v6;
  v8 = v5;
  if (!v7)
  {
    if (_block_invoke___personaOnceToken_1 != -1)
    {
      __26__BRCStageRegistry_resume__block_invoke_2_cold_1();
    }

    v8 = _block_invoke___personalPersona_1;
  }

  v9 = [MEMORY[0x277D77BF8] sharedManager];
  v10 = [v9 currentPersona];

  v31 = 0;
  v11 = [v10 userPersonaUniqueString];
  v12 = v11;
  if (v11 == v8 || ([v11 isEqualToString:v8] & 1) != 0)
  {
    v13 = 0;
    goto LABEL_11;
  }

  if (voucher_process_can_use_arbitrary_personas())
  {
    v30 = 0;
    v19 = [v10 copyCurrentPersonaContextWithError:&v30];
    v20 = v30;
    v21 = v31;
    v31 = v19;

    if (v20)
    {
      v22 = brc_bread_crumbs();
      v23 = brc_default_log();
      if (os_log_type_enabled(v23, 0x90u))
      {
        __26__BRCStageRegistry_resume__block_invoke_2_cold_4();
      }
    }

    v13 = [v10 br_generateAndRestorePersonaContextWithPersonaUniqueString:v8];

    if (v13)
    {
      v24 = brc_bread_crumbs();
      v25 = brc_default_log();
      if (os_log_type_enabled(v25, 0x90u))
      {
        *buf = 138412802;
        v33 = v5;
        v34 = 2112;
        v35 = v13;
        v36 = 2112;
        v37 = v24;
        _os_log_error_impl(&dword_223E7A000, v25, 0x90u, "[ERROR] Can't adopt persona %@: %@%@", buf, 0x20u);
      }

LABEL_35:
    }
  }

  else
  {
    if (!v7 && ([v10 isDataSeparatedPersona] & 1) == 0)
    {
      v24 = brc_bread_crumbs();
      v25 = brc_default_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        __br_notify_register_dispatch_block_invoke_cold_2();
      }

      v13 = 0;
      goto LABEL_35;
    }

    v26 = brc_bread_crumbs();
    v27 = brc_default_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      __br_notify_register_dispatch_block_invoke_cold_3();
    }

    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
  }

LABEL_11:
  v14 = [*(*(a1 + 32) + 176) timeSinceLatestGCStartTime];
  if (v14 >= *(a1 + 48))
  {
    v17 = brc_bread_crumbs();
    v18 = brc_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v29 = *(a1 + 40);
      *buf = 134218498;
      v33 = v14;
      v34 = 2112;
      v35 = v29;
      v36 = 2112;
      v37 = v17;
      _os_log_debug_impl(&dword_223E7A000, v18, OS_LOG_TYPE_DEBUG, "[DEBUG] running GC in bgst after %lld seconds; %@%@", buf, 0x20u);
    }

    [*(a1 + 32) garbageCollectSpace:0x7FFFFFFFFFFFFFFFLL];
  }

  else
  {
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v28 = *(a1 + 40);
      *buf = 134218498;
      v33 = v14;
      v34 = 2112;
      v35 = v28;
      v36 = 2112;
      v37 = v15;
      _os_log_debug_impl(&dword_223E7A000, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] skipping GC in bgst after %lld seconds; %@%@", buf, 0x20u);
    }
  }

  _BRRestorePersona();
}

void __26__BRCStageRegistry_resume__block_invoke_3()
{
  v2 = [MEMORY[0x277D77C10] personaAttributesForPersonaType:0];
  v0 = [v2 userPersonaUniqueString];
  v1 = _block_invoke___personalPersona_1;
  _block_invoke___personalPersona_1 = v0;
}

- (BOOL)saveXattrAtURL:(id)l forSignature:(id)signature error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (lCopy)
  {
    v9 = [(BRCStageRegistry *)self urlForXattrSignature:signature];
    if ([v9 checkResourceIsReachableAndReturnError:0])
    {
      v10 = 0;
    }

    else
    {
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v24 = 0;
      v17 = [defaultManager moveItemAtURL:lCopy toURL:v9 error:&v24];
      v18 = v24;
      v10 = v24;

      if ((v17 & 1) == 0)
      {
        v10 = v10;
        if (v10)
        {
          v19 = brc_bread_crumbs();
          v20 = brc_default_log();
          if (os_log_type_enabled(v20, 0x90u))
          {
            v23 = "(passed to caller)";
            *buf = 136315906;
            v26 = "[BRCStageRegistry saveXattrAtURL:forSignature:error:]";
            v27 = 2080;
            if (!error)
            {
              v23 = "(ignored by caller)";
            }

            v28 = v23;
            v29 = 2112;
            v30 = v10;
            v31 = 2112;
            v32 = v19;
            _os_log_error_impl(&dword_223E7A000, v20, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
          }
        }

        if (error)
        {
          objc_storeStrong(error, v18);
        }

        v15 = 0;
        goto LABEL_19;
      }
    }

    v15 = 1;
  }

  else
  {
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [BRCStageRegistry saveXattrAtURL:forSignature:error:];
    }

    v10 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:@"unreachable: Asked to save xattr without url"];
    if (v10)
    {
      v13 = brc_bread_crumbs();
      v14 = brc_default_log();
      if (os_log_type_enabled(v14, 0x90u))
      {
        v22 = "(passed to caller)";
        *buf = 136315906;
        v26 = "[BRCStageRegistry saveXattrAtURL:forSignature:error:]";
        v27 = 2080;
        if (!error)
        {
          v22 = "(ignored by caller)";
        }

        v28 = v22;
        v29 = 2112;
        v30 = v10;
        v31 = 2112;
        v32 = v13;
        _os_log_error_impl(&dword_223E7A000, v14, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (!error)
    {
      v15 = 0;
      goto LABEL_20;
    }

    v10 = v10;
    v15 = 0;
    v9 = *error;
    *error = v10;
  }

LABEL_19:

LABEL_20:
  return v15;
}

- (BOOL)saveXattrBlob:(id)blob forSignature:(id)signature error:(id *)error
{
  v45 = *MEMORY[0x277D85DE8];
  blobCopy = blob;
  if (blobCopy && signature)
  {
    v9 = [(BRCStageRegistry *)self urlForXattrSignature:signature];
    v36 = 0;
    v10 = [blobCopy writeToURL:v9 options:2 error:&v36];
    v11 = v36;
    v12 = v11;
    if (v10)
    {
LABEL_4:
      v13 = 1;
LABEL_32:

      goto LABEL_33;
    }

    if ([v11 br_isCocoaErrorCode:516])
    {
      v18 = brc_bread_crumbs();
      v13 = 1;
      v19 = brc_default_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [BRCStageRegistry saveXattrBlob:forSignature:error:];
      }

      goto LABEL_30;
    }

    if (([v12 br_isCocoaErrorCode:4] & 1) != 0 || objc_msgSend(v12, "br_isCocoaErrorCode:", 260))
    {
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      uRLByDeletingLastPathComponent = [v9 URLByDeletingLastPathComponent];
      v35 = v12;
      v22 = [defaultManager createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v35];
      v23 = v35;

      if (v22)
      {
      }

      else
      {
        v24 = [v23 br_isCocoaErrorCode:516];

        if ((v24 & 1) == 0)
        {
          v18 = v23;
          if (v18)
          {
            v29 = brc_bread_crumbs();
            v30 = brc_default_log();
            if (os_log_type_enabled(v30, 0x90u))
            {
              v33 = "(passed to caller)";
              *buf = 136315906;
              v38 = "[BRCStageRegistry saveXattrBlob:forSignature:error:]";
              v39 = 2080;
              if (!error)
              {
                v33 = "(ignored by caller)";
              }

              v40 = v33;
              v41 = 2112;
              v42 = v18;
              v43 = 2112;
              v44 = v29;
              _os_log_error_impl(&dword_223E7A000, v30, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
            }
          }

          if (error)
          {
            goto LABEL_29;
          }

          goto LABEL_38;
        }
      }

      v34 = v23;
      v25 = [blobCopy writeToURL:v9 options:2 error:&v34];
      v12 = v34;

      if (v25)
      {
        goto LABEL_4;
      }

      if ([v12 br_isCocoaErrorCode:516])
      {
        v18 = brc_bread_crumbs();
        v13 = 1;
        v19 = brc_default_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          [BRCStageRegistry saveXattrBlob:forSignature:error:];
        }

        goto LABEL_30;
      }
    }

    v18 = v12;
    if (v18)
    {
      v26 = brc_bread_crumbs();
      v27 = brc_default_log();
      if (os_log_type_enabled(v27, 0x90u))
      {
        v32 = "(passed to caller)";
        *buf = 136315906;
        v38 = "[BRCStageRegistry saveXattrBlob:forSignature:error:]";
        v39 = 2080;
        if (!error)
        {
          v32 = "(ignored by caller)";
        }

        v40 = v32;
        v41 = 2112;
        v42 = v18;
        v43 = 2112;
        v44 = v26;
        _os_log_error_impl(&dword_223E7A000, v27, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (error)
    {
LABEL_29:
      v18 = v18;
      v13 = 0;
      v19 = *error;
      *error = v18;
      v12 = v18;
LABEL_30:

LABEL_31:
      goto LABEL_32;
    }

LABEL_38:
    v13 = 0;
    v12 = v18;
    goto LABEL_31;
  }

  v14 = brc_bread_crumbs();
  v15 = brc_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    [BRCStageRegistry saveXattrBlob:forSignature:error:];
  }

  v12 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:@"unreachable: Asked to save xattr without signature or data"];
  if (v12)
  {
    v16 = brc_bread_crumbs();
    v17 = brc_default_log();
    if (os_log_type_enabled(v17, 0x90u))
    {
      v31 = "(passed to caller)";
      *buf = 136315906;
      v38 = "[BRCStageRegistry saveXattrBlob:forSignature:error:]";
      v39 = 2080;
      if (!error)
      {
        v31 = "(ignored by caller)";
      }

      v40 = v31;
      v41 = 2112;
      v42 = v12;
      v43 = 2112;
      v44 = v16;
      _os_log_error_impl(&dword_223E7A000, v17, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    }
  }

  if (error)
  {
    v12 = v12;
    v13 = 0;
    v9 = *error;
    *error = v12;
    goto LABEL_32;
  }

  v13 = 0;
LABEL_33:

  return v13;
}

- (id)loadXattrBlobForSignature:(id)signature error:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  if (signature)
  {
    v5 = [(BRCStageRegistry *)self urlForXattrSignature:?];
    v19 = 0;
    v6 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v5 options:1 error:&v19];
    v7 = v19;
    v8 = v19;
    v9 = v8;
    if (!v6)
    {
      v9 = v8;
      if (v9)
      {
        v10 = brc_bread_crumbs();
        v11 = brc_default_log();
        if (os_log_type_enabled(v11, 0x90u))
        {
          v18 = "(passed to caller)";
          *buf = 136315906;
          v21 = "[BRCStageRegistry loadXattrBlobForSignature:error:]";
          v22 = 2080;
          if (!error)
          {
            v18 = "(ignored by caller)";
          }

          v23 = v18;
          v24 = 2112;
          v25 = v9;
          v26 = 2112;
          v27 = v10;
          _os_log_error_impl(&dword_223E7A000, v11, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
        }
      }

      if (error)
      {
        objc_storeStrong(error, v7);
      }
    }

    goto LABEL_16;
  }

  v12 = brc_bread_crumbs();
  v13 = brc_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    [BRCStageRegistry loadXattrBlobForSignature:error:];
  }

  v9 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:@"unreachable: Asked for xattr without signature"];
  if (v9)
  {
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, 0x90u))
    {
      v17 = "(passed to caller)";
      *buf = 136315906;
      v21 = "[BRCStageRegistry loadXattrBlobForSignature:error:]";
      v22 = 2080;
      if (!error)
      {
        v17 = "(ignored by caller)";
      }

      v23 = v17;
      v24 = 2112;
      v25 = v9;
      v26 = 2112;
      v27 = v14;
      _os_log_error_impl(&dword_223E7A000, v15, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    }
  }

  if (error)
  {
    v9 = v9;
    v6 = 0;
    v5 = *error;
    *error = v9;
LABEL_16:

    goto LABEL_17;
  }

  v6 = 0;
LABEL_17:

  return v6;
}

- (id)urlForXattrSignature:(id)signature
{
  if (signature)
  {
    v4 = self->_stageDirectoryPath[7];
    brc_hexadecimalString = [signature brc_hexadecimalString];
    v6 = [(NSString *)v4 stringByAppendingPathComponent:brc_hexadecimalString];

    v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:v6];
  }

  else
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [BRCStageRegistry loadXattrBlobForSignature:error:];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)_moveFromURLToTargetStageLocation:(id)location stageIndex:(unsigned __int8)index filename:(id)filename error:(id *)error
{
  indexCopy = index;
  v32 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  filenameCopy = filename;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __95__BRCStageRegistry_FPFSAdditions___moveFromURLToTargetStageLocation_stageIndex_filename_error___block_invoke;
  v21[3] = &unk_278506600;
  v21[4] = self;
  v12 = filenameCopy;
  v22 = v12;
  v13 = locationCopy;
  v23 = v13;
  v14 = [(BRCStageRegistry *)self _performInStageDirectory:indexCopy block:v21];
  if (v14)
  {
    br_errorFromErrno = [MEMORY[0x277CCA9B8] br_errorFromErrno];
    if (br_errorFromErrno)
    {
      v16 = brc_bread_crumbs();
      v17 = brc_default_log();
      if (os_log_type_enabled(v17, 0x90u))
      {
        v20 = "(passed to caller)";
        *buf = 136315906;
        v25 = "[BRCStageRegistry(FPFSAdditions) _moveFromURLToTargetStageLocation:stageIndex:filename:error:]";
        v26 = 2080;
        if (!error)
        {
          v20 = "(ignored by caller)";
        }

        v27 = v20;
        v28 = 2112;
        v29 = br_errorFromErrno;
        v30 = 2112;
        v31 = v16;
        _os_log_error_impl(&dword_223E7A000, v17, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (error)
    {
      v18 = br_errorFromErrno;
      *error = br_errorFromErrno;
    }
  }

  return v14 == 0;
}

uint64_t __95__BRCStageRegistry_FPFSAdditions___moveFromURLToTargetStageLocation_stageIndex_filename_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = [*(*(a1 + 32) + 8) fileUnlinker];
  [v4 renameAndUnlinkInBackgroundItemAt:a2 path:*(a1 + 40)];

  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v10 = [*(a1 + 48) path];
    v11 = *(a1 + 40);
    v12 = 138412802;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    v16 = 2112;
    v17 = v5;
    _os_log_debug_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] remembering %@ in stage at %@%@", &v12, 0x20u);
  }

  v7 = [*(a1 + 48) path];
  v8 = BRCRenameAt(-1, v7, a2, *(a1 + 40), 0);

  return v8;
}

- (BOOL)saveXattrsForURL:(id)l withMaximumSize:(unint64_t)size xattrSignature:(id *)signature error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  v24 = 0;
  v22 = 0;
  v9 = [BRFieldXattrBlob loadXattrsFromURL:l structuralBlob:0 contentBlob:&v24 localBlob:0 withMaximumSize:size error:&v22];
  v10 = v22;
  v23 = v10;
  if (!v9)
  {
    v14 = v10;
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, 0x90u))
    {
      [BRCStageRegistry(FPFSAdditions) saveXattrsForURL:withMaximumSize:xattrSignature:error:];
    }

    if (error)
    {
      v17 = v14;
      v13 = 0;
      *error = v14;
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if ([v24 length])
  {
    brc_signature = [v24 brc_signature];
    if ([(BRCStageRegistry *)self saveXattrBlob:v24 forSignature:brc_signature error:&v23])
    {
      if (signature)
      {
        v12 = brc_signature;
        *signature = brc_signature;
      }

      goto LABEL_7;
    }

    v18 = brc_bread_crumbs();
    v19 = brc_default_log();
    if (os_log_type_enabled(v19, 0x90u))
    {
      brc_hexadecimalString = [brc_signature brc_hexadecimalString];
      *buf = 138412802;
      v26 = brc_hexadecimalString;
      v27 = 2112;
      v28 = v23;
      v29 = 2112;
      v30 = v18;
      _os_log_error_impl(&dword_223E7A000, v19, 0x90u, "[ERROR] failed saving xattrs blob signature: %@ error:%@%@", buf, 0x20u);
    }

    if (error)
    {
      *error = v23;
    }

LABEL_17:
    v13 = 0;
    goto LABEL_18;
  }

LABEL_7:
  v13 = 1;
LABEL_18:

  return v13;
}

- (id)cloneFileURL:(id)l toUploadStageID:(id)d liveStageFilename:(id)filename error:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  lCopy = l;
  dCopy = d;
  filenameCopy = filename;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __88__BRCStageRegistry_FPFSAdditions__cloneFileURL_toUploadStageID_liveStageFilename_error___block_invoke;
  v25[3] = &unk_278506628;
  v25[4] = self;
  v13 = dCopy;
  v26 = v13;
  v14 = lCopy;
  v27 = v14;
  v15 = filenameCopy;
  v28 = v15;
  if ([(BRCStageRegistry *)self _performInStageDirectory:2 block:v25])
  {
    br_errorFromErrno = [MEMORY[0x277CCA9B8] br_errorFromErrno];
    if (br_errorFromErrno)
    {
      v17 = brc_bread_crumbs();
      v18 = brc_default_log();
      if (os_log_type_enabled(v18, 0x90u))
      {
        v24 = "(passed to caller)";
        *buf = 136315906;
        v31 = "[BRCStageRegistry(FPFSAdditions) cloneFileURL:toUploadStageID:liveStageFilename:error:]";
        v32 = 2080;
        if (!error)
        {
          v24 = "(ignored by caller)";
        }

        v33 = v24;
        v34 = 2112;
        v35 = br_errorFromErrno;
        v36 = 2112;
        v37 = v17;
        _os_log_error_impl(&dword_223E7A000, v18, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (error)
    {
      v19 = br_errorFromErrno;
      *error = br_errorFromErrno;
    }

    v20 = 0;
  }

  else
  {

    [(BRCStageRegistry *)self markUploadActiveForStageID:v13];
    v21 = MEMORY[0x277CBEBC0];
    v29[0] = self->_stageDirectoryPath[2];
    v29[1] = v13;
    v29[2] = v15;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];
    v20 = [v21 fileURLWithPathComponents:v22];
  }

  return v20;
}

uint64_t __88__BRCStageRegistry_FPFSAdditions__cloneFileURL_toUploadStageID_liveStageFilename_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = [*(*(a1 + 32) + 8) fileUnlinker];
  [v4 renameAndUnlinkInBackgroundItemAt:a2 path:*(a1 + 40)];

  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v19 = [*(a1 + 48) path];
    v20 = *(a1 + 40);
    v21 = 138412802;
    v22 = v19;
    v23 = 2112;
    v24 = v20;
    v25 = 2112;
    v26 = v5;
    _os_log_debug_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] remembering %@ in live stage at %@%@", &v21, 0x20u);
  }

  v7 = BRCMkdirAt(a2, *(a1 + 40), 448);
  if (!v7)
  {
    v8 = [*(a1 + 40) fileSystemRepresentation];
    v14 = BRCOpenAt(a2, v8, 33028, v9, v10, v11, v12, v13, v21);
    if (v14)
    {
      v15 = v14;
      v16 = [*(a1 + 48) path];
      v7 = BRCCloneAt(0xFFFFFFFFLL, v16, v15, *(a1 + 56));

      v17 = *__error();
      close(v15);
      *__error() = v17;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v7;
}

- (BOOL)clonePackageExistingContentFromSourceURL:(id)l stageID:(id)d error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v9 = [(BRCStageRegistry *)self createURLForDownloadWithStageID:d name:@"brpackage-existing-content"];
  if (v9)
  {
    v10 = [BRCFileSystemWrapper cloneFromURL:lCopy toURL:v9 error:error]== 0;
  }

  else
  {
    br_errorFromErrno = [MEMORY[0x277CCA9B8] br_errorFromErrno];
    if (br_errorFromErrno)
    {
      v12 = brc_bread_crumbs();
      v13 = brc_default_log();
      if (os_log_type_enabled(v13, 0x90u))
      {
        v16 = "(passed to caller)";
        v17 = 136315906;
        v18 = "[BRCStageRegistry(FPFSAdditions) clonePackageExistingContentFromSourceURL:stageID:error:]";
        v19 = 2080;
        if (!error)
        {
          v16 = "(ignored by caller)";
        }

        v20 = v16;
        v21 = 2112;
        v22 = br_errorFromErrno;
        v23 = 2112;
        v24 = v12;
        _os_log_error_impl(&dword_223E7A000, v13, 0x90u, "[ERROR] %s: %s error: %@%@", &v17, 0x2Au);
      }
    }

    if (error)
    {
      v14 = br_errorFromErrno;
      *error = br_errorFromErrno;
    }

    v10 = 0;
  }

  return v10;
}

- (void)unlinkPackageAuxiliaryContentsForStageID:(id)d
{
  dCopy = d;
  v10 = [(BRCStageRegistry *)self createURLForDownloadWithStageID:dCopy name:@"brpackage-existing-content"];
  fileUnlinker = [(BRCAccountSession *)self->_session fileUnlinker];
  path = [v10 path];
  [fileUnlinker renameAndUnlinkInBackgroundItemAtPath:path];

  v7 = [(BRCStageRegistry *)self createURLForDownloadWithStageID:dCopy name:@"brpackage-dlspec"];

  fileUnlinker2 = [(BRCAccountSession *)self->_session fileUnlinker];
  path2 = [v7 path];
  [fileUnlinker2 renameAndUnlinkInBackgroundItemAtPath:path2];
}

- (id)_liveURLForliveStageFilename:(id)filename
{
  v9[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEBC0];
  v9[0] = self->_stageDirectoryPath[6];
  v9[1] = filename;
  v4 = MEMORY[0x277CBEA60];
  filenameCopy = filename;
  v6 = [v4 arrayWithObjects:v9 count:2];
  v7 = [v3 fileURLWithPathComponents:v6];

  return v7;
}

- (void)unlinkLiveStageFilename:(id)filename
{
  filenameCopy = filename;
  if (filenameCopy)
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [BRCStageRegistry(FPFSAdditions) unlinkLiveStageFilename:];
    }

    v7 = [(BRCStageRegistry *)self _liveURLForliveStageFilename:filenameCopy];
    fileUnlinker = [(BRCAccountSession *)self->_session fileUnlinker];
    path = [v7 path];
    [fileUnlinker renameAndUnlinkInBackgroundItemAtPath:path];
  }

  else
  {
    v7 = brc_bread_crumbs();
    fileUnlinker = brc_default_log();
    if (os_log_type_enabled(fileUnlinker, OS_LOG_TYPE_FAULT))
    {
      [BRCStageRegistry(FPFSAdditions) unlinkLiveStageFilename:];
    }
  }
}

- (id)createStageURLForThumbnailFromLiveStageFilename:(id)filename error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  filenameCopy = filename;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__46;
  v23 = __Block_byref_object_dispose__46;
  v24 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __89__BRCStageRegistry_FPFSAdditions__createStageURLForThumbnailFromLiveStageFilename_error___block_invoke;
  v15[3] = &unk_278506650;
  v7 = filenameCopy;
  v16 = v7;
  selfCopy = self;
  v18 = &v19;
  if ([(BRCStageRegistry *)self _performInStageDirectory:6 block:v15])
  {

    v8 = v20[5];
  }

  else
  {
    br_errorFromErrno = [MEMORY[0x277CCA9B8] br_errorFromErrno];
    if (br_errorFromErrno)
    {
      v10 = brc_bread_crumbs();
      v11 = brc_default_log();
      if (os_log_type_enabled(v11, 0x90u))
      {
        v14 = "(passed to caller)";
        *buf = 136315906;
        v26 = "[BRCStageRegistry(FPFSAdditions) createStageURLForThumbnailFromLiveStageFilename:error:]";
        v27 = 2080;
        if (!error)
        {
          v14 = "(ignored by caller)";
        }

        v28 = v14;
        v29 = 2112;
        v30 = br_errorFromErrno;
        v31 = 2112;
        v32 = v10;
        _os_log_error_impl(&dword_223E7A000, v11, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (error)
    {
      v12 = br_errorFromErrno;
      *error = br_errorFromErrno;
    }

    v8 = 0;
  }

  _Block_object_dispose(&v19, 8);

  return v8;
}

uint64_t __89__BRCStageRegistry_FPFSAdditions__createStageURLForThumbnailFromLiveStageFilename_error___block_invoke(void *a1)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"thumbnail-%@", a1[4]];
  v3 = v2;
  if (*(a1[5] + 64))
  {
    v4 = MEMORY[0x277CBEBC0];
    v11[0] = *(a1[5] + 64);
    v11[1] = v2;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
    v6 = [v4 fileURLWithPathComponents:v5];
    v7 = *(a1[6] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
    v9 = 1;
  }

  else
  {
    *__error() = 22;
    v5 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, 0x90u))
    {
      __89__BRCStageRegistry_FPFSAdditions__createStageURLForThumbnailFromLiveStageFilename_error___block_invoke_cold_1();
    }

    v9 = 0;
  }

  return v9;
}

- (id)createStageURLFromLiveURLForItem:(id)item options:(unint64_t)options error:(id *)error
{
  v40 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  fileIDForUpload = [itemCopy fileIDForUpload];

  if (fileIDForUpload)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__46;
    v30 = __Block_byref_object_dispose__46;
    v31 = 0;
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __82__BRCStageRegistry_FPFSAdditions__createStageURLFromLiveURLForItem_options_error___block_invoke;
    v21 = &unk_278506678;
    v22 = itemCopy;
    selfCopy = self;
    v24 = &v26;
    optionsCopy = options;
    v10 = MEMORY[0x22AA4A310](&v18);
    if ([(BRCStageRegistry *)self _performInStageDirectory:6 block:v10, v18, v19, v20, v21])
    {
      br_errorFromErrno = [MEMORY[0x277CCA9B8] br_errorFromErrno];
      if (br_errorFromErrno)
      {
        v12 = brc_bread_crumbs();
        v13 = brc_default_log();
        if (os_log_type_enabled(v13, 0x90u))
        {
          v17 = "(passed to caller)";
          *buf = 136315906;
          v33 = "[BRCStageRegistry(FPFSAdditions) createStageURLFromLiveURLForItem:options:error:]";
          v34 = 2080;
          if (!error)
          {
            v17 = "(ignored by caller)";
          }

          v35 = v17;
          v36 = 2112;
          v37 = br_errorFromErrno;
          v38 = 2112;
          v39 = v12;
          _os_log_error_impl(&dword_223E7A000, v13, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
        }
      }

      if (error)
      {
        v14 = br_errorFromErrno;
        *error = br_errorFromErrno;
      }

      v15 = 0;
    }

    else
    {
      v15 = v27[5];
    }

    _Block_object_dispose(&v26, 8);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

uint64_t __82__BRCStageRegistry_FPFSAdditions__createStageURLFromLiveURLForItem_options_error___block_invoke(uint64_t a1, int a2)
{
  v54[2] = *MEMORY[0x277D85DE8];
  v4 = (a1 + 32);
  v5 = [*(a1 + 32) liveStageFilename];
  if (!v5)
  {
    v6 = brc_bread_crumbs();
    v24 = brc_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      __82__BRCStageRegistry_FPFSAdditions__createStageURLFromLiveURLForItem_options_error___block_invoke_cold_4(v4);
    }

    goto LABEL_23;
  }

  v6 = [*(*(a1 + 40) + 64) stringByAppendingPathComponent:v5];
  if (!v6)
  {
    v25 = brc_bread_crumbs();
    v26 = brc_default_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      __82__BRCStageRegistry_FPFSAdditions__createStageURLFromLiveURLForItem_options_error___block_invoke_cold_3(v4);
    }

    v27 = __error();
    v28 = 22;
LABEL_22:
    *v27 = v28;
    goto LABEL_23;
  }

  v48 = 0;
  v47 = 0;
  v7 = openat(a2, [v5 fileSystemRepresentation], 2129924);
  if (v7 < 0)
  {
    v29 = brc_bread_crumbs();
    v30 = brc_default_log();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      __82__BRCStageRegistry_FPFSAdditions__createStageURLFromLiveURLForItem_options_error___block_invoke_cold_2();
    }

    goto LABEL_23;
  }

  v8 = v7;
  v9 = _fstatItem(v7, &v48, &v47, 0, 0);
  v10 = *__error();
  close(v8);
  *__error() = v10;
  if ((v9 & 0x80000000) == 0)
  {
    v11 = v48;
    v12 = [*v4 fileIDForUpload];
    if (v11 == [v12 unsignedLongLongValue])
    {
      v13 = v47;
      v14 = [*v4 generationIDForUpload];
      v15 = [v14 fsGenerationID];
      v16 = [v15 unsignedIntValue];

      if (v13 == v16)
      {
        v17 = [MEMORY[0x277CBEBC0] fileURLWithPath:v6];
        v18 = *(a1 + 40);
        if ((*(a1 + 56) & 2) != 0)
        {
          v36 = [*v4 liveStageFilename];
          v46 = 0;
          v23 = [v18 createStageURLForThumbnailFromLiveStageFilename:v36 error:&v46];
          v37 = v46;

          if (v37)
          {

            v38 = brc_bread_crumbs();
            v39 = brc_default_log();
            if (os_log_type_enabled(v39, 0x90u))
            {
              __82__BRCStageRegistry_FPFSAdditions__createStageURLFromLiveURLForItem_options_error___block_invoke_cold_1(v4);
            }

            v23 = 0;
            goto LABEL_34;
          }
        }

        else
        {
          v19 = [v18[1] downloadStagePathForCurrentPersona];
          v20 = [MEMORY[0x277CCAD78] UUID];
          v21 = [v20 UUIDString];
          v22 = [v19 stringByAppendingFormat:@"%@-%@", v5, v21];

          v23 = [MEMORY[0x277CBEBC0] fileURLWithPath:v22];
        }

        v40 = [MEMORY[0x277CCAA00] defaultManager];
        v45 = 0;
        v41 = [v40 copyItemAtURL:v17 toURL:v23 error:&v45];
        v37 = v45;

        if (v41)
        {
          objc_storeStrong((*(*(a1 + 48) + 8) + 40), v23);
          v34 = 0;
LABEL_35:

          goto LABEL_24;
        }

        v42 = brc_bread_crumbs();
        v43 = brc_default_log();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
        {
          v44 = *v4;
          *buf = 138412802;
          v50 = v44;
          v51 = 2112;
          v52 = v37;
          v53 = 2112;
          v54[0] = v42;
          _os_log_fault_impl(&dword_223E7A000, v43, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Couldn't copy item to restaged url for %@ - %@%@", buf, 0x20u);
        }

        *__error() = 5;
LABEL_34:
        v34 = 0xFFFFFFFFLL;
        goto LABEL_35;
      }
    }

    else
    {
    }

    v31 = brc_bread_crumbs();
    v32 = brc_default_log();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = *v4;
      *buf = 138413058;
      v50 = v33;
      v51 = 2048;
      v52 = v48;
      v53 = 1024;
      LODWORD(v54[0]) = v47;
      WORD2(v54[0]) = 2112;
      *(v54 + 6) = v31;
      _os_log_impl(&dword_223E7A000, v32, OS_LOG_TYPE_DEFAULT, "[WARNING] File inode changed in live stage for %@ ino:%llu gen:%u%@", buf, 0x26u);
    }

    v27 = __error();
    v28 = 4;
    goto LABEL_22;
  }

LABEL_23:
  v34 = 0xFFFFFFFFLL;
LABEL_24:

  return v34;
}

- (id)downloadStageURLWithStageID:(id)d
{
  v3 = [(NSString *)self->_stageDirectoryPath[1] stringByAppendingFormat:@"/%@/%@", d, @"item"];
  v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3 isDirectory:0];

  return v4;
}

- (BOOL)rescueUnuploadedFile:(unint64_t)file error:(id *)error
{
  v44 = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CCACA8];
  volume = [(BRCAccountSession *)self->_session volume];
  v9 = [v7 br_pathWithDeviceID:objc_msgSend(volume fileID:{"deviceID"), file}];

  v10 = [MEMORY[0x277CBEBC0] fileURLWithPath:v9];
  v35 = 0;
  v11 = [(BRCStageRegistry *)self _pathInStage:file index:&v35 generationID:0];
  v12 = v35;

  if (v11 && v12 == 2)
  {
    v13 = brc_bread_crumbs();
    v14 = 1;
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [(BRCStageRegistry(FPFSAdditions) *)v13 rescueUnuploadedFile:file error:v15];
    }
  }

  else
  {
    v16 = MEMORY[0x277CCACA8];
    lastPathComponent = [v10 lastPathComponent];
    brc_stringByDeletingPathExtension = [lastPathComponent brc_stringByDeletingPathExtension];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    lastPathComponent2 = [v10 lastPathComponent];
    br_pathExtension = [lastPathComponent2 br_pathExtension];
    v23 = [v16 br_representableHFSFileNameWithBase:brc_stringByDeletingPathExtension suffix:uUIDString extension:br_pathExtension makeDotFile:0];

    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __62__BRCStageRegistry_FPFSAdditions__rescueUnuploadedFile_error___block_invoke;
    v32[3] = &unk_2785066A0;
    v33 = v10;
    v13 = v23;
    v34 = v13;
    v24 = [(BRCStageRegistry *)self _performInStageDirectory:2 block:v32];
    v14 = v24 == 0;
    if (v24)
    {
      v25 = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:v24];
      if (v25)
      {
        v26 = brc_bread_crumbs();
        v27 = brc_default_log();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          v30 = "(passed to caller)";
          *buf = 136315906;
          v37 = "[BRCStageRegistry(FPFSAdditions) rescueUnuploadedFile:error:]";
          v38 = 2080;
          if (!v31)
          {
            v30 = "(ignored by caller)";
          }

          v39 = v30;
          v40 = 2112;
          v41 = v25;
          v42 = 2112;
          v43 = v26;
          _os_log_debug_impl(&dword_223E7A000, v27, OS_LOG_TYPE_DEBUG, "[DEBUG] %s: %s error: %@%@", buf, 0x2Au);
        }
      }

      if (v31)
      {
        v28 = v25;
        *v31 = v25;
      }
    }

    v15 = v33;
  }

  return v14;
}

uint64_t __62__BRCStageRegistry_FPFSAdditions__rescueUnuploadedFile_error___block_invoke(uint64_t a1, int a2)
{
  *&v23[13] = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 32) path];
  v5 = BRCRenameAt(-1, v4, a2, *(a1 + 40), 0);

  if (v5 < 0)
  {
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v13 = [*(a1 + 32) absoluteString];
      v14 = *(a1 + 40);
      v15 = *__error();
      v16 = 138413314;
      v17 = v13;
      v18 = 1024;
      v19 = a2;
      v20 = 2112;
      v21 = v14;
      v22 = 1024;
      *v23 = v15;
      v23[2] = 2112;
      *&v23[3] = v9;
      _os_log_debug_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] renameat(-1, '%@', %d, '%@') failed %{errno}d%@", &v16, 0x2Cu);
    }

    return *__error();
  }

  else
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v11 = [*(a1 + 32) absoluteString];
      v12 = *(a1 + 40);
      v16 = 138413058;
      v17 = v11;
      v18 = 1024;
      v19 = a2;
      v20 = 2112;
      v21 = v12;
      v22 = 2112;
      *v23 = v6;
      _os_log_debug_impl(&dword_223E7A000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] renameat(-1, '%@', %d, '%@') succeeded%@", &v16, 0x26u);
    }

    return 0;
  }
}

- (BOOL)existsInUploadOrLiveItemsStage:(unint64_t)stage generationID:(unsigned int *)d
{
  v18 = *MEMORY[0x277D85DE8];
  v11 = 0;
  if (stage)
  {
    v5 = [(BRCStageRegistry *)self _pathInStage:stage index:&v11 generationID:d];
    v6 = 0;
    if (v5 && (v11 & 0xFB) == 2)
    {
      v7 = brc_bread_crumbs();
      v8 = brc_default_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218498;
        if (v11 == 6)
        {
          v10 = "live items stage";
        }

        else
        {
          v10 = "uploads stage";
        }

        stageCopy = stage;
        v14 = 2080;
        v15 = v10;
        v16 = 2112;
        v17 = v7;
        _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] fileID:%llu is in the %s%@", buf, 0x20u);
      }

      v6 = 1;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  return v6;
}

- (void)_pathInStage:index:generationID:.cold.1()
{
  OUTLINED_FUNCTION_18();
  __error();
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)purgableSpace
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  v7 = *MEMORY[0x277D85DE8];
  __error();
  v4 = 138412802;
  v5 = v3;
  OUTLINED_FUNCTION_10_2();
  v6 = v1;
  _os_log_error_impl(&dword_223E7A000, v0, 0x90u, "[ERROR] fts_open(%@) failed %{errno}d%@", &v4, 0x1Cu);
}

- (void)purgeGraveyardSpace:withUrgency:.cold.1()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_purgeAllUploadsWithIncludeActiveItems:.cold.1()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_purgeAllUploadsWithIncludeActiveItems:.cold.2()
{
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __55__BRCStageRegistry__processPendingListDatabaseObjects___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_9();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x16u);
}

void __43__BRCStageRegistry__removeUnusedXattrBlobs__block_invoke_cold_1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: components.count == 1%@", v5, v6, v7, v8);
  }
}

void __95__BRCStageRegistry__garbageCollectItemsIncludingActiveItems_stageIndex_maxAge_deletePredicate___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __95__BRCStageRegistry__garbageCollectItemsIncludingActiveItems_stageIndex_maxAge_deletePredicate___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_garbageCollectUploadThumbnailsIncludingActiveUploads:.cold.1()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)garbageCollectSpace:.cold.1()
{
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __63__BRCStageRegistry__updatePersistedStateWithLatestGCStartTime___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __26__BRCStageRegistry_resume__block_invoke_cold_1(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_fault_impl(&dword_223E7A000, v5, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: !_persistedState%@", &v6, 0xCu);
  }

  *a2 = *a1;
}

void __26__BRCStageRegistry_resume__block_invoke_cold_2()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: _persistedState%@", v5, v6, v7, v8);
  }
}

void __26__BRCStageRegistry_resume__block_invoke_2_cold_4()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v0, v1, 0x90u, v2, v3, 0x16u);
}

- (void)saveXattrBlob:forSignature:error:.cold.2()
{
  OUTLINED_FUNCTION_18();
  v1 = [v0 path];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

@end