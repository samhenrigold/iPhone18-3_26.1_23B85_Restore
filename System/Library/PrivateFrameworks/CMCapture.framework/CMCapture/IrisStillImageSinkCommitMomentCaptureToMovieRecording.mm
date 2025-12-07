@interface IrisStillImageSinkCommitMomentCaptureToMovieRecording
@end

@implementation IrisStillImageSinkCommitMomentCaptureToMovieRecording

void __captureSession_IrisStillImageSinkCommitMomentCaptureToMovieRecording_block_invoke(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage;
  v5 = *(DerivedStorage + 376);
  if (v5)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v5, v1, v17, v18, v19, v20, v21, v22);
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v15 = objc_autoreleasePoolPush();
    if (*(a1 + 72))
    {
      v16 = cs_notificationPayloadWithSectionIDAndSettingsIDAndErrorStatus(*(a1 + 32), [*(a1 + 40) settingsID], v5);
    }

    else
    {
      v16 = captureSession_notificationPayloadWithErrorStatus(*(a1 + 48), v5);
    }

    captureSession_postNotificationWithPayload(*(a1 + 48), @"DidBeginRecordingMomentCaptureMovie", v16);
    objc_autoreleasePoolPop(v15);
  }

  else
  {
    v6 = [*(DerivedStorage + 784) stillImageSinkPipelineSessionStorageWithSinkID:*(a1 + 32)];
    v7 = -[FigCaptureStillImageSettings initWithSettingsID:]([FigCaptureIrisStillImageSettings alloc], "initWithSettingsID:", [*(a1 + 40) settingsID]);
    [(FigCaptureIrisStillImageSettings *)v7 setMovieMode:2];
    [(FigCaptureIrisStillImageSettings *)v7 setMovieRecordingSettings:*(a1 + 40)];
    [(FigCaptureStillImageSettings *)v7 setStillImageUserInitiatedRequestTime:*(a1 + 56)];
    [(FigCaptureStillImageSettings *)v7 setFlashMode:*(a1 + 80)];
    if (cs_touchDownMomentStillCaptureEnabled_onceToken != -1)
    {
      __captureSession_IrisStillImageSinkBeginMomentCapture_block_invoke_cold_2();
    }

    os_unfair_lock_lock((*(a1 + 64) + 384));
    v8 = [(FigCaptureStillImageSettings *)v7 settingsID];
    v9 = *(CMBaseObjectGetDerivedStorage() + 688);
    v10 = *(a1 + 64);
    if (v9 >= 1 && v9 == v8)
    {
      *(v10 + 688) = 0;

      v11 = v7;
      v12 = *(a1 + 64);
      *(v12 + 696) = v11;
      os_unfair_lock_unlock((v12 + 384));
      [objc_msgSend(objc_msgSend(v6 primaryStillImageSinkPipeline];
    }

    else
    {
      os_unfair_lock_unlock((v10 + 384));
    }

    if (dword_1ED844050)
    {
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  *(v4 + 376) = 0;
}

uint64_t __captureSession_IrisStillImageSinkCommitMomentCaptureToMovieRecording_block_invoke_1416(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 376) = 0;
  return result;
}

@end