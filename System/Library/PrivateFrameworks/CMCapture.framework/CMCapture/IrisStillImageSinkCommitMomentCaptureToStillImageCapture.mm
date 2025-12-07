@interface IrisStillImageSinkCommitMomentCaptureToStillImageCapture
@end

@implementation IrisStillImageSinkCommitMomentCaptureToStillImageCapture

void __captureSession_IrisStillImageSinkCommitMomentCaptureToStillImageCapture_block_invoke(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  v4 = *(a1 + 56);
  v5 = *(v4 + 376);
  if (v5)
  {
    __captureSession_IrisStillImageSinkCommitMomentCaptureToStillImageCapture_block_invoke_cold_1(*(v4 + 376));
    goto LABEL_17;
  }

  v6 = [*(DerivedStorage + 784) stillImageSinkPipelineSessionStorageWithSinkID:*(a1 + 32)];
  v7 = [v6 primaryCameraSourcePipeline];
  [-[FigCaptureCameraSourcePipeline captureDevice](v7) nonDestructiveCropSize];
  [*(a1 + 40) setNonDestructiveCropSize:?];
  cs_updateSmartStyleSupport(*(a1 + 48), *(a1 + 40), [*(a1 + 40) movieRecordingSettings]);
  if (cs_touchDownMomentStillCaptureEnabled_onceToken != -1)
  {
    __captureSession_IrisStillImageSinkBeginMomentCapture_block_invoke_cold_2();
  }

  os_unfair_lock_lock((v3 + 384));
  v8 = [*(a1 + 40) settingsID];
  v9 = *(CMBaseObjectGetDerivedStorage() + 688);
  if (v9 < 1 || v9 != v8)
  {
LABEL_13:
    os_unfair_lock_unlock((v3 + 384));
    goto LABEL_14;
  }

  *(v3 + 688) = 0;
  if (!v6)
  {
    v19 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (*(a1 + 64))
    {
      v15 = cs_notificationPayloadWithSectionIDAndSettingsIDAndErrorStatus(*(a1 + 32), [*(a1 + 40) settingsID], 4294950896);
    }

    else
    {
      v15 = captureSession_notificationPayloadWithErrorStatus(*(a1 + 48), *(a1 + 72));
    }

    captureSession_postNotificationWithPayload(*(a1 + 48), @"IrisWillBeginCapture", v15);
    goto LABEL_13;
  }

  os_unfair_lock_unlock((v3 + 384));
  [-[FigCaptureCameraSourcePipeline captureDevice](v7) zoomFactor];
  v19 = v10;
  v11 = stillImageSinkPipelineSessionStorage_stillImageOutputDimensionsForSettings(v6, [v6 primaryStillImageSinkPipeline], *(a1 + 40), &v19);
  captureSession_updateOutputDimensionsAndResolutionFlavor(v11, v7, *(a1 + 40));
  BWUpdateThumbnailAndPreviewDimensionsForRequestedSettings(*(a1 + 40), v12, *&v19);
  v13 = [objc_msgSend(objc_msgSend(v6 "primaryStillImageSinkPipeline")];
  if (!v13)
  {
    cs_IrisStillImageSinkPrepareMovieRecording(*(a1 + 48), *(a1 + 32), *(a1 + 40));
    goto LABEL_14;
  }

  v5 = v13;
  __captureSession_IrisStillImageSinkCommitMomentCaptureToStillImageCapture_block_invoke_cold_3(v13, &v19);
LABEL_17:
  v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v17 = objc_autoreleasePoolPush();
  if (*(a1 + 64))
  {
    v18 = cs_notificationPayloadWithSectionIDAndSettingsIDAndErrorStatus(*(a1 + 32), [*(a1 + 40) settingsID], v5);
  }

  else
  {
    v18 = captureSession_notificationPayloadWithErrorStatus(*(a1 + 48), v5);
  }

  captureSession_postNotificationWithPayload(*(a1 + 48), @"IrisWillBeginCapture", v18);
  objc_autoreleasePoolPop(v17);
LABEL_14:
  *(v3 + 376) = 0;
}

uint64_t __captureSession_IrisStillImageSinkCommitMomentCaptureToStillImageCapture_block_invoke_1412(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 376) = 0;
  return result;
}

@end