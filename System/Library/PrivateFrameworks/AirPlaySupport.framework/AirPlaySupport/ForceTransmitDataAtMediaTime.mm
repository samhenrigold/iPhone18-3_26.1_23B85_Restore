@interface ForceTransmitDataAtMediaTime
@end

@implementation ForceTransmitDataAtMediaTime

uint64_t __protocolDriverSenderAPAT_ForceTransmitDataAtMediaTime_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  FigSimpleMutexLock();
  *(v3 + 148) = v5;
  *(v3 + 164) = v6;

  return FigSimpleMutexUnlock();
}

@end