@interface StillImageSinkPrepareToCaptureBracket
@end

@implementation StillImageSinkPrepareToCaptureBracket

void __captureSession_StillImageSinkPrepareToCaptureBracket_block_invoke(void *a1)
{
  v2 = a1[5];
  v1 = a1[6];
  v3 = a1[4];
  v4 = [*(CMBaseObjectGetDerivedStorage() + 784) stillImageSinkPipelineSessionStorageWithSinkID:v3];
  v5 = [v4 primaryStillImageSinkPipeline];
  v6 = [v5 stillImageCoordinatorNode];
  if (_FigIsCurrentDispatchQueue())
  {
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_8:
    __captureSession_StillImageSinkPrepareToCaptureBracket_block_invoke_cold_5(&v14);
    goto LABEL_11;
  }

  __captureSession_StillImageSinkPrepareToCaptureBracket_block_invoke_cold_1();
  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v6)
  {
    [v5 sinkID];
    if (objc_msgSend_isEqualToString_(v3))
    {
      [v2 setClientInitiatedPrepareSettings:1];
      [-[FigCaptureCameraSourcePipeline captureDevice](objc_msgSend(v4 "primaryCameraSourcePipeline"))];
      v14 = v7;
      v8 = stillImageSinkPipelineSessionStorage_stillImageOutputDimensionsForSettings(v4, v5, v2, &v14);
      v9 = HIDWORD(v8);
      [v2 setOutputWidth:v8];
      [v2 setOutputHeight:v9];
      BWUpdateThumbnailAndPreviewDimensionsForRequestedSettings(v2, v10, v14);
      v11 = [v6 prepareStillImageCaptureNowWithSettings:v2];
      if (!v11)
      {
        return;
      }

      v12 = v11;
      __captureSession_StillImageSinkPrepareToCaptureBracket_block_invoke_cold_3();
LABEL_14:
      v13 = cs_notificationPayloadWithSectionIDAndSettingsIDAndErrorStatus(v3, [v2 settingsID], v12);
      captureSession_postNotificationWithPayload(v1, @"BracketPreparationComplete", v13);
      return;
    }

    __captureSession_StillImageSinkPrepareToCaptureBracket_block_invoke_cold_2(&v14);
  }

  else
  {
    __captureSession_StillImageSinkPrepareToCaptureBracket_block_invoke_cold_4(&v14);
  }

LABEL_11:
  v12 = LODWORD(v14);
  if (v14 != 0.0)
  {
    goto LABEL_14;
  }
}

uint64_t __captureSession_StillImageSinkPrepareToCaptureBracket_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

uint64_t __captureSession_StillImageSinkPrepareToCaptureBracket_block_invoke_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844048, 0xFFFFBFF0, "<<<< FigCaptureSession >>>>", 0x1D00, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t __captureSession_StillImageSinkPrepareToCaptureBracket_block_invoke_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844048, 0xFFFFCE14, "<<<< FigCaptureSession >>>>", 0x1CFF, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

uint64_t __captureSession_StillImageSinkPrepareToCaptureBracket_block_invoke_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844048, 0xFFFFBFF0, "<<<< FigCaptureSession >>>>", 0x1CFE, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

@end