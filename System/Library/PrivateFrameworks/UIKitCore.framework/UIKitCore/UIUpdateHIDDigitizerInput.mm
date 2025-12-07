@interface UIUpdateHIDDigitizerInput
@end

@implementation UIUpdateHIDDigitizerInput

uint64_t __39___UIUpdateHIDDigitizerInput_addEvent___block_invoke(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  IOHIDEventGetIntegerValue();
  IOHIDEventGetIntegerValue();
  result = IOHIDEventGetIntegerValue();
  if (result == 65308)
  {
    result = IOHIDEventGetIntegerValue();
    if (result == 32)
    {
      result = IOHIDEventGetDataValue();
      *(a1[4] + 144) = *(result + 8) - *(result + 16);
      *(a1[4] + 152) = *(result + 16);
      *(*(a1[5] + 8) + 24) = *(result + 1);
      *(*(a1[6] + 8) + 24) = result;
      *a4 = 1;
    }
  }

  return result;
}

void __39___UIUpdateHIDDigitizerInput_addEvent___block_invoke_2(uint64_t a1, uint64_t a2)
{
  IntegerValue = IOHIDEventGetIntegerValue();
  v5 = IOHIDEventGetIntegerValue();
  TouchLocus = BKSHIDEventDigitizerGetTouchLocus();
  v7 = _UIEventHIDPathIndexForDigitizerEvent(*(a1 + 40), a2);
  if (!IntegerValue || v5 < 0 || TouchLocus == 3)
  {
    v9 = *(*(a1 + 32) + 120);
    v10 = [MEMORY[0x1E696AD98] numberWithLong:v7];
    [v9 removeObject:?];
  }

  else
  {
    v8 = *(*(a1 + 32) + 120);
    v10 = [MEMORY[0x1E696AD98] numberWithLong:v7];
    [v8 addObject:?];
  }
}

@end