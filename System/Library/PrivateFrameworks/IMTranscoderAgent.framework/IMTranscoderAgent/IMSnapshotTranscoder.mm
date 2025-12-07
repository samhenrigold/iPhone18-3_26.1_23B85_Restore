@interface IMSnapshotTranscoder
+ (void)generateSnapshotForMessageGUID:(id)d payloadURL:(id)l balloonBundleID:(id)iD senderContext:(id)context completionBlock:(id)block;
@end

@implementation IMSnapshotTranscoder

+ (void)generateSnapshotForMessageGUID:(id)d payloadURL:(id)l balloonBundleID:(id)iD senderContext:(id)context completionBlock:(id)block
{
  v58 = *MEMORY[0x277D85DE8];
  v12 = IMBalloonExtensionIDWithSuffix();
  if (objc_msgSend_isEqualToString_(iD, v13, v12, v14))
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v54 = 0x3052000000;
    v55 = sub_25482905C;
    v56 = sub_25482906C;
    v57 = 0;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_254829078;
    block[3] = &unk_27978AC08;
    block[4] = context;
    block[5] = l;
    block[6] = &buf;
    dispatch_sync(MEMORY[0x277D85CD0], block);
    if (objc_msgSend_length(*(*(&buf + 1) + 40), v15, v16, v17))
    {
      v18 = IMPluginSnapshotCachesFileURL();
      PathComponent = objc_msgSend_URLByDeletingLastPathComponent(v18, v19, v20, v21);
      v45 = 0;
      if (PathComponent)
      {
        v26 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v22, v23, v24);
        if (objc_msgSend_createDirectoryAtURL_withIntermediateDirectories_attributes_error_(v26, v27, PathComponent, 1, 0, &v45))
        {
          v44 = 0;
          v29 = objc_msgSend_writeToURL_options_error_(*(*(&buf + 1) + 40), v28, v18, 0, &v44);
          if (v29)
          {
            v30 = 0;
          }

          else
          {
            if (IMOSLoggingEnabled())
            {
              v43 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
              {
                *v47 = 138412546;
                dCopy4 = d;
                v49 = 2112;
                v50 = v44;
                _os_log_impl(&dword_254811000, v43, OS_LOG_TYPE_INFO, "Failed to write snapshot for message %@ Error: %@", v47, 0x16u);
              }
            }

            v30 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v42, @"__kIMTranscodeErrorDomain", -10, 0);
          }

          goto LABEL_20;
        }
      }

      if (IMOSLoggingEnabled())
      {
        v35 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          *v47 = 138412802;
          dCopy4 = d;
          v49 = 2112;
          v50 = PathComponent;
          v51 = 2112;
          v52 = v45;
          _os_log_impl(&dword_254811000, v35, OS_LOG_TYPE_INFO, "Failed to create snapshot directory for message %@ with url %@ Error: %@", v47, 0x20u);
        }
      }

      v36 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v34, @"__kIMTranscodeErrorDomain", -12, 0);
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v38 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          v39 = *(*(&buf + 1) + 40);
          *v47 = 138412546;
          dCopy4 = d;
          v49 = 2112;
          v50 = v39;
          _os_log_impl(&dword_254811000, v38, OS_LOG_TYPE_INFO, "Failed to generate snapshot for message %@ %@", v47, 0x16u);
        }
      }

      v36 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v37, @"__kIMTranscodeErrorDomain", -9, 0);
    }

    v30 = v36;
    v29 = 0;
LABEL_20:
    if (IMOSLoggingEnabled())
    {
      v40 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        v41 = *(*(&buf + 1) + 40);
        *v47 = 138412546;
        dCopy4 = d;
        v49 = 2112;
        v50 = v41;
        _os_log_impl(&dword_254811000, v40, OS_LOG_TYPE_INFO, "Generated snapshot for message %@ %@", v47, 0x16u);
      }
    }

    (*(block + 2))(block, v29, v30);
    _Block_object_dispose(&buf, 8);
    return;
  }

  if (IMOSLoggingEnabled())
  {
    v32 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = iD;
      _os_log_impl(&dword_254811000, v32, OS_LOG_TYPE_INFO, "Transcoder snapshot request for an unsupported plugin bundle: %@", &buf, 0xCu);
    }
  }

  v33 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v31, @"__kIMTranscodeErrorDomain", -1, 0);
  (*(block + 2))(block, 0, v33);
}

@end