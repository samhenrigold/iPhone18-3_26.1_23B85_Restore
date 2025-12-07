@interface IMAssistantAudioPlayer
- (BOOL)setupAudioSession;
- (BOOL)startPlayingAudioURL:(id)l;
- (IMAssistantAudioPlayer)initWithDelegate:(id)delegate identifier:(id)identifier;
- (int64_t)playerState;
- (void)audioPlayerDidFinishPlaying:(id)playing successfully:(BOOL)successfully;
- (void)cleanupAudioSession;
@end

@implementation IMAssistantAudioPlayer

- (IMAssistantAudioPlayer)initWithDelegate:(id)delegate identifier:(id)identifier
{
  delegateCopy = delegate;
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = IMAssistantAudioPlayer;
  v8 = [(IMAssistantAudioPlayer *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    v10 = [identifierCopy copy];
    identifier = v9->_identifier;
    v9->_identifier = v10;
  }

  return v9;
}

- (BOOL)startPlayingAudioURL:(id)l
{
  v18 = *MEMORY[0x277D85DE8];
  lCopy = l;
  player = self->_player;
  if (player)
  {
    [(AVAudioPlayer *)player setDelegate:0];
    v6 = self->_player;
    self->_player = 0;
  }

  if (![(IMAssistantAudioPlayer *)self setupAudioSession])
  {
    goto LABEL_12;
  }

  v15 = 0;
  v7 = [objc_alloc(MEMORY[0x277CB83D0]) initWithContentsOfURL:lCopy error:&v15];
  v8 = v15;
  v9 = self->_player;
  self->_player = v7;

  v10 = self->_player;
  if (!v10)
  {
    v13 = IMLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v17 = v8;
      _os_log_impl(&dword_25479E000, v13, OS_LOG_TYPE_INFO, "Failed to initialize AVAudioPlayer: %@", buf, 0xCu);
    }

    goto LABEL_11;
  }

  [(AVAudioPlayer *)v10 setDelegate:self];
  if (![(AVAudioPlayer *)self->_player prepareToPlay])
  {
LABEL_11:

    goto LABEL_12;
  }

  play = [(AVAudioPlayer *)self->_player play];

  if (!play)
  {
LABEL_12:
    [(IMAssistantAudioPlayer *)self cleanupAudioSession];
    v12 = 0;
    goto LABEL_13;
  }

  v12 = 1;
LABEL_13:

  return v12;
}

- (int64_t)playerState
{
  if ([(AVAudioPlayer *)self->_player isPlaying])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (BOOL)setupAudioSession
{
  v15 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CB83F8] = [MEMORY[0x277CB83F8] sharedInstance];
  v3 = *MEMORY[0x277CB8030];
  v12 = 0;
  v4 = [mEMORY[0x277CB83F8] setCategory:v3 withOptions:19 error:&v12];
  v5 = v12;

  if (v4)
  {
    mEMORY[0x277CB83F8]2 = [MEMORY[0x277CB83F8] sharedInstance];
    v11 = 0;
    v7 = [mEMORY[0x277CB83F8]2 setActive:1 error:&v11];
    v8 = v11;

    if ((v7 & 1) == 0)
    {
      v9 = IMLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v14 = v8;
        _os_log_impl(&dword_25479E000, v9, OS_LOG_TYPE_INFO, "Failed to setup AVAudioSession: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v14 = v5;
      _os_log_impl(&dword_25479E000, v8, OS_LOG_TYPE_INFO, "Failed to set category and options on AVAudioSession: %@", buf, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

- (void)cleanupAudioSession
{
  mEMORY[0x277CB83F8] = [MEMORY[0x277CB83F8] sharedInstance];
  [mEMORY[0x277CB83F8] setActive:0 error:0];
}

- (void)audioPlayerDidFinishPlaying:(id)playing successfully:(BOOL)successfully
{
  [(IMAssistantAudioPlayer *)self cleanupAudioSession:playing];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v7 = objc_loadWeakRetained(&self->_delegate);
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = objc_loadWeakRetained(&self->_delegate);
      [v9 imAssistantAudioPlayer:self didUpdateState:1];
    }
  }
}

@end