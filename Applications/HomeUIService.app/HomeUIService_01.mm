void sub_1000565A4(uint64_t a1)
{
  v2 = [NSMutableDictionary alloc];
  v3 = [*(a1 + 32) stepToStringMap];
  v4 = [v2 initWithCapacity:{objc_msgSend(v3, "count")}];

  v5 = [*(a1 + 32) stepToStringMap];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000566A0;
  v9[3] = &unk_1000C7B10;
  v10 = v4;
  v6 = v4;
  [v5 enumerateKeysAndObjectsUsingBlock:v9];

  v7 = [v6 copy];
  v8 = qword_1000E6758;
  qword_1000E6758 = v7;
}

id sub_100056898(uint64_t a1)
{
  if (qword_1000E6768 != -1)
  {
    sub_10007B228();
  }

  v2 = qword_1000E6770;

  return v2;
}

void sub_1000568DC(id a1)
{
  v3[0] = &off_1000CDA50;
  v4[0] = objc_opt_class();
  v3[1] = &off_1000CDA68;
  v4[1] = objc_opt_class();
  v3[2] = &off_1000CDA80;
  v4[2] = objc_opt_class();
  v3[3] = &off_1000CDA98;
  v4[3] = objc_opt_class();
  v3[4] = &off_1000CDAB0;
  v4[4] = objc_opt_class();
  v3[5] = &off_1000CDAC8;
  v4[5] = objc_opt_class();
  v3[6] = &off_1000CDAE0;
  v4[6] = objc_opt_class();
  v3[7] = &off_1000CDAF8;
  v4[7] = objc_opt_class();
  v3[8] = &off_1000CDB10;
  v4[8] = objc_opt_class();
  v3[9] = &off_1000CDB28;
  v4[9] = objc_opt_class();
  v3[10] = &off_1000CDB40;
  v4[10] = objc_opt_class();
  v3[11] = &off_1000CDB58;
  v4[11] = objc_opt_class();
  v3[12] = &off_1000CDB70;
  v4[12] = objc_opt_class();
  v3[13] = &off_1000CDB88;
  v4[13] = objc_opt_class();
  v3[14] = &off_1000CDBA0;
  v4[14] = objc_opt_class();
  v3[15] = &off_1000CDBB8;
  v4[15] = objc_opt_class();
  v3[16] = &off_1000CDBD0;
  v4[16] = objc_opt_class();
  v3[17] = &off_1000CDBE8;
  v4[17] = objc_opt_class();
  v3[18] = &off_1000CDC00;
  v4[18] = objc_opt_class();
  v3[19] = &off_1000CDC18;
  v4[19] = objc_opt_class();
  v3[20] = &off_1000CDC30;
  v4[20] = objc_opt_class();
  v3[21] = &off_1000CDC48;
  v4[21] = objc_opt_class();
  v3[22] = &off_1000CDC60;
  v4[22] = objc_opt_class();
  v3[23] = &off_1000CDC78;
  v4[23] = objc_opt_class();
  v3[24] = &off_1000CDC90;
  v4[24] = objc_opt_class();
  v3[25] = &off_1000CDCA8;
  v4[25] = objc_opt_class();
  v3[26] = &off_1000CDCC0;
  v4[26] = objc_opt_class();
  v3[27] = &off_1000CDCD8;
  v4[27] = objc_opt_class();
  v3[28] = &off_1000CDCF0;
  v4[28] = objc_opt_class();
  v3[29] = &off_1000CDD08;
  v4[29] = objc_opt_class();
  v3[30] = &off_1000CDD20;
  v4[30] = objc_opt_class();
  v3[31] = &off_1000CDD38;
  v4[31] = objc_opt_class();
  v3[32] = &off_1000CDD50;
  v4[32] = objc_opt_class();
  v3[33] = &off_1000CDD68;
  v4[33] = objc_opt_class();
  v3[34] = &off_1000CDD80;
  v4[34] = objc_opt_class();
  v3[35] = &off_1000CDD98;
  v4[35] = objc_opt_class();
  v3[36] = &off_1000CDDB0;
  v4[36] = objc_opt_class();
  v3[37] = &off_1000CDDC8;
  v4[37] = objc_opt_class();
  v3[38] = &off_1000CDDE0;
  v4[38] = objc_opt_class();
  v3[39] = &off_1000CDDF8;
  v4[39] = objc_opt_class();
  v3[40] = &off_1000CDE10;
  v4[40] = objc_opt_class();
  v3[41] = &off_1000CDE28;
  v4[41] = objc_opt_class();
  v3[42] = &off_1000CDE40;
  v4[42] = objc_opt_class();
  v3[43] = &off_1000CDE58;
  v4[43] = objc_opt_class();
  v3[44] = &off_1000CDE70;
  v4[44] = objc_opt_class();
  v3[45] = &off_1000CDE88;
  v4[45] = objc_opt_class();
  v3[46] = &off_1000CDEA0;
  v4[46] = objc_opt_class();
  v3[47] = &off_1000CDEB8;
  v4[47] = objc_opt_class();
  v3[48] = &off_1000CDED0;
  v4[48] = objc_opt_class();
  v3[49] = &off_1000CDEE8;
  v4[49] = objc_opt_class();
  v3[50] = &off_1000CDF00;
  v4[50] = objc_opt_class();
  v3[51] = &off_1000CDF48;
  v4[51] = objc_opt_class();
  v3[52] = &off_1000CDF60;
  v4[52] = objc_opt_class();
  v3[53] = &off_1000CDF78;
  v4[53] = objc_opt_class();
  v3[54] = &off_1000CDF90;
  v4[54] = objc_opt_class();
  v3[55] = &off_1000CDFA8;
  v4[55] = objc_opt_class();
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:56];
  v2 = qword_1000E6770;
  qword_1000E6770 = v1;
}

id sub_1000572D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005738C;
  v8[3] = &unk_1000C7B58;
  v9 = v3;
  v5 = v3;
  v6 = [v4 na_map:v8];

  return v6;
}

void sub_1000579A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1000579CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained config];
  v3 = [v2 addedAccessory];

  v4 = [objc_opt_class() applicableServicesForAccessory:v3];
  v5 = [WeakRetained _enabledServicesSetFromServices:v4];
  v6 = [v5 mutableCopy];
  [WeakRetained setEnabledServices:v6];

  v7 = [WeakRetained _frozenServicesFromServices:v4];
  [WeakRetained setFrozenServices:v7];

  v8 = [v4 allObjects];
  v9 = [WeakRetained serviceComparator];
  v10 = [v8 sortedArrayUsingComparator:v9];
  [WeakRetained setServices:v10];

  v11 = [WeakRetained services];
  v12 = [WeakRetained suggestedNamesForServices:v11];
  [WeakRetained setServiceNames:v12];

  [WeakRetained _logDetailedServices];
  v13 = +[NAFuture futureWithNoResult];

  return v13;
}

id sub_100057EB8(uint64_t a1)
{
  v2 = [*(a1 + 32) services];
  v3 = [*(a1 + 32) serviceNames];
  v4 = [HSSetupStateMachineConfiguration configureServices:v2 withNames:v3];

  return v4;
}

id sub_100057F50(uint64_t a1)
{
  v1 = [*(a1 + 32) enabledServices];
  v2 = [HSSetupStateMachineConfiguration enableServices:v1];

  return v2;
}

uint64_t sub_100059080(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 serviceType];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

id sub_1000592DC(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _givenNameForService:a2];
  v4 = [HFUtilities sanitizeAutoGeneratedHomeKitName:v3];
  v5 = v4;
  if ([*(a1 + 40) containsObject:v4])
  {
    v6 = 2;
    v7 = v4;
    do
    {
      v5 = [NSString stringWithFormat:@"%@ %ld", v4, v6];

      ++v6;
      v7 = v5;
    }

    while (([*(a1 + 40) containsObject:v5] & 1) != 0);
  }

  [*(a1 + 40) addObject:v5];

  return v5;
}

void sub_100059DFC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) config];
  v5 = [v4 home];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100059EC8;
  v8[3] = &unk_1000C6D88;
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  [v5 updateAudioAnalysisClassifierOptions:1 completion:v8];
}

void sub_100059EC8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HFLogForCategory();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10007B2F0(v3, v5, v6, v7, v8, v9, v10, v11);
    }

    [*(a1 + 32) finishWithError:v3];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Success in setting audio analysis classifier options setting", v16, 2u);
    }

    v12 = *(a1 + 32);
    v13 = [*(a1 + 40) config];
    v14 = [v13 home];
    v15 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v14 audioAnalysisClassifierOptions]);
    [v12 finishWithResult:v15 error:0];
  }
}

void sub_100059FE0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10005A07C;
  v6[3] = &unk_1000C66B0;
  v7 = v3;
  v5 = v3;
  [v4 updateAudioAnalysisUserDropinAccessLevel:2 completionHandler:v6];
}

void sub_10005A07C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HFLogForCategory();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10007B35C(v3, v5, v6, v7, v8, v9, v10, v11);
    }

    [*(a1 + 32) finishWithError:v3];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Success in setting dropin access level setting", v12, 2u);
    }

    [*(a1 + 32) finishWithNoResult];
  }
}

void sub_10005A344(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) config];
  v5 = [v4 home];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005A40C;
  v7[3] = &unk_1000C66B0;
  v8 = v3;
  v6 = v3;
  [v5 updateDidOnboardAudioAnalysis:1 completion:v7];
}

void sub_10005A40C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HFLogForCategory();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10007B3C8(v3, v5, v6, v7, v8, v9, v10, v11);
    }

    [*(a1 + 32) finishWithError:v3];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Success in setting audio analysis onboarding key", v12, 2u);
    }

    [*(a1 + 32) finishWithNoResult];
  }
}

NSArray *__cdecl sub_10005A680(id a1, HMHome *a2, HFItemUpdating *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [[HUCameraPermissionsSettingsModule alloc] initWithItemUpdater:v4 home:v5 displayStyle:1];

  v9 = v6;
  v7 = [NSArray arrayWithObjects:&v9 count:1];

  return v7;
}

HUItemModuleController *__cdecl sub_10005A750(id a1, HFItemModule *a2)
{
  v2 = a2;
  v3 = [[HUCameraSettingsModuleController alloc] initWithModule:v2];

  [v3 setUseProxSetupPresentationStyle:1];

  return v3;
}

void sub_10005AD0C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v19 = "[HSPCAccessoryUpdateViewController displayAutomaticUpdatesAlert]_block_invoke";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Displaying popup to enable automatic software updates for third party accessories", buf, 0xCu);
  }

  v5 = HULocalizedString();
  v6 = HULocalizedString();
  v7 = [UIAlertController alertControllerWithTitle:v5 message:v6 preferredStyle:1];

  v8 = HULocalizedString();
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10005AFA4;
  v16[3] = &unk_1000C5DB8;
  v16[4] = *(a1 + 32);
  v9 = v3;
  v17 = v9;
  v10 = [UIAlertAction actionWithTitle:v8 style:0 handler:v16];

  [v7 addAction:v10];
  v11 = HULocalizedString();
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10005B0A0;
  v14[3] = &unk_1000C5DE0;
  v15 = v9;
  v12 = v9;
  v13 = [UIAlertAction actionWithTitle:v11 style:0 handler:v14];
  [v7 addAction:v13];

  [v7 setPreferredAction:v10];
  [*(a1 + 32) presentViewController:v7 animated:1 completion:0];
}

id sub_10005AFA4(uint64_t a1)
{
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[HSPCAccessoryUpdateViewController displayAutomaticUpdatesAlert]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Enabling automatic software updates for third party accessories", &v7, 0xCu);
  }

  v3 = [*(a1 + 32) config];
  v4 = [v3 home];
  v5 = [v4 hf_updateAutomaticThirdPartyAccessorySoftwareUpdateEnabled:1];

  return [*(a1 + 40) finishWithResult:&off_1000CE020];
}

id sub_10005B0A0(uint64_t a1)
{
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[HSPCAccessoryUpdateViewController displayAutomaticUpdatesAlert]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s User declined enabling software updates for third party accessories", &v4, 0xCu);
  }

  return [*(a1 + 32) finishWithResult:&off_1000CE020];
}

void sub_10005BA94(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) config];
  v6 = [v5 onboardingSelections];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005BB5C;
  v8[3] = &unk_1000C5F10;
  v9 = v3;
  v7 = v3;
  [v4 applyOnboardingSelections:v6 completionHandler:v8];
}

void sub_10005BB5C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  if (v4)
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000773FC(v4, v5);
    }
  }

  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMSiriEndpointOnboardingResultAsString();
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Call succeeded with following result: %@", &v8, 0xCu);
  }

  [*(a1 + 32) finishWithNoResult];
}

void sub_10005CA30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10005CA54(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 copy];

  [WeakRetained setItems:v4];
  [WeakRetained setLoaded:1];
}

id sub_10005CDB8(uint64_t a1)
{
  v2 = [[HFDiscoveredAccessoryItemProvider alloc] initWithAccessoryBrowsingManager:*(a1 + 32)];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10005CEC0;
  v5[3] = &unk_1000C7CE8;
  v6 = *(a1 + 40);
  [v2 setFilter:v5];
  v7 = v2;
  v3 = [NSArray arrayWithObjects:&v7 count:1];

  return v3;
}

uint64_t sub_10005CEC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    return [v2 shouldShowAccessory:a2];
  }

  else
  {
    return 1;
  }
}

uint64_t sub_10005D0BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) discoveredAccessoryFilter];
  if (v4)
  {
    v5 = [*(a1 + 32) discoveredAccessoryFilter];
    v6 = [v5 shouldShowAccessory:v3];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

BOOL sub_10005D328(id a1, HFItem *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
    if (!v5)
    {
      sub_10007A644(v3);
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = [(HFItem *)v5 discoveredAccessory];
  v7 = [v6 accessory];
  v8 = [v7 knownToSystemCommissioner];

  return v8 ^ 1;
}

int64_t sub_10005D3F4(id a1, HFItem *a2, HFItem *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_class();
  v6 = v4;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    if (!v8)
    {
      sub_10007A644(v6);
    }
  }

  else
  {
    v8 = 0;
  }

  objc_opt_class();
  v9 = v5;
  if (v9)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    if (!v11)
    {
      sub_10007A644(v9);
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = [(HFItem *)v8 discoveredAccessory];
  v13 = [(HFItem *)v11 discoveredAccessory];
  v14 = [v12 accessory];
  if ([v14 knownToSystemCommissioner])
  {
  }

  else
  {
    v15 = [v13 accessory];
    v16 = [v15 knownToSystemCommissioner];

    if (!v16)
    {
      v22 = [v12 discoveryDate];
      v23 = [v13 discoveryDate];
      v21 = [v22 compare:v23];

      if (v21)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }
  }

  v17 = [v12 accessory];
  v18 = [v17 knownToSystemCommissioner];

  if (!v18)
  {
    v21 = -1;
    goto LABEL_24;
  }

  v19 = [v13 accessory];
  v20 = [v19 knownToSystemCommissioner];

  if (v20)
  {
LABEL_23:
    v24 = +[HFItemSection defaultItemComparator];
    v21 = (v24)[2](v24, v6, v9);

    goto LABEL_24;
  }

  v21 = 1;
LABEL_24:

  return v21;
}

BOOL sub_10005D71C(id a1, HFItemProvider *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

NSArray *__cdecl sub_10005D9E8(id a1, HMHome *a2, HFItemUpdating *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [[HUFaceRecognitionUserPhotosLibrarySettingsModule alloc] initWithItemUpdater:v4 home:v5];

  [v6 setShouldUseProxCardPresentationStyle:1];
  v9 = v6;
  v7 = [NSArray arrayWithObjects:&v9 count:1];

  return v7;
}

id sub_10005DAC0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = v3;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    if (!v7)
    {
      sub_1000774F0(v5, v4);
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = [[HUFaceRecognitionUserPhotosLibrarySettingsModuleController alloc] initWithModule:v7 host:*(a1 + 32)];

  return v8;
}

id sub_10005E10C(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [*(a1 + 32) suggestedRoomUUID];
  v5 = [v3 isEqual:v4];

  return v5;
}

uint64_t sub_10005E6C4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 name];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

void sub_10005EA38(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_10005EA5C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 extensionMessenger];
  [v5 fetchRoomsInHome:*(a1 + 40) completionHandler:v4];
}

id sub_10005EACC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 sortedArrayUsingComparator:&stru_1000C7EA0];
  [WeakRetained setItems:v5];

  [WeakRetained setLoaded:1];
  v6 = [NAFuture futureWithResult:v3];

  return v6;
}

int64_t sub_10005EB70(id a1, MTSDeviceSetupRoom *a2, MTSDeviceSetupRoom *a3)
{
  v4 = a3;
  v5 = [(MTSDeviceSetupRoom *)a2 name];
  v6 = [(MTSDeviceSetupRoom *)v4 name];

  v7 = [v5 localizedStandardCompare:v6];
  return v7;
}

void sub_10005F86C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 176));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_10005F8C0(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005F980;
  block[3] = &unk_1000C7EC8;
  objc_copyWeak(v7, (a1 + 32));
  v6 = v3;
  v7[1] = *(a1 + 40);
  v4 = v3;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(v7);
}

void sub_10005F980(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = +[UIImage imageWithCGImage:scale:orientation:](UIImage, "imageWithCGImage:scale:orientation:", [*(a1 + 32) CGImage], 0, *(a1 + 48));
  [WeakRetained[8] setImage:v2];
}

id sub_10005FA10(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v3 BOOLValue];
    v7 = [*(a1 + 32) home];
    v8 = [v7 currentUser];
    v9 = [v8 hf_prettyDescription];
    v10 = [*(a1 + 32) home];
    v11 = [v10 hf_minimumDescription];
    *buf = 136315906;
    v26 = "[HSPCWalletKeyViewController initWithCoordinator:config:]_block_invoke_3";
    v27 = 1024;
    v28 = v6;
    v29 = 2112;
    v30 = v9;
    v31 = 2112;
    v32 = v11;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(%s) hasWalletKeyNum = %{BOOL}d for current user %@ of home %@", buf, 0x26u);
  }

  v12 = [v3 BOOLValue];
  v13 = [*(a1 + 32) home];
  v20 = [v13 name];
  if (v12)
  {
    v21 = @"HSProximityCardWalletKeySubitle_RestrictedGuest";
  }

  else
  {
    v21 = @"HSProximityCardWalletKeySubitle";
  }

  v22 = sub_100063B5C(v21, @"%@", v14, v15, v16, v17, v18, v19, v20);
  [WeakRetained setSubtitle:v22];

  v23 = +[NAFuture futureWithNoResult];

  return v23;
}

void sub_10005FC18(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10005FCBC;
  v2[3] = &unk_1000C7A58;
  objc_copyWeak(&v4, (a1 + 40));
  v3 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v2);

  objc_destroyWeak(&v4);
}

void sub_10005FCBC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = HUImageNamed();
  [*(a1 + 32) setImage:v2];

  v3 = [WeakRetained walletAppIconImageView];
  [v3 setHidden:1];
}

void sub_10005FD44(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] home];
  v5 = [v4 hf_walletKeyColorToDisplay];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005FE68;
  v8[3] = &unk_1000C7F40;
  objc_copyWeak(&v12, a1 + 7);
  v6 = v3;
  v9 = v6;
  v11 = a1[6];
  v10 = a1[5];
  v7 = [v5 addCompletionBlock:v8];

  objc_destroyWeak(&v12);
}

void sub_10005FE68(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = [v3 integerValue];

  v6 = [PKSerializedDataAccessor alloc];
  v7 = *(a1 + 32);
  v17 = 0;
  v8 = [v6 initWithData:v7 error:&v17];
  v9 = v17;
  v10 = [PKPass createWithValidatedFileDataAccessor:v8];
  v11 = [v10 paymentPass];

  if (v9 || !v11)
  {
    v12 = HFLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10007B500();
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    [v11 setHomeKeyLiveRenderType:{+[HFWalletUtilities pkPassHomeKeyLiveRenderTypeForHMHomeWalletKeyColor:](HFWalletUtilities, "pkPassHomeKeyLiveRenderTypeForHMHomeWalletKeyColor:", v5)}];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100060020;
    v13[3] = &unk_1000C5E98;
    v14 = v11;
    v15 = *(a1 + 40);
    v16 = WeakRetained;
    dispatch_async(&_dispatch_main_q, v13);
  }
}

void sub_100060020(uint64_t a1)
{
  v2 = +[PKPassSnapshotter sharedInstance];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000600E4;
  v4[3] = &unk_1000C7F18;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  [v2 snapshotWithPass:v3 completion:v4];
}

void sub_1000600E4(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000601A4;
  block[3] = &unk_1000C5E98;
  v6 = *(a1 + 32);
  v7 = v3;
  v8 = *(a1 + 40);
  v4 = v3;
  dispatch_async(&_dispatch_main_q, block);
}

id sub_1000601A4(uint64_t a1)
{
  [*(a1 + 32) setImage:*(a1 + 40)];
  v2 = [*(a1 + 48) walletAppIconImageView];
  [v2 setHidden:0];

  v3 = *(a1 + 48);

  return [v3 _setupWalletAppIconImageView];
}

id sub_1000601FC(id *a1, void *a2)
{
  v3 = [a2 BOOLValue];
  v4 = [a1[4] home];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 hf_fetchExistingWalletKeyEncodedPKPass];
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_100060448;
    v17 = &unk_1000C7F90;
    v7 = &v18;
    v18 = a1[5];
    v8 = &v19;
    v19 = a1[6];
    v9 = &v20;
    v20 = a1[7];
    v10 = &v14;
  }

  else
  {
    v6 = [v4 hf_fetchAvailableWalletKeyEncodedPKPass];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000603B0;
    v21[3] = &unk_1000C7F90;
    v7 = &v22;
    v22 = a1[5];
    v8 = &v23;
    v23 = a1[6];
    v9 = &v24;
    v24 = a1[7];
    v10 = v21;
  }

  v11 = [v6 addCompletionBlock:{v10, v14, v15, v16, v17}];

  v12 = +[NAFuture futureWithNoResult];

  return v12;
}

void sub_1000603B0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10007B574();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void sub_100060448(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10007B5EC();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void sub_1000608F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10006093C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_10007B6E4();
  }

  objc_opt_class();
  v6 = v3;
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (!v8)
  {
    goto LABEL_12;
  }

  if ([v8 code] == 8 && +[HFUtilities isAnIPad](HFUtilities, "isAnIPad"))
  {
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10007B758();
    }

LABEL_12:
    v10 = [NAFuture futureWithResult:&off_1000CE068];
    goto LABEL_25;
  }

  v11 = objc_alloc_init(NAFuture);
  v12 = [WeakRetained config];
  v13 = [v12 delegate];
  v14 = [WeakRetained config];
  v15 = [v13 stateMachineConfigurationGetLaunchReason:v14];

  if (v15)
  {
    v16 = [v8 code];
    if (v16 == 8)
    {
      v17 = +[HFWalletUtilities walletAppFromAppStoreURL];
    }

    else if (v16 == 5)
    {
      v17 = +[HFWalletUtilities walletAppURL];
    }

    else
    {
      if (v16 != 2)
      {
        v19 = 0;
        goto LABEL_23;
      }

      v17 = +[NSURL hf_openiCloudPreferencesURL];
    }

    v19 = v17;
LABEL_23:
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100060C68;
    v30[3] = &unk_1000C5E98;
    v31 = v19;
    v32 = WeakRetained;
    v33 = v11;
    v20 = v19;
    v18 = objc_retainBlock(v30);

    goto LABEL_24;
  }

  v18 = 0;
LABEL_24:
  v25 = _NSConcreteStackBlock;
  v26 = 3221225472;
  v27 = sub_100060EA0;
  v28 = &unk_1000C5970;
  v21 = v11;
  v29 = v21;
  v22 = objc_retainBlock(&v25);
  v23 = [HFErrorHandler sharedHandler:v25];
  [v23 handleError:v8 retryBlock:v18 cancelBlock:v22];

  v10 = v21;
LABEL_25:

  return v10;
}

void sub_100060C68(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = +[HFOpenURLRouter sharedInstance];
    v3 = [v2 openURL:*(a1 + 32)];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100060D8C;
    v8[3] = &unk_1000C7FE0;
    v7 = *(a1 + 32);
    v4 = v7.i64[0];
    v9 = vextq_s8(v7, v7, 8uLL);
    v10 = *(a1 + 48);
    v5 = [v3 addCompletionBlock:v8];
  }

  else
  {
    v6 = *(a1 + 48);

    [v6 finishWithResult:&off_1000CE068];
  }
}

void sub_100060D8C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = 138413314;
    v11 = v8;
    v12 = 2080;
    v13 = "[HSPCWalletKeyViewController commitConfiguration]_block_invoke_2";
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v5;
    v18 = 2112;
    v19 = v6;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "(%@:%s) Retried opening url %@ with result %@ and error %@", &v10, 0x34u);
  }

  [*(a1 + 48) finishWithResult:&off_1000CE068];
}

id sub_100060EB0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_10007B7D8();
  }

  v6 = [NAFuture futureWithResult:&off_1000CE068];

  return v6;
}

void sub_100060F58(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained config];
  v3 = [v2 home];
  v4 = [v3 hf_fetchWalletKeyDeviceStateForCurrentDeviceIfNecessary];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006101C;
  v6[3] = &unk_1000C8030;
  v6[4] = WeakRetained;
  v5 = [v4 addCompletionBlock:v6];
}

void sub_10006101C(uint64_t a1, void *a2)
{
  if (([a2 canAddWalletKey] & 1) == 0)
  {
    v3 = [*(a1 + 32) config];
    v4 = [v3 home];
    v5 = [v4 hf_walletKeyDeviceStatesOfCompatiblePairedWatches];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000610E8;
    v7[3] = &unk_1000C8008;
    v7[4] = *(a1 + 32);
    v6 = [v5 addCompletionBlock:v7];
  }
}

void sub_1000610E8(uint64_t a1, void *a2)
{
  if ([a2 count])
  {
    v3 = HFLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 32) config];
      v5 = [v4 home];
      v17 = 136315394;
      v18 = "[HSPCWalletKeyViewController commitConfiguration]_block_invoke_3";
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "(HSPCWalletKeyViewController:%s) Updating hasOnboarded for Wallet Key for home %@. Current device doesn't support wallet key, but there's at least one paired watch that supports wallet key.", &v17, 0x16u);
    }

    v6 = [*(a1 + 32) config];
    v7 = [v6 home];
    v8 = [v7 hf_setHasOnboardedForWalletKey];

    v9 = [HFUserItem alloc];
    v10 = [*(a1 + 32) config];
    v11 = [v10 home];
    v12 = [*(a1 + 32) config];
    v13 = [v12 home];
    v14 = [v13 currentUser];
    v15 = [v9 initWithHome:v11 user:v14 nameStyle:0];

    v16 = [v15 setDismissWalletKeyExpressModeOnboarding:1 forWalletKeyUUID:0];
  }
}

void sub_100061E00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100061E34(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = +[NSMutableArray array];
  v3 = sub_1000057C8();
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100062188;
  v33[3] = &unk_1000C8058;
  v4 = v2;
  v34 = v4;
  v5 = WeakRetained;
  v35 = v5;
  v36 = v3;
  v6 = v3;
  v7 = objc_retainBlock(v33);
  v8 = [v5 _shouldStackIcons];
  v9 = [v5 scanCodeIconView];
  v10 = [v9 topAnchor];
  v11 = [v5 topAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:20.0];
  [v4 addObject:v12];

  v13 = [v5 scanCodeIconView];
  v14 = [v5 scanCodeTitleLabel];
  v15 = [v5 scanCodeBodyLabel];
  (v7[2])(v7, v13, v14, v15, v8, 0);

  if ([v5 _isShowingNFCInstructions])
  {
    v16 = [v5 nfcIconView];
    v17 = [v16 topAnchor];
    v18 = [v5 scanCodeBodyLabel];
    v19 = [v18 lastBaselineAnchor];
    [v17 constraintEqualToAnchor:v19 constant:30.0];
    v20 = v32 = v6;
    [v4 addObject:v20];

    v21 = [v5 nfcIconView];
    v22 = [v5 nfcTitleLabel];
    v23 = [v5 nfcBodyLabel];
    v24 = [v5 scanCodeTitleLabel];
    v25 = [v24 leadingAnchor];
    (v7[2])(v7, v21, v22, v23, v8, v25);

    v6 = v32;
    [v5 nfcBodyLabel];
  }

  else
  {
    [v5 scanCodeBodyLabel];
  }
  v26 = ;
  v27 = [v26 bottomAnchor];
  v28 = [v5 bottomAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 constant:-10.0];
  [v4 addObject:v29];

  v30 = v4;
  return v4;
}

void sub_100062188(uint64_t a1, void *a2, void *a3, void *a4, int a5, void *a6)
{
  v52 = a2;
  v11 = a3;
  v12 = a6;
  v13 = *(a1 + 32);
  v14 = a4;
  v15 = [v52 leadingAnchor];
  v16 = [*(a1 + 40) layoutMarginsGuide];
  v17 = [v16 leadingAnchor];
  v18 = [v15 constraintEqualToAnchor:v17];
  [v13 addObject:v18];

  v19 = *(a1 + 32);
  v20 = [v11 trailingAnchor];
  v21 = [*(a1 + 40) layoutMarginsGuide];
  v22 = [v21 trailingAnchor];
  v23 = [v20 constraintEqualToAnchor:v22];
  [v19 addObject:v23];

  v24 = *(a1 + 32);
  v25 = [v11 topAnchor];
  if (a5)
  {
    v26 = [v52 bottomAnchor];
    v27 = [v25 constraintEqualToAnchor:v26 constant:15.0];
    [v24 addObject:v27];

    v28 = *(a1 + 32);
    v29 = [v11 leadingAnchor];
    v30 = [*(a1 + 40) layoutMarginsGuide];
    v31 = [v30 leadingAnchor];
    v32 = [v29 constraintEqualToAnchor:v31];
    [v28 addObject:v32];
  }

  else
  {
    v33 = [v52 topAnchor];
    v34 = [v25 constraintEqualToAnchor:v33];
    [v24 addObject:v34];

    v35 = *(a1 + 32);
    v36 = [v11 leadingAnchor];
    v29 = v36;
    if (v12)
    {
      v30 = [v36 constraintEqualToAnchor:v12];
      [v35 addObject:v30];
      goto LABEL_9;
    }

    v30 = [v52 trailingAnchor];
    v37 = +[UIScreen mainScreen];
    [v37 bounds];
    v38 = HUViewSizeSubclassForViewSize();

    v39 = 20.0;
    if (!v38)
    {
      v39 = 18.0;
    }

    v31 = [v29 constraintEqualToAnchor:v30 constant:v39];
    [v35 addObject:v31];
  }

LABEL_9:
  v40 = *(a1 + 32);
  v41 = [v14 firstBaselineAnchor];
  v42 = [v11 lastBaselineAnchor];
  [*(a1 + 48) _scaledValueForValue:20.0];
  v43 = [v41 constraintEqualToAnchor:v42 constant:?];
  [v40 addObject:v43];

  v44 = *(a1 + 32);
  v45 = [v14 trailingAnchor];
  v46 = [v11 trailingAnchor];
  v47 = [v45 constraintEqualToAnchor:v46];
  [v44 addObject:v47];

  v48 = *(a1 + 32);
  v49 = [v14 leadingAnchor];

  v50 = [v11 leadingAnchor];
  v51 = [v49 constraintEqualToAnchor:v50];
  [v48 addObject:v51];
}

void sub_10006257C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained nfcTitleLabel];
  [v1 setHidden:0];

  v2 = [WeakRetained nfcBodyLabel];
  [v2 setHidden:0];

  v3 = [WeakRetained nfcIconView];
  [v3 setHidden:0];

  [WeakRetained _updateScanCodeIcon];
  v4 = [WeakRetained constraintSet];
  [v4 invalidate];
}

id sub_1000628E0(uint64_t a1)
{
  if (qword_1000E6778 != -1)
  {
    sub_10007B84C();
  }

  v2 = qword_1000E6780;

  return v2;
}

void sub_100062924(id a1)
{
  qword_1000E6780 = [NSSet setWithObjects:UIContentSizeCategoryExtraLarge, UIContentSizeCategoryExtraExtraLarge, UIContentSizeCategoryExtraExtraExtraLarge, UIContentSizeCategoryAccessibilityMedium, UIContentSizeCategoryAccessibilityLarge, UIContentSizeCategoryAccessibilityExtraLarge, UIContentSizeCategoryAccessibilityExtraExtraLarge, UIContentSizeCategoryAccessibilityExtraExtraExtraLarge, 0];

  _objc_release_x1();
}

id sub_100063648(uint64_t a1, void *a2)
{
  v3 = [a2 BOOLValue];
  v4 = HFLogForCategory();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Skip step: %@", &v10, 0xCu);
    }

    v7 = [*(a1 + 40) _moveToNextStep];
  }

  else
  {
    if (v5)
    {
      v8 = *(a1 + 32);
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Show step: %@", &v10, 0xCu);
    }

    v7 = [NAFuture futureWithResult:&__kCFBooleanFalse];
  }

  return v7;
}

id sub_100063838(uint64_t a1)
{
  if (qword_1000E6790 != -1)
  {
    sub_10007B860();
  }

  v2 = qword_1000E6788;

  return v2;
}

void sub_10006387C(id a1)
{
  qword_1000E6788 = [NSBundle bundleForClass:objc_opt_class()];

  _objc_release_x1();
}

__CFString *sub_1000638D8(void *a1)
{
  v1 = a1;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = sub_100063C28(v1);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v12 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v11 + 1) + 8 * v6);
      v8 = sub_100063838(v3);
      v9 = [v8 localizedStringForKey:v1 value:@"_" table:{v7, v11}];

      if (![(__CFString *)v9 isEqualToString:@"_"])
      {
        break;
      }

      if (v4 == ++v6)
      {
        v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
        v4 = v3;
        if (v3)
        {
          goto LABEL_3;
        }

        v9 = @"_";
        break;
      }
    }
  }

  else
  {
    v9 = @"_";
  }

  return v9;
}

void *sub_100063A50(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  v7 = sub_100063838(v6);
  v8 = [v7 localizedStringForKey:v5 value:@"_" table:@"HSLocalizable"];

  if ([@"_" isEqualToString:v8])
  {
    v9 = sub_1000638D8(v5);

    v8 = v9;
  }

  v10 = [@"_" isEqualToString:v8];
  if (v10)
  {
    v11 = v6;
  }

  else
  {
    v11 = v8;
  }

  if (v10 && a3)
  {
    NSLog(@"Missing localized string key %@ in table %@", v5, @"HSLocalizable");
    v11 = v6;
  }

  v12 = v11;

  return v11;
}

id sub_100063B5C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a2;
  v11 = sub_100063A50(a1, 0, 1);
  if (v11)
  {
    v16[1] = &a9;
    v16[0] = 0;
    v12 = [[NSString alloc] initWithValidatedFormat:v11 validFormatSpecifiers:v10 arguments:&a9 error:v16];
    v13 = v16[0];
    v14 = v13;
    if (!v12)
    {
      NSLog(@"Couldn't localize format string %@. Most likely, the format specifiers don't match. %@", v11, v13);
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id sub_100063C28(uint64_t a1)
{
  if (qword_1000E6798 != -1)
  {
    sub_10007B874();
  }

  v2 = qword_1000E67A0;

  return v2;
}

void sub_100063C6C(id a1)
{
  v1 = qword_1000E67A0;
  qword_1000E67A0 = &off_1000CE228;
}

id sub_1000640F8(uint64_t a1)
{
  v2 = [*(a1 + 32) pairingController];
  [v2 startWithHome:*(a1 + 40)];

  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) pairingController];
    v5 = *(a1 + 40);
    v9 = 138412546;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Set up and started accessory pairing controller: %@ with home: %@", &v9, 0x16u);
  }

  v6 = [*(a1 + 32) promise];
  v7 = [v6 future];

  return v7;
}

void sub_1000663F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained navigationController];
  v4 = [v3 topViewController];

  if (WeakRetained == v4)
  {
    v5 = [WeakRetained coordinator];
    v6 = [v5 didReceiveSetupCode:*(a1 + 32) withPayload:0 fromViewController:WeakRetained];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000664E8;
    v8[3] = &unk_1000C6CA0;
    v8[4] = WeakRetained;
    v7 = [v6 addCompletionBlock:v8];
  }
}

void sub_1000664E8(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v4 = [v9 domain];
  v5 = v4;
  if (v4 == HFErrorDomain)
  {
    v6 = [v9 code];

    if (v6 == 96)
    {
      v7 = *(a1 + 32);
      v8 = [NAFuture futureWithResult:&off_1000CE098];
      [v7 handleButtonDirectiveFuture:v8];

      goto LABEL_6;
    }
  }

  else
  {
  }

  [*(a1 + 32) _moveToNextViewController];
LABEL_6:
}

void sub_100066AFC(uint64_t a1)
{
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  v3 = [v2 homeManager];
  v4 = [v3 accessorySetupCoordinator];
  v5 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100066C00;
  v6[3] = &unk_1000C8108;
  objc_copyWeak(&v8, (a1 + 40));
  v7 = *(a1 + 32);
  [v4 createSetupAccessoryPayloadWithSetupPayloadURLString:v5 completionHandler:v6];

  objc_destroyWeak(&v8);
}

void sub_100066C00(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    *buf = 138413058;
    v19 = v9;
    v20 = 2112;
    v21 = v5;
    v22 = 1024;
    v23 = [v5 requiresMatterCustomCommissioningFlow];
    v24 = 2112;
    v25 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "accessorySetupCoordinator createSetupAccessoryPayloadWithSetupPayloadURLString:completionHandler:, setupURLString %@, payload %@, requiresMatterCustomCommissioningFlow %d, error %@.", buf, 0x26u);
  }

  v10 = [WeakRetained coordinator];
  v11 = [v10 showCustomCommissioningFlowAlertIfNecessaryForPayload:v5 onViewController:WeakRetained];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100066E04;
  v16[3] = &unk_1000C80E0;
  v16[4] = WeakRetained;
  v17 = v5;
  v12 = v5;
  v13 = [v11 addSuccessBlock:v16];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100066E44;
  v15[3] = &unk_1000C66B0;
  v15[4] = WeakRetained;
  v14 = [v13 addFailureBlock:v15];
}

id sub_100066E04(uint64_t a1)
{
  [*(a1 + 32) _updatePairingErrorWithPayload:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _moveToNextViewController];
}

void sub_100066E44(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NAFuture futureWithResult:&off_1000CE098];
  [v1 handleButtonDirectiveFuture:v2];
}

void sub_1000674E8(uint64_t a1)
{
  [*(a1 + 32) setCameraReaderIsRunning:0];
  v2 = [*(a1 + 32) delayedSetupCodeHandler];
  [v2 cancel];

  v3 = [*(a1 + 32) coordinator];
  v4 = [v3 didReceiveSetupCode:0 withPayload:0 fromViewController:*(a1 + 32)];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000675C8;
  v6[3] = &unk_1000C6CA0;
  v6[4] = *(a1 + 32);
  v5 = [v4 addCompletionBlock:v6];
}

id sub_1000676E4(uint64_t a1)
{
  [*(a1 + 32) setCameraReaderIsRunning:0];
  v2 = *(a1 + 32);

  return [v2 _unloadCameraReader];
}

void sub_10006798C(uint64_t a1)
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    v6 = CROutputTypeHomeKitCode;
    v7 = CROutputTypeQRCode;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 type];
        v11 = [v10 isEqual:v6];

        if (v11)
        {
          v12 = [v9 stringValue];
          if (v12)
          {
            [*(a1 + 40) _handleSetupCode:v12];
          }
        }

        else
        {
          v13 = [v9 type];
          v14 = [v13 isEqualToString:v7];

          if (!v14)
          {
            continue;
          }

          v12 = [v9 stringValue];
          if (v12)
          {
            [*(a1 + 40) _handleSetupURLString:v12 afterDelay:0.5];
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }
}

id sub_100067C08(uint64_t a1)
{
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "nfcManager:%@ didRecognizePayloadString:%@", &v6, 0x16u);
  }

  return [*(a1 + 48) _handleSetupURLString:*(a1 + 40) afterDelay:0.0];
}

uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = UIApplicationMain(a1, a2, 0, @"HSAppDelegate");
  objc_autoreleasePoolPop(v4);
  return v5;
}

NAFuture *__cdecl sub_100068434(id a1, NSError *a2)
{
  if ([(NSError *)a2 na_isCancelledError])
  {
    v2 = &off_1000CE0B0;
  }

  else
  {
    v2 = &off_1000CE0C8;
  }

  v3 = [NAFuture futureWithResult:v2];

  return v3;
}

uint64_t sub_10006855C(uint64_t a1)
{
  v2 = [*(a1 + 32) config];
  v3 = [v2 home];
  v4 = [v3 hf_hasEnabledResident];

  v5 = [*(a1 + 32) config];
  v6 = [v5 home];
  v7 = [v6 hf_userCanCreateTrigger];

  v8 = [*(a1 + 32) config];
  v9 = [v8 addedAccessory];
  v10 = [v9 hf_supportsThermostatPresets];

  v11 = [*(a1 + 32) itemManager];
  v12 = [v11 allDisplayedItems];
  v13 = [v12 count];

  v14 = 1;
  if (v4 && v7)
  {
    v14 = (v13 == 0) | v10;
  }

  if (+[HFUtilities isInternalInstall])
  {
    v15 = [*(a1 + 32) itemManager];
    v16 = [v15 allDisplayedItems];
    v17 = [v16 allObjects];
    v18 = [v17 na_map:&stru_1000C81B0];
  }

  else
  {
    v15 = [*(a1 + 32) itemManager];
    v16 = [v15 allDisplayedItems];
    v18 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"(%lu items)", [v16 count]);
  }

  v19 = HFLogForCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = objc_opt_class();
    v21 = *(a1 + 32);
    *buf = 138413570;
    v24 = v20;
    v25 = 2048;
    v26 = v21;
    v27 = 1024;
    v28 = v14 & 1;
    v29 = 1024;
    v30 = v4;
    v31 = 1024;
    v32 = v7;
    v33 = 2112;
    v34 = v18;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%@:%p shouldSkip=%{BOOL}d, hasEnabledResident=%{BOOL}d, userCanCreateTrigger=%{BOOL}d, displayedItems=%@", buf, 0x32u);
  }

  return v14 & 1;
}

NAFuture *__cdecl sub_100068CF4(id a1, NSError *a2)
{
  v2 = a2;
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10007BA5C(v2, v3);
  }

  v4 = [NAFuture futureWithResult:&off_1000CE0E0];

  return v4;
}

id sub_100068F00()
{
  _s25_doNotTouchThisDummyClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_1000E6A50 = result;
  return result;
}

uint64_t static String.hsLocalized(_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v24 - v10;

  String.LocalizationValue.init(stringLiteral:)();
  v12 = *(v6 + 16);
  v24[0] = v5;
  v12(v9, v11, v5);
  if (qword_1000E6100 != -1)
  {
    swift_once();
  }

  v13 = qword_1000E6A50;
  static Locale.current.getter();
  v14 = String.init(localized:table:bundle:locale:comment:)();
  v16 = v15;
  v17 = v14 == a1 && v15 == a2;
  if (v17 || (v18 = v14, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) || (v18 == 95 ? (v19 = v16 == 0xE100000000000000) : (v19 = 0), v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {

    v12(v9, v11, v24[0]);
    if (qword_1000E6100 != -1)
    {
      swift_once();
    }

    v20 = qword_1000E6A50;
    static Locale.current.getter();
    v18 = String.init(localized:table:bundle:locale:comment:)();
    v22 = v21;
    if ((v18 != a1 || v21 != a2) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v18 != 95 || v22 != 0xE100000000000000))
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  (*(v6 + 8))(v11, v24[0]);
  return v18;
}

uint64_t variable initialization expression of SetTemperaturesView._currentPreset@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ThermostatPreset();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t property wrapper backing initializer of SetTemperaturesView.viewModel(uint64_t a1)
{
  type metadata accessor for SetTemperaturesView.ViewModel(0);
  State.init(wrappedValue:)();
  return v2;
}

uint64_t property wrapper backing initializer of SetTemperaturesView.currentPreset(uint64_t a1)
{
  v3 = sub_1000694A0(&qword_1000E61A8, &qword_100092E60);
  __chkstk_darwin(v3);
  sub_100073FA4(a1, &v6 - v4, &qword_1000E61A8, &qword_100092E60);
  State.init(wrappedValue:)();
  return sub_10007400C(a1, &qword_1000E61A8, &qword_100092E60);
}

uint64_t sub_1000694A0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000694E8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a1;
  v23 = a2;
  v4 = type metadata accessor for StaticThermostatClusterGroup();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000694A0(&qword_1000E61A8, &qword_100092E60);
  v9 = __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v21 - v12;
  LOBYTE(v24) = 0;
  State.init(wrappedValue:)();
  v14 = v26;
  *(a3 + 16) = v25;
  *(a3 + 24) = v14;
  type metadata accessor for SetTemperaturesView(0);
  v15 = type metadata accessor for ThermostatPreset();
  (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  sub_100073FA4(v13, v11, &qword_1000E61A8, &qword_100092E60);
  State.init(wrappedValue:)();
  sub_10007400C(v13, &qword_1000E61A8, &qword_100092E60);
  v16 = v22;
  (*(v5 + 16))(v7, v22, v4);
  type metadata accessor for SetTemperaturesView.ViewModel(0);
  swift_allocObject();
  v17 = v23;
  v18 = sub_1000727FC(v17, v7);

  v24 = v18;
  State.init(wrappedValue:)();

  result = (*(v5 + 8))(v16, v4);
  v20 = v26;
  *a3 = v25;
  *(a3 + 8) = v20;
  return result;
}

uint64_t SetTemperaturesView.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = sub_1000694A0(&qword_1000E61B0, &qword_100092E68);
  return sub_1000697C0(v1, a1 + *(v3 + 44));
}

uint64_t sub_1000697C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a1;
  v63 = a2;
  v3 = type metadata accessor for SetTemperaturesView(0);
  v62 = *(v3 - 8);
  v61 = *(v62 + 64);
  __chkstk_darwin(v3 - 8);
  v60 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for InsetGroupedListStyle();
  v6 = *(v5 - 8);
  v57 = v5;
  v58 = v6;
  __chkstk_darwin(v5);
  v48 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000694A0(&qword_1000E6490, &qword_100093020);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v46 - v10;
  v12 = sub_1000694A0(&qword_1000E6498, &qword_100093028);
  v50 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v46 - v13;
  v15 = sub_1000694A0(&qword_1000E64A0, &qword_100093030);
  v52 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v46 - v16;
  v18 = sub_1000694A0(&qword_1000E64A8, &qword_100093038);
  v19 = *(v18 - 8);
  v53 = v18;
  v54 = v19;
  __chkstk_darwin(v18);
  v21 = &v46 - v20;
  v22 = sub_1000694A0(&qword_1000E64B0, &qword_100093040);
  v23 = *(v22 - 8);
  v55 = v22;
  v56 = v23;
  __chkstk_darwin(v22);
  v47 = &v46 - v24;
  v59 = sub_1000694A0(&qword_1000E64B8, &qword_100093048);
  __chkstk_darwin(v59);
  v49 = &v46 - v25;
  v64 = a1;
  sub_1000694A0(&qword_1000E64C0, &qword_100093050);
  sub_100072D20();
  List<>.init(content:)();
  v26 = sub_100073C6C(&qword_1000E6538, &qword_1000E6490, &qword_100093020, &protocol conformance descriptor for List<A, B>);
  View.scrollContentBackground(_:)();
  (*(v9 + 8))(v11, v8);
  v27 = v48;
  InsetGroupedListStyle.init()();
  v65 = v8;
  v66 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = v57;
  View.listStyle<A>(_:)();
  (*(v58 + 8))(v27, v29);
  (*(v50 + 8))(v14, v12);
  v65 = v12;
  v66 = v29;
  v67 = OpaqueTypeConformance2;
  v68 = &protocol witness table for InsetGroupedListStyle;
  v30 = swift_getOpaqueTypeConformance2();
  View.listHasStackBehavior()();
  (*(v52 + 8))(v17, v15);
  static Edge.Set.all.getter();
  v65 = v15;
  v66 = v30;
  v31 = swift_getOpaqueTypeConformance2();
  v32 = v47;
  v33 = v53;
  View.listPadding(_:_:)();
  (*(v54 + 8))(v21, v33);
  v65 = v33;
  v66 = v31;
  swift_getOpaqueTypeConformance2();
  v34 = v49;
  v35 = v55;
  View.accessibilityIdentifier(_:)();
  (*(v56 + 8))(v32, v35);
  v36 = v51;
  v37 = v60;
  sub_10007304C(v51, v60);
  type metadata accessor for MainActor();
  v38 = static MainActor.shared.getter();
  v39 = *(v62 + 80);
  v40 = (v39 + 32) & ~v39;
  v41 = swift_allocObject();
  *(v41 + 16) = v38;
  *(v41 + 24) = &protocol witness table for MainActor;
  sub_1000730B4(v37, v41 + v40);
  sub_10007304C(v36, v37);
  v42 = static MainActor.shared.getter();
  v43 = swift_allocObject();
  *(v43 + 16) = v42;
  *(v43 + 24) = &protocol witness table for MainActor;
  sub_1000730B4(v37, v43 + v40);
  Binding.init(get:set:)();
  sub_10007304C(v36, v37);
  v44 = swift_allocObject();
  sub_1000730B4(v37, v44 + ((v39 + 16) & ~v39));
  sub_1000694A0(&qword_1000E6540, &qword_100093088);
  sub_1000733D8();
  sub_1000735E0();
  View.sheet<A>(isPresented:onDismiss:content:)();

  return sub_100073694(v34);
}

uint64_t sub_10006A030@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SetTemperaturesView(0);
  v22 = *(v4 - 8);
  v5 = *(v22 + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_1000694A0(&qword_1000E64D8, &qword_100093058);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - v8;
  v10 = a1[1];
  v23 = *a1;
  v24 = v10;
  sub_1000694A0(&qword_1000E6570, &qword_1000930A0);
  State.wrappedValue.getter();
  v11 = v25;
  swift_getKeyPath();
  v23 = v11;
  sub_1000726B4(&qword_1000E6438, type metadata accessor for SetTemperaturesView.ViewModel, &unk_100092F28);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = OBJC_IVAR____TtCV13HomeUIService19SetTemperaturesView9ViewModel__editablePresetsMap;
  swift_beginAccess();
  if (*(v11 + v12))
  {
    v21 = a2;

    v14 = sub_10006CB8C(v13);

    v25 = v14;

    sub_10006F374(&v25);

    swift_getKeyPath();
    sub_10007304C(a1, &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = (*(v22 + 80) + 16) & ~*(v22 + 80);
    v16 = swift_allocObject();
    sub_1000730B4(&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
    sub_1000694A0(&qword_1000E6590, &unk_1000930F0);
    sub_1000694A0(&qword_1000E64F8, &qword_100093068);
    sub_100073C6C(&qword_1000E6598, &qword_1000E6590, &unk_1000930F0, &protocol conformance descriptor for [A]);
    sub_1000726B4(&qword_1000E65A0, &type metadata accessor for ThermostatPreset, &protocol conformance descriptor for ThermostatPreset);
    sub_100072EE0();
    ForEach<>.init(_:id:content:)();
    v17 = [objc_opt_self() tertiarySystemGroupedBackgroundColor];
    v25 = Color.init(uiColor:)();
    *&v9[*(v6 + 36)] = AnyView.init<A>(_:)();
    a2 = v21;
    sub_100073CB4(v9, v21, &qword_1000E64D8, &qword_100093058);
    v18 = 0;
  }

  else
  {

    v18 = 1;
  }

  return (*(v7 + 56))(a2, v18, 1, v6);
}

void Array<A>.sorted.getter(uint64_t a1)
{
  v1 = a1;

  sub_10006F374(&v1);
}

uint64_t sub_10006A4A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a1;
  v29 = a3;
  v30 = sub_1000694A0(&qword_1000E6508, &qword_100093070);
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v26[0] = v26 - v4;
  v5 = type metadata accessor for StaticThermostatClusterGroup();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000694A0(&qword_1000E6568, &qword_100093098);
  __chkstk_darwin(v9 - 8);
  v11 = v26 - v10;
  v12 = type metadata accessor for ThermostatPresetType();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a2;
  v17 = a2[1];
  v26[1] = a2;
  v31 = v16;
  v32 = v17;
  sub_1000694A0(&qword_1000E6570, &qword_1000930A0);
  State.wrappedValue.getter();
  v18 = v33;
  swift_getKeyPath();
  v31 = v18;
  sub_1000726B4(&qword_1000E6438, type metadata accessor for SetTemperaturesView.ViewModel, &unk_100092F28);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
  v19 = v27;

  v20 = OBJC_IVAR____TtCV13HomeUIService19SetTemperaturesView9ViewModel__thermostatCluster;
  swift_beginAccess();
  (*(v6 + 16))(v8, v18 + v20, v5);

  StaticThermostatClusterGroup.presetType(for:)();
  (*(v6 + 8))(v8, v5);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10007400C(v11, &qword_1000E6568, &qword_100093098);
    v21 = 1;
    v22 = v29;
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    v23 = v26[0];
    sub_10006A8A0(v19, v15, v26[0]);
    (*(v13 + 8))(v15, v12);
    v24 = v29;
    sub_100073CB4(v23, v29, &qword_1000E6508, &qword_100093070);
    v21 = 0;
    v22 = v24;
  }

  return (*(v28 + 56))(v22, v21, 1, v30);
}

uint64_t sub_10006A8A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v26 = a2;
  v29 = a3;
  v6 = type metadata accessor for ThermostatPreset();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = type metadata accessor for SetTemperaturesView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000694A0(&qword_1000E6518, &qword_100093078);
  v14 = *(v13 - 8);
  v27 = v13;
  v28 = v14;
  __chkstk_darwin(v13);
  v25 = &v24 - v15;
  sub_10007304C(v3, v12);
  v16 = a1;
  (*(v7 + 16))(&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v17 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v18 = (v11 + *(v7 + 80) + v17) & ~*(v7 + 80);
  v19 = swift_allocObject();
  sub_1000730B4(v12, v19 + v17);
  (*(v7 + 32))(v19 + v18, &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v30 = v4;
  v31 = v16;
  v32 = v26;
  type metadata accessor for ThermostatAutomationSettingsView.PresetNavigationLabelView();
  sub_1000726B4(&qword_1000E65A8, &type metadata accessor for ThermostatAutomationSettingsView.PresetNavigationLabelView, &protocol conformance descriptor for ThermostatAutomationSettingsView.PresetNavigationLabelView);
  v20 = v25;
  Button.init(action:label:)();
  v33 = 0;
  v34 = 0xE000000000000000;
  _StringGuts.grow(_:)(37);

  v33 = 0xD000000000000023;
  v34 = 0x80000001000B11A0;
  v21._countAndFlagsBits = ThermostatPreset.shortPresetLabel.getter();
  String.append(_:)(v21);

  sub_100073C6C(&qword_1000E6510, &qword_1000E6518, &qword_100093078, &protocol conformance descriptor for Button<A>);
  v22 = v27;
  View.accessibilityIdentifier(_:)();

  return (*(v28 + 8))(v20, v22);
}

uint64_t sub_10006AC48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SetTemperaturesView(0);
  v57 = *(v4 - 8);
  __chkstk_darwin(v4);
  v58 = v5;
  v59 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for ThermostatAutomationSettingsContext();
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v56 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000694A0(&qword_1000E6560, &qword_100093090);
  __chkstk_darwin(v7 - 8);
  v54 = v46 - v8;
  v9 = type metadata accessor for ThermostatPresetsDetailView();
  v66 = *(v9 - 8);
  __chkstk_darwin(v9);
  v52 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for StaticThermostatClusterGroup();
  v11 = *(v61 - 8);
  __chkstk_darwin(v61);
  v65 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000694A0(&qword_1000E6568, &qword_100093098);
  __chkstk_darwin(v13 - 8);
  v15 = v46 - v14;
  v67 = type metadata accessor for ThermostatPresetType();
  v64 = *(v67 - 8);
  v16 = __chkstk_darwin(v67);
  v51 = v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v62 = v46 - v18;
  v19 = sub_1000694A0(&qword_1000E61A8, &qword_100092E60);
  __chkstk_darwin(v19 - 8);
  v21 = v46 - v20;
  v22 = type metadata accessor for ThermostatPreset();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v60 = v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = v46 - v26;
  sub_1000694A0(&qword_1000E61B8, &qword_100092EC8);
  v63 = a1;
  State.wrappedValue.getter();
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_10007400C(v21, &qword_1000E61A8, &qword_100092E60);
    v28 = 1;
    v29 = v66;
  }

  else
  {
    v49 = v9;
    v50 = a2;
    (*(v23 + 32))(v27, v21, v22);
    v30 = v63[1];
    v48 = *v63;
    v71 = v48;
    v72 = v30;
    v47 = v30;
    v46[2] = sub_1000694A0(&qword_1000E6570, &qword_1000930A0);
    State.wrappedValue.getter();
    v31 = v68;
    swift_getKeyPath();
    v71 = v31;
    v46[1] = sub_1000726B4(&qword_1000E6438, type metadata accessor for SetTemperaturesView.ViewModel, &unk_100092F28);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v32 = OBJC_IVAR____TtCV13HomeUIService19SetTemperaturesView9ViewModel__thermostatCluster;
    swift_beginAccess();
    v33 = *(v11 + 16);
    v34 = v31 + v32;
    v35 = v65;
    v36 = v61;
    v33(v65, v34, v61);

    StaticThermostatClusterGroup.presetType(for:)();
    (*(v11 + 8))(v35, v36);
    if ((*(v64 + 48))(v15, 1, v67) == 1)
    {
      (*(v23 + 8))(v27, v22);
      sub_10007400C(v15, &qword_1000E6568, &qword_100093098);
      v28 = 1;
      a2 = v50;
      v9 = v49;
      v29 = v66;
    }

    else
    {
      v37 = v64;
      (*(v64 + 32))(v62, v15, v67);
      v68 = v48;
      v69 = v47;
      State.wrappedValue.getter();
      v38 = v70;
      swift_getKeyPath();
      v68 = v38;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v39 = OBJC_IVAR____TtCV13HomeUIService19SetTemperaturesView9ViewModel__thermostatCluster;
      swift_beginAccess();
      v33(v65, v38 + v39, v36);

      (*(v23 + 16))(v60, v27, v22);
      (*(v37 + 16))(v51, v62, v67);
      v40 = type metadata accessor for LocationDevice();
      (*(*(v40 - 8) + 56))(v54, 1, 1, v40);
      (*(v53 + 104))(v56, enum case for ThermostatAutomationSettingsContext.onboarding(_:), v55);
      v41 = v59;
      sub_10007304C(v63, v59);
      v42 = (*(v57 + 80) + 16) & ~*(v57 + 80);
      v43 = swift_allocObject();
      sub_1000730B4(v41, v43 + v42);
      v44 = v52;
      ThermostatPresetsDetailView.init(thermostatCluster:preset:presetType:locationDevice:context:updatePresetBlock:)();
      (*(v64 + 8))(v62, v67);
      (*(v23 + 8))(v27, v22);
      v29 = v66;
      a2 = v50;
      v9 = v49;
      (*(v66 + 32))(v50, v44, v49);
      v28 = 0;
    }
  }

  return (*(v29 + 56))(a2, v28, 1, v9);
}

uint64_t sub_10006B584(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for ThermostatPreset();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_1000694A0(&qword_1000E6578, &qword_1000930A8);
  __chkstk_darwin(v7 - 8);
  v9 = v16 - v8;
  v10 = a2[1];
  v16[2] = *a2;
  v16[3] = v10;
  sub_1000694A0(&qword_1000E6570, &qword_1000930A0);
  State.wrappedValue.getter();
  v11 = v16[1];
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  (*(v5 + 16))(v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  (*(v5 + 32))(v14 + v13, v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  *(v14 + ((v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v11;
  sub_1000755A4(0, 0, v9, &unk_1000930B8, v14);

  return 0;
}

uint64_t sub_10006B79C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000694A0(&qword_1000E61A8, &qword_100092E60);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v15[-v8];
  v10 = type metadata accessor for ThermostatPreset();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a2, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  type metadata accessor for SetTemperaturesView(0);
  sub_100073FA4(v9, v7, &qword_1000E61A8, &qword_100092E60);
  sub_1000694A0(&qword_1000E61B8, &qword_100092EC8);
  State.wrappedValue.setter();
  sub_10007400C(v9, &qword_1000E61A8, &qword_100092E60);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v17 = v12;
  v18 = v13;

  sub_1000694A0(&qword_1000E6588, &unk_1000930C8);
  State.wrappedValue.getter();
  v15[8] = v12;
  v16 = v13;
  v15[7] = (v19 & 1) == 0;
  State.wrappedValue.setter();
}

uint64_t sub_10006B994@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a3;
  v23 = a2;
  v27 = a4;
  v26 = type metadata accessor for ThermostatAutomationSettingsContext();
  v24 = *(v26 - 8);
  __chkstk_darwin(v26);
  v22 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ThermostatPresetType();
  v6 = *(v21 - 8);
  __chkstk_darwin(v21);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ThermostatPreset();
  v9 = *(v20 - 8);
  __chkstk_darwin(v20);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StaticThermostatClusterGroup();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[1];
  v28 = *a1;
  v29 = v16;
  sub_1000694A0(&qword_1000E6570, &qword_1000930A0);
  State.wrappedValue.getter();
  v17 = v30;
  swift_getKeyPath();
  v28 = v17;
  sub_1000726B4(&qword_1000E6438, type metadata accessor for SetTemperaturesView.ViewModel, &unk_100092F28);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v18 = OBJC_IVAR____TtCV13HomeUIService19SetTemperaturesView9ViewModel__thermostatCluster;
  swift_beginAccess();
  (*(v13 + 16))(v15, v17 + v18, v12);

  (*(v9 + 16))(v11, v23, v20);
  (*(v6 + 16))(v8, v25, v21);
  (*(v24 + 104))(v22, enum case for ThermostatAutomationSettingsContext.onboarding(_:), v26);
  return ThermostatAutomationSettingsView.PresetNavigationLabelView.init(thermostatCluster:preset:presetType:context:)();
}

id sub_10006BD44()
{
  swift_getKeyPath();
  sub_1000726B4(&qword_1000E6438, type metadata accessor for SetTemperaturesView.ViewModel, &unk_100092F28);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 16);

  return v1;
}

id sub_10006BDF4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000726B4(&qword_1000E6438, type metadata accessor for SetTemperaturesView.ViewModel, &unk_100092F28);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

void sub_10006BEAC(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  sub_100072778();
  v5 = v4;
  v6 = static NSObject.== infix(_:_:)();

  if (v6)
  {
    v7 = *(v2 + 16);
    *(v2 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000726B4(&qword_1000E6438, type metadata accessor for SetTemperaturesView.ViewModel, &unk_100092F28);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10006C008@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_1000726B4(&qword_1000E6438, type metadata accessor for SetTemperaturesView.ViewModel, &unk_100092F28);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtCV13HomeUIService19SetTemperaturesView9ViewModel__thermostatCluster;
  swift_beginAccess();
  v4 = type metadata accessor for StaticThermostatClusterGroup();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_10006C100@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000726B4(&qword_1000E6438, type metadata accessor for SetTemperaturesView.ViewModel, &unk_100092F28);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtCV13HomeUIService19SetTemperaturesView9ViewModel__thermostatCluster;
  swift_beginAccess();
  v5 = type metadata accessor for StaticThermostatClusterGroup();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_10006C1F8(uint64_t a1)
{
  v2 = type metadata accessor for StaticThermostatClusterGroup();
  __chkstk_darwin(v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return sub_10006C2C4(v4);
}

uint64_t sub_10006C2C4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for StaticThermostatClusterGroup();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtCV13HomeUIService19SetTemperaturesView9ViewModel__thermostatCluster;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_1000726B4(&qword_1000E6468, &type metadata accessor for StaticThermostatClusterGroup, &protocol conformance descriptor for StaticThermostatClusterGroup);
  v14[0] = a1;
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_1000726B4(&qword_1000E6438, type metadata accessor for SetTemperaturesView.ViewModel, &unk_100092F28);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return (v10)(v14[0], v4);
}

uint64_t sub_10006C564(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCV13HomeUIService19SetTemperaturesView9ViewModel__thermostatCluster;
  swift_beginAccess();
  v5 = type metadata accessor for StaticThermostatClusterGroup();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_10006C664()
{
  swift_getKeyPath();
  sub_1000726B4(&qword_1000E6438, type metadata accessor for SetTemperaturesView.ViewModel, &unk_100092F28);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t sub_10006C724@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000726B4(&qword_1000E6438, type metadata accessor for SetTemperaturesView.ViewModel, &unk_100092F28);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtCV13HomeUIService19SetTemperaturesView9ViewModel__editablePresetsMap;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_10006C7EC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV13HomeUIService19SetTemperaturesView9ViewModel__editablePresetsMap;
  swift_beginAccess();
  if (*(v1 + v3))
  {
    if (a1)
    {

      v5 = sub_10006E474(v4, a1);

      if (v5)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000726B4(&qword_1000E6438, type metadata accessor for SetTemperaturesView.ViewModel, &unk_100092F28);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;
}

uint64_t sub_10006C950(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCV13HomeUIService19SetTemperaturesView9ViewModel__editablePresetsMap;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t (*sub_10006C9C0(uint64_t *a1))()
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
  v4[5] = OBJC_IVAR____TtCV13HomeUIService19SetTemperaturesView9ViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1000726B4(&qword_1000E6438, type metadata accessor for SetTemperaturesView.ViewModel, &unk_100092F28);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = sub_10006C600(v4);
  return sub_10006CAF8;
}

void sub_10006CAF8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

void *sub_10006CB8C(uint64_t a1)
{
  v53 = sub_1000694A0(&qword_1000E6448, &qword_100092FC8);
  v3 = __chkstk_darwin(v53);
  v52 = (&v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __chkstk_darwin(v3);
  v51 = (&v41 - v6);
  __chkstk_darwin(v5);
  v50 = &v41 - v7;
  v59 = type metadata accessor for ThermostatPreset();
  v8 = *(v59 - 8);
  __chkstk_darwin(v59);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  result = &_swiftEmptyArrayStorage;
  if (v11)
  {
    v41 = v1;
    v62 = &_swiftEmptyArrayStorage;
    sub_1000712F0(0, v11, 0);
    v60 = v62;
    v13 = a1 + 64;
    result = _HashTable.startBucket.getter();
    v14 = result;
    v15 = 0;
    v61 = *(a1 + 36);
    v47 = v8 + 32;
    v48 = v8 + 16;
    v42 = a1 + 72;
    v49 = v10;
    v43 = v11;
    v44 = a1 + 64;
    v45 = v8;
    v46 = a1;
    while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
    {
      if ((*(v13 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
      {
        goto LABEL_23;
      }

      if (v61 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v55 = 1 << v14;
      v56 = v14 >> 6;
      v54 = v15;
      v17 = v53;
      v18 = *(v53 + 48);
      v19 = *(a1 + 56);
      v57 = *(*(a1 + 48) + 16 * v14);
      v20 = v59;
      v21 = v50;
      *v50 = v57;
      v58 = *(v8 + 72);
      (*(v8 + 16))(&v21[v18], v19 + v58 * v14, v20);
      v22 = v51;
      *v51 = *v21;
      v23 = *(v8 + 32);
      v23(v22 + *(v17 + 48), &v21[v18], v20);
      v24 = v52;
      sub_100073FA4(v22, v52, &qword_1000E6448, &qword_100092FC8);
      v25 = *v24;
      v26 = v24[1];
      sub_10007260C(v57, *(&v57 + 1));
      sub_100072660(v25, v26);
      v27 = v20;
      v28 = v49;
      v23(v49, v24 + *(v17 + 48), v27);
      sub_10007400C(v22, &qword_1000E6448, &qword_100092FC8);
      v29 = v60;
      v62 = v60;
      v31 = v60[2];
      v30 = v60[3];
      if (v31 >= v30 >> 1)
      {
        sub_1000712F0((v30 > 1), v31 + 1, 1);
        v29 = v62;
      }

      v29[2] = v31 + 1;
      v32 = v45;
      v33 = (*(v32 + 80) + 32) & ~*(v32 + 80);
      v60 = v29;
      result = (v23)(v29 + v33 + v31 * v58, v28, v59);
      a1 = v46;
      v16 = 1 << *(v46 + 32);
      if (v14 >= v16)
      {
        goto LABEL_25;
      }

      v13 = v44;
      v34 = *(v44 + 8 * v56);
      if ((v34 & v55) == 0)
      {
        goto LABEL_26;
      }

      if (v61 != *(v46 + 36))
      {
        goto LABEL_27;
      }

      v35 = v34 & (-2 << (v14 & 0x3F));
      if (v35)
      {
        v16 = __clz(__rbit64(v35)) | v14 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v36 = v56 << 6;
        v37 = v56 + 1;
        v38 = (v42 + 8 * v56);
        while (v37 < (v16 + 63) >> 6)
        {
          v40 = *v38++;
          v39 = v40;
          v36 += 64;
          ++v37;
          if (v40)
          {
            result = sub_10007406C(v14, v61, 0);
            v16 = __clz(__rbit64(v39)) + v36;
            goto LABEL_4;
          }
        }

        result = sub_10007406C(v14, v61, 0);
      }

LABEL_4:
      v15 = v54 + 1;
      v14 = v16;
      v8 = v32;
      if (v54 + 1 == v43)
      {
        return v60;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t sub_10006D03C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = sub_1000694A0(&qword_1000E61A8, &qword_100092E60);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for ThermostatPreset();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_10007400C(a1, &qword_1000E61A8, &qword_100092E60);
    sub_1000714E8(a2, a3, v9);
    sub_100072660(a2, a3);
    return sub_10007400C(v9, &qword_1000E61A8, &qword_100092E60);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_100071BD4(v13, a2, a3, isUniquelyReferenced_nonNull_native);
    result = sub_100072660(a2, a3);
    *v3 = v17;
  }

  return result;
}

uint64_t sub_10006D21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  sub_1000694A0(&qword_1000E61A8, &qword_100092E60);
  v5[8] = swift_task_alloc();
  v6 = type metadata accessor for StaticThermostatClusterGroup();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v7 = type metadata accessor for ThermostatPresetScenario();
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();
  v8 = type metadata accessor for ThermostatPreset();
  v5[15] = v8;
  v5[16] = *(v8 - 8);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();

  return _swift_task_switch(sub_10006D3D8, 0, 0);
}

uint64_t sub_10006D3D8()
{
  v37 = v0;
  if (qword_1000E6108 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[6];
  v5 = type metadata accessor for Logger();
  v0[19] = sub_100073BB4(v5, static Logger.thermostatPresetsOnboarding);
  v6 = *(v3 + 16);
  v0[20] = v6;
  v0[21] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v35 = v6;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[18];
  v11 = v0[15];
  v12 = v0[16];
  if (v9)
  {
    v13 = v0[13];
    v14 = v0[14];
    v32 = v0[12];
    v15 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v15 = 136315650;
    *(v15 + 4) = sub_100076CC8(0xD000000000000027, 0x80000001000B1150, &v36);
    v31 = v11;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_100076CC8(0xD000000000000017, 0x80000001000B1180, &v36);
    *(v15 + 22) = 2080;
    ThermostatPreset.presetScenario.getter();
    v16 = ThermostatPresetScenario.label.getter();
    v18 = v17;
    (*(v13 + 8))(v14, v32);
    v19 = *(v12 + 8);
    v19(v10, v31);
    v20 = sub_100076CC8(v16, v18, &v36);

    *(v15 + 24) = v20;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s - %s: [Preset: %s] - Updating preset setpoints", v15, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v19 = *(v12 + 8);
    v19(v10, v11);
  }

  v0[22] = v19;
  v21 = v0[15];
  v22 = v0[16];
  v23 = v0[10];
  v24 = v0[8];
  v25 = v0[9];
  v26 = v0[7];
  v33 = v0[11];
  v34 = v0[6];
  swift_getKeyPath();
  v0[5] = v26;
  sub_1000726B4(&qword_1000E6438, type metadata accessor for SetTemperaturesView.ViewModel, &unk_100092F28);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v27 = OBJC_IVAR____TtCV13HomeUIService19SetTemperaturesView9ViewModel__thermostatCluster;
  swift_beginAccess();
  (*(v23 + 16))(v33, v26 + v27, v25);
  v35(v24, v34, v21);
  (*(v22 + 56))(v24, 0, 1, v21);
  v28 = swift_task_alloc();
  v0[23] = v28;
  *v28 = v0;
  v28[1] = sub_10006D7C8;
  v29 = v0[8];

  return StaticThermostatClusterGroup.updateSetpoints(for:)(v29);
}

uint64_t sub_10006D7C8()
{
  v2 = *v1;
  v3 = *v1;
  v2[24] = v0;

  v4 = v2[11];
  v5 = v2[10];
  v6 = v2[9];
  v7 = v2[8];
  if (v0)
  {
    sub_10007400C(v7, &qword_1000E61A8, &qword_100092E60);
    (*(v5 + 8))(v4, v6);

    return _swift_task_switch(sub_10006DB84, 0, 0);
  }

  else
  {
    sub_10007400C(v7, &qword_1000E61A8, &qword_100092E60);
    (*(v5 + 8))(v4, v6);
    v8 = swift_task_alloc();
    v2[25] = v8;
    *v8 = v3;
    v8[1] = sub_10006D9F4;
    v9 = v2[6];

    return sub_10006DE90(v9);
  }
}

uint64_t sub_10006D9F4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10006DB84()
{
  v22 = v0;
  (*(v0 + 160))(*(v0 + 136), *(v0 + 48), *(v0 + 120));
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 176);
  v5 = *(v0 + 136);
  v6 = *(v0 + 120);
  if (v3)
  {
    v19 = *(v0 + 176);
    v7 = *(v0 + 104);
    v8 = *(v0 + 112);
    v18 = *(v0 + 96);
    v9 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v9 = 136315906;
    *(v9 + 4) = sub_100076CC8(0xD000000000000027, 0x80000001000B1150, &v21);
    v17 = v2;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_100076CC8(0xD000000000000017, 0x80000001000B1180, &v21);
    *(v9 + 22) = 2080;
    ThermostatPreset.presetScenario.getter();
    v10 = ThermostatPresetScenario.label.getter();
    v12 = v11;
    (*(v7 + 8))(v8, v18);
    v19(v5, v6);
    v13 = sub_100076CC8(v10, v12, &v21);

    *(v9 + 24) = v13;
    *(v9 + 32) = 2112;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 34) = v14;
    *v20 = v14;
    _os_log_impl(&_mh_execute_header, v1, v17, "%s - %s: [Preset: %s] - Encountered error: %@, while updating preset setpoints", v9, 0x2Au);
    sub_10007400C(v20, &qword_1000E6580, &qword_1000930C0);

    swift_arrayDestroy();
  }

  else
  {

    v4(v5, v6);
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_10006DE90(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  sub_1000694A0(&qword_1000E61A8, &qword_100092E60);
  v2[9] = swift_task_alloc();
  sub_1000694A0(&qword_1000E6458, &qword_100092FD0);
  v2[10] = swift_task_alloc();
  v3 = type metadata accessor for StaticThermostatClusterGroup();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_10006DFCC, 0, 0);
}

uint64_t sub_10006DFCC()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[8];
  swift_getKeyPath();
  v0[6] = v4;
  sub_1000726B4(&qword_1000E6438, type metadata accessor for SetTemperaturesView.ViewModel, &unk_100092F28);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v4 + 16);
  HMAccessory.thermostatCluster()();

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10007400C(v0[10], &qword_1000E6458, &qword_100092FD0);
  }

  else
  {
    v7 = v0[13];
    v6 = v0[14];
    v8 = v0[11];
    v9 = v0[12];
    (*(v9 + 32))(v6, v0[10], v8);
    (*(v9 + 16))(v7, v6, v8);
    sub_10006C2C4(v7);
    (*(v9 + 8))(v6, v8);
  }

  v10 = ThermostatPreset.presetHandle.getter();
  if (v11 >> 60 != 15)
  {
    v12 = v10;
    v13 = v11;
    v14 = sub_10006C9C0(v0 + 2);
    if (*v15)
    {
      v16 = v0[9];
      v17 = v0[7];
      v18 = type metadata accessor for ThermostatPreset();
      v19 = *(v18 - 8);
      (*(v19 + 16))(v16, v17, v18);
      (*(v19 + 56))(v16, 0, 1, v18);
      sub_10007260C(v12, v13);
      sub_10006D03C(v16, v12, v13);
    }

    (v14)(v0 + 2, 0);
    sub_10007272C(v12, v13);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_10006E2B4()
{
  v1 = OBJC_IVAR____TtCV13HomeUIService19SetTemperaturesView9ViewModel__thermostatCluster;
  v2 = type metadata accessor for StaticThermostatClusterGroup();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtCV13HomeUIService19SetTemperaturesView9ViewModel___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 12);
  v6 = *(*v0 + 26);

  return _swift_deallocClassInstance(v0, v5, v6);
}

void *sub_10006E3B4@<X0>(_BYTE *a2@<X8>)
{
  sub_1000694A0(&qword_1000E6588, &unk_1000930C8);
  result = State.wrappedValue.getter();
  *a2 = v4;
  return result;
}

uint64_t sub_10006E474(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThermostatPreset();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v59 = &v48 - v9;
  v10 = sub_1000694A0(&qword_1000E6440, &qword_100092FC0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = (&v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = __chkstk_darwin(v11);
  v53 = a2;
  v54 = (&v48 - v15);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v53 + 16))
  {
    return 0;
  }

  v16 = 0;
  v50 = a1;
  v17 = *(a1 + 64);
  v49 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v56 = v5 + 16;
  v57 = (v5 + 32);
  v51 = v21;
  v52 = (v5 + 8);
  while (v20)
  {
    v58 = (v20 - 1) & v20;
    v22 = __clz(__rbit64(v20)) | (v16 << 6);
LABEL_16:
    v28 = (*(v50 + 48) + 16 * v22);
    v29 = *v28;
    v30 = v28[1];
    v31 = v59;
    (*(v5 + 16))(v59, *(v50 + 56) + *(v5 + 72) * v22, v4);
    v32 = sub_1000694A0(&qword_1000E6448, &qword_100092FC8);
    v33 = *(v32 + 48);
    *v13 = v29;
    v13[1] = v30;
    (*(v5 + 32))(v13 + v33, v31, v4);
    (*(*(v32 - 8) + 56))(v13, 0, 1, v32);
    sub_10007260C(v29, v30);
    v25 = v54;
LABEL_17:
    sub_100073CB4(v13, v25, &qword_1000E6440, &qword_100092FC0);
    v34 = sub_1000694A0(&qword_1000E6448, &qword_100092FC8);
    v35 = (*(*(v34 - 8) + 48))(v25, 1, v34);
    v55 = v35 == 1;
    if (v35 == 1)
    {
      return v55;
    }

    v36 = v13;
    v37 = *(v34 + 48);
    v39 = *v25;
    v38 = v25[1];
    (*v57)(v8, v25 + v37, v4);
    v40 = v53;
    v41 = sub_10006E994(v39, v38);
    v43 = v42;
    sub_100072660(v39, v38);
    if ((v43 & 1) == 0)
    {
      (*v52)(v8, v4);
      return 0;
    }

    v44 = v59;
    (*(v5 + 16))(v59, *(v40 + 56) + *(v5 + 72) * v41, v4);
    sub_1000726B4(&qword_1000E6450, &type metadata accessor for ThermostatPreset, &protocol conformance descriptor for ThermostatPreset);
    v45 = dispatch thunk of static Equatable.== infix(_:_:)();
    v46 = *(v5 + 8);
    v46(v44, v4);
    result = (v46)(v8, v4);
    v13 = v36;
    v21 = v51;
    v20 = v58;
    if ((v45 & 1) == 0)
    {
      return v55;
    }
  }

  if (v21 <= v16 + 1)
  {
    v23 = v16 + 1;
  }

  else
  {
    v23 = v21;
  }

  v24 = v23 - 1;
  v25 = v54;
  while (1)
  {
    v26 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v26 >= v21)
    {
      v47 = sub_1000694A0(&qword_1000E6448, &qword_100092FC8);
      (*(*(v47 - 8) + 56))(v13, 1, 1, v47);
      v58 = 0;
      v16 = v24;
      goto LABEL_17;
    }

    v27 = *(v49 + 8 * v26);
    ++v16;
    if (v27)
    {
      v58 = (v27 - 1) & v27;
      v22 = __clz(__rbit64(v27)) | (v26 << 6);
      v16 = v26;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10006E994(uint64_t a1, unint64_t a2)
{
  Hasher.init(_seed:)();
  Data.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10006EA0C(a1, a2, v4);
}

uint64_t sub_10006EA0C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if (((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return v6;
  }

  v7 = v3;
  v10 = ~v5;
  v11 = a2 >> 62;
  if (a1)
  {
    v12 = 0;
  }

  else
  {
    v12 = a2 == 0xC000000000000000;
  }

  v13 = !v12;
  v74 = v13;
  v14 = __OFSUB__(HIDWORD(a1), a1);
  v71 = v14;
  __n = BYTE6(a2);
  v69 = a1;
  v70 = HIDWORD(a1) - a1;
  v65 = (a1 >> 32) - a1;
  v66 = a1 >> 32;
  v72 = v10;
  v73 = v3 + 64;
  while (1)
  {
    v15 = (*(v7 + 48) + 16 * v6);
    v17 = *v15;
    v16 = v15[1];
    v18 = v16 >> 62;
    if (v16 >> 62 == 3)
    {
      if (v17)
      {
        v19 = 0;
      }

      else
      {
        v19 = v16 == 0xC000000000000000;
      }

      v21 = !v19 || v11 < 3;
      if (((v21 | v74) & 1) == 0)
      {
        return v6;
      }

LABEL_36:
      v22 = 0;
      if (v11 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v18 > 1)
    {
      if (v18 != 2)
      {
        goto LABEL_36;
      }

      v24 = *(v17 + 16);
      v23 = *(v17 + 24);
      v25 = __OFSUB__(v23, v24);
      v22 = v23 - v24;
      if (v25)
      {
        goto LABEL_142;
      }

      if (v11 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v18)
    {
      LODWORD(v22) = HIDWORD(v17) - v17;
      if (__OFSUB__(HIDWORD(v17), v17))
      {
        goto LABEL_141;
      }

      v22 = v22;
      if (v11 <= 1)
      {
LABEL_33:
        v26 = __n;
        if (v11)
        {
          v26 = v70;
          if (v71)
          {
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v22 = BYTE6(v16);
      if (v11 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v11 != 2)
    {
      if (!v22)
      {
        return v6;
      }

      goto LABEL_13;
    }

    v28 = *(a1 + 16);
    v27 = *(a1 + 24);
    v25 = __OFSUB__(v27, v28);
    v26 = v27 - v28;
    if (v25)
    {
      goto LABEL_140;
    }

LABEL_39:
    if (v22 != v26)
    {
      goto LABEL_13;
    }

    if (v22 < 1)
    {
      return v6;
    }

    if (v18 > 1)
    {
      break;
    }

    if (v18)
    {
      if (v17 > v17 >> 32)
      {
        goto LABEL_143;
      }

      sub_10007260C(v17, v16);
      v35 = __DataStorage._bytes.getter();
      if (v35)
      {
        v40 = __DataStorage._offset.getter();
        if (__OFSUB__(v17, v40))
        {
          goto LABEL_145;
        }

        v35 += v17 - v40;
      }

      __DataStorage._length.getter();
      if (v11 == 2)
      {
        v59 = *(a1 + 16);
        v64 = *(a1 + 24);
        v37 = __DataStorage._bytes.getter();
        if (v37)
        {
          v60 = __DataStorage._offset.getter();
          if (__OFSUB__(v59, v60))
          {
            goto LABEL_160;
          }

          v37 += v59 - v60;
        }

        v25 = __OFSUB__(v64, v59);
        v61 = v64 - v59;
        if (v25)
        {
          goto LABEL_155;
        }

        result = __DataStorage._length.getter();
        if (result >= v61)
        {
          v39 = v61;
        }

        else
        {
          v39 = result;
        }

        if (!v35)
        {
          goto LABEL_175;
        }

        if (!v37)
        {
          goto LABEL_174;
        }

        goto LABEL_130;
      }

      if (v11 == 1)
      {
        if (v66 < v69)
        {
          goto LABEL_154;
        }

        v37 = __DataStorage._bytes.getter();
        if (v37)
        {
          v41 = __DataStorage._offset.getter();
          if (__OFSUB__(v69, v41))
          {
            goto LABEL_161;
          }

          v37 += v69 - v41;
        }

        result = __DataStorage._length.getter();
        v39 = v65;
        if (result < v65)
        {
          v39 = result;
        }

        if (!v35)
        {
          goto LABEL_177;
        }

        if (!v37)
        {
          goto LABEL_176;
        }

        goto LABEL_130;
      }

      LOWORD(__s1[0]) = a1;
      BYTE2(__s1[0]) = BYTE2(a1);
      BYTE3(__s1[0]) = BYTE3(a1);
      BYTE4(__s1[0]) = v67;
      BYTE5(__s1[0]) = BYTE5(a1);
      BYTE6(__s1[0]) = BYTE6(a1);
      HIBYTE(__s1[0]) = HIBYTE(a1);
      LOWORD(__s1[1]) = a2;
      BYTE2(__s1[1]) = BYTE2(a2);
      BYTE3(__s1[1]) = BYTE3(a2);
      BYTE4(__s1[1]) = BYTE4(a2);
      BYTE5(__s1[1]) = BYTE5(a2);
      if (!v35)
      {
        goto LABEL_166;
      }

      goto LABEL_133;
    }

    __s1[0] = v17;
    LOWORD(__s1[1]) = v16;
    BYTE2(__s1[1]) = BYTE2(v16);
    BYTE3(__s1[1]) = BYTE3(v16);
    BYTE4(__s1[1]) = BYTE4(v16);
    BYTE5(__s1[1]) = BYTE5(v16);
    if (!v11)
    {
      goto LABEL_91;
    }

    if (v11 != 1)
    {
      v48 = *(a1 + 16);
      v47 = *(a1 + 24);
      sub_10007260C(v17, v16);
      v32 = __DataStorage._bytes.getter();
      if (v32)
      {
        v49 = __DataStorage._offset.getter();
        if (__OFSUB__(v48, v49))
        {
          goto LABEL_157;
        }

        v32 += v48 - v49;
      }

      v25 = __OFSUB__(v47, v48);
      v45 = v47 - v48;
      if (v25)
      {
        goto LABEL_149;
      }

      v46 = __DataStorage._length.getter();
      v7 = v68;
      if (!v32)
      {
        goto LABEL_164;
      }

      goto LABEL_98;
    }

    if (v66 < v69)
    {
      goto LABEL_146;
    }

    sub_10007260C(v17, v16);
    v29 = __DataStorage._bytes.getter();
    if (!v29)
    {
      goto LABEL_167;
    }

    v30 = v29;
    v31 = __DataStorage._offset.getter();
    if (__OFSUB__(v69, v31))
    {
      goto LABEL_152;
    }

    v32 = v69 - v31 + v30;
    result = __DataStorage._length.getter();
    if (!v32)
    {
      goto LABEL_168;
    }

LABEL_105:
    if (result >= v65)
    {
      v50 = v65;
    }

    else
    {
      v50 = result;
    }

LABEL_108:
    v54 = __s1;
    v55 = v32;
LABEL_134:
    v62 = memcmp(v54, v55, v50);
    sub_100072660(v17, v16);
LABEL_135:
    v10 = v72;
    v4 = v73;
    if (!v62)
    {
      return v6;
    }

LABEL_13:
    v6 = (v6 + 1) & v10;
    if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return v6;
    }
  }

  if (v18 == 2)
  {
    v34 = *(v17 + 16);
    sub_10007260C(v17, v16);
    v35 = __DataStorage._bytes.getter();
    if (v35)
    {
      v36 = __DataStorage._offset.getter();
      if (__OFSUB__(v34, v36))
      {
        goto LABEL_144;
      }

      v35 += v34 - v36;
    }

    result = __DataStorage._length.getter();
    if (v11 == 2)
    {
      v56 = *(a1 + 16);
      v63 = *(a1 + 24);
      v37 = __DataStorage._bytes.getter();
      if (v37)
      {
        v57 = __DataStorage._offset.getter();
        if (__OFSUB__(v56, v57))
        {
          goto LABEL_158;
        }

        v37 += v56 - v57;
      }

      v25 = __OFSUB__(v63, v56);
      v58 = v63 - v56;
      if (v25)
      {
        goto LABEL_153;
      }

      result = __DataStorage._length.getter();
      if (result >= v58)
      {
        v39 = v58;
      }

      else
      {
        v39 = result;
      }

      if (!v35)
      {
        goto LABEL_173;
      }

      if (!v37)
      {
        goto LABEL_172;
      }

      goto LABEL_130;
    }

    if (v11 == 1)
    {
      if (v66 < v69)
      {
        goto LABEL_148;
      }

      v37 = __DataStorage._bytes.getter();
      if (v37)
      {
        v38 = __DataStorage._offset.getter();
        if (__OFSUB__(v69, v38))
        {
          goto LABEL_159;
        }

        v37 += v69 - v38;
      }

      result = __DataStorage._length.getter();
      v39 = v65;
      if (result < v65)
      {
        v39 = result;
      }

      if (!v35)
      {
        goto LABEL_171;
      }

      if (!v37)
      {
        goto LABEL_170;
      }

LABEL_130:
      if (v35 == v37)
      {
        sub_100072660(v17, v16);
        return v6;
      }

      v62 = memcmp(v35, v37, v39);
      sub_100072660(v17, v16);
      v7 = v68;
      goto LABEL_135;
    }

    LOWORD(__s1[0]) = a1;
    BYTE2(__s1[0]) = BYTE2(a1);
    BYTE3(__s1[0]) = BYTE3(a1);
    BYTE4(__s1[0]) = v67;
    BYTE5(__s1[0]) = BYTE5(a1);
    BYTE6(__s1[0]) = BYTE6(a1);
    HIBYTE(__s1[0]) = HIBYTE(a1);
    LOWORD(__s1[1]) = a2;
    BYTE2(__s1[1]) = BYTE2(a2);
    BYTE3(__s1[1]) = BYTE3(a2);
    BYTE4(__s1[1]) = BYTE4(a2);
    BYTE5(__s1[1]) = BYTE5(a2);
    if (!v35)
    {
      goto LABEL_169;
    }

LABEL_133:
    v55 = __s1;
    v54 = v35;
    v50 = __n;
    goto LABEL_134;
  }

  memset(__s1, 0, 14);
  if (!v11)
  {
LABEL_91:
    __s2 = a1;
    v77 = BYTE2(a1);
    v78 = BYTE3(a1);
    v79 = v67;
    v80 = BYTE5(a1);
    v81 = BYTE6(a1);
    v82 = HIBYTE(a1);
    v83 = a2;
    v84 = BYTE2(a2);
    v85 = BYTE3(a2);
    v86 = BYTE4(a2);
    v87 = BYTE5(a2);
    if (!memcmp(__s1, &__s2, __n))
    {
      return v6;
    }

    goto LABEL_13;
  }

  if (v11 == 2)
  {
    v43 = *(a1 + 16);
    v42 = *(a1 + 24);
    sub_10007260C(v17, v16);
    v32 = __DataStorage._bytes.getter();
    if (v32)
    {
      v44 = __DataStorage._offset.getter();
      if (__OFSUB__(v43, v44))
      {
        goto LABEL_156;
      }

      v32 += v43 - v44;
    }

    v25 = __OFSUB__(v42, v43);
    v45 = v42 - v43;
    if (v25)
    {
      goto LABEL_150;
    }

    v46 = __DataStorage._length.getter();
    v7 = v68;
    if (!v32)
    {
      goto LABEL_165;
    }

LABEL_98:
    if (v46 >= v45)
    {
      v50 = v45;
    }

    else
    {
      v50 = v46;
    }

    goto LABEL_108;
  }

  if (v66 < v69)
  {
    goto LABEL_147;
  }

  sub_10007260C(v17, v16);
  v51 = __DataStorage._bytes.getter();
  if (v51)
  {
    v52 = v51;
    v53 = __DataStorage._offset.getter();
    if (__OFSUB__(v69, v53))
    {
      goto LABEL_151;
    }

    v32 = v69 - v53 + v52;
    result = __DataStorage._length.getter();
    if (!v32)
    {
      goto LABEL_163;
    }

    goto LABEL_105;
  }

  __DataStorage._length.getter();
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  result = __DataStorage._length.getter();
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
  return result;
}

char *sub_10006F270(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000694A0(&qword_1000E6480, &qword_100093010);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

Swift::Int sub_10006F374(uint64_t *a1)
{
  v2 = *(type metadata accessor for ThermostatPreset() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100072084(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_10006F944(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_10006F44C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000694A0(&qword_1000E61B8, &qword_100092EC8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_10006F51C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1000694A0(&qword_1000E61B8, &qword_100092EC8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10006F5EC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10006F624(uint64_t a1)
{
  sub_10006F6C0(319);
  if (v1 <= 0x3F)
  {
    sub_10006F718();
    if (v2 <= 0x3F)
    {
      sub_10006F768(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10006F6C0(uint64_t a1)
{
  if (!qword_1000E6228)
  {
    type metadata accessor for SetTemperaturesView.ViewModel(255);
    v1 = type metadata accessor for State();
    if (!v2)
    {
      atomic_store(v1, &qword_1000E6228);
    }
  }
}

void sub_10006F718()
{
  if (!qword_1000E6230)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_1000E6230);
    }
  }
}

void sub_10006F768(uint64_t a1)
{
  if (!qword_1000E6238)
  {
    sub_10006F7CC(&qword_1000E61A8, &qword_100092E60);
    v1 = type metadata accessor for State();
    if (!v2)
    {
      atomic_store(v1, &qword_1000E6238);
    }
  }
}

uint64_t sub_10006F7CC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10006F81C(uint64_t a1)
{
  result = type metadata accessor for StaticThermostatClusterGroup();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
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

Swift::Int sub_10006F944(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for ThermostatPreset();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for ThermostatPreset() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10006FE24(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_10006FA70(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10006FA70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v61 = type metadata accessor for ThermostatPresetScenario();
  v8 = *(v61 - 8);
  v9 = __chkstk_darwin(v61);
  v60 = &v41[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v59 = &v41[-v11];
  v12 = type metadata accessor for ThermostatPreset();
  v13 = __chkstk_darwin(v12);
  v51 = &v41[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __chkstk_darwin(v13);
  v58 = &v41[-v16];
  result = __chkstk_darwin(v15);
  v57 = &v41[-v19];
  v43 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v22 = *(v18 + 16);
    v21 = v18 + 16;
    v23 = *(v21 + 56);
    v53 = (v8 + 8);
    v54 = v22;
    v52 = (v21 - 8);
    v55 = v12;
    v56 = v21;
    v24 = v20 + v23 * (a3 - 1);
    v48 = -v23;
    v49 = (v21 + 16);
    v25 = a1 - a3;
    v50 = v20;
    v42 = v23;
    v26 = v20 + v23 * a3;
    v27 = v57;
LABEL_5:
    v46 = v24;
    v47 = a3;
    v44 = v26;
    v45 = v25;
    v62 = v25;
    while (1)
    {
      v28 = v54;
      v54(v27, v26, v12);
      v29 = v58;
      v28(v58, v24, v12);
      v30 = v59;
      ThermostatPreset.presetScenario.getter();
      v63 = ThermostatPresetScenario.order.getter();
      v31 = *v53;
      v32 = v30;
      v33 = v61;
      (*v53)(v32, v61);
      v34 = v60;
      ThermostatPreset.presetScenario.getter();
      v35 = ThermostatPresetScenario.order.getter();
      v36 = v33;
      v12 = v55;
      v31(v34, v36);
      v37 = *v52;
      (*v52)(v29, v12);
      result = v37(v27, v12);
      if (v63 >= v35)
      {
LABEL_4:
        a3 = v47 + 1;
        v24 = v46 + v42;
        v25 = v45 - 1;
        v26 = v44 + v42;
        if (v47 + 1 == v43)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v50)
      {
        break;
      }

      v38 = *v49;
      v39 = v51;
      (*v49)(v51, v26, v12);
      swift_arrayInitWithTakeFrontToBack();
      result = v38(v24, v39, v12);
      v24 += v48;
      v26 += v48;
      if (__CFADD__(v62++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10006FE24(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v5 = v4;
  v135 = a1;
  v159 = type metadata accessor for ThermostatPresetScenario();
  v8 = *(v159 - 8);
  v9 = __chkstk_darwin(v159);
  v158 = &v132 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v157 = &v132 - v11;
  v12 = type metadata accessor for ThermostatPreset();
  v145 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v139 = &v132 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v149 = &v132 - v16;
  v17 = __chkstk_darwin(v15);
  v156 = &v132 - v18;
  result = __chkstk_darwin(v17);
  v160 = &v132 - v20;
  v21 = a3[1];
  if (v21 < 1)
  {
    v23 = &_swiftEmptyArrayStorage;
LABEL_95:
    a4 = *v135;
    if (!*v135)
    {
      goto LABEL_134;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_128:
      result = sub_1000711F8(v23);
      v23 = result;
    }

    v128 = v5;
    v163 = v23;
    v129 = *(v23 + 2);
    if (v129 >= 2)
    {
      while (*a3)
      {
        v5 = *&v23[16 * v129];
        v130 = *&v23[16 * v129 + 24];
        sub_100070A78(*a3 + v145[9] * v5, *a3 + v145[9] * *&v23[16 * v129 + 16], *a3 + v145[9] * v130, a4);
        if (v128)
        {
        }

        if (v130 < v5)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_1000711F8(v23);
        }

        if (v129 - 2 >= *(v23 + 2))
        {
          goto LABEL_122;
        }

        v131 = &v23[16 * v129];
        *v131 = v5;
        *(v131 + 1) = v130;
        v163 = v23;
        result = sub_10007116C(v129 - 1);
        v23 = v163;
        v129 = *(v163 + 2);
        if (v129 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v133 = a4;
  v22 = 0;
  v154 = (v8 + 8);
  v155 = v145 + 2;
  v153 = (v145 + 1);
  v151 = (v145 + 4);
  v23 = &_swiftEmptyArrayStorage;
  v137 = a3;
  v152 = v12;
  while (1)
  {
    if (v22 + 1 >= v21)
    {
      v41 = v22 + 1;
    }

    else
    {
      v146 = v21;
      v134 = v5;
      v24 = *a3;
      v25 = v145[9];
      v26 = v22;
      v136 = v22;
      v27 = v24 + v25 * (v22 + 1);
      v28 = v25;
      v148 = v25;
      v29 = v24;
      v162 = v24;
      v30 = v145[2];
      v30();
      v31 = v29 + v28 * v26;
      v32 = v156;
      v142 = v30;
      (v30)(v156, v31, v12);
      v33 = v157;
      ThermostatPreset.presetScenario.getter();
      v147 = ThermostatPresetScenario.order.getter();
      v34 = *v154;
      v35 = v33;
      v36 = v159;
      (*v154)(v35, v159);
      v37 = v158;
      ThermostatPreset.presetScenario.getter();
      v144 = ThermostatPresetScenario.order.getter();
      v141 = v34;
      (v34)(v37, v36);
      v38 = v145[1];
      a4 = v153;
      v38(v32, v12);
      v140 = v38;
      result = (v38)(v160, v12);
      v39 = v136 + 2;
      v40 = v162 + v148 * (v136 + 2);
      v143 = v23;
      while (1)
      {
        v41 = v146;
        if (v146 == v39)
        {
          break;
        }

        LODWORD(v161) = v147 < v144;
        v42 = v160;
        v43 = v142;
        (v142)(v160, v40, v12);
        v44 = v156;
        (v43)(v156, v27, v12);
        v45 = v157;
        ThermostatPreset.presetScenario.getter();
        v150 = ThermostatPresetScenario.order.getter();
        v46 = v45;
        v47 = v159;
        v162 = v27;
        v48 = v141;
        (v141)(v46, v159);
        v49 = v158;
        ThermostatPreset.presetScenario.getter();
        v50 = ThermostatPresetScenario.order.getter();
        v51 = v49;
        v12 = v152;
        v48(v51, v47);
        v52 = v162;
        v53 = v44;
        a4 = v153;
        v54 = v140;
        v140(v53, v12);
        result = v54(v42, v12);
        v23 = v143;
        ++v39;
        v40 += v148;
        v27 = v52 + v148;
        if (((v161 ^ (v150 >= v50)) & 1) == 0)
        {
          v41 = v39 - 1;
          break;
        }
      }

      v5 = v134;
      a3 = v137;
      v22 = v136;
      if (v147 < v144)
      {
        if (v41 < v136)
        {
          goto LABEL_125;
        }

        if (v136 < v41)
        {
          a4 = v148 * (v41 - 1);
          v55 = v41;
          v56 = v41 * v148;
          v146 = v41;
          v57 = v136 * v148;
          do
          {
            if (v22 != --v55)
            {
              v58 = *a3;
              if (!v58)
              {
                goto LABEL_131;
              }

              v59 = *v151;
              (*v151)(v139, v58 + v57, v12);
              if (v57 < a4 || v58 + v57 >= (v58 + v56))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v57 != a4)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v59)(v58 + a4, v139, v12);
              a3 = v137;
            }

            ++v22;
            a4 -= v148;
            v56 -= v148;
            v57 += v148;
          }

          while (v22 < v55);
          v5 = v134;
          v23 = v143;
          v22 = v136;
          v41 = v146;
        }
      }
    }

    v60 = a3[1];
    if (v41 < v60)
    {
      if (__OFSUB__(v41, v22))
      {
        goto LABEL_124;
      }

      if (v41 - v22 < v133)
      {
        if (__OFADD__(v22, v133))
        {
          goto LABEL_126;
        }

        if (v22 + v133 >= v60)
        {
          a4 = a3[1];
        }

        else
        {
          a4 = v22 + v133;
        }

        if (a4 < v22)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v41 != a4)
        {
          break;
        }
      }
    }

    a4 = v41;
    if (v41 < v22)
    {
      goto LABEL_123;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    v140 = a4;
    if ((result & 1) == 0)
    {
      result = sub_10006F270(0, *(v23 + 2) + 1, 1, v23);
      v23 = result;
    }

    a4 = *(v23 + 2);
    v61 = *(v23 + 3);
    v62 = a4 + 1;
    if (a4 >= v61 >> 1)
    {
      result = sub_10006F270((v61 > 1), a4 + 1, 1, v23);
      v23 = result;
    }

    *(v23 + 2) = v62;
    v63 = &v23[16 * a4];
    v64 = v140;
    *(v63 + 4) = v22;
    *(v63 + 5) = v64;
    if (!*v135)
    {
      goto LABEL_133;
    }

    if (a4)
    {
      v65 = *v135;
      while (1)
      {
        v66 = v62 - 1;
        if (v62 >= 4)
        {
          break;
        }

        if (v62 == 3)
        {
          v67 = *(v23 + 4);
          v68 = *(v23 + 5);
          v77 = __OFSUB__(v68, v67);
          v69 = v68 - v67;
          v70 = v77;
LABEL_53:
          if (v70)
          {
            goto LABEL_112;
          }

          v83 = &v23[16 * v62];
          v85 = *v83;
          v84 = *(v83 + 1);
          v86 = __OFSUB__(v84, v85);
          v87 = v84 - v85;
          v88 = v86;
          if (v86)
          {
            goto LABEL_115;
          }

          v89 = &v23[16 * v66 + 32];
          v91 = *v89;
          v90 = *(v89 + 1);
          v77 = __OFSUB__(v90, v91);
          v92 = v90 - v91;
          if (v77)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v87, v92))
          {
            goto LABEL_119;
          }

          if (v87 + v92 >= v69)
          {
            if (v69 < v92)
            {
              v66 = v62 - 2;
            }

            goto LABEL_74;
          }

          goto LABEL_67;
        }

        v93 = &v23[16 * v62];
        v95 = *v93;
        v94 = *(v93 + 1);
        v77 = __OFSUB__(v94, v95);
        v87 = v94 - v95;
        v88 = v77;
LABEL_67:
        if (v88)
        {
          goto LABEL_114;
        }

        v96 = &v23[16 * v66];
        v98 = *(v96 + 4);
        v97 = *(v96 + 5);
        v77 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v77)
        {
          goto LABEL_117;
        }

        if (v99 < v87)
        {
          goto LABEL_3;
        }

LABEL_74:
        a4 = v66 - 1;
        if (v66 - 1 >= v62)
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*a3)
        {
          goto LABEL_130;
        }

        v104 = *&v23[16 * a4 + 32];
        v105 = *&v23[16 * v66 + 40];
        sub_100070A78(*a3 + v145[9] * v104, *a3 + v145[9] * *&v23[16 * v66 + 32], *a3 + v145[9] * v105, v65);
        if (v5)
        {
        }

        if (v105 < v104)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_1000711F8(v23);
        }

        if (a4 >= *(v23 + 2))
        {
          goto LABEL_109;
        }

        v106 = &v23[16 * a4];
        *(v106 + 4) = v104;
        *(v106 + 5) = v105;
        v163 = v23;
        result = sub_10007116C(v66);
        v23 = v163;
        v62 = *(v163 + 2);
        if (v62 <= 1)
        {
          goto LABEL_3;
        }
      }

      v71 = &v23[16 * v62 + 32];
      v72 = *(v71 - 64);
      v73 = *(v71 - 56);
      v77 = __OFSUB__(v73, v72);
      v74 = v73 - v72;
      if (v77)
      {
        goto LABEL_110;
      }

      v76 = *(v71 - 48);
      v75 = *(v71 - 40);
      v77 = __OFSUB__(v75, v76);
      v69 = v75 - v76;
      v70 = v77;
      if (v77)
      {
        goto LABEL_111;
      }

      v78 = &v23[16 * v62];
      v80 = *v78;
      v79 = *(v78 + 1);
      v77 = __OFSUB__(v79, v80);
      v81 = v79 - v80;
      if (v77)
      {
        goto LABEL_113;
      }

      v77 = __OFADD__(v69, v81);
      v82 = v69 + v81;
      if (v77)
      {
        goto LABEL_116;
      }

      if (v82 >= v74)
      {
        v100 = &v23[16 * v66 + 32];
        v102 = *v100;
        v101 = *(v100 + 1);
        v77 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v77)
        {
          goto LABEL_120;
        }

        if (v69 < v103)
        {
          v66 = v62 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_53;
    }

LABEL_3:
    v21 = a3[1];
    v22 = v140;
    if (v140 >= v21)
    {
      goto LABEL_95;
    }
  }

  v143 = v23;
  v134 = v5;
  v107 = *a3;
  v108 = v145[9];
  v150 = v145[2];
  v109 = v107 + v108 * (v41 - 1);
  v147 = -v108;
  v136 = v22;
  v110 = (v22 - v41);
  v148 = v107;
  v138 = v108;
  v111 = (v107 + v41 * v108);
  v140 = a4;
LABEL_86:
  v146 = v41;
  v141 = v111;
  v142 = v110;
  v112 = v110;
  v144 = v109;
  while (1)
  {
    v161 = v112;
    v113 = v160;
    v114 = v150;
    v150(v160, v111, v12);
    v115 = v156;
    v114(v156, v109, v12);
    v116 = v157;
    ThermostatPreset.presetScenario.getter();
    v162 = ThermostatPresetScenario.order.getter();
    v117 = *v154;
    v118 = v116;
    v119 = v159;
    (*v154)(v118, v159);
    v120 = v158;
    ThermostatPreset.presetScenario.getter();
    v121 = ThermostatPresetScenario.order.getter();
    v122 = v119;
    v12 = v152;
    v117(v120, v122);
    v123 = *v153;
    (*v153)(v115, v12);
    result = v123(v113, v12);
    if (v162 >= v121)
    {
LABEL_85:
      v41 = v146 + 1;
      v109 = v144 + v138;
      v110 = (v142 - 1);
      v111 = &v141[v138];
      a4 = v140;
      if ((v146 + 1) != v140)
      {
        goto LABEL_86;
      }

      v5 = v134;
      a3 = v137;
      v23 = v143;
      v22 = v136;
      if (v140 < v136)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    v124 = v161;
    if (!v148)
    {
      break;
    }

    v125 = *v151;
    v126 = v149;
    (*v151)(v149, v111, v12);
    swift_arrayInitWithTakeFrontToBack();
    v125(v109, v126, v12);
    v109 += v147;
    v111 += v147;
    v127 = __CFADD__(v124, 1);
    v112 = (v124 + 1);
    if (v127)
    {
      goto LABEL_85;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_100070A78(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v69 = type metadata accessor for ThermostatPresetScenario();
  v8 = *(v69 - 8);
  v9 = __chkstk_darwin(v69);
  v68 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v67 = &v56 - v11;
  v75 = type metadata accessor for ThermostatPreset();
  v12 = *(v75 - 8);
  v13 = __chkstk_darwin(v75);
  v66 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v13);
  v72 = &v56 - v16;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_61;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_62;
  }

  v20 = (a2 - a1) / v18;
  v78 = a1;
  v77 = a4;
  if (v20 >= v19 / v18)
  {
    v22 = v19 / v18 * v18;
    if (a4 < a2 || a2 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v38 = a4 + v22;
    if (v22 >= 1)
    {
      v39 = -v18;
      v61 = (v8 + 8);
      v62 = (v12 + 16);
      v59 = a4;
      v60 = (v12 + 8);
      v40 = v38;
      v73 = a1;
      v63 = v39;
      while (2)
      {
        while (1)
        {
          v57 = v38;
          v41 = a2;
          v42 = a2 + v39;
          v74 = v42;
          v64 = v41;
          while (1)
          {
            if (v41 <= a1)
            {
              v78 = v41;
              v76 = v57;
              goto LABEL_59;
            }

            v58 = v38;
            v70 = a3;
            v71 = a3 + v39;
            v43 = v40 + v39;
            v44 = *v62;
            v45 = v75;
            (*v62)();
            v46 = v66;
            (v44)(v66, v42, v45);
            v47 = v67;
            ThermostatPreset.presetScenario.getter();
            v65 = ThermostatPresetScenario.order.getter();
            v48 = *v61;
            v49 = v47;
            v50 = v69;
            (*v61)(v49, v69);
            v51 = v68;
            ThermostatPreset.presetScenario.getter();
            v52 = ThermostatPresetScenario.order.getter();
            v48(v51, v50);
            v53 = *v60;
            (*v60)(v46, v45);
            v53(v72, v45);
            if (v65 < v52)
            {
              break;
            }

            v38 = v43;
            a3 = v71;
            v54 = v59;
            if (v70 < v40 || v71 >= v40)
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v73;
              v42 = v74;
              v39 = v63;
            }

            else
            {
              a1 = v73;
              v42 = v74;
              v39 = v63;
              if (v70 != v40)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v40 = v43;
            v41 = v64;
            if (v43 <= v54)
            {
              a2 = v64;
              goto LABEL_58;
            }
          }

          a3 = v71;
          v55 = v59;
          if (v70 < v64 || v71 >= v64)
          {
            break;
          }

          a1 = v73;
          a2 = v74;
          v38 = v58;
          v39 = v63;
          if (v70 != v64)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v40 <= v55)
          {
            goto LABEL_58;
          }
        }

        a2 = v74;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v73;
        v38 = v58;
        v39 = v63;
        if (v40 > v55)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:
    v78 = a2;
    v76 = v38;
  }

  else
  {
    v21 = v20 * v18;
    if (a4 < a1 || a1 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v65 = a4 + v21;
    v76 = a4 + v21;
    v71 = a3;
    if (v21 >= 1 && a2 < a3)
    {
      v24 = *(v12 + 16);
      v61 = (v8 + 8);
      v62 = v24;
      v63 = v18;
      v64 = v12 + 16;
      v60 = (v12 + 8);
      do
      {
        v73 = a1;
        v74 = a2;
        v25 = v72;
        v26 = v75;
        v27 = v62;
        (v62)(v72, a2, v75);
        v28 = v66;
        (v27)(v66, a4, v26);
        v29 = v67;
        ThermostatPreset.presetScenario.getter();
        v70 = ThermostatPresetScenario.order.getter();
        v30 = *v61;
        v31 = v69;
        (*v61)(v29, v69);
        v32 = v68;
        ThermostatPreset.presetScenario.getter();
        v33 = ThermostatPresetScenario.order.getter();
        v30(v32, v31);
        v34 = *v60;
        (*v60)(v28, v26);
        v34(v25, v26);
        if (v70 >= v33)
        {
          v36 = v73;
          a2 = v74;
          v35 = v63;
          v37 = a4 + v63;
          if (v73 < a4 || v73 >= v37)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v73 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v77 = v37;
          a4 += v35;
        }

        else
        {
          v35 = v63;
          v36 = v73;
          a2 = v74 + v63;
          if (v73 < v74 || v73 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v73 != v74)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v36 + v35;
        v78 = a1;
      }

      while (a4 < v65 && a2 < v71);
    }
  }

LABEL_59:
  sub_10007120C(&v78, &v77, &v76);
  return 1;
}

uint64_t sub_10007116C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000711F8(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_10007120C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for ThermostatPreset();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void *sub_1000712F0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100071310(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100071310(void *result, int64_t a2, char a3, void *a4)
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

  sub_1000694A0(&qword_1000E6488, &qword_100093018);
  v10 = *(type metadata accessor for ThermostatPreset() - 8);
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
  v15 = *(type metadata accessor for ThermostatPreset() - 8);
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

uint64_t sub_1000714E8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_10006E994(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100071E08();
      v10 = v20;
    }

    sub_100072660(*(*(v10 + 48) + 16 * v8), *(*(v10 + 48) + 16 * v8 + 8));
    v11 = *(v10 + 56);
    v12 = type metadata accessor for ThermostatPreset();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_1000719E0(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for ThermostatPreset();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

Swift::Int sub_100071658(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v40 = type metadata accessor for ThermostatPreset();
  v5 = *(v40 - 8);
  __chkstk_darwin(v40);
  v39 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1000694A0(&qword_1000E6460, &qword_100093000);
  v38 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v36 = (v5 + 16);
    v37 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v20 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v23 = v20 | (v10 << 6);
      v24 = *(v5 + 72);
      v25 = *(v7 + 56) + v24 * v23;
      v41 = *(*(v7 + 48) + 16 * v23);
      v26 = *(&v41 + 1);
      if (v38)
      {
        (*v16)(v39, v25, v40);
      }

      else
      {
        (*v36)(v39, v25, v40);
        sub_10007260C(v41, v26);
      }

      Hasher.init(_seed:)();
      Data.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v19 = v41;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v19 = v41;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 16 * v18) = v19;
      result = (*v16)(*(v9 + 56) + v24 * v18, v39, v40);
      ++*(v9 + 16);
      v5 = v37;
    }

    v21 = v10;
    while (1)
    {
      v10 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v22 = v11[v10];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v14 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v7 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v7 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

unint64_t sub_1000719E0(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      v9 = (*(a2 + 48) + 16 * v6);
      v10 = *v9;
      v11 = v9[1];
      Hasher.init(_seed:)();
      sub_10007260C(v10, v11);
      Data.hash(into:)();
      v12 = Hasher._finalize()();
      result = sub_100072660(v10, v11);
      v13 = v12 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v13 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v14 = *(a2 + 48);
      v15 = (v14 + 16 * v3);
      v16 = (v14 + 16 * v6);
      if (v3 != v6 || v15 >= v16 + 1)
      {
        *v15 = *v16;
      }

      v17 = *(a2 + 56);
      v18 = *(*(type metadata accessor for ThermostatPreset() - 8) + 72);
      v19 = v18 * v3;
      result = v17 + v18 * v3;
      v20 = v18 * v6;
      v21 = v17 + v18 * v6 + v18;
      if (v19 < v20 || result >= v21)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v19 == v20)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v13 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v13)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100071BD4(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_10006E994(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_100071E08();
      goto LABEL_7;
    }

    sub_100071658(v15, a4 & 1);
    v26 = sub_10006E994(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = type metadata accessor for ThermostatPreset();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_100071D58(v12, a2, a3, a1, v18);

  return sub_10007260C(a2, a3);
}

uint64_t sub_100071D58(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for ThermostatPreset();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

char *sub_100071E08()
{
  v1 = v0;
  v2 = type metadata accessor for ThermostatPreset();
  v3 = *(v2 - 8);
  v37 = v2;
  v38 = v3;
  __chkstk_darwin(v2);
  v36 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000694A0(&qword_1000E6460, &qword_100093000);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v39 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v34 = v38 + 32;
    v35 = v38 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v40 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = (*(v5 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v37;
        v26 = v38;
        v27 = *(v38 + 72) * v20;
        v28 = v36;
        (*(v38 + 16))(v36, *(v5 + 56) + v27, v37);
        v29 = v39;
        v30 = (*(v39 + 48) + v21);
        *v30 = v23;
        v30[1] = v24;
        (*(v26 + 32))(*(v29 + 56) + v27, v28, v25);
        result = sub_10007260C(v23, v24);
        v15 = v40;
      }

      while (v40);
    }

    v18 = v11;
    v7 = v39;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v32;
        goto LABEL_18;
      }

      v19 = *(v33 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v40 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

unint64_t sub_100072098(uint64_t a1)
{
  v2 = sub_1000694A0(&qword_1000E6478, &qword_100093008);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000694A0(&qword_1000E6460, &qword_100093000);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100073FA4(v9, v5, &qword_1000E6478, &qword_100093008);
      result = sub_10006E994(*v5, *(v5 + 1));
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 16 * result) = *v5;
      v14 = v7[7];
      v15 = type metadata accessor for ThermostatPreset();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_100072280(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticThermostatClusterGroup();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v25 - v9;
  swift_getKeyPath();
  v11 = OBJC_IVAR____TtCV13HomeUIService19SetTemperaturesView9ViewModel___observationRegistrar;
  v32 = a1;
  v12 = sub_1000726B4(&qword_1000E6438, type metadata accessor for SetTemperaturesView.ViewModel, &unk_100092F28);
  v25[2] = v11;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = OBJC_IVAR____TtCV13HomeUIService19SetTemperaturesView9ViewModel__thermostatCluster;
  swift_beginAccess();
  v14 = *(v5 + 16);
  v26 = a1;
  v14(v10, a1 + v13, v4);
  swift_getKeyPath();
  v31 = a2;
  v25[1] = OBJC_IVAR____TtCV13HomeUIService19SetTemperaturesView9ViewModel___observationRegistrar;
  v28 = v12;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = OBJC_IVAR____TtCV13HomeUIService19SetTemperaturesView9ViewModel__thermostatCluster;
  swift_beginAccess();
  v27 = a2;
  v14(v8, a2 + v15, v4);
  LOBYTE(v15) = static StaticThermostatClusterGroup.== infix(_:_:)();
  v16 = *(v5 + 8);
  v16(v8, v4);
  v16(v10, v4);
  if (v15)
  {
    swift_getKeyPath();
    v17 = v26;
    v30 = v26;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v18 = OBJC_IVAR____TtCV13HomeUIService19SetTemperaturesView9ViewModel__editablePresetsMap;
    swift_beginAccess();
    v19 = *(v17 + v18);
    swift_getKeyPath();
    v20 = v27;
    v29 = v27;

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v21 = OBJC_IVAR____TtCV13HomeUIService19SetTemperaturesView9ViewModel__editablePresetsMap;
    swift_beginAccess();
    v22 = *(v20 + v21);
    v23 = v22 == 0;
    if (v19)
    {
      if (v22)
      {

        v23 = sub_10006E474(v19, v22);
      }

      else
      {
        v23 = 0;
      }
    }
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t sub_10007260C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100072660(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1000726B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10007272C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100072660(result, a2);
  }

  return result;
}

unint64_t sub_100072778()
{
  result = qword_1000E6470;
  if (!qword_1000E6470)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000E6470);
  }

  return result;
}

void sub_1000727C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  v4 = v2;
}

uint64_t sub_1000727FC(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for ThermostatPreset();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v63 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v60 = &v51 - v9;
  v10 = type metadata accessor for ThermostatAutomationSettingsContext();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + OBJC_IVAR____TtCV13HomeUIService19SetTemperaturesView9ViewModel__editablePresetsMap) = 0;
  ObservationRegistrar.init()();
  *(v2 + 16) = a1;
  v14 = OBJC_IVAR____TtCV13HomeUIService19SetTemperaturesView9ViewModel__thermostatCluster;
  v15 = type metadata accessor for StaticThermostatClusterGroup();
  v51 = *(v15 - 8);
  v52 = v15;
  v16 = *(v51 + 16);
  v54 = v2;
  v16(v2 + v14, a2);
  (*(v11 + 104))(v13, enum case for ThermostatAutomationSettingsContext.onboarding(_:), v10);
  v17 = a1;
  v53 = a2;
  v18 = StaticThermostatClusterGroup.editablePresets(for:)();
  (*(v11 + 8))(v13, v10);
  if (!v18)
  {
    v48 = 0;
    goto LABEL_21;
  }

  v64 = sub_100072098(&_swiftEmptyArrayStorage);
  v19 = *(v18 + 16);
  if (!v19)
  {
LABEL_19:

    v48 = v64;
LABEL_21:
    v49 = v54;
    sub_10006C7EC(v48);
    (*(v51 + 8))(v53, v52);
    return v49;
  }

  v20 = 0;
  v21 = v6;
  v62 = v18 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v22 = v6 + 16;
  v61 = (v6 + 8);
  v55 = (v6 + 40);
  v56 = (v6 + 32);
  v23 = v60;
  v58 = v18;
  v59 = v19;
  v57 = v6 + 16;
  while (v20 < *(v18 + 16))
  {
    v65 = *(v21 + 72);
    v24 = *(v21 + 16);
    v25 = v5;
    v26 = v5;
    v27 = v22;
    v24(v23, v62 + v65 * v20, v25);
    v28 = ThermostatPreset.presetHandle.getter();
    if (v29 >> 60 == 15)
    {
      (*v61)(v23, v26);
      v22 = v27;
      v5 = v26;
    }

    else
    {
      v30 = v28;
      v31 = v29;
      v24(v63, v23, v26);
      v32 = v64;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v66 = v32;
      v35 = sub_10006E994(v30, v31);
      v36 = *(v32 + 16);
      v37 = (v34 & 1) == 0;
      v38 = v36 + v37;
      if (__OFADD__(v36, v37))
      {
        goto LABEL_23;
      }

      v39 = v34;
      if (*(v32 + 24) >= v38)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100071E08();
        }
      }

      else
      {
        sub_100071658(v38, isUniquelyReferenced_nonNull_native);
        v40 = sub_10006E994(v30, v31);
        if ((v39 & 1) != (v41 & 1))
        {
          goto LABEL_25;
        }

        v35 = v40;
      }

      v5 = v26;
      v42 = v66;
      v64 = v66;
      if (v39)
      {
        (*v55)(*(v66 + 56) + v35 * v65, v63, v26);
        sub_10007272C(v30, v31);
        v23 = v60;
        (*v61)(v60, v26);
        v19 = v59;
      }

      else
      {
        *(v66 + 8 * (v35 >> 6) + 64) |= 1 << v35;
        v43 = (*(v42 + 48) + 16 * v35);
        *v43 = v30;
        v43[1] = v31;
        (*v56)(*(v42 + 56) + v35 * v65, v63, v26);
        v44 = v42;
        v23 = v60;
        (*v61)(v60, v26);
        v45 = *(v44 + 16);
        v46 = __OFADD__(v45, 1);
        v47 = v45 + 1;
        v19 = v59;
        if (v46)
        {
          goto LABEL_24;
        }

        *(v44 + 16) = v47;
      }

      v22 = v57;
      v18 = v58;
    }

    if (v19 == ++v20)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_100072D20()
{
  result = qword_1000E64C8;
  if (!qword_1000E64C8)
  {
    sub_10006F7CC(&qword_1000E64C0, &qword_100093050);
    sub_100072DA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E64C8);
  }

  return result;
}

unint64_t sub_100072DA4()
{
  result = qword_1000E64D0;
  if (!qword_1000E64D0)
  {
    sub_10006F7CC(&qword_1000E64D8, &qword_100093058);
    sub_100072E5C();
    sub_100073C6C(&qword_1000E6528, &qword_1000E6530, &qword_100093080, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E64D0);
  }

  return result;
}

unint64_t sub_100072E5C()
{
  result = qword_1000E64E0;
  if (!qword_1000E64E0)
  {
    sub_10006F7CC(&qword_1000E64E8, &qword_100093060);
    sub_100072EE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E64E0);
  }

  return result;
}

unint64_t sub_100072EE0()
{
  result = qword_1000E64F0;
  if (!qword_1000E64F0)
  {
    sub_10006F7CC(&qword_1000E64F8, &qword_100093068);
    sub_100072F64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E64F0);
  }

  return result;
}

unint64_t sub_100072F64()
{
  result = qword_1000E6500;
  if (!qword_1000E6500)
  {
    sub_10006F7CC(&qword_1000E6508, &qword_100093070);
    sub_100073C6C(&qword_1000E6510, &qword_1000E6518, &qword_100093078, &protocol conformance descriptor for Button<A>);
    sub_1000726B4(&qword_1000E6520, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E6500);
  }

  return result;
}

uint64_t sub_10007304C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SetTemperaturesView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000730B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SetTemperaturesView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_100073118@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for SetTemperaturesView(0);

  return sub_10006E3B4(a1);
}

uint64_t sub_10007318C()
{
  v1 = (type metadata accessor for SetTemperaturesView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3 + v1[8];
  v6 = type metadata accessor for ThermostatPreset();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v5, 1, v6))
  {
    (*(v7 + 8))(v5, v6);
  }

  sub_1000694A0(&qword_1000E61B8, &qword_100092EC8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000732F0(char *a1)
{
  v3 = *(type metadata accessor for SetTemperaturesView(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_10006E414(a1, v4, v5, v6);
}

uint64_t sub_100073368@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SetTemperaturesView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_10006AC48(v4, a1);
}

unint64_t sub_1000733D8()
{
  result = qword_1000E6548;
  if (!qword_1000E6548)
  {
    sub_10006F7CC(&qword_1000E64B8, &qword_100093048);
    sub_10006F7CC(&qword_1000E64A8, &qword_100093038);
    sub_10006F7CC(&qword_1000E64A0, &qword_100093030);
    sub_10006F7CC(&qword_1000E6498, &qword_100093028);
    type metadata accessor for InsetGroupedListStyle();
    sub_10006F7CC(&qword_1000E6490, &qword_100093020);
    sub_100073C6C(&qword_1000E6538, &qword_1000E6490, &qword_100093020, &protocol conformance descriptor for List<A, B>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1000726B4(&qword_1000E6520, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E6548);
  }

  return result;
}

unint64_t sub_1000735E0()
{
  result = qword_1000E6550;
  if (!qword_1000E6550)
  {
    sub_10006F7CC(&qword_1000E6540, &qword_100093088);
    sub_1000726B4(&qword_1000E6558, &type metadata accessor for ThermostatPresetsDetailView, &protocol conformance descriptor for ThermostatPresetsDetailView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E6550);
  }

  return result;
}

uint64_t sub_100073694(uint64_t a1)
{
  v2 = sub_1000694A0(&qword_1000E64B8, &qword_100093048);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000736FC()
{
  v1 = (type metadata accessor for SetTemperaturesView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[8];
  v6 = type metadata accessor for ThermostatPreset();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v5, 1, v6))
  {
    (*(v7 + 8))(v5, v6);
  }

  sub_1000694A0(&qword_1000E61B8, &qword_100092EC8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100073858(uint64_t a1)
{
  v3 = *(type metadata accessor for SetTemperaturesView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_10006B584(a1, v4);
}

uint64_t sub_1000738C8()
{
  v1 = type metadata accessor for ThermostatPreset();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000739A0(uint64_t a1)
{
  v4 = *(type metadata accessor for ThermostatPreset() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100073AC0;

  return sub_10006D21C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_100073AC0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100073BB4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100073BEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SetTemperaturesView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_10006A4A8(a1, v6, a2);
}

uint64_t sub_100073C6C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10006F7CC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100073CB4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000694A0(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100073D1C()
{
  v1 = (type metadata accessor for SetTemperaturesView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for ThermostatPreset();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);

  v9 = v0 + v3 + v1[8];
  if (!(*(v6 + 48))(v9, 1, v5))
  {
    (*(v6 + 8))(v9, v5);
  }

  v10 = (v3 + v4 + v7) & ~v7;
  sub_1000694A0(&qword_1000E61B8, &qword_100092EC8);

  (*(v6 + 8))(v0 + v10, v5);

  return _swift_deallocObject(v0, v10 + v8, v2 | v7 | 7);
}

uint64_t sub_100073ECC()
{
  v1 = *(type metadata accessor for SetTemperaturesView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for ThermostatPreset() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_10006B79C(v0 + v2, v5);
}

uint64_t sub_100073FA4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000694A0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10007400C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000694A0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10007406C(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t AutoClimateFeaturesView.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = sub_1000694A0(&qword_1000E65B0, &qword_100093100);
  return sub_1000740D4(a1 + *(v2 + 44));
}

uint64_t sub_1000740D4@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v1 = type metadata accessor for PlainListStyle();
  v2 = *(v1 - 8);
  v31 = v1;
  v32 = v2;
  __chkstk_darwin(v1);
  v27 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000694A0(&qword_1000E6610, &qword_100093248);
  v25 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v24 - v5;
  v7 = sub_1000694A0(&qword_1000E6618, &qword_100093250);
  v26 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v24 - v8;
  v10 = sub_1000694A0(&qword_1000E6620, &qword_100093258);
  v28 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v24 - v11;
  v13 = sub_1000694A0(&qword_1000E6628, &qword_100093260);
  v14 = *(v13 - 8);
  v29 = v13;
  v30 = v14;
  __chkstk_darwin(v13);
  v16 = &v24 - v15;
  sub_1000694A0(&qword_1000E6630, &unk_100093268);
  sub_100073C6C(&qword_1000E6638, &qword_1000E6630, &unk_100093268, &protocol conformance descriptor for TupleView<A>);
  List<>.init(content:)();
  v17 = sub_100073C6C(&qword_1000E6640, &qword_1000E6610, &qword_100093248, &protocol conformance descriptor for List<A, B>);
  View.scrollContentBackground(_:)();
  (*(v25 + 8))(v6, v4);
  v18 = v27;
  PlainListStyle.init()();
  v34 = v4;
  v35 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = v31;
  View.listStyle<A>(_:)();
  (*(v32 + 8))(v18, v20);
  (*(v26 + 8))(v9, v7);
  v34 = v7;
  v35 = v20;
  v36 = OpaqueTypeConformance2;
  v37 = &protocol witness table for PlainListStyle;
  v21 = swift_getOpaqueTypeConformance2();
  View.listHasStackBehavior()();
  (*(v28 + 8))(v12, v10);
  static Edge.Set.all.getter();
  v34 = v10;
  v35 = v21;
  swift_getOpaqueTypeConformance2();
  v22 = v29;
  View.listPadding(_:_:)();
  return (*(v30 + 8))(v16, v22);
}

uint64_t sub_1000745F0@<X0>(uint64_t *a1@<X8>)
{
  v2 = static String.hsLocalized(_:)(0xD000000000000026, 0x80000001000B11D0);
  v4 = v3;
  v5 = static String.hsLocalized(_:)(0xD000000000000031, 0x80000001000B1200);
  v7 = v6;
  v8 = static String.hsLocalized(_:)(0xD000000000000030, 0x80000001000B1240);
  v10 = v9;
  v11 = static String.hsLocalized(_:)(0xD00000000000003BLL, 0x80000001000B1280);
  *a1 = v2;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v7;
  a1[4] = 0x69662E6573756F68;
  a1[5] = 0xEA00000000006C6CLL;
  a1[6] = v8;
  a1[7] = v10;
  a1[8] = v11;
  a1[9] = v12;
  a1[10] = 0xD000000000000015;
  a1[11] = 0x80000001000B12C0;
}

uint64_t sub_100074710()
{
  v1 = v0;
  v2 = static VerticalAlignment.top.getter();
  v9 = 0;
  sub_100074954(v1, &v23);
  v18 = v31;
  v19 = v32;
  v14 = v27;
  v15 = v28;
  v16 = v29;
  v17 = v30;
  v10 = v23;
  v11 = v24;
  v12 = v25;
  v13 = v26;
  v21[8] = v31;
  v21[9] = v32;
  v21[4] = v27;
  v21[5] = v28;
  v21[6] = v29;
  v21[7] = v30;
  v21[0] = v23;
  v21[1] = v24;
  v20 = v33;
  v22 = v33;
  v21[2] = v25;
  v21[3] = v26;
  sub_100073FA4(&v10, &v5, &qword_1000E65C8, &qword_100093210);
  sub_10007400C(v21, &qword_1000E65C8, &qword_100093210);
  *(&v8[7] + 7) = v17;
  *(&v8[8] + 7) = v18;
  *(&v8[9] + 7) = v19;
  *(&v8[3] + 7) = v13;
  *(&v8[4] + 7) = v14;
  *(&v8[5] + 7) = v15;
  *(&v8[6] + 7) = v16;
  *(v8 + 7) = v10;
  *(&v8[1] + 7) = v11;
  *(&v8[10] + 7) = v20;
  *(&v8[2] + 7) = v12;
  LOBYTE(v1) = v9;
  *&v23 = static Color.clear.getter();
  v3 = AnyView.init<A>(_:)();
  *&v6[113] = v8[7];
  *&v6[129] = v8[8];
  *&v6[145] = v8[9];
  *&v6[160] = *(&v8[9] + 15);
  *&v6[49] = v8[3];
  *&v6[65] = v8[4];
  *&v6[81] = v8[5];
  *&v6[97] = v8[6];
  *&v6[1] = v8[0];
  *&v6[17] = v8[1];
  *&v5 = v2;
  *(&v5 + 1) = 0x4030000000000000;
  v6[0] = v1;
  *&v6[33] = v8[2];
  v7 = v3;
  static VerticalEdge.Set.all.getter();
  sub_1000694A0(&qword_1000E65D0, &qword_100093218);
  sub_100075284();
  View.listRowSeparator(_:edges:)();
  v33 = *&v6[144];
  v34 = *&v6[160];
  v35 = v7;
  v29 = *&v6[80];
  v30 = *&v6[96];
  v31 = *&v6[112];
  v32 = *&v6[128];
  v25 = *&v6[16];
  v26 = *&v6[32];
  v27 = *&v6[48];
  v28 = *&v6[64];
  v23 = v5;
  v24 = *v6;
  return sub_10007400C(&v23, &qword_1000E65D0, &qword_100093218);
}

uint64_t sub_100074954@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  Image.init(systemName:)();
  (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
  v8 = Image.resizable(capInsets:resizingMode:)();

  (*(v5 + 8))(v7, v4);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  LOBYTE(v49[0]) = 1;
  *&v42[3] = *&v42[27];
  *&v42[11] = *&v42[35];
  *&v42[19] = *&v42[43];
  v9 = static Color.orange.getter();
  v10 = static HorizontalAlignment.leading.getter();
  LOBYTE(v49[0]) = 1;
  sub_100074CBC(a1, v43);
  *&v41[7] = v43[0];
  *&v41[23] = v43[1];
  *&v41[39] = v43[2];
  *&v41[55] = v44;
  v11 = v49[0];
  v45[0] = v8;
  v45[1] = 0;
  LOWORD(v46[0]) = 1;
  *(v46 + 2) = *v42;
  *(&v46[1] + 2) = *&v42[8];
  *(&v46[2] + 2) = *&v42[16];
  *&v46[3] = *&v42[23];
  *(&v46[3] + 1) = v9;
  v33 = v46[2];
  v34 = v46[3];
  v31 = v46[0];
  v32 = v46[1];
  v30 = v8;
  v47[0] = v10;
  v47[1] = 0;
  v48[0] = v49[0];
  v12 = *&v41[16];
  *&v48[1] = *v41;
  *&v48[64] = *(&v44 + 1);
  v13 = *&v41[32];
  *&v48[49] = *&v41[48];
  *&v48[33] = *&v41[32];
  v14 = *v41;
  *&v48[17] = *&v41[16];
  v35 = v10;
  v36 = *v48;
  v38 = *&v48[32];
  v39 = *&v48[48];
  v37 = *&v48[16];
  v15 = v46[0];
  v16 = v46[1];
  *a2 = v8;
  *(a2 + 16) = v15;
  v17 = v33;
  v18 = v35;
  v19 = v36;
  *(a2 + 64) = v34;
  *(a2 + 80) = v18;
  *(a2 + 32) = v16;
  *(a2 + 48) = v17;
  v20 = v37;
  v21 = v39;
  *(a2 + 128) = v38;
  *(a2 + 144) = v21;
  v40 = *&v48[64];
  *(a2 + 160) = *&v48[64];
  *(a2 + 96) = v19;
  *(a2 + 112) = v20;
  v49[0] = v10;
  v49[1] = 0;
  v50 = v11;
  v52 = v12;
  v53 = v13;
  *v54 = *&v41[48];
  *&v54[15] = *&v41[63];
  v51 = v14;
  sub_100073FA4(v45, v24, &qword_1000E65F0, &qword_100093230);
  sub_100073FA4(v47, v24, &qword_1000E65F8, &qword_100093238);
  sub_10007400C(v49, &qword_1000E65F8, &qword_100093238);
  v24[0] = v8;
  v24[1] = 0;
  v25 = 1;
  v26 = *v42;
  v27 = *&v42[8];
  *v28 = *&v42[16];
  *&v28[14] = *&v42[23];
  v29 = v9;
  return sub_10007400C(v24, &qword_1000E65F0, &qword_100093230);
}

uint64_t sub_100074CBC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v55 = a2;
  v3 = sub_1000694A0(&qword_1000E6600, &qword_100093240);
  __chkstk_darwin(v3 - 8);
  v5 = v43 - v4;
  v6 = type metadata accessor for Font.TextStyle();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a1;
  v10 = a1[1];
  v57 = *a1;
  v58 = v10;
  v49 = sub_100075368();

  v11 = Text.init<A>(_:)();
  v43[0] = v12;
  LOBYTE(v10) = v13;
  v48 = enum case for Font.TextStyle.subheadline(_:);
  v47 = *(v7 + 104);
  v47(v9);
  v14 = type metadata accessor for Font.Design();
  v15 = *(v14 - 8);
  v45 = *(v15 + 56);
  v46 = v15 + 56;
  v45(v5, 1, 1, v14);
  static Font.Weight.bold.getter();
  static Font.system(_:design:weight:)();
  sub_10007400C(v5, &qword_1000E6600, &qword_100093240);
  v16 = *(v7 + 8);
  v43[1] = v7 + 8;
  v44 = v16;
  v16(v9, v6);
  v17 = v43[0];
  v18 = Text.font(_:)();
  v53 = v19;
  v54 = v18;
  v52 = v20;
  v51 = v21;

  sub_1000753BC(v11, v17, v10 & 1);

  v22 = v50[3];
  v57 = v50[2];
  v58 = v22;

  v23 = Text.init<A>(_:)();
  v25 = v24;
  LOBYTE(v11) = v26;
  (v47)(v9, v48, v6);
  v45(v5, 1, 1, v14);
  static Font.Weight.regular.getter();
  static Font.system(_:design:weight:)();
  sub_10007400C(v5, &qword_1000E6600, &qword_100093240);
  v44(v9, v6);
  v27 = Text.font(_:)();
  v29 = v28;
  LOBYTE(v9) = v30;

  sub_1000753BC(v23, v25, v11 & 1);

  v57 = static Color.secondary.getter();
  v31 = Text.foregroundStyle<A>(_:)();
  v33 = v32;
  LOBYTE(v25) = v34;
  v36 = v35;
  sub_1000753BC(v27, v29, v9 & 1);

  v37 = v51 & 1;
  v56 = v51 & 1;
  LOBYTE(v57) = v51 & 1;
  LOBYTE(v10) = v25 & 1;
  v59 = v25 & 1;
  v39 = v54;
  v38 = v55;
  v41 = v52;
  v40 = v53;
  *v55 = v54;
  v38[1] = v41;
  *(v38 + 16) = v37;
  v38[3] = v40;
  v38[4] = v31;
  v38[5] = v33;
  *(v38 + 48) = v10;
  v38[7] = v36;
  sub_1000753CC(v39, v41, v37);

  sub_1000753CC(v31, v33, v10);

  sub_1000753BC(v31, v33, v10);

  sub_1000753BC(v39, v41, v56);
}

__n128 sub_1000751B0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1000751C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10007520C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100075284()
{
  result = qword_1000E65D8;
  if (!qword_1000E65D8)
  {
    sub_10006F7CC(&qword_1000E65D0, &qword_100093218);
    sub_100073C6C(&qword_1000E65E0, &qword_1000E65E8, &unk_100093220, &protocol conformance descriptor for HStack<A>);
    sub_100073C6C(&qword_1000E6528, &qword_1000E6530, &qword_100093080, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E65D8);
  }

  return result;
}

unint64_t sub_100075368()
{
  result = qword_1000E6608;
  if (!qword_1000E6608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E6608);
  }

  return result;
}

uint64_t sub_1000753BC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1000753CC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1000753DC()
{
  sub_10006F7CC(&qword_1000E65D0, &qword_100093218);
  sub_100075284();
  return swift_getOpaqueTypeConformance2();
}

id HSPCAdaptiveTemperatureViewController.featuresHostingViewController.getter(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for UIHostingControllerSizingOptions();
  __chkstk_darwin(v2 - 8);
  v3 = objc_allocWithZone(sub_1000694A0(&qword_1000E6648, &qword_100093278));
  v4 = UIHostingController.init(rootView:)();
  static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
  dispatch thunk of UIHostingController.sizingOptions.setter();

  return v4;
}

uint64_t sub_1000755A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000694A0(&qword_1000E6578, &qword_1000930A8);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100073FA4(a3, v25 - v10, &qword_1000E6578, &qword_1000930A8);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10007400C(v11, &qword_1000E6578, &qword_1000930A8);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
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

      sub_10007400C(a3, &qword_1000E6578, &qword_1000930A8);

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

  sub_10007400C(a3, &qword_1000E6578, &qword_1000930A8);
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

uint64_t HSProxCardCoordinator.setUpThermostatController(for:to:)(void *a1, uint64_t a2)
{
  v4 = sub_1000694A0(&qword_1000E6650, &qword_100093288);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v7 = &v16 - v6;
  v8 = sub_1000694A0(&qword_1000E6578, &qword_1000930A8);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_100073FA4(a2, v7, &qword_1000E6650, &qword_100093288);
  v12 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a1;
  sub_100075C50(v7, v13 + v12);
  v14 = a1;
  sub_1000755A4(0, 0, v10, &unk_100093298, v13);
}

uint64_t sub_100075A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_100075A90, 0, 0);
}

uint64_t sub_100075A90()
{
  type metadata accessor for AutoClimateModel();
  v0[4] = static AutoClimateModel.shared.getter();
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_100075B40;
  v3 = v0[2];
  v2 = v0[3];

  return AutoClimateModel.setUpThermostatController(for:to:)(v3, v2);
}

uint64_t sub_100075B40()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100075C50(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000694A0(&qword_1000E6650, &qword_100093288);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100075CC0(uint64_t a1)
{
  v4 = *(sub_1000694A0(&qword_1000E6650, &qword_100093288) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10007662C;

  return sub_100075A70(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100076060()
{
  v1 = *(sub_1000694A0(&qword_1000E6650, &qword_100093288) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100076188(uint64_t a1)
{
  v4 = *(sub_1000694A0(&qword_1000E6650, &qword_100093288) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100073AC0;

  return sub_100075A70(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10007628C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100076384;

  return v6(a1);
}

uint64_t sub_100076384()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10007647C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10007662C;

  return sub_10007628C(a1, v4);
}

uint64_t sub_100076534()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10007656C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100073AC0;

  return sub_10007628C(a1, v4);
}

uint64_t Logger.thermostatPresetsOnboarding.unsafeMutableAddressor()
{
  if (qword_1000E6108 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_100073BB4(v0, static Logger.thermostatPresetsOnboarding);
}

id HSPCSetTemperaturesViewController.temperaturePreferencesHostingController.getter(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UIHostingControllerSizingOptions();
  __chkstk_darwin(v3 - 8);
  v30 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SetTemperaturesView(0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v30 - v9;
  v11 = sub_1000694A0(&qword_1000E6458, &qword_100092FD0);
  __chkstk_darwin(v11 - 8);
  v13 = &v30 - v12;
  v14 = type metadata accessor for StaticThermostatClusterGroup();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v30 - v19;
  v21 = v2;
  v22 = [v2 addedAccessory];
  HMAccessory.thermostatCluster()();

  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_100076BB8(v13);
    if (qword_1000E6108 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100073BB4(v23, static Logger.thermostatPresetsOnboarding);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v26 = 136315394;
      *(v26 + 4) = sub_100076CC8(0xD00000000000003BLL, 0x80000001000B1350, &v31);
      *(v26 + 12) = 2080;
      *(v26 + 14) = sub_100076CC8(0xD000000000000027, 0x80000001000B1390, &v31);
      swift_arrayDestroy();
    }

    return 0;
  }

  else
  {
    (*(v15 + 32))(v20, v13, v14);
    (*(v15 + 16))(v18, v20, v14);
    sub_1000694E8(v18, [v21 addedAccessory], v10);
    sub_10007304C(v10, v8);
    v28 = objc_allocWithZone(sub_1000694A0(&qword_1000E6658, &qword_1000932C0));
    v27 = UIHostingController.init(rootView:)();
    static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
    dispatch thunk of UIHostingController.sizingOptions.setter();

    sub_100077270(v10);
    (*(v15 + 8))(v20, v14);
  }

  return v27;
}

uint64_t sub_100076B38()
{
  v0 = type metadata accessor for Logger();
  sub_100077374(v0, static Logger.thermostatPresetsOnboarding);
  sub_100073BB4(v0, static Logger.thermostatPresetsOnboarding);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100076BB8(uint64_t a1)
{
  v2 = sub_1000694A0(&qword_1000E6458, &qword_100092FD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static Logger.thermostatPresetsOnboarding.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000E6108 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100073BB4(v2, static Logger.thermostatPresetsOnboarding);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100076CC8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100076D94(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100077318(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000772CC(v11);
  return v7;
}

unint64_t sub_100076D94(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100076EA0(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100076EA0(uint64_t a1, unint64_t a2)
{
  v3 = sub_100076EEC(a1, a2);
  sub_10007701C(&off_1000C8330);
  return v3;
}

char *sub_100076EEC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100077108(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100077108(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10007701C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10007717C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100077108(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_1000694A0(&qword_1000E6660, &unk_1000932D0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10007717C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000694A0(&qword_1000E6660, &unk_1000932D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_100077270(uint64_t a1)
{
  v2 = type metadata accessor for SetTemperaturesView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000772CC(void *a1)
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

uint64_t sub_100077318(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_100077374(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_1000773FC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to apply onboarding selections with error %@", &v2, 0xCu);
}

void sub_100077474(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Got failure trying to validate PIN Code. Continue to next prox card without setting PIN Code. %@", &v3, 0xCu);
}

void sub_1000774F0(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"];
  [v4 handleFailureInFunction:v3 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", a2, objc_opt_class()}];
}

void sub_100077598(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HSSetupStateMachine.m" lineNumber:185 description:{@"Invalid parameter not satisfying: %@", @"config.addedAccessory"}];
}

void sub_100077614(uint64_t a1)
{
  v2 = [objc_opt_class() description];
  v3 = [HSSetupContentProvider stringForHSProxCardSetupUIStep:*(a1 + 48)];
  v4 = [*(a1 + 40) addedAccessory];
  v5 = [v4 hf_minimumDescription];
  sub_10000F85C();
  sub_10000F828();
  sub_10000F870(&_mh_execute_header, v6, v7, "(%@:%s) Skipping %@ prox card because error %@ occurred for hf_fetchWalletKeyDeviceStateForCurrentDevice for accessory %@", v8, v9, v10, v11);
}

void sub_100077704(uint64_t a1)
{
  v2 = [objc_opt_class() description];
  v3 = [HSSetupContentProvider stringForHSProxCardSetupUIStep:*(a1 + 48)];
  v4 = [*(a1 + 40) addedAccessory];
  v5 = [v4 hf_minimumDescription];
  sub_10000F85C();
  sub_10000F828();
  sub_10000F870(&_mh_execute_header, v6, v7, "(%@:%s) Skipping %@ prox card because error %@ occurred for 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 for accessory %@", v8, v9, v10, v11);
}

void sub_1000777F4(uint64_t a1, uint64_t a2)
{
  v7 = [*(a2 + 32) addedAccessory];
  sub_10000F84C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_1000778B0(void *a1)
{
  v1 = [a1 description];
  objc_opt_class();
  sub_10000F84C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_100077970(const char *a1)
{
  v6 = NSStringFromSelector(a1);
  sub_10000F84C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100077A44(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HSDiscoveredAccessoryPickerViewController.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"accessoryBrowsingManager"}];
}

void sub_100077AC0(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HSDiscoveredAccessoryPickerViewController.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"entitlementContext"}];
}

void sub_100077B3C(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[HSPCFaceRecognitionViewController initWithCoordinator:config:]_block_invoke_2";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s %@", &v2, 0x16u);
}

void sub_100077C74(const char *a1, NSObject *a2)
{
  v3 = NSStringFromSelector(a1);
  sub_100015204();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%@ Error fetching voice recognition languages", v4, 0xCu);
}

void sub_100077D70(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to start extension manager: %@", &v2, 0xCu);
}

void sub_100077DE8(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 containingAppBundleURL];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Failed to create app record from containing app bundle URL %@: %@", &v6, 0x16u);
}

void sub_100077E98(void *a1, NSObject *a2)
{
  v3 = [a1 setupPayloadURL];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Detected an accessory that is representing itself as already paired.  URL: %@", &v4, 0xCu);
}

void sub_100077F30(const char *a1, NSObject *a2)
{
  v3 = NSStringFromSelector(a1);
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%@ Error fetching voice recognition languages", &v4, 0xCu);
}

void sub_100077FC8(uint64_t a1, uint64_t a2)
{
  v3 = +[NSAssertionHandler currentHandler];
  v4 = [NSString stringWithUTF8String:"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"];
  [v3 handleFailureInFunction:v4 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", a2, objc_opt_class()}];
}

void sub_100078060(void *a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  v5 = +[HFSetupPairingControllerUtilities descriptionForPairingPhase:](HFSetupPairingControllerUtilities, "descriptionForPairingPhase:", [a1 phase]);
  [v4 handleFailureInMethod:a2 object:a1 file:@"HSSetupStateMachineConfiguration.m" lineNumber:240 description:{@"HFSetupAutomaticDiscoveryPairingController can't handle changing the setup result (payload) after pairing has already started. Set the setup result before calling -startWithHome:, and create a new pairing controller if you need to change it later. Current phase = %@", v5}];
}

void sub_1000780FC()
{
  sub_100021190();
  sub_1000211A4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000781F8()
{
  sub_100021190();
  sub_1000211A4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000783F8(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to cancel staging.  id: %@, error: %@.", &v4, 0x16u);
}

void sub_100078484(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 136315650;
  v5 = "[HSSetupStateMachineCHIPPartnerConfiguration didReceiveDeviceCredential:forStagingRequestUUID:]_block_invoke";
  v6 = 2112;
  v7 = v3;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s Rejecting device credential: %@ error: %@", &v4, 0x20u);
}

void sub_100078520()
{
  sub_100021190();
  sub_1000211A4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10007859C()
{
  sub_100021190();
  sub_1000211A4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000786CC(uint64_t a1)
{
  v1 = NSStringFromSelector(*(a1 + 40));
  sub_1000223A8();
  sub_1000223C8(&_mh_execute_header, v2, v3, "%@:%@ Failed to fetch Siri Voice Profile with error %@", v4, v5, v6, v7);
}

void sub_100078760(uint64_t a1)
{
  v1 = NSStringFromSelector(*(a1 + 48));
  sub_1000223A8();
  sub_1000223C8(&_mh_execute_header, v2, v3, "%@:%@ Failed to fetch Siri Voice Profile with error %@", v4, v5, v6, v7);
}

void sub_1000787F8(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 136315650;
  v5 = "[HSPCSetTemperaturesViewController _hasOnboardedForAdaptiveTemperature]_block_invoke_2";
  v6 = 2112;
  v7 = v3;
  v8 = 2112;
  v9 = a2;
}

void sub_100078894()
{
  v2 = 136315650;
  sub_1000245C8();
}

void sub_10007890C(uint64_t a1, void *a2, NSObject *a3)
{
  *v3 = 136315650;
  *&v3[4] = "[HSPCAdaptiveTemperatureViewController _enableAdaptiveTemperature]_block_invoke_3";
  *&v3[12] = 2112;
  *&v3[14] = *(a1 + 40);
  *&v3[22] = 2112;
}

void sub_10007899C()
{
  v2 = 136315650;
  sub_1000245C8();
}

void sub_100078A14(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v3 = *a1;
  v4 = 138412802;
  v5 = v3;
  v6 = 2080;
  v7 = "[HSPCWalletKeyExpressModeViewController initWithCoordinator:config:]_block_invoke";
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "(%@:%s) canEvaluatePolicy is NO. error:%@", &v4, 0x20u);
}

void sub_100078AB4(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 textFieldText];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Invalid setup code or user canceled custom commissioning flow alert. setupCode %@, error %@", &v6, 0x16u);
}

void sub_100078B64()
{
  sub_10002D1F4();
  sub_1000211A4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100078BDC(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HSSetupStateMachineConfiguration+Helpers.m" lineNumber:70 description:@"Can't configure a nil accessory"];
}

void sub_100078C50(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HSSetupStateMachineConfiguration+Helpers.m" lineNumber:73 description:@"Can't configure accessory without a home"];
}

void sub_100078CC4()
{
  sub_10002D1F4();
  sub_10002D208();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100078DFC()
{
  sub_10002D1F4();
  sub_10002D218();
  sub_10002D208();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_100078EE8()
{
  sub_10002D1F4();
  sub_10002D218();
  sub_10002D208();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_100078FE4(void *a1, void *a2, NSObject *a3)
{
  v5 = 136315650;
  v6 = "+[HSSetupStateMachineConfiguration(Helpers) configureServices:withNames:]";
  v7 = 2048;
  v8 = [a1 count];
  v9 = 2048;
  v10 = [a2 count];
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "%s passed different count services [%ld] and names [%ld]", &v5, 0x20u);
}

void sub_10007912C()
{
  sub_10002D1F4();
  sub_10002D218();
  sub_10002D208();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_1000791A4(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PRXCardContentViewController+HSAdditions.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"[self conformsToProtocol:@protocol(HSProxCardConfigurable)]"}];
}

void sub_100079220(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PRXCardContentViewController+HSAdditions.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"[self conformsToProtocol:@protocol(HSProxCardConfigurable)]"}];
}

void sub_10007929C(uint64_t a1)
{
  v6 = [*(a1 + 32) hf_prettyDescription];
  sub_10000F84C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100079348(uint64_t a1)
{
  v6 = [*(a1 + 32) hf_prettyDescription];
  sub_10000F84C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000793DC(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PRXCardContentViewController+HSAdditions.m" lineNumber:220 description:{@"Invalid parameter not satisfying: %@", @"[self conformsToProtocol:@protocol(HSProxCardConfigurable)]"}];
}

void sub_100079490()
{
  v1 = 136315394;
  v2 = "[PRXCardContentViewController(HSAdditions) handleButtonDirectiveFuture:target:]_block_invoke";
  sub_10002F534();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%s: %@", &v1, 0x16u);
}

void sub_100079514(int a1, SEL aSelector)
{
  v2 = NSStringFromSelector(aSelector);
  sub_10002F534();
  sub_10000F84C();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000795B8(int a1, SEL aSelector)
{
  v2 = NSStringFromSelector(aSelector);
  sub_10002F534();
  sub_10000F84C();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000796CC(uint64_t a1, NSObject *a2)
{
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) itemDictionary];
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = v4;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to launch App Store for AirportUtility (error: %@): lookup returned %@", &v5, 0x16u);
}

void sub_10007977C()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getSUICOrbViewClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"HSPCSiriSetupViewController.m" lineNumber:30 description:{@"Unable to find class %s", "SUICOrbView"}];

  __break(1u);
}

void sub_1000797F8(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *SiriUICoreLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"HSPCSiriSetupViewController.m" lineNumber:29 description:{@"%s", *a1}];

  __break(1u);
}

void sub_100079878(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = [a2 config];
  v6 = [v5 home];
  v7 = 136315650;
  v8 = "[HSPCWalletKeyUWBViewController _updateHasOnboardedForWalletKey:]_block_invoke";
  v9 = 2112;
  v10 = a1;
  v11 = 2112;
  v12 = v6;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "%s: Received error %@ when trying to set dismissedWalletKeyUWBUnlockOnboarding flag for home %@", &v7, 0x20u);
}

void sub_100079960(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 136315650;
  v5 = "[HSPCCleanEnergyAutomationViewController _hasOnboardedForCleanEnergyAutomationWithCompletion:]_block_invoke";
  v6 = 2112;
  v7 = v3;
  v8 = 2112;
  v9 = a2;
}

void sub_100079AFC()
{
  sub_10004358C();
  v2 = +[NSAssertionHandler currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"HSProxCardCoordinator.m" lineNumber:305 description:@"Add Accessory request can not be nil"];
}

void sub_100079B6C()
{
  sub_10004358C();
  v2 = +[NSAssertionHandler currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"HSProxCardCoordinator.m" lineNumber:355 description:@"Add Accessory request can not be nil"];
}

void sub_100079BDC()
{
  sub_10004358C();
  v2 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"];
  [v2 handleFailureInFunction:v1 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v0, objc_opt_class()}];
}

void sub_100079C80(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 136315650;
  v5 = "[HSProxCardCoordinator _generateNextStepWithActiveTuple:]_block_invoke";
  v6 = 2112;
  v7 = v3;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s clearing pendingConfigurationIdentifier with updatePendingConfigurationIdentifier for accessory %@ failed: %@", &v4, 0x20u);
}

void sub_100079DA4()
{
  sub_10004358C();
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"];
  v2 = objc_opt_class();
  sub_100043598(v2, v3, v4, @"NSObject+NAAdditions.h");
}

void sub_100079E28(void *a1, uint64_t a2, os_log_t log)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = 136316162;
  v7 = "[HSProxCardCoordinator dismissProxCardFlowAfterExecuting:]_block_invoke";
  v8 = 2112;
  v9 = v3;
  v10 = 2112;
  v11 = v4;
  v12 = 2112;
  v13 = v5;
  v14 = 2112;
  v15 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s updatePendingConfigurationIdentifier for accessory %@ with identifier {from: %@, to: %@} failed: %@", &v6, 0x34u);
}

void sub_100079ED8(void *a1, uint64_t a2, NSObject *a3)
{
  v6 = [a1 activeTuple];
  v7 = [a1 setupAccessoryDescription];
  v8 = [a1 setupCode];
  v9 = 136316418;
  v10 = "[HSProxCardCoordinator resetForRetry]";
  v11 = 2112;
  v12 = v6;
  v13 = 2112;
  v14 = v7;
  v15 = 2112;
  v16 = v8;
  v17 = 2048;
  v18 = [a1 accessoryCommunicationProtocol];
  v19 = 2112;
  v20 = a2;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "%s tuple %@, setupAccessoryDescription %@, setupCode %@, accessoryCommunicationProtocol %ld, stateMachine %@", &v9, 0x3Eu);
}

void sub_10007A030(uint64_t a1)
{
  v6 = NSStringFromSelector(*(a1 + 32));
  sub_10000F84C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10007A0DC()
{
  sub_10004358C();
  v2 = +[NSAssertionHandler currentHandler];
  [v2 handleFailureInMethod:*(v1 + 56) object:*v0 file:@"HSProxCardCoordinator.m" lineNumber:1243 description:@"Precondition not satisfied: self.isUsingCHIPCommunicationProtocol"];
}

void sub_10007A14C(uint64_t a1)
{
  v2 = [*(a1 + 32) setupAccessoryDescription];
  v3 = [*(a1 + 32) discoveredAccessory];
  sub_100043560();
  sub_10000F84C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x34u);
}

void sub_10007A218(uint64_t a1)
{
  v2 = [*(a1 + 32) setupAccessoryDescription];
  v3 = [*(a1 + 32) discoveredAccessory];
  sub_100043560();
  sub_10000F84C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x34u);
}

void sub_10007A2F8(os_log_t log)
{
  v1 = 136315138;
  v2 = "[HUPRXItemModuleTableViewController itemManagerDidFinishUpdate:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s invalid parent view controller", &v1, 0xCu);
}

void sub_10007A3C0()
{
  *v4 = 136315650;
  sub_10004A07C();
  *&v4[7] = v0;
  v4[9] = v1;
  v5 = v2 & 1;
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s isVirtualDevice %i, isInternalBuild %i.", v4, 0x18u);
}

void sub_10007A454()
{
  v1[0] = 136315394;
  sub_100021190();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%s failed to get bluetooth powerState: %@", v1, 0x16u);
}

void sub_10007A4D4()
{
  v1[0] = 136315394;
  sub_100021190();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%s failed to set bluetooth powerState: %@", v1, 0x16u);
}

void sub_10007A554()
{
  v2 = 136315650;
  sub_10004A07C();
  sub_10004A090();
  sub_10004A0A4(&_mh_execute_header, v0, v1, "%s failed to set wifi powerState (powerState - [%d]) : %@", v2);
}

void sub_10007A5CC()
{
  v2 = 136315650;
  sub_10004A07C();
  sub_10004A090();
  sub_10004A0A4(&_mh_execute_header, v0, v1, "%s failed to toggle wifi in control center (autoJoin - [%d]) : %@", v2);
}

void sub_10007A644(uint64_t a1)
{
  v11 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"];
  v2 = objc_opt_class();
  sub_10004CB98(v2, v3, v4, @"NSObject+NAAdditions.h", v5, @"Expected class of %@ but was %@", v6, v7, v8, v9, v10, v11);
}

void sub_10007A6DC(os_log_t log)
{
  v1 = 136315138;
  v2 = "[HSSetupStateMachineCHIPPartnerEcosystem stepFollowingStep:withConfiguration:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s Failed to find the next step for setup flow", &v1, 0xCu);
}

void sub_10007A760(os_log_t log)
{
  v1 = 136315138;
  v2 = "[HSSetupStateMachineCHIPPartnerEcosystem stepFollowingStep:withConfiguration:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s Failed to find an index for the previous step in our sequence. Will progress to Error State", &v1, 0xCu);
}

void sub_10007AA18(void *a1, NSObject *a2)
{
  v3 = [a1 localizedDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error setting associated type: %@.  Continuing regardless", &v4, 0xCu);
}

void sub_10007AAB0(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%@ error %@", &v4, 0x16u);
}

void sub_10007ACD4()
{
  sub_100021190();
  sub_1000211A4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10007ADDC(void *a1)
{
  v1 = [a1 resumeSetupHomeUUIDString];
  sub_100021190();
  sub_10000F84C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10007AE78(void *a1)
{
  v1 = [a1 setupAccessoryDescription];
  sub_100021190();
  sub_10000F84C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_10007B028(uint64_t a1, void *a2)
{
  [a2 popupType];
  sub_1000542D4();
  sub_10000F84C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_10007B0BC(uint64_t a1, uint64_t a2)
{
  v7 = [*(a2 + 32) setupAccessoryDescription];
  sub_10000F84C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

void sub_10007B188(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 40);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to identify %@ : %@", &v4, 0x16u);
}

void sub_10007B23C(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 serviceNames];
  v6 = 134218240;
  v7 = a2;
  v8 = 2048;
  v9 = [v5 count];
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Well this isn't right, textfield is tagged with an invalid row tag: %ld, totalRows: %ld", &v6, 0x16u);
}

void sub_10007B2F0(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_1000151E8(&_mh_execute_header, a2, a3, "Error setting audio analysis classifier options setting: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10007B35C(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_1000151E8(&_mh_execute_header, a2, a3, "Error setting dropin access level setting: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10007B3C8(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_1000151E8(&_mh_execute_header, a2, a3, "Error setting audio analysis onboarding key: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10007B500()
{
  sub_1000613C0();
  sub_1000613AC();
  sub_1000245A8(&_mh_execute_header, v0, v1, "(%@:%s) Error %@ occurred when creating PKSerializedDataAccessor");
}

void sub_10007B574()
{
  sub_1000613D4();
  sub_1000613AC();
  sub_1000245A8(&_mh_execute_header, v0, v1, "(%@:%s) Error %@ occurred when fetching available wallet key encoded pass data");
}

void sub_10007B5EC()
{
  sub_1000613D4();
  sub_1000613AC();
  sub_1000245A8(&_mh_execute_header, v0, v1, "(%@:%s) Error %@ occurred when fetching existing wallet key encoded pass data");
}

void sub_10007B664()
{
  sub_1000613C0();
  v2 = "[HSPCWalletKeyViewController _setupWalletAppIconImageView]";
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "(%@:%s) Should not set up wallet app icon image view when card image view hasn't been populated yet.", v1, 0x16u);
}

void sub_10007B6E4()
{
  sub_1000613C0();
  sub_1000613AC();
  sub_1000245A8(&_mh_execute_header, v0, v1, "(%@:%s) Fetched %@ for add wallet key error for current device");
}

void sub_10007B758()
{
  sub_1000613C0();
  v2 = "[HSPCWalletKeyViewController commitConfiguration]_block_invoke";
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "(%@:%s) Continuing to next step for iPad even though error is HMHomeAddWalletKeyErrorCodeWalletAppDeleted", v1, 0x16u);
}

void sub_10007B7D8()
{
  sub_1000613C0();
  sub_1000613AC();
  sub_1000245A8(&_mh_execute_header, v0, v1, "(%@:%s) Error occurred when user tapped Continue button: %@");
}

void sub_10007B888(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[HSAccessoryPairingFuture initWithPairingContext:discoveredAccessory:accessoryAlreadyStaged:]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s immediately erroring out due to parsed error: %@", &v2, 0x16u);
}

void sub_10007B914(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 pairingController];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Cancelling the pairing controller (%@) due to the external unrecoverable error %@.", &v6, 0x16u);
}

void sub_10007B9C4(void *a1, NSObject *a2)
{
  v3 = [a1 error];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Either unable to parse the HMSetupAccessororyPayload or parsed an error from it: %@.  Immediately showing error screen", &v4, 0xCu);
}

void sub_10007BA5C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[HSPCAppleHomeUpdateRequiredViewController-commitConfiguration] Failed to open HH2 migration URL with error %@. Dismissing prox card.", &v2, 0xCu);
}