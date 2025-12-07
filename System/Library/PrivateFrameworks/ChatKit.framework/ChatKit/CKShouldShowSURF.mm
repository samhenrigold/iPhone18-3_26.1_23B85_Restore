@interface CKShouldShowSURF
@end

@implementation CKShouldShowSURF

uint64_t (*__CKShouldShowSURF_block_invoke())(void)
{
  result = MEMORY[0x193AF5ED0]("PKPeerPaymentMessagesExtensionIsVisible", @"PassKitCore");
  CKShouldShowSURF__PKPeerPaymentMessagesExtensionIsVisible = result;
  return result;
}

@end