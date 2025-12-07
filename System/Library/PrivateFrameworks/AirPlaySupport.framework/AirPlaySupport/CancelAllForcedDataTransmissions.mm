@interface CancelAllForcedDataTransmissions
@end

@implementation CancelAllForcedDataTransmissions

uint64_t __protocolDriverSenderAPAT_CancelAllForcedDataTransmissions_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  FigSimpleMutexLock();
  v4 = MEMORY[0x277CC0898];
  *(v3 + 148) = *MEMORY[0x277CC0898];
  *(v3 + 164) = *(v4 + 16);

  return FigSimpleMutexUnlock();
}

@end