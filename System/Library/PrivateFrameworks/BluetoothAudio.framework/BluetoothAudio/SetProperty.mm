@interface SetProperty
@end

@implementation SetProperty

void __endpoint_SetProperty_block_invoke(void *a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a1[6];
  v2 = a1[7];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(v3, *MEMORY[0x277CC1420]))
  {
    valuePtr = 0;
    if (CFNumberGetValue(v2, kCFNumberIntType, &valuePtr))
    {
      v5 = +[BluetoothBridge sharedBluetoothBridge];
      v6 = [v5 deviceFromIdentifier:DerivedStorage[5]];

      v7 = objc_alloc_init(MEMORY[0x277CBE028]);
      [v7 setListeningMode:valuePtr];
      v8 = BluetoothEndpointManagerLogComponent;
      if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109378;
        *&buf[4] = valuePtr;
        LOWORD(v30) = 2112;
        *(&v30 + 2) = v6;
        _os_log_impl(&dword_241BB7000, v8, OS_LOG_TYPE_DEFAULT, "Set listening mode to %d for %@", buf, 0x12u);
      }

      v9 = objc_alloc_init(MEMORY[0x277CBE010]);
      *buf = MEMORY[0x277D85DD0];
      *&v30 = 3221225472;
      *(&v30 + 1) = ___endpoint_SetProperty_block_invoke;
      v31 = &unk_278D10448;
      v32 = v9;
      v10 = v9;
      [v10 modifyDevice:v6 settings:v7 completion:buf];
    }

    else if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_ERROR))
    {
      __endpoint_SetProperty_block_invoke_cold_1();
    }

    goto LABEL_16;
  }

  if (CFEqual(v3, @"ConversationDetectEnable"))
  {
    Value = CFBooleanGetValue(v2);
    v12 = +[BluetoothBridge sharedBluetoothBridge];
    v13 = [v12 deviceFromIdentifier:DerivedStorage[5]];

    [v13 setIdentifier:DerivedStorage[5]];
    v14 = objc_alloc_init(MEMORY[0x277CBE028]);
    v15 = v14;
    if (Value)
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }

    [v14 setConversationDetectConfig:v16];
    v17 = BluetoothEndpointManagerLogComponent;
    if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      *&buf[4] = Value != 0;
      LOWORD(v30) = 2112;
      *(&v30 + 2) = v13;
      _os_log_impl(&dword_241BB7000, v17, OS_LOG_TYPE_DEFAULT, "Set conversationDetect mode to %d for %@", buf, 0x12u);
    }

    v18 = objc_alloc_init(MEMORY[0x277CBE010]);
    *buf = MEMORY[0x277D85DD0];
    *&v30 = 3221225472;
    v19 = ___endpoint_SetProperty_block_invoke_68;
LABEL_13:
    *(&v30 + 1) = v19;
    v31 = &unk_278D10448;
    v32 = v18;
    v20 = v18;
    [v20 modifyDevice:v13 settings:v15 completion:buf];

    goto LABEL_16;
  }

  if (CFEqual(v3, *MEMORY[0x277CC1248]))
  {
    v22 = CFGetTypeID(v2);
    if (v22 != CFBooleanGetTypeID())
    {
      goto LABEL_16;
    }

    v23 = CFBooleanGetValue(v2);
    v13 = objc_alloc_init(MEMORY[0x277CBE020]);
    [v13 setIdentifier:DerivedStorage[5]];
    v15 = objc_alloc_init(MEMORY[0x277CBE028]);
    [v15 setSpatialAudioAllowed:v23 != 0];
    v24 = BluetoothEndpointManagerLogComponent;
    if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      *&buf[4] = v23 != 0;
      LOWORD(v30) = 2112;
      *(&v30 + 2) = v13;
      _os_log_impl(&dword_241BB7000, v24, OS_LOG_TYPE_DEFAULT, "Set setSpatialAudioAllowed mode to %d for %@", buf, 0x12u);
    }

    v18 = objc_alloc_init(MEMORY[0x277CBE010]);
    *buf = MEMORY[0x277D85DD0];
    *&v30 = 3221225472;
    v19 = ___endpoint_SetProperty_block_invoke_70;
    goto LABEL_13;
  }

  if (CFEqual(v3, *MEMORY[0x277CC1358]))
  {
    valuePtr = 0;
    if (!CFNumberGetValue(v2, kCFNumberSInt32Type, &valuePtr))
    {
      if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_ERROR))
      {
        __endpoint_SetProperty_block_invoke_cold_2();
      }

      goto LABEL_16;
    }

    v13 = objc_alloc_init(MEMORY[0x277CBE020]);
    [v13 setIdentifier:DerivedStorage[5]];
    v15 = objc_alloc_init(MEMORY[0x277CBE028]);
    [v15 setSpatialAudioMode:valuePtr];
    v25 = BluetoothEndpointManagerLogComponent;
    if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      *&buf[4] = valuePtr;
      LOWORD(v30) = 2112;
      *(&v30 + 2) = v13;
      _os_log_impl(&dword_241BB7000, v25, OS_LOG_TYPE_DEFAULT, "Set setSpatialAudioMode mode to %d for %@", buf, 0x12u);
    }

    v18 = objc_alloc_init(MEMORY[0x277CBE010]);
    *buf = MEMORY[0x277D85DD0];
    *&v30 = 3221225472;
    v19 = ___endpoint_SetProperty_block_invoke_71;
    goto LABEL_13;
  }

  if (!CFEqual(v3, @"UserPickedRoute"))
  {
    v21 = -12787;
    goto LABEL_17;
  }

  v26 = CFGetTypeID(v2);
  if (v26 == CFBooleanGetTypeID())
  {
    v27 = CFBooleanGetValue(v2) != 0;
    endpoint_SetUserRouted(DerivedStorage, v27);
  }

LABEL_16:
  v21 = 0;
LABEL_17:
  *(*(a1[4] + 8) + 24) = v21;
}

void ___endpoint_SetProperty_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_ERROR))
  {
    ___endpoint_SetProperty_block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
}

void ___endpoint_SetProperty_block_invoke_68(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_ERROR))
  {
    ___endpoint_SetProperty_block_invoke_68_cold_1();
  }

  [*(a1 + 32) invalidate];
}

void ___endpoint_SetProperty_block_invoke_70(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_ERROR))
  {
    ___endpoint_SetProperty_block_invoke_70_cold_1();
  }

  [*(a1 + 32) invalidate];
}

void ___endpoint_SetProperty_block_invoke_71(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_ERROR))
  {
    ___endpoint_SetProperty_block_invoke_71_cold_1();
  }

  [*(a1 + 32) invalidate];
}

@end