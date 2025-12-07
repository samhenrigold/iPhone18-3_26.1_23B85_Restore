@interface ShowMessage
@end

@implementation ShowMessage

uint64_t __sharedUI_ShowMessage_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = AirPlayReceiverUI_UpdateStatus(**(a1 + 40), *(a1 + 56), a3, a4, a5, a6, a7, a8, *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

@end