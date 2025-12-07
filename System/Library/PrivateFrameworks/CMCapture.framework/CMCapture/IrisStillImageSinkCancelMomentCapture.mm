@interface IrisStillImageSinkCancelMomentCapture
@end

@implementation IrisStillImageSinkCancelMomentCapture

void *__captureSession_IrisStillImageSinkCancelMomentCapture_block_invoke(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = [*(DerivedStorage + 784) stillImageSinkPipelineSessionStorageWithSinkID:*(a1 + 32)];
  v5 = -[FigCaptureCameraSourcePipeline captureDevice]([v4 primaryCameraSourcePipeline]);
  if (*(DerivedStorage + 376))
  {
    goto LABEL_12;
  }

  if (cs_touchDownMomentStillCaptureEnabled_onceToken != -1)
  {
    __captureSession_IrisStillImageSinkBeginMomentCapture_block_invoke_cold_2();
  }

  os_unfair_lock_lock((*(a1 + 48) + 384));
  v6 = *(a1 + 56);
  v7 = *(CMBaseObjectGetDerivedStorage() + 688);
  if (v7 >= 1 && v7 == v6)
  {
    v10 = *(a1 + 48);
    *(v10 + 688) = 0;
    os_unfair_lock_unlock((v10 + 384));
    v11 = [objc_msgSend(objc_msgSend(v4 "primaryStillImageSinkPipeline")];
    if (v11)
    {
      v12 = v11;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v11, v1, v18, v19, v20, v21, v22, v23);
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_14;
    }
  }

  else
  {
    v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    os_unfair_lock_unlock((*(a1 + 48) + 384));
  }

  if (*(DerivedStorage + 376))
  {
LABEL_12:
    v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v12 = 0;
LABEL_14:
  v15 = objc_autoreleasePoolPush();
  if (*(a1 + 64))
  {
    v16 = cs_notificationPayloadWithSectionIDAndSettingsIDAndErrorStatus(*(a1 + 32), *(a1 + 56), v12);
  }

  else
  {
    v16 = captureSession_notificationPayloadWithErrorStatus(*(a1 + 40), v12);
  }

  captureSession_postNotificationWithPayload(*(a1 + 40), @"DidCancelMomentCapture", v16);
  objc_autoreleasePoolPop(v15);
  [v5 setAutomaticallyAdjustsTorch:0];
  result = [v5 setTorchLevel:0.0];
  *(DerivedStorage + 376) = 0;
  return result;
}

uint64_t __captureSession_IrisStillImageSinkCancelMomentCapture_block_invoke_1418(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 376) = 0;
  return result;
}

@end