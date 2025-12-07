@interface APSRTPJitterBufferDecodeOneUnit
@end

@implementation APSRTPJitterBufferDecodeOneUnit

uint64_t ___APSRTPJitterBufferDecodeOneUnit_block_invoke(uint64_t result)
{
  if (gLogCategory_APSRTPJitterBuffer <= 60)
  {
    v1 = result;
    if (gLogCategory_APSRTPJitterBuffer != -1)
    {
      return LogPrintF(&gLogCategory_APSRTPJitterBuffer, "uint32_t _APSRTPJitterBufferDecodeOneUnit(APSRTPJitterBufferRef, AudioConverterComplexInputDataProc, APSRTPJitterBufferSavedPacket *)_block_invoke", 60, "'%@' Writing %u packets of silence (instead of concealed audio) due to decode error %#m\n", *(*(v1 + 32) + 16), *(v1 + 40), *(v1 + 44));
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_APSRTPJitterBuffer, "uint32_t _APSRTPJitterBufferDecodeOneUnit(APSRTPJitterBufferRef, AudioConverterComplexInputDataProc, APSRTPJitterBufferSavedPacket *)_block_invoke", 60, "'%@' Writing %u packets of silence (instead of concealed audio) due to decode error %#m\n", *(*(v1 + 32) + 16), *(v1 + 40), *(v1 + 44));
    }
  }

  return result;
}

uint64_t ___APSRTPJitterBufferDecodeOneUnit_block_invoke_2(uint64_t result)
{
  if (gLogCategory_APSRTPJitterBuffer <= 30)
  {
    v1 = result;
    if (gLogCategory_APSRTPJitterBuffer != -1)
    {
      return LogPrintF(&gLogCategory_APSRTPJitterBuffer, "uint32_t _APSRTPJitterBufferDecodeOneUnit(APSRTPJitterBufferRef, AudioConverterComplexInputDataProc, APSRTPJitterBufferSavedPacket *)_block_invoke_2", 30, "'%@' Underrun occurred during decode: (%u samples produced)\n", *(*(v1 + 32) + 16), *(v1 + 40));
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_APSRTPJitterBuffer, "uint32_t _APSRTPJitterBufferDecodeOneUnit(APSRTPJitterBufferRef, AudioConverterComplexInputDataProc, APSRTPJitterBufferSavedPacket *)_block_invoke_2", 30, "'%@' Underrun occurred during decode: (%u samples produced)\n", *(*(v1 + 32) + 16), *(v1 + 40));
    }
  }

  return result;
}

uint64_t ___APSRTPJitterBufferDecodeOneUnit_block_invoke_3(uint64_t result)
{
  if (gLogCategory_APSRTPJitterBuffer <= 20)
  {
    v1 = result;
    if (gLogCategory_APSRTPJitterBuffer != -1)
    {
      return LogPrintF(&gLogCategory_APSRTPJitterBuffer, "uint32_t _APSRTPJitterBufferDecodeOneUnit(APSRTPJitterBufferRef, AudioConverterComplexInputDataProc, APSRTPJitterBufferSavedPacket *)_block_invoke_3", 20, "'%@' Writing %u packets of concealed audio\n", *(*(v1 + 32) + 16), *(v1 + 40));
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_APSRTPJitterBuffer, "uint32_t _APSRTPJitterBufferDecodeOneUnit(APSRTPJitterBufferRef, AudioConverterComplexInputDataProc, APSRTPJitterBufferSavedPacket *)_block_invoke_3", 20, "'%@' Writing %u packets of concealed audio\n", *(*(v1 + 32) + 16), *(v1 + 40));
    }
  }

  return result;
}

@end