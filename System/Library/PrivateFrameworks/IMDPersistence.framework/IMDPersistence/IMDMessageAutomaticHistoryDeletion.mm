@interface IMDMessageAutomaticHistoryDeletion
+ (BOOL)isDirCreationDateAtPath:(id)path olderThanDays:(int64_t)days;
+ (BOOL)isFileAtDirPath:(id)path olderThanDays:(int64_t)days;
+ (BOOL)isFileHeaderDateAtPath:(id)path olderThanDays:(int64_t)days;
+ (BOOL)isOlderThanDays:(int64_t)days fromDate:(id)date;
+ (id)_getDirSubDirURLsForDirPath:(id)path error:(id *)error;
+ (id)_getFilePathNotDSStore:(id)store;
+ (id)_getPathAttributesForPath:(id)path;
+ (id)_getiChatFileMetadataForPath:(id)path;
+ (void)cleanDatabase;
+ (void)cleanUpOrphanAttachments;
+ (void)deleteAttachmentsAfterDays:(id)days;
+ (void)deleteDirectoryAtPath:(id)path;
+ (void)deleteJunkMessagesEligibleForPermanentRemovalOldThanDays:(int64_t)days;
+ (void)deleteMessagesAfterDays:(id)days;
+ (void)deleteMessagesAndAttachmentsAfterDays:(id)days;
+ (void)deleteRecoverableMessagesEligibleForPermanentRemoval;
+ (void)deleteSpolightArchivedFiles;
@end

@implementation IMDMessageAutomaticHistoryDeletion

+ (void)cleanUpOrphanAttachments
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Cleansing orphaned attachments", v7, 2u);
    }
  }

  v3 = objc_alloc_init(IMDOrphanedAttachmentHandler);
  objc_msgSend_cleanseOrphanedAttachments(v3, v4, v5, v6);
}

+ (void)deleteMessagesAndAttachmentsAfterDays:(id)days
{
  objc_msgSend_deleteMessagesAfterDays_(IMDMessageAutomaticHistoryDeletion, a2, days, v3);

  MEMORY[0x1EEE66B58](IMDMessageAutomaticHistoryDeletion, sel_deleteAttachmentsAfterDays_, days, v5);
}

+ (void)deleteMessagesAfterDays:(id)days
{
  v13 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_longLongValue(days, a2, days, v3))
  {
    v10 = 0;
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v12 = objc_msgSend_longValue(days, v5, v6, v7);
        _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "permanently deleting messages not in recently deleted older than %ld days", buf, 0xCu);
      }
    }

    v9 = objc_msgSend_longLongValue(days, v5, v6, v7);
    IMDMessageRecordDeleteMessagesOlderThanDays(v9, &v10);
  }
}

+ (void)deleteAttachmentsAfterDays:(id)days
{
  v12 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_longLongValue(days, a2, days, v3))
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v10 = 134217984;
        v11 = objc_msgSend_longValue(days, v5, v6, v7);
        _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "deleting attachments older than %ld days", &v10, 0xCu);
      }
    }

    v9 = objc_msgSend_longLongValue(days, v5, v6, v7);
    IMDAttachmentRecordDeleteAttachmentsOlderThanDays(v9);
  }
}

+ (void)deleteRecoverableMessagesEligibleForPermanentRemoval
{
  v11 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v9 = 134217984;
      v10 = 30;
      _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "permanently deleting messages in recently deleted older than %lld days", &v9, 0xCu);
    }
  }

  v6 = objc_msgSend_database(IMDDatabase, v2, v3, v4);
  objc_msgSend_deleteRecoverableMessagesOlderThanDays_(v6, v7, 30, v8);
}

+ (void)deleteJunkMessagesEligibleForPermanentRemovalOldThanDays:(int64_t)days
{
  v13 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v11 = 134217984;
      daysCopy = days;
      _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "permanently deleting messages filtered as junk older than %lld days", &v11, 0xCu);
    }
  }

  v8 = objc_msgSend_database(IMDDatabase, v4, v5, v6);
  objc_msgSend_deleteJunkMessagesOlderThanDays_(v8, v9, days, v10);
}

+ (void)cleanDatabase
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "  => Cleaning up orphaned messages", buf, 2u);
    }
  }

  IMDMessageRecordDeleteOrphanedMessages();
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Cleansing database", v4, 2u);
    }
  }

  IMDDatabaseClean();
}

+ (void)deleteSpolightArchivedFiles
{
  v32 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "deleting spotlight archive files", buf, 2u);
    }
  }

  v7 = objc_msgSend_stringByExpandingTildeInPath(@"~/Library/Messages/Archive", v3, v4, v5);
  DirSubDirURLsForDirPath_error = objc_msgSend__getDirSubDirURLsForDirPath_error_(self, v8, v7, 0);
  v11 = DirSubDirURLsForDirPath_error;
  if (DirSubDirURLsForDirPath_error)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(DirSubDirURLsForDirPath_error, v10, &v25, v31, 16);
    if (v15)
    {
      v17 = *v26;
      *&v16 = 138412290;
      v24 = v16;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(v11);
          }

          v19 = objc_msgSend_path(*(*(&v25 + 1) + 8 * i), v12, v13, v14, v24);
          if (IMOSLoggingEnabled())
          {
            v22 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              *buf = v24;
              v30 = v19;
              _os_log_impl(&dword_1B7AD5000, v22, OS_LOG_TYPE_INFO, "main folder path found %@", buf, 0xCu);
            }
          }

          objc_msgSend_deleteDirectoryAtPath_(self, v20, v19, v21);
        }

        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v25, v31, 16);
      }

      while (v15);
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v23, OS_LOG_TYPE_INFO, "could not messages archive director, error:", buf, 2u);
    }
  }
}

+ (void)deleteDirectoryAtPath:(id)path
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = IMOSLoggingEnabled();
  if (path)
  {
    if (v4)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v12 = 138412290;
        pathCopy = path;
        _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "deleteDirectoryAtPath: Deleting directory at path %@", &v12, 0xCu);
      }
    }

    v9 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v5, v6, v7);
    objc_msgSend_removeItemAtPath_error_(v9, v10, path, 0);
  }

  else if (v4)
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_INFO, "deleteDirectoryAtPath:  path is nil", &v12, 2u);
    }
  }
}

+ (BOOL)isFileAtDirPath:(id)path olderThanDays:(int64_t)days
{
  v15 = 0;
  DirSubDirURLsForDirPath_error = objc_msgSend__getDirSubDirURLsForDirPath_error_(self, a2, path, &v15);
  if (!DirSubDirURLsForDirPath_error)
  {
    return v15 == 0;
  }

  FilePathNotDSStore = objc_msgSend__getFilePathNotDSStore_(self, v7, DirSubDirURLsForDirPath_error, v8);
  if (objc_msgSend_isEqualToString_(FilePathNotDSStore, v10, &stru_1F2FA9728, v11))
  {
    return v15 == 0;
  }

  if (objc_msgSend_isDirCreationDateAtPath_olderThanDays_(self, v12, FilePathNotDSStore, days))
  {
    return 1;
  }

  return objc_msgSend_isFileHeaderDateAtPath_olderThanDays_(self, v14, FilePathNotDSStore, days);
}

+ (BOOL)isFileHeaderDateAtPath:(id)path olderThanDays:(int64_t)days
{
  v24 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v22 = 138412290;
      pathCopy = path;
      _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_INFO, "isFileHeaderDateAtPathOlderThanDays: checking file at path %@", &v22, 0xCu);
    }
  }

  v10 = objc_msgSend__getiChatFileMetadataForPath_(self, v7, path, v8);
  v13 = objc_msgSend_objectForKey_(v10, v11, @"EndTime", v12);
  v14 = IMOSLoggingEnabled();
  if (v13)
  {
    if (v14)
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v19 = objc_msgSend_description(v13, v15, v17, v18);
        v22 = 138412290;
        pathCopy = v19;
        _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_INFO, "isFileHeaderDateAtPathOlderThanDays: date modified %@", &v22, 0xCu);
      }
    }

    LOBYTE(v14) = objc_msgSend_isOlderThanDays_fromDate_(self, v15, days, v13);
  }

  else if (v14)
  {
    v20 = OSLogHandleForIMFoundationCategory();
    v14 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);
    if (v14)
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_1B7AD5000, v20, OS_LOG_TYPE_INFO, "isFileHeaderDateAtPathOlderThanDays: dateCreated or dateMod is nil", &v22, 2u);
      LOBYTE(v14) = 0;
    }
  }

  return v14;
}

+ (BOOL)isDirCreationDateAtPath:(id)path olderThanDays:(int64_t)days
{
  v21 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v19 = 138412290;
      pathCopy = path;
      _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_INFO, "isDirCreationDateAtPathOlderThanDays: checking how old dir at %@ is", &v19, 0xCu);
    }
  }

  PathAttributesForPath = objc_msgSend__getPathAttributesForPath_(self, v7, path, v8);
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v19 = 138412290;
      pathCopy = PathAttributesForPath;
      _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, "isDirCreationDateAtPathOlderThanDays:path attributes are %@", &v19, 0xCu);
    }
  }

  if (PathAttributesForPath)
  {
    v14 = objc_msgSend_objectForKey_(PathAttributesForPath, v11, *MEMORY[0x1E696A308], v12);
    LOBYTE(v16) = objc_msgSend_isOlderThanDays_fromDate_(self, v15, days, v14);
  }

  else
  {
    v16 = IMOSLoggingEnabled();
    if (v16)
    {
      v17 = OSLogHandleForIMFoundationCategory();
      v16 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
      if (v16)
      {
        LOWORD(v19) = 0;
        _os_log_impl(&dword_1B7AD5000, v17, OS_LOG_TYPE_INFO, "isDirCreationDateAtPathOlderThanDays: Could not locate directory at path", &v19, 2u);
        LOBYTE(v16) = 0;
      }
    }
  }

  return v16;
}

+ (BOOL)isOlderThanDays:(int64_t)days fromDate:(id)date
{
  result = 0;
  if (days)
  {
    if (date)
    {
      v5 = (-86400 * days);
      objc_msgSend_timeIntervalSinceNow(date, a2, days, date);
      return ceil(v6) < v5;
    }
  }

  return result;
}

+ (id)_getPathAttributesForPath:(id)path
{
  v5 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], a2, path, v3);

  return objc_msgSend_attributesOfItemAtPath_error_(v5, v6, path, 0);
}

+ (id)_getDirSubDirURLsForDirPath:(id)path error:(id *)error
{
  if (!path)
  {
    return 0;
  }

  v5 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], a2, path, error);
  v8 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v6, path, v7);
  v11 = objc_msgSend_arrayWithObject_(MEMORY[0x1E695DEC8], v9, *MEMORY[0x1E695DC30], v10);

  return MEMORY[0x1EEE66B58](v5, sel_contentsOfDirectoryAtURL_includingPropertiesForKeys_options_error_, v8, v11);
}

+ (id)_getiChatFileMetadataForPath:(id)path
{
  v21 = *MEMORY[0x1E69E9840];
  if (!path)
  {
    return 0;
  }

  v4 = MEMORY[0x1E695DEF0];
  v5 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], a2, path, v3);
  v8 = objc_msgSend_dataWithContentsOfURL_(v4, v6, v5, v7);
  v18 = 0;
  v9 = objc_alloc(MEMORY[0x1E696ACD0]);
  v11 = objc_msgSend_initForReadingFromData_error_(v9, v10, v8, &v18);
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v20 = v8;
      _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_INFO, "_getiChatFileMetadataForPath: data %@", buf, 0xCu);
    }
  }

  v13 = objc_opt_class();
  v15 = objc_msgSend_decodeObjectOfClass_forKey_(v11, v14, v13, @"metadata");
  if (v18)
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v20 = v18;
        _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_INFO, "Failed to unarchive iChat file metadata. Error: %@", buf, 0xCu);
      }
    }
  }

  return v15;
}

+ (id)_getFilePathNotDSStore:(id)store
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(store, a2, &v15, v19, 16);
  if (!v4)
  {
    return &stru_1F2FA9728;
  }

  v8 = v4;
  v9 = *v16;
LABEL_3:
  v10 = 0;
  while (1)
  {
    if (*v16 != v9)
    {
      objc_enumerationMutation(store);
    }

    v11 = objc_msgSend_path(*(*(&v15 + 1) + 8 * v10), v5, v6, v7);
    if ((objc_msgSend_containsString_(v11, v12, @".DS_Store", v13) & 1) == 0 && !objc_msgSend_isEqualToString_(v11, v5, @".DS_Store", v7))
    {
      return v11;
    }

    if (v8 == ++v10)
    {
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(store, v5, &v15, v19, 16);
      if (v8)
      {
        goto LABEL_3;
      }

      return &stru_1F2FA9728;
    }
  }
}

@end