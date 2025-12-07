@interface APSRTPJitterBufferSimWritePacket
@end

@implementation APSRTPJitterBufferSimWritePacket

uint64_t ___APSRTPJitterBufferSimWritePacket_block_invoke(uint64_t result)
{
  if (gLogCategory_APSRTPJitterBufferSim <= 30)
  {
    v1 = result;
    if (gLogCategory_APSRTPJitterBufferSim != -1)
    {
      return LogPrintF(&gLogCategory_APSRTPJitterBufferSim, "void _APSRTPJitterBufferSimWritePacket(void *, APSRTPJitterBufferSimPacket *)_block_invoke", 30, "Skipping out of order packet; expected ts %u, received %u\n", *(*(v1 + 32) + 240), *(*(v1 + 40) + 4));
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_APSRTPJitterBufferSim, "void _APSRTPJitterBufferSimWritePacket(void *, APSRTPJitterBufferSimPacket *)_block_invoke", 30, "Skipping out of order packet; expected ts %u, received %u\n", *(*(v1 + 32) + 240), *(*(v1 + 40) + 4));
    }
  }

  return result;
}

uint64_t ___APSRTPJitterBufferSimWritePacket_block_invoke_2(uint64_t result)
{
  if (gLogCategory_APSRTPJitterBufferSim <= 30)
  {
    v1 = result;
    if (gLogCategory_APSRTPJitterBufferSim != -1)
    {
      return LogPrintF(&gLogCategory_APSRTPJitterBufferSim, "void _APSRTPJitterBufferSimWritePacket(void *, APSRTPJitterBufferSimPacket *)_block_invoke_2", 30, "'%@' Gap detected: %u samples (%u ms), expected %u, received %u\n", *(*(v1 + 32) + 16), *(v1 + 40), 1000 * *(v1 + 40) / *(*(v1 + 32) + 112), *(v1 + 44), *(v1 + 48));
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_APSRTPJitterBufferSim, "void _APSRTPJitterBufferSimWritePacket(void *, APSRTPJitterBufferSimPacket *)_block_invoke_2", 30, "'%@' Gap detected: %u samples (%u ms), expected %u, received %u\n", *(*(v1 + 32) + 16), *(v1 + 40), 1000 * *(v1 + 40) / *(*(v1 + 32) + 112), *(v1 + 44), *(v1 + 48));
    }
  }

  return result;
}

uint64_t ___APSRTPJitterBufferSimWritePacket_block_invoke_3(uint64_t result)
{
  if (gLogCategory_APSRTPJitterBufferSim <= 30)
  {
    v1 = result;
    if (gLogCategory_APSRTPJitterBufferSim != -1)
    {
      return LogPrintF(&gLogCategory_APSRTPJitterBufferSim, "void _APSRTPJitterBufferSimWritePacket(void *, APSRTPJitterBufferSimPacket *)_block_invoke_3", 30, "'%@' Triggering discard excess with enqueued sample count: %u\n", *(*(v1 + 32) + 16), *(v1 + 40), *(*(v1 + 32) + 180));
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_APSRTPJitterBufferSim, "void _APSRTPJitterBufferSimWritePacket(void *, APSRTPJitterBufferSimPacket *)_block_invoke_3", 30, "'%@' Triggering discard excess with enqueued sample count: %u\n", *(*(v1 + 32) + 16), *(v1 + 40), *(*(v1 + 32) + 180));
    }
  }

  return result;
}

@end