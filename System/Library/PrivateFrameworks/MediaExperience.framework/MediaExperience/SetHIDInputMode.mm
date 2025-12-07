@interface SetHIDInputMode
@end

@implementation SetHIDInputMode

void __central_SetHIDInputMode_block_invoke(void *a1)
{
  v2 = a1[5];
  if (*v2)
  {
    __central_SetHIDInputMode_block_invoke_cold_1();
  }

  else
  {
    v3 = *(v2 + 8);
    if (v3 && (FigEndpointExtendedGetClassID(), CMBaseObjectIsMemberOfClass()) && (v4 = CFRetain(v3)) != 0)
    {
      v5 = v4;
      v6 = a1[6];
      v7 = a1[7];
      v8 = *(*(CMBaseObjectGetVTable() + 24) + 56);
      if (v8)
      {
        v9 = v8(v5, v6, v7);
      }

      else
      {
        v9 = -12782;
      }

      *(*(a1[4] + 8) + 24) = v9;

      CFRelease(v5);
    }

    else
    {
      *(*(a1[4] + 8) + 24) = -12782;
    }
  }
}

@end