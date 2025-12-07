@interface CKWaveformPowerLevelsForFileURL
@end

@implementation CKWaveformPowerLevelsForFileURL

uint64_t (*__CKWaveformPowerLevelsForFileURL_block_invoke_3())(void)
{
  result = MEMORY[0x193AF5ED0]("CMSampleBufferGetFormatDescription", @"CoreMedia");
  CKWaveformPowerLevelsForFileURL__CMSampleBufferGetFormatDescription = result;
  return result;
}

uint64_t (*__CKWaveformPowerLevelsForFileURL_block_invoke_4())(void, void, void, void, void, void, void, void)
{
  result = MEMORY[0x193AF5ED0]("CMSampleBufferGetAudioBufferListWithRetainedBlockBuffer", @"CoreMedia");
  CKWaveformPowerLevelsForFileURL__CMSampleBufferGetAudioBufferListWithRetainedBlockBuffer = result;
  return result;
}

void *(*__CKWaveformPowerLevelsForFileURL_block_invoke_5())(void *__return_ptr, void)
{
  result = MEMORY[0x193AF5ED0]("CMSampleBufferGetPresentationTimeStamp", @"CoreMedia");
  CKWaveformPowerLevelsForFileURL__CMSampleBufferGetPresentationTimeStamp = result;
  return result;
}

void *(*__CKWaveformPowerLevelsForFileURL_block_invoke_6())(void *__return_ptr, void)
{
  result = MEMORY[0x193AF5ED0]("CMSampleBufferGetDuration", @"CoreMedia");
  CKWaveformPowerLevelsForFileURL__CMSampleBufferGetDuration = result;
  return result;
}

@end