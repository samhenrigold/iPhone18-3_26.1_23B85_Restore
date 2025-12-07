@interface IMTransferAgentIDSInterface
+ (id)sharedInstance;
- (BOOL)_sendIDSMessage:(id)message topic:(id)topic localPath:(id)path;
- (IMTransferAgentIDSInterface)init;
- (void)_handleUploadRequest:(id)request;
- (void)_handleUploadResponse:(id)response;
- (void)_sendUploadRequest:(id)request topic:(id)topic transferID:(id)d sourceAppID:(id)iD allowReauthorize:(BOOL)reauthorize;
- (void)_sendUploadResponse:(id)response topic:(id)topic success:(BOOL)success error:(id)error ownerID:(id)d signature:(id)signature requestURLString:(id)string transferID:(id)self0;
- (void)dealloc;
- (void)decrementTransferCount;
- (void)incrementTransferCount;
- (void)remoteUploadFileRequest:(id)request topic:(id)topic transferID:(id)d sourceAppID:(id)iD completionBlock:(id)block;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context;
@end

@implementation IMTransferAgentIDSInterface

+ (id)sharedInstance
{
  if (qword_28112D9E8 != -1)
  {
    sub_254867A98();
  }

  v3 = qword_28112D9C0;

  return v3;
}

- (IMTransferAgentIDSInterface)init
{
  v12.receiver = self;
  v12.super_class = IMTransferAgentIDSInterface;
  v2 = [(IMTransferAgentIDSInterface *)&v12 init];
  if (v2)
  {
    IMSetEmbeddedTempDirectory();
    v3 = objc_alloc_init(MEMORY[0x277CCAA00]);
    v4 = NSTemporaryDirectory();
    [v3 changeCurrentDirectoryPath:v4];

    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v11 = 0;
        _os_log_impl(&dword_254850000, v5, OS_LOG_TYPE_INFO, "IMTransfer Agent IDS Interface starting", v11, 2u);
      }
    }

    v6 = [objc_alloc(MEMORY[0x277D18778]) initWithService:@"com.apple.private.alloy.idstransfers"];
    idsService = v2->_idsService;
    v2->_idsService = v6;

    v8 = v2->_idsService;
    v9 = im_primary_queue();
    [(IDSService *)v8 addDelegate:v2 queue:v9];
  }

  return v2;
}

- (void)dealloc
{
  [(IDSService *)self->_idsService removeDelegate:self];
  v3.receiver = self;
  v3.super_class = IMTransferAgentIDSInterface;
  [(IMTransferAgentIDSInterface *)&v3 dealloc];
}

- (void)remoteUploadFileRequest:(id)request topic:(id)topic transferID:(id)d sourceAppID:(id)iD completionBlock:(id)block
{
  v28 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  topicCopy = topic;
  dCopy = d;
  iDCopy = iD;
  blockCopy = block;
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v24 = 138412546;
      v25 = requestCopy;
      v26 = 2112;
      v27 = iDCopy;
      _os_log_impl(&dword_254850000, v17, OS_LOG_TYPE_INFO, "Received Request to Remote Upload an Attachment at %@ sourceApp %@", &v24, 0x16u);
    }
  }

  im_assert_primary_queue();
  if (!dCopy)
  {
    dCopy = StringGUID();
  }

  if (!self->_uniqueIDToTransferCompletionBlockMap)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    uniqueIDToTransferCompletionBlockMap = self->_uniqueIDToTransferCompletionBlockMap;
    self->_uniqueIDToTransferCompletionBlockMap = Mutable;
  }

  if (!self->_uniqueIDToFilePathMap)
  {
    v20 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    uniqueIDToFilePathMap = self->_uniqueIDToFilePathMap;
    self->_uniqueIDToFilePathMap = v20;
  }

  v22 = self->_uniqueIDToTransferCompletionBlockMap;
  v23 = MEMORY[0x259C1C440](blockCopy);
  [(NSMutableDictionary *)v22 setObject:v23 forKey:dCopy];

  [(NSMutableDictionary *)self->_uniqueIDToFilePathMap setObject:requestCopy forKey:dCopy];
  [(IMTransferAgentIDSInterface *)self _sendUploadRequest:requestCopy topic:topicCopy transferID:dCopy sourceAppID:iDCopy allowReauthorize:0];
}

- (void)incrementTransferCount
{
  v9 = *MEMORY[0x277D85DE8];
  im_assert_primary_queue();
  *&self->_numTransfers = vadd_s32(*&self->_numTransfers, 0x100000001);
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      numTransfers = self->_numTransfers;
      totalTransfers = self->_totalTransfers;
      v6[0] = 67109376;
      v6[1] = numTransfers;
      v7 = 1024;
      v8 = totalTransfers;
      _os_log_impl(&dword_254850000, v3, OS_LOG_TYPE_INFO, "(Incremented) Transfer Count is now %d, total at %d", v6, 0xEu);
    }
  }
}

- (void)decrementTransferCount
{
  v8 = *MEMORY[0x277D85DE8];
  im_assert_primary_queue();
  --self->_numTransfers;
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      numTransfers = self->_numTransfers;
      *buf = 67109120;
      v7 = numTransfers;
      _os_log_impl(&dword_254850000, v3, OS_LOG_TYPE_INFO, "(Decremented) Transfer Count is now %d", buf, 8u);
    }
  }

  if (self->_numTransfers <= 0)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254850000, v5, OS_LOG_TYPE_INFO, "We Have No More Transfers Remaining, We will shut down in 1 hour", buf, 2u);
      }
    }

    im_dispatch_after_primary_queue();
  }
}

- (void)_sendUploadRequest:(id)request topic:(id)topic transferID:(id)d sourceAppID:(id)iD allowReauthorize:(BOOL)reauthorize
{
  requestCopy = request;
  topicCopy = topic;
  dCopy = d;
  iDCopy = iD;
  im_assert_primary_queue();
  v15 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:requestCopy];
  v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v17 = v15;
  if (v17)
  {
    CFDictionarySetValue(v16, qword_27F611B38, v17);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_254867AAC();
  }

  v18 = topicCopy;
  if (v18)
  {
    CFDictionarySetValue(v16, qword_27F611B48, v18);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_254867B30();
  }

  v19 = dCopy;
  if (v19)
  {
    CFDictionarySetValue(v16, qword_27F611B50, v19);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_254867BB4();
  }

  CFDictionarySetValue(v16, qword_27F611B30, &unk_28669F518);
  if (iDCopy)
  {
    CFDictionarySetValue(v16, qword_27F611B58, iDCopy);
  }

  [(IMTransferAgentIDSInterface *)self _sendIDSMessage:v16 topic:v18 localPath:requestCopy];
}

- (void)_sendUploadResponse:(id)response topic:(id)topic success:(BOOL)success error:(id)error ownerID:(id)d signature:(id)signature requestURLString:(id)string transferID:(id)self0
{
  successCopy = success;
  responseCopy = response;
  dCopy = d;
  signatureCopy = signature;
  stringCopy = string;
  iDCopy = iD;
  topicCopy = topic;
  im_assert_primary_queue();
  v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v22 = responseCopy;
  if (v22)
  {
    CFDictionarySetValue(v21, qword_27F611B68, v22);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_254867C38();
  }

  v23 = [MEMORY[0x277CCABB0] numberWithBool:successCopy];
  if (v23)
  {
    CFDictionarySetValue(v21, qword_27F611B70, v23);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_254867CBC();
  }

  v24 = dCopy;
  if (v24)
  {
    CFDictionarySetValue(v21, qword_27F611B80, v24);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_254867D40();
  }

  v25 = signatureCopy;
  if (v25)
  {
    CFDictionarySetValue(v21, qword_27F611B88, v25);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_254867DC4();
  }

  v26 = stringCopy;
  if (v26)
  {
    CFDictionarySetValue(v21, qword_27F611B90, v26);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_254867E48();
  }

  v27 = iDCopy;
  if (v27)
  {
    CFDictionarySetValue(v21, qword_27F611B50, v27);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_254867BB4();
  }

  CFDictionarySetValue(v21, qword_27F611B30, &unk_28669F530);
  [(IMTransferAgentIDSInterface *)self _sendIDSMessage:v21 topic:topicCopy localPath:v22];

  [(IMTransferAgentIDSInterface *)self decrementTransferCount];
}

- (void)_handleUploadRequest:(id)request
{
  requestCopy = request;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_254850000, v5, OS_LOG_TYPE_INFO, "RECEIVED Remote Attachment IDS Message", buf, 2u);
    }
  }

  im_assert_primary_queue();
  [(IMTransferAgentIDSInterface *)self incrementTransferCount];
  v6 = [requestCopy _dataForKey:qword_27F611B38];
  v7 = [requestCopy _stringForKey:qword_27F611B60];
  v8 = [requestCopy _stringForKey:qword_27F611B48];
  v9 = [requestCopy _stringForKey:qword_27F611B50];
  v10 = [requestCopy _stringForKey:qword_27F611B58];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v12 = [defaultManager im_randomTemporaryFileURLWithFileName:v7];
  path = [v12 path];

  if (v6)
  {
    [v6 writeToFile:path atomically:1];
    v14 = +[IMTransferAgentController sharedInstance];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_254852018;
    v15[3] = &unk_27978CB58;
    v15[4] = self;
    v16 = v8;
    v17 = v9;
    [v14 sendFilePath:path encrypt:0 topic:v16 transferID:v17 sourceAppID:v10 userInfo:0 progressBlock:0 completionBlock:v15];
  }
}

- (void)_handleUploadResponse:(id)response
{
  responseCopy = response;
  im_assert_primary_queue();
  v5 = [responseCopy _stringForKey:qword_27F611B50];
  v6 = [responseCopy objectForKey:qword_27F611B70];
  bOOLValue = [v6 BOOLValue];

  v8 = [responseCopy _stringForKey:qword_27F611B80];
  v9 = [responseCopy objectForKey:qword_27F611B88];
  v10 = [responseCopy _stringForKey:qword_27F611B90];
  v11 = [(NSMutableDictionary *)self->_uniqueIDToTransferCompletionBlockMap objectForKey:v5];
  v12 = [(NSMutableDictionary *)self->_uniqueIDToFilePathMap objectForKey:v5];
  v13 = IMOSLoggingEnabled();
  if (v11)
  {
    if (v13)
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254850000, v14, OS_LOG_TYPE_INFO, " Found completion block for attachment", buf, 2u);
      }
    }

    if (v12)
    {
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      [defaultManager attributesOfItemAtPath:v12 error:0];
      v27 = v11;
      v28 = v5;
      v16 = v12;
      v17 = v10;
      v18 = v9;
      v20 = v19 = v8;

      [v20 objectForKeyedSubscript:*MEMORY[0x277CCA1C0]];
      v22 = v21 = bOOLValue;
      unsignedIntegerValue = [v22 unsignedIntegerValue];

      bOOLValue = v21;
      v8 = v19;
      v9 = v18;
      v10 = v17;
      v12 = v16;
      v11 = v27;
      v5 = v28;
    }

    else
    {
      unsignedIntegerValue = 0;
    }

    (v11)[2](v11, bOOLValue, v12, unsignedIntegerValue, v8, v9, v10, 0, 0);
    [(NSMutableDictionary *)self->_uniqueIDToTransferCompletionBlockMap removeObjectForKey:v5];
    [(NSMutableDictionary *)self->_uniqueIDToFilePathMap removeObjectForKey:v5];
  }

  else if (v13)
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *v29 = 0;
      _os_log_impl(&dword_254850000, v24, OS_LOG_TYPE_INFO, " No completion block for attachment found", v29, 2u);
    }
  }

  if (![(NSMutableDictionary *)self->_uniqueIDToTransferCompletionBlockMap count])
  {
    uniqueIDToTransferCompletionBlockMap = self->_uniqueIDToTransferCompletionBlockMap;
    self->_uniqueIDToTransferCompletionBlockMap = 0;
  }

  if (![(NSMutableDictionary *)self->_uniqueIDToFilePathMap count])
  {
    uniqueIDToFilePathMap = self->_uniqueIDToFilePathMap;
    self->_uniqueIDToFilePathMap = 0;
  }
}

- (BOOL)_sendIDSMessage:(id)message topic:(id)topic localPath:(id)path
{
  v33 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  topicCopy = topic;
  pathCopy = path;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v26 = messageCopy;
      _os_log_impl(&dword_254850000, v11, OS_LOG_TYPE_INFO, " SENDING Remote Attachment IDS Message with content %@", buf, 0xCu);
    }
  }

  im_assert_primary_queue();
  v12 = JWEncodeDictionary();
  _CUTCopyGzippedData = [v12 _CUTCopyGzippedData];
  idsService = self->_idsService;
  v15 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277D187E8]];
  v23 = 0;
  v24 = 0;
  v16 = [(IDSService *)idsService sendData:_CUTCopyGzippedData toDestinations:v15 priority:300 options:0 identifier:&v24 error:&v23];
  v17 = v24;
  v18 = v23;

  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = @"NO";
      *buf = 138413058;
      v26 = v17;
      if (v16)
      {
        v20 = @"YES";
      }

      v27 = 2112;
      v28 = v18;
      v29 = 2112;
      v30 = messageCopy;
      v31 = 2112;
      v32 = v20;
      _os_log_impl(&dword_254850000, v19, OS_LOG_TYPE_INFO, "Sending message to local account (identifier %@)  (error %@)  (messageDict %@) success: %@", buf, 0x2Au);
    }
  }

  if (v16 && IMTransferRequestIsForMessages(topicCopy, pathCopy))
  {
    lastPathComponent = [pathCopy lastPathComponent];
    IMGreenTeaAttachmentTransmitLoggingFormat();
  }

  return v16;
}

- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context
{
  v33 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accountCopy = account;
  dataCopy = data;
  dCopy = d;
  contextCopy = context;
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v23 = 138413314;
      v24 = serviceCopy;
      v25 = 2112;
      v26 = accountCopy;
      v27 = 2112;
      v28 = dataCopy;
      v29 = 2112;
      v30 = dCopy;
      v31 = 2112;
      v32 = contextCopy;
      _os_log_impl(&dword_254850000, v17, OS_LOG_TYPE_INFO, "incomingData on service %@, account %@ data %@ fromID %@ context %@", &v23, 0x34u);
    }
  }

  im_assert_primary_queue();
  _CUTOptionallyDecompressData = [dataCopy _CUTOptionallyDecompressData];
  v19 = JWDecodeDictionary();
  v20 = [v19 objectForKey:qword_27F611B30];
  unsignedIntValue = [v20 unsignedIntValue];

  if (unsignedIntValue == 2)
  {
    [(IMTransferAgentIDSInterface *)self _handleUploadResponse:v19];
  }

  else if (unsignedIntValue == 1)
  {
    [(IMTransferAgentIDSInterface *)self _handleUploadRequest:v19];
  }

  else if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = 67109120;
      LODWORD(v24) = unsignedIntValue;
      _os_log_impl(&dword_254850000, v22, OS_LOG_TYPE_INFO, "Unknown incoming IDS message for remote attachments with command %d, ignoring...", &v23, 8u);
    }
  }
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  v21 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accountCopy = account;
  identifierCopy = identifier;
  errorCopy = error;
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = @"NO";
      if (successCopy)
      {
        v16 = @"YES";
      }

      v17 = 138412546;
      v18 = identifierCopy;
      v19 = 2112;
      v20 = v16;
      _os_log_impl(&dword_254850000, v15, OS_LOG_TYPE_INFO, "Sent message with identifier %@ success %@", &v17, 0x16u);
    }
  }

  im_assert_primary_queue();
}

@end