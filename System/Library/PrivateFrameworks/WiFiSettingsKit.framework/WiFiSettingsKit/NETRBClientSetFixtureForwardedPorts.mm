@interface NETRBClientSetFixtureForwardedPorts
@end

@implementation NETRBClientSetFixtureForwardedPorts

void ___NETRBClientSetFixtureForwardedPorts_block_invoke(uint64_t a1)
{
  if (__NETRBClientValidateClient(*(a1 + 48)))
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
  xpc_dictionary_set_uint64(v2, netrbXPCKey[0], 0x3EEuLL);
  xpc_dictionary_set_string(v3, netrbXPCClientID[0], (*(a1 + 48) + 32));
  v4 = netrbXPCForwardedLowPort[0];
  uint64 = xpc_dictionary_get_uint64(*(a1 + 56), netrbClientForwardedLowPort[0]);
  xpc_dictionary_set_uint64(v3, v4, uint64);
  v6 = netrbXPCForwardedHighPort[0];
  v7 = xpc_dictionary_get_uint64(*(a1 + 56), netrbClientForwardedHighPort[0]);
  xpc_dictionary_set_uint64(v3, v6, v7);
  NETRBInfoLog("client %p xpc send -> set forwarded ports", *(a1 + 48));
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 0x40000000;
  v8[2] = ___NETRBClientSetFixtureForwardedPorts_block_invoke_2;
  v8[3] = &unk_279ECB9D8;
  v9 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = NETRBXPCSetupAndSend(0, v3, v8);
  xpc_release(v3);
}

uint64_t ___NETRBClientSetFixtureForwardedPorts_block_invoke_2(uint64_t a1, void *a2)
{
  result = NETRBInfoLog("client %p set forwarded ports xpc response received", *(a1 + 40));
  if (a2)
  {
    result = xpc_dictionary_get_uint64(a2, netrbXPCResponse[0]);
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

@end