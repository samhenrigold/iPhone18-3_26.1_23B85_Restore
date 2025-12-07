void sub_2EC0(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = CarPairingLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (v3)
    {
      v6 = @"YES";
    }

    v7 = 138412546;
    v8 = v6;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "CRConnectBluetoothLE completed: success: %@, error: %@", &v7, 0x16u);
  }
}

id sub_3EF0(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [ISImageDescriptor alloc];
  v5 = +[UIScreen mainScreen];
  [v5 scale];
  v7 = [v4 initWithSize:29.0 scale:{29.0, v6}];

  [v7 setDrawBorder:a2];
  [v7 setShape:1];
  v8 = [v3 prepareImageForDescriptor:v7];

  v9 = [v8 CGImage];
  v10 = +[UIScreen mainScreen];
  [v10 scale];
  v11 = [UIImage imageWithCGImage:v9 scale:0 orientation:?];

  return v11;
}

void sub_41DC(id a1)
{
  v3[0] = @"com.apple.podcasts";
  v3[1] = @"com.apple.iBooks";
  v3[2] = CRSCalendarIdentifier;
  v3[3] = CRSNewsIdentifier;
  v1 = [NSArray arrayWithObjects:v3 count:4];
  v2 = qword_7C530;
  qword_7C530 = v1;
}

void sub_46B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id sub_46D4(uint64_t a1)
{
  v2 = [*(a1 + 32) parentController];
  [v2 reloadSpecifiers];

  v3 = *(a1 + 32);

  return [v3 _car_popIfVisible];
}

void sub_47CC(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = CarGeneralLogging();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v6)
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Stop session sent successfully.", &v8, 2u);
    }
  }

  else if (v6)
  {
    v7 = [(NSError *)v4 localizedDescription];
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Failed to send stop session: %@", &v8, 0xCu);
  }
}

void sub_4A74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_4A98(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (a2)
  {
    [WeakRetained beginUpdates];
    v5 = [v7 specifierForID:@"SWITCH_GROUP"];
    v6 = [v7 specifierForID:@"CARPLAY_SWITCH"];
    [v7 _updateEnabledGroupSpecifier:v5 switchSpecifier:v6];
    [v7 reloadSpecifier:v5];
    [v7 _updateOptionsRowVisibility:*(a1 + 40)];
    [v7 endUpdates];
  }

  else
  {
    [WeakRetained reloadSpecifiers];
  }
}

void sub_5154(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_5178(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (a2)
  {
    v6 = +[NSDistributedNotificationCenter defaultCenter];
    v10 = CREnhancedIntegrationConsentDidChangeNotificationVehicleCertificateSerialKey;
    v7 = [*(a1 + 32) certificateSerialNumber];
    v8 = v7;
    if (!v7)
    {
      v8 = +[NSData data];
    }

    v11 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    [v6 postNotificationName:@"CREnhancedIntegrationConsentDidChangeNotificationName" object:0 userInfo:v9];

    if (!v7)
    {
    }
  }

  else
  {
    [WeakRetained reloadSpecifiers];
  }
}

id sub_5314(uint64_t a1)
{
  if (([*(a1 + 32) suppressNextReloadForPairedVehicleChanged] & 1) == 0)
  {
    v2 = [*(a1 + 32) vehicleSettingManager];
    [v2 reloadVehicle];

    [*(a1 + 32) reloadSpecifiers];
  }

  v3 = *(a1 + 32);

  return [v3 setSuppressNextReloadForPairedVehicleChanged:0];
}

void sub_6454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id location)
{
  objc_destroyWeak(&a36);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_6508(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [*(a1 + 32) traitCollection];
  [WeakRetained presentHomeScreenLayoutViewWithTraitCollection:v4 specifier:v3];
}

void sub_658C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [*(a1 + 32) traitCollection];
  [WeakRetained presentWidgetSettingsViewWithTraitCollection:v4 specifier:v3];
}

void sub_6788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_67AC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained reloadSpecifier:*(a1 + 32)];
}

void sub_7024(uint64_t a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_70D4;
  v4[3] = &unk_6E408;
  v5 = a2;
  v6 = *(a1 + 32);
  v3 = v5;
  dispatch_async(&_dispatch_main_q, v4);
}

void sub_70D4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = CarGeneralLogging();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Saved vehicle %@", &v6, 0xCu);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_4A2A0(a1, v4);
  }
}

void sub_73C8(uint64_t a1, char a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_7450;
  v2[3] = &unk_6E458;
  v4 = a2;
  v3 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v2);
}

void sub_7450(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = CarGeneralLogging();
  v4 = v3;
  if (v2 == 1)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Deleted vehicle %@", &v6, 0xCu);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_4A31C(a1, v4);
  }
}

id sub_7ABC(uint64_t a1)
{
  if (([*(a1 + 32) suppressNextReloadForPairedVehicleChanged] & 1) == 0)
  {
    [*(a1 + 32) reloadSpecifiers];
  }

  v2 = *(a1 + 32);

  return [v2 setSuppressNextReloadForPairedVehicleChanged:0];
}

void sub_7E5C(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_7C540;
  qword_7C540 = v1;

  [qword_7C540 setDoesRelativeDateFormatting:1];
  [qword_7C540 setDateStyle:1];
  v3 = qword_7C540;

  [v3 setTimeStyle:1];
}

void sub_8A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_8A70(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_8A88(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

int64_t sub_8AE8(id a1, PSSpecifier *a2, PSSpecifier *a3)
{
  v4 = a2;
  v5 = a3;
  if (!+[CRSettingsController _showsCarPlayInternalSettingsUI](CRSettingsController, "_showsCarPlayInternalSettingsUI") || ((-[PSSpecifier userInfo](v4, "userInfo"), v6 = objc_claimAutoreleasedReturnValue(), [v6 vehicle], v7 = objc_claimAutoreleasedReturnValue(), v6, -[PSSpecifier userInfo](v5, "userInfo"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "vehicle"), v9 = objc_claimAutoreleasedReturnValue(), v8, objc_msgSend(v7, "lastConnectedDate"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "lastConnectedDate"), v11 = objc_claimAutoreleasedReturnValue(), v12 = v11, !v10) || !v11 ? (v10 ? (v15 = -1) : (v15 = 1), v14 = (v10 | v11) == 0) : (v13 = objc_msgSend(v10, "compare:", v11), v13 == -1) ? (v14 = 0, v15 = 1) : v13 != &dword_0 + 1 ? (v15 = 0, v14 = 0) : (v14 = 0, v15 = -1), v12, v10, v9, v7, v14))
  {
    v16 = [(PSSpecifier *)v4 name];
    v17 = [(PSSpecifier *)v5 name];
    v15 = [v16 localizedStandardCompare:v17];
  }

  return v15;
}

void sub_94F0(uint64_t a1)
{
  v2 = [*(a1 + 32) carplayPreferences];
  v3 = [v2 isCarPlayAllowed];

  if ((v3 & 1) == 0)
  {
    v4 = [*(a1 + 32) navigationController];
    v5 = [v4 viewControllers];
    v6 = [v5 containsObject:*(a1 + 32)];

    if (v6)
    {
      v9 = [*(a1 + 32) navigationController];
      v7 = [*(a1 + 32) parentController];
      v8 = [v9 popToViewController:v7 animated:1];
    }
  }
}

void sub_A080(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40) == 1)
  {
    [*(a1 + 32) setBluetoothPowered:1];
  }

  if (*(a1 + 41) == 1)
  {
    [*(a1 + 32) setWiFiPowered:1];
  }
}

id sub_A16C(uint64_t a1)
{
  [*(a1 + 32) setNeedsPresentationConsideration:1];
  v2 = *(a1 + 32);

  return [v2 updateRadiosAvailabilityAlertPresentation];
}

id sub_A220(uint64_t a1)
{
  [*(a1 + 32) setNeedsPresentationConsideration:1];
  v2 = *(a1 + 32);

  return [v2 updateRadiosAvailabilityAlertPresentation];
}

void sub_B6B8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_B790;
  v10[3] = &unk_6E5A8;
  v7 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v5;
  v12 = v6;
  v13 = v7;
  v8 = v6;
  v9 = v5;
  dispatch_async(&_dispatch_main_q, v10);
}

uint64_t sub_B790(uint64_t a1)
{
  [*(a1 + 32) setVehicle:*(a1 + 40)];
  v2 = *(*(a1 + 56) + 16);

  return v2();
}

void sub_B8A8(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_B964;
  block[3] = &unk_6E5F8;
  v6 = *(a1 + 32);
  v11 = a2;
  v9 = v5;
  v10 = v6;
  v7 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_BF5C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(2, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_C028;
  block[3] = &unk_6E648;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, block);
}

void sub_C684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_C6D0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_C6E8(uint64_t a1, void *a2)
{
  v25 = a2;
  v3 = [v25 localizedDisplayName];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [v25 iconImageData];

  if (v6)
  {
    v7 = [UIImage alloc];
    v8 = [v25 iconImageData];
    [v25 iconImageScale];
    v9 = [v7 initWithData:v8 scale:?];
    v10 = *(*(a1 + 64) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  if ([*(a1 + 32) isEqualToString:CRSNowPlayingIdentifier])
  {
    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = [UIImage imageNamed:@"iconNowPlaying" inBundle:v12];
    v14 = a1 + 64;
LABEL_5:
    v15 = *(*v14 + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v13;

    goto LABEL_8;
  }

  if ([*(a1 + 32) isEqualToString:CRSOEMIdentifier])
  {
    *(*(*(a1 + 72) + 8) + 24) = [v25 isPrerendered] ^ 1;
    v14 = a1 + 64;
    if (!*(*(*(a1 + 64) + 8) + 40))
    {
      v20 = [NSBundle bundleForClass:objc_opt_class()];
      v21 = [UIImage imageNamed:@"iconOEM" inBundle:v20];
      v22 = *(*(a1 + 64) + 8);
      v23 = *(v22 + 40);
      *(v22 + 40) = v21;

      v24 = *(*(*(a1 + 64) + 8) + 40);
      v12 = +[UIScreen mainScreen];
      [v12 scale];
      v13 = [v24 _applicationIconImageForFormat:8 precomposed:1 scale:?];
      goto LABEL_5;
    }
  }

LABEL_8:
  v17 = [*(*(*(a1 + 64) + 8) + 40) imageByPreparingThumbnailOfSize:{29.0, 29.0}];
  v18 = *(*(a1 + 64) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v17;

  dispatch_semaphore_signal(*(a1 + 48));
}

id sub_DAD8(uint64_t a1)
{
  result = [*(a1 + 32) discoveryEnabled];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 startDiscovery];
  }

  return result;
}

void sub_DC14(uint64_t a1)
{
  if ([*(a1 + 32) discoveryEnabled])
  {
    v2 = +[BluetoothManager sharedInstance];
    v3 = [v2 enabled];

    if (v3)
    {
      v4 = *(a1 + 32);

      [v4 startDiscovery];
    }
  }
}

void sub_E334(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_E408;
  block[3] = &unk_6E6C0;
  v6 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v12 = a2;
  v9 = v6;
  v10 = *(a1 + 48);
  v11 = v5;
  v7 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

id sub_E408(uint64_t a1)
{
  [*(a1 + 32) setPairing:0];
  v2 = *(a1 + 64);
  v3 = CarPairingLogging();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      v5 = *(a1 + 40);
      v10 = 141558275;
      v11 = 1752392040;
      v12 = 2113;
      v13 = v5;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "successfully paired  %{private, mask.hash}@", &v10, 0x16u);
    }

    v6 = 4;
  }

  else
  {
    if (v4)
    {
      v7 = *(a1 + 40);
      v8 = *(a1 + 56);
      v10 = 141558531;
      v11 = 1752392040;
      v12 = 2113;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "failed to pair  %{private, mask.hash}@, error: %@", &v10, 0x20u);
    }

    v6 = 1;
  }

  [*(a1 + 48) setConnectionStatus:v6];
  [*(a1 + 32) handleUpdatedVehicle:*(a1 + 48)];
  return [*(a1 + 32) startDiscovery];
}

void sub_F1E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_F20C(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_F2CC;
  v8[3] = &unk_6E710;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v11 = a2;
  v9 = v6;
  v10 = v5;
  v7 = v5;
  dispatch_async(&_dispatch_main_q, v8);
}

void sub_F2CC(uint64_t a1)
{
  [*(a1 + 32) setPairing:0];
  v2 = *(a1 + 56);
  v3 = CarPairingLogging();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      v5 = *(a1 + 40);
      v11 = 141558275;
      v12 = 1752392040;
      v13 = 2113;
      v14 = v5;
      v6 = "successfully paired  %{private, mask.hash}@";
      v7 = v3;
      v8 = 22;
LABEL_6:
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, v6, &v11, v8);
    }
  }

  else if (v4)
  {
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = 141558531;
    v12 = 1752392040;
    v13 = 2113;
    v14 = v9;
    v15 = 2112;
    v16 = v10;
    v6 = "failed to pair  %{private, mask.hash}@, error: %@";
    v7 = v3;
    v8 = 32;
    goto LABEL_6;
  }
}

void sub_F404(id *a1, int a2)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  [WeakRetained setOutstandingPairingPrompt:0];

  v5 = objc_loadWeakRetained(a1 + 6);
  v6 = [v5 _presentingViewController];

  if (a2)
  {
    if (v6)
    {
      v7 = objc_alloc_init(CARBluetoothSyncContactsPrompt);
      v8 = objc_loadWeakRetained(a1 + 6);
      [v8 setOutstandingContactsPrompt:v7];

      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_F580;
      v10[3] = &unk_6E760;
      objc_copyWeak(&v12, a1 + 6);
      v11 = a1[4];
      v13 = a2;
      [(CARBluetoothSyncContactsPrompt *)v7 setContactsApprovalCompletion:v10];
      [(CARBluetoothSyncContactsPrompt *)v7 presentSyncContactsAlertFromViewController:v6];

      objc_destroyWeak(&v12);
    }
  }

  else
  {
    [a1[5] setPairing:0];
    v9 = +[BluetoothManager sharedInstance];
    [v9 acceptSSP:1 forDevice:a1[4]];
  }
}

void sub_F580(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setOutstandingContactsPrompt:0];

  v5 = [*(a1 + 32) syncSettings];
  v6 = 0x100000000;
  if (a2)
  {
    v6 = 0x100000100;
  }

  [*(a1 + 32) setSyncSettings:v6 | v5 & 0xFFFF00FF];
  v7 = *(a1 + 48);
  v8 = +[BluetoothManager sharedInstance];
  [v8 acceptSSP:v7 ^ 1 forDevice:*(a1 + 32)];
}

void sub_F8CC(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = CarGeneralLogging();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "carkitd handled the new pairing", v13, 2u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_4A574(v5, v6, v7, v8, v9, v10, v11, v12);
  }
}

void sub_FAE0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

uint64_t sub_103A4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_12388(uint64_t a1)
{
  v1 = [*(a1 + 32) bluetoothClassicDiscoverer];
  [v1 pauseDiscovery];
}

void sub_1244C(uint64_t a1)
{
  v1 = [*(a1 + 32) bluetoothClassicDiscoverer];
  [v1 startDiscovery];
}

void sub_1253C(uint64_t a1)
{
  v1 = [*(a1 + 32) bluetoothClassicDiscoverer];
  [v1 startDiscovery];
}

id sub_137A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = CarGeneralLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Reload specifiers to show changes", v6, 2u);
  }

  return [*(a1 + 32) reloadSpecifiers];
}

void sub_13814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = CarGeneralLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6[0] = 67109120;
    v6[1] = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "presented switch to CarPlay Ultra %d", v6, 8u);
  }
}

void *sub_13948@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_4A6AC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 identifier];
  if (result)
  {
    v9 = result;
    sub_4A68C();

    sub_4A65C();
    (*(v5 + 8))(v7, v4);
    result = [a1 certificateSerialNumber];
    if (result)
    {
      v10 = result;
      v11 = sub_4A64C();
      v13 = v12;

      v14 = objc_allocWithZone(CRHomeScreenPersistenceManager);
      v15 = sub_4B5EC();

      isa = sub_4A63C().super.isa;
      v17 = [v14 initWithVehicleId:v15 certificateSerial:isa];

      sub_1475C(v11, v13);
      return sub_288FC(v17, a2);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL static PSListController.shouldShowWidgetSettingsSpecifier(for:)()
{
  v0 = objc_opt_self();
  v1 = [v0 capabilitiesIdentifier];
  if (!v1)
  {
    sub_4B5FC();
    v1 = sub_4B5EC();
  }

  v2 = [v0 fetchCarCapabilitiesWithIdentifier:v1];

  v3 = [v2 lodWidgetsMode];
  return v3 != &dword_0 + 1;
}

uint64_t _sSo16PSListControllerC14CarKitSettingsE27presentHomeScreenLayoutView_9specifierySo17UITraitCollectionC_So11PSSpecifierCtF_0(uint64_t a1, void *a2)
{
  v3 = sub_4A88C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_4A8AC();
  v19 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_4B54C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a2 userInfo])
  {
    sub_4B93C();
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v20 = v24;
  v21 = v25;
  if (!*(&v25 + 1))
  {
    return sub_145C0(&v20);
  }

  sub_14670();
  result = swift_dynamicCast();
  if (result)
  {
    v18 = v4;
    v15 = v23;
    *(&v21 + 1) = &type metadata for CarPlayFeatureFlags;
    v22 = sub_146BC();
    v16 = sub_4A76C();
    sub_14710(&v20);
    if (v16)
    {
      sub_4B89C();
      *&v20 = v15;
      BYTE8(v20) = 0;
      sub_14854();
      sub_4B53C();

      return (*(v11 + 8))(v13, v10);
    }

    else
    {
      v17 = sub_4B87C();
      __chkstk_darwin(v17);
      *(&v18 - 2) = v15;
      type metadata accessor for CRHomeScreenLayoutView(0);
      sub_148B0(&qword_7AC30, type metadata accessor for CRHomeScreenLayoutView, &unk_52C68);
      sub_4A87C();
      sub_148B0(&qword_7AC20, &type metadata accessor for SettingsAnyViewRecipe, &protocol conformance descriptor for SettingsAnyViewRecipe);
      sub_4A89C();

      (*(v18 + 8))(v6, v3);
      return (*(v19 + 8))(v9, v7);
    }
  }

  return result;
}

uint64_t _sSo16PSListControllerC14CarKitSettingsE013presentWidgetE23ViewWithTraitCollection_9specifierySo07UITraitK0C_So11PSSpecifierCtF_0(uint64_t a1, void *a2)
{
  v31 = a1;
  v3 = sub_4A88C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_4A6AC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_4A8AC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a2 userInfo])
  {
    sub_4B93C();
    swift_unknownObjectRelease();
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
  }

  v32 = v36;
  v33 = v37;
  if (!*(&v37 + 1))
  {
    return sub_145C0(&v32);
  }

  sub_14670();
  result = swift_dynamicCast();
  if (result)
  {
    v30 = v12;
    v16 = v35;
    *(&v33 + 1) = &type metadata for CarPlayFeatureFlags;
    v34 = sub_146BC();
    v17 = sub_4A76C();
    sub_14710(&v32);
    if (v17)
    {
      sub_4B87C();
      *&v32 = v16;
      BYTE8(v32) = 2;
      sub_14854();
      sub_4A89C();

      return (*(v30 + 8))(v14, v11);
    }

    v29 = v4;
    result = [v16 identifier];
    if (result)
    {
      v18 = result;
      sub_4A68C();

      sub_4A65C();
      (*(v8 + 8))(v10, v7);
      result = [v16 certificateSerialNumber];
      if (result)
      {
        v19 = result;
        v20 = sub_4A64C();
        v22 = v21;

        v23 = objc_allocWithZone(CRHomeScreenPersistenceManager);
        v24 = sub_4B5EC();

        isa = sub_4A63C().super.isa;
        v26 = [v23 initWithVehicleId:v24 certificateSerial:isa];

        sub_1475C(v20, v22);
        type metadata accessor for CRWidgetSettingsModel(0);
        v27 = v26;
        sub_19E1C(v27, &off_6ED48);
        sub_4B87C();
        sub_14800();
        sub_4A87C();
        sub_148B0(&qword_7AC20, &type metadata accessor for SettingsAnyViewRecipe, &protocol conformance descriptor for SettingsAnyViewRecipe);
        sub_4A89C();

        (*(v29 + 8))(v6, v3);
        return (*(v30 + 8))(v14, v11);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_145C0(uint64_t a1)
{
  v2 = sub_14628(&qword_7AC00, &qword_52410);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_14628(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_14670()
{
  result = qword_7AC08;
  if (!qword_7AC08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_7AC08);
  }

  return result;
}

unint64_t sub_146BC()
{
  result = qword_7AC10;
  if (!qword_7AC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7AC10);
  }

  return result;
}

uint64_t sub_14710(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1475C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

__n128 sub_147B0@<Q0>(__n128 *a1@<X8>)
{

  sub_34154(v5, v2);
  v3 = v5[3];
  a1[2] = v5[2];
  a1[3] = v3;
  a1[4] = v5[4];
  result = v5[1];
  *a1 = v5[0];
  a1[1] = result;
  return result;
}

unint64_t sub_14800()
{
  result = qword_7AC18;
  if (!qword_7AC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7AC18);
  }

  return result;
}

unint64_t sub_14854()
{
  result = qword_7AC28;
  if (!qword_7AC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7AC28);
  }

  return result;
}

uint64_t sub_148B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id CRCarPlayUltraConfirmationViewController.__allocating_init(enableUltra:vehicleSettingManager:confirmAction:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = a1;
  v9 = objc_allocWithZone(v4);
  return CRCarPlayUltraConfirmationViewController.init(enableUltra:vehicleSettingManager:confirmAction:)(v8, a2, a3, a4);
}

id CRCarPlayUltraConfirmationViewController.init(enableUltra:vehicleSettingManager:confirmAction:)(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v4[OBJC_IVAR____TtC14CarKitSettings40CRCarPlayUltraConfirmationViewController_enableUltra] = a1;
  *&v4[OBJC_IVAR____TtC14CarKitSettings40CRCarPlayUltraConfirmationViewController_vehicleSettingManager] = a2;
  v10 = &v4[OBJC_IVAR____TtC14CarKitSettings40CRCarPlayUltraConfirmationViewController_confirmAction];
  *v10 = a3;
  v10[1] = a4;
  v11 = a2;

  if (a1)
  {
    v12 = 0xD00000000000002ALL;
  }

  else
  {
    v12 = 0xD000000000000024;
  }

  if (a1)
  {
    v13 = "PROMPT_CARPLAY_ULTRA_MESSAGE";
  }

  else
  {
    v13 = "CarKitSettings";
  }

  if (a1)
  {
    v14 = 0xD00000000000002CLL;
  }

  else
  {
    v14 = 0xD000000000000026;
  }

  if (a1)
  {
    v15 = "PROMPT_CARPLAY_MESSAGE";
  }

  else
  {
    v15 = "PROMPT_CARPLAY_TITLE";
  }

  sub_3E584(v12, (v13 | 0x8000000000000000));

  v16 = sub_4B5EC();

  sub_3E584(v14, (v15 | 0x8000000000000000));

  v17 = sub_4B5EC();

  v20.receiver = v4;
  v20.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v20, "initWithTitle:detailText:symbolName:contentLayout:", v16, v17, 0, 3);

  return v18;
}

Swift::Void __swiftcall CRCarPlayUltraConfirmationViewController.viewDidLoad()()
{
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "viewDidLoad");
  v1 = [objc_opt_self() boldButton];
  if (*(v0 + OBJC_IVAR____TtC14CarKitSettings40CRCarPlayUltraConfirmationViewController_enableUltra))
  {
    v2 = 0xD00000000000002ELL;
  }

  else
  {
    v2 = 0xD000000000000028;
  }

  if (*(v0 + OBJC_IVAR____TtC14CarKitSettings40CRCarPlayUltraConfirmationViewController_enableUltra))
  {
    v3 = "CARPLAY_OPTIONS_PROMPT_CANCEL";
  }

  else
  {
    v3 = "PROMPT_CARPLAY_ULTRA_TITLE";
  }

  sub_3E584(v2, (v3 | 0x8000000000000000));

  v4 = sub_4B5EC();

  [v1 setTitle:v4 forState:0];

  [v1 setEnabled:1];
  [v1 addTarget:v0 action:"confirm" forControlEvents:64];
  v5 = [v0 buttonTray];
  [v5 addButton:v1];

  v6 = [objc_opt_self() linkButton];
  sub_3E584(0xD00000000000001DLL, 0x800000000005B030);
  v7 = sub_4B5EC();

  [v6 setTitle:v7 forState:0];

  [v6 setEnabled:1];
  [v6 addTarget:v0 action:"cancel" forControlEvents:64];
  v8 = [v0 buttonTray];
  [v8 addButton:v6];
}

id sub_14DF8()
{
  v1 = sub_4A93C();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v21 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v20 - v5;
  v7 = sub_49558();
  v20 = *(v2 + 16);
  v20(v6, v7, v1);
  v8 = v0;
  v9 = sub_4A91C();
  v10 = sub_4B7DC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = *(&v8->isa + OBJC_IVAR____TtC14CarKitSettings40CRCarPlayUltraConfirmationViewController_enableUltra);

    _os_log_impl(&dword_0, v9, v10, "Switching to CarPlay Ultra %{BOOL}d", v11, 8u);
  }

  else
  {

    v9 = v8;
  }

  v12 = *(v2 + 8);
  v12(v6, v1);
  v13 = *(&v8->isa + OBJC_IVAR____TtC14CarKitSettings40CRCarPlayUltraConfirmationViewController_enableUltra);
  v14 = [*(&v8->isa + OBJC_IVAR____TtC14CarKitSettings40CRCarPlayUltraConfirmationViewController_vehicleSettingManager) setCarPlayUltraEnabled:*(&v8->isa + OBJC_IVAR____TtC14CarKitSettings40CRCarPlayUltraConfirmationViewController_enableUltra)];
  if ((v14 & 1) == 0)
  {
    v20(v21, v7, v1);
    v15 = v8;
    v16 = sub_4A91C();
    v17 = sub_4B7EC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 67109120;
      *(v18 + 4) = v13;

      _os_log_impl(&dword_0, v16, v17, "Switching to CarPlay Ultra %{BOOL}d failed", v18, 8u);
    }

    else
    {

      v16 = v15;
    }

    v14 = (v12)(v21, v1);
  }

  (*(&v8->isa + OBJC_IVAR____TtC14CarKitSettings40CRCarPlayUltraConfirmationViewController_confirmAction))(v14);
  return [v8 dismissViewControllerAnimated:1 completion:0];
}

id sub_15124()
{
  v1 = sub_4A93C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_49558();
  (*(v2 + 16))(v4, v5, v1);
  v6 = v0;
  v7 = sub_4A91C();
  v8 = sub_4B7DC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = *(&v6->isa + OBJC_IVAR____TtC14CarKitSettings40CRCarPlayUltraConfirmationViewController_enableUltra);

    _os_log_impl(&dword_0, v7, v8, "Canceled switch CarPlay Ultra %{BOOL}d", v9, 8u);
  }

  else
  {

    v7 = v6;
  }

  (*(v2 + 8))(v4, v1);
  return [v6 dismissViewControllerAnimated:1 completion:0];
}

id CRCarPlayUltraConfirmationViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_4B5EC();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_4B5EC();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_4B5EC();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id CRCarPlayUltraConfirmationViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_4B5EC();

  if (a4)
  {
    v12 = sub_4B5EC();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id CRCarPlayUltraConfirmationViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_15614()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_15668()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_15698(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_156F4()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_15724(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

double sub_1577C@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_15794(uint64_t a1, uint64_t a2)
{
  v4 = sub_14628(&qword_7AC00, &qword_52410);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1580C(uint64_t a1, uint64_t a2)
{
  v4 = sub_14628(&qword_7AC00, &qword_52410);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_159CC()
{
  v1 = *(v0 + 112);
  sub_15A8C(v1, *(v0 + 120));
  return v1;
}

uint64_t sub_15A00(uint64_t a1, uint64_t a2)
{
  result = sub_15AD4(*(v2 + 112), *(v2 + 120));
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

uint64_t sub_15A58()
{
  v1 = *(v0 + 128);
  sub_15A8C(v1, *(v0 + 136));
  return v1;
}

uint64_t sub_15A8C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_15A9C(uint64_t a1, uint64_t a2)
{
  result = sub_15AD4(*(v2 + 128), *(v2 + 136));
  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  return result;
}

uint64_t sub_15AD4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_15B04()
{
  v1 = *(v0 + 144);
  sub_15A8C(v1, *(v0 + 152));
  return v1;
}

uint64_t sub_15B38(uint64_t a1, uint64_t a2)
{
  result = sub_15AD4(*(v2 + 144), *(v2 + 152));
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return result;
}

__n128 sub_15B90@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, __int128 a12, __int128 a13, __n128 a14, uint64_t a15)
{
  result = a14;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  v16 = a5[1];
  *(a9 + 32) = *a5;
  *(a9 + 48) = v16;
  *(a9 + 64) = a6;
  *(a9 + 72) = a7;
  *(a9 + 80) = a8;
  *(a9 + 88) = a10;
  *(a9 + 96) = a11;
  *(a9 + 104) = a12;
  *(a9 + 120) = a13;
  *(a9 + 136) = a14;
  *(a9 + 152) = a15;
  return result;
}

uint64_t sub_15BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  sub_15C54(a1, a2, a3, a4);
  return v8;
}

void sub_15C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = _swiftEmptyArrayStorage;
  if (a2)
  {
    v6 = sub_4B5EC();
    if (a4)
    {
LABEL_3:

      v7 = sub_4B5EC();

      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = [objc_opt_self() groupSpecifierWithID:v6 name:v7];

  if (v8)
  {

    *(v4 + 16) = v8;
    swift_beginAccess();
    v9 = v8;
    sub_4B67C();
    if (*(&dword_10 + (*(v4 + 24) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v4 + 24) & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_4B6BC();
    }

    sub_4B6CC();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_15DAC(void (*a1)(void))
{
  a1(*(v1 + 16));
}

uint64_t sub_15DF4()
{
  v1 = v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  (*(v2 + 16))(v3, v2);
  if (v4)
  {
    v5 = sub_4B5EC();
  }

  else
  {
    v5 = 0;
  }

  (*(v2 + 24))(v19, v3, v2);
  v6 = v20;
  if (v20)
  {
    v7 = sub_16114(v19, v20);
    v8 = *(v6 - 8);
    __chkstk_darwin(v7);
    v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v10);
    v11 = sub_4BA7C();
    (*(v8 + 8))(v10, v6);
    sub_14710(v19);
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(v2 + 40))(v3, v2);
  v13 = (*(v2 + 32))(v3, v2);
  if ((*(v2 + 72))(v3, v2))
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  v15 = objc_opt_self();
  v16 = [v15 preferenceSpecifierNamed:v5 target:v11 set:v12 get:v13 detail:ObjCClassFromMetadata cell:(*(v2 + 48))(v3 edit:{v2), 0}];

  result = swift_unknownObjectRelease();
  if (v16)
  {
    swift_beginAccess();
    v18 = v16;
    sub_4B67C();
    if (*(&dword_10 + (*(v1 + 24) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v1 + 24) & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_4B6BC();
    }

    sub_4B6CC();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_16114(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_16158(uint64_t a1)
{
  sub_16250(a1, v5);
  sub_16F40(0, &qword_7AC78, PSSpecifier_ptr);
  if (swift_dynamicCast())
  {
    swift_beginAccess();
    v2 = v4;
    sub_4B67C();
    if (*(&dword_10 + (*(v1 + 24) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v1 + 24) & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_4B6BC();
    }

    sub_4B6CC();
    swift_endAccess();
  }
}

uint64_t sub_16250(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_162AC()
{
  v1 = v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  (*(v2 + 16))(v3, v2);
  v5 = v4;
  v6 = (*(v2 + 88))(v3, v2);
  v8 = v7;
  v9 = (*(v2 + 80))(v3, v2);
  v11 = v10;
  v26 = (*(v2 + 72))(v3, v2);
  v27 = (*(v2 + 48))(v3, v2);
  v12 = (*(v2 + 96))(v3, v2);
  v14 = v13;
  v15 = type metadata accessor for CarPlaySpecifier();
  v16 = objc_allocWithZone(v15);
  v17 = &v16[OBJC_IVAR____TtC14CarKitSettings16CarPlaySpecifier_getAction];
  *v17 = v9;
  v17[1] = v11;
  v18 = &v16[OBJC_IVAR____TtC14CarKitSettings16CarPlaySpecifier_setAction];
  *v18 = v6;
  v18[1] = v8;
  v19 = &v16[OBJC_IVAR____TtC14CarKitSettings16CarPlaySpecifier_buttonTapAction];
  *v19 = v12;
  v19[1] = v14;
  v25 = v6;
  v28 = v9;
  if (v5)
  {
    sub_15A8C(v9, v11);
    v20 = v8;
    sub_15A8C(v6, v8);
    sub_15A8C(v12, v14);

    v21 = sub_4B5EC();

    if (v26)
    {
LABEL_3:
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      goto LABEL_6;
    }
  }

  else
  {
    sub_15A8C(v9, v11);
    v20 = v8;
    sub_15A8C(v6, v8);
    sub_15A8C(v12, v14);
    v21 = 0;
    if (v26)
    {
      goto LABEL_3;
    }
  }

  ObjCClassFromMetadata = 0;
LABEL_6:
  v31.receiver = v16;
  v31.super_class = v15;
  v23 = objc_msgSendSuper2(&v31, "initWithName:target:set:get:detail:cell:edit:", v21, 0, "setSpecifierEnabledWithEnabled:", "specifierEnabled", ObjCClassFromMetadata, v27, 0);

  if (v23)
  {

    v30.receiver = v23;
    v30.super_class = v15;
    v24 = v23;
    objc_msgSendSuper2(&v30, "setTarget:", v24);
    v29.receiver = v24;
    v29.super_class = v15;
    objc_msgSendSuper2(&v29, "setButtonAction:", "buttonTappedWithSender:");
    sub_15AD4(v12, v14);
    sub_15AD4(v28, v11);
    sub_15AD4(v25, v20);
    swift_beginAccess();
    sub_4B67C();
    if (*(&dword_10 + (*(v1 + 24) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v1 + 24) & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_4B6BC();
    }

    sub_4B6CC();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

void CarPlaySpecifier.__allocating_init(name:setAction:getAction:detail:cell:edit:buttonAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t ObjCClassFromMetadata, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v19 = objc_allocWithZone(v12);
  v20 = a6;
  v21 = v19;
  v22 = &v19[OBJC_IVAR____TtC14CarKitSettings16CarPlaySpecifier_getAction];
  *v22 = a5;
  *(v22 + 1) = v20;
  v23 = &v19[OBJC_IVAR____TtC14CarKitSettings16CarPlaySpecifier_setAction];
  *v23 = a3;
  *(v23 + 1) = a4;
  v24 = &v19[OBJC_IVAR____TtC14CarKitSettings16CarPlaySpecifier_buttonTapAction];
  *v24 = a10;
  *(v24 + 1) = a11;
  v31 = a4;
  v30 = v20;
  if (a2)
  {
    sub_15A8C(a5, v20);
    sub_15A8C(a3, a4);
    sub_15A8C(a10, a11);
    v25 = sub_4B5EC();
    v26 = a9;
    if (!ObjCClassFromMetadata)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_15A8C(a5, v20);
  sub_15A8C(a3, a4);
  sub_15A8C(a10, a11);
  v25 = 0;
  v26 = a9;
  if (ObjCClassFromMetadata)
  {
LABEL_3:
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  if (v26)
  {
    v27 = swift_getObjCClassFromMetadata();
  }

  else
  {
    v27 = 0;
  }

  v35.receiver = v21;
  v35.super_class = v12;
  v28 = objc_msgSendSuper2(&v35, "initWithName:target:set:get:detail:cell:edit:", v25, 0, "setSpecifierEnabledWithEnabled:", "specifierEnabled", ObjCClassFromMetadata, a8, v27);

  if (v28)
  {

    v34.receiver = v28;
    v34.super_class = v12;
    v29 = v28;
    objc_msgSendSuper2(&v34, "setTarget:", v29);
    v33.receiver = v29;
    v33.super_class = v12;
    objc_msgSendSuper2(&v33, "setButtonAction:", "buttonTappedWithSender:");
    sub_15AD4(a10, a11);
    sub_15AD4(a5, v30);
    sub_15AD4(a3, v31);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_167F0(void (*a1)(id))
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  if (!(v3 >> 62))
  {
    result = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:

    return v1;
  }

  result = sub_4BA5C();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  v5 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_13;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_13:

    v6 = sub_4B9AC();

    goto LABEL_8;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v5 < *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
  {
    v6 = *(v3 + 8 * v5 + 32);
LABEL_8:
    a1(v6);

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1695C()
{

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t CarPlaySpecifier.getAction.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14CarKitSettings16CarPlaySpecifier_getAction);
  sub_15A8C(v1, *(v0 + OBJC_IVAR____TtC14CarKitSettings16CarPlaySpecifier_getAction + 8));
  return v1;
}

uint64_t CarPlaySpecifier.setAction.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14CarKitSettings16CarPlaySpecifier_setAction);
  sub_15A8C(v1, *(v0 + OBJC_IVAR____TtC14CarKitSettings16CarPlaySpecifier_setAction + 8));
  return v1;
}

uint64_t CarPlaySpecifier.buttonTapAction.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14CarKitSettings16CarPlaySpecifier_buttonTapAction);
  sub_15A8C(v1, *(v0 + OBJC_IVAR____TtC14CarKitSettings16CarPlaySpecifier_buttonTapAction + 8));
  return v1;
}

void CarPlaySpecifier.init(name:setAction:getAction:detail:cell:edit:buttonAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = &v11[OBJC_IVAR____TtC14CarKitSettings16CarPlaySpecifier_getAction];
  *v15 = a5;
  *(v15 + 1) = a6;
  v16 = &v11[OBJC_IVAR____TtC14CarKitSettings16CarPlaySpecifier_setAction];
  *v16 = a3;
  *(v16 + 1) = a4;
  v17 = &v11[OBJC_IVAR____TtC14CarKitSettings16CarPlaySpecifier_buttonTapAction];
  *v17 = a10;
  *(v17 + 1) = a11;
  if (a2)
  {
    sub_15A8C(a5, a6);
    sub_15A8C(a3, a4);
    sub_15A8C(a10, a11);
    v18 = sub_4B5EC();
    v19 = a9;
    if (a7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_15A8C(a5, a6);
    sub_15A8C(a3, a4);
    sub_15A8C(a10, a11);
    v18 = 0;
    v19 = a9;
    if (a7)
    {
LABEL_3:
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v26 = a3;
      v27 = a4;
      if (!v19)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  ObjCClassFromMetadata = 0;
  v26 = a3;
  v27 = a4;
  if (v19)
  {
LABEL_4:
    v19 = swift_getObjCClassFromMetadata();
  }

LABEL_5:
  v21 = type metadata accessor for CarPlaySpecifier();
  v31.receiver = v11;
  v31.super_class = v21;
  v22 = objc_msgSendSuper2(&v31, "initWithName:target:set:get:detail:cell:edit:", v18, 0, "setSpecifierEnabledWithEnabled:", "specifierEnabled", ObjCClassFromMetadata, a8, v19);

  if (v22)
  {

    v30.receiver = v22;
    v30.super_class = v21;
    v23 = v22;
    objc_msgSendSuper2(&v30, "setTarget:", v23);
    v29.receiver = v23;
    v29.super_class = v21;
    objc_msgSendSuper2(&v29, "setButtonAction:", "buttonTappedWithSender:");
    sub_15AD4(a10, a11);
    sub_15AD4(a5, a6);
    sub_15AD4(v26, v27);
  }

  else
  {
    __break(1u);
  }
}

uint64_t CarPlaySpecifier.buttonTapped(sender:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC14CarKitSettings16CarPlaySpecifier_buttonTapAction);
  if (v1)
  {
    return v1(v0);
  }

  return result;
}

NSNumber __swiftcall CarPlaySpecifier.specifierEnabled()()
{
  v1 = *(v0 + OBJC_IVAR____TtC14CarKitSettings16CarPlaySpecifier_getAction);
  if (v1)
  {
    return v1();
  }

  sub_16F40(0, &qword_7AC98, NSNumber_ptr);
  return sub_4B8EC(0);
}

uint64_t sub_16F40(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

Swift::Void __swiftcall CarPlaySpecifier.setSpecifierEnabled(enabled:)(NSNumber enabled)
{
  v2 = *(v1 + OBJC_IVAR____TtC14CarKitSettings16CarPlaySpecifier_setAction);
  if (v2)
  {
    v2(enabled.super.super.isa);
  }
}

id CarPlaySpecifier.__allocating_init(name:target:set:get:detail:cell:edit:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t ObjCClassFromMetadata, uint64_t a7, uint64_t a8)
{
  v24 = a5;
  v25 = a7;
  v23 = a4;
  if (a2)
  {
    v12 = sub_4B5EC();

    v13 = a3[3];
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = 0;
    v13 = a3[3];
    if (v13)
    {
LABEL_3:
      v14 = sub_16114(a3, v13);
      v15 = *(v13 - 8);
      __chkstk_darwin(v14);
      v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v15 + 16))(v17);
      v18 = sub_4BA7C();
      (*(v15 + 8))(v17, v13);
      sub_14710(a3);
      if (!ObjCClassFromMetadata)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  v18 = 0;
  if (ObjCClassFromMetadata)
  {
LABEL_4:
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

LABEL_5:
  if (a8)
  {
    a8 = swift_getObjCClassFromMetadata();
  }

  v19 = objc_allocWithZone(v8);
  v20 = [v19 initWithName:v12 target:v18 set:v23 get:v24 detail:ObjCClassFromMetadata cell:v25 edit:a8];

  swift_unknownObjectRelease();
  return v20;
}

id CarPlaySpecifier.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CarPlaySpecifier.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarPlaySpecifier();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_17464(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1747C(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_17494(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_174C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 160))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1751C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 160) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 160) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void type metadata accessor for PSTableCellType()
{
  if (!qword_7ACC8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_7ACC8);
    }
  }
}

uint64_t sub_17668()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

id sub_176B4()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

uint64_t sub_177A8()
{
  swift_getKeyPath();
  (*(*v0 + 624))();

  swift_beginAccess();
}

uint64_t sub_1782C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result;
  return result;
}

uint64_t sub_17878(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 208);

  return v2(v3);
}

uint64_t sub_178CC(uint64_t a1)
{
  swift_getKeyPath();
  v4 = v1;
  v5 = a1;
  (*(*v1 + 632))();
}

uint64_t sub_17974()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  *(v2 + 16) = v1;
}

uint64_t (*sub_179D8(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 624))(KeyPath);

  v4[5] = OBJC_IVAR____TtC14CarKitSettings21CRWidgetSettingsModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_17B04();
  sub_4A70C();

  v4[7] = sub_17750(v4);
  return sub_17AF8;
}

unint64_t sub_17B04()
{
  result = qword_7ACD0;
  if (!qword_7ACD0)
  {
    type metadata accessor for CRWidgetSettingsModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7ACD0);
  }

  return result;
}

uint64_t type metadata accessor for CRWidgetSettingsModel(uint64_t a1)
{
  result = qword_7C6A0;
  if (!qword_7C6A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_17C00()
{
  swift_getKeyPath();
  (*(*v0 + 624))();

  swift_beginAccess();
  return v0[24];
}

uint64_t sub_17C80@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 248))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_17D20(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[24] == v2)
  {
    v1[24] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = __chkstk_darwin(KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 632))(v5, sub_17E1C);
  }

  return result;
}

uint64_t sub_17E1C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 24) = v2;
  return result;
}

uint64_t (*sub_17E70(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 624))(KeyPath);

  v4[5] = OBJC_IVAR____TtC14CarKitSettings21CRWidgetSettingsModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_17B04();
  sub_4A70C();

  v4[7] = sub_17BB0(v4);
  return sub_17F90;
}

uint64_t sub_17FEC()
{
  swift_getKeyPath();
  (*(*v0 + 624))();

  swift_beginAccess();
  return v0[25];
}

uint64_t sub_1806C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 296))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_18114(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[25] == v2)
  {
    v1[25] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = __chkstk_darwin(KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 632))(v5, sub_18210);
  }

  return result;
}

uint64_t sub_18210()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 25) = v2;
  return result;
}

uint64_t (*sub_18264(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 624))(KeyPath);

  v4[5] = OBJC_IVAR____TtC14CarKitSettings21CRWidgetSettingsModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_17B04();
  sub_4A70C();

  v4[7] = sub_17F9C(v4);
  return sub_18384;
}

uint64_t sub_183E0()
{
  swift_getKeyPath();
  (*(*v0 + 624))();

  swift_beginAccess();
  return v0[26];
}

uint64_t sub_18460@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 344))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_18508(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[26] == v2)
  {
    v1[26] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = __chkstk_darwin(KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 632))(v5, sub_18604);
  }

  return result;
}

uint64_t sub_18604()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 26) = v2;
  return result;
}

uint64_t (*sub_18658(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 624))(KeyPath);

  v4[5] = OBJC_IVAR____TtC14CarKitSettings21CRWidgetSettingsModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_17B04();
  sub_4A70C();

  v4[7] = sub_18390(v4);
  return sub_18778;
}

uint64_t sub_187D4()
{
  swift_getKeyPath();
  (*(*v0 + 624))();

  swift_beginAccess();
  return v0[27];
}

uint64_t sub_18854@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 392))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_188FC(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[27] == v2)
  {
    v1[27] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = __chkstk_darwin(KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 632))(v5, sub_189F8);
  }

  return result;
}

uint64_t sub_189F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 27) = v2;
  return result;
}

uint64_t (*sub_18A4C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 624))(KeyPath);

  v4[5] = OBJC_IVAR____TtC14CarKitSettings21CRWidgetSettingsModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_17B04();
  sub_4A70C();

  v4[7] = sub_18784(v4);
  return sub_18B6C;
}

uint64_t sub_18BCC()
{
  swift_getKeyPath();
  (*(*v0 + 624))();

  swift_beginAccess();
  return v0[28];
}

uint64_t sub_18C4C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 440))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_18CF4(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[28] == v2)
  {
    v1[28] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = __chkstk_darwin(KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 632))(v5, sub_18DF0);
  }

  return result;
}

uint64_t sub_18DF0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 28) = v2;
  return result;
}

uint64_t (*sub_18E44(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 624))(KeyPath);

  v4[5] = OBJC_IVAR____TtC14CarKitSettings21CRWidgetSettingsModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_17B04();
  sub_4A70C();

  v4[7] = sub_18B78(v4);
  return sub_18F64;
}

uint64_t sub_18FC0()
{
  swift_getKeyPath();
  (*(*v0 + 624))();

  swift_beginAccess();
  return v0[29];
}

uint64_t sub_19040@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 488))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_190E8(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[29] == v2)
  {
    v1[29] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = __chkstk_darwin(KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 632))(v5, sub_191E4);
  }

  return result;
}

uint64_t sub_191E4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 29) = v2;
  return result;
}

uint64_t (*sub_19238(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 624))(KeyPath);

  v4[5] = OBJC_IVAR____TtC14CarKitSettings21CRWidgetSettingsModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_17B04();
  sub_4A70C();

  v4[7] = sub_18F70(v4);
  return sub_19358;
}

uint64_t sub_193BC()
{
  swift_getKeyPath();
  (*(*v0 + 624))();

  swift_beginAccess();
  return v0[30];
}

uint64_t sub_1943C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 536))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_194E4(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[30] == v2)
  {
    v1[30] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = __chkstk_darwin(KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 632))(v5, sub_195E0);
  }

  return result;
}

uint64_t sub_195E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 30) = v2;
  return result;
}

uint64_t (*sub_19634(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 624))(KeyPath);

  v4[5] = OBJC_IVAR____TtC14CarKitSettings21CRWidgetSettingsModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_17B04();
  sub_4A70C();

  v4[7] = sub_19364(v4);
  return sub_19754;
}

void sub_19760(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v3 = v3[4];
  swift_getKeyPath();
  sub_4A6FC();

  free(v3);
}

id sub_197F4()
{
  v0 = [objc_opt_self() widgets];
  v1 = [objc_allocWithZone(sub_4A79C()) initWithOptions:v0];

  return v1;
}

unint64_t sub_19864()
{
  result = (*(*v0 + 200))();
  if (!(result >> 62))
  {
    v2 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_10:

    return 0;
  }

  v6 = result;
  v2 = sub_4BA5C();
  result = v6;
  if (!v2)
  {
    goto LABEL_10;
  }

LABEL_3:
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
    goto LABEL_13;
  }

  if ((result & 0xC000000000000001) != 0)
  {
LABEL_13:
    v5 = sub_4B9AC();
    goto LABEL_8;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v4 < *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {
    v5 = *(result + 8 * v4 + 32);

LABEL_8:

    return v5;
  }

  __break(1u);
  return result;
}

void *sub_19950()
{
  v1 = (*(*v0 + 200))();
  v2 = v1;
  if (v1 >> 62)
  {
    v3 = sub_4BA5C();
  }

  else
  {
    v3 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
  }

  if (v3)
  {
    result = sub_1D608(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
      __break(1u);
      goto LABEL_37;
    }

    for (i = 0; i != v3; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = sub_4B9AC();
      }

      else
      {
        v6 = *(v2 + 8 * i + 32);
      }

      v7 = *(*v6 + 120);

      v9 = v7(v8);

      v11 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];
      if (v11 >= v10 >> 1)
      {
        sub_1D608((v10 > 1), v11 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v11 + 1;
      _swiftEmptyArrayStorage[v11 + 4] = v9;
    }
  }

  sub_14628(&qword_7ACD8, &qword_52720);
  sub_1D690(&qword_7ACE0, &qword_7ACD8, &qword_52720);
  sub_1D690(&qword_7ACE8, &qword_7ACF0, &qword_52728);
  v12 = sub_4B65C();

  if (v12 >> 62)
  {
    v13 = sub_4BA5C();
    if (!v13)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v13 = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));
    if (!v13)
    {
      goto LABEL_25;
    }
  }

  result = sub_1D5C8(0, v13 & ~(v13 >> 63), 0);
  if (v13 < 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  for (j = 0; j != v13; ++j)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v15 = sub_4B9AC();
    }

    else
    {
      v15 = *(v12 + 8 * j + 32);
    }

    v16 = *(*v15 + 136);

    v18 = v16(v17);

    v20 = _swiftEmptyArrayStorage[2];
    v19 = _swiftEmptyArrayStorage[3];
    if (v20 >= v19 >> 1)
    {
      sub_1D5C8((v19 > 1), v20 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v20 + 1;
    _swiftEmptyArrayStorage[v20 + 4] = v18;
  }

LABEL_25:

  sub_14628(&qword_7ACF8, &unk_52730);
  sub_1D690(&qword_7AD00, &qword_7ACF8, &unk_52730);
  sub_1D690(&qword_7AD08, &qword_7AD10, &qword_52950);
  v21 = sub_4B65C();

  if (!(v21 >> 62))
  {
    v22 = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8));
    if (v22)
    {
      goto LABEL_27;
    }

LABEL_35:

    return _swiftEmptyArrayStorage;
  }

  v22 = sub_4BA5C();
  if (!v22)
  {
    goto LABEL_35;
  }

LABEL_27:
  result = sub_4B9FC();
  if ((v22 & 0x8000000000000000) == 0)
  {
    v23 = 0;
    do
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v24 = sub_4B9AC();
      }

      else
      {
        v24 = *(v21 + 8 * v23 + 32);
      }

      ++v23;
      v25 = *(&stru_68.size + (swift_isaMask & *v24));
      v26 = v24;
      v25();

      sub_4B9DC();
      sub_4BA0C();
      sub_4BA1C();
      sub_4B9EC();
    }

    while (v22 != v23);
    goto LABEL_35;
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_19E1C(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_1D818(a1, a2);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_19E78(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D818(a1, a2);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_19EB0(uint64_t a1)
{
  v1 = sub_14628(&qword_7AD18, &qword_52750);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = sub_4B72C();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_4B6FC();

  v6 = sub_4B6EC();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = v5;

  sub_1A384(0, 0, v3, &unk_52878, v7);
}

uint64_t sub_1A030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_4B6FC();
  v4[6] = sub_4B6EC();
  v6 = sub_4B6DC();
  v4[7] = v6;
  v4[8] = v5;

  return _swift_task_switch(sub_1A0C8, v6, v5);
}

uint64_t sub_1A0C8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (!Strong)
  {
LABEL_4:

    v2 = v0[1];

    return v2();
  }

  if ((*(*Strong + 440))(Strong))
  {

    goto LABEL_4;
  }

  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_1A1F8;

  return sub_1BABC();
}

uint64_t sub_1A1F8()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_1A318, v3, v2);
}

uint64_t sub_1A318()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_14628(&qword_7AD18, &qword_52750);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1E3BC(a3, v25 - v10);
  v12 = sub_4B72C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1E284(v11, &qword_7AD18, &qword_52750);
  }

  else
  {
    sub_4B71C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_4B6DC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_4B60C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1E284(a3, &qword_7AD18, &qword_52750);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1E284(a3, &qword_7AD18, &qword_52750);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1A674(uint64_t a1, uint64_t a2)
{
  v3 = sub_4A5EC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_4A5DC();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1A768()
{
  v1[2] = v0;
  v2 = sub_4A93C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_4B6FC();
  v1[6] = sub_4B6EC();
  v4 = sub_4B6DC();
  v1[7] = v4;
  v1[8] = v3;

  return _swift_task_switch(sub_1A85C, v4, v3);
}

uint64_t sub_1A85C(uint64_t a1)
{
  v3 = v1[4];
  v2 = v1[5];
  v4 = v1[3];
  v5 = sub_49558();
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_4A91C();
  v7 = sub_4B80C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "Loading initial widget state", v8, 2u);
  }

  v10 = v1[4];
  v9 = v1[5];
  v11 = v1[3];

  (*(v10 + 8))(v9, v11);
  v12 = swift_task_alloc();
  v1[9] = v12;
  *v12 = v1;
  v12[1] = sub_1A9A8;

  return sub_1BABC();
}

uint64_t sub_1A9A8(char a1)
{
  v2 = *v1;
  *(*v1 + 80) = a1;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);

  return _swift_task_switch(sub_1AAD0, v4, v3);
}

uint64_t sub_1AAD0()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 16);

  v3 = (*(*v2 + 496))((v1 & 1) == 0);
  v4 = (*(*v2 + 488))(v3);
  (*(*v2 + 448))(v4 & 1);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1ABFC()
{
  v1 = v0;
  v2 = sub_14628(&qword_7AD18, &qword_52750);
  __chkstk_darwin(v2 - 8);
  v4 = &v27 - v3;
  v5 = sub_4A93C();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v27 - v11;
  result = (*(*v0 + 536))(v10);
  if ((result & 1) == 0)
  {
    v14 = sub_49558();
    v28 = *(v6 + 16);
    v28(v12, v14, v5);
    v15 = sub_4A91C();
    v16 = sub_4B80C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v27 = v14;
      *v17 = 0;
      _os_log_impl(&dword_0, v15, v16, "Resetting widget state", v17, 2u);
      v14 = v27;
    }

    v18 = *(v6 + 8);
    v18(v12, v5);
    (*(*v1 + 544))(1);
    v19 = v1[5];
    ObjectType = swift_getObjectType();
    (*(v19 + 32))(ObjectType, v19);
    v28(v9, v14, v5);
    v21 = sub_4A91C();
    v22 = sub_4B80C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "Resetted widget state", v23, 2u);
    }

    v18(v9, v5);
    v24 = sub_4B72C();
    (*(*(v24 - 8) + 56))(v4, 1, 1, v24);
    sub_4B6FC();

    v25 = sub_4B6EC();
    v26 = swift_allocObject();
    v26[2] = v25;
    v26[3] = &protocol witness table for MainActor;
    v26[4] = v1;
    sub_1DC2C(0, 0, v4, 0, 0, &unk_52760, v26);

    return sub_1E284(v4, &qword_7AD18, &qword_52750);
  }

  return result;
}

uint64_t sub_1B004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_4B6FC();
  v4[4] = sub_4B6EC();
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_1B0B4;

  return sub_1BABC();
}

uint64_t sub_1B0B4()
{

  v1 = sub_4B6DC();

  return _swift_task_switch(sub_1B1F0, v1, v0);
}

uint64_t sub_1B1F0()
{
  v1 = *(v0 + 16);

  (*(*v1 + 544))(0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B284()
{
  v1[3] = v0;
  v2 = sub_4A93C();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v3 = sub_14628(&qword_7AD20, &qword_52770);
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v4 = sub_14628(&qword_7AD28, &qword_52778);
  v1[11] = v4;
  v1[12] = *(v4 - 8);
  v1[13] = swift_task_alloc();
  v1[14] = sub_4B6FC();
  v1[15] = sub_4B6EC();
  v6 = sub_4B6DC();
  v1[16] = v6;
  v1[17] = v5;

  return _swift_task_switch(sub_1B458, v6, v5);
}

uint64_t sub_1B458()
{
  v1 = v0[3];

  v2 = sub_4B6EC();
  v3 = swift_allocObject();
  v3[2] = v2;
  v3[3] = &protocol witness table for MainActor;
  v3[4] = v1;
  sub_16F40(0, &qword_7AD30, CRSWidgetLayoutState_ptr);
  sub_4A75C();
  sub_4A73C();
  v4 = sub_4B6EC();
  v0[18] = v4;
  v5 = swift_task_alloc();
  v0[19] = v5;
  *v5 = v0;
  v5[1] = sub_1B5C8;
  v6 = v0[8];

  return _s11Observation12ObservationsV8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 2, v4, &protocol witness table for MainActor, v6);
}

uint64_t sub_1B5C8()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 128);
    v5 = *(v2 + 136);

    return _swift_task_switch(sub_1B6DC, v4, v5);
  }

  return result;
}

uint64_t sub_1B6DC(uint64_t a1)
{
  v2 = v1[2];
  if (v2)
  {
    v3 = v1[7];
    v4 = v1[5];
    v5 = sub_49558();
    v36 = *(v4 + 16);
    v37 = v5;
    v36(v3);
    v6 = v2;
    v7 = sub_4A91C();
    v8 = sub_4B80C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138543362;
      *(v9 + 4) = v6;
      *v10 = v2;
      v11 = v6;
      _os_log_impl(&dword_0, v7, v8, "Saving widget state: %{public}@", v9, 0xCu);
      sub_1E284(v10, &qword_7AD38, &qword_52780);
    }

    v13 = v1[6];
    v12 = v1[7];
    v14 = v1[4];
    v15 = v1[5];
    v16 = v1[3];

    v38 = *(v15 + 8);
    v38(v12, v14);
    v17 = *(v16 + 40);
    ObjectType = swift_getObjectType();
    (*(v17 + 24))(v6, ObjectType, v17);
    (v36)(v13, v37, v14);
    v19 = v6;
    v20 = sub_4A91C();
    v21 = sub_4B80C();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138543362;
      *(v22 + 4) = v19;
      *v23 = v2;
      v24 = v19;
      _os_log_impl(&dword_0, v20, v21, "Saved widget state: %{public}@", v22, 0xCu);
      sub_1E284(v23, &qword_7AD38, &qword_52780);

      v19 = v20;
      v20 = v24;
    }

    v38(v1[6], v1[4]);
    v25 = sub_4B6EC();
    v1[18] = v25;
    v26 = swift_task_alloc();
    v1[19] = v26;
    *v26 = v1;
    v26[1] = sub_1B5C8;
    v27 = v1[8];

    return _s11Observation12ObservationsV8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v1 + 2, v25, &protocol witness table for MainActor, v27);
  }

  else
  {
    v29 = v1[12];
    v28 = v1[13];
    v31 = v1[10];
    v30 = v1[11];
    v32 = v1[8];
    v33 = v1[9];

    (*(v33 + 8))(v31, v32);
    (*(v29 + 8))(v28, v30);

    v34 = v1[1];

    return v34();
  }
}

uint64_t sub_1BABC()
{
  v1[4] = v0;
  v2 = sub_4A93C();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  sub_4B6FC();
  v1[11] = sub_4B6EC();
  v4 = sub_4B6DC();
  v1[12] = v4;
  v1[13] = v3;

  return _swift_task_switch(sub_1BBD4, v4, v3);
}

uint64_t sub_1BBD4(uint64_t a1)
{
  v2 = v1[10];
  v3 = v1[5];
  v4 = v1[6];
  v5 = sub_49558();
  v1[14] = v5;
  v6 = *(v4 + 16);
  v1[15] = v6;
  v1[16] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);
  v7 = sub_4A91C();
  v8 = sub_4B80C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "fetching widget state", v9, 2u);
  }

  v10 = v1[10];
  v11 = v1[5];
  v12 = v1[6];
  v13 = v1[4];

  v14 = *(v12 + 8);
  v1[17] = v14;
  v14(v10, v11);
  v15 = *(v13 + 40);
  ObjectType = swift_getObjectType();
  v19 = (*(v15 + 16) + **(v15 + 16));
  v17 = swift_task_alloc();
  v1[18] = v17;
  *v17 = v1;
  v17[1] = sub_1BDC8;

  return v19(ObjectType, v15);
}

uint64_t sub_1BDC8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 152) = a1;
  *(v4 + 160) = v1;

  v5 = *(v3 + 104);
  v6 = *(v3 + 96);
  if (v1)
  {
    v7 = sub_1C874;
  }

  else
  {
    v7 = sub_1BF0C;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1BF0C()
{
  v1 = v0[15];
  v2 = v0[14];
  v3 = v0[9];
  v4 = v0[5];

  v1(v3, v2, v4);
  v5 = sub_4A91C();
  v6 = sub_4B80C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "fetched widget state", v7, 2u);
  }

  v8 = v0[19];
  v9 = v0[17];
  v10 = v0[9];
  v11 = v0[5];
  v12 = v0[4];

  v9(v10, v11);
  (*(*v12 + 256))([v8 showWidgets]);
  (*(*v12 + 304))([v8 showWallpaper]);
  (*(*v12 + 352))([v8 showSuggestions]);
  (*(*v12 + 400))([v8 smartRotate]);
  v13 = [v8 widgetStackRows];
  sub_16F40(0, &qword_7AD40, CRSWidgetStackRow_ptr);
  v14 = sub_4B69C();

  if (v14 >> 62)
  {
    goto LABEL_27;
  }

  v15 = *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8));
LABEL_5:
  v60 = v0;
  if (v15)
  {
    result = sub_4B9FC();
    if ((v15 & 0x8000000000000000) == 0)
    {
      type metadata accessor for CRWidgetStackRowModel(0);
      v17 = 0;
      while (1)
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v18 = sub_4B9AC();
        }

        else
        {
          if ((v17 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_26:
            __break(1u);
LABEL_27:
            v15 = sub_4BA5C();
            goto LABEL_5;
          }

          if (v17 >= *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_26;
          }

          v18 = *(v14 + 8 * v17 + 32);
        }

        ++v17;
        sub_21420(v18);
        sub_4B9DC();
        sub_4BA0C();
        sub_4BA1C();
        sub_4B9EC();
        if (v15 == v17)
        {
          goto LABEL_14;
        }
      }
    }

    __break(1u);
    goto LABEL_61;
  }

LABEL_14:

  v19 = v0[4];
  v20 = (*(*v19 + 208))(_swiftEmptyArrayStorage);
  v21 = (*(*v19 + 200))(v20);
  v22 = v21;
  if (v21 >> 62)
  {
    v23 = sub_4BA5C();
    if (!v23)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v23 = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8));
    if (!v23)
    {
      goto LABEL_29;
    }
  }

  result = sub_1D608(0, v23 & ~(v23 >> 63), 0);
  if (v23 < 0)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  for (i = 0; i != v23; ++i)
  {
    if ((v22 & 0xC000000000000001) != 0)
    {
      v25 = sub_4B9AC();
    }

    else
    {
      v25 = *(v22 + 8 * i + 32);
    }

    v26 = *(*v25 + 120);

    v28 = v26(v27);

    v30 = _swiftEmptyArrayStorage[2];
    v29 = _swiftEmptyArrayStorage[3];
    if (v30 >= v29 >> 1)
    {
      sub_1D608((v29 > 1), v30 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v30 + 1;
    _swiftEmptyArrayStorage[v30 + 4] = v28;
  }

LABEL_29:

  v0[2] = _swiftEmptyArrayStorage;
  sub_14628(&qword_7ACD8, &qword_52720);
  sub_1D690(&qword_7ACE0, &qword_7ACD8, &qword_52720);
  sub_1D690(&qword_7ACE8, &qword_7ACF0, &qword_52728);
  v31 = sub_4B65C();

  if (v31 >> 62)
  {
    v32 = sub_4BA5C();
    if (!v32)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v32 = *(&dword_10 + (v31 & 0xFFFFFFFFFFFFFF8));
    if (!v32)
    {
      goto LABEL_41;
    }
  }

  result = sub_1D5C8(0, v32 & ~(v32 >> 63), 0);
  if (v32 < 0)
  {
LABEL_62:
    __break(1u);
    return result;
  }

  for (j = 0; j != v32; ++j)
  {
    if ((v31 & 0xC000000000000001) != 0)
    {
      v34 = sub_4B9AC();
    }

    else
    {
      v34 = *(v31 + 8 * j + 32);
    }

    v35 = *(*v34 + 136);

    v37 = v35(v36);

    v39 = _swiftEmptyArrayStorage[2];
    v38 = _swiftEmptyArrayStorage[3];
    if (v39 >= v38 >> 1)
    {
      sub_1D5C8((v38 > 1), v39 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v39 + 1;
    _swiftEmptyArrayStorage[v39 + 4] = v37;
  }

LABEL_41:

  v0[3] = _swiftEmptyArrayStorage;
  sub_14628(&qword_7ACF8, &unk_52730);
  sub_1D690(&qword_7AD00, &qword_7ACF8, &unk_52730);
  sub_1D690(&qword_7AD08, &qword_7AD10, &qword_52950);
  v40 = sub_4B65C();

  if (v40 >> 62)
  {
    goto LABEL_54;
  }

  for (k = *(&dword_10 + (v40 & 0xFFFFFFFFFFFFFF8)); k; k = sub_4BA5C())
  {
    v42 = 0;
    while (1)
    {
      if ((v40 & 0xC000000000000001) != 0)
      {
        v43 = sub_4B9AC();
      }

      else
      {
        if (v42 >= *(&dword_10 + (v40 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_53;
        }

        v43 = *(v40 + 8 * v42 + 32);
      }

      v44 = v43;
      v45 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      if (!(*&stru_B8.segname[(swift_isaMask & *v43) + 16])())
      {
        sub_400F8(v44);
      }

      (*(&stru_B8.size + (swift_isaMask & *v44)))();

      ++v42;
      if (v45 == k)
      {
        goto LABEL_55;
      }
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    ;
  }

LABEL_55:
  v46 = v60[15];
  v47 = v60[14];
  v48 = v60[8];
  v49 = v60[5];

  v46(v48, v47, v49);
  v50 = sub_4A91C();
  v51 = sub_4B80C();
  v52 = os_log_type_enabled(v50, v51);
  v53 = v60[19];
  v54 = v60[17];
  v55 = v60[8];
  v56 = v60[5];
  if (v52)
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_0, v50, v51, "updated widget state model", v57, 2u);
  }

  v54(v55, v56);

  v58 = v60[1];
  v59 = v60[20] == 0;

  return v58(v59);
}

uint64_t sub_1C874()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 112);
  v3 = *(v0 + 56);
  v4 = *(v0 + 40);

  v1(v3, v2, v4);
  swift_errorRetain();
  v5 = sub_4A91C();
  v6 = sub_4B7EC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_0, v5, v6, "Error fetching widget state: %{public}@", v7, 0xCu);
    sub_1E284(v8, &qword_7AD38, &qword_52780);
  }

  else
  {
  }

  (*(v0 + 136))(*(v0 + 56), *(v0 + 40));

  v10 = *(v0 + 8);
  v11 = *(v0 + 160) == 0;

  return v10(v11);
}

void *sub_1CA48()
{
  v1 = (*(*v0 + 200))();
  v2 = v1;
  if (v1 >> 62)
  {
    v3 = sub_4BA5C();
  }

  else
  {
    v3 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
  }

  if (v3)
  {
    result = sub_1D608(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
      __break(1u);
      goto LABEL_40;
    }

    for (i = 0; i != v3; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = sub_4B9AC();
      }

      else
      {
        v6 = *(v2 + 8 * i + 32);
      }

      v7 = *(*v6 + 120);

      v9 = v7(v8);

      v11 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];
      if (v11 >= v10 >> 1)
      {
        sub_1D608((v10 > 1), v11 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v11 + 1;
      _swiftEmptyArrayStorage[v11 + 4] = v9;
    }
  }

  sub_14628(&qword_7ACD8, &qword_52720);
  sub_1D690(&qword_7ACE0, &qword_7ACD8, &qword_52720);
  sub_1D690(&qword_7ACE8, &qword_7ACF0, &qword_52728);
  v12 = sub_4B65C();

  if (v12 >> 62)
  {
    v13 = sub_4BA5C();
    if (v13)
    {
LABEL_14:
      result = sub_1D5C8(0, v13 & ~(v13 >> 63), 0);
      if ((v13 & 0x8000000000000000) == 0)
      {
        for (j = 0; j != v13; ++j)
        {
          if ((v12 & 0xC000000000000001) != 0)
          {
            v15 = sub_4B9AC();
          }

          else
          {
            v15 = *(v12 + 8 * j + 32);
          }

          v16 = *(*v15 + 136);

          v18 = v16(v17);

          v20 = _swiftEmptyArrayStorage[2];
          v19 = _swiftEmptyArrayStorage[3];
          if (v20 >= v19 >> 1)
          {
            sub_1D5C8((v19 > 1), v20 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v20 + 1;
          _swiftEmptyArrayStorage[v20 + 4] = v18;
        }

        goto LABEL_25;
      }

LABEL_40:
      __break(1u);
      return result;
    }
  }

  else
  {
    v13 = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));
    if (v13)
    {
      goto LABEL_14;
    }
  }

LABEL_25:

  sub_14628(&qword_7ACF8, &unk_52730);
  sub_1D690(&qword_7AD00, &qword_7ACF8, &unk_52730);
  sub_1D690(&qword_7AD08, &qword_7AD10, &qword_52950);
  v21 = sub_4B65C();

  if (v21 >> 62)
  {
    goto LABEL_37;
  }

  for (k = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8)); k; k = sub_4BA5C())
  {
    for (m = 0; ; ++m)
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v24 = sub_4B9AC();
      }

      else
      {
        if (m >= *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_36;
        }

        v24 = *(v21 + 8 * m + 32);
      }

      v25 = v24;
      v26 = m + 1;
      if (__OFADD__(m, 1))
      {
        break;
      }

      v27 = sub_400F8(v24);
      (*(&stru_B8.size + (swift_isaMask & *v25)))(v27);

      if (v26 == k)
      {
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    ;
  }
}

uint64_t sub_1CFC0()
{

  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC14CarKitSettings21CRWidgetSettingsModel___observationRegistrar;
  v2 = sub_4A72C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1D040()
{

  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC14CarKitSettings21CRWidgetSettingsModel___observationRegistrar;
  v2 = sub_4A72C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return _swift_deallocClassInstance(v0, v3, v4);
}

id sub_1D0FC()
{
  v1 = (*(*v0 + 248))();
  v2 = (*(*v0 + 296))();
  v3 = (*(*v0 + 344))();
  v4 = (*(*v0 + 392))();
  v5 = (*(*v0 + 200))();
  v6 = v5;
  if (!(v5 >> 62))
  {
    v7 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_11:

    v11 = objc_allocWithZone(CRSWidgetLayoutState);
    sub_16F40(0, &qword_7AD40, CRSWidgetStackRow_ptr);
    isa = sub_4B68C().super.isa;

    v13 = [v11 initWithShowWidgets:v1 & 1 showWallpaper:v2 & 1 showSuggestions:v3 & 1 smartRotate:v4 & 1 widgetStackRows:isa];

    return v13;
  }

  v7 = sub_4BA5C();
  if (!v7)
  {
    goto LABEL_11;
  }

LABEL_3:
  result = sub_4B9FC();
  if ((v7 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = sub_4B9AC();
      }

      else
      {
        v10 = *(v6 + 8 * v9 + 32);
      }

      ++v9;
      (*(*v10 + 152))();

      sub_4B9DC();
      sub_4BA0C();
      sub_4BA1C();
      sub_4B9EC();
    }

    while (v7 != v9);
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D3D8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D4D0;

  return v6(a1);
}

uint64_t sub_1D4D0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_1D5C8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D6E4(a1, a2, a3, *v3, &qword_7B028, &qword_52890, &qword_7AD10, &qword_52950);
  *v3 = result;
  return result;
}

void *sub_1D608(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D6E4(a1, a2, a3, *v3, &qword_7B030, qword_52898, &qword_7ACF0, &qword_52728);
  *v3 = result;
  return result;
}

uint64_t sub_1D648(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1D690(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D648(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1D6E4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_14628(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_14628(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_1D818(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v3 + 16) = _swiftEmptyArrayStorage;
  *(v3 + 24) = 16843009;
  *(v3 + 28) = 1;
  *(v3 + 29) = 0;
  v6 = [objc_opt_self() widgets];
  v7 = [objc_allocWithZone(sub_4A79C()) initWithOptions:v6];

  *(v3 + 48) = v7;
  sub_4A71C();
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;
  v8 = *(v3 + 48);
  v9 = objc_allocWithZone(sub_4A7EC());
  swift_unknownObjectRetain();
  v10 = v8;
  v11 = sub_4A7DC();
  *(v3 + 56) = v11;
  swift_allocObject();
  swift_weakInit();
  v12 = v11;

  sub_4A7CC();

  v13 = [objc_opt_self() defaultCenter];
  v14 = CRSWidgetLayoutStateChangedNotification;
  v15 = [objc_opt_self() currentQueue];
  v16 = swift_allocObject();
  swift_weakInit();

  v20[4] = sub_1E660;
  v20[5] = v16;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  v20[2] = sub_1A674;
  v20[3] = &unk_6EC80;
  v17 = _Block_copy(v20);

  v18 = [v13 addObserverForName:v14 object:0 queue:v15 usingBlock:v17];
  _Block_release(v17);
  swift_unknownObjectRelease();

  return v3;
}

uint64_t sub_1DAA4()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DB38;

  return sub_1B004(v3, v4, v5, v2);
}

uint64_t sub_1DB38()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1DC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = a6;
  v28 = a5;
  v29 = a1;
  v11 = sub_14628(&qword_7AD18, &qword_52750);
  __chkstk_darwin(v11 - 8);
  v13 = &v27 - v12;
  if (*(a7 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v14 = sub_4B6DC();
    v16 = v15;
    swift_unknownObjectRelease();
    isCurrentExecutorWithFlags = swift_task_isCurrentExecutorWithFlags();
  }

  else
  {
    v14 = 0;
    v16 = 0;
    isCurrentExecutorWithFlags = 1;
  }

  sub_1E3BC(a3, v13);
  v18 = sub_4B72C();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v13, 1, v18) == 1)
  {
    sub_1E284(v13, &qword_7AD18, &qword_52750);
  }

  else
  {
    sub_4B71C();
    (*(v19 + 8))(v13, v18);
  }

  if (!a2)
  {
    v25 = swift_allocObject();
    *(v25 + 16) = v30;
    *(v25 + 24) = a7;
    swift_unknownObjectRetain();

    if (v16 | v14)
    {
      v36[0] = 0;
      v36[1] = 0;
      v26 = v36;
      v36[2] = v14;
      v36[3] = v16;
      if (a4 == 1)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v26 = 0;
      if (a4 == 1)
      {
LABEL_17:
        v23 = swift_task_create();
        if ((isCurrentExecutorWithFlags & 1) == 0)
        {
          return v23;
        }

        goto LABEL_12;
      }
    }

    v35[4] = 6;
    v35[5] = v26;
    v35[6] = a4;
    v35[7] = v28;
    goto LABEL_17;
  }

  v20 = sub_4B60C() + 32;
  v21 = swift_allocObject();
  *(v21 + 16) = v30;
  *(v21 + 24) = a7;
  swift_unknownObjectRetain();

  if (v16 | v14)
  {
    v35[0] = 0;
    v35[1] = 0;
    v22 = v35;
    v35[2] = v14;
    v35[3] = v16;
    if (a4 == 1)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v22 = 0;
  if (a4 != 1)
  {
LABEL_10:
    v34[0] = 6;
    v34[1] = v22;
    v34[2] = a4;
    v34[3] = v28;
    v22 = v34;
  }

LABEL_11:
  v31 = 7;
  v32 = v22;
  v33 = v20;
  v23 = swift_task_create();

  if (isCurrentExecutorWithFlags)
  {
LABEL_12:
    swift_task_immediate();
  }

  return v23;
}

void sub_1DF94(void *a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = (*(*v3 + 248))();
  v5 = (*(*v3 + 296))();
  v6 = (*(*v3 + 344))();
  v15 = (*(*v3 + 392))();
  v7 = (*(*v3 + 200))();
  v8 = v7;
  if (!(v7 >> 62))
  {
    v9 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
    v16 = v6;
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_11:

    v12 = objc_allocWithZone(CRSWidgetLayoutState);
    sub_16F40(0, &qword_7AD40, CRSWidgetStackRow_ptr);
    isa = sub_4B68C().super.isa;

    v14 = [v12 initWithShowWidgets:v4 & 1 showWallpaper:v5 & 1 showSuggestions:v16 & 1 smartRotate:v15 & 1 widgetStackRows:isa];

    *a1 = v14;
    return;
  }

  v9 = sub_4BA5C();
  v16 = v6;
  if (!v9)
  {
    goto LABEL_11;
  }

LABEL_3:
  sub_4B9FC();
  if ((v9 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = sub_4B9AC();
      }

      else
      {
        v11 = *(v8 + 8 * v10 + 32);
      }

      ++v10;
      (*(*v11 + 152))();

      sub_4B9DC();
      sub_4BA0C();
      sub_4BA1C();
      sub_4B9EC();
    }

    while (v9 != v10);
    goto LABEL_11;
  }

  __break(1u);
}

uint64_t sub_1E284(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_14628(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1E2EC(uint64_t a1)
{
  result = sub_4A72C();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E3BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_14628(&qword_7AD18, &qword_52750);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E42C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1E464(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E76C;

  return sub_1D3D8(a1, v4);
}

uint64_t sub_1E51C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DB38;

  return sub_1D3D8(a1, v4);
}

uint64_t sub_1E5D4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1E60C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1CA48();
  }

  return result;
}

uint64_t sub_1E668(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E680()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1E6C0()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E76C;

  return sub_1A030(v3, v4, v5, v2);
}

uint64_t sub_1E798()
{
  v1 = v0[19];
  v2 = [v1 iconLayoutController];
  v0[20] = v2;
  v3 = [v1 vehicleId];
  if (!v3)
  {
    sub_4B5FC();
    v3 = sub_4B5EC();
  }

  v0[21] = v3;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1E918;
  v4 = swift_continuation_init();
  v0[17] = sub_14628(&qword_7B038, &qword_528B8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1EB10;
  v0[13] = &unk_6ED20;
  v0[14] = v4;
  [v2 fetchWidgetStateForVehicleID:v3 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1E918()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_1EA98;
  }

  else
  {
    v2 = sub_1EA28;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1EA28()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1EA98()
{
  v1 = v0[21];
  v2 = v0[20];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1EB10(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_16114((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_14628(&qword_7B040, &unk_52900);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

void sub_1EC00(uint64_t a1)
{
  v2 = v1;
  v4 = [v1 iconLayoutController];
  v5 = [v2 vehicleId];
  if (!v5)
  {
    sub_4B5FC();
    v6 = sub_4B5EC();

    v5 = v6;
  }

  v7 = v5;
  [v4 setWidgetState:a1 forVehicleID:?];
}

void sub_1ECBC()
{
  v1 = [v0 iconLayoutController];
  v2 = [v0 vehicleId];
  if (!v2)
  {
    sub_4B5FC();
    v3 = sub_4B5EC();

    v2 = v3;
  }

  v4 = v2;
  [v1 resetWidgetStateForVehicleID:?];
}

uint64_t sub_1ED64()
{
  v1 = [v0 vehicleId];
  v2 = sub_4B5FC();

  return v2;
}

uint64_t sub_1EDBC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1EE48;

  return sub_1E778();
}

uint64_t sub_1EE48(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1EF48@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14CarKitSettings18CRWidgetStackModel_id;
  v4 = sub_4A6AC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1F020()
{
  swift_getKeyPath();
  (*(*v0 + 240))();

  swift_beginAccess();
}

uint64_t sub_1F0A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  return result;
}

uint64_t sub_1F0F0(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 144);

  return v2(v3);
}

uint64_t sub_1F144(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC14CarKitSettings18CRWidgetStackModel__widgets;
  swift_beginAccess();

  v5 = sub_21AF8(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v8 = __chkstk_darwin(KeyPath);
    v9 = v1;
    v10 = a1;
    (*(*v1 + 248))(v8, sub_21D38);
  }
}

uint64_t (*sub_1F260(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  (*(*v1 + 240))();

  v4[5] = OBJC_IVAR____TtC14CarKitSettings18CRWidgetStackModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_228EC(&qword_7B048, type metadata accessor for CRWidgetStackModel, &unk_52A20);
  sub_4A70C();

  v4[7] = sub_1EFC0(v4);
  return sub_1F39C;
}

BOOL sub_1F3B8()
{
  v1 = (*(*v0 + 168))();
  if (v1 >> 62)
  {
    v2 = sub_4BA5C();
  }

  else
  {
    v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
  }

  return v2 >= *(v0 + OBJC_IVAR____TtC14CarKitSettings18CRWidgetStackModel_maxWidgets);
}

void *sub_1F44C()
{
  v1 = (*(*v0 + 136))();
  v2 = v1;
  if (v1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_4BA5C())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = sub_4B9AC();
      }

      else
      {
        if (v4 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_15;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      (*&stru_B8.segname[(swift_isaMask & *v5) - 8])();
      sub_22358();
      if (sub_4B5DC())
      {
      }

      else
      {
        sub_4B9DC();
        sub_4BA0C();
        sub_4BA1C();
        sub_4B9EC();
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:

  return _swiftEmptyArrayStorage;
}

void *sub_1F638()
{
  v1 = (*(*v0 + 136))();
  v2 = v1;
  if (v1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_4BA5C())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = sub_4B9AC();
      }

      else
      {
        if (v4 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_15;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      (*&stru_B8.segname[(swift_isaMask & *v5) - 8])();
      sub_223AC();
      sub_4B66C();
      sub_4B66C();
      if (v10 == v9)
      {
        sub_4B9DC();
        sub_4BA0C();
        sub_4BA1C();
        sub_4B9EC();
      }

      else
      {
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1F824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_4A71C();
  v7 = OBJC_IVAR____TtC14CarKitSettings18CRWidgetStackModel_id;
  v8 = sub_4A6AC();
  (*(*(v8 - 8) + 32))(v6 + v7, a1, v8);
  *(v6 + OBJC_IVAR____TtC14CarKitSettings18CRWidgetStackModel__widgets) = a2;
  *(v6 + OBJC_IVAR____TtC14CarKitSettings18CRWidgetStackModel_maxWidgets) = a3;
  return v6;
}

uint64_t sub_1F8E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_4A71C();
  v7 = OBJC_IVAR____TtC14CarKitSettings18CRWidgetStackModel_id;
  v8 = sub_4A6AC();
  (*(*(v8 - 8) + 32))(v3 + v7, a1, v8);
  *(v3 + OBJC_IVAR____TtC14CarKitSettings18CRWidgetStackModel__widgets) = a2;
  *(v3 + OBJC_IVAR____TtC14CarKitSettings18CRWidgetStackModel_maxWidgets) = a3;
  return v3;
}

void sub_1F988(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v11 = sub_4A6AC();
  __chkstk_darwin(v11 - 8);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CRWidgetModel(0);
  v14 = a3;
  sub_1F818();
  v15 = sub_3F7E8(v13, v14, 0);
  v16 = sub_400F8(v15);
  if (!v16)
  {
    goto LABEL_37;
  }

  if ((*(*v7 + 160))())
  {

    goto LABEL_37;
  }

  v17 = *(&stru_B8.size + (swift_isaMask & *v15));
  v18 = v16;
  v17(v16);
  if ((a6 & 1) == 0)
  {
    sub_14628(&qword_7B060, &unk_53070);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_52910;
    *(v25 + 32) = v15;
    v26 = *(*v7 + 152);
    v27 = v15;
    v28 = v26(v71);
    sub_22600(a5, a5, v25);

    v24 = v28(v71, 0);
    goto LABEL_8;
  }

  v19 = *(*v7 + 152);
  v20 = v15;
  v21 = v19(v71);
  v23 = v22;
  sub_4B67C();
  if (*(&dword_10 + (*v23 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*v23 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    goto LABEL_41;
  }

  while (1)
  {
    sub_4B6CC();
    v24 = (v21)(v71, 0);
LABEL_8:
    v29 = (*(*v7 + 176))(v24);
    if (!(v29 >> 62))
    {
      if (*(&dword_10 + (v29 & 0xFFFFFFFFFFFFFF8)) >= 1)
      {
        goto LABEL_10;
      }

LABEL_36:

      v15 = v18;
LABEL_37:

      return;
    }

LABEL_35:
    v40 = v29;
    v41 = sub_4BA5C();
    v29 = v40;
    if (v41 < 1)
    {
      goto LABEL_36;
    }

LABEL_10:
    v64 = v18;
    v65 = v15;
    v63 = v29;
    v30 = *(*v7 + 152);
    v60 = *v7 + 152;
    v61 = v30;
    v29 = v30(v71);
    v59 = v29;
    v66 = v31;
    v21 = *v31;
    v32 = *v31 >> 62;
    v62 = v7;
    v33 = (v21 & 0xFFFFFFFFFFFFFF8);
    if (v32)
    {
      v29 = sub_4BA5C();
      v18 = v29;
    }

    else
    {
      v18 = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8));
    }

    v7 = 0;
    while (1)
    {
      if (v18 == v7)
      {
        v33 = v66;
        if (*v66 >> 62)
        {
          v7 = sub_4BA5C();
        }

        else
        {
          v7 = *(&dword_10 + (*v66 & 0xFFFFFFFFFFFFFF8));
        }

        goto LABEL_29;
      }

      if ((v21 & 0xC000000000000001) != 0)
      {
        v34 = sub_4B9AC();
      }

      else
      {
        if (v7 >= *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v34 = *(v21 + 8 * v7 + 32);
      }

      v35 = v34;
      v70 = (*&stru_B8.segname[(swift_isaMask & *v34) - 8])();
      v69 = 1;
      v15 = sub_223AC();
      sub_4B66C();
      sub_4B66C();

      v36 = v7 + 1;
      v37 = __OFADD__(v7, 1);
      if (v68 == v67)
      {
        break;
      }

      ++v7;
      if (v37)
      {
        goto LABEL_34;
      }
    }

    if (!v37)
    {
      break;
    }

    __break(1u);
LABEL_44:
    if (v36 != sub_4BA5C())
    {
      goto LABEL_45;
    }

LABEL_29:
    if (*v33 >> 62)
    {
      v38 = sub_4BA5C();
    }

    else
    {
      v38 = *(&dword_10 + (*v33 & 0xFFFFFFFFFFFFFF8));
    }

    v15 = v64;
    if (v38 >= v7)
    {
      sub_22814(v7, v38);
      v59(v71, 0);
      v39 = v61(v71);
      sub_20164(v63);
      v39(v71, 0);
      goto LABEL_37;
    }

    __break(1u);
LABEL_41:
    sub_4B6BC();
  }

  v33 = v66;
  if (*v66 >> 62)
  {
    goto LABEL_44;
  }

  if (v36 == *(&dword_10 + (*v66 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_29;
  }

LABEL_45:
  v18 = v7 + 5;
  v42 = &type metadata for CRWidgetModel.SuggestionSource;
  while (2)
  {
    v21 = v18 - 4;
    v43 = *v33;
    if ((*v33 & 0xC000000000000001) != 0)
    {
      v44 = sub_4B9AC();
    }

    else
    {
      if ((v21 & 0x8000000000000000) != 0)
      {
        goto LABEL_82;
      }

      if (v21 >= *(&dword_10 + (v43 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_83;
      }

      v44 = *(v43 + 8 * v18);
    }

    v45 = v44;
    v70 = (*&stru_B8.segname[(swift_isaMask & *v44) - 8])();
    v69 = 1;
    sub_4B66C();
    sub_4B66C();

    if (v68 == v67)
    {
      goto LABEL_71;
    }

    if (v21 == v7)
    {
      goto LABEL_70;
    }

    v46 = v42;
    v47 = *v33;
    if ((*v33 & 0xC000000000000001) != 0)
    {
      v48 = sub_4B9AC();
      v47 = *v33;
      if ((*v33 & 0xC000000000000001) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_79;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      goto LABEL_86;
    }

    if (v7 >= *(&dword_10 + (v47 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_87;
    }

    v48 = *(v47 + 8 * v7 + 32);
    if ((v47 & 0xC000000000000001) != 0)
    {
LABEL_79:
      v49 = sub_4B9AC();
      v47 = *v33;
      goto LABEL_59;
    }

LABEL_56:
    if ((v21 & 0x8000000000000000) != 0)
    {
      goto LABEL_88;
    }

    if (v21 >= *(&dword_10 + (v47 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_90;
    }

    v49 = *(v47 + 8 * v18);
LABEL_59:
    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *v33 = v47;
    if (!isUniquelyReferenced_nonNull_bridgeObject || (v47 & 0x8000000000000000) != 0 || (v47 & 0x4000000000000000) != 0)
    {
      v47 = sub_21A94(v47);
      *v33 = v47;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      goto LABEL_89;
    }

    if (v7 >= *(&dword_10 + (v47 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_91;
    }

    v51 = *(&stru_20.cmd + 8 * v7 + (v47 & 0xFFFFFFFFFFFFFF8));
    *(&stru_20.cmd + 8 * v7 + (v47 & 0xFFFFFFFFFFFFFF8)) = v49;

    v52 = *v33;
    if ((*v33 & 0x8000000000000000) == 0 && (v52 & 0x4000000000000000) == 0)
    {
      if ((v21 & 0x8000000000000000) != 0)
      {
        goto LABEL_81;
      }

LABEL_68:
      v53 = v52 & 0xFFFFFFFFFFFFFF8;
      if (v21 >= *(&dword_10 + (v52 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_92;
      }

      v42 = v46;
      v54 = *(v53 + 8 * v18);
      *(v53 + 8 * v18) = v48;

LABEL_70:
      if (__OFADD__(v7++, 1))
      {
        goto LABEL_85;
      }

LABEL_71:
      v56 = v18 - 3;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_84;
      }

      if (*v33 >> 62)
      {
        v57 = sub_4BA5C();
      }

      else
      {
        v57 = *(&dword_10 + (*v33 & 0xFFFFFFFFFFFFFF8));
      }

      ++v18;
      if (v56 == v57)
      {
        goto LABEL_29;
      }

      continue;
    }

    break;
  }

  v52 = sub_21A94(v52);
  *v33 = v52;
  if ((v21 & 0x8000000000000000) == 0)
  {
    goto LABEL_68;
  }

LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
}

uint64_t sub_20164(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_4BA5C();
  }

  else
  {
    v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  if (!(*v1 >> 62))
  {
    v4 = *(&dword_10 + (*v1 & 0xFFFFFFFFFFFFFF8));
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_4BA5C();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_219F4(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_22014(v8 + 8 * *(&dword_10 + v8) + 32, (*(&dword_18 + v8) >> 1) - *(&dword_10 + v8), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_20254(unint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 152);

  v6 = v5(v8);
  sub_22600(a2, a2, a1);

  return v6(v8, 0);
}

unint64_t sub_202F4(uint64_t a1)
{
  v2 = (*(*v1 + 136))();
  v3 = v2;
  v4 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
LABEL_18:
    v5 = sub_4BA5C();
  }

  else
  {
    v5 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
  }

  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      v11 = 0;
      goto LABEL_15;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = sub_4B9AC();
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      v7 = *(v3 + 8 * v6 + 32);
    }

    v8 = v7;
    v9 = sub_4A67C();

    if (v9)
    {
      break;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_17;
    }
  }

  v11 = v6;
LABEL_15:

  return v11;
}

uint64_t sub_20424(uint64_t a1)
{
  v3 = (*(*v1 + 136))();
  v4 = sub_204F0(a1, v3);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
    v8 = (*(*v1 + 152))(v9);

    return v8(v9, 0);
  }

  return result;
}

unint64_t sub_204F0(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = sub_4BA5C();
  }

  else
  {
    v4 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = sub_4B9AC();
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    type metadata accessor for CRWidgetModel(0);
    v8 = sub_4B8FC();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

unint64_t sub_205E0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_21A94(v3);
    v3 = result;
  }

  v5 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *(&stru_20.cmd + 8 * a1 + (v3 & 0xFFFFFFFFFFFFFF8));
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_20670(uint64_t a1)
{
  v2 = (*(*v1 + 152))(v4);
  sub_14628(&qword_7AD10, &qword_52950);
  sub_22FE0(&qword_7B068, &protocol conformance descriptor for [A]);
  sub_22FE0(&qword_7B070, &protocol conformance descriptor for [A]);
  sub_4B7AC();
  return v2(v4, 0);
}

uint64_t sub_20760(uint64_t a1, uint64_t a2)
{
  v3 = (*(*v2 + 152))(v5);
  sub_14628(&qword_7AD10, &qword_52950);
  sub_22FE0(&qword_7B068, &protocol conformance descriptor for [A]);
  sub_4B5CC();
  return v3(v5, 0);
}

uint64_t sub_208BC()
{
  v1 = OBJC_IVAR____TtC14CarKitSettings18CRWidgetStackModel_id;
  v2 = sub_4A6AC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC14CarKitSettings18CRWidgetStackModel___observationRegistrar;
  v4 = sub_4A72C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_2096C()
{
  v1 = OBJC_IVAR____TtC14CarKitSettings18CRWidgetStackModel_id;
  v2 = sub_4A6AC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC14CarKitSettings18CRWidgetStackModel___observationRegistrar;
  v4 = sub_4A72C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v5, v6);
}

uint64_t sub_20A58@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC14CarKitSettings18CRWidgetStackModel_id;
  v5 = sub_4A6AC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_20AD4(uint64_t a1)
{
  sub_4A6AC();
  sub_228EC(&qword_7B078, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  return sub_4B5BC();
}

Swift::Int sub_20B6C()
{
  sub_4BACC();
  sub_4A6AC();
  sub_228EC(&qword_7B078, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  sub_4B5BC();
  return sub_4BAEC();
}

Swift::Int sub_20C08()
{
  sub_4BACC();
  sub_4A6AC();
  sub_228EC(&qword_7B078, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  sub_4B5BC();
  return sub_4BAEC();
}

uint64_t sub_20CA8(uint64_t a1)
{
  sub_4A6AC();
  sub_228EC(&qword_7B078, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  return sub_4B5BC();
}

Swift::Int sub_20D30(uint64_t a1)
{
  sub_4BACC();
  sub_4A6AC();
  sub_228EC(&qword_7B078, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  sub_4B5BC();
  return sub_4BAEC();
}

uint64_t sub_20DE8(void *a1)
{
  v2 = sub_22934(a1);

  return v2;
}

id sub_20E18()
{
  v1 = sub_4A6AC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC14CarKitSettings18CRWidgetStackModel_id, v1);
  v6 = (*(*v0 + 136))(v5);
  v7 = v6;
  if (v6 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)); i; i = sub_4BA5C())
  {
    v18 = _swiftEmptyArrayStorage;
    result = sub_4B9FC();
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    v16 = v2;
    v17 = v1;
    v1 = v7 & 0xC000000000000001;
    sub_4B91C();
    v2 = 0;
    while (1)
    {
      if (v1)
      {
        v10 = sub_4B9AC();
        goto LABEL_6;
      }

      if ((v2 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v2 >= *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_13;
      }

      v10 = *(v7 + 8 * v2 + 32);
LABEL_6:
      ++v2;
      sub_4000C(v10);
      sub_4B9DC();
      sub_4BA0C();
      sub_4BA1C();
      sub_4B9EC();
      if (i == v2)
      {

        v1 = v17;
        v2 = v16;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

LABEL_16:
  v11 = objc_allocWithZone(CRSWidgetStack);
  isa = sub_4A66C().super.isa;
  sub_4B91C();
  v13 = sub_4B68C().super.isa;

  v14 = [v11 initWithID:isa widgets:v13];

  (*(v2 + 8))(v4, v1);
  return v14;
}

uint64_t sub_210A8()
{
  swift_getKeyPath();
  (*(*v0 + 160))();

  swift_beginAccess();
}

uint64_t sub_21124@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t sub_21170(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 128);

  return v2(v3);
}

uint64_t sub_211C4(unint64_t a1)
{
  swift_beginAccess();

  v4 = sub_21DC4(v3, a1);

  if (v4)
  {
    v1[2] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v7 = __chkstk_darwin(KeyPath);
    v8 = v1;
    v9 = a1;
    (*(*v1 + 168))(v7, sub_17974);
  }
}

uint64_t (*sub_212D8(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  (*(*v1 + 160))();

  v4[5] = OBJC_IVAR____TtC14CarKitSettings21CRWidgetStackRowModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_228EC(&qword_7B080, type metadata accessor for CRWidgetStackRowModel, &unk_52A3C);
  sub_4A70C();

  v4[7] = sub_17750(v4);
  return sub_21414;
}

uint64_t sub_21420(void *a1)
{
  swift_allocObject();
  v2 = sub_22B98(a1);

  return v2;
}

uint64_t sub_21468(void *a1)
{
  v2 = sub_22B98(a1);

  return v2;
}

id sub_21498()
{
  v1 = (*(*v0 + 120))();
  v2 = v1;
  if (!(v1 >> 62))
  {
    v3 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_11:

    v6 = objc_allocWithZone(CRSWidgetStackRow);
    sub_22D50();
    isa = sub_4B68C().super.isa;

    v8 = [v6 initWithStacks:isa];

    return v8;
  }

  v3 = sub_4BA5C();
  if (!v3)
  {
    goto LABEL_11;
  }

LABEL_3:
  result = sub_4B9FC();
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        sub_4B9AC();
      }

      else
      {
      }

      ++v5;

      sub_20E18();

      sub_4B9DC();
      sub_4BA0C();
      sub_4BA1C();
      sub_4B9EC();
    }

    while (v3 != v5);
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_217C4()
{

  v1 = OBJC_IVAR____TtC14CarKitSettings21CRWidgetStackRowModel___observationRegistrar;
  v2 = sub_4A72C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_2182C()
{

  v1 = OBJC_IVAR____TtC14CarKitSettings21CRWidgetStackRowModel___observationRegistrar;
  v2 = sub_4A72C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

void *sub_218D0(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v1 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v2 = sub_2196C(v1, 0);

    sub_4B99C();
    v4 = v3;

    if (v4 == v1)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v1 = sub_4BA5C();
    if (!v1)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v2;
}

void *sub_2196C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_14628(&qword_7B060, &unk_53070);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_219F4(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *(&dword_18 + (v4 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_4BA5C();
LABEL_9:
  result = sub_4B9BC();
  *v2 = result;
  return result;
}

uint64_t sub_21A94(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_4BA5C();
  }

  return sub_4B9BC();
}

uint64_t sub_21AF8(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  while (!(a2 >> 62))
  {
    result = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = type metadata accessor for CRWidgetModel(0);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = sub_4B9AC();
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = sub_4B9AC();
LABEL_26:
        v17 = v16;
        v18 = sub_4B8FC();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    v22 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_4B8FC();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_4BA5C();
  }

  result = sub_4BA5C();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_21D38()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC14CarKitSettings18CRWidgetStackModel__widgets;
  swift_beginAccess();
  *(v2 + v3) = v1;
}

uint64_t sub_21DC4(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  while (!(a2 >> 62))
  {
    result = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      LOBYTE(v4) = 1;
      return v4 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v4 = v12 - 4;
        v13 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          sub_4B9AC();
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v4 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_42;
          }

          if (!v11)
          {
LABEL_24:
            if (v4 >= *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_43;
            }

            goto LABEL_26;
          }
        }

        sub_4B9AC();
LABEL_26:
        LOBYTE(v4) = sub_4A67C();

        if (v4)
        {
          ++v12;
          if (v13 != v5)
          {
            continue;
          }
        }

        return v4 & 1;
      }
    }

    v14 = (v3 + 32);
    v15 = (a2 + 32);
    v16 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    v17 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    v18 = v5 - 1;
    while (1)
    {
      if (!v16)
      {
        goto LABEL_40;
      }

      if (!v17)
      {
        break;
      }

      v19 = *v14++;
      a2 = v19;
      v20 = *v15++;
      v3 = v20;

      v4 = sub_4A67C();

      v22 = v18-- != 0;
      if (v4)
      {
        --v17;
        --v16;
        if (v22)
        {
          continue;
        }
      }

      return v4 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_4BA5C();
  }

  result = sub_4BA5C();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  LOBYTE(v4) = 0;
  return v4 & 1;
}

uint64_t sub_22014(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_4BA5C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_4BA5C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_22FE0(&qword_7B308, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_14628(&qword_7AD10, &qword_52950);
            v9 = sub_222D0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        type metadata accessor for CRWidgetModel(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_221B0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = sub_22214(a1);
  v4 = v3[2];

  return a2((v3 + 4), v4);
}

void *sub_22214(int64_t a1)
{
  if (a1 < 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v2, _swiftEmptyArrayStorage);
  if (AssociatedObject)
  {
    v4 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v2);
    v5 = objc_getAssociatedObject(v2, _swiftEmptyArrayStorage);
    if (v5)
    {
      v4 = v5;
      swift_retain_n();
    }

    else
    {
      v4 = sub_218D0(a1);

      objc_setAssociatedObject(v2, _swiftEmptyArrayStorage, v4, &dword_0 + 1);
    }

    objc_sync_exit(v2);
  }

  return v4;
}

void (*sub_222D0(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_4B9AC();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_22350;
  }

  __break(1u);
  return result;
}

unint64_t sub_22358()
{
  result = qword_7B050;
  if (!qword_7B050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7B050);
  }

  return result;
}

unint64_t sub_223AC()
{
  result = qword_7B058;
  if (!qword_7B058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7B058);
  }

  return result;
}

uint64_t sub_22400(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    if (result)
    {
      type metadata accessor for CRWidgetModel(0);
      return swift_arrayInitWithCopy();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v4 = a4;
  v8 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for CRWidgetModel(0);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v8, v11);
  v11 = v8 - v11;
  if (v14)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    v15 = v5[2];
    v16 = v15 - v7;
    if (!__OFSUB__(v15, v7))
    {
      goto LABEL_6;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return sub_221B0(v4, sub_22FC4);
  }

LABEL_25:
  v20 = sub_4BA5C();
  v16 = v20 - v7;
  if (__OFSUB__(v20, v7))
  {
    goto LABEL_27;
  }

LABEL_6:
  v17 = (v6 + 8 * v8);
  v18 = &v9[v7];
  if (v17 != v18 || v17 >= &v18[8 * v16])
  {
    memmove(v17, v18, 8 * v16);
  }

  if (v10)
  {
    result = sub_4BA5C();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v11))
  {
    goto LABEL_28;
  }

  v5[2] = result + v11;
LABEL_17:
  if (v8 < 1)
  {
    return result;
  }

  result = __chkstk_darwin(result);
  if (v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
    return sub_221B0(v4, sub_22FC4);
  }

  if (*(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)) == v8)
  {
    return swift_arrayInitWithCopy();
  }

  __break(1u);
  return result;
}

uint64_t sub_22600(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    if (!v9)
    {
      result = *(&dword_10 + (*v5 & 0xFFFFFFFFFFFFFF8));
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  result = sub_4BA5C();
  if (result < v6)
  {
    goto LABEL_16;
  }

LABEL_4:
  v10 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!(v4 >> 62))
  {
    v12 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    v13 = __OFSUB__(v12, v10);
    v14 = v12 - v10;
    if (!v13)
    {
      goto LABEL_7;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

LABEL_18:
  result = sub_4BA5C();
  v12 = result;
  v13 = __OFSUB__(result, v10);
  v14 = result - v10;
  if (v13)
  {
    goto LABEL_20;
  }

LABEL_7:
  if (v9)
  {
    v15 = sub_4BA5C();
  }

  else
  {
    v15 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
  }

  v13 = __OFADD__(v15, v14);
  result = v15 + v14;
  if (v13)
  {
    goto LABEL_21;
  }

  sub_219F4(result, 1);

  return sub_22468(v7, v6, v12, v4);
}

uint64_t sub_22714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for CRWidgetModel(0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_4BA5C();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_4BA5C();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_22814(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *(&dword_10 + (*v4 & 0xFFFFFFFFFFFFFF8));
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_4BA5C();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_4BA5C();
  }

  else
  {
    v10 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_219F4(result, 1);

  return sub_22714(v5, v3, 0);
}

uint64_t sub_228EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22934(void *a1)
{
  v3 = sub_4A6AC();
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 id];
  sub_4A68C();

  v7 = [a1 widgets];
  sub_4B91C();
  v8 = sub_4B69C();

  if (v8 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)); i; i = sub_4BA5C())
  {
    v14 = v1;
    v15 = _swiftEmptyArrayStorage;
    v1 = &v15;
    result = sub_4B9FC();
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    type metadata accessor for CRWidgetModel(0);
    v11 = 0;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v12 = sub_4B9AC();
        goto LABEL_6;
      }

      if ((v11 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v11 >= *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_13;
      }

      v12 = *(v8 + 8 * v11 + 32);
LABEL_6:
      ++v11;
      sub_3FF0C(v12);
      v1 = &v15;
      sub_4B9DC();
      sub_4BA0C();
      sub_4BA1C();
      sub_4B9EC();
      if (i == v11)
      {

        v1 = v14;
        v13 = v15;
        return (v1[23])(v5, v13, 5);
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

  v13 = _swiftEmptyArrayStorage;
  return (v1[23])(v5, v13, 5);
}

uint64_t sub_22B60(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B98(void *a1)
{
  v2 = v1;
  v4 = _swiftEmptyArrayStorage;
  *(v2 + 16) = _swiftEmptyArrayStorage;
  sub_4A71C();
  v5 = [a1 stacks];
  sub_22D50();
  v6 = sub_4B69C();

  if (v6 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)); i; i = sub_4BA5C())
  {
    v13 = v4;
    result = sub_4B9FC();
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    v4 = type metadata accessor for CRWidgetStackModel(0);
    v9 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = sub_4B9AC();
        goto LABEL_6;
      }

      if ((v9 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v9 >= *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_13;
      }

      v10 = *(v6 + 8 * v9 + 32);
LABEL_6:
      v11 = v10;
      ++v9;
      sub_22934(v10);

      sub_4B9DC();
      sub_4BA0C();
      sub_4BA1C();
      sub_4B9EC();
      if (i == v9)
      {

        v12 = v13;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

  v12 = _swiftEmptyArrayStorage;
LABEL_16:
  sub_211C4(v12);
  return v2;
}

unint64_t sub_22D50()
{
  result = qword_7B088;
  if (!qword_7B088)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_7B088);
  }

  return result;
}

uint64_t sub_22E34(uint64_t a1)
{
  result = sub_4A6AC();
  if (v2 <= 0x3F)
  {
    result = sub_4A72C();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22F24(uint64_t a1)
{
  result = sub_4A72C();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_22FE0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D648(&qword_7AD10, &qword_52950);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23038@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_14628(&qword_7B310, &qword_52AE0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_230BC(uint64_t a1)
{
  v2 = sub_4AA3C();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_4ABBC();
}

uint64_t sub_23220()
{
  sub_232AC();
  sub_4ACEC();
  return v1;
}

void *sub_2325C@<X0>(void *a1@<X8>)
{
  sub_232AC();
  result = sub_4ACEC();
  *a1 = v3;
  return result;
}

unint64_t sub_232AC()
{
  result = qword_7B318;
  if (!qword_7B318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7B318);
  }

  return result;
}

uint64_t sub_23300()
{
  v7 = sub_4B84C();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_4B83C();
  __chkstk_darwin(v3);
  v4 = sub_4B52C();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_16F40(0, &qword_7B700, OS_dispatch_queue_ptr);
  sub_4B50C();
  v8 = _swiftEmptyArrayStorage;
  sub_2A298(&qword_7B708, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_14628(&qword_7B710, qword_53090);
  sub_2C958(&qword_7B718, &qword_7B710, qword_53090, &protocol conformance descriptor for [A]);
  sub_4B94C();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  result = sub_4B86C();
  qword_7C988 = result;
  return result;
}

id sub_23574()
{
  v1 = *(v0 + *(type metadata accessor for CRHomeScreenLayoutView(0) + 28));

  return v1;
}

uint64_t type metadata accessor for CRHomeScreenLayoutView(uint64_t a1)
{
  result = qword_7CCD0;
  if (!qword_7CCD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_235F8(uint64_t a1)
{
  sub_14628(&qword_7B320, &qword_52B40);
  sub_4B30C();
  return v2;
}

uint64_t sub_23680@<X0>(uint64_t a1@<X8>)
{
  v77 = a1;
  v71 = sub_4AA3C();
  v72 = *(v71 - 8);
  __chkstk_darwin(v71);
  v69 = (v63 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v65 = sub_4B4BC();
  v3 = *(v65 - 8);
  __chkstk_darwin(v65);
  v64 = v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CRHomeScreenLayoutView(0);
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  v63[1] = v8;
  v9 = v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_14628(&qword_7B328, &qword_52B48);
  __chkstk_darwin(v66);
  v11 = v63 - v10;
  v12 = sub_14628(&qword_7B330, &qword_52B50);
  v13 = *(v12 - 8);
  v73 = v12;
  v74 = v13;
  __chkstk_darwin(v12);
  v67 = v63 - v14;
  v15 = sub_14628(&qword_7B338, &qword_52B58);
  v16 = *(v15 - 8);
  v75 = v15;
  v76 = v16;
  __chkstk_darwin(v15);
  v70 = v63 - v17;
  v79 = v1;
  sub_14628(&qword_7B340, &qword_52B60);
  v68 = &protocol conformance descriptor for TupleView<A>;
  sub_2C958(&qword_7B348, &qword_7B340, &qword_52B60, &protocol conformance descriptor for TupleView<A>);
  sub_4B09C();
  v18 = v1;
  sub_24718(v1, v9);
  v19 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v20 = swift_allocObject();
  sub_24798(v9, v20 + v19);
  v21 = &v11[*(sub_14628(&qword_7B350, &qword_52B78) + 36)];
  sub_4AACC();
  sub_4B70C();
  *v21 = &unk_52B70;
  *(v21 + 1) = v20;
  v22 = sub_4B4EC();
  v23 = (v18 + *(v6 + 40));
  v63[0] = v18;
  v25 = *v23;
  v24 = v23[1];
  v82 = v25;
  v83 = v24;
  sub_14628(&qword_7B358, &qword_52B80);
  sub_4B31C();
  v26 = v80;
  v27 = &v11[*(sub_14628(&qword_7B360, &qword_52B88) + 36)];
  *v27 = v22;
  v27[1] = v26;
  v28 = sub_4B4EC();
  v29 = (v18 + *(v6 + 44));
  v31 = *v29;
  v30 = v29[1];
  v82 = v31;
  v83 = v30;
  sub_4B31C();
  v32 = v80;
  v33 = &v11[*(sub_14628(&qword_7B368, &qword_52B90) + 36)];
  *v33 = v28;
  v33[1] = v32;
  KeyPath = swift_getKeyPath();
  v35 = &v11[*(sub_14628(&qword_7B370, &qword_52BC8) + 36)];
  v36 = *(sub_14628(&qword_7B378, &unk_52BD0) + 28);
  v37 = v64;
  v38 = v65;
  (*(v3 + 104))(v64, enum case for EditMode.active(_:), v65);
  sub_4B3FC();
  (*(v3 + 8))(v37, v38);
  v39 = sub_14628(&qword_7B380, &qword_53480);
  (*(*(v39 - 8) + 56))(v35 + v36, 0, 1, v39);
  *v35 = KeyPath;
  v40 = v63[0];
  sub_24718(v63[0], v9);
  v41 = swift_allocObject();
  sub_24798(v9, v41 + v19);
  v42 = v66;
  v43 = &v11[*(v66 + 36)];
  *v43 = 0;
  *(v43 + 1) = 0;
  *(v43 + 2) = sub_24F44;
  *(v43 + 3) = v41;
  v44 = v69;
  sub_29C9C(v69);
  sub_24718(v40, v9);
  v45 = swift_allocObject();
  sub_24798(v9, v45 + v19);
  v46 = sub_29EFC();
  v47 = sub_2A298(&qword_7B3E0, &type metadata accessor for ColorScheme, &protocol conformance descriptor for ColorScheme);
  v48 = v67;
  v49 = v71;
  sub_4B24C();

  (*(v72 + 8))(v44, v49);
  sub_1E284(v11, &qword_7B328, &qword_52B48);
  v78 = v40;
  v50 = sub_14628(&qword_7B3E8, &unk_52BF0);
  v82 = v42;
  v83 = v49;
  v84 = v46;
  v85 = v47;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v52 = sub_1D648(&qword_7B3F0, &unk_533A0);
  v53 = sub_1D648(&qword_7B3F8, &unk_52C00);
  v54 = sub_2A2E8();
  v55 = sub_2A3CC();
  v56 = sub_2C958(&qword_7B430, &qword_7B3F8, &unk_52C00, v68);
  v82 = v52;
  v83 = &type metadata for String;
  v84 = v53;
  v85 = v54;
  v86 = v55;
  v87 = v56;
  v57 = swift_getOpaqueTypeConformance2();
  v58 = v70;
  v59 = v73;
  sub_4B23C();
  (*(v74 + 8))(v48, v59);
  v80 = sub_3E584(0xD000000000000022, 0x800000000005B530);
  v81 = v60;
  v82 = v59;
  v83 = v50;
  v84 = OpaqueTypeConformance2;
  v85 = v57;
  swift_getOpaqueTypeConformance2();
  v61 = v75;
  sub_4B1CC();

  return (*(v76 + 8))(v58, v61);
}

uint64_t sub_23FA8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v41 = a2;
  v40 = sub_14628(&qword_7B5E0, &qword_52F30);
  v38 = *(v40 - 8);
  v3 = __chkstk_darwin(v40);
  v39 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v34 - v5;
  v7 = sub_14628(&qword_7B5D0, &qword_52F28);
  v36 = *(v7 - 8);
  v8 = v36;
  v37 = v7;
  v9 = __chkstk_darwin(v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v34 - v12;
  v43 = a1;
  v44 = sub_3E584(0xD000000000000024, 0x800000000005B560);
  v45 = v14;
  sub_2A3CC();
  v44 = sub_4B0FC();
  v45 = v15;
  v46 = v16 & 1;
  v47 = v17;
  sub_14628(&qword_7B438, &qword_52C18);
  sub_2A428();
  v35 = v13;
  sub_4B42C();
  v42 = a1;
  v44 = sub_3E584(0xD000000000000023, 0x800000000005B590);
  v45 = v18;
  v44 = sub_4B0FC();
  v45 = v19;
  v46 = v20 & 1;
  v47 = v21;
  sub_14628(&qword_7B4B8, &qword_52C58);
  sub_2A708();
  v22 = v6;
  v34 = v6;
  sub_4B42C();
  v23 = *(v8 + 16);
  v24 = v37;
  v23(v11, v13, v37);
  v26 = v38;
  v25 = v39;
  v27 = *(v38 + 16);
  v28 = v40;
  v27(v39, v22, v40);
  v29 = v41;
  v23(v41, v11, v24);
  v30 = &v29[*(sub_14628(&qword_7B788, &qword_53178) + 48)];
  v27(v30, v25, v28);
  v31 = *(v26 + 8);
  v31(v34, v28);
  v32 = *(v36 + 8);
  v32(v35, v24);
  v31(v25, v28);
  return (v32)(v11, v24);
}

uint64_t sub_24398()
{
  sub_3E584(0xD000000000000024, 0x800000000005B560);
  sub_2A3CC();
  sub_4B0FC();
  sub_14628(&qword_7B438, &qword_52C18);
  sub_2A428();
  return sub_4B42C();
}

uint64_t sub_24464()
{
  sub_3E584(0xD000000000000023, 0x800000000005B590);
  sub_2A3CC();
  sub_4B0FC();
  sub_14628(&qword_7B4B8, &qword_52C58);
  sub_2A708();
  return sub_4B42C();
}

uint64_t sub_24530()
{
  v0[2] = sub_4B6FC();
  v0[3] = sub_4B6EC();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_245DC;

  return sub_248C8();
}

uint64_t sub_245DC()
{

  v1 = sub_4B6DC();

  return _swift_task_switch(sub_2D0BC, v1, v0);
}

uint64_t sub_24718(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRHomeScreenLayoutView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24780(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

void sub_2478C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_24798(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRHomeScreenLayoutView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_247FC()
{
  type metadata accessor for CRHomeScreenLayoutView(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E76C;

  return sub_24530();
}

uint64_t sub_248C8()
{
  v1[49] = v0;
  v2 = sub_4AA3C();
  v1[50] = v2;
  v1[51] = *(v2 - 8);
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  sub_4B6FC();
  v1[54] = sub_4B6EC();
  v4 = sub_4B6DC();
  v1[55] = v4;
  v1[56] = v3;

  return _swift_task_switch(sub_249C8, v4, v3);
}

uint64_t sub_249C8()
{
  v2 = v0[52];
  v1 = v0[53];
  v3 = v0[50];
  v4 = v0[51];
  v5 = v0[49];
  v6 = type metadata accessor for CRHomeScreenLayoutView(0);
  v0[57] = v6;
  v7 = *(v5 + *(v6 + 28));
  sub_29C9C(v1);
  (*(v4 + 104))(v2, enum case for ColorScheme.light(_:), v3);
  LOBYTE(v5) = sub_4AA2C();
  v8 = *(v4 + 8);
  v8(v2, v3);
  v8(v1, v3);
  [v7 setDrawIconBorders:v5 & 1];
  v0[2] = v0;
  v0[7] = v0 + 44;
  v0[3] = sub_24BA0;
  v9 = swift_continuation_init();
  v0[17] = sub_14628(&qword_7B778, &qword_53158);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_28598;
  v0[13] = &unk_6F0C0;
  v0[14] = v9;
  [v7 fetchIconStateWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_24BA0()
{
  v1 = *(*v0 + 448);
  v2 = *(*v0 + 440);

  return _swift_task_switch(sub_24CA8, v2, v1);
}

uint64_t sub_24CA8()
{

  v1 = v0[44];
  v0[36] = sub_4B5FC();
  v0[37] = v2;
  sub_4B97C();
  if (!*(v1 + 16) || (v3 = sub_2B930((v0 + 18)), (v4 & 1) == 0))
  {

    v18 = (v0 + 18);
    goto LABEL_9;
  }

  sub_16250(*(v1 + 56) + 32 * v3, (v0 + 28));
  sub_2CD58((v0 + 18));
  sub_14628(&qword_7B320, &qword_52B40);
  if (swift_dynamicCast())
  {
    v5 = v0[45];
    v0[38] = sub_4B5FC();
    v0[39] = v6;
    sub_4B97C();
    if (*(v1 + 16))
    {
      v7 = sub_2B930((v0 + 23));
      if (v8)
      {
        sub_16250(*(v1 + 56) + 32 * v7, (v0 + 32));
        sub_2CD58((v0 + 23));

        if (swift_dynamicCast())
        {
          v9 = v0[57];
          v10 = v0[49];
          v11 = v0[46];
          v12 = (v10 + *(v9 + 32));
          v14 = *v12;
          v13 = v12[1];
          v0[40] = v14;
          v0[41] = v13;
          v0[47] = v5;
          sub_14628(&qword_7B358, &qword_52B80);
          sub_4B32C();
          v15 = (v10 + *(v9 + 36));
          v17 = *v15;
          v16 = v15[1];
          v0[42] = v17;
          v0[43] = v16;
          v0[48] = v11;
          sub_4B32C();
          goto LABEL_10;
        }

        goto LABEL_13;
      }
    }

    v18 = (v0 + 23);
LABEL_9:
    sub_2CD58(v18);
    goto LABEL_10;
  }

LABEL_13:

LABEL_10:

  v19 = v0[1];

  return v19();
}

uint64_t sub_24FA0()
{
  v1 = sub_4B4FC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_4B52C();
  v5 = *(v16 - 8);
  __chkstk_darwin(v16);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRHomeScreenLayoutView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  if (qword_7C980 != -1)
  {
    swift_once();
  }

  v15[1] = qword_7C988;
  sub_24718(v0, v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v12 = swift_allocObject();
  sub_24798(v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  aBlock[4] = sub_2BFB0;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2861C;
  aBlock[3] = &unk_6EEE0;
  v13 = _Block_copy(aBlock);
  sub_4B51C();
  v17 = _swiftEmptyArrayStorage;
  sub_2A298(&qword_7B6E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_14628(&qword_7B6E8, &unk_53080);
  sub_2C958(&qword_7B6F0, &qword_7B6E8, &unk_53080, &protocol conformance descriptor for [A]);
  sub_4B94C();
  sub_4B85C();
  _Block_release(v13);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v16);
}

uint64_t sub_2532C(uint64_t a1)
{
  v2 = type metadata accessor for CRHomeScreenLayoutView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_14628(&qword_7AD18, &qword_52750);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_4B72C();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_24718(a1, v5);
  sub_4B6FC();
  v10 = sub_4B6EC();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = &protocol witness table for MainActor;
  sub_24798(v5, v12 + v11);
  sub_1A384(0, 0, v8, &unk_53168, v12);
}

uint64_t sub_254E4()
{
  v0[2] = sub_4B6FC();
  v0[3] = sub_4B6EC();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_25590;

  return sub_248C8();
}

uint64_t sub_25590()
{

  v1 = sub_4B6DC();

  return _swift_task_switch(sub_256CC, v1, v0);
}

uint64_t sub_256CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2572C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24[1] = a2;
  v3 = type metadata accessor for CRHomeScreenLayoutView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v7 = sub_14628(&qword_7B3F0, &unk_533A0);
  v24[0] = v7;
  __chkstk_darwin(v7);
  v9 = v24 - v8;
  v25 = sub_3E584(0xD000000000000011, 0x800000000005B6C0);
  v26 = v10;
  sub_24718(a1, v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_24798(v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  sub_2A3CC();
  sub_4B37C();
  v13 = (a1 + *(v4 + 48));
  v14 = *v13;
  v15 = *(v13 + 1);
  LOBYTE(v25) = v14;
  v26 = v15;
  sub_14628(&qword_7B760, &qword_533F0);
  sub_4B31C();
  LOBYTE(v11) = v29;
  KeyPath = swift_getKeyPath();
  v17 = swift_allocObject();
  *(v17 + 16) = v11;
  v18 = &v9[*(v7 + 36)];
  *v18 = KeyPath;
  v18[1] = sub_2CA54;
  v18[2] = v17;
  v29 = sub_3E584(0xD000000000000019, 0x800000000005B6E0);
  v30 = v19;
  v20 = (a1 + *(v4 + 52));
  v21 = *v20;
  v22 = *(v20 + 1);
  v27 = v21;
  v28 = v22;
  sub_4B33C();
  v24[4] = a1;
  sub_14628(&qword_7B3F8, &unk_52C00);
  sub_2A2E8();
  sub_2C958(&qword_7B430, &qword_7B3F8, &unk_52C00, &protocol conformance descriptor for TupleView<A>);
  sub_4B1DC();

  return sub_1E284(v9, &qword_7B3F0, &unk_533A0);
}

uint64_t sub_25A90@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v39 = a2;
  v3 = type metadata accessor for CRHomeScreenLayoutView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = sub_14628(&qword_7B768, &qword_53120);
  __chkstk_darwin(v6 - 8);
  v8 = &v34 - v7;
  v9 = sub_14628(&qword_7B410, &qword_533B0);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v38 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v37 = &v34 - v14;
  v15 = __chkstk_darwin(v13);
  v36 = &v34 - v16;
  __chkstk_darwin(v15);
  v35 = &v34 - v17;
  v40 = sub_3E584(0xD000000000000011, 0x800000000005B6C0);
  v41 = v18;
  sub_4A9EC();
  v19 = sub_4AA0C();
  v20 = *(*(v19 - 8) + 56);
  v20(v8, 0, 1, v19);
  sub_24718(a1, &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v22 = swift_allocObject();
  sub_24798(&v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  sub_2A3CC();
  v23 = v35;
  sub_4B36C();
  v40 = sub_3E584(0xD000000000000018, 0x800000000005B700);
  v41 = v24;
  sub_4A9FC();
  v20(v8, 0, 1, v19);
  v25 = v36;
  sub_4B36C();
  v26 = *(v10 + 16);
  v27 = v37;
  v26(v37, v23, v9);
  v28 = v38;
  v29 = v25;
  v26(v38, v25, v9);
  v30 = v39;
  v26(v39, v27, v9);
  v31 = sub_14628(&qword_7B770, &qword_53860);
  v26(&v30[*(v31 + 48)], v28, v9);
  v32 = *(v10 + 8);
  v32(v29, v9);
  v32(v23, v9);
  v32(v28, v9);
  return (v32)(v27, v9);
}

void *sub_25EDC(uint64_t a1)
{
  v2 = type metadata accessor for CRHomeScreenLayoutView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_14628(&qword_7AD18, &qword_52750);
  __chkstk_darwin(v6 - 8);
  v8 = &v17[-v7];
  v9 = (a1 + *(v2 + 40));
  v10 = *v9;
  v11 = *(v9 + 1);
  v19 = *v9;
  v20 = v11;
  sub_14628(&qword_7B760, &qword_533F0);
  result = sub_4B31C();
  if ((v18 & 1) == 0)
  {
    v19 = v10;
    v20 = v11;
    v18 = 1;
    sub_4B32C();
    [*(a1 + *(v2 + 28)) resetIconState];
    v13 = sub_4B72C();
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
    sub_24718(a1, &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    sub_4B6FC();
    v14 = sub_4B6EC();
    v15 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    *(v16 + 24) = &protocol witness table for MainActor;
    sub_24798(v5, v16 + v15);
    sub_1A384(0, 0, v8, &unk_53130, v16);
  }

  return result;
}

uint64_t sub_26124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = type metadata accessor for CRHomeScreenLayoutView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = (a1 + *(__chkstk_darwin(v3 - 8) + 40));
  v21 = a1;
  v8 = *v6;
  v7 = v6[1];
  v23 = v8;
  v24 = v7;
  sub_14628(&qword_7B358, &qword_52B80);
  sub_4B31C();
  KeyPath = swift_getKeyPath();
  sub_24718(a1, &KeyPath - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  sub_24798(&KeyPath - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  sub_14628(&qword_7B320, &qword_52B40);
  sub_14628(&qword_7B470, &qword_52C30);
  sub_2C958(&qword_7B628, &qword_7B320, &qword_52B40, &protocol conformance descriptor for [A]);
  sub_2B1CC(&qword_7B630, &qword_7B638, off_6D0A0, &protocol conformance descriptor for NSObject);
  sub_2A61C();
  v11 = v22;
  sub_4B41C();
  v12 = v21;
  sub_24718(v21, &KeyPath - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = swift_allocObject();
  sub_24798(&KeyPath - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v9);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_2C424;
  *(v14 + 24) = v13;
  v15 = (v11 + *(sub_14628(&qword_7B450, &qword_52C20) + 36));
  *v15 = sub_2C6CC;
  v15[1] = v14;
  sub_24718(v12, &KeyPath - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = swift_allocObject();
  sub_24798(&KeyPath - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v9);
  v17 = swift_allocObject();
  *(v17 + 16) = sub_2C6F4;
  *(v17 + 24) = v16;
  result = sub_14628(&qword_7B438, &qword_52C18);
  v19 = (v11 + *(result + 36));
  *v19 = sub_2C854;
  v19[1] = v17;
  return result;
}

uint64_t sub_2645C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_14628(&qword_7B658, &qword_52F78);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v30 - v8;
  v10 = sub_14628(&qword_7B660, &qword_52F80);
  __chkstk_darwin(v10 - 8);
  v12 = &v30 - v11;
  if ([a1 isEditable])
  {
    v32 = 0;
    KeyPath = 0;
    v31 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  else
  {
    v32 = sub_4B2DC();
    v19 = sub_4B05C();
    (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
    v31 = sub_4B07C();
    sub_1E284(v12, &qword_7B660, &qword_52F80);
    KeyPath = swift_getKeyPath();
    LOBYTE(v14) = sub_4AFEC();
    sub_4AA1C();
    v15 = v20;
    v16 = v21;
    v17 = v22;
    v18 = v23;
    LOBYTE(v38[0]) = 0;
    v14 = v14;
  }

  v30 = KeyPath;
  sub_267C0(a1, v9);
  sub_2BC3C(v9, v7, &qword_7B658, &qword_52F78);
  v24 = v32;
  *&v33 = v32;
  *(&v33 + 1) = KeyPath;
  v25 = v31;
  *&v34 = v31;
  *(&v34 + 1) = v14;
  *&v35 = v15;
  *(&v35 + 1) = v16;
  *&v36 = v17;
  *(&v36 + 1) = v18;
  v37 = 0uLL;
  v26 = v36;
  a2[2] = v35;
  a2[3] = v26;
  a2[4] = v37;
  v27 = v34;
  *a2 = v33;
  a2[1] = v27;
  v28 = sub_14628(&qword_7B750, &qword_530D8);
  sub_2BC3C(v7, a2 + *(v28 + 48), &qword_7B658, &qword_52F78);
  sub_2BC3C(&v33, v38, &qword_7B758, &unk_530E0);
  sub_1E284(v9, &qword_7B658, &qword_52F78);
  sub_1E284(v7, &qword_7B658, &qword_52F78);
  v38[0] = v24;
  v38[1] = v30;
  v38[2] = v25;
  v38[3] = v14;
  v38[4] = v15;
  v38[5] = v16;
  v38[6] = v17;
  v38[7] = v18;
  v38[8] = 0;
  v38[9] = 0;
  return sub_1E284(v38, &qword_7B758, &unk_530E0);
}

void sub_267C0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v88 = sub_14628(&qword_7B690, &qword_53040);
  v86 = *(v88 - 8);
  __chkstk_darwin(v88);
  v85 = &v79 - v5;
  v89 = sub_14628(&qword_7B698, &qword_53048);
  __chkstk_darwin(v89);
  v87 = &v79 - v6;
  v7 = sub_14628(&qword_7B6A0, &qword_53050);
  v91 = *(v7 - 8);
  v92 = v7;
  __chkstk_darwin(v7);
  v84 = &v79 - v8;
  v9 = sub_14628(&qword_7B6A8, &qword_53058);
  v10 = __chkstk_darwin(v9 - 8);
  v94 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v93 = &v79 - v12;
  v95 = sub_4AA3C();
  v13 = *(v95 - 1);
  v14 = __chkstk_darwin(v95);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v79 - v17;
  v19 = sub_4ACDC();
  v82 = *(v19 - 8);
  v83 = v19;
  __chkstk_darwin(v19);
  v81 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![a1 wantsDarkAppearance])
  {
    v27 = 0;
    goto LABEL_9;
  }

  v21 = v2;
  v22 = v2 + *(type metadata accessor for CRHomeScreenLayoutView(0) + 24);
  v23 = *v22;
  v24 = *(v22 + 8);
  v80 = a2;
  if (v24 == 1)
  {
    v25 = v23;
    v26 = v23;
    if (!v23)
    {
      goto LABEL_8;
    }
  }

  else
  {

    sub_4B7FC();
    v28 = sub_4AFDC();
    sub_4A90C();

    v29 = v81;
    sub_4ACCC();
    swift_getAtKeyPath();
    sub_2478C(v23, 0);
    (*(v82 + 8))(v29, v83);
    v26 = v96;
    if (!v96)
    {
LABEL_8:
      a2 = v80;
      v2 = v21;
      v27 = 0;
      goto LABEL_9;
    }
  }

  v30 = [v26 updatedConfigurationType];

  if (v30)
  {
    goto LABEL_8;
  }

  v79 = a1;
  if (v24)
  {
    v67 = v23;
    v68 = v23;
    v69 = &selRef_viewDidLoad;
    if (!v23)
    {
      goto LABEL_27;
    }
  }

  else
  {

    sub_4B7FC();
    v70 = sub_4AFDC();
    sub_4A90C();

    v71 = v81;
    sub_4ACCC();
    swift_getAtKeyPath();
    sub_2478C(v23, 0);
    (*(v82 + 8))(v71, v83);
    v68 = v96;
    v69 = &selRef_viewDidLoad;
    if (!v96)
    {
      goto LABEL_27;
    }
  }

  v72 = [v68 v69[84]];

  if (!v72)
  {
    a1 = v79;
    a2 = v80;
    v2 = v21;
    v27 = 1;
    goto LABEL_9;
  }

LABEL_27:
  if (v24)
  {
    v73 = v23;
  }

  else
  {

    sub_4B7FC();
    v74 = sub_4AFDC();
    sub_4A90C();

    v75 = v81;
    sub_4ACCC();
    swift_getAtKeyPath();
    sub_2478C(v23, 0);
    (*(v82 + 8))(v75, v83);
    v23 = v96;
  }

  a2 = v80;
  v2 = v21;
  if (v23 && (v76 = [v23 v69[84]], v23, v76 == &dword_0 + 2))
  {
    sub_29C9C(v18);
    v77 = v95;
    (*(v13 + 104))(v16, enum case for ColorScheme.light(_:), v95);
    v27 = sub_4AA2C();
    v78 = *(v13 + 8);
    v78(v16, v77);
    v78(v18, v77);
  }

  else
  {
    v27 = 0;
  }

  a1 = v79;
LABEL_9:
  v31 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorTableUIName];
  v90 = v27;
  if ((v27 & 1) == 0)
  {
    goto LABEL_15;
  }

  v32 = v2 + *(type metadata accessor for CRHomeScreenLayoutView(0) + 24);
  v33 = *v32;
  if (*(v32 + 8) != 1)
  {

    sub_4B7FC();
    v35 = sub_4AFDC();
    v80 = a2;
    v36 = a1;
    v37 = v35;
    sub_4A90C();

    a1 = v36;
    a2 = v80;
    v38 = v81;
    sub_4ACCC();
    swift_getAtKeyPath();
    sub_2478C(v33, 0);
    (*(v82 + 8))(v38, v83);
    v33 = v96;
    if (!v96)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v34 = v33;
  if (v33)
  {
LABEL_14:
    [v31 setAppearance:{objc_msgSend(v33, "iconServicesAppearanceUsingDarkInterfaceStyle:", 1, v79)}];
    [v31 setAppearanceVariant:{objc_msgSend(v33, "iconServicesAppearanceVariantUsingDarkInterfaceStyle:", 1)}];
  }

LABEL_15:
  sub_29C9C(v18);
  v39 = v95;
  (*(v13 + 104))(v16, enum case for ColorScheme.light(_:), v95);
  v40 = sub_4AA2C();
  v41 = *(v13 + 8);
  v41(v16, v39);
  v41(v18, v39);
  if (v40)
  {
    v42 = [a1 wantsDarkAppearance] ^ 1;
  }

  else
  {
    v42 = 0;
  }

  [v31 setDrawBorder:{v42, v79}];
  v43 = sub_27D78(a1, v2);
  *a2 = sub_4AD0C();
  *(a2 + 8) = 0;
  v44 = 1;
  *(a2 + 16) = 1;
  if (v43)
  {
    v45 = v43;
    v46 = v31;
    v47 = v85;
    v95 = v45;
    sub_4A8FC();
    [v46 size];
    sub_2C958(&qword_7B6C0, &qword_7B690, &qword_53040, &protocol conformance descriptor for AsyncIconImage<A>);
    v48 = v87;
    v49 = v88;
    sub_4B11C();
    (*(v86 + 8))(v47, v49);
    sub_29C9C((v48 + *(v89 + 52)));
    sub_2C958(&qword_7B6C8, &qword_7B698, &qword_53048, &protocol conformance descriptor for IDView<A, B>);
    v50 = v84;
    sub_4B10C();
    sub_1E284(v48, &qword_7B698, &qword_53048);
    v52 = v91;
    v51 = v92;
    v53 = v93;
    (*(v91 + 32))(v93, v50, v92);
    v44 = 0;
  }

  else
  {
    v95 = 0;
    v51 = v92;
    v53 = v93;
    v52 = v91;
  }

  (*(v52 + 56))(v53, v44, 1, v51);
  v54 = a2 + *(sub_14628(&qword_7B6B0, &qword_53060) + 44);
  v55 = [a1 displayName];
  v56 = sub_4B5FC();
  v58 = v57;

  v96 = v56;
  v97 = v58;
  sub_2A3CC();
  v59 = sub_4B0FC();
  v61 = v60;
  LOBYTE(v58) = v62;
  v64 = v63;
  v65 = v94;
  sub_2BC3C(v53, v94, &qword_7B6A8, &qword_53058);
  sub_2BC3C(v65, v54, &qword_7B6A8, &qword_53058);
  v66 = v54 + *(sub_14628(&qword_7B6B8, &qword_53068) + 48);
  *v66 = v59;
  *(v66 + 8) = v61;
  *(v66 + 16) = v58 & 1;
  *(v66 + 24) = v64;
  sub_2BCA4(v59, v61, v58 & 1);

  sub_1E284(v53, &qword_7B6A8, &qword_53058);
  sub_2BCB4(v59, v61, v58 & 1);

  sub_1E284(v65, &qword_7B6A8, &qword_53058);
}

uint64_t sub_27330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = type metadata accessor for CRHomeScreenLayoutView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = (a1 + *(__chkstk_darwin(v3 - 8) + 44));
  v8 = *v6;
  v7 = v6[1];
  v17 = v8;
  v18 = v7;
  sub_14628(&qword_7B358, &qword_52B80);
  sub_4B31C();
  swift_getKeyPath();
  sub_24718(a1, &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  sub_24798(&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  sub_14628(&qword_7B320, &qword_52B40);
  sub_14628(&qword_7B620, &qword_52F60);
  sub_2C958(&qword_7B628, &qword_7B320, &qword_52B40, &protocol conformance descriptor for [A]);
  sub_2B1CC(&qword_7B630, &qword_7B638, off_6D0A0, &protocol conformance descriptor for NSObject);
  v11 = sub_1D648(&qword_7B4C8, &qword_52C60);
  v12 = sub_4AB6C();
  v13 = sub_2C958(&qword_7B4D0, &qword_7B4C8, &qword_52C60, &protocol conformance descriptor for IDView<A, B>);
  v14 = sub_2A298(&qword_7B4D8, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v17 = v11;
  v18 = v12;
  v19 = v13;
  v20 = v14;
  swift_getOpaqueTypeConformance2();
  return sub_4B41C();
}

uint64_t sub_275F4@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28[1] = a3;
  v28[0] = sub_4AB6C();
  v5 = *(v28[0] - 8);
  __chkstk_darwin(v28[0]);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRHomeScreenLayoutView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_14628(&qword_7B4C8, &qword_52C60);
  __chkstk_darwin(v12);
  v14 = v28 - v13;
  v15 = *a1;
  sub_24718(a2, v11);
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = (v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  sub_24798(v11, v18 + v16);
  *(v18 + v17) = v15;
  v28[4] = a2;
  v28[5] = v15;
  v19 = v15;
  sub_14628(&qword_7B640, &qword_52F68);
  sub_2C958(&qword_7B648, &qword_7B640, &qword_52F68, &protocol conformance descriptor for HStack<A>);
  sub_4B35C();
  v20 = [v19 bundleIdentifier];
  v21 = sub_4B5FC();
  v23 = v22;

  v29 = v21;
  v30 = v23;

  v31._countAndFlagsBits = 0x6E65646469682DLL;
  v31._object = 0xE700000000000000;
  sub_4B62C(v31);

  v24 = v30;
  v25 = &v14[*(v12 + 52)];
  *v25 = v29;
  *(v25 + 1) = v24;
  sub_4AB5C();
  sub_2C958(&qword_7B4D0, &qword_7B4C8, &qword_52C60, &protocol conformance descriptor for IDView<A, B>);
  sub_2A298(&qword_7B4D8, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v26 = v28[0];
  sub_4B15C();
  (*(v5 + 8))(v7, v26);
  return sub_1E284(v14, &qword_7B4C8, &qword_52C60);
}

uint64_t sub_27990@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a2;
  v39 = a1;
  v40 = a3;
  v3 = sub_14628(&qword_7B658, &qword_52F78);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v37 - v7;
  v9 = sub_14628(&qword_7B660, &qword_52F80);
  __chkstk_darwin(v9 - 8);
  v11 = &v37 - v10;
  v12 = sub_14628(&qword_7B668, &qword_52F88);
  v13 = v12 - 8;
  v14 = __chkstk_darwin(v12);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = (&v37 - v17);
  v19 = sub_4B2DC();
  v20 = sub_4B05C();
  (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
  v21 = sub_4B07C();
  sub_1E284(v11, &qword_7B660, &qword_52F80);
  KeyPath = swift_getKeyPath();
  v23 = (v18 + *(sub_14628(&qword_7B670, &unk_52FC0) + 36));
  v24 = *(sub_14628(&qword_7B678, &qword_53920) + 28);
  sub_4AD9C();
  v25 = sub_4ADAC();
  (*(*(v25 - 8) + 56))(v23 + v24, 0, 1, v25);
  *v23 = swift_getKeyPath();
  *v18 = v19;
  v18[1] = KeyPath;
  v18[2] = v21;
  v26 = sub_4B28C();
  v27 = swift_getKeyPath();
  v28 = (v18 + *(sub_14628(&qword_7B680, &qword_53030) + 36));
  *v28 = v27;
  v28[1] = v26;
  LOBYTE(v26) = sub_4B01C();
  sub_4AA1C();
  v29 = v18 + *(v13 + 44);
  *v29 = v26;
  *(v29 + 1) = v30;
  *(v29 + 2) = v31;
  *(v29 + 3) = v32;
  *(v29 + 4) = v33;
  v29[40] = 0;
  sub_267C0(v38, v8);
  sub_2BC3C(v18, v16, &qword_7B668, &qword_52F88);
  sub_2BC3C(v8, v6, &qword_7B658, &qword_52F78);
  v34 = v40;
  sub_2BC3C(v16, v40, &qword_7B668, &qword_52F88);
  v35 = sub_14628(&qword_7B688, &qword_53038);
  sub_2BC3C(v6, v34 + *(v35 + 48), &qword_7B658, &qword_52F78);
  sub_1E284(v8, &qword_7B658, &qword_52F78);
  sub_1E284(v18, &qword_7B668, &qword_52F88);
  sub_1E284(v6, &qword_7B658, &qword_52F78);
  return sub_1E284(v16, &qword_7B668, &qword_52F88);
}

id sub_27D78(void *a1, uint64_t a2)
{
  v4 = sub_4ACDC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 bundleIdentifier];
  v9 = sub_4B5FC();
  v11 = v10;

  if (sub_4B5FC() == v9 && v12 == v11)
  {

LABEL_8:

    result = [a1 iconImage];
    if (result)
    {
      v16 = result;
      v17 = [result CGImage];

      result = 0;
      if (v17)
      {
        v18 = a2 + *(type metadata accessor for CRHomeScreenLayoutView(0) + 20);
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = v17;
        if (v20 == 1)
        {
          v22 = *&v19;
        }

        else
        {
          sub_2BCC4(v19, 0);
          sub_4B7FC();
          v28 = sub_4AFDC();
          sub_4A90C();

          sub_4ACCC();
          swift_getAtKeyPath();
          sub_24780(v19, 0);
          (*(v5 + 8))(v7, v4);
          v22 = *&v35[1];
        }

        v29 = [objc_allocWithZone(IFImage) initWithCGImage:v21 scale:v22];

        sub_14628(&qword_7B060, &unk_53070);
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_52910;
        *(v30 + 32) = v29;
        v31 = objc_allocWithZone(ISIcon);
        sub_16F40(0, &qword_7B6D0, IFImage_ptr);
        v32 = v29;
        isa = sub_4B68C().super.isa;

        v34 = [v31 initWithImages:isa];

        return v34;
      }
    }

    return result;
  }

  v14 = sub_4BA8C();

  if (v14)
  {
    goto LABEL_8;
  }

  if (sub_4B5FC() == v9 && v23 == v11)
  {

    return [objc_allocWithZone(ISIcon) initWithType:CRSNowPlayingIconIdentifier];
  }

  v25 = sub_4BA8C();

  if (v25)
  {
    return [objc_allocWithZone(ISIcon) initWithType:CRSNowPlayingIconIdentifier];
  }

  v26 = [a1 bundleIdentifier];
  if (!v26)
  {
    sub_4B5FC();
    v26 = sub_4B5EC();
  }

  v27 = [objc_allocWithZone(ISIcon) initWithBundleIdentifier:v26];

  return v27;
}

void *sub_28180(void *(*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2)
{
  v3 = v2;
  v16 = a1;
  v17 = a2;
  v4 = sub_4A6BC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4A6CC();
  sub_2A298(&qword_7B740, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
  v8 = sub_4B77C();
  result = _swiftEmptyArrayStorage;
  if (v8)
  {
    v22 = _swiftEmptyArrayStorage;
    sub_4B9FC();
    sub_4B76C();
    if ((v8 & 0x8000000000000000) == 0)
    {
      v14 = v4;
      v15 = v8;
      v13 = v5;
      for (i = 0; !__OFADD__(i, 1); ++i)
      {
        v18 = i + 1;
        v11 = sub_4B79C();
        v19 = *v12;
        v11(v20, 0);
        v16(&v21, &v19);
        v8 = v7;
        if (v3)
        {
          goto LABEL_11;
        }

        v3 = 0;
        sub_4B9DC();
        sub_4BA0C();
        sub_4BA1C();
        sub_4B9EC();
        sub_4B78C();
        if (v18 == v15)
        {
          (*(v13 + 8))(v7, v14);
          return v22;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_11:
    (*(v13 + 8))(v8, v14);

    __break(1u);
  }

  return result;
}

uint64_t sub_283EC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_4BA5C();
  }

  else
  {
    v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  if (!(*v1 >> 62))
  {
    v4 = *(&dword_10 + (*v1 & 0xFFFFFFFFFFFFFF8));
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_4BA5C();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_219F4(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_2BDFC(v8 + 8 * *(&dword_10 + v8) + 32, (*(&dword_18 + v8) >> 1) - *(&dword_10 + v8), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_284DC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 displayName];
  v4 = sub_4B5FC();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void sub_28534(void *a1, void **a2)
{
  v2 = *a2;
  v3 = sub_4B5EC();
  [v2 setDisplayName:v3];
}

uint64_t sub_28598(uint64_t a1, uint64_t a2)
{
  v2 = *sub_16114((a1 + 32), *(a1 + 56));
  **(*(v2 + 64) + 40) = sub_4B5AC();

  return _swift_continuation_resume(v2);
}

uint64_t sub_2861C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_28660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v4[5] = sub_4B6FC();
  v4[6] = sub_4B6EC();
  v5 = swift_task_alloc();
  v4[7] = v5;
  *v5 = v4;
  v5[1] = sub_28710;

  return sub_248C8();
}

uint64_t sub_28710()
{

  v1 = sub_4B6DC();

  return _swift_task_switch(sub_2884C, v1, v0);
}

uint64_t sub_2884C()
{
  v1 = *(v0 + 32);

  v2 = (v1 + *(type metadata accessor for CRHomeScreenLayoutView(0) + 40));
  v3 = *v2;
  v4 = *(v2 + 1);
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
  *(v0 + 64) = 0;
  sub_14628(&qword_7B760, &qword_533F0);
  sub_4B32C();
  v5 = *(v0 + 8);

  return v5();
}

void *sub_288FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  sub_14628(&qword_7B310, &qword_52AE0);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for CRHomeScreenLayoutView(0);
  v5 = a2 + v4[5];
  *v5 = swift_getKeyPath();
  v5[8] = 0;
  v6 = a2 + v4[6];
  *v6 = swift_getKeyPath();
  v6[8] = 0;
  *(a2 + v4[7]) = a1;
  v7 = (a2 + v4[8]);
  sub_14628(&qword_7B320, &qword_52B40);
  sub_4B30C();
  *v7 = v12;
  v7[1] = v13;
  v8 = (a2 + v4[9]);
  sub_4B30C();
  *v8 = v12;
  v8[1] = v13;
  v9 = a2 + v4[10];
  sub_4B30C();
  *v9 = v12;
  *(v9 + 1) = v13;
  v10 = a2 + v4[11];
  result = sub_4B30C();
  *v10 = v12;
  *(v10 + 1) = v13;
  return result;
}

id sub_28AA8()
{
  result = [objc_opt_self() defaultValue];
  if (result)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      qword_7DA38 = result;
      return result;
    }

    result = swift_unknownObjectRelease();
  }

  qword_7DA38 = 0;
  return result;
}

uint64_t *sub_28B24()
{
  if (qword_7C990 != -1)
  {
    swift_once();
  }

  return &qword_7DA38;
}

uint64_t sub_28B74()
{
  if (qword_7C990 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_7DA38;
  v1 = qword_7DA38;
  return v0;
}

void sub_28BF0(uint64_t a1)
{
  if (qword_7C990 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_7DA38;
  qword_7DA38 = a1;
}

uint64_t (*sub_28C70(uint64_t a1))(uint64_t a1)
{
  if (qword_7C990 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t *sub_28D10()
{
  if (qword_7C998 != -1)
  {
    swift_once();
  }

  return &qword_7DA40;
}

uint64_t (*sub_28DB0(uint64_t a1))(uint64_t a1)
{
  if (qword_7C998 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

void sub_28E50(uint64_t a1, SEL *a2, uint64_t *a3, void *a4)
{
  v6 = [objc_opt_self() *a2];
  v7 = sub_4B5FC();
  v9 = v8;

  *a3 = v7;
  *a4 = v9;
}

uint64_t *sub_28EC0()
{
  if (qword_7C9A0 != -1)
  {
    swift_once();
  }

  return &qword_7DA50;
}

uint64_t sub_28F38(void *a1, uint64_t *a2, void *a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = *a2;

  return v5;
}

uint64_t sub_28FD0(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t *a5, uint64_t a6)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a4 = a1;
  *a5 = a2;
}

uint64_t (*sub_2904C(uint64_t a1))(uint64_t a1)
{
  if (qword_7C9A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

id sub_290D4()
{
  result = [objc_opt_self() affectsColorAppearance];
  byte_7DA60 = result;
  return result;
}

char *sub_29108()
{
  if (qword_7C9A8 != -1)
  {
    swift_once();
  }

  return &byte_7DA60;
}

uint64_t sub_29158()
{
  if (qword_7C9A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return byte_7DA60;
}

uint64_t sub_291CC(char a1)
{
  if (qword_7C9A8 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  byte_7DA60 = a1 & 1;
  return result;
}

uint64_t (*sub_29248(uint64_t a1))(uint64_t a1)
{
  if (qword_7C9A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

id sub_292D0@<X0>(void *a1@<X8>)
{
  if (qword_7C990 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_7DA38;
  *a1 = qword_7DA38;

  return v2;
}

uint64_t sub_293AC(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void *a5, uint64_t a6)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = *a4;

  return v7;
}

uint64_t sub_29428()
{
  sub_2A84C();
  sub_4B88C();
  return v1;
}

uint64_t sub_29464(uint64_t a1, uint64_t a2)
{
  sub_2A84C();
  sub_4A94C();
  return v3;
}

void (*sub_2951C(void *a1, uint64_t a2, uint64_t a3))(id **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = a2;
  sub_2A84C();
  sub_4A94C();
  return sub_295C4;
}

void sub_295C4(id **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[1];
  if (a2)
  {
    v4 = v3;
    *v2 = v3;
    sub_2A84C();
    sub_4A95C();
  }

  else
  {
    *v2 = v3;
    sub_2A84C();
    sub_4A95C();
  }

  free(v2);
}

uint64_t sub_29688()
{
  swift_beginAccess();
  v0 = qword_7DA68;
  v1 = qword_7DA68;
  return v0;
}

void sub_296D4(uint64_t a1)
{
  swift_beginAccess();
  v2 = qword_7DA68;
  qword_7DA68 = a1;
}

id sub_2977C@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = qword_7DA68;
  *a1 = qword_7DA68;

  return v2;
}

uint64_t sub_297D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2B210();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_29848()
{
  swift_beginAccess();
  v0 = qword_7DA70;
  v1 = qword_7DA70;
  return v0;
}

void sub_29894(uint64_t a1)
{
  swift_beginAccess();
  v2 = qword_7DA70;
  qword_7DA70 = a1;
}

id sub_2993C@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = qword_7DA70;
  *a1 = qword_7DA70;

  return v2;
}

uint64_t sub_29998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2B11C();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_299FC(uint64_t a1)
{
  sub_2A84C();
  sub_4B88C();
  return v2;
}

uint64_t sub_29A44(uint64_t a1, void *a2)
{
  sub_2A8A0(a1, *(a1 + 24));
  v3 = a2;
  sub_2A84C();
  return sub_4A95C();
}

void *sub_29AB0@<X0>(void *a2@<X8>)
{
  sub_2A84C();
  result = sub_4B88C();
  *a2 = v4;
  return result;
}

uint64_t sub_29B00(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  sub_2A8A0(a1, v3);
  v5 = v2;
  return sub_294C0(v2, v3, v4);
}

void *sub_29BC4@<X0>(uint64_t *a1@<X8>)
{
  v2 = objc_allocWithZone(CRHomeScreenPersistenceManager);
  v3 = sub_4B5EC();
  isa = sub_4A63C().super.isa;
  v5 = [v2 initWithVehicleId:v3 certificateSerial:isa];

  a1[3] = type metadata accessor for CRHomeScreenLayoutView(0);
  a1[4] = sub_2A298(&qword_7AC30, type metadata accessor for CRHomeScreenLayoutView, &unk_52C68);
  v6 = sub_2B2C0(a1);
  return sub_288FC(v5, v6);
}

uint64_t sub_29C9C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_4ACDC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_14628(&qword_7B310, &qword_52AE0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_2BC3C(v2, &v14 - v9, &qword_7B310, &qword_52AE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_4AA3C();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_4B7FC();
    v13 = sub_4AFDC();
    sub_4A90C();

    sub_4ACCC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_29E9C()
{
  v1 = *(type metadata accessor for CRHomeScreenLayoutView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2532C(v2);
}

unint64_t sub_29EFC()
{
  result = qword_7B388;
  if (!qword_7B388)
  {
    sub_1D648(&qword_7B328, &qword_52B48);
    sub_29F88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7B388);
  }

  return result;
}

unint64_t sub_29F88()
{
  result = qword_7B390;
  if (!qword_7B390)
  {
    sub_1D648(&qword_7B370, &qword_52BC8);
    sub_2A040();
    sub_2C958(&qword_7B3D8, &qword_7B378, &unk_52BD0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7B390);
  }

  return result;
}

unint64_t sub_2A040()
{
  result = qword_7B398;
  if (!qword_7B398)
  {
    sub_1D648(&qword_7B368, &qword_52B90);
    sub_2A0F8();
    sub_2C958(&qword_7B3C8, &qword_7B3D0, &qword_52BE8, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7B398);
  }

  return result;
}

unint64_t sub_2A0F8()
{
  result = qword_7B3A0;
  if (!qword_7B3A0)
  {
    sub_1D648(&qword_7B360, &qword_52B88);
    sub_2A1B0();
    sub_2C958(&qword_7B3C8, &qword_7B3D0, &qword_52BE8, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7B3A0);
  }

  return result;
}