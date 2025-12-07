void sub_1E0D39FE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0D3A030(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (v3)
  {
    v6 = CWFGetOSLog();
    if (v6)
    {
      v7 = CWFGetOSLog();
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136446978;
      v12 = "[CWFWiFiUserAgent __showWiFiNetworkSharingAskToShareNotificationForClientID:network:accessoryDisplayName:completion:]_block_invoke";
      v13 = 2082;
      v14 = "CWFWiFiUserAgent.m";
      v15 = 1024;
      v16 = 985;
      v17 = 2114;
      v18 = v3;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v7, 0, "[corewifi] %{public}s (%{public}s:%u) [wifi-network-sharing] [UNUserNotificationCenter addNotificationRequest:withCompletionHandler:] returned an error: %{public}@", &v11, 38);
    }

    v9 = [v5 presentAskToShareUserNotificationCompletionHandler];

    if (v9)
    {
      v10 = [v5 presentAskToShareUserNotificationCompletionHandler];
      (v10)[2](v10, v3, 0);
    }

    [v5 setAskToShareUserNotificationRequest:0];
    [v5 setPresentAskToShareUserNotificationCompletionHandler:0];
  }

  else
  {
    [WeakRetained __scheduleRecommendedNetworkNotificationTimeout];
  }
}

void sub_1E0D3A69C(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = CWFGetOSLog();
  if (v4)
  {
    v5 = CWFGetOSLog();
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v10 = 136446722;
    v11 = "[CWFWiFiUserAgent __launchWiFiNetworkSharingAuthorizationProxCardForAccessoryID:accessoryName:appBundleID:completion:]_block_invoke";
    v12 = 2082;
    v13 = "CWFWiFiUserAgent.m";
    v14 = 1024;
    v15 = 1027;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v5, 1, "[corewifi] %{public}s (%{public}s:%u) [wifi-network-sharing] configuring connection", &v10, 28);
  }

  [v3 setName:@"ASUIClientManager"];
  v7 = [MEMORY[0x1E698F4F8] userInitiated];
  [v3 setServiceQuality:v7];

  [v3 setInterface:*(a1 + 32)];
  [v3 setInterfaceTarget:*(a1 + 40)];
  [v3 setActivationHandler:&unk_1F5B8C1C0];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1E0D3A9E8;
  v9[3] = &unk_1E86E99E8;
  v9[4] = *(a1 + 40);
  [v3 setInvalidationHandler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1E0D3AB58;
  v8[3] = &unk_1E86E99E8;
  v8[4] = *(a1 + 40);
  [v3 setInterruptionHandler:v8];
  [v3 setTargetQueue:*(*(a1 + 40) + 40)];
}

void sub_1E0D3A8DC()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = CWFGetOSLog();
  if (v0)
  {
    v1 = CWFGetOSLog();
  }

  else
  {
    v1 = MEMORY[0x1E69E9C10];
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    v3 = 136446722;
    v4 = "[CWFWiFiUserAgent __launchWiFiNetworkSharingAuthorizationProxCardForAccessoryID:accessoryName:appBundleID:completion:]_block_invoke";
    v5 = 2082;
    v6 = "CWFWiFiUserAgent.m";
    v7 = 1024;
    v8 = 1034;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v1, 1, "[corewifi] %{public}s (%{public}s:%u) [wifi-network-sharing] angel connection activated", &v3, 28);
  }
}

uint64_t sub_1E0D3A9E8(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = CWFGetOSLog();
  if (v2)
  {
    v3 = CWFGetOSLog();
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v8 = 136446722;
    v9 = "[CWFWiFiUserAgent __launchWiFiNetworkSharingAuthorizationProxCardForAccessoryID:accessoryName:appBundleID:completion:]_block_invoke";
    v10 = 2082;
    v11 = "CWFWiFiUserAgent.m";
    v12 = 1024;
    v13 = 1038;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v3, 1, "[corewifi] %{public}s (%{public}s:%u) [wifi-network-sharing] angel connection invalidated", &v8, 28);
  }

  v5 = [*(a1 + 32) presentAuthorizationProxCardCompletionHandler];

  if (v5)
  {
    v6 = [*(a1 + 32) presentAuthorizationProxCardCompletionHandler];
    v6[2](v6, 0, 0);
  }

  [*(a1 + 32) setPresentAuthorizationProxCardCompletionHandler:0];
  return [*(a1 + 32) setLaunchAngelConnection:0];
}

uint64_t sub_1E0D3AB58(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = CWFGetOSLog();
  if (v2)
  {
    v3 = CWFGetOSLog();
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v9 = 136446722;
    v10 = "[CWFWiFiUserAgent __launchWiFiNetworkSharingAuthorizationProxCardForAccessoryID:accessoryName:appBundleID:completion:]_block_invoke";
    v11 = 2082;
    v12 = "CWFWiFiUserAgent.m";
    v13 = 1024;
    v14 = 1046;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v3, 1, "[corewifi] %{public}s (%{public}s:%u) [wifi-network-sharing] angel connection interrupted", &v9, 28);
  }

  v5 = [*(a1 + 32) launchAngelConnection];
  [v5 invalidate];

  v6 = [*(a1 + 32) presentAuthorizationProxCardCompletionHandler];

  if (v6)
  {
    v7 = [*(a1 + 32) presentAuthorizationProxCardCompletionHandler];
    v7[2](v7, 0, 0);
  }

  [*(a1 + 32) setPresentAuthorizationProxCardCompletionHandler:0];
  return [*(a1 + 32) setLaunchAngelConnection:0];
}

void sub_1E0D3B1B0(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = CWFGetOSLog();
  if (v4)
  {
    v5 = CWFGetOSLog();
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v10 = 136446722;
    v11 = "[CWFWiFiUserAgent __launchWiFiNetworkSharingAskToShareProxCardForAccessoryID:accessoryName:appBundleID:completion:]_block_invoke";
    v12 = 2082;
    v13 = "CWFWiFiUserAgent.m";
    v14 = 1024;
    v15 = 1103;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v5, 1, "[corewifi] %{public}s (%{public}s:%u) [wifi-network-sharing] configuring connection", &v10, 28);
  }

  [v3 setName:@"ASUIClientManager"];
  v7 = [MEMORY[0x1E698F4F8] userInitiated];
  [v3 setServiceQuality:v7];

  [v3 setInterface:*(a1 + 32)];
  [v3 setInterfaceTarget:*(a1 + 40)];
  [v3 setActivationHandler:&unk_1F5B891F0];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1E0D3B4FC;
  v9[3] = &unk_1E86E99E8;
  v9[4] = *(a1 + 40);
  [v3 setInvalidationHandler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1E0D3B670;
  v8[3] = &unk_1E86E99E8;
  v8[4] = *(a1 + 40);
  [v3 setInterruptionHandler:v8];
  [v3 setTargetQueue:*(*(a1 + 40) + 40)];
}

void sub_1E0D3B3F0()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = CWFGetOSLog();
  if (v0)
  {
    v1 = CWFGetOSLog();
  }

  else
  {
    v1 = MEMORY[0x1E69E9C10];
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    v3 = 136446722;
    v4 = "[CWFWiFiUserAgent __launchWiFiNetworkSharingAskToShareProxCardForAccessoryID:accessoryName:appBundleID:completion:]_block_invoke";
    v5 = 2082;
    v6 = "CWFWiFiUserAgent.m";
    v7 = 1024;
    v8 = 1110;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v1, 1, "[corewifi] %{public}s (%{public}s:%u) [wifi-network-sharing] angel connection activated", &v3, 28);
  }
}

uint64_t sub_1E0D3B4FC(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = CWFGetOSLog();
  if (v2)
  {
    v3 = CWFGetOSLog();
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v8 = 136446722;
    v9 = "[CWFWiFiUserAgent __launchWiFiNetworkSharingAskToShareProxCardForAccessoryID:accessoryName:appBundleID:completion:]_block_invoke";
    v10 = 2082;
    v11 = "CWFWiFiUserAgent.m";
    v12 = 1024;
    v13 = 1114;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v3, 1, "[corewifi] %{public}s (%{public}s:%u) [wifi-network-sharing] angel connection invalidated", &v8, 28);
  }

  v5 = [*(a1 + 32) presentAskToShareProxCardCompletionHandler];

  if (v5)
  {
    v6 = [*(a1 + 32) presentAskToShareProxCardCompletionHandler];
    v6[2](v6, 0, 0, 0);
  }

  [*(a1 + 32) setPresentAskToShareProxCardCompletionHandler:0];
  return [*(a1 + 32) setLaunchAngelConnection:0];
}

uint64_t sub_1E0D3B670(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = CWFGetOSLog();
  if (v2)
  {
    v3 = CWFGetOSLog();
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v9 = 136446722;
    v10 = "[CWFWiFiUserAgent __launchWiFiNetworkSharingAskToShareProxCardForAccessoryID:accessoryName:appBundleID:completion:]_block_invoke";
    v11 = 2082;
    v12 = "CWFWiFiUserAgent.m";
    v13 = 1024;
    v14 = 1122;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v3, 1, "[corewifi] %{public}s (%{public}s:%u) [wifi-network-sharing] angel connection interrupted", &v9, 28);
  }

  v5 = [*(a1 + 32) launchAngelConnection];
  [v5 invalidate];

  v6 = [*(a1 + 32) presentAskToShareProxCardCompletionHandler];

  if (v6)
  {
    v7 = [*(a1 + 32) presentAskToShareProxCardCompletionHandler];
    v7[2](v7, 0, 0, 0);
  }

  [*(a1 + 32) setPresentAskToShareProxCardCompletionHandler:0];
  return [*(a1 + 32) setLaunchAngelConnection:0];
}

void sub_1E0D3BC90(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v9 + 32));
  objc_destroyWeak((v8 + 32));
  objc_destroyWeak((v7 + 32));
  objc_destroyWeak((v6 + 32));
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v10 - 120));
  objc_destroyWeak((v10 - 112));
  _Unwind_Resume(a1);
}

void sub_1E0D3BD88(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = CWFGetOSLog();
  if (v8)
  {
    v9 = CWFGetOSLog();
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138543362;
    v20 = v5;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v9, 0, "[corewifi] BEGIN [REMEMBER CLOUD NETWORK] request (network=%{public}@)", &v19, 12);
  }

  v11 = WeakRetained[5];
  v12 = qos_class_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D3BF50;
  block[3] = &unk_1E86E6CA8;
  block[4] = WeakRetained;
  v17 = v5;
  v18 = v6;
  v13 = v6;
  v14 = v5;
  v15 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v12, 0, block);
  dispatch_async(v11, v15);
}

void sub_1E0D3BF50(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = a1[5];
  v4 = *(a1[4] + 48);
  v11 = 0;
  [v4 rememberCloudNetwork:v3 error:&v11];
  v5 = v11;
  v6 = a1[6];
  if (v6)
  {
    (*(v6 + 16))(v6, v5);
  }

  v7 = CWFGetOSLog();
  if (v7)
  {
    v8 = CWFGetOSLog();
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = a1[5];
    v12 = 138543618;
    v13 = v10;
    v14 = 2114;
    v15 = v5;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v8, 0, "[corewifi] END [REMEMBER CLOUD NETWORK] request (network=%{public}@, error=%{public}@)", &v12, 22);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0D3C0A8(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = CWFGetOSLog();
  if (v8)
  {
    v9 = CWFGetOSLog();
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138543362;
    v20 = v5;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v9, 0, "[corewifi] BEGIN [FORGET CLOUD NETWORK] request (network=%{public}@)", &v19, 12);
  }

  v11 = WeakRetained[5];
  v12 = qos_class_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D3C270;
  block[3] = &unk_1E86E6CA8;
  block[4] = WeakRetained;
  v17 = v5;
  v18 = v6;
  v13 = v6;
  v14 = v5;
  v15 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v12, 0, block);
  dispatch_async(v11, v15);
}

void sub_1E0D3C270(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = a1[5];
  v4 = *(a1[4] + 48);
  v11 = 0;
  [v4 forgetCloudNetwork:v3 error:&v11];
  v5 = v11;
  v6 = a1[6];
  if (v6)
  {
    (*(v6 + 16))(v6, v5);
  }

  v7 = CWFGetOSLog();
  if (v7)
  {
    v8 = CWFGetOSLog();
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = a1[5];
    v12 = 138543618;
    v13 = v10;
    v14 = 2114;
    v15 = v5;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v8, 0, "[corewifi] END [FORGET CLOUD NETWORK] request (network=%{public}@, error=%{public}@)", &v12, 22);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0D3C3C8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = CWFGetOSLog();
  if (v5)
  {
    v6 = CWFGetOSLog();
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v14[0] = 0;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v6, 0, "[corewifi] BEGIN [GET CLOUD NETWORKS] request", v14, 2);
  }

  v8 = WeakRetained[5];
  v9 = qos_class_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D3C52C;
  block[3] = &unk_1E86E64C0;
  block[4] = WeakRetained;
  v13 = v3;
  v10 = v3;
  v11 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v9, 0, block);
  dispatch_async(v8, v11);
}

void sub_1E0D3C52C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 48) cloudNetworks];
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, 0, v3);
  }

  v5 = CWFGetOSLog();
  if (v5)
  {
    v6 = CWFGetOSLog();
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 0;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v6, 0, "[corewifi] END [GET CLOUD NETWORKS] request", v8, 2);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0D3C62C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = CWFGetOSLog();
  if (v8)
  {
    v9 = CWFGetOSLog();
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v19[0] = 0;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v9, 0, "[corewifi] BEGIN [DUMP LOGS] request", v19, 2);
  }

  v11 = WeakRetained[5];
  v12 = qos_class_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D3C7BC;
  block[3] = &unk_1E86E6CA8;
  block[4] = WeakRetained;
  v17 = v5;
  v18 = v6;
  v13 = v6;
  v14 = v5;
  v15 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v12, 0, block);
  dispatch_async(v11, v15);
}

void sub_1E0D3C7BC(uint64_t a1)
{
  context = objc_autoreleasePoolPush();
  v2 = [*(*(a1 + 32) + 48) cloudKVS];
  v3 = [*(a1 + 40) URLByAppendingPathComponent:@"com.apple.wifi.syncable-networks.plist"];
  v4 = [v3 path];

  v5 = [MEMORY[0x1E696AC08] defaultManager];
  [v5 removeItemAtPath:v4 error:0];

  v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:v4];
  [v2 writeToURL:v6 error:0];

  v7 = [*(*(a1 + 32) + 64) dictionaryRepresentation];
  v8 = [*(a1 + 40) URLByAppendingPathComponent:@"com.apple.wifi.removed-networks.plist"];
  v9 = [v8 path];

  v10 = [MEMORY[0x1E696AC08] defaultManager];
  [v10 removeItemAtPath:v9 error:0];

  v11 = [MEMORY[0x1E695DFF8] fileURLWithPath:v9];
  [v7 writeToURL:v11 error:0];

  v12 = [*(*(a1 + 32) + 72) dictionaryRepresentation];
  v13 = [*(a1 + 40) URLByAppendingPathComponent:@"com.apple.wifi.nearby-recommended-networks.plist"];
  v14 = [v13 path];

  v15 = [MEMORY[0x1E696AC08] defaultManager];
  [v15 removeItemAtPath:v14 error:0];

  v16 = [MEMORY[0x1E695DFF8] fileURLWithPath:v14];
  [v12 writeToURL:v16 error:0];

  v17 = *(a1 + 48);
  if (v17)
  {
    (*(v17 + 16))(v17, 0);
  }

  v18 = CWFGetOSLog();
  if (v18)
  {
    v19 = CWFGetOSLog();
  }

  else
  {
    v19 = MEMORY[0x1E69E9C10];
    v20 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v22[0] = 0;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v19, 0, "[corewifi] END [DUMP LOGS] request", v22, 2);
  }

  objc_autoreleasePoolPop(context);
}

void sub_1E0D3CA70(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = CWFGetOSLog();
  if (v5)
  {
    v6 = CWFGetOSLog();
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v14[0] = 0;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v6, 0, "[corewifi] BEGIN [GET NEARBY RECOMMENDED NETWORKS] request", v14, 2);
  }

  if (v3)
  {
    v8 = [WeakRetained nearbyRecommendedNetworks];
    v3[2](v3, 0, v8);
  }

  v9 = CWFGetOSLog();
  if (v9)
  {
    v10 = CWFGetOSLog();
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13[0] = 0;
    LODWORD(v12) = 2;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v10, 0, "[corewifi] END [GET NEARBY RECOMMENDED NETWORKS] request", v13, v12);
  }
}

void sub_1E0D3CBF4(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = CWFGetOSLog();
  if (v6)
  {
    v7 = CWFGetOSLog();
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v18[0] = 0;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v7, 0, "[corewifi] BEGIN [GET CAPTIVE PORTAL CREDS] request", v18, 2);
  }

  v9 = [v5 SSID];

  v17 = 0;
  v10 = sub_1E0BEFFE8(v9, &v17);
  v11 = v17;

  if (v4)
  {
    v4[2](v4, v11, v10);
  }

  v12 = CWFGetOSLog();
  if (v12)
  {
    v13 = CWFGetOSLog();
  }

  else
  {
    v13 = MEMORY[0x1E69E9C10];
    v14 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 0;
    LODWORD(v15) = 2;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v13, 0, "[corewifi] END [GET CAPTIVE PORTAL CREDS] request", &v16, v15);
  }
}

void sub_1E0D3CDA8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = CWFGetOSLog();
  if (v11)
  {
    v12 = CWFGetOSLog();
  }

  else
  {
    v12 = MEMORY[0x1E69E9C10];
    v13 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v30[0] = 0;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v12, 0, "[corewifi] BEGIN [SET CAPTIVE PORTAL CREDS] request", v30, 2);
  }

  v14 = [v7 SSID];
  v29 = 0;
  sub_1E0BF0324(v14, v8, &v29);
  v15 = v29;

  if (v9)
  {
    v9[2](v9, v15);
  }

  v16 = CWFGetOSLog();
  if (v16)
  {
    v17 = CWFGetOSLog();
  }

  else
  {
    v17 = MEMORY[0x1E69E9C10];
    v18 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v30[0] = 0;
    LODWORD(v24) = 2;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v17, 0, "[corewifi] END [SET CAPTIVE PORTAL CREDS] request", v30, v24);
  }

  v19 = WeakRetained[5];
  v20 = qos_class_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D3D020;
  block[3] = &unk_1E86E6060;
  v26 = v7;
  v27 = WeakRetained;
  v28 = v8;
  v21 = v8;
  v22 = v7;
  v23 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v20, 0, block);
  dispatch_async(v19, v23);
}

void sub_1E0D3D020(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) identifier];
  v4 = [*(*(a1 + 40) + 56) nearbySyncNetwork];
  v5 = [v4 knownNetworkProfile];
  v6 = [v5 identifier];
  v7 = v6;
  if (v3 == v6)
  {

    goto LABEL_7;
  }

  v8 = [*(a1 + 32) identifier];
  if (!v8)
  {
LABEL_9:

    goto LABEL_10;
  }

  v9 = v8;
  v10 = [*(*(a1 + 40) + 56) nearbySyncNetwork];
  v11 = [v10 knownNetworkProfile];
  v12 = [v11 identifier];
  if (!v12)
  {

    goto LABEL_9;
  }

  v20 = v12;
  [*(a1 + 32) identifier];
  v13 = v18 = v9;
  [*(*(a1 + 40) + 56) nearbySyncNetwork];
  v14 = v19 = v10;
  [v14 knownNetworkProfile];
  v15 = v22 = v2;
  [v15 identifier];
  v16 = v17 = v11;
  v21 = [v13 isEqual:v16];

  v2 = v22;
  if (v21)
  {
LABEL_7:
    v3 = [*(*(a1 + 40) + 56) nearbySyncNetwork];
    [v3 setCaptivePortalCredentials:*(a1 + 48)];
    [*(*(a1 + 40) + 56) setNearbySyncNetwork:v3];
LABEL_10:
  }

  [*(a1 + 40) __purgeExpiredCaptiveNetworkCredentials];

  objc_autoreleasePoolPop(v2);
}

void sub_1E0D3D224(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = a6;
  v12 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v14 = CWFGetOSLog();
  if (v14)
  {
    v15 = CWFGetOSLog();
  }

  else
  {
    v15 = MEMORY[0x1E69E9C10];
    v16 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v21[0] = 0;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v15, 0, "[corewifi] BEGIN [PERFORM NEARBY PROBE TO REMOTE ENDPOINT] request", v21, 2);
  }

  v17 = WeakRetained[7];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_1E0D3D3A0;
  v19[3] = &unk_1E86E7B28;
  v20 = v11;
  v18 = v11;
  [v17 nearbyConfirmBrokenBackhaulUsingTimeout:a3 count:a4 network:v12 minimumCacheTimestamp:a5 completion:v19];
}

void sub_1E0D3D3A0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v5, a3);
  }

  v7 = CWFGetOSLog();
  if (v7)
  {
    v8 = CWFGetOSLog();
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 0;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v8, 0, "[corewifi] END [PERFORM NEARBY PROBE TO REMOTE ENDPOINT] request", v10, 2);
  }
}

void sub_1E0D3D480(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = [v4 matchingKnownNetworkProfile];
  v7 = [v6 supportsPersonalHotspotFallbackUponBrokenBackhaul];

  if (v7)
  {
    v8 = [v4 networkName];
    v9 = CWFShouldPresentPersonalHotspotNotificationForBrokenBackhaulNetworkName(v8);

    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v10 = CWFGetOSLog();
  if (v10)
  {
    v11 = CWFGetOSLog();
  }

  else
  {
    v11 = MEMORY[0x1E69E9C10];
    v12 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = v4;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v11, 0, "[corewifi] [bbh] Currently associated network does not support PH BBH fallback (%{public}@)", &v13, 12);
  }

  v9 = 0;
  if (v5)
  {
LABEL_10:
    v5[2](v5, 0, v9);
  }

LABEL_11:
}

void sub_1E0D3D5E8(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v21 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v12 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v14 = CWFGetOSLog();
  if (v14)
  {
    v15 = CWFGetOSLog();
  }

  else
  {
    v15 = MEMORY[0x1E69E9C10];
    v16 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543618;
    v18 = v9;
    v19 = 2114;
    v20 = v10;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v15, 0, "[corewifi] [wifi-network-sharing] Received request to show ask-to-share banner (clientID=%{public}@, network=%{public}@)", &v17, 22);
  }

  [WeakRetained __showWiFiNetworkSharingAskToShareNotificationForClientID:v9 network:v10 accessoryDisplayName:v12 completion:v11];
}

void sub_1E0D3D754(uint64_t a1, void *a2, void *a3, void *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = CWFGetOSLog();
  if (v11)
  {
    v12 = CWFGetOSLog();
  }

  else
  {
    v12 = MEMORY[0x1E69E9C10];
    v13 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138543362;
    v20 = v7;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v12, 0, "[corewifi] [wifi-network-sharing] Received request to show ask-to-share proxcard (clientID=%{public}@)", &v19, 12);
  }

  v14 = [v7 accessoryID];
  v15 = [v7 bundleID];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1E0D3D91C;
  v17[3] = &unk_1E86E82E0;
  v18 = v8;
  v16 = v8;
  [WeakRetained __launchWiFiNetworkSharingAskToShareProxCardForAccessoryID:v14 accessoryName:v9 appBundleID:v15 completion:v17];
}

uint64_t sub_1E0D3D91C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1E0D3D934(uint64_t a1, void *a2, void *a3, void *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = CWFGetOSLog();
  if (v11)
  {
    v12 = CWFGetOSLog();
  }

  else
  {
    v12 = MEMORY[0x1E69E9C10];
    v13 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138543362;
    v20 = v7;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v12, 0, "[corewifi] [wifi-network-sharing] Received request to show authorization proxcard (clientID=%{public}@)", &v19, 12);
  }

  v14 = [v7 accessoryID];
  v15 = [v7 bundleID];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1E0D3DAFC;
  v17[3] = &unk_1E86E8268;
  v18 = v8;
  v16 = v8;
  [WeakRetained __launchWiFiNetworkSharingAuthorizationProxCardForAccessoryID:v14 accessoryName:v9 appBundleID:v15 completion:v17];
}

uint64_t sub_1E0D3DAFC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1E0D3DB14(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 48) activate];
  [*(*(a1 + 32) + 56) activate];
  [*(*(a1 + 32) + 72) activate];
  [*(*(a1 + 32) + 64) activate];
  [*(a1 + 32) __updateNearbyRecommendedNetworks];
  [*(a1 + 32) startMonitoringEventType:30 error:0];
  [*(a1 + 32) startMonitoringEventType:13 error:0];
  [*(a1 + 32) startMonitoringEventType:6 error:0];
  [*(a1 + 32) startMonitoringEventType:3 error:0];
  v3 = objc_alloc_init(CWFNearbySyncNetwork);
  v4 = [*(a1 + 32) currentKnownNetworkProfile];
  [(CWFNearbySyncNetwork *)v3 setKnownNetworkProfile:v4];

  v5 = [*(a1 + 32) channel];
  [(CWFNearbySyncNetwork *)v3 setChannel:v5];

  v6 = *(a1 + 32);
  v7 = [(CWFNearbySyncNetwork *)v3 knownNetworkProfile];
  v8 = [v6 passwordForKnownNetworkProfile:v7 error:0];
  [(CWFNearbySyncNetwork *)v3 setPassword:v8];

  v9 = *(a1 + 32);
  v10 = [(CWFNearbySyncNetwork *)v3 knownNetworkProfile];
  v11 = [v9 captivePortalCredentialsForKnownNetworkProfile:v10 error:0];
  [(CWFNearbySyncNetwork *)v3 setCaptivePortalCredentials:v11];

  [*(*(a1 + 32) + 56) setNearbySyncNetwork:v3];
  [*(a1 + 32) __purgeExpiredCaptiveNetworkCredentials];

  objc_autoreleasePoolPop(v2);
}

void sub_1E0D3E9C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0D3E9E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = a2;
  v6 = [*(a1 + 32) presentAskToShareUserNotificationCompletionHandler];

  if (v6)
  {
    v7 = [*(a1 + 32) presentAskToShareUserNotificationCompletionHandler];
    (v7)[2](v7, v8, a4);
  }

  [*(a1 + 32) setPresentAskToShareUserNotificationCompletionHandler:0];
  [*(a1 + 32) setAskToShareUserNotificationRequest:0];
}

Class sub_1E0D3ECB4(uint64_t a1)
{
  sub_1E0D3ED08(0);
  result = objc_getClass("UNUserNotificationCenter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ECE869F8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1E0D3ED08(uint64_t a1)
{
  if (!qword_1ECE86A00)
  {
    qword_1ECE86A00 = _sl_dlopen();
  }

  return qword_1ECE86A00;
}

uint64_t sub_1E0D3EDD8(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1ECE86A00 = result;
  return result;
}

Class sub_1E0D3EE4C(uint64_t a1)
{
  sub_1E0D3ED08(0);
  result = objc_getClass("UNMutableNotificationContent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ECE86A08 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1E0D3EEA0(uint64_t a1)
{
  sub_1E0D3ED08(0);
  result = objc_getClass("UNNotificationSound");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ECE86A10 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1E0D3EEF4(uint64_t a1)
{
  sub_1E0D3ED08(0);
  result = objc_getClass("UNNotificationIcon");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ECE86A18 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1E0D3EF48(uint64_t a1)
{
  sub_1E0D3ED08(0);
  result = objc_getClass("UNNotificationRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ECE86A20 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1E0D3EF9C(uint64_t a1)
{
  v2 = sub_1E0D3EFEC();
  result = dlsym(v2, "UNNotificationSilenceActionIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ECE86A28 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1E0D3EFEC()
{
  v5 = 0;
  v0 = sub_1E0D3ED08(&v5);
  if (!v0)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *UserNotificationsLibrary(void)"];
    [v1 handleFailureInFunction:v4 file:@"CWFWiFiUserAgent.m" lineNumber:60 description:{@"%s", v5}];

    __break(1u);
    goto LABEL_5;
  }

  v1 = v0;
  v2 = v5;
  if (v5)
  {
LABEL_5:
    free(v2);
  }

  return v1;
}

void *sub_1E0D3F09C(uint64_t a1)
{
  v2 = sub_1E0D3EFEC();
  result = dlsym(v2, "UNNotificationDismissActionIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ECE86A30 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1E0D3F0EC(uint64_t a1)
{
  v2 = sub_1E0D3EFEC();
  result = dlsym(v2, "UNNotificationDefaultActionIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ECE86A38 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1E0D3F190()
{
  qword_1ED7E3A40 = objc_alloc_init(CWFDiagnosticReporter);

  return MEMORY[0x1EEE66BB8]();
}

void sub_1E0D3F600(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = 136315906;
    v7 = "[CWFDiagnosticReporter submitWiFiDiagnosticReportType:reason:subtypeContext:]_block_invoke";
    v8 = 2112;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    v12 = 2112;
    v13 = a2;
    _os_log_impl(&dword_1E0BBF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s: typeString: %@ reasonString: %@ ABC snapshot response: %@", &v6, 0x2Au);
  }
}

Class sub_1E0D3FAF0(uint64_t a1)
{
  if (!qword_1ED7E3A58)
  {
    qword_1ED7E3A58 = _sl_dlopen();
  }

  result = objc_getClass("SDRDiagnosticReporter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED7E3A50 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1E0D3FBF4(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1ED7E3A58 = result;
  return result;
}

CWFChannel *sub_1E0D4111C(void *a1)
{
  v2 = [a1 objectForKeyedSubscript:@"CHANNEL"];
  v3 = [a1 objectForKeyedSubscript:@"CHANNEL_FLAGS"];
  v4 = v3;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = objc_alloc_init(CWFChannel);
    -[CWFChannel setChannel:](v6, "setChannel:", [v2 unsignedIntegerValue]);
    -[CWFChannel setFlags:](v6, "setFlags:", [v4 intValue]);
  }

  return v6;
}

uint64_t sub_1E0D411D8(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"AGE"];
  v2 = [v1 unsignedIntegerValue];

  return v2;
}

uint64_t sub_1E0D41218(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"WPA_IE"];
  v2 = [v1 objectForKeyedSubscript:@"IE_KEY_WPA_MCIPHER"];
  v3 = [v2 unsignedLongLongValue];

  return v3;
}

uint64_t sub_1E0D41278(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"11U_INTERWORKING_IE"];
  v2 = [v1 objectForKeyedSubscript:@"INTERWORKING_ACCESS_NETWORK_TYPE"];
  v3 = [v2 unsignedIntValue];

  return v3;
}

uint64_t sub_1E0D412D8(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"11U_INTERWORKING_IE"];
  v2 = [v1 objectForKeyedSubscript:@"INTERWORKING_ACCESS_INTERNET"];
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t sub_1E0D41338(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"11U_INTERWORKING_IE"];
  v2 = [v1 objectForKeyedSubscript:@"INTERWORKING_ACCESS_ASRA"];
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t sub_1E0D41398(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"11U_INTERWORKING_IE"];
  v2 = [v1 objectForKeyedSubscript:@"INTERWORKING_ACCESS_ESR"];
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t sub_1E0D413F8(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"11U_INTERWORKING_IE"];
  v2 = [v1 objectForKeyedSubscript:@"INTERWORKING_ACCESS_UESA"];
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t sub_1E0D41458(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"11U_INTERWORKING_IE"];
  v2 = [v1 objectForKeyedSubscript:@"INTERWORKING_ACCESS_VENTURE_GRP"];
  v3 = [v2 integerValue];

  return v3;
}

uint64_t sub_1E0D414B8(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"11U_INTERWORKING_IE"];
  v2 = [v1 objectForKeyedSubscript:@"INTERWORKING_ACCESS_VENTURE_TYPE"];
  v3 = [v2 integerValue];

  return v3;
}

id sub_1E0D41518(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"11U_INTERWORKING_IE"];
  v2 = [v1 objectForKeyedSubscript:@"INTERWORKING_ACCESS_HESSID"];
  v3 = CWFCorrectEthernetAddressString(v2);

  return v3;
}

uint64_t sub_1E0D4158C(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"APPLE_DEVICE_IE"];
  v2 = [v1 objectForKeyedSubscript:@"APPLE_DEVICE_IE_FEATURE_UNCONFIGURED"];
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t sub_1E0D415EC(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"APPLE_DEVICE_IE"];
  v2 = [v1 objectForKeyedSubscript:@"APPLE_DEVICE_IE_FEATURE_PROVIDES_INTERNET_ACCESS"];
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t sub_1E0D4164C(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"APPLE_DEVICE_IE"];
  v2 = [v1 objectForKeyedSubscript:@"APPLE_DEVICE_IE_FEATURE_SUPPORTS_WPS"];
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t sub_1E0D416AC(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"APPLE_DEVICE_IE"];
  v2 = [v1 objectForKeyedSubscript:@"APPLE_DEVICE_IE_FEATURE_SUPPORTS_IAP_OVER_WIFI"];
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t sub_1E0D4170C(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"APPLE_DEVICE_IE"];
  v2 = [v1 objectForKeyedSubscript:@"APPLE_DEVICE_IE_FEATURE_SUPPORTS_24GHZ_WIFI_NETWORKS"];
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t sub_1E0D4176C(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"APPLE_DEVICE_IE"];
  v2 = [v1 objectForKeyedSubscript:@"APPLE_DEVICE_IE_FEATURE_SUPPORTS_5GHZ_WIFI_NETWORKS"];
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t sub_1E0D417CC(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"APPLE_DEVICE_IE"];
  v2 = [v1 objectForKeyedSubscript:@"APPLE_DEVICE_IE_FEATURE_SUPPORTS_MFI_CONFIG_V1"];
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t sub_1E0D4182C(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"APPLE_DEVICE_IE"];
  v2 = [v1 objectForKeyedSubscript:@"APPLE_DEVICE_IE_FEATURE_SUPPORTS_MFI_HARDWARE_AUTH"];
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t sub_1E0D4188C(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"APPLE_DEVICE_IE"];
  v2 = [v1 objectForKeyedSubscript:@"APPLE_DEVICE_IE_FEATURE_SUPPORTS_SOFTWARE_TOKEN_AUTH"];
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t sub_1E0D418EC(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"APPLE_DEVICE_IE"];
  v2 = [v1 objectForKeyedSubscript:@"APPLE_DEVICE_IE_FEATURE_SUPPORTS_SOFTWARE_CERT_AUTH"];
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t sub_1E0D4194C(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"APPLE_DEVICE_IE"];
  v2 = [v1 objectForKeyedSubscript:@"APPLE_DEVICE_IE_FEATURE_SUPPORTS_HOMEKIT"];
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t sub_1E0D419AC(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"APPLE_DEVICE_IE"];
  v2 = [v1 objectForKeyedSubscript:@"APPLE_DEVICE_IE_FEATURE_SUPPORTS_HOMEKIT_V2"];
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t sub_1E0D41A0C(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"APPLE_DEVICE_IE"];
  v2 = [v1 objectForKeyedSubscript:@"APPLE_DEVICE_IE_FEATURE_SUPPORTS_AIRPRINT"];
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t sub_1E0D41A6C(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"APPLE_DEVICE_IE"];
  v2 = [v1 objectForKeyedSubscript:@"APPLE_DEVICE_IE_FEATURE_SUPPORTS_WOW"];
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t sub_1E0D41ACC(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"APPLE_DEVICE_IE"];
  v2 = [v1 objectForKeyedSubscript:@"APPLE_DEVICE_IE_FEATURE_SUPPORTS_CARPLAY"];
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t sub_1E0D41B2C(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"APPLE_DEVICE_IE"];
  v2 = [v1 objectForKeyedSubscript:@"APPLE_DEVICE_IE_FEATURE_SUPPORTS_SECURE_WAC"];
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t sub_1E0D41B8C(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"APPLE_DEVICE_IE"];
  v2 = [v1 objectForKeyedSubscript:@"APPLE_DEVICE_IE_FEATURE_SUPPORTS_AIRPLAY"];
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t sub_1E0D41BEC(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"APPLE_DEVICE_IE"];
  v2 = [v1 objectForKeyedSubscript:@"APPLE_DEVICE_IE_FEATURE_SUPPORTS_BUFFERED_AIRPLAY"];
  v3 = [v2 BOOLValue];

  return v3;
}

id sub_1E0D41C4C(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"APPLE_DEVICE_IE"];
  v2 = [v1 objectForKeyedSubscript:@"APPLE_DEVICE_IE_FRIENDLY_NAME"];

  return v2;
}

id sub_1E0D41CA8(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"APPLE_DEVICE_IE"];
  v2 = [v1 objectForKeyedSubscript:@"APPLE_DEVICE_IE_MANUFACTURER_NAME"];

  return v2;
}

id sub_1E0D41D04(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"APPLE_DEVICE_IE"];
  v2 = [v1 objectForKeyedSubscript:@"APPLE_DEVICE_IE_MODEL_NAME"];

  return v2;
}

id sub_1E0D41D60(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"APPLE_DEVICE_IE"];
  v2 = [v1 objectForKeyedSubscript:@"APPLE_DEVICE_DISPLAY_NAME"];

  return v2;
}

id sub_1E0D41DBC(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"APPLE_DEVICE_IE"];
  v2 = [v1 objectForKeyedSubscript:@"APPLE_DEVICE_IE_PRIMARY_MAC"];
  v3 = CWFEthernetAddressStringFromData(v2);

  return v3;
}

id sub_1E0D41E30(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"APPLE_DEVICE_IE"];
  v2 = [v1 objectForKeyedSubscript:@"APPLE_DEVICE_IE_BLUETOOTH_MAC"];
  v3 = CWFEthernetAddressStringFromData(v2);

  return v3;
}

id sub_1E0D41EA4(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"APPLE_DEVICE_IE"];
  v2 = [v1 objectForKeyedSubscript:@"APPLE_DEVICE_IE_DEVICE_ID"];

  return v2;
}

id sub_1E0D41F00(void *a1)
{
  v1 = [a1 ANQPResponse];
  v2 = [v1 objectForKeyedSubscript:@"ANQP_CELL_NETWORK_INFO"];

  return v2;
}

id sub_1E0D41F54(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = [a1 ANQPResponse];
  v4 = [v3 objectForKeyedSubscript:@"ANQP_NAI_REALM_LIST"];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) objectForKeyedSubscript:{@"ANQP_NAI_REALM_NAME", v13}];
        if (v10)
        {
          [v2 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if ([v5 count])
  {
    v11 = [v2 copy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id sub_1E0D420E8(void *a1)
{
  v1 = [a1 ANQPResponse];
  v2 = [v1 objectForKeyedSubscript:@"ANQP_ROAMING_CONSORTIUM_OI_LIST"];

  return v2;
}

id sub_1E0D4213C(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = [a1 ANQPResponse];
  v4 = [v3 objectForKeyedSubscript:@"ANQP_OPERATOR_NAMES_LIST"];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) objectForKeyedSubscript:{@"ANQP_OPERATOR_NAME", v13}];
        if (v10)
        {
          [v2 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if ([v5 count])
  {
    v11 = [v2 copy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id sub_1E0D422D0(void *a1)
{
  v1 = [a1 ANQPResponse];
  v2 = [v1 objectForKeyedSubscript:@"ANQP_DOMAIN_NAME_LIST"];

  return v2;
}

id sub_1E0D42324(void *a1)
{
  v1 = [a1 ANQPResponse];
  v2 = [v1 objectForKeyedSubscript:@"ANQP_VENUE_URL"];

  return v2;
}

BOOL sub_1E0D42378(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"MBO_OCE_IE"];
  v2 = v1 != 0;

  return v2;
}

uint64_t sub_1E0D423B4(void *a1)
{
  v1 = [a1 networkFlags];
  v2 = [v1 containsObject:&unk_1F5BBD390];

  return v2;
}

BOOL sub_1E0D423F4(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"FILS_DISC_INFO"];
  v2 = [v1 objectForKeyedSubscript:@"FD_CAP_ESS"];
  v3 = v2 != 0;

  return v3;
}

uint64_t sub_1E0D42448(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"FILS_DISC_INFO"];
  v2 = [v1 objectForKeyedSubscript:@"FD_CAP_ESS"];

  if (v2)
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1E0D424B0(void *a1)
{
  v2 = [a1 objectForKeyedSubscript:@"FILS_DISC_INFO"];
  v3 = [v2 objectForKeyedSubscript:@"FD_CAP_PHY_INDEX"];
  v4 = [v3 unsignedCharValue];

  v5 = [a1 objectForKeyedSubscript:@"CHANNEL_FLAGS"];
  v6 = [v5 unsignedIntValue];

  if (v4 == 5)
  {
    v7 = 512;
  }

  else
  {
    v7 = 0;
  }

  if (v4 == 4)
  {
    v8 = 256;
  }

  else
  {
    v8 = v7;
  }

  if (v4 == 3)
  {
    v9 = 128;
  }

  else
  {
    v9 = v8;
  }

  if ((v6 & 8) != 0)
  {
    v10 = 8;
  }

  else
  {
    v10 = 2;
  }

  if (v4 == 2)
  {
    v11 = 16;
  }

  else
  {
    v11 = 0;
  }

  if (v4 != 1)
  {
    v10 = v11;
  }

  if (v4)
  {
    v12 = v10;
  }

  else
  {
    v12 = 4;
  }

  if (v4 <= 2)
  {
    return v12;
  }

  else
  {
    return v9;
  }
}

id sub_1E0D42590(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"FILS_DISC_INFO"];
  v2 = [v1 objectForKeyedSubscript:@"SSID"];

  return v2;
}

uint64_t sub_1E0D425EC(void *a1)
{
  v2 = [a1 FILSSSID];
  if (v2)
  {
    v3 = 0;
    Apple80211CalculateShortSSIDCopy();
  }

  else
  {
    v4 = [a1 objectForKeyedSubscript:@"FILS_DISC_INFO"];
    v5 = [v4 objectForKeyedSubscript:@"SHORT_SSID"];
    v3 = [v5 unsignedIntValue];
  }

  return v3;
}

uint64_t sub_1E0D426A4(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"FILS_DISC_INFO"];
  v2 = [v1 objectForKeyedSubscript:@"BEACON_INTERVAL"];
  v3 = [v2 unsignedShortValue];

  return v3;
}

CWFChannel *sub_1E0D42704(void *a1)
{
  v2 = [a1 objectForKeyedSubscript:@"FILS_DISC_INFO"];
  v3 = [v2 objectForKeyedSubscript:@"PRIMARY_CHANNEL_FLAGS"];

  v4 = [a1 objectForKeyedSubscript:@"FILS_DISC_INFO"];
  v5 = [v4 objectForKeyedSubscript:@"PRIMARY_CHANNEL"];

  v6 = 0;
  if (v3 && v5)
  {
    v6 = objc_alloc_init(CWFChannel);
    -[CWFChannel setChannel:](v6, "setChannel:", [v3 unsignedIntegerValue]);
    -[CWFChannel setFlags:](v6, "setFlags:", [v5 unsignedIntValue]);
  }

  return v6;
}

id sub_1E0D427E8(void *a1)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v2 = [a1 objectForKeyedSubscript:@"FILS_DISC_INFO"];
  v3 = [v2 objectForKeyedSubscript:@"PRIMARY_CHANNEL_FLAGS"];

  v4 = [a1 objectForKeyedSubscript:@"FILS_DISC_INFO"];
  v5 = [v4 objectForKeyedSubscript:@"PRIMARY_CHANNEL"];

  v6 = 0;
  if (v3 && v5)
  {
    v8[0] = @"CHANNEL";
    v8[1] = @"CHANNEL_FLAGS";
    v9[0] = v3;
    v9[1] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
  }

  return v6;
}

BOOL sub_1E0D42900(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"FILS_DISC_INFO"];
  v2 = [v1 objectForKeyedSubscript:@"INTERWORKING_ACCESS_NETWORK_TYPE"];
  v3 = v2 != 0;

  return v3;
}

uint64_t sub_1E0D42954(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"FILS_DISC_INFO"];
  v2 = [v1 objectForKeyedSubscript:@"INTERWORKING_ACCESS_NETWORK_TYPE"];
  v3 = [v2 unsignedIntValue];

  return v3;
}

uint64_t sub_1E0D429B4(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"FILS_DISC_INFO"];
  v2 = [v1 objectForKeyedSubscript:@"INTERWORKING_ACCESS_INTERNET"];
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t sub_1E0D42A14(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"FILS_DISC_INFO"];
  v2 = [v1 objectForKeyedSubscript:@"INTERWORKING_ACCESS_ASRA"];
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t sub_1E0D42A74(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"FILS_DISC_INFO"];
  v2 = [v1 objectForKeyedSubscript:@"INTERWORKING_ACCESS_ESR"];
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t sub_1E0D42AD4(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"FILS_DISC_INFO"];
  v2 = [v1 objectForKeyedSubscript:@"INTERWORKING_ACCESS_UESA"];
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t sub_1E0D42B34(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"PRIVATE_MAC_ADDRESS"];
  v2 = [v1 objectForKeyedSubscript:@"PRIVATE_MAC_ADDRESS_VALID"];
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t CWFMapDisassocReason(unint64_t a1)
{
  if (a1 > 0x11)
  {
    return 10;
  }

  else
  {
    return qword_1E0D81C40[a1];
  }
}

void sub_1E0D42BC4()
{
  v0 = qword_1ECE86A40;
  qword_1ECE86A40 = &unk_1F5BB9D90;
}

uint64_t CWFIsPayloadIdentifierTelemetryApproved(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (qword_1ECE86A48 != -1)
  {
    dispatch_once(&qword_1ECE86A48, &unk_1F5B89D70);
  }

  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = qword_1ECE86A40;
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([v1 isEqualToString:{*(*(&v7 + 1) + 8 * i), v7}])
        {
          v3 = 1;
          goto LABEL_13;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v3;
}

Class sub_1E0D4408C(uint64_t a1)
{
  if (!qword_1ED7E3A68)
  {
    qword_1ED7E3A68 = _sl_dlopen();
  }

  result = objc_getClass("MCProfileConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED7E3A60 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1E0D44190(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1ED7E3A68 = result;
  return result;
}

void sub_1E0D48514(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![v5 intValue])
  {
    [*(a1 + 32) setObject:0 forKeyedSubscript:v6];
  }
}

void sub_1E0D5E020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1E0D5E7D4(uint64_t a1)
{
  if (!qword_1ECE81B28)
  {
    qword_1ECE81B28 = _sl_dlopen();
  }

  return qword_1ECE81B28;
}

uint64_t sub_1E0D5E8A4(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1ECE81B28 = result;
  return result;
}

void sub_1E0D5E918(void *a1)
{
  v6 = 0;
  if (sub_1E0D5E7D4(&v6))
  {
    v2 = v6;
    if (!v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    a1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SharingLibrary(void)"];
    [v3 handleFailureInFunction:a1 file:@"CWFAutoJoinMetric.m" lineNumber:176 description:{@"%s", v6}];

    __break(1u);
  }

  free(v2);
LABEL_3:
  *(*(a1[4] + 8) + 24) = objc_getClass("SFRemoteHotspotDevice");
  if (*(*(a1[4] + 8) + 24))
  {
    qword_1ECE81B18 = *(*(a1[4] + 8) + 24);
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSFRemoteHotspotDeviceClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v5 file:@"CWFAutoJoinMetric.m" lineNumber:177 description:{@"Unable to find class %s", "SFRemoteHotspotDevice"}];

    __break(1u);
  }
}

uint64_t sub_1E0D5EB08(uint64_t a1)
{
  qword_1ED7E3A78 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

void sub_1E0D5EFCC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x1E695DFA8] set];
  if ([*(*(a1 + 32) + 56) count])
  {
    v4 = [*(*(a1 + 32) + 56) allObjects];
    [v3 addObjectsFromArray:v4];
  }

  if (![*(*(a1 + 32) + 56) count] && objc_msgSend(*(*(a1 + 32) + 40), "count"))
  {
    [v3 addObjectsFromArray:*(*(a1 + 32) + 40)];
  }

  v5 = +[CWFNetworkOfInterestManager testHomeNetworks];
  v6 = [v5 count];

  if (v6)
  {
    v7 = +[CWFNetworkOfInterestManager testHomeNetworks];
    [v3 addObjectsFromArray:v7];
  }

  v8 = [*(a1 + 32) homeNetworkDeterminationChangedHandler];

  if (v8)
  {
    v9 = [*(a1 + 32) homeNetworkDeterminationChangedHandler];
    v10 = [v3 allObjects];
    (v9)[2](v9, v10);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0D5F1A0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x1E695DFA8] set];
  if ([*(*(a1 + 32) + 48) count])
  {
    [v3 addObjectsFromArray:*(*(a1 + 32) + 48)];
  }

  v4 = [*(a1 + 32) workNetworkDeterminationChangedHandler];

  if (v4)
  {
    v5 = [*(a1 + 32) workNetworkDeterminationChangedHandler];
    v6 = [v3 allObjects];
    (v5)[2](v5, v6);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0D5F308(uint64_t a1)
{
  v54 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x1E695DF00] date];
  v4 = dispatch_group_create();
  v33 = [MEMORY[0x1E695DFA8] set];
  v5 = CWFGetOSLog();
  if (v5)
  {
    v6 = CWFGetOSLog();
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(*(a1 + 40) + 32) homes];
    v45 = 136446978;
    v46 = "[CWFNetworkOfInterestManager homeManagerDidUpdateHomes:]_block_invoke";
    v47 = 2082;
    v48 = "CWFNetworkOfInterestManager.m";
    v49 = 1024;
    *v50 = 236;
    *&v50[4] = 1024;
    *&v50[6] = [v8 count];
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v6, 0, "[corewifi] %{public}s (%{public}s:%u) HMHomeManager has %d homes", &v45, 34);
  }

  v9 = [*(*(a1 + 40) + 32) homes];
  v10 = [v9 count];

  if (v10)
  {
    v11 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v12 = CWFGetOSLog();
    if (v12)
    {
      v13 = CWFGetOSLog();
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
      v16 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v45 = 134219010;
      v46 = v11 / 0x3B9ACA00;
      v47 = 2048;
      v48 = v11 % 0x3B9ACA00 / 0x3E8;
      v49 = 2082;
      *v50 = "[CWFNetworkOfInterestManager homeManagerDidUpdateHomes:]_block_invoke";
      *&v50[8] = 2082;
      v51 = "CWFNetworkOfInterestManager.m";
      v52 = 1024;
      v53 = 240;
      LODWORD(v32) = 48;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v13, 1, "[corewifi] >>> @[%llu.%06llu] %{public}s (%{public}s:%u) ", &v45, v32);
    }

    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    v40 = 0u;
    v17 = [*(*(a1 + 40) + 32) homes];
    v18 = [v17 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v41;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v41 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v40 + 1) + 8 * i);
          dispatch_group_enter(v4);
          v37[0] = MEMORY[0x1E69E9820];
          v37[1] = 3221225472;
          v37[2] = sub_1E0D5F920;
          v37[3] = &unk_1E86E9BF0;
          v37[4] = *(a1 + 40);
          v37[5] = v22;
          v38 = v33;
          v39 = v4;
          [v22 getPrimaryResidentNetworkInfoWithCompletion:v37];
        }

        v19 = [v17 countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v19);
    }

    v23 = *(a1 + 40);
    v24 = *(v23 + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0D5FD90;
    block[3] = &unk_1E86E6060;
    block[4] = v23;
    v35 = v33;
    v36 = v3;
    dispatch_group_notify(v4, v24, block);
  }

  else
  {
    if ([*(*(a1 + 40) + 56) count])
    {
      v14 = CWFGetOSLog();
      if (v14)
      {
        v15 = CWFGetOSLog();
      }

      else
      {
        v15 = MEMORY[0x1E69E9C10];
        v25 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v26 = [*(*(a1 + 40) + 56) count];
        v45 = 136446978;
        v46 = "[CWFNetworkOfInterestManager homeManagerDidUpdateHomes:]_block_invoke";
        v47 = 2082;
        v48 = "CWFNetworkOfInterestManager.m";
        v49 = 1024;
        *v50 = 296;
        *&v50[4] = 1024;
        *&v50[6] = v26;
        LODWORD(v32) = 34;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v15, 1, "[corewifi] %{public}s (%{public}s:%u) No HMHomeManager homes. Removing %d cached home networks", &v45, v32);
      }

      [*(*(a1 + 40) + 56) removeAllObjects];
      [*(a1 + 40) _homeNetworkDeterminationDidChange];
    }

    v27 = *(a1 + 40);
    v28 = *(v27 + 32);
    *(v27 + 32) = 0;
  }

  if (*(*(a1 + 40) + 72))
  {
    v29 = 3600000000000;
    if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
    {
      v29 = 60000000000;
    }

    v30 = *(*(a1 + 40) + 72);
    v31 = dispatch_walltime(0, v29);
    dispatch_source_set_timer(v30, v31, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0D5F920(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = CWFGetOSLog();
    if (v7)
    {
      v8 = CWFGetOSLog();
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v13 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v19 = 136446978;
      v20 = "[CWFNetworkOfInterestManager homeManagerDidUpdateHomes:]_block_invoke";
      v21 = 2082;
      v22 = "CWFNetworkOfInterestManager.m";
      v23 = 1024;
      v24 = 265;
      v25 = 2112;
      v26 = v6;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v8, 16, "[corewifi] %{public}s (%{public}s:%u) getPrimaryResidentNetworkInfoWithCompletion failed with error %@", &v19, 38);
    }

    dispatch_group_leave(*(a1 + 56));
  }

  else
  {
    v9 = *(*(a1 + 32) + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0D5FB08;
    block[3] = &unk_1E86E7EA8;
    v10 = v5;
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v15 = v10;
    v16 = v11;
    v17 = v12;
    v18 = *(a1 + 56);
    dispatch_async(v9, block);
  }
}

void sub_1E0D5FB08(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = CWFGetOSLog();
  if (v3)
  {
    v4 = CWFGetOSLog();
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 32);
    v18 = 136446978;
    v19 = "[CWFNetworkOfInterestManager homeManagerDidUpdateHomes:]_block_invoke_2";
    v20 = 2082;
    v21 = "CWFNetworkOfInterestManager.m";
    v22 = 1024;
    v23 = 251;
    v24 = 2112;
    v25 = v6;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v4, 2, "[corewifi] %{public}s (%{public}s:%u) getPrimaryResidentNetworkInfoWithCompletion returned %@", &v18, 38);
  }

  v7 = [*(a1 + 32) wiFiInfo];

  if (v7)
  {
    v8 = CWFGetOSLog();
    if (v8)
    {
      v9 = CWFGetOSLog();
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 40);
      v12 = [*(a1 + 32) wiFiInfo];
      v13 = [v12 SSID];
      v18 = 136447234;
      v19 = "[CWFNetworkOfInterestManager homeManagerDidUpdateHomes:]_block_invoke";
      v20 = 2082;
      v21 = "CWFNetworkOfInterestManager.m";
      v22 = 1024;
      v23 = 255;
      v24 = 2112;
      v25 = v11;
      v26 = 2112;
      v27 = v13;
      LODWORD(v17) = 48;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v9, 1, "[corewifi] %{public}s (%{public}s:%u) Adding HomeKit home UUID=%@ SSID=%@", &v18, v17);
    }

    v14 = *(a1 + 48);
    v15 = [*(a1 + 32) wiFiInfo];
    v16 = [v15 SSID];
    [v14 addObject:v16];
  }

  dispatch_group_leave(*(a1 + 56));
  objc_autoreleasePoolPop(v2);
}

void sub_1E0D5FD90(id *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = *(a1[4] + 7);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v4 = a1[4];
    v5 = v4[7];
    v4[7] = v3;

    v2 = *(a1[4] + 7);
  }

  v6 = a1[5];
  if (v2 != v6)
  {
    if (v2)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      if ([v2 isEqual:?])
      {
        goto LABEL_11;
      }

      v2 = *(a1[4] + 7);
    }

    [v2 removeAllObjects];
    v8 = *(a1[4] + 7);
    v9 = [a1[5] allObjects];
    [v8 addObjectsFromArray:v9];

    [a1[4] _homeNetworkDeterminationDidChange];
  }

LABEL_11:
  v10 = [a1[6] copy];
  v11 = a1[4];
  v12 = v11[8];
  v11[8] = v10;

  v13 = a1[4];
  v14 = v13[4];
  v13[4] = 0;

  v15 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v16 = CWFGetOSLog();
  if (v16)
  {
    v17 = CWFGetOSLog();
  }

  else
  {
    v17 = MEMORY[0x1E69E9C10];
    v18 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v19 = 134219010;
    v20 = v15 / 0x3B9ACA00;
    v21 = 2048;
    v22 = v15 % 0x3B9ACA00 / 0x3E8;
    v23 = 2082;
    v24 = "[CWFNetworkOfInterestManager homeManagerDidUpdateHomes:]_block_invoke";
    v25 = 2082;
    v26 = "CWFNetworkOfInterestManager.m";
    v27 = 1024;
    v28 = 289;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v17, 1, "[corewifi] <<<@[%llu.%06llu] %{public}s (%{public}s:%u) ", &v19, 48);
  }
}

void sub_1E0D6051C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0D60608(void *a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  if (![*(a1[4] + 40) count] && !objc_msgSend(*(a1[4] + 56), "count"))
  {
    v3 = +[CWFNetworkOfInterestManager testHomeNetworks];
    v4 = [v3 count];

    if (!v4)
    {
      v18 = CWFGetOSLog();
      if (v18)
      {
        v9 = CWFGetOSLog();
      }

      else
      {
        v9 = MEMORY[0x1E69E9C10];
        v21 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v22 = a1[5];
        v24 = 136446978;
        v25 = "[CWFNetworkOfInterestManager homeTypeForNetworkName:]_block_invoke";
        v26 = 2082;
        v27 = "CWFNetworkOfInterestManager.m";
        v28 = 1024;
        v29 = 407;
        v30 = 2112;
        v31 = v22;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v9, 0, "[corewifi] %{public}s (%{public}s:%u) no known home determination for network name %@", &v24, 38);
      }

      goto LABEL_34;
    }
  }

  *(*(a1[6] + 8) + 24) = 2;
  if ([*(a1[4] + 56) count] && objc_msgSend(*(a1[4] + 56), "containsObject:", a1[5]))
  {
    v5 = CWFGetOSLog();
    if (v5)
    {
      v6 = CWFGetOSLog();
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v7 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[5];
      v24 = 136446978;
      v25 = "[CWFNetworkOfInterestManager homeTypeForNetworkName:]_block_invoke";
      v26 = 2082;
      v27 = "CWFNetworkOfInterestManager.m";
      v28 = 1024;
      v29 = 388;
      v30 = 2112;
      v31 = v8;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v6, 0, "[corewifi] %{public}s (%{public}s:%u) HomeKit determines %@ is HOME", &v24, 38);
    }

    *(*(a1[6] + 8) + 24) = 1;
  }

  if (![*(a1[4] + 56) count] && objc_msgSend(*(a1[4] + 40), "count") && objc_msgSend(*(a1[4] + 40), "containsObject:", a1[5]))
  {
    v14 = CWFGetOSLog();
    if (v14)
    {
      v15 = CWFGetOSLog();
    }

    else
    {
      v15 = MEMORY[0x1E69E9C10];
      v19 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v20 = a1[5];
      v24 = 136446978;
      v25 = "[CWFNetworkOfInterestManager homeTypeForNetworkName:]_block_invoke";
      v26 = 2082;
      v27 = "CWFNetworkOfInterestManager.m";
      v28 = 1024;
      v29 = 395;
      v30 = 2112;
      v31 = v20;
      LODWORD(v23) = 38;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v15, 0, "[corewifi] %{public}s (%{public}s:%u) Symptoms determines %@ is HOME", &v24, v23);
    }

    *(*(a1[6] + 8) + 24) = 1;
  }

  v9 = +[CWFNetworkOfInterestManager testHomeNetworks];
  if (![v9 count])
  {
LABEL_34:

    goto LABEL_35;
  }

  v10 = +[CWFNetworkOfInterestManager testHomeNetworks];
  v11 = [v10 containsObject:a1[5]];

  if (v11)
  {
    v12 = CWFGetOSLog();
    if (v12)
    {
      v13 = CWFGetOSLog();
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
      v16 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v17 = a1[5];
      v24 = 136446978;
      v25 = "[CWFNetworkOfInterestManager homeTypeForNetworkName:]_block_invoke";
      v26 = 2082;
      v27 = "CWFNetworkOfInterestManager.m";
      v28 = 1024;
      v29 = 401;
      v30 = 2112;
      v31 = v17;
      LODWORD(v23) = 38;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v13, 0, "[corewifi] %{public}s (%{public}s:%u) TestCode determines %@ is HOME", &v24, v23);
    }

    *(*(a1[6] + 8) + 24) = 1;
  }

LABEL_35:
  objc_autoreleasePoolPop(v2);
}

void sub_1E0D60B64(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  if ([*(*(a1 + 32) + 40) count] || objc_msgSend(*(*(a1 + 32) + 56), "count"))
  {
    v3 = CWFGetOSLog();
    if (v3)
    {
      v4 = CWFGetOSLog();
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *v9 = 136446722;
      *&v9[4] = "[CWFNetworkOfInterestManager homeTypeForNetworkSignature:]_block_invoke";
      *&v9[12] = 2082;
      *&v9[14] = "CWFNetworkOfInterestManager.m";
      *&v9[22] = 1024;
      LODWORD(v10) = 426;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v4, 2, "[corewifi] %{public}s (%{public}s:%u) not yet implemented", v9, 28, *v9, *&v9[8], v10, v11);
    }
  }

  else
  {
    v6 = CWFGetOSLog();
    if (v6)
    {
      v4 = CWFGetOSLog();
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
      v7 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      *v9 = 136446978;
      *&v9[4] = "[CWFNetworkOfInterestManager homeTypeForNetworkSignature:]_block_invoke";
      *&v9[12] = 2082;
      *&v9[14] = "CWFNetworkOfInterestManager.m";
      *&v9[22] = 1024;
      LODWORD(v10) = 430;
      WORD2(v10) = 2112;
      *(&v10 + 6) = v8;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v4, 0, "[corewifi] %{public}s (%{public}s:%u) no known home determination for network signature %@", v9, 38, *v9, *&v9[8], v10, v11);
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0D60E40(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  if ([*(a1[4] + 48) count])
  {
    *(*(a1[6] + 8) + 24) = 2;
    if ([*(a1[4] + 48) containsObject:a1[5]])
    {
      v3 = CWFGetOSLog();
      if (v3)
      {
        v4 = CWFGetOSLog();
      }

      else
      {
        v4 = MEMORY[0x1E69E9C10];
        v8 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v9 = a1[5];
        v10 = 136446978;
        v11 = "[CWFNetworkOfInterestManager workTypeForNetworkName:]_block_invoke";
        v12 = 2082;
        v13 = "CWFNetworkOfInterestManager.m";
        v14 = 1024;
        v15 = 456;
        v16 = 2112;
        v17 = v9;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v4, 0, "[corewifi] %{public}s (%{public}s:%u) Symptoms determines %@ is WORK", &v10, 38);
      }

      *(*(a1[6] + 8) + 24) = 1;
    }
  }

  else
  {
    v5 = CWFGetOSLog();
    if (v5)
    {
      v6 = CWFGetOSLog();
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v7 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136446722;
      v11 = "[CWFNetworkOfInterestManager workTypeForNetworkName:]_block_invoke";
      v12 = 2082;
      v13 = "CWFNetworkOfInterestManager.m";
      v14 = 1024;
      v15 = 462;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v6, 0, "[corewifi] %{public}s (%{public}s:%u) no known work determination", &v10, 28);
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0D610F0(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 48) count];
  v4 = CWFGetOSLog();
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      v6 = CWFGetOSLog();
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v7 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *v9 = 136446722;
      *&v9[4] = "[CWFNetworkOfInterestManager workTypeForNetworkSignature:]_block_invoke";
      *&v9[12] = 2082;
      *&v9[14] = "CWFNetworkOfInterestManager.m";
      *&v9[22] = 1024;
      LODWORD(v10) = 482;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v6, 2, "[corewifi] %{public}s (%{public}s:%u) not yet implemented", v9, 28, *v9, *&v9[8], v10);
    }
  }

  else
  {
    if (v4)
    {
      v6 = CWFGetOSLog();
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 136446722;
      *&v9[4] = "[CWFNetworkOfInterestManager workTypeForNetworkSignature:]_block_invoke";
      *&v9[12] = 2082;
      *&v9[14] = "CWFNetworkOfInterestManager.m";
      *&v9[22] = 1024;
      LODWORD(v10) = 486;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v6, 0, "[corewifi] %{public}s (%{public}s:%u) no known work determination", v9, 28, *v9, *&v9[8], v10);
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0D61374(uint64_t a1, void *a2, void *a3)
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = CWFGetOSLog();
    if (v7)
    {
      v8 = CWFGetOSLog();
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v19 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v37 = 136446978;
      v38 = "[CWFNetworkOfInterestManager didStartTrackingNOI:]_block_invoke";
      v39 = 2082;
      v40 = "CWFNetworkOfInterestManager.m";
      v41 = 1024;
      v42 = 507;
      v43 = 2112;
      v44 = v6;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v8, 16, "[corewifi] %{public}s (%{public}s:%u) networkAttachmentInfoForScopedNOI failed with error %@", &v37, 38);
    }
  }

  else
  {
    v8 = [MEMORY[0x1E695DF90] dictionary];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v9 = [v5 allKeys];
    v10 = [v9 countByEnumeratingWithState:&v33 objects:v47 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v34;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v34 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v33 + 1) + 8 * i);
          v15 = [v5 objectForKeyedSubscript:v14];
          [v15 doubleValue];
          [v8 setObject:v15 forKeyedSubscript:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v33 objects:v47 count:16];
      }

      while (v11);
    }

    v16 = [v8 keysSortedByValueUsingComparator:&unk_1F5B89D90];
    v17 = CWFGetOSLog();
    if (v17)
    {
      v18 = CWFGetOSLog();
    }

    else
    {
      v18 = MEMORY[0x1E69E9C10];
      v20 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [*(a1 + 32) typePrettyPrint];
      v37 = 136447234;
      v38 = "[CWFNetworkOfInterestManager didStartTrackingNOI:]_block_invoke_2";
      v39 = 2082;
      v40 = "CWFNetworkOfInterestManager.m";
      v41 = 1024;
      v42 = 535;
      v43 = 2112;
      v44 = v16;
      v45 = 2112;
      v46 = v21;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v18, 0, "[corewifi] %{public}s (%{public}s:%u) fetchHomeWiFiInfoFromSymptoms returned %@ for noi %@", &v37, 48);
    }

    if ([v16 count])
    {
      v22 = MEMORY[0x1E695DEC8];
      v23 = [v16 objectAtIndexedSubscript:0];
      v24 = [v22 arrayWithObject:v23];
    }

    else
    {
      v24 = 0;
    }

    v25 = *(*(a1 + 40) + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0D617D8;
    block[3] = &unk_1E86E6060;
    v26 = *(a1 + 32);
    v27 = *(a1 + 40);
    v30 = v26;
    v31 = v27;
    v32 = v24;
    v28 = v24;
    dispatch_async(v25, block);
  }
}

uint64_t sub_1E0D61780(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 doubleValue];
  v6 = v5;
  [v4 doubleValue];
  v8 = v7;

  if (v6 > v8)
  {
    return -1;
  }

  else
  {
    return v6 < v8;
  }
}

void sub_1E0D617D8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) atHomeScopedNOI])
  {
    v4 = *(a1 + 40);
    v3 = *(a1 + 48);
    v5 = *(v4 + 40);
    if (v5 == v3)
    {
      goto LABEL_19;
    }

    if (v5)
    {
      v6 = v3 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      if ([v5 isEqual:*(a1 + 48)])
      {
        goto LABEL_19;
      }

      v4 = *(a1 + 40);
      v3 = *(a1 + 48);
    }

    objc_storeStrong((v4 + 40), v3);
    [*(a1 + 40) _homeNetworkDeterminationDidChange];
  }

  else if ([*(a1 + 32) atWorkScopedNOI])
  {
    v8 = *(a1 + 40);
    v7 = *(a1 + 48);
    v9 = *(v8 + 48);
    if (v9 != v7)
    {
      if (v9)
      {
        v10 = v7 == 0;
      }

      else
      {
        v10 = 1;
      }

      if (!v10)
      {
        if ([v9 isEqual:*(a1 + 48)])
        {
          goto LABEL_19;
        }

        v8 = *(a1 + 40);
        v7 = *(a1 + 48);
      }

      objc_storeStrong((v8 + 48), v7);
      [*(a1 + 40) _workNetworkDeterminationDidChange];
    }
  }

LABEL_19:

  objc_autoreleasePoolPop(v2);
}

void sub_1E0D61940(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) atHomeScopedNOI])
  {
    v3 = *(a1 + 40);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }

  if ([*(a1 + 32) atWorkScopedNOI])
  {
    v5 = *(a1 + 40);
    v6 = *(v5 + 48);
    *(v5 + 48) = 0;
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1E0D61A28(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  v5 = *(a1 + 32);
  v6 = *(v5 + 48);
  *(v5 + 48) = 0;

  v7 = *(*(a1 + 32) + 24);
  if (v7)
  {
    [v7 trackAllBuiltinNOIsForInterfaceType:1 options:0];
  }

  objc_autoreleasePoolPop(v2);
}

Class sub_1E0D61B74()
{
  if (qword_1ED7E3A88 != -1)
  {
    dispatch_once(&qword_1ED7E3A88, &unk_1F5B897B0);
  }

  result = objc_getClass("NWNetworkOfInterestManager");
  qword_1ED7E3A80 = result;
  off_1EED2D3E0 = sub_1E0D61BD8;
  return result;
}

void sub_1E0D61BE4()
{
  qword_1ECE81AF0 = dlopen("/System/Library/PrivateFrameworks/Symptoms.framework/Frameworks/SymptomPresentationFeed.framework/SymptomPresentationFeed", 2);
  if (!qword_1ECE81AF0)
  {
    NSLog(&cfstr_FailedToSoftLi.isa);
  }
}

Class sub_1E0D61C20(uint64_t a1)
{
  if (!qword_1ED7E3A98)
  {
    qword_1ED7E3A98 = _sl_dlopen();
  }

  result = objc_getClass("HMHomeManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED7E3A90 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1E0D61D24(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1ED7E3A98 = result;
  return result;
}

uint64_t sub_1E0D62794()
{
  qword_1ED7E3AA0 = objc_alloc_init(CWFAssetPowerTable);

  return MEMORY[0x1EEE66BB8]();
}

void sub_1E0D666DC(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = sub_1E0BCC05C([a2 integerValue]);
  [v4 setObject:v5 forKeyedSubscript:v6];
}

void sub_1E0D6A7B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = v3;
  AnalyticsSendEventLazy();
}