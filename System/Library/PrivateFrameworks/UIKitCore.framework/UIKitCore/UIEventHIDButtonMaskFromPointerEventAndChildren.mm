@interface UIEventHIDButtonMaskFromPointerEventAndChildren
@end

@implementation UIEventHIDButtonMaskFromPointerEventAndChildren

uint64_t ___UIEventHIDButtonMaskFromPointerEventAndChildren_block_invoke(uint64_t a1, uint64_t a2)
{
  result = IOHIDEventGetType();
  if (result == 2)
  {
    result = IOHIDEventGetIntegerValue();
    if (result >= 1)
    {
      v4 = 1 << (result - 1);
      if (result >= 0x3F)
      {
        v4 = 0;
      }

      *(*(*(a1 + 32) + 8) + 24) |= v4;
    }
  }

  return result;
}

@end