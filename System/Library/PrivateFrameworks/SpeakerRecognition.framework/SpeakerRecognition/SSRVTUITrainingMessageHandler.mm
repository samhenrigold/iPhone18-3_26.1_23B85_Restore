@interface SSRVTUITrainingMessageHandler
- (SSRVTUITrainingMessageHandler)initWithAudioProvidingSelector:(id)selector;
- (void)audioSourceWithCompletion:(id)completion;
- (void)cancelTrainingViaXPCForID:(int64_t)d;
- (void)cleanupViaXPCWithCompletion:(id)completion;
- (void)playSoundEffectWithAudioTone:(int)tone;
- (void)setupWithLocaleID:(id)d appDomain:(id)domain siriSharedUserId:(id)id;
- (void)trainUtteranceViaXPC:(int64_t)c shouldUseASR:(BOOL)r completion:(id)completion;
- (void)trainUtteranceViaXPC:(int64_t)c shouldUseASR:(BOOL)r mhUUID:(id)d completionWithResult:(id)result;
- (void)voiceProfileWithCompletion:(id)completion;
- (void)vtuiTrainingXPCDisconnected;
@end

@implementation SSRVTUITrainingMessageHandler

- (void)audioSourceWithCompletion:(id)completion
{
  v11 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  audioSource = [(SSRVTUITrainingManager *)self->_trainingManager audioSource];
  v6 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SSRVTUITrainingMessageHandler audioSourceWithCompletion:]";
    v9 = 2048;
    v10 = audioSource;
    _os_log_impl(&dword_225E12000, v6, OS_LOG_TYPE_DEFAULT, "%s audioSource : %lu", &v7, 0x16u);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, audioSource);
  }
}

- (void)voiceProfileWithCompletion:(id)completion
{
  v9 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[SSRVTUITrainingMessageHandler voiceProfileWithCompletion:]";
    _os_log_impl(&dword_225E12000, v5, OS_LOG_TYPE_DEFAULT, "%s ", &v7, 0xCu);
  }

  voiceProfile = [(SSRVTUITrainingManager *)self->_trainingManager voiceProfile];
  if (completionCopy)
  {
    completionCopy[2](completionCopy, voiceProfile);
  }
}

- (void)cancelTrainingViaXPCForID:(int64_t)d
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[SSRVTUITrainingMessageHandler cancelTrainingViaXPCForID:]";
    _os_log_impl(&dword_225E12000, v5, OS_LOG_TYPE_DEFAULT, "%s ", &v6, 0xCu);
  }

  [(SSRVTUITrainingManager *)self->_trainingManager cancelTrainingForID:d];
}

- (void)playSoundEffectWithAudioTone:(int)tone
{
  v3 = *&tone;
  v10 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[SSRVTUITrainingMessageHandler playSoundEffectWithAudioTone:]";
    v8 = 1024;
    v9 = v3;
    _os_log_impl(&dword_225E12000, v5, OS_LOG_TYPE_DEFAULT, "%s Audio tone: %d", &v6, 0x12u);
  }

  [(SSRVTUITrainingManager *)self->_trainingManager playSoundEffectWithAudioTone:v3];
}

- (void)trainUtteranceViaXPC:(int64_t)c shouldUseASR:(BOOL)r mhUUID:(id)d completionWithResult:(id)result
{
  rCopy = r;
  v21 = *MEMORY[0x277D85DE8];
  dCopy = d;
  resultCopy = result;
  v12 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315906;
    v14 = "[SSRVTUITrainingMessageHandler trainUtteranceViaXPC:shouldUseASR:mhUUID:completionWithResult:]";
    v15 = 2048;
    cCopy = c;
    v17 = 1024;
    v18 = rCopy;
    v19 = 2112;
    v20 = dCopy;
    _os_log_impl(&dword_225E12000, v12, OS_LOG_TYPE_DEFAULT, "%s utterance: %ld, shouldUseASR : %d, mhuuid : %@", &v13, 0x26u);
  }

  [(SSRVTUITrainingManager *)self->_trainingManager trainUtterance:c shouldUseASR:rCopy mhUUID:dCopy completionWithResult:resultCopy];
}

- (void)trainUtteranceViaXPC:(int64_t)c shouldUseASR:(BOOL)r completion:(id)completion
{
  rCopy = r;
  v16 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v9 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315650;
    v11 = "[SSRVTUITrainingMessageHandler trainUtteranceViaXPC:shouldUseASR:completion:]";
    v12 = 2048;
    cCopy = c;
    v14 = 1024;
    v15 = rCopy;
    _os_log_impl(&dword_225E12000, v9, OS_LOG_TYPE_DEFAULT, "%s utterance: %ld, shouldUseASR : %d", &v10, 0x1Cu);
  }

  [(SSRVTUITrainingManager *)self->_trainingManager trainUtterance:c shouldUseASR:rCopy completion:completionCopy];
}

- (void)cleanupViaXPCWithCompletion:(id)completion
{
  v9 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[SSRVTUITrainingMessageHandler cleanupViaXPCWithCompletion:]";
    _os_log_impl(&dword_225E12000, v5, OS_LOG_TYPE_DEFAULT, "%s ", &v7, 0xCu);
  }

  v6 = [(SSRVTUITrainingManager *)self->_trainingManager cleanupWithCompletion:completionCopy];
}

- (void)vtuiTrainingXPCDisconnected
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[SSRVTUITrainingMessageHandler vtuiTrainingXPCDisconnected]";
    _os_log_impl(&dword_225E12000, v3, OS_LOG_TYPE_DEFAULT, "%s end training and clean up", &v5, 0xCu);
  }

  [(SSRVTUITrainingManager *)self->_trainingManager cancelTrainingForID:0];
  v4 = [(SSRVTUITrainingManager *)self->_trainingManager cleanupWithCompletion:0];
}

- (void)setupWithLocaleID:(id)d appDomain:(id)domain siriSharedUserId:(id)id
{
  v31 = *MEMORY[0x277D85DE8];
  dCopy = d;
  domainCopy = domain;
  idCopy = id;
  v11 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v24 = "[SSRVTUITrainingMessageHandler setupWithLocaleID:appDomain:siriSharedUserId:]";
    v25 = 2114;
    v26 = dCopy;
    v27 = 2114;
    v28 = domainCopy;
    v29 = 2112;
    v30 = idCopy;
    _os_log_impl(&dword_225E12000, v11, OS_LOG_TYPE_DEFAULT, "%s localeIdentifier : %{public}@, appDomain : %{public}@, siriSharedUserId: %@", buf, 0x2Au);
  }

  objc_storeStrong(&self->_siriSharedUserId, id);
  trainingManager = self->_trainingManager;
  if (trainingManager)
  {
    [(SSRVTUITrainingManager *)trainingManager setDelegate:0];
    v13 = dispatch_group_create();
    dispatch_group_enter(v13);
    v14 = self->_trainingManager;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __78__SSRVTUITrainingMessageHandler_setupWithLocaleID_appDomain_siriSharedUserId___block_invoke;
    v21[3] = &unk_2785797A8;
    v22 = v13;
    v15 = v13;
    v16 = [(SSRVTUITrainingManager *)v14 cleanupWithCompletion:v21];
    v17 = dispatch_time(0, 5000000000);
    dispatch_group_wait(v15, v17);

    v18 = self->_trainingManager;
  }

  else
  {
    v18 = 0;
  }

  self->_trainingManager = 0;

  v19 = [[SSRVTUITrainingManager alloc] initWithLocaleIdentifier:dCopy withAppDomain:domainCopy withSiriSharedUserId:self->_siriSharedUserId withAudioProviderSelector:self->_audioProviderSelector shouldTrainViaXPC:0];
  v20 = self->_trainingManager;
  self->_trainingManager = v19;

  [(SSRVTUITrainingManager *)self->_trainingManager setDelegate:self];
}

- (SSRVTUITrainingMessageHandler)initWithAudioProvidingSelector:(id)selector
{
  selectorCopy = selector;
  v9.receiver = self;
  v9.super_class = SSRVTUITrainingMessageHandler;
  v6 = [(SSRVTUITrainingMessageHandler *)&v9 init];
  if (v6)
  {
    SSRLogInitIfNeeded();
    trainingManager = v6->_trainingManager;
    v6->_trainingManager = 0;

    objc_storeStrong(&v6->_audioProviderSelector, selector);
  }

  return v6;
}

@end