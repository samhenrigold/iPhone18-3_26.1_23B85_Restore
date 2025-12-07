@interface _IMDMetadataItem
- (BOOL)markWithSender:(id)sender recipients:(id)recipients isIncoming:(BOOL)incoming;
- (_IMDMetadataItem)initWithFilePath:(id)path;
@end

@implementation _IMDMetadataItem

- (_IMDMetadataItem)initWithFilePath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = _IMDMetadataItem;
  v6 = [(_IMDMetadataItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_filePath, path);
  }

  return v7;
}

- (BOOL)markWithSender:(id)sender recipients:(id)recipients isIncoming:(BOOL)incoming
{
  incomingCopy = incoming;
  v60 = *MEMORY[0x1E69E9840];
  senderCopy = sender;
  recipientsCopy = recipients;
  v11 = objc_msgSend__stripFZIDPrefix(senderCopy, v8, v9, v10);
  v15 = _IMDCoreSpotlightCNContactForAddress(v11);
  if (!v15 || (objc_msgSend_sharedInstance(IMDContactCache, v12, v13, v14), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend_fullNameForContact_(v16, v17, v15, v18), v19 = objc_claimAutoreleasedReturnValue(), v16, !v19))
  {
    v19 = v11;
  }

  v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = sub_1B7BAAFF4;
  v55[3] = &unk_1E7CBBF70;
  v22 = v20;
  v56 = v22;
  v23 = v21;
  v57 = v23;
  objc_msgSend_enumerateObjectsUsingBlock_(recipientsCopy, v24, v55, v25);
  if (incomingCopy)
  {
    if (objc_msgSend_count(v22, v26, v27, v28))
    {
      v52 = objc_msgSend_objectAtIndex_(v22, v29, 0, v31);
    }

    else
    {
      v52 = 0;
    }

    if (objc_msgSend_count(v23, v29, v30, v31))
    {
      v40 = objc_msgSend_objectAtIndex_(v23, v38, 0, v39);
    }

    else
    {
      v40 = 0;
    }

    v41 = objc_msgSend_arrayWithObject_(MEMORY[0x1E695DEC8], v38, v19, v39);
    v44 = objc_msgSend_arrayWithObject_(MEMORY[0x1E695DEC8], v42, v11, v43);
    v32 = objc_msgSend__markAsReceivedWithSenderName_senderHandle_recipientNames_recipientHandles_(self, v45, v52, v40, v41, v44);
    if ((v32 & 1) == 0 && IMOSLoggingEnabled())
    {
      log = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
      {
        v49 = objc_msgSend_filePath(self, v46, v47, v48);
        *buf = 138412290;
        v59 = v49;
        _os_log_impl(&dword_1B7AD5000, log, OS_LOG_TYPE_INFO, "_MDItemMarkAsReceived failed on %@", buf, 0xCu);
      }
    }
  }

  else if (objc_msgSend__markAsSentWithSenderName_senderHandle_recipientNames_recipientHandles_(self, v26, v19, v11, v22, v23))
  {
    v32 = 1;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v33 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v37 = objc_msgSend_filePath(self, v34, v35, v36);
        *buf = 138412290;
        v59 = v37;
        _os_log_impl(&dword_1B7AD5000, v33, OS_LOG_TYPE_INFO, "_MDItemMarkAsSent failed on %@", buf, 0xCu);
      }
    }

    v32 = 0;
  }

  return v32;
}

@end