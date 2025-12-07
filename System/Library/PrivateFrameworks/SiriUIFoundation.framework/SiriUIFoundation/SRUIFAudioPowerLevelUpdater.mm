@interface SRUIFAudioPowerLevelUpdater
- (SRUIFAudioPowerLevelUpdater)initWithDelegate:(id)delegate;
- (SRUIFAudioPowerLevelUpdaterDelegate)_delegate;
- (void)audioPowerDidUpdateWithType:(unint64_t)type averagePower:(float)power peakPower:(float)peakPower;
- (void)dealloc;
- (void)sessionStateDidChangeTo:(int64_t)to isAttending:(BOOL)attending;
- (void)startObservingUpdates;
- (void)stopObservingUpdates;
@end

@implementation SRUIFAudioPowerLevelUpdater

- (void)startObservingUpdates
{
  inputAudioPowerUpdater = self->_inputAudioPowerUpdater;
  if (!inputAudioPowerUpdater)
  {
    v4 = objc_alloc(MEMORY[0x277D01638]);
    v5 = [v4 initWithQueue:MEMORY[0x277D85CD0] frequency:1 delegate:self];
    v6 = self->_inputAudioPowerUpdater;
    self->_inputAudioPowerUpdater = v5;

    inputAudioPowerUpdater = self->_inputAudioPowerUpdater;
  }

  [(CSAudioPowerServiceClient *)inputAudioPowerUpdater beginUpdate];
}

- (void)stopObservingUpdates
{
  [(CSAudioPowerServiceClient *)self->_inputAudioPowerUpdater endUpdate];
  [(CSAudioPowerServiceClient *)self->_inputAudioPowerUpdater invalidate];
  inputAudioPowerUpdater = self->_inputAudioPowerUpdater;
  self->_inputAudioPowerUpdater = 0;

  self->_averageAudioPower = 0.0;
}

- (SRUIFAudioPowerLevelUpdater)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = SRUIFAudioPowerLevelUpdater;
  v5 = [(SRUIFAudioPowerLevelUpdater *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

- (void)sessionStateDidChangeTo:(int64_t)to isAttending:(BOOL)attending
{
  attendingCopy = attending;
  v16 = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = SRUIFSiriSessionStateGetDescription(to);
    v10 = 136315650;
    v11 = "[SRUIFAudioPowerLevelUpdater sessionStateDidChangeTo:isAttending:]";
    v12 = 2112;
    v13 = v9;
    v14 = 1024;
    v15 = attendingCopy;
    _os_log_impl(&dword_26951F000, v8, OS_LOG_TYPE_DEFAULT, "%s #IntuitiveConversation state=%@ attending=%d", &v10, 0x1Cu);
  }

  if (to == 3)
  {
    if (!attendingCopy)
    {
LABEL_7:
      [(SRUIFAudioPowerLevelUpdater *)self stopObservingUpdates];
      return;
    }
  }

  else if (to != 1 && (to || !attendingCopy))
  {
    goto LABEL_7;
  }

  [(SRUIFAudioPowerLevelUpdater *)self startObservingUpdates];
}

- (void)audioPowerDidUpdateWithType:(unint64_t)type averagePower:(float)power peakPower:(float)peakPower
{
  self->_averageAudioPower = power;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  *&v8 = power;
  *&v9 = peakPower;
  [WeakRetained audioPowerUpdaterDidUpdate:self averagePower:v8 peakPower:v9];
}

- (void)dealloc
{
  [(CSAudioPowerServiceClient *)self->_inputAudioPowerUpdater endUpdate];
  [(CSAudioPowerServiceClient *)self->_inputAudioPowerUpdater invalidate];
  inputAudioPowerUpdater = self->_inputAudioPowerUpdater;
  self->_inputAudioPowerUpdater = 0;

  v4.receiver = self;
  v4.super_class = SRUIFAudioPowerLevelUpdater;
  [(SRUIFAudioPowerLevelUpdater *)&v4 dealloc];
}

- (SRUIFAudioPowerLevelUpdaterDelegate)_delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end