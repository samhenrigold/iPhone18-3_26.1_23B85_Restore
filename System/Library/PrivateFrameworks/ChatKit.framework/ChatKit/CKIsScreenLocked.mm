@interface CKIsScreenLocked
@end

@implementation CKIsScreenLocked

uint64_t (*__CKIsScreenLocked_block_invoke())(void)
{
  result = MEMORY[0x193AF5ED0]("MKBGetDeviceLockState", @"MobileKeyBag");
  CKIsScreenLocked__MKBGetDeviceLockState = result;
  return result;
}

@end