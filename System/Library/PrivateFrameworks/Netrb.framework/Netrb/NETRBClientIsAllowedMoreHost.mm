@interface NETRBClientIsAllowedMoreHost
@end

@implementation NETRBClientIsAllowedMoreHost

void ___NETRBClientIsAllowedMoreHost_block_invoke(uint64_t a1)
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
  xpc_dictionary_set_uint64(v2, netrbXPCKey, 0x3EFuLL);
  xpc_dictionary_set_string(v3, netrbXPCClientID, (*(a1 + 48) + 32));
  NETRBInfoLog("client %p xpc send -> allowed more host", *(a1 + 48));
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___NETRBClientIsAllowedMoreHost_block_invoke_2;
  v4[3] = &unk_279967680;
  v5 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = NETRBXPCSetupAndSend(0, v3, v4);
  xpc_release(v3);
}

uint64_t ___NETRBClientIsAllowedMoreHost_block_invoke_2(uint64_t a1, void *a2)
{
  result = NETRBInfoLog("client %p allowed more host xpc response received", *(a1 + 40));
  if (a2)
  {
    result = xpc_dictionary_get_uint64(a2, netrbXPCResponse);
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

@end