@interface APSRTPJitterBufferLegacyDiscardExcess
@end

@implementation APSRTPJitterBufferLegacyDiscardExcess

uint64_t ___APSRTPJitterBufferLegacyDiscardExcess_block_invoke(uint64_t result)
{
  if (gLogCategory_APSRTPJitterBuffer <= 30)
  {
    v1 = result;
    if (gLogCategory_APSRTPJitterBuffer != -1)
    {
      return LogPrintF(&gLogCategory_APSRTPJitterBuffer, "void _APSRTPJitterBufferLegacyDiscardExcess(APSRTPJitterBufferRef, uint32_t)_block_invoke", 30, "'%@' Discard excess requested with totalSampleCount: %u, target: %u\n", *(*(v1 + 32) + 16), *(v1 + 40), *(*(v1 + 32) + 184));
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_APSRTPJitterBuffer, "void _APSRTPJitterBufferLegacyDiscardExcess(APSRTPJitterBufferRef, uint32_t)_block_invoke", 30, "'%@' Discard excess requested with totalSampleCount: %u, target: %u\n", *(*(v1 + 32) + 16), *(v1 + 40), *(*(v1 + 32) + 184));
    }
  }

  return result;
}

uint64_t ___APSRTPJitterBufferLegacyDiscardExcess_block_invoke_2(uint64_t result)
{
  if (gLogCategory_APSRTPJitterBuffer <= 30)
  {
    v1 = result;
    if (gLogCategory_APSRTPJitterBuffer != -1)
    {
      return LogPrintF(&gLogCategory_APSRTPJitterBuffer, "void _APSRTPJitterBufferLegacyDiscardExcess(APSRTPJitterBufferRef, uint32_t)_block_invoke_2", 30, "'%@' Discarding %u samples of excess pcm audio\n", *(*(v1 + 32) + 16), *(v1 + 40));
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_APSRTPJitterBuffer, "void _APSRTPJitterBufferLegacyDiscardExcess(APSRTPJitterBufferRef, uint32_t)_block_invoke_2", 30, "'%@' Discarding %u samples of excess pcm audio\n", *(*(v1 + 32) + 16), *(v1 + 40));
    }
  }

  return result;
}

@end