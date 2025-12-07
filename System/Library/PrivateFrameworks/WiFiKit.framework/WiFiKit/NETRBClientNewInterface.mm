@interface NETRBClientNewInterface
@end

@implementation NETRBClientNewInterface

_BYTE *___NETRBClientNewInterface_block_invoke(uint64_t a1)
{
  if (__NETRBClientValidateClient(*(a1 + 48)))
  {
    return NETRBErrorLog("invalid client %p", *(a1 + 48));
  }

  if (*(*(a1 + 48) + 545) == 1)
  {

    return NETRBErrorLog("client already requested interface");
  }

  else
  {
    NETRBDebugLog("building xpc request", v2, v3, v4, v5, v6, v7, v8, v20);
    xpc_dictionary_set_uint64(*(*(*(a1 + 32) + 8) + 24), netrbXPCKey, 0x3F6uLL);
    xpc_dictionary_set_uint64(*(*(*(a1 + 32) + 8) + 24), netrbXPCOpMode, *(a1 + 80));
    v10 = *(a1 + 56);
    if (v10)
    {
      xpc_dictionary_set_string(*(*(*(a1 + 32) + 8) + 24), netrbXPCExtName, v10);
    }

    xpc_dictionary_set_string(*(*(*(a1 + 32) + 8) + 24), netrbXPCClientID, (*(a1 + 48) + 32));
    if (*(a1 + 88) == 1)
    {
      if (!uuid_is_null(*(a1 + 64)))
      {
        xpc_dictionary_set_uuid(*(*(*(a1 + 32) + 8) + 24), netrbXPCMACUUID, *(a1 + 64));
      }
    }

    else
    {
      xpc_dictionary_set_BOOL(*(*(*(a1 + 32) + 8) + 24), netrbXPCAllocateMACAddress, 0);
    }

    if (*(a1 + 89) == 1)
    {
      xpc_dictionary_set_BOOL(*(*(*(a1 + 32) + 8) + 24), netrbXPCEnableTSO, 1);
    }

    if (*(a1 + 90) == 1)
    {
      xpc_dictionary_set_BOOL(*(*(*(a1 + 32) + 8) + 24), netrbXPCEnableVirtIOHeader, 1);
    }

    if (*(a1 + 91) == 1)
    {
      xpc_dictionary_set_BOOL(*(*(*(a1 + 32) + 8) + 24), netrbXPCEnableMACNAT, 1);
    }

    if (*(a1 + 92) == 1)
    {
      xpc_dictionary_set_BOOL(*(*(*(a1 + 32) + 8) + 24), netrbXPCEnableIsolation, 1);
    }

    if (*(a1 + 93) == 1)
    {
      xpc_dictionary_set_BOOL(*(*(*(a1 + 32) + 8) + 24), netrbXPCEnableChecksumOffload, 1);
    }

    v11 = *(a1 + 84);
    if (v11)
    {
      xpc_dictionary_set_uint64(*(*(*(a1 + 32) + 8) + 24), netrbXPCInterfaceMTU, v11);
    }

    v12 = "";
    v13 = " TSO";
    if (!*(a1 + 89))
    {
      v13 = "";
    }

    if (*(a1 + 92))
    {
      v14 = " Isolated";
    }

    else
    {
      v14 = "";
    }

    if (*(a1 + 93))
    {
      v15 = " CSUM";
    }

    else
    {
      v15 = "";
    }

    if (*(a1 + 91))
    {
      v12 = " MAC-NAT";
    }

    NETRBInfoLog("client %p xpc send -> create interface [%s%s%s%s ]", *(a1 + 48), v13, v14, v15, v12);
    v16 = *(a1 + 48);
    *(v16 + 545) = 1;
    v17 = *(a1 + 72);
    v18 = *(*(*(a1 + 32) + 8) + 24);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 0x40000000;
    v21[2] = ___NETRBClientNewInterface_block_invoke_2;
    v21[3] = &__block_descriptor_tmp_160;
    v21[4] = v16;
    v19 = NETRBXPCSetupAndSend(v17, v18, v21);
    result = *(a1 + 48);
    *(*(*(a1 + 40) + 8) + 24) = v19;
    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      return CFRetain(result);
    }

    else
    {
      result[545] = 0;
    }
  }

  return result;
}

@end