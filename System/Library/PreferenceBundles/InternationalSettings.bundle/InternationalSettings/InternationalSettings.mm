void sub_233C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_235C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained isCancelled];

  if ((v3 & 1) == 0)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_2418;
    v4[3] = &unk_34D98;
    objc_copyWeak(&v5, (a1 + 40));
    v4[4] = *(a1 + 32);
    dispatch_sync(&_dispatch_main_q, v4);
    objc_destroyWeak(&v5);
  }
}

void sub_2418(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained isCancelled];

  if ((v3 & 1) == 0)
  {
    v4 = *(a1 + 32);

    [v4 reloadSpecifiers];
  }
}

void sub_25E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v4 = [v3 keysSortedByValueUsingSelector:"compare:"];
  v5 = [v4 reverseObjectEnumerator];

  v6 = [v5 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    v9 = &_s19PreferencesExtended0A14ControllerViewV011preferencesC6RecipeAcA0acF0V_tcfC_ptr;
    v10 = &_s19PreferencesExtended0A14ControllerViewV011preferencesC6RecipeAcA0acF0V_tcfC_ptr;
    v28 = *v31;
    v29 = v3;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v30 + 1) + 8 * i);
        v13 = [v3 objectForKeyedSubscript:{v12, v28, v29}];
        [v13 doubleValue];
        v15 = v14;

        if (v15 >= 0.5 && ([*(a1 + 32) isConfirmedLanguage:v12] & 1) == 0)
        {
          v16 = v5;
          v17 = a1;
          v18 = v9[337];
          [v18 preferredLanguages];
          v20 = v19 = v9;
          v35 = v12;
          [v10[334] arrayWithObjects:&v35 count:1];
          v22 = v21 = v10;
          v23 = [v18 mostPreferredLanguageOf:v20 withPreferredLanguages:v22 forUsage:1 options:0];

          if (v23)
          {

            v9 = v19;
            a1 = v17;
            v5 = v16;
            v10 = v21;
            v8 = v28;
            v3 = v29;
          }

          else
          {
            v24 = v19[337];
            v25 = [v24 systemLanguages];
            v34 = v12;
            v26 = [v21[334] arrayWithObjects:&v34 count:1];
            v27 = [v24 mostPreferredLanguageOf:v25 withPreferredLanguages:v26 forUsage:1 options:0];

            v9 = v19;
            a1 = v17;
            v5 = v16;
            v10 = v21;
            v8 = v28;
            v3 = v29;
            if (v27)
            {

              [*(a1 + 32) showLanguageDiscoverySetupForDiscoveredLanguage:v27];
              v5 = v27;
              goto LABEL_15;
            }
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v30 objects:v36 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:
}

void sub_2908(uint64_t a1)
{
  v2 = [IPLanguageDiscoverySetupViewController alloc];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_29D8;
  v5[3] = &unk_34E38;
  v4 = *(a1 + 32);
  v6 = vextq_s8(v4, v4, 8uLL);
  v3 = [v2 initWithLocaleIdentifier:v4.i64[0] completionHandler:v5];
  [*(a1 + 40) presentViewController:v3 animated:1 completion:&stru_34E78];
}

void sub_29D8(uint64_t a1, uint64_t a2)
{
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      [*(a1 + 32) recordAcceptedLanguage:*(a1 + 40)];
      LODWORD(v8) = 1.0;
      [NSLocale registerPreferredLanguage:*(a1 + 40) usage:1 confidence:v8];
    }

    else if (a2 == 4)
    {
      [*(a1 + 32) recordRejectedLanguage:*(a1 + 40)];
    }
  }

  else if (a2 == 1)
  {
    [*(a1 + 32) recordAcceptedLanguage:*(a1 + 40)];
    v4 = *(a1 + 32);
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"CHANGE_UI_LANGUAGE_TEXT" value:&stru_35798 table:@"InternationalSettings"];
    v7 = *(a1 + 40);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_2BD8;
    v10[3] = &unk_34DE8;
    v11 = v7;
    [v4 showUpdatingLanguageViewWithLabel:v6 languageIdentifier:v11 completionBlock:v10];
  }

  else if (a2 == 2)
  {
    [*(a1 + 32) recordAcceptedLanguage:*(a1 + 40)];
    v3 = [NSLocale localeWithLocaleIdentifier:*(a1 + 40)];
    [NSLocale enableInputModesForLocale:v3 addToFront:0];
  }

  v9 = *(a1 + 40);
  AnalyticsSendEventLazy();
}

id sub_2BD8(uint64_t a1)
{
  [InternationalSettingsController setLanguage:*(a1 + 32)];

  return +[InternationalSettingsController syncPreferencesAndPostNotificationForLanguageChange];
}

id sub_2C1C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v6[0] = *(a1 + 32);
  v5[0] = @"language";
  v5[1] = @"userAction";
  v2 = [NSNumber numberWithUnsignedInteger:v1];
  v5[2] = @"isShownUI";
  v6[1] = v2;
  v6[2] = &__kCFBooleanTrue;
  v3 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:3];

  return v3;
}

void sub_36F0(uint64_t a1)
{
  v2 = +[UIApplication sharedApplication];
  [v2 endBackgroundTask:*(a1 + 32)];
}

id sub_379C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_3D010;
  v7 = qword_3D010;
  if (!qword_3D010)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_63CC;
    v3[3] = &unk_35000;
    v3[4] = &v4;
    sub_63CC(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_3864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_3964()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_3D020;
  v7 = qword_3D020;
  if (!qword_3D020)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_6584;
    v3[3] = &unk_35000;
    v3[4] = &v4;
    sub_6584(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_3A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_3A44(uint64_t a1)
{
  v2 = [sub_3964() sharedManager];
  v3 = [v2 currentUser];
  v4 = [v3 alternateDSID];

  if (v4)
  {
    v20[0] = @"AppleLanguages";
    v5 = +[NSLocale preferredLanguages];
    v20[1] = @"AppleLocale";
    v21[0] = v5;
    v6 = +[NSLocale currentLocale];
    v7 = [v6 localeIdentifier];
    v21[1] = v7;
    v8 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];

    v16 = 0;
    v17 = &v16;
    v18 = 0x2050000000;
    v9 = qword_3D030;
    v19 = qword_3D030;
    if (!qword_3D030)
    {
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_673C;
      v15[3] = &unk_35000;
      v15[4] = &v16;
      sub_673C(v15);
      v9 = v17[3];
    }

    v10 = v9;
    _Block_object_dispose(&v16, 8);
    v11 = objc_opt_new();
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_3CB0;
    v13[3] = &unk_34EE8;
    v14 = *(a1 + 32);
    [v11 setConfigurationInfo:v8 forIdentifier:@"com.apple.idms.config.Language" forAltDSID:v4 completion:v13];
  }

  else
  {
    v12 = *(a1 + 32);
    if (v12)
    {
      (*(v12 + 16))();
    }
  }
}

void sub_3C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_3CB0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_3D50(id a1)
{
  +[UIKeyboardImpl purgeImageCache];
  v1 = [NSURL URLWithString:@"prefs:root=General&path=INTERNATIONAL"];
  v2 = [SBSRelaunchAction actionWithReason:@"Language Change" options:6 targetURL:v1];

  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v3 = qword_3D040;
  v11 = qword_3D040;
  if (!qword_3D040)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_68F4;
    v7[3] = &unk_35000;
    v7[4] = &v8;
    sub_68F4(v7);
    v3 = v9[3];
  }

  v4 = v3;
  _Block_object_dispose(&v8, 8);
  v5 = [v3 sharedService];
  v6 = [NSSet setWithObject:v2];
  [v5 sendActions:v6 withResult:0];
}

void sub_3EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_4D38(id a1, UIAlertAction *a2)
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v2 = [NSNumber numberWithBool:1];
  [v3 setObject:v2 forKey:@"AppleLiveTextEnabled" inDomain:NSGlobalDomain];
}

id sub_53BC(uint64_t a1)
{
  v1 = objc_opt_class();

  return [v1 syncPreferencesAndPostNotificationForLanguageChange];
}

Class sub_63CC(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_3D018)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_6510;
    v4[4] = &unk_34EC0;
    v4[5] = v4;
    v5 = off_35020;
    v6 = 0;
    qword_3D018 = _sl_dlopen();
    v2 = v4[0];
    if (qword_3D018)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("CloudSettingsManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_20ACC();
  }

  qword_3D010 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_6510(uint64_t a1)
{
  result = _sl_dlopen();
  qword_3D018 = result;
  return result;
}

Class sub_6584(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_3D028)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_66C8;
    v4[4] = &unk_34EC0;
    v4[5] = v4;
    v5 = off_35038;
    v6 = 0;
    qword_3D028 = _sl_dlopen();
    v2 = v4[0];
    if (qword_3D028)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("UMUserManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_20AF4();
  }

  qword_3D020 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_66C8(uint64_t a1)
{
  result = _sl_dlopen();
  qword_3D028 = result;
  return result;
}

Class sub_673C(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_3D038)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_6880;
    v4[4] = &unk_34EC0;
    v4[5] = v4;
    v5 = off_35050;
    v6 = 0;
    qword_3D038 = _sl_dlopen();
    v2 = v4[0];
    if (qword_3D038)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("AKAppleIDAuthenticationController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_20B1C();
  }

  qword_3D030 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_6880(uint64_t a1)
{
  result = _sl_dlopen();
  qword_3D038 = result;
  return result;
}

Class sub_68F4(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_3D048)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_6A38;
    v4[4] = &unk_34EC0;
    v4[5] = v4;
    v5 = off_35068;
    v6 = 0;
    qword_3D048 = _sl_dlopen();
    v2 = v4[0];
    if (qword_3D048)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("FBSSystemService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_20B44();
  }

  qword_3D040 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_6A38(uint64_t a1)
{
  result = _sl_dlopen();
  qword_3D048 = result;
  return result;
}

void sub_8134(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_8154(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 regionsList];
  v4 = [v2 filteredRegionsForRegionList:v3 searchString:*(a1 + 40)];

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = [WeakRetained isCancelled];

  if ((v6 & 1) == 0)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_8240;
    v7[3] = &unk_34EA0;
    v7[4] = *(a1 + 32);
    v8 = v4;
    dispatch_sync(&_dispatch_main_q, v7);
  }
}

id sub_8240(uint64_t a1)
{
  [*(a1 + 32) setFilteredListContent:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 32);

  return [v2 reloadData];
}

void sub_854C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_856C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  result = [*(a1 + 32) evaluateWithObject:{a2, a4, a5, a6}];
  if (result)
  {
    result = [*(a1 + 40) addObject:*(a1 + 48)];
    *(*(*(a1 + 56) + 8) + 24) = 1;
    *a7 = 1;
  }

  return result;
}

uint64_t sub_913C(uint64_t a1)
{
  v1 = [*(a1 + 32) listController];
  [v1 deselectHighlightedRow];

  return 1;
}

uint64_t sub_9198(uint64_t a1)
{
  v1 = [*(a1 + 32) listController];
  [v1 deselectHighlightedRow];

  return 1;
}

id sub_936C(uint64_t a1)
{
  v1 = [*(a1 + 32) parentController];
  [v1 reloadSpecifiers];

  return +[InternationalSettingsController syncPreferencesAndPostNotificationForLanguageChange];
}

void layoutSubviewsPatchForTextLabelTruncation(void *a1)
{
  v18 = a1;
  v1 = [v18 textLabel];
  [v1 frame];
  v3 = v2;
  v5 = v4;
  v7 = v6;

  v8 = [v18 textLabel];
  v9 = [v8 superview];

  [v9 size];
  v11 = v10;
  [v9 directionalLayoutMargins];
  v13 = v12;
  [v9 directionalLayoutMargins];
  v15 = v14;
  if ([UIApp userInterfaceLayoutDirection] == &dword_0 + 1)
  {
    [v9 directionalLayoutMargins];
    v3 = v16;
  }

  v17 = [v18 textLabel];
  [v17 setFrame:{v3, v5, v11 - v13 - v15, v7}];
}

void sub_A174(id a1)
{
  qword_3D058 = objc_alloc_init(ISInternationalLocaleRepresentation);

  _objc_release_x1();
}

id COSActivePairingIsTinker()
{
  v0 = +[NRPairedDeviceRegistry sharedInstance];
  v1 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
  v2 = [v0 getAllDevicesWithArchivedAltAccountDevicesMatching:v1];
  v3 = [v2 firstObject];

  v4 = [v3 valueForProperty:NRDevicePropertyIsAltAccount];
  v5 = [v4 BOOLValue];

  return v5;
}

id sub_AAC8(uint64_t a1)
{
  v13[0] = @"languages";
  v2 = +[NSLocale preferredLanguages];
  v14[0] = v2;
  v13[1] = @"languages-count";
  v3 = +[NSLocale preferredLanguages];
  v4 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 count]);
  v14[1] = v4;
  v13[2] = @"device-language";
  v5 = +[NSLocale _deviceLanguage];
  v14[2] = v5;
  v13[3] = @"locale";
  v6 = +[NSLocale currentLocale];
  v7 = [v6 localeIdentifier];
  v8 = *(a1 + 32);
  v14[3] = v7;
  v14[4] = v8;
  v13[4] = @"top-language-and-locale-pair";
  v13[5] = @"calendar";
  v9 = +[NSCalendar currentCalendar];
  v10 = [v9 calendarIdentifier];
  v14[5] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:6];

  return v11;
}

int64_t sub_B9C4(id a1, NSString *a2, NSString *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = +[NSLocale _deviceLanguage];
  v7 = [NSLocale localeWithLocaleIdentifier:v6];
  v8 = [v7 localizedStringForLanguage:v5 context:3];

  v9 = +[NSLocale _deviceLanguage];
  v10 = [NSLocale localeWithLocaleIdentifier:v9];
  v11 = [v10 localizedStringForLanguage:v4 context:3];

  v12 = [v8 localizedStandardCompare:v11];
  return v12;
}

void sub_D29C(uint64_t a1)
{
  v4 = [NSIndexPath indexPathForRow:*(a1 + 40) inSection:*(a1 + 48)];
  v2 = [*(a1 + 32) tableView:*(*(a1 + 32) + 32) cellForRowAtIndexPath:v4];
  v3 = [v2 textLabel];
  [v3 sizeThatFits:{1.79769313e308, 1.79769313e308}];
}

void sub_E3B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_E3E8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_E400(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  v7 = [v12 objectForKeyedSubscript:@"kLanguageSectionKeyLanguages"];
  v8 = [v7 containsObject:a1[4]];

  if (v8)
  {
    *(*(a1[5] + 8) + 24) = a3;
    v9 = [v12 objectForKeyedSubscript:@"kLanguageSectionKeyLanguages"];
    v10 = *(a1[6] + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    *a4 = 1;
  }
}

void sub_E614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_E634(uint64_t a1)
{
  v2 = [*(a1 + 32) unfilteredLanguageSections];
  v15 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v2 count]);

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [*(a1 + 32) unfilteredLanguageSections];
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v9 = [v8 objectForKeyedSubscript:@"kLanguageSectionKeyLanguages"];
        v10 = [v9 filteredLanguagesBySearchString:*(a1 + 40)];

        if ([v10 count])
        {
          v22[0] = @"kLanguageSectionKeyTitle";
          v11 = [v8 objectForKeyedSubscript:@"kLanguageSectionKeyTitle"];
          v22[1] = @"kLanguageSectionKeyLanguages";
          v23[0] = v11;
          v23[1] = v10;
          v12 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];

          [v15 addObject:v12];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v5);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v14 = [WeakRetained isCancelled];

  if ((v14 & 1) == 0)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_E898;
    block[3] = &unk_34EA0;
    block[4] = *(a1 + 32);
    v17 = v15;
    dispatch_sync(&_dispatch_main_q, block);
  }
}

id sub_E898(uint64_t a1)
{
  [*(a1 + 32) setFilteredLanguageSections:*(a1 + 40)];
  *(*(a1 + 32) + 48) = 1;
  v2 = *(*(a1 + 32) + 32);

  return [v2 reloadData];
}

uint64_t sub_F3A8(uint64_t a1)
{
  v1 = [*(a1 + 32) listController];
  [v1 deselectHighlightedRow];

  return 1;
}

id sub_10C6C(uint64_t a1)
{
  [*(a1 + 32) moveSpecifierAtIndexPath:*(a1 + 40) toIndexPath:*(a1 + 48) moveRow:1];
  v2 = *(a1 + 32);

  return [v2 setUpdatedAppleLanguages:0];
}

void sub_110F8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if ([*(a1 + 32) isEditing])
  {
    [*(a1 + 32) initializeUpdatedAppleLanguagesIfNeeded];
    if (([*(a1 + 40) row] & 0x8000000000000000) == 0)
    {
      v10 = [*(a1 + 40) row];
      v11 = [*(a1 + 32) updatedAppleLanguages];
      if (![v11 count])
      {
        sub_20CB4();
      }

      v12 = [*(a1 + 32) updatedAppleLanguages];
      v13 = [v12 count];

      if (v10 < v13)
      {
        v14 = [*(a1 + 32) updatedAppleLanguages];
        [v14 removeObjectAtIndex:v10];

        v15 = *(a1 + 32);
        v16 = [v15 specifierAtIndexPath:*(a1 + 40)];
        [v15 removeSpecifier:v16 animated:1];

        v9[2](v9, 1);
      }
    }
  }

  else
  {
    v17 = +[ISInternationalViewController localizedRestartStringForCurrentDevice];
    +[UIDevice currentDevice];
    v18 = v28 = v9;
    v19 = +[UIAlertController alertControllerWithTitle:message:preferredStyle:](UIAlertController, "alertControllerWithTitle:message:preferredStyle:", v17, 0, [v18 sf_isiPad]);

    v20 = [NSBundle bundleForClass:objc_opt_class()];
    v21 = [v20 localizedStringForKey:@"CANCEL_CHANGE_LANGUAGE" value:&stru_35798 table:@"InternationalSettings"];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_11484;
    v32[3] = &unk_35280;
    v22 = v28;
    v33 = v22;
    v23 = [UIAlertAction actionWithTitle:v21 style:1 handler:v32];

    v24 = [NSBundle bundleForClass:objc_opt_class()];
    v25 = [v24 localizedStringForKey:@"CONTINUE_CHANGE_LANGUAGE" value:&stru_35798 table:@"InternationalSettings"];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_11498;
    v29[3] = &unk_352A8;
    v26 = *(a1 + 40);
    v29[4] = *(a1 + 32);
    v30 = v26;
    v31 = v22;
    v27 = [UIAlertAction actionWithTitle:v25 style:2 handler:v29];

    [v19 addAction:v23];
    [v19 addAction:v27];
    [*(a1 + 32) presentViewController:v19 animated:1 completion:0];

    v9 = v28;
  }
}

uint64_t sub_11498(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 specifierAtIndexPath:*(a1 + 40)];
  [v2 removeSpecifier:v3 animated:1];

  [*(a1 + 32) initializeUpdatedAppleLanguagesIfNeeded];
  v4 = [*(a1 + 32) updatedAppleLanguages];
  [v4 removeObjectAtIndex:{objc_msgSend(*(a1 + 40), "row")}];

  [*(a1 + 32) changeLanguage:0];
  v5 = *(*(a1 + 48) + 16);

  return v5();
}

void sub_12B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_12F9C(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_3D068)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_130E0;
    v4[4] = &unk_34EC0;
    v4[5] = v4;
    v5 = off_352F0;
    v6 = 0;
    qword_3D068 = _sl_dlopen();
    v2 = v4[0];
    if (qword_3D068)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("CloudSettingsManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_20ACC();
  }

  qword_3D060 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_130E0(uint64_t a1)
{
  result = _sl_dlopen();
  qword_3D068 = result;
  return result;
}

id sub_14850(uint64_t a1)
{
  [*(a1 + 32) setSelectedScript:*(a1 + 40)];

  return +[InternationalSettingsController syncPreferencesAndPostNotificationForLanguageChange];
}

uint64_t sub_14884(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2[1];
  v7 = *a1 == *a2 && a1[1] == v6;
  if (!v7 && (sub_2134C() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Option(0, a3, a4, v6);
  if ((sub_211AC() & 1) == 0)
  {
    return 0;
  }

  return sub_20E6C();
}

uint64_t sub_14948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_20E8C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

id sub_14A08(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for Settings();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_14A68(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_20E8C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_14B00(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_20E8C();
  v9 = *(v8 - 8);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v9 + 80);
  if (v7 <= *(v9 + 84))
  {
    v13 = *(v9 + 84);
  }

  else
  {
    v13 = v7;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v14)
  {
    goto LABEL_31;
  }

  v15 = ((v11 + v12 + ((v10 + 16) & ~v10)) & ~v12) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((a2 - v14 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 < 2)
    {
LABEL_31:
      if ((v13 & 0x80000000) != 0)
      {
        v24 = (a1 + v10 + 16) & ~v10;
        if (v7 == v14)
        {
          v25 = *(v6 + 48);

          return v25(v24, v7, v5);
        }

        else
        {
          v26 = *(v9 + 48);
          v27 = (v24 + v11 + v12) & ~v12;

          return v26(v27);
        }
      }

      else
      {
        v23 = *(a1 + 1);
        if (v23 >= 0xFFFFFFFF)
        {
          LODWORD(v23) = -1;
        }

        return (v23 + 1);
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_31;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = v15;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v14 + (v22 | v20) + 1;
}

void sub_14DA8(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v28 = v8;
  v9 = *(v8 + 84);
  v10 = sub_20E8C();
  v11 = *(v10 - 8);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  v14 = *(v11 + 80);
  if (v9 <= *(v11 + 84))
  {
    v15 = *(v11 + 84);
  }

  else
  {
    v15 = v9;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = ((v13 + v14 + ((v12 + 16) & ~v12)) & ~v14) + *(*(v10 - 8) + 64);
  if (a3 <= v16)
  {
    v18 = 0;
  }

  else if (v17 <= 3)
  {
    v21 = ((a3 - v16 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v16 < a2)
  {
    v19 = ~v16 + a2;
    if (v17 < 4)
    {
      v20 = (v19 >> (8 * v17)) + 1;
      if (v17)
      {
        v23 = v19 & ~(-1 << (8 * v17));
        bzero(a1, v17);
        if (v17 != 3)
        {
          if (v17 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_53:
              if (v18 == 2)
              {
                *(a1 + v17) = v20;
              }

              else
              {
                *(a1 + v17) = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *a1 = v23;
        *(a1 + 2) = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v18)
    {
      *(a1 + v17) = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *(a1 + v17) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *(a1 + v17) = 0;
  }

  else if (v18)
  {
    *(a1 + v17) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if ((v15 & 0x80000000) != 0)
  {
    v24 = (a1 + v12 + 16) & ~v12;
    if (v9 == v16)
    {
      v25 = *(v28 + 56);

      v25(v24, a2, v9, v7);
    }

    else
    {
      v26 = *(v11 + 56);
      v27 = (v24 + v13 + v14) & ~v14;

      v26(v27, a2);
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = (a2 - 1);
  }
}

uint64_t sub_15150@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for Settings();
  result = sub_210FC();
  *a2 = result;
  return result;
}

uint64_t sub_15194(uint64_t a1, id *a2)
{
  result = sub_211CC();
  *a2 = 0;
  return result;
}

uint64_t sub_1520C(uint64_t a1, id *a2)
{
  v3 = sub_211DC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1528C@<X0>(uint64_t *a1@<X8>)
{
  sub_211EC();
  v2 = sub_211BC();

  *a1 = v2;
  return result;
}

uint64_t sub_152D0()
{
  sub_211EC();
  v0 = sub_2121C();

  return v0;
}

uint64_t sub_1530C(uint64_t a1)
{
  sub_211EC();
  sub_2120C();
}

Swift::Int sub_15360(uint64_t a1)
{
  sub_211EC();
  sub_2136C();
  sub_2120C();
  v1 = sub_2137C();

  return v1;
}

uint64_t sub_153D4(void *a1, uint64_t *a2)
{
  v2 = sub_211EC();
  v4 = v3;
  if (v2 == sub_211EC() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2134C();
  }

  return v7 & 1;
}

uint64_t sub_1545C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_211BC();

  *a2 = v3;
  return result;
}

uint64_t sub_154A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_211EC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void type metadata accessor for Identifier()
{
  if (!qword_3CD98)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_3CD98);
    }
  }
}

uint64_t sub_15550(uint64_t a1)
{
  v2 = sub_156E4(&qword_3CDB8, type metadata accessor for Identifier, &unk_27664);
  v3 = sub_156E4(&qword_3CDC0, type metadata accessor for Identifier, &unk_275B8);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_156E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1572C()
{
  v1 = &v0[OBJC_IVAR____TtC21InternationalSettings17DateFormatSetting__dateFormat];
  *v1 = 0;
  *(v1 + 1) = 0;
  *&v0[OBJC_IVAR____TtC21InternationalSettings17DateFormatSetting__dateFormatOptions] = 0;
  sub_2108C();
  v10.receiver = v0;
  v10.super_class = type metadata accessor for DateFormatSetting(0);
  v2 = objc_msgSendSuper2(&v10, "init");
  sub_15C64();
  v3 = [objc_opt_self() defaultCenter];
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  v9[4] = sub_1772C;
  v9[5] = v4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_15B4C;
  v9[3] = &unk_35580;
  v5 = _Block_copy(v9);
  v6 = v2;

  v7 = [v3 addObserverForName:NSCurrentLocaleDidChangeNotification object:0 queue:0 usingBlock:v5];
  _Block_release(v5);

  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_158C0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC21InternationalSettings17DateFormatSetting__dateFormat);
  v6 = *(v2 + OBJC_IVAR____TtC21InternationalSettings17DateFormatSetting__dateFormat + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (sub_2134C() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v10);
    sub_16CF0();
    sub_2106C();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_15A0C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21InternationalSettings17DateFormatSetting__dateFormatOptions;
  if (!*(v1 + OBJC_IVAR____TtC21InternationalSettings17DateFormatSetting__dateFormatOptions))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v7);
    sub_16CF0();
    sub_2106C();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v5 = sub_16E20(v4, a1);

  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;
}

uint64_t sub_15B4C(uint64_t a1, uint64_t a2)
{
  v3 = sub_20DCC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  sub_20DBC();

  v8(v7);

  return (*(v4 + 8))(v7, v3);
}

void *sub_15C64()
{
  v33 = sub_16C78(&qword_3CE18, &qword_27940);
  v1 = *(v33 - 8);
  __chkstk_darwin(v33, v2);
  v4 = (&v29 - v3);
  v5 = objc_opt_self();
  v6 = [v5 currentDateFormat];
  v7 = sub_211EC();
  v9 = v8;

  v29 = v0;
  sub_158C0(v7, v9);
  v10 = [v5 availableDateFormats];
  sub_1752C(0, &qword_3CE40, IPDateFormat_ptr);
  v11 = sub_2123C();

  if (!(v11 >> 62))
  {
    v12 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_13:

    v15 = &_swiftEmptyArrayStorage;
    return sub_15A0C(v15);
  }

  v12 = sub_212DC();
  if (!v12)
  {
    goto LABEL_13;
  }

LABEL_3:
  v34 = &_swiftEmptyArrayStorage;
  result = sub_1CA28(0, v12 & ~(v12 >> 63), 0);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v14 = 0;
    v15 = v34;
    v16 = v11;
    v30 = v11 & 0xC000000000000001;
    v31 = v12;
    v32 = v11;
    do
    {
      if (v30)
      {
        v17 = sub_212CC();
      }

      else
      {
        v17 = *(v16 + 8 * v14 + 32);
      }

      v18 = v17;
      v19 = [v17 title];
      v20 = sub_211EC();
      v22 = v21;

      v23 = [v18 option];
      v24 = sub_211EC();
      v26 = v25;

      sub_20E7C();
      v4[2] = v24;
      v4[3] = v26;
      *v4 = v20;
      v4[1] = v22;
      v34 = v15;
      v28 = v15[2];
      v27 = v15[3];
      if (v28 >= v27 >> 1)
      {
        sub_1CA28((v27 > 1), v28 + 1, 1);
        v15 = v34;
      }

      ++v14;
      v15[2] = v28 + 1;
      sub_17574(v4, v15 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v28);
      v16 = v32;
    }

    while (v31 != v14);

    return sub_15A0C(v15);
  }

  __break(1u);
  return result;
}

uint64_t sub_160F0()
{
  swift_getKeyPath();
  sub_16CF0();
  sub_2107C();

  v1 = *(v0 + OBJC_IVAR____TtC21InternationalSettings17DateFormatSetting__dateFormat);

  return v1;
}

uint64_t sub_161FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_16CF0();
  sub_2107C();

  v4 = *(v3 + OBJC_IVAR____TtC21InternationalSettings17DateFormatSetting__dateFormat + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC21InternationalSettings17DateFormatSetting__dateFormat);
  a2[1] = v4;
}

uint64_t sub_16284()
{
  swift_getKeyPath();
  sub_16CF0();
  sub_2107C();
}

uint64_t sub_16300@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_16CF0();
  sub_2107C();

  *a2 = *(v3 + OBJC_IVAR____TtC21InternationalSettings17DateFormatSetting__dateFormatOptions);
}

id sub_163C8()
{
  v1 = sub_16C78(&qword_3CE18, &qword_27940);
  v57 = *(v1 - 8);
  __chkstk_darwin(v1 - 8, v2);
  v4 = (v51 - v3);
  type metadata accessor for Settings();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v50._countAndFlagsBits = 0xE000000000000000;
  v60.value._object = 0x80000000000276B0;
  v59._countAndFlagsBits = 0x524F465F45544144;
  v59._object = 0xEB0000000054414DLL;
  v60.value._countAndFlagsBits = 0xD000000000000015;
  v7.super.isa = v6;
  v61._countAndFlagsBits = 0;
  v61._object = 0xE000000000000000;
  sub_20E1C(v59, v60, v7, v61, 0, v50);

  v8 = type metadata accessor for DateFormatSetting(0);
  v58[3] = v8;
  v58[0] = v0;
  v9 = v0;
  v10 = sub_211BC();

  if (v8)
  {
    v11 = sub_17374(v58, v8);
    v12 = *(v8 - 8);
    __chkstk_darwin(v11, v11);
    v14 = v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v14);
    v15 = sub_2133C();
    (*(v12 + 8))(v14, v8);
    sub_173B8(v58);
  }

  else
  {
    v15 = 0;
  }

  sub_1752C(0, &qword_3CE20, off_34700);
  v16 = [objc_allocWithZone(PSSpecifier) initWithName:v10 target:v15 set:"setDateFormatAndUpdateFooterTextWithDateFormat:specifier:" get:"dateFormat" detail:swift_getObjCClassFromMetadata() cell:2 edit:0];

  result = swift_unknownObjectRelease();
  if (!v16)
  {
    __break(1u);
    goto LABEL_21;
  }

  v18 = sub_211BC();
  v56 = v16;
  [v16 setIdentifier:v18];

  swift_getKeyPath();
  v19 = OBJC_IVAR____TtC21InternationalSettings17DateFormatSetting___observationRegistrar;
  v58[0] = v9;
  v20 = sub_16CF0();
  sub_2107C();

  v21 = OBJC_IVAR____TtC21InternationalSettings17DateFormatSetting__dateFormatOptions;
  v22 = *&v9[OBJC_IVAR____TtC21InternationalSettings17DateFormatSetting__dateFormatOptions];
  if (!v22)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  v23 = *(v22 + 16);
  v24 = &_swiftEmptyArrayStorage;
  if (v23)
  {
    v52 = OBJC_IVAR____TtC21InternationalSettings17DateFormatSetting__dateFormatOptions;
    v53 = v20;
    v54 = v19;
    v55 = v9;
    v58[0] = &_swiftEmptyArrayStorage;

    sub_1CA88(0, v23, 0);
    v24 = v58[0];
    v25 = *(v57 + 80);
    v51[1] = v22;
    v26 = v22 + ((v25 + 32) & ~v25);
    v27 = *(v57 + 72);
    do
    {
      sub_16D48(v26, v4);
      v29 = v4[2];
      v28 = v4[3];

      sub_16DB8(v4);
      v58[0] = v24;
      v31 = v24[2];
      v30 = v24[3];
      if (v31 >= v30 >> 1)
      {
        sub_1CA88((v30 > 1), v31 + 1, 1);
        v24 = v58[0];
      }

      v24[2] = v31 + 1;
      v32 = &v24[2 * v31];
      *(v32 + 4) = v29;
      *(v32 + 5) = v28;
      v26 += v27;
      --v23;
    }

    while (v23);

    v9 = v55;
    v21 = v52;
  }

  swift_getKeyPath();
  v58[0] = v9;
  sub_2107C();

  v33 = *&v9[v21];
  if (!v33)
  {
    goto LABEL_22;
  }

  v34 = v33[2];
  v35 = &_swiftEmptyArrayStorage;
  if (v34)
  {
    v58[0] = &_swiftEmptyArrayStorage;

    sub_1CA88(0, v34, 0);
    v35 = v58[0];
    v36 = *(v57 + 80);
    v55 = v33;
    v37 = v33 + ((v36 + 32) & ~v36);
    v38 = *(v57 + 72);
    do
    {
      sub_16D48(v37, v4);
      v40 = *v4;
      v39 = v4[1];

      sub_16DB8(v4);
      v58[0] = v35;
      v42 = v35[2];
      v41 = v35[3];
      if (v42 >= v41 >> 1)
      {
        sub_1CA88((v41 > 1), v42 + 1, 1);
        v35 = v58[0];
      }

      v35[2] = v42 + 1;
      v43 = &v35[2 * v42];
      *(v43 + 4) = v40;
      *(v43 + 5) = v39;
      v37 += v38;
      --v34;
    }

    while (v34);
  }

  sub_1EC2C(v24);

  isa = sub_2122C().super.isa;
  sub_1EC2C(v35);
  v45 = sub_2122C().super.isa;

  v46 = v56;
  [v56 setValues:isa titles:v45];

  v47 = sub_2122C().super.isa;
  [v46 setProperty:v47 forKey:PSValidValuesKey];

  v48 = sub_2122C().super.isa;
  [v46 setProperty:v48 forKey:PSValidTitlesKey];

  sub_16FFC();
  v49 = sub_211BC();

  [v46 setProperty:v49 forKey:PSStaticTextMessageKey];

  return v46;
}

id sub_16AB8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DateFormatSetting(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for DateFormatSetting(uint64_t a1)
{
  result = qword_3CE08;
  if (!qword_3CE08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_16BD4(uint64_t a1)
{
  result = sub_2109C();
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

uint64_t sub_16C78(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_16CF0()
{
  result = qword_3CE28;
  if (!qword_3CE28)
  {
    type metadata accessor for DateFormatSetting(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CE28);
  }

  return result;
}

uint64_t sub_16D48(uint64_t a1, uint64_t a2)
{
  v4 = sub_16C78(&qword_3CE18, &qword_27940);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_16DB8(uint64_t a1)
{
  v2 = sub_16C78(&qword_3CE18, &qword_27940);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_16E20(uint64_t a1, uint64_t a2)
{
  v4 = sub_16C78(&qword_3CE18, &qword_27940);
  v6 = __chkstk_darwin(v4, v5);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6, v9);
  v12 = (&v22 - v11);
  v13 = *(a1 + 16);
  if (v13 != *(a2 + 16))
  {
LABEL_20:
    v20 = 0;
    return v20 & 1;
  }

  if (v13 && a1 != a2)
  {
    v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v15 = a1 + v14;
    v16 = a2 + v14;
    v17 = *(v10 + 72);
    while (1)
    {
      sub_16D48(v15, v12);
      sub_16D48(v16, v8);
      v18 = *v12 == *v8 && v12[1] == v8[1];
      if (!v18 && (sub_2134C() & 1) == 0)
      {
        break;
      }

      v19 = v12[2] == v8[2] && v12[3] == v8[3];
      if (!v19 && (sub_2134C() & 1) == 0)
      {
        break;
      }

      v20 = sub_20E6C();
      sub_16DB8(v8);
      sub_16DB8(v12);
      if (v20)
      {
        v16 += v17;
        v15 += v17;
        if (--v13)
        {
          continue;
        }
      }

      return v20 & 1;
    }

    sub_16DB8(v8);
    sub_16DB8(v12);
    goto LABEL_20;
  }

  v20 = 1;
  return v20 & 1;
}

uint64_t sub_16FFC()
{
  v0 = sub_20E5C();
  v39 = *(v0 - 8);
  v40 = v0;
  __chkstk_darwin(v0, v1);
  v3 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  [objc_opt_self() sampleTime];
  sub_20E4C();
  v4 = [objc_allocWithZone(NSDateFormatter) init];
  [v4 setDateStyle:1];
  isa = sub_20E3C().super.isa;
  v6 = [v4 stringFromDate:isa];

  v7 = sub_211EC();
  v37 = v8;
  v38 = v7;

  [v4 setDateStyle:2];
  v9 = sub_20E3C().super.isa;
  v10 = [v4 stringFromDate:v9];

  v11 = sub_211EC();
  v35 = v12;
  v36 = v11;

  [v4 setDateStyle:3];
  v13 = sub_20E3C().super.isa;
  v14 = [v4 stringFromDate:v13];

  v34 = sub_211EC();
  v16 = v15;

  [v4 setDateStyle:4];
  v17 = sub_20E3C().super.isa;
  v18 = [v4 stringFromDate:v17];

  v19 = sub_211EC();
  v21 = v20;

  type metadata accessor for Settings();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v32._countAndFlagsBits = 0x8000000000029130;
  v41._countAndFlagsBits = 0xD00000000000001FLL;
  v41._object = 0x8000000000029110;
  v42.value._object = 0x80000000000276B0;
  v42.value._countAndFlagsBits = 0xD000000000000015;
  v24.super.isa = v23;
  v43._countAndFlagsBits = 0;
  v43._object = 0xE000000000000000;
  sub_20E1C(v41, v42, v24, v43, 0xD000000000000044, v32);

  sub_16C78(&qword_3CE30, &qword_27788);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_276B0;
  *(v25 + 56) = &type metadata for String;
  v26 = sub_17404();
  v27 = v37;
  *(v25 + 32) = v38;
  *(v25 + 40) = v27;
  *(v25 + 96) = &type metadata for String;
  *(v25 + 104) = v26;
  v28 = v35;
  v29 = v36;
  *(v25 + 64) = v26;
  *(v25 + 72) = v29;
  *(v25 + 80) = v28;
  *(v25 + 136) = &type metadata for String;
  *(v25 + 144) = v26;
  *(v25 + 112) = v34;
  *(v25 + 120) = v16;
  *(v25 + 176) = &type metadata for String;
  *(v25 + 184) = v26;
  *(v25 + 152) = v19;
  *(v25 + 160) = v21;
  v30 = sub_211FC();

  (*(v39 + 8))(v3, v40);
  return v30;
}

void *sub_17374(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_173B8(void *a1)
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

unint64_t sub_17404()
{
  result = qword_3CE38;
  if (!qword_3CE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CE38);
  }

  return result;
}

uint64_t sub_17458()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC21InternationalSettings17DateFormatSetting__dateFormatOptions) = *(v0 + 24);
}

uint64_t sub_174A0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_158C0(v1, v2);
}

uint64_t sub_174E0()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC21InternationalSettings17DateFormatSetting__dateFormat);
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_1752C(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_17574(uint64_t a1, uint64_t a2)
{
  v4 = sub_16C78(&qword_3CE18, &qword_27940);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_175E4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = objc_opt_self();
  v5 = sub_211BC();
  [v4 setDateFormat:v5];

  _CFLocaleResetCurrent();
  v6 = CFNotificationCenterGetDarwinNotifyCenter();
  v7 = sub_211BC();
  CFNotificationCenterPostNotification(v6, v7, 0, 0, 1u);

  sub_16FFC();
  v8 = sub_211BC();

  [a3 setProperty:v8 forKey:PSStaticTextMessageKey];
}

uint64_t sub_176F4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_17750(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_179C8(uint64_t a1)
{
  v36 = a1;
  v1 = sub_2101C();
  v2 = *(v1 - 8);
  v4 = __chkstk_darwin(v1, v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v7);
  v9 = &v35 - v8;
  v35 = sub_2105C();
  v10 = *(v35 - 8);
  v12 = __chkstk_darwin(v35, v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v15);
  v17 = &v35 - v16;
  type metadata accessor for Settings();
  sub_18BE0(&qword_3CE60, type metadata accessor for Settings, &unk_274A8);
  sub_210FC();
  sub_2110C();

  v18 = [objc_opt_self() preferredLocale];
  if (v18)
  {
    v19 = v18;
    sub_20EDC();

    sub_20EAC();
    v20 = *(v2 + 8);
    v20(v6, v1);
    sub_20E9C();
    sub_2100C();
    v20(v9, v1);
    v21 = sub_2102C();
    v22 = *(v10 + 8);
    v23 = v35;
    v22(v17, v35);
    v24 = v36;
    if (v21 == v36)
    {
      v25 = 0;
    }

    else
    {
      sub_2104C();
      isa = sub_2103C().super.isa;
      v22(v14, v23);
      v27 = [(objc_class *)isa calendarIdentifier];

      sub_16C78(&qword_3CE68, &qword_277D0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_277C0;
      *(inited + 32) = v27;
      v29 = inited + 32;
      *(inited + 40) = v24;
      v25 = sub_18A94(inited);
      swift_setDeallocating();
      sub_18B80(v29, &qword_3CE70, &qword_277D8);
    }

    v30 = [objc_opt_self() standardUserDefaults];
    if (v25)
    {
      type metadata accessor for Identifier();
      sub_18BE0(&qword_3CDB8, type metadata accessor for Identifier, &unk_27664);
      v31.super.isa = sub_2118C().super.isa;
    }

    else
    {
      v31.super.isa = 0;
    }

    v32 = sub_211BC();
    [v30 setObject:v31.super.isa forKey:v32 inDomain:NSGlobalDomain];
    swift_unknownObjectRelease();

    v33 = CFNotificationCenterGetDarwinNotifyCenter();
    v34 = sub_211BC();
    CFNotificationCenterPostNotification(v33, v34, 0, 0, 1u);
  }

  else
  {
    __break(1u);
  }
}

id sub_17F74()
{
  v1 = sub_16C78(&qword_3CE48, &qword_27930);
  v48 = *(v1 - 8);
  __chkstk_darwin(v1 - 8, v2);
  v4 = (&v45 - v3);
  v5 = type metadata accessor for Settings();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v44._countAndFlagsBits = 0xE000000000000000;
  v51.value._object = 0x80000000000291D0;
  v50._countAndFlagsBits = 0x45575F5453524946;
  v50._object = 0xED00005941444B45;
  v51.value._countAndFlagsBits = 0xD000000000000015;
  v8.super.isa = v7;
  v52._countAndFlagsBits = 0;
  v52._object = 0xE000000000000000;
  sub_20E1C(v50, v51, v8, v52, 0, v44);

  v49[3] = v5;
  v49[0] = v0;
  v9 = v0;
  v10 = sub_211BC();

  if (v5)
  {
    v11 = sub_17374(v49, v5);
    v12 = *(v5 - 8);
    __chkstk_darwin(v11, v11);
    v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v14);
    v15 = sub_2133C();
    (*(v12 + 8))(v14, v5);
    sub_173B8(v49);
  }

  else
  {
    v15 = 0;
  }

  sub_1752C(0, &qword_3CE50, off_346E0);
  v16 = [objc_allocWithZone(PSSpecifier) initWithName:v10 target:v15 set:"setFirstWeekdayAsNSNumber:" get:"firstWeekdayAsNSNumber" detail:swift_getObjCClassFromMetadata() cell:2 edit:0];

  result = swift_unknownObjectRelease();
  if (v16)
  {
    v18 = sub_211BC();
    v47 = v16;
    [v16 setIdentifier:v18];

    v19 = sub_18548();
    v20 = v19[2];
    v21 = &_swiftEmptyArrayStorage;
    if (v20)
    {
      v49[0] = &_swiftEmptyArrayStorage;
      sub_1CAA8(0, v20, 0);
      v22 = v49[0];
      v23 = *(v48 + 80);
      v46 = v19;
      v24 = v19 + ((v23 + 32) & ~v23);
      v25 = *(v48 + 72);
      do
      {
        sub_189B4(v24, v4);
        v26 = v4[2];
        sub_18B80(v4, &qword_3CE48, &qword_27930);
        v49[0] = v22;
        v28 = v22[2];
        v27 = v22[3];
        if (v28 >= v27 >> 1)
        {
          sub_1CAA8((v27 > 1), v28 + 1, 1);
          v22 = v49[0];
        }

        v22[2] = v28 + 1;
        v22[v28 + 4] = v26;
        v24 += v25;
        --v20;
      }

      while (v20);

      v21 = &_swiftEmptyArrayStorage;
    }

    else
    {

      v22 = &_swiftEmptyArrayStorage;
    }

    v29 = sub_18548();
    v30 = v29[2];
    if (v30)
    {
      v49[0] = &_swiftEmptyArrayStorage;
      sub_1CA88(0, v30, 0);
      v21 = v49[0];
      v31 = *(v48 + 80);
      v46 = v29;
      v32 = v29 + ((v31 + 32) & ~v31);
      v33 = *(v48 + 72);
      do
      {
        sub_189B4(v32, v4);
        v34 = *v4;
        v35 = v4[1];

        sub_18B80(v4, &qword_3CE48, &qword_27930);
        v49[0] = v21;
        v37 = v21[2];
        v36 = v21[3];
        if (v37 >= v36 >> 1)
        {
          sub_1CA88((v36 > 1), v37 + 1, 1);
          v21 = v49[0];
        }

        v21[2] = v37 + 1;
        v38 = &v21[2 * v37];
        *(v38 + 4) = v34;
        *(v38 + 5) = v35;
        v32 += v33;
        --v30;
      }

      while (v30);
    }

    sub_1ED2C(v22);

    isa = sub_2122C().super.isa;
    sub_1EC2C(v21);
    v40 = sub_2122C().super.isa;

    v41 = v47;
    [v47 setValues:isa titles:v40];

    v42 = sub_2122C().super.isa;
    [v41 setProperty:v42 forKey:PSValidValuesKey];

    v43 = sub_2122C().super.isa;
    [v41 setProperty:v43 forKey:PSValidTitlesKey];

    return v41;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_18548()
{
  v0 = sub_16C78(&qword_3CE48, &qword_27930);
  v42 = *(v0 - 8);
  v43 = v0;
  __chkstk_darwin(v0, v1);
  v3 = (&v38 - v2);
  v48 = sub_2101C();
  v4 = *(v48 - 8);
  v6 = __chkstk_darwin(v48, v5);
  v47 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v8);
  v46 = &v38 - v9;
  v45 = sub_2105C();
  v10 = *(v45 - 8);
  __chkstk_darwin(v45, v11);
  v44 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_allocWithZone(NSDateFormatter) init];
  [v13 setFormattingContext:2];
  result = [v13 standaloneWeekdaySymbols];
  if (!result)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  v15 = result;
  v38 = v13;
  v16 = sub_2123C();

  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = 0;
    v40 = (v10 + 8);
    v41 = (v4 + 8);
    v39 = v16 + 32;
    v19 = &_swiftEmptyArrayStorage;
    while (1)
    {
      v49 = v19;
      result = [objc_opt_self() preferredLocale];
      if (!result)
      {
        break;
      }

      v20 = result;
      v21 = v47;
      sub_20EDC();

      sub_20EAC();
      v22 = *v41;
      v23 = v21;
      v24 = v48;
      (*v41)(v23, v48);
      v25 = v46;
      sub_20E9C();
      v26 = v44;
      sub_2100C();
      v22(v25, v24);
      v27 = sub_2102C();
      result = (*v40)(v26, v45);
      v28 = v27 + v18;
      if (__OFADD__(v27, v18))
      {
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        break;
      }

      v29 = __OFSUB__(v28, 1);
      v30 = v28 - 1;
      if (v29)
      {
        goto LABEL_18;
      }

      v31 = v30 % v17;
      if ((v31 & 0x8000000000000000) != 0)
      {
        goto LABEL_19;
      }

      if (v31 >= *(v16 + 16))
      {
        goto LABEL_20;
      }

      v32 = v31 + 1;
      v33 = (v39 + 16 * v31);
      v35 = *v33;
      v34 = v33[1];

      sub_20E7C();
      v3[1] = v34;
      v3[2] = v32;
      *v3 = v35;
      v19 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1C6EC(0, v19[2] + 1, 1, v19);
      }

      v37 = v19[2];
      v36 = v19[3];
      if (v37 >= v36 >> 1)
      {
        v19 = sub_1C6EC((v36 > 1), v37 + 1, 1, v19);
      }

      ++v18;
      v19[2] = v37 + 1;
      sub_18A24(v3, v19 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v37);
      if (v17 == v18)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

  v19 = &_swiftEmptyArrayStorage;
LABEL_16:

  return v19;
}

uint64_t sub_189B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_16C78(&qword_3CE48, &qword_27930);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18A24(uint64_t a1, uint64_t a2)
{
  v4 = sub_16C78(&qword_3CE48, &qword_27930);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_18A94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_16C78(&qword_3CE78, &unk_277E0);
    v3 = sub_2130C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_1DEA4(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_18B80(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_16C78(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_18BE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_18CE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2101C();
  v5 = *(v4 - 8);
  v7 = __chkstk_darwin(v4, v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = v21 - v11;
  type metadata accessor for Settings();
  sub_195B4();
  sub_210FC();
  sub_2110C();

  v13 = objc_opt_self();
  v14 = [v13 preferredLocale];
  if (!v14)
  {
    __break(1u);
    goto LABEL_11;
  }

  v15 = v14;
  sub_20EDC();

  sub_20EAC();
  v16 = *(v5 + 8);
  v16(v9, v4);
  sub_20E9C();
  isa = sub_20ECC().super.isa;
  v16(v12, v4);
  v18 = [(objc_class *)isa objectForKey:NSLocaleTemperatureUnit];

  if (!v18)
  {
LABEL_11:
    __break(1u);
    return;
  }

  sub_2129C();
  swift_unknownObjectRelease();
  sub_1960C(v22, &v23);
  swift_dynamicCast();
  if (v21[0] == a1 && v21[1] == a2)
  {

    v19 = 0;
  }

  else
  {
    v20 = sub_2134C();

    if (v20)
    {
      v19 = 0;
    }

    else
    {
      v19 = sub_211BC();
    }
  }

  [v13 _setPreferredTemperatureUnit:v19];
}

id sub_18FC4()
{
  v1 = type metadata accessor for Settings();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v51 = objc_opt_self();
  v3 = [v51 bundleForClass:ObjCClassFromMetadata];
  v43._countAndFlagsBits = 0xE000000000000000;
  v54._object = 0x8000000000028E50;
  v59.value._object = 0x80000000000291D0;
  v54._countAndFlagsBits = 0xD000000000000010;
  v59.value._countAndFlagsBits = 0xD000000000000015;
  v4.super.isa = v3;
  v64._countAndFlagsBits = 0;
  v64._object = 0xE000000000000000;
  sub_20E1C(v54, v59, v4, v64, 0, v43);

  v53[3] = v1;
  v53[0] = v0;
  v5 = v0;
  v6 = sub_211BC();

  if (v1)
  {
    v7 = sub_17374(v53, v1);
    v8 = *(v1 - 8);
    __chkstk_darwin(v7, v7);
    v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v10);
    v11 = sub_2133C();
    (*(v8 + 8))(v10, v1);
    sub_173B8(v53);
  }

  else
  {
    v11 = 0;
  }

  sub_19568();
  v12 = [objc_allocWithZone(PSSpecifier) initWithName:v6 target:v11 set:"setTemperatureUnit:" get:"temperatureUnit" detail:swift_getObjCClassFromMetadata() cell:2 edit:0];

  result = swift_unknownObjectRelease();
  if (v12)
  {
    v14 = sub_211BC();
    [v12 setIdentifier:v14];

    v48 = sub_16C78(&qword_3CE88, &qword_27800);
    inited = swift_initStackObject();
    v52 = xmmword_277F0;
    *(inited + 16) = xmmword_277F0;
    *(inited + 32) = sub_211EC();
    v50 = inited + 32;
    *(inited + 40) = v16;
    *(inited + 48) = sub_211EC();
    *(inited + 56) = v17;
    v18 = swift_allocObject();
    *(v18 + 16) = v52;
    v19 = v51;
    v20 = [v51 bundleForClass:ObjCClassFromMetadata];
    v44._countAndFlagsBits = 0xE000000000000000;
    v55._countAndFlagsBits = 0x20737569736C6543;
    v55._object = 0xAD00002943B0C228;
    v60.value._object = 0x80000000000291D0;
    v60.value._countAndFlagsBits = 0xD000000000000015;
    v21.super.isa = v20;
    v65._countAndFlagsBits = 0;
    v65._object = 0xE000000000000000;
    v22 = sub_20E1C(v55, v60, v21, v65, 0, v44);
    v49 = v12;
    v24 = v23;

    *(v18 + 32) = v22;
    *(v18 + 40) = v24;
    v25 = [v19 bundleForClass:ObjCClassFromMetadata];
    v45._countAndFlagsBits = 0xE000000000000000;
    v56._object = 0x80000000000292E0;
    v61.value._object = 0x80000000000291D0;
    v56._countAndFlagsBits = 0x1000000000000010;
    v61.value._countAndFlagsBits = 0xD000000000000015;
    v26.super.isa = v25;
    v66._countAndFlagsBits = 0;
    v66._object = 0xE000000000000000;
    v27 = sub_20E1C(v56, v61, v26, v66, 0, v45);
    v29 = v28;

    *(v18 + 48) = v27;
    *(v18 + 56) = v29;
    v30 = swift_initStackObject();
    *(v30 + 16) = v52;
    v31 = [v19 bundleForClass:ObjCClassFromMetadata];
    v46._countAndFlagsBits = 0xE000000000000000;
    v62.value._object = 0x80000000000291D0;
    v57._countAndFlagsBits = 4436162;
    v57._object = 0xA300000000000000;
    v32.super.isa = v31;
    v62.value._countAndFlagsBits = 0xD000000000000015;
    v67._countAndFlagsBits = 0;
    v67._object = 0xE000000000000000;
    v33 = sub_20E1C(v57, v62, v32, v67, 0, v46);
    v35 = v34;

    *(v30 + 32) = v33;
    *(v30 + 40) = v35;
    v36 = [v19 bundleForClass:ObjCClassFromMetadata];
    v47._countAndFlagsBits = 0xE000000000000000;
    v58._countAndFlagsBits = 4632770;
    v63.value._object = 0x80000000000291D0;
    v58._object = 0xA300000000000000;
    v63.value._countAndFlagsBits = 0xD000000000000015;
    v37.super.isa = v36;
    v68._countAndFlagsBits = 0;
    v68._object = 0xE000000000000000;
    v38 = sub_20E1C(v58, v63, v37, v68, 0, v47);
    v40 = v39;

    *(v30 + 48) = v38;
    *(v30 + 56) = v40;
    v41 = sub_1EC2C(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    v42 = v49;
    sub_1FBB0(v41, v18, v30);

    swift_setDeallocating();
    swift_arrayDestroy();
    return v42;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_19568()
{
  result = qword_3CE80;
  if (!qword_3CE80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_3CE80);
  }

  return result;
}

unint64_t sub_195B4()
{
  result = qword_3CE60;
  if (!qword_3CE60)
  {
    type metadata accessor for Settings();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CE60);
  }

  return result;
}

_OWORD *sub_1960C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_1961C()
{
  v0 = [objc_opt_self() preferredLocale];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 objectForKey:NSLocaleTemperatureUnit];

    if (v2)
    {
      sub_2129C();
      swift_unknownObjectRelease();
      sub_1960C(&v3, &v4);
      swift_dynamicCast();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_19934(uint64_t a1, uint64_t a2)
{
  v4 = sub_16C78(&qword_3CE90, &qword_27808);
  v5 = *(v4 - 8);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v9 = (&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v7, v10);
  v29 = &v28 - v12;
  __chkstk_darwin(v11, v13);
  v30 = &v28 - v14;
  result = sub_1A184();
  v16 = result;
  v17 = *(result + 16);
  if (v17)
  {
    v18 = 0;
    while (v18 < *(v16 + 16))
    {
      sub_1A3F4(v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v18, v9);
      v19 = [v9[2] formattedNumber];
      v20 = sub_211EC();
      v22 = v21;

      if (v20 == a1 && v22 == a2)
      {
        goto LABEL_11;
      }

      v24 = sub_2134C();

      if (v24)
      {

        goto LABEL_13;
      }

      ++v18;
      result = sub_1A464(v9);
      if (v17 == v18)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    __break(1u);
LABEL_11:

LABEL_13:

    v25 = v29;
    sub_1A4CC(v9, v29);
    v26 = v25;
    v27 = v30;
    sub_1A4CC(v26, v30);
    [v31 setNumberFormat:*(v27 + 16)];
    return sub_1A464(v27);
  }

  return result;
}

id sub_19BB4()
{
  v1 = sub_16C78(&qword_3CE90, &qword_27808);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1 - 8, v3);
  v5 = (v50 - v4);
  v6 = type metadata accessor for Settings();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v49._countAndFlagsBits = 0xE000000000000000;
  v55.value._object = 0x80000000000291D0;
  v54._countAndFlagsBits = 0x465F5245424D554ELL;
  v54._object = 0xED000054414D524FLL;
  v55.value._countAndFlagsBits = 0xD000000000000015;
  v9.super.isa = v8;
  v56._countAndFlagsBits = 0;
  v56._object = 0xE000000000000000;
  sub_20E1C(v54, v55, v9, v56, 0, v49);

  v53[3] = v6;
  v53[0] = v0;
  v10 = v0;
  v11 = sub_211BC();

  if (v6)
  {
    v12 = sub_17374(v53, v6);
    v13 = *(v6 - 8);
    __chkstk_darwin(v12, v12);
    v15 = v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v15);
    v16 = sub_2133C();
    (*(v13 + 8))(v15, v6);
    sub_173B8(v53);
  }

  else
  {
    v16 = 0;
  }

  sub_1752C(0, &qword_3CE98, off_346F8);
  v17 = [objc_allocWithZone(PSSpecifier) initWithName:v11 target:v16 set:"setNumberFormatAsString:" get:"numberFormatAsString" detail:swift_getObjCClassFromMetadata() cell:2 edit:0];

  result = swift_unknownObjectRelease();
  if (v17)
  {
    v19 = sub_211BC();
    v52 = v17;
    [v17 setIdentifier:v19];

    v20 = sub_1A184();
    v21 = v20[2];
    v22 = &_swiftEmptyArrayStorage;
    if (v21)
    {
      v53[0] = &_swiftEmptyArrayStorage;
      sub_1CA88(0, v21, 0);
      v23 = v53[0];
      v24 = *(v2 + 80);
      v50[1] = v20;
      v51 = v2;
      v25 = v20 + ((v24 + 32) & ~v24);
      v26 = v2[9];
      do
      {
        sub_1A3F4(v25, v5);
        v27 = [v5[2] formattedNumber];
        v28 = sub_211EC();
        v30 = v29;

        sub_1A464(v5);
        v53[0] = v23;
        v32 = v23[2];
        v31 = v23[3];
        if (v32 >= v31 >> 1)
        {
          sub_1CA88((v31 > 1), v32 + 1, 1);
          v23 = v53[0];
        }

        v23[2] = v32 + 1;
        v33 = &v23[2 * v32];
        *(v33 + 4) = v28;
        *(v33 + 5) = v30;
        v25 += v26;
        --v21;
      }

      while (v21);

      v2 = v51;
      v22 = &_swiftEmptyArrayStorage;
    }

    else
    {

      v23 = &_swiftEmptyArrayStorage;
    }

    v34 = sub_1A184();
    v35 = v34[2];
    if (v35)
    {
      v53[0] = &_swiftEmptyArrayStorage;
      sub_1CA88(0, v35, 0);
      v22 = v53[0];
      v36 = *(v2 + 80);
      v51 = v34;
      v37 = v34 + ((v36 + 32) & ~v36);
      v38 = v2[9];
      do
      {
        sub_1A3F4(v37, v5);
        v40 = *v5;
        v39 = v5[1];

        sub_1A464(v5);
        v53[0] = v22;
        v42 = v22[2];
        v41 = v22[3];
        if (v42 >= v41 >> 1)
        {
          sub_1CA88((v41 > 1), v42 + 1, 1);
          v22 = v53[0];
        }

        v22[2] = v42 + 1;
        v43 = &v22[2 * v42];
        *(v43 + 4) = v40;
        *(v43 + 5) = v39;
        v37 += v38;
        --v35;
      }

      while (v35);
    }

    sub_1EC2C(v23);

    isa = sub_2122C().super.isa;
    sub_1EC2C(v22);
    v45 = sub_2122C().super.isa;

    v46 = v52;
    [v52 setValues:isa titles:v45];

    v47 = sub_2122C().super.isa;
    [v46 setProperty:v47 forKey:PSValidValuesKey];

    v48 = sub_2122C().super.isa;
    [v46 setProperty:v48 forKey:PSValidTitlesKey];

    return v46;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1A184()
{
  v22 = sub_16C78(&qword_3CE90, &qword_27808);
  v0 = *(v22 - 8);
  __chkstk_darwin(v22, v1);
  v3 = (&v20 - v2);
  v4 = [objc_opt_self() availableFormats];
  sub_1752C(0, &qword_3CEA0, IPNumberFormat_ptr);
  v5 = sub_2123C();

  if (!(v5 >> 62))
  {
    v6 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_13:

    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_212DC();
  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_3:
  v23 = &_swiftEmptyArrayStorage;
  result = sub_1C9E8(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = v23;
    v10 = v5;
    v21 = v5 & 0xC000000000000001;
    v11 = v5;
    do
    {
      if (v21)
      {
        v12 = sub_212CC();
      }

      else
      {
        v12 = *(v10 + 8 * v8 + 32);
      }

      v13 = v12;
      v14 = [v12 formattedNumber];
      v15 = sub_211EC();
      v17 = v16;

      sub_20E7C();
      v3[1] = v17;
      v3[2] = v13;
      *v3 = v15;
      v23 = v9;
      v19 = v9[2];
      v18 = v9[3];
      if (v19 >= v18 >> 1)
      {
        sub_1C9E8((v18 > 1), v19 + 1, 1);
        v9 = v23;
      }

      ++v8;
      v9[2] = v19 + 1;
      sub_1A4CC(v3, v9 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v19);
      v10 = v11;
    }

    while (v6 != v8);

    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A3F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_16C78(&qword_3CE90, &qword_27808);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A464(uint64_t a1)
{
  v2 = sub_16C78(&qword_3CE90, &qword_27808);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A4CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_16C78(&qword_3CE90, &qword_27808);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A578(void *a1)
{
  v2 = sub_20E5C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(NSDateFormatter) init];
  [v7 setFormattingContext:2];
  [v7 setDateStyle:4];
  [v7 setTimeStyle:0];
  [objc_opt_self() sampleTime];
  sub_20E4C();
  isa = sub_20E3C().super.isa;
  v9 = [v7 stringFromDate:isa];

  if (!v9)
  {
    sub_211EC();
    v9 = sub_211BC();
  }

  v10 = objc_opt_self();
  v11 = sub_20E3C().super.isa;
  v12 = [v10 localizedStringFromDate:v11 dateStyle:0 timeStyle:1];

  if (!v12)
  {
    sub_211EC();
    v12 = sub_211BC();
  }

  v13 = [a1 specifierForID:@"EXAMPLE"];
  if (!v13)
  {

    (*(v3 + 8))(v6, v2);
    v28 = 0u;
    v29 = 0u;
LABEL_14:
    sub_18B80(&v28, &qword_3CEA8, &qword_27810);
    return;
  }

  v25 = v2;
  v14 = v13;
  v15 = sub_211BC();
  [v14 setProperty:v9 forKey:v15];

  v16 = v14;
  v17 = sub_211BC();
  [v16 setProperty:v12 forKey:v17];

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = v16;
  v20 = [ObjCClassFromMetadata formattedMoneyAndNumbers:v19];
  v21 = sub_211BC();
  [v19 setProperty:v20 forKey:v21];

  swift_unknownObjectRelease();
  if ([v19 propertyForKey:PSFooterViewKey])
  {
    sub_2129C();
    swift_unknownObjectRelease();
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
  }

  v28 = v26;
  v29 = v27;
  v22 = v25;
  if (!*(&v27 + 1))
  {
    (*(v3 + 8))(v6, v25);

    goto LABEL_14;
  }

  sub_1AA38();
  if (swift_dynamicCast())
  {
    v23 = v26;
    [v26 setTextForRegionExample:v19];

    (*(v3 + 8))(v6, v22);
  }

  else
  {
    (*(v3 + 8))(v6, v22);
  }
}

unint64_t sub_1AA38()
{
  result = qword_3CEB0;
  if (!qword_3CEB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_3CEB0);
  }

  return result;
}

void sub_1AA84(void *a1)
{
  v2 = sub_2101C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_16C78(&qword_3CEB8, &qword_27818);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v20 - v9;
  v11 = [a1 specifierForID:@"LOCALE"];
  sub_20F2C();
  sub_20F1C();
  (*(v3 + 8))(v6, v2);
  v12 = sub_20EFC();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) == 1)
  {
    sub_18B80(v10, &qword_3CEB8, &qword_27818);
    sub_211EC();
    if (v11)
    {
LABEL_3:
      v14 = v11;
      v15 = sub_211BC();
      v16 = sub_211BC();
      [v14 setProperty:v15 forKey:v16];

      v17 = v14;
      v18 = sub_211BC();

      v19 = PSValueKey;
      [v17 setProperty:v18 forKey:v19];

      return;
    }
  }

  else
  {
    sub_20EEC();
    (*(v13 + 8))(v10, v12);
    if (v11)
    {
      goto LABEL_3;
    }
  }
}

void sub_1ADFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2101C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Settings();
  sub_195B4();
  sub_210FC();
  sub_2110C();

  v9 = objc_opt_self();
  sub_20F2C();
  sub_20EAC();
  v10 = *(v5 + 8);
  v10(v8, v4);
  v11 = sub_211BC();

  v33 = v9;
  v12 = [v9 componentsFromLocaleIdentifier:v11];

  v13 = sub_2119C();
  v35 = v13;
  v14 = objc_opt_self();
  sub_20F2C();
  sub_20EAC();
  v10(v8, v4);
  v15 = sub_211BC();

  v16 = [v14 defaultCalendarForLocaleID:v15];

  v17 = sub_211EC();
  v19 = v18;

  if (v17 == a1 && v19 == a2)
  {

LABEL_5:

    sub_1E16C(0x7261646E656C6163, 0xE800000000000000);

    v21 = v35;
    goto LABEL_7;
  }

  v20 = sub_2134C();

  if (v20)
  {
    goto LABEL_5;
  }

  v22 = v35;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = v22;
  sub_1E68C(a1, a2, 0x7261646E656C6163, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  v21 = v34;
  v35 = v34;
LABEL_7:
  sub_20F2C();
  sub_20EAC();
  v10(v8, v4);
  v24 = sub_211BC();

  v25 = v33;
  v26 = [v33 componentsFromLocaleIdentifier:v24];

  v27 = sub_2119C();
  LOBYTE(v26) = sub_1DD00(v21, v27);

  if (v26)
  {
  }

  else
  {
    sub_1D42C(v21);

    isa = sub_2118C().super.isa;

    v29 = [v25 canonicalLocaleIdentifierFromComponents:isa];

    if (!v29)
    {
      sub_211EC();
      v29 = sub_211BC();
    }

    [v25 setLocaleOnly:v29];

    _CFLocaleResetCurrent();
    v30 = CFNotificationCenterGetDarwinNotifyCenter();
    v31 = sub_211BC();
    CFNotificationCenterPostNotification(v30, v31, 0, 0, 1u);
  }
}

uint64_t sub_1B280()
{
  v0 = sub_2101C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  sub_20F2C();
  sub_20EAC();
  v6 = *(v1 + 8);
  v6(v4, v0);
  v7 = sub_211BC();

  v8 = [v5 componentsFromLocaleIdentifier:v7];

  v9 = sub_2119C();
  if (*(v9 + 16) && (v10 = sub_1DF38(0x7261646E656C6163, 0xE800000000000000), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 16 * v10);
  }

  else
  {

    v13 = objc_opt_self();
    sub_20F2C();
    sub_20EAC();
    v6(v4, v0);
    v14 = sub_211BC();

    v15 = [v13 defaultCalendarForLocaleID:v14];

    v12 = sub_211EC();
  }

  return v12;
}

unint64_t sub_1B4E8()
{
  result = qword_3CF58;
  if (!qword_3CF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CF58);
  }

  return result;
}

uint64_t sub_1B558(uint64_t a1, uint64_t a2)
{
  v3 = sub_210EC();
  __chkstk_darwin(v3 - 8, v4);
  sub_1752C(0, &qword_3CFA8, &off_34708);
  v5 = [objc_allocWithZone(PSSpecifier) init];
  [v5 setProperty:a2 forKey:PSListControllerCellHighlightingSelectionInvocationRelayKey];
  sub_210CC();
  return sub_210AC();
}

uint64_t sub_1B644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  v5 = sub_210EC();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = sub_2112C();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v7 = sub_20E2C();
  v4[17] = v7;
  v4[18] = *(v7 - 8);
  v4[19] = swift_task_alloc();
  sub_16C78(&qword_3CF78, &unk_278F0);
  v4[20] = swift_task_alloc();
  v8 = sub_20E0C();
  v4[21] = v8;
  v4[22] = *(v8 - 8);
  v4[23] = swift_task_alloc();
  sub_2126C();
  v4[24] = sub_2125C();
  v10 = sub_2124C();

  return _swift_task_switch(sub_1B894, v10, v9);
}

uint64_t sub_1B894()
{
  v1 = v0[21];
  v2 = v0[22];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[17];
  v6 = v0[18];

  sub_2115C();
  sub_20DDC();
  (*(v6 + 8))(v4, v5);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v7 = v0[16];
    v8 = v0[13];
    v9 = v0[14];
    sub_1D1C8(v0[20]);
    sub_2114C();
    sub_2116C();
    (*(v9 + 8))(v7, v8);
    goto LABEL_57;
  }

  (*(v0[22] + 32))(v0[23], v0[20], v0[21]);
  sub_2114C();
  v0[2] = sub_20DEC();
  v0[3] = v10;
  v0[4] = 47;
  v0[5] = 0xE100000000000000;
  sub_1D230();
  v11 = sub_2128C();

  v13 = *(v11 + 16);
  if (v13)
  {
    v14 = 0;
    v15 = -v13;
    v16 = v11 + 40;
    v17 = &_swiftEmptyArrayStorage;
    do
    {
      v18 = (v16 + 16 * v14++);
      while (1)
      {
        if ((v14 - 1) >= *(v11 + 16))
        {
          __break(1u);
          return result;
        }

        v19 = *(v18 - 1);
        v20 = *v18;
        v21 = HIBYTE(*v18) & 0xF;
        if ((*v18 & 0x2000000000000000) == 0)
        {
          v21 = v19 & 0xFFFFFFFFFFFFLL;
        }

        if (v21)
        {
          if (v19 != 0x54414E5245544E49 || v20 != 0xED00004C414E4F49)
          {
            result = sub_2134C();
            if ((result & 1) == 0)
            {
              break;
            }
          }
        }

        ++v14;
        v18 += 2;
        if (v15 + v14 == 1)
        {
          goto LABEL_23;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v74 = v17;
      if ((result & 1) == 0)
      {
        result = sub_1CA88(0, *(v17 + 2) + 1, 1);
      }

      v16 = v11 + 40;
      v24 = *(v17 + 2);
      v23 = *(v17 + 3);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v27 = v24 + 1;
        v73 = v24;
        result = sub_1CA88((v23 > 1), v24 + 1, 1);
        v25 = v27;
        v24 = v73;
        v16 = v11 + 40;
        v17 = v74;
      }

      *(v17 + 2) = v25;
      v26 = &v17[16 * v24];
      *(v26 + 4) = v19;
      *(v26 + 5) = v20;
    }

    while (v15 + v14);
  }

  else
  {
    v17 = &_swiftEmptyArrayStorage;
  }

LABEL_23:

  v28 = *(v17 + 2);
  if (!v28)
  {
    sub_20DFC();
    if (v62)
    {
      v63 = v0[9];

      v64 = sub_211BC();

      [v63 setSpecifierIdentifierToScrollAndHighlight:{v64, v73}];
      goto LABEL_55;
    }

    v28 = *(v17 + 2);
    if (!v28)
    {

      goto LABEL_56;
    }
  }

  v29 = (v0[11] + 8);
  while (1)
  {
    v39 = *(v17 + 4);
    v38 = *(v17 + 5);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v28 - 1) > *(v17 + 3) >> 1)
    {
      v17 = sub_1C8DC(isUniquelyReferenced_nonNull_native, v28, 1, v17);
    }

    sub_1D284((v17 + 32));
    v41 = *(v17 + 2);
    memmove(v17 + 32, v17 + 48, 16 * v41 - 16);
    *(v17 + 2) = v41 - 1;

    v42._rawValue = &off_353C8;
    v76._countAndFlagsBits = v39;
    v76._object = v38;
    v43 = sub_2132C(v42, v76);

    if (v43 > 4)
    {
      switch(v43)
      {
        case 5:
          v30 = v0[8];
          v31 = sub_211BC();

          v32 = [v30 specifierForID:v31];

          if (!v32)
          {
            goto LABEL_48;
          }

          v33 = v0[8];
          v34 = sub_211BC();
          [v32 setProperty:v33 forKey:v34];

          v35 = &qword_3CE50;
          v36 = off_346E0;
          break;
        case 6:
          v58 = v0[8];
          v59 = sub_211BC();

          v32 = [v58 specifierForID:v59];

          if (!v32)
          {
            goto LABEL_48;
          }

          v60 = v0[8];
          v61 = sub_211BC();
          [v32 setProperty:v60 forKey:v61];

          v35 = &qword_3CE20;
          v36 = off_34700;
          break;
        case 7:
          v48 = v0[8];
          v49 = sub_211BC();

          v32 = [v48 specifierForID:v49];

          if (!v32)
          {
            goto LABEL_48;
          }

          v50 = v0[8];
          v51 = sub_211BC();
          [v32 setProperty:v50 forKey:v51];

          v35 = &qword_3CE98;
          v36 = off_346F8;
          break;
        default:
          goto LABEL_60;
      }

      goto LABEL_27;
    }

    if (v43 <= 2)
    {
      break;
    }

    if (v43 != 3)
    {
      v44 = v0[8];
      v45 = sub_211BC();

      v32 = [v44 specifierForID:v45];

      if (!v32)
      {
        goto LABEL_48;
      }

      v46 = v0[8];
      v47 = sub_211BC();
      [v32 setProperty:v46 forKey:v47];

      v35 = &qword_3CF90;
      v36 = off_346F0;
LABEL_27:
      sub_1752C(0, v35, v36);
      v37 = v32;
      sub_210CC();
      sub_1D2D8(&qword_3CF88, &type metadata accessor for PreferencesControllerRecipe, &protocol conformance descriptor for PreferencesControllerRecipe);
      sub_2111C();

      goto LABEL_28;
    }

    v52 = v0[8];
    v53 = sub_211BC();

    v54 = [v52 specifierForID:v53];

    if (!v54)
    {
      goto LABEL_48;
    }

    v55 = v0[8];
    v56 = sub_211BC();
    [v54 setProperty:v55 forKey:v56];

    sub_1752C(0, &qword_3CF98, off_346D8);
    v57 = v54;
    sub_210CC();
    sub_1D2D8(&qword_3CF88, &type metadata accessor for PreferencesControllerRecipe, &protocol conformance descriptor for PreferencesControllerRecipe);
    sub_2111C();

LABEL_28:
    (*v29)(v0[12], v0[10]);
    v28 = *(v17 + 2);
    if (!v28)
    {
      goto LABEL_48;
    }
  }

  if (v43 == 2)
  {

    sub_1752C(0, &qword_3CFA0, off_346E8);
    sub_210DC();
    sub_1D2D8(&qword_3CF88, &type metadata accessor for PreferencesControllerRecipe, &protocol conformance descriptor for PreferencesControllerRecipe);
    sub_2111C();
    goto LABEL_28;
  }

  if (v43 >= 2)
  {
LABEL_60:

LABEL_48:

    goto LABEL_56;
  }

  v65 = v0[9];

  v64 = sub_211BC();

  [v65 setSpecifierIdentifierToScrollAndSelect:{v64, v73}];
LABEL_55:

LABEL_56:
  v67 = v0[22];
  v66 = v0[23];
  v68 = v0[21];
  v70 = v0[14];
  v69 = v0[15];
  v71 = v0[13];
  sub_2116C();
  (*(v70 + 8))(v69, v71);
  (*(v67 + 8))(v66, v68);
LABEL_57:

  v72 = v0[1];

  return v72();
}

uint64_t sub_1C224()
{
  v1 = sub_16C78(&qword_3CF60, &qword_278D8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1, v3);
  v5 = &v15 - v4;
  v6 = *v0;
  v7 = *(v0 + 8);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  sub_210BC();
  sub_1D2D8(&qword_3CF68, &type metadata accessor for PreferencesControllerView, &protocol conformance descriptor for PreferencesControllerView);
  v9 = v6;
  v10 = v7;
  sub_2117C();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = v10;
  sub_1C640();
  v12 = v9;
  v13 = v10;
  sub_2113C();
  return (*(v2 + 8))(v5, v1);
}

id sub_1C3F4@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(InternationalSettingsController) init];
  result = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_1C450()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1C498(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1C54C;

  return sub_1B644(a1, a2, v7, v6);
}

uint64_t sub_1C54C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_1C640()
{
  result = qword_3CF70;
  if (!qword_3CF70)
  {
    sub_1C6A4(&qword_3CF60, &qword_278D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CF70);
  }

  return result;
}

uint64_t sub_1C6A4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void *sub_1C6EC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_16C78(&qword_3CFD0, &qword_27928);
  v10 = *(sub_16C78(&qword_3CE48, &qword_27930) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_16C78(&qword_3CE48, &qword_27930) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1C8DC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_16C78(&qword_3CE88, &qword_27800);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C9E8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CAE8(a1, a2, a3, *v3, &qword_3CFC0, &unk_27910, &qword_3CE90, &qword_27808);
  *v3 = result;
  return result;
}

void *sub_1CA28(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CAE8(a1, a2, a3, *v3, &qword_3CFD8, &qword_27938, &qword_3CE18, &qword_27940);
  *v3 = result;
  return result;
}

char *sub_1CA68(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CCD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1CA88(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CDE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1CAA8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CEEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1CAC8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CFF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1CAE8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
LABEL_30:
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

  if (!v15)
  {
    v19 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_16C78(a5, a6);
  v16 = *(sub_16C78(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_16C78(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_1CCD0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_16C78(&qword_3CFB8, &qword_27908);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1CDE0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_16C78(&qword_3CE88, &qword_27800);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1CEEC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_16C78(&qword_3CFC8, &qword_27920);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_1CFF0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_16C78(&qword_3CFB0, &qword_27900);
  v10 = *(sub_20FFC() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_20FFC() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1D1C8(uint64_t a1)
{
  v2 = sub_16C78(&qword_3CF78, &unk_278F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D230()
{
  result = qword_3CF80;
  if (!qword_3CF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CF80);
  }

  return result;
}

uint64_t sub_1D2D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_1D324(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1D330(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D378(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D3C4()
{
  sub_1C6A4(&qword_3CF60, &qword_278D8);
  sub_1C640();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D42C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_16C78(&qword_3CFE8, &unk_27980);
    v2 = sub_2130C();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_1960C(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_1960C(v29, v30);
    result = sub_212BC(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v7[8 * (v16 >> 6)]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *&v7[8 * v17];
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*&v7[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_1960C(v30, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_1D7AC(uint64_t a1, uint64_t a2)
{
  v47 = a1;
  v3 = sub_2101C();
  v4 = *(v3 - 8);
  v6 = __chkstk_darwin(v3, v5);
  v46 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6, v8);
  v11 = &v46 - v10;
  __chkstk_darwin(v9, v12);
  v14 = &v46 - v13;
  type metadata accessor for Settings();
  sub_195B4();
  sub_210FC();
  sub_2110C();

  v15 = objc_opt_self();
  v16 = [v15 preferredLocale];
  if (!v16)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v16;
  sub_20EDC();

  sub_20EAC();
  v18 = *(v4 + 8);
  v18(v14, v3);
  v19 = sub_211BC();

  v20 = [v15 componentsFromLocaleIdentifier:v19];

  v21 = sub_2119C();
  v49 = v21;
  v22 = [v15 preferredLocale];
  if (!v22)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23 = v22;
  v24 = objc_opt_self();
  sub_20EDC();

  sub_20EAC();
  v18(v11, v3);
  v25 = sub_211BC();

  v26 = [v24 defaultNumberingSystemForLocaleID:v25];

  v27 = sub_211EC();
  v29 = v28;

  v30 = v47;
  if (v27 == v47 && v29 == a2)
  {

LABEL_7:
    v32 = v3;

    sub_1E16C(0x737265626D756ELL, 0xE700000000000000);

    v33 = v49;
    goto LABEL_9;
  }

  v31 = sub_2134C();

  if (v31)
  {
    goto LABEL_7;
  }

  v34 = v49;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v48 = v34;
  sub_1E68C(v30, a2, 0x737265626D756ELL, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
  v33 = v48;
  v49 = v48;
  v32 = v3;
LABEL_9:
  v36 = [v15 preferredLocale];
  if (!v36)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v37 = v36;
  v38 = v46;
  sub_20EDC();

  sub_20EAC();
  v18(v38, v32);
  v39 = sub_211BC();

  v40 = [v15 componentsFromLocaleIdentifier:v39];

  v41 = sub_2119C();
  LOBYTE(v40) = sub_1DD00(v33, v41);

  if (v40)
  {
  }

  else
  {
    sub_1D42C(v33);

    isa = sub_2118C().super.isa;

    v43 = [v15 canonicalLocaleIdentifierFromComponents:isa];

    if (!v43)
    {
      sub_211EC();
      v43 = sub_211BC();
    }

    [v15 setLocaleOnly:v43];

    _CFLocaleResetCurrent();
    v44 = CFNotificationCenterGetDarwinNotifyCenter();
    v45 = sub_211BC();
    CFNotificationCenterPostNotification(v44, v45, 0, 0, 1u);
  }
}

uint64_t sub_1DD00(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_1DF38(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_2134C();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1DEA4(uint64_t a1)
{
  sub_211EC();
  sub_2136C();
  sub_2120C();
  v2 = sub_2137C();

  return sub_1DFB0(a1, v2);
}

unint64_t sub_1DF38(uint64_t a1, uint64_t a2)
{
  sub_2136C();
  sub_2120C();
  v4 = sub_2137C();

  return sub_1E0B4(a1, a2, v4);
}

unint64_t sub_1DFB0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_211EC();
      v8 = v7;
      if (v6 == sub_211EC() && v8 == v9)
      {
        break;
      }

      v11 = sub_2134C();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1E0B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2134C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1E16C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1DF38(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1E814();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 16 * v6);
  sub_1E4DC(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_1E21C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_16C78(&qword_3CFE0, &qword_27978);
  v37 = v4;
  result = sub_212FC();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_2136C();
      sub_2120C();
      result = sub_2137C();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1E4DC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_212AC() + 1) & ~v5;
    do
    {
      sub_2136C();

      sub_2120C();
      v9 = sub_2137C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1E68C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1DF38(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1E21C(v18, a5 & 1);
      v13 = sub_1DF38(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_2135C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1E814();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

void *sub_1E814()
{
  v1 = v0;
  sub_16C78(&qword_3CFE0, &qword_27978);
  v2 = *v0;
  v3 = sub_212EC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_1E98C()
{
  v0 = sub_2101C();
  v1 = *(v0 - 8);
  v3 = __chkstk_darwin(v0, v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3, v6);
  v8 = &v23 - v7;
  v9 = objc_opt_self();
  result = [v9 preferredLocale];
  if (result)
  {
    v11 = result;
    sub_20EDC();

    sub_20EAC();
    v12 = *(v1 + 8);
    v12(v8, v0);
    v13 = sub_211BC();

    v14 = [v9 componentsFromLocaleIdentifier:v13];

    v15 = sub_2119C();
    if (*(v15 + 16))
    {
      v16 = sub_1DF38(0x737265626D756ELL, 0xE700000000000000);
      if (v17)
      {
        v18 = *(*(v15 + 56) + 16 * v16);

        return v18;
      }
    }

    result = [v9 preferredLocale];
    if (result)
    {
      v19 = result;
      v20 = objc_opt_self();
      sub_20EDC();

      sub_20EAC();
      v12(v5, v0);
      v21 = sub_211BC();

      v22 = [v20 defaultNumberingSystemForLocaleID:v21];

      v18 = sub_211EC();
      return v18;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t *sub_1EC2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = &_swiftEmptyArrayStorage;
    sub_1CA68(0, v1, 0);
    v2 = &_swiftEmptyArrayStorage;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_1CA68((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_1960C(&v8, &v2[4 * v6 + 4]);
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

unint64_t *sub_1ED2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = &_swiftEmptyArrayStorage;
    sub_1CA68(0, v1, 0);
    v2 = &_swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      v4 += 8;
      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_1CA68((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_1960C(&v8, &v2[4 * v6 + 4]);
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_1EEDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2101C();
  v5 = *(v4 - 8);
  v7 = __chkstk_darwin(v4, v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = v21 - v11;
  type metadata accessor for Settings();
  sub_195B4();
  sub_210FC();
  sub_2110C();

  v13 = objc_opt_self();
  v14 = [v13 preferredLocale];
  if (!v14)
  {
    __break(1u);
    goto LABEL_11;
  }

  v15 = v14;
  sub_20EDC();

  sub_20EAC();
  v16 = *(v5 + 8);
  v16(v9, v4);
  sub_20E9C();
  isa = sub_20ECC().super.isa;
  v16(v12, v4);
  v18 = [(objc_class *)isa objectForKey:NSLocaleMeasurementSystem];

  if (!v18)
  {
LABEL_11:
    __break(1u);
    return;
  }

  sub_2129C();
  swift_unknownObjectRelease();
  sub_1960C(&v22, &v23);
  swift_dynamicCast();
  if (v21[0] == a1 && v21[1] == a2)
  {

LABEL_7:

    [v13 _setPreferredMeasurementSystem:0];
    return;
  }

  v19 = sub_2134C();

  if (v19)
  {
    goto LABEL_7;
  }

  v20 = sub_211BC();

  [v13 _setPreferredMeasurementSystem:v20];
}

id sub_1F1D4()
{
  v1 = sub_16C78(&qword_3CE18, &qword_27940);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1 - 8, v3);
  v5 = (v48 - v4);
  v6 = type metadata accessor for Settings();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v47._countAndFlagsBits = 0xE000000000000000;
  v52._object = 0x8000000000028E70;
  v53.value._countAndFlagsBits = 0xD000000000000015;
  v53.value._object = 0x80000000000291D0;
  v52._countAndFlagsBits = 0xD000000000000012;
  v9.super.isa = v8;
  v54._countAndFlagsBits = 0;
  v54._object = 0xE000000000000000;
  sub_20E1C(v52, v53, v9, v54, 0, v47);

  v51[3] = v6;
  v51[0] = v0;
  v10 = v0;
  v11 = sub_211BC();

  if (v6)
  {
    v12 = sub_17374(v51, v6);
    v13 = *(v6 - 8);
    __chkstk_darwin(v12, v12);
    v15 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v15);
    v16 = sub_2133C();
    (*(v13 + 8))(v15, v6);
    sub_173B8(v51);
  }

  else
  {
    v16 = 0;
  }

  sub_1F76C();
  v17 = [objc_allocWithZone(PSSpecifier) initWithName:v11 target:v16 set:"setMeasurementSystem:" get:"measurementSystem" detail:swift_getObjCClassFromMetadata() cell:2 edit:0];

  result = swift_unknownObjectRelease();
  if (v17)
  {
    v19 = sub_211BC();
    v50 = v17;
    [v17 setIdentifier:v19];

    v20 = sub_1F7B8();
    v21 = *(v20 + 16);
    v22 = &_swiftEmptyArrayStorage;
    if (v21)
    {
      v51[0] = &_swiftEmptyArrayStorage;
      sub_1CA88(0, v21, 0);
      v23 = v51[0];
      v24 = *(v2 + 80);
      v48[1] = v20;
      v49 = v2;
      v25 = v20 + ((v24 + 32) & ~v24);
      v26 = *(v2 + 72);
      do
      {
        sub_16D48(v25, v5);
        v27 = v5[2];
        v28 = v5[3];

        sub_16DB8(v5);
        v51[0] = v23;
        v30 = v23[2];
        v29 = v23[3];
        if (v30 >= v29 >> 1)
        {
          sub_1CA88((v29 > 1), v30 + 1, 1);
          v23 = v51[0];
        }

        v23[2] = v30 + 1;
        v31 = &v23[2 * v30];
        *(v31 + 4) = v27;
        *(v31 + 5) = v28;
        v25 += v26;
        --v21;
      }

      while (v21);

      v2 = v49;
      v22 = &_swiftEmptyArrayStorage;
    }

    else
    {

      v23 = &_swiftEmptyArrayStorage;
    }

    v32 = sub_1F7B8();
    v33 = *(v32 + 16);
    if (v33)
    {
      v51[0] = &_swiftEmptyArrayStorage;
      sub_1CA88(0, v33, 0);
      v22 = v51[0];
      v34 = *(v2 + 80);
      v49 = v32;
      v35 = v32 + ((v34 + 32) & ~v34);
      v36 = *(v2 + 72);
      do
      {
        sub_16D48(v35, v5);
        v38 = *v5;
        v37 = v5[1];

        sub_16DB8(v5);
        v51[0] = v22;
        v40 = v22[2];
        v39 = v22[3];
        if (v40 >= v39 >> 1)
        {
          sub_1CA88((v39 > 1), v40 + 1, 1);
          v22 = v51[0];
        }

        v22[2] = v40 + 1;
        v41 = &v22[2 * v40];
        *(v41 + 4) = v38;
        *(v41 + 5) = v37;
        v35 += v36;
        --v33;
      }

      while (v33);
    }

    sub_1EC2C(v23);

    isa = sub_2122C().super.isa;
    sub_1EC2C(v22);
    v43 = sub_2122C().super.isa;

    v44 = v50;
    [v50 setValues:isa titles:v43];

    v45 = sub_2122C().super.isa;
    [v44 setProperty:v45 forKey:PSValidValuesKey];

    v46 = sub_2122C().super.isa;
    [v44 setProperty:v46 forKey:PSValidTitlesKey];

    return v44;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1F76C()
{
  result = qword_3CF90;
  if (!qword_3CF90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_3CF90);
  }

  return result;
}

uint64_t sub_1F7B8()
{
  sub_16C78(&qword_3CFD8, &qword_27938);
  v0 = *(sub_16C78(&qword_3CE18, &qword_27940) - 8);
  v1 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v35 = *(v0 + 72);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_27990;
  v2 = (v36 + v1);
  type metadata accessor for Settings();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = objc_opt_self();
  v32._object = v4;
  v5 = [v4 bundleForClass:ObjCClassFromMetadata];
  v37._countAndFlagsBits = 0xD000000000000012;
  v32._countAndFlagsBits = 0x80000000000294C0;
  v37._object = 0x80000000000294A0;
  v40.value._object = 0x80000000000291D0;
  v40.value._countAndFlagsBits = 0xD000000000000015;
  v6.super.isa = v5;
  v43._countAndFlagsBits = 0;
  v43._object = 0xE000000000000000;
  v7 = sub_20E1C(v37, v40, v6, v43, 0xD00000000000001ALL, v32);
  v9 = v8;

  v10 = sub_211EC();
  v12 = v11;
  sub_20E7C();
  v2[2] = v10;
  v2[3] = v12;
  *v2 = v7;
  v2[1] = v9;
  v13 = (v36 + v1 + v35);
  v14 = [v4 bundleForClass:ObjCClassFromMetadata];
  v33._countAndFlagsBits = 0x80000000000294C0;
  v38._countAndFlagsBits = 0x4D4552555341454DLL;
  v38._object = 0xEE0053555F544E45;
  v41.value._object = 0x80000000000291D0;
  v41.value._countAndFlagsBits = 0xD000000000000015;
  v15.super.isa = v14;
  v44._countAndFlagsBits = 0;
  v44._object = 0xE000000000000000;
  v16 = sub_20E1C(v38, v41, v15, v44, 0xD00000000000001ALL, v33);
  v18 = v17;

  v19 = sub_211EC();
  v21 = v20;
  sub_20E7C();
  v13[2] = v19;
  v13[3] = v21;
  *v13 = v16;
  v13[1] = v18;
  v22 = (v36 + v1 + 2 * v35);
  v23 = [v34._object bundleForClass:ObjCClassFromMetadata];
  v34._countAndFlagsBits = 0x80000000000294C0;
  v39._object = 0xEE004B555F544E45;
  v42.value._object = 0x80000000000291D0;
  v39._countAndFlagsBits = 0x4D4552555341454DLL;
  v42.value._countAndFlagsBits = 0xD000000000000015;
  v24.super.isa = v23;
  v45._countAndFlagsBits = 0;
  v45._object = 0xE000000000000000;
  v25 = sub_20E1C(v39, v42, v24, v45, 0xD00000000000001ALL, v34);
  v27 = v26;

  v28 = sub_211EC();
  v30 = v29;
  sub_20E7C();
  v22[2] = v28;
  v22[3] = v30;
  *v22 = v25;
  v22[1] = v27;
  return v36;
}

void sub_1FAE8()
{
  v0 = [objc_opt_self() preferredLocale];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 objectForKey:NSLocaleMeasurementSystem];

    if (v2)
    {
      sub_2129C();
      swift_unknownObjectRelease();
      sub_1960C(&v3, &v4);
      swift_dynamicCast();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1FBB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    isa = sub_2122C().super.isa;
    sub_1EC2C(a2);
    v7.super.isa = sub_2122C().super.isa;

    sub_1EC2C(a3);
    v8.super.isa = sub_2122C().super.isa;

    [v3 setValues:isa titles:v7.super.isa shortTitles:v8.super.isa];
  }

  else
  {
    v7.super.isa = sub_2122C().super.isa;
    sub_1EC2C(a2);
    v8.super.isa = sub_2122C().super.isa;

    [v3 setValues:v7.super.isa titles:v8.super.isa];
  }

  v9 = sub_2122C().super.isa;
  [v3 setProperty:v9 forKey:PSValidValuesKey];

  v10 = sub_2122C().super.isa;
  [v3 setProperty:v10 forKey:PSValidTitlesKey];
}

void *sub_1FD40(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v41 = sub_20FFC();
  v8 = __chkstk_darwin(v41, v7);
  v38 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8, v10);
  v40 = &v30 - v13;
  v37 = *(a3 + 16);
  if (v37)
  {
    v14 = 0;
    v34 = (v12 + 8);
    v35 = (v12 + 32);
    v36 = v12 + 16;
    v39 = &_swiftEmptyArrayStorage;
    v32 = a2;
    v33 = a3;
    v31 = a1;
    while (v14 < *(a3 + 16))
    {
      v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v16 = *(v12 + 72);
      v17 = a3;
      v18 = a3 + v15 + v16 * v14;
      v19 = v12;
      v20 = a1;
      v21 = v40;
      (*(v12 + 16))(v40, v18, v41);
      v22 = v21;
      a1 = v20;
      v23 = v20(v22);
      if (v3)
      {
        (*v34)(v40, v41);
        v29 = v39;

        return v29;
      }

      if (v23)
      {
        v24 = *v35;
        (*v35)(v38, v40, v41);
        v25 = v39;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = v25;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1CAC8(0, v25[2] + 1, 1);
          v25 = v42;
        }

        v28 = v25[2];
        v27 = v25[3];
        if (v28 >= v27 >> 1)
        {
          sub_1CAC8((v27 > 1), v28 + 1, 1);
          v25 = v42;
        }

        v25[2] = v28 + 1;
        v39 = v25;
        result = (v24)(v25 + v15 + v28 * v16, v38, v41);
        a3 = v33;
        a1 = v31;
      }

      else
      {
        result = (*v34)(v40, v41);
        a3 = v17;
      }

      ++v14;
      v12 = v19;
      if (v37 == v14)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v39 = &_swiftEmptyArrayStorage;
LABEL_14:

    return v39;
  }

  return result;
}

uint64_t sub_20010()
{
  v0 = sub_20EBC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v27 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_16C78(&qword_3D000, &qword_279B0);
  v5 = v4 - 8;
  __chkstk_darwin(v4, v6);
  v8 = &v27 - v7;
  v9 = sub_16C78(&qword_3CFF0, &qword_279A0);
  v11 = __chkstk_darwin(v9 - 8, v10);
  v28 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11, v13);
  v16 = &v27 - v15;
  __chkstk_darwin(v14, v17);
  v19 = &v27 - v18;
  sub_20FAC();
  sub_20F4C();
  v20 = *(v5 + 56);
  sub_209AC(v19, v8);
  sub_209AC(v16, &v8[v20]);
  v21 = *(v1 + 48);
  if (v21(v8, 1, v0) != 1)
  {
    sub_209AC(v8, v28);
    if (v21(&v8[v20], 1, v0) != 1)
    {
      v23 = &v8[v20];
      v24 = v27;
      (*(v1 + 32))(v27, v23, v0);
      sub_20A1C();
      v22 = sub_211AC();
      v25 = *(v1 + 8);
      v25(v24, v0);
      sub_18B80(v16, &qword_3CFF0, &qword_279A0);
      sub_18B80(v19, &qword_3CFF0, &qword_279A0);
      v25(v28, v0);
      sub_18B80(v8, &qword_3CFF0, &qword_279A0);
      return v22 & 1;
    }

    sub_18B80(v16, &qword_3CFF0, &qword_279A0);
    sub_18B80(v19, &qword_3CFF0, &qword_279A0);
    (*(v1 + 8))(v28, v0);
    goto LABEL_6;
  }

  sub_18B80(v16, &qword_3CFF0, &qword_279A0);
  sub_18B80(v19, &qword_3CFF0, &qword_279A0);
  if (v21(&v8[v20], 1, v0) != 1)
  {
LABEL_6:
    sub_18B80(v8, &qword_3D000, &qword_279B0);
    v22 = 0;
    return v22 & 1;
  }

  sub_18B80(v8, &qword_3CFF0, &qword_279A0);
  v22 = 1;
  return v22 & 1;
}

uint64_t sub_20448(uint64_t a1, uint64_t a2)
{
  v3 = sub_16C78(&qword_3CFF0, &qword_279A0);
  __chkstk_darwin(v3 - 8, v4);
  v49[2] = v49 - v5;
  v6 = sub_20FFC();
  v52 = *(v6 - 8);
  v53 = v6;
  v8 = __chkstk_darwin(v6, v7);
  v51 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v10);
  v50 = v49 - v11;
  v12 = sub_16C78(&qword_3CFF8, &qword_279A8);
  v14 = __chkstk_darwin(v12 - 8, v13);
  v49[1] = v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v16);
  v18 = v49 - v17;
  v19 = sub_16C78(&qword_3CEB8, &qword_27818);
  v21 = __chkstk_darwin(v19 - 8, v20);
  v49[0] = v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21, v23);
  v25 = v49 - v24;
  v26 = sub_20F7C();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26, v28);
  v30 = v49 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_20F3C();
  sub_20F5C();
  v31 = sub_20EFC();
  v32 = (*(*(v31 - 8) + 48))(v25, 1, v31);
  sub_18B80(v25, &qword_3CEB8, &qword_27818);
  if (v32 == 1 && (sub_20F6C(), v33 = sub_20F0C(), v34 = (*(*(v33 - 8) + 48))(v18, 1, v33), sub_18B80(v18, &qword_3CFF8, &qword_279A8), v34 == 1) && (v35 = sub_20FBC(), __chkstk_darwin(v35, v36), v49[-2] = v30, v38 = *(sub_1FD40(sub_2098C, &v49[-4], v37) + 2), , v38 >= 2))
  {
    v39 = objc_opt_self();
    v40 = sub_211BC();
    v41 = [v39 addLikelySubtagsForLocaleIdentifier:v40];

    sub_211EC();
    v42 = v50;
    sub_20F8C();
    sub_20FAC();
    sub_20FEC();
    sub_20FDC();
    v43 = v51;
    sub_20F9C();
    sub_20FCC();
    v44 = sub_211BC();

    v45 = [v39 canonicalLocaleIdentifierFromString:v44];

    a1 = sub_211EC();
    v46 = v53;
    v47 = *(v52 + 8);
    v47(v43, v53);
    v47(v42, v46);
  }

  else
  {
  }

  (*(v27 + 8))(v30, v26);
  return a1;
}

uint64_t sub_209AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_16C78(&qword_3CFF0, &qword_279A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_20A1C()
{
  result = qword_3D008;
  if (!qword_3D008)
  {
    sub_20EBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3D008);
  }

  return result;
}