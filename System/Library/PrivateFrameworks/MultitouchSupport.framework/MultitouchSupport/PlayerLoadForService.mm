@interface PlayerLoadForService
@end

@implementation PlayerLoadForService

void __mt_PlayerLoadForService_block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D85F48];
  MEMORY[0x25F855340](*(*(a1 + 32) + 112), 32, *MEMORY[0x277D85F48], *(a1 + 40));
  mach_port_mod_refs(*v2, *(a1 + 48), 1u, -1);
  v3 = *(*(a1 + 32) + 32);

  dispatch_group_leave(v3);
}

uint64_t __mt_PlayerLoadForService_block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (!dispatch_source_testcancel(*(*(a1 + 32) + 128)) && !IODataQueueWaitForAvailableData(*(a1 + 40), *(a1 + 48)) && IODataQueueDataAvailable(*(a1 + 40)))
  {
    v13 = 528;
    MEMORY[0x28223BE20]();
    memset(v12, 170, 0x210uLL);
    result = IODataQueueDequeue(*(a1 + 40), v12, &v13);
    if (result)
    {
      return result;
    }

    v3 = -536870201;
    v4 = bswap32(v12[0]);
    v5 = bswap32(v12[2]);
    v14 = v4;
    v16 = v5;
    v6 = bswap32(v12[131]);
    v18 = v6;
    memcpy(v17, &v12[3], sizeof(v17));
    v15 = -536870201;
    if (v4 == 1)
    {
      v10 = *(a1 + 32);
      v11 = *(v10 + 200);
      if (!v11)
      {
        goto LABEL_15;
      }

      v9 = v11(v10, v5, v17, v6, *(v10 + 192));
    }

    else
    {
      if (v4 || (v7 = *(a1 + 32), (v8 = *(v7 + 184)) == 0))
      {
LABEL_15:
        v14 = bswap32(v14);
        v15 = bswap32(v3);
        v16 = bswap32(v16);
        v18 = bswap32(v18);
        result = IOConnectCallStructMethod(*(*(a1 + 32) + 112), 1u, &v14, 0x210uLL, 0, 0);
        if (result)
        {
          return printf("error 0x%08X handling control request\n", result);
        }

        return result;
      }

      v9 = v8(v7, v5, v17, v6, &v18, *(v7 + 192));
    }

    v3 = v9;
    goto LABEL_15;
  }

  return puts("unable to handle control requests");
}

@end