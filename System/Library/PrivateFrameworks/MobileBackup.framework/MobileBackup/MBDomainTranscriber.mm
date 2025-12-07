@interface MBDomainTranscriber
- (BOOL)_collectFileIntoOpenedFileListDB:(id)b error:(id *)error;
- (BOOL)_encryptionKeyForFile:(id)file existingEncryptionKey:(id)key outEncryptionKey:(id *)encryptionKey error:(id *)error;
- (BOOL)_fetchPreviouslyBackedUpEncryptionKeyForFile:(id)file oldMetadata:(id)metadata outEncryptionKey:(id *)key error:(id *)error;
- (BOOL)_fileListContainsValidFileMetadata:(id)metadata forFile:(id)file metadata:(id)a5 outModificationType:(unint64_t *)type;
- (BOOL)_scanDomain:(id)domain error:(id *)error;
- (BOOL)_scanDomain:(id)domain snapshotPathForDomain:(id)forDomain error:(id *)error;
- (BOOL)_shouldPackFile:(id)file;
- (BOOL)fileScanner:(id)scanner failedToStatFile:(id)file withErrno:(int)errno;
- (BOOL)fileScanner:(id)scanner isFileAddedOrModified:(id)modified;
- (BOOL)scanDomains:(id)domains pendingSnapshotDB:(id)b progress:(id)progress summary:(id)summary error:(id *)error;
- (MBDomainTranscriber)initWithPendingCommitID:(id)d snapshotDatabaseDirectory:(id)directory scanMode:(unint64_t)mode enginePolicy:(unint64_t)policy snapshotFormat:(int64_t)format device:(id)device volumeMap:(id)map shouldRepairEncryptionKeys:(BOOL)self0 snapshotTracker:(id)self1 attemptSummary:(id)self2 compatibilityDelegate:(id)self3 delegate:(id)self4;
- (id)_assetMetadataForRenamedOrHardlinkedFile:(id)file error:(id *)error;
- (id)_assetMetadataFromFile:(id)file oldMetadata:(id)metadata modificationType:(unint64_t)type outRequiresInvalidation:(BOOL *)invalidation error:(id *)error;
- (id)_metadataFromFile:(id)file error:(id *)error;
- (id)_volumeIdentifierForDomain:(id)domain error:(id *)error;
- (id)fileScanner:(id)scanner didFindFile:(id)file;
- (void)_cancel;
- (void)_trackModifiedFile:(id)file;
- (void)_trackUnmodifiedFile:(id)file;
@end

@implementation MBDomainTranscriber

- (MBDomainTranscriber)initWithPendingCommitID:(id)d snapshotDatabaseDirectory:(id)directory scanMode:(unint64_t)mode enginePolicy:(unint64_t)policy snapshotFormat:(int64_t)format device:(id)device volumeMap:(id)map shouldRepairEncryptionKeys:(BOOL)self0 snapshotTracker:(id)self1 attemptSummary:(id)self2 compatibilityDelegate:(id)self3 delegate:(id)self4
{
  dCopy = d;
  directoryCopy = directory;
  directoryCopy2 = directory;
  deviceCopy = device;
  deviceCopy2 = device;
  mapCopy = map;
  trackerCopy = tracker;
  summaryCopy = summary;
  delegateCopy = delegate;
  v23 = a14;
  if (!dCopy)
  {
    __assert_rtn("[MBDomainTranscriber initWithPendingCommitID:snapshotDatabaseDirectory:scanMode:enginePolicy:snapshotFormat:device:volumeMap:shouldRepairEncryptionKeys:snapshotTracker:attemptSummary:compatibilityDelegate:delegate:]", "MBDomainTranscriber.m", 103, "pendingCommitID");
  }

  if (!directoryCopy2)
  {
    __assert_rtn("[MBDomainTranscriber initWithPendingCommitID:snapshotDatabaseDirectory:scanMode:enginePolicy:snapshotFormat:device:volumeMap:shouldRepairEncryptionKeys:snapshotTracker:attemptSummary:compatibilityDelegate:delegate:]", "MBDomainTranscriber.m", 104, "snapshotDatabaseDirectory");
  }

  if (!mapCopy)
  {
    __assert_rtn("[MBDomainTranscriber initWithPendingCommitID:snapshotDatabaseDirectory:scanMode:enginePolicy:snapshotFormat:device:volumeMap:shouldRepairEncryptionKeys:snapshotTracker:attemptSummary:compatibilityDelegate:delegate:]", "MBDomainTranscriber.m", 105, "volumeMap");
  }

  if (!mode)
  {
    __assert_rtn("[MBDomainTranscriber initWithPendingCommitID:snapshotDatabaseDirectory:scanMode:enginePolicy:snapshotFormat:device:volumeMap:shouldRepairEncryptionKeys:snapshotTracker:attemptSummary:compatibilityDelegate:delegate:]", "MBDomainTranscriber.m", 106, "scanMode != MBFileScannerModeUnspecified");
  }

  if (format == -1)
  {
    __assert_rtn("[MBDomainTranscriber initWithPendingCommitID:snapshotDatabaseDirectory:scanMode:enginePolicy:snapshotFormat:device:volumeMap:shouldRepairEncryptionKeys:snapshotTracker:attemptSummary:compatibilityDelegate:delegate:]", "MBDomainTranscriber.m", 107, "snapshotFormat != MBSnapshotFormatUnspecified");
  }

  if (!deviceCopy2)
  {
    __assert_rtn("[MBDomainTranscriber initWithPendingCommitID:snapshotDatabaseDirectory:scanMode:enginePolicy:snapshotFormat:device:volumeMap:shouldRepairEncryptionKeys:snapshotTracker:attemptSummary:compatibilityDelegate:delegate:]", "MBDomainTranscriber.m", 109, "device");
  }

  v24 = v23;
  modeCopy = mode;
  formatCopy = format;
  v39.receiver = self;
  v39.super_class = MBDomainTranscriber;
  v27 = [(MBDomainTranscriber *)&v39 init];
  v28 = v27;
  if (v27)
  {
    objc_storeStrong(&v27->_pendingCommitID, d);
    objc_storeStrong(&v28->_snapshotDatabaseDirectory, directoryCopy);
    v28->_snapshotFormat = formatCopy;
    objc_storeStrong(&v28->_mountedSnapshotTracker, tracker);
    v29 = [[MBFileScanner alloc] initWithDelegate:v28 mode:modeCopy enginePolicy:policy debugContext:0];
    scanner = v28->_scanner;
    v28->_scanner = v29;

    objc_storeStrong(&v28->_device, deviceCopy);
    objc_storeStrong(&v28->_volumeMap, map);
    v28->_shouldRepairEncryptionKeys = keys;
    objc_storeStrong(&v28->_attemptSummary, summary);
    objc_storeStrong(&v28->_compatibilityDelegate, delegate);
    objc_storeStrong(&v28->_delegate, a14);
  }

  return v28;
}

- (void)_cancel
{
  scanner = [(MBDomainTranscriber *)self scanner];

  if (scanner)
  {
    scanner2 = [(MBDomainTranscriber *)self scanner];
    [scanner2 cancel];
  }
}

- (BOOL)scanDomains:(id)domains pendingSnapshotDB:(id)b progress:(id)progress summary:(id)summary error:(id *)error
{
  domainsCopy = domains;
  bCopy = b;
  progressCopy = progress;
  summaryCopy = summary;
  snapshotDatabaseDirectory = [(MBDomainTranscriber *)self snapshotDatabaseDirectory];
  pendingCommitID = [(MBDomainTranscriber *)self pendingCommitID];
  v17 = [MBMissedEncryptionKeysDB openOrCreateDatabaseIn:snapshotDatabaseDirectory commitID:pendingCommitID error:error];

  if (!v17)
  {
    goto LABEL_26;
  }

  [(MBDomainTranscriber *)self setMissedEncryptionKeysDB:v17];
  [(MBDomainTranscriber *)self setPendingSnapshotDB:bCopy];
  [(MBDomainTranscriber *)self setSummary:summaryCopy];
  if (([bCopy setUseFullSynchronization:1 error:error] & 1) == 0 || !objc_msgSend(v17, "removeAllMissedEncryptionKeys:", error))
  {
    goto LABEL_23;
  }

  [progressCopy willScanDomains:{objc_msgSend(domainsCopy, "count")}];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v18 = domainsCopy;
  v19 = [v18 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v19)
  {
    v20 = *v36;
    while (2)
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v36 != v20)
        {
          objc_enumerationMutation(v18);
        }

        if (![(MBDomainTranscriber *)self _scanDomain:*(*(&v35 + 1) + 8 * i) error:error])
        {

          goto LABEL_23;
        }

        [progressCopy finishedScanningDomain];
      }

      v19 = [v18 countByEnumeratingWithState:&v35 objects:v41 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

  v22 = MBGetDefaultLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = v22;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      scanner = [(MBDomainTranscriber *)self scanner];
      loggableStats = [scanner loggableStats];
      *buf = 138412290;
      v40 = loggableStats;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "=transcribing= Finished transcribing all domains - %@", buf, 0xCu);
    }

    scanner2 = [(MBDomainTranscriber *)self scanner];
    loggableStats2 = [scanner2 loggableStats];
    _MBLog(@"Df", "=transcribing= Finished transcribing all domains - %@", loggableStats2);
  }

  v28 = [v17 countMissedEncryptionKeysWithError:error];
  v29 = v28;
  if (!v28)
  {
    summary = [(MBDomainTranscriber *)self summary];
    [summary setSuccess:1];

    v31 = 1;
    goto LABEL_24;
  }

  if (v28 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_23;
  }

  v30 = MBGetDefaultLog();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v40 = v29;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "=transcribing= Could not fetch encryption keys for %llu files during transcription", buf, 0xCu);
    _MBLog(@"E ", "=transcribing= Could not fetch encryption keys for %llu files during transcription", v29);
  }

  if (error)
  {
    [MBError errorWithCode:209 format:@"Could not fetch encryption keys for %lu files during transcription", v29];
    *error = v31 = 0;
  }

  else
  {
LABEL_23:
    v31 = 0;
  }

LABEL_24:
  if (([bCopy setUseFullSynchronization:0 error:error] & 1) == 0 || !objc_msgSend(v17, "close:", error))
  {
LABEL_26:
    v31 = 0;
  }

  return v31;
}

- (BOOL)_scanDomain:(id)domain error:(id *)error
{
  domainCopy = domain;
  mountedSnapshotTracker = [(MBDomainTranscriber *)self mountedSnapshotTracker];
  volumeMountPoint = [domainCopy volumeMountPoint];
  v9 = [mountedSnapshotTracker snapshotMountPointForVolumeMountPoint:volumeMountPoint];

  mountedSnapshotTracker2 = [(MBDomainTranscriber *)self mountedSnapshotTracker];

  if (mountedSnapshotTracker2 && !v9)
  {
    __assert_rtn("[MBDomainTranscriber _scanDomain:error:]", "MBDomainTranscriber.m", 186, "snapshotPathForDomain");
  }

  v11 = [(MBDomainTranscriber *)self _scanDomain:domainCopy snapshotPathForDomain:v9 error:error];
  openedFileListDB = [(MBDomainTranscriber *)self openedFileListDB];
  v13 = openedFileListDB;
  if (openedFileListDB)
  {
    v18 = 0;
    v14 = [openedFileListDB close:&v18];
    v15 = v18;
    if ((v14 & 1) == 0)
    {
      v16 = MBGetDefaultLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v20 = v15;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "=transcribing= Failed to close file list database: %@", buf, 0xCu);
        _MBLog(@"E ", "=transcribing= Failed to close file list database: %@", v15);
      }
    }

    [(MBDomainTranscriber *)self setOpenedFileListDB:0];
  }

  return v11;
}

- (id)_volumeIdentifierForDomain:(id)domain error:(id *)error
{
  domainCopy = domain;
  volumeMountPoint = [domainCopy volumeMountPoint];
  volumeUUIDsByMountPoint = [(MBDomainTranscriber *)self volumeUUIDsByMountPoint];
  v9 = [volumeUUIDsByMountPoint objectForKeyedSubscript:volumeMountPoint];

  if (!v9)
  {
    volumeMountPoint2 = [domainCopy volumeMountPoint];
    v9 = [MBFileSystemManager volumeUUIDWithVolumeMountPoint:volumeMountPoint2 error:error];

    if (!v9)
    {
      v15 = 0;
      goto LABEL_10;
    }

    volumeUUIDsByMountPoint2 = [(MBDomainTranscriber *)self volumeUUIDsByMountPoint];
    [volumeUUIDsByMountPoint2 setObject:v9 forKeyedSubscript:volumeMountPoint];
  }

  volumeMap = [(MBDomainTranscriber *)self volumeMap];
  if (!volumeMap)
  {
    __assert_rtn("[MBDomainTranscriber _volumeIdentifierForDomain:error:]", "MBDomainTranscriber.m", 214, "volumeMap");
  }

  v13 = volumeMap;
  v14 = [volumeMap volumeIdentifierForVolumeUUID:v9];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else if (error)
  {
    *error = [MBError errorWithCode:4 format:@"Volume identifier not found for uuid:%@ mtpt:%@", v9, volumeMountPoint];
  }

LABEL_10:

  return v15;
}

- (BOOL)_scanDomain:(id)domain snapshotPathForDomain:(id)forDomain error:(id *)error
{
  domainCopy = domain;
  forDomainCopy = forDomain;
  delegate = [(MBDomainTranscriber *)self delegate];
  shouldCancelTranscription = [delegate shouldCancelTranscription];

  if (!shouldCancelTranscription)
  {
    [(MBDomainTranscriber *)self setModifiedFileCountInCurrentlyScannedDomain:0];
    [(MBDomainTranscriber *)self setUnmodifiedFileCountInCurrentlyScannedDomain:0];
    v13 = [(MBDomainTranscriber *)self _volumeIdentifierForDomain:domainCopy error:error];
    if (!v13)
    {
      v12 = 0;
LABEL_52:

      goto LABEL_53;
    }

    [(MBDomainTranscriber *)self setVolumeIdentifierForCurrentlyScannedDomain:v13];
    -[MBDomainTranscriber setIsScanningPlaceholderDomain:](self, "setIsScanningPlaceholderDomain:", [domainCopy isPlaceholderDomain]);
    if (self->_snapshotFormat == 3 && [domainCopy isLegacyPerAppPlaceholderDomain])
    {
      __assert_rtn("[MBDomainTranscriber _scanDomain:snapshotPathForDomain:error:]", "MBDomainTranscriber.m", 241, "_snapshotFormat != MBSnapshotFormatDomainsAssets || !domain.isLegacyPerAppPlaceholderDomain");
    }

    scanner = [(MBDomainTranscriber *)self scanner];
    v15 = [scanner scanDomain:domainCopy snapshotMountPoint:forDomainCopy];

    if (!MBSnapshotFormatContainsFileLists())
    {
      v12 = 1;
LABEL_51:

      goto LABEL_52;
    }

    openedFileListDB = [(MBDomainTranscriber *)self openedFileListDB];
    v17 = openedFileListDB;
    if (v15)
    {
      v18 = MBGetDefaultLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v59 = v15;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "=transcribing= Failed to scan for changes: %@", buf, 0xCu);
        _MBLog(@"E ", "=transcribing= Failed to scan for changes: %@", v15);
      }

      goto LABEL_18;
    }

    if (!openedFileListDB)
    {
      if ([(MBDomainTranscriber *)self modifiedFileCountInCurrentlyScannedDomain])
      {
        __assert_rtn("[MBDomainTranscriber _scanDomain:snapshotPathForDomain:error:]", "MBDomainTranscriber.m", 258, "self.modifiedFileCountInCurrentlyScannedDomain == 0");
      }

      if ([(MBDomainTranscriber *)self unmodifiedFileCountInCurrentlyScannedDomain])
      {
        __assert_rtn("[MBDomainTranscriber _scanDomain:snapshotPathForDomain:error:]", "MBDomainTranscriber.m", 259, "self.unmodifiedFileCountInCurrentlyScannedDomain == 0");
      }

      summary = [(MBDomainTranscriber *)self summary];
      [summary setEmptyDomainCount:{objc_msgSend(summary, "emptyDomainCount") + 1}];

      snapshotDatabaseDirectory = [(MBDomainTranscriber *)self snapshotDatabaseDirectory];
      pendingCommitID = [(MBDomainTranscriber *)self pendingCommitID];
      name = [domainCopy name];
      v26 = MBFileListDBPath(snapshotDatabaseDirectory, pendingCommitID, name);

      v27 = +[NSFileManager defaultManager];
      v28 = [v27 fileExistsAtPath:v26];

      if (!v28)
      {
        goto LABEL_29;
      }

      v53 = v26;
      v29 = MBGetDefaultLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v59 = domainCopy;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "=transcribing= Found domain that went from populated to empty %{public}@", buf, 0xCu);
        _MBLog(@"Df", "=transcribing= Found domain that went from populated to empty %{public}@", domainCopy);
      }

      snapshotDatabaseDirectory2 = [(MBDomainTranscriber *)self snapshotDatabaseDirectory];
      pendingCommitID2 = [(MBDomainTranscriber *)self pendingCommitID];
      name2 = [domainCopy name];
      v17 = [MBFileListDB openOrCreateDatabaseIn:snapshotDatabaseDirectory2 commitID:pendingCommitID2 domainName:name2 error:error];

      v26 = v53;
      if (!v17)
      {
LABEL_29:
        v12 = v28 ^ 1;

        v17 = 0;
        v15 = 0;
        goto LABEL_50;
      }

      [(MBDomainTranscriber *)self setOpenedFileListDB:v17];
      volumeIdentifierForCurrentlyScannedDomain = [(MBDomainTranscriber *)self volumeIdentifierForCurrentlyScannedDomain];
      backupVolumeUUID = [volumeIdentifierForCurrentlyScannedDomain backupVolumeUUID];
      v35 = [v17 beginTranscriptionForVolumeUUID:backupVolumeUUID error:error];

      if (!v35)
      {
        v15 = 0;
        goto LABEL_28;
      }
    }

    v57 = 0;
    v19 = [v17 countFilesMarkedAsDeleted:&v57];
    v20 = v57;
    if (v20)
    {
      v15 = v20;
      v18 = MBGetDefaultLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v59 = v15;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "=transcribing= Failed to count files marked as deleted: %@", buf, 0xCu);
        _MBLog(@"E ", "=transcribing= Failed to count files marked as deleted: %@", v15);
      }

LABEL_18:

      if (error)
      {
        v21 = v15;
        v12 = 0;
        *error = v15;
LABEL_50:

        goto LABEL_51;
      }

LABEL_28:
      v12 = 0;
      goto LABEL_50;
    }

    summary2 = [(MBDomainTranscriber *)self summary];
    [summary2 setDeletedFileCount:{objc_msgSend(summary2, "deletedFileCount") + v19}];

    pendingSnapshotDB = [(MBDomainTranscriber *)self pendingSnapshotDB];
    if (!pendingSnapshotDB)
    {
      __assert_rtn("[MBDomainTranscriber _scanDomain:snapshotPathForDomain:error:]", "MBDomainTranscriber.m", 288, "pendingSnapshotDB");
    }

    v38 = pendingSnapshotDB;
    if (v19)
    {
      name3 = [domainCopy name];
      v54 = v38;
      v56 = 0;
      v40 = [v38 markDomainRequiringFileListCopy:name3 error:&v56];
      v15 = v56;

      if ((v40 & 1) == 0)
      {
        if (error)
        {
          v48 = v15;
          *error = v15;
        }

        v47 = MBGetDefaultLog();
        v38 = v54;
        if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          v12 = 0;
          goto LABEL_48;
        }

        name4 = [domainCopy name];
        *buf = 138412546;
        v59 = name4;
        v60 = 2112;
        v61 = v15;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "=transcribing= Failed to mark domain %@ as requiring upload after scanning: %@", buf, 0x16u);

        name5 = [domainCopy name];
        _MBLog(@"E ", "=transcribing= Failed to mark domain %@ as requiring upload after scanning: %@", name5, v15);
        v12 = 0;
LABEL_44:

LABEL_48:
        goto LABEL_49;
      }

      v38 = v54;
    }

    else
    {
      v15 = 0;
    }

    if ([v17 finishTranscription:error])
    {
      if ([(MBDomainTranscriber *)self modifiedFileCountInCurrentlyScannedDomain]| v19)
      {
        v55 = v38;
        attemptSummary = [(MBDomainTranscriber *)self attemptSummary];
        name6 = [domainCopy name];
        [attemptSummary trackModifiedDomainInTranscription:name6];

        v43 = MBGetDefaultLog();
        v12 = 1;
        if (!os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          v38 = v55;
          v47 = v43;
          goto LABEL_48;
        }

        name7 = [domainCopy name];
        v52 = v43;
        modifiedFileCountInCurrentlyScannedDomain = [(MBDomainTranscriber *)self modifiedFileCountInCurrentlyScannedDomain];
        unmodifiedFileCountInCurrentlyScannedDomain = [(MBDomainTranscriber *)self unmodifiedFileCountInCurrentlyScannedDomain];
        *buf = 138544130;
        v59 = name7;
        v60 = 2048;
        v61 = modifiedFileCountInCurrentlyScannedDomain;
        v62 = 2048;
        v63 = unmodifiedFileCountInCurrentlyScannedDomain;
        v64 = 2048;
        v65 = v19;
        v12 = 1;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "=transcribing= Changes found for %{public}@ modifications:%llu unmodified:%llu deletions:%llu", buf, 0x2Au);

        name5 = [domainCopy name];
        _MBLog(@"I ", "=transcribing= Changes found for %{public}@ modifications:%llu unmodified:%llu deletions:%llu", name5, [(MBDomainTranscriber *)self modifiedFileCountInCurrentlyScannedDomain], [(MBDomainTranscriber *)self unmodifiedFileCountInCurrentlyScannedDomain], v19);
        v47 = v52;
        v38 = v55;
        goto LABEL_44;
      }

      v12 = 1;
    }

    else
    {
      v12 = 0;
    }

LABEL_49:

    goto LABEL_50;
  }

  [(MBDomainTranscriber *)self _cancel];
  if (error)
  {
    [objc_opt_class() _cancellationError];
    *error = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

LABEL_53:

  return v12;
}

- (BOOL)_shouldPackFile:(id)file
{
  fileCopy = file;
  snapshotFormat = [(MBDomainTranscriber *)self snapshotFormat];
  if (snapshotFormat > 1)
  {
    if (snapshotFormat == 2 || snapshotFormat == 3)
    {
      isDirectory = 1;
      goto LABEL_9;
    }

LABEL_10:
    __assert_rtn("[MBDomainTranscriber _shouldPackFile:]", "MBDomainTranscriber.m", 324, "0");
  }

  if (!snapshotFormat)
  {
    isDirectory = 0;
    goto LABEL_9;
  }

  if (snapshotFormat != 1)
  {
    goto LABEL_10;
  }

  isDirectory = [fileCopy isDirectory];
LABEL_9:

  return isDirectory;
}

- (id)fileScanner:(id)scanner didFindFile:(id)file
{
  scannerCopy = scanner;
  fileCopy = file;
  delegate = [(MBDomainTranscriber *)self delegate];
  shouldCancelTranscription = [delegate shouldCancelTranscription];

  if (shouldCancelTranscription)
  {
    [(MBDomainTranscriber *)self _cancel];
    _cancellationError = [objc_opt_class() _cancellationError];
  }

  else if ([fileCopy isTopLevelDirectoryToExcludeFromiCloud])
  {
    _cancellationError = 0;
  }

  else
  {
    if (![(MBDomainTranscriber *)self _shouldPackFile:fileCopy]|| (v15 = 0, [(MBDomainTranscriber *)self _collectFileIntoOpenedFileListDB:fileCopy error:&v15], (compatibilityDelegate = v15) == 0))
    {
      compatibilityDelegate = [(MBDomainTranscriber *)self compatibilityDelegate];
      if (compatibilityDelegate)
      {
        isScanningPlaceholderDomain = [(MBDomainTranscriber *)self isScanningPlaceholderDomain];

        if (isScanningPlaceholderDomain)
        {
          compatibilityDelegate = 0;
        }

        else
        {
          compatibilityDelegate2 = [(MBDomainTranscriber *)self compatibilityDelegate];
          compatibilityDelegate = [compatibilityDelegate2 fileScanner:scannerCopy didFindFile:fileCopy];
        }
      }
    }

    _cancellationError = compatibilityDelegate;
  }

  return _cancellationError;
}

- (id)_metadataFromFile:(id)file error:(id *)error
{
  fileCopy = file;
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  [fileCopy getNode:v15];
  v6 = [MBFileMetadata fileMetadataExcludingXattrsAndAssetFromNode:v15 error:error];
  if (v6)
  {
    if (![fileCopy isSymbolicLink])
    {
LABEL_5:
      v9 = v6;
      goto LABEL_10;
    }

    v14 = 0;
    v7 = +[MBFileOperation symbolicLinkTargetWithPathFSR:error:](MBFileOperation, "symbolicLinkTargetWithPathFSR:error:", [fileCopy absolutePathFSR], &v14);
    v8 = v14;
    if (v7)
    {
      [v6 setLinkTarget:v7];

      goto LABEL_5;
    }

    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      absolutePath = [fileCopy absolutePath];
      *buf = 138412546;
      v18 = absolutePath;
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "=transcribing= Failed to get link target for file %@: %@", buf, 0x16u);

      absolutePath2 = [fileCopy absolutePath];
      _MBLog(@"E ", "=transcribing= Failed to get link target for file %@: %@", absolutePath2, v8);
    }
  }

  v9 = 0;
LABEL_10:

  return v9;
}

- (void)_trackModifiedFile:(id)file
{
  fileCopy = file;
  [(MBDomainTranscriber *)self setModifiedFileCountInCurrentlyScannedDomain:[(MBDomainTranscriber *)self modifiedFileCountInCurrentlyScannedDomain]+ 1];
  v4 = [fileCopy mode] & 0xF000;
  switch(v4)
  {
    case 0x4000:
      summary = [(MBDomainTranscriber *)self summary];
      [summary setModifiedDirectories:{objc_msgSend(summary, "modifiedDirectories") + 1}];
      break;
    case 0xA000:
      summary = [(MBDomainTranscriber *)self summary];
      [summary setModifiedSymlinks:{objc_msgSend(summary, "modifiedSymlinks") + 1}];
      break;
    case 0x8000:
      summary = [(MBDomainTranscriber *)self summary];
      [summary setModifiedRegularFiles:{objc_msgSend(summary, "modifiedRegularFiles") + 1}];
      break;
    default:
      __assert_rtn("[MBDomainTranscriber _trackModifiedFile:]", "MBDomainTranscriber.m", 388, "0");
  }
}

- (void)_trackUnmodifiedFile:(id)file
{
  fileCopy = file;
  [(MBDomainTranscriber *)self setUnmodifiedFileCountInCurrentlyScannedDomain:[(MBDomainTranscriber *)self unmodifiedFileCountInCurrentlyScannedDomain]+ 1];
  v4 = [fileCopy mode] & 0xF000;
  switch(v4)
  {
    case 0x4000:
      summary = [(MBDomainTranscriber *)self summary];
      [summary setUnmodifiedDirectories:{objc_msgSend(summary, "unmodifiedDirectories") + 1}];
      break;
    case 0xA000:
      summary = [(MBDomainTranscriber *)self summary];
      [summary setUnmodifiedSymlinks:{objc_msgSend(summary, "unmodifiedSymlinks") + 1}];
      break;
    case 0x8000:
      summary = [(MBDomainTranscriber *)self summary];
      [summary setUnmodifiedRegularFiles:{objc_msgSend(summary, "unmodifiedRegularFiles") + 1}];
      break;
    default:
      __assert_rtn("[MBDomainTranscriber _trackUnmodifiedFile:]", "MBDomainTranscriber.m", 405, "0");
  }
}

- (BOOL)_encryptionKeyForFile:(id)file existingEncryptionKey:(id)key outEncryptionKey:(id *)encryptionKey error:(id *)error
{
  fileCopy = file;
  keyCopy = key;
  if (encryptionKey)
  {
    *encryptionKey = 0;
  }

  if (+[MBProtectionClassUtils canOpenWhenLocked:](MBProtectionClassUtils, "canOpenWhenLocked:", [fileCopy protectionClass]))
  {
    v12 = 1;
    goto LABEL_13;
  }

  if ([fileCopy size])
  {
    v21 = 0;
    missedEncryptionKeysDB = [(MBDomainTranscriber *)self missedEncryptionKeysDB];
    device = [(MBDomainTranscriber *)self device];
    v20 = 0;
    v15 = MBFetchEncryptionKeyForFile(fileCopy, keyCopy, missedEncryptionKeysDB, device, &v21, &v20);
    v16 = v20;

    v12 = v15 != 0;
    if (v15)
    {
      v17 = v15;
      error = encryptionKey;
      if (!encryptionKey)
      {
LABEL_9:

        goto LABEL_13;
      }
    }

    else
    {
      v17 = v16;
      if (!error)
      {
        goto LABEL_9;
      }
    }

    *error = v17;
    goto LABEL_9;
  }

  v12 = 1;
  if (keyCopy && encryptionKey)
  {
    v18 = keyCopy;
    *encryptionKey = keyCopy;
  }

LABEL_13:

  return v12;
}

- (id)_assetMetadataForRenamedOrHardlinkedFile:(id)file error:(id *)error
{
  fileCopy = file;
  openedFileListDB = [(MBDomainTranscriber *)self openedFileListDB];
  if ([openedFileListDB isTransitioningVolumes] & 1) != 0 || (objc_msgSend(fileCopy, "hasOverriddenModifiedDate"))
  {

LABEL_4:
    v8 = 0;
    goto LABEL_5;
  }

  v10 = [fileCopy size];

  if (!v10)
  {
    goto LABEL_4;
  }

  openedFileListDB2 = [(MBDomainTranscriber *)self openedFileListDB];
  v33 = 0;
  v12 = [openedFileListDB2 fetchAssetMetdataWithInode:objc_msgSend(fileCopy genCount:"inodeNumber") outAssetMetadata:objc_msgSend(fileCopy error:{"genCount"), &v33, error}];
  v13 = v33;

  v8 = 0;
  if (v12 && v13)
  {
    encryptionKey = [v13 encryptionKey];
    v32 = 0;
    v15 = [(MBDomainTranscriber *)self _encryptionKeyForFile:fileCopy existingEncryptionKey:encryptionKey outEncryptionKey:&v32 error:error];
    v16 = v32;

    if (v15)
    {
      encryptionKey2 = [v13 encryptionKey];
      v18 = sub_1001C50E0(encryptionKey2, v16);

      if (v18)
      {
        encryptionKey3 = [v13 encryptionKey];

        if (encryptionKey3)
        {
          v20 = MBGetDefaultLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            domain = [fileCopy domain];
            relativePath = [fileCopy relativePath];
            *buf = 138412546;
            v35 = domain;
            v36 = 2112;
            v37 = relativePath;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "=transcribing= Reusing encryption key for renamed or hardlinked file %@:%@", buf, 0x16u);

            domain2 = [fileCopy domain];
            relativePath2 = [fileCopy relativePath];
            _MBLog(@"I ", "=transcribing= Reusing encryption key for renamed or hardlinked file %@:%@", domain2, relativePath2);
          }
        }

        recordIDSuffix = [v13 recordIDSuffix];
        assetSignature = [v13 assetSignature];
        v8 = +[MBAssetMetadata assetMetadataFromRecordIDSuffix:signature:size:type:compressionMethod:encryptionKey:](MBAssetMetadata, "assetMetadataFromRecordIDSuffix:signature:size:type:compressionMethod:encryptionKey:", recordIDSuffix, assetSignature, [v13 assetSize], objc_msgSend(v13, "assetType"), objc_msgSend(v13, "compressionMethod"), v16);
        goto LABEL_23;
      }

      recordIDSuffix = MBGetDefaultLog();
      if (os_log_type_enabled(recordIDSuffix, OS_LOG_TYPE_DEFAULT))
      {
        domain3 = [fileCopy domain];
        relativePath3 = [fileCopy relativePath];
        *buf = 138412546;
        v35 = domain3;
        v36 = 2112;
        v37 = relativePath3;
        _os_log_impl(&_mh_execute_header, recordIDSuffix, OS_LOG_TYPE_DEFAULT, "=transcribing= Cannot reuse asset for renamed or hardlinked file %@:%@ - encryption key changed", buf, 0x16u);

        assetSignature = [fileCopy domain];
        relativePath4 = [fileCopy relativePath];
        _MBLog(@"Df", "=transcribing= Cannot reuse asset for renamed or hardlinked file %@:%@ - encryption key changed", assetSignature, relativePath4);
        goto LABEL_22;
      }
    }

    else
    {
      recordIDSuffix = MBGetDefaultLog();
      if (os_log_type_enabled(recordIDSuffix, OS_LOG_TYPE_DEFAULT))
      {
        domain4 = [fileCopy domain];
        relativePath5 = [fileCopy relativePath];
        *buf = 138412546;
        v35 = domain4;
        v36 = 2112;
        v37 = relativePath5;
        _os_log_impl(&_mh_execute_header, recordIDSuffix, OS_LOG_TYPE_DEFAULT, "=transcribing= Cannot reuse asset for renamed or hardlinked file %@:%@ - failed to fetch encryption key", buf, 0x16u);

        assetSignature = [fileCopy domain];
        relativePath4 = [fileCopy relativePath];
        _MBLog(@"Df", "=transcribing= Cannot reuse asset for renamed or hardlinked file %@:%@ - failed to fetch encryption key", assetSignature, relativePath4);
LABEL_22:

        v8 = 0;
LABEL_23:

LABEL_25:
        goto LABEL_26;
      }
    }

    v8 = 0;
    goto LABEL_25;
  }

LABEL_26:

LABEL_5:

  return v8;
}

- (BOOL)_fileListContainsValidFileMetadata:(id)metadata forFile:(id)file metadata:(id)a5 outModificationType:(unint64_t *)type
{
  metadataCopy = metadata;
  fileCopy = file;
  v12 = [MBFileMetadata modificationTypeForMetadata:a5 oldMetadata:metadataCopy];
  *type = v12;
  openedFileListDB = [(MBDomainTranscriber *)self openedFileListDB];
  isTransitioningVolumes = [openedFileListDB isTransitioningVolumes];

  v15 = 0;
  if ((isTransitioningVolumes & 1) == 0 && !v12)
  {
    assetMetadata = [metadataCopy assetMetadata];
    if (-[MBDomainTranscriber shouldRepairEncryptionKeys](self, "shouldRepairEncryptionKeys") && ([assetMetadata encryptionKey], (v17 = objc_claimAutoreleasedReturnValue()) != 0) && (v18 = v17, -[MBDomainTranscriber device](self, "device"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "keybagManager"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(assetMetadata, "encryptionKey"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v20, "hasKeybagForEncryptionKey:", v21), v21, v20, v19, v18, (v22 & 1) == 0))
    {
      v29 = MBGetDefaultLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        domain = [fileCopy domain];
        relativePath = [fileCopy relativePath];
        encryptionKey = [assetMetadata encryptionKey];
        *buf = 138412802;
        v44 = domain;
        v45 = 2112;
        v46 = relativePath;
        v47 = 2048;
        v48 = [encryptionKey length];
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "=transcribing= Found file requiring encryption key repair %@:%@ (sz: %llu)", buf, 0x20u);

        domain2 = [fileCopy domain];
        relativePath2 = [fileCopy relativePath];
        encryptionKey2 = [assetMetadata encryptionKey];
        _MBLog(@"Df", "=transcribing= Found file requiring encryption key repair %@:%@ (sz: %llu)", domain2, relativePath2, [encryptionKey2 length]);
      }

      summary = [(MBDomainTranscriber *)self summary];
      [summary setEncryptionKeysPendingRepairCount:{objc_msgSend(summary, "encryptionKeysPendingRepairCount") + 1}];
      v15 = 0;
    }

    else
    {
      if (![assetMetadata isPendingUpload] || (objc_msgSend(assetMetadata, "encryptionKey"), v23 = objc_claimAutoreleasedReturnValue(), v23, !v23))
      {
        v15 = 1;
LABEL_19:

        goto LABEL_20;
      }

      encryptionKey3 = [assetMetadata encryptionKey];
      v41 = 0;
      v42 = 0;
      v25 = [(MBDomainTranscriber *)self _encryptionKeyForFile:fileCopy existingEncryptionKey:encryptionKey3 outEncryptionKey:&v42 error:&v41];
      v26 = v42;
      summary = v41;

      if (v25)
      {
        encryptionKey4 = [assetMetadata encryptionKey];
        v15 = sub_1001C50E0(encryptionKey4, v26);
      }

      else
      {
        encryptionKey4 = MBGetDefaultLog();
        if (os_log_type_enabled(encryptionKey4, OS_LOG_TYPE_DEFAULT))
        {
          domain3 = [fileCopy domain];
          relativePath3 = [fileCopy relativePath];
          *buf = 138412802;
          v44 = domain3;
          v45 = 2112;
          v46 = relativePath3;
          v47 = 2112;
          v48 = summary;
          _os_log_impl(&_mh_execute_header, encryptionKey4, OS_LOG_TYPE_DEFAULT, "=transcribing= Could not determine if encryption key in file list for %@:%@ is still valid: %@", buf, 0x20u);

          domain4 = [fileCopy domain];
          relativePath4 = [fileCopy relativePath];
          _MBLog(@"Df", "=transcribing= Could not determine if encryption key in file list for %@:%@ is still valid: %@", domain4, relativePath4, summary);
        }

        v15 = 0;
      }
    }

    goto LABEL_19;
  }

LABEL_20:

  return v15;
}

- (BOOL)_fetchPreviouslyBackedUpEncryptionKeyForFile:(id)file oldMetadata:(id)metadata outEncryptionKey:(id *)key error:(id *)error
{
  fileCopy = file;
  metadataCopy = metadata;
  if (!key)
  {
    __assert_rtn("[MBDomainTranscriber _fetchPreviouslyBackedUpEncryptionKeyForFile:oldMetadata:outEncryptionKey:error:]", "MBDomainTranscriber.m", 512, "outEncryptionKey");
  }

  v12 = metadataCopy;
  *key = 0;
  inodeNumber = [fileCopy inodeNumber];
  openedFileListDB = [(MBDomainTranscriber *)self openedFileListDB];
  isTransitioningVolumes = [openedFileListDB isTransitioningVolumes];

  if (isTransitioningVolumes)
  {
    *key = 0;
    v16 = MBGetDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      domain = [fileCopy domain];
      name = [domain name];
      relativePath = [fileCopy relativePath];
      *buf = 138412802;
      v28 = name;
      v29 = 2112;
      v30 = relativePath;
      v31 = 2048;
      v32 = inodeNumber;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "=transcribing= Not reusing encryption key for file %@:%@ (inode:%llu) during volume transition", buf, 0x20u);

      domain2 = [fileCopy domain];
      name2 = [domain2 name];
      relativePath2 = [fileCopy relativePath];
      _MBLog(@"I ", "=transcribing= Not reusing encryption key for file %@:%@ (inode:%llu) during volume transition", name2, relativePath2, inodeNumber);
    }
  }

  else
  {
    if (inodeNumber != [v12 inode])
    {
      openedFileListDB2 = [(MBDomainTranscriber *)self openedFileListDB];
      v24 = [openedFileListDB2 fetchEncryptionKeyForInode:inodeNumber outEncryptionKey:key error:error];

      goto LABEL_10;
    }

    assetMetadata = [v12 assetMetadata];
    *key = [assetMetadata encryptionKey];
  }

  v24 = 1;
LABEL_10:

  return v24;
}

- (id)_assetMetadataFromFile:(id)file oldMetadata:(id)metadata modificationType:(unint64_t)type outRequiresInvalidation:(BOOL *)invalidation error:(id *)error
{
  fileCopy = file;
  metadataCopy = metadata;
  if (!invalidation)
  {
    __assert_rtn("[MBDomainTranscriber _assetMetadataFromFile:oldMetadata:modificationType:outRequiresInvalidation:error:]", "MBDomainTranscriber.m", 535, "outRequiresInvalidation");
  }

  v14 = metadataCopy;
  openedFileListDB = [(MBDomainTranscriber *)self openedFileListDB];
  isTransitioningVolumes = [openedFileListDB isTransitioningVolumes];

  if (type & 0x201) == 0 || (isTransitioningVolumes)
  {
    goto LABEL_10;
  }

  v73 = 0;
  v17 = [(MBDomainTranscriber *)self _assetMetadataForRenamedOrHardlinkedFile:fileCopy error:&v73];
  v18 = v73;
  if (!v18)
  {
    if (v17)
    {
      v20 = MBGetDefaultLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        domain = [fileCopy domain];
        relativePath = [fileCopy relativePath];
        inodeNumber = [fileCopy inodeNumber];
        genCount = [fileCopy genCount];
        *buf = 138413314;
        v75 = v17;
        v76 = 2112;
        v77 = domain;
        v78 = 2112;
        v79 = relativePath;
        v80 = 2048;
        v81 = inodeNumber;
        v82 = 1024;
        LODWORD(typeCopy2) = genCount;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "=transcribing= Reusing asset %@ for renamed or hardlinked file %@:%@ (inode:%llu gc:%d)", buf, 0x30u);

        domain2 = [fileCopy domain];
        relativePath2 = [fileCopy relativePath];
        _MBLog(@"I ", "=transcribing= Reusing asset %@ for renamed or hardlinked file %@:%@ (inode:%llu gc:%d)", v17, domain2, relativePath2, [fileCopy inodeNumber], objc_msgSend(fileCopy, "genCount"));
      }

      summary = [(MBDomainTranscriber *)self summary];
      [summary setReusedAssetRecords:{objc_msgSend(summary, "reusedAssetRecords") + 1}];

      v17 = v17;
      v19 = 0;
      v28 = v17;
      goto LABEL_34;
    }

LABEL_10:
    if (+[MBProtectionClassUtils canOpenWhenLocked:](MBProtectionClassUtils, "canOpenWhenLocked:", [fileCopy protectionClass]))
    {
      v19 = 0;
    }

    else
    {
      v72 = 0;
      v29 = [(MBDomainTranscriber *)self _fetchPreviouslyBackedUpEncryptionKeyForFile:fileCopy oldMetadata:v14 outEncryptionKey:&v72 error:error];
      v19 = v72;
      v28 = 0;
      if (!v29)
      {
        goto LABEL_35;
      }
    }

    v71 = 0;
    v30 = [(MBDomainTranscriber *)self _encryptionKeyForFile:fileCopy existingEncryptionKey:v19 outEncryptionKey:&v71 error:error];
    v17 = v71;
    if (!v30)
    {
      goto LABEL_23;
    }

    assetMetadata = [v14 assetMetadata];
    v32 = assetMetadata;
    if (!assetMetadata)
    {
      goto LABEL_29;
    }

    v69 = assetMetadata;
    encryptionKey = [assetMetadata encryptionKey];
    v34 = fileCopy;
    v35 = v17;
    if (type != 1)
    {
      v65 = v35;
      v67 = v34;
      if (sub_1001C50E0(v35, encryptionKey))
      {
        if (!isTransitioningVolumes)
        {
          hasOverriddenModifiedDate = [v34 hasOverriddenModifiedDate];
          v49 = 2560;
          if (hasOverriddenModifiedDate)
          {
            v49 = 2562;
          }

          v64 = v49 & type;
          *invalidation = hasOverriddenModifiedDate & ((type & 0xFE) >> 1);

          v32 = v69;
          if (!v64)
          {
LABEL_41:
            if (*invalidation)
            {
              __assert_rtn("[MBDomainTranscriber _assetMetadataFromFile:oldMetadata:modificationType:outRequiresInvalidation:error:]", "MBDomainTranscriber.m", 567, "*outRequiresInvalidation == NO");
            }

            v50 = MBGetDefaultLog();
            v51 = os_log_type_enabled(v50, OS_LOG_TYPE_INFO);
            if (isTransitioningVolumes)
            {
              if (v51)
              {
                domain3 = [v34 domain];
                relativePath3 = [v34 relativePath];
                v70 = v50;
                inode = [v14 inode];
                inodeNumber2 = [v34 inodeNumber];
                *buf = 138413570;
                v75 = v32;
                v76 = 2112;
                v77 = domain3;
                v78 = 2112;
                v79 = relativePath3;
                v80 = 2048;
                v81 = inode;
                v82 = 2048;
                typeCopy2 = inodeNumber2;
                v84 = 2048;
                typeCopy = type;
                _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "=transcribing= Reusing asset %@ for %@:%@ across volume transition (old inode: %llu, new inode: %llu) because of metadata-only change 0x%lx", buf, 0x3Eu);

                domain4 = [v34 domain];
                relativePath4 = [v34 relativePath];
                _MBLog(@"I ", "=transcribing= Reusing asset %@ for %@:%@ across volume transition (old inode: %llu, new inode: %llu) because of metadata-only change 0x%lx", v32, domain4, relativePath4, [v14 inode], objc_msgSend(v34, "inodeNumber"), type);
LABEL_48:

                v50 = v70;
              }
            }

            else if (v51)
            {
              [v34 domain];
              v56 = v70 = v50;
              relativePath5 = [v34 relativePath];
              inodeNumber3 = [v34 inodeNumber];
              *buf = 138413314;
              v75 = v32;
              v76 = 2112;
              v77 = v56;
              v78 = 2112;
              v79 = relativePath5;
              v80 = 2048;
              v81 = inodeNumber3;
              v82 = 2048;
              typeCopy2 = type;
              _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_INFO, "=transcribing= Reusing asset %@ for %@:%@ (inode: %llu) because of metadata-only change 0x%lx", buf, 0x34u);

              domain4 = [v34 domain];
              relativePath4 = [v34 relativePath];
              _MBLog(@"I ", "=transcribing= Reusing asset %@ for %@:%@ (inode: %llu) because of metadata-only change 0x%lx", v32, domain4, relativePath4, [v34 inodeNumber], type);
              goto LABEL_48;
            }

            summary2 = [(MBDomainTranscriber *)self summary];
            [summary2 setReusedAssetRecords:{objc_msgSend(summary2, "reusedAssetRecords") + 1}];

            v46 = v32;
LABEL_33:
            v28 = v46;

            goto LABEL_34;
          }

LABEL_29:
          if ([fileCopy size])
          {
            +[MBAssetMetadata assetMetadataForFilePendingUploadWithEncryptionKey:size:](MBAssetMetadata, "assetMetadataForFilePendingUploadWithEncryptionKey:size:", v17, [fileCopy size]);
          }

          else
          {
            [MBAssetMetadata assetMetadataForEmptyFileWithEncryptionKey:v17];
          }
          v46 = ;
          goto LABEL_33;
        }

        inodeNumber4 = [v34 inodeNumber];
        if ((type & 0xCE) == 0 && (inodeNumber4 & 0x8000000000000000) == 0)
        {
          v63 = encryptionKey;
          v37 = MBGetDefaultLog();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            log = v37;
            domain5 = [v34 domain];
            relativePath6 = [v34 relativePath];
            *buf = 138412546;
            v75 = domain5;
            v76 = 2112;
            v77 = relativePath6;
            v39 = relativePath6;
            _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "=transcribing= Can re-use asset for file %@:%@ across volumeUUID transition", buf, 0x16u);

            domain6 = [v34 domain];
            v37 = log;
            relativePath7 = [v67 relativePath];
            _MBLog(@"I ", "=transcribing= Can re-use asset for file %@:%@ across volumeUUID transition", domain6, relativePath7);
          }

          *invalidation = 0;
          v34 = v67;

          v32 = v69;
          goto LABEL_41;
        }

        *invalidation = 1;
      }

      else
      {
        v41 = MBGetDefaultLog();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          domain7 = [v34 domain];
          relativePath8 = [v34 relativePath];
          *buf = 138412546;
          v75 = domain7;
          v76 = 2112;
          v77 = relativePath8;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "=transcribing= File %@:%@ requires asset upload - encryption keys are not equal", buf, 0x16u);

          domain8 = [v34 domain];
          relativePath9 = [v34 relativePath];
          _MBLog(@"I ", "=transcribing= File %@:%@ requires asset upload - encryption keys are not equal", domain8, relativePath9);
        }
      }

      v35 = v65;
    }

    v32 = v69;
    goto LABEL_29;
  }

  v19 = v18;
LABEL_23:
  v28 = 0;
LABEL_34:

LABEL_35:

  return v28;
}

- (BOOL)_collectFileIntoOpenedFileListDB:(id)b error:(id *)error
{
  bCopy = b;
  openedFileListDB = [(MBDomainTranscriber *)self openedFileListDB];
  if (openedFileListDB)
  {
    goto LABEL_2;
  }

  snapshotDatabaseDirectory = [(MBDomainTranscriber *)self snapshotDatabaseDirectory];
  pendingCommitID = [(MBDomainTranscriber *)self pendingCommitID];
  domain = [bCopy domain];
  name = [domain name];
  openedFileListDB = [MBFileListDB openOrCreateDatabaseIn:snapshotDatabaseDirectory commitID:pendingCommitID domainName:name error:error];

  if (openedFileListDB)
  {
    [(MBDomainTranscriber *)self setOpenedFileListDB:openedFileListDB];
    volumeIdentifierForCurrentlyScannedDomain = [(MBDomainTranscriber *)self volumeIdentifierForCurrentlyScannedDomain];
    backupVolumeUUID = [volumeIdentifierForCurrentlyScannedDomain backupVolumeUUID];
    v20 = [openedFileListDB beginTranscriptionForVolumeUUID:backupVolumeUUID error:error];

    if (v20)
    {
      if ([openedFileListDB isTransitioningVolumes])
      {
        summary = [(MBDomainTranscriber *)self summary];
        [summary setDomainsTransitioningVolumes:{objc_msgSend(summary, "domainsTransitioningVolumes") + 1}];
      }

LABEL_2:
      relativePath = [bCopy relativePath];
      v114 = 0;
      v9 = [openedFileListDB fileMetadataForPath:relativePath fetchXattrs:0 error:&v114];
      v10 = v114;

      if (v10)
      {
        v11 = MBGetDefaultLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v116 = bCopy;
          v117 = 2112;
          v118 = v10;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "=transcribing= Failed to fetch old metadata for file %@: %@", buf, 0x16u);
          _MBLog(@"E ", "=transcribing= Failed to fetch old metadata for file %@: %@", bCopy, v10);
        }

        if (error)
        {
          v12 = v10;
          v13 = 0;
          *error = v10;
        }

        else
        {
          v13 = 0;
        }

        goto LABEL_85;
      }

      v113 = 0;
      v22 = [(MBDomainTranscriber *)self _metadataFromFile:bCopy error:&v113];
      v23 = v113;
      v10 = v23;
      if (!v22)
      {
        if (error)
        {
          v25 = v23;
          *error = v10;
        }

        v26 = MBGetDefaultLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v116 = bCopy;
          v117 = 2112;
          v118 = v10;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "=transcribing= Failed to create metadata from file %@: %@", buf, 0x16u);
          _MBLog(@"E ", "=transcribing= Failed to create metadata from file %@: %@", bCopy, v10);
        }

        v13 = 0;
        goto LABEL_84;
      }

      v112 = 0;
      if ([(MBDomainTranscriber *)self _fileListContainsValidFileMetadata:v9 forFile:bCopy metadata:v22 outModificationType:&v112])
      {
        relativePath2 = [bCopy relativePath];
        [openedFileListDB markFileAsPresent:relativePath2 error:error];

        [(MBDomainTranscriber *)self _trackUnmodifiedFile:bCopy];
        v13 = 1;
LABEL_84:

LABEL_85:
        goto LABEL_86;
      }

      absolutePath = [bCopy absolutePath];
      if ([bCopy hasXattrs])
      {
        v111 = 0;
        v27 = +[MBExtendedAttributes attributesForPathFSR:error:](MBExtendedAttributes, "attributesForPathFSR:error:", [bCopy absolutePathFSR], &v111);
        v28 = v111;
        if (v28)
        {
          v29 = v28;
          v30 = MBGetDefaultLog();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v116 = absolutePath;
            v117 = 2112;
            v118 = v29;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "=transcribing= Failed to fetch xattrs for %{public}@: %@", buf, 0x16u);
            _MBLog(@"E ", "=transcribing= Failed to fetch xattrs for %{public}@: %@", absolutePath, v29);
          }

          if (error)
          {
            v31 = v29;
            *error = v29;
          }

          v13 = 0;
          goto LABEL_83;
        }

        [v22 setXattrs:v27];
        v32 = MBGetDefaultLog();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          domain2 = [bCopy domain];
          [bCopy relativePath];
          v34 = v96 = v27;
          xattrs = [v22 xattrs];
          v35 = [xattrs count];
          *buf = 138412802;
          v116 = domain2;
          v117 = 2114;
          v118 = v34;
          v119 = 2048;
          v120 = v35;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "=transcribing= Fetched xattrs for %@:%{public}@ count:%llu", buf, 0x20u);

          v27 = v96;
          domain3 = [bCopy domain];
          relativePath3 = [bCopy relativePath];
          [v22 xattrs];
          v37 = v97 = v32;
          _MBLog(@"I ", "=transcribing= Fetched xattrs for %@:%{public}@ count:%llu", domain3, relativePath3, [v37 count]);

          v32 = v97;
        }
      }

      v110 = 0;
      if ([bCopy isRegularFile])
      {
        v109 = v10;
        v38 = [(MBDomainTranscriber *)self _assetMetadataFromFile:bCopy oldMetadata:v9 modificationType:v112 outRequiresInvalidation:&v110 error:&v109];
        v39 = v109;

        if (!v38)
        {
          if ([MBError isError:v39 withCode:209])
          {
            protectionClass = [bCopy protectionClass];
            if (protectionClass == 2)
            {
              [(MBDomainTranscriptionSummary *)self->_summary setClassBFilesMissingEncryptionKeys:[(MBDomainTranscriptionSummary *)self->_summary classBFilesMissingEncryptionKeys]+ 1];
            }

            else if (protectionClass == 1)
            {
              [(MBDomainTranscriptionSummary *)self->_summary setClassAFilesMissingEncryptionKeys:[(MBDomainTranscriptionSummary *)self->_summary classAFilesMissingEncryptionKeys]+ 1];
            }

            v88 = MBGetDefaultLog();
            if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
            {
              domain4 = [bCopy domain];
              name2 = [domain4 name];
              relativePath4 = [bCopy relativePath];
              *buf = 138412546;
              v116 = name2;
              v117 = 2112;
              v118 = relativePath4;
              _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "=transcribing= Not updating metadata for file %@:%@ with missing encryption key", buf, 0x16u);

              domain5 = [bCopy domain];
              name3 = [domain5 name];
              relativePath5 = [bCopy relativePath];
              _MBLog(@"Df", "=transcribing= Not updating metadata for file %@:%@ with missing encryption key", name3, relativePath5);
            }

            v13 = 1;
            goto LABEL_82;
          }

          v80 = MBGetDefaultLog();
          if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
          {
            domain6 = [bCopy domain];
            name4 = [domain6 name];
            absolutePath2 = [bCopy absolutePath];
            *buf = 138412546;
            v116 = name4;
            v117 = 2112;
            v118 = absolutePath2;
            _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_ERROR, "=transcribing= Failed to fetch asset metadata for %@:%@", buf, 0x16u);

            domain7 = [bCopy domain];
            name5 = [domain7 name];
            absolutePath3 = [bCopy absolutePath];
            _MBLog(@"E ", "=transcribing= Failed to fetch asset metadata for %@:%@", name5, absolutePath3);
          }

          if (error)
          {
            v87 = v39;
            v13 = 0;
            *error = v39;
            goto LABEL_82;
          }

          goto LABEL_65;
        }

        [v22 setAssetMetadata:v38];

        v10 = v39;
      }

      if ([(MBDomainTranscriber *)self modifiedFileCountInCurrentlyScannedDomain])
      {
LABEL_37:
        [(MBDomainTranscriber *)self _trackModifiedFile:bCopy];
        if (MBIsInternalInstall())
        {
          assetMetadata = [v22 assetMetadata];
          isPendingUpload = [assetMetadata isPendingUpload];

          v46 = MBGetDefaultLog();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
          {
            domain8 = [bCopy domain];
            name6 = [domain8 name];
            v49 = isPendingUpload;
            v102 = isPendingUpload;
            v50 = name6;
            *buf = 138413314;
            v116 = v22;
            v117 = 2112;
            v118 = name6;
            v119 = 2112;
            v120 = absolutePath;
            v121 = 2048;
            v122 = v112;
            v123 = 1024;
            v124 = v49;
            _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "=transcribing= Updating metadata %@ for file %@:%@ m:0x%lx u:%d", buf, 0x30u);

            domain9 = [bCopy domain];
            name7 = [domain9 name];
            _MBLog(@"I ", "=transcribing= Updating metadata %@ for file %@:%@ m:0x%lx u:%d", v22, name7, absolutePath, v112, v102);
          }
        }

        if (v110 == 1)
        {
          v103 = v22;
          v53 = MBGetDefaultLog();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
          {
            domain10 = [bCopy domain];
            name8 = [domain10 name];
            *buf = 138412802;
            v116 = name8;
            v117 = 2112;
            v118 = absolutePath;
            v119 = 2048;
            v120 = v112;
            _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "=transcribing= Invalidating upload state in pending snapshot database for %@:%@ m:0x%lx", buf, 0x20u);

            domain11 = [bCopy domain];
            name9 = [domain11 name];
            _MBLog(@"I ", "=transcribing= Invalidating upload state in pending snapshot database for %@:%@ m:0x%lx", name9, absolutePath, v112);
          }

          pendingSnapshotDB = [(MBDomainTranscriber *)self pendingSnapshotDB];
          domain12 = [bCopy domain];
          name10 = [domain12 name];
          v107 = v10;
          v61 = [pendingSnapshotDB invalidateUploadedAssetForDomain:name10 inode:objc_msgSend(bCopy error:{"inodeNumber"), &v107}];
          v62 = v107;

          if ((v61 & 1) == 0)
          {
            if (error)
            {
              v39 = v62;
              v71 = v62;
              v13 = 0;
              *error = v62;
            }

            else
            {
              v13 = 0;
              v39 = v62;
            }

            v22 = v103;
            goto LABEL_82;
          }

          v10 = v62;
          v22 = v103;
        }

        relativePath6 = [bCopy relativePath];
        v106 = v10;
        v64 = [openedFileListDB setFileMetadata:v22 forPath:relativePath6 error:&v106];
        v39 = v106;

        if (v64)
        {
          relativePath7 = [bCopy relativePath];
          v105 = v39;
          v66 = [openedFileListDB markFileAsPresent:relativePath7 error:&v105];
          v67 = v105;

          if (v66)
          {
            v13 = 1;
          }

          else
          {
            if (error)
            {
              v78 = v67;
              *error = v67;
            }

            v79 = MBGetDefaultLog();
            if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v116 = bCopy;
              v117 = 2112;
              v118 = v67;
              _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_ERROR, "=transcribing= Failed to mark file %@ as unmodified: %@", buf, 0x16u);
              _MBLog(@"E ", "=transcribing= Failed to mark file %@ as unmodified: %@", bCopy, v67);
            }

            v13 = 0;
          }

          v39 = v67;
          goto LABEL_82;
        }

        if (error)
        {
          v68 = v39;
          *error = v39;
        }

        v69 = MBGetDefaultLog();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v116 = bCopy;
          v117 = 2112;
          v118 = v39;
          _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, "=transcribing= Failed to add file %@ to FileListDB: %@", buf, 0x16u);
          _MBLog(@"E ", "=transcribing= Failed to add file %@ to FileListDB: %@", bCopy, v39);
        }

        goto LABEL_65;
      }

      v101 = v22;
      pendingSnapshotDB2 = [(MBDomainTranscriber *)self pendingSnapshotDB];
      domain13 = [bCopy domain];
      name11 = [domain13 name];
      v108 = v10;
      v98 = [pendingSnapshotDB2 markDomainRequiringFileListCopy:name11 error:&v108];
      v43 = v108;

      if (v98)
      {
        v10 = v43;
        v22 = v101;
        goto LABEL_37;
      }

      v39 = v43;
      if (error)
      {
        v72 = v43;
        *error = v43;
      }

      v73 = MBGetDefaultLog();
      v22 = v101;
      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        domain14 = [bCopy domain];
        name12 = [domain14 name];
        *buf = 138412546;
        v116 = name12;
        v117 = 2112;
        v118 = v39;
        _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_ERROR, "=transcribing= Failed to mark domain %@ as requiring upload during scanning: %@", buf, 0x16u);

        domain15 = [bCopy domain];
        name13 = [domain15 name];
        _MBLog(@"E ", "=transcribing= Failed to mark domain %@ as requiring upload during scanning: %@", name13, v39);
      }

LABEL_65:
      v13 = 0;
LABEL_82:
      v10 = v39;
LABEL_83:

      goto LABEL_84;
    }
  }

  v13 = 0;
LABEL_86:

  return v13;
}

- (BOOL)fileScanner:(id)scanner failedToStatFile:(id)file withErrno:(int)errno
{
  v5 = *&errno;
  scannerCopy = scanner;
  fileCopy = file;
  compatibilityDelegate = [(MBDomainTranscriber *)self compatibilityDelegate];
  if (compatibilityDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    compatibilityDelegate2 = [(MBDomainTranscriber *)self compatibilityDelegate];
    v12 = [compatibilityDelegate2 fileScanner:scannerCopy failedToStatFile:fileCopy withErrno:v5];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)fileScanner:(id)scanner isFileAddedOrModified:(id)modified
{
  scannerCopy = scanner;
  modifiedCopy = modified;
  compatibilityDelegate = [(MBDomainTranscriber *)self compatibilityDelegate];

  if (compatibilityDelegate)
  {
    compatibilityDelegate2 = [(MBDomainTranscriber *)self compatibilityDelegate];
    v10 = [compatibilityDelegate2 fileScanner:scannerCopy isFileAddedOrModified:modifiedCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end