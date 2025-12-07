@interface TVRUIVolumeController
- (id)initForWindow:(id)window eventHandler:(id)handler;
- (void)consumeSinglePressDownForButtonKind:(int64_t)kind;
- (void)disableVolumeControl;
- (void)enableVolumeControl;
@end

@implementation TVRUIVolumeController

- (id)initForWindow:(id)window eventHandler:(id)handler
{
  windowCopy = window;
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = TVRUIVolumeController;
  v9 = [(TVRUIVolumeController *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_window, window);
    v11 = _Block_copy(handlerCopy);
    eventHandler = v10->_eventHandler;
    v10->_eventHandler = v11;
  }

  return v10;
}

- (void)enableVolumeControl
{
  supportsVolumeControl = [(TVRUIVolumeController *)self supportsVolumeControl];
  v4 = supportsVolumeControl;
  mEMORY[0x277D66AA0]2 = _TVRUIVolumeControllerLog(supportsVolumeControl);
  v6 = os_log_type_enabled(mEMORY[0x277D66AA0]2, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_26CFEB000, mEMORY[0x277D66AA0]2, OS_LOG_TYPE_DEFAULT, "Registering for volume button events", buf, 2u);
    }

    window = [(TVRUIVolumeController *)self window];

    if (window)
    {
      window2 = [(TVRUIVolumeController *)self window];
      windowScene = [window2 windowScene];
      [windowScene _setSystemVolumeHUDEnabled:0];
    }

    volumeIncreaseSBSInvalidator = [(TVRUIVolumeController *)self volumeIncreaseSBSInvalidator];
    if (volumeIncreaseSBSInvalidator)
    {
    }

    else
    {
      volumeDecreaseSBSInvalidator = [(TVRUIVolumeController *)self volumeDecreaseSBSInvalidator];

      if (!volumeDecreaseSBSInvalidator)
      {
        v15 = _TVRUIVolumeControllerLog(v11);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *v19 = 0;
          _os_log_impl(&dword_26CFEB000, v15, OS_LOG_TYPE_DEFAULT, "Begin consuming volume button presses", v19, 2u);
        }

        mEMORY[0x277D66AA0] = [MEMORY[0x277D66AA0] sharedInstance];
        v17 = [mEMORY[0x277D66AA0] beginConsumingPressesForButtonKind:4 eventConsumer:self priority:0];
        [(TVRUIVolumeController *)self setVolumeDecreaseSBSInvalidator:v17];

        mEMORY[0x277D66AA0]2 = [MEMORY[0x277D66AA0] sharedInstance];
        v18 = [mEMORY[0x277D66AA0]2 beginConsumingPressesForButtonKind:3 eventConsumer:self priority:0];
        [(TVRUIVolumeController *)self setVolumeIncreaseSBSInvalidator:v18];

        goto LABEL_14;
      }
    }

    mEMORY[0x277D66AA0]2 = _TVRUIVolumeControllerLog(v11);
    if (os_log_type_enabled(mEMORY[0x277D66AA0]2, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      v12 = "Already listening for volume button presses";
      v13 = v20;
      goto LABEL_13;
    }
  }

  else if (v6)
  {
    v22 = 0;
    v12 = "Volume control is NOT supported. Skipping listening for volume button events";
    v13 = &v22;
LABEL_13:
    _os_log_impl(&dword_26CFEB000, mEMORY[0x277D66AA0]2, OS_LOG_TYPE_DEFAULT, v12, v13, 2u);
  }

LABEL_14:
}

- (void)disableVolumeControl
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = _TVRUIVolumeControllerLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = [(TVRUIVolumeController *)self supportsVolumeControl];
    _os_log_impl(&dword_26CFEB000, v3, OS_LOG_TYPE_DEFAULT, "Unregistering from volume button events. supportsVolumeControl:%{BOOL}d", v9, 8u);
  }

  window = [(TVRUIVolumeController *)self window];

  if (window)
  {
    window2 = [(TVRUIVolumeController *)self window];
    windowScene = [window2 windowScene];
    [windowScene _setSystemVolumeHUDEnabled:1];
  }

  volumeDecreaseSBSInvalidator = [(TVRUIVolumeController *)self volumeDecreaseSBSInvalidator];
  [volumeDecreaseSBSInvalidator invalidate];

  volumeIncreaseSBSInvalidator = [(TVRUIVolumeController *)self volumeIncreaseSBSInvalidator];
  [volumeIncreaseSBSInvalidator invalidate];

  [(TVRUIVolumeController *)self setVolumeDecreaseSBSInvalidator:0];
  [(TVRUIVolumeController *)self setVolumeIncreaseSBSInvalidator:0];
}

- (void)consumeSinglePressDownForButtonKind:(int64_t)kind
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = _TVRUIVolumeControllerLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSBSHardwareButtonKind();
    v9 = 136315394;
    v10 = "[TVRUIVolumeController consumeSinglePressDownForButtonKind:]";
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "%s, buttonKind: %@", &v9, 0x16u);
  }

  if (kind == 4 || kind == 3)
  {
    eventHandler = [(TVRUIVolumeController *)self eventHandler];
    (*(eventHandler + 16))();
  }

  else
  {
    eventHandler = _TVRUIVolumeControllerLog(v7);
    if (os_log_type_enabled(eventHandler, OS_LOG_TYPE_ERROR))
    {
      [(TVRUIVolumeController *)kind consumeSinglePressDownForButtonKind:eventHandler];
    }
  }
}

- (void)consumeSinglePressDownForButtonKind:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = NSStringFromSBSHardwareButtonKind();
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_26CFEB000, a2, OS_LOG_TYPE_ERROR, "Unsupported button kind: %@", &v4, 0xCu);
}

@end