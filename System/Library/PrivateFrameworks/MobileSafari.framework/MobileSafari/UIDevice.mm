@interface UIDevice
@end

@implementation UIDevice

uint64_t __54__UIDevice_MobileSafariExtras__safari_mainScreenClass__block_invoke(uint64_t a1, uint64_t a2)
{
  result = _SFDeviceHasRectangularScreen(a1, a2);
  if (result)
  {
    v4 = 0;
  }

  else
  {
    result = _SFDeviceIsPad(result, v3);
    if (result)
    {
      v4 = 1;
    }

    else
    {
      result = MGGetSInt32Answer();
      if (result > 0x25)
      {
        goto LABEL_17;
      }

      if (((1 << result) & 0x30C0000000) != 0)
      {
        v4 = 4;
        goto LABEL_20;
      }

      if (((1 << result) & 0xC8000) != 0)
      {
        v4 = 2;
        goto LABEL_20;
      }

      if (((1 << result) & 0x3400000) != 0)
      {
        v4 = 2;
        result = MGGetProductType();
        if (result != 1169082144 && result != 3001488778 && result != 3885279870)
        {
          if (result == 4201643249)
          {
            v4 = 2;
          }

          else
          {
            v4 = 3;
          }
        }
      }

      else
      {
LABEL_17:
        if (result == -1)
        {
          v4 = 0;
        }

        else
        {
          v4 = 4;
        }
      }
    }
  }

LABEL_20:
  safari_mainScreenClass_mainScreenClass = v4;
  return result;
}

@end