@interface SetDiscoveryMode
@end

@implementation SetDiscoveryMode

void __manager_SetDiscoveryMode_block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = BluetoothEndpointManagerLogComponent;
  if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v19 = v3;
    _os_log_impl(&dword_241BB7000, v2, OS_LOG_TYPE_DEFAULT, "Discovery Mode set to %{public}@", buf, 0xCu);
  }

  CFRetain(*(a1 + 40));
  v4 = *MEMORY[0x277CC0C08];
  v5 = CFEqual(*(a1 + 32), *MEMORY[0x277CC0C08]);
  v6 = *(*(a1 + 48) + 24);
  if (v5)
  {
    if (v6)
    {
      CFRelease(v6);
    }

    *(*(a1 + 48) + 24) = CFRetain(v4);
    v7 = [*(*(a1 + 48) + 40) queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __manager_SetDiscoveryMode_block_invoke_15;
    block[3] = &__block_descriptor_48_e5_v8__0l;
    v14 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
    dispatch_async(v7, block);
  }

  else
  {
    v8 = CFRetain(v6);
    v9 = *(*(a1 + 48) + 24);
    if (v9)
    {
      CFRelease(v9);
    }

    v10 = *MEMORY[0x277CC0BF8];
    if (!CFEqual(*(a1 + 32), *MEMORY[0x277CC0BF8]))
    {
      CFEqual(*(a1 + 32), *MEMORY[0x277CC0C10]);
      v10 = *MEMORY[0x277CC0C00];
    }

    *(*(a1 + 48) + 24) = CFRetain(v10);
    CFEqual(v8, v4);
    if (CFEqual(v8, *(*(a1 + 48) + 24)))
    {
      v11 = BluetoothEndpointManagerLogComponent;
      if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_241BB7000, v11, OS_LOG_TYPE_DEFAULT, "Not changing scan parameters", buf, 2u);
      }

      CFRelease(*(a1 + 40));
    }

    else
    {
      v12 = [*(*(a1 + 48) + 40) queue];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __manager_SetDiscoveryMode_block_invoke_13;
      v15[3] = &__block_descriptor_49_e5_v8__0l;
      v17 = 0;
      v16 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
      dispatch_async(v12, v15);
    }

    CFRelease(v8);
  }

  if (!CFEqual(*(a1 + 32), v4))
  {
    if (BluetoothEndpointCollectionGetCount(*(*(a1 + 48) + 32)))
    {
      manager_postEndpointsChangedNotification(*(a1 + 40));
    }
  }
}

void __manager_SetDiscoveryMode_block_invoke_13(uint64_t a1)
{
  [*(*(a1 + 32) + 40) startLEScanning:*(a1 + 48)];
  v2 = *(a1 + 40);

  CFRelease(v2);
}

void __manager_SetDiscoveryMode_block_invoke_15(uint64_t a1)
{
  [*(*(a1 + 32) + 40) stopLEScanning];
  v2 = *(a1 + 40);

  CFRelease(v2);
}

@end