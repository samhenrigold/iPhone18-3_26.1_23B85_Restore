@interface SoundDetectionSendNotificationForCustomDetector
@end

@implementation SoundDetectionSendNotificationForCustomDetector

void ___SoundDetectionSendNotificationForCustomDetector_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = AXLogUltron();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      ___SoundDetectionSendNotificationForCustomDetector_block_invoke_cold_1();
    }
  }
}

@end