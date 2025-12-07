@interface APSRTPJitterBufferSimDecodeThreadEntry
@end

@implementation APSRTPJitterBufferSimDecodeThreadEntry

uint64_t ___APSRTPJitterBufferSimDecodeThreadEntry_block_invoke(uint64_t result)
{
  if (gLogCategory_APSRTPJitterBufferSim <= 30)
  {
    v1 = result;
    if (gLogCategory_APSRTPJitterBufferSim != -1)
    {
      return LogPrintF(&gLogCategory_APSRTPJitterBufferSim, "void *_APSRTPJitterBufferSimDecodeThreadEntry(void *)_block_invoke", 30, "'%@' Decode thread starting\n", *(*(v1 + 32) + 16));
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_APSRTPJitterBufferSim, "void *_APSRTPJitterBufferSimDecodeThreadEntry(void *)_block_invoke", 30, "'%@' Decode thread starting\n", *(*(v1 + 32) + 16));
    }
  }

  return result;
}

uint64_t ___APSRTPJitterBufferSimDecodeThreadEntry_block_invoke_2(uint64_t result)
{
  if (gLogCategory_APSRTPJitterBufferSim <= 30)
  {
    v1 = result;
    if (gLogCategory_APSRTPJitterBufferSim != -1)
    {
      return LogPrintF(&gLogCategory_APSRTPJitterBufferSim, "void *_APSRTPJitterBufferSimDecodeThreadEntry(void *)_block_invoke_2", 30, "'%@' Decode thread ending\n", *(*(v1 + 32) + 16));
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_APSRTPJitterBufferSim, "void *_APSRTPJitterBufferSimDecodeThreadEntry(void *)_block_invoke_2", 30, "'%@' Decode thread ending\n", *(*(v1 + 32) + 16));
    }
  }

  return result;
}

@end