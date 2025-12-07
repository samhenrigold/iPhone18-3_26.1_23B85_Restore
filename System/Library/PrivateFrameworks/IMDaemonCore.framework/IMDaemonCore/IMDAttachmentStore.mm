@interface IMDAttachmentStore
+ (BOOL)_cloudkitSyncingEnabled;
+ (BOOL)_filesystemIsCaseSensitiveWithPath:(id)path;
+ (BOOL)fileEligibleForCacheDelete:(id)delete;
+ (BOOL)updateTransferIn:(id)in fromGUID:(id)d toGUID:(id)iD;
+ (IMDAttachmentStore)sharedInstance;
+ (void)_askToTapToRadarForErrorString:(id)string path:(id)path;
- (BOOL)_shouldMarkAllAttachmentsAsNeedingSync;
- (BOOL)_shouldMarkAttachmentsAsNeedingReupload;
- (BOOL)deleteAttachmentDataForTransfer:(id)transfer;
- (BOOL)deleteAttachmentWithGUID:(id)d;
- (BOOL)deleteAttachmentsForMessage:(id)message;
- (BOOL)deleteAttachmentsWithGUIDs:(id)ds;
- (BOOL)isSafeToDeleteAttachmentAtPath:(id)path;
- (BOOL)removeAttachment:(id)attachment fromMessageWithGUID:(id)d;
- (BOOL)storeAttachment:(id)attachment associateWithMessageWithGUID:(id)d chatGUID:(id)iD storeAtExternalLocation:(BOOL)location;
- (BOOL)updateAttachment:(id)attachment chatGUID:(id)d storeAtExternalPath:(BOOL)path;
- (BOOL)updateTemporaryTransferGUIDsIfNeeded:(id)needed transfersToSync:(id)sync;
- (BOOL)updateTemporaryTransferGUIDsOn:(id)on andUpdateMessageIfNeeded:(id)needed transfersToSync:(id)sync;
- (id)_alternateAttachmentPathIfExists:(id)exists;
- (id)_permanentTransferGUIDForExistingTransferWithTemporaryGUID:(id)d;
- (id)_permanentTransferGUIDForTransfer:(id)transfer inItem:(id)item;
- (id)_recordZoneIDForFilter:(unint64_t)filter;
- (id)_updateAttachmentGUIDIfNeededAndReturnTransfersMarkedWithFailStatus:(id)status transfersToSyncRowIDs:(id)ds;
- (id)attachmentWithGUID:(id)d;
- (id)attachmentsFilteredUsingPredicate:(id)predicate limit:(unint64_t)limit;
- (id)attachmentsWithGUIDs:(id)ds;
- (id)batchOfRecordIDsToDeleteWithLimit:(int64_t)limit error:(id *)error;
- (id)batchOfRecordsMissingAssetsAfterRow:(id *)row withLimit:(int64_t)limit;
- (id)batchOfRecordsToWriteWithFilter:(unint64_t)filter limit:(int64_t)limit recurseCount:(int)count error:(id *)error;
- (id)fileTransferWithAttachmentRecordRef:(_IMDAttachmentRecordStruct *)ref;
- (id)messageForTransferGUID:(id)d shouldLoadAttachments:(BOOL)attachments;
- (id)syncTokenStore;
- (int64_t)_attachmentQueryForFilter:(unint64_t)filter;
- (void)_hasMarkedAllAttachmentsAsNeedingSync;
- (void)_markAllFailedAttachmentsAsNeedingSync;
- (void)_markAttachmentWithROWID:(id)d withSyncState:(int64_t)state;
- (void)_markTransferAsNotBeingAbleToSyncWithGUID:(id)d;
- (void)_needsToMarkAllAttachmentsAsNeedingSync;
- (void)_removeTransferFromiCloudBackupWithGuid:(id)guid;
- (void)_resetAttachmentSyncStateForGUID:(id)d newSyncState:(int64_t)state;
- (void)clearLocalSyncState:(unint64_t)state;
- (void)clearTombstonesForRecordIDs:(id)ds;
- (void)deleteAttachmentSyncToken;
- (void)deleteAttachmentsDirectWithPredicate:(id)predicate;
- (void)markAllAttachmentsAsNotPurgeable;
- (void)markAttachment:(id)attachment purgeable:(BOOL)purgeable;
- (void)markFile:(id)file asPurgeable:(BOOL)purgeable;
- (void)markTransferAsNotSuccessfullyDownloadedWithGUID:(id)d;
- (void)recordUpdateFailedWithID:(id)d localGUID:(id)iD error:(id)error;
- (void)recordUpdateSucceededWithRecord:(id)record;
- (void)resetFetchState;
- (void)resetFetchStateForAssets;
- (void)resetLocalSyncStateIfAppropriate;
- (void)updateAssetUsingRecord:(id)record;
@end

@implementation IMDAttachmentStore

- (void)resetFetchState
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Resetting fetch state (afterRow to nil)", v4, 2u);
    }
  }

  [(IMDAttachmentStore *)self setAfterRow:0];
}

- (id)syncTokenStore
{
  if (qword_27D8CFE08 != -1)
  {
    sub_22B7D0698();
  }

  v3 = qword_27D8CFE00;

  return v3;
}

- (void)resetLocalSyncStateIfAppropriate
{
  if ([(IMDAttachmentStore *)self _shouldMarkAllAttachmentsAsNeedingSync])
  {
    [(IMDAttachmentStore *)self clearLocalSyncState:3];
    [(IMDAttachmentStore *)self _hasMarkedAllAttachmentsAsNeedingSync];
  }

  [(IMDAttachmentStore *)self _markAllFailedAttachmentsAsNeedingSync];
}

- (void)clearLocalSyncState:(unint64_t)state
{
  stateCopy = state;
  v7 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6[0] = 67109120;
      v6[1] = stateCopy;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Clearing local attachments sync state, flags 0x%x", v6, 8u);
    }
  }

  if (stateCopy)
  {
    [(IMDAttachmentStore *)self deleteAttachmentSyncToken];
  }

  if ((stateCopy & 2) != 0)
  {
    [(IMDAttachmentStore *)self markAllAttachmentsAsNeedingCloudKitSync];
  }

  else if ((stateCopy & 0x10) != 0)
  {
    [(IMDAttachmentStore *)self _needsToMarkAllAttachmentsAsNeedingSync];
  }
}

- (BOOL)_shouldMarkAttachmentsAsNeedingReupload
{
  mEMORY[0x277D1A990] = [MEMORY[0x277D1A990] sharedInstance];
  v3 = [mEMORY[0x277D1A990] getValueFromDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D196C0]];

  if (v3)
  {
    v4 = MEMORY[0x277CBEAA8];
    v5 = v3;
    date = [v4 date];
    [date timeIntervalSinceDate:v5];
    v8 = v7;

    v9 = v8 > 604800.0;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)_markAllFailedAttachmentsAsNeedingSync
{
  v11 = *MEMORY[0x277D85DE8];
  _shouldMarkAttachmentsAsNeedingReupload = [(IMDAttachmentStore *)self _shouldMarkAttachmentsAsNeedingReupload];
  v3 = IMOSLoggingEnabled();
  if (_shouldMarkAttachmentsAsNeedingReupload)
  {
    if (v3)
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        LOWORD(v9) = 0;
        _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Marking any unsuccessfully synced attachments as needing sync", &v9, 2u);
      }
    }

    IMDAttachmentMarkAllFailedAttachmentsAsNeedingSync();
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        LOWORD(v9) = 0;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Finished Marking any unsuccessfully synced attachments as needing sync", &v9, 2u);
      }
    }

    date = [MEMORY[0x277CBEAA8] date];
    IMSetDomainValueForKey();
  }

  else if (v3)
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = IMGetCachedDomainValueForKey();
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Not marking unsuccessful attachments as needing sync. Last attempt date %@", &v9, 0xCu);
    }
  }
}

- (void)deleteAttachmentSyncToken
{
  syncTokenStore = [(IMDAttachmentStore *)self syncTokenStore];
  [syncTokenStore persistToken:0 forKey:@"attachmentZoneChangeToken"];
}

- (void)_needsToMarkAllAttachmentsAsNeedingSync
{
  mEMORY[0x277D1A990] = [MEMORY[0x277D1A990] sharedInstance];
  [mEMORY[0x277D1A990] setBool:0 forDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D19A28]];
}

- (BOOL)_shouldMarkAllAttachmentsAsNeedingSync
{
  v11 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D1ACB8] = [MEMORY[0x277D1ACB8] sharedInstance];
  isUnderFirstDataProtectionLock = [mEMORY[0x277D1ACB8] isUnderFirstDataProtectionLock];

  if (isUnderFirstDataProtectionLock)
  {
    v4 = 0;
  }

  else
  {
    mEMORY[0x277D1A990] = [MEMORY[0x277D1A990] sharedInstance];
    v4 = [mEMORY[0x277D1A990] getBoolFromDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D19A28]] ^ 1;
  }

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = @"NO";
      if (v4)
      {
        v7 = @"YES";
      }

      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "_shouldMarkAllAttachmentsAsNeedingSync %@", &v9, 0xCu);
    }
  }

  return v4;
}

- (void)_hasMarkedAllAttachmentsAsNeedingSync
{
  mEMORY[0x277D1A990] = [MEMORY[0x277D1A990] sharedInstance];
  [mEMORY[0x277D1A990] setBool:1 forDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D19A28]];
}

- (void)_markAttachmentWithROWID:(id)d withSyncState:(int64_t)state
{
  [d longLongValue];

  IMDAttachmentRecordMarkAttachmentWithROWIDWithSyncState();
}

- (id)_updateAttachmentGUIDIfNeededAndReturnTransfersMarkedWithFailStatus:(id)status transfersToSyncRowIDs:(id)ds
{
  v36 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  dsCopy = ds;
  v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = statusCopy;
  v8 = [v7 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v8)
  {
    v10 = 0;
    v26 = *v28;
    *&v9 = 138412546;
    v23 = v9;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v26)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v27 + 1) + 8 * i);
        guid = [v12 guid];
        guid2 = [v12 guid];
        v15 = [(IMDAttachmentStore *)self messageForTransferGUID:guid2 shouldLoadAttachments:1];

        if (v15)
        {
          if ([(IMDAttachmentStore *)self updateTemporaryTransferGUIDsOn:v12 andUpdateMessageIfNeeded:v15 transfersToSync:v7])
          {
            if (IMOSLoggingEnabled())
            {
              v16 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
              {
                guid3 = [v12 guid];
                *buf = v23;
                v32 = guid;
                v33 = 2112;
                v34 = guid3;
                _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Fixed up guid for transfer old guid: %@ new guid: %@", buf, 0x16u);
              }
            }
          }

          else if (IMFileTransferGUIDIsTemporary())
          {
            v20 = [dsCopy objectAtIndexedSubscript:v10];
            if (IMOSLoggingEnabled())
            {
              v21 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
              {
                *buf = v23;
                v32 = guid;
                v33 = 2112;
                v34 = v20;
                _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "******** Marking attachment as failed to upload, as we could not update it's guid %@ (rowid %@)", buf, 0x16u);
              }
            }

            [(IMDAttachmentStore *)self _markAttachmentWithROWID:v20 withSyncState:2];
            [v24 addObject:v12];
          }
        }

        else
        {
          v18 = [dsCopy objectAtIndexedSubscript:v10];
          if (IMOSLoggingEnabled())
          {
            v19 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              *buf = v23;
              v32 = guid;
              v33 = 2112;
              v34 = v18;
              _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "******** Marking attachment %@ (rowid %@) as forever failed to upload, as we could not find an associated message", buf, 0x16u);
            }
          }

          [(IMDAttachmentStore *)self _markAttachmentWithROWID:v18 withSyncState:64];
          [v24 addObject:v12];
        }

        ++v10;
      }

      v8 = [v7 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v8);
  }

  return v24;
}

- (id)batchOfRecordsToWriteWithFilter:(unint64_t)filter limit:(int64_t)limit recurseCount:(int)count error:(id *)error
{
  v103[2] = *MEMORY[0x277D85DE8];
  [(IMDAttachmentStore *)self _attachmentQueryForFilter:?];
  selfCopy = self;
  afterRow = [(IMDAttachmentStore *)self afterRow];
  v8 = IMDAttachmentRecordCopyAttachmentsForQueryWithLimit();

  v69 = v8;
  v9 = [v8 count];
  if (v9)
  {
    v73 = v9;
    mEMORY[0x277D1AAA8]2 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v76 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v78 = objc_alloc_init(MEMORY[0x277CBEB38]);
    afterRow2 = [(IMDAttachmentStore *)selfCopy afterRow];
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v11 = v8;
    v13 = [v11 countByEnumeratingWithState:&v87 objects:v101 count:16];
    if (v13)
    {
      v14 = *v88;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v88 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v87 + 1) + 8 * i);
          v17 = IMFileTransferFromIMDAttachmentRecordRef(v16, v12);
          rowID = [v16 rowID];
          if (!afterRow2 || [afterRow2 longLongValue] < rowID)
          {
            v19 = [MEMORY[0x277CCABB0] numberWithLongLong:rowID];

            afterRow2 = v19;
          }

          if (v17)
          {
            [mEMORY[0x277D1AAA8]2 addObject:v17];
            v20 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v16, "rowID")}];
            [v76 addObject:v20];

            v21 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v16, "rowID")}];
            guid = [v17 guid];
            [v78 setObject:v21 forKey:guid];
          }

          else
          {
            if (IMOSLoggingEnabled())
            {
              v23 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
              {
                rowID2 = [v16 rowID];
                *buf = 134217984;
                v98 = rowID2;
                _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "**** failed to create IMFileTransfer from IMDAttachmentRecordRef rowid: %lld, marking as failed to upload ***", buf, 0xCu);
              }
            }

            [v16 rowID];
            IMDAttachmentRecordMarkAttachmentWithROWIDWithSyncState();
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v87 objects:v101 count:16];
      }

      while (v13);
    }

    [(IMDAttachmentStore *)selfCopy setAfterRow:afterRow2];
    if (IMOSLoggingEnabled())
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = [mEMORY[0x277D1AAA8]2 count];
        *buf = 134218240;
        v98 = v73;
        v99 = 2048;
        v100 = v26;
        _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "Got %lu dirty results to sync, filtered to %lu", buf, 0x16u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "Fixing up attachment GUIDs if needed", buf, 2u);
      }
    }

    v67 = [(IMDAttachmentStore *)selfCopy _updateAttachmentGUIDIfNeededAndReturnTransfersMarkedWithFailStatus:mEMORY[0x277D1AAA8]2 transfersToSyncRowIDs:v76];
    if ([v67 count])
    {
      if (IMOSLoggingEnabled())
      {
        v28 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "Removing attachments that failed guid conversion", buf, 2u);
        }
      }

      [mEMORY[0x277D1AAA8]2 removeObjectsInArray:v67];
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v29 = mEMORY[0x277D1AAA8]2;
      v30 = [v29 countByEnumeratingWithState:&v83 objects:v96 count:16];
      if (v30)
      {
        v31 = *v84;
        do
        {
          for (j = 0; j != v30; ++j)
          {
            if (*v84 != v31)
            {
              objc_enumerationMutation(v29);
            }

            v33 = *(*(&v83 + 1) + 8 * j);
            if (IMOSLoggingEnabled())
            {
              v34 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v98 = v33;
                _os_log_impl(&dword_22B4CC000, v34, OS_LOG_TYPE_INFO, "Transfer to sync %@ ", buf, 0xCu);
              }
            }
          }

          v30 = [v29 countByEnumeratingWithState:&v83 objects:v96 count:16];
        }

        while (v30);
      }
    }

    v75 = [(IMDAttachmentStore *)selfCopy _recordZoneIDForFilter:filter];
    v35 = +[IMDCKRecordSaltManager sharedInstance];
    cachedSalt = [v35 cachedSalt];

    v71 = objc_alloc_init(MEMORY[0x277CBEB38]);
    if ([mEMORY[0x277D1AAA8]2 count])
    {
      v36 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      obj = mEMORY[0x277D1AAA8]2;
      v37 = [obj countByEnumeratingWithState:&v79 objects:v95 count:16];
      if (!v37)
      {
        goto LABEL_66;
      }

      v38 = *v80;
      while (1)
      {
        for (k = 0; k != v37; ++k)
        {
          if (*v80 != v38)
          {
            objc_enumerationMutation(obj);
          }

          v40 = *(*(&v79 + 1) + 8 * k);
          v41 = [v40 copyCKRecordRepresentationWithZoneID:v75 salt:cachedSalt];
          v42 = v41;
          if (v41)
          {
            recordID = [v41 recordID];
            recordName = [recordID recordName];
            v45 = [v36 containsObject:recordName];

            if (v45)
            {
              goto LABEL_64;
            }

            guid2 = [v40 guid];
            [v71 setObject:v42 forKey:guid2];

            recordID2 = [v42 recordID];
            recordName2 = [recordID2 recordName];
            [v36 addObject:recordName2];
          }

          else
          {
            guid3 = [v40 guid];
            v50 = [v78 objectForKey:guid3];
            longLongValue = [v50 longLongValue];

            if (longLongValue)
            {
              if (IMOSLoggingEnabled())
              {
                v52 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
                {
                  guid4 = [v40 guid];
                  *buf = 138412546;
                  v98 = guid4;
                  v99 = 2048;
                  v100 = longLongValue;
                  _os_log_impl(&dword_22B4CC000, v52, OS_LOG_TYPE_INFO, "**** failed to create CKRecord from IMTransfer guid %@, marking row %lld as failed to upload ***", buf, 0x16u);
                }
              }

              IMDAttachmentRecordMarkAttachmentWithROWIDWithSyncState();
            }

            else
            {
              v54 = IMLogHandleForCategory();
              if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
              {
                sub_22B7D06AC(v93, v40, &v94, v54);
              }
            }

            recordID2 = [MEMORY[0x277D1AAA8] sharedInstance];
            [recordID2 forceAutoBugCaptureWithSubType:@"NullCKRecordForIMFileTransfer" errorPayload:0 type:@"MiCSync" context:@"Failed to generate CKRecord for IMFileTransfer"];
          }

LABEL_64:
        }

        v37 = [obj countByEnumeratingWithState:&v79 objects:v95 count:16];
        if (!v37)
        {
LABEL_66:

          break;
        }
      }
    }

    if ([v71 count])
    {
      if (count >= 1)
      {
        mEMORY[0x277D1AAA8] = [MEMORY[0x277D1AAA8] sharedInstance];
        v91[0] = *MEMORY[0x277D1A170];
        v56 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v71, "count")}];
        v92[0] = v56;
        v91[1] = *MEMORY[0x277D1A178];
        v57 = [MEMORY[0x277CCABB0] numberWithInt:count];
        v92[1] = v57;
        v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v92 forKeys:v91 count:2];
        [mEMORY[0x277D1AAA8] trackEvent:*MEMORY[0x277D1A180] withDictionary:v58];
      }

      v59 = v71;
      v60 = v71;
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v62 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v62, OS_LOG_TYPE_INFO, "*** All the records we fetched to write had problems, fetching next batch ***", buf, 2u);
        }
      }

      v60 = [(IMDAttachmentStore *)selfCopy batchOfRecordsToWriteWithFilter:filter limit:limit recurseCount:(count + 1) error:error];
      v59 = v71;
    }

    goto LABEL_79;
  }

  if (count >= 1)
  {
    mEMORY[0x277D1AAA8]2 = [MEMORY[0x277D1AAA8] sharedInstance];
    v61 = *MEMORY[0x277D1A178];
    v102[0] = *MEMORY[0x277D1A170];
    v102[1] = v61;
    v103[0] = &unk_283F4E4F8;
    v76 = [MEMORY[0x277CCABB0] numberWithInt:count];
    v103[1] = v76;
    v78 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v103 forKeys:v102 count:2];
    [mEMORY[0x277D1AAA8]2 trackEvent:*MEMORY[0x277D1A180] withDictionary:v78];
    v60 = 0;
LABEL_79:

    goto LABEL_80;
  }

  v60 = 0;
LABEL_80:

  return v60;
}

- (id)_recordZoneIDForFilter:(unint64_t)filter
{
  v4 = +[IMDRecordZoneManager sharedInstance];
  v5 = v4;
  if (filter == 4)
  {
    [v4 chatBotAttachmentRecordZoneID];
  }

  else
  {
    [v4 attachmentRecordZoneID];
  }
  v6 = ;

  return v6;
}

- (int64_t)_attachmentQueryForFilter:(unint64_t)filter
{
  if (filter == 4)
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

- (void)recordUpdateSucceededWithRecord:(id)record
{
  recordCopy = record;
  v4 = +[IMDCKAttachmentSyncController sharedInstance];
  [v4 _updateTransferUsingCKRecord:recordCopy wasFetched:0 dispatchToMain:0];
}

- (void)recordUpdateFailedWithID:(id)d localGUID:(id)iD error:(id)error
{
  v39 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  errorCopy = error;
  mEMORY[0x277D1AC70] = [MEMORY[0x277D1AC70] sharedInstance];
  v11 = [iDCopy copy];
  if (![mEMORY[0x277D1AC70] wasRecordAlreadyChanged:errorCopy])
  {
    if ([mEMORY[0x277D1AC70] wasAssetNotAvailable:errorCopy])
    {
      if (IMOSLoggingEnabled())
      {
        v24 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Asset was not available marking transfer as unsuccessully synced", buf, 2u);
        }
      }

LABEL_14:
      [(IMDAttachmentStore *)self _markTransferAsNotBeingAbleToSyncWithGUID:v11];
      goto LABEL_32;
    }

    if ([mEMORY[0x277D1AC70] wasUnknownItem:errorCopy])
    {
      selfCopy2 = self;
      v26 = v11;
      v27 = 2;
    }

    else
    {
      if (![mEMORY[0x277D1AC70] wasZoneNotFound:errorCopy])
      {
        if (IMOSLoggingEnabled())
        {
          v32 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_INFO, "Record failed with unhandled error will try this record again on next sync", buf, 2u);
          }
        }

        goto LABEL_14;
      }

      selfCopy2 = self;
      v26 = v11;
      v27 = 0;
    }

    [(IMDAttachmentStore *)selfCopy2 _resetAttachmentSyncStateForGUID:v26 newSyncState:v27];
    goto LABEL_32;
  }

  v12 = +[IMDCKUtilities sharedInstance];
  v13 = [v12 extractServerRecordFromCKServerErrorRecordChanged:errorCopy];

  recordName = [dCopy recordName];
  recordID = [v13 recordID];
  recordName2 = [recordID recordName];
  v17 = dCopy;
  v18 = [recordName isEqualToString:recordName2];

  if (v18)
  {
    v19 = [MEMORY[0x277D1A9C0] transferGUIDOfRecord:v13];
    v20 = [v11 isEqualToString:v19];
    v21 = IMOSLoggingEnabled();
    if (v20)
    {
      dCopy = v17;
      if (v21)
      {
        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "Server's GUID matched local GUID; aligning with the server's data", buf, 2u);
        }
      }

      v23 = +[IMDCKAttachmentSyncController sharedInstance];
      [v23 _updateTransferUsingCKRecord:v13 wasFetched:0 dispatchToMain:0];
    }

    else
    {
      dCopy = v17;
      if (v21)
      {
        v31 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v36 = v19;
          v37 = 2112;
          v38 = v11;
          _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, "On conflict, the server record's GUID (%@) was different than the record we tried to update with GUID (%@); marking local attachment as synced, to skip to", buf, 0x16u);
        }
      }

      IMDAttachmentRecordRowIDForGUID();
      IMDAttachmentRecordMarkAttachmentWithROWIDAsSyncedWithCloudKit();
    }
  }

  else
  {
    dCopy = v17;
    if (IMOSLoggingEnabled())
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        recordID2 = [v13 recordID];
        recordName3 = [recordID2 recordName];
        recordName4 = [v17 recordName];
        *buf = 138412546;
        v36 = recordName3;
        v37 = 2112;
        v38 = recordName4;
        _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "Conflicting serverRecord was different than the one being updated (server: %@, local: %@)", buf, 0x16u);
      }
    }

    [(IMDAttachmentStore *)self _resetAttachmentSyncStateForGUID:v11 newSyncState:2];
  }

LABEL_32:
}

- (void)_resetAttachmentSyncStateForGUID:(id)d newSyncState:(int64_t)state
{
  v12 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = [(IMDAttachmentStore *)self attachmentWithGUID:dCopy];
  v8 = v7;
  if (v7)
  {
    [v7 setCloudKitServerChangeTokenBlob:0];
    [v8 setCloudKitRecordID:0];
    [v8 setCloudKitSyncState:state];
    [(IMDAttachmentStore *)self updateAttachment:v8];
  }

  else if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = dCopy;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Tried to clear sync state for a transfer with guid (%@), transfer not found on disk", &v10, 0xCu);
    }
  }
}

- (void)_markTransferAsNotBeingAbleToSyncWithGUID:(id)d
{
  v10 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = [(IMDAttachmentStore *)self attachmentWithGUID:dCopy];
  v6 = v5;
  if (v5)
  {
    [v5 setCloudKitSyncState:2];
    [(IMDAttachmentStore *)self updateAttachment:v6];
  }

  else if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = dCopy;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Could not find transfer for guid (%@) to mark as not synced successfully", &v8, 0xCu);
    }
  }
}

+ (IMDAttachmentStore)sharedInstance
{
  if (qword_281421188 != -1)
  {
    sub_22B7D699C();
  }

  return qword_281421008;
}

- (BOOL)storeAttachment:(id)attachment associateWithMessageWithGUID:(id)d chatGUID:(id)iD storeAtExternalLocation:(BOOL)location
{
  locationCopy = location;
  v58 = *MEMORY[0x277D85DE8];
  v11 = objc_autoreleasePoolPush();
  v12 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_DEFAULT, "Request to store transfer.", buf, 2u);
  }

  v13 = -[IMDAttachmentStore attachmentWithGUID:](self, "attachmentWithGUID:", [attachment guid]);
  if (v13)
  {
    v14 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_DEFAULT, "  => Updating existing transfer", buf, 2u);
    }

    v15 = [(IMDAttachmentStore *)self updateAttachment:attachment chatGUID:iD storeAtExternalPath:locationCopy];
    if (!d)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  v16 = IMDAttachmentRecordRefFromIMFileTransfer(attachment, iD, locationCopy);
  if (!v16)
  {
    v15 = 0;
    if (!d)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  v18 = v16;
  v19 = IMFileTransferFromIMDAttachmentRecordRef(v16, v17);
  v20 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    transferState = [v19 transferState];
    cloudKitSyncState = [v19 cloudKitSyncState];
    v33 = [objc_msgSend(v19 "localURL")];
    transferredFilename = [v19 transferredFilename];
    guid = [v19 guid];
    error = [v19 error];
    totalBytes = [v19 totalBytes];
    createdDate = [v19 createdDate];
    commSafetySensitive = [v19 commSafetySensitive];
    updateReason = [v19 updateReason];
    *buf = 134220546;
    v37 = v19;
    v38 = 2048;
    dCopy = transferState;
    v40 = 2048;
    v41 = cloudKitSyncState;
    v42 = 2112;
    v43 = v33;
    v44 = 2112;
    v45 = transferredFilename;
    v46 = 2112;
    v47 = guid;
    v48 = 1024;
    v49 = error;
    v50 = 1024;
    v51 = totalBytes;
    v52 = 2112;
    v53 = createdDate;
    v54 = 1024;
    v55 = commSafetySensitive;
    v56 = 2048;
    v57 = updateReason;
    _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_DEFAULT, "  => Created new : [IMFileTransfer: %p  state: %ld  sync state: %ld  local path: %@  transferred name: %@  guid: %@  error: %d  total bytes: %d  created: %@ commSafety: %d update reason: %ld]", buf, 0x64u);
  }

  v15 = v19 != 0;
  if (v19)
  {
    [attachment _setLocalPath:{objc_msgSend(v19, "localPath")}];
  }

  CFRelease(v18);
  if (d)
  {
LABEL_16:
    if (([attachment isAuxVideo] & 1) == 0)
    {
      v25 = IMAttachmentsLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        guid2 = [attachment guid];
        *buf = 138412546;
        v37 = guid2;
        v38 = 2112;
        dCopy = d;
        _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_DEFAULT, "  ** Associated transfer GUID %@ with message GUID: %@", buf, 0x16u);
      }

      [attachment guid];
      IMDMessageRecordAssociateMessageWithGUIDToAttachmentWithGUID();
    }
  }

LABEL_20:

  objc_autoreleasePoolPop(v11);
  if ([attachment isAuxVideo])
  {
    v27 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      guid3 = [attachment guid];
      *buf = 138412290;
      v37 = guid3;
      _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_DEFAULT, "Overriding return val in storeAttachment for Aux transfer %@", buf, 0xCu);
    }

    return 1;
  }

  return v15;
}

- (BOOL)removeAttachment:(id)attachment fromMessageWithGUID:(id)d
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = objc_autoreleasePoolPush();
  v8 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    attachmentCopy = attachment;
    v14 = 2112;
    dCopy = d;
    _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEFAULT, "Request to unassociate transfer: %@ from message guid: %@", &v12, 0x16u);
  }

  v9 = -[IMDAttachmentStore attachmentWithGUID:](self, "attachmentWithGUID:", [attachment guid]);
  v10 = v9;
  [attachment guid];
  IMDMessageRecordUnassociateMessageWithGUIDFromAttachmentWithGUID();

  objc_autoreleasePoolPop(v7);
  return 0;
}

- (BOOL)updateAttachment:(id)attachment chatGUID:(id)d storeAtExternalPath:(BOOL)path
{
  pathCopy = path;
  v19 = *MEMORY[0x277D85DE8];
  v9 = objc_autoreleasePoolPush();
  v10 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    guid = [attachment guid];
    _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_DEFAULT, "Request to update transfer: %@", &v17, 0xCu);
  }

  [attachment guid];
  v11 = IMDAttachmentRecordCopyAttachmentForGUID();
  v12 = [(IMDAttachmentStore *)self fileTransferWithAttachmentRecordRef:v11];
  v13 = IMAttachmentsLogHandle();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v14)
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_DEFAULT, "  => Updating existing transfer", &v17, 2u);
    }

    IMDUpdateIMFileTransferFromIMFileTransfer(v12, v11, attachment, pathCopy, d);
    v15 = 1;
    if (v11)
    {
LABEL_7:
      CFRelease(v11);
    }
  }

  else
  {
    if (v14)
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_DEFAULT, "  => Found no transfer, storing instead", &v17, 2u);
    }

    v15 = [(IMDAttachmentStore *)self storeAttachment:attachment associateWithMessageWithGUID:0 chatGUID:d storeAtExternalLocation:pathCopy];
    if (v11)
    {
      goto LABEL_7;
    }
  }

  objc_autoreleasePoolPop(v9);
  return v15;
}

- (void)markFile:(id)file asPurgeable:(BOOL)purgeable
{
  v12 = *MEMORY[0x277D85DE8];
  if (!file)
  {
    v9 = IMAttachmentsLogHandle();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LOWORD(v10) = 0;
    v6 = "No attachment path to mark as purgable";
    v7 = v9;
    v8 = 2;
    goto LABEL_8;
  }

  if (purgeable)
  {
    if (![IMDAttachmentStore fileEligibleForCacheDelete:file])
    {
      v5 = IMAttachmentsLogHandle();
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v10 = 138412290;
      fileCopy = file;
      v6 = "%@ not eligible for cache delete";
      v7 = v5;
      v8 = 12;
LABEL_8:
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_DEFAULT, v6, &v10, v8);
      return;
    }
  }

  else if ([objc_msgSend(MEMORY[0x277D19268] "sharedInstance")])
  {
    IMLogBacktrace();
    [IMDAttachmentStore _askToTapToRadarForErrorString:@"SingleFile" path:file];
  }

  MEMORY[0x2821F9670](file, sel_im_markFileAsPurgeable_);
}

+ (BOOL)_cloudkitSyncingEnabled
{
  v2 = +[IMDCKUtilities sharedInstance];

  return [(IMDCKUtilities *)v2 cloudKitSyncingEnabled];
}

+ (BOOL)fileEligibleForCacheDelete:(id)delete
{
  v18 = *MEMORY[0x277D85DE8];
  if (([self _cloudkitSyncingEnabled] & 1) == 0)
  {
    v7 = IMOffloadingLogHandle();
    v6 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (!v6)
    {
      return v6;
    }

    LOWORD(v16) = 0;
    v8 = "Not marking path as eligible for cachedelete, cloudkit syncing is not on";
    v9 = v7;
    v10 = 2;
    goto LABEL_7;
  }

  lastPathComponent = [delete lastPathComponent];
  if (![lastPathComponent isEqualToString:@"Attachments"])
  {
    if (![lastPathComponent containsString:*MEMORY[0x277D19E70]])
    {
      if (([objc_msgSend(delete "stringByDeletingLastPathComponent")] & 1) == 0)
      {
        v14 = IMOffloadingLogHandle();
        v6 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
        if (!v6)
        {
          return v6;
        }

        sub_22B7D69B0();
        goto LABEL_8;
      }

      v12 = [objc_msgSend(delete "pathExtension")];
      if (v12)
      {
        v13 = IMOffloadingLogHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 138412290;
          deleteCopy2 = delete;
          _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_DEFAULT, "Not marking path as eligible for cachedelete, file extension is an audio message. path: %@", &v16, 0xCu);
        }
      }

      LOBYTE(v6) = v12 ^ 1;
      return v6;
    }

    v11 = IMOffloadingLogHandle();
    v6 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (!v6)
    {
      return v6;
    }

    v16 = 138412290;
    deleteCopy2 = delete;
    v8 = "Not marking path as eligible for cachedelete, last path component matches group photo file name. path: %@";
    v9 = v11;
    v10 = 12;
LABEL_7:
    _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_DEFAULT, v8, &v16, v10);
    goto LABEL_8;
  }

  v5 = IMOffloadingLogHandle();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  if (v6)
  {
    sub_22B7D6A18(v5);
LABEL_8:
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)markAttachment:(id)attachment purgeable:(BOOL)purgeable
{
  v14 = *MEMORY[0x277D85DE8];
  if (attachment)
  {
    purgeableCopy = purgeable;
    [IMDAttachmentStore markFile:"markFile:asPurgeable:" asPurgeable:?];
    v7 = [(IMDAttachmentStore *)self _alternateAttachmentPathIfExists:attachment];
    if (v7)
    {
      [(IMDAttachmentStore *)self markFile:v7 asPurgeable:purgeableCopy];
    }

    if (([objc_msgSend(attachment "pathExtension")] & 1) == 0 && (objc_msgSend(objc_msgSend(attachment, "pathExtension"), "isEqualToString:", @"mov") & 1) == 0)
    {
      im_livePhotoVideoPath = [attachment im_livePhotoVideoPath];
      if (im_livePhotoVideoPath)
      {
        v9 = im_livePhotoVideoPath;
        v10 = IMAttachmentsLogHandle();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v12 = 138412290;
          v13 = v9;
          _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_DEFAULT, "Found aux video path: %@", &v12, 0xCu);
        }

        [(IMDAttachmentStore *)self markFile:v9 asPurgeable:purgeableCopy];
      }
    }
  }

  else
  {
    v11 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_DEFAULT, "No attachment path to mark as purgable", &v12, 2u);
    }
  }
}

+ (BOOL)_filesystemIsCaseSensitiveWithPath:(id)path
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B6249BC;
  block[3] = &unk_278704F90;
  block[4] = path;
  if (qword_2814225A8 != -1)
  {
    dispatch_once(&qword_2814225A8, block);
  }

  return byte_2814225A0;
}

- (id)_alternateAttachmentPathIfExists:(id)exists
{
  if (![IMDAttachmentStore _filesystemIsCaseSensitiveWithPath:?])
  {
    return 0;
  }

  pathExtension = [exists pathExtension];
  result = [pathExtension length];
  if (result)
  {
    lowercaseString = [pathExtension lowercaseString];
    uppercaseString = [pathExtension uppercaseString];
    if ([pathExtension isEqualToString:uppercaseString])
    {
      v8 = lowercaseString;
    }

    else
    {
      v8 = uppercaseString;
    }

    v9 = [objc_msgSend(exists "stringByDeletingPathExtension")];
    if ([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")])
    {
      return v9;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

+ (void)_askToTapToRadarForErrorString:(id)string path:(id)path
{
  if ([objc_msgSend(MEMORY[0x277D19268] "sharedInstance")] && IMGetCachedDomainBoolForKeyWithDefaultValue())
  {
    if (qword_27D8CFF40 != -1)
    {
      sub_22B7D6A5C();
    }

    v6 = [MEMORY[0x277D192D0] userNotificationWithIdentifier:objc_msgSend(MEMORY[0x277CCACA8] title:"stringGUID") message:@"Messages Storage Management" defaultButton:@"An attachment was unexpectedly marked as not purgeable." alternateButton:@"File a Radar" otherButton:{@"Dismiss", 0}];
    if (v6)
    {
      v7 = v6;
      v8 = IMAttachmentsLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEFAULT, "Presenting CacheDelete TTR UI", buf, 2u);
      }

      mEMORY[0x277D1AAA8] = [MEMORY[0x277D1AAA8] sharedInstance];
      [mEMORY[0x277D1AAA8] trackEvent:*MEMORY[0x277D1A1E0]];
      [v7 setUsesNotificationCenter:0];
      [v7 setRepresentedApplicationBundle:*MEMORY[0x277D192F0]];
      mEMORY[0x277D192D8] = [MEMORY[0x277D192D8] sharedInstance];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = sub_22B624D50;
      v11[3] = &unk_278706850;
      v11[4] = string;
      v11[5] = path;
      [mEMORY[0x277D192D8] addUserNotification:v7 listener:0 completionHandler:v11];
    }
  }
}

- (void)markAllAttachmentsAsNotPurgeable
{
  buf[5] = *MEMORY[0x277D85DE8];
  if ([objc_msgSend(MEMORY[0x277D19268] "sharedInstance")])
  {
    IMLogBacktrace();
    [IMDAttachmentStore _askToTapToRadarForErrorString:@"All attachments" path:0];
  }

  stringByExpandingTildeInPath = [@"/var/mobile/Library/SMS/Attachments" stringByExpandingTildeInPath];
  v3 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf[0]) = 138412290;
    *(buf + 4) = stringByExpandingTildeInPath;
    _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_DEFAULT, "Clearing purgeable flags under %@", buf, 0xCu);
  }

  memset(&buf[1], 0, 24);
  buf[0] = 0x900000002;
  v4 = fsctl([stringByExpandingTildeInPath fileSystemRepresentation], 0xC0204A49uLL, buf, 0);
  if (!v4)
  {
    v7 = IMAttachmentsLogHandle();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v14 = 138412290;
    v15 = stringByExpandingTildeInPath;
    v9 = "Cleared purgeable flags under %@";
    goto LABEL_11;
  }

  v5 = v4;
  v6 = *__error();
  v7 = IMAttachmentsLogHandle();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6 == 2)
  {
    if (!v8)
    {
      return;
    }

    v14 = 138412290;
    v15 = stringByExpandingTildeInPath;
    v9 = "%@ does not exist, skip clearing the purgeable flags";
LABEL_11:
    v10 = v7;
    v11 = 12;
    goto LABEL_14;
  }

  if (!v8)
  {
    return;
  }

  v12 = __error();
  v13 = strerror(*v12);
  v14 = 138412802;
  v15 = stringByExpandingTildeInPath;
  v16 = 1024;
  v17 = v5;
  v18 = 2080;
  v19 = v13;
  v9 = "Failed to clear purgeable flag for %@ %d (%s)";
  v10 = v7;
  v11 = 28;
LABEL_14:
  _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_DEFAULT, v9, &v14, v11);
}

- (id)attachmentWithGUID:(id)d
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    dCopy = d;
    _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Request for attachment with guid: %@", &v11, 0xCu);
  }

  v5 = objc_autoreleasePoolPush();
  v6 = IMDAttachmentRecordCopyAttachmentForGUID();
  if (v6)
  {
    v8 = v6;
    v9 = IMFileTransferFromIMDAttachmentRecordRef(v6, v7);
    [v9 fixInvalidTransferStateIfNeeded];
    CFRelease(v8);
  }

  else
  {
    v9 = 0;
  }

  objc_autoreleasePoolPop(v5);
  return v9;
}

- (id)attachmentsWithGUIDs:(id)ds
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    dsCopy = ds;
    _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Request for attachments with guids: %@", buf, 0xCu);
  }

  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(ds, "count")}];
  if (ds)
  {
    v7 = -[IMDAttachmentStore attachmentsFilteredUsingPredicate:limit:](self, "attachmentsFilteredUsingPredicate:limit:", [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", *MEMORY[0x277D196B0], ds], -1);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v14 + 1) + 8 * v11);
          if (v12 && ([*(*(&v14 + 1) + 8 * v11) isFinished] & 1) == 0 && objc_msgSend(v12, "transferState"))
          {
            [v12 _setTransferState:6];
            [v12 _setError:11];
          }

          [v6 addObject:v12];
          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

  return v6;
}

- (id)fileTransferWithAttachmentRecordRef:(_IMDAttachmentRecordStruct *)ref
{
  v5 = objc_autoreleasePoolPush();
  if (ref)
  {
    ref = IMFileTransferFromIMDAttachmentRecordRef(ref, v4);
    [(_IMDAttachmentRecordStruct *)ref fixInvalidTransferStateIfNeeded];
  }

  objc_autoreleasePoolPop(v5);

  return ref;
}

- (id)attachmentsFilteredUsingPredicate:(id)predicate limit:(unint64_t)limit
{
  v28 = *MEMORY[0x277D85DE8];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3052000000;
  v24 = sub_22B4D7760;
  v25 = sub_22B4D7910;
  v26 = 0;
  synchronousDatabase = [MEMORY[0x277D18EB0] synchronousDatabase];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_22B625638;
  v20[3] = &unk_2787031A0;
  v20[4] = &v21;
  [synchronousDatabase fetchAttachmentRecordsFilteredUsingPredicate:predicate limit:limit completionHandler:v20];
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v22[5];
  v10 = [v8 countByEnumeratingWithState:&v16 objects:v27 count:16];
  if (v10)
  {
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = IMFileTransferFromIMDAttachmentRecordRef(*(*(&v16 + 1) + 8 * i), v9);
        if (v13)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v27 count:16];
    }

    while (v10);
  }

  v14 = v7;
  _Block_object_dispose(&v21, 8);
  return v14;
}

- (id)messageForTransferGUID:(id)d shouldLoadAttachments:(BOOL)attachments
{
  attachmentsCopy = attachments;
  v13 = *MEMORY[0x277D85DE8];
  v6 = IMDAttachmentRecordCopyMessageForAttachmentGUID();
  if (v6)
  {
    v7 = v6;
    AttachmentIfNeededRef = IMDCreateIMMessageItemFromIMDMessageRecordLoadAttachmentIfNeededRef(v6, 0, 1, attachmentsCopy);
    CFRelease(v7);

    return AttachmentIfNeededRef;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = 138412290;
        dCopy = d;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "messageForTransferGUID failed to get a message record for transfer %@", &v11, 0xCu);
      }
    }

    return 0;
  }
}

- (BOOL)updateTemporaryTransferGUIDsIfNeeded:(id)needed transfersToSync:(id)sync
{
  v7 = -[IMDAttachmentStore messageForTransferGUID:shouldLoadAttachments:](self, "messageForTransferGUID:shouldLoadAttachments:", [needed guid], 1);

  return [(IMDAttachmentStore *)self updateTemporaryTransferGUIDsOn:needed andUpdateMessageIfNeeded:v7 transfersToSync:sync];
}

+ (BOOL)updateTransferIn:(id)in fromGUID:(id)d toGUID:(id)iD
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [in countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(in);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        if ([objc_msgSend(v12 "guid")])
        {
          [v12 setGuid:iD];
          LOBYTE(v8) = 1;
          return v8;
        }

        ++v11;
      }

      while (v9 != v11);
      v8 = [in countByEnumeratingWithState:&v14 objects:v18 count:16];
      v9 = v8;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  return v8;
}

- (id)_permanentTransferGUIDForTransfer:(id)transfer inItem:(id)item
{
  guid = [transfer guid];
  if (!IMFileTransferGUIDIsTemporary())
  {
    return guid;
  }

  guid2 = [item guid];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_13:
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Could not find message part matching file transfer GUID, using 0 as the message part index.", v12, 2u);
    }

    return IMFileTransferGUIDForPluginPayloadOrGroupPhotoInMessageGUID();
  }

  if ([objc_msgSend(item "body")])
  {
    v8 = [objc_msgSend(transfer "filename")];
LABEL_5:

    return MEMORY[0x282173DC0](guid2, v8);
  }

  if (![transfer isAdaptiveImageGlyph])
  {
    v8 = [item messagePartIndexForAttachmentMessagePartWithTransferGUID:guid];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  adaptiveImageGlyphContentIdentifier = [transfer adaptiveImageGlyphContentIdentifier];

  return MEMORY[0x282173DC8](adaptiveImageGlyphContentIdentifier, guid2);
}

- (id)_permanentTransferGUIDForExistingTransferWithTemporaryGUID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = IMDAttachmentRecordCopyAttachmentForGUID();
  if (v5)
  {
    v6 = v5;
    v7 = IMDAttachmentRecordCopyMessageForAttachmentGUID();
    if (v7)
    {
      v8 = v7;
      v9 = IMDCreateIMMessageItemFromIMDMessageRecordRef(v7, 0, 1);
      if (v9)
      {
        if (IMOSLoggingEnabled())
        {
          v11 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v18 = 138412290;
            dCopy = d;
            _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Found corresponding IMItem for temporary transferGUID %@", &v18, 0xCu);
          }
        }

        v12 = IMFileTransferFromIMDAttachmentRecordRef(v6, v10);
        v13 = [(IMDAttachmentStore *)self _permanentTransferGUIDForTransfer:v12 inItem:v9];
      }

      else
      {
        v16 = IMLogHandleForCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_22B7D6A70();
        }

        v13 = 0;
      }

      CFRelease(v8);
    }

    else
    {
      v15 = IMLogHandleForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D6AD8();
      }

      v13 = 0;
    }

    CFRelease(v6);
  }

  else
  {
    v14 = IMLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D6B40();
    }

    return 0;
  }

  return v13;
}

- (BOOL)updateTemporaryTransferGUIDsOn:(id)on andUpdateMessageIfNeeded:(id)needed transfersToSync:(id)sync
{
  v68 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    guid = [needed guid];
    v7 = [objc_msgSend(needed "fileTransferGUIDs")];
    v47 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    obj = v7;
    v8 = [v7 countByEnumeratingWithState:&v58 objects:v67 count:16];
    if (v8)
    {
      v9 = v8;
      v46 = 0;
      v10 = *v59;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v59 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v58 + 1) + 8 * i);
          if (IMFileTransferGUIDIsTemporary())
          {
            v13 = [(IMDAttachmentStore *)self _loadAttachmentRecordForGUID:v12];
            if (v13)
            {
              v14 = v13;
              v15 = [(IMDAttachmentStore *)self _newFileTransferFromIMDAttachmentRecordRef:v13];
              CFRelease(v14);
              v16 = [(IMDAttachmentStore *)self _permanentTransferGUIDForTransfer:v15 inItem:needed];
              v17 = IMAttachmentsLogHandle();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v64 = v12;
                v65 = 2112;
                v66 = v16;
                _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_DEFAULT, "Re-targeting transfer GUID from %@ to %@", buf, 0x16u);
              }

              v18 = [(IMDAttachmentStore *)self _updateAttachmentGUID:v12 withGUID:v16];
              v19 = IMAttachmentsLogHandle();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109120;
                LODWORD(v64) = v18;
                _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_DEFAULT, "_updateAttachmentGUID completed with success %{BOOL}d", buf, 8u);
              }

              if (v18)
              {
                if (v15)
                {
                  [v15 setGuid:v16];
                }

                [IMDAttachmentStore updateTransferIn:sync fromGUID:v12 toGUID:v16];
                [+[IMDFileTransferCenter sharedInstance](IMDFileTransferCenter updateTransferGUID:"updateTransferGUID:toGUID:" toGUID:v12, v16];
                if (on && [v12 isEqualToString:{objc_msgSend(on, "guid")}])
                {
                  v20 = IMAttachmentsLogHandle();
                  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                  {
                    guid2 = [on guid];
                    *buf = 138412546;
                    v64 = guid2;
                    v65 = 2112;
                    v66 = v16;
                    _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_DEFAULT, "We are updating the in-memory transfer's guid that we will sync to CloudKit in-memory transfer: %@ newGUID: %@", buf, 0x16u);
                  }

                  [on setGuid:v16];
                  v46 = 1;
                }

                [(IMDAttachmentStore *)self updateAttachment:v15];
                [v47 setObject:v16 forKey:v12];
              }
            }

            else
            {
              v22 = IMAttachmentsLogHandle();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v64 = v12;
                _os_log_error_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_ERROR, "Got null attachment record for %@", buf, 0xCu);
              }
            }
          }
        }

        v9 = [obj countByEnumeratingWithState:&v58 objects:v67 count:16];
      }

      while (v9);
    }

    else
    {
      v46 = 0;
    }

    v25 = [v47 copy];

    v26 = [needed updateTemporaryFileTransferGUIDsWithPermanentFileTransferGUIDs:v25];
    v27 = v26;
    if (v26)
    {
      v48 = v26;
      v28 = [+[IMDMessageStore sharedInstance](IMDMessageStore storeMessage:"storeMessage:forceReplace:modifyError:modifyFlags:flagMask:" forceReplace:needed modifyError:0 modifyFlags:0 flagMask:0, 0];
      if (!needed || v28 == needed)
      {
        v31 = IMAttachmentsLogHandle();
        v30 = guid;
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          sub_22B7D6C30(guid, needed, v31);
        }

        v29 = @"FAILED (maybe)";
      }

      else
      {
        v29 = @"succeeded";
        v30 = guid;
      }

      v32 = IMAttachmentsLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v64 = v29;
        _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_DEFAULT, "Message body attachment attributes update %@!", buf, 0xCu);
      }

      v51 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [v51 addObject:v30];
      v33 = [+[IMDMessageStore sharedInstance](IMDMessageStore messagesWithAssociatedGUID:"messagesWithAssociatedGUID:", v30];
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v34 = [v33 countByEnumeratingWithState:&v54 objects:v62 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v55;
        do
        {
          for (j = 0; j != v35; ++j)
          {
            if (*v55 != v36)
            {
              objc_enumerationMutation(v33);
            }

            v38 = *(*(&v54 + 1) + 8 * j);
            guid3 = [v38 guid];
            v40 = [v38 updateTemporaryFileTransferGUIDsWithPermanentFileTransferGUIDs:v25];
            v41 = IMLogHandleForCategory();
            v42 = os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);
            if (v40)
            {
              if (v42)
              {
                *buf = 138412290;
                v64 = guid3;
                _os_log_impl(&dword_22B4CC000, v41, OS_LOG_TYPE_DEFAULT, "Associated message item %@ changed when temporary file transfers were updated.", buf, 0xCu);
              }

              [v51 addObject:guid3];
            }

            else if (v42)
            {
              *buf = 138412290;
              v64 = guid3;
              _os_log_impl(&dword_22B4CC000, v41, OS_LOG_TYPE_DEFAULT, "Associated message item %@ did not change when temporary file transfers were updated.", buf, 0xCu);
            }
          }

          v35 = [v33 countByEnumeratingWithState:&v54 objects:v62 count:16];
        }

        while (v35);
      }

      v43 = [v51 copy];

      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = sub_22B6263D8;
      v53[3] = &unk_278704F90;
      v53[4] = v43;
      [(IMDAttachmentStore *)self _reindexMessageGUIDs:v43 reason:1001 completion:v53];

      v27 = v48;
    }

    v24 = v46;
    if (!on)
    {
      v24 = v27;
    }
  }

  else
  {
    v23 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D6BA8(needed, v23);
    }

    v24 = 0;
  }

  return v24 & 1;
}

- (BOOL)deleteAttachmentsForMessage:(id)message
{
  v11 = *MEMORY[0x277D85DE8];
  fileTransferGUIDs = [message fileTransferGUIDs];
  if ([fileTransferGUIDs count])
  {
    v5 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = fileTransferGUIDs;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEFAULT, "Deleting attachments, guids %@", &v9, 0xCu);
    }

    if ([(IMDAttachmentStore *)self deleteAttachmentsWithGUIDs:fileTransferGUIDs])
    {
      return 1;
    }
  }

  v7 = IMAttachmentsLogHandle();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v8)
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_DEFAULT, "Failed to delete attachments", &v9, 2u);
    return 0;
  }

  return result;
}

- (BOOL)deleteAttachmentsWithGUIDs:(id)ds
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    dsCopy = ds;
    _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEFAULT, "Request to delete attachments with guids: %@", buf, 0xCu);
  }

  context = objc_autoreleasePoolPush();
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = [ds countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(ds);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        [v6 addObject:v11];
        if (IMFileTransferGUIDIsTemporary())
        {
          v12 = [(IMDAttachmentStore *)self _permanentTransferGUIDForExistingTransferWithTemporaryGUID:v11];
          if ([v12 length])
          {
            v13 = IMAttachmentsLogHandle();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              dsCopy = v11;
              v36 = 2112;
              v37 = v12;
              _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_DEFAULT, "Requested delete of temporary attachmentGUID %@ will also delete permanent attachmentGUID %@", buf, 0x16u);
            }

            [v6 addObject:v12];
          }
        }
      }

      v8 = [ds countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v8);
  }

  v14 = [v6 copy];

  v15 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    dsCopy = v14;
    _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_DEFAULT, "Deleting attachments with attachment guids from spotlight: %@", buf, 0xCu);
  }

  indexingQueryProvider = [MEMORY[0x277D18EE0] indexingQueryProvider];
  v17 = [MEMORY[0x277D18EB8] contextWithReason:1006];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_22B6268E8;
  v28[3] = &unk_2787062A8;
  v28[4] = v14;
  [indexingQueryProvider deleteAttachmentGUIDs:v14 context:v17 completionHandler:v28];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v18 = [ds countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v25;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v25 != v20)
        {
          objc_enumerationMutation(ds);
        }

        IMDAttachmentRecordDeleteAttachmentForGUID();
      }

      v19 = [ds countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v19);
  }

  objc_autoreleasePoolPop(context);
  return 1;
}

- (BOOL)deleteAttachmentDataForTransfer:(id)transfer
{
  v4 = objc_autoreleasePoolPush();
  [objc_msgSend(MEMORY[0x277D18EE8] "sharedInstance")];
  objc_autoreleasePoolPop(v4);
  return 1;
}

- (BOOL)deleteAttachmentWithGUID:(id)d
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (d)
  {
    v7[0] = d;
    return -[IMDAttachmentStore deleteAttachmentsWithGUIDs:](self, "deleteAttachmentsWithGUIDs:", [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1]);
  }

  else if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    v3 = 1;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Request to delete attachment with nil guid", v6, 2u);
    }
  }

  else
  {
    return 1;
  }

  return v3;
}

- (BOOL)isSafeToDeleteAttachmentAtPath:(id)path
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = [path length];
  if (v4)
  {
    v5 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      pathCopy = path;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEFAULT, "Request to check if the attachment path is safe: %@", &v7, 0xCu);
    }

    LOBYTE(v4) = [objc_msgSend(MEMORY[0x277D18EE8] "sharedInstance")];
  }

  return v4;
}

- (void)deleteAttachmentsDirectWithPredicate:(id)predicate
{
  database = [MEMORY[0x277D18EB0] database];

  MEMORY[0x2821F9670](database, sel_deleteAttachmentsDirectWithPredicate_);
}

- (void)resetFetchStateForAssets
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v3 = 0;
      _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "Resetting fetch state for assets (afterRow to nil)", v3, 2u);
    }
  }
}

- (id)batchOfRecordsMissingAssetsAfterRow:(id *)row withLimit:(int64_t)limit
{
  v43 = *MEMORY[0x277D85DE8];
  rowCopy = row;
  if (row)
  {
    v4 = *row;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = IMDAttachmentRecordCopyAttachmentsForQueryWithLimit();
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v6 count];
      if (v5)
      {
        stringValue = [v5 stringValue];
      }

      else
      {
        stringValue = @"nil";
      }

      *buf = 134218498;
      v38 = v8;
      v39 = 2112;
      v40 = stringValue;
      v41 = 2112;
      v42 = v6;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Found %lu records afterRow %@ to download {%@} ", buf, 0x20u);
      if (v5)
      {
      }
    }
  }

  v31 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v10 = +[IMDRecordZoneManager sharedInstance];
  attachmentRecordZone = [v10 attachmentRecordZone];
  zoneID = [attachmentRecordZone zoneID];

  v30 = v5;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v13 = v6;
  v14 = [v13 countByEnumeratingWithState:&v32 objects:v36 count:16];
  v15 = v30;
  if (v14)
  {
    v16 = *v33;
    v15 = v30;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v33 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v32 + 1) + 8 * i);
        if (!v15 || (v19 = [v15 longLongValue], v19 < objc_msgSend(v18, "rowID")))
        {
          v20 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v18, "rowID", rowCopy)}];

          v15 = v20;
        }

        cloudRecordID = [v18 cloudRecordID];

        if (cloudRecordID)
        {
          v22 = objc_alloc(MEMORY[0x277CBC5D0]);
          cloudRecordID2 = [v18 cloudRecordID];
          v24 = [v22 initWithRecordName:cloudRecordID2 zoneID:zoneID];

          if (v24)
          {
            guid = [v18 guid];
            [v31 setObject:guid forKey:v24];
          }

          else if (IMOSLoggingEnabled())
          {
            v26 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v38 = v18;
              _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "Could not create recordID for attachment to upload on record %@", buf, 0xCu);
            }
          }
        }

        else
        {
          if (!IMOSLoggingEnabled())
          {
            continue;
          }

          v24 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v38 = v18;
            _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "cloudRecordID is nil on record %@", buf, 0xCu);
          }
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v14);
  }

  if (rowCopy)
  {
    v27 = v15;
    *rowCopy = v15;
  }

  return v31;
}

- (void)updateAssetUsingRecord:(id)record
{
  recordCopy = record;
  v8 = 0;
  v5 = +[IMDFileTransferCenter sharedInstance];
  v6 = [v5 updateTransfersWithCKRecord:recordCopy recordWasFetched:1 downloadAsset:&v8];
  v7 = [v6 copy];

  if (v7 && [v7 length])
  {
    [(IMDAttachmentStore *)self _removeTransferFromiCloudBackupWithGuid:v7];
  }

  [MEMORY[0x277D1A9C0] cleanUpAssetsOnDiskForRecord:recordCopy];
}

- (void)markTransferAsNotSuccessfullyDownloadedWithGUID:(id)d
{
  v10 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = [(IMDAttachmentStore *)self attachmentWithGUID:dCopy];
  v6 = v5;
  if (v5)
  {
    [v5 setCloudKitSyncState:5];
    [(IMDAttachmentStore *)self updateAttachment:v6];
  }

  else if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = dCopy;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Failed to find transfer %@ to mark as unsuccessful", &v8, 0xCu);
    }
  }
}

- (void)_removeTransferFromiCloudBackupWithGuid:(id)guid
{
  v17 = *MEMORY[0x277D85DE8];
  guidCopy = guid;
  v4 = +[IMDAttachmentStore sharedInstance];
  v5 = [v4 attachmentWithGUID:guidCopy];

  if (v5 && [v5 cloudKitSyncState] == 1)
  {
    localPath = [v5 localPath];
    v12 = 0;
    if (localPath && ([MEMORY[0x277CCAA00] defaultManager], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "fileExistsAtPath:isDirectory:", localPath, &v12), v7, v8))
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v14 = guidCopy;
          v15 = 2112;
          v16 = localPath;
          _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Removing icloud backup attribute for guid %@ path %@", buf, 0x16u);
        }
      }

      v10 = +[IMDCKBackupController sharedInstance];
      [v10 removePathFromiCloudBackup:localPath];
    }

    else if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v14 = localPath;
        v15 = 2112;
        v16 = guidCopy;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Attachment at path '%@' for %@ not found, NOT removing from iCloud backups", buf, 0x16u);
      }
    }
  }
}

- (id)batchOfRecordIDsToDeleteWithLimit:(int64_t)limit error:(id *)error
{
  selfCopy = self;
  IMDAttachmentStore.batchOfRecordIDsToDelete(limit:)(limit);
  v7 = v6;

  sub_22B4D01A0(0, &qword_28141F2A8, 0x277CBC5D0);
  sub_22B71EF0C();
  v8 = sub_22B7DB568();
  v7, v9, v10, v11, v12, v13, v14, v15, v17, v18;

  return v8;
}

- (void)clearTombstonesForRecordIDs:(id)ds
{
  sub_22B4D01A0(0, &qword_28141F2A8, 0x277CBC5D0);
  v4 = sub_22B7DB918();
  selfCopy = self;
  _sSo18IMDAttachmentStoreC12IMDaemonCoreE15clearTombstones12forRecordIDsySaySo10CKRecordIDCG_tF_0(v4);

  v4, v6, v7, v8, v9, v10, v11, v12, v14, v15;
}

@end