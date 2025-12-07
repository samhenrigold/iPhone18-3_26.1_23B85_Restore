@interface SVXAudioSessionAssertion
- (SVXAudioSessionAssertion)initWithReason:(id)reason audioSessionID:(unsigned int)d taskTracker:(id)tracker relinquishHandler:(id)handler;
- (id)description;
- (void)dealloc;
- (void)relinquish;
@end

@implementation SVXAudioSessionAssertion

- (void)relinquish
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[SVXAudioSessionAssertion relinquish]";
    v7 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_2695B9000, v3, OS_LOG_TYPE_INFO, "%s %@", &v5, 0x16u);
  }

  taskTracker = self->_taskTracker;
  self->_taskTracker = 0;

  [(AFSafetyBlock *)self->_relinquishHandler invokeWithSignal:0];
}

- (SVXAudioSessionAssertion)initWithReason:(id)reason audioSessionID:(unsigned int)d taskTracker:(id)tracker relinquishHandler:(id)handler
{
  v28 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  trackerCopy = tracker;
  handlerCopy = handler;
  v23.receiver = self;
  v23.super_class = SVXAudioSessionAssertion;
  v13 = [(SVXAudioSessionAssertion *)&v23 init];
  if (v13)
  {
    v14 = [reasonCopy copy];
    reason = v13->_reason;
    v13->_reason = v14;

    v13->_audioSessionID = d;
    objc_storeStrong(&v13->_taskTracker, tracker);
    v16 = objc_alloc(MEMORY[0x277CEF380]);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __88__SVXAudioSessionAssertion_initWithReason_audioSessionID_taskTracker_relinquishHandler___block_invoke;
    v21[3] = &unk_279C68BA0;
    v22 = handlerCopy;
    v17 = [v16 initWithBlock:v21];
    relinquishHandler = v13->_relinquishHandler;
    v13->_relinquishHandler = v17;

    v19 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v25 = "[SVXAudioSessionAssertion initWithReason:audioSessionID:taskTracker:relinquishHandler:]";
      v26 = 2112;
      v27 = v13;
      _os_log_impl(&dword_2695B9000, v19, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
    }
  }

  return v13;
}

uint64_t __88__SVXAudioSessionAssertion_initWithReason_audioSessionID_taskTracker_relinquishHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  if (self->_taskTracker)
  {
    v3 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v6 = "[SVXAudioSessionAssertion dealloc]";
      v7 = 2112;
      selfCopy = self;
      _os_log_error_impl(&dword_2695B9000, v3, OS_LOG_TYPE_ERROR, "%s %@ is released without explicitly calling -relinquish.", buf, 0x16u);
    }
  }

  [(AFSafetyBlock *)self->_relinquishHandler invokeWithSignal:-1];
  v4.receiver = self;
  v4.super_class = SVXAudioSessionAssertion;
  [(SVXAudioSessionAssertion *)&v4 dealloc];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v7.receiver = self;
  v7.super_class = SVXAudioSessionAssertion;
  v4 = [(SVXAudioSessionAssertion *)&v7 description];
  v5 = [v3 initWithFormat:@"%@ {reason = %@, audioSessionID = %lu, taskTracker = %@}", v4, self->_reason, self->_audioSessionID, self->_taskTracker];

  return v5;
}

@end