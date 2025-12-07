@interface IMAssistantMessagePlayMessageSoundHandler
- (id)playSendSoundForMessageGUID:(id)d;
- (void)handlePlayMessageSound:(id)sound completion:(id)completion;
@end

@implementation IMAssistantMessagePlayMessageSoundHandler

- (void)handlePlayMessageSound:(id)sound completion:(id)completion
{
  v16 = *MEMORY[0x277D85DE8];
  soundCopy = sound;
  completionCopy = completion;
  v8 = IMLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v14 = 138412290;
    v15 = soundCopy;
    _os_log_impl(&dword_25479E000, v8, OS_LOG_TYPE_INFO, "Handling INPlayMessageSoundIntent: %@", &v14, 0xCu);
  }

  messageIdentifier = [soundCopy messageIdentifier];
  soundType = [soundCopy soundType];
  if (!soundType)
  {
    v11 = [objc_alloc(MEMORY[0x277CD3EE0]) initWithCode:4 userActivity:0];
    goto LABEL_7;
  }

  if (soundType == 1)
  {
    v11 = [(IMAssistantMessagePlayMessageSoundHandler *)self playSendSoundForMessageGUID:messageIdentifier];
LABEL_7:
    v12 = v11;
    goto LABEL_9;
  }

  v12 = 0;
LABEL_9:
  v13 = IMLogHandleForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = 138412290;
    v15 = v12;
    _os_log_impl(&dword_25479E000, v13, OS_LOG_TYPE_INFO, "Calling completion with INPlayMessageSoundIntentResponse: %@", &v14, 0xCu);
  }

  completionCopy[2](completionCopy, v12);
}

- (id)playSendSoundForMessageGUID:(id)d
{
  v11 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v4 = IMLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = dCopy;
    _os_log_impl(&dword_25479E000, v4, OS_LOG_TYPE_INFO, "Playing send sounds for messageGUID: %@", &v9, 0xCu);
  }

  mEMORY[0x277D18D68] = [MEMORY[0x277D18D68] sharedController];
  remoteDaemon = [mEMORY[0x277D18D68] remoteDaemon];
  [remoteDaemon playSendSoundForMessageGUID:dCopy callerOrigin:1];

  v7 = [objc_alloc(MEMORY[0x277CD3EE0]) initWithCode:3 userActivity:0];

  return v7;
}

@end