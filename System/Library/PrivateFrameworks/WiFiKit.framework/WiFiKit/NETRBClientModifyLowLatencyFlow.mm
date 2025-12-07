@interface NETRBClientModifyLowLatencyFlow
@end

@implementation NETRBClientModifyLowLatencyFlow

uint64_t ___NETRBClientModifyLowLatencyFlow_block_invoke(uint64_t a1)
{
  if (__NETRBClientValidateClient(*(a1 + 40)))
  {
    result = NETRBErrorLog("invalid client %p", *(a1 + 40));
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  else
  {
    xpc_dictionary_set_string(*(a1 + 48), netrbXPCClientID, (*(a1 + 40) + 32));
    if (*(a1 + 56))
    {
      v3 = 1019;
    }

    else
    {
      v3 = 1018;
    }

    if (*(a1 + 56))
    {
      v4 = "client %p xpc send -> remove low latency flow";
    }

    else
    {
      v4 = "client %p xpc send -> add low latency flow";
    }

    xpc_dictionary_set_uint64(*(a1 + 48), netrbXPCKey, v3);
    NETRBInfoLog(v4, *(a1 + 40));
    *(*(*(a1 + 32) + 8) + 24) = 0;
    v5 = *(a1 + 48);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 0x40000000;
    v6[2] = ___NETRBClientModifyLowLatencyFlow_block_invoke_2;
    v6[3] = &unk_279EBEF90;
    v7 = *(a1 + 32);
    return NETRBXPCSetupAndSend(0, v5, v6);
  }

  return result;
}

uint64_t ___NETRBClientModifyLowLatencyFlow_block_invoke_2(uint64_t a1, void *a2)
{
  if (a2 && MEMORY[0x2743E2B10](a2) == MEMORY[0x277D86468])
  {
    value = xpc_dictionary_get_value(a2, netrbXPCResponse);
    if (value && (v6 = value, MEMORY[0x2743E2B10]() == MEMORY[0x277D864C8]))
    {
      if (xpc_uint64_get_value(v6) == 2001)
      {
        *(*(*(a1 + 32) + 8) + 24) = 1;
      }
    }

    else
    {
      NETRBErrorLog("response does not contain the success status");
    }
  }

  else
  {
    NETRBErrorLog("response is not a dictionary type");
  }

  return NETRBInfoLog("client %p set low latency flow reponse received, result %u", *(a1 + 40), *(*(*(a1 + 32) + 8) + 24));
}

@end