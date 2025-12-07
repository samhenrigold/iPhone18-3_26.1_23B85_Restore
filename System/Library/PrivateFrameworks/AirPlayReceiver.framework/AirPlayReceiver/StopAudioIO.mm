@interface StopAudioIO
@end

@implementation StopAudioIO

void ___StopAudioIO_block_invoke(uint64_t a1)
{
  outIsRunning = 0;
  if (gLogCategory_APReceiverAudioSessionPlatform <= 30 && (gLogCategory_APReceiverAudioSessionPlatform != -1 || _LogCategory_Initialize()))
  {
    v2 = *(a1 + 32);
    LogPrintF(&gLogCategory_APReceiverAudioSessionPlatform, "OSStatus _StopAudioIO(APReceiverAudioSessionPlatformRef, Boolean)_block_invoke", 33554462, "%@ _StopAudioIO executing graph=%p inIsInterruptionBegan=%d isBeingInterrupted=%d shouldStartAudioIOAfterInterruption=%d outputStarted=%d\n", *(v2 + 40), *(v2 + 192), *(a1 + 40), *(v2 + 256), *(v2 + 257), *(v2 + 232));
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 192);
  if (!v4)
  {
    goto LABEL_23;
  }

  if (*(a1 + 40))
  {
    *(v3 + 256) = 1;
    *(v3 + 257) = *(v3 + 232);
  }

  else if (*(v3 + 256))
  {
    *(v3 + 257) = 0;
    goto LABEL_24;
  }

  AUGraphIsRunning(v4, &outIsRunning);
  v5 = *(a1 + 32);
  if (*(v5 + 232))
  {
    v6 = outIsRunning == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = AUGraphStop(*(v5 + 192));
    if (v7)
    {
      v8 = v7;
      if (gLogCategory_APReceiverAudioSessionPlatform <= 60 && (gLogCategory_APReceiverAudioSessionPlatform != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverAudioSessionPlatform, "OSStatus _StopAudioIO(APReceiverAudioSessionPlatformRef, Boolean)_block_invoke", 33554492, "### %@ Main audio output stop failed: %#m\n", *(*(a1 + 32) + 40), v8);
      }

LABEL_23:
      APSLogErrorAt();
      goto LABEL_24;
    }

    AUGraphUninitialize(*(*(a1 + 32) + 192));
    if (gLogCategory_APReceiverAudioSessionPlatform <= 50 && (gLogCategory_APReceiverAudioSessionPlatform != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverAudioSessionPlatform, "OSStatus _StopAudioIO(APReceiverAudioSessionPlatformRef, Boolean)_block_invoke", 33554482, "%@ Main audio output stopped\n", *(*(a1 + 32) + 40));
    }
  }

  *(*(a1 + 32) + 232) = 0;
LABEL_24:
  CFRelease(*(*(a1 + 32) + 16));
  CFRelease(*(*(a1 + 32) + 24));
  CFRelease(*(a1 + 32));
}

@end