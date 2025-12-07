@interface SoundDetectionSendNotification
@end

@implementation SoundDetectionSendNotification

id ___SoundDetectionSendNotification_block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v4 = @"NotifiedDetector";
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

void ___SoundDetectionSendNotification_block_invoke_188(uint64_t a1, void *a2)
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

  else
  {
    v4 = BiomeLibrary();
    v5 = [v4 Accessibility];
    v6 = [v5 SoundDetection];
    v3 = [v6 source];

    v7 = objc_alloc(MEMORY[0x277CF0F80]);
    v8 = [MEMORY[0x277CBEAA8] now];
    v9 = bmTypeForSoundDetectionType();
    v10 = [v7 initWithAbsoluteTimestamp:v8 soundDetectionType:v9 name:0];

    [v3 sendEvent:v10];
  }
}

@end