@interface StillImageSinkCaptureImage
@end

@implementation StillImageSinkCaptureImage

uint64_t __captureSession_StillImageSinkCaptureImage_block_invoke(void *a1)
{
  cs_updateSmartStyleSupport(a1[6], a1[4], 0);
  v3 = a1[5];
  v2 = a1[6];
  v4 = a1[4];

  return captureSession_captureStillImageNow(v2, v3, v4);
}

@end