@interface APAVAudioSessionManager
+ (APAVAudioSessionManager)ambientSessionManager;
+ (APAVAudioSessionManager)mediaSessionManager;
- (APAVAudioSessionManager)initWithType:(unint64_t)type;
- (AVAudioSession)session;
- (BOOL)_ifNeededChangeSessionTypeAndRequestNewBufferSize:(id *)size;
- (BOOL)setActive:(BOOL)active error:(id *)error;
- (BOOL)setAudioMode:(__CFString *)mode isLongForm:(BOOL)form error:(id *)error;
- (BOOL)setDuckOthers:(unsigned __int8)others error:(id *)error;
- (BOOL)setPreferredHardwareFormat:(int64_t)format error:(id *)error;
- (BOOL)setPreferredOutputNumberOfChannels:(int64_t)channels error:(id *)error;
- (BOOL)setPrefersMultichannelAudio:(unsigned __int8)audio error:(id *)error;
- (void)dealloc;
- (void)resetSession;
- (void)setUpSessionWithIsMixable:(BOOL)mixable;
@end

@implementation APAVAudioSessionManager

- (BOOL)setPreferredHardwareFormat:(int64_t)format error:(id *)error
{
  FigSimpleMutexLock();
  isSetUp = self->_isSetUp;
  if (isSetUp)
  {
    FigSimpleMutexUnlock();
  }

  else
  {
    APSLogErrorAt();
    if (gLogCategory_APAVAudioSessionManager <= 60 && (gLogCategory_APAVAudioSessionManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APAVAudioSessionManager, "[APAVAudioSessionManager setPreferredHardwareFormat:error:]", 33554492, "### [%{ptr}] %###s called before managed session is set up.\n", self, "[APAVAudioSessionManager setPreferredHardwareFormat:error:]");
    }

    FigSimpleMutexUnlock();
    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6718 userInfo:0];
    }
  }

  return isSetUp;
}

- (BOOL)setPreferredOutputNumberOfChannels:(int64_t)channels error:(id *)error
{
  FigSimpleMutexLock();
  isSetUp = self->_isSetUp;
  if (isSetUp)
  {
    FigSimpleMutexUnlock();
  }

  else
  {
    APSLogErrorAt();
    if (gLogCategory_APAVAudioSessionManager <= 60 && (gLogCategory_APAVAudioSessionManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APAVAudioSessionManager, "[APAVAudioSessionManager setPreferredOutputNumberOfChannels:error:]", 33554492, "### [%{ptr}] %###s called before managed session is set up.\n", self, "[APAVAudioSessionManager setPreferredOutputNumberOfChannels:error:]");
    }

    FigSimpleMutexUnlock();
    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6718 userInfo:0];
    }
  }

  return isSetUp;
}

- (BOOL)setDuckOthers:(unsigned __int8)others error:(id *)error
{
  othersCopy = others;
  FigSimpleMutexLock();
  if (!self->_isSetUp)
  {
    if (gLogCategory_APAVAudioSessionManager <= 90 && (gLogCategory_APAVAudioSessionManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APAVAudioSessionManager, "[APAVAudioSessionManager setDuckOthers:error:]", 33554522, "### [%{ptr}] %###s called before managed session is set up!\n", self, "[APAVAudioSessionManager setDuckOthers:error:]");
    }

    if (!error)
    {
      goto LABEL_29;
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277CCA590];
    v15 = -6718;
LABEL_27:
    v11 = 0;
    *error = [v13 errorWithDomain:v14 code:v15 userInfo:0];
    goto LABEL_30;
  }

  if (self->_type != 1)
  {
    if (gLogCategory_APAVAudioSessionManager <= 90 && (gLogCategory_APAVAudioSessionManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APAVAudioSessionManager, "[APAVAudioSessionManager setDuckOthers:error:]", 33554522, "### [%{ptr}] DuckOthers only supported on Ambient Session!\n", self);
    }

    if (!error)
    {
      goto LABEL_29;
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277CCA590];
    v15 = -6735;
    goto LABEL_27;
  }

  if (self->_forceRAW)
  {
    v7 = MEMORY[0x277CB8028];
  }

  else
  {
    v7 = MEMORY[0x277CB8030];
  }

  v8 = *v7;
  v9 = MEMORY[0x277CB80C0];
  if (!self->_forceRAW)
  {
    v9 = MEMORY[0x277CB80A8];
  }

  v10 = othersCopy == 0;
  v11 = 1;
  if (v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  if (![(AVAudioSession *)self->_session setCategory:v8 mode:*v9 routeSharingPolicy:0 options:v12 error:error])
  {
    if (gLogCategory_APAVAudioSessionManager <= 90 && (gLogCategory_APAVAudioSessionManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APAVAudioSessionManager, "[APAVAudioSessionManager setDuckOthers:error:]", 33554522, "### [%{ptr}] Failed to set DuckOthers!\n", self);
    }

LABEL_29:
    v11 = 0;
  }

LABEL_30:
  FigSimpleMutexUnlock();
  return v11;
}

- (BOOL)setActive:(BOOL)active error:(id *)error
{
  activeCopy = active;
  v27 = 0;
  FigSimpleMutexLock();
  if (!self->_isSetUp)
  {
    APSLogErrorAt();
    if (gLogCategory_APAVAudioSessionManager <= 60 && (gLogCategory_APAVAudioSessionManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APAVAudioSessionManager, "[APAVAudioSessionManager setActive:error:]", 33554492, "### [%{ptr}] %###s called before managed session is set up.\n", self, "[APAVAudioSessionManager setActive:error:]");
    }

LABEL_48:
    v18 = 0;
    if (!error)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  categoryOptions = [(AVAudioSession *)self->_session categoryOptions];
  category = [(AVAudioSession *)self->_session category];
  mode = [(AVAudioSession *)self->_session mode];
  if (!activeCopy)
  {
    if ([(AVAudioSession *)self->_session setActive:0 error:&v27])
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

  v10 = mode;
  v11 = [(APAVAudioSessionManager *)self _ifNeededChangeSessionTypeAndRequestNewBufferSize:&v27];
  if (v27)
  {
    APSLogErrorAt();
    if (gLogCategory_APAVAudioSessionManager <= 90 && (gLogCategory_APAVAudioSessionManager != -1 || _LogCategory_Initialize()))
    {
      type = self->_type;
      v25 = "?";
      if (type == 1)
      {
        v25 = "Ambient";
      }

      if (type)
      {
        v26 = v25;
      }

      else
      {
        v26 = "Media";
      }

      LogPrintF(&gLogCategory_APAVAudioSessionManager, "[APAVAudioSessionManager setActive:error:]", 33554522, "[%@] [%{ptr}-%s] changing session type failed. Error=%@\n", self->_session, self, v26, v27);
    }

    goto LABEL_48;
  }

  v12 = v11;
  if (![(AVAudioSession *)self->_session setActive:1 error:&v27])
  {
LABEL_28:
    APSLogErrorAt();
    if (gLogCategory_APAVAudioSessionManager <= 90 && (gLogCategory_APAVAudioSessionManager != -1 || _LogCategory_Initialize()))
    {
      v20 = self->_type;
      v21 = "?";
      if (v20 == 1)
      {
        v21 = "Ambient";
      }

      v22 = v20 == 0;
      v23 = "Deactivating";
      if (v22)
      {
        v21 = "Media";
      }

      if (activeCopy)
      {
        v23 = "Activating";
      }

      LogPrintF(&gLogCategory_APAVAudioSessionManager, "[APAVAudioSessionManager setActive:error:]", 33554522, "[%@] [%{ptr}-%s] %s session failed. Error=%@\n", self->_session, self, v21, v23, v27);
    }

    goto LABEL_48;
  }

  if (!v12)
  {
LABEL_9:
    v13 = 0;
    goto LABEL_10;
  }

  if (![(AVAudioSession *)self->_session setCategory:category mode:v10 options:categoryOptions error:&v27])
  {
    APSLogErrorAt();
    if (gLogCategory_APAVAudioSessionManager <= 90 && (gLogCategory_APAVAudioSessionManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APAVAudioSessionManager, "[APAVAudioSessionManager setActive:error:]", 33554522, "[%@] Restoring session category=%@ mode=%@ options=0x%x failed. Error=%@\n", self->_session, category, v10, categoryOptions, v27);
    }

    goto LABEL_48;
  }

  v13 = 1;
LABEL_10:
  if (gLogCategory_APAVAudioSessionManager <= 50 && (gLogCategory_APAVAudioSessionManager != -1 || _LogCategory_Initialize()))
  {
    v14 = self->_type;
    v15 = "?";
    if (v14 == 1)
    {
      v15 = "Ambient";
    }

    if (v14)
    {
      v16 = v15;
    }

    else
    {
      v16 = "Media";
    }

    if (activeCopy)
    {
      v17 = "Activated";
    }

    else
    {
      v17 = "Deactivated";
    }

    LogPrintF(&gLogCategory_APAVAudioSessionManager, "[APAVAudioSessionManager setActive:error:]", 33554482, "[%@] [%{ptr}-%s] %s session. Buffer frame size=%u isMixable=%d (restored=%d).\n", self->_session, self, v16, v17, [(AVAudioSession *)self->_session IOBufferFrameSize], categoryOptions == 1, v13);
  }

  v18 = 1;
  if (error)
  {
LABEL_23:
    *error = v27;
  }

LABEL_24:
  FigSimpleMutexUnlock();
  return v18;
}

- (BOOL)_ifNeededChangeSessionTypeAndRequestNewBufferSize:(id *)size
{
  v19 = 0;
  FigSimpleMutexCheckIsLockedOnThisThread();
  if (!self->_isSetUp)
  {
    APSLogErrorAt();
    if (gLogCategory_APAVAudioSessionManager <= 60)
    {
      if (gLogCategory_APAVAudioSessionManager == -1)
      {
        isOtherAudioPlaying = _LogCategory_Initialize();
        if (!isOtherAudioPlaying)
        {
          goto LABEL_19;
        }
      }

      LogPrintF(&gLogCategory_APAVAudioSessionManager, "[APAVAudioSessionManager _ifNeededChangeSessionTypeAndRequestNewBufferSize:]", 33554492, "### [%{ptr}] %###s called before managed session is set up.\n", self, "[APAVAudioSessionManager _ifNeededChangeSessionTypeAndRequestNewBufferSize:]");
    }

    goto LABEL_32;
  }

  categoryOptions = [(AVAudioSession *)self->_session categoryOptions];
  iOBufferFrameSize = [(AVAudioSession *)self->_session IOBufferFrameSize];
  [(AVAudioSession *)self->_session sampleRate];
  LOBYTE(isOtherAudioPlaying) = 0;
  if (self->_type)
  {
    goto LABEL_19;
  }

  if (categoryOptions != 1)
  {
    goto LABEL_19;
  }

  if (iOBufferFrameSize < 0x401)
  {
    goto LABEL_19;
  }

  v9 = v7;
  if (v7 <= 0.0)
  {
    goto LABEL_19;
  }

  isOtherAudioPlaying = [(AVAudioSession *)self->_session isOtherAudioPlaying];
  if (!isOtherAudioPlaying)
  {
    goto LABEL_19;
  }

  v10 = 1024.0 / v9;
  if (gLogCategory_APAVAudioSessionManager <= 50 && (gLogCategory_APAVAudioSessionManager != -1 || _LogCategory_Initialize()))
  {
    type = self->_type;
    v12 = "?";
    if (type == 1)
    {
      v12 = "Ambient";
    }

    if (type)
    {
      v13 = v12;
    }

    else
    {
      v13 = "Media";
    }

    LogPrintF(&gLogCategory_APAVAudioSessionManager, "[APAVAudioSessionManager _ifNeededChangeSessionTypeAndRequestNewBufferSize:]", 33554482, "[%@] [%{ptr}-%s] Another session is playing with buffer frame size=%u. Setting preferred size=%u (%.3fsec) and isMixable=0 (temporarily)\n", self->_session, self, v13, iOBufferFrameSize, 1024, *&v10);
  }

  if ([(AVAudioSession *)self->_session setPreferredIOBufferDuration:&v19 error:v10])
  {
    if ([(AVAudioSession *)self->_session setCategory:*MEMORY[0x277CB8030] mode:*MEMORY[0x277CB80A8] options:0 error:&v19])
    {
      LOBYTE(isOtherAudioPlaying) = 1;
      goto LABEL_19;
    }

    APSLogErrorAt();
    if (gLogCategory_APAVAudioSessionManager > 90)
    {
      goto LABEL_32;
    }

    if (gLogCategory_APAVAudioSessionManager != -1 || (isOtherAudioPlaying = _LogCategory_Initialize()) != 0)
    {
      session = self->_session;
      v17 = *&v19;
      v14 = "[%@] setCategory:Playback mode:Default options:none. Error=%@\n";
      goto LABEL_31;
    }

    goto LABEL_19;
  }

  APSLogErrorAt();
  if (gLogCategory_APAVAudioSessionManager > 90)
  {
LABEL_32:
    LOBYTE(isOtherAudioPlaying) = 0;
    goto LABEL_19;
  }

  if (gLogCategory_APAVAudioSessionManager != -1 || (isOtherAudioPlaying = _LogCategory_Initialize()) != 0)
  {
    v18 = v19;
    v17 = v10;
    session = self->_session;
    v14 = "[%@] setPreferredIOBufferDuration %f sec. Error=%@\n";
LABEL_31:
    LogPrintF(&gLogCategory_APAVAudioSessionManager, "[APAVAudioSessionManager _ifNeededChangeSessionTypeAndRequestNewBufferSize:]", 33554522, v14, session, *&v17, v18);
    goto LABEL_32;
  }

LABEL_19:
  if (size)
  {
    *size = v19;
  }

  return isOtherAudioPlaying;
}

- (BOOL)setPrefersMultichannelAudio:(unsigned __int8)audio error:(id *)error
{
  FigSimpleMutexLock();
  isSetUp = self->_isSetUp;
  if (isSetUp)
  {
    FigSimpleMutexUnlock();
  }

  else
  {
    APSLogErrorAt();
    if (gLogCategory_APAVAudioSessionManager <= 60 && (gLogCategory_APAVAudioSessionManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APAVAudioSessionManager, "[APAVAudioSessionManager setPrefersMultichannelAudio:error:]", 33554492, "### [%{ptr}] %###s called before managed session is set up.\n", self, "[APAVAudioSessionManager setPrefersMultichannelAudio:error:]");
    }

    FigSimpleMutexUnlock();
    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6718 userInfo:0];
    }
  }

  return isSetUp;
}

- (BOOL)setAudioMode:(__CFString *)mode isLongForm:(BOOL)form error:(id *)error
{
  LODWORD(v6) = form;
  FigSimpleMutexLock();
  if (self->_isSetUp)
  {
    v9 = *MEMORY[0x277CB80A8];
    IntWithDefault = APSSettingsGetIntWithDefault();
    type = self->_type;
    if (type == 1)
    {
      v6 = 0;
      goto LABEL_11;
    }

    if (!type)
    {
      if (mode == @"moviePlayback")
      {
        goto LABEL_7;
      }

      if (!mode)
      {
LABEL_9:
        v6 = v6;
LABEL_11:
        if (self->_forceRAW)
        {
          if (gLogCategory_APAVAudioSessionManager <= 50 && (gLogCategory_APAVAudioSessionManager != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_APAVAudioSessionManager, "[APAVAudioSessionManager setAudioMode:isLongForm:error:]", 33554482, "[%@] Forcing AVAudioSessionModeRaw\n", self->_session);
          }

          v14 = *MEMORY[0x277CB8028];
          v9 = *MEMORY[0x277CB80C0];
        }

        else
        {
          v14 = *MEMORY[0x277CB8030];
        }

        if (self->_type || !APSMultiPrimariesEnabled())
        {
          v17 = [(AVAudioSession *)self->_session setCategory:v14 mode:v9 routeSharingPolicy:v6 options:[(AVAudioSession *)self->_session categoryOptions] error:error];
        }

        else
        {
          v17 = [(AVAudioSession *)self->_session setCategory:v14 mode:v9 options:[(AVAudioSession *)self->_session categoryOptions] error:error];
        }

        LOBYTE(v16) = v17;
        if (v9 == *MEMORY[0x277CB80E0] && v17)
        {
          v16 = [(AVAudioSession *)self->_session setMXSessionProperty:*MEMORY[0x277D27318] value:MEMORY[0x277CBEC38] error:error];
          if (gLogCategory_APAVAudioSessionManager <= 50 && (gLogCategory_APAVAudioSessionManager != -1 || _LogCategory_Initialize()))
          {
            v19 = self->_type;
            v20 = "?";
            if (v19 == 1)
            {
              v20 = "Ambient";
            }

            if (v19)
            {
              v21 = v20;
            }

            else
            {
              v21 = "Media";
            }

            LogPrintF(&gLogCategory_APAVAudioSessionManager, "[APAVAudioSessionManager setAudioMode:isLongForm:error:]", 33554482, "[%{ptr}-%s] Prefer No Interruption set to true for audio mode: %@ with return %d.\n", self, v21, v9, v16);
          }
        }

        FigSimpleMutexUnlock();
        return v16;
      }

      v12 = IntWithDefault;
      if (CFEqual(mode, @"moviePlayback"))
      {
LABEL_7:
        v13 = MEMORY[0x277CB80B8];
      }

      else
      {
        if (!v12 || mode != @"spokenAudio" && !CFEqual(mode, @"spokenAudio"))
        {
          goto LABEL_9;
        }

        if (gLogCategory_APAVAudioSessionManager <= 50 && (gLogCategory_APAVAudioSessionManager != -1 || _LogCategory_Initialize()))
        {
          v23 = self->_type;
          v24 = "?";
          if (v23 == 1)
          {
            v24 = "Ambient";
          }

          if (v23)
          {
            v25 = v24;
          }

          else
          {
            v25 = "Media";
          }

          LogPrintF(&gLogCategory_APAVAudioSessionManager, "[APAVAudioSessionManager setAudioMode:isLongForm:error:]", 33554482, "[%{ptr}-%s] allowing audio mode: %@.\n", self, v25, mode);
        }

        v13 = MEMORY[0x277CB80E0];
      }

      v9 = *v13;
      goto LABEL_9;
    }

    v15 = -6756;
  }

  else
  {
    APSLogErrorAt();
    if (gLogCategory_APAVAudioSessionManager <= 60 && (gLogCategory_APAVAudioSessionManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APAVAudioSessionManager, "[APAVAudioSessionManager setAudioMode:isLongForm:error:]", 33554492, "### [%{ptr}] %###s called before managed session is set up.\n", self, "[APAVAudioSessionManager setAudioMode:isLongForm:error:]");
    }

    v15 = -6718;
  }

  FigSimpleMutexUnlock();
  LOBYTE(v16) = 0;
  if (error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v15 userInfo:0];
  }

  return v16;
}

- (void)resetSession
{
  FigSimpleMutexLock();
  if (self->_isSetUp)
  {
    if (gLogCategory_APAVAudioSessionManager <= 50 && (gLogCategory_APAVAudioSessionManager != -1 || _LogCategory_Initialize()))
    {
      type = self->_type;
      v4 = "?";
      if (type == 1)
      {
        v4 = "Ambient";
      }

      if (type)
      {
        v5 = v4;
      }

      else
      {
        v5 = "Media";
      }

      LogPrintF(&gLogCategory_APAVAudioSessionManager, "[APAVAudioSessionManager resetSession]", 33554482, "[%{ptr}-%s] reset managed session.\n", self, v5);
    }

    self->_session = 0;
    self->_isSetUp = 0;
  }

  FigSimpleMutexUnlock();
}

- (void)setUpSessionWithIsMixable:(BOOL)mixable
{
  mixableCopy = mixable;
  v16 = 0;
  FigSimpleMutexLock();
  if (!self->_isSetUp)
  {
    if (gLogCategory_APAVAudioSessionManager <= 50 && (gLogCategory_APAVAudioSessionManager != -1 || _LogCategory_Initialize()))
    {
      type = self->_type;
      v6 = "?";
      if (type == 1)
      {
        v6 = "Ambient";
      }

      if (type)
      {
        v7 = v6;
      }

      else
      {
        v7 = "Media";
      }

      LogPrintF(&gLogCategory_APAVAudioSessionManager, "[APAVAudioSessionManager setUpSessionWithIsMixable:]", 33554482, "[%{ptr}-%s] Set up managed session inIsMixable=%d.\n", self, v7, mixableCopy);
    }

    v8 = self->_type;
    if (v8 == 1)
    {
      self->_session = [objc_alloc(MEMORY[0x277CB83F8]) initAuxiliarySession];
      mixableCopy = 1;
    }

    else if (v8)
    {
      mixableCopy = 0;
    }

    else
    {
      self->_session = [MEMORY[0x277CB83F8] sharedInstance];
      mixableCopy = mixableCopy;
    }

    if (self->_forceRAW)
    {
      if (gLogCategory_APAVAudioSessionManager <= 50 && (gLogCategory_APAVAudioSessionManager != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APAVAudioSessionManager, "[APAVAudioSessionManager setUpSessionWithIsMixable:]", 33554482, "[%@] Forcing AVAudioSessionModeRaw\n", self->_session);
      }

      v9 = *MEMORY[0x277CB8028];
      v10 = *MEMORY[0x277CB80C0];
    }

    else
    {
      v9 = *MEMORY[0x277CB8030];
      v10 = *MEMORY[0x277CB80A8];
    }

    if ([(AVAudioSession *)self->_session setMXSessionProperty:*MEMORY[0x277D27290] value:MEMORY[0x277CBEC38] error:&v16])
    {
      if (gLogCategory_APAVAudioSessionManager <= 50 && (gLogCategory_APAVAudioSessionManager != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APAVAudioSessionManager, "[APAVAudioSessionManager setUpSessionWithIsMixable:]", 33554482, "[%@] IsAirPlayReceiverSession property set to YES.\n", self->_session, v14);
      }
    }

    else if (gLogCategory_APAVAudioSessionManager <= 90 && (gLogCategory_APAVAudioSessionManager != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APAVAudioSessionManager, "[APAVAudioSessionManager setUpSessionWithIsMixable:]", 33554522, "[%@] Failed to set IsAirPlayReceiverSession property with err: %@.\n", self->_session, v16);
    }

    v11 = self->_type;
    if (v11 == 1)
    {
      if ([(AVAudioSession *)self->_session setMXSessionProperty:*MEMORY[0x277D27298] value:MEMORY[0x277CBEC28] error:&v16])
      {
        if (gLogCategory_APAVAudioSessionManager <= 50 && (gLogCategory_APAVAudioSessionManager != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APAVAudioSessionManager, "[APAVAudioSessionManager setUpSessionWithIsMixable:]", 33554482, "[%@] IsEligibleForNowPlayingAppConsideration property set to NO.\n", self->_session, v14);
        }
      }

      else if (gLogCategory_APAVAudioSessionManager <= 90 && (gLogCategory_APAVAudioSessionManager != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APAVAudioSessionManager, "[APAVAudioSessionManager setUpSessionWithIsMixable:]", 33554522, "[%@] Failed to set IsEligibleForNowPlayingAppConsideration property with err: %@.\n", self->_session, v16);
      }

      v11 = self->_type;
    }

    if (v11 || !APSMultiPrimariesEnabled())
    {
      [(AVAudioSession *)self->_session setCategory:v9 mode:v10 routeSharingPolicy:0 options:mixableCopy error:0];
    }

    else
    {
      [(AVAudioSession *)self->_session setCategory:v9 mode:v10 options:mixableCopy error:0];
    }

    Int64 = APSSettingsGetInt64();
    if (Int64)
    {
      v16 = 0;
      if ([(AVAudioSession *)self->_session setPreferredSampleRate:&v16 error:Int64])
      {
        if (gLogCategory_APAVAudioSessionManager <= 50 && (gLogCategory_APAVAudioSessionManager != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APAVAudioSessionManager, "[APAVAudioSessionManager setUpSessionWithIsMixable:]", 33554482, "[%@] Changed preferred sample rate to %u\n", self->_session, Int64, v15);
        }
      }

      else if (gLogCategory_APAVAudioSessionManager <= 60 && (gLogCategory_APAVAudioSessionManager != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APAVAudioSessionManager, "[APAVAudioSessionManager setUpSessionWithIsMixable:]", 33554492, "### [%@] Set preferred sample rate to %u failed: %@\n", self->_session, Int64, v16);
      }
    }

    v13 = APSSettingsGetInt64();
    if (v13)
    {
      v16 = 0;
      if ([(AVAudioSession *)self->_session setPreferredIOBufferFrameSize:v13 error:&v16])
      {
        if (gLogCategory_APAVAudioSessionManager <= 50 && (gLogCategory_APAVAudioSessionManager != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APAVAudioSessionManager, "[APAVAudioSessionManager setUpSessionWithIsMixable:]", 33554482, "[%@] Changed preferred IO Buffer frame size to %u samples\n", self->_session, v13, v15);
        }
      }

      else if (gLogCategory_APAVAudioSessionManager <= 60 && (gLogCategory_APAVAudioSessionManager != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APAVAudioSessionManager, "[APAVAudioSessionManager setUpSessionWithIsMixable:]", 33554492, "### [%@] Set preferred IO Buffer frame size to %u samples failed: %@\n", self->_session, v13, v16);
      }
    }

    self->_isSetUp = 1;
  }

  FigSimpleMutexUnlock();
}

- (AVAudioSession)session
{
  FigSimpleMutexLock();
  if (self->_isSetUp)
  {
    session = self->_session;
  }

  else
  {
    APSLogErrorAt();
    if (gLogCategory_APAVAudioSessionManager <= 60 && (gLogCategory_APAVAudioSessionManager != -1 || _LogCategory_Initialize()))
    {
      type = self->_type;
      v6 = "?";
      if (type == 1)
      {
        v6 = "Ambient";
      }

      if (type)
      {
        v7 = v6;
      }

      else
      {
        v7 = "Media";
      }

      LogPrintF(&gLogCategory_APAVAudioSessionManager, "[APAVAudioSessionManager session]", 33554492, "### [%{ptr}-%s] could not get AVAudioSession because not set up!", self, v7);
    }

    session = 0;
  }

  FigSimpleMutexUnlock();
  return session;
}

- (void)dealloc
{
  FigSimpleMutexDestroy();

  v3.receiver = self;
  v3.super_class = APAVAudioSessionManager;
  [(APAVAudioSessionManager *)&v3 dealloc];
}

- (APAVAudioSessionManager)initWithType:(unint64_t)type
{
  v8.receiver = self;
  v8.super_class = APAVAudioSessionManager;
  v4 = [(APAVAudioSessionManager *)&v8 init];
  if (v4)
  {
    v4->_mutex = FigSimpleMutexCreate();
    v4->_session = 0;
    v4->_type = type;
    v4->_forceRAW = APSSettingsGetIntWithDefault() != 0;
    if (gLogCategory_APAVAudioSessionManager <= 50 && (gLogCategory_APAVAudioSessionManager != -1 || _LogCategory_Initialize()))
    {
      v5 = "?";
      type = v4->_type;
      if (type == 1)
      {
        v5 = "Ambient";
      }

      if (!type)
      {
        v5 = "Media";
      }

      LogPrintF(&gLogCategory_APAVAudioSessionManager, "[APAVAudioSessionManager initWithType:]", 33554482, "[%{ptr}-%s] created with AVAudioSession %@\n", v4, v5, v4->_session);
    }
  }

  return v4;
}

+ (APAVAudioSessionManager)ambientSessionManager
{
  if (ambientSessionManager_onceToken != -1)
  {
    dispatch_once(&ambientSessionManager_onceToken, &__block_literal_global_4);
  }

  return ambientSessionManager_sessionManager;
}

APAVAudioSessionManager *__48__APAVAudioSessionManager_ambientSessionManager__block_invoke()
{
  result = [[APAVAudioSessionManager alloc] initWithType:1];
  ambientSessionManager_sessionManager = result;
  return result;
}

+ (APAVAudioSessionManager)mediaSessionManager
{
  if (mediaSessionManager_onceToken != -1)
  {
    dispatch_once(&mediaSessionManager_onceToken, &__block_literal_global_830);
  }

  return mediaSessionManager_sessionManager;
}

APAVAudioSessionManager *__46__APAVAudioSessionManager_mediaSessionManager__block_invoke()
{
  result = [[APAVAudioSessionManager alloc] initWithType:0];
  mediaSessionManager_sessionManager = result;
  return result;
}

@end