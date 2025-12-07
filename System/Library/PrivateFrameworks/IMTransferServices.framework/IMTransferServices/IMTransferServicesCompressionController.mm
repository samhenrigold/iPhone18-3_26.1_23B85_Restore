@interface IMTransferServicesCompressionController
+ (id)sharedInstance;
- (void)_mapCopier:(id)copier toBlock:(id)block;
- (void)_unmapCopier:(id)copier;
- (void)compressFileTransfer:(id)transfer completionBlock:(id)block;
- (void)fileCopierDidFinish:(id)finish;
- (void)fileCopierDidStart:(id)start;
@end

@implementation IMTransferServicesCompressionController

+ (id)sharedInstance
{
  if (qword_28141B770 != -1)
  {
    sub_25487ECA8();
  }

  return qword_28141B760;
}

- (void)_mapCopier:(id)copier toBlock:(id)block
{
  if (copier && block)
  {
    blockMap = self->_blockMap;
    if (!blockMap)
    {
      blockMap = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      self->_blockMap = blockMap;
    }

    v8 = objc_msgSend_copy(block, a2, copier, block);
    v12 = objc_msgSend_identifier(copier, v9, v10, v11);

    MEMORY[0x2821F9670](blockMap, sel_setObject_forKey_, v8, v12);
  }
}

- (void)_unmapCopier:(id)copier
{
  if (copier && objc_msgSend_identifier(copier, a2, copier, v3))
  {
    blockMap = self->_blockMap;
    v10 = objc_msgSend_identifier(copier, v6, v7, v8);
    objc_msgSend_removeObjectForKey_(blockMap, v11, v10, v12);
    if (!objc_msgSend_count(self->_blockMap, v13, v14, v15))
    {

      self->_blockMap = 0;
    }
  }
}

- (void)compressFileTransfer:(id)transfer completionBlock:(id)block
{
  v32 = *MEMORY[0x277D85DE8];
  if (block)
  {
    if (transfer)
    {
      v29 = 0;
      v7 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], a2, transfer, block);
      v11 = objc_msgSend_path(transfer, v8, v9, v10);
      if (objc_msgSend_fileExistsAtPath_isDirectory_(v7, v12, v11, &v29))
      {
        if (v29)
        {
          v13 = objc_alloc(MEMORY[0x277D19248]);
          v17 = objc_msgSend_stringGUID(MEMORY[0x277CCACA8], v14, v15, v16);
          v19 = objc_msgSend_initWithInputURL_outputURL_identifier_operation_delegate_(v13, v18, transfer, 0, v17, 0, self);
          objc_msgSend__mapCopier_toBlock_(self, v20, v19, block);
          if (IMOSLoggingEnabled())
          {
            v24 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              v30 = 138412290;
              transferCopy3 = transfer;
              _os_log_impl(&dword_254879000, v24, OS_LOG_TYPE_INFO, "Starting compression for URL: %@", &v30, 0xCu);
            }
          }

          objc_msgSend_start(v19, v21, v22, v23);
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v28 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
            {
              v30 = 138412290;
              transferCopy3 = transfer;
              _os_log_impl(&dword_254879000, v28, OS_LOG_TYPE_INFO, "URL supplied (%@) is not a directory, marking as not needed", &v30, 0xCu);
            }
          }

          (*(block + 2))(block, transfer, transfer, 0, 1, 0);
        }
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v27 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            v30 = 138412290;
            transferCopy3 = transfer;
            _os_log_impl(&dword_254879000, v27, OS_LOG_TYPE_INFO, "File doesn't exist at source path (%@), failing compression", &v30, 0xCu);
          }
        }

        (*(block + 2))(block, transfer, transfer, 0, 0, 0);
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v26 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          LOWORD(v30) = 0;
          _os_log_impl(&dword_254879000, v26, OS_LOG_TYPE_INFO, "No transfer URL supplied, failing", &v30, 2u);
        }
      }

      (*(block + 2))(block, 0, 0, 0, 0, 0);
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      LOWORD(v30) = 0;
      _os_log_impl(&dword_254879000, v25, OS_LOG_TYPE_INFO, "No input block for transfer URL, failing", &v30, 2u);
    }
  }
}

- (void)fileCopierDidStart:(id)start
{
  v12 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v8 = 138412546;
      startCopy = start;
      v10 = 2112;
      v11 = objc_msgSend_inputURL(start, v5, v6, v7);
      _os_log_impl(&dword_254879000, v4, OS_LOG_TYPE_INFO, "Copier started: %@  (URL: %@)", &v8, 0x16u);
    }
  }
}

- (void)fileCopierDidFinish:(id)finish
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend__blockForCopier_(self, a2, finish, v3);
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v36 = 138412546;
      finishCopy = finish;
      v38 = 2112;
      v39 = objc_msgSend_inputURL(finish, v8, v9, v10);
      _os_log_impl(&dword_254879000, v7, OS_LOG_TYPE_INFO, "Copier completed: %@  (URL: %@)", &v36, 0x16u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v15 = objc_msgSend_inputURL(finish, v12, v13, v14);
      v36 = 138412290;
      finishCopy = v15;
      _os_log_impl(&dword_254879000, v11, OS_LOG_TYPE_INFO, "    Input URL: %@", &v36, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v20 = objc_msgSend_outputURL(finish, v17, v18, v19);
      v36 = 138412290;
      finishCopy = v20;
      _os_log_impl(&dword_254879000, v16, OS_LOG_TYPE_INFO, "   Output URL: %@", &v36, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = objc_msgSend_didErrorOccur(finish, v21, v22, v23);
      v26 = @"YES";
      if (v25)
      {
        v26 = @"NO";
      }

      v36 = 138412290;
      finishCopy = v26;
      _os_log_impl(&dword_254879000, v24, OS_LOG_TYPE_INFO, "      Success: %@", &v36, 0xCu);
    }
  }

  if (v6)
  {
    v27 = objc_msgSend_inputURL(finish, v21, v22, v23);
    v31 = objc_msgSend_outputURL(finish, v28, v29, v30);
    v35 = objc_msgSend_didErrorOccur(finish, v32, v33, v34);
    (*(v6 + 16))(v6, v27, v31, 0, v35 ^ 1u, 1);
  }

  objc_msgSend__unmapCopier_(self, v21, finish, v23);
}

@end