@interface FVSynthEngine
@end

@implementation FVSynthEngine

void __FVSynthEngine_SendVibeStoppedNotification_block_invoke(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

void __FVSynthEngine_StartVibrationWithPattern_block_invoke(uint64_t a1)
{
  v1 = *(gFVInfo + 8);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __FVSynthEngine_StartVibrationWithPattern_block_invoke_2;
  v2[3] = &__block_descriptor_40_e5_v8__0l;
  v2[4] = *(a1 + 32);
  MXDispatchAsync("FVSynthEngine_StartVibrationWithPattern_block_invoke", "FigVibrator_VibeSynthEngine.m", 51, 0, 0, v1, v2);
}

void __FVSynthEngine_StartVibrationWithPattern_block_invoke_2(uint64_t a1)
{
  if (gFVInfo)
  {
    v2 = *(a1 + 32);
    if (!FigSimpleMutexLock())
    {
      v3 = gFVInfo;
      v4 = *(gFVInfo + 68);
      if (v4)
      {
        *(gFVInfo + 68) = --v4;
      }

      if (*(v3 + 20))
      {
        notify_set_state(*(v3 + 16), 0);
        notify_post("com.apple.coremedia.vibration");
        v4 = *(v3 + 68);
      }

      if (!v4)
      {
        FigVibratorPostNotification(@"VibeWillStop");
      }

      if (v2)
      {
        FVSynthEngine_SendVibeStoppedNotification(v3, v2);
      }

      FigSimpleMutexUnlock();
    }
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, v8);
  }

  v5 = *(a1 + 32);
  if (v5)
  {

    CFRelease(v5);
  }
}

@end