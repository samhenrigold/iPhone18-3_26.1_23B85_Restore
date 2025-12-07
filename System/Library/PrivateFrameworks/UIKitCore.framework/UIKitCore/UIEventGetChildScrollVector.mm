@interface UIEventGetChildScrollVector
@end

@implementation UIEventGetChildScrollVector

void ___UIEventGetChildScrollVector_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  IOHIDEventGetFloatValue();
  *(*(*(a1 + 32) + 8) + 32) = v6;
  IOHIDEventGetFloatValue();
  *(*(*(a1 + 32) + 8) + 40) = v7;
  *a4 = 1;
}

@end