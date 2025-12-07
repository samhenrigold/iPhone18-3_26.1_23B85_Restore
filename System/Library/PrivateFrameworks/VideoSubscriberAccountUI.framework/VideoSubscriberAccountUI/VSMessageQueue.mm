@interface VSMessageQueue
- (VSMessageQueue)init;
- (VSMessageQueueDelegate)delegate;
- (id)removeAllMessages;
- (void)addMessage:(id)message;
- (void)setDelegate:(id)delegate;
@end

@implementation VSMessageQueue

- (VSMessageQueue)init
{
  v6.receiver = self;
  v6.super_class = VSMessageQueue;
  v2 = [(VSMessageQueue *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    messages = v2->_messages;
    v2->_messages = v3;
  }

  return v2;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_delegate, delegateCopy);
  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_270DD4000, v5, OS_LOG_TYPE_DEFAULT, "Will notify new delegate of messages.", v6, 2u);
  }

  [delegateCopy didAddMessagesToMessageQueue:self];
}

- (void)addMessage:(id)message
{
  v12 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = messageCopy;
    v10 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_270DD4000, v5, OS_LOG_TYPE_DEFAULT, "Will add message %@ to queue %@", &v8, 0x16u);
  }

  messages = [(VSMessageQueue *)self messages];
  [messages addObject:messageCopy];

  delegate = [(VSMessageQueue *)self delegate];
  [delegate didAddMessagesToMessageQueue:self];
}

- (id)removeAllMessages
{
  messages = [(VSMessageQueue *)self messages];
  v3 = [messages copy];
  [messages removeAllObjects];

  return v3;
}

- (VSMessageQueueDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end