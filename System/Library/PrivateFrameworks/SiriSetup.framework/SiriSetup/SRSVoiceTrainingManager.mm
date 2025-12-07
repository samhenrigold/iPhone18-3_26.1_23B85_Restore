@interface SRSVoiceTrainingManager
- (SRSTrainingManagerDelegate)delegate;
- (SRSVoiceTrainingManager)initWithLanguageCode:(id)code;
- (SRSVoiceTrainingManager)initWithLanguageCode:(id)code withSharedUserId:(id)id;
- (int)convertToAudioTone:(int64_t)tone;
- (int64_t)convertStatus:(int)status;
- (void)VTUITrainingManagerFeedLevel:(float)level;
- (void)getAudioSessionID:(id)d;
- (void)playSoundsEffect:(int64_t)effect;
- (void)setRecordingStartHostTime:(unint64_t)time;
- (void)trainUtterance:(int64_t)utterance shouldUseASR:(BOOL)r completion:(id)completion;
- (void)trainUtterance:(int64_t)utterance shouldUseASR:(BOOL)r loggingUUID:(id)d completion:(id)completion;
@end

@implementation SRSVoiceTrainingManager

- (SRSVoiceTrainingManager)initWithLanguageCode:(id)code withSharedUserId:(id)id
{
  codeCopy = code;
  idCopy = id;
  v12.receiver = self;
  v12.super_class = SRSVoiceTrainingManager;
  v8 = [(SRSVoiceTrainingManager *)&v12 init];
  if (v8)
  {
    v9 = [MEMORY[0x277D653E0] trainingManagerWithLocaleID:codeCopy withAppDomain:*MEMORY[0x277D65458] withSiriSharedUserId:idCopy];
    trainingManager = v8->_trainingManager;
    v8->_trainingManager = v9;

    [(SSRVTUITrainingManager *)v8->_trainingManager setDelegate:v8];
  }

  return v8;
}

- (SRSVoiceTrainingManager)initWithLanguageCode:(id)code
{
  codeCopy = code;
  v9.receiver = self;
  v9.super_class = SRSVoiceTrainingManager;
  v5 = [(SRSVoiceTrainingManager *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x277D653E0] trainingManagerWithLocaleID:codeCopy withAppDomain:*MEMORY[0x277D65458]];
    trainingManager = v5->_trainingManager;
    v5->_trainingManager = v6;

    [(SSRVTUITrainingManager *)v5->_trainingManager setDelegate:v5];
  }

  return v5;
}

- (void)trainUtterance:(int64_t)utterance shouldUseASR:(BOOL)r completion:(id)completion
{
  rCopy = r;
  completionCopy = completion;
  trainingManager = self->_trainingManager;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__SRSVoiceTrainingManager_trainUtterance_shouldUseASR_completion___block_invoke;
  v11[3] = &unk_279C4A0B0;
  v11[4] = self;
  v12 = completionCopy;
  v10 = completionCopy;
  [(SSRVTUITrainingManager *)trainingManager trainUtterance:utterance shouldUseASR:rCopy completion:v11];
}

uint64_t __66__SRSVoiceTrainingManager_trainUtterance_shouldUseASR_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) convertStatus:?];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)trainUtterance:(int64_t)utterance shouldUseASR:(BOOL)r loggingUUID:(id)d completion:(id)completion
{
  rCopy = r;
  completionCopy = completion;
  trainingManager = self->_trainingManager;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __78__SRSVoiceTrainingManager_trainUtterance_shouldUseASR_loggingUUID_completion___block_invoke;
  v13[3] = &unk_279C4A0D8;
  v13[4] = self;
  v14 = completionCopy;
  v12 = completionCopy;
  [(SSRVTUITrainingManager *)trainingManager trainUtterance:utterance shouldUseASR:rCopy mhUUID:d completionWithResult:v13];
}

uint64_t __78__SRSVoiceTrainingManager_trainUtterance_shouldUseASR_loggingUUID_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 convertStatus:{objc_msgSend(v6, "sessionStatus")}];
  v8 = *(a1 + 40);
  v9 = [v6 sessionId];

  v10 = *(v8 + 16);

  return v10(v8, v9, v7, a3);
}

- (void)playSoundsEffect:(int64_t)effect
{
  trainingManager = self->_trainingManager;
  v4 = [(SRSVoiceTrainingManager *)self convertToAudioTone:effect];

  [(SSRVTUITrainingManager *)trainingManager playSoundEffectWithAudioTone:v4];
}

- (void)getAudioSessionID:(id)d
{
  dCopy = d;
  v5 = SRSLog(dCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_269002000, v5, OS_LOG_TYPE_INFO, "Fetching audio session.", buf, 2u);
  }

  trainingManager = self->_trainingManager;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__SRSVoiceTrainingManager_getAudioSessionID___block_invoke;
  v8[3] = &unk_279C4A100;
  v9 = dCopy;
  v7 = dCopy;
  [(SSRVTUITrainingManager *)trainingManager getAudioSessionID:v8];
}

uint64_t __45__SRSVoiceTrainingManager_getAudioSessionID___block_invoke(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = SRSLog(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&dword_269002000, v4, OS_LOG_TYPE_INFO, "Fetched audio session [%i]", v6, 8u);
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)setRecordingStartHostTime:(unint64_t)time
{
  v5 = objc_opt_respondsToSelector();
  if (v5)
  {
    trainingManager = self->_trainingManager;

    [(SSRVTUITrainingManager *)trainingManager setRecordingStartHostTime:time];
  }

  else
  {
    v7 = SRSLog(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SRSVoiceTrainingManager setRecordingStartHostTime:v7];
    }
  }
}

- (void)VTUITrainingManagerFeedLevel:(float)level
{
  delegate = [(SRSVoiceTrainingManager *)self delegate];
  *&v4 = level;
  [delegate audioLevelDidChange:v4];
}

- (int64_t)convertStatus:(int)status
{
  v3 = (status - 1);
  if (v3 < 7)
  {
    return v3 + 1;
  }

  else
  {
    return 0;
  }
}

- (int)convertToAudioTone:(int64_t)tone
{
  if ((tone + 1) > 6)
  {
    return 6;
  }

  else
  {
    return dword_269059CF8[tone + 1];
  }
}

- (SRSTrainingManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end