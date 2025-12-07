@interface IMAssistantMessagePlayAudioHandler
- (id)createAudioPlayerWithIdentifier:(id)identifier;
- (void)confirmPlayAudioMessage:(id)message completion:(id)completion;
- (void)handlePlayAudioMessage:(id)message completion:(id)completion;
- (void)imAssistantAudioPlayer:(id)player didUpdateState:(int64_t)state;
- (void)queryAudioMessageURLForIntent:(id)intent completion:(id)completion;
@end

@implementation IMAssistantMessagePlayAudioHandler

- (void)handlePlayAudioMessage:(id)message completion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  completionCopy = completion;
  v8 = IMLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v16 = messageCopy;
    _os_log_impl(&dword_25479E000, v8, OS_LOG_TYPE_INFO, "Performing intent: %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2547B7C58;
  v11[3] = &unk_2797869C8;
  v11[4] = self;
  objc_copyWeak(&v14, buf);
  v9 = messageCopy;
  v12 = v9;
  v10 = completionCopy;
  v13 = v10;
  [(IMAssistantMessagePlayAudioHandler *)self queryAudioMessageURLForIntent:v9 completion:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

- (void)confirmPlayAudioMessage:(id)message completion:(id)completion
{
  v14 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  completionCopy = completion;
  v8 = IMLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v13 = messageCopy;
    _os_log_impl(&dword_25479E000, v8, OS_LOG_TYPE_INFO, "Confirm intent: %@", buf, 0xCu);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2547B7FF0;
  v10[3] = &unk_2797869F0;
  v11 = completionCopy;
  v9 = completionCopy;
  [(IMAssistantMessagePlayAudioHandler *)self queryAudioMessageURLForIntent:messageCopy completion:v10];
}

- (void)queryAudioMessageURLForIntent:(id)intent completion:(id)completion
{
  v12[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  messageIdentifier = [intent messageIdentifier];
  v8 = messageIdentifier;
  if (messageIdentifier)
  {
    v12[0] = messageIdentifier;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_2547B8218;
    v10[3] = &unk_279786A18;
    v11 = completionCopy;
    [(IMAssistantMessageQueryHandler *)self SPIQueryMessagesWithGUIDs:v9 completion:v10];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (id)createAudioPlayerWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[IMAssistantAudioPlayer alloc] initWithDelegate:self identifier:identifierCopy];

  return v5;
}

- (void)imAssistantAudioPlayer:(id)player didUpdateState:(int64_t)state
{
  if (self->_completionHandler)
  {
    v5 = 4;
    if (state == 2)
    {
      v5 = 2;
    }

    if (state == 1)
    {
      v6 = 3;
    }

    else
    {
      v6 = v5;
    }

    v8 = [objc_alloc(MEMORY[0x277CD3EB8]) initWithCode:v6 userActivity:0];
    (*(self->_completionHandler + 2))();
    completionHandler = self->_completionHandler;
    self->_completionHandler = 0;
  }
}

@end