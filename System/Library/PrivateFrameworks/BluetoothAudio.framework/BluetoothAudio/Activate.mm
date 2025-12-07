@interface Activate
@end

@implementation Activate

void __endpoint_Activate_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 40) + 40);
  v3 = BluetoothEndpointManagerLogComponent;
  if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(a1 + 40) + 40);
    *buf = 138412290;
    v10 = v4;
    _os_log_impl(&dword_241BB7000, v3, OS_LOG_TYPE_DEFAULT, "Activate %@", buf, 0xCu);
  }

  if (*(a1 + 48) == 2)
  {
    endpoint_SetUserRouted(*(a1 + 40), 1);
    *(*(a1 + 40) + 88) = *(a1 + 48);
    CFRetain(*(a1 + 56));
    v5 = +[BluetoothBridge sharedBluetoothBridge];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __endpoint_Activate_block_invoke_75;
    v6[3] = &__block_descriptor_64_e8_v12__0i8l;
    v6[4] = *(a1 + 40);
    v7 = vextq_s8(*(a1 + 56), *(a1 + 56), 8uLL);
    v8 = *(a1 + 72);
    [v5 connectToAddress:v2 completionHandler:v6];
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = -16720;
  }
}

void __endpoint_Activate_block_invoke_75(uint64_t a1, int a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = BluetoothEndpointManagerLogComponent;
  if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 40);
    *buf = 138412546;
    v16 = v5;
    v17 = 1024;
    v18 = a2;
    _os_log_impl(&dword_241BB7000, v4, OS_LOG_TYPE_DEFAULT, "Activated %@ with result %d", buf, 0x12u);
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 80) + 1;
  *(v6 + 80) = v7;
  if (a2)
  {
    v8 = 0;
    *(v6 + 88) = 0;
  }

  else
  {
    v8 = *(v6 + 88);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = *v6;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __endpoint_Activate_block_invoke_76;
    v13[3] = &__block_descriptor_76_e5_v8__0l;
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    v13[4] = v9;
    v13[5] = v11;
    v13[6] = v8;
    v13[7] = v7;
    v14 = a2;
    v13[8] = v12;
    dispatch_async(v10, v13);
  }

  else
  {
    CFRelease(*(a1 + 48));
  }
}

void __endpoint_Activate_block_invoke_76(uint64_t a1)
{
  (*(a1 + 32))(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 72), *(a1 + 64));
  v2 = *(a1 + 40);

  CFRelease(v2);
}

@end