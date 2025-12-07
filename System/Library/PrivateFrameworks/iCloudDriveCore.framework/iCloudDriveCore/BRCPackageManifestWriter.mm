@interface BRCPackageManifestWriter
- (BOOL)_cloneExcludedFromSyncItemsFromExistingContentsURL:(id)l toStageItemURL:(id)rL error:(id *)error;
- (BOOL)_packageItem:(id)item matchesMode:(unsigned __int16)mode;
- (BOOL)_stageExistingPackageItem:(id)item withLiveFd:(int)fd stageFd:(int)stageFd isDocumentModifiedByOtherUser:(BOOL)user;
- (BOOL)addItem:(id)item;
- (BOOL)addLocalItem:(id)item;
- (BOOL)stagePackageWithReader:(id)reader package:(id)package xattrsPackage:(id)xattrsPackage stageItemURL:(id)l existingContentsURL:(id)rL recordName:(id)name isDocumentModifiedByOtherUser:(BOOL)user;
- (BRCPackageManifestWriter)initWithZone:(id)zone stageID:(id)d url:(id)url;
- (unsigned)_computedFileModeForPackageItem:(id)item;
- (void)_applyDirectoryMetadataWithManifestItem:(id)item packageRootFD:(int)d;
- (void)_applyFileMetadataWithManifestItem:(id)item isDocumentModifiedByOtherUser:(BOOL)user packageRootFD:(int)d;
- (void)_applyQuarantineMetadataWithManifestItem:(id)item isDocumentModifiedByOtherUser:(BOOL)user fd:(int)fd;
- (void)_handleStreamError;
@end

@implementation BRCPackageManifestWriter

- (void)_handleStreamError
{
  stream = self->_stream;
  if (stream)
  {
    streamError = [(NSOutputStream *)stream streamError];
    error = self->_error;
    self->_error = streamError;

    [(NSOutputStream *)self->_stream close];
    v6 = self->_stream;
    self->_stream = 0;

    writer = self->_writer;
    self->_writer = 0;
  }
}

- (BRCPackageManifestWriter)initWithZone:(id)zone stageID:(id)d url:(id)url
{
  zoneCopy = zone;
  dCopy = d;
  urlCopy = url;
  v20.receiver = self;
  v20.super_class = BRCPackageManifestWriter;
  v12 = [(BRCPackageManifestWriter *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_clientZone, zone);
    objc_storeStrong(&v13->_stageID, d);
    objc_storeStrong(&v13->_url, url);
    v14 = [MEMORY[0x277CBEB78] outputStreamWithURL:urlCopy append:0];
    stream = v13->_stream;
    v13->_stream = v14;

    [(NSOutputStream *)v13->_stream open];
    v16 = [objc_alloc(MEMORY[0x277D43188]) initWithOutputStream:v13->_stream];
    writer = v13->_writer;
    v13->_writer = v16;

    v18 = objc_alloc_init(BRFieldPkgHeader);
    [(BRFieldPkgHeader *)v18 setVersion:1];
    if (([(PBMessageStreamWriter *)v13->_writer writeMessage:v18]& 1) == 0)
    {
      [(BRCPackageManifestWriter *)v13 _handleStreamError];
    }
  }

  return v13;
}

- (BOOL)addItem:(id)item
{
  itemCopy = item;
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [BRCPackageManifestWriter addItem:];
  }

  v7 = [(PBMessageStreamWriter *)self->_writer writeMessage:itemCopy];
  if ((v7 & 1) == 0)
  {
    [(BRCPackageManifestWriter *)self _handleStreamError];
  }

  return v7;
}

- (BOOL)addLocalItem:(id)item
{
  itemCopy = item;
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [BRCPackageManifestWriter addItem:];
  }

  v7 = [(PBMessageStreamWriter *)self->_writer writeMessage:itemCopy];
  if ((v7 & 1) == 0)
  {
    [(BRCPackageManifestWriter *)self _handleStreamError];
  }

  return v7;
}

- (void)_applyQuarantineMetadataWithManifestItem:(id)item isDocumentModifiedByOtherUser:(BOOL)user fd:(int)fd
{
  v19 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  path = [itemCopy path];
  quarantineInfo = [itemCopy quarantineInfo];

  v12 = 0;
  LOBYTE(itemCopy) = BRCSetFakeQuarantineInfo(fd, quarantineInfo, &v12);
  v9 = v12;

  if ((itemCopy & 1) == 0)
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, 0x90u))
    {
      *buf = 138412802;
      v14 = path;
      v15 = 2112;
      v16 = v9;
      v17 = 2112;
      v18 = v10;
      _os_log_error_impl(&dword_223E7A000, v11, 0x90u, "[ERROR] Failed setting quarantine info for item %@: %@%@", buf, 0x20u);
    }
  }
}

- (void)_applyDirectoryMetadataWithManifestItem:(id)item packageRootFD:(int)d
{
  v4 = *&d;
  v25 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  path = [itemCopy path];
  fileSystemRepresentation = [path fileSystemRepresentation];
  v14 = BRCOpenAt(v4, fileSystemRepresentation, 33028, v9, v10, v11, v12, v13, v19);
  if ((v14 & 0x80000000) != 0)
  {
    v16 = *__error();
    v17 = brc_bread_crumbs();
    v18 = brc_default_log();
    if (os_log_type_enabled(v18, 0x90u))
    {
      v19 = 138412802;
      v20 = path;
      v21 = 1024;
      v22 = v16;
      v23 = 2112;
      v24 = v17;
      _os_log_error_impl(&dword_223E7A000, v18, 0x90u, "[ERROR] Failed to open pkg item at %@ %{errno}d%@", &v19, 0x1Cu);
    }

    *__error() = v16;
  }

  else
  {
    v15 = v14;
    BRCSetMtime(v14, [itemCopy mtime]);
    [(BRCPackageManifestWriter *)self _applyQuarantineMetadataWithManifestItem:itemCopy isDocumentModifiedByOtherUser:0 fd:v15];
    close(v15);
  }
}

- (void)_applyFileMetadataWithManifestItem:(id)item isDocumentModifiedByOtherUser:(BOOL)user packageRootFD:(int)d
{
  v5 = *&d;
  userCopy = user;
  v36 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v28 = xmmword_2241ABFE8;
  v29 = 0;
  v27 = 0;
  path = [itemCopy path];
  if (path && ([itemCopy hasMtime] & 1) != 0)
  {
    fileSystemRepresentation = [path fileSystemRepresentation];
    v16 = BRCOpenAt(v5, fileSystemRepresentation, 33028, v11, v12, v13, v14, v15, v26);
    if ((v16 & 0x80000000) != 0)
    {
      v23 = *__error();
      v24 = brc_bread_crumbs();
      v25 = brc_default_log();
      if (os_log_type_enabled(v25, 0x90u))
      {
        *buf = 138412802;
        v31 = path;
        v32 = 1024;
        v33 = v23;
        v34 = 2112;
        v35 = v24;
        _os_log_error_impl(&dword_223E7A000, v25, 0x90u, "[ERROR] openat failed to apply metadata for manifest item %@ %{errno}d%@", buf, 0x1Cu);
      }

      *__error() = v23;
    }

    else
    {
      v17 = v16;
      BRCSetMtime(v16, [itemCopy mtime]);
      v27 = [(BRCPackageManifestWriter *)self _computedFileModeForPackageItem:itemCopy];
      if (BRCFSetAttrList(v17, &v28, &v27, 4uLL))
      {
        v18 = *__error();
        v19 = brc_bread_crumbs();
        v20 = brc_default_log();
        if (os_log_type_enabled(v20, 0x90u))
        {
          *buf = 138412802;
          v31 = path;
          v32 = 1024;
          v33 = v18;
          v34 = 2112;
          v35 = v19;
          _os_log_error_impl(&dword_223E7A000, v20, 0x90u, "[ERROR] fsetattrlist failed for pkg item %@ %{errno}d%@", buf, 0x1Cu);
        }

        *__error() = v18;
      }

      [(BRCPackageManifestWriter *)self _applyQuarantineMetadataWithManifestItem:itemCopy isDocumentModifiedByOtherUser:userCopy fd:v17];
      close(v17);
    }
  }

  else
  {
    v21 = brc_bread_crumbs();
    v22 = brc_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      [BRCPackageManifestWriter _applyFileMetadataWithManifestItem:isDocumentModifiedByOtherUser:packageRootFD:];
    }
  }
}

- (BOOL)_packageItem:(id)item matchesMode:(unsigned __int16)mode
{
  modeCopy = mode;
  itemCopy = item;
  if (((modeCopy & 0x80) == 0) == [itemCopy isWritable])
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v6 = ((modeCopy & 0x40) == 0) ^ [itemCopy isExecutable];
  }

  return v6;
}

- (unsigned)_computedFileModeForPackageItem:(id)item
{
  itemCopy = item;
  if ([itemCopy isWritable])
  {
    v4 = 434;
  }

  else
  {
    v4 = 288;
  }

  isExecutable = [itemCopy isExecutable];

  if (isExecutable)
  {
    v4 |= 0x49u;
  }

  v6 = [BRCUserDefaults defaultsForMangledID:0];
  stageInPackageFileUmask = [v6 stageInPackageFileUmask];

  return v4 & ~stageInPackageFileUmask;
}

- (BOOL)_stageExistingPackageItem:(id)item withLiveFd:(int)fd stageFd:(int)stageFd isDocumentModifiedByOtherUser:(BOOL)user
{
  userCopy = user;
  v7 = *&stageFd;
  v8 = *&fd;
  v44 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  path = [itemCopy path];
  fileSystemRepresentation = [path fileSystemRepresentation];
  if (((v7 | v8) & 0x80000000) != 0)
  {
    v27 = brc_bread_crumbs();
    v28 = brc_default_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      [BRCPackageManifestWriter _stageExistingPackageItem:v27 withLiveFd:v28 stageFd:? isDocumentModifiedByOtherUser:?];
    }

    v29 = 0;
  }

  else
  {
    v18 = fileSystemRepresentation;
    v19 = BRCOpenAt(v8, fileSystemRepresentation, 33028, v13, v14, v15, v16, v17, v37);
    if (v19 < 0)
    {
      v22 = *__error();
      v23 = brc_bread_crumbs();
      v24 = brc_default_log();
      if (os_log_type_enabled(v24, 0x90u))
      {
        v43.st_dev = 136315650;
        *&v43.st_mode = v18;
        WORD2(v43.st_ino) = 1024;
        *(&v43.st_ino + 6) = v22;
        HIWORD(v43.st_uid) = 2112;
        *&v43.st_gid = v23;
        v25 = "[ERROR] Failed to open live pkg item at %s %{errno}d%@";
        v26 = &v43;
        goto LABEL_20;
      }

LABEL_10:

      v29 = 0;
      *__error() = v22;
      goto LABEL_11;
    }

    v20 = v19;
    memset(&v43, 0, sizeof(v43));
    v21 = fstat(v19, &v43);
    close(v20);
    if (v21)
    {
      v22 = *__error();
      v23 = brc_bread_crumbs();
      v24 = brc_default_log();
      if (os_log_type_enabled(v24, 0x90u))
      {
        v37 = 136315650;
        *v38 = v18;
        *&v38[8] = 1024;
        *&v38[10] = v22;
        *&v38[14] = 2112;
        *&v38[16] = v23;
        v25 = "[ERROR] Failed to stat live pkg item at %s %{errno}d%@";
        v26 = &v37;
LABEL_20:
        _os_log_error_impl(&dword_223E7A000, v24, 0x90u, v25, v26, 0x1Cu);
        goto LABEL_10;
      }

      goto LABEL_10;
    }

    if (clonefileat(v8, v18, v7, v18, 0))
    {
      v31 = *__error();
      v32 = brc_bread_crumbs();
      v33 = brc_default_log();
      if (os_log_type_enabled(v33, 0x90u))
      {
        v37 = 67110402;
        *v38 = v8;
        *&v38[4] = 2112;
        *&v38[6] = path;
        *&v38[14] = 1024;
        *&v38[16] = v7;
        *&v38[20] = 2112;
        *&v38[22] = path;
        v39 = 1024;
        v40 = v31;
        v41 = 2112;
        v42 = v32;
        _os_log_error_impl(&dword_223E7A000, v33, 0x90u, "[ERROR] clonefileat(%d, %@, %d, %@) %{errno}d%@", &v37, 0x32u);
      }

      v29 = 0;
      *__error() = v31;
    }

    else
    {
      v34 = brc_bread_crumbs();
      v35 = brc_default_log();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        stageID = self->_stageID;
        v37 = 138412802;
        *v38 = path;
        *&v38[8] = 2112;
        *&v38[10] = stageID;
        *&v38[18] = 2112;
        *&v38[20] = v34;
        _os_log_debug_impl(&dword_223E7A000, v35, OS_LOG_TYPE_DEBUG, "[DEBUG] cloned at %@ for package staged in %@%@", &v37, 0x20u);
      }

      [(BRCPackageManifestWriter *)self _applyFileMetadataWithManifestItem:itemCopy isDocumentModifiedByOtherUser:userCopy packageRootFD:v7];
      v29 = 1;
    }
  }

LABEL_11:

  return v29;
}

- (BOOL)_cloneExcludedFromSyncItemsFromExistingContentsURL:(id)l toStageItemURL:(id)rL error:(id *)error
{
  v50 = *MEMORY[0x277D85DE8];
  lCopy = l;
  rLCopy = rL;
  v8 = rLCopy;
  v9 = 1;
  if (lCopy && rLCopy)
  {
    v36 = 0;
    v37 = &v36;
    v38 = 0x3032000000;
    v39 = __Block_byref_object_copy__30;
    v40 = __Block_byref_object_dispose__30;
    v41 = 0;
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __100__BRCPackageManifestWriter__cloneExcludedFromSyncItemsFromExistingContentsURL_toStageItemURL_error___block_invoke;
    v35[3] = &unk_278500E40;
    v35[4] = &v36;
    v11 = [defaultManager enumeratorAtURL:lCopy includingPropertiesForKeys:0 options:16 errorHandler:v35];
    for (i = 0; ; i = nextObject)
    {

      nextObject = [v11 nextObject];

      if (!nextObject)
      {
        break;
      }

      relativePath = [nextObject relativePath];
      lastPathComponent = [relativePath lastPathComponent];
      v16 = [lastPathComponent br_isExcludedWithMaximumDepth:1];

      if (v16)
      {
        v17 = [lCopy URLByAppendingPathComponent:relativePath];
        v18 = [v8 URLByAppendingPathComponent:relativePath];
        v34 = 0;
        v19 = [BRCFileSystemWrapper cloneFromURL:v17 toURL:v18 error:&v34];
        defaultManager = v34;
        if (v19)
        {
          v24 = brc_bread_crumbs();
          v25 = brc_default_log();
          if (os_log_type_enabled(v25, 0x90u))
          {
            [BRCPackageManifestWriter _cloneExcludedFromSyncItemsFromExistingContentsURL:toStageItemURL:error:];
          }

          v26 = defaultManager;
          if (v26)
          {
            v27 = brc_bread_crumbs();
            v28 = brc_default_log();
            if (os_log_type_enabled(v28, 0x90u))
            {
              v32 = "(passed to caller)";
              *buf = 136315906;
              v43 = "[BRCPackageManifestWriter _cloneExcludedFromSyncItemsFromExistingContentsURL:toStageItemURL:error:]";
              v44 = 2080;
              if (!error)
              {
                v32 = "(ignored by caller)";
              }

              v45 = v32;
              v46 = 2112;
              v47 = v26;
              v48 = 2112;
              v49 = v27;
              _os_log_error_impl(&dword_223E7A000, v28, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
            }
          }

          if (error)
          {
            v29 = v26;
            *error = v26;
          }

          v9 = 0;
          goto LABEL_24;
        }
      }

      else
      {
        defaultManager = 0;
      }
    }

    v20 = v37[5];
    if (v20)
    {
      v21 = brc_bread_crumbs();
      v22 = brc_default_log();
      if (os_log_type_enabled(v22, 0x90u))
      {
        v31 = "(passed to caller)";
        *buf = 136315906;
        v43 = "[BRCPackageManifestWriter _cloneExcludedFromSyncItemsFromExistingContentsURL:toStageItemURL:error:]";
        v44 = 2080;
        if (!error)
        {
          v31 = "(ignored by caller)";
        }

        v45 = v31;
        v46 = 2112;
        v47 = v20;
        v48 = 2112;
        v49 = v21;
        _os_log_error_impl(&dword_223E7A000, v22, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (error)
    {
      v23 = v20;
      *error = v20;
    }

    v9 = v37[5] == 0;
LABEL_24:

    _Block_object_dispose(&v36, 8);
  }

  return v9;
}

- (BOOL)stagePackageWithReader:(id)reader package:(id)package xattrsPackage:(id)xattrsPackage stageItemURL:(id)l existingContentsURL:(id)rL recordName:(id)name isDocumentModifiedByOtherUser:(BOOL)user
{
  v199 = *MEMORY[0x277D85DE8];
  readerCopy = reader;
  packageCopy = package;
  xattrsPackageCopy = xattrsPackage;
  lCopy = l;
  rLCopy = rL;
  nameCopy = name;
  p_error = &self->_error;
  if (self->_error)
  {
    done = 0;
    goto LABEL_125;
  }

  v177 = rLCopy;
  if (rLCopy)
  {
    v193 = 0;
    v23 = +[BRCFileSystemWrapper openFileWithDirFd:filename:flags:error:](BRCFileSystemWrapper, "openFileWithDirFd:filename:flags:error:", 0xFFFFFFFFLL, [rLCopy fileSystemRepresentation], 33028, &v193);
    v24 = v193;
    if (v23 < 0)
    {
      done = 0;
      br_errorFromErrno = *p_error;
      *p_error = v24;
      goto LABEL_124;
    }

    v171 = v23;
  }

  else
  {
    v171 = -1;
  }

  v25 = [BRCUserDefaults defaultsForMangledID:0];
  stageInPackageDirectoryUmask = [v25 stageInPackageDirectoryUmask];

  itemCount = [packageCopy itemCount];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v192 = 0;
  v27 = [defaultManager createDirectoryAtURL:lCopy withIntermediateDirectories:1 attributes:0 error:&v192];
  br_errorFromErrno = v192;

  v175 = xattrsPackageCopy;
  if (!v27)
  {
LABEL_117:
    if (!*p_error)
    {
      if (br_errorFromErrno)
      {
        v117 = br_errorFromErrno;
      }

      else
      {
        v117 = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:22 description:@"unknown error"];
      }

      v118 = *p_error;
      *p_error = v117;
    }

    v119 = [nameCopy substringFromIndex:{objc_msgSend(@"documentContent/", "length")}];
    [(BRCClientZone *)self->_clientZone mangledID];
    v121 = v120 = nameCopy;
    v122 = [AppTelemetryTimeSeriesEvent newCorruptPackageDownloadEventWithZoneMangledID:v121 enhancedDrivePrivacyEnabled:[(BRCClientZone *)self->_clientZone enhancedDrivePrivacyEnabled] error:br_errorFromErrno itemIDString:v119];

    session = [(BRCClientZone *)self->_clientZone session];
    [session analyticsReporter];
    v125 = v124 = packageCopy;
    [v125 postReportForDefaultSubCategoryWithCategory:8 telemetryTimeEvent:v122];

    packageCopy = v124;
    nameCopy = v120;

    xattrsPackageCopy = v175;
    goto LABEL_123;
  }

  fileSystemRepresentation = [lCopy fileSystemRepresentation];
  v176 = BRCOpenAt(0xFFFFFFFFLL, fileSystemRepresentation, 33028, v30, v31, v32, v33, v34, v151);
  if ((v176 & 0x80000000) != 0)
  {
    v78 = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:*__error()];

    br_errorFromErrno = v78;
    goto LABEL_117;
  }

  if (!readerCopy)
  {
    v79 = nameCopy;
    v80 = brc_bread_crumbs();
    v81 = brc_default_log();
    if (os_log_type_enabled(v81, OS_LOG_TYPE_FAULT))
    {
      [BRCPackageManifestWriter stagePackageWithReader:package:xattrsPackage:stageItemURL:existingContentsURL:recordName:isDocumentModifiedByOtherUser:];
    }

    v82 = MEMORY[0x277CCA9B8];
    v83 = *MEMORY[0x277CFACB0];
    path = [lCopy path];
    v85 = [v82 br_errorWithDomain:v83 code:15 description:{@"unreachable: No reader to stage package at %s", objc_msgSend(path, "UTF8String")}];

    close(v176);
    br_errorFromErrno = v85;
    nameCopy = v79;
    goto LABEL_117;
  }

  v190 = 0u;
  v191 = 0u;
  v188 = 0u;
  v189 = 0u;
  v35 = readerCopy;
  v168 = [v35 countByEnumeratingWithState:&v188 objects:v198 count:16];
  v161 = nameCopy;
  if (!v168)
  {
    v173 = 0;
    goto LABEL_69;
  }

  v173 = 0;
  v169 = *v189;
  v156 = packageCopy;
  v157 = v35;
  v170 = readerCopy;
  v155 = lCopy;
  while (2)
  {
    for (i = 0; i != v168; ++i)
    {
      if (*v189 != v169)
      {
        objc_enumerationMutation(v35);
      }

      v37 = *(*(&v188 + 1) + 8 * i);
      v38 = objc_autoreleasePoolPush();
      v187 = 512;
      v186 = xmmword_2241AC000;
      v184 = 0;
      v185 = 0;
      v183 = 0;
      if ([v37 type] == 4)
      {
        if (v173 >= itemCount)
        {
          v160 = v38;
          v90 = brc_bread_crumbs();
          v91 = brc_default_log();
          readerCopy = v170;
          if (os_log_type_enabled(v91, OS_LOG_TYPE_FAULT))
          {
            *buf = 134218754;
            v195 = v173;
            v196 = 2048;
            *v197 = itemCount;
            *&v197[8] = 2112;
            *&v197[10] = packageCopy;
            *&v197[18] = 2112;
            *&v197[20] = v90;
            _os_log_fault_impl(&dword_223E7A000, v91, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Package has been corrupted on the serverAsking for asset index out of bounds %lu vs %lu in package: %@%@", buf, 0x2Au);
          }

          v92 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:{@"unreachable: Package has been corrupted on the serverAsking for asset index out of bounds %lu vs %lu in package: %@", v173, itemCount, packageCopy}];

          lCopy = v155;
          if ([(BRCClientZone *)self->_clientZone isPrivateZone])
          {
            asPrivateClientZone = [(BRCClientZone *)self->_clientZone asPrivateClientZone];
            [(BRFieldPkgLocalItem *)asPrivateClientZone reportProblemWithType:9 recordName:nameCopy];
            br_errorFromErrno = v92;
            v35 = v157;
            v93 = v160;
            goto LABEL_115;
          }

          br_errorFromErrno = v92;
          v35 = v157;
          v93 = v160;
          goto LABEL_116;
        }

        ++v173;
        readerCopy = v170;
        goto LABEL_60;
      }

      v162 = br_errorFromErrno;
      v39 = v35;
      v40 = objc_alloc_init(BRFieldPkgLocalItem);
      path2 = [v37 path];
      fileSystemRepresentation2 = [path2 fileSystemRepresentation];
      v167 = path2;
      if (!path2)
      {
        v166 = v40;
        v52 = v38;
        v94 = brc_bread_crumbs();
        v95 = brc_default_log();
        if (os_log_type_enabled(v95, OS_LOG_TYPE_FAULT))
        {
          [BRCPackageManifestWriter stagePackageWithReader:v94 package:v95 xattrsPackage:? stageItemURL:? existingContentsURL:? recordName:? isDocumentModifiedByOtherUser:?];
        }

LABEL_111:

        readerCopy = v170;
        lCopy = v155;
        nameCopy = v161;
        br_errorFromErrno = v162;
        goto LABEL_112;
      }

      v43 = fileSystemRepresentation2;
      if (!getattrlistat(v176, fileSystemRepresentation2, &v186, &v183, 0x18uLL, 0x21uLL))
      {
        v96 = v38;
        v97 = brc_bread_crumbs();
        v98 = brc_default_log();
        if (os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
        {
          stageID = self->_stageID;
          *buf = 138412802;
          v195 = v167;
          v196 = 2112;
          *v197 = stageID;
          *&v197[8] = 2112;
          *&v197[10] = v97;
          _os_log_debug_impl(&dword_223E7A000, v98, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ already exists in stage for package %@%@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v96);
        readerCopy = v170;
        xattrsPackageCopy = v175;
        lCopy = v155;
        v35 = v157;
        br_errorFromErrno = v162;
        goto LABEL_69;
      }

      type = [v37 type];
      if (type != 3)
      {
        if (type != 2)
        {
          if (type == 1)
          {
            v35 = v39;
            asPrivateClientZone = v40;
            if (mkdirat(v176, v43, ~stageInPackageDirectoryUmask & 0x1FF) && *__error() != 17)
            {
              v166 = v40;
              v52 = v38;
              br_errorFromErrno = [MEMORY[0x277CCA9B8] br_errorFromErrno];

              v132 = brc_bread_crumbs();
              v133 = brc_default_log();
              if (os_log_type_enabled(v133, 0x90u))
              {
                v147 = self->_stageID;
                *buf = 138412802;
                v195 = v167;
                v196 = 2112;
                *v197 = v147;
                *&v197[8] = 2112;
                *&v197[10] = v132;
                _os_log_error_impl(&dword_223E7A000, v133, 0x90u, "[ERROR] Failed to mkdir %@ for package %@%@", buf, 0x20u);
              }

              goto LABEL_143;
            }

            [(BRCPackageManifestWriter *)self _applyDirectoryMetadataWithManifestItem:v37 packageRootFD:v176];
            goto LABEL_35;
          }

          v166 = v40;
          v52 = v38;
          v94 = brc_bread_crumbs();
          v95 = brc_default_log();
          if (os_log_type_enabled(v95, OS_LOG_TYPE_FAULT))
          {
            [BRCPackageManifestWriter stagePackageWithReader:package:xattrsPackage:stageItemURL:existingContentsURL:recordName:isDocumentModifiedByOtherUser:];
          }

          goto LABEL_111;
        }

        v158 = v38;
        if (v173 >= itemCount)
        {
          v127 = brc_bread_crumbs();
          v128 = brc_default_log();
          nameCopy = v161;
          asPrivateClientZone = v40;
          if (os_log_type_enabled(v128, OS_LOG_TYPE_FAULT))
          {
            *buf = 134218754;
            v195 = v173;
            v196 = 2048;
            *v197 = itemCount;
            *&v197[8] = 2112;
            *&v197[10] = packageCopy;
            *&v197[18] = 2112;
            *&v197[20] = v127;
            _os_log_fault_impl(&dword_223E7A000, v128, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Package has been corrupted in the cloudAsking for asset index out of bounds %lu vs %lu in package: %@%@", buf, 0x2Au);
          }

          br_errorFromErrno = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:{@"unreachable: Package has been corrupted in the cloudAsking for asset index out of bounds %lu vs %lu in package: %@", v173, itemCount, packageCopy}];

          readerCopy = v170;
          lCopy = v155;
          if ([(BRCClientZone *)self->_clientZone isPrivateZone])
          {
            asPrivateClientZone2 = [(BRCClientZone *)self->_clientZone asPrivateClientZone];
            [asPrivateClientZone2 reportProblemWithType:9 recordName:v161];
          }

          goto LABEL_150;
        }

        v35 = v39;
        v182 = v162;
        v46 = [packageCopy itemAtIndex:? error:?];
        v165 = v182;

        asPrivateClientZone = v40;
        if (!v46)
        {
          br_errorFromErrno = v165;
          readerCopy = v170;
          lCopy = v155;
          v93 = v158;
          nameCopy = v161;
          if (v165)
          {
            goto LABEL_114;
          }

          v130 = brc_bread_crumbs();
          v131 = brc_default_log();
          if (os_log_type_enabled(v131, OS_LOG_TYPE_FAULT))
          {
            [BRCPackageManifestWriter stagePackageWithReader:package:xattrsPackage:stageItemURL:existingContentsURL:recordName:isDocumentModifiedByOtherUser:];
          }

          br_errorFromErrno = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:{@"unreachable: Can't find item at index %ld", v173}];
LABEL_150:
          v35 = v157;
          v93 = v158;
          goto LABEL_114;
        }

        fileURL = [v46 fileURL];
        path3 = [fileURL path];

        if (path3)
        {
          v163 = path3;
          if (!BRCRenameAt(-1, path3, v176, v167, 0))
          {
            v49 = packageCopy;
            v50 = brc_bread_crumbs();
            v51 = brc_default_log();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
            {
              v77 = self->_stageID;
              *buf = 138413058;
              v195 = v163;
              v196 = 2112;
              *v197 = v167;
              *&v197[8] = 2112;
              *&v197[10] = v77;
              *&v197[18] = 2112;
              *&v197[20] = v50;
              _os_log_debug_impl(&dword_223E7A000, v51, OS_LOG_TYPE_DEBUG, "[DEBUG] staged from %@ to %@ in %@%@", buf, 0x2Au);
            }

            [(BRCPackageManifestWriter *)self _applyFileMetadataWithManifestItem:v37 isDocumentModifiedByOtherUser:user packageRootFD:v176];
            packageCopy = v49;
            path3 = v163;
            goto LABEL_40;
          }

          v134 = asPrivateClientZone;
          v135 = *__error();
          v136 = brc_bread_crumbs();
          v137 = brc_default_log();
          if (os_log_type_enabled(v137, 0x90u))
          {
            *buf = 138413314;
            v195 = v163;
            v196 = 1024;
            *v197 = v176;
            *&v197[4] = 2112;
            *&v197[6] = v167;
            *&v197[14] = 1024;
            *&v197[16] = v135;
            *&v197[20] = 2112;
            *&v197[22] = v136;
            _os_log_error_impl(&dword_223E7A000, v137, 0x90u, "[ERROR] renameat(-1, %@, %d, %@) %{errno}d%@", buf, 0x2Cu);
          }

          *__error() = v135;
          [MEMORY[0x277CCA9B8] br_errorFromErrno];
          v165 = v138 = v165;
          readerCopy = v170;
          lCopy = v155;
          asPrivateClientZone = v134;
          path3 = v163;
        }

        else
        {
          if ((v171 & 0x80000000) == 0)
          {
            if ([BRCPackageManifestWriter _stageExistingPackageItem:"_stageExistingPackageItem:withLiveFd:stageFd:isDocumentModifiedByOtherUser:" withLiveFd:v37 stageFd:? isDocumentModifiedByOtherUser:?])
            {
LABEL_40:
              ++v173;
              signature = [v46 signature];
              [v37 setSignature:signature];

              br_errorFromErrno = v165;
              v35 = v157;
              v38 = v158;
              goto LABEL_41;
            }

            readerCopy = v170;
            lCopy = v155;
            goto LABEL_149;
          }

          v138 = brc_bread_crumbs();
          v142 = brc_default_log();
          if (os_log_type_enabled(v142, OS_LOG_TYPE_FAULT))
          {
            [BRCPackageManifestWriter stagePackageWithReader:package:xattrsPackage:stageItemURL:existingContentsURL:recordName:isDocumentModifiedByOtherUser:];
          }

          readerCopy = v170;
          lCopy = v155;
        }

LABEL_149:
        nameCopy = v161;

        br_errorFromErrno = v165;
        goto LABEL_150;
      }

      v166 = v40;
      v52 = v38;
      symlinkContent = [v37 symlinkContent];
      v54 = symlinkat([symlinkContent fileSystemRepresentation], v176, v43);

      if (v54 < 0)
      {
        br_errorFromErrno = v162;
        if (*__error() == 17)
        {
          v38 = v52;
          v35 = v157;
          asPrivateClientZone = v166;
          goto LABEL_41;
        }

        br_errorFromErrno2 = [MEMORY[0x277CCA9B8] br_errorFromErrno];

        v140 = brc_bread_crumbs();
        v141 = brc_default_log();
        if (os_log_type_enabled(v141, 0x90u))
        {
          [v37 symlinkContent];
          v149 = v148 = packageCopy;
          v150 = self->_stageID;
          *buf = 138413058;
          v195 = v167;
          v196 = 2112;
          *v197 = v149;
          *&v197[8] = 2112;
          *&v197[10] = v150;
          *&v197[18] = 2112;
          *&v197[20] = v140;
          _os_log_error_impl(&dword_223E7A000, v141, 0x90u, "[ERROR] Failed to create symlink %@ -> %@ for package %@%@", buf, 0x2Au);

          packageCopy = v148;
        }

        br_errorFromErrno = br_errorFromErrno2;
LABEL_143:
        readerCopy = v170;
        lCopy = v155;
        nameCopy = v161;
LABEL_112:
        v35 = v157;
        v93 = v52;
        goto LABEL_113;
      }

      v35 = v157;
      v38 = v52;
      asPrivateClientZone = v40;
LABEL_35:
      br_errorFromErrno = v162;
LABEL_41:
      if ([v37 hasXattrIndex])
      {
        v166 = asPrivateClientZone;
        v159 = v38;
        if ([v37 xattrIndex] < 0 || (v56 = objc_msgSend(v37, "xattrIndex"), v56 >= objc_msgSend(v175, "itemCount")))
        {
          v99 = brc_bread_crumbs();
          v100 = brc_default_log();
          lCopy = v155;
          if (os_log_type_enabled(v100, OS_LOG_TYPE_FAULT))
          {
            xattrIndex = [v37 xattrIndex];
            itemCount2 = [v175 itemCount];
            *buf = 134218498;
            v195 = xattrIndex;
            v196 = 2048;
            *v197 = itemCount2;
            *&v197[8] = 2112;
            *&v197[10] = v99;
            _os_log_fault_impl(&dword_223E7A000, v100, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: xattr index is out of bounds %ld of total %ld%@", buf, 0x20u);
          }

          v101 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:{@"unreachable: xattr index is out of bounds %ld of total %ld", objc_msgSend(v37, "xattrIndex"), objc_msgSend(v175, "itemCount")}];

          br_errorFromErrno = v101;
          readerCopy = v170;
          goto LABEL_88;
        }

        xattrIndex2 = [v37 xattrIndex];
        v181 = br_errorFromErrno;
        v58 = [v175 itemAtIndex:xattrIndex2 error:&v181];
        v59 = v181;

        if (v59)
        {

          br_errorFromErrno = v59;
          readerCopy = v170;
          lCopy = v155;
          nameCopy = v161;
          goto LABEL_105;
        }

        if (!v58)
        {
          v108 = brc_bread_crumbs();
          v109 = brc_default_log();
          lCopy = v155;
          nameCopy = v161;
          if (os_log_type_enabled(v109, OS_LOG_TYPE_FAULT))
          {
            [BRCPackageManifestWriter stagePackageWithReader:package:xattrsPackage:stageItemURL:existingContentsURL:recordName:isDocumentModifiedByOtherUser:];
          }

          br_errorFromErrno = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:{@"unreachable: Can't find xattr at index %ld", objc_msgSend(v37, "xattrIndex")}];
          readerCopy = v170;
          goto LABEL_104;
        }

        v60 = MEMORY[0x277CBEA90];
        fileURL2 = [v58 fileURL];
        v180 = 0;
        v62 = [v60 dataWithContentsOfURL:fileURL2 options:0 error:&v180];
        br_errorFromErrno = v180;

        fileURL3 = [v58 fileURL];

        if (fileURL3)
        {
          defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
          fileURL4 = [v58 fileURL];
          [defaultManager2 removeItemAtURL:fileURL4 error:0];
        }

        v164 = v58;
        if (!v62 || br_errorFromErrno)
        {
          v110 = v62;
          if (!br_errorFromErrno)
          {
            br_errorFromErrno = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFABD0] code:15 description:@"Can't load xattr"];
          }

          v111 = brc_bread_crumbs();
          v112 = brc_default_log();
          readerCopy = v170;
          lCopy = v155;
          packageCopy = v156;
          nameCopy = v161;
          if (os_log_type_enabled(v112, 0x90u))
          {
            [BRCPackageManifestWriter stagePackageWithReader:package:xattrsPackage:stageItemURL:existingContentsURL:recordName:isDocumentModifiedByOtherUser:];
          }

LABEL_103:
LABEL_104:
          v35 = v157;
LABEL_105:
          v93 = v159;
LABEL_113:
          asPrivateClientZone = v166;
LABEL_114:

          goto LABEL_115;
        }

        v71 = BRCOpenAt(v176, v43, 33028, v64, v65, v66, v67, v68, v152);
        if ((v71 & 0x80000000) != 0)
        {
          v110 = v62;
          br_errorFromErrno = [MEMORY[0x277CCA9B8] br_errorFromErrno];
          readerCopy = v170;
          lCopy = v155;
          packageCopy = v156;
          nameCopy = v161;
          goto LABEL_103;
        }

        v72 = v71;
        v73 = [[BRFieldXattrBlob alloc] initWithData:v62];
        v179 = 0;
        v74 = [(BRFieldXattrBlob *)v73 applyToFileDescriptor:v72 error:&v179];
        br_errorFromErrno = v179;
        if (!v74)
        {
          v115 = brc_bread_crumbs();
          v116 = brc_default_log();
          if (os_log_type_enabled(v116, 0x90u))
          {
            *buf = 138412546;
            v195 = br_errorFromErrno;
            v196 = 2112;
            *v197 = v115;
            _os_log_error_impl(&dword_223E7A000, v116, 0x90u, "[ERROR] Failed to apply xattrs to file descriptor: %@%@", buf, 0x16u);
          }

          close(v72);
          readerCopy = v170;
          lCopy = v155;
          packageCopy = v156;
          v93 = v159;
          nameCopy = v161;
          v35 = v157;
          asPrivateClientZone = v166;
LABEL_115:

LABEL_116:
          objc_autoreleasePoolPop(v93);

          close(v176);
          goto LABEL_117;
        }

        close(v72);
        [(BRFieldPkgLocalItem *)v166 setXattrs:v62];
        v75 = brc_bread_crumbs();
        v76 = brc_default_log();
        if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
        {
          shortDescription = [(BRFieldXattrBlob *)v73 shortDescription];
          path4 = [v37 path];
          *buf = 138412802;
          v195 = shortDescription;
          v196 = 2112;
          *v197 = path4;
          *&v197[8] = 2112;
          *&v197[10] = v75;
          _os_log_debug_impl(&dword_223E7A000, v76, OS_LOG_TYPE_DEBUG, "[DEBUG] Successfully applied xattrs %@ to package item %@%@", buf, 0x20u);
        }

        packageCopy = v156;
        v35 = v157;
        v38 = v159;
        asPrivateClientZone = v166;
      }

      if (getattrlistat(v176, v43, &v186, &v183, 0x18uLL, 0x21uLL))
      {
        v166 = asPrivateClientZone;
        v159 = v38;
        br_errorFromErrno3 = [MEMORY[0x277CCA9B8] br_errorFromErrno];

        v103 = *__error();
        v104 = brc_bread_crumbs();
        v105 = brc_default_log();
        readerCopy = v170;
        if (os_log_type_enabled(v105, 0x90u))
        {
          v146 = self->_stageID;
          *buf = 138413058;
          v195 = v167;
          v196 = 2112;
          *v197 = v146;
          *&v197[8] = 1024;
          *&v197[10] = v103;
          *&v197[14] = 2112;
          *&v197[16] = v104;
          _os_log_error_impl(&dword_223E7A000, v105, 0x90u, "[ERROR] unable to stat %@ for package %@ %{errno}d%@", buf, 0x26u);
        }

        *__error() = v103;
        br_errorFromErrno = br_errorFromErrno3;
        lCopy = v155;
LABEL_88:
        nameCopy = v161;
        goto LABEL_104;
      }

      [(BRFieldPkgLocalItem *)asPrivateClientZone setItem:v37];
      [(BRFieldPkgLocalItem *)asPrivateClientZone setFileID:v184];
      if ([v37 type] == 2)
      {
        [(BRFieldPkgLocalItem *)asPrivateClientZone setGenerationID:HIDWORD(v183)];
        [(BRFieldPkgLocalItem *)asPrivateClientZone setSize:v185];
      }

      readerCopy = v170;
      nameCopy = v161;
      if (![(BRCPackageManifestWriter *)self addLocalItem:asPrivateClientZone])
      {
        v166 = asPrivateClientZone;
        v52 = v38;
        v106 = brc_bread_crumbs();
        v107 = brc_default_log();
        if (os_log_type_enabled(v107, 0x90u))
        {
          [BRCPackageManifestWriter stagePackageWithReader:package:xattrsPackage:stageItemURL:existingContentsURL:recordName:isDocumentModifiedByOtherUser:];
        }

        lCopy = v155;
        goto LABEL_112;
      }

LABEL_60:
      objc_autoreleasePoolPop(v38);
    }

    xattrsPackageCopy = v175;
    lCopy = v155;
    v168 = [v35 countByEnumeratingWithState:&v188 objects:v198 count:16];
    if (v168)
    {
      continue;
    }

    break;
  }

LABEL_69:

  v178 = br_errorFromErrno;
  [(BRCPackageManifestWriter *)self _cloneExcludedFromSyncItemsFromExistingContentsURL:v177 toStageItemURL:lCopy error:&v178];
  v86 = v178;

  brc_bread_crumbs();
  v88 = v87 = v35;
  v89 = brc_default_log();
  if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
  {
    [lCopy path];
    v114 = v113 = packageCopy;
    *buf = 138413058;
    v195 = v114;
    v196 = 2048;
    *v197 = itemCount;
    *&v197[8] = 2048;
    *&v197[10] = v173;
    *&v197[18] = 2112;
    *&v197[20] = v88;
    _os_log_debug_impl(&dword_223E7A000, v89, OS_LOG_TYPE_DEBUG, "[DEBUG] Finished staging package for %@. Item count:%lu.  Asset index:%lu%@", buf, 0x2Au);

    packageCopy = v113;
    xattrsPackageCopy = v175;
  }

  br_errorFromErrno = [v87 error];

  close(v176);
  nameCopy = v161;
  if (br_errorFromErrno)
  {
    goto LABEL_117;
  }

LABEL_123:
  done = [(BRCPackageManifestWriter *)self done];
LABEL_124:

  rLCopy = v177;
LABEL_125:

  return done;
}

- (void)addItem:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x16u);
}

- (void)_applyFileMetadataWithManifestItem:isDocumentModifiedByOtherUser:packageRootFD:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_15_0(v0, v1, v2, v3, v4);
}

- (void)_stageExistingPackageItem:(uint64_t)a1 withLiveFd:(NSObject *)a2 stageFd:isDocumentModifiedByOtherUser:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_223E7A000, a2, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: we should have downloaded this file if there is nothing live%@", &v2, 0xCu);
}

- (void)_cloneExcludedFromSyncItemsFromExistingContentsURL:toStageItemURL:error:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_20(v0, v1, v2, v3, v4);
}

- (void)stagePackageWithReader:package:xattrsPackage:stageItemURL:existingContentsURL:recordName:isDocumentModifiedByOtherUser:.cold.1()
{
  OUTLINED_FUNCTION_18();
  v1 = [v0 path];
  [v1 UTF8String];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_13();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)stagePackageWithReader:package:xattrsPackage:stageItemURL:existingContentsURL:recordName:isDocumentModifiedByOtherUser:.cold.3()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_20(v0, v1, v2, v3, v4);
}

- (void)stagePackageWithReader:package:xattrsPackage:stageItemURL:existingContentsURL:recordName:isDocumentModifiedByOtherUser:.cold.4()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_20(v0, v1, v2, v3, v4);
}

- (void)stagePackageWithReader:package:xattrsPackage:stageItemURL:existingContentsURL:recordName:isDocumentModifiedByOtherUser:.cold.5()
{
  OUTLINED_FUNCTION_18();
  [v0 xattrIndex];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_13();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)stagePackageWithReader:package:xattrsPackage:stageItemURL:existingContentsURL:recordName:isDocumentModifiedByOtherUser:.cold.6()
{
  OUTLINED_FUNCTION_18();
  [v0 type];
  OUTLINED_FUNCTION_13();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

- (void)stagePackageWithReader:(uint64_t)a1 package:(NSObject *)a2 xattrsPackage:stageItemURL:existingContentsURL:recordName:isDocumentModifiedByOtherUser:.cold.7(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_223E7A000, a2, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: relpath should always exist%@", &v2, 0xCu);
}

- (void)stagePackageWithReader:package:xattrsPackage:stageItemURL:existingContentsURL:recordName:isDocumentModifiedByOtherUser:.cold.8()
{
  OUTLINED_FUNCTION_18();
  v1 = [v0 path];
  [v1 UTF8String];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_13();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

@end