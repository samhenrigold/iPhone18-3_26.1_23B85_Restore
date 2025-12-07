@interface IMTransferServicesController
+ (id)sharedInstance;
- (void)_receiveFileTransfer:(id)transfer topic:(id)topic path:(id)path requestURLString:(id)string ownerID:(id)d sourceAppID:(id)iD signature:(id)signature decryptionKey:(id)self0 retries:(int)self1 fileSize:(unint64_t)value progressBlock:(id)self3 completionBlock:(id)self4;
- (void)_sendFilePath:(id)path topic:(id)topic userInfo:(id)info transferID:(id)d sourceAppID:(id)iD encryptFile:(BOOL)file retries:(int)retries progressBlock:(id)self0 completionBlock:(id)self1;
- (void)cancelSendTransferID:(id)d;
- (void)deleteAllPersonalNicknamesWithCompletion:(id)completion;
- (void)getNicknameWithRecordID:(id)d decryptionKey:(id)key wallpaperDataTag:(id)tag wallpaperLowResDataTag:(id)dataTag wallpaperMetadataTag:(id)metadataTag avatarRecipeDataTag:(id)recipeDataTag isKnownSender:(BOOL)sender shouldDecodeImageFields:(BOOL)self0 completionBlock:(id)self1;
- (void)preWarmMMCSForOwnerID:(id)d;
- (void)setPersonalNickname:(id)nickname oldRecordID:(id)d completionBlock:(id)block;
- (void)setPersonalNickname:(id)nickname oldRecordID:(id)d completionBlockWithWallpaperAndRecipeDataTags:(id)tags;
- (void)setPersonalNickname:(id)nickname oldRecordID:(id)d completionBlockWithWallpaperTags:(id)tags;
- (void)updateUltraConstrainedAttachments:(BOOL)attachments;
@end

@implementation IMTransferServicesController

+ (id)sharedInstance
{
  if (qword_28141B778 != -1)
  {
    sub_25487ECBC();
  }

  return qword_28141B768;
}

- (void)_sendFilePath:(id)path topic:(id)topic userInfo:(id)info transferID:(id)d sourceAppID:(id)iD encryptFile:(BOOL)file retries:(int)retries progressBlock:(id)self0 completionBlock:(id)self1
{
  fileCopy = file;
  v106 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      *&buf[4] = path;
      *&buf[12] = 2112;
      *&buf[14] = d;
      *&buf[22] = 2112;
      iDCopy = iD;
      _os_log_impl(&dword_254879000, v18, OS_LOG_TYPE_INFO, "TransferServices received request to transfer %@  ID: %@ sourceAppID: %@", buf, 0x20u);
    }
  }

  v97 = 0;
  v19 = MEMORY[0x277CBEBC0];
  v20 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v15, v16, v17);
  v24 = objc_msgSend_pathExtension(path, v21, v22, v23);
  v27 = objc_msgSend__randomTemporaryPathWithSuffix_(v20, v25, v24, v26);
  v30 = objc_msgSend_fileURLWithPath_(v19, v28, v27, v29);
  if (IMOSLoggingEnabled())
  {
    v34 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *&buf[4] = path;
      *&buf[12] = 2112;
      *&buf[14] = v30;
      _os_log_impl(&dword_254879000, v34, OS_LOG_TYPE_INFO, "Attempting to clone current transfer URL %@ to new URL %@", buf, 0x16u);
    }
  }

  v35 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v31, v32, v33);
  v38 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v36, path, v37);
  LOBYTE(v35) = objc_msgSend_copyItemAtURL_toURL_error_(v35, v39, v38, v30, &v97);
  v40 = IMOSLoggingEnabled();
  if (v35)
  {
    if (v40)
    {
      v42 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254879000, v42, OS_LOG_TYPE_INFO, "Connecting to transfer agent", buf, 2u);
      }
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3052000000;
    iDCopy = sub_25487AE30;
    v104 = sub_25487AE40;
    im_primary_queue();
    v105 = IMXPCCreateConnectionForServiceWithQueue();
    if (*(*&buf[8] + 40))
    {
      v92 = MEMORY[0x277D85DD0];
      v93 = 3221225472;
      v94 = sub_25487AE4C;
      v95 = &unk_27978E308;
      v96 = buf;
      v86 = MEMORY[0x277D85DD0];
      v87 = 3221225472;
      v88 = sub_25487AF08;
      v89 = &unk_27978E330;
      blockCopy = block;
      v91 = buf;
      IMXPCConfigureConnection();
      v43 = xpc_dictionary_create(0, 0, 0);
      v47 = objc_msgSend_path(v30, v44, v45, v46);
      v51 = objc_msgSend_UTF8String(v47, v48, v49, v50);
      v79 = objc_msgSend_UTF8String(d, v52, v53, v54);
      IMInsertStringsToXPCDictionary();
      v78 = objc_msgSend_UTF8String(topic, v55, v56, v57, v51, "transferID", v79, 0);
      IMInsertStringsToXPCDictionary();
      objc_msgSend_UTF8String(iD, v58, v59, v60, v78, 0);
      IMInsertStringsToXPCDictionary();
      IMInsertBoolsToXPCDictionary();
      IMInsertDictionariesToXPCDictionary();
      v64 = objc_msgSend_path(v30, v61, v62, v63, info, 0, fileCopy, 0);
      objc_msgSend_UTF8String(v64, v65, v66, v67);
      v68 = sandbox_extension_issue_file();
      if (v68)
      {
        IMInsertStringsToXPCDictionary();
        free(v68);
      }

      else if (IMOSLoggingEnabled())
      {
        v74 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
        {
          v75 = *__error();
          *v98 = 138412546;
          v99 = v30;
          v100 = 1024;
          v101 = v75;
          _os_log_impl(&dword_254879000, v74, OS_LOG_TYPE_INFO, "Unable to grant access to path (sandbox extension is NULL) (file path: %@) errno %d", v98, 0x12u);
        }
      }

      v76 = *(*&buf[8] + 40);
      v77 = im_primary_queue();
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = sub_25487B0A8;
      handler[3] = &unk_27978E358;
      retriesCopy = retries;
      handler[4] = self;
      handler[5] = path;
      handler[6] = topic;
      handler[7] = info;
      handler[8] = d;
      handler[9] = iD;
      v85 = fileCopy;
      handler[10] = v30;
      handler[11] = block;
      handler[12] = completionBlock;
      handler[13] = buf;
      xpc_connection_send_message_with_reply(v76, v43, v77, handler);
      xpc_release(v43);
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v72 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
        {
          *v98 = 0;
          _os_log_impl(&dword_254879000, v72, OS_LOG_TYPE_INFO, "Unable to connect to transfer service", v98, 2u);
        }
      }

      if (completionBlock)
      {
        v73 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v71, @"IMTransferServicesErrorDomain", -3, 0);
        (*(completionBlock + 2))(completionBlock, path, 0, v73, 0, 0, 0, 0, 0, 0);
      }
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (v40)
    {
      v69 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v97;
        _os_log_impl(&dword_254879000, v69, OS_LOG_TYPE_INFO, "Cloning failed with error %@, giving up since we're not guaranteed to get a file", buf, 0xCu);
      }
    }

    if (completionBlock)
    {
      v70 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v41, @"IMTransferServicesErrorDomain", -2, 0);
      (*(completionBlock + 2))(completionBlock, path, 0, v70, 0, 0, 0, 0, 0, 0);
    }
  }
}

- (void)_receiveFileTransfer:(id)transfer topic:(id)topic path:(id)path requestURLString:(id)string ownerID:(id)d sourceAppID:(id)iD signature:(id)signature decryptionKey:(id)self0 retries:(int)self1 fileSize:(unint64_t)value progressBlock:(id)self3 completionBlock:(id)self4
{
  v85 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      *&buf[4] = path;
      *&buf[12] = 2112;
      *&buf[14] = transfer;
      *&buf[22] = 2112;
      iDCopy = iD;
      _os_log_impl(&dword_254879000, v18, OS_LOG_TYPE_INFO, "TransferServices received request to receive transfer %@  ID: %@ sourceAppID: %@", buf, 0x20u);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3052000000;
  iDCopy = sub_25487AE30;
  v83 = sub_25487AE40;
  im_primary_queue();
  v84 = IMXPCCreateConnectionForServiceWithQueue();
  if (*(*&buf[8] + 40))
  {
    v76[7] = MEMORY[0x277D85DD0];
    v76[8] = 3221225472;
    v76[9] = sub_25487BD84;
    v76[10] = &unk_27978E308;
    v76[11] = buf;
    v76[1] = MEMORY[0x277D85DD0];
    v76[2] = 3221225472;
    v76[3] = sub_25487BE40;
    v76[4] = &unk_27978E330;
    v76[5] = block;
    v76[6] = buf;
    IMXPCConfigureConnection();
    v19 = xpc_dictionary_create(0, 0, 0);
    v68 = objc_msgSend_UTF8String(topic, v20, v21, v22);
    IMInsertStringsToXPCDictionary();
    objc_msgSend_UTF8String(path, v23, v24, v25, v68, 0);
    objc_msgSend_UTF8String(transfer, v26, v27, v28);
    v32 = objc_msgSend_UTF8String(d, v29, v30, v31);
    v70 = objc_msgSend_UTF8String(string, v33, v34, v35);
    IMInsertStringsToXPCDictionary();
    IMInsertDatasToXPCDictionary();
    IMInsertBoolsToXPCDictionary();
    v69 = objc_msgSend_UTF8String(iD, v36, v37, v38, 0, 0, key, 0, v32, "urlString", v70, 0);
    IMInsertStringsToXPCDictionary();
    xpc_dictionary_set_uint64(v19, "file-size", value);
    if (path)
    {
      v41 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v39, path, v40, v69, 0);
      PathComponent = objc_msgSend_URLByDeletingLastPathComponent(v41, v42, v43, v44);
      v76[0] = 0;
      v49 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v46, v47, v48);
      if ((objc_msgSend_createDirectoryAtURL_withIntermediateDirectories_attributes_error_(v49, v50, PathComponent, 1, 0, v76) & 1) == 0)
      {
        if (IMOSLoggingEnabled())
        {
          v54 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
          {
            *v77 = 138412546;
            v78 = PathComponent;
            v79 = 2112;
            v80 = v76[0];
            _os_log_impl(&dword_254879000, v54, OS_LOG_TYPE_INFO, "Unable to create containing directory (%@) with error: %@", v77, 0x16u);
          }
        }
      }

      v55 = objc_msgSend_path(PathComponent, v51, v52, v53);
      objc_msgSend_UTF8String(v55, v56, v57, v58);
      v59 = sandbox_extension_issue_file();
      if (v59)
      {
        IMInsertStringsToXPCDictionary();
        free(v59);
      }

      else if (IMOSLoggingEnabled())
      {
        v64 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
        {
          v65 = *__error();
          *v77 = 138412546;
          v78 = PathComponent;
          v79 = 1024;
          LODWORD(v80) = v65;
          _os_log_impl(&dword_254879000, v64, OS_LOG_TYPE_INFO, "Unable to grant access to path (sandbox extension is NULL) (file path: %@) errno %d", v77, 0x12u);
        }
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v63 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
        {
          *v77 = 0;
          _os_log_impl(&dword_254879000, v63, OS_LOG_TYPE_INFO, "TransferServices received request to receive transfer but the receivePath was NULL", v77, 2u);
        }
      }

      IMReportAutoBugCapture();
    }

    v66 = *(*&buf[8] + 40);
    v67 = im_primary_queue();
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = sub_25487BFE0;
    handler[3] = &unk_27978E380;
    retriesCopy = retries;
    handler[4] = self;
    handler[5] = transfer;
    handler[6] = topic;
    handler[7] = path;
    handler[8] = string;
    handler[9] = d;
    handler[10] = iD;
    handler[11] = signature;
    handler[12] = key;
    handler[13] = block;
    handler[14] = completionBlock;
    handler[15] = buf;
    handler[16] = value;
    xpc_connection_send_message_with_reply(v66, v19, v67, handler);
    xpc_release(v19);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v61 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
      {
        *v77 = 0;
        _os_log_impl(&dword_254879000, v61, OS_LOG_TYPE_INFO, "Unable to connect to transfer service", v77, 2u);
      }
    }

    if (completionBlock)
    {
      v62 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v60, @"IMTransferServicesErrorDomain", -3, 0);
      (*(completionBlock + 2))(completionBlock, transfer, path, 0, v62, 0);
    }
  }

  _Block_object_dispose(buf, 8);
}

- (void)updateUltraConstrainedAttachments:(BOOL)attachments
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_25487AE30;
  v10 = sub_25487AE40;
  im_primary_queue();
  v11 = IMXPCCreateConnectionForServiceWithQueue();
  if (v7[5])
  {
    IMXPCConfigureConnection();
    v4 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v4, "updateUCA", 1);
    xpc_dictionary_set_BOOL(v4, "allowUCA", attachments);
    xpc_connection_send_message(v7[5], v4);
    xpc_release(v4);
    v5 = v7[5];
    if (v5)
    {
      xpc_connection_cancel(v5);
      xpc_release(v7[5]);
      v7[5] = 0;
    }
  }

  _Block_object_dispose(&v6, 8);
}

- (void)cancelSendTransferID:(id)d
{
  v22 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = d;
      _os_log_impl(&dword_254879000, v4, OS_LOG_TYPE_INFO, "TransferServices received request to cancel send: %@", &buf, 0xCu);
    }
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v18 = 0x3052000000;
  v19 = sub_25487AE30;
  v20 = sub_25487AE40;
  im_primary_queue();
  v21 = IMXPCCreateConnectionForServiceWithQueue();
  if (*(*(&buf + 1) + 40))
  {
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = sub_25487CB60;
    v15 = &unk_27978E308;
    p_buf = &buf;
    IMXPCConfigureConnection();
    v5 = xpc_dictionary_create(0, 0, 0);
    IMInsertBoolsToXPCDictionary();
    objc_msgSend_UTF8String(d, v6, v7, v8, 1, 0);
    IMInsertStringsToXPCDictionary();
    xpc_connection_send_message(*(*(&buf + 1) + 40), v5);
    xpc_release(v5);
    v9 = *(*(&buf + 1) + 40);
    if (v9)
    {
      xpc_connection_cancel(v9);
      xpc_release(*(*(&buf + 1) + 40));
      *(*(&buf + 1) + 40) = 0;
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_254879000, v10, OS_LOG_TYPE_INFO, "Unable to connect to transfer service", v11, 2u);
    }
  }

  _Block_object_dispose(&buf, 8);
}

- (void)preWarmMMCSForOwnerID:(id)d
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_254879000, v3, OS_LOG_TYPE_INFO, "TransferServices received request to prewarm MMCS connection", buf, 2u);
    }
  }

  *buf = 0;
  v20 = buf;
  v21 = 0x3052000000;
  v22 = sub_25487AE30;
  v23 = sub_25487AE40;
  im_primary_queue();
  v24 = IMXPCCreateConnectionForServiceWithQueue();
  if (*(v20 + 5))
  {
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = sub_25487CEC4;
    v17 = &unk_27978E308;
    v18 = buf;
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = sub_25487CF14;
    v12 = &unk_27978E3C8;
    v13 = buf;
    IMXPCConfigureConnection();
    v4 = xpc_dictionary_create(0, 0, 0);
    IMInsertBoolsToXPCDictionary();
    IMInsertStringsToXPCDictionary();
    xpc_connection_send_message(*(v20 + 5), v4);
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&dword_254879000, v5, OS_LOG_TYPE_INFO, "send prewarm message to transfer agent", v8, 2u);
      }
    }

    xpc_release(v4);
    v6 = *(v20 + 5);
    if (v6)
    {
      xpc_connection_cancel(v6);
      xpc_release(*(v20 + 5));
      *(v20 + 5) = 0;
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_254879000, v7, OS_LOG_TYPE_INFO, "Unable to connect to transfer service", v8, 2u);
    }
  }

  _Block_object_dispose(buf, 8);
}

- (void)getNicknameWithRecordID:(id)d decryptionKey:(id)key wallpaperDataTag:(id)tag wallpaperLowResDataTag:(id)dataTag wallpaperMetadataTag:(id)metadataTag avatarRecipeDataTag:(id)recipeDataTag isKnownSender:(BOOL)sender shouldDecodeImageFields:(BOOL)self0 completionBlock:(id)self1
{
  v40 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = d;
      _os_log_impl(&dword_254879000, v12, OS_LOG_TYPE_INFO, "TransferServices received request to get nickname with record ID %@", &buf, 0xCu);
    }
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v36 = 0x3052000000;
  v37 = sub_25487AE30;
  v38 = sub_25487AE40;
  im_primary_queue();
  v39 = IMXPCCreateConnectionForServiceWithQueue();
  if (*(*(&buf + 1) + 40))
  {
    v30 = MEMORY[0x277D85DD0];
    v31 = 3221225472;
    v32 = sub_25487D560;
    v33 = &unk_27978E308;
    p_buf = &buf;
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = sub_25487D5B0;
    v28 = &unk_27978E3C8;
    v29 = &buf;
    IMXPCConfigureConnection();
    v13 = xpc_dictionary_create(0, 0, 0);
    IMInsertBoolsToXPCDictionary();
    objc_msgSend_UTF8String(d, v14, v15, v16, 1, 0);
    IMInsertStringsToXPCDictionary();
    IMInsertDatasToXPCDictionary();
    IMInsertDatasToXPCDictionary();
    IMInsertDatasToXPCDictionary();
    IMInsertDatasToXPCDictionary();
    IMInsertDatasToXPCDictionary();
    IMInsertBoolsToXPCDictionary();
    IMInsertBoolsToXPCDictionary();
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *v24 = 0;
        _os_log_impl(&dword_254879000, v17, OS_LOG_TYPE_INFO, "Sending get nickname message to transfer agent", v24, 2u);
      }
    }

    v18 = *(*(&buf + 1) + 40);
    v19 = im_primary_queue();
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = sub_25487D6DC;
    handler[3] = &unk_27978E3F0;
    handler[4] = block;
    handler[5] = &buf;
    xpc_connection_send_message_with_reply(v18, v13, v19, handler);
    xpc_release(v13);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *v24 = 0;
        _os_log_impl(&dword_254879000, v21, OS_LOG_TYPE_INFO, "Unable to connect to transfer service", v24, 2u);
      }
    }

    v22 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v20, @"IMTransferServicesErrorDomain", -3, 0);
    if (block)
    {
      (*(block + 2))(block, 0, v22);
    }
  }

  _Block_object_dispose(&buf, 8);
}

- (void)setPersonalNickname:(id)nickname oldRecordID:(id)d completionBlock:(id)block
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_25487DA6C;
  v5[3] = &unk_27978E418;
  v5[4] = block;
  objc_msgSend_setPersonalNickname_oldRecordID_completionBlockWithWallpaperTags_(self, a2, nickname, d, v5);
}

- (void)setPersonalNickname:(id)nickname oldRecordID:(id)d completionBlockWithWallpaperTags:(id)tags
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_25487DAEC;
  v5[3] = &unk_27978E440;
  v5[4] = tags;
  objc_msgSend_setPersonalNickname_oldRecordID_completionBlockWithWallpaperAndRecipeDataTags_(self, a2, nickname, d, v5);
}

- (void)setPersonalNickname:(id)nickname oldRecordID:(id)d completionBlockWithWallpaperAndRecipeDataTags:(id)tags
{
  v32 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *&buf[4] = nickname;
      *&buf[12] = 2112;
      *&buf[14] = d;
      _os_log_impl(&dword_254879000, v8, OS_LOG_TYPE_INFO, "TransferServices received request to upload new personal nickname: %@ and delete record with ID: %@", buf, 0x16u);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3052000000;
  v29 = sub_25487AE30;
  v30 = sub_25487AE40;
  im_primary_queue();
  v31 = IMXPCCreateConnectionForServiceWithQueue();
  if (*(*&buf[8] + 40))
  {
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = sub_25487DF20;
    v26 = &unk_27978E308;
    v27 = buf;
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = sub_25487DF70;
    v21 = &unk_27978E3C8;
    v22 = buf;
    IMXPCConfigureConnection();
    v9 = xpc_dictionary_create(0, 0, 0);
    IMInsertBoolsToXPCDictionary();
    IMInsertKeyedCodableObjectsToXPCDictionary();
    IMInsertNSStringsToXPCDictionary();
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *v17 = 0;
        _os_log_impl(&dword_254879000, v10, OS_LOG_TYPE_INFO, "Sending upload nickname message to transfer agent", v17, 2u);
      }
    }

    v11 = *(*&buf[8] + 40);
    v12 = im_primary_queue();
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = sub_25487E09C;
    handler[3] = &unk_27978E3F0;
    handler[4] = tags;
    handler[5] = buf;
    xpc_connection_send_message_with_reply(v11, v9, v12, handler);
    xpc_release(v9);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *v17 = 0;
        _os_log_impl(&dword_254879000, v14, OS_LOG_TYPE_INFO, "Unable to connect to transfer service", v17, 2u);
      }
    }

    v15 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v13, @"IMTransferServicesErrorDomain", -3, 0);
    if (tags)
    {
      (*(tags + 2))(tags, 0, 0, 0, 0, 0, 0, 0, 0, v15);
    }
  }

  _Block_object_dispose(buf, 8);
}

- (void)deleteAllPersonalNicknamesWithCompletion:(id)completion
{
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_254879000, v4, OS_LOG_TYPE_INFO, "TransferServices received requestd to delete all nicknames", buf, 2u);
    }
  }

  *buf = 0;
  v25 = buf;
  v26 = 0x3052000000;
  v27 = sub_25487AE30;
  v28 = sub_25487AE40;
  im_primary_queue();
  v29 = IMXPCCreateConnectionForServiceWithQueue();
  if (*(v25 + 5))
  {
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = sub_25487E824;
    v22 = &unk_27978E308;
    v23 = buf;
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = sub_25487E874;
    v17 = &unk_27978E3C8;
    v18 = buf;
    IMXPCConfigureConnection();
    v5 = xpc_dictionary_create(0, 0, 0);
    IMInsertBoolsToXPCDictionary();
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        _os_log_impl(&dword_254879000, v6, OS_LOG_TYPE_INFO, "Sending delete all nicknames message to transfer agent", v13, 2u);
      }
    }

    v7 = *(v25 + 5);
    v8 = im_primary_queue();
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = sub_25487E9A0;
    handler[3] = &unk_27978E3F0;
    handler[4] = completion;
    handler[5] = buf;
    xpc_connection_send_message_with_reply(v7, v5, v8, handler);
    xpc_release(v5);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        _os_log_impl(&dword_254879000, v10, OS_LOG_TYPE_INFO, "Unable to connect to transfer service", v13, 2u);
      }
    }

    v11 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v9, @"IMTransferServicesErrorDomain", -3, 0);
    if (completion)
    {
      (*(completion + 2))(completion, 0, v11);
    }
  }

  _Block_object_dispose(buf, 8);
}

@end