@interface APSRTPJitterBufferSimInitializeWritePointers
@end

@implementation APSRTPJitterBufferSimInitializeWritePointers

uint64_t ___APSRTPJitterBufferSimInitializeWritePointers_block_invoke(uint64_t result)
{
  if (gLogCategory_APSRTPJitterBufferSim <= 30)
  {
    v1 = result;
    if (gLogCategory_APSRTPJitterBufferSim != -1)
    {
      return LogPrintF(&gLogCategory_APSRTPJitterBufferSim, "void _APSRTPJitterBufferSimInitializeWritePointers(APSRTPJitterBufferSimRef, APSRTPJitterBufferSimPacket *, uint32_t)_block_invoke", 30, "'%@' Decode started with packet at timestamp: %u\n", *(*(v1 + 32) + 16), *(*(v1 + 40) + 4));
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_APSRTPJitterBufferSim, "void _APSRTPJitterBufferSimInitializeWritePointers(APSRTPJitterBufferSimRef, APSRTPJitterBufferSimPacket *, uint32_t)_block_invoke", 30, "'%@' Decode started with packet at timestamp: %u\n", *(*(v1 + 32) + 16), *(*(v1 + 40) + 4));
    }
  }

  return result;
}

@end