@interface Finalize
@end

@implementation Finalize

void __endpoint_Finalize_block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *v2;
  *v2 = 0;

  v4 = BluetoothEndpointManagerLogComponent;
  if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 40);
    v17 = 138412290;
    v18 = v5;
    _os_log_impl(&dword_241BB7000, v4, OS_LOG_TYPE_DEFAULT, "Finalize %@", &v17, 0xCu);
  }

  v6 = 0;
  v7 = 1;
  do
  {
    v8 = v7;
    v9 = *(*(a1 + 32) + 8 * v6 + 16);
    if (v9)
    {
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v10)
      {
        v10(v9);
      }

      v11 = *(*(a1 + 32) + 8 * v6 + 16);
      if (v11)
      {
        CFRelease(v11);
        *(*(a1 + 32) + 8 * v6 + 16) = 0;
      }
    }

    v7 = 0;
    v6 = 1;
  }

  while ((v8 & 1) != 0);
  v12 = *(a1 + 32);
  v13 = v12[9];
  if (v13)
  {
    CFRelease(v13);
    *(*(a1 + 32) + 72) = 0;
    v12 = *(a1 + 32);
  }

  v14 = v12[4];
  if (v14)
  {
    CFRelease(v14);
    *(*(a1 + 32) + 32) = 0;
    v12 = *(a1 + 32);
  }

  v15 = v12[5];
  if (v15)
  {
    CFRelease(v15);
    *(*(a1 + 32) + 40) = 0;
    v12 = *(a1 + 32);
  }

  v16 = v12[7];
  if (v16)
  {
    CFRelease(v16);
    *(*(a1 + 32) + 56) = 0;
  }
}

void __audioStream_Finalize_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  if (v3)
  {
    CFRelease(v3);
    *(*(a1 + 32) + 16) = 0;
    v2 = *(a1 + 32);
  }

  v4 = *(v2 + 24);
  if (v4)
  {
    CFRelease(v4);
    *(*(a1 + 32) + 24) = 0;
    v2 = *(a1 + 32);
  }

  if (*v2)
  {
    dispatch_release(*v2);
    **(a1 + 32) = 0;
  }
}

@end