@interface IMTransferAgentDeliveryController
+ (id)sharedInstance;
- (IMTransferAgentDeliveryController)init;
- (void)dealloc;
- (void)sendFTMessage:(id)message completionBlock:(id)block;
@end

@implementation IMTransferAgentDeliveryController

+ (id)sharedInstance
{
  if (qword_28112D9F8 != -1)
  {
    sub_2548680B4();
  }

  v3 = qword_28112D9D0;

  return v3;
}

- (IMTransferAgentDeliveryController)init
{
  v6.receiver = self;
  v6.super_class = IMTransferAgentDeliveryController;
  v2 = [(IMTransferAgentDeliveryController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init([MEMORY[0x277D07DC0] APNSMessageDeliveryClass]);
    messageDelivery = v2->_messageDelivery;
    v2->_messageDelivery = v3;

    [(FTMessageDelivery *)v2->_messageDelivery setMaxConcurrentMessages:2];
  }

  return v2;
}

- (void)dealloc
{
  [(IMTransferAgentDeliveryController *)self setMessageDelivery:0];
  v3.receiver = self;
  v3.super_class = IMTransferAgentDeliveryController;
  [(IMTransferAgentDeliveryController *)&v3 dealloc];
}

- (void)sendFTMessage:(id)message completionBlock:(id)block
{
  v19 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  blockCopy = block;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v18 = messageCopy;
      _os_log_impl(&dword_254850000, v8, OS_LOG_TYPE_INFO, "Sending FTMessage: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v18 = messageCopy;
      _os_log_impl(&dword_254850000, v9, OS_LOG_TYPE_INFO, "send FTMessage: %@", buf, 0xCu);
    }
  }

  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = sub_25485D004;
  v14 = &unk_27978CEF8;
  selfCopy = self;
  v16 = blockCopy;
  v10 = blockCopy;
  [messageCopy setCompletionBlock:&v11];
  [(FTMessageDelivery *)self->_messageDelivery sendMessage:messageCopy, v11, v12, v13, v14, selfCopy];
}

@end