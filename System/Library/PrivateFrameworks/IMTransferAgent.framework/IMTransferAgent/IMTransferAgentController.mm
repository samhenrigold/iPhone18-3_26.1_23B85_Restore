@interface IMTransferAgentController
+ (id)sharedInstance;
- (BOOL)_isAllowlistedURL:(id)l;
- (BOOL)_shouldRetryUploadGivenMMCSError:(id)error retryAttemptCount:(unint64_t)count;
- (void)_receiveFileTransfer:(id)transfer topic:(id)topic path:(id)path requestURLString:(id)string ownerID:(id)d signature:(id)signature allowReauthorize:(BOOL)reauthorize fileSize:(unint64_t)self0 sourceAppID:(id)self1 progressBlock:(id)self2 completionBlock:(id)self3;
- (void)_sendFilePath:(id)path topic:(id)topic transferID:(id)d sourceAppID:(id)iD retryAttemptCount:(unint64_t)count userInfo:(id)info progressBlock:(id)block completionBlock:(id)self0;
- (void)cancelSendTransferID:(id)d;
- (void)dealloc;
- (void)ensureSafeAttachment:(id)attachment topic:(id)topic withCompletionBlock:(id)block;
- (void)receiveFileTransfer:(id)transfer topic:(id)topic path:(id)path requestURLString:(id)string ownerID:(id)d signature:(id)signature fileSize:(unint64_t)size decryptionKey:(id)self0 sourceAppID:(id)self1 progressBlock:(id)self2 completionBlock:(id)self3;
- (void)sendFilePath:(id)path encrypt:(BOOL)encrypt topic:(id)topic transferID:(id)d sourceAppID:(id)iD userInfo:(id)info progressBlock:(id)block completionBlock:(id)self0;
- (void)warm;
@end

@implementation IMTransferAgentController

+ (id)sharedInstance
{
  if (qword_28112D9F0 != -1)
  {
    sub_2548680A0();
  }

  v3 = qword_28112D9C8;

  return v3;
}

- (void)dealloc
{
  [(IMTransferAgentController *)self setController:0];
  v3.receiver = self;
  v3.super_class = IMTransferAgentController;
  [(IMTransferAgentController *)&v3 dealloc];
}

- (BOOL)_shouldRetryUploadGivenMMCSError:(id)error retryAttemptCount:(unint64_t)count
{
  errorCopy = error;
  im_assert_primary_queue();
  if (!errorCopy)
  {
    goto LABEL_10;
  }

  domain = [errorCopy domain];
  if (([domain isEqualToString:*MEMORY[0x277D25460]] & 1) == 0)
  {

    goto LABEL_10;
  }

  code = [errorCopy code];

  if (code != 4)
  {
LABEL_10:
    v9 = 1;
    goto LABEL_11;
  }

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_254850000, v8, OS_LOG_TYPE_INFO, "We will not try to re-upload as the transfer was explicitly cancelled", v12, 2u);
    }
  }

  v9 = 0;
LABEL_11:
  if (count < 3)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_sendFilePath:(id)path topic:(id)topic transferID:(id)d sourceAppID:(id)iD retryAttemptCount:(unint64_t)count userInfo:(id)info progressBlock:(id)block completionBlock:(id)self0
{
  v100 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  topicCopy = topic;
  dCopy = d;
  iDCopy = iD;
  infoCopy = info;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  im_assert_primary_queue();
  if (!self->_controller)
  {
    v20 = objc_alloc(MEMORY[0x277D25680]);
    v21 = im_primary_queue();
    v22 = [v20 initWithQueue:v21];
    controller = self->_controller;
    self->_controller = v22;
  }

  if (!self->_networkMonitor)
  {
    v24 = [MEMORY[0x277D1AAC8] createNetworkMonitorWithRemoteHost:0 delegate:0 allowsUltraConstrainedNetwork:1];
    networkMonitor = self->_networkMonitor;
    self->_networkMonitor = v24;
  }

  v26 = objc_alloc_init(MEMORY[0x277D25690]);
  val = IMSingleObjectArray();
  stringGUID = [MEMORY[0x277CCACA8] stringGUID];
  [v26 setGuid:stringGUID];

  stringByResolvingAndStandardizingPath = [pathCopy stringByResolvingAndStandardizingPath];
  [v26 setLocalPath:stringByResolvingAndStandardizingPath];

  [v26 setEncryptionBehavior:1];
  v92[0] = MEMORY[0x277D85DD0];
  v92[1] = 3221225472;
  v92[2] = sub_254854734;
  v92[3] = &unk_27978CB88;
  v29 = dCopy;
  v93 = v29;
  v30 = blockCopy;
  v94 = v30;
  [v26 setProgressUpdateBlock:v92];
  v31 = IMOptOutOfOptimizedMadridAttachmentUploadPath();
  if (v31 && IMOSLoggingEnabled())
  {
    v32 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      guid = [v26 guid];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = guid;
      _os_log_impl(&dword_254850000, v32, OS_LOG_TYPE_INFO, "Opting upload with GUID %@ out of optimized AuthPut flow.", &buf, 0xCu);
    }
  }

  objc_initWeak(&location, val);
  v82[0] = MEMORY[0x277D85DD0];
  v82[1] = 3221225472;
  v82[2] = sub_254854864;
  v82[3] = &unk_27978CBD8;
  objc_copyWeak(v90, &location);
  v82[4] = self;
  v90[1] = count;
  v66 = v29;
  v83 = v66;
  v59 = pathCopy;
  v84 = v59;
  v34 = topicCopy;
  v85 = v34;
  v64 = iDCopy;
  v86 = v64;
  v35 = infoCopy;
  v87 = v35;
  v36 = v30;
  v88 = v36;
  v37 = completionBlockCopy;
  v89 = v37;
  [v26 setCompletionBlock:v82];
  v62 = v37;
  v58 = v36;
  v38 = MEMORY[0x277CCACA8];
  guid2 = [v26 guid];
  v40 = [v38 stringWithFormat:@"Upload-transfer-%@-mmcs-registration", guid2];

  v41 = MEMORY[0x277CCACA8];
  guid3 = [v26 guid];
  v43 = [v41 stringWithFormat:@"Upload-transfer-%@-preauth", guid3];

  v44 = MEMORY[0x277CCACA8];
  guid4 = [v26 guid];
  v46 = [v44 stringWithFormat:@"Upload-transfer-%@-mmcs-upload", guid4];

  *&buf = 0;
  *(&buf + 1) = &buf;
  v96 = 0x3032000000;
  v97 = sub_254854F24;
  v98 = sub_254854F34;
  v99 = objc_alloc_init(MEMORY[0x277D192C0]);
  [*(*(&buf + 1) + 40) startTimingForKey:v40];
  v47 = v31 ^ 1u;
  v48 = self->_controller;
  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = sub_254854F3C;
  v68[3] = &unk_27978CC50;
  v49 = v26;
  v69 = v49;
  p_buf = &buf;
  v50 = v40;
  v70 = v50;
  v81 = v47;
  v57 = v34;
  v71 = v57;
  selfCopy = self;
  v51 = v35;
  v73 = v51;
  v52 = v43;
  v74 = v52;
  v60 = v59;
  v75 = v60;
  v53 = v46;
  v76 = v53;
  v54 = val;
  v77 = v54;
  v55 = v66;
  v78 = v55;
  v56 = v64;
  v79 = v56;
  [(MMCSController *)v48 registerFilesForUpload:v54 withPreauthentication:v47 completionBlock:v68];

  _Block_object_dispose(&buf, 8);
  objc_destroyWeak(v90);
  objc_destroyWeak(&location);
}

- (void)warm
{
  im_assert_primary_queue();
  if (!self->_controller)
  {
    v3 = objc_alloc(MEMORY[0x277D25680]);
    v4 = im_primary_queue();
    v5 = [v3 initWithQueue:v4];
    controller = self->_controller;
    self->_controller = v5;
  }

  if (!self->_networkMonitor)
  {
    v7 = [MEMORY[0x277D1AAC8] createNetworkMonitorWithRemoteHost:0 delegate:0 allowsUltraConstrainedNetwork:1];
    networkMonitor = self->_networkMonitor;
    self->_networkMonitor = v7;
  }

  [(IMTransferAgentController *)self _isAllowlistedURL:0];
  v9 = MEMORY[0x277D25680];

  MEMORY[0x2821F9670](v9, sel_preMMCSWarm);
}

- (void)sendFilePath:(id)path encrypt:(BOOL)encrypt topic:(id)topic transferID:(id)d sourceAppID:(id)iD userInfo:(id)info progressBlock:(id)block completionBlock:(id)self0
{
  encryptCopy = encrypt;
  v57 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  topicCopy = topic;
  dCopy = d;
  iDCopy = iD;
  infoCopy = info;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  im_assert_primary_queue();
  if (pathCopy)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v21 = [defaultManager attributesOfItemAtPath:pathCopy error:0];

    v22 = [v21 objectForKeyedSubscript:*MEMORY[0x277CCA1C0]];
    unsignedIntegerValue = [v22 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  v24 = +[IMTransferAgentIDSInterface sharedInstance];
  localCompanionDevice = [v24 localCompanionDevice];

  if (IMOSLoggingEnabled())
  {
    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v54 = localCompanionDevice;
      v55 = 2048;
      v56 = unsignedIntegerValue;
      _os_log_impl(&dword_254850000, v26, OS_LOG_TYPE_INFO, "local device: %@ file size: %lu", buf, 0x16u);
    }
  }

  if ([topicCopy isEqualToString:@"com.apple.private.alloy.lightrose"])
  {
    v27 = 0x80000000;
  }

  else
  {
    v27 = 104857600;
  }

  if (unsignedIntegerValue <= v27)
  {
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = sub_254857D2C;
    v42[3] = &unk_27978CCA0;
    v49 = completionBlockCopy;
    v52 = encryptCopy;
    v43 = localCompanionDevice;
    v51 = unsignedIntegerValue;
    v44 = topicCopy;
    v45 = dCopy;
    v46 = iDCopy;
    selfCopy = self;
    v48 = infoCopy;
    v50 = blockCopy;
    v30 = MEMORY[0x259C1C440](v42);
    if (IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254850000, v31, OS_LOG_TYPE_INFO, " => File passes file size restrictions", buf, 2u);
      }
    }

    v32 = IMOSLoggingEnabled();
    if (encryptCopy)
    {
      if (v32)
      {
        v33 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_254850000, v33, OS_LOG_TYPE_INFO, "Encrypting file", buf, 2u);
        }
      }

      v34 = +[IMTransferEncryptionController sharedInstance];
      v35 = [MEMORY[0x277CBEBC0] fileURLWithPath:pathCopy];
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = sub_2548580E4;
      v40[3] = &unk_27978CCC8;
      v41 = v30;
      [v34 encryptURL:v35 completionBlock:v40];
    }

    else
    {
      if (v32)
      {
        v36 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_254850000, v36, OS_LOG_TYPE_INFO, "Not encrypting file", buf, 2u);
        }
      }

      (v30)[2](v30, pathCopy, 0);
    }

    v29 = v49;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v54 = v27;
        _os_log_impl(&dword_254850000, v28, OS_LOG_TYPE_INFO, "  ** File is too large - failing, over max size of: %lu", buf, 0xCu);
      }
    }

    v29 = [MEMORY[0x277CCA9B8] errorWithDomain:@"IMTransferServicesErrorDomain" code:-6 userInfo:0];
    (*(completionBlockCopy + 2))(completionBlockCopy, 0, pathCopy, unsignedIntegerValue, 0, 0, 0, 0, v29, 0, dCopy, iDCopy, infoCopy);
  }
}

- (void)cancelSendTransferID:(id)d
{
  dCopy = d;
  im_assert_primary_queue();
  [(MMCSController *)self->_controller cancelPutRequestID:dCopy];
}

- (BOOL)_isAllowlistedURL:(id)l
{
  v27 = *MEMORY[0x277D85DE8];
  lCopy = l;
  im_assert_primary_queue();
  v5 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v6 = [v5 objectForKey:@"mmcs-whitelist"];

  if ([v6 count])
  {
    _defaultMMCSAllowlist = v6;
  }

  else
  {
    _defaultMMCSAllowlist = [(IMTransferAgentController *)self _defaultMMCSAllowlist];
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254850000, v8, OS_LOG_TYPE_INFO, "Server bag does not have allowlisted urls. Resorting to defaults", buf, 2u);
      }
    }
  }

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v24 = lCopy;
      v25 = 2112;
      v26 = _defaultMMCSAllowlist;
      _os_log_impl(&dword_254850000, v9, OS_LOG_TYPE_INFO, "Checking URL %@ with domains %@", buf, 0x16u);
    }
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = _defaultMMCSAllowlist;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = *v19;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v10);
        }

        if ([lCopy __im_conformsToDomain:*(*(&v18 + 1) + 8 * i) domainExtension:{@"com", v18}])
        {
          if (IMOSLoggingEnabled())
          {
            v16 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v24 = lCopy;
              _os_log_impl(&dword_254850000, v16, OS_LOG_TYPE_INFO, "URL is allowlisted %@", buf, 0xCu);
            }
          }

          v15 = 1;
          goto LABEL_29;
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v24 = lCopy;
      _os_log_impl(&dword_254850000, v14, OS_LOG_TYPE_INFO, "MMCS: Invalid URL %@", buf, 0xCu);
    }
  }

  v15 = 0;
LABEL_29:

  return v15;
}

- (void)_receiveFileTransfer:(id)transfer topic:(id)topic path:(id)path requestURLString:(id)string ownerID:(id)d signature:(id)signature allowReauthorize:(BOOL)reauthorize fileSize:(unint64_t)self0 sourceAppID:(id)self1 progressBlock:(id)self2 completionBlock:(id)self3
{
  v121 = *MEMORY[0x277D85DE8];
  transferCopy = transfer;
  topicCopy = topic;
  pathCopy = path;
  stringCopy = string;
  dCopy = d;
  signatureCopy = signature;
  iDCopy = iD;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  im_assert_primary_queue();
  if (!self->_controller)
  {
    v20 = objc_alloc(MEMORY[0x277D25680]);
    v21 = im_primary_queue();
    v22 = [v20 initWithQueue:v21];
    controller = self->_controller;
    self->_controller = v22;
  }

  if (!self->_networkMonitor)
  {
    v24 = [MEMORY[0x277D1AAC8] createNetworkMonitorWithRemoteHost:0 delegate:0 allowsUltraConstrainedNetwork:1];
    networkMonitor = self->_networkMonitor;
    self->_networkMonitor = v24;
  }

  v26 = [MEMORY[0x277CBEBC0] URLWithString:stringCopy];
  v27 = [(IMTransferAgentController *)self _isAllowlistedURL:v26];

  if (v27)
  {
    v28 = objc_alloc_init(MEMORY[0x277D25688]);
    objc_initWeak(&location, v28);
    v29 = IMSingleObjectArray();
    *&buf = 0;
    *(&buf + 1) = &buf;
    v117 = 0x3032000000;
    v118 = sub_254854F24;
    v119 = sub_254854F34;
    v30 = v29;
    v120 = v30;
    if (stringCopy)
    {
      v31 = [MEMORY[0x277CBEBC0] URLWithString:?];
    }

    else
    {
      v31 = 0;
    }

    [v28 setSignature:signatureCopy];
    [v28 setGuid:transferCopy];
    stringByResolvingAndStandardizingPath = [pathCopy stringByResolvingAndStandardizingPath];
    [v28 setLocalPath:stringByResolvingAndStandardizingPath];

    [v28 setRequestURL:v31];
    [v28 setProtocolFileSize:size];
    v107[0] = MEMORY[0x277D85DD0];
    v107[1] = 3221225472;
    v107[2] = sub_254858F48;
    v107[3] = &unk_27978CCF0;
    v35 = transferCopy;
    v108 = v35;
    v36 = blockCopy;
    v109 = v36;
    [v28 setProgressUpdateBlock:v107];
    if (IMOSLoggingEnabled())
    {
      v37 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        LODWORD(v111) = 138412290;
        *(&v111 + 4) = v28;
        _os_log_impl(&dword_254850000, v37, OS_LOG_TYPE_INFO, "Created get file request: %@", &v111, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v38 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        mEMORY[0x277D192E8] = [MEMORY[0x277D192E8] sharedInstance];
        v40 = [mEMORY[0x277D192E8] linkQualityValueForInterfaceType:3];
        LODWORD(v111) = 67109120;
        DWORD1(v111) = v40;
        _os_log_impl(&dword_254850000, v38, OS_LOG_TYPE_INFO, "  Cell Link Quality: %d", &v111, 8u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v41 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        mEMORY[0x277D192E8]2 = [MEMORY[0x277D192E8] sharedInstance];
        v43 = [mEMORY[0x277D192E8]2 linkQualityValueForInterfaceType:2];
        LODWORD(v111) = 67109120;
        DWORD1(v111) = v43;
        _os_log_impl(&dword_254850000, v41, OS_LOG_TYPE_INFO, "  WiFi Link Quality: %d", &v111, 8u);
      }
    }

    v105[0] = 0;
    v105[1] = v105;
    v105[2] = 0x2020000000;
    v106 = 0;
    v90[0] = MEMORY[0x277D85DD0];
    v90[1] = 3221225472;
    v90[2] = sub_254859078;
    v90[3] = &unk_27978CD90;
    objc_copyWeak(v103, &location);
    v64 = v31;
    v65 = v30;
    v62 = transferCopy;
    v101 = v105;
    reauthorizeCopy = reauthorize;
    v44 = v35;
    v91 = v44;
    selfCopy = self;
    v45 = topicCopy;
    v93 = v45;
    v46 = pathCopy;
    v94 = v46;
    v47 = stringCopy;
    v95 = v47;
    v48 = dCopy;
    v96 = v48;
    v49 = signatureCopy;
    v97 = v49;
    v103[1] = size;
    v63 = iDCopy;
    v98 = v63;
    v99 = v36;
    v100 = completionBlockCopy;
    p_buf = &buf;
    [v28 setCompletionBlock:v90];
    v61 = v46;
    v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"download-transfer-%@-mmcs-registration", v44];
    v60 = [MEMORY[0x277CCACA8] stringWithFormat:@"download-transfer-%@-preauth", v44];
    v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"download-transfer-%@-mmcs-upload", v44];
    v52 = v47;
    *&v111 = 0;
    *(&v111 + 1) = &v111;
    v112 = 0x3032000000;
    v113 = sub_254854F24;
    v114 = sub_254854F34;
    v53 = v51;
    v115 = objc_alloc_init(MEMORY[0x277D192C0]);
    [*(*(&v111 + 1) + 40) startTimingForKey:v50];
    v54 = self->_controller;
    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 3221225472;
    v74[2] = sub_254859B40;
    v74[3] = &unk_27978CE08;
    v89 = &v111;
    v55 = v50;
    v75 = v55;
    v76 = v45;
    v77 = v48;
    v78 = v49;
    v79 = v44;
    selfCopy2 = self;
    v56 = v64;
    v81 = v56;
    v57 = v60;
    v82 = v57;
    v83 = v52;
    v33 = v28;
    v84 = v33;
    v85 = v61;
    v58 = v53;
    v86 = v58;
    v59 = v65;
    v87 = v59;
    v88 = v63;
    [(MMCSController *)v54 registerFilesForDownload:v59 completionBlock:v74];

    transferCopy = v62;
    _Block_object_dispose(&v111, 8);

    objc_destroyWeak(v103);
    _Block_object_dispose(v105, 8);

    _Block_object_dispose(&buf, 8);
    objc_destroyWeak(&location);
    goto LABEL_28;
  }

  if (IMOSLoggingEnabled())
  {
    v32 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = stringCopy;
      _os_log_impl(&dword_254850000, v32, OS_LOG_TYPE_INFO, "MMCS failing transfer invalid url %@", &buf, 0xCu);
    }
  }

  if (completionBlockCopy)
  {
    v33 = [MEMORY[0x277CCA9B8] errorWithDomain:@"IMTransferAgentErrorDomain" code:10 userInfo:0];
    (*(completionBlockCopy + 2))(completionBlockCopy, transferCopy, pathCopy, 0, v33, @"Invalid url");
LABEL_28:
  }
}

- (void)receiveFileTransfer:(id)transfer topic:(id)topic path:(id)path requestURLString:(id)string ownerID:(id)d signature:(id)signature fileSize:(unint64_t)size decryptionKey:(id)self0 sourceAppID:(id)self1 progressBlock:(id)self2 completionBlock:(id)self3
{
  transferCopy = transfer;
  topicCopy = topic;
  pathCopy = path;
  stringCopy = string;
  dCopy = d;
  signatureCopy = signature;
  keyCopy = key;
  iDCopy = iD;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  im_assert_primary_queue();
  v42 = blockCopy;
  if (IMGetCachedDomainBoolForKey())
  {
    v24 = keyCopy;
    v26 = stringCopy;
    v25 = transferCopy;
    v27 = signatureCopy;
    if (IMOSLoggingEnabled())
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254850000, v28, OS_LOG_TYPE_INFO, "************* Failed attachment download is on ***********************", buf, 2u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v29 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254850000, v29, OS_LOG_TYPE_INFO, "************* Failed attachment download is on ***********************", buf, 2u);
      }
    }

    v30 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.private.IMTransferAgentForcedFailure" code:0 userInfo:0];
    (*(completionBlockCopy + 2))(completionBlockCopy, transferCopy, pathCopy, 0, v30, 0);
    v31 = topicCopy;
    v32 = v42;
  }

  else
  {
    v33 = keyCopy;
    v41 = dCopy;
    if ([keyCopy length])
    {
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v35 = pathCopy;
      v30 = [defaultManager _randomSimilarFilePathAsPath:pathCopy];
    }

    else
    {
      v35 = pathCopy;
      v30 = pathCopy;
    }

    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = sub_25485C060;
    v53[3] = &unk_27978CE58;
    v53[4] = self;
    v36 = topicCopy;
    v54 = v36;
    v55 = completionBlockCopy;
    v37 = MEMORY[0x259C1C440](v53);
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = sub_25485C30C;
    v48[3] = &unk_27978CEA8;
    v49 = v33;
    v50 = v35;
    v52 = v37;
    v24 = v33;
    v25 = transferCopy;
    v51 = transferCopy;
    v38 = v37;
    v32 = v42;
    LOBYTE(v40) = 1;
    v39 = v36;
    v27 = signatureCopy;
    v26 = stringCopy;
    [(IMTransferAgentController *)self _receiveFileTransfer:v51 topic:v39 path:v30 requestURLString:stringCopy ownerID:v41 signature:signatureCopy allowReauthorize:v40 fileSize:size sourceAppID:iDCopy progressBlock:v42 completionBlock:v48];

    dCopy = v41;
    v31 = topicCopy;
  }
}

- (void)ensureSafeAttachment:(id)attachment topic:(id)topic withCompletionBlock:(id)block
{
  v24 = *MEMORY[0x277D85DE8];
  attachmentCopy = attachment;
  topicCopy = topic;
  blockCopy = block;
  im_assert_primary_queue();
  if ([MEMORY[0x277D1A9A0] deviceIsLockedDown] && (objc_msgSend(attachmentCopy, "path"), v10 = objc_claimAutoreleasedReturnValue(), v11 = IMTransferRequestIsForMessages(topicCopy, v10), v10, v11))
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v23 = attachmentCopy;
        _os_log_impl(&dword_254850000, v12, OS_LOG_TYPE_INFO, "Lockdown mode enabled, generating safe render for attachment: %@", buf, 0xCu);
      }
    }

    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = sub_25485C94C;
    v19 = &unk_27978CED0;
    v13 = attachmentCopy;
    v20 = v13;
    v21 = blockCopy;
    v14 = MEMORY[0x259C1C440](&v16);
    mEMORY[0x277D1ADE0] = [MEMORY[0x277D1ADE0] sharedInstance];
    [mEMORY[0x277D1ADE0] generateSafeRender:v13 completionBlock:v14];
  }

  else
  {
    (*(blockCopy + 2))(blockCopy, 1, attachmentCopy, 0);
  }
}

@end