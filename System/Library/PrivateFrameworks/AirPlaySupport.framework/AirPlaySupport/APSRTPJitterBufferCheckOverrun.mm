@interface APSRTPJitterBufferCheckOverrun
@end

@implementation APSRTPJitterBufferCheckOverrun

uint64_t ___APSRTPJitterBufferCheckOverrun_block_invoke(uint64_t result)
{
  if (gLogCategory_APSRTPJitterBuffer <= 30)
  {
    v1 = result;
    if (gLogCategory_APSRTPJitterBuffer != -1)
    {
      return LogPrintF(&gLogCategory_APSRTPJitterBuffer, "void _APSRTPJitterBufferCheckOverrun(APSRTPJitterBufferRef, uint32_t)_block_invoke", 30, "%@' Jitter buffer overrun; read Pointer: %u, write Pointer: %u, diff: %u, actual space: %u\n", *(*(v1 + 32) + 16), *(v1 + 40), *(v1 + 44), (*(v1 + 44) - *(v1 + 40)), *(v1 + 48));
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_APSRTPJitterBuffer, "void _APSRTPJitterBufferCheckOverrun(APSRTPJitterBufferRef, uint32_t)_block_invoke", 30, "%@' Jitter buffer overrun; read Pointer: %u, write Pointer: %u, diff: %u, actual space: %u\n", *(*(v1 + 32) + 16), *(v1 + 40), *(v1 + 44), (*(v1 + 44) - *(v1 + 40)), *(v1 + 48));
    }
  }

  return result;
}

@end