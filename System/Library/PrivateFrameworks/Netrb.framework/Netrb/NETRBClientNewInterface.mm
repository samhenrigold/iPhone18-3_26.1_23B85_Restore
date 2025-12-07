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
    NETRBDebugLog("building xpc request");
    xpc_dictionary_set_uint64(*(*(*(a1 + 32) + 8) + 24), netrbXPCKey, 0x3F6uLL);
    xpc_dictionary_set_uint64(*(*(*(a1 + 32) + 8) + 24), netrbXPCOpMode, *(a1 + 80));
    v3 = *(a1 + 56);
    if (v3)
    {
      xpc_dictionary_set_string(*(*(*(a1 + 32) + 8) + 24), netrbXPCExtName, v3);
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

    v4 = *(a1 + 84);
    if (v4)
    {
      xpc_dictionary_set_uint64(*(*(*(a1 + 32) + 8) + 24), netrbXPCInterfaceMTU, v4);
    }

    v5 = "";
    v6 = " TSO";
    if (!*(a1 + 89))
    {
      v6 = "";
    }

    if (*(a1 + 92))
    {
      v7 = " Isolated";
    }

    else
    {
      v7 = "";
    }

    if (*(a1 + 93))
    {
      v8 = " CSUM";
    }

    else
    {
      v8 = "";
    }

    if (*(a1 + 91))
    {
      v5 = " MAC-NAT";
    }

    NETRBInfoLog("client %p xpc send -> create interface [%s%s%s%s ]", *(a1 + 48), v6, v7, v8, v5);
    v9 = *(a1 + 48);
    *(v9 + 545) = 1;
    v10 = *(a1 + 72);
    v11 = *(*(*(a1 + 32) + 8) + 24);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 0x40000000;
    v13[2] = ___NETRBClientNewInterface_block_invoke_2;
    v13[3] = &__block_descriptor_tmp_160;
    v13[4] = v9;
    v12 = NETRBXPCSetupAndSend(v10, v11, v13);
    result = *(a1 + 48);
    *(*(*(a1 + 40) + 8) + 24) = v12;
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