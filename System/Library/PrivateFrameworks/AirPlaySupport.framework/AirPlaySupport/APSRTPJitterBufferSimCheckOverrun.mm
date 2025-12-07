@interface APSRTPJitterBufferSimCheckOverrun
@end

@implementation APSRTPJitterBufferSimCheckOverrun

uint64_t ___APSRTPJitterBufferSimCheckOverrun_block_invoke(uint64_t result)
{
  if (gLogCategory_APSRTPJitterBufferSim <= 50)
  {
    v1 = result;
    if (gLogCategory_APSRTPJitterBufferSim != -1)
    {
      return LogPrintF(&gLogCategory_APSRTPJitterBufferSim, "void _APSRTPJitterBufferSimCheckOverrun(APSRTPJitterBufferSimRef, uint32_t)_block_invoke", 50, "%@' Jitter buffer overrun; read Pointer: %u, write Pointer: %u, diff: %u, actual space: %u\n", *(*(v1 + 32) + 16), *(v1 + 40), *(v1 + 44), (*(v1 + 44) - *(v1 + 40)), *(v1 + 48));
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_APSRTPJitterBufferSim, "void _APSRTPJitterBufferSimCheckOverrun(APSRTPJitterBufferSimRef, uint32_t)_block_invoke", 50, "%@' Jitter buffer overrun; read Pointer: %u, write Pointer: %u, diff: %u, actual space: %u\n", *(*(v1 + 32) + 16), *(v1 + 40), *(v1 + 44), (*(v1 + 44) - *(v1 + 40)), *(v1 + 48));
    }
  }

  return result;
}

@end