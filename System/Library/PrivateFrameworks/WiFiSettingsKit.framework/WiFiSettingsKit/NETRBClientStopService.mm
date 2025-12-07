@interface NETRBClientStopService
@end

@implementation NETRBClientStopService

void ___NETRBClientStopService_block_invoke(uint64_t a1)
{
  if (__NETRBClientValidateClient(*(a1 + 40)))
  {
    NETRBErrorLog("invalid client %p");
LABEL_3:
    *(*(*(a1 + 32) + 8) + 24) = 0;
    return;
  }

  if (!*(*(a1 + 40) + 289))
  {
    NETRBErrorLog("no service to stop");
    goto LABEL_3;
  }

  v2 = xpc_dictionary_create(0, 0, 0);
  if (!v2)
  {
    NETRBErrorLog("xpc_dictionary_create() failed");
    goto LABEL_3;
  }

  v3 = v2;
  xpc_dictionary_set_uint64(v2, netrbXPCKey[0], 0x3EAuLL);
  xpc_dictionary_set_string(v3, netrbXPCClientID[0], (*(a1 + 40) + 32));
  NETRBInfoLog("client %p xpc send -> stop service", *(a1 + 40));
  v4 = (*(a1 + 40) + 289);
  v4[14] = 0u;
  v4[15] = 0u;
  v4[12] = 0u;
  v4[13] = 0u;
  v4[10] = 0u;
  v4[11] = 0u;
  v4[8] = 0u;
  v4[9] = 0u;
  v4[6] = 0u;
  v4[7] = 0u;
  v4[4] = 0u;
  v4[5] = 0u;
  v4[2] = 0u;
  v4[3] = 0u;
  *v4 = 0u;
  v4[1] = 0u;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 0x40000000;
  v6[2] = ___NETRBClientStopService_block_invoke_2;
  v6[3] = &__block_descriptor_tmp_92;
  v5 = *(a1 + 48);
  v6[4] = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = NETRBXPCSetupAndSend(v5, v3, v6);
  xpc_release(v3);
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    CFRetain(*(a1 + 40));
  }
}

@end