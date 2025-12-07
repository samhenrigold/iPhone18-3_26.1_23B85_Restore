@interface IMDServiceAttachmentController
- (BOOL)_receiveFileTransfer:(id)transfer transferID:(id)d balloonBundleID:(id)iD senderContext:(id)context progressBlock:(id)block completionBlock:(id)completionBlock;
- (BOOL)acceptFileTransfer:(id)transfer;
- (IMDServiceAttachmentController)initWithSession:(id)session;
- (IMDServiceSession)session;
- (void)_sendAttachmentToPeerDevice:(unint64_t)device fileTransferGUID:(id)d messageGuid:(id)guid fileURL:(id)l useLocalPeersFileAPI:(BOOL)i error:(int64_t)error;
- (void)remoteFileResponse:(id)response;
- (void)remotefileRequest:(id)request attempts:(int64_t)attempts shouldRetry:(BOOL)retry;
- (void)retrieveLocalFileTransfer:(id)transfer attachmentIndex:(unint64_t)index path:(id)path requestURLString:(id)string ownerID:(id)d signature:(id)signature decryptionKey:(id)key requestedSize:(id)self0 fileSize:(unint64_t)self1 progressBlock:(id)self2 completionBlock:(id)self3;
@end

@implementation IMDServiceAttachmentController

- (IMDServiceAttachmentController)initWithSession:(id)session
{
  sessionCopy = session;
  v8.receiver = self;
  v8.super_class = IMDServiceAttachmentController;
  v5 = [(IMDServiceAttachmentController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_session, sessionCopy);
  }

  return v6;
}

- (BOOL)acceptFileTransfer:(id)transfer
{
  v32 = *MEMORY[0x277D85DE8];
  transferCopy = transfer;
  v5 = IMOSLoggingEnabled();
  if (transferCopy)
  {
    if (v5)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v31 = transferCopy;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Accepting file transfer: %@", buf, 0xCu);
      }
    }

    guid = [transferCopy guid];
    filename = [transferCopy filename];
    lastPathComponent = [filename lastPathComponent];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v9 = [defaultManager im_randomTemporaryFileURLWithFileName:lastPathComponent];

    v22 = v9 != 0;
    if (v9)
    {
      path = [v9 path];
      v11 = +[IMDFileTransferCenter sharedInstance];
      hasLocalDevice = [(IMDServiceAttachmentController *)self hasLocalDevice];
      v13 = +[IMDStickerRegistry sharedInstance];
      stickerUserInfo = [transferCopy stickerUserInfo];
      isAdaptiveImageGlyph = [transferCopy isAdaptiveImageGlyph];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = sub_22B56BAF0;
      v23[3] = &unk_278704BF0;
      v24 = transferCopy;
      v25 = v11;
      v29 = hasLocalDevice;
      v26 = path;
      v27 = guid;
      selfCopy = self;
      v16 = path;
      v17 = v11;
      [v13 retrieveStickerWithProperties:stickerUserInfo isAdaptiveImageGlyph:isAdaptiveImageGlyph completionBlock:v23];
    }

    else
    {
      v17 = IMLogHandleForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D26B4();
      }
    }
  }

  else
  {
    if (v5)
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Not accepting, empty transfer supplied", buf, 2u);
      }
    }

    v22 = 0;
  }

  return v22;
}

- (BOOL)_receiveFileTransfer:(id)transfer transferID:(id)d balloonBundleID:(id)iD senderContext:(id)context progressBlock:(id)block completionBlock:(id)completionBlock
{
  v111 = *MEMORY[0x277D85DE8];
  transferCopy = transfer;
  dCopy = d;
  iDCopy = iD;
  contextCopy = context;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  mEMORY[0x277D19268] = [MEMORY[0x277D19268] sharedInstance];
  if (![mEMORY[0x277D19268] isInternalInstall])
  {

LABEL_8:
    userInfo = [transferCopy userInfo];
    v53 = [userInfo objectForKey:*MEMORY[0x277D19EC0]];
    originalFilename = [transferCopy originalFilename];
    lastPathComponent = [originalFilename lastPathComponent];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v58 = [defaultManager im_randomTemporaryFileURLWithFileName:lastPathComponent];

    if (!v58)
    {
      v29 = IMLogHandleForCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D27D8();
      }

      if (completionBlockCopy)
      {
        v52 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Messages.AttachmentControllerErrorDomain" code:3 userInfo:0];
        (*(completionBlockCopy + 2))(completionBlockCopy, dCopy, 0, 0, 0, v52, 0, 0.0, 0.0);
        v19 = 0;
      }

      else
      {
        v19 = 0;
      }

      goto LABEL_54;
    }

    if ([*MEMORY[0x277D1A608] isEqualToString:v53])
    {
      guid = [userInfo objectForKey:*MEMORY[0x277D19EB8]];
      v22 = [userInfo objectForKey:*MEMORY[0x277D19E98]];
      v23 = [v22 objectForKey:*MEMORY[0x277D19EE0]];
      v24 = [MEMORY[0x277CBEBC0] URLWithString:v23];
      v25 = [v22 objectForKeyedSubscript:*MEMORY[0x277D19E90]];
      if (IMOSLoggingEnabled())
      {
        v26 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "Attempting download from RCS", buf, 2u);
        }
      }

      thumbnailMode = [transferCopy thumbnailMode];
      if (thumbnailMode)
      {
        [transferCopy setThumbnailMode:2];
      }

      mEMORY[0x277D1ADE8] = [MEMORY[0x277D1ADE8] sharedInstance];
      v93[0] = MEMORY[0x277D85DD0];
      v93[1] = 3221225472;
      v93[2] = sub_22B56DAC4;
      v93[3] = &unk_278704C40;
      v94 = transferCopy;
      v95 = iDCopy;
      v96 = contextCopy;
      v99 = completionBlockCopy;
      v100 = thumbnailMode;
      selfCopy = self;
      v98 = dCopy;
      [mEMORY[0x277D1ADE8] downloadRCSTransferOnSimID:guid transferURL:v24 destURL:v58 cryptoMaterial:v25 completion:v93];

      v19 = 1;
      goto LABEL_53;
    }

    guid = [transferCopy guid];
    v87 = 0;
    v88 = &v87;
    v89 = 0x3032000000;
    v90 = sub_22B4D7690;
    v91 = sub_22B4D78A0;
    v92 = 0;
    v81 = 0;
    v82 = &v81;
    v83 = 0x3032000000;
    v84 = sub_22B4D7690;
    v85 = sub_22B4D78A0;
    v86 = 0;
    v75 = 0;
    v76 = &v75;
    v77 = 0x3032000000;
    v78 = sub_22B4D7690;
    v79 = sub_22B4D78A0;
    v80 = 0;
    v69 = 0;
    v70 = &v69;
    v71 = 0x3032000000;
    v72 = sub_22B4D7690;
    v73 = sub_22B4D78A0;
    v74 = 0;
    v63 = 0;
    v64 = &v63;
    v65 = 0x3032000000;
    v66 = sub_22B4D7690;
    v67 = sub_22B4D78A0;
    v68 = 0;
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = sub_22B56E220;
    v62[3] = &unk_278704C68;
    v62[4] = &v87;
    v62[5] = &v81;
    v62[6] = &v75;
    v62[7] = &v69;
    v62[8] = &v63;
    [userInfo __message_defaultFileTransferEnforceMaxFileSize:1 withCompletion:v62];
    v30 = v88[5];
    v19 = v30 != 0;
    if (v30)
    {
      if (IMOSLoggingEnabled())
      {
        v31 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = v82[5];
          *buf = 138412290;
          v102 = v32;
          _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, " => Settled on signature: %@", buf, 0xCu);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v33 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v102 = transferCopy;
          _os_log_impl(&dword_22B4CC000, v33, OS_LOG_TYPE_INFO, " transfer: %@", buf, 0xCu);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v34 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v102 = userInfo;
          _os_log_impl(&dword_22B4CC000, v34, OS_LOG_TYPE_INFO, "    user info: %@", buf, 0xCu);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v35 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          v36 = v88[5];
          v37 = v76[5];
          v38 = v82[5];
          v39 = v64[5];
          v40 = v70[5];
          *buf = 138413314;
          v102 = v36;
          v103 = 2112;
          v104 = v37;
          v105 = 2112;
          v106 = v38;
          v107 = 2112;
          v108 = v39;
          v109 = 2112;
          v110 = v40;
          _os_log_impl(&dword_22B4CC000, v35, OS_LOG_TYPE_INFO, " urlString: %@   owner: %@    signature: %@  key: %@  fileSizeString: %@", buf, 0x34u);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v41 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v41, OS_LOG_TYPE_INFO, "Attempting download from MMCS", buf, 2u);
        }
      }

      mEMORY[0x277D1ADF8] = [MEMORY[0x277D1ADF8] sharedInstance];
      path = [v58 path];
      v44 = v88[5];
      v45 = v76[5];
      _FTDataFromHexString = [v82[5] _FTDataFromHexString];
      _FTDataFromHexString2 = [v64[5] _FTDataFromHexString];
      integerValue = [v70[5] integerValue];
      [mEMORY[0x277D1ADF8] receiveFileTransfer:dCopy transferGUID:guid topic:*MEMORY[0x277D186B0] path:path requestURLString:v44 ownerID:v45 signature:_FTDataFromHexString decryptionKey:_FTDataFromHexString2 fileSize:integerValue balloonBundleID:iDCopy senderContext:contextCopy progressBlock:blockCopy completionBlock:completionBlockCopy];
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v49 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v49, OS_LOG_TYPE_INFO, " => No signature found, nothing to download here", buf, 2u);
        }
      }

      if (!completionBlockCopy)
      {
        goto LABEL_52;
      }

      mEMORY[0x277D1ADF8] = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Messages.AttachmentControllerErrorDomain" code:2 userInfo:0];
      (*(completionBlockCopy + 2))(completionBlockCopy, dCopy, 0, 0, 0, mEMORY[0x277D1ADF8], 0, 0.0, 0.0);
    }

LABEL_52:
    _Block_object_dispose(&v63, 8);

    _Block_object_dispose(&v69, 8);
    _Block_object_dispose(&v75, 8);

    _Block_object_dispose(&v81, 8);
    _Block_object_dispose(&v87, 8);

LABEL_53:
LABEL_54:

    goto LABEL_56;
  }

  v17 = IMGetCachedDomainBoolForKey();

  if (!v17)
  {
    goto LABEL_8;
  }

  v18 = IMLogHandleForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D2840();
  }

  if (completionBlockCopy)
  {
    v60 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Messages.AttachmentControllerErrorDomain" code:15 userInfo:0];
    (*(completionBlockCopy + 2))(completionBlockCopy, dCopy, 0, 0, 0, v60, 0, 0.0, 0.0);
    v19 = 0;
  }

  else
  {
    v19 = 0;
  }

LABEL_56:

  return v19;
}

- (void)retrieveLocalFileTransfer:(id)transfer attachmentIndex:(unint64_t)index path:(id)path requestURLString:(id)string ownerID:(id)d signature:(id)signature decryptionKey:(id)key requestedSize:(id)self0 fileSize:(unint64_t)self1 progressBlock:(id)self2 completionBlock:(id)self3
{
  v51 = *MEMORY[0x277D85DE8];
  transferCopy = transfer;
  pathCopy = path;
  stringCopy = string;
  dCopy = d;
  signatureCopy = signature;
  keyCopy = key;
  sizeCopy = size;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  if (index == 0x7FFFFFFFFFFFFFFFLL || ![transferCopy length])
  {
    if (IMOSLoggingEnabled())
    {
      v33 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v50 = index;
        *&v50[4] = 2112;
        *&v50[6] = transferCopy;
        _os_log_impl(&dword_22B4CC000, v33, OS_LOG_TYPE_INFO, "Trying to retrieve attachment at index: %u for transfer ID: %@, failing", buf, 0x12u);
      }
    }

    (*(completionBlockCopy + 2))(completionBlockCopy, transferCopy, index, 0, 0, 0, 0);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *v50 = transferCopy;
        _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, " Requesting file attachments for transfer %@", buf, 0xCu);
      }
    }

    v48[0] = transferCopy;
    v47[0] = IMDRelayLocalMessageDictionaryGUIDKey;
    v47[1] = IMDRelayLocalMessageDictionaryAttachmentIndexKey;
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
    v48[1] = v24;
    v47[2] = IMDRelayLocalMessageDictionarySupportsDirectMMCSDownloadKey;
    v48[2] = MEMORY[0x277CBEC38];
    v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:3];

    v45[0] = IMDRelayLocalMessageDictionaryTypeKey;
    v45[1] = IMDRelayLocalMessageDictionaryDictKey;
    v46[0] = IMDRelayLocalMessageTypeRemoteFileRequest;
    v46[1] = v35;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:2];
    if ([(IMDServiceAttachmentController *)self sendToLocalPeers:v25])
    {
      if (!qword_27D8CFE30)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        v27 = qword_27D8CFE30;
        qword_27D8CFE30 = Mutable;
      }

      index = [transferCopy stringByAppendingFormat:@"_%lu", index];
      v29 = qword_27D8CFE30;
      v30 = _Block_copy(completionBlockCopy);
      [v29 setObject:v30 forKey:index];

      v31 = dispatch_time(0, 600000000000);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_22B56E938;
      block[3] = &unk_278703DE8;
      v42 = index;
      v43 = transferCopy;
      indexCopy = index;
      v32 = index;
      dispatch_after(v31, MEMORY[0x277D85CD0], block);
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v34 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *v50 = transferCopy;
          _os_log_impl(&dword_22B4CC000, v34, OS_LOG_TYPE_INFO, " Failed to send message to local device for Transfer %@, Failing", buf, 0xCu);
        }
      }

      (*(completionBlockCopy + 2))(completionBlockCopy, transferCopy, index, 0, 0, 0, 0);
    }
  }
}

- (void)remoteFileResponse:(id)response
{
  v33 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v26 = responseCopy;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, " Incomming response for file attachment %@ ", buf, 0xCu);
    }
  }

  v5 = [responseCopy objectForKeyedSubscript:IMDRelayLocalMessageDictionaryGUIDKey];
  v6 = [responseCopy objectForKeyedSubscript:IMDRelayLocalMessageDictionaryAttachmentIndexKey];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  v8 = [responseCopy objectForKeyedSubscript:IMDRelayLocalMessageDictionaryFileDataKey];
  v9 = [responseCopy objectForKeyedSubscript:IMDRelayLocalMessageDictionaryFilePathKey];
  v10 = [responseCopy objectForKeyedSubscript:@"error-code"];
  integerValue = [v10 integerValue];

  v12 = 0;
  if (integerValue)
  {
    v13 = integerValue == 5;
  }

  else
  {
    v13 = 1;
  }

  v14 = v13;
  if (integerValue && integerValue != 5)
  {
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D1A480] code:integerValue userInfo:0];
  }

  if ([v5 length])
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = [v8 length];
        *buf = 138413058;
        v26 = v5;
        v27 = 2048;
        v28 = unsignedIntegerValue;
        v29 = 2048;
        v30 = v16;
        v31 = 2048;
        v32 = integerValue;
        _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, " Incomming response for message %@ attachmentIndex %lu data of length %lu errorCode %lu", buf, 0x2Au);
      }
    }

    v17 = [v5 stringByAppendingFormat:@"_%lu", unsignedIntegerValue];
    v18 = [qword_27D8CFE30 objectForKey:v17];
    v19 = IMOSLoggingEnabled();
    if (v18)
    {
      if (v19)
      {
        v20 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, " Found completion block for attachment", buf, 2u);
        }
      }

      (v18)[2](v18, v5, unsignedIntegerValue, v9, v8, v14, v12);
      [qword_27D8CFE30 removeObjectForKey:v17];
    }

    else
    {
      if (v19)
      {
        v21 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v26 = v17;
          _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, " No completion block for attachment found: %@", buf, 0xCu);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          allKeys = [qword_27D8CFE30 allKeys];
          *buf = 138412290;
          v26 = allKeys;
          _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "     In list of blocks: %@", buf, 0xCu);
        }
      }
    }

    if (![qword_27D8CFE30 count])
    {
      v24 = qword_27D8CFE30;
      qword_27D8CFE30 = 0;
    }
  }
}

- (void)_sendAttachmentToPeerDevice:(unint64_t)device fileTransferGUID:(id)d messageGuid:(id)guid fileURL:(id)l useLocalPeersFileAPI:(BOOL)i error:(int64_t)error
{
  iCopy = i;
  v43 = *MEMORY[0x277D85DE8];
  dCopy = d;
  guidCopy = guid;
  lCopy = l;
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v38 = dCopy;
      v39 = 2048;
      errorCopy = error;
      v41 = 2112;
      v42 = lCopy;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Forwarding Attachment with guid %@ to local peer. Error: %lu. fileURL %@", buf, 0x20u);
    }
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [lCopy path];
  v17 = [defaultManager attributesOfItemAtPath:path error:0];

  v18 = [v17 objectForKeyedSubscript:*MEMORY[0x277CCA1C0]];
  longValue = [v18 longValue];

  v20 = longValue > 0x100000 || iCopy;
  if (v20)
  {
    [MEMORY[0x277CBEA90] data];
  }

  else
  {
    [MEMORY[0x277CBEA90] dataWithContentsOfURL:lCopy];
  }
  v21 = ;
  v36[0] = guidCopy;
  v35[0] = IMDRelayLocalMessageDictionaryGUIDKey;
  v35[1] = IMDRelayLocalMessageDictionaryAttachmentIndexKey;
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:device];
  v36[1] = v22;
  v35[2] = IMDRelayLocalMessageDictionaryFileDataKey;
  data = v21;
  if (!v21)
  {
    data = [MEMORY[0x277CBEA90] data];
  }

  v36[2] = data;
  v35[3] = @"error-code";
  v24 = [MEMORY[0x277CCABB0] numberWithInteger:error];
  v36[3] = v24;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:4];

  if (!v21)
  {
  }

  v33[0] = IMDRelayLocalMessageDictionaryDictKey;
  v33[1] = IMDRelayLocalMessageDictionaryTypeKey;
  v34[0] = v25;
  v34[1] = IMDRelayLocalMessageTypeRemoteFileResponse;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];
  if (v20)
  {
    if (IMOSLoggingEnabled())
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "Sending attachment with file url api", buf, 2u);
      }
    }

    [(IMDServiceAttachmentController *)self sendToLocalPeersFile:lCopy dictionary:v26];
  }

  else
  {
    localDeviceProductVersion = [(IMDServiceAttachmentController *)self localDeviceProductVersion];
    if (IMOSLoggingEnabled())
    {
      v29 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v38 = localDeviceProductVersion;
        _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "Using legacy api to send attachment running on product version: %@", buf, 0xCu);
      }
    }

    [(IMDServiceAttachmentController *)self sendToLocalPeers:v26];
  }
}

- (void)remotefileRequest:(id)request attempts:(int64_t)attempts shouldRetry:(BOOL)retry
{
  retryCopy = retry;
  v116 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v9 = [requestCopy objectForKeyedSubscript:IMDRelayLocalMessageDictionaryGUIDKey];
  v10 = [requestCopy objectForKeyedSubscript:IMDRelayLocalMessageDictionaryAttachmentIndexKey];
  unsignedIntegerValue = [v10 unsignedIntegerValue];

  v110 = 0;
  v111 = &v110;
  v112 = 0x2020000000;
  v11 = [requestCopy objectForKeyedSubscript:@"send-file-url"];
  bOOLValue = [v11 BOOLValue];

  v113 = bOOLValue;
  v13 = [requestCopy objectForKeyedSubscript:IMDRelayLocalMessageDictionarySupportsDirectMMCSDownloadKey];
  bOOLValue2 = [v13 BOOLValue];

  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = @"NO";
      if (retryCopy)
      {
        v16 = @"YES";
      }

      *buf = 138412546;
      *&buf[4] = v9;
      *&buf[12] = 2112;
      *&buf[14] = v16;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Attempting to locate message with Message Guid %@ shouldRetry %@", buf, 0x16u);
    }
  }

  v17 = +[IMDMessageStore sharedInstance];
  v18 = [v17 itemWithGUID:v9];

  if (!v18)
  {
    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v9;
        _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Unable To locate Message with GUID %@, adding to pending requests to retry later", buf, 0xCu);
      }
    }

    pendingRemoteFileRequests = [(IMDServiceAttachmentController *)self pendingRemoteFileRequests];
    if (!pendingRemoteFileRequests)
    {
      pendingRemoteFileRequests = [MEMORY[0x277CBEB58] set];
      [(IMDServiceAttachmentController *)self setPendingRemoteFileRequests:pendingRemoteFileRequests];
    }

    [pendingRemoteFileRequests addObject:requestCopy];
    if (retryCopy)
    {
      if (attempts <= 39)
      {
        if (IMOSLoggingEnabled())
        {
          v25 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *&buf[4] = v9;
            _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "Message with Guid  is not found %@, Retrying it a bit ", buf, 0xCu);
          }
        }

        v86 = requestCopy;
        im_dispatch_after();

        goto LABEL_85;
      }

      if (IMOSLoggingEnabled())
      {
        v61 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = v9;
          _os_log_impl(&dword_22B4CC000, v61, OS_LOG_TYPE_INFO, "Message with Guid is not found %@, No retried remain ", buf, 0xCu);
        }
      }
    }

    v57 = 1;
    goto LABEL_130;
  }

  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v9;
      _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Located Mesage with Message Guid %@", buf, 0xCu);
    }
  }

  pendingRemoteFileRequests2 = [(IMDServiceAttachmentController *)self pendingRemoteFileRequests];
  [pendingRemoteFileRequests2 removeObject:requestCopy];

  pendingRemoteFileRequests3 = [(IMDServiceAttachmentController *)self pendingRemoteFileRequests];
  v22 = [pendingRemoteFileRequests3 count] == 0;

  if (v22)
  {
    [(IMDServiceAttachmentController *)self setPendingRemoteFileRequests:0];
  }

  if (![v18 type])
  {
    pendingRemoteFileRequests = v18;
    if ([pendingRemoteFileRequests isFinished])
    {
      goto LABEL_30;
    }

    if (attempts > 39)
    {
      if (IMOSLoggingEnabled())
      {
        v63 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = v9;
          _os_log_impl(&dword_22B4CC000, v63, OS_LOG_TYPE_INFO, "Message with Guid is unfinished %@, No retried remain ", buf, 0xCu);
        }
      }

      v57 = 2;
      goto LABEL_130;
    }

    if (IMOSLoggingEnabled())
    {
      v60 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v9;
        _os_log_impl(&dword_22B4CC000, v60, OS_LOG_TYPE_INFO, "Message with Guid  is unfinished %@, Retrying it a bit ", buf, 0xCu);
      }
    }

    v103 = MEMORY[0x277D85DD0];
    v104 = 3221225472;
    v105 = sub_22B5707C4;
    v106 = &unk_278703DE8;
    selfCopy = self;
    v108 = requestCopy;
    attemptsCopy = attempts;
    im_dispatch_after();

LABEL_85:
    v57 = 0;
    goto LABEL_130;
  }

  pendingRemoteFileRequests = 0;
LABEL_30:
  fileTransferGUIDs = [v18 fileTransferGUIDs];

  if (!fileTransferGUIDs)
  {
    v57 = 3;
    goto LABEL_130;
  }

  if (IMOSLoggingEnabled())
  {
    v27 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v9;
      _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "Located message with guid %@ attachments,  ", buf, 0xCu);
    }
  }

  fileTransferGUIDs2 = [v18 fileTransferGUIDs];
  v29 = unsignedIntegerValue < [fileTransferGUIDs2 count];

  if (v29)
  {
    fileTransferGUIDs3 = [v18 fileTransferGUIDs];
    v83 = [fileTransferGUIDs3 objectAtIndex:unsignedIntegerValue];

    if (IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v83;
        _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, "Attempting to locate file transfer with guid %@ ", buf, 0xCu);
      }
    }

    v32 = +[IMDFileTransferCenter sharedInstance];
    v84 = [v32 transferForGUID:v83];

    if (!v84)
    {
      if (IMOSLoggingEnabled())
      {
        v33 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v33, OS_LOG_TYPE_INFO, "Transfer not found in transfer center, checking attachment store", buf, 2u);
        }
      }

      v34 = +[IMDAttachmentStore sharedInstance];
      v84 = [v34 attachmentWithGUID:v83];

      if (!v84)
      {
        if (IMOSLoggingEnabled())
        {
          v72 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            *&buf[4] = v9;
            *&buf[12] = 2112;
            *&buf[14] = v83;
            _os_log_impl(&dword_22B4CC000, v72, OS_LOG_TYPE_INFO, "Did not find file transfer for message GUID %@ transfer guid %@", buf, 0x16u);
          }
        }

        v57 = 3;

        goto LABEL_129;
      }
    }

    if (IMOSLoggingEnabled())
    {
      v35 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v83;
        _os_log_impl(&dword_22B4CC000, v35, OS_LOG_TYPE_INFO, "Located Transfer with Guid %@ ", buf, 0xCu);
      }
    }

    if (![v84 isFinished])
    {
      if (attempts > 39)
      {
        if (IMOSLoggingEnabled())
        {
          v64 = OSLogHandleForIMEventCategory();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            *&buf[4] = v83;
            *&buf[12] = 2112;
            *&buf[14] = v9;
            _os_log_impl(&dword_22B4CC000, v64, OS_LOG_TYPE_INFO, "Transfer Guid %@ for Message with %@ is not yet complete, no retries remain ", buf, 0x16u);
          }
        }

        v57 = 4;
        goto LABEL_128;
      }

      if (IMOSLoggingEnabled())
      {
        v62 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          *&buf[4] = v83;
          *&buf[12] = 2112;
          *&buf[14] = v9;
          _os_log_impl(&dword_22B4CC000, v62, OS_LOG_TYPE_INFO, "Transfer Guid %@ for Message with %@ is not yet complete, Retrying it a bit ", buf, 0x16u);
        }
      }

      v87 = requestCopy;
      im_dispatch_after();

LABEL_127:
      v57 = 0;
LABEL_128:

LABEL_129:
      goto LABEL_130;
    }

    if (IMOSLoggingEnabled())
    {
      v36 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v83;
        _os_log_impl(&dword_22B4CC000, v36, OS_LOG_TYPE_INFO, "Located Completed transfer with %@ ", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v37 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v37, OS_LOG_TYPE_INFO, "Attempting to transcode attachment for peer relay", buf, 2u);
      }
    }

    v38 = +[IMDChatStore sharedInstance];
    v39 = [v38 chatsGUIDsForMessageWithGUID:v9];
    lastObject = [v39 lastObject];

    v40 = +[IMDChatStore sharedInstance];
    v81 = [v40 chatWithGUID:lastObject];

    isFiltered = [v81 isFiltered];
    v42 = bOOLValue2 ^ 1u;
    if ((isFiltered == 0) | (bOOLValue2 ^ 1) & 1)
    {
      if (IMOSLoggingEnabled())
      {
        v43 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          v44 = [MEMORY[0x277CCABB0] numberWithBool:isFiltered == 0];
          v45 = [MEMORY[0x277CCABB0] numberWithBool:v42];
          *buf = 138412546;
          *&buf[4] = v44;
          *&buf[12] = 2112;
          *&buf[14] = v45;
          _os_log_impl(&dword_22B4CC000, v43, OS_LOG_TYPE_INFO, "Attempting to transcode attachment for peer relay, this is a known sender (%@) or old watch (%@)", buf, 0x16u);
        }
      }

      type = [v84 type];
      transcoderUserInfo = [v84 transcoderUserInfo];
      Mutable = [transcoderUserInfo mutableCopy];

      if (UTTypeConformsTo(type, *MEMORY[0x277CC2020]))
      {
        if (!Mutable)
        {
          Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        }

        if (IMOSLoggingEnabled())
        {
          v49 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v49, OS_LOG_TYPE_INFO, "Found an a/v type, adding transcoder options to remove alpha and check for hevc+alpha", buf, 2u);
          }
        }

        v50 = [MEMORY[0x277CCABB0] numberWithBool:1];
        [(__CFDictionary *)Mutable setObject:v50 forKey:*MEMORY[0x277D19DD8]];

        v51 = [MEMORY[0x277CCABB0] numberWithBool:1];
        [(__CFDictionary *)Mutable setObject:v51 forKey:*MEMORY[0x277D19DA0]];
      }

      v80 = Mutable;
      v52 = type;
      v78 = [IMDAttachmentUtilities shouldEnablePreviewTranscodingQualityForTransfer:v84 isSending:1];
      v79 = +[IMDAttachmentUtilities messageAttachmentSendableUTIs];
      mEMORY[0x277D1ADE0] = [MEMORY[0x277D1ADE0] sharedInstance];
      localURL = [v84 localURL];
      isSticker = [v84 isSticker];
      v96[0] = MEMORY[0x277D85DD0];
      v96[1] = 3221225472;
      v96[2] = sub_22B5707DC;
      v96[3] = &unk_278704C90;
      v97 = v84;
      selfCopy2 = self;
      v101 = &v110;
      v102 = unsignedIntegerValue;
      v99 = v83;
      v100 = v9;
      LOBYTE(v77) = v78;
      [mEMORY[0x277D1ADE0] transcodeFileTransferContents:localURL utiType:v52 isSticker:isSticker allowUnfilteredUTIs:v79 target:0 sizes:&unk_283F4EE10 commonCapabilities:0 maxDimension:-1 transcoderUserInfo:v80 representations:0 isLQMEnabled:v77 completionBlock:v96];

      v56 = v52;
      goto LABEL_126;
    }

    type2 = [v84 type];
    v66 = type2 == 0;

    if (v66)
    {
      goto LABEL_136;
    }

    v67 = MEMORY[0x277CE1CB8];
    type3 = [v84 type];
    v56 = [v67 typeWithIdentifier:type3];

    if ([v56 conformsToType:*MEMORY[0x277CE1DB0]])
    {
      localURL2 = [v84 localURL];
      v70 = IMFileURLIsActuallyAnimated();

      if ((v70 & 1) == 0)
      {
        v115 = 0;
        memset(buf, 0, sizeof(buf));
        IMPreviewConstraintsZero();
        *buf = xmmword_22B7F85A0;
        *&buf[16] = xmmword_22B7F85B0;
        LOBYTE(v115) = [v84 isSticker];
        BYTE2(v115) = [v84 isAdaptiveImageGlyph];
        BYTE1(v115) = 0;
        mEMORY[0x277D1ADE0]2 = [MEMORY[0x277D1ADE0] sharedInstance];
        localURL3 = [v84 localURL];
        v90[0] = MEMORY[0x277D85DD0];
        v90[1] = 3221225472;
        v90[2] = sub_22B570CE4;
        v90[3] = &unk_278704CB8;
        v90[4] = self;
        v95 = unsignedIntegerValue;
        v91 = v83;
        v92 = v9;
        v94 = &v110;
        v93 = v84;
        v88[0] = *buf;
        v88[1] = *&buf[16];
        v89 = v115;
        [mEMORY[0x277D1ADE0]2 generateSafeRender:localURL3 constraints:v88 completionBlock:v90];

        goto LABEL_126;
      }
    }

    if (!v56)
    {
LABEL_136:
      if (IMOSLoggingEnabled())
      {
        v73 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v73, OS_LOG_TYPE_INFO, "File safe render failed for Peer Relay because the filetype was not found", buf, 2u);
        }
      }

      v56 = 0;
    }

    else if (IMOSLoggingEnabled())
    {
      v71 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v56;
        _os_log_impl(&dword_22B4CC000, v71, OS_LOG_TYPE_INFO, "File safe render failed for Peer Relay because the filetype was not supported: %@", buf, 0xCu);
      }
    }

    localURL4 = [v84 localURL];
    [(IMDServiceAttachmentController *)self _sendAttachmentToPeerDevice:unsignedIntegerValue fileTransferGUID:v83 messageGuid:v9 fileURL:localURL4 useLocalPeersFileAPI:*(v111 + 24) error:5];

LABEL_126:
    goto LABEL_127;
  }

  if (IMOSLoggingEnabled())
  {
    v58 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
    {
      fileTransferGUIDs4 = [v18 fileTransferGUIDs];
      *buf = 134218242;
      *&buf[4] = unsignedIntegerValue;
      *&buf[12] = 2112;
      *&buf[14] = fileTransferGUIDs4;
      _os_log_impl(&dword_22B4CC000, v58, OS_LOG_TYPE_INFO, "Attachment index out of bounds. attachment index: %lu file transfer guids: %@", buf, 0x16u);
    }
  }

  v57 = 6;
LABEL_130:

  if (v57)
  {
    [(IMDServiceAttachmentController *)self _sendAttachmentToPeerDevice:unsignedIntegerValue fileTransferGUID:0 messageGuid:v9 fileURL:0 useLocalPeersFileAPI:*(v111 + 24) error:v57];
  }

  _Block_object_dispose(&v110, 8);
}

- (IMDServiceSession)session
{
  WeakRetained = objc_loadWeakRetained(&self->_session);

  return WeakRetained;
}

@end