@interface GCBluetoothDeviceDisconnectionRequest
@end

@implementation GCBluetoothDeviceDisconnectionRequest

void __57___GCBluetoothDeviceDisconnectionRequest_performRequest___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _gc_log_bluetooth(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __57___GCBluetoothDeviceDisconnectionRequest_performRequest___block_invoke_cold_1();
  }
}

void __57___GCBluetoothDeviceDisconnectionRequest_performRequest___block_invoke_52(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = _gc_log_bluetooth(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __57___GCBluetoothDeviceDisconnectionRequest_performRequest___block_invoke_52_cold_1();
    }

    v6 = *(a1 + 56);
    if (v6)
    {
      (*(v6 + 16))(v6, v4);
    }

    [*(a1 + 32) invalidate];
  }

  else
  {
    v7 = objc_opt_new();
    [v7 setDispatchQueue:*(a1 + 40)];
    [v7 setServiceFlags:0xFFFFFFFFLL];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = [*(a1 + 32) discoveredDevices];
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          v14 = [v13 btAddressData];
          v15 = [v14 isEqual:*(a1 + 48)];

          if (v15)
          {
            [v7 setPeerDevice:v13];
            goto LABEL_17;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __57___GCBluetoothDeviceDisconnectionRequest_performRequest___block_invoke_54;
    v17[3] = &unk_1E841A370;
    v18 = v7;
    v20 = *(a1 + 56);
    v19 = *(a1 + 32);
    v16 = v7;
    [v16 disconnectWithCompletion:v17];
  }
}

void __57___GCBluetoothDeviceDisconnectionRequest_performRequest___block_invoke_54(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _gc_log_bluetooth(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __57___GCBluetoothDeviceDisconnectionRequest_performRequest___block_invoke_54_cold_1(a1, v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __57___GCBluetoothDeviceDisconnectionRequest_performRequest___block_invoke_54_cold_2(a1, v5);
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }

  [*(a1 + 32) invalidate];
  [*(a1 + 40) invalidate];
}

void __57___GCBluetoothDeviceDisconnectionRequest_performRequest___block_invoke_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
  _os_log_error_impl(&dword_1D2CD5000, v0, OS_LOG_TYPE_ERROR, "CBDiscovery error: %@", v1, 0xCu);
}

void __57___GCBluetoothDeviceDisconnectionRequest_performRequest___block_invoke_52_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
  _os_log_error_impl(&dword_1D2CD5000, v0, OS_LOG_TYPE_ERROR, "CBDiscovery activation error: %@", v1, 0xCu);
}

void __57___GCBluetoothDeviceDisconnectionRequest_performRequest___block_invoke_54_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 32) peerDevice];
  OUTLINED_FUNCTION_13();
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_1D2CD5000, a3, OS_LOG_TYPE_ERROR, "Request disconnection of %@ failed: %@", v6, 0x16u);
}

void __57___GCBluetoothDeviceDisconnectionRequest_performRequest___block_invoke_54_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) peerDevice];
  OUTLINED_FUNCTION_13();
  _os_log_debug_impl(&dword_1D2CD5000, a2, OS_LOG_TYPE_DEBUG, "Request disconnection of %@ success", v4, 0xCu);
}

@end