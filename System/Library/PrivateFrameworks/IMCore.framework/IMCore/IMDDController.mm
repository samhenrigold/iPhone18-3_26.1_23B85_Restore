@interface IMDDController
+ (id)allSupportedDDAttributesKeys;
+ (id)sharedInstance;
- (BOOL)_scanAttributedStringWithMessage:(id)message attributedString:(id)string plainText:(id)text;
- (BOOL)_scanMessageUsingScanner:(id)scanner attributedString:(id)string;
- (IMDDController)init;
- (void)_processLinkInAttributedString:(id)string;
- (void)scanMessage:(id)message completionBlock:(id)block;
- (void)scanMessage:(id)message outgoing:(BOOL)outgoing waitUntilDone:(BOOL)done completionBlock:(id)block;
@end

@implementation IMDDController

+ (id)sharedInstance
{
  if (qword_1ED767958 != -1)
  {
    sub_1A84E2840();
  }

  v3 = qword_1ED7678F8;

  return v3;
}

- (IMDDController)init
{
  v6.receiver = self;
  v6.super_class = IMDDController;
  v2 = [(IMDDController *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.IMDDScannerQueue", 0);
    scannerQueue = v2->_scannerQueue;
    v2->_scannerQueue = v3;
  }

  return v2;
}

- (void)scanMessage:(id)message completionBlock:(id)block
{
  blockCopy = block;
  messageCopy = message;
  [(IMDDController *)self scanMessage:messageCopy outgoing:0 waitUntilDone:IMIsRunningInMessages() completionBlock:blockCopy];
}

- (BOOL)_scanMessageUsingScanner:(id)scanner attributedString:(id)string
{
  scannerCopy = scanner;
  stringCopy = string;
  if (stringCopy)
  {
    text = [scannerCopy text];
    string = [text string];

    if (string)
    {
      if ([(IMDDController *)self _scanAttributedStringWithMessage:scannerCopy attributedString:stringCopy plainText:string])
      {
        v10 = 1;
LABEL_9:

        goto LABEL_10;
      }

      if ([stringCopy attribute:*MEMORY[0x1E69A5FB0] existsInRange:{0, objc_msgSend(stringCopy, "length")}])
      {
        [(IMDDController *)self _processLinkInAttributedString:stringCopy];
        string2 = [stringCopy string];
        v10 = [(IMDDController *)self _scanAttributedStringWithMessage:scannerCopy attributedString:stringCopy plainText:string2];

        goto LABEL_9;
      }
    }

    v10 = 0;
    goto LABEL_9;
  }

  v10 = 0;
LABEL_10:

  return v10;
}

- (void)_processLinkInAttributedString:(id)string
{
  stringCopy = string;
  v4 = *MEMORY[0x1E69A5FB0];
  v5 = [stringCopy length];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A839A954;
  v7[3] = &unk_1E7812DF8;
  v8 = stringCopy;
  v6 = stringCopy;
  [v6 enumerateAttribute:v4 inRange:0 options:v5 usingBlock:{0, v7}];
}

- (BOOL)_scanAttributedStringWithMessage:(id)message attributedString:(id)string plainText:(id)text
{
  messageCopy = message;
  stringCopy = string;
  textCopy = text;
  guid = [messageCopy guid];
  sender = [messageCopy sender];
  v12 = [sender ID];
  time = [messageCopy time];
  [messageCopy isFromMe];
  v14 = IMDDScanAttributedStringWithContext();

  return v14;
}

- (void)scanMessage:(id)message outgoing:(BOOL)outgoing waitUntilDone:(BOOL)done completionBlock:(id)block
{
  doneCopy = done;
  v25 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  blockCopy = block;
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v24 = messageCopy;
      _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Request to scan message: %@", buf, 0xCu);
    }
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1A839ADB4;
  v17[3] = &unk_1E7813F20;
  v13 = messageCopy;
  outgoingCopy = outgoing;
  v18 = v13;
  selfCopy = self;
  v22 = doneCopy;
  v14 = blockCopy;
  v20 = v14;
  v15 = _Block_copy(v17);
  scannerQueue = self->_scannerQueue;
  if (doneCopy)
  {
    dispatch_sync(scannerQueue, v15);
  }

  else
  {
    dispatch_async(scannerQueue, v15);
  }
}

+ (id)allSupportedDDAttributesKeys
{
  if (qword_1EB2E9100 != -1)
  {
    sub_1A84E2854();
  }

  v3 = qword_1EB2E9108;

  return v3;
}

@end