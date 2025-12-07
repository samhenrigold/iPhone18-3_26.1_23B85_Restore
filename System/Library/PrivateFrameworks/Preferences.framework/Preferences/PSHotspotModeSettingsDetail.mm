@interface PSHotspotModeSettingsDetail
+ (BOOL)isDiscoverable;
+ (BOOL)isEnabled;
+ (NETRBClient)getNETRBClient;
+ (void)setDiscoverable:(BOOL)discoverable;
+ (void)setEnabled:(BOOL)enabled;
@end

@implementation PSHotspotModeSettingsDetail

+ (NETRBClient)getNETRBClient
{
  result = _netrbClient;
  if (!_netrbClient)
  {
    v3 = MEMORY[0x1E69E96A0];
    v4 = MEMORY[0x1E69E96A0];
    v5 = v3;
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v6 = get_NETRBClientCreateSymbolLoc_ptr;
    v15 = get_NETRBClientCreateSymbolLoc_ptr;
    if (!get_NETRBClientCreateSymbolLoc_ptr)
    {
      v7 = NetrbLibrary();
      v13[3] = dlsym(v7, "_NETRBClientCreate");
      get_NETRBClientCreateSymbolLoc_ptr = v13[3];
      v6 = v13[3];
    }

    _Block_object_dispose(&v12, 8);
    if (!v6)
    {
      [PSContactsAuthorizationLevelController dealloc];
      v11 = v10;
      _Block_object_dispose(&v12, 8);
      _Unwind_Resume(v11);
    }

    v8 = MEMORY[0x1E69E96A0];
    v9 = (v6)(MEMORY[0x1E69E96A0], &__block_literal_global_37, 0);

    _netrbClient = v9;
    return _netrbClient;
  }

  return result;
}

+ (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v4 = +[PSHotspotModeSettingsDetail getNETRBClient];
  if (enabledCopy)
  {
    v5 = 1023;
  }

  else
  {
    v5 = 1022;
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v6 = get_NETRBClientSetGlobalServiceStateSymbolLoc_ptr;
  v17 = get_NETRBClientSetGlobalServiceStateSymbolLoc_ptr;
  if (!get_NETRBClientSetGlobalServiceStateSymbolLoc_ptr)
  {
    v7 = NetrbLibrary();
    v15[3] = dlsym(v7, "_NETRBClientSetGlobalServiceState");
    get_NETRBClientSetGlobalServiceStateSymbolLoc_ptr = v15[3];
    v6 = v15[3];
  }

  _Block_object_dispose(&v14, 8);
  if (!v6)
  {
    [PSContactsAuthorizationLevelController dealloc];
    v13 = v12;
    _Block_object_dispose(&v14, 8);
    _Unwind_Resume(v13);
  }

  v6(v4, v5);
  v11 = wifiManager;
  if (!wifiManager)
  {
    v11 = PSWiFiManagerClientCreate(*MEMORY[0x1E695E480], v8, v9, v10);
  }

  wifiManager = v11;
  PSWiFiManagerClientSetMISDiscoveryState(v11, enabledCopy, enabledCopy ^ 1, v10);
}

+ (BOOL)isEnabled
{
  v2 = +[PSHotspotModeSettingsDetail getNETRBClient];
  v8 = 0;
  v9 = 1020;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v3 = get_NETRBClientGetGlobalServiceStateSymbolLoc_ptr;
  v18 = get_NETRBClientGetGlobalServiceStateSymbolLoc_ptr;
  if (!get_NETRBClientGetGlobalServiceStateSymbolLoc_ptr)
  {
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __get_NETRBClientGetGlobalServiceStateSymbolLoc_block_invoke;
    v13 = &unk_1E71DBC78;
    v14 = &v15;
    v4 = NetrbLibrary();
    v16[3] = dlsym(v4, "_NETRBClientGetGlobalServiceState");
    get_NETRBClientGetGlobalServiceStateSymbolLoc_ptr = *(v14[1] + 24);
    v3 = v16[3];
  }

  _Block_object_dispose(&v15, 8);
  if (!v3)
  {
    [PSContactsAuthorizationLevelController dealloc];
    v7 = v6;
    _Block_object_dispose(&v15, 8);
    _Unwind_Resume(v7);
  }

  v3(v2, &v9, &v8);
  return v9 == 1023;
}

+ (void)setDiscoverable:(BOOL)discoverable
{
  discoverableCopy = discoverable;
  if (discoverable && !+[PSHotspotModeSettingsDetail isEnabled])
  {

    [PSHotspotModeSettingsDetail setEnabled:1];
  }

  else
  {
    v5 = wifiManager;
    if (!wifiManager)
    {
      v5 = PSWiFiManagerClientCreate(*MEMORY[0x1E695E480], a2, discoverable, v3);
    }

    wifiManager = v5;

    PSWiFiManagerClientSetMISDiscoveryState(v5, discoverableCopy, discoverableCopy ^ 1, v3);
  }
}

+ (BOOL)isDiscoverable
{
  v4 = wifiManager;
  if (!wifiManager)
  {
    v4 = PSWiFiManagerClientCreate(*MEMORY[0x1E695E480], a2, v2, v3);
  }

  wifiManager = v4;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v5 = getWiFiManagerClientGetMISDiscoveryStateSymbolLoc_ptr;
  v13 = getWiFiManagerClientGetMISDiscoveryStateSymbolLoc_ptr;
  if (!getWiFiManagerClientGetMISDiscoveryStateSymbolLoc_ptr)
  {
    v6 = MobileWiFiLibrary();
    v11[3] = dlsym(v6, "WiFiManagerClientGetMISDiscoveryState");
    getWiFiManagerClientGetMISDiscoveryStateSymbolLoc_ptr = v11[3];
    v5 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v5)
  {
    [PSContactsAuthorizationLevelController dealloc];
    v9 = v8;
    _Block_object_dispose(&v10, 8);
    _Unwind_Resume(v9);
  }

  return v5(v4);
}

@end