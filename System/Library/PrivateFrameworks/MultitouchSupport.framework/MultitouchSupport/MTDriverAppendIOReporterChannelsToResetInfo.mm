@interface MTDriverAppendIOReporterChannelsToResetInfo
@end

@implementation MTDriverAppendIOReporterChannelsToResetInfo

uint64_t ___MTDriverAppendIOReporterChannelsToResetInfo_block_invoke(uint64_t a1, uint64_t a2)
{
  ChannelName = IOReportChannelGetChannelName();
  valuePtr = IOReportSimpleGetIntegerValue();
  v4 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
  if (v4)
  {
    v5 = v4;
    CFDictionarySetValue(*(a1 + 32), ChannelName, v4);
    CFRelease(v5);
  }

  return 0;
}

@end