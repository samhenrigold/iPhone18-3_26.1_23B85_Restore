uint64_t TPSWiFiCallingLog(uint64_t a1, uint64_t a2)
{
  if (qword_D178 != -1)
  {
    sub_3F5C();
  }

  return qword_D170;
}

void sub_393C(uint64_t a1, uint64_t a2)
{
  v3 = TPSWiFiCallingLog(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Not consenting to location/privacy alert.", v6, 2u);
  }

  v4 = *(a1 + 32);
  v5 = [v4 mainSwitchSpecifier];
  [v4 reloadSpecifier:v5 animated:1];
}

void sub_39D0(uint64_t a1, uint64_t a2)
{
  v3 = TPSWiFiCallingLog(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Consenting to location/privacy alert.", buf, 2u);
  }

  v4 = [*(a1 + 32) emergencyAddressURLController];
  v5 = [v4 shouldEnableCapability];

  v8 = TPSWiFiCallingLog(v6, v7);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v9)
    {
      *v16 = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "WiFi Calling service is provisioned; enabling Wi-Fi Calling.", v16, 2u);
    }

    v10 = [*(a1 + 32) emergencyAddressURLController];
    [v10 enableCapability];
  }

  else
  {
    if (v9)
    {
      *v15 = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "WiFi Calling service is not provisioned; presenting provisioning.", v15, 2u);
    }

    v11 = [*(a1 + 32) callingController];
    v12 = [v11 subscriptionCapabilities];
    [v12 invalidateAndRefreshWiFiCallingProvisioningURL];

    v13 = *(a1 + 32);
    v10 = [v13 emergencyAddressURLController];
    v14 = [v10 provisionCapabilityController];
    [v13 presentOrUpdateViewController:v14];
  }
}