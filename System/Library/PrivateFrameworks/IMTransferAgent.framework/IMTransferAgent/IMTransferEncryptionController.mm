@interface IMTransferEncryptionController
+ (id)sharedInstance;
- (void)decryptURL:(id)l key:(id)key outputFileName:(id)name completionBlock:(id)block;
- (void)encryptURL:(id)l completionBlock:(id)block;
@end

@implementation IMTransferEncryptionController

+ (id)sharedInstance
{
  if (qword_28112DA08 != -1)
  {
    sub_2548680DC();
  }

  v3 = qword_28112D9E0;

  return v3;
}

- (void)encryptURL:(id)l completionBlock:(id)block
{
  v11 = *MEMORY[0x277D85DE8];
  lCopy = l;
  blockCopy = block;
  v7 = blockCopy;
  if (blockCopy)
  {
    if (lCopy)
    {
      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v9 = 138412290;
          v10 = lCopy;
          _os_log_impl(&dword_254850000, v8, OS_LOG_TYPE_INFO, "Request to encrypt data at url: %@", &v9, 0xCu);
        }
      }

      [IMTransferEncryptionHelpers encryptURL:lCopy completionBlock:v7];
    }

    else
    {
      (*(blockCopy + 2))(blockCopy, 0, 0, 0, 0, 300);
    }
  }
}

- (void)decryptURL:(id)l key:(id)key outputFileName:(id)name completionBlock:(id)block
{
  v19 = *MEMORY[0x277D85DE8];
  lCopy = l;
  keyCopy = key;
  nameCopy = name;
  blockCopy = block;
  v13 = blockCopy;
  if (blockCopy)
  {
    if (lCopy)
    {
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = 138412546;
          v16 = lCopy;
          v17 = 2112;
          v18 = keyCopy;
          _os_log_impl(&dword_254850000, v14, OS_LOG_TYPE_INFO, "Request to decrypt data at url: %@  with key: %@", &v15, 0x16u);
        }
      }

      [IMTransferEncryptionHelpers decryptURL:lCopy key:keyCopy outputFileName:nameCopy completionBlock:v13];
    }

    else
    {
      (*(blockCopy + 2))(blockCopy, 0, 0, 0, 301);
    }
  }
}

@end