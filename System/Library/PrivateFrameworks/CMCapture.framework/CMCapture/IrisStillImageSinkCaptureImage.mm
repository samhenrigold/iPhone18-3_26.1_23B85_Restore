@interface IrisStillImageSinkCaptureImage
@end

@implementation IrisStillImageSinkCaptureImage

double __captureSession_IrisStillImageSinkCaptureImage_block_invoke(uint64_t a1)
{
  v2 = [objc_msgSend(*(CMBaseObjectGetDerivedStorage() + 784) stillImageSinkPipelineSessionStorageWithSinkID:{*(a1 + 32)), "primaryCameraSourcePipeline"}];
  [-[FigCaptureCameraSourcePipeline captureDevice](v2) nonDestructiveCropSize];
  [*(a1 + 40) setNonDestructiveCropSize:?];
  cs_updateSmartStyleSupport(*(a1 + 48), *(a1 + 40), [*(a1 + 40) movieRecordingSettings]);
  if (!captureSession_captureStillImageNow(*(a1 + 48), *(a1 + 32), *(a1 + 40)))
  {
    v5 = *(a1 + 40);
    v4 = *(a1 + 48);
    v6 = *(a1 + 32);

    return cs_IrisStillImageSinkPrepareMovieRecording(v4, v6, v5);
  }

  return result;
}

@end