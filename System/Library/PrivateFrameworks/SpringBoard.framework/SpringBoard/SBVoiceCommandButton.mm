@interface SBVoiceCommandButton
- (BOOL)_isPermittedToBegin;
- (SBVoiceCommandButton)init;
- (void)performActionsForButtonDown:(id)down;
- (void)performActionsForButtonLongPress:(id)press;
- (void)performActionsForButtonUp:(id)up;
@end

@implementation SBVoiceCommandButton

- (SBVoiceCommandButton)init
{
  v10.receiver = self;
  v10.super_class = SBVoiceCommandButton;
  v2 = [(SBVoiceCommandButton *)&v10 init];
  if (v2)
  {
    v3 = +[SBSiriHardwareButtonInteraction hardwareButtonInteractionForVoiceCommandButton];
    siriHardwareButtonInteraction = v2->_siriHardwareButtonInteraction;
    v2->_siriHardwareButtonInteraction = v3;

    v5 = objc_alloc_init(SBHIDButtonStateArbiter);
    buttonArbiter = v2->_buttonArbiter;
    v2->_buttonArbiter = v5;

    [(SBHIDButtonStateArbiter *)v2->_buttonArbiter setDelegate:v2];
    v7 = v2->_buttonArbiter;
    hardwareButtonGestureParameters = [(SBSiriHardwareButtonInteraction *)v2->_siriHardwareButtonInteraction hardwareButtonGestureParameters];
    [hardwareButtonGestureParameters longPressTimeInterval];
    [(SBHIDButtonStateArbiter *)v7 setLongPressTimeout:?];
  }

  return v2;
}

- (BOOL)_isPermittedToBegin
{
  hardwareButtonCoordinator = [(SBVoiceCommandButton *)self hardwareButtonCoordinator];
  hardwareButtonIdentifier = [(SBVoiceCommandButton *)self hardwareButtonIdentifier];
  v5 = [hardwareButtonCoordinator buttonShouldStart:hardwareButtonIdentifier];

  return v5;
}

- (void)performActionsForButtonDown:(id)down
{
  _isPermittedToBegin = [(SBVoiceCommandButton *)self _isPermittedToBegin];
  if (_isPermittedToBegin)
  {
    self->_isLongPressRecognized = 0;
    siriHardwareButtonInteraction = self->_siriHardwareButtonInteraction;

    [(SBSiriHardwareButtonInteraction *)siriHardwareButtonInteraction consumeInitialPressDown];
  }

  else
  {
    v6 = SBLogButtonsCombo(_isPermittedToBegin);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Siri VoiceCommand down ignored because coordinateor says no", v7, 2u);
    }
  }
}

- (void)performActionsForButtonLongPress:(id)press
{
  _isPermittedToBegin = [(SBVoiceCommandButton *)self _isPermittedToBegin];
  if (_isPermittedToBegin)
  {
    self->_isLongPressRecognized = 1;
    siriHardwareButtonInteraction = self->_siriHardwareButtonInteraction;

    [(SBSiriHardwareButtonInteraction *)siriHardwareButtonInteraction consumeLongPress];
  }

  else
  {
    v6 = SBLogButtonsCombo(_isPermittedToBegin);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Siri VoiceCommand long press ignored because coordinateor says no", v7, 2u);
    }
  }
}

- (void)performActionsForButtonUp:(id)up
{
  v10 = *MEMORY[0x277D85DE8];
  _isPermittedToBegin = [(SBVoiceCommandButton *)self _isPermittedToBegin];
  v5 = _isPermittedToBegin;
  v6 = SBLogButtonsCombo(_isPermittedToBegin);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      isLongPressRecognized = self->_isLongPressRecognized;
      v9[0] = 67109120;
      v9[1] = isLongPressRecognized;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Siri VoiceCommand button up, (long press recognized:%{BOOL}u)", v9, 8u);
    }

    if (!self->_isLongPressRecognized)
    {
      [(SBSiriHardwareButtonInteraction *)self->_siriHardwareButtonInteraction consumeSinglePressUp];
    }

    [(SBSiriHardwareButtonInteraction *)self->_siriHardwareButtonInteraction observeFinalPressUp];
  }

  else
  {
    if (v7)
    {
      LOWORD(v9[0]) = 0;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Siri VoiceCommand up ignored because coordinateor says no", v9, 2u);
    }
  }
}

@end