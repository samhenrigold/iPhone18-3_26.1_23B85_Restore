@interface CloseCommChannel
@end

@implementation CloseCommChannel

void __carEndpoint_CloseCommChannel_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    __carEndpoint_CloseCommChannel_block_invoke_cold_1(a1, a2, a3);
  }

  v4 = *(*(a1 + 64) + 472);
  if (v4)
  {
    *(*(*(a1 + 40) + 8) + 24) = CFDictionaryGetValue(v4, *(a1 + 48));
    v5 = *(*(*(a1 + 40) + 8) + 24);
    if (v5)
    {
      v6 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v6)
      {
        v7 = v6(v5);
      }

      else
      {
        v7 = -12782;
      }

      *(*(*(a1 + 32) + 8) + 24) = v7;
      v8 = *(*(*(a1 + 32) + 8) + 24);
      if (v8)
      {
        __carEndpoint_CloseCommChannel_block_invoke_cold_2(v8);
      }

      else if (FigCFEqual())
      {
        v9 = *(*(a1 + 64) + 72);
        if (v9)
        {
          CFRelease(v9);
          *(*(a1 + 64) + 72) = 0;
        }
      }

      else if (FigCFEqual())
      {
        v10 = *(*(a1 + 64) + 88);
        if (v10)
        {
          CFRelease(v10);
          *(*(a1 + 64) + 88) = 0;
        }
      }

      else if (FigCFEqual())
      {
        v11 = *(*(a1 + 64) + 96);
        if (v11)
        {
          CFRelease(v11);
          *(*(a1 + 64) + 96) = 0;
        }
      }

      else if (FigCFEqual())
      {
        v12 = *(*(a1 + 64) + 112);
        if (v12)
        {
          CFRelease(v12);
          *(*(a1 + 64) + 112) = 0;
        }
      }

      else if (FigCFEqual())
      {
        v13 = *(*(a1 + 64) + 128);
        if (v13)
        {
          CFRelease(v13);
          *(*(a1 + 64) + 128) = 0;
        }
      }
    }

    else
    {
      __carEndpoint_CloseCommChannel_block_invoke_cold_3();
    }
  }

  else
  {
    __carEndpoint_CloseCommChannel_block_invoke_cold_4();
  }
}

void __carEndpoint_CloseCommChannel_block_invoke_cold_3()
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_2_16();
  *(v0 + 24) = -16725;
}

void __carEndpoint_CloseCommChannel_block_invoke_cold_4()
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_2_16();
  OUTLINED_FUNCTION_13_7(v0);
}

@end