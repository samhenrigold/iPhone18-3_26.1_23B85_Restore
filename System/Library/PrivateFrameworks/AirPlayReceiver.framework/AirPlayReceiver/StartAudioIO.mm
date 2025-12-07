@interface StartAudioIO
@end

@implementation StartAudioIO

void ___StartAudioIO_block_invoke(uint64_t a1)
{
  outIsRunning = 0;
  if (gLogCategory_APReceiverAudioSessionPlatform <= 30 && (gLogCategory_APReceiverAudioSessionPlatform != -1 || _LogCategory_Initialize()))
  {
    v2 = *(a1 + 32);
    LogPrintF(&gLogCategory_APReceiverAudioSessionPlatform, "OSStatus _StartAudioIO(APReceiverAudioSessionPlatformRef, Boolean)_block_invoke", 33554462, "%@ _StartAudioIO executing graph=%p inIsInterruptionEnded=%d isBeingInterrupted=%d shouldStartAudioIOAfterInterruption=%d outputStarted=%d\n", *(v2 + 40), *(v2 + 192), *(a1 + 40), *(v2 + 256), *(v2 + 257), *(v2 + 232));
  }

  v3 = *(a1 + 32);
  if (*(a1 + 40))
  {
    _MainAudioEnsureSetup(v3, 0);
    _EnsureAudioOutputStarted(*(a1 + 32));
    v3 = *(a1 + 32);
    *(v3 + 256) = 0;
    if (!*(v3 + 257))
    {
      goto LABEL_21;
    }
  }

  else if (*(v3 + 256))
  {
    *(v3 + 257) = 1;
    goto LABEL_21;
  }

  v4 = *(v3 + 192);
  if (!v4)
  {
    goto LABEL_20;
  }

  AUGraphIsRunning(v4, &outIsRunning);
  v5 = *(a1 + 32);
  if (!(*(v5 + 232) | outIsRunning))
  {
    AUGraphInitialize(*(v5 + 192));
    v6 = AUGraphStart(*(*(a1 + 32) + 192));
    if (!v6)
    {
      if (gLogCategory_APReceiverAudioSessionPlatform <= 50 && (gLogCategory_APReceiverAudioSessionPlatform != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverAudioSessionPlatform, "OSStatus _StartAudioIO(APReceiverAudioSessionPlatformRef, Boolean)_block_invoke", 33554482, "%@ Main audio output started\n", *(*(a1 + 32) + 40));
      }

      goto LABEL_11;
    }

    v7 = v6;
    if (gLogCategory_APReceiverAudioSessionPlatform <= 60 && (gLogCategory_APReceiverAudioSessionPlatform != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverAudioSessionPlatform, "OSStatus _StartAudioIO(APReceiverAudioSessionPlatformRef, Boolean)_block_invoke", 33554492, "### %@ Main audio output start failed: %#m\n", *(*(a1 + 32) + 40), v7);
    }

LABEL_20:
    APSLogErrorAt();
    goto LABEL_21;
  }

LABEL_11:
  *(*(a1 + 32) + 232) = 1;
LABEL_21:
  CFRelease(*(*(a1 + 32) + 24));
  CFRelease(*(*(a1 + 32) + 16));
  CFRelease(*(a1 + 32));
}

@end