@interface APSRTPJitterBufferSimLegacyDiscardExcess
@end

@implementation APSRTPJitterBufferSimLegacyDiscardExcess

uint64_t ___APSRTPJitterBufferSimLegacyDiscardExcess_block_invoke(uint64_t result)
{
  if (gLogCategory_APSRTPJitterBufferSim <= 30)
  {
    v1 = result;
    if (gLogCategory_APSRTPJitterBufferSim != -1)
    {
      return LogPrintF(&gLogCategory_APSRTPJitterBufferSim, "void _APSRTPJitterBufferSimLegacyDiscardExcess(APSRTPJitterBufferSimRef, uint32_t)_block_invoke", 30, "'%@' Discard excess requested with totalSampleCount: %u, target: %u\n", *(*(v1 + 32) + 16), *(v1 + 40), *(*(v1 + 32) + 184));
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_APSRTPJitterBufferSim, "void _APSRTPJitterBufferSimLegacyDiscardExcess(APSRTPJitterBufferSimRef, uint32_t)_block_invoke", 30, "'%@' Discard excess requested with totalSampleCount: %u, target: %u\n", *(*(v1 + 32) + 16), *(v1 + 40), *(*(v1 + 32) + 184));
    }
  }

  return result;
}

uint64_t ___APSRTPJitterBufferSimLegacyDiscardExcess_block_invoke_2(uint64_t result)
{
  if (gLogCategory_APSRTPJitterBufferSim <= 50)
  {
    v1 = result;
    if (gLogCategory_APSRTPJitterBufferSim != -1)
    {
      return LogPrintF(&gLogCategory_APSRTPJitterBufferSim, "void _APSRTPJitterBufferSimLegacyDiscardExcess(APSRTPJitterBufferSimRef, uint32_t)_block_invoke_2", 50, "'%@' Discarding %u samples of excess pcm audio\n", *(*(v1 + 32) + 16), *(v1 + 40));
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_APSRTPJitterBufferSim, "void _APSRTPJitterBufferSimLegacyDiscardExcess(APSRTPJitterBufferSimRef, uint32_t)_block_invoke_2", 50, "'%@' Discarding %u samples of excess pcm audio\n", *(*(v1 + 32) + 16), *(v1 + 40));
    }
  }

  return result;
}

@end