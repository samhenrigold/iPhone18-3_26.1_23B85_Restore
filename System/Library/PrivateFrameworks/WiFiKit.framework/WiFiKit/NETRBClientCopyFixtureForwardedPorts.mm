@interface NETRBClientCopyFixtureForwardedPorts
@end

@implementation NETRBClientCopyFixtureForwardedPorts

void ___NETRBClientCopyFixtureForwardedPorts_block_invoke(uint64_t a1)
{
  if (__NETRBClientValidateClient(*(a1 + 64)))
  {
    NETRBErrorLog("invalid client %p");
LABEL_3:
    *(*(*(a1 + 32) + 8) + 24) = 0;
    return;
  }

  v2 = xpc_dictionary_create(0, 0, 0);
  if (!v2)
  {
    NETRBErrorLog("xpc_dictionary_create() failed");
    goto LABEL_3;
  }

  v3 = v2;
  xpc_dictionary_set_uint64(v2, netrbXPCKey, 0x3EDuLL);
  xpc_dictionary_set_string(v3, netrbXPCClientID, (*(a1 + 64) + 32));
  NETRBInfoLog("client %p xpc send -> get forwarded ports", *(a1 + 64));
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___NETRBClientCopyFixtureForwardedPorts_block_invoke_2;
  v5[3] = &unk_279EBEA20;
  v4 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = v4;
  *(*(*(a1 + 32) + 8) + 24) = NETRBXPCSetupAndSend(0, v3, v5);
  xpc_release(v3);
}

uint64_t ___NETRBClientCopyFixtureForwardedPorts_block_invoke_2(uint64_t a1, void *a2)
{
  result = NETRBInfoLog("client %p get forwarded ports xpc response received", *(a1 + 56));
  if (a2)
  {
    result = xpc_dictionary_get_uint64(a2, netrbXPCResponse);
    *(*(*(a1 + 32) + 8) + 24) = result;
    if (*(*(*(a1 + 32) + 8) + 24) == 2001)
    {
      *(*(*(a1 + 40) + 8) + 24) = xpc_dictionary_get_uint64(a2, netrbXPCForwardedLowPort);
      result = xpc_dictionary_get_uint64(a2, netrbXPCForwardedHighPort);
      *(*(*(a1 + 48) + 8) + 24) = result;
    }
  }

  return result;
}

@end