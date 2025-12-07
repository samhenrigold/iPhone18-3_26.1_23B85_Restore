uint64_t sub_195A7ED74()
{
  v0 = objc_alloc_init(IDSDaemonProtocolController);
  v1 = qword_1ED5DE070;
  qword_1ED5DE070 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_195A7F140(uint64_t a1)
{
  v2 = +[IDSLogging DaemonProxy];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "Invalidation Handled", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setConnection:0];
}

void sub_195A7F1CC()
{
  v0 = +[IDSLogging DaemonProxy];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1959FF000, v0, OS_LOG_TYPE_DEFAULT, "Interruption Handled", v1, 2u);
  }
}

void sub_195A7F514(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 addObject:*(a1 + 32)];
  if (IMShouldLog() && [v3 count])
  {
    sub_195A7F588(v3);
  }
}

void sub_195A7F588(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E69A6138] watchPairing];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 138412290;
    v4 = v1;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "Unacknowledged IDSServiceDelegate objects: %@", &v3, 0xCu);
  }
}

void sub_195A7F8E0(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 removeObject:*(a1 + 32)];
  if (IMShouldLog() && [v3 count])
  {
    sub_195A7F588(v3);
  }
}

void sub_195A7FA40(uint64_t a1, void *a2)
{
  v2 = a2;
  if (IMShouldLog() && [v2 count])
  {
    sub_195A7F588(v2);
  }

  [v2 removeAllObjects];
}

dispatch_data_t sub_195A7FB04(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v6 = __ROR8__(a2 - a1 + *a1 - 1498, 2);
  v7 = a1[2] - a2;
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v8 = sub_195A7FC3C;
      goto LABEL_11;
    }

    if (v6 == 3)
    {
      v8 = sub_195A7FC14;
      goto LABEL_11;
    }

LABEL_8:
    destructor[5] = v2;
    destructor[6] = v3;
    destructor[0] = MEMORY[0x1E69E9820];
    destructor[1] = 3221225472;
    destructor[2] = sub_195A7FC64;
    destructor[3] = &unk_1E743EBC0;
    destructor[4] = a1;
    return dispatch_data_create((v5 + a2), v7, 0, destructor);
  }

  if (!v6)
  {
    v8 = sub_195A7FC50;
    goto LABEL_11;
  }

  if (v6 != 1)
  {
    goto LABEL_8;
  }

  v8 = sub_195A7FC28;
LABEL_11:

  return MEMORY[0x1EEE6FED8](v5 + a2, v7, 0, v8);
}

void sub_195A7FC78(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  if (v7)
  {
    v7[2](v7, v9);
  }

  else if (v8)
  {
    v8[2](v8, v9, a4);
  }

  else
  {
    v10 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "Warning! No write completion handler to invoke.", v11, 2u);
    }
  }
}

void IDSLocalPairingAddPairedDevice(void *a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (_IDSRunningInDaemon())
  {
    sub_195B308E0();
  }

  v8 = +[IDSTransportLog NRPairing];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = MEMORY[0x19A8BBEF0](v6);
    *buf = 136316674;
    v19 = "void IDSLocalPairingAddPairedDevice(NSUUID *__strong, __strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v20 = 2080;
    v21 = "cbuuid";
    v22 = 2112;
    v23 = v5;
    v24 = 2080;
    v25 = "block";
    v26 = 2048;
    v27 = v9;
    v28 = 2080;
    v29 = "queue";
    v30 = 2048;
    v31 = v7;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "%s (%s: %@)   (%s: %p)   (%s: %p)", buf, 0x48u);
  }

  v10 = [MEMORY[0x1E69A6138] NRPairing];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = MEMORY[0x19A8BBEF0](v6);
    *buf = 136316674;
    v19 = "void IDSLocalPairingAddPairedDevice(NSUUID *__strong, __strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v20 = 2080;
    v21 = "cbuuid";
    v22 = 2112;
    v23 = v5;
    v24 = 2080;
    v25 = "block";
    v26 = 2048;
    v27 = v11;
    v28 = 2080;
    v29 = "queue";
    v30 = 2048;
    v31 = v7;
    _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "%s (%s: %@)   (%s: %p)   (%s: %p)", buf, 0x48u);
  }

  v12 = sub_195A803DC(v6, v7);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_195A8059C;
  v15[3] = &unk_1E7441120;
  v16 = v5;
  v17 = v12;
  v13 = v12;
  v14 = v5;
  sub_195A804D8(v15, v13);
}

id sub_195A803DC(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v4)
  {
    v4 = MEMORY[0x1E69E96A0];
    v5 = MEMORY[0x1E69E96A0];
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_195A845F8;
  v15[3] = &unk_1E743F138;
  if (v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = &unk_1F09E6200;
  }

  v16 = v4;
  v17 = v6;
  v7 = v4;
  v8 = v6;
  v9 = MEMORY[0x19A8BBEF0](v15);
  v13 = MEMORY[0x19A8BBEF0](v9, v10, v11, v12);

  return v13;
}

void sub_195A804D8(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A8481C;
  v7[3] = &unk_1E743FC78;
  v8 = v4;
  v9 = v3;
  v5 = v3;
  v6 = v4;
  [IDSXPCDaemonController performDaemonControllerTask:v7];
}

void IDSLocalPairingAddPairedDeviceWithInfo(void *a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (_IDSRunningInDaemon())
  {
    sub_195B3090C();
  }

  v8 = +[IDSTransportLog NRPairing];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = MEMORY[0x19A8BBEF0](v6);
    *buf = 136316674;
    v19 = "void IDSLocalPairingAddPairedDeviceWithInfo(IDSLocalPairingAddPairedDeviceInfo *__strong, __strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v20 = 2080;
    v21 = "info";
    v22 = 2112;
    v23 = v5;
    v24 = 2080;
    v25 = "block";
    v26 = 2048;
    v27 = v9;
    v28 = 2080;
    v29 = "queue";
    v30 = 2048;
    v31 = v7;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "%s (%s: %@)   (%s: %p)   (%s: %p)", buf, 0x48u);
  }

  v10 = [MEMORY[0x1E69A6138] NRPairing];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = MEMORY[0x19A8BBEF0](v6);
    *buf = 136316674;
    v19 = "void IDSLocalPairingAddPairedDeviceWithInfo(IDSLocalPairingAddPairedDeviceInfo *__strong, __strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v20 = 2080;
    v21 = "info";
    v22 = 2112;
    v23 = v5;
    v24 = 2080;
    v25 = "block";
    v26 = 2048;
    v27 = v11;
    v28 = 2080;
    v29 = "queue";
    v30 = 2048;
    v31 = v7;
    _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "%s (%s: %@)   (%s: %p)   (%s: %p)", buf, 0x48u);
  }

  v12 = sub_195A803DC(v6, v7);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_195A8083C;
  v15[3] = &unk_1E7441120;
  v16 = v5;
  v17 = v12;
  v13 = v12;
  v14 = v5;
  sub_195A804D8(v15, v13);
}

void IDSLocalPairingUpdatePairedDevicePairingType(void *a1, uint64_t a2, void *a3, void *a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a3;
  v9 = a4;
  if (_IDSRunningInDaemon())
  {
    sub_195B30938();
  }

  v10 = +[IDSTransportLog NRPairing];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
    v12 = MEMORY[0x19A8BBEF0](v8);
    *buf = 136317186;
    v24 = "void IDSLocalPairingUpdatePairedDevicePairingType(NSUUID *__strong, IDSPairingType, __strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v25 = 2080;
    v26 = "cbuuid";
    v27 = 2112;
    v28 = v7;
    v29 = 2080;
    v30 = "@(pairingType)";
    v31 = 2112;
    v32 = v11;
    v33 = 2080;
    v34 = "block";
    v35 = 2048;
    v36 = v12;
    v37 = 2080;
    v38 = "queue";
    v39 = 2048;
    v40 = v9;
    _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "%s (%s: %@)   (%s: %@)   (%s: %p)   (%s: %p)", buf, 0x5Cu);
  }

  v13 = [MEMORY[0x1E69A6138] NRPairing];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
    v15 = MEMORY[0x19A8BBEF0](v8);
    *buf = 136317186;
    v24 = "void IDSLocalPairingUpdatePairedDevicePairingType(NSUUID *__strong, IDSPairingType, __strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v25 = 2080;
    v26 = "cbuuid";
    v27 = 2112;
    v28 = v7;
    v29 = 2080;
    v30 = "@(pairingType)";
    v31 = 2112;
    v32 = v14;
    v33 = 2080;
    v34 = "block";
    v35 = 2048;
    v36 = v15;
    v37 = 2080;
    v38 = "queue";
    v39 = 2048;
    v40 = v9;
    _os_log_impl(&dword_1959FF000, v13, OS_LOG_TYPE_DEFAULT, "%s (%s: %@)   (%s: %@)   (%s: %p)   (%s: %p)", buf, 0x5Cu);
  }

  v16 = sub_195A803DC(v8, v9);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_195A80B70;
  v19[3] = &unk_1E7441148;
  v21 = v8;
  v22 = a2;
  v20 = v7;
  v17 = v8;
  v18 = v7;
  sub_195A804D8(v19, v16);
}

void IDSLocalPairingConnectPairedDevice(void *a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (_IDSRunningInDaemon())
  {
    sub_195B30964();
  }

  v8 = +[IDSTransportLog NRPairing];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = MEMORY[0x19A8BBEF0](v6);
    *buf = 136316674;
    v19 = "void IDSLocalPairingConnectPairedDevice(NSUUID *__strong, __strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v20 = 2080;
    v21 = "cbuuid";
    v22 = 2112;
    v23 = v5;
    v24 = 2080;
    v25 = "block";
    v26 = 2048;
    v27 = v9;
    v28 = 2080;
    v29 = "queue";
    v30 = 2048;
    v31 = v7;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "%s (%s: %@)   (%s: %p)   (%s: %p)", buf, 0x48u);
  }

  v10 = [MEMORY[0x1E69A6138] NRPairing];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = MEMORY[0x19A8BBEF0](v6);
    *buf = 136316674;
    v19 = "void IDSLocalPairingConnectPairedDevice(NSUUID *__strong, __strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v20 = 2080;
    v21 = "cbuuid";
    v22 = 2112;
    v23 = v5;
    v24 = 2080;
    v25 = "block";
    v26 = 2048;
    v27 = v11;
    v28 = 2080;
    v29 = "queue";
    v30 = 2048;
    v31 = v7;
    _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "%s (%s: %@)   (%s: %p)   (%s: %p)", buf, 0x48u);
  }

  v12 = sub_195A803DC(v6, v7);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_195A80E14;
  v15[3] = &unk_1E7441120;
  v16 = v5;
  v17 = v12;
  v13 = v12;
  v14 = v5;
  sub_195A804D8(v15, v13);
}

void IDSLocalPairingSetupCompletedForPairedDevice(void *a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (_IDSRunningInDaemon())
  {
    sub_195B30990();
  }

  v8 = +[IDSTransportLog NRPairing];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = MEMORY[0x19A8BBEF0](v6);
    *buf = 136316674;
    v19 = "void IDSLocalPairingSetupCompletedForPairedDevice(NSUUID *__strong, __strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v20 = 2080;
    v21 = "cbuuid";
    v22 = 2112;
    v23 = v5;
    v24 = 2080;
    v25 = "block";
    v26 = 2048;
    v27 = v9;
    v28 = 2080;
    v29 = "queue";
    v30 = 2048;
    v31 = v7;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "%s (%s: %@)   (%s: %p)   (%s: %p)", buf, 0x48u);
  }

  v10 = [MEMORY[0x1E69A6138] NRPairing];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = MEMORY[0x19A8BBEF0](v6);
    *buf = 136316674;
    v19 = "void IDSLocalPairingSetupCompletedForPairedDevice(NSUUID *__strong, __strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v20 = 2080;
    v21 = "cbuuid";
    v22 = 2112;
    v23 = v5;
    v24 = 2080;
    v25 = "block";
    v26 = 2048;
    v27 = v11;
    v28 = 2080;
    v29 = "queue";
    v30 = 2048;
    v31 = v7;
    _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "%s (%s: %@)   (%s: %p)   (%s: %p)", buf, 0x48u);
  }

  v12 = sub_195A803DC(v6, v7);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_195A810B4;
  v15[3] = &unk_1E7441120;
  v16 = v5;
  v17 = v12;
  v13 = v12;
  v14 = v5;
  sub_195A804D8(v15, v13);
}

void IDSLocalPairingSwitchActivePairedDevice(void *a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (_IDSRunningInDaemon())
  {
    sub_195B309BC();
  }

  v8 = +[IDSTransportLog NRPairing];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = MEMORY[0x19A8BBEF0](v6);
    *buf = 136316674;
    v19 = "void IDSLocalPairingSwitchActivePairedDevice(NSUUID *__strong, __strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v20 = 2080;
    v21 = "cbuuid";
    v22 = 2112;
    v23 = v5;
    v24 = 2080;
    v25 = "block";
    v26 = 2048;
    v27 = v9;
    v28 = 2080;
    v29 = "queue";
    v30 = 2048;
    v31 = v7;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "%s (%s: %@)   (%s: %p)   (%s: %p)", buf, 0x48u);
  }

  v10 = [MEMORY[0x1E69A6138] NRPairing];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = MEMORY[0x19A8BBEF0](v6);
    *buf = 136316674;
    v19 = "void IDSLocalPairingSwitchActivePairedDevice(NSUUID *__strong, __strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v20 = 2080;
    v21 = "cbuuid";
    v22 = 2112;
    v23 = v5;
    v24 = 2080;
    v25 = "block";
    v26 = 2048;
    v27 = v11;
    v28 = 2080;
    v29 = "queue";
    v30 = 2048;
    v31 = v7;
    _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "%s (%s: %@)   (%s: %p)   (%s: %p)", buf, 0x48u);
  }

  v12 = sub_195A803DC(v6, v7);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_195A81354;
  v15[3] = &unk_1E7441120;
  v16 = v5;
  v17 = v12;
  v13 = v12;
  v14 = v5;
  sub_195A804D8(v15, v13);
}

void IDSLocalPairingDisconnectActivePairedDevice(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (_IDSRunningInDaemon())
  {
    sub_195B309E8();
  }

  v5 = +[IDSTransportLog NRPairing];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x19A8BBEF0](v3);
    *buf = 136316162;
    v14 = "void IDSLocalPairingDisconnectActivePairedDevice(__strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v15 = 2080;
    v16 = "block";
    v17 = 2048;
    v18 = v6;
    v19 = 2080;
    v20 = "queue";
    v21 = 2048;
    v22 = v4;
    _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "%s (%s: %p)   (%s: %p)", buf, 0x34u);
  }

  v7 = [MEMORY[0x1E69A6138] NRPairing];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = MEMORY[0x19A8BBEF0](v3);
    *buf = 136316162;
    v14 = "void IDSLocalPairingDisconnectActivePairedDevice(__strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v15 = 2080;
    v16 = "block";
    v17 = 2048;
    v18 = v8;
    v19 = 2080;
    v20 = "queue";
    v21 = 2048;
    v22 = v4;
    _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "%s (%s: %p)   (%s: %p)", buf, 0x34u);
  }

  v9 = sub_195A803DC(v3, v4);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195A8159C;
  v11[3] = &unk_1E7441170;
  v12 = v9;
  v10 = v9;
  sub_195A804D8(v11, v10);
}

void IDSLocalPairingRedeliverMessages(void *a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v5 uniqueIDOverride];
  if (_IDSRunningInDaemon())
  {
    sub_195B30A14();
  }

  v9 = +[IDSTransportLog NRPairing];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = MEMORY[0x19A8BBEF0](v6);
    *buf = 136316674;
    v20 = "void IDSLocalPairingRedeliverMessages(IDSDevice *__strong, __strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v21 = 2080;
    v22 = "deviceUniqueID";
    v23 = 2112;
    v24 = v8;
    v25 = 2080;
    v26 = "block";
    v27 = 2048;
    v28 = v10;
    v29 = 2080;
    v30 = "queue";
    v31 = 2048;
    v32 = v7;
    _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "%s (%s: %@)   (%s: %p)   (%s: %p)", buf, 0x48u);
  }

  v11 = [MEMORY[0x1E69A6138] NRPairing];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = MEMORY[0x19A8BBEF0](v6);
    *buf = 136316674;
    v20 = "void IDSLocalPairingRedeliverMessages(IDSDevice *__strong, __strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v21 = 2080;
    v22 = "deviceUniqueID";
    v23 = 2112;
    v24 = v8;
    v25 = 2080;
    v26 = "block";
    v27 = 2048;
    v28 = v12;
    v29 = 2080;
    v30 = "queue";
    v31 = 2048;
    v32 = v7;
    _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "%s (%s: %@)   (%s: %p)   (%s: %p)", buf, 0x48u);
  }

  v13 = sub_195A803DC(v6, v7);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_195A81858;
  v16[3] = &unk_1E7441120;
  v17 = v8;
  v18 = v13;
  v14 = v13;
  v15 = v8;
  sub_195A804D8(v16, v14);
}

void IDSLocalPairingDeletePairedDevice(void *a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (_IDSRunningInDaemon())
  {
    sub_195B30A40();
  }

  v8 = +[IDSTransportLog NRPairing];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = MEMORY[0x19A8BBEF0](v6);
    *buf = 136316674;
    v19 = "void IDSLocalPairingDeletePairedDevice(NSUUID *__strong, __strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v20 = 2080;
    v21 = "cbuuid";
    v22 = 2112;
    v23 = v5;
    v24 = 2080;
    v25 = "block";
    v26 = 2048;
    v27 = v9;
    v28 = 2080;
    v29 = "queue";
    v30 = 2048;
    v31 = v7;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "%s (%s: %@)   (%s: %p)   (%s: %p)", buf, 0x48u);
  }

  v10 = [MEMORY[0x1E69A6138] NRPairing];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = MEMORY[0x19A8BBEF0](v6);
    *buf = 136316674;
    v19 = "void IDSLocalPairingDeletePairedDevice(NSUUID *__strong, __strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v20 = 2080;
    v21 = "cbuuid";
    v22 = 2112;
    v23 = v5;
    v24 = 2080;
    v25 = "block";
    v26 = 2048;
    v27 = v11;
    v28 = 2080;
    v29 = "queue";
    v30 = 2048;
    v31 = v7;
    _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "%s (%s: %@)   (%s: %p)   (%s: %p)", buf, 0x48u);
  }

  v12 = sub_195A803DC(v6, v7);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_195A81AF8;
  v15[3] = &unk_1E7441120;
  v16 = v5;
  v17 = v12;
  v13 = v12;
  v14 = v5;
  sub_195A804D8(v15, v13);
}

void IDSLocalPairingUnpairStartForDevice(void *a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (_IDSRunningInDaemon())
  {
    sub_195B30A6C();
  }

  v8 = +[IDSTransportLog NRPairing];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = MEMORY[0x19A8BBEF0](v6);
    *buf = 136316674;
    v19 = "void IDSLocalPairingUnpairStartForDevice(NSUUID *__strong, __strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v20 = 2080;
    v21 = "cbuuid";
    v22 = 2112;
    v23 = v5;
    v24 = 2080;
    v25 = "block";
    v26 = 2048;
    v27 = v9;
    v28 = 2080;
    v29 = "queue";
    v30 = 2048;
    v31 = v7;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "%s (%s: %@)   (%s: %p)   (%s: %p)", buf, 0x48u);
  }

  v10 = [MEMORY[0x1E69A6138] NRPairing];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = MEMORY[0x19A8BBEF0](v6);
    *buf = 136316674;
    v19 = "void IDSLocalPairingUnpairStartForDevice(NSUUID *__strong, __strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v20 = 2080;
    v21 = "cbuuid";
    v22 = 2112;
    v23 = v5;
    v24 = 2080;
    v25 = "block";
    v26 = 2048;
    v27 = v11;
    v28 = 2080;
    v29 = "queue";
    v30 = 2048;
    v31 = v7;
    _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "%s (%s: %@)   (%s: %p)   (%s: %p)", buf, 0x48u);
  }

  v12 = sub_195A803DC(v6, v7);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_195A81D98;
  v15[3] = &unk_1E7441120;
  v16 = v5;
  v17 = v12;
  v13 = v12;
  v14 = v5;
  sub_195A804D8(v15, v13);
}

void IDSLocalPairingStopForDevice(void *a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (_IDSRunningInDaemon())
  {
    sub_195B30A98();
  }

  v8 = +[IDSTransportLog NRPairing];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = MEMORY[0x19A8BBEF0](v6);
    *buf = 136316674;
    v19 = "void IDSLocalPairingStopForDevice(NSUUID *__strong, __strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v20 = 2080;
    v21 = "cbuuid";
    v22 = 2112;
    v23 = v5;
    v24 = 2080;
    v25 = "block";
    v26 = 2048;
    v27 = v9;
    v28 = 2080;
    v29 = "queue";
    v30 = 2048;
    v31 = v7;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "%s (%s: %@)   (%s: %p)   (%s: %p)", buf, 0x48u);
  }

  v10 = [MEMORY[0x1E69A6138] NRPairing];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = MEMORY[0x19A8BBEF0](v6);
    *buf = 136316674;
    v19 = "void IDSLocalPairingStopForDevice(NSUUID *__strong, __strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v20 = 2080;
    v21 = "cbuuid";
    v22 = 2112;
    v23 = v5;
    v24 = 2080;
    v25 = "block";
    v26 = 2048;
    v27 = v11;
    v28 = 2080;
    v29 = "queue";
    v30 = 2048;
    v31 = v7;
    _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "%s (%s: %@)   (%s: %p)   (%s: %p)", buf, 0x48u);
  }

  v12 = sub_195A803DC(v6, v7);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_195A82038;
  v15[3] = &unk_1E7441120;
  v16 = v5;
  v17 = v12;
  v13 = v12;
  v14 = v5;
  sub_195A804D8(v15, v13);
}

void IDSLocalPairingUnpairForDevice(void *a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (_IDSRunningInDaemon())
  {
    sub_195B30AC4();
  }

  v8 = +[IDSTransportLog NRPairing];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = MEMORY[0x19A8BBEF0](v6);
    *buf = 136316674;
    v19 = "void IDSLocalPairingUnpairForDevice(NSUUID *__strong, __strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v20 = 2080;
    v21 = "cbuuid";
    v22 = 2112;
    v23 = v5;
    v24 = 2080;
    v25 = "block";
    v26 = 2048;
    v27 = v9;
    v28 = 2080;
    v29 = "queue";
    v30 = 2048;
    v31 = v7;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "%s (%s: %@)   (%s: %p)   (%s: %p)", buf, 0x48u);
  }

  v10 = [MEMORY[0x1E69A6138] NRPairing];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = MEMORY[0x19A8BBEF0](v6);
    *buf = 136316674;
    v19 = "void IDSLocalPairingUnpairForDevice(NSUUID *__strong, __strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v20 = 2080;
    v21 = "cbuuid";
    v22 = 2112;
    v23 = v5;
    v24 = 2080;
    v25 = "block";
    v26 = 2048;
    v27 = v11;
    v28 = 2080;
    v29 = "queue";
    v30 = 2048;
    v31 = v7;
    _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "%s (%s: %@)   (%s: %p)   (%s: %p)", buf, 0x48u);
  }

  v12 = sub_195A803DC(v6, v7);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_195A822D8;
  v15[3] = &unk_1E7441120;
  v16 = v5;
  v17 = v12;
  v13 = v12;
  v14 = v5;
  sub_195A804D8(v15, v13);
}

void IDSLocalPairingForgetPairedDevice(void *a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (_IDSRunningInDaemon())
  {
    sub_195B30AF0();
  }

  v8 = +[IDSTransportLog NRPairing];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = MEMORY[0x19A8BBEF0](v6);
    *buf = 136316674;
    v19 = "void IDSLocalPairingForgetPairedDevice(NSUUID *__strong, __strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v20 = 2080;
    v21 = "cbuuid";
    v22 = 2112;
    v23 = v5;
    v24 = 2080;
    v25 = "block";
    v26 = 2048;
    v27 = v9;
    v28 = 2080;
    v29 = "queue";
    v30 = 2048;
    v31 = v7;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "%s (%s: %@)   (%s: %p)   (%s: %p)", buf, 0x48u);
  }

  v10 = [MEMORY[0x1E69A6138] NRPairing];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = MEMORY[0x19A8BBEF0](v6);
    *buf = 136316674;
    v19 = "void IDSLocalPairingForgetPairedDevice(NSUUID *__strong, __strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v20 = 2080;
    v21 = "cbuuid";
    v22 = 2112;
    v23 = v5;
    v24 = 2080;
    v25 = "block";
    v26 = 2048;
    v27 = v11;
    v28 = 2080;
    v29 = "queue";
    v30 = 2048;
    v31 = v7;
    _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "%s (%s: %@)   (%s: %p)   (%s: %p)", buf, 0x48u);
  }

  v12 = sub_195A803DC(v6, v7);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_195A82578;
  v15[3] = &unk_1E7441120;
  v16 = v5;
  v17 = v12;
  v13 = v12;
  v14 = v5;
  sub_195A804D8(v15, v13);
}

void IDSLocalPairingGetPairingDevicesWithCompletionBlock(void *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (_IDSRunningInDaemon())
  {
    sub_195B30B1C();
  }

  v5 = +[IDSTransportLog NRPairing];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x19A8BBEF0](v3);
    *buf = 136316162;
    v17 = "void IDSLocalPairingGetPairingDevicesWithCompletionBlock(__strong IDSLocalPairingPairedDevicesCompletionBlock, __strong dispatch_queue_t)";
    v18 = 2080;
    v19 = "block";
    v20 = 2048;
    v21 = v6;
    v22 = 2080;
    v23 = "queue";
    v24 = 2048;
    v25 = v4;
    _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "%s (%s: %p)   (%s: %p)", buf, 0x34u);
  }

  v7 = [MEMORY[0x1E69A6138] NRPairing];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = MEMORY[0x19A8BBEF0](v3);
    *buf = 136316162;
    v17 = "void IDSLocalPairingGetPairingDevicesWithCompletionBlock(__strong IDSLocalPairingPairedDevicesCompletionBlock, __strong dispatch_queue_t)";
    v18 = 2080;
    v19 = "block";
    v20 = 2048;
    v21 = v8;
    v22 = 2080;
    v23 = "queue";
    v24 = 2048;
    v25 = v4;
    _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "%s (%s: %p)   (%s: %p)", buf, 0x34u);
  }

  if (!v4)
  {
    v4 = MEMORY[0x1E69E96A0];
    v9 = MEMORY[0x1E69E96A0];
  }

  if (!v3)
  {
    v3 = &unk_1F09E61E0;
  }

  v10 = sub_195A82838(v3, v4);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_195A82934;
  v14[3] = &unk_1E7441170;
  v15 = v10;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_195A82940;
  v12[3] = &unk_1E743FC50;
  v13 = v15;
  v11 = v15;
  sub_195A804D8(v14, v12);
}

id sub_195A82838(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v4)
  {
    v4 = MEMORY[0x1E69E96A0];
    v5 = MEMORY[0x1E69E96A0];
  }

  v6 = &unk_1F09E6220;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_195A84884;
  v15[3] = &unk_1E7441230;
  if (v3)
  {
    v6 = v3;
  }

  v16 = v4;
  v17 = v6;
  v7 = v6;
  v8 = v4;
  v9 = MEMORY[0x19A8BBEF0](v15);
  v13 = MEMORY[0x19A8BBEF0](v9, v10, v11, v12);

  return v13;
}

void IDSLocalPairingGetPairedDevicesWithCompletionBlock(void *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (_IDSRunningInDaemon())
  {
    sub_195B30B48();
  }

  v5 = +[IDSTransportLog NRPairing];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x19A8BBEF0](v3);
    *buf = 136316162;
    v16 = "void IDSLocalPairingGetPairedDevicesWithCompletionBlock(__strong IDSLocalPairingPairedDevicesCompletionBlock, __strong dispatch_queue_t)";
    v17 = 2080;
    v18 = "block";
    v19 = 2048;
    v20 = v6;
    v21 = 2080;
    v22 = "queue";
    v23 = 2048;
    v24 = v4;
    _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "%s (%s: %p)   (%s: %p)", buf, 0x34u);
  }

  v7 = [MEMORY[0x1E69A6138] NRPairing];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = MEMORY[0x19A8BBEF0](v3);
    *buf = 136316162;
    v16 = "void IDSLocalPairingGetPairedDevicesWithCompletionBlock(__strong IDSLocalPairingPairedDevicesCompletionBlock, __strong dispatch_queue_t)";
    v17 = 2080;
    v18 = "block";
    v19 = 2048;
    v20 = v8;
    v21 = 2080;
    v22 = "queue";
    v23 = 2048;
    v24 = v4;
    _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "%s (%s: %p)   (%s: %p)", buf, 0x34u);
  }

  v9 = sub_195A82838(v3, v4);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_195A82BE8;
  v13[3] = &unk_1E7441170;
  v14 = v9;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195A82BF4;
  v11[3] = &unk_1E743FC50;
  v12 = v14;
  v10 = v14;
  sub_195A804D8(v13, v11);
}

void IDSLocalPairingGetPairingRecordsWithCompletionBlock(void *a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (_IDSRunningInDaemon())
  {
    sub_195B30B74();
  }

  v5 = +[IDSTransportLog NRPairing];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x19A8BBEF0](v3);
    *buf = 136316162;
    *&buf[4] = "void IDSLocalPairingGetPairingRecordsWithCompletionBlock(__strong IDSLocalPairingPairingRecordsCompletionBlock, __strong dispatch_queue_t)";
    *&buf[12] = 2080;
    *&buf[14] = "block";
    *&buf[22] = 2048;
    v26 = v6;
    *v27 = 2080;
    *&v27[2] = "queue";
    *&v27[10] = 2048;
    *&v27[12] = v4;
    _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "%s (%s: %p)   (%s: %p)", buf, 0x34u);
  }

  v7 = [MEMORY[0x1E69A6138] NRPairing];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = MEMORY[0x19A8BBEF0](v3);
    *buf = 136316162;
    *&buf[4] = "void IDSLocalPairingGetPairingRecordsWithCompletionBlock(__strong IDSLocalPairingPairingRecordsCompletionBlock, __strong dispatch_queue_t)";
    *&buf[12] = 2080;
    *&buf[14] = "block";
    *&buf[22] = 2048;
    v26 = v8;
    *v27 = 2080;
    *&v27[2] = "queue";
    *&v27[10] = 2048;
    *&v27[12] = v4;
    _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "%s (%s: %p)   (%s: %p)", buf, 0x34u);
  }

  if (v3)
  {
    if (!v4)
    {
      v4 = MEMORY[0x1E69E96A0];
      v9 = MEMORY[0x1E69E96A0];
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = sub_195A82F88;
    v22[3] = &unk_1E74411B8;
    v4 = v4;
    v23 = v4;
    v24 = v3;
    v10 = MEMORY[0x19A8BBEF0](v22);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_195A8309C;
    v20[3] = &unk_1E7441170;
    v11 = v10;
    v21 = v11;
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = sub_195A831D8;
    v18 = &unk_1E743FC50;
    v19 = v11;
    v12 = v20;
    v13 = &v15;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = sub_195A84970;
    v26 = &unk_1E7441258;
    *&v27[8] = v12;
    *&v27[16] = 0x4082C00000000000;
    *v27 = v13;
    v14 = v11;
    [IDSXPCDaemonController performDaemonControllerTask:buf, v15, v16, v17, v18];
  }
}

void sub_195A82F88(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_195A83084;
  v15[3] = &unk_1E743F228;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v19 = v11;
  v12 = v9;
  v13 = v8;
  v14 = v7;
  dispatch_async(v10, v15);
}

void sub_195A8309C(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_195A83128;
  v3[3] = &unk_1E74411E0;
  v4 = *(a1 + 32);
  [a2 getPairingRecordsWithCompletion:v3];
}

void sub_195A83128(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = MEMORY[0x1E69A6138];
  v9 = a3;
  v10 = a2;
  v11 = [v8 NRPairing];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_195B30BA0(v7, v11);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_195A831D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E69A6138] NRPairing];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_195B30C18(v3, v4);
  }

  (*(*(a1 + 32) + 16))();
}

void IDSLocalPairingSetAllowedTrafficClassifiersForDevice(void *a1, void *a2, void *a3, void *a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = [v8 uniqueID];
  if (_IDSRunningInDaemon())
  {
    sub_195B30C90();
  }

  v12 = +[IDSTransportLog NRPairing];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = MEMORY[0x19A8BBEF0](v9);
    *buf = 136317186;
    v25 = "void IDSLocalPairingSetAllowedTrafficClassifiersForDevice(NSSet *__strong, IDSDevice *__strong, __strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v26 = 2080;
    v27 = "classifiers";
    v28 = 2112;
    v29 = v7;
    v30 = 2080;
    v31 = "deviceUniqueID";
    v32 = 2112;
    v33 = v11;
    v34 = 2080;
    v35 = "block";
    v36 = 2048;
    v37 = v13;
    v38 = 2080;
    v39 = "queue";
    v40 = 2048;
    v41 = v10;
    _os_log_impl(&dword_1959FF000, v12, OS_LOG_TYPE_DEFAULT, "%s (%s: %@)   (%s: %@)   (%s: %p)   (%s: %p)", buf, 0x5Cu);
  }

  v14 = [MEMORY[0x1E69A6138] NRPairing];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = MEMORY[0x19A8BBEF0](v9);
    *buf = 136317186;
    v25 = "void IDSLocalPairingSetAllowedTrafficClassifiersForDevice(NSSet *__strong, IDSDevice *__strong, __strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v26 = 2080;
    v27 = "classifiers";
    v28 = 2112;
    v29 = v7;
    v30 = 2080;
    v31 = "deviceUniqueID";
    v32 = 2112;
    v33 = v11;
    v34 = 2080;
    v35 = "block";
    v36 = 2048;
    v37 = v15;
    v38 = 2080;
    v39 = "queue";
    v40 = 2048;
    v41 = v10;
    _os_log_impl(&dword_1959FF000, v14, OS_LOG_TYPE_DEFAULT, "%s (%s: %@)   (%s: %@)   (%s: %p)   (%s: %p)", buf, 0x5Cu);
  }

  v16 = sub_195A803DC(v9, v10);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_195A83578;
  v20[3] = &unk_1E7441208;
  v21 = v11;
  v22 = v7;
  v23 = v16;
  v17 = v16;
  v18 = v7;
  v19 = v11;
  sub_195A804D8(v20, v17);
}

void IDSLocalPairingGetAllowedTrafficClassifiersForDevice(void *a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v5 uniqueID];
  if (_IDSRunningInDaemon())
  {
    sub_195B30CBC();
  }

  v9 = +[IDSTransportLog NRPairing];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = MEMORY[0x19A8BBEF0](v6);
    *buf = 136316674;
    v16 = "void IDSLocalPairingGetAllowedTrafficClassifiersForDevice(IDSDevice *__strong, __strong IDSLocalPairingTrafficClassifiersCompletionBlock, __strong dispatch_queue_t)";
    v17 = 2080;
    v18 = "deviceUniqueID";
    v19 = 2112;
    v20 = v8;
    v21 = 2080;
    v22 = "block";
    v23 = 2048;
    v24 = v10;
    v25 = 2080;
    v26 = "queue";
    v27 = 2048;
    v28 = v7;
    _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "%s (%s: %@)   (%s: %p)   (%s: %p)", buf, 0x48u);
  }

  v11 = [MEMORY[0x1E69A6138] NRPairing];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = MEMORY[0x19A8BBEF0](v6);
    *buf = 136316674;
    v16 = "void IDSLocalPairingGetAllowedTrafficClassifiersForDevice(IDSDevice *__strong, __strong IDSLocalPairingTrafficClassifiersCompletionBlock, __strong dispatch_queue_t)";
    v17 = 2080;
    v18 = "deviceUniqueID";
    v19 = 2112;
    v20 = v8;
    v21 = 2080;
    v22 = "block";
    v23 = 2048;
    v24 = v12;
    v25 = 2080;
    v26 = "queue";
    v27 = 2048;
    v28 = v7;
    _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "%s (%s: %@)   (%s: %p)   (%s: %p)", buf, 0x48u);
  }

  if (v6 && v7)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195A83818;
    block[3] = &unk_1E743E850;
    v14 = v6;
    dispatch_async(v7, block);
  }
}

void sub_195A83818(uint64_t a1)
{
  v2 = +[IDSPairedDeviceManager sharedInstance];
  v3 = [v2 allowedTrafficClassifiers];

  (*(*(a1 + 32) + 16))();
}

void IDSLocalPairingDropAllMessagesWithoutAnyAllowedTrafficClassifier(void *a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v5 uniqueID];
  if (_IDSRunningInDaemon())
  {
    sub_195B30CE8();
  }

  v9 = +[IDSTransportLog NRPairing];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = MEMORY[0x19A8BBEF0](v6);
    *buf = 136316674;
    v20 = "void IDSLocalPairingDropAllMessagesWithoutAnyAllowedTrafficClassifier(IDSDevice *__strong, __strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v21 = 2080;
    v22 = "deviceUniqueID";
    v23 = 2112;
    v24 = v8;
    v25 = 2080;
    v26 = "block";
    v27 = 2048;
    v28 = v10;
    v29 = 2080;
    v30 = "queue";
    v31 = 2048;
    v32 = v7;
    _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "%s (%s: %@)   (%s: %p)   (%s: %p)", buf, 0x48u);
  }

  v11 = [MEMORY[0x1E69A6138] NRPairing];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = MEMORY[0x19A8BBEF0](v6);
    *buf = 136316674;
    v20 = "void IDSLocalPairingDropAllMessagesWithoutAnyAllowedTrafficClassifier(IDSDevice *__strong, __strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v21 = 2080;
    v22 = "deviceUniqueID";
    v23 = 2112;
    v24 = v8;
    v25 = 2080;
    v26 = "block";
    v27 = 2048;
    v28 = v12;
    v29 = 2080;
    v30 = "queue";
    v31 = 2048;
    v32 = v7;
    _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "%s (%s: %@)   (%s: %p)   (%s: %p)", buf, 0x48u);
  }

  v13 = sub_195A803DC(v6, v7);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_195A83B40;
  v16[3] = &unk_1E7441120;
  v17 = v8;
  v18 = v13;
  v14 = v13;
  v15 = v8;
  sub_195A804D8(v16, v14);
}

void IDSLocalPairingReunionSyncStartedForServices(void *a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (_IDSRunningInDaemon())
  {
    sub_195B30D14();
  }

  v8 = +[IDSTransportLog NRPairing];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = MEMORY[0x19A8BBEF0](v6);
    *buf = 136316162;
    v19 = "void IDSLocalPairingReunionSyncStartedForServices(NSArray *__strong, __strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v20 = 2080;
    v21 = "block";
    v22 = 2048;
    v23 = v9;
    v24 = 2080;
    v25 = "queue";
    v26 = 2048;
    v27 = v7;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "%s (%s: %p)   (%s: %p)", buf, 0x34u);
  }

  v10 = [MEMORY[0x1E69A6138] NRPairing];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = MEMORY[0x19A8BBEF0](v6);
    *buf = 136316162;
    v19 = "void IDSLocalPairingReunionSyncStartedForServices(NSArray *__strong, __strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v20 = 2080;
    v21 = "block";
    v22 = 2048;
    v23 = v11;
    v24 = 2080;
    v25 = "queue";
    v26 = 2048;
    v27 = v7;
    _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "%s (%s: %p)   (%s: %p)", buf, 0x34u);
  }

  v12 = sub_195A803DC(v6, v7);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_195A83DBC;
  v15[3] = &unk_1E7440330;
  v16 = v5;
  v17 = v12;
  v13 = v5;
  v14 = v12;
  [IDSXPCDaemonController performDaemonControllerTask:v15];
}

void sub_195A83DBC(uint64_t a1, void *a2)
{
  v3 = [a2 reunionSyncCollaboratorWithErrorHandler:*(a1 + 40)];
  [v3 reunionSyncStartedForServices:*(a1 + 32) withCompletion:*(a1 + 40)];
}

void IDSLocalPairingReunionSyncCompletedForServices(void *a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (_IDSRunningInDaemon())
  {
    sub_195B30D40();
  }

  v8 = +[IDSTransportLog NRPairing];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = MEMORY[0x19A8BBEF0](v6);
    *buf = 136316162;
    v19 = "void IDSLocalPairingReunionSyncCompletedForServices(NSArray *__strong, __strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v20 = 2080;
    v21 = "block";
    v22 = 2048;
    v23 = v9;
    v24 = 2080;
    v25 = "queue";
    v26 = 2048;
    v27 = v7;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "%s (%s: %p)   (%s: %p)", buf, 0x34u);
  }

  v10 = [MEMORY[0x1E69A6138] NRPairing];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = MEMORY[0x19A8BBEF0](v6);
    *buf = 136316162;
    v19 = "void IDSLocalPairingReunionSyncCompletedForServices(NSArray *__strong, __strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v20 = 2080;
    v21 = "block";
    v22 = 2048;
    v23 = v11;
    v24 = 2080;
    v25 = "queue";
    v26 = 2048;
    v27 = v7;
    _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "%s (%s: %p)   (%s: %p)", buf, 0x34u);
  }

  v12 = sub_195A803DC(v6, v7);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_195A84084;
  v15[3] = &unk_1E7440330;
  v16 = v5;
  v17 = v12;
  v13 = v5;
  v14 = v12;
  [IDSXPCDaemonController performDaemonControllerTask:v15];
}

void sub_195A84084(uint64_t a1, void *a2)
{
  v3 = [a2 reunionSyncCollaboratorWithErrorHandler:*(a1 + 40)];
  [v3 reunionSyncCompletedForServices:*(a1 + 32) withCompletion:*(a1 + 40)];
}

void sub_195A845F8(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E69A6138] NRPairing];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = MEMORY[0x19A8BBEF0](*(a1 + 40));
    *buf = 134218242;
    v13 = v5;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "About to call local pairing completion block { block: %p, error: %@ }", buf, 0x16u);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_195A84748;
  v9[3] = &unk_1E743F110;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10 = v3;
  v11 = v7;
  v8 = v3;
  dispatch_async(v6, v9);
}

uint64_t sub_195A84748(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69A6138] NRPairing];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = MEMORY[0x19A8BBEF0](*(a1 + 40));
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "Calling local pairing completion block %p", &v5, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_195A8481C(uint64_t a1, void *a2)
{
  v3 = [a2 pairingCollaboratorWithErrorHandler:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

void sub_195A84884(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195A84958;
  block[3] = &unk_1E743F1D8;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void sub_195A84970(uint64_t a1, void *a2)
{
  v3 = [a2 pairingCollaboratorWithTimeout:*(a1 + 32) errorHandler:*(a1 + 48)];
  (*(*(a1 + 40) + 16))();
}

void sub_195A84A1C()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0A52EE8];
  v1 = qword_1ED5DDE58;
  qword_1ED5DDE58 = v0;

  v49 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0A33058];
  [qword_1ED5DDE58 setInterface:v49 forSelector:sel_setupOffGridMessengerClient_withUUID_forServiceType_ argumentIndex:0 ofReply:0];
  v2 = qword_1ED5DDE58;
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [v3 setWithObjects:{v4, v5, v6, objc_opt_class(), 0}];
  [v2 setClasses:v7 forSelector:sel_resultsForDestinationURIs_senderURI_service_options_completion_ argumentIndex:0 ofReply:0];

  v8 = qword_1ED5DDE58;
  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v9 setWithObjects:{v10, v11, objc_opt_class(), 0}];
  [v8 setClasses:v12 forSelector:sel_resultsForDestinationURIs_senderURI_service_options_completion_ argumentIndex:0 ofReply:1];

  v13 = qword_1ED5DDE58;
  v14 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v13 setClasses:v14 forSelector:sel_encryptOffGridMessage_completion_ argumentIndex:0 ofReply:0];

  v15 = qword_1ED5DDE58;
  v16 = MEMORY[0x1E695DFD8];
  v17 = objc_opt_class();
  v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
  [v15 setClasses:v18 forSelector:sel_encryptOffGridMessage_completion_ argumentIndex:0 ofReply:1];

  v19 = qword_1ED5DDE58;
  v20 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v19 setClasses:v20 forSelector:sel_decryptOffGridMessage_completion_ argumentIndex:0 ofReply:0];

  v21 = qword_1ED5DDE58;
  v22 = MEMORY[0x1E695DFD8];
  v23 = objc_opt_class();
  v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
  [v21 setClasses:v24 forSelector:sel_decryptOffGridMessage_completion_ argumentIndex:0 ofReply:1];

  v25 = qword_1ED5DDE58;
  v26 = MEMORY[0x1E695DFD8];
  v27 = objc_opt_class();
  v28 = [v26 setWithObjects:{v27, objc_opt_class(), 0}];
  [v25 setClasses:v28 forSelector:sel_sendEncryptedOffGridMessage_options_completion_ argumentIndex:0 ofReply:0];

  v29 = qword_1ED5DDE58;
  v30 = MEMORY[0x1E695DFD8];
  v31 = objc_opt_class();
  v32 = [v30 setWithObjects:{v31, objc_opt_class(), 0}];
  [v29 setClasses:v32 forSelector:sel_sendEncryptedOffGridMessage_options_completion_ argumentIndex:0 ofReply:1];

  v33 = qword_1ED5DDE58;
  v34 = MEMORY[0x1E695DFD8];
  v35 = objc_opt_class();
  v36 = objc_opt_class();
  v37 = [v34 setWithObjects:{v35, v36, objc_opt_class(), 0}];
  [v33 setClasses:v37 forSelector:sel_sendFetchRequestForHandles_fromHandle_completion_ argumentIndex:0 ofReply:0];

  v38 = qword_1ED5DDE58;
  v39 = MEMORY[0x1E695DFD8];
  v40 = objc_opt_class();
  v41 = objc_opt_class();
  v42 = objc_opt_class();
  v43 = [v39 setWithObjects:{v40, v41, v42, objc_opt_class(), 0}];
  [v38 setClasses:v43 forSelector:sel_sendFetchRequestForHandles_fromHandle_completion_ argumentIndex:0 ofReply:1];

  v44 = qword_1ED5DDE58;
  v45 = MEMORY[0x1E695DFD8];
  v46 = objc_opt_class();
  v47 = objc_opt_class();
  v48 = [v45 setWithObjects:{v46, v47, objc_opt_class(), 0}];
  [v44 setClasses:v48 forSelector:sel_donateHandlesForMessagingKeys_fromURI_options_completion_ argumentIndex:0 ofReply:0];
}

void sub_195A84F2C()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0A52F48];
  v1 = qword_1ED5DDE60;
  qword_1ED5DDE60 = v0;

  v61 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0A38998];
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = [v2 setWithObjects:{v3, v4, objc_opt_class(), 0}];
  [v61 setClasses:v5 forSelector:sel_contactInfoUpdated_ argumentIndex:0 ofReply:0];

  [qword_1ED5DDE60 setInterface:v61 forSelector:sel_setupOffGridStateManagerClient_withUUID_completion_ argumentIndex:0 ofReply:0];
  v6 = qword_1ED5DDE60;
  v7 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v6 setClasses:v7 forSelector:sel_fetchCurrentOffGridMode_ argumentIndex:1 ofReply:1];

  v8 = qword_1ED5DDE60;
  v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v8 setClasses:v9 forSelector:sel_fetchCurrentPublishStatus_ argumentIndex:1 ofReply:1];

  v10 = qword_1ED5DDE60;
  v11 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v10 setClasses:v11 forSelector:sel_setOffGridMode_options_completion_ argumentIndex:0 ofReply:0];

  v12 = qword_1ED5DDE60;
  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  [v12 setClasses:v15 forSelector:sel_invitedHandlesWithCompletion_ argumentIndex:0 ofReply:1];

  v16 = qword_1ED5DDE60;
  v17 = MEMORY[0x1E695DFD8];
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = [v17 setWithObjects:{v18, v19, objc_opt_class(), 0}];
  [v16 setClasses:v20 forSelector:sel_inviteHandles_fromSenderHandle_withDictionaryPayload_completion_ argumentIndex:0 ofReply:0];

  v21 = qword_1ED5DDE60;
  v22 = MEMORY[0x1E695DFD8];
  v23 = objc_opt_class();
  v24 = objc_opt_class();
  v25 = objc_opt_class();
  v26 = [v22 setWithObjects:{v23, v24, v25, objc_opt_class(), 0}];
  [v21 setClasses:v26 forSelector:sel_inviteHandles_fromSenderHandle_withDictionaryPayload_completion_ argumentIndex:0 ofReply:1];

  v27 = qword_1ED5DDE60;
  v28 = MEMORY[0x1E695DFD8];
  v29 = objc_opt_class();
  v30 = [v28 setWithObjects:{v29, objc_opt_class(), 0}];
  [v27 setClasses:v30 forSelector:sel_removeInvitedHandles_completion_ argumentIndex:0 ofReply:0];

  v31 = qword_1ED5DDE60;
  v32 = MEMORY[0x1E695DFD8];
  v33 = objc_opt_class();
  v34 = objc_opt_class();
  v35 = [v32 setWithObjects:{v33, v34, objc_opt_class(), 0}];
  [v31 setClasses:v35 forSelector:sel_removeInvitedHandles_completion_ argumentIndex:0 ofReply:1];

  v36 = qword_1ED5DDE60;
  v37 = MEMORY[0x1E695DFD8];
  v38 = objc_opt_class();
  v39 = objc_opt_class();
  v40 = [v37 setWithObjects:{v38, v39, objc_opt_class(), 0}];
  [v36 setClasses:v40 forSelector:sel_removeAllInvitedHandlesWithCompletion_ argumentIndex:0 ofReply:1];

  v41 = qword_1ED5DDE60;
  v42 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v41 setClasses:v42 forSelector:sel_fetchStewieAvailabilityWithCompletion_ argumentIndex:2 ofReply:1];

  v43 = qword_1ED5DDE60;
  v44 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v43 setClasses:v44 forSelector:sel_connectStewieWithCompletion_ argumentIndex:0 ofReply:1];

  v45 = qword_1ED5DDE60;
  v46 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v45 setClasses:v46 forSelector:sel_disconnectStewieWithCompletion_ argumentIndex:0 ofReply:1];

  v47 = qword_1ED5DDE60;
  v48 = MEMORY[0x1E695DFD8];
  v49 = objc_opt_class();
  v50 = objc_opt_class();
  v51 = objc_opt_class();
  v52 = objc_opt_class();
  v53 = [v48 setWithObjects:{v49, v50, v51, v52, objc_opt_class(), 0}];
  [v47 setClasses:v53 forSelector:sel_fetchContactsOfType_completion_ argumentIndex:0 ofReply:1];

  v54 = qword_1ED5DDE60;
  v55 = MEMORY[0x1E695DFD8];
  v56 = objc_opt_class();
  v57 = objc_opt_class();
  v58 = objc_opt_class();
  v59 = objc_opt_class();
  v60 = [v55 setWithObjects:{v56, v57, v58, v59, objc_opt_class(), 0}];
  [v54 setClasses:v60 forSelector:sel_fetchContactsOfType_phoneNumbersOnly_completion_ argumentIndex:0 ofReply:1];
}

uint64_t sub_195A855BC()
{
  v0 = objc_alloc_init(_IDSDeviceConnectionActiveMap);
  v1 = qword_1ED5DE078;
  qword_1ED5DE078 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_195A86434(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 56))
  {
    *(v1 + 125) = 1;
    v3 = MEMORY[0x19A8BBEF0](*(*(a1 + 32) + 56));
    v4 = *(a1 + 32);
    v5 = v4[8];
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = sub_195A86510;
    v10 = &unk_1E743EAA8;
    v11 = v4;
    v12 = v3;
    v6 = v3;
    dispatch_async(v5, &v7);
    [*(a1 + 32) _cleanupCompletionBlock];
  }
}

void sub_195A86510(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  v2 = +[IDSTransportLog IDSDeviceConnection];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 134217984;
    v8 = v3;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "<%p> _IDSDeviceConnection has timed out waiting for a socket.", buf, 0xCu);
  }

  v4 = objc_alloc(MEMORY[0x1E695DF20]);
  v5 = [v4 initWithObjectsAndKeys:{@"Socket open timed out", *MEMORY[0x1E696A578], 0}];
  v6 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:20 userInfo:v5];
  (*(*(a1 + 40) + 16))();
}

uint64_t sub_195A879B4(uint64_t a1)
{
  kdebug_trace();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_195A87B08(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = +[IDSTransportLog IDSDeviceConnection];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 120);
    *buf = 67109120;
    v15 = v3;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "Daemon died, closing socket: %d", buf, 8u);
  }

  v4 = objc_alloc(MEMORY[0x1E695DF20]);
  v5 = [v4 initWithObjectsAndKeys:{@"Disconnected from daemon", *MEMORY[0x1E696A578], 0}];
  v6 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:20 userInfo:v5];
  v7 = MEMORY[0x19A8BBEF0](*(*(a1 + 32) + 56));
  v8 = *(*(a1 + 32) + 64);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195A87CC8;
  block[3] = &unk_1E743F110;
  v12 = v6;
  v13 = v7;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
  [*(a1 + 32) _cleanupCompletionBlock];
  [*(a1 + 32) _close];
}

id sub_195A888AC(uint64_t a1)
{
  if (*(a1 + 72))
  {
    if (*(a1 + 80) == 1)
    {
      v2 = *(a1 + 48);
      if (v2)
      {
        (*(v2 + 16))(v2, 0);
      }
    }

    (*(*(a1 + 56) + 16))();
    if (*(a1 + 81) == 1)
    {
      v3 = *(a1 + 64);
      if (v3)
      {
        (*(v3 + 16))(v3, 0);
      }
    }
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }

  v4 = objc_opt_self();
  return objc_opt_self();
}

void sub_195A88D38(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 8) object];
    [v4 accountController:v3 accountRemoved:*(a1 + 40)];
  }
}

void sub_195A88DB4(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 8) object];
    [v4 accountController:v3 accountAdded:*(a1 + 40)];
  }
}

void sub_195A88E30(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 8) object];
    [v4 accountController:v3 accountUpdated:*(a1 + 40)];
  }
}

id sub_195A89F08(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectForKey:@"uri"];
  v4 = [v2 objectForKey:@"status"];

  LODWORD(v2) = [v4 intValue];
  if (v2 == 5051)
  {
    v5 = [v3 _stripFZIDPrefix];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_195A8A30C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 8) object];
    [v4 accountController:v3 accountRemoved:*(a1 + 40)];
  }
}

void sub_195A8A388(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 8) object];
    [v4 accountController:v3 accountAdded:*(a1 + 40)];
  }
}

void sub_195A8A404(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 8) object];
    [v4 accountController:v3 accountEnabled:*(a1 + 40)];
  }
}

void sub_195A8AD08(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 8) object];
    [v4 accountController:v3 accountAdded:*(a1 + 40)];
  }
}

void sub_195A8AD84(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 8) object];
    [v4 accountController:v3 accountUpdated:*(a1 + 40)];
  }
}

void sub_195A8B05C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 8) object];
    [v4 accountController:v3 accountRemoved:*(a1 + 40)];
  }
}

void sub_195A8B508(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 8) object];
    [v4 accountController:v3 accountUpdated:*(a1 + 40)];
  }
}

void sub_195A8B584(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 8) object];
    [v4 accountController:v3 accountAdded:*(a1 + 40)];
  }
}

void sub_195A8BEA8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 _internal];
  v3 = [v4 uniqueID];
  [v2 addObject:v3];
}

void sub_195A8BF10(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 8) object];
    [v4 accountController:v3 accountUpdated:*(a1 + 40)];
  }
}

void sub_195A8BF8C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 8) object];
    [v4 accountController:v3 accountAdded:*(a1 + 40)];
  }
}

void sub_195A8C008(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 8) object];
    [v4 accountController:v3 accountRemoved:*(a1 + 40)];
  }
}

uint64_t sub_195A8C3E0(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [v3 isActive];
    v5 = @"NO";
    v6 = *(a1 + 40);
    v8 = 138412802;
    v9 = v3;
    if (v4)
    {
      v5 = @"YES";
    }

    v10 = 2112;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "Setup completed for account %@ isActive %@ setupError %@", &v8, 0x20u);
  }

  return (*(*(a1 + 48) + 16))(*(a1 + 48), *(a1 + 32), [*(a1 + 32) isActive], *(a1 + 40));
}

void sub_195A8C7D0(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 8) object];
    [v4 accountController:v3 accountEnabled:*(a1 + 40)];
  }
}

void sub_195A8CB10(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 8) object];
    [v4 accountController:v3 accountDisabled:*(a1 + 40)];
  }
}

void sub_195A8CB8C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void sub_195A8D2E0(uint64_t a1, void *a2)
{
  v3 = [a2 pinnedIdentityCollaboratorWithErrorHandler:&unk_1F09E6320];
  [v3 fetchIdentityForPinningWithCompletion:*(a1 + 32)];
}

void sub_195A8D33C(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E69A5270] IDSPinnedIdentity];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_195B32E58();
  }
}

void sub_195A8D4E0(uint64_t a1, void *a2)
{
  v3 = [a2 pinnedIdentityCollaboratorWithErrorHandler:&unk_1F09E6340];
  [v3 pinIdentityBlob:*(a1 + 32) withCompletion:*(a1 + 40)];
}

void sub_195A8D53C(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E69A5270] IDSPinnedIdentity];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_195B32E58();
  }
}

void sub_195A8D680(uint64_t a1, void *a2)
{
  v3 = [a2 pinnedIdentityCollaboratorWithErrorHandler:&unk_1F09E6360];
  [v3 fetchAllPinnedIdentitiesWithCompletion:*(a1 + 32)];
}

void sub_195A8D6DC(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E69A5270] IDSPinnedIdentity];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_195B32E58();
  }
}

void sub_195A8D7BC(uint64_t a1, void *a2)
{
  v2 = [a2 pinnedIdentityCollaboratorWithErrorHandler:&unk_1F09E63A0];
  [v2 clearAllPinnedIdentities];
}

void sub_195A8D808(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E69A5270] IDSPinnedIdentity];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_195B32E58();
  }
}

uint64_t IDSHardDeregister(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v9 = *MEMORY[0x1E69E9840];
  if (_IDSRunningInDaemon())
  {
    sub_195B32EC0();
  }

  v3 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [MEMORY[0x1E696AF00] callStackSymbols];
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "Hard deregistering, %@", &v7, 0xCu);
  }

  v5 = +[IDSDaemonController sharedInstance];
  [v5 hardDeregister];

  return sleep(v2);
}

uint64_t IDSTriggerFinalDeregister(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v9 = *MEMORY[0x1E69E9840];
  if (_IDSRunningInDaemon())
  {
    sub_195B32EEC();
  }

  v3 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [MEMORY[0x1E696AF00] callStackSymbols];
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "Triggering final deregister, %@", &v7, 0xCu);
  }

  v5 = +[IDSDaemonController sharedInstance];
  [v5 triggerFinalDeregister];

  return sleep(v2);
}

uint64_t IDSClearState(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (_IDSRunningInDaemon())
  {
    sub_195B32F18();
  }

  v3 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "Clearing IDS state", v7, 2u);
  }

  v4 = [MEMORY[0x1E69A6180] sharedDefaults];
  [v4 setClearStateOnLaunch:1];

  v5 = +[IDSDaemonController sharedInstance];
  [v5 clearIDSState];

  return sleep(v2);
}

void sub_195A8E5F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195A8E608(uint64_t a1)
{
  v2 = [*(a1 + 40) onQueueWeakSharedInstance];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void sub_195A8E70C(uint64_t a1)
{
  v2 = [*(a1 + 40) onQueueWeakSharedInstance];
  (*(*(a1 + 32) + 16))();
}

void sub_195A8E824(uint64_t a1)
{
  v2 = [*(a1 + 40) onQueueWeakSharedInstance];
  (*(*(a1 + 32) + 16))();
}

id sub_195A8E8AC()
{
  v0 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.identityservicesd.nsxpc" options:0];

  return v0;
}

void sub_195A8EB9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_195A8EBC4(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [MEMORY[0x1E69A5270] xpc];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [WeakRetained collaboratorPromiseDictionary];
      *buf = 138543618;
      v19 = v4;
      v20 = 2048;
      v21 = WeakRetained;
      _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "IDSXPCDaemonController connection interrupted -- Dropping collaborators {collaborators: %{public}@, pointer: %p}", buf, 0x16u);
    }

    v5 = [WeakRetained collaboratorPromiseDictionary];
    [v5 removeAllObjects];

    v6 = [WeakRetained syncCollaboratorDictionary];
    [v6 removeAllObjects];

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [*(a1 + 32) interruptionHandlerByTarget];
    v8 = NSAllMapTableValues(v7);

    v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        v12 = 0;
        do
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(v8);
          }

          (*(*(*(&v13 + 1) + 8 * v12++) + 16))();
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }
  }
}

void sub_195A8F134(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E696AE30];
  v5 = a3;
  v6 = a2;
  v8 = [v4 processInfo];
  v7 = [v8 processName];
  [v6 reunionSyncCollaboratorForClientProcessName:v7 withCompletion:v5];
}

void sub_195A8FFD8(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_opt_self();
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v5);
  }
}

void sub_195A90124(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_opt_self();
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v5);
  }
}

void sub_195A90648(uint64_t a1, uint64_t a2)
{
  if (*(*(*(a1 + 56) + 8) + 24))
  {
    v4 = [*(a1 + 40) collaboratorPromiseDictionary];
    [v4 removeObjectForKey:*(a1 + 48)];
  }

  else
  {
    v3 = *(a1 + 32);

    [v3 failWithError:a2];
  }
}

void sub_195A906D4(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  *(*(*(a1 + 48) + 8) + 24) = 1;
  if (a3)
  {
    [*(a1 + 32) failWithError:a3];
  }

  else
  {
    v5 = [[IDSXPCConnection alloc] initWithRemoteObject:v6 rootConnection:*(a1 + 40)];
    [*(a1 + 32) fulfillWithValue:v5];
  }
}

void sub_195A9076C(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 state];
  if (v4 == 1)
  {
    v12 = [MEMORY[0x1E69A5270] xpc];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 40);
      v14 = [v3 error];
      *buf = 138543618;
      v26 = v13;
      v27 = 2114;
      v28 = v14;
      _os_log_impl(&dword_1959FF000, v12, OS_LOG_TYPE_DEFAULT, "Failed to get collaborator {identifier: %{public}@, error: %{public}@}", buf, 0x16u);
    }

    v15 = *(a1 + 56);
    if (v15)
    {
      v16 = [v3 error];
      (*(v15 + 16))(v15, v16);
    }

    v17 = *(a1 + 48);
    v18 = [v3 error];
    [v17 failWithError:v18];

    v11 = [*(a1 + 32) collaboratorPromiseDictionary];
    [v11 removeObjectForKey:*(a1 + 40)];
    goto LABEL_11;
  }

  if (!v4)
  {
    v5 = [v3 value];
    v6 = *(a1 + 64);
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = sub_195A909E4;
    v22 = &unk_1E743F138;
    v7 = *(a1 + 56);
    v23 = *(a1 + 32);
    v24 = v7;
    v8 = [v5 remoteObjectProxyWithTimeoutInSeconds:&v19 errorHandler:v6];

    v9 = [MEMORY[0x1E69A5270] xpc];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      *buf = 138543618;
      v26 = v10;
      v27 = 2114;
      v28 = v8;
      _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "Got collaborator {identifier: %{public}@, proxy: %{public}@}", buf, 0x16u);
    }

    [*(a1 + 48) fulfillWithRemoteObject:v8];
    v11 = v24;
LABEL_11:
  }
}

id sub_195A909E4(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    (*(v1 + 16))();
  }

  return objc_opt_self();
}

void sub_195A90C00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A90C18(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 48);
  if (a3)
  {
    v5 = *(v4 + 16);
    v6 = *(a1 + 48);

    v5(v6, a3);
  }

  else
  {
    v8 = [a2 synchronousRemoteObjectProxyWithErrorHandler:v4];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = *(*(*(a1 + 56) + 8) + 40);
    v12 = [*(a1 + 32) syncCollaboratorDictionary];
    [v12 setObject:v11 forKeyedSubscript:*(a1 + 40)];
  }
}

void sub_195A91AA0()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0A52FA8];
  v1 = qword_1ED5DDE68;
  qword_1ED5DDE68 = v0;

  v2 = +[IDSXPCGroupSessionKeyValueDeliveryInterface interface];
  [qword_1ED5DDE68 setInterface:v2 forSelector:sel_keyValueDeliveryForSessionID_completionHandler_ argumentIndex:0 ofReply:1];
}

void sub_195A91C70(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A91D38;
  v6[3] = &unk_1E743FC50;
  v7 = *(a1 + 48);
  v4 = [a2 keyTransparencyCollaboratorWithErrorHandler:v6];
  v5 = [*(a1 + 32) applicationIdentifier];
  [v4 fetchPeerVerificationInfoForApplication:v5 forURIs:*(a1 + 40) withCompletion:*(a1 + 48)];
}

void sub_195A91D38(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E69A5270] KeyTransparency];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_195B33138();
  }

  v5 = *(a1 + 32);
  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IDSKeyTransparencyManagerErrorDomain" code:100 userInfo:0];
  (*(v5 + 16))(v5, MEMORY[0x1E695E0F8], v6);
}

void sub_195A91E84(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A91F4C;
  v6[3] = &unk_1E743FC50;
  v7 = *(a1 + 40);
  v4 = [a2 keyTransparencyCollaboratorWithErrorHandler:v6];
  v5 = [*(a1 + 32) applicationIdentifier];
  [v4 fetchSelfVerificationInfoForApplication:v5 withCompletion:*(a1 + 40)];
}

void sub_195A91F4C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E69A5270] KeyTransparency];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_195B33138();
  }

  v5 = *(a1 + 32);
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v6 = qword_1EAEDC108;
  v14 = qword_1EAEDC108;
  if (!qword_1EAEDC108)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_195A94A48;
    v10[3] = &unk_1E743E648;
    v10[4] = &v11;
    sub_195A94A48(v10);
    v6 = v12[3];
  }

  v7 = v6;
  _Block_object_dispose(&v11, 8);
  v8 = objc_alloc_init(v6);
  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IDSKeyTransparencyManagerErrorDomain" code:100 userInfo:0];
  (*(v5 + 16))(v5, v8, v9);
}

void sub_195A920A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A92184(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A9224C;
  v6[3] = &unk_1E743FC50;
  v7 = *(a1 + 48);
  v4 = [a2 keyTransparencyCollaboratorWithErrorHandler:v6];
  v5 = [*(a1 + 32) applicationIdentifier];
  [v4 healSelfForApplication:v5 withHealableErrors:*(a1 + 40) withCompletion:*(a1 + 48)];
}

void sub_195A9224C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E69A5270] KeyTransparency];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_195B33138();
  }

  (*(*(a1 + 32) + 16))();
}

id sub_195A92CA8()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = qword_1EAEDBED0;
  v7 = qword_1EAEDBED0;
  if (!qword_1EAEDBED0)
  {
    v1 = sub_195A94AA0();
    v5[3] = dlsym(v1, "kKTApplicationIdentifierIDS");
    qword_1EAEDBED0 = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    sub_195B331A0();
  }

  v2 = *v0;

  return v2;
}

void sub_195A92D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_195A92DAC()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = qword_1EAEDBEE0;
  v7 = qword_1EAEDBEE0;
  if (!qword_1EAEDBEE0)
  {
    v1 = sub_195A94AA0();
    v5[3] = dlsym(v1, "kKTApplicationIdentifierIDSFaceTime");
    qword_1EAEDBEE0 = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    sub_195B33218();
  }

  v2 = *v0;

  return v2;
}

void sub_195A92E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_195A92EB0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = qword_1EAEDBED8;
  v7 = qword_1EAEDBED8;
  if (!qword_1EAEDBED8)
  {
    v1 = sub_195A94AA0();
    v5[3] = dlsym(v1, "kKTApplicationIdentifierIDSMultiplex");
    qword_1EAEDBED8 = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    sub_195B33290();
  }

  v2 = *v0;

  return v2;
}

void sub_195A92F9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A930B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_195A930D4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 keyTransparencyCollaboratorWithErrorHandler:&unk_1F09E6600];

  if (*(a1 + 40))
  {
    v5 = WeakRetained;
  }

  else
  {
    v5 = 0;
  }

  v6 = [WeakRetained uuid];
  [v4 setupKeyTransparencyManager:v5 uuid:v6];
}

void sub_195A9317C(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E69A5270] KeyTransparency];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_195B33138();
  }
}

void sub_195A936D4(uint64_t a1, void *a2)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195A937E0;
  v8[3] = &unk_1E743FC50;
  v9 = *(a1 + 40);
  v4 = [a2 keyTransparencyCollaboratorWithErrorHandler:v8];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A93860;
  v6[3] = &unk_1E74414D0;
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  [v4 sendOptInUpdateForApplications:v5 withCompletion:v6];
}

void sub_195A937E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E69A5270] KeyTransparency];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_195B33138();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_195A93860(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 success];
  v5 = [v3 error];

  (*(v2 + 16))(v2, v4, v5);
}

void sub_195A93AD8(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_195A93B7C;
  v5[3] = &unk_1E743FC50;
  v6 = *(a1 + 40);
  v4 = [a2 keyTransparencyCollaboratorWithErrorHandler:v5];
  [v4 sendOptInUpdateForApplications:*(a1 + 32) withCompletion:*(a1 + 40)];
}

void sub_195A93B7C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E69A5270] KeyTransparency];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_195B33138();
  }

  v5 = *(a1 + 32);
  v6 = [objc_alloc(MEMORY[0x1E69A52E0]) initWithSuccess:0 serverProvidedSMT:0 error:v3];
  (*(v5 + 16))(v5, v6);
}

void sub_195A93E1C(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_195A93EC0;
  v5[3] = &unk_1E743FC50;
  v6 = *(a1 + 40);
  v4 = [a2 keyTransparencyCollaboratorWithErrorHandler:v5];
  [v4 sendOptInUpdateRequest:*(a1 + 32) withCompletion:*(a1 + 40)];
}

void sub_195A93EC0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E69A5270] KeyTransparency];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_195B33138();
  }

  v5 = *(a1 + 32);
  v6 = objc_alloc(MEMORY[0x1E69A52E0]);
  v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IDSKeyTransparencyManagerErrorDomain" code:200 userInfo:0];
  v8 = [v6 initWithSuccess:0 optedInOutURIs:0 serverSMTByURI:0 error:v7];
  (*(v5 + 16))(v5, v8);
}

void sub_195A94030(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_195A940D4;
  v5[3] = &unk_1E743FC50;
  v6 = *(a1 + 32);
  v4 = [a2 keyTransparencyCollaboratorWithErrorHandler:v5];
  [v4 fetchKTRegistrationStatusWithCompletion:*(a1 + 32)];
}

void sub_195A940D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E69A5270] KeyTransparency];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_195B33138();
  }

  v5 = objc_alloc_init(MEMORY[0x1E69A52E8]);
  (*(*(a1 + 32) + 16))();
}

void sub_195A94178(uint64_t a1, void *a2)
{
  v2 = [a2 keyTransparencyCollaboratorWithErrorHandler:&unk_1F09E6640];
  [v2 registrationDataNeedsUpdate];
}

void sub_195A941C4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E69A5270] KeyTransparency];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_195B33138();
  }
}

void sub_195A942B8(uint64_t a1, void *a2)
{
  v3 = [a2 keyTransparencyCollaboratorWithErrorHandler:&unk_1F09E6660];
  [v3 registrationMightNeedUpdate:*(a1 + 32)];
}

void sub_195A94314(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E69A5270] KeyTransparency];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_195B33138();
  }
}

void sub_195A94458(uint64_t a1, void *a2)
{
  v3 = [a2 keyTransparencyCollaboratorWithErrorHandler:&unk_1F09E6680];
  [v3 peerVerificationFinishedWithResults:*(a1 + 32)];
}

void sub_195A944B4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E69A5270] KeyTransparency];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_195B33138();
  }
}

void sub_195A94630(uint64_t a1, void *a2)
{
  v3 = [a2 keyTransparencyCollaboratorWithErrorHandler:&unk_1F09E66A0];
  [v3 cacheClearRequest:*(a1 + 32)];
}

void sub_195A9468C(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E69A5270] KeyTransparency];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_195B33138();
  }
}

void sub_195A947F8(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_195A9489C;
  v5[3] = &unk_1E743FC50;
  v6 = *(a1 + 40);
  v4 = [a2 keyTransparencyCollaboratorWithErrorHandler:v5];
  [v4 getCurrentRegistrationState:*(a1 + 32) withCompletion:*(a1 + 40)];
}

void sub_195A9489C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E69A5270] KeyTransparency];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_195B33138();
  }

  v5 = *(a1 + 32);
  v6 = [MEMORY[0x1E695DF20] dictionary];
  (*(v5 + 16))(v5, v6);
}

Class sub_195A94A48(uint64_t a1)
{
  sub_195A94AA0();
  result = objc_getClass("KTSelfVerificationInfo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_195B336C8();
  }

  qword_1EAEDC108 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_195A94AA0()
{
  v2[9] = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!qword_1ED5DDF20)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = sub_195A94B90;
    v2[4] = &unk_1E743EBC0;
    v2[5] = v2;
    v2[7] = 0;
    v2[8] = 0;
    v2[6] = "/System/Library/PrivateFrameworks/Transparency.framework/Transparency";
    qword_1ED5DDF20 = _sl_dlopen();
  }

  v0 = qword_1ED5DDF20;
  if (!qword_1ED5DDF20)
  {
    sub_195B33744(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t sub_195A94B90(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1ED5DDF20 = result;
  return result;
}

void *sub_195A94BFC(uint64_t a1)
{
  v2 = sub_195A94AA0();
  result = dlsym(v2, "kKTApplicationIdentifierIDS");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EAEDBED0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_195A94C4C(uint64_t a1)
{
  v2 = sub_195A94AA0();
  result = dlsym(v2, "kKTApplicationIdentifierIDSFaceTime");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EAEDBEE0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_195A94C9C(uint64_t a1)
{
  v2 = sub_195A94AA0();
  result = dlsym(v2, "kKTApplicationIdentifierIDSMultiplex");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EAEDBED8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_195A94CEC(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_195A94D9C;
  v5[3] = &unk_1E743FC50;
  v6 = *(a1 + 32);
  v4 = [a2 keyTransparencyCollaboratorWithErrorHandler:v5];
  (*(*(a1 + 40) + 16))();
}

void sub_195A94D9C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E69A5270] KeyTransparency];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_195B33138();
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t sub_195A952A0(void *a1)
{
  v2 = [[_IDSAccount alloc] initWithDictionary:a1[5] uniqueID:a1[6] serviceName:a1[7] delegateContext:a1[4]];
  v3 = a1[4];
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

uint64_t sub_195A95524(void *a1)
{
  v2 = [[_IDSAccount alloc] initWithLoginID:a1[5] uniqueID:a1[6] serviceName:a1[7] delegateContext:a1[4]];
  v3 = a1[4];
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void sub_195A9568C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A957E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A957F8(uint64_t a1)
{
  v5 = [*(a1 + 32) _internal];
  v2 = [v5 primaryServiceName];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_195A95930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A95948(uint64_t a1)
{
  v2 = [*(a1 + 32) _internal];
  *(*(*(a1 + 40) + 8) + 24) = [v2 isUserDisabled];
}

void sub_195A95AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A95ACC(uint64_t a1)
{
  v5 = [*(a1 + 32) _internal];
  v2 = [v5 nearbyDevices];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_195A95C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A95C5C(uint64_t a1)
{
  v5 = [*(a1 + 32) _internal];
  v2 = [v5 connectedDevices];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_195A95DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A95DEC(uint64_t a1)
{
  v5 = [*(a1 + 32) _internal];
  v2 = [v5 profileInfo];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_195A95F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A95F7C(uint64_t a1)
{
  v5 = [*(a1 + 32) _internal];
  v2 = [v5 aliases];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_195A960F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A9610C(uint64_t a1)
{
  v5 = [*(a1 + 32) _internal];
  v2 = [v5 aliasStrings];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_195A96284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A9629C(uint64_t a1)
{
  v5 = [*(a1 + 32) _internal];
  v2 = [v5 vettedAliases];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_195A96414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A9642C(uint64_t a1)
{
  v5 = [*(a1 + 32) _internal];
  v2 = [v5 aliasesToRegister];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_195A965A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A965BC(uint64_t a1)
{
  v5 = [*(a1 + 32) _internal];
  v2 = [v5 handles];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_195A96734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A9674C(uint64_t a1)
{
  v5 = [*(a1 + 32) _internal];
  v2 = [v5 pseudonymURIMap];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_195A968C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A968DC(uint64_t a1)
{
  v5 = [*(a1 + 32) _internal];
  v2 = [v5 pseudonyms];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_195A969FC(uint64_t a1)
{
  v2 = [*(a1 + 32) _internal];
  [v2 setPassword:*(a1 + 40)];
}

void sub_195A96B08(uint64_t a1)
{
  v2 = [*(a1 + 32) _internal];
  [v2 setAuthToken:*(a1 + 40)];
}

void sub_195A96C2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A96C44(uint64_t a1)
{
  v2 = [*(a1 + 32) _internal];
  *(*(*(a1 + 40) + 8) + 24) = [v2 _isEnabled];
}

void sub_195A96E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A96E98(uint64_t a1)
{
  v2 = [*(a1 + 32) _internal];
  *(*(*(a1 + 40) + 8) + 24) = [v2 isUsableForOuterMessaging];
}

void sub_195A96FAC(uint64_t a1)
{
  v2 = [*(a1 + 32) _internal];
  [v2 setAccountInfo:*(a1 + 40)];
}

void sub_195A970B8(uint64_t a1)
{
  v2 = [*(a1 + 32) _internal];
  [v2 updateAccountWithAccountInfo:*(a1 + 40)];
}

void sub_195A971DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A971F4(uint64_t a1)
{
  v2 = [*(a1 + 32) _internal];
  *(*(*(a1 + 40) + 8) + 24) = [v2 registrationError];
}

void sub_195A97360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A97378(uint64_t a1)
{
  v5 = [*(a1 + 32) _internal];
  v2 = [v5 registrationAlertInfo];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_195A974B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A974C8(uint64_t a1)
{
  v2 = [*(a1 + 32) _internal];
  *(*(*(a1 + 40) + 8) + 24) = [v2 profileValidationStatus];
}

void sub_195A975F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A9760C(uint64_t a1)
{
  v2 = [*(a1 + 32) _internal];
  *(*(*(a1 + 40) + 8) + 24) = [v2 profileValidationErrorReason];
}

void sub_195A97778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A97790(uint64_t a1)
{
  v5 = [*(a1 + 32) _internal];
  v2 = [v5 nextRegistrationDate];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_195A97908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A97920(uint64_t a1)
{
  v5 = [*(a1 + 32) _internal];
  v2 = [v5 dateRegistered];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_195A97A98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A97AB0(uint64_t a1)
{
  v5 = [*(a1 + 32) _internal];
  v2 = [v5 registeredURIs];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_195A97C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A97C40(uint64_t a1)
{
  v5 = [*(a1 + 32) _internal];
  v2 = [v5 registrationCertificate];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_195A97DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A97DD0(uint64_t a1)
{
  v5 = [*(a1 + 32) _internal];
  v2 = [v5 pushToken];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_195A97F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A97F60(uint64_t a1)
{
  v5 = [*(a1 + 32) _internal];
  v2 = [v5 regionServerContext];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_195A980D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A980F0(uint64_t a1)
{
  v5 = [*(a1 + 32) _internal];
  v2 = [v5 profileID];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_195A98238(uint64_t a1)
{
  v2 = [*(a1 + 32) _internal];
  [v2 addDelegate:*(a1 + 40) queue:*(a1 + 48)];
}

void sub_195A98338(uint64_t a1)
{
  v2 = [*(a1 + 32) _internal];
  [v2 removeDelegate:*(a1 + 40)];
}

void sub_195A9846C(uint64_t a1)
{
  v2 = [*(a1 + 32) _internal];
  [v2 addRegistrationDelegate:*(a1 + 40) queue:*(a1 + 48)];
}

void sub_195A9856C(uint64_t a1)
{
  v2 = [*(a1 + 32) _internal];
  [v2 removeRegistrationDelegate:*(a1 + 40)];
}

void sub_195A986D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A986E8(uint64_t a1)
{
  v5 = [*(a1 + 32) _internal];
  v2 = [v5 regionID];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_195A98808(uint64_t a1)
{
  v2 = [*(a1 + 32) _internal];
  [v2 setRegionID:*(a1 + 40)];
}

void sub_195A9896C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A98984(uint64_t a1)
{
  v5 = [*(a1 + 32) _internal];
  v2 = [v5 regionBasePhoneNumber];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_195A98AA4(uint64_t a1)
{
  v2 = [*(a1 + 32) _internal];
  [v2 setRegionBasePhoneNumber:*(a1 + 40)];
}

void sub_195A98C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A98C20(uint64_t a1)
{
  v5 = [*(a1 + 32) _internal];
  v2 = [v5 displayName];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_195A98D40(uint64_t a1)
{
  v2 = [*(a1 + 32) _internal];
  [v2 setDisplayName:*(a1 + 40)];
}

void sub_195A98EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A98EBC(uint64_t a1)
{
  v5 = [*(a1 + 32) _internal];
  v2 = [v5 userUniqueIdentifier];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_195A98FB4(uint64_t a1)
{
  v1 = [*(a1 + 32) _internal];
  [v1 authenticateAccount];
}

void sub_195A99088(uint64_t a1)
{
  v1 = [*(a1 + 32) _internal];
  [v1 passwordUpdated];
}

void sub_195A991A8(uint64_t a1)
{
  v2 = [*(a1 + 32) _internal];
  [v2 updateAuthorizationCredentials:*(a1 + 40) token:*(a1 + 48)];
}

void sub_195A9928C(uint64_t a1)
{
  v1 = [*(a1 + 32) _internal];
  [v1 validateProfile];
}

void sub_195A99388(uint64_t a1)
{
  v2 = [*(a1 + 32) _internal];
  [v2 addAliases:*(a1 + 40)];
}

void sub_195A99494(uint64_t a1)
{
  v2 = [*(a1 + 32) _internal];
  [v2 removeAliases:*(a1 + 40)];
}

void sub_195A997D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, os_activity_scope_state_s state, char a15)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_195A99800(uint64_t a1)
{
  v1 = [*(a1 + 32) _internal];
  [v1 registerAccount];
}

void sub_195A999A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, os_activity_scope_state_s state, char a15)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_195A999D4(uint64_t a1)
{
  v1 = [*(a1 + 32) _internal];
  [v1 unregisterAccount];
}

void sub_195A99B78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, os_activity_scope_state_s state, char a15)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_195A99BA8(uint64_t a1)
{
  v1 = [*(a1 + 32) _internal];
  [v1 forceRemoveAccount];
}

void sub_195A99D80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, os_activity_scope_state_s state, char a17)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_195A99DB0(uint64_t a1)
{
  v2 = [*(a1 + 32) _internal];
  [v2 _reregisterAndReidentify:*(a1 + 40)];
}

void sub_195A99F64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, os_activity_scope_state_s state, char a15)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_195A99F94(uint64_t a1)
{
  v1 = [*(a1 + 32) _internal];
  [v1 deactivateAndPurgeIdentify];
}

void sub_195A9A068(uint64_t a1)
{
  v1 = [*(a1 + 32) _internal];
  [v1 _callNearbyDevicesChanged];
}

void sub_195A9A140(uint64_t a1)
{
  v1 = [*(a1 + 32) _internal];
  [v1 _reloadCachedDevices];
}

void sub_195A9A40C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A9A424(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (!v8)
  {

LABEL_11:
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
    goto LABEL_12;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v14;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v14 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v10 |= objc_opt_isKindOfClass();
    }

    v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  }

  while (v9);

  if ((v10 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_12:
}

void IDSiCloudSignInHack(void *a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (_IDSRunningInDaemon())
  {
    sub_195B33B84();
  }

  v5 = +[IDSLogging IDSiCloudSignInHack];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = @"YES";
    if (!v4)
    {
      v6 = @"NO";
    }

    v8 = 138412546;
    v9 = v3;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_INFO, "iCloud sign in hack with userName %@ password %@", &v8, 0x16u);
  }

  v7 = +[IDSDaemonController sharedInstance];
  [v7 iCloudSignInHackWithUserName:v3 password:v4];
}

void IDSiCloudSignOutHack(uint64_t a1, uint64_t a2)
{
  if (_IDSRunningInDaemon())
  {
    sub_195B33BB0();
  }

  v2 = +[IDSLogging IDSiCloudSignInHack];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_INFO, "iCloud sign out hack", v4, 2u);
  }

  v3 = +[IDSDaemonController sharedInstance];
  [v3 iCloudSignOutHack];
}

void IDSKickGetDependent(void *a1)
{
  v1 = a1;
  if (_IDSRunningInDaemon())
  {
    sub_195B33BDC();
  }

  v2 = +[IDSLogging IDSiCloudSignInHack];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_INFO, "Kicking get dependent", v4, 2u);
  }

  v3 = +[IDSDaemonController sharedInstance];
  [v3 kickGetDependentForAccount:v1];
}

void IDSReRegister(void *a1, void *a2, void *a3)
{
  v8 = a1;
  v5 = a2;
  v6 = a3;
  if (_IDSRunningInDaemon())
  {
    sub_195B33C08();
  }

  v7 = +[IDSDaemonController sharedInstance];
  [v7 reRegisterWithUserID:v8 action:v5 service:v6];
}

void IDSRepairAccounts(uint64_t a1, uint64_t a2)
{
  if (_IDSRunningInDaemon())
  {
    sub_195B33C34();
  }

  v2 = +[IDSDaemonController sharedInstance];
  [v2 repairAccounts];
}

id IDSCopyBestGuessIDForID(void *a1)
{
  v1 = a1;
  if ([v1 containsString:@":"] && (objc_msgSend(v1, "hasPrefix:", @"biz:") & 1) == 0)
  {
    v2 = v1;
  }

  else
  {
    v2 = [v1 _bestGuessURI];
  }

  v3 = v2;

  return v3;
}

uint64_t IDSCopyIDForAccount()
{
  v0 = objc_alloc(MEMORY[0x1E696AEC0]);

  return MEMORY[0x1EEE66B58](v0, sel_initWithString_);
}

uint64_t IDSCopyIDForAnonymousCloudIdentifier(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"urn:ck:%@", v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t IDSIDHasToken()
{
  v0 = _IDSTypeForID();

  return MEMORY[0x1EEE0FF60](v0);
}

uint64_t IDSOSVersionCompare(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return -1;
  }

  if (*a1 > *a2)
  {
    return 1;
  }

  v3 = a1[1];
  v4 = a2[1];
  if (v3 < v4)
  {
    return -1;
  }

  if (v3 > v4)
  {
    return 1;
  }

  v5 = a1[2];
  v6 = a2[2];
  v8 = __OFSUB__(v5, v6);
  v7 = v5 - v6 < 0;
  v9 = v5 > v6;
  if (v7 != v8)
  {
    return -1;
  }

  else
  {
    return v9;
  }
}

uint64_t sub_195A9AE7C()
{
  v0 = objc_alloc_init(IDSHomeKitManager);
  v1 = qword_1ED5DE080;
  qword_1ED5DE080 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_195A9B094(void *a1)
{
  if (a1[6] && a1[4])
  {
    v2 = [[_IDSGenericCompletionHandler alloc] initWithHandler:a1[6] queue:a1[4]];
    v3 = a1[5];
    v4 = *(v3 + 8);
    *(v3 + 8) = v2;
  }

  v5 = +[IDSDaemonController sharedInstance];
  [v5 homeKitGetServiceUserIDs];
}

void sub_195A9B270(uint64_t a1)
{
  if (![*(a1 + 32) length] || !objc_msgSend(*(a1 + 40), "length") || !*(a1 + 48))
  {
    v2 = objc_alloc(MEMORY[0x1E695DF20]);
    v3 = [v2 initWithObjectsAndKeys:{@"Required Field Is Empty", *MEMORY[0x1E696A578], 0}];
    v4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:1 userInfo:v3];
    (*(*(a1 + 72) + 16))();
  }

  if (*(a1 + 72) && *(a1 + 56))
  {
    v5 = [[_IDSGenericCompletionHandler alloc] initWithHandler:*(a1 + 72) queue:*(a1 + 56)];
    v6 = *(a1 + 64);
    v7 = *(v6 + 16);
    *(v6 + 16) = v5;
  }

  v8 = +[IDSDaemonController sharedInstance];
  [v8 homeKitGetAdminAccessTokensWithServiceUserID:*(a1 + 32) accessoryID:*(a1 + 40) pairingToken:*(a1 + 48)];
}

void sub_195A9B4F0(uint64_t a1)
{
  v2 = [*(a1 + 32) length];
  v3 = MEMORY[0x1E696A578];
  if (!v2 || ![*(a1 + 40) count] || !objc_msgSend(*(a1 + 48), "length"))
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"A required Field Is Empty", *v3, 0}];
    v5 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:1 userInfo:v4];
    (*(*(a1 + 72) + 16))();
  }

  if ([*(a1 + 32) isEqualToIgnoringCase:*(a1 + 48)])
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"ServiceUserID and AdminID can not be the same", *v3, 0}];
    v7 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:2 userInfo:v6];
    (*(*(a1 + 72) + 16))();
  }

  if (*(a1 + 72) && *(a1 + 56))
  {
    v8 = [[_IDSGenericCompletionHandler alloc] initWithHandler:*(a1 + 72) queue:*(a1 + 56)];
    v9 = *(a1 + 64);
    v10 = *(v9 + 24);
    *(v9 + 24) = v8;
  }

  v11 = +[IDSDaemonController sharedInstance];
  [v11 homeKitGetConsentTokensWithServiceUserID:*(a1 + 32) accessoryIDs:*(a1 + 40) adminID:*(a1 + 48)];
}

void sub_195A9B814(uint64_t a1)
{
  if (![*(a1 + 32) length] || !objc_msgSend(*(a1 + 40), "length") || !objc_msgSend(*(a1 + 48), "length") || !objc_msgSend(*(a1 + 56), "count"))
  {
    v2 = objc_alloc(MEMORY[0x1E695DF20]);
    v3 = [v2 initWithObjectsAndKeys:{@"A required Field Is Empty", *MEMORY[0x1E696A578], 0}];
    v4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:1 userInfo:v3];
    (*(*(a1 + 80) + 16))();
  }

  if (*(a1 + 80) && *(a1 + 64))
  {
    v5 = [[_IDSGenericCompletionHandler alloc] initWithHandler:*(a1 + 80) queue:*(a1 + 64)];
    v6 = *(a1 + 72);
    v7 = *(v6 + 32);
    *(v6 + 32) = v5;
  }

  v8 = +[IDSDaemonController sharedInstance];
  [v8 homeKitGetUserAccessTokensWithServiceUserID:*(a1 + 32) userID:*(a1 + 40) userHandle:*(a1 + 48) accessoryRequests:*(a1 + 56)];
}

void sub_195A9BAA4(void *a1)
{
  if (a1[9] && a1[4])
  {
    v2 = [[_IDSGenericCompletionHandler alloc] initWithHandler:a1[9] queue:a1[4]];
    v3 = a1[5];
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  v5 = +[IDSDaemonController sharedInstance];
  [v5 homeKitRefreshUserAccessTokensWithServiceUserID:a1[6] userID:a1[7] accessoryRequests:a1[8]];
}

void sub_195A9BC3C(uint64_t a1)
{
  v2 = [*(a1 + 32) handler];
  (*(v2 + 2))(v2, *(a1 + 40), *(a1 + 48));
}

void sub_195A9BD9C(uint64_t a1)
{
  v2 = [*(a1 + 32) handler];
  (*(v2 + 2))(v2, *(a1 + 40), *(a1 + 48));
}

void sub_195A9BEFC(uint64_t a1)
{
  v2 = [*(a1 + 32) handler];
  (*(v2 + 2))(v2, *(a1 + 40), *(a1 + 48));
}

void sub_195A9C05C(uint64_t a1)
{
  v2 = [*(a1 + 32) handler];
  (*(v2 + 2))(v2, *(a1 + 40), *(a1 + 48));
}

void sub_195A9C1BC(uint64_t a1)
{
  v2 = [*(a1 + 32) handler];
  (*(v2 + 2))(v2, *(a1 + 40), *(a1 + 48));
}

uint64_t sub_195A9C460(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    return (*(v2 + 16))(v2, -100, 0, -1.0);
  }

  else
  {
    return (*(v2 + 16))(v2, 0, *(a1 + 56), *(a1 + 48));
  }
}

void sub_195A9CF90(uint64_t a1, int a2, void *a3)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  switch(a2)
  {
    case 4:
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Listener cancelled"];
      v11 = objc_alloc(MEMORY[0x1E696ABC0]);
      v17 = *MEMORY[0x1E696A578];
      v18 = v10;
      v12 = MEMORY[0x1E695DF20];
      v13 = &v18;
      v14 = &v17;
      goto LABEL_7;
    case 3:
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Listener failed with error code %d", nw_error_get_error_code(v5)];
      v11 = objc_alloc(MEMORY[0x1E696ABC0]);
      v19 = *MEMORY[0x1E696A578];
      v20[0] = v10;
      v12 = MEMORY[0x1E695DF20];
      v13 = v20;
      v14 = &v19;
LABEL_7:
      v15 = [v12 dictionaryWithObjects:v13 forKeys:v14 count:1];
      v16 = [v11 initWithDomain:@"com.apple.identityservices.error" code:42 userInfo:v15];

      (*(*(a1 + 56) + 16))();
      goto LABEL_8;
    case 2:
      port = nw_listener_get_port(*(a1 + 32));
      v8 = *(a1 + 40);
      v9 = [*(a1 + 48) copy];
      v10 = [v8 createDataBlobFrom:v9 port:port];

      (*(*(a1 + 56) + 16))();
LABEL_8:

      break;
  }
}

void sub_195A9D17C(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  v6 = *(v5 + 40);
  v7 = v4;
  if (v6)
  {
    (*(v6 + 16))();
  }

  else
  {
    objc_storeStrong((v5 + 56), a2);
  }
}

uint64_t sub_195A9D28C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  if (v3)
  {
    *(v2 + 56) = 0;
    v8 = v3;

    v4 = (*(*(a1 + 40) + 16))();
    v5 = v8;
  }

  else
  {
    v4 = MEMORY[0x19A8BBEF0](*(a1 + 40));
    v6 = *(a1 + 32);
    v5 = *(v6 + 40);
    *(v6 + 40) = v4;
  }

  return MEMORY[0x1EEE66BB8](v4, v5);
}

void sub_195A9DC38(uint64_t a1, uint64_t a2)
{
  v2 = nw_quic_connection_copy_sec_protocol_options();
  sec_protocol_options_set_verify_block(v2, &unk_1F09E6700, MEMORY[0x1E69E96A0]);
}

void sub_195A9E71C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [*(a1 + 32) queue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_195A9E82C;
  v15[3] = &unk_1E743F228;
  v11 = *(a1 + 40);
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v19 = v11;
  v12 = v9;
  v13 = v8;
  v14 = v7;
  dispatch_async(v10, v15);
}

void sub_195A9EA08(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A9EAC0;
  v6[3] = &unk_1E743FC50;
  v7 = *(a1 + 56);
  v5 = [a2 baaSignerCollaboratorForTopic:v4 withErrorHandler:v6];
  [v5 baaHeadersBySigningData:*(a1 + 40) serverTimestamp:*(a1 + 48) completion:*(a1 + 56)];
}

void sub_195A9EAC0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_195B33CF4();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_195A9EC48(uint64_t a1, const void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (a2 && [v7 count] == 2)
  {
    v9 = [objc_alloc(MEMORY[0x1E69A51D8]) initWithSHA256Digest:0 requestBody:*(a1 + 32) serverTimestamp:*(a1 + 40) includeIcloudBAA:1];
    v10 = *(a1 + 48);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = sub_195A9EF64;
    v23[3] = &unk_1E74416A0;
    v23[4] = v10;
    v24 = v9;
    v25 = v7;
    v27 = a2;
    v26 = *(a1 + 56);
    v11 = v9;
    [v10 signData:v11 withKey:a2 completion:v23];
  }

  else
  {
    v12 = [*(a1 + 48) errorStringForNSError:v8];
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v11 = Mutable;
    if (v12)
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x1E69A4948], v12);
    }

    v14 = [*(a1 + 48) icloudBAAVersion];
    v15 = [v14 stringValue];

    if (v15)
    {
      CFDictionarySetValue(v11, *MEMORY[0x1E69A4998], v15);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      sub_195B33D68();
    }

    if ([*(a1 + 48) isVirtualMachine])
    {
      v16 = @"2";
    }

    else
    {
      v16 = @"1";
    }

    CFDictionarySetValue(v11, *MEMORY[0x1E69A4940], v16);
    v17 = [*(a1 + 48) isBAASupportedHeaderValue];
    if (v17)
    {
      CFDictionarySetValue(v11, *MEMORY[0x1E69A4988], v17);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      sub_195B33DF0();
    }

    v18 = objc_alloc(MEMORY[0x1E69A53B8]);
    v19 = [MEMORY[0x1E69A6180] keyTransparencyAccountKeyFetchMetricDeviceID];
    v20 = [v18 initWithSuccess:0 error:v8 deviceID:v19];

    v21 = [MEMORY[0x1E69A53A8] loggerWithCategory:4000];
    [v21 logMetric:v20];

    v22 = [MEMORY[0x1E69A5210] defaultLogger];
    [v22 logMetric:v20];

    if (a2)
    {
      CFRelease(a2);
    }

    (*(*(a1 + 56) + 16))();
  }
}

void sub_195A9EF64(uint64_t a1, void *a2)
{
  v27 = a2;
  v3 = [v27 resultData];
  if (v3)
  {
    v4 = [v27 timestamp];
    if (v4)
    {

      v5 = 0;
      v6 = 1;
LABEL_18:

      goto LABEL_19;
    }
  }

  v7 = [v27 icloudResultData];
  if (!v7)
  {
    v8 = [v27 icloudAltResultData];

    if (v3)
    {

      if (v8)
      {
LABEL_9:
        v5 = 0;
        v6 = 1;
        goto LABEL_19;
      }
    }

    else if (v8)
    {
      goto LABEL_9;
    }

    v9 = [v27 error];
    v3 = v9;
    if (v9)
    {
      v5 = v9;
    }

    else
    {
      v10 = [v27 icloudAltError];
      v11 = v10;
      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = [v27 icloudError];
      }

      v5 = v12;
    }

    v6 = 0;
    goto LABEL_18;
  }

  v5 = 0;
  v6 = 1;
  if (v3)
  {
    goto LABEL_18;
  }

LABEL_19:
  v13 = [IDSBAASignerContext alloc];
  v14 = [v27 icloudDigest];
  v15 = [(IDSBAASignerContext *)v13 initWithSigningDigest:v14];

  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = [*(a1 + 48) objectAtIndexedSubscript:0];
  v19 = [*(a1 + 48) objectAtIndexedSubscript:1];
  v20 = [v16 headersBySigningData:v17 baaSigningResult:v27 baaCert:v18 intermediateRootCert:v19];

  v21 = objc_alloc(MEMORY[0x1E69A53B8]);
  v22 = [MEMORY[0x1E69A6180] keyTransparencyAccountKeyFetchMetricDeviceID];
  v23 = [v21 initWithSuccess:v6 error:v5 deviceID:v22];

  v24 = [MEMORY[0x1E69A53A8] loggerWithCategory:4000];
  [v24 logMetric:v23];

  v25 = [MEMORY[0x1E69A5210] defaultLogger];
  [v25 logMetric:v23];

  v26 = *(a1 + 64);
  if (v26)
  {
    CFRelease(v26);
  }

  (*(*(a1 + 56) + 16))();
}

void sub_195A9F32C(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A9F3DC;
  v6[3] = &unk_1E743FC50;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v5 = [a2 baaSignerCollaboratorForTopic:v4 withErrorHandler:v6];
  [v5 purgeBAACertWithCompletion:*(a1 + 40)];
}

void sub_195A9F3DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_195B33CF4();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }
}

void *sub_195A9F630()
{
  result = MEMORY[0x19A8BAE10]("DeviceIdentityIssueClientCertificateWithCompletion", @"DeviceIdentity");
  off_1EAEDC110 = result;
  return result;
}

void sub_195A9F660()
{
  v0 = MEMORY[0x19A8BAE10]("kMAOptionsBAAKeychainLabel", @"DeviceIdentity");
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1EAEDC128, v1);
}

void sub_195A9F6B0()
{
  v0 = MEMORY[0x19A8BAE10]("kMAOptionsBAADeleteExistingKeysAndCerts", @"DeviceIdentity");
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1EAEDC138, v1);
}

void sub_195A9F700(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "Completed deletion of BAA cert {error: %@}", &v8, 0xCu);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v5 == 0);
  }
}

void *sub_195A9F7DC()
{
  result = MEMORY[0x19A8BAE10]("DeviceIdentityIsSupported", @"DeviceIdentity");
  off_1EAEDBEC8 = result;
  return result;
}

void sub_195A9FB78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v32 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_195A9FBC0(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138412290;
    v19 = v5;
    _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "Starting fetch of device identity for baa signer {validityInMinutes: %@}", buf, 0xCu);
  }

  if (qword_1EAEDC008 != -1)
  {
    sub_195B33F08();
  }

  if (qword_1EAEDC000 != -1)
  {
    sub_195B33F30();
  }

  if (qword_1EAEDBFD0 != -1)
  {
    sub_195B33F58();
  }

  if (qword_1EAEDBFE0 != -1)
  {
    sub_195B33F80();
  }

  if (qword_1EAEDBFD8 != -1)
  {
    sub_195B33FA8();
  }

  if (qword_1EAEDBFF0 != -1)
  {
    sub_195B33FD0();
  }

  if (qword_1EAEDBFE8 != -1)
  {
    sub_195B33FF8();
  }

  if (qword_1EAEDBFF8 != -1)
  {
    sub_195B34020();
  }

  if (off_1EAEDC048 && qword_1EAEDC040 && qword_1EAEDC010 && qword_1EAEDC020 && qword_1EAEDC018 && qword_1EAEDC030 && qword_1EAEDC028 && qword_1EAEDC038)
  {
    v16[0] = qword_1EAEDC040;
    v16[1] = qword_1EAEDC010;
    v6 = *(a1 + 32);
    v17[0] = @"com.apple.IDS";
    v17[1] = v6;
    v16[2] = qword_1EAEDC020;
    v15[0] = qword_1EAEDC018;
    v15[1] = qword_1EAEDC030;
    v15[2] = qword_1EAEDC028;
    v15[3] = qword_1EAEDC038;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:4];
    v17[2] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];

    v9 = off_1EAEDC048;
    v10 = [*(a1 + 40) baaQueue];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_195AA0134;
    v11[3] = &unk_1E7441740;
    v11[4] = *(a1 + 40);
    v13 = *(a1 + 48);
    v14 = *(a1 + 64);
    v12 = v3;
    v9(v10, v8, v11);
  }

  else
  {
    v8 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_195B34048();
    }
  }
}

void *sub_195A9FED4()
{
  result = MEMORY[0x19A8BAE10]("DeviceIdentityIssueClientCertificateWithCompletion", @"DeviceIdentity");
  off_1EAEDC048 = result;
  return result;
}

void sub_195A9FF04()
{
  v0 = MEMORY[0x19A8BAE10]("kMAOptionsBAAKeychainLabel", @"DeviceIdentity");
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1EAEDC040, v1);
}

void sub_195A9FF54()
{
  v0 = MEMORY[0x19A8BAE10]("kMAOptionsBAAValidity", @"DeviceIdentity");
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1EAEDC010, v1);
}

void sub_195A9FFA4()
{
  v0 = MEMORY[0x19A8BAE10]("kMAOptionsBAAOIDSToInclude", @"DeviceIdentity");
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1EAEDC020, v1);
}

void sub_195A9FFF4()
{
  v0 = MEMORY[0x19A8BAE10]("kMAOptionsBAAOIDUCRTDeviceIdentifiers", @"DeviceIdentity");
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1EAEDC018, v1);
}

void sub_195AA0044()
{
  v0 = MEMORY[0x19A8BAE10]("kMAOptionsBAAOIDDeviceOSInformation", @"DeviceIdentity");
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1EAEDC030, v1);
}

void sub_195AA0094()
{
  v0 = MEMORY[0x19A8BAE10]("kMAOptionsBAAOIDProductType", @"DeviceIdentity");
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1EAEDC028, v1);
}

void sub_195AA00E4()
{
  v0 = MEMORY[0x19A8BAE10]("kMAOptionsBAAOIDDeviceIdentifiers", @"DeviceIdentity");
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1EAEDC038, v1);
}

void sub_195AA0134(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (a2)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    *buf = 138412802;
    v25 = v10;
    v26 = 2048;
    v27 = [v7 count];
    v28 = 2112;
    v29 = v8;
    _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "Completed fetch of device identity for baa signer {referenceKey: %@, certificates: %lu, error: %@}", buf, 0x20u);
  }

  v11 = [*(a1 + 32) baaQueue];
  dispatch_assert_queue_V2(v11);

  v12 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195AA0328;
  block[3] = &unk_1E7441718;
  v23 = a2;
  v19 = v8;
  v20 = v7;
  v22 = *(a1 + 56);
  v17 = *(a1 + 40);
  v13 = v17;
  v21 = v17;
  v14 = v7;
  v15 = v8;
  v16 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v12, v16);
}

uint64_t sub_195AA0328(uint64_t a1)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    goto LABEL_2;
  }

  if (!*(a1 + 80))
  {
LABEL_7:
    v3 = 0;
    goto LABEL_8;
  }

  if ([*(a1 + 40) count] != 2)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
LABEL_2:
      v16 = *MEMORY[0x1E696AA08];
      v17[0] = v2;
      v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
LABEL_8:
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IDSBAASignerErrorDomain" code:4 userInfo:v3];
      v13 = *(*(a1 + 72) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;

      return (*(*(a1 + 48) + 16))();
    }

    goto LABEL_7;
  }

  *(*(*(a1 + 56) + 8) + 24) = *(a1 + 80);
  v4 = objc_alloc(MEMORY[0x1E695DEC8]);
  v5 = [*(a1 + 40) objectAtIndexedSubscript:0];
  v6 = SecCertificateCopyData(v5);
  v7 = [*(a1 + 40) objectAtIndexedSubscript:1];
  v8 = SecCertificateCopyData(v7);
  v9 = [v4 initWithObjects:{v6, v8, 0}];
  v10 = *(*(a1 + 64) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  objc_storeStrong((*(*(a1 + 72) + 8) + 40), *(a1 + 32));
  return (*(*(a1 + 48) + 16))();
}

void sub_195AA04D8(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (a2)
    {
      v5 = @"YES";
    }

    *buf = 138412290;
    v14 = v5;
    _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "Device identity fetch final block called {timedOut: %@}", buf, 0xCu);
  }

  v6 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195AA0638;
  block[3] = &unk_1E7441790;
  v12 = a2;
  v11 = *(a1 + 56);
  v8 = *(a1 + 40);
  v7 = v8;
  v10 = v8;
  dispatch_async(v6, block);
}

uint64_t sub_195AA0638(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    v2 = *(*(a1 + 48) + 8);
    v3 = *(v2 + 40);
    *(v2 + 40) = 0;

    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IDSBAASignerErrorDomain" code:1 userInfo:0];
    v5 = *(*(a1 + 56) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  v7 = *(*(a1 + 32) + 16);

  return v7();
}

void sub_195AA0CB8(uint64_t a1)
{
  if (qword_1EAEDC148 != -1)
  {
    sub_195B34088();
  }

  if (off_1EAEDC140)
  {
    v2 = *(a1 + 32);
    v47 = 0;
    v48[0] = 0;
    v3 = off_1EAEDC140(v2, 0, v48, &v47);
    v4 = v48[0];
    v5 = v47;
    v6 = *(a1 + 40);
    v45 = 0;
    v46 = 0;
    v7 = off_1EAEDC140(v6, 0, &v46, &v45);
    v30 = v46;
    v8 = v45;
    if (!(v5 | v8))
    {
      v11 = 0;
      v5 = 0;
      goto LABEL_12;
    }

    v9 = v8;
    v10 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_195B3409C();
    }
  }

  else
  {
    v10 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_195B34120();
    }

    v30 = 0;
    v7 = 0;
    v9 = 0;
    v3 = 0;
    v5 = 0;
    v4 = 0;
  }

  v11 = v9;
LABEL_12:
  v12 = [*(a1 + 48) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195AA102C;
  block[3] = &unk_1E7441800;
  v43 = *(a1 + 128);
  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  v15 = *(a1 + 72);
  v44 = *(a1 + 136);
  v16 = *(a1 + 80);
  *&v17 = v15;
  *(&v17 + 1) = v16;
  *&v18 = v13;
  *(&v18 + 1) = v14;
  v33 = v18;
  v34 = v17;
  v19 = *(a1 + 88);
  v20 = *(a1 + 96);
  v21 = *(a1 + 104);
  v22 = *(a1 + 112);
  *&v23 = v21;
  *(&v23 + 1) = v22;
  *&v24 = v19;
  *(&v24 + 1) = v20;
  v35 = v24;
  v36 = v23;
  v37 = *(a1 + 120);
  v38 = v4;
  v39 = v3;
  v40 = v7;
  v41 = v5;
  v42 = v11;
  v25 = v11;
  v26 = v5;
  v27 = v7;
  v28 = v3;
  v29 = v4;
  dispatch_async(v12, block);
}

uint64_t (*sub_195AA0FFC())(void, void, void, void)
{
  result = MEMORY[0x19A8BAE10]("DeviceIdentityCreateHostSignature", @"DeviceIdentity");
  off_1EAEDC140 = result;
  return result;
}

void sub_195AA102C(uint64_t a1)
{
  v2 = *(a1 + 144);
  v3 = [IDSBAASigningResult alloc];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 152);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v15 = *(a1 + 72);
  v13 = *(a1 + 104);
  v14 = *(a1 + 88);
  v12 = *(a1 + 120);
  v10 = *(a1 + 136);
  v16 = [&unk_1F0A29990 stringValue];
  v11 = [IDSBAASigningResult initWithResultData:v3 timestamp:"initWithResultData:timestamp:error:currentTimestampInMs:icloudDigest:icloudAltDigest:icloudResultData:icloudAltResultData:icloudError:icloudAltError:hostCertChain:hostResultData:hostAltResultData:hostError:hostAltError:baaCertSource:" error:v4 currentTimestampInMs:v5 icloudDigest:v7 icloudAltDigest:v6 icloudResultData:v8 icloudAltResultData:v9 icloudError:v15 icloudAltError:v14 hostCertChain:v13 hostResultData:v12 hostAltResultData:v10 hostError:v16 hostAltError:? baaCertSource:?];
  (*(v2 + 16))(v2, v11);
}

uint64_t sub_195AA16F0()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = [v0 initWithObjects:{*MEMORY[0x1E69A4998], *MEMORY[0x1E69A4938], *MEMORY[0x1E69A4990], *MEMORY[0x1E69A4970], *MEMORY[0x1E69A4978], *MEMORY[0x1E69A4948], *MEMORY[0x1E69A4950], *MEMORY[0x1E69A4960], *MEMORY[0x1E69A4968], *MEMORY[0x1E69A4958], *MEMORY[0x1E69A4940], *MEMORY[0x1E69A4988], 0}];
  v2 = qword_1EAEDC158;
  qword_1EAEDC158 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

id sub_195AA34E8(uint64_t a1)
{
  if (*(a1 + 72))
  {
    if (*(a1 + 80) == 1)
    {
      v2 = *(a1 + 48);
      if (v2)
      {
        (*(v2 + 16))(v2, 0);
      }
    }

    (*(*(a1 + 56) + 16))();
    if (*(a1 + 81) == 1)
    {
      v3 = *(a1 + 64);
      if (v3)
      {
        (*(v3 + 16))(v3, 0);
      }
    }
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }

  v4 = objc_opt_self();
  return objc_opt_self();
}

id sub_195AA3FB4(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKey:*MEMORY[0x1E69A5570]];
  if (MEMORY[0x19A8BADE0]())
  {
    v3 = IMCanonicalizeFormattedString();

    v2 = v3;
  }

  return v2;
}

void sub_195AA5B68(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 56) object];
    [v4 account:v3 nearbyDevicesChanged:*(a1 + 40)];
  }
}

void sub_195AA5CEC(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 56) object];
    [v4 account:v3 connectedDevicesChanged:*(a1 + 40)];
  }
}

void sub_195AA5E5C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 56) object];
    [v4 account:v3 devicesChanged:*(a1 + 40)];
  }
}

void sub_195AA68A4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 account:*(a1 + 32) registrationStatusInfoChanged:*(a1 + 40)];
  }
}

void sub_195AA6904(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 56) object];
    [v4 account:v3 isActiveChanged:*(a1 + 40)];
  }
}

void sub_195AA6BAC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 account:*(a1 + 32) aliasesChanged:*(a1 + 40)];
  }
}

void sub_195AA6C0C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 56) object];
    [v4 account:v3 isActiveChanged:*(a1 + 40)];
  }
}

void sub_195AA6E44(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 account:*(a1 + 32) vettedAliasesChanged:*(a1 + 40)];
  }
}

void sub_195AA7064(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 account:*(a1 + 32) profileChanged:*(a1 + 40)];
  }
}

void sub_195AA7284(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 account:*(a1 + 32) loginChanged:*(a1 + 40)];
  }
}

void sub_195AA74A4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 account:*(a1 + 32) displayNameChanged:*(a1 + 40)];
  }
}

void sub_195AA771C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 account:*(a1 + 32) pseudonymsChanged:*(a1 + 40)];
  }
}

void sub_195AA7F60(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 refreshRegistrationForAccount:*(a1 + 32)];
  }
}

uint64_t sub_195AA87B0()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0A53008];
  v1 = qword_1ED5DDE70;
  qword_1ED5DDE70 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_195AA8C90(uint64_t a1)
{
  v2 = objc_alloc_init(IDSService);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195AA8D70;
  v8[3] = &unk_1E7441960;
  v6 = *(a1 + 48);
  v9 = v2;
  v10 = v6;
  v7 = v2;
  [_IDSService serviceWithIdentifier:v3 commands:v4 manuallyAckMessages:v5 delegateContext:v7 completion:v8];
}

void sub_195AA8D70(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  if (!v7 || a3)
  {
    v6 = *(*(a1 + 40) + 16);
  }

  else
  {
    objc_storeStrong((*(a1 + 32) + 8), a2);
    v6 = *(*(a1 + 40) + 16);
  }

  v6();
}

uint64_t sub_195AA9004(uint64_t a1)
{
  v2 = [[_IDSService alloc] initWithService:*(a1 + 40) commands:*(a1 + 48) manuallyAckMessages:*(a1 + 56) delegateContext:*(a1 + 32)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void sub_195AA97A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_195AA97BC(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) protobufActionForType:*(a1 + 48) isResponse:0];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_195AA98F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_195AA9908(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) protobufActionForType:*(a1 + 48) isResponse:1];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_195AA9AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_195AA9B0C(void *a1)
{
  result = [*(a1[4] + 8) sendProtobuf:a1[5] fromAccount:a1[6] toDestinations:a1[7] priority:a1[10] options:a1[8] identifier:a1[11] error:a1[12]];
  *(*(a1[9] + 8) + 24) = result;
  return result;
}

void sub_195AA9D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_195AA9D1C(void *a1)
{
  result = [*(a1[4] + 8) sendProtobuf:a1[5] fromAccount:0 toDestinations:a1[6] priority:a1[9] options:a1[7] identifier:a1[10] error:a1[11]];
  *(*(a1[8] + 8) + 24) = result;
  return result;
}

void sub_195AA9EE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_195AA9EFC(void *a1)
{
  result = [*(a1[4] + 8) sendOpportunisticData:a1[5] options:a1[6] identifier:a1[7] error:a1[9]];
  *(*(a1[8] + 8) + 24) = result;
  return result;
}

void sub_195AAA060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_195AAA078(void *a1)
{
  result = [*(a1[4] + 8) cancelOpportunisticDataWithIdentifier:a1[5] error:a1[7]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

void sub_195AAA294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_195AAA2AC(void *a1)
{
  result = [*(a1[4] + 8) sendMessage:a1[5] fromAccount:a1[6] toDestinations:a1[7] priority:a1[10] options:a1[8] identifier:a1[11] error:a1[12]];
  *(*(a1[9] + 8) + 24) = result;
  return result;
}

void sub_195AAA488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_195AAA4A0(void *a1)
{
  result = [*(a1[4] + 8) sendMessage:a1[5] fromAccount:0 toDestinations:a1[6] priority:a1[9] options:a1[7] identifier:a1[10] error:a1[11]];
  *(*(a1[8] + 8) + 24) = result;
  return result;
}

void sub_195AAA61C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_195AAA634(void *a1)
{
  result = [*(a1[4] + 8) cancelMessageWithOptions:a1[5] identifier:a1[7] error:a1[8]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

void sub_195AAA7C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_195AAA7DC(void *a1)
{
  result = [*(a1[4] + 8) cancelMessageWithOptions:a1[5] destination:a1[6] identifier:a1[8] error:a1[9]];
  *(*(a1[7] + 8) + 24) = result;
  return result;
}

void sub_195AAA970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_195AAA988(void *a1)
{
  result = [*(a1[4] + 8) cancelMessageWithOptions:a1[5] destinations:a1[6] identifier:a1[8] error:a1[9]];
  *(*(a1[7] + 8) + 24) = result;
  return result;
}

void sub_195AAAB74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_195AAAB8C(void *a1)
{
  result = [*(a1[4] + 8) sendData:a1[5] fromAccount:a1[6] toDestinations:a1[7] priority:a1[10] options:a1[8] identifier:a1[11] error:a1[12]];
  *(*(a1[9] + 8) + 24) = result;
  return result;
}

void sub_195AAAD68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_195AAAD80(void *a1)
{
  result = [*(a1[4] + 8) sendData:a1[5] fromAccount:0 toDestinations:a1[6] priority:a1[9] options:a1[7] identifier:a1[10] error:a1[11]];
  *(*(a1[8] + 8) + 24) = result;
  return result;
}

void sub_195AAAF78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_195AAAF90(void *a1)
{
  result = [*(a1[4] + 8) sendAccessoryData:a1[5] toAccessoryID:a1[6] accessToken:a1[7] options:a1[8] identifier:a1[10] error:a1[11]];
  *(*(a1[9] + 8) + 24) = result;
  return result;
}

void sub_195AAB14C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_195AAB164(void *a1)
{
  result = [*(a1[4] + 8) sendInvitation:a1[5] fromAccount:0 toDestination:a1[6] options:a1[7] identifier:a1[9] error:a1[10]];
  *(*(a1[8] + 8) + 24) = result;
  return result;
}

void sub_195AAB320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_195AAB338(void *a1)
{
  result = [*(a1[4] + 8) sendInvitationUpdate:a1[5] fromAccount:0 toDestination:a1[6] options:a1[7] identifier:a1[9] error:a1[10]];
  *(*(a1[8] + 8) + 24) = result;
  return result;
}

void sub_195AAB47C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_195AAB494(void *a1)
{
  result = [*(a1[4] + 8) setWakingPushPriority:a1[6] error:a1[7]];
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

void sub_195AAB62C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_195AAB644(void *a1)
{
  result = [*(a1[4] + 8) sendData:a1[5] priority:a1[8] options:a1[6] identifier:a1[9] error:a1[10]];
  *(*(a1[7] + 8) + 24) = result;
  return result;
}

void sub_195AAB834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_195AAB84C(void *a1)
{
  result = [*(a1[4] + 8) sendResourceAtURL:a1[5] metadata:a1[6] fromAccount:0 toDestinations:a1[7] priority:a1[10] options:a1[8] identifier:a1[11] error:a1[12]];
  *(*(a1[9] + 8) + 24) = result;
  return result;
}

void sub_195AAB9C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_195AAB9E0(void *a1)
{
  result = [*(a1[4] + 8) getProgressUpdateForIdentifier:a1[5] error:a1[7]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

void sub_195AABB74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_195AABB8C(void *a1)
{
  result = [*(a1[4] + 8) sendAheadGroup:a1[5] priority:a1[8] options:a1[6] identifier:a1[9] completion:&unk_1F09E69E0];
  *(*(a1[7] + 8) + 24) = result;
  return result;
}

void sub_195AABCEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_195AABD04(void *a1)
{
  result = [*(a1[4] + 8) reportSpamMessage:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

void sub_195AABF30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_195AABF48(void *a1)
{
  result = [*(a1[4] + 8) sendCertifiedDeliveryReceipt:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

void sub_195AAC094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_195AAC0AC(void *a1)
{
  result = [*(a1[4] + 8) sendBatchMessageProcessedContext:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

void sub_195AAC204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_195AAC21C(void *a1)
{
  result = [*(a1[4] + 8) noteMetricOfType:a1[7] context:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

void sub_195AAC37C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_195AAC394(void *a1)
{
  result = [*(a1[4] + 8) cancelIdentifier:a1[5] error:a1[7]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

void sub_195AAC534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_195AAC54C(void *a1)
{
  result = [*(a1[4] + 8) sendServerMessage:a1[5] command:a1[6] fromAccount:a1[7]];
  *(*(a1[8] + 8) + 24) = result;
  return result;
}

void sub_195AAC674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_195AAC68C(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) registrationRestrictionReason];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_195AAC7F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AAC810(void *a1)
{
  v2 = [*(a1[4] + 8) linkedDevicesWithRelationship:a1[6]];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void sub_195AAC990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AAC9A8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) serviceDomain];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void sub_195AACB24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AACB3C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) internalAccounts];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void sub_195AACC78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_195AACC90(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) canSend];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_195AACE1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AACE34(void *a1)
{
  v2 = [*(a1[4] + 8) deviceForFromID:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void sub_195AACFE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AAD000(void *a1)
{
  v2 = [*(a1[4] + 8) linkedDeviceForFromID:a1[5] withRelationship:a1[7]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void sub_195AAD180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AAD198(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) firstRoutableInternetDestinationForSelf];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void sub_195AAD33C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AAD354(void *a1)
{
  v2 = [*(a1[4] + 8) deviceForUniqueID:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void sub_195AAD4F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AAD510(void *a1)
{
  v2 = [*(a1[4] + 8) devicesForBTUUID:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void sub_195AAD6B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AAD6CC(void *a1)
{
  v2 = [*(a1[4] + 8) uriForFromID:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void sub_195AAD88C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _internal];
  [v2 setNeedsLaunchOnNearbyDevicesChanged:v1];
}

void sub_195AAD9CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195AAD9E4(uint64_t a1)
{
  v2 = [*(a1 + 32) _internal];
  *(*(*(a1 + 40) + 8) + 24) = [v2 needsLaunchOnNearbyDevicesChanged];
}

void sub_195AADDA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_195AADDB8(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) isPretendingToBeFull];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_195AADFF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_195AAE010(void *a1)
{
  result = [*(a1[4] + 8) updateSubServices:a1[5] forDevice:a1[6]];
  *(*(a1[7] + 8) + 24) = result;
  return result;
}

void sub_195AAE1B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AAE1C8(void *a1)
{
  v2 = [*(a1[4] + 8) datagramConnectionForSessionDestination:a1[5] error:a1[7]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void sub_195AAE388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AAE3A0(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) datagramConnectionForSessionDestination:*(a1 + 40) uid:*(a1 + 64) error:*(a1 + 56)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void sub_195AAE53C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AAE554(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) datagramConnectionForSocketDescriptor:*(a1 + 56) error:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void sub_195AAE710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AAE728(void *a1)
{
  v2 = [*(a1[4] + 8) streamConnectionForSessionDestination:a1[5] error:a1[7]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void sub_195AAE8C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AAE8D8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) streamConnectionForSocketDescriptor:*(a1 + 56) error:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void sub_195AAEBA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AAEBBC(void *a1)
{
  v2 = [*(a1[4] + 8) datagramChannelForSessionDestination:a1[5] options:a1[6] error:a1[8]];
  v3 = *(a1[7] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void sub_195AAED58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AAED70(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) datagramChannelForSocketDescriptor:*(a1 + 56) error:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

uint64_t sub_195AAF130(uint64_t a1, void *a2)
{
  v3 = [a2 aliasStrings];
  v4 = [v3 containsObject:*(a1 + 32)];

  return v4;
}

id sub_195AAF184(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isEqualToIgnoringCase:*MEMORY[0x1E69A5630]])
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  return v3;
}

void sub_195AAF2D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_195AAF2E8(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) maxEffectivePayloadSize];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_195AAF44C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AAF464(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) URIs];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void sub_195AAF5E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AAF5F8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) pseudonymURIMap];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void sub_195AAF79C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AAF7B4(void *a1)
{
  v2 = [*(a1[4] + 8) pseudonymForPseudonymURI:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void sub_195AAF958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AAF970(void *a1)
{
  v2 = [*(a1[4] + 8) pseudonymsForMaskedURI:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void sub_195AAFB40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AAFB58(void *a1)
{
  v2 = [*(a1[4] + 8) pseudonymsForMaskedURI:a1[5] matchingProperties:a1[6]];
  v3 = *(a1[7] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void sub_195AAFD80(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(v2 + 8);
  if (a1[6])
  {
    v5 = *(v2 + 8);

    [v5 provisionPseudonymWithProperties:v3 requestProperties:? completion:?];
  }

  else
  {
    v6 = [MEMORY[0x1E69A53A0] defaultProperties];
    [v4 provisionPseudonymWithProperties:v3 requestProperties:v6 completion:a1[7]];
  }
}

void sub_195AAFF98(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(v2 + 8);
  v5 = a1[6];
  if (a1[7])
  {
    v6 = *(v2 + 8);

    [v6 provisionPseudonymForURI:v3 withProperties:v5 requestProperties:? completion:?];
  }

  else
  {
    v7 = [MEMORY[0x1E69A53A0] defaultProperties];
    [v4 provisionPseudonymForURI:v3 withProperties:v5 requestProperties:v7 completion:a1[8]];
  }
}

void sub_195AB0298(double *a1)
{
  v2 = *(a1 + 5);
  v3 = *(*(a1 + 4) + 8);
  v4 = a1[7];
  v5 = [MEMORY[0x1E69A53A0] defaultProperties];
  [v3 renewPseudonym:v2 forUpdatedExpiryEpoch:v5 requestProperties:*(a1 + 6) completion:v4];
}

void sub_195AB0414(void *a1)
{
  v2 = a1[5];
  v3 = *(a1[4] + 8);
  v4 = [MEMORY[0x1E69A53A0] defaultProperties];
  [v3 revokePseudonym:v2 requestProperties:v4 completion:a1[6]];
}

void sub_195AB0618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AB0630(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) pseudonymPropertiesWithFeatureID:*(a1 + 40) scopeID:*(a1 + 48) expiryDurationInSeconds:*(a1 + 64)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void IDSAppleCareSignIDSIn(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v15 = a1;
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (_IDSRunningInDaemon())
  {
    sub_195B37E1C();
  }

  v13 = sub_195AB0F0C(v11, v12);
  if (v13)
  {
    if (qword_1EAEDC178 != -1)
    {
      sub_195B37E08();
    }

    v14 = +[IDSDaemonController sharedInstance];
    [v14 appleCareSignInUserName:v15 DSID:v9 authToken:v10 requestID:v13];
  }
}

id sub_195AB0F0C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = MEMORY[0x19A8BBEF0](v3);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_195AB1254;
  v15[3] = &unk_1E743E850;
  v16 = v3;
  v6 = v5;
  v7 = v4;
  v8 = v3;
  v9 = [[IDSDaemonResponseHandler alloc] initWithBlock:v6 queue:v7];

  v11 = sub_195AB12DC(v10);
  if (qword_1EAEDC168 != -1)
  {
    sub_195B37E48();
  }

  if (byte_1EAEDC160 == 1)
  {
    v12 = IMGetDomainIntForKey();
  }

  else
  {
    v12 = 60.0;
  }

  v13 = [v11 scheduleTimeoutWithResponseHandler:v9 timeoutInterval:v15 timeoutBlock:v12];

  return v13;
}

void IDSAppleCareSignIDSOut(void *a1, void *a2)
{
  v6 = a1;
  v3 = a2;
  if (_IDSRunningInDaemon())
  {
    sub_195B37E70();
  }

  v4 = sub_195AB0F0C(v6, v3);
  if (v4)
  {
    if (qword_1EAEDC178 != -1)
    {
      sub_195B37E08();
    }

    v5 = +[IDSDaemonController sharedInstance];
    [v5 appleCareSignOutUserWithRequestID:v4];
  }
}

void IDSAppleCareSetDaemonDisconnectedBlock(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (_IDSRunningInDaemon())
  {
    sub_195B37E9C();
  }

  v5 = [IDSAppleCareDaemonResponseListener alloc];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195AB1244;
  v10[3] = &unk_1E743E850;
  v11 = v3;
  v6 = v3;
  v7 = [(IDSAppleCareDaemonResponseListener *)v5 initWithDisconnectedBlockAndNoTimeout:v10];
  v8 = +[IDSDaemonController sharedInstance];
  v9 = [v8 listener];
  [v9 addHandler:v7];
}

void sub_195AB1254(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = objc_alloc(MEMORY[0x1E696ABC0]);
    v3 = [v2 initWithDomain:*MEMORY[0x1E69A4CB8] code:2 userInfo:0];
    (*(*(a1 + 32) + 16))();
  }
}

id sub_195AB12DC(uint64_t a1)
{
  if (qword_1EAEDBF60 != -1)
  {
    sub_195B37EC8();
  }

  v2 = qword_1EAEDBF40;

  return v2;
}

uint64_t sub_195AB1320()
{
  v0 = objc_alloc_init(IDSDaemonRequestTimer);
  v1 = qword_1EAEDBF40;
  qword_1EAEDBF40 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t sub_195AB135C()
{
  result = IMGetDomainBoolForKey();
  byte_1EAEDC160 = result;
  return result;
}

void sub_195AB138C()
{
  v0 = [IDSAppleCareDaemonResponseListener alloc];
  v1 = sub_195AB12DC(v0);
  v2 = [(IDSAppleCareDaemonResponseListener *)v0 initWithRequestTimer:v1];
  v3 = qword_1EAEDC170;
  qword_1EAEDC170 = v2;

  v5 = +[IDSDaemonController sharedInstance];
  v4 = [v5 listener];
  [v4 addHandler:qword_1EAEDC170];
}

void IDSiCloudSignIn(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v32 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  if (_IDSRunningInDaemon())
  {
    sub_195B37EDC();
  }

  v17 = [MEMORY[0x1E69A6138] iCloud];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = @"YES";
    v20 = 138413570;
    v21 = v11;
    if (!v13)
    {
      v18 = @"NO";
    }

    v22 = 2112;
    v23 = v12;
    v24 = 2112;
    v25 = v18;
    v26 = 2112;
    v27 = v14;
    v28 = 2112;
    v29 = v15;
    v30 = 2112;
    v31 = v16;
    _os_log_impl(&dword_1959FF000, v17, OS_LOG_TYPE_DEFAULT, "iCloud sign in with userName %@ authToken %@ password %@ accountInfo %@ status %@ and handles %@", &v20, 0x3Eu);
  }

  v19 = +[IDSDaemonController sharedInstance];
  [v19 iCloudSignInWithUserName:v11 authToken:v12 password:v13 accountInfo:v14 accountStatus:v15 handles:v16];
}

void IDSiCloudSignOut(uint64_t a1, uint64_t a2)
{
  if (_IDSRunningInDaemon())
  {
    sub_195B37F08();
  }

  v2 = [MEMORY[0x1E69A6138] iCloud];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "iCloud sign out", v4, 2u);
  }

  v3 = +[IDSDaemonController sharedInstance];
  [v3 iCloudSignOut];
}

void IDSiCloudUpdate(void *a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (_IDSRunningInDaemon())
  {
    sub_195B37F34();
  }

  v5 = [MEMORY[0x1E69A6138] iCloud];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "iCloud update for userName %@ accountInfo %@", &v7, 0x16u);
  }

  v6 = +[IDSDaemonController sharedInstance];
  [v6 iCloudUpdateForUserName:v3 accountInfo:v4];
}

void IDSiCloudModify(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (_IDSRunningInDaemon())
  {
    sub_195B37F60();
  }

  v2 = [MEMORY[0x1E69A6138] iCloud];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v1;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "iCloud modify for userName %@", &v4, 0xCu);
  }

  v3 = +[IDSDaemonController sharedInstance];
  [v3 iCloudModifyForUserName:v1];
}

void IDSiTunesSignIn(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v32 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  if (_IDSRunningInDaemon())
  {
    sub_195B37F8C();
  }

  v17 = [MEMORY[0x1E69A6138] iCloud];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = @"YES";
    v20 = 138413570;
    v21 = v11;
    if (!v13)
    {
      v18 = @"NO";
    }

    v22 = 2112;
    v23 = v12;
    v24 = 2112;
    v25 = v18;
    v26 = 2112;
    v27 = v14;
    v28 = 2112;
    v29 = v15;
    v30 = 2112;
    v31 = v16;
    _os_log_impl(&dword_1959FF000, v17, OS_LOG_TYPE_DEFAULT, "iTunes sign in with userName %@ authToken %@ password %@ accountInfo %@ status %@ and handles %@", &v20, 0x3Eu);
  }

  v19 = +[IDSDaemonController sharedInstance];
  [v19 iTunesSignInWithUserName:v11 authToken:v12 password:v13 accountInfo:v14 accountStatus:v15 handles:v16];
}

void IDSiTunesSignOut(uint64_t a1, uint64_t a2)
{
  if (_IDSRunningInDaemon())
  {
    sub_195B37FB8();
  }

  v2 = [MEMORY[0x1E69A6138] iCloud];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "iTunes sign out", v4, 2u);
  }

  v3 = +[IDSDaemonController sharedInstance];
  [v3 iTunesSignOut];
}

void IDSGameCenterSignIn(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v32 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  if (_IDSRunningInDaemon())
  {
    sub_195B37FE4();
  }

  v17 = [MEMORY[0x1E69A6138] iCloud];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = @"YES";
    v20 = 138413570;
    v21 = v11;
    if (!v13)
    {
      v18 = @"NO";
    }

    v22 = 2112;
    v23 = v12;
    v24 = 2112;
    v25 = v18;
    v26 = 2112;
    v27 = v14;
    v28 = 2112;
    v29 = v15;
    v30 = 2112;
    v31 = v16;
    _os_log_impl(&dword_1959FF000, v17, OS_LOG_TYPE_DEFAULT, "GameCenter sign in with userName %@ authToken %@ password %@ accountInfo %@ status %@ and handles %@", &v20, 0x3Eu);
  }

  v19 = +[IDSDaemonController sharedInstance];
  [v19 gameCenterSignInWithUserName:v11 authToken:v12 password:v13 accountInfo:v14 accountStatus:v15 handles:v16];
}

void IDSGameCenterSignOut(uint64_t a1, uint64_t a2)
{
  if (_IDSRunningInDaemon())
  {
    sub_195B38010();
  }

  v2 = [MEMORY[0x1E69A6138] iCloud];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "GameCenter sign out", v4, 2u);
  }

  v3 = +[IDSDaemonController sharedInstance];
  [v3 gameCenterSignOut];
}

void IDSGameCenterModify(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (_IDSRunningInDaemon())
  {
    sub_195B3803C();
  }

  v2 = [MEMORY[0x1E69A6138] iCloud];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v1;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "GameCenter modify for userName %@", &v4, 0xCu);
  }

  v3 = +[IDSDaemonController sharedInstance];
  [v3 gameCenterModifyForUserName:v1];
}

void IDSUpdateUser(void *a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x1E69A6138] iCloud];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "IDS update user { oldUserName: %@, newUserName: %@ }", &v7, 0x16u);
  }

  v6 = +[IDSDaemonController sharedInstance];
  [v6 updateUserWithOldUserName:v3 newUserName:v4];
}

void sub_195AB222C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_195AB2244(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_195AB23D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195AB23F0(uint64_t a1)
{
  v2 = [*(a1 + 32) _criticalFindRequestContextWithResponseHandler:*(a1 + 40)];
  if (!v2)
  {
    v3 = [MEMORY[0x1E696AEC0] stringGUID];
    v4 = *(*(a1 + 56) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = objc_alloc(MEMORY[0x1E69A6168]);
    v7 = *(a1 + 64);
    v8 = *(*(*(a1 + 56) + 8) + 40);
    v9 = *(a1 + 32);
    v10 = dispatch_get_global_queue(0, 0);
    v11 = [v6 initWithTimeInterval:v8 name:1 shouldWake:v9 target:sel__handleSystemTimerFired_ selector:v8 userInfo:v10 queue:v7];

    v12 = [[IDSDaemonRequestContext alloc] initWithResponseHandler:*(a1 + 40) timeoutBlock:*(a1 + 48) systemTimer:v11];
    [*(*(a1 + 32) + 8) setObject:v12 forKeyedSubscript:*(*(*(a1 + 56) + 8) + 40)];

    v2 = 0;
  }
}

void sub_195AB294C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AB2964(uint64_t a1)
{
  v2 = [*(a1 + 32) _criticalInvalidateTimeoutAndReturnHandlerForRequestID:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void sub_195AB2AFC(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = [*(*(a1 + 32) + 8) allKeys];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*v2 _criticalInvalidateTimeoutAndReturnHandlerForRequestID:*(*(&v9 + 1) + 8 * v7)];
        if (v8)
        {
          [*(a1 + 40) addObject:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  if ([*(*v2 + 1) count])
  {
    sub_195B38068(a1, v2);
  }
}

void sub_195AB36F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, os_activity_scope_state_s state, char a13)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_195AB38C0(uint64_t a1)
{
  v1 = a1;
  v66 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 82) = 1;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v2 = *(*(a1 + 32) + 32);
  v44 = [v2 countByEnumeratingWithState:&v51 objects:v65 count:16];
  if (v44)
  {
    obj = v2;
    LODWORD(v2) = 0;
    v3 = 0;
    v4 = 0;
    v47 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v41 = 0;
    v42 = 0;
    v8 = 0;
    v40 = 0;
    v48 = 0;
    v38 = v1;
    v43 = *v52;
    do
    {
      for (i = 0; i != v44; ++i)
      {
        v46 = v2;
        if (*v52 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v45 = v3;
        v10 = HIDWORD(v48);
        if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
        {
          v10 = 1;
        }

        v11 = objc_opt_respondsToSelector();
        if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
        {
          BYTE4(v42) = 1;
        }

        HIDWORD(v48) = v10;
        if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
        {
          LOBYTE(v42) = 1;
        }

        v12 = v7;
        if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
        {
          BYTE4(v41) = 1;
        }

        v13 = v4;
        v14 = objc_opt_respondsToSelector();
        if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
        {
          v40 = 1;
        }

        v15 = objc_opt_respondsToSelector();
        if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
        {
          LOBYTE(v41) = 1;
          HIDWORD(v48) = 1;
        }

        v5 |= v11;
        LOBYTE(v48) = v14 | v48;
        v8 |= v15;
        v6 |= objc_opt_respondsToSelector();
        v47 |= objc_opt_respondsToSelector();
        v16 = objc_opt_respondsToSelector();
        v4 = v16 | objc_opt_respondsToSelector() | v13;
        v3 = objc_opt_respondsToSelector() | v45;
        v7 = objc_opt_respondsToSelector() | v12;
        LODWORD(v2) = objc_opt_respondsToSelector() | v46;
      }

      v44 = [obj countByEnumeratingWithState:&v51 objects:v65 count:16];
    }

    while (v44);

    if (v8)
    {
      v1 = v38;
      *(*(v38 + 32) + 88) = 0;
      v17 = 1;
      v18 = v47;
      v19 = v40;
      v20 = v41;
      goto LABEL_39;
    }

    v1 = v38;
    v18 = v47;
    v19 = v40;
    v20 = v41;
  }

  else
  {

    v42 = 0;
    v48 = 0;
    BYTE4(v41) = 0;
    v19 = 0;
    v20 = 0;
    LOBYTE(v7) = 0;
    LOBYTE(v6) = 0;
    v5 = 0;
    v18 = 0;
    LOBYTE(v4) = 0;
    LOBYTE(v3) = 0;
    LOBYTE(v2) = 0;
  }

  v17 = [*(*(v1 + 32) + 48) count] != 0;
  *(*(v1 + 32) + 88) = 0;
LABEL_39:
  if ((v48 & 0x100000000) != 0)
  {
    v21 = MEMORY[0x1E69A54A0];
    *(*(v1 + 32) + 88) |= *MEMORY[0x1E69A54B8];
    *(*(v1 + 32) + 88) |= *v21;
  }

  if ((v42 & 0x100000000) != 0)
  {
    *(*(v1 + 32) + 88) |= *MEMORY[0x1E69A54E0];
  }

  if (v42)
  {
    *(*(v1 + 32) + 88) |= *MEMORY[0x1E69A5500];
  }

  if ((v41 & 0x100000000) == 0)
  {
    if ((v48 & 1) == 0)
    {
      goto LABEL_51;
    }

    v22 = *MEMORY[0x1E69A54A8];
    goto LABEL_50;
  }

  v22 = *MEMORY[0x1E69A54A8];
  *(*(v1 + 32) + 88) |= *MEMORY[0x1E69A54A8];
  if (v48)
  {
LABEL_50:
    *(*(v1 + 32) + 88) |= v22;
  }

LABEL_51:
  if ((v19 & 1) == 0)
  {
    if (!v17)
    {
      goto LABEL_57;
    }

    v24 = *MEMORY[0x1E69A54A0];
    goto LABEL_56;
  }

  v23 = MEMORY[0x1E69A54A0];
  *(*(v1 + 32) + 88) |= *MEMORY[0x1E69A54B0];
  v24 = *v23;
  *(*(v1 + 32) + 88) |= *v23;
  if (v17)
  {
LABEL_56:
    *(*(v1 + 32) + 88) |= *MEMORY[0x1E69A54C0];
    *(*(v1 + 32) + 88) |= v24;
  }

LABEL_57:
  if (v20)
  {
    *(*(v1 + 32) + 88) |= *MEMORY[0x1E69A54C8];
    if ((v6 & 1) == 0)
    {
LABEL_59:
      if ((v5 & 1) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_78;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_59;
  }

  *(*(v1 + 32) + 88) |= *MEMORY[0x1E69A54D8];
  if ((v5 & 1) == 0)
  {
LABEL_60:
    if ((v18 & 1) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_79;
  }

LABEL_78:
  *(*(v1 + 32) + 88) |= *MEMORY[0x1E69A5498];
  if ((v18 & 1) == 0)
  {
LABEL_61:
    if ((v4 & 1) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_80;
  }

LABEL_79:
  *(*(v1 + 32) + 88) |= *MEMORY[0x1E69A54E8];
  if ((v4 & 1) == 0)
  {
LABEL_62:
    if ((v7 & 1) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_81;
  }

LABEL_80:
  *(*(v1 + 32) + 88) |= *MEMORY[0x1E69A54D0];
  if ((v7 & 1) == 0)
  {
LABEL_63:
    if ((v2 & 1) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

LABEL_81:
  *(*(v1 + 32) + 88) |= *MEMORY[0x1E69A54F0];
  if (v2)
  {
LABEL_64:
    *(*(v1 + 32) + 88) |= *MEMORY[0x1E69A54F8];
  }

LABEL_65:
  [*(v1 + 32) setWantsPseudonymUpdates:{v3 & 1, v38}];
  v25 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = *(v1 + 32);
    v27 = [*(v26 + 120) serviceName];
    _IDSBinaryStringForValue();
    v29 = v28 = v3;
    v30 = [*(*(v1 + 32) + 32) count];
    *buf = 134219010;
    v31 = @"NO";
    v56 = v26;
    v57 = 2112;
    if (v28)
    {
      v31 = @"YES";
    }

    v58 = v27;
    v59 = 2112;
    v60 = v29;
    v61 = 2048;
    v62 = v30;
    v63 = 2112;
    v64 = v31;
    _os_log_impl(&dword_1959FF000, v25, OS_LOG_TYPE_DEFAULT, "_IDSService - added delegate {self: %p, serviceName %@, listenerCaps %@, delegates: %lu, wantsPseudonymUpdates: %@}", buf, 0x34u);
  }

  v32 = [*(*(v1 + 32) + 120) serviceName];
  v33 = *(*(v1 + 32) + 16);
  if (v33 && [v33 count])
  {
    v34 = *(v1 + 32);
    v35 = *(v34 + 16);
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = sub_195AB426C;
    v49[3] = &unk_1E7441CB0;
    v49[4] = v34;
    v50 = v32;
    [v35 enumerateKeysAndObjectsUsingBlock:v49];
  }

  else
  {
    v36 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1959FF000, v36, OS_LOG_TYPE_DEFAULT, "_IDSService - No accounts detected, acknowledging transaction anyway.", buf, 2u);
    }

    v37 = +[_IDSXPCCheckinManager sharedInstance];
    [v37 noteFinishedTransactionForService:v32];
  }
}

void sub_195AB426C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 _internal];
  [v5 setDelegateCapabilities:*(*(a1 + 32) + 88)];

  v6 = [v4 _internal];

  v7 = *(a1 + 32);
  v8 = +[IDSInternalQueueController sharedInstance];
  v9 = [v8 queue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195AB4378;
  v10[3] = &unk_1E743E878;
  v11 = *(a1 + 40);
  [v6 addDelegate:v7 queue:v9 completion:v10];
}

void sub_195AB4378(uint64_t a1)
{
  v2 = +[_IDSXPCCheckinManager sharedInstance];
  [v2 noteFinishedTransactionForService:*(a1 + 32)];
}

id sub_195AB4A98(uint64_t a1)
{
  if (*(a1 + 72))
  {
    if (*(a1 + 80) == 1)
    {
      v2 = *(a1 + 48);
      if (v2)
      {
        (*(v2 + 16))(v2, 0);
      }
    }

    (*(*(a1 + 56) + 16))();
    if (*(a1 + 81) == 1)
    {
      v3 = *(a1 + 64);
      if (v3)
      {
        (*(v3 + 16))(v3, 0);
      }
    }
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }

  v4 = objc_opt_self();
  return objc_opt_self();
}

void sub_195AB4B54(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 40) object];
    [v4 serviceAllowedTrafficClassifiersDidReset:v3];
  }
}

void sub_195AB4DAC(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 40) object];
    [v4 service:v3 token:*(a1 + 40) time:*(a1 + 48) error:*(a1 + 56)];
  }
}

void sub_195AB500C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 40) object];
    [v4 service:v3 didCancelMessageWithSuccess:*(a1 + 56) error:*(a1 + 40) identifier:*(a1 + 48)];
  }
}

void sub_195AB59F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&STACK[0x228], 8);
  _Block_object_dispose(&STACK[0x2E0], 8);
  _Block_object_dispose(&STACK[0x310], 8);
  _Block_object_dispose((v65 - 192), 8);
  _Block_object_dispose((v65 - 224), 8);
  _Unwind_Resume(a1);
}

void sub_195AB5A84(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(*(*(a1 + 64) + 8) + 40) lock];
  if ((*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
  {
    v4 = [MEMORY[0x1E69A6138] ACKTracker];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      *buf = 138412290;
      v21 = v5;
      _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "%@ Update cache with active device", buf, 0xCu);
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [*(a1 + 40) internalAccounts];
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        v10 = 0;
        do
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * v10);
          v12 = [*(a1 + 48) daemonListener];
          v13 = [v11 uniqueID];
          [v12 switchActivePairedDevice:v3 forAccount:v13];

          [v11 _reloadCachedDevices];
          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    v14 = [*(a1 + 48) daemonListener];
    [v14 switchActivePairedDevice:v3 forService:*(a1 + 56)];

    [*(a1 + 48) _reloadCachedLinkedDevices];
    *(*(*(a1 + 72) + 8) + 24) = 1;
  }

  [*(*(*(a1 + 64) + 8) + 40) unlock];
}

void sub_195AB5C94(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69A6138] ACKTracker];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v11 = v3;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "%@ Pre didSwitch call back block", buf, 0xCu);
  }

  (*(*(a1 + 56) + 16))();
  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    v4 = +[IDSInternalQueueController sharedInstance];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_195AB5E18;
    v7[3] = &unk_1E743EA08;
    v9 = *(a1 + 72);
    v6 = *(a1 + 40);
    v5 = v6.i64[0];
    v8 = vextq_s8(v6, v6, 8uLL);
    [v4 performBlock:v7 waitUntilDone:1];

    *(*(*(a1 + 64) + 8) + 24) = 1;
  }
}

uint64_t sub_195AB5E18(uint64_t a1)
{
  v2 = [*(a1 + 32) _activeDeviceForUniqueID:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void sub_195AB5E68(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(*(a1 + 32) + 112) awaitAcknowledgementFromServiceDelegate:v3];
  v5 = [*(a1 + 40) object];
  v6 = [v5 _acknowledgementBlockWithDelegateIdentifier:v4];

  v7 = [MEMORY[0x1E69A6138] ACKTracker];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 48);
    v9 = *(*(*(a1 + 64) + 8) + 40);
    v10 = 138413058;
    v11 = v8;
    v12 = 2048;
    v13 = v3;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "%@ Notifying delegate %p of active device switch to %@ (delegateIdentifier %@)", &v10, 0x2Au);
  }

  [v3 service:*(a1 + 56) didSwitchActivePairedDevice:*(*(*(a1 + 64) + 8) + 40) acknowledgementBlock:v6];
}

void sub_195AB5FBC(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69A6138] ACKTracker];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "%@ Pre devicesChanged call back block", &v7, 0xCu);
  }

  (*(*(a1 + 56) + 16))();
  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    v4 = [*(a1 + 48) devices];
    v5 = *(*(a1 + 72) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    *(*(*(a1 + 64) + 8) + 24) = 1;
  }
}

void sub_195AB60C0(void *a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E69A6138] ACKTracker];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = *(*(a1[6] + 8) + 40);
    v7 = 138412802;
    v8 = v5;
    v9 = 2048;
    v10 = v3;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "%@ Notifying delegate %p of devices changing (devices %@)", &v7, 0x20u);
  }

  [v3 service:a1[5] devicesChanged:*(*(a1[6] + 8) + 40)];
}

void sub_195AB61BC(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69A6138] ACKTracker];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "%@ Pre linkedDevicesChanged call back block", &v7, 0xCu);
  }

  (*(*(a1 + 56) + 16))();
  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    v4 = [*(a1 + 48) linkedDevicesWithRelationship:2];
    v5 = *(*(a1 + 72) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    *(*(*(a1 + 64) + 8) + 24) = 1;
  }
}

void sub_195AB62C4(void *a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E69A6138] ACKTracker];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = *(*(a1[6] + 8) + 40);
    v7 = 138412802;
    v8 = v5;
    v9 = 2048;
    v10 = v3;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "%@ Notifying delegate %p of linked devices changing (devices %@)", &v7, 0x20u);
  }

  [v3 service:a1[5] linkedDevicesChanged:*(*(a1[6] + 8) + 40)];
}

void sub_195AB63C0(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69A6138] ACKTracker];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v10 = 138412290;
    v11 = v3;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "%@ Group notify", &v10, 0xCu);
  }

  (*(a1[6] + 16))();
  v4 = *(a1[7] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  v6 = *(a1[8] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  v8 = *(a1[9] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
}

void sub_195AB6794(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  [v2 _stopAwaitingQuickSwitchAcknowledgementFromDelegateWithIdentifier:*(a1 + 40)];

  v3 = [*(a1 + 32) object];
  LOBYTE(v2) = [v3 _isDroppingMessages];

  if ((v2 & 1) == 0)
  {
    v4 = [MEMORY[0x1E69A6138] watchPairing];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "Stopped suspending traffic to the daemon.", v5, 2u);
    }
  }
}

void sub_195AB6940(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 40) object];
    [v4 service:v3 linkedDevicesChanged:*(a1 + 40)];
  }
}

void sub_195AB7270(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = v3;
    _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "Calling out to IDSService delegate %p for registrationRestrictionReason if it responds.", &v8, 0xCu);
  }

  if (objc_opt_respondsToSelector())
  {
    v5 = [*(*(a1 + 32) + 40) object];
    [v3 service:v5 registrationRestrictionReasonChanged:*(a1 + 40)];

    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218242;
    v9 = v3;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "Done for IDSService delegate %p for registrationRestrictionReason - doesRespondToSelector? %@", &v8, 0x16u);
  }
}

void sub_195AB7D50(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138412546;
    v8 = v5;
    v9 = 2048;
    v10 = v3;
    _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "Calling active accounts changed %@ with delegate %p", &v7, 0x16u);
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = [*(*(a1 + 40) + 40) object];
    [v3 service:v6 activeAccountsChanged:*(a1 + 32)];
  }
}

void sub_195AB8568(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) outgoingResponseIdentifier];
    v15 = 138412802;
    v16 = v5;
    v17 = 2112;
    v18 = objc_opt_class();
    v19 = 2048;
    v20 = v3;
    _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "%@ Calling out to IDSService delegate <%@:%p> for incomingOpportunisticData if it responds.", &v15, 0x20u);
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = [*(*(a1 + 40) + 40) object];
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = *(a1 + 64);
    v10 = [*(a1 + 72) prefixedURI];
    [v3 service:v6 account:v7 incomingOpportunisticData:v8 withIdentifier:v9 fromID:v10 context:*(a1 + 32)];

    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v12 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [*(a1 + 32) outgoingResponseIdentifier];
    v14 = objc_opt_class();
    v15 = 138413058;
    v16 = v13;
    v17 = 2112;
    v18 = v14;
    v19 = 2048;
    v20 = v3;
    v21 = 2112;
    v22 = v11;
    _os_log_impl(&dword_1959FF000, v12, OS_LOG_TYPE_DEFAULT, "%@ Done for IDSService delegate <%@:%p> for incomingOpportunisticData - doesRespondToSelector? %@", &v15, 0x2Au);
  }
}

void sub_195AB8774(uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
    v2 = [*(a1 + 32) connectionType];
    v3 = [*(a1 + 40) daemonController];
    v4 = *(a1 + 48);
    v5 = [*(a1 + 56) prefixedURI];
    v6 = [*(a1 + 64) _internal];
    v7 = [v6 account];
    v8 = [v7 _internal];
    v9 = [v8 uniqueID];
    [v3 sendAppAckWithGUID:v4 toDestination:v5 forAccountWithUniqueID:v9 connectionType:v2];
  }

  if (*(a1 + 72) || *(a1 + 48))
  {
    v17 = [*(a1 + 40) daemonController];
    v10 = *(a1 + 48);
    v11 = *(a1 + 72);
    v12 = [*(a1 + 64) _internal];
    v13 = [v12 account];
    v14 = [v13 _internal];
    v15 = [v14 uniqueID];
    v16 = [*(a1 + 32) priority];
    [v17 acknowledgeMessageWithStorageGUID:v11 realGUID:v10 forAccountWithUniqueID:v15 broadcastTime:0 messageSize:0 priority:v16 broadcastID:objc_msgSend(*(a1 + 32) connectionType:{"broadcastID"), objc_msgSend(*(a1 + 32), "connectionType")}];
  }
}

void sub_195AB8F80(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) outgoingResponseIdentifier];
    v14 = 138412802;
    v15 = v5;
    v16 = 2112;
    v17 = objc_opt_class();
    v18 = 2048;
    v19 = v3;
    _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "%@ Calling out to IDSService delegate <%@:%p> for incomingData if it responds.", &v14, 0x20u);
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = [*(*(a1 + 40) + 40) object];
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = [*(a1 + 64) prefixedURI];
    [v3 service:v6 account:v7 incomingData:v8 fromID:v9 context:*(a1 + 32)];

    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v11 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [*(a1 + 32) outgoingResponseIdentifier];
    v13 = objc_opt_class();
    v14 = 138413058;
    v15 = v12;
    v16 = 2112;
    v17 = v13;
    v18 = 2048;
    v19 = v3;
    v20 = 2112;
    v21 = v10;
    _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "%@ Done for IDSService delegate <%@:%p> for incomingData - doesRespondToSelector? %@", &v14, 0x2Au);
  }
}

void sub_195AB9188(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = +[IDSTransportLog IDSService];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) outgoingResponseIdentifier];
    *buf = 138412290;
    v23 = v3;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "Sending app-level ack dispatch called for message %@", buf, 0xCu);
  }

  if (*(a1 + 96) == 1)
  {
    if (*(a1 + 97) == 1)
    {
      v4 = [*(a1 + 40) _internal];
      [v4 sendAppAckForDirectMessage:*(a1 + 48)];
    }

    else
    {
      v5 = [*(a1 + 32) connectionType];
      v4 = [*(a1 + 56) daemonController];
      v6 = *(a1 + 48);
      v7 = [*(a1 + 64) prefixedURI];
      v8 = [*(a1 + 40) _internal];
      v9 = [v8 account];
      v10 = [v9 _internal];
      v11 = [v10 uniqueID];
      [v4 sendAppAckWithGUID:v6 toDestination:v7 forAccountWithUniqueID:v11 connectionType:v5];
    }
  }

  if ((*(a1 + 97) & 1) == 0 && (*(a1 + 72) || *(a1 + 80)))
  {
    v12 = [*(a1 + 56) daemonController];
    v20 = *(a1 + 48);
    v21 = *(a1 + 72);
    v13 = [*(a1 + 40) _internal];
    v14 = [v13 account];
    v15 = [v14 _internal];
    v16 = [v15 uniqueID];
    v17 = *(a1 + 80);
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 88), "length")}];
    v19 = [*(a1 + 32) priority];
    [v12 acknowledgeMessageWithStorageGUID:v21 realGUID:v20 forAccountWithUniqueID:v16 broadcastTime:v17 messageSize:v18 priority:v19 broadcastID:objc_msgSend(*(a1 + 32) connectionType:{"broadcastID"), objc_msgSend(*(a1 + 32), "connectionType")}];
  }
}

void sub_195AB99F4(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_195AB9A7C;
  v2[3] = &unk_1E7441F00;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 performGroupTask:v2];
}

void sub_195AB9A7C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195AB9B28;
  v6[3] = &unk_1E7440C30;
  v7 = v4;
  v8 = v3;
  v5 = v3;
  [v5 _groupFromPublicDataRepresentation:v7 completion:v6];
}

void sub_195AB9B28(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v6;
      _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "Error converting Group Data to ENGroup %@", &v12, 0xCu);
    }
  }

  else if (v5)
  {
    v8 = [MEMORY[0x1E69A5270] groupCrypto];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v5 groupID];
      v12 = 138543362;
      v13 = v9;
      _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "Received sentAhead group {groupID: %{public}@}", &v12, 0xCu);
    }

    [*(a1 + 40) cacheIncomingGroup:v5 completion:&unk_1F09E6B20];
  }

  else
  {
    v10 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = 138412546;
      v13 = 0;
      v14 = 2112;
      v15 = v11;
      _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "No error returned however unable to create group from data (timeout?) %@, Original Data: %@", &v12, 0x16u);
    }
  }
}

void sub_195AB9CF8(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "Group Share Persisted %@", &v4, 0xCu);
  }
}

void sub_195AB9DAC(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = +[IDSTransportLog IDSService];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) outgoingResponseIdentifier];
    *buf = 138412290;
    v23 = v3;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "Sending app-level ack dispatch called for message %@", buf, 0xCu);
  }

  if (*(a1 + 96) == 1)
  {
    v4 = [*(a1 + 32) connectionType];
    v5 = [*(a1 + 40) daemonController];
    v6 = *(a1 + 48);
    v7 = [*(a1 + 56) prefixedURI];
    v8 = [*(a1 + 64) _internal];
    v9 = [v8 account];
    v10 = [v9 _internal];
    v11 = [v10 uniqueID];
    [v5 sendAppAckWithGUID:v6 toDestination:v7 forAccountWithUniqueID:v11 connectionType:v4];
  }

  if (*(a1 + 72) || *(a1 + 80))
  {
    v12 = [*(a1 + 40) daemonController];
    v20 = *(a1 + 72);
    v21 = *(a1 + 48);
    v13 = [*(a1 + 64) _internal];
    v14 = [v13 account];
    v15 = [v14 _internal];
    v16 = [v15 uniqueID];
    v17 = *(a1 + 80);
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 88), "length")}];
    v19 = [*(a1 + 32) priority];
    [v12 acknowledgeMessageWithStorageGUID:v20 realGUID:v21 forAccountWithUniqueID:v16 broadcastTime:v17 messageSize:v18 priority:v19 broadcastID:objc_msgSend(*(a1 + 32) connectionType:{"broadcastID"), objc_msgSend(*(a1 + 32), "connectionType")}];
  }
}

void sub_195ABA46C(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) outgoingResponseIdentifier];
    v14 = 138412802;
    v15 = v5;
    v16 = 2112;
    v17 = objc_opt_class();
    v18 = 2048;
    v19 = v3;
    _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "%@ Calling out to IDSService delegate <%@:%p> for incomingAccessoryData if it responds.", &v14, 0x20u);
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = [*(*(a1 + 40) + 40) object];
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = [*(a1 + 64) prefixedURI];
    [v3 service:v6 account:v7 incomingAccessoryData:v8 fromAccessoryID:v9 context:*(a1 + 32)];

    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v11 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [*(a1 + 32) outgoingResponseIdentifier];
    v13 = objc_opt_class();
    v14 = 138413058;
    v15 = v12;
    v16 = 2112;
    v17 = v13;
    v18 = 2048;
    v19 = v3;
    v20 = 2112;
    v21 = v10;
    _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "%@ Done for IDSService delegate <%@:%p> for incomingAccessoryData - doesRespondToSelector? %@", &v14, 0x2Au);
  }
}

void sub_195ABA674(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    v2 = [*(a1 + 32) connectionType];
    v3 = [*(a1 + 40) daemonController];
    v4 = *(a1 + 48);
    v5 = [*(a1 + 56) prefixedURI];
    v6 = [*(a1 + 64) _internal];
    v7 = [v6 account];
    v8 = [v7 _internal];
    v9 = [v8 uniqueID];
    [v3 sendAppAckWithGUID:v4 toDestination:v5 forAccountWithUniqueID:v9 connectionType:v2];
  }

  if (*(a1 + 72) || *(a1 + 80))
  {
    v10 = [*(a1 + 40) daemonController];
    v19 = *(a1 + 48);
    v20 = v10;
    v11 = *(a1 + 72);
    v12 = [*(a1 + 64) _internal];
    v13 = [v12 account];
    v14 = [v13 _internal];
    v15 = [v14 uniqueID];
    v16 = *(a1 + 80);
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 88), "length")}];
    v18 = [*(a1 + 32) priority];
    [v20 acknowledgeMessageWithStorageGUID:v11 realGUID:v19 forAccountWithUniqueID:v15 broadcastTime:v16 messageSize:v17 priority:v18 broadcastID:objc_msgSend(*(a1 + 32) connectionType:{"broadcastID"), objc_msgSend(*(a1 + 32), "connectionType")}];
  }
}

void sub_195ABACB8(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) outgoingResponseIdentifier];
    v11 = 138412802;
    v12 = v5;
    v13 = 2112;
    v14 = objc_opt_class();
    v15 = 2048;
    v16 = v3;
    _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "%@ Calling out to IDSService delegate <%@:%p> for incomingAccessoryReportMessage if it responds.", &v11, 0x20u);
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = [*(*(a1 + 40) + 40) object];
    [v3 service:v6 account:*(a1 + 48) incomingAccessoryReportMessage:*(a1 + 56) controllerID:*(a1 + 64) accessoryID:*(a1 + 72) context:*(a1 + 32)];

    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 32) outgoingResponseIdentifier];
    v10 = objc_opt_class();
    v11 = 138413058;
    v12 = v9;
    v13 = 2112;
    v14 = v10;
    v15 = 2048;
    v16 = v3;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "%@ Done for IDSService delegate <%@:%p> for incomingAccessoryReportMessage - doesRespondToSelector? %@", &v11, 0x2Au);
  }
}

void sub_195ABAE9C(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    v2 = [*(a1 + 32) connectionType];
    v3 = [*(a1 + 40) daemonController];
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v6 = [*(a1 + 64) _internal];
    v7 = [v6 account];
    v8 = [v7 _internal];
    v9 = [v8 uniqueID];
    [v3 sendAppAckWithGUID:v4 toDestination:v5 forAccountWithUniqueID:v9 connectionType:v2];
  }

  if (*(a1 + 72) || *(a1 + 80))
  {
    v18 = [*(a1 + 40) daemonController];
    v10 = *(a1 + 48);
    v11 = *(a1 + 72);
    v12 = [*(a1 + 64) _internal];
    v13 = [v12 account];
    v14 = [v13 _internal];
    v15 = [v14 uniqueID];
    v16 = *(a1 + 80);
    v17 = [*(a1 + 32) priority];
    [v18 acknowledgeMessageWithStorageGUID:v11 realGUID:v10 forAccountWithUniqueID:v15 broadcastTime:v16 messageSize:0 priority:v17 broadcastID:objc_msgSend(*(a1 + 32) connectionType:{"broadcastID"), objc_msgSend(*(a1 + 32), "connectionType")}];
  }
}

id sub_195ABB4FC(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 objectForKey:v4];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    if (v5)
    {
      v7 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        sub_195B39164();
      }
    }

    v6 = 0;
  }

  return v6;
}

void sub_195ABB5B8(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) outgoingResponseIdentifier];
    v11 = 138412802;
    v12 = v5;
    v13 = 2112;
    v14 = objc_opt_class();
    v15 = 2048;
    v16 = v3;
    _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "%@ Calling out to IDSService delegate <%@:%p> for incomingInvitation if it responds.", &v11, 0x20u);
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = [*(*(a1 + 40) + 40) object];
    [v3 service:v6 account:*(a1 + 48) incomingInvitation:*(a1 + 56) withContext:*(a1 + 32)];

    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 32) outgoingResponseIdentifier];
    v10 = objc_opt_class();
    v11 = 138413058;
    v12 = v9;
    v13 = 2112;
    v14 = v10;
    v15 = 2048;
    v16 = v3;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "%@ Done for IDSService delegate <%@:%p> for incomingInvitation - doesRespondToSelector? %@", &v11, 0x2Au);
  }
}

void sub_195ABBC50(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) outgoingResponseIdentifier];
    v11 = 138412802;
    v12 = v5;
    v13 = 2112;
    v14 = objc_opt_class();
    v15 = 2048;
    v16 = v3;
    _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "%@ Calling out to IDSService delegate <%@:%p> for incomingInvitationUpdate if it responds.", &v11, 0x20u);
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = [*(*(a1 + 40) + 40) object];
    [v3 service:v6 account:*(a1 + 48) incomingInvitationUpdate:*(a1 + 56) withContext:*(a1 + 32)];

    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 32) outgoingResponseIdentifier];
    v10 = objc_opt_class();
    v11 = 138413058;
    v12 = v9;
    v13 = 2112;
    v14 = v10;
    v15 = 2048;
    v16 = v3;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "%@ Done for IDSService delegate <%@:%p> for incomingInvitationUpdate - doesRespondToSelector? %@", &v11, 0x2Au);
  }
}

void sub_195ABC948(_Unwind_Exception *a1)
{
  os_activity_scope_leave((v1 - 216));
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_195ABC9D4(uint64_t a1, uint64_t a2)
{
  v4 = dispatch_get_global_queue(9, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195ABCAA4;
  v7[3] = &unk_1E7440800;
  v8 = *(a1 + 32);
  v10 = a2;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v9 = v5;
  v11 = v6;
  dispatch_async(v4, v7);
}

void sub_195ABCAA4(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = a1[4];
  v9 = 0;
  v4 = [v2 removeItemAtURL:v3 error:&v9];
  v5 = v9;

  v6 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    v8 = a1[6];
    *buf = 138412802;
    if (v4)
    {
      v7 = @"YES";
    }

    v11 = v7;
    v12 = 2112;
    v13 = v5;
    v14 = 1024;
    v15 = v8;
    _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "Remove file success: %@, error: %@ (accessed %d)", buf, 0x1Cu);
  }

  if (a1[5])
  {
    sandbox_extension_release();
  }
}

void sub_195ABCBD8(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) outgoingResponseIdentifier];
    v14 = 138412802;
    v15 = v5;
    v16 = 2112;
    v17 = objc_opt_class();
    v18 = 2048;
    v19 = v3;
    _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "%@ Calling out to IDSService delegate <%@:%p> for incomingResource if it responds.", &v14, 0x20u);
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = [*(*(a1 + 40) + 40) object];
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = [*(a1 + 64) prefixedURI];
    [v3 service:v6 account:v7 incomingResourceAtURL:v8 fromID:v9 context:*(a1 + 32)];

    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v11 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [*(a1 + 32) outgoingResponseIdentifier];
    v13 = objc_opt_class();
    v14 = 138413058;
    v15 = v12;
    v16 = 2112;
    v17 = v13;
    v18 = 2048;
    v19 = v3;
    v20 = 2112;
    v21 = v10;
    _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "%@ Done for IDSService delegate <%@:%p> for incomingResource - doesRespondToSelector? %@", &v14, 0x2Au);
  }

  [*(a1 + 72) incrementAccessCount];
}

void sub_195ABCDE8(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) outgoingResponseIdentifier];
    v15 = 138412802;
    v16 = v5;
    v17 = 2112;
    v18 = objc_opt_class();
    v19 = 2048;
    v20 = v3;
    _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "%@ Calling out to IDSService delegate <%@:%p> for incomingResource with metadata if it responds.", &v15, 0x20u);
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = [*(*(a1 + 40) + 40) object];
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = *(a1 + 64);
    v10 = [*(a1 + 72) prefixedURI];
    [v3 service:v6 account:v7 incomingResourceAtURL:v8 metadata:v9 fromID:v10 context:*(a1 + 32)];

    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v12 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [*(a1 + 32) outgoingResponseIdentifier];
    v14 = objc_opt_class();
    v15 = 138413058;
    v16 = v13;
    v17 = 2112;
    v18 = v14;
    v19 = 2048;
    v20 = v3;
    v21 = 2112;
    v22 = v11;
    _os_log_impl(&dword_1959FF000, v12, OS_LOG_TYPE_DEFAULT, "%@ Done for IDSService delegate <%@:%p> for incomingResource with metadata - doesRespondToSelector? %@", &v15, 0x2Au);
  }

  [*(a1 + 80) incrementAccessCount];
}

void sub_195ABCFFC(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) outgoingResponseIdentifier];
    v14 = 138412802;
    v15 = v5;
    v16 = 2112;
    v17 = objc_opt_class();
    v18 = 2048;
    v19 = v3;
    _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "%@ Calling out to IDSService delegate <%@:%p> for incomingMessage if it responds.", &v14, 0x20u);
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = [*(*(a1 + 40) + 40) object];
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = [*(a1 + 64) prefixedURI];
    [v3 service:v6 account:v7 incomingMessage:v8 fromID:v9];

    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v11 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [*(a1 + 32) outgoingResponseIdentifier];
    v13 = objc_opt_class();
    v14 = 138413058;
    v15 = v12;
    v16 = 2112;
    v17 = v13;
    v18 = 2048;
    v19 = v3;
    v20 = 2112;
    v21 = v10;
    _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "%@ Done for IDSService delegate <%@:%p> for incomingMessage - doesRespondToSelector? %@", &v14, 0x2Au);
  }
}

void sub_195ABD200(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) outgoingResponseIdentifier];
    v14 = 138412802;
    v15 = v5;
    v16 = 2112;
    v17 = objc_opt_class();
    v18 = 2048;
    v19 = v3;
    _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "%@ Calling out to IDSService delegate <%@:%p> for incomingMessage with context if it responds.", &v14, 0x20u);
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = [*(*(a1 + 40) + 40) object];
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = [*(a1 + 64) prefixedURI];
    [v3 service:v6 account:v7 incomingMessage:v8 fromID:v9 context:*(a1 + 32)];

    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v11 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [*(a1 + 32) outgoingResponseIdentifier];
    v13 = objc_opt_class();
    v14 = 138413058;
    v15 = v12;
    v16 = 2112;
    v17 = v13;
    v18 = 2048;
    v19 = v3;
    v20 = 2112;
    v21 = v10;
    _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "%@ Done for IDSService delegate <%@:%p> for incomingMessage with context - doesRespondToSelector? %@", &v14, 0x2Au);
  }
}

void sub_195ABD408(uint64_t a1)
{
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v20 = _os_activity_create(&dword_1959FF000, "Service finished calling out", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v20, &state);
  if (*(a1 + 88) == 1)
  {
    if (*(a1 + 89) == 1)
    {
      v2 = [*(a1 + 32) _internal];
      [v2 sendAppAckForDirectMessage:*(a1 + 40)];
    }

    else
    {
      v3 = [*(a1 + 48) connectionType];
      v2 = [*(a1 + 56) daemonController];
      v4 = *(a1 + 40);
      v5 = [*(a1 + 64) prefixedURI];
      v6 = [*(a1 + 32) _internal];
      v7 = [v6 account];
      v8 = [v7 _internal];
      v9 = [v8 uniqueID];
      [v2 sendAppAckWithGUID:v4 toDestination:v5 forAccountWithUniqueID:v9 connectionType:v3];
    }
  }

  if ((*(a1 + 89) & 1) == 0 && (*(a1 + 72) || *(a1 + 80)))
  {
    v10 = [*(a1 + 56) daemonController];
    v18 = *(a1 + 72);
    v11 = *(a1 + 40);
    v12 = [*(a1 + 32) _internal];
    v13 = [v12 account];
    v14 = [v13 _internal];
    v15 = [v14 uniqueID];
    v16 = *(a1 + 80);
    v17 = [*(a1 + 48) priority];
    [v10 acknowledgeMessageWithStorageGUID:v18 realGUID:v11 forAccountWithUniqueID:v15 broadcastTime:v16 messageSize:0 priority:v17 broadcastID:objc_msgSend(*(a1 + 48) connectionType:{"broadcastID"), objc_msgSend(*(a1 + 48), "connectionType")}];
  }

  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

void sub_195ABD62C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, os_activity_scope_state_s state, char a13)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_195ABDF48(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = +[IDSTransportLog IDSService];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = NSStringFromSelector(*(a1 + 80));
      v6 = *(a1 + 32);
      *buf = 134218498;
      *&buf[4] = v3;
      v23 = 2112;
      v24 = v5;
      v25 = 2048;
      v26 = v6;
      _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, " => Delgate %p responds to: %@, passing along protobuf: %p", buf, 0x20u);
    }

    v7 = [v3 methodSignatureForSelector:*(a1 + 80)];
    v8 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:v7];
    [v8 setSelector:*(a1 + 80)];
    [v8 setTarget:v3];
    v9 = [*(a1 + 40) prefixedURI];
    v10 = *(a1 + 56);
    v21 = *(a1 + 48);
    *buf = v9;
    v20 = *(a1 + 32);
    v11 = [*(v10 + 40) object];
    v18 = *(a1 + 64);
    v19 = v11;
    [v8 setArgument:&v20 atIndex:2];
    [v8 setArgument:&v19 atIndex:3];
    [v8 setArgument:&v21 atIndex:4];
    [v8 setArgument:buf atIndex:5];
    [v8 setArgument:&v18 atIndex:6];
    [v8 invokeWithTarget:v3];
    v12 = +[IDSTransportLog IDSService];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_1959FF000, v12, OS_LOG_TYPE_DEFAULT, "   * Done handling", v17, 2u);
    }

    *(*(*(a1 + 72) + 8) + 24) = 1;
  }

  else if (objc_opt_respondsToSelector())
  {
    v13 = +[IDSTransportLog IDSService];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = NSStringFromSelector(*(a1 + 88));
      v15 = *(a1 + 32);
      *buf = 134218498;
      *&buf[4] = v3;
      v23 = 2112;
      v24 = v14;
      v25 = 2048;
      v26 = v15;
      _os_log_impl(&dword_1959FF000, v13, OS_LOG_TYPE_DEFAULT, " => Delgate %p responds to: %@, passing along protobuf: %p", buf, 0x20u);
    }

    [v3 performSelector:*(a1 + 88) withObject:*(a1 + 32)];
    v16 = +[IDSTransportLog IDSService];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1959FF000, v16, OS_LOG_TYPE_DEFAULT, "   * Done handling", buf, 2u);
    }

    *(*(*(a1 + 72) + 8) + 24) = 1;
  }
}

void sub_195ABE284(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = +[IDSTransportLog IDSService];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v12 = 134218240;
      v13 = v3;
      v14 = 2048;
      v15 = v5;
      _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, " => Delgate %p responds unhandled protobuf passing along protobuf: %p", &v12, 0x16u);
    }

    v6 = [*(*(a1 + 40) + 40) object];
    v7 = *(a1 + 32);
    v8 = *(a1 + 48);
    v9 = [*(a1 + 56) prefixedURI];
    [v3 service:v6 account:v8 incomingUnhandledProtobuf:v7 fromID:v9 context:*(a1 + 64)];

    v10 = [*(a1 + 64) messageSequenceNumber];
    [v10 unsignedIntegerValue];
    kdebug_trace();

    v11 = +[IDSTransportLog IDSService];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "   * Done handling", &v12, 2u);
    }

    *(*(*(a1 + 72) + 8) + 24) = 1;
  }
}

void sub_195ABE44C(uint64_t a1)
{
  if ((*(*(*(a1 + 96) + 8) + 24) & 1) == 0)
  {
    v2 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_195B39488();
    }
  }

  if (*(a1 + 104) == 1)
  {
    if (*(a1 + 105) == 1)
    {
      v3 = [*(a1 + 40) _internal];
      [v3 sendAppAckForDirectMessage:*(a1 + 32)];
    }

    else
    {
      v4 = [*(a1 + 48) connectionType];
      v3 = [*(a1 + 56) daemonController];
      v5 = *(a1 + 32);
      v6 = [*(a1 + 64) prefixedURI];
      v7 = [*(a1 + 40) _internal];
      v8 = [v7 account];
      v9 = [v8 _internal];
      v10 = [v9 uniqueID];
      [v3 sendAppAckWithGUID:v5 toDestination:v6 forAccountWithUniqueID:v10 connectionType:v4];
    }
  }

  if ((*(a1 + 105) & 1) == 0 && (*(a1 + 72) || *(a1 + 80)))
  {
    v11 = [*(a1 + 56) daemonController];
    v23 = *(a1 + 72);
    v21 = v11;
    v22 = *(a1 + 32);
    v12 = [*(a1 + 40) _internal];
    v13 = [v12 account];
    v14 = [v13 _internal];
    v15 = [v14 uniqueID];
    v16 = MEMORY[0x1E696AD98];
    v17 = *(a1 + 80);
    v18 = [*(a1 + 88) data];
    v19 = [v16 numberWithUnsignedInteger:{objc_msgSend(v18, "length")}];
    v20 = [*(a1 + 48) priority];
    [v21 acknowledgeMessageWithStorageGUID:v23 realGUID:v22 forAccountWithUniqueID:v15 broadcastTime:v17 messageSize:v19 priority:v20 broadcastID:objc_msgSend(*(a1 + 48) connectionType:{"broadcastID"), objc_msgSend(*(a1 + 48), "connectionType")}];
  }
}

void sub_195ABEB74(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) outgoingResponseIdentifier];
    v13 = 138412802;
    v14 = v5;
    v15 = 2112;
    v16 = objc_opt_class();
    v17 = 2048;
    v18 = v3;
    _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "%@ Calling out to IDSService delegate <%@:%p> for incomingTopLevelMessage if it responds.", &v13, 0x20u);
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = [*(*(a1 + 40) + 40) object];
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = [*(a1 + 64) prefixedURI];
    [v3 service:v6 account:v7 incomingTopLevelMessage:v8 fromID:v9 messageContext:*(a1 + 32)];

    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v11 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 72);
    v13 = 134218498;
    v14 = v3;
    v15 = 2112;
    v16 = v10;
    v17 = 2112;
    v18 = v12;
    _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "Done for IDSService delegate %p for incomingTopLevelMessage - doesRespondToSelector? %@ guid: %@", &v13, 0x20u);
  }
}

void sub_195ABED58(uint64_t a1)
{
  if (*(a1 + 32) || *(a1 + 40))
  {
    v9 = [*(a1 + 48) daemonController];
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = [*(a1 + 56) _internal];
    v5 = [v4 account];
    v6 = [v5 _internal];
    v7 = [v6 uniqueID];
    v8 = [*(a1 + 64) priority];
    [v9 acknowledgeMessageWithStorageGUID:v2 realGUID:v3 forAccountWithUniqueID:v7 broadcastTime:0 messageSize:0 priority:v8 broadcastID:objc_msgSend(*(a1 + 64) connectionType:{"broadcastID"), objc_msgSend(*(a1 + 64), "connectionType")}];
  }
}

void sub_195ABF070(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 83);
  v3 = [a2 messageContext];
  [v3 setWantsManualAck:v2];
}

void sub_195ABF0C8(uint64_t a1, void *a2)
{
  v69 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v61 = objc_opt_class();
    v62 = 2048;
    v63 = v2;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "Calling out to IDSService delegate <%@:%p> for incomingBatchMessage if it responds.", buf, 0x16u);
  }

  if (objc_opt_respondsToSelector())
  {
    v4 = [*(*(a1 + 32) + 40) object];
    [v2 service:v4 account:*(a1 + 40) incomingBatchMessage:*(a1 + 48)];
    v5 = @"YES";
LABEL_45:

    goto LABEL_47;
  }

  if (objc_opt_respondsToSelector())
  {
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v4 = [*(a1 + 48) messages];
    v50 = [v4 countByEnumeratingWithState:&v56 objects:v68 count:16];
    if (v50)
    {
      v51 = v2;
      key = *MEMORY[0x1E69A51A0];
      v48 = *v57;
      v45 = *MEMORY[0x1E69A51B0];
      v46 = *MEMORY[0x1E69A49F0];
      v43 = *MEMORY[0x1E69A50A0];
      v44 = *MEMORY[0x1E69A4C78];
      v41 = *MEMORY[0x1E69A5188];
      v42 = *MEMORY[0x1E69A5030];
      v39 = *MEMORY[0x1E69A5178];
      v40 = *MEMORY[0x1E69A5180];
      v38 = *MEMORY[0x1E69A5198];
      v37 = *MEMORY[0x1E69A4DD0];
      v36 = *MEMORY[0x1E69A4DE8];
      v35 = *MEMORY[0x1E69A4DF0];
      *&v6 = 138413058;
      v33 = v6;
      v34 = v4;
      do
      {
        for (i = 0; i != v50; ++i)
        {
          if (*v57 != v48)
          {
            objc_enumerationMutation(v34);
          }

          v8 = *(*(&v56 + 1) + 8 * i);
          v9 = [v8 messageContext];
          v53 = [v9 outgoingResponseIdentifier];
          value = [v8 decryptedData];
          v10 = [v9 senderPushToken];
          v11 = [v8 messageContext];
          v12 = [v11 fromID];

          v54 = IDSCopyIDForTokenWithID();
          v13 = [v9 certifiedDeliveryContext];
          [v13 originalEncryptionType];
          v14 = IDSEncryptionTypeStringFromEncryptionType();

          v52 = [v9 originalGUID];
          v15 = IDSGetUUIDData();
          v16 = [MEMORY[0x1E695DF90] dictionary];
          v17 = v16;
          if (v15)
          {
            CFDictionarySetValue(v16, key, v15);
          }

          v18 = [v9 originalCommand];
          if (v18)
          {
            CFDictionarySetValue(v17, v46, v18);
          }

          v19 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v9, "needsDeliveryReceipt")}];
          if (v19)
          {
            CFDictionarySetValue(v17, v45, v19);
          }

          if (v14)
          {
            CFDictionarySetValue(v17, v44, v14);
          }

          if (v12)
          {
            CFDictionarySetValue(v17, v43, v12);
          }

          v20 = [v8 messageContext];
          v21 = [v20 toID];

          if (v21)
          {
            CFDictionarySetValue(v17, v42, v21);
          }

          if (v10)
          {
            CFDictionarySetValue(v17, v41, v10);
          }

          v22 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v9, "serverTimestampInNanoseconds")}];
          if (v22)
          {
            CFDictionarySetValue(v17, v40, v22);
          }

          v23 = [v9 storageContext];
          if (v23)
          {
            CFDictionarySetValue(v17, v39, v23);
          }

          v24 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v9, "isFromTrustedSender")}];
          if (v24)
          {
            CFDictionarySetValue(v17, v38, v24);
          }

          v25 = [MEMORY[0x1E695DF90] dictionary];
          v26 = v25;
          if (value)
          {
            CFDictionarySetValue(v25, v37, value);
          }

          if (v14)
          {
            CFDictionarySetValue(v26, v36, v14);
          }

          if (v17)
          {
            CFDictionarySetValue(v26, v35, v17);
          }

          v27 = [v9 senderCorrelationIdentifier];
          if (v27)
          {
            CFDictionarySetValue(v26, @"mid", v27);
          }

          [v9 setWantsManualAck:*(*(a1 + 32) + 83)];
          v28 = [*(*(a1 + 32) + 40) object];
          [v51 service:v28 account:*(a1 + 40) incomingTopLevelMessage:v26 fromID:v54 messageContext:v9];

          v29 = +[IDSLogging _IDSService];
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v30 = objc_opt_class();
            *buf = v33;
            v61 = v30;
            v62 = 2048;
            v63 = v51;
            v64 = 2112;
            v65 = @"YES";
            v66 = 2112;
            v67 = v53;
            _os_log_impl(&dword_1959FF000, v29, OS_LOG_TYPE_DEFAULT, "Done for IDSService delegate <%@:%p> for incomingTopLevelMessage - doesRespondToSelector? %@ guid: %@", buf, 0x2Au);
          }
        }

        v4 = v34;
        v50 = [v34 countByEnumeratingWithState:&v56 objects:v68 count:16];
      }

      while (v50);
      v2 = v51;
    }

    v5 = @"NO";
    goto LABEL_45;
  }

  v5 = @"NO";
LABEL_47:
  v31 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = objc_opt_class();
    *buf = 138412802;
    v61 = v32;
    v62 = 2048;
    v63 = v2;
    v64 = 2112;
    v65 = v5;
    _os_log_impl(&dword_1959FF000, v31, OS_LOG_TYPE_DEFAULT, "Done for IDSService delegate <%@:%p> for incomingTopLevelMessage - doesRespondToSelector? %@", buf, 0x20u);
  }
}