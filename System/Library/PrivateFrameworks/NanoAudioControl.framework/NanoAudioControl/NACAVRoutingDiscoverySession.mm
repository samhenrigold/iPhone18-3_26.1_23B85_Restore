@interface NACAVRoutingDiscoverySession
@end

@implementation NACAVRoutingDiscoverySession

void __37___NACAVRoutingDiscoverySession_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[4];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37___NACAVRoutingDiscoverySession_init__block_invoke_2;
    block[3] = &unk_27992B4E8;
    v5 = WeakRetained;
    dispatch_async(v3, block);
  }
}

void __37___NACAVRoutingDiscoverySession_init__block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if ((*(v1 + 40) & 1) == 0)
  {
    *(v1 + 40) = 1;
    v3 = NMLogForCategory(4);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(*(a1 + 32) + 8);
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_25AEBF000, v3, OS_LOG_TYPE_DEFAULT, "[NACEndpointObserver] Got initial updates for MRAVEndpoints in session %@!", &v6, 0xCu);
    }

    dispatch_group_leave(*(*(a1 + 32) + 24));
    MRAVRoutingDiscoverySessionRemoveEndpointsChangedCallback();
    v5 = *(*(a1 + 32) + 16);
    if (v5)
    {
      CFRelease(v5);
    }
  }
}

void __74___NACAVRoutingDiscoverySession_fetchRouteForOriginIdentifier_completion___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = MRAVRoutingDiscoverySessionCopyAvailableEndpoints();
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v16 + 1) + 8 * v6);
        if (MRAVEndpointGetExternalDevice())
        {
          v8 = MRExternalDeviceCopyCustomOrigin();
          if (v8)
          {
            v9 = v8;
            UniqueIdentifier = MROriginGetUniqueIdentifier();
            if (UniqueIdentifier == [*(a1 + 40) intValue])
            {
              v11 = [objc_alloc(MEMORY[0x277CD5D20]) initWithEndpoint:v7];
              CFRelease(v9);
              if (v11)
              {
                goto LABEL_15;
              }
            }

            else
            {
              CFRelease(v9);
            }
          }
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
  }

  v11 = 0;
LABEL_15:

  v12 = *(a1 + 56);
  if (v12)
  {
    (*(v12 + 16))(v12, v11);
  }

  v13 = *(*(a1 + 32) + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74___NACAVRoutingDiscoverySession_fetchRouteForOriginIdentifier_completion___block_invoke_2;
  block[3] = &unk_27992B4E8;
  v15 = *(a1 + 48);
  dispatch_async(v13, block);
}

@end