@interface CreateRemoteControlSession
@end

@implementation CreateRemoteControlSession

void __carEndpoint_CreateRemoteControlSession_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(result + 48);
  if (!*(v4 + 177))
  {
    if (gLogCategory_APEndpointCarPlay <= 90 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
    {
      __carEndpoint_CreateRemoteControlSession_block_invoke_cold_6(result);
    }

    v8 = *(*(result + 32) + 8);
    v9 = -17605;
    goto LABEL_13;
  }

  if (*(result + 104))
  {
    v5 = *(v4 + 472);
    if (v5)
    {
      **(result + 72) = CFDictionaryGetValue(v5, **(*(*(result + 40) + 8) + 24));
      v6 = **(result + 72);
      if (v6)
      {
        CFRetain(v6);
        if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
        {
          __carEndpoint_CreateRemoteControlSession_block_invoke_cold_1(result, result + 72, v7);
        }
      }

      else
      {
        __carEndpoint_CreateRemoteControlSession_block_invoke_cold_2();
      }

      return;
    }

    v8 = *(*(result + 32) + 8);
    v9 = -17606;
LABEL_13:
    *(v8 + 24) = v9;
    return;
  }

  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    __carEndpoint_CreateRemoteControlSession_block_invoke_cold_3(result, a2, a3);
  }

  *(*(*(result + 32) + 8) + 24) = carEndpoint_createCommChannelInternal(*(result + 88), *(result + 96), *(result + 72), *(*(*(result + 40) + 8) + 24));
  if (gLogCategory_APEndpointCarPlay <= 50 && (gLogCategory_APEndpointCarPlay != -1 || _LogCategory_Initialize()))
  {
    __carEndpoint_CreateRemoteControlSession_block_invoke_cold_4(result, result + 32, v10);
  }

  v11 = *(*(*(result + 32) + 8) + 24);
  if (v11)
  {
    __carEndpoint_CreateRemoteControlSession_block_invoke_cold_5(v11);
  }
}

void __carEndpoint_CreateRemoteControlSession_block_invoke_cold_2()
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_2_16();
  *(v0 + 24) = -17606;
}

@end