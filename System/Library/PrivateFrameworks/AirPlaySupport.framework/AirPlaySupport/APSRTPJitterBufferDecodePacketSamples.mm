@interface APSRTPJitterBufferDecodePacketSamples
@end

@implementation APSRTPJitterBufferDecodePacketSamples

uint64_t ___APSRTPJitterBufferDecodePacketSamples_block_invoke(uint64_t result)
{
  if (gLogCategory_APSRTPJitterBuffer <= 30)
  {
    v1 = result;
    if (gLogCategory_APSRTPJitterBuffer != -1)
    {
      return LogPrintF(&gLogCategory_APSRTPJitterBuffer, "uint32_t _APSRTPJitterBufferDecodePacketSamples(APSRTPJitterBufferRef, uint32_t, APSRTPJitterBufferSavedPacket *)_block_invoke", 30, "'%@' Writing %u samples of silence (instead of concealed audio) due to non-multiple of frames per packet\n", *(*(v1 + 32) + 16), *(v1 + 40));
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_APSRTPJitterBuffer, "uint32_t _APSRTPJitterBufferDecodePacketSamples(APSRTPJitterBufferRef, uint32_t, APSRTPJitterBufferSavedPacket *)_block_invoke", 30, "'%@' Writing %u samples of silence (instead of concealed audio) due to non-multiple of frames per packet\n", *(*(v1 + 32) + 16), *(v1 + 40));
    }
  }

  return result;
}

@end