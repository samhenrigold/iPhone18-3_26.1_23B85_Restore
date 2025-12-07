@interface NETRBClientCreateInternal
@end

@implementation NETRBClientCreateInternal

void ___NETRBClientCreateInternal_block_invoke(void *a1)
{
  v2 = a1[6];
  v3 = __netrbClientList;
  if (!__netrbClientList)
  {
    v7 = a1[7];
    v6 = a1[8];
    __netrbClientList = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, 0);
    if (!__netrbClientList)
    {
      v21 = __error();
      strerror(*v21);
      NETRBErrorLog("unable to create client list %s");
      goto LABEL_16;
    }

    if (NETRBXPCCreate(v7, v6, v8, v9, v10, v11, v12, v13))
    {
      if (NETRBXPCEndPointCreate(v6, v14, v15, v16, v17, v18, v19, v20))
      {
        v3 = __netrbClientList;
        goto LABEL_2;
      }

      NETRBErrorLog("unable to create xpc endpoint connection");
      NETRBXPCCleanup();
    }

    else
    {
      NETRBErrorLog("unable to create xpc connnection to daemon");
    }

    CFRelease(__netrbClientList);
    __netrbClientList = 0;
    goto LABEL_16;
  }

LABEL_2:
  CFArrayAppendValue(v3, v2);
  *(*(a1[4] + 8) + 24) = 1;
  v4 = xpc_dictionary_create(0, 0, 0);
  if (!v4)
  {
    __NETRBClientRemoveFromList(a1[6]);
    NETRBErrorLog("xpc_dictionary_create() failed");
LABEL_16:
    *(*(a1[4] + 8) + 24) = 0;
    return;
  }

  v5 = v4;
  xpc_dictionary_set_uint64(v4, netrbXPCKey, 0x3E8uLL);
  NETRBInfoLog("client %p xpc send -> client create", a1[6]);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 0x40000000;
  v22[2] = ___NETRBClientCreateInternal_block_invoke_2;
  v22[3] = &unk_279EBE7D8;
  v23 = *(a1 + 5);
  v24 = a1[9];
  *(*(a1[4] + 8) + 24) = NETRBXPCSetupAndSend(0, v5, v22);
  if ((*(*(a1[4] + 8) + 24) & 1) == 0)
  {
    __NETRBClientRemoveFromList(a1[6]);
  }

  xpc_release(v5);
}

void ___NETRBClientCreateInternal_block_invoke_2(uint64_t a1, void *a2)
{
  NETRBInfoLog("client %p create xpc response received", *(a1 + 40));
  if (!a2)
  {
    goto LABEL_6;
  }

  *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_uint64(a2, netrbXPCResponse);
  if (*(a1 + 48))
  {
    **(a1 + 48) = xpc_dictionary_get_uint64(a2, netrbXPCErrorCode);
  }

  if (*(*(*(a1 + 32) + 8) + 24) != 2001 || (v4 = *(a1 + 40), string = xpc_dictionary_get_string(a2, netrbXPCClientID), snprintf((v4 + 32), 0x100uLL, "%s", string), *(*(a1 + 40) + 288) = 1, *(*(*(a1 + 32) + 8) + 24) != 2001))
  {
LABEL_6:
    v6 = *(a1 + 40);

    __NETRBClientRemoveFromList(v6);
  }
}

@end