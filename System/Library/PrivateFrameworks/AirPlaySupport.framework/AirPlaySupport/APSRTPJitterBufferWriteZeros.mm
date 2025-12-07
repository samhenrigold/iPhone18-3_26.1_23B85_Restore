@interface APSRTPJitterBufferWriteZeros
@end

@implementation APSRTPJitterBufferWriteZeros

uint64_t ___APSRTPJitterBufferWriteZeros_block_invoke(uint64_t result)
{
  if (gLogCategory_APSRTPJitterBuffer <= 20)
  {
    v1 = result;
    if (gLogCategory_APSRTPJitterBuffer != -1)
    {
      return LogPrintF(&gLogCategory_APSRTPJitterBuffer, "void _APSRTPJitterBufferWriteZeros(APSRTPJitterBufferRef, uint32_t)_block_invoke", 20, "'%@' Writing %u samples of silence\n", *(*(v1 + 32) + 16), *(v1 + 40));
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_APSRTPJitterBuffer, "void _APSRTPJitterBufferWriteZeros(APSRTPJitterBufferRef, uint32_t)_block_invoke", 20, "'%@' Writing %u samples of silence\n", *(*(v1 + 32) + 16), *(v1 + 40));
    }
  }

  return result;
}

@end