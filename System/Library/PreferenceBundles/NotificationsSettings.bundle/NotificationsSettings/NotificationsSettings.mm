void sub_3830(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_39DC;
  v14 = sub_39EC;
  v15 = objc_alloc_init(NSMutableArray);
  v3 = [WeakRetained orderedScheduledDeliveryTimes];
  v4 = [v3 count];
  if (v4)
  {
    v5 = 0;
    do
    {
      v6 = [v3 objectAtIndex:v5];
      v7 = [*(a1 + 32) _digestTimeSpecifierAtIndex:v5 forScheduleTime:v6];
      [v11[5] addObject:v7];

      ++v5;
    }

    while (v4 != v5);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_39F4;
  block[3] = &unk_4D088;
  block[6] = &v10;
  v8 = *(a1 + 32);
  block[4] = WeakRetained;
  block[5] = v8;
  dispatch_sync(&_dispatch_main_q, block);

  _Block_object_dispose(&v10, 8);
}

void sub_39B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_39DC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_39F4(uint64_t a1)
{
  [*(a1 + 32) setOrderedDigestTimeSpecifiers:*(*(*(a1 + 48) + 8) + 40)];
  [*(a1 + 32) removeSpecifierID:@"SCHEDULE_DELIVERY_TIMES_LOAD_SPINNER_ID" animated:1];
  if ([*(*(*(a1 + 48) + 8) + 40) count] <= 0xB)
  {
    v2 = [NSMutableArray arrayWithArray:*(*(*(a1 + 48) + 8) + 40)];
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;

    v5 = [*(a1 + 40) _specifierForAddNewScheduledTime];
    [*(*(*(a1 + 48) + 8) + 40) addObject:v5];
  }

  [*(a1 + 32) insertContiguousSpecifiers:*(*(*(a1 + 48) + 8) + 40) afterSpecifierID:@"SCHEDULE_DELIVERY_TIMES_GROUP_ID" animated:1];
  v6 = *(a1 + 32);

  return [v6 setPopulatingDigestTimeSpecifiers:0];
}

void sub_4E38(uint64_t a1)
{
  v2 = objc_alloc_init(ATXDigestSetupFlowClient);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_4F04;
  v3[3] = &unk_4D128;
  objc_copyWeak(&v4, (a1 + 40));
  v3[4] = *(a1 + 32);
  [v2 appsSortedByNotificationsReceivedInPreviousNumDaysRaw:&off_513C0 completionHandler:v3];
  objc_destroyWeak(&v4);
}

void sub_4F04(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_4FC8;
  v9[3] = &unk_4D100;
  objc_copyWeak(v12, (a1 + 40));
  v12[1] = a4;
  v7 = *(a1 + 32);
  v10 = v6;
  v11 = v7;
  v8 = v6;
  dispatch_sync(&_dispatch_main_q, v9);

  objc_destroyWeak(v12);
}

void sub_4FC8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setLoadedSortOrderByNumberOfNotifications:1];
  if (*(a1 + 32))
  {
    [WeakRetained setRankedDigestSetupResponses:?];
    [WeakRetained setNumberOfDaysForNotificationCount:*(a1 + 56)];
    v2 = [*(a1 + 32) firstObject];
    [WeakRetained setMaximumAverageNumberOfNotifications:{7 * objc_msgSend(v2, "numBasicNotifications") / objc_msgSend(*(a1 + 40), "numberOfDaysForNotificationCount")}];

    [WeakRetained reloadSpecifiers];
  }
}

BOOL sub_50E8(id a1, BBSectionInfo *a2)
{
  v2 = a2;
  if ([(BBSectionInfo *)v2 authorizationStatus]== &dword_0 + 1 || ![(BBSectionInfo *)v2 scheduledDeliverySetting]|| ([(BBSectionInfo *)v2 suppressFromSettings]& 1) != 0)
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = [(BBSectionInfo *)v2 isRestricted]^ 1;
  }

  return v3;
}

int64_t sub_515C(id a1, BBSectionInfo *a2, BBSectionInfo *a3)
{
  v4 = a3;
  v5 = BBSettingsDisplayNameForBBSection(a2);
  v6 = BBSettingsDisplayNameForBBSection(v4);

  v7 = [v5 localizedStandardCompare:v6];
  return v7;
}

void sub_52AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_537C;
  v9[3] = &unk_4D1D0;
  v5 = v3;
  v10 = v5;
  v6 = [v4 indexOfObjectPassingTest:v9];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = *(a1 + 40);
    v8 = [*(a1 + 32) objectAtIndex:v6];
    [v7 addObject:v8];
  }
}

id sub_537C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 bundleId];
  v5 = [v3 sectionID];

  v6 = [v4 isEqualToString:v5];
  return v6;
}

id sub_5500(uint64_t a1, void *a2)
{
  v3 = [a2 bundleId];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

id sub_67E4(uint64_t a1, void *a2)
{
  v3 = [a2 sectionID];
  v4 = [*(a1 + 32) sectionID];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

void sub_6B78(uint64_t a1)
{
  v2 = [*(a1 + 32) specifiers];
  v3 = [*(a1 + 40) sectionID];
  v5 = [v2 specifierForID:v3];

  if (v5)
  {
    v4 = [v5 propertyForKey:@"BBSECTION_INFO_KEY"];
    if (([v4 isEqual:*(a1 + 40)] & 1) == 0)
    {
      [*(a1 + 32) _updateStoredSectionsWithSectionInfo:*(a1 + 40)];
      [v5 setProperty:*(a1 + 40) forKey:@"BBSECTION_INFO_KEY"];
      [*(a1 + 32) reloadSpecifier:v5];
    }
  }

  else if ([*(a1 + 40) isAppClip])
  {
    [*(a1 + 32) reloadSpecifiers];
  }
}

void sub_6CA8(id a1)
{
  v1 = objc_alloc_init(NCAssistantPreferencesController);
  v2 = qword_5C568;
  qword_5C568 = v1;

  _objc_release_x1(v1, v2);
}

void sub_6EC8(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 addObject:*(a1 + 40)];
}

void sub_6FD0(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 removeObject:*(a1 + 40)];
}

void sub_70E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_7100(uint64_t a1)
{
  result = [*(a1 + 32) cachedCarPlayAnnounceEnablementType];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_724C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_7264(uint64_t a1)
{
  result = [*(a1 + 32) cachedAnnounceNotificationsInCarPlayTemporarilyDisabled];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_73C0(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v1 = +[AFPreferences sharedPreferences];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_752C;
  v5[3] = &unk_4D338;
  objc_copyWeak(&v6, &location);
  [v1 getAnnounceNotificationsInCarPlayTypeWithCompletion:v5];

  v2 = +[AFPreferences sharedPreferences];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_7580;
  v3[3] = &unk_4D360;
  objc_copyWeak(&v4, &location);
  [v2 getAnnounceNotificationsInCarPlayTemporarilyDisabledWithCompletion:v3];

  objc_destroyWeak(&v4);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void sub_74F4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_752C(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained _updateCarPlayAnnounceEnablementType:a2];
    WeakRetained = v4;
  }
}

void sub_7580(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained _updateAnnounceNotificationsInCarPlayTemporarilyDisabled:a2];
    WeakRetained = v4;
  }
}

id sub_766C(uint64_t a1)
{
  result = [*(a1 + 32) cachedAnnounceNotificationsInCarPlayTemporarilyDisabled];
  if (*(a1 + 40) != result)
  {
    [*(a1 + 32) setCachedAnnounceNotificationsInCarPlayTemporarilyDisabled:?];
    v3 = *(a1 + 32);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_770C;
    v4[3] = &unk_4D3B0;
    v4[4] = v3;
    v5 = *(a1 + 40);
    return [v3 _notifyObserversOfSettingsChangeWithBlock:v4];
  }

  return result;
}

id sub_77B0(uint64_t a1)
{
  result = [*(a1 + 32) cachedCarPlayAnnounceEnablementType];
  if (result != *(a1 + 40))
  {
    [*(a1 + 32) setCachedCarPlayAnnounceEnablementType:?];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_7848;
    v4[3] = &unk_4D400;
    v3 = *(a1 + 40);
    v5 = *(a1 + 32);
    v6 = v3;
    return [v5 _notifyObserversOfSettingsChangeWithBlock:v4];
  }

  return result;
}

unint64_t sub_8480(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) delegate];
  v5 = [v4 priorityNotificationsDetailController:*(a1 + 32) shouldShowSection:v3];

  if (v5)
  {
    v5 = [v3 prioritizationSetting] != 0;
  }

  return v5;
}

int64_t sub_84F0(id a1, BBSectionInfo *a2, BBSectionInfo *a3)
{
  v4 = a3;
  v5 = BBSettingsDisplayNameForBBSection(a2);
  v6 = BBSettingsDisplayNameForBBSection(v4);

  v7 = [v5 localizedStandardCompare:v6];
  return v7;
}

id sub_94F8(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:0.0];
}

unint64_t sub_A258(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) delegate];
  v5 = [v4 summarizePreviewsDetailController:*(a1 + 32) shouldShowSection:v3];

  if (v5)
  {
    v5 = [v3 summarizationSetting] != 0;
  }

  return v5;
}

int64_t sub_A2C8(id a1, BBSectionInfo *a2, BBSectionInfo *a3)
{
  v4 = a3;
  v5 = BBSettingsDisplayNameForBBSection(a2);
  v6 = BBSettingsDisplayNameForBBSection(v4);

  v7 = [v5 localizedStandardCompare:v6];
  return v7;
}

void sub_A5F0(id *a1)
{
  if ([a1[4] effectiveGlobalSummarizationSetting] == &dword_0 + 2)
  {
    v2 = [a1[5] specifiers];
    v3 = [a1[6] sectionID];
    v6 = [v2 specifierForID:v3];

    v4 = v6;
    if (v6)
    {
      v5 = [v6 propertyForKey:@"BBSECTION_INFO_KEY"];
      if (([v5 isEqual:a1[6]] & 1) == 0)
      {
        [v6 setProperty:a1[6] forKey:@"BBSECTION_INFO_KEY"];
        [a1[5] reloadSpecifier:v6];
      }

      v4 = v6;
    }
  }
}

void sub_A748(id a1)
{
  v1 = objc_alloc_init(NCSettingsGatewayController);
  v2 = qword_5C570;
  qword_5C570 = v1;

  _objc_release_x1(v1, v2);
}

void sub_AD58(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = [*(a1 + 40) sectionID];
  v4 = [v2 sectionInfoForSectionID:v3];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(*(a1 + 32) + 32);
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 settingsGateway:*(a1 + 32) didUpdateSectionInfo:{v4, v11}];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

void sub_AF24(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = *(*(a1 + 32) + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 settingsGatewayDidUpdateGlobalSettings:{*(a1 + 32), v8}];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

uint64_t NCIsSystemApertureAvailable(uint64_t a1, uint64_t a2)
{
  if (qword_5C588 != -1)
  {
    sub_32BA0();
  }

  return byte_5C580;
}

void sub_B0DC(id a1)
{
  byte_5C580 = MGGetBoolAnswer();
  if (+[FBSDeviceEmulationConfiguration isEmulatedDevice])
  {
    v1 = +[FBSDeviceEmulationConfiguration emulatedArtworkSubtype];
    if (v1 >= 1)
    {
      v3 = v1 == &stru_9C0.nreloc || v1 == &stru_AB0.nreloc;
      byte_5C580 = v3;
    }
  }
}

BOOL sub_E338(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 suppressedSettings];
  v5 = [v3 pushSettings];

  return (*(a1 + 32) & v4) == 0 && (*(a1 + 40) & v5) != 0;
}

BOOL sub_EB38(id a1, BBSectionInfo *a2)
{
  v2 = a2;
  v3 = [(BBSectionInfo *)v2 suppressedSettings];
  v4 = [(BBSectionInfo *)v2 suppressedSettings];
  if (([(BBSectionInfo *)v2 suppressedSettings]& 0x20) != 0)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = ([(BBSectionInfo *)v2 pushSettings]>> 2) & 1;
  }

  v6 = ((v4 & 1) == 0) | v5;
  if ((v3 & 2) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

BOOL sub_EE0C(id a1, BBSectionInfo *a2)
{
  v2 = a2;
  if (([(BBSectionInfo *)v2 suppressedSettings]& 0x20) != 0)
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = ([(BBSectionInfo *)v2 pushSettings]>> 2) & 1;
  }

  return v3;
}

BOOL sub_F094(id a1, BBSectionInfo *a2)
{
  v2 = a2;
  v3 = [(BBSectionInfo *)v2 suppressedSettings];
  v4 = [(BBSectionInfo *)v2 pushSettings];

  return (v3 & 0x20) == 0 && (v4 & 4) != 0;
}

void sub_F2F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_F310(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_11774(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 176);
  v3 = *(a1 + 40);
  v4 = [v2 sectionID];
  v5 = [v3 sectionID];
  v6 = BSEqualStrings();

  if (v6)
  {
    v7 = [v2 parentSection];

    if (v7)
    {
      v8 = [v3 subsections];
      v13 = _NSConcreteStackBlock;
      v14 = 3221225472;
      v15 = sub_11928;
      v16 = &unk_4D660;
      v17 = v2;
      v18 = v3;
      v3 = [v8 bs_firstObjectPassingTest:&v13];
    }

    if (([v2 isEqual:{v3, v13, v14, v15, v16}] & 1) == 0)
    {
      v9 = [v2 alertType];
      if (v9 == [v3 alertType] && (v10 = objc_msgSend(v2, "notificationCenterSetting"), v10 == objc_msgSend(v3, "notificationCenterSetting")))
      {
        v11 = [v2 lockScreenSetting];
        v12 = v11 == [v3 lockScreenSetting];
      }

      else
      {
        v12 = 0;
      }

      [*(a1 + 32) _updateSpecifiersWithSectionInfo:v3 reloadRootSpecifier:v12];
    }
  }
}

uint64_t sub_11928(uint64_t a1)
{
  v2 = [*(a1 + 32) subsectionID];
  v3 = [*(a1 + 40) subsectionID];
  v4 = BSEqualStrings();

  return v4;
}

void sub_12348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_12364(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 24);
  result = [a2 sizeThatFits:{*(a1 + 40), *(a1 + 56)}];
  if (v3 >= v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  *(*(*(a1 + 32) + 8) + 24) = v6;
  return result;
}

void **sub_124C4(void **result, void *a2)
{
  if (result[4] != a2)
  {
    return [a2 setSelected:0];
  }

  return result;
}

void sub_125EC(uint64_t a1, void *a2)
{
  v3 = [a2 unsignedIntegerValue];
  v7 = [NCNotificationListDisplayStyleSelectionView notificationListDisplayStyleSelectionViewOfType:v3];
  [v7 setDelegate:*(a1 + 32)];
  [*(a1 + 32) addSubview:v7];
  [*(a1 + 40) addObject:v7];
  v4 = [*(a1 + 32) specifier];
  v5 = [v4 performGetter];

  v6 = [v5 unsignedIntegerValue];
  if (v6 == [*(a1 + 32) _notificationListDisplayStyleSettingForSelectionType:v3])
  {
    [v7 setSelected:1];
  }
}

void sub_12810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_14584(id a1)
{
  v1 = [[NSSet alloc] initWithObjects:{@"com.apple.mobiletimer", @"com.apple.Home", @"com.apple.reminders", @"com.apple.mobilephone", @"com.apple.facetime", @"com.apple.mobilecal", 0}];
  v2 = qword_5C590;
  qword_5C590 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t BBSectionShouldShowInNotificationCenter(void *a1)
{
  v1 = a1;
  if ([v1 allowsNotifications])
  {
    if ([v1 suppressedSettings] && ((objc_msgSend(v1, "suppressedSettings") & 1) == 0 || (objc_msgSend(v1, "subsections"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "count"), v2, v3)))
    {
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      v4 = [v1 subsections];
      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        v6 = *v10;
        while (2)
        {
          for (i = 0; i != v5; ++i)
          {
            if (*v10 != v6)
            {
              objc_enumerationMutation(v4);
            }

            if ([*(*(&v9 + 1) + 8 * i) notificationCenterSetting] == &dword_0 + 2)
            {
              v5 = 1;
              goto LABEL_17;
            }
          }

          v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
          if (v5)
          {
            continue;
          }

          break;
        }
      }

LABEL_17:
    }

    else
    {
      v5 = [v1 notificationCenterSetting] == &dword_0 + 2;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_156AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_156CC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

int64_t sub_18654(id a1, id a2, id a3)
{
  v4 = a3;
  v5 = BBSettingsDisplayNameForBBSection(a2);
  v6 = BBSettingsDisplayNameForBBSection(v4);

  v7 = [v5 localizedStandardCompare:v6];
  return v7;
}

void sub_194CC(uint64_t a1)
{
  v2 = objc_opt_new();
  [v2 setSpecifier:*(a1 + 32)];
  [*(a1 + 40) showController:v2 animate:1];
}

void sub_19530(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_19600;
  block[3] = &unk_4D7B8;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v11 = v6;
  v12 = v7;
  v15 = a2;
  v13 = v5;
  v14 = v8;
  v9 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_19600(uint64_t a1)
{
  [*(a1 + 32) setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
  [*(a1 + 40) reloadSpecifier:*(a1 + 32)];
  if (*(a1 + 64) == 1)
  {
    v2 = *(*(a1 + 56) + 16);

    v2();
  }

  else
  {
    v3 = NCLogAppProtection;
    if (os_log_type_enabled(NCLogAppProtection, OS_LOG_TYPE_ERROR))
    {
      sub_32CC0(a1, v3);
    }
  }
}

id sub_19B6C(uint64_t a1, void *a2)
{
  v3 = [a2 sectionID];
  v4 = [*(a1 + 32) sectionID];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

id sub_19CDC(uint64_t a1, void *a2)
{
  v3 = [a2 sectionID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void sub_19E9C(uint64_t a1)
{
  v2 = [*(a1 + 32) specifiers];
  v3 = [*(a1 + 40) sectionID];
  v5 = [v2 specifierForID:v3];

  if (v5)
  {
    v4 = [v5 propertyForKey:@"BBSECTION_INFO_KEY"];
    if (([v4 isEqual:*(a1 + 40)] & 1) == 0)
    {
      [*(a1 + 32) _updateStoredSectionsWithSectionInfo:*(a1 + 40)];
      [v5 setProperty:*(a1 + 40) forKey:@"BBSECTION_INFO_KEY"];
    }

    [*(a1 + 32) reloadSpecifier:v5];
  }
}

id sub_1A064(uint64_t a1)
{
  NSLog(@"AppProtectionSubjectsChanged, reloading list");
  v2 = *(a1 + 32);

  return [v2 _reloadSections];
}

void NCRegisterNCNotificationsSettingsLogging(uint64_t result, uint64_t a2)
{
  if (qword_5C5A8[0] != -1)
  {
    sub_32D68();
  }
}

void sub_1A700(id a1)
{
  v1 = os_log_create(NCLogSubsystem, "EmergencyAlerts");
  v2 = NCLogEmergencyAlerts;
  NCLogEmergencyAlerts = v1;

  v3 = os_log_create(NCLogSubsystem, "AppProtection");
  v4 = NCLogAppProtection;
  NCLogAppProtection = v3;

  _objc_release_x1(v3, v4);
}

id BBSettingsDisplayNameForBBSection(void *a1)
{
  v1 = a1;
  v2 = [v1 displayName];
  if ([v2 length])
  {
    [v1 displayName];
  }

  else
  {
    [v1 appName];
  }
  v3 = ;

  return v3;
}

id NCDetailStringForCustomToneSpecifier(void *a1)
{
  v1 = a1;
  v2 = [v1 propertyForKey:@"alertType"];
  if (v2)
  {
    v3 = TLAlertTypeFromString();
    v4 = [v1 propertyForKey:@"accountIdentifier"];
    v5 = +[TLToneManager sharedToneManager];
    v6 = [v5 currentToneIdentifierForAlertType:v3 topic:v4];
    v7 = [v5 nameForToneIdentifier:v6];
    if ([v6 isEqualToString:TLToneIdentifierNone] && MGGetBoolAnswer())
    {
      v8 = +[TLVibrationManager sharedVibrationManager];
      v9 = [v8 currentVibrationIdentifierForAlertType:v3 topic:v4];
      if (([v9 isEqualToString:TLVibrationIdentifierNone] & 1) == 0)
      {
        v10 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
        v11 = [v10 localizedStringForKey:@"VIBRATE_ONLY" value:&stru_4E3F0 table:@"NotificationsSettings"];

        v7 = v11;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id NCStringForScheduledDeliveryTime(void *a1)
{
  v1 = a1;
  v2 = +[NSCalendar currentCalendar];
  v3 = objc_alloc_init(NSDateFormatter);
  v4 = +[NSLocale currentLocale];
  v5 = [NSDateFormatter dateFormatFromTemplate:@"j" options:0 locale:v4];

  v6 = @"jmm";
  if ([v5 rangeOfString:@"a"] != 0x7FFFFFFFFFFFFFFFLL && !objc_msgSend(v1, "minute"))
  {
    v6 = @"j";
  }

  [v3 setLocalizedDateFormatFromTemplate:v6];
  v7 = [v2 dateFromComponents:v1];

  v8 = [v3 stringFromDate:v7];

  return v8;
}

id NCStringForScheduledDeliverySummary(uint64_t a1, void *a2)
{
  v3 = a2;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1B03C;
  v24 = sub_1B04C;
  v4 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
  v25 = [v4 localizedStringForKey:@"OFF" value:&stru_4E3F0 table:@"NotificationsSettings"];

  if (a1 != 2)
  {
    v6 = v3;
    goto LABEL_9;
  }

  v5 = v21[5];
  v21[5] = &stru_4E3F0;

  v6 = [v3 sortedArrayUsingComparator:&stru_4D840];

  v7 = [v6 count];
  if (v7 == &dword_0 + 2)
  {
    v11 = [v6 objectAtIndex:0];
    v8 = NCStringForScheduledDeliveryTime(v11);

    v12 = [v6 objectAtIndex:1];
    v10 = NCStringForScheduledDeliveryTime(v12);

    v13 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v14 = [v13 localizedStringForKey:@"SCHEDULED_DELIVERY_TIMES_CONJUNCTION" value:&stru_4E3F0 table:@"NotificationsSettings"];
    v15 = [NSString stringWithFormat:v14, v8, v10];
    v16 = v21[5];
    v21[5] = v15;

    goto LABEL_7;
  }

  if (v7 == &dword_0 + 1)
  {
    v8 = [v6 objectAtIndex:0];
    v9 = NCStringForScheduledDeliveryTime(v8);
    v10 = v21[5];
    v21[5] = v9;
LABEL_7:

    goto LABEL_9;
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1B100;
  v19[3] = &unk_4D868;
  v19[4] = &v20;
  [v6 enumerateObjectsUsingBlock:v19];
LABEL_9:
  v17 = v21[5];
  _Block_object_dispose(&v20, 8);

  return v17;
}

void sub_1B018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B03C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

int64_t sub_1B054(id a1, NSDateComponents *a2, NSDateComponents *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(NSDateComponents *)v4 hour];
  if (v6 >= [(NSDateComponents *)v5 hour])
  {
    v8 = [(NSDateComponents *)v4 hour];
    if (v8 == [(NSDateComponents *)v5 hour])
    {
      v9 = [(NSDateComponents *)v4 minute];
      if (v9 < [(NSDateComponents *)v5 minute])
      {
        v7 = -1;
      }

      else
      {
        v7 = 1;
      }
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

void sub_1B100(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = a2;
  if (a3)
  {
    v5 = *(*(*(a1 + 32) + 8) + 40);
    v6 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v7 = [v6 localizedStringForKey:@"SEPERATOR" value:&stru_4E3F0 table:@"NotificationsSettings"];
    v8 = [v5 stringByAppendingString:v7];
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  v11 = *(*(*(a1 + 32) + 8) + 40);
  v12 = NCStringForScheduledDeliveryTime(v16);
  v13 = [v11 stringByAppendingString:v12];
  v14 = *(*(a1 + 32) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;
}

void NCSetAllowNotificationsDuringScreenSharing(uint64_t a1)
{
  CFPreferencesSetAppValue(@"SBAllowNotificationsDuringScreenSharing", [NSNumber numberWithBool:a1], @"com.apple.springboard");
  CFPreferencesAppSynchronize(@"com.apple.springboard");
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:kNCScreenSharingSettingChangedNotification object:0];
}

__CFString *NCDeviceTypePrefix()
{
  v0 = +[BSPlatform sharedInstance];
  v1 = [v0 deviceClass];

  v2 = @"iphone";
  v3 = @"ipad";
  if (v1 == 2)
  {
    v2 = @"ipad";
  }

  v4 = v2;
  if (v1 != 2)
  {
    v5 = +[BSPlatform sharedInstance];
    v6 = [v5 homeButtonType];

    if (v6 == &dword_0 + 2)
    {
      if (MGIsDeviceOfType() & 1) != 0 || (v7 = MGIsDeviceOfType(), (v7))
      {
        v9 = @"D6x";
      }

      else
      {
        v9 = NCIsSystemApertureAvailable(v7, v8) ? @"D7x" : @"D5x";
      }
    }

    else
    {
      v9 = @"D20";
    }

    v3 = @"iphone";
    if (([(__CFString *)v9 isEqualToString:&stru_4E3F0]& 1) == 0)
    {
      v3 = [NSString stringWithFormat:@"%@-%@", @"iphone", v9];
    }
  }

  return v3;
}

id NCLockScreenTimeAttributedStringWithFont()
{
  v0 = +[BSPlatform sharedInstance];
  if ([v0 homeButtonType] == &dword_0 + 2)
  {
    v1 = 11.0;
  }

  else
  {
    v1 = 10.0;
  }

  v2 = CTFontCreateWithNameAndOptions(@".SFSoftTime-Semibold", v1, 0, 0x20000uLL);
  v3 = +[UIColor systemGrayColor];
  v4 = objc_alloc_init(NSDateComponents);
  [v4 setHour:9];
  [v4 setMinute:41];
  [v4 setSecond:0];
  v5 = +[NSCalendar currentCalendar];
  v6 = [v5 dateFromComponents:v4];
  v7 = objc_alloc_init(NSDateFormatter);
  [v7 setLocalizedDateFormatFromTemplate:@"Jmm"];
  v8 = [v7 stringFromDate:v6];
  v9 = [NSAttributedString alloc];
  v13[0] = NSFontAttributeName;
  v13[1] = NSForegroundColorAttributeName;
  v14[0] = v2;
  v14[1] = v3;
  v10 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
  v11 = [v9 initWithString:v8 attributes:v10];

  return v11;
}

id NCDeviceImageWithDefaultSystemClock(void *a1)
{
  v1 = a1;
  v2 = NCLockScreenTimeAttributedStringWithFont();
  [v2 size];
  v3 = +[BSPlatform sharedInstance];
  [v3 deviceClass];
  v4 = +[BSPlatform sharedInstance];
  [v4 homeButtonType];

  [v1 size];
  v6 = v5;
  v8 = v7;
  UIRectCenteredXInRect();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = +[UIScreen mainScreen];
  [v17 scale];
  v19 = v18;
  v23.width = v6;
  v23.height = v8;
  UIGraphicsBeginImageContextWithOptions(v23, 0, v19);

  if (UIGraphicsGetCurrentContext())
  {
    [v1 drawAtPoint:{CGPointZero.x, CGPointZero.y}];
    [v2 drawInRect:{v10, v12, v14, v16}];
    v20 = UIGraphicsGetImageFromCurrentImageContext();

    v1 = v20;
  }

  return v1;
}

uint64_t _NCAreGenerativeModelsAvailable(void *a1)
{
  v5 = a1;
  v1 = a1;
  v2 = [NSArray arrayWithObjects:&v5 count:1];
  v3 = [GMAvailabilityWrapper currentWithUseCaseIdentifiers:v2, v5];

  if (v3 < 3)
  {
    return 1u >> (v3 & 7);
  }

  else
  {
    return 0;
  }
}

BOOL AlertDeliveryLocationTypeShouldBeHiddenForDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1 == 2)
  {
    v5 = [v3 bannerSetting];
  }

  else if (a1 == 1)
  {
    v5 = [v3 notificationCenterSetting];
  }

  else
  {
    if (a1)
    {
      v6 = 0;
      goto LABEL_9;
    }

    v5 = [v3 lockScreenSetting];
  }

  v6 = v5 == 0;
LABEL_9:

  return v6;
}

id sub_1D7CC(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 _setGlobalAnnounceSetting:2];
  }

  else
  {
    return [v2 reloadSpecifier:v2[17] animated:1];
  }
}

void sub_1DB80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DB9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (a3)
  {
    [WeakRetained didCancelEnteringPIN];
  }

  else
  {
    [WeakRetained didAcceptEnteredPIN];
  }
}

BOOL sub_1E484(id a1, BBSectionInfo *a2)
{
  v2 = a2;
  if ([(BBSectionInfo *)v2 announceSetting]&& ([(BBSectionInfo *)v2 suppressFromSettings]& 1) == 0)
  {
    v3 = [(BBSectionInfo *)v2 isRestricted]^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

int64_t sub_1E4D8(id a1, BBSectionInfo *a2, BBSectionInfo *a3)
{
  v4 = a3;
  v5 = BBSettingsDisplayNameForBBSection(a2);
  v6 = BBSettingsDisplayNameForBBSection(v4);

  v7 = [v5 localizedStandardCompare:v6];
  return v7;
}

BOOL sub_21B70(id a1, BBSectionInfo *a2)
{
  v2 = [(BBSectionInfo *)a2 subsectionID];
  v3 = [v2 isEqualToString:@"com.apple.mobilemail.bulletin-subsection.VIP"];

  return v3;
}

BOOL sub_21BB4(id a1, BBSectionInfo *a2)
{
  v2 = [(BBSectionInfo *)a2 subsectionID];
  v3 = [v2 isEqualToString:@"com.apple.mobilemail.bulletin-subsection.FavoriteMailboxes"];

  return v3;
}

BOOL sub_21BF8(id a1, BBSectionInfo *a2)
{
  v2 = [(BBSectionInfo *)a2 subsectionID];
  v3 = [v2 isEqualToString:@"com.apple.mobilemail.bulletin-subsection.ThreadNotify"];

  return v3;
}

BOOL sub_21C3C(id a1, BBSectionInfo *a2)
{
  v2 = [(BBSectionInfo *)a2 subsectionID];
  v3 = [v2 isEqualToString:@"com.apple.mobilemail.bulletin-subsection.RemindMe"];

  return v3;
}

BOOL sub_21C80(id a1, BBSectionInfo *a2)
{
  v2 = [(BBSectionInfo *)a2 subsectionID];
  v3 = [v2 isEqualToString:@"com.apple.mobilemail.bulletin-subsection.PrimaryInbox"];

  return v3;
}

BOOL sub_21CC4(id a1, BBSectionInfo *a2)
{
  v2 = [(BBSectionInfo *)a2 subsectionID];
  v3 = [v2 isEqualToString:@"com.apple.mobilemail.bulletin-subsection.PrimaryMessages"];

  return v3;
}

BOOL sub_21D08(id a1, BBSectionInfo *a2)
{
  v2 = [(BBSectionInfo *)a2 subsectionID];
  v3 = [v2 isEqualToString:@"com.apple.mobilemail.bulletin-subsection.AllMessages"];

  return v3;
}

unint64_t sub_237E8(unsigned __int8 a1)
{
  v1 = 0x535F52454E4E4142;
  v2 = 0xD000000000000013;
  v3 = 0xD00000000000001CLL;
  if (a1 != 3)
  {
    v3 = 0x6D6F74737563;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0xD000000000000013;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_238A0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000013;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0xD000000000000013;
    }

    else
    {
      v5 = 0x535F52454E4E4142;
    }

    if (v3)
    {
      v4 = 0x8000000000045BC0;
    }

    else
    {
      v4 = 0xEF44495F454C5954;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x8000000000045BE0;
    v5 = 0xD000000000000013;
  }

  else if (a1 == 3)
  {
    v4 = 0x8000000000045C00;
    v5 = 0xD00000000000001CLL;
  }

  else
  {
    v4 = 0xE600000000000000;
    v5 = 0x6D6F74737563;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x8000000000045BC0;
    }

    else
    {
      v2 = 0x535F52454E4E4142;
      v6 = 0xEF44495F454C5954;
    }

    if (v5 != v2)
    {
      goto LABEL_28;
    }
  }

  else if (a2 == 2)
  {
    v6 = 0x8000000000045BE0;
    if (v5 != 0xD000000000000013)
    {
      goto LABEL_28;
    }
  }

  else if (a2 == 3)
  {
    v6 = 0x8000000000045C00;
    if (v5 != 0xD00000000000001CLL)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
    if (v5 != 0x6D6F74737563)
    {
LABEL_28:
      v7 = sub_3338C();
      goto LABEL_29;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_28;
  }

  v7 = 1;
LABEL_29:

  return v7 & 1;
}

Swift::Int sub_23A3C()
{
  sub_333AC();
  sub_330BC();

  return sub_333DC();
}

uint64_t sub_23B30(uint64_t a1)
{
  sub_330BC();
}

Swift::Int sub_23C10(uint64_t a1)
{
  sub_333AC();
  sub_330BC();

  return sub_333DC();
}

unint64_t sub_23D00@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23DE0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_23D30(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF44495F454C5954;
  v4 = 0x535F52454E4E4142;
  v5 = 0xD000000000000013;
  v6 = 0x8000000000045BE0;
  v7 = 0x8000000000045C00;
  v8 = 0xD00000000000001CLL;
  if (v2 != 3)
  {
    v8 = 0x6D6F74737563;
    v7 = 0xE600000000000000;
  }

  if (v2 != 2)
  {
    v5 = v8;
    v6 = v7;
  }

  if (*v1)
  {
    v4 = 0xD000000000000013;
    v3 = 0x8000000000045BC0;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = v6;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_23DE0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_4DB00;
  v6._object = a2;
  v4 = sub_3337C(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_23E30()
{
  result = qword_5C1D0;
  if (!qword_5C1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5C1D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NotificationSettingsPerAppSpecifierIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NotificationSettingsPerAppSpecifierIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

Swift::Void __swiftcall UIViewController.settingsNavigationProxy_popToRoot()()
{
  v1 = v0;
  v2 = sub_32FDC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 traitCollection];
  sub_331FC();

  LOBYTE(v6) = sub_32FBC();
  v7 = *(v3 + 8);
  v7(v5, v2);
  if (v6)
  {
    v8 = [v1 traitCollection];
    sub_331FC();

    sub_32FCC();
    v7(v5, v2);
  }

  else
  {
    v9 = [v1 navigationController];
    if (v9)
    {
      v10 = v9;
    }
  }
}

id sub_241F0()
{
  v0 = objc_allocWithZone(BulletinBoardController);

  return [v0 init];
}

id sub_24228()
{
  v0 = objc_allocWithZone(BulletinBoardAppDetailController);

  return [v0 init];
}

id sub_24260()
{
  v0 = objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay);

  return [v0 init];
}

uint64_t sub_24298@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v64 = a4;
  v63 = sub_249EC(&qword_5C1D8, &qword_3BA20) - 8;
  __chkstk_darwin(v63);
  v62 = &v52 - v7;
  v61 = sub_249EC(&qword_5C1E0, &qword_3BA28);
  v70 = *(v61 - 8);
  v8 = __chkstk_darwin(v61);
  v60 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v68 = &v52 - v10;
  v67 = sub_249EC(&qword_5C1E8, &qword_3BA30);
  v58 = *(v67 - 8);
  __chkstk_darwin(v67);
  v12 = &v52 - v11;
  v59 = sub_249EC(&qword_5C1F0, &qword_3BA38);
  v69 = *(v59 - 8);
  v13 = __chkstk_darwin(v59);
  v66 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v65 = &v52 - v15;
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v57 = a1;
  v56 = a2;
  v55 = a3;
  v54 = sub_249EC(&qword_5C1F8, &qword_3BA40);
  v53 = sub_25080(&qword_5C200, &qword_3BA48);
  v52 = sub_25080(&qword_5C208, &qword_3BA50);
  v17 = sub_25080(&qword_5C210, &qword_3BA58);
  v18 = sub_2866C(255, &qword_5C218, BBSectionInfo_ptr);
  v19 = sub_25080(&qword_5C220, &qword_3BA60);
  v20 = sub_32DDC();
  v21 = sub_284B4(&qword_5C228, &type metadata accessor for PreferencesControllerView, &protocol conformance descriptor for PreferencesControllerView);
  v75 = v20;
  v76 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = sub_250C8();
  v24 = sub_280BC(&qword_5C238, &qword_5C220, &qword_3BA60, &protocol conformance descriptor for IDView<A, B>);
  v75 = v17;
  v76 = v18;
  v77 = v19;
  v78 = OpaqueTypeConformance2;
  v79 = v23;
  v80 = v24;
  v25 = swift_getOpaqueTypeConformance2();
  v26 = sub_25130();
  v27 = sub_280BC(&qword_5C248, &qword_5C208, &qword_3BA50, &protocol conformance descriptor for IDView<A, B>);
  v75 = v53;
  v76 = &type metadata for NotificationSettingsPerAppDrillInItem;
  v77 = v52;
  v78 = v25;
  v79 = v26;
  v80 = v27;
  swift_getOpaqueTypeConformance2();
  sub_3303C();
  v28 = swift_allocObject();
  v29 = v57;
  v30 = v56;
  v28[2] = v57;
  v28[3] = v30;
  v31 = v55;
  v28[4] = v55;
  v54 = &protocol conformance descriptor for SettingsPane<A>;
  v32 = sub_280BC(&qword_5C250, &qword_5C1E8, &qword_3BA30, &protocol conformance descriptor for SettingsPane<A>);
  v33 = v29;
  v34 = v30;
  v35 = v31;
  v36 = v65;
  v37 = v67;
  sub_32FEC();
  (*(v58 + 8))(v12, v37);
  v38 = v68;
  sub_3304C();
  v39 = *(v69 + 16);
  v40 = v66;
  v41 = v59;
  v39(v66, v36, v59);
  v42 = *(v70 + 16);
  v44 = v60;
  v43 = v61;
  v42(v60, v38, v61);
  v75 = v67;
  v76 = v32;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = v62;
  v39(v62, v40, v41);
  v75 = v46;
  v47 = sub_280BC(&qword_5C258, &qword_5C1E0, &qword_3BA28, v54);
  v48 = &v46[*(v63 + 56)];
  v42(v48, v44, v43);
  v76 = v48;
  v73 = v41;
  v74 = v43;
  v71 = v45;
  v72 = v47;
  sub_32F8C();
  v49 = *(v70 + 8);
  v49(v68, v43);
  v50 = *(v69 + 8);
  v50(v65, v41);
  v49(v44, v43);
  return (v50)(v66, v41);
}

uint64_t sub_249EC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_24A34@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v45 = a1;
  v46 = a2;
  v53 = a4;
  v5 = sub_32E2C();
  __chkstk_darwin(v5 - 8);
  v6 = sub_32DDC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_249EC(&qword_5C210, &qword_3BA58);
  v48 = *(v10 - 8);
  v49 = v10;
  __chkstk_darwin(v10);
  v54 = &v44 - v11;
  v12 = sub_249EC(&qword_5C200, &qword_3BA48);
  v51 = *(v12 - 8);
  v52 = v12;
  __chkstk_darwin(v12);
  v50 = &v44 - v13;
  sub_2866C(0, &qword_5C378, off_4C8E0);
  v14 = [objc_allocWithZone(PSSpecifier) init];
  v47 = a3;
  [v14 setProperty:a3 forKey:PSListControllerCellHighlightingSelectionInvocationRelayKey];
  sub_32DEC();
  sub_32DCC();
  sub_32F2C();
  sub_3309C();
  sub_2866C(0, &qword_5C318, NSBundle_ptr);
  if (!sub_3320C())
  {
    v15 = [objc_opt_self() mainBundle];
  }

  v16 = sub_32F3C();
  v18 = v17;
  v20 = v19;
  v21 = sub_284B4(&qword_5C228, &type metadata accessor for PreferencesControllerView, &protocol conformance descriptor for PreferencesControllerView);
  sub_32F4C();
  sub_28104(v16, v18, v20 & 1);

  (*(v7 + 8))(v9, v6);
  v22 = sub_2866C(0, &qword_5C218, BBSectionInfo_ptr);
  v23 = swift_allocObject();
  v24 = v45;
  v25 = v46;
  v23[2] = v45;
  v23[3] = v25;
  v26 = v47;
  v23[4] = v47;
  v45 = v24;
  v46 = v25;
  v27 = v26;
  v28 = sub_249EC(&qword_5C220, &qword_3BA60);
  v55 = v6;
  v56 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = sub_250C8();
  v47 = &protocol conformance descriptor for IDView<A, B>;
  v31 = sub_280BC(&qword_5C238, &qword_5C220, &qword_3BA60, &protocol conformance descriptor for IDView<A, B>);
  v32 = v50;
  v33 = v22;
  v34 = v49;
  v35 = v54;
  sub_32F5C();

  (*(v48 + 8))(v35, v34);
  v36 = swift_allocObject();
  v37 = v45;
  v38 = v46;
  v36[2] = v45;
  v36[3] = v38;
  v36[4] = v27;
  v39 = v37;
  v40 = v38;
  v41 = v27;
  sub_249EC(&qword_5C208, &qword_3BA50);
  v55 = v34;
  v56 = v33;
  v57 = v28;
  v58 = OpaqueTypeConformance2;
  v59 = v30;
  v60 = v31;
  swift_getOpaqueTypeConformance2();
  sub_25130();
  sub_280BC(&qword_5C248, &qword_5C208, &qword_3BA50, v47);
  v42 = v52;
  sub_32F5C();

  return (*(v51 + 8))(v32, v42);
}

uint64_t sub_25080(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_250C8()
{
  result = qword_5C230;
  if (!qword_5C230)
  {
    sub_2866C(255, &qword_5C218, BBSectionInfo_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5C230);
  }

  return result;
}

unint64_t sub_25130()
{
  result = qword_5C240;
  if (!qword_5C240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5C240);
  }

  return result;
}

id sub_25184@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_32E2C();
  __chkstk_darwin(v4 - 8);
  v5 = sub_32DDC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_249EC(&qword_5C220, &qword_3BA60);
  __chkstk_darwin(v9);
  v11 = &v14 - v10;
  v15 = *a1;
  sub_2866C(0, &qword_5C388, &off_4C920);
  swift_getObjCClassFromMetadata();
  result = PSApplicationSpecifierForBBSection();
  if (result)
  {
    sub_2866C(0, &qword_5C390, off_4C8D8);
    sub_32DEC();
    sub_32DCC();
    (*(v6 + 32))(v11, v8, v5);
    *&v11[*(v9 + 52)] = v15;
    sub_286B4(v11, a2);
    v13 = v15;

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2539C@<X0>(int a1@<W1>, void *a2@<X2>, uint64_t a3@<X8>, uint64_t a4@<X0>)
{
  v25 = a1;
  v26 = a3;
  v6 = sub_32DDC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_249EC(&qword_5C380, &unk_3BBB0);
  __chkstk_darwin(v10 - 8);
  v12 = &v24[-v11];
  v13 = sub_32E2C();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v24[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v19 = &v24[-v18];
  sub_287B0(a2, a4, v25, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_2860C(v12, &qword_5C380, &unk_3BBB0);
    v20 = 1;
    v21 = v26;
  }

  else
  {
    (*(v14 + 32))(v19, v12, v13);
    (*(v14 + 16))(v17, v19, v13);
    sub_32DCC();
    (*(v14 + 8))(v19, v13);
    v22 = v26;
    (*(v7 + 32))(v26, v9, v6);
    v20 = 0;
    v21 = v22;
  }

  return (*(v7 + 56))(v21, v20, 1, v6);
}

uint64_t sub_25654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[67] = a5;
  v5[66] = a4;
  v5[65] = a3;
  v5[63] = a1;
  v5[64] = a2;
  sub_3322C();
  v5[68] = swift_task_alloc();
  sub_3324C();
  v5[69] = swift_task_alloc();
  v6 = sub_32FAC();
  v5[70] = v6;
  v5[71] = *(v6 - 8);
  v5[72] = swift_task_alloc();
  v7 = sub_32E2C();
  v5[73] = v7;
  v5[74] = *(v7 - 8);
  v5[75] = swift_task_alloc();
  v8 = sub_32F1C();
  v5[76] = v8;
  v5[77] = *(v8 - 8);
  v5[78] = swift_task_alloc();
  v5[79] = swift_task_alloc();
  v9 = sub_32DBC();
  v5[80] = v9;
  v5[81] = *(v9 - 8);
  v5[82] = swift_task_alloc();
  sub_249EC(&qword_5C320, &qword_3BB90);
  v5[83] = swift_task_alloc();
  v10 = sub_32DAC();
  v5[84] = v10;
  v5[85] = *(v10 - 8);
  v5[86] = swift_task_alloc();
  sub_3312C();
  v5[87] = sub_3311C();
  v12 = sub_330FC();
  v5[88] = v12;
  v5[89] = v11;

  return _swift_task_switch(sub_25964, v12, v11);
}

uint64_t sub_25964()
{
  v1 = v0;
  v2 = v0[85];
  v3 = v1[84];
  v4 = v1[83];
  v5 = v1[82];
  v6 = v1[81];
  v7 = v1[80];
  sub_3300C();
  sub_32D7C();
  (*(v6 + 8))(v5, v7);
  if ((*(v2 + 48))(v4, 1, v3) == 1)
  {
    v8 = v1[83];
    v9 = v1[79];
    v10 = v1[77];
    v11 = v1[76];

    sub_2860C(v8, &qword_5C320, &qword_3BB90);
    sub_32FFC();
    sub_3302C();
    (*(v10 + 8))(v9, v11);
LABEL_73:

    v76 = v1[1];

    return v76();
  }

  (*(v1[85] + 32))(v1[86], v1[83], v1[84]);
  sub_32FFC();
  v1[54] = sub_32D8C();
  v1[55] = v12;
  v1[56] = 47;
  v1[57] = 0xE100000000000000;
  sub_28114();
  v93 = v1;
  v13 = sub_3327C();

  v15 = 0;
  v16 = *(v13 + 16);
  v17 = _swiftEmptyArrayStorage;
LABEL_4:
  v18 = (v13 + 40 + 16 * v15);
  while (v16 != v15)
  {
    if (v15 >= *(v13 + 16))
    {
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    v20 = *(v18 - 1);
    v19 = *v18;
    v18 += 2;
    ++v15;
    v21 = HIBYTE(v19) & 0xF;
    if ((v19 & 0x2000000000000000) == 0)
    {
      v21 = v20 & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_28168(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v23 = _swiftEmptyArrayStorage[2];
      v22 = _swiftEmptyArrayStorage[3];
      if (v23 >= v22 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_28168((v22 > 1), v23 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v23 + 1;
      v24 = &_swiftEmptyArrayStorage[2 * v23];
      v24[4] = v20;
      v24[5] = v19;
      goto LABEL_4;
    }
  }

  v1[60] = 0;
  if (_swiftEmptyArrayStorage[2])
  {
    goto LABEL_16;
  }

  sub_32D9C();
  if (v67)
  {
    v68 = v1[67];

    v69 = sub_3308C();

    [v68 setSpecifierIdentifierToScrollAndHighlight:v69];

    v87 = 0;
LABEL_72:
    v70 = v1[86];
    v71 = v1[85];
    v72 = v1[84];
    v73 = v1[78];
    v74 = v1[77];
    v75 = v1[76];
    swift_beginAccess();
    sub_3302C();
    swift_endAccess();

    (*(v74 + 8))(v73, v75);
    (*(v71 + 8))(v70, v72);
    goto LABEL_73;
  }

  if (!_swiftEmptyArrayStorage[2])
  {
    v25 = 0;
LABEL_71:
    v87 = v25;

    goto LABEL_72;
  }

LABEL_16:
  isUniquelyReferenced_nonNull_native = swift_beginAccess();
  v25 = 0;
  v26 = _swiftEmptyArrayStorage[2];
  while (1)
  {
    v1[90] = v25;
    if (!v26)
    {
      goto LABEL_90;
    }

    v30 = *(v17 + 4);
    v31 = *(v17 + 5);

    v32 = swift_isUniquelyReferenced_nonNull_native();
    if (!v32 || (v26 - 1) > *(v17 + 3) >> 1)
    {
      v17 = sub_28294(v32, v26, 1, v17);
    }

    v1[91] = v17;
    sub_283A0((v17 + 32));
    v33 = *(v17 + 2);
    memmove(v17 + 32, v17 + 48, 16 * v33 - 16);
    *(v17 + 2) = v33 - 1;

    v34 = sub_292D0(v30, v31);
    if (v34 > 4)
    {
      break;
    }

    if (v34 > 1)
    {
      if (v34 == 2)
      {
        v27 = v1[75];
        v28 = v1[74];
        v29 = v1[73];

        sub_2866C(0, &qword_5C350, off_4C908);
        sub_32DFC();
        swift_beginAccess();
        sub_284B4(&qword_5C338, &type metadata accessor for PreferencesControllerRecipe, &protocol conformance descriptor for PreferencesControllerRecipe);
        sub_32F0C();
      }

      else
      {
        if (v34 != 3)
        {

          goto LABEL_19;
        }

        v27 = v1[75];
        v28 = v1[74];
        v29 = v1[73];

        sub_2866C(0, &qword_5C348, off_4C8F8);
        sub_32DFC();
        swift_beginAccess();
        sub_284B4(&qword_5C338, &type metadata accessor for PreferencesControllerRecipe, &protocol conformance descriptor for PreferencesControllerRecipe);
        sub_32F0C();
      }

      goto LABEL_18;
    }

    if (!v34)
    {
      v27 = v1[75];
      v28 = v1[74];
      v29 = v1[73];

      sub_2866C(0, &qword_5C360, off_4C900);
      sub_32DFC();
      swift_beginAccess();
      sub_284B4(&qword_5C338, &type metadata accessor for PreferencesControllerRecipe, &protocol conformance descriptor for PreferencesControllerRecipe);
      sub_32F0C();
LABEL_18:
      swift_endAccess();
      isUniquelyReferenced_nonNull_native = (*(v28 + 8))(v27, v29);
      goto LABEL_19;
    }

    v87 = v25;
    v50 = v1[65];
    v51 = sub_3308C();

    v52 = [v50 specifierForID:v51];

    if (!v52)
    {
LABEL_81:

      goto LABEL_72;
    }

    v53 = v1[75];
    v54 = v1[74];
    v55 = v1[73];
    sub_2866C(0, &qword_5C358, PSListItemsController_ptr);
    v56 = v52;
    sub_32DEC();
    swift_beginAccess();
    sub_284B4(&qword_5C338, &type metadata accessor for PreferencesControllerRecipe, &protocol conformance descriptor for PreferencesControllerRecipe);
    sub_32F0C();
    swift_endAccess();

    isUniquelyReferenced_nonNull_native = (*(v54 + 8))(v53, v55);
LABEL_19:
    v17 = v1[91];
    v26 = *(v17 + 2);
    if (!v26)
    {
      goto LABEL_71;
    }
  }

  if (v34 <= 7)
  {
    if (v34 == 5)
    {
      v27 = v1[75];
      v28 = v1[74];
      v29 = v1[73];

      sub_2866C(0, &qword_5C340, off_4C918);
      sub_32DFC();
      swift_beginAccess();
      sub_284B4(&qword_5C338, &type metadata accessor for PreferencesControllerRecipe, &protocol conformance descriptor for PreferencesControllerRecipe);
      sub_32F0C();
    }

    else
    {
      if (v34 != 7)
      {
        v78 = v1[85];
        v90 = v1[84];
        v92 = v1[86];
        v79 = v1[78];
        v80 = v1[77];
        v81 = v1[72];
        v82 = v1[71];
        v88 = v93[70];
        v89 = v1[76];

        sub_3323C();
        sub_32F9C();
        swift_beginAccess();
        sub_3301C();
        swift_endAccess();
        v1 = v93;
        (*(v82 + 8))(v81, v88);

        (*(v80 + 8))(v79, v89);
        (*(v78 + 8))(v92, v90);
        goto LABEL_73;
      }

      v27 = v1[75];
      v28 = v1[74];
      v29 = v1[73];

      sub_3321C();
      sub_32E0C();
      swift_beginAccess();
      sub_284B4(&qword_5C338, &type metadata accessor for PreferencesControllerRecipe, &protocol conformance descriptor for PreferencesControllerRecipe);
      sub_32F0C();
    }

    goto LABEL_18;
  }

  if (v34 == 8)
  {
    v35 = v1[67];
    v36 = sub_3308C();

    [v35 setSpecifierIdentifierToScrollAndSelect:v36];

    goto LABEL_19;
  }

  isUniquelyReferenced_nonNull_native = [objc_opt_self() sharedInstance];
  if (!isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_92;
  }

  v37 = isUniquelyReferenced_nonNull_native;
  v91 = v30;
  v87 = v25;
  v38 = [isUniquelyReferenced_nonNull_native activeSectionInfo];

  if (v38)
  {
    v1[92] = sub_2866C(0, &qword_5C218, BBSectionInfo_ptr);
    v39 = sub_330EC();

    if (v39 >> 62)
    {
      isUniquelyReferenced_nonNull_native = sub_3336C();
      v40 = isUniquelyReferenced_nonNull_native;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v40 = *(&dword_10 + (v39 & 0xFFFFFFFFFFFFFF8));
      if (v40)
      {
LABEL_41:
        v41 = 0;
        do
        {
          if ((v39 & 0xC000000000000001) != 0)
          {
            isUniquelyReferenced_nonNull_native = sub_3334C();
          }

          else
          {
            if (v41 >= *(&dword_10 + (v39 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_89;
            }

            isUniquelyReferenced_nonNull_native = *(v39 + 8 * v41 + 32);
          }

          v42 = isUniquelyReferenced_nonNull_native;
          v93[93] = isUniquelyReferenced_nonNull_native;
          v43 = v41 + 1;
          if (__OFADD__(v41, 1))
          {
            goto LABEL_88;
          }

          v44 = [isUniquelyReferenced_nonNull_native sectionID];
          v45 = sub_3309C();
          v47 = v46;

          if (v45 == v91 && v47 == v31)
          {

LABEL_59:

            v1 = v93;
            if ((sub_29024() & 1) == 0)
            {

              goto LABEL_81;
            }

            if ((sub_29220() & 1) == 0)
            {

              v93[60] = v42;
              v93[61] = v42;
              swift_beginAccess();
              sub_250C8();
              v57 = v42;
              sub_32F0C();
              swift_endAccess();

              v25 = v42;
              goto LABEL_19;
            }

            v83 = [v42 sectionID];
            if (!v83)
            {
              sub_3309C();
              v83 = sub_3308C();
            }

            v84 = [objc_opt_self() applicationWithBundleIdentifier:v83];
            v93[94] = v84;

            v85 = [objc_opt_self() sharedGuard];
            v93[95] = v85;
            v93[2] = v93;
            v93[7] = v93 + 473;
            v93[3] = sub_26900;
            v86 = swift_continuation_init();
            v93[17] = sub_249EC(&qword_5C330, &qword_3BB98);
            v93[10] = _NSConcreteStackBlock;
            v93[11] = 1107296256;
            v93[12] = sub_27AD8;
            v93[13] = &unk_4DD00;
            v93[14] = v86;
            [v85 authenticateForSubject:v84 completion:v93 + 10];
            isUniquelyReferenced_nonNull_native = (v93 + 2);

            return _swift_continuation_await(isUniquelyReferenced_nonNull_native);
          }

          v49 = sub_3338C();

          if (v49)
          {
            goto LABEL_59;
          }

          ++v41;
        }

        while (v43 != v40);
      }
    }

    v1 = v93;

    if (sub_237E4() != 5)
    {
      if (v87)
      {
        v58 = v93[66];
        v59 = v87;
        v60 = [v58 _lockScreenAppearanceSettingsSpecifiersForSectionInfo:v59];
        v61 = sub_330EC();

        v62 = *(v61 + 16);

        if (v62)
        {
          v63 = v59;
          nullsub_2();
          v65 = v64;
          v93[58] = v64;
          *(v93 + 472) = v66;
          swift_beginAccess();
          sub_25130();
          sub_32F0C();
          swift_endAccess();
        }

        else
        {
        }
      }

      else
      {
        v87 = 0;
      }
    }

    goto LABEL_72;
  }

LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
  return _swift_continuation_await(isUniquelyReferenced_nonNull_native);
}

uint64_t sub_26900()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 768) = v2;
  if (v2)
  {

    v3 = *(v1 + 712);
    v4 = *(v1 + 704);
    v5 = sub_27790;
  }

  else
  {
    v3 = *(v1 + 712);
    v4 = *(v1 + 704);
    v5 = sub_26A20;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_26A20()
{
  v1 = v0;
  v2 = *(v0 + 760);
  v3 = *(v0 + 752);
  v4 = *(v1 + 744);
  v5 = *(v1 + 720);

  *(v1 + 480) = v4;
  *(v1 + 496) = v4;
  swift_beginAccess();
  sub_250C8();
  v6 = v4;
  sub_32F0C();
  swift_endAccess();

  v7 = *(v1 + 728);
  v8 = *(v7 + 2);
  if (!v8)
  {
LABEL_53:
    v67 = v4;

    goto LABEL_54;
  }

  v66 = v1 + 473;
  v69 = v1;
  while (1)
  {
    *(v1 + 720) = v4;
    v12 = *(v7 + 4);
    v13 = *(v7 + 5);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0 || (v8 - 1) > *(v7 + 3) >> 1)
    {
      v7 = sub_28294(isUniquelyReferenced_nonNull_native, v8, 1, v7);
    }

    *(v1 + 728) = v7;
    sub_283A0((v7 + 32));
    v15 = *(v7 + 2);
    memmove(v7 + 32, v7 + 48, 16 * v15 - 16);
    *(v7 + 2) = v15 - 1;

    v16 = sub_292D0(v12, v13);
    if (v16 > 4)
    {
      break;
    }

    if (v16 > 1)
    {
      if (v16 == 2)
      {
        v9 = *(v1 + 600);
        v10 = *(v1 + 592);
        v11 = *(v1 + 584);

        sub_2866C(0, &qword_5C350, off_4C908);
        sub_32DFC();
        swift_beginAccess();
        sub_284B4(&qword_5C338, &type metadata accessor for PreferencesControllerRecipe, &protocol conformance descriptor for PreferencesControllerRecipe);
        sub_32F0C();
      }

      else
      {
        if (v16 != 3)
        {

          goto LABEL_5;
        }

        v9 = *(v1 + 600);
        v10 = *(v1 + 592);
        v11 = *(v1 + 584);

        sub_2866C(0, &qword_5C348, off_4C8F8);
        sub_32DFC();
        swift_beginAccess();
        sub_284B4(&qword_5C338, &type metadata accessor for PreferencesControllerRecipe, &protocol conformance descriptor for PreferencesControllerRecipe);
        sub_32F0C();
      }

      goto LABEL_4;
    }

    if (!v16)
    {
      v9 = *(v1 + 600);
      v10 = *(v1 + 592);
      v11 = *(v1 + 584);

      sub_2866C(0, &qword_5C360, off_4C900);
      sub_32DFC();
      swift_beginAccess();
      sub_284B4(&qword_5C338, &type metadata accessor for PreferencesControllerRecipe, &protocol conformance descriptor for PreferencesControllerRecipe);
      sub_32F0C();
LABEL_4:
      swift_endAccess();
      (*(v10 + 8))(v9, v11);
      goto LABEL_5;
    }

    v67 = v4;
    v32 = *(v1 + 520);
    v33 = sub_3308C();

    v34 = [v32 specifierForID:v33];

    if (!v34)
    {
LABEL_63:

      goto LABEL_54;
    }

    v35 = *(v1 + 600);
    v36 = *(v1 + 592);
    v37 = *(v1 + 584);
    sub_2866C(0, &qword_5C358, PSListItemsController_ptr);
    v38 = v34;
    sub_32DEC();
    swift_beginAccess();
    sub_284B4(&qword_5C338, &type metadata accessor for PreferencesControllerRecipe, &protocol conformance descriptor for PreferencesControllerRecipe);
    sub_32F0C();
    swift_endAccess();

    (*(v36 + 8))(v35, v37);
LABEL_5:
    v7 = *(v1 + 728);
    v8 = *(v7 + 2);
    if (!v8)
    {
      goto LABEL_53;
    }
  }

  if (v16 <= 7)
  {
    if (v16 == 5)
    {
      v9 = *(v1 + 600);
      v10 = *(v1 + 592);
      v11 = *(v1 + 584);

      sub_2866C(0, &qword_5C340, off_4C918);
      sub_32DFC();
      swift_beginAccess();
      sub_284B4(&qword_5C338, &type metadata accessor for PreferencesControllerRecipe, &protocol conformance descriptor for PreferencesControllerRecipe);
      sub_32F0C();
    }

    else
    {
      if (v16 != 7)
      {
        v57 = *(v1 + 680);
        v71 = *(v1 + 672);
        v73 = *(v1 + 688);
        v58 = *(v1 + 624);
        v59 = *(v1 + 616);
        v70 = *(v1 + 608);
        v60 = *(v1 + 576);
        v61 = *(v1 + 568);
        v68 = *(v1 + 560);

        sub_3323C();
        v1 = v69;
        sub_32F9C();
        swift_beginAccess();
        sub_3301C();
        swift_endAccess();
        (*(v61 + 8))(v60, v68);

        (*(v59 + 8))(v58, v70);
        (*(v57 + 8))(v73, v71);
        goto LABEL_55;
      }

      v9 = *(v1 + 600);
      v10 = *(v1 + 592);
      v11 = *(v1 + 584);

      sub_3321C();
      sub_32E0C();
      swift_beginAccess();
      sub_284B4(&qword_5C338, &type metadata accessor for PreferencesControllerRecipe, &protocol conformance descriptor for PreferencesControllerRecipe);
      sub_32F0C();
    }

    goto LABEL_4;
  }

  if (v16 == 8)
  {
    v17 = *(v1 + 536);
    v18 = sub_3308C();

    [v17 setSpecifierIdentifierToScrollAndSelect:v18];

    goto LABEL_5;
  }

  v19 = [objc_opt_self() sharedInstance];
  if (!v19)
  {
LABEL_72:
    __break(1u);
    return _swift_continuation_await(v19);
  }

  v20 = v19;
  v72 = v12;
  v67 = v4;
  v21 = [v19 activeSectionInfo];

  if (!v21)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  *(v1 + 736) = sub_2866C(0, &qword_5C218, BBSectionInfo_ptr);
  v22 = sub_330EC();

  if (v22 >> 62)
  {
    v19 = sub_3336C();
    v23 = v19;
    if (v19)
    {
      goto LABEL_26;
    }

    goto LABEL_49;
  }

  v23 = *(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8));
  if (!v23)
  {
LABEL_49:

    if (sub_237E4() != 5)
    {
      if (v67)
      {
        v40 = *(v1 + 528);
        v41 = v67;
        v42 = [v40 _lockScreenAppearanceSettingsSpecifiersForSectionInfo:v41];
        v43 = sub_330EC();

        v44 = *(v43 + 16);

        if (v44)
        {
          v45 = v41;
          nullsub_2();
          v47 = v46;
          *(v1 + 464) = v46;
          *(v1 + 472) = v48;
          swift_beginAccess();
          sub_25130();
          sub_32F0C();
          swift_endAccess();
        }

        else
        {
        }
      }

      else
      {
        v67 = 0;
      }
    }

LABEL_54:
    v49 = *(v1 + 688);
    v50 = *(v1 + 680);
    v51 = *(v1 + 672);
    v52 = *(v1 + 624);
    v53 = *(v1 + 616);
    v54 = *(v1 + 608);
    swift_beginAccess();
    sub_3302C();
    swift_endAccess();

    (*(v53 + 8))(v52, v54);
    (*(v50 + 8))(v49, v51);
LABEL_55:

    v55 = *(v1 + 8);

    return v55();
  }

LABEL_26:
  v24 = 0;
  while (1)
  {
    if ((v22 & 0xC000000000000001) != 0)
    {
      v19 = sub_3334C();
    }

    else
    {
      if (v24 >= *(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_70;
      }

      v19 = *(v22 + 8 * v24 + 32);
    }

    v4 = v19;
    *(v1 + 744) = v19;
    v25 = (v24 + 1);
    if (__OFADD__(v24, 1))
    {
      __break(1u);
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    v26 = [v19 sectionID];
    v27 = sub_3309C();
    v29 = v28;

    if (v27 == v72 && v29 == v13)
    {

      v1 = v69;
      goto LABEL_45;
    }

    v31 = sub_3338C();

    if (v31)
    {
      break;
    }

    ++v24;
    v1 = v69;
    if (v25 == v23)
    {
      goto LABEL_49;
    }
  }

  v1 = v69;
LABEL_45:

  if ((sub_29024() & 1) == 0)
  {

    goto LABEL_63;
  }

  if ((sub_29220() & 1) == 0)
  {

    *(v1 + 480) = v4;
    *(v1 + 488) = v4;
    swift_beginAccess();
    v39 = v4;
    sub_32F0C();
    swift_endAccess();

    goto LABEL_5;
  }

  v62 = [v4 sectionID];
  if (!v62)
  {
    sub_3309C();
    v62 = sub_3308C();
  }

  v63 = [objc_opt_self() applicationWithBundleIdentifier:v62];
  *(v1 + 752) = v63;

  v64 = [objc_opt_self() sharedGuard];
  *(v1 + 760) = v64;
  *(v1 + 16) = v1;
  *(v1 + 56) = v66;
  *(v1 + 24) = sub_26900;
  v65 = swift_continuation_init();
  *(v1 + 136) = sub_249EC(&qword_5C330, &qword_3BB98);
  *(v1 + 80) = _NSConcreteStackBlock;
  *(v1 + 88) = 1107296256;
  *(v1 + 96) = sub_27AD8;
  *(v1 + 104) = &unk_4DD00;
  *(v1 + 112) = v65;
  [v64 authenticateForSubject:v63 completion:v1 + 80];
  v19 = (v1 + 16);

  return _swift_continuation_await(v19);
}

uint64_t sub_27790()
{
  v1 = v0[95];
  v2 = v0[94];
  v3 = v0[93];

  swift_willThrow();

  v4 = v0[90];
  v5 = v0[86];
  v6 = v0[85];
  v7 = v0[84];
  v8 = v0[78];
  v9 = v0[77];
  v10 = v0[76];
  swift_beginAccess();
  sub_3302C();
  swift_endAccess();

  (*(v9 + 8))(v8, v10);
  (*(v6 + 8))(v5, v7);

  v11 = v0[1];

  return v11();
}

uint64_t sub_27920(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_279E4;

  return sub_25654(a1, a2, v6, v7, v8);
}

uint64_t sub_279E4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_27AD8(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_284FC((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_249EC(&qword_5C368, &qword_3BBA0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_27BA4@<X0>(uint64_t a1@<X8>)
{
  v13 = a1;
  v1 = sub_32E2C();
  __chkstk_darwin(v1 - 8);
  v2 = sub_32DDC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2866C(0, &qword_5C310, off_4C910);
  sub_32DFC();
  sub_32DCC();
  sub_32F2C();
  sub_3309C();
  sub_2866C(0, &qword_5C318, NSBundle_ptr);
  if (!sub_3320C())
  {
    v6 = [objc_opt_self() mainBundle];
  }

  v7 = sub_32F3C();
  v9 = v8;
  v11 = v10;
  sub_284B4(&qword_5C228, &type metadata accessor for PreferencesControllerView, &protocol conformance descriptor for PreferencesControllerView);
  sub_32F4C();
  sub_28104(v7, v9, v11 & 1);

  return (*(v3 + 8))(v5, v2);
}

id sub_27E38()
{
  v0 = [objc_allocWithZone(BulletinBoardController) init];
  [objc_allocWithZone(BulletinBoardAppDetailController) init];
  [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
  return v0;
}

unint64_t sub_27EB4()
{
  result = qword_5C260;
  if (!qword_5C260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5C260);
  }

  return result;
}

id sub_27F30@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(BulletinBoardController) init];
  v3 = [objc_allocWithZone(BulletinBoardAppDetailController) init];
  result = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = result;
  return result;
}

__n128 sub_27FCC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_27FE0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_28028(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_280BC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_25080(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_28104(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_28114()
{
  result = qword_5C328;
  if (!qword_5C328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5C328);
  }

  return result;
}

char *sub_28168(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_28188(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_28188(char *result, int64_t a2, char a3, char *a4)
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
    sub_249EC(&qword_5C370, &qword_3BBA8);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_28294(char *result, int64_t a2, char a3, char *a4)
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
    sub_249EC(&qword_5C370, &qword_3BBA8);
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
    v10 = _swiftEmptyArrayStorage;
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

uint64_t sub_28404(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_28468(void *a1)
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

uint64_t sub_284B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_284FC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_28548()
{

  return _swift_deallocObject(v0, 40, 7);
}

id sub_28590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 24);
  v8 = *a1;
  v5 = *(a1 + 8);
  sub_2539C(v5, v4, a2, *a1);
  v6 = a2 + *(sub_249EC(&qword_5C208, &qword_3BA50) + 52);
  *v6 = v8;
  *(v6 + 8) = v5;

  return v8;
}

uint64_t sub_2860C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_249EC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2866C(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_286B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_249EC(&qword_5C220, &qword_3BA60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_287B0@<X0>(id a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  v4 = a1;
  if (a3 <= 1u)
  {
    if (a3)
    {
      v6 = &selRef__customSoundSettingSpecifierForSectionInfo_;
    }

    else
    {
      v6 = &selRef__bannerStyleSettingSpecifierForSectionInfo_;
    }

LABEL_9:
    v7 = [a1 *v6];
    if (v7)
    {
LABEL_10:
      v8 = v7;
      [v8 setTarget:v4];
      sub_23E30();
      if (sub_3307C())
      {
        sub_32E1C();
      }

      else
      {
        sub_2866C(0, &qword_5C358, PSListItemsController_ptr);
        sub_32DEC();
      }

      v9 = sub_32E2C();
      return (*(*(v9 - 8) + 56))(a4, 0, 1, v9);
    }

    goto LABEL_31;
  }

  if (a3 == 2)
  {
    v6 = &selRef__contentPreviewSpecifierForSectionInfo_;
    goto LABEL_9;
  }

  if (a3 == 3)
  {
    v6 = &selRef__notificationGroupingSpecifierForSectionInfo_;
    goto LABEL_9;
  }

  v11 = [a1 _customSettings:a2];
  if (v11)
  {
    v12 = v11;
    sub_2866C(0, &qword_5C398, PSSpecifier_ptr);
    v13 = sub_330EC();

    v30 = v4;
    if (v13 >> 62)
    {
      goto LABEL_39;
    }

    for (i = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)); i; i = sub_3336C())
    {
      v15 = 0;
      while (1)
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v16 = sub_3334C();
        }

        else
        {
          if (v15 >= *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_38;
          }

          v16 = *(v13 + 8 * v15 + 32);
        }

        v7 = v16;
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        v18 = [v16 identifier];
        if (v18)
        {
          v19 = v18;
          v20 = sub_3309C();
          v22 = v21;

          if (v20 == 0x6D6F74737563 && v22 == 0xE600000000000000)
          {

LABEL_36:

            v4 = v30;
            goto LABEL_10;
          }

          v24 = sub_3338C();

          if (v24)
          {
            goto LABEL_36;
          }
        }

        ++v15;
        if (v17 == i)
        {
          goto LABEL_40;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      ;
    }

LABEL_40:

    v29 = sub_32E2C();
    v26 = *(*(v29 - 8) + 56);
    v27 = v29;
    v28 = a4;
    goto LABEL_32;
  }

LABEL_31:
  v25 = sub_32E2C();
  v26 = *(*(v25 - 8) + 56);
  v27 = v25;
  v28 = a4;
LABEL_32:

  return v26(v28, 1, 1, v27);
}

uint64_t sub_28B5C(uint64_t a1)
{
  sub_3326C();
  sub_28E78();
  return sub_3305C();
}

Swift::Int sub_28BB8()
{
  sub_333AC();
  sub_3326C();
  sub_28E78();
  sub_3305C();
  return sub_333DC();
}

Swift::Int sub_28C20()
{
  sub_333AC();
  sub_3326C();
  sub_28E78();
  sub_3305C();
  return sub_333DC();
}

uint64_t sub_28C94(uint64_t a1)
{
  sub_3326C();
  sub_28E78();
  return sub_3305C();
}

Swift::Int sub_28CF4(uint64_t a1)
{
  sub_333AC();
  sub_3326C();
  sub_28E78();
  sub_3305C();
  return sub_333DC();
}

uint64_t sub_28D7C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  sub_2866C(0, &qword_5C3B0, NSObject_ptr);
  if (sub_3325C())
  {
    sub_28FD0();
    sub_330DC();
    sub_330DC();
    if (v8 == v6 && v9 == v7)
    {
      v4 = 1;
    }

    else
    {
      v4 = sub_3338C();
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

unint64_t sub_28E78()
{
  result = qword_5C3A0;
  if (!qword_5C3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5C3A0);
  }

  return result;
}

unint64_t sub_28ED0()
{
  result = qword_5C3A8;
  if (!qword_5C3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5C3A8);
  }

  return result;
}

uint64_t sub_28F24(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_28F38(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_28F80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_28FD0()
{
  result = qword_5C3B8;
  if (!qword_5C3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5C3B8);
  }

  return result;
}

id sub_29024()
{
  if ([v0 isRestricted])
  {
    [v0 suppressFromSettings];
    return 0;
  }

  v2 = [v0 sectionID];
  v3 = sub_3309C();
  v5 = v4;

  if (v3 == 0xD000000000000014 && 0x8000000000045D30 == v5)
  {
  }

  else
  {
    v7 = sub_3338C();

    v8 = 0;
    if ((v7 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  result = [objc_opt_self() sharedConnection];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v9 = result;
  v10 = sub_3308C();
  v8 = [v9 isBoolSettingLockedDownByRestrictions:v10];

LABEL_12:
  v11 = [v0 suppressFromSettings];
  result = 0;
  if ((v11 & 1) == 0 && (v8 & 1) == 0)
  {
    v12 = [v0 sectionID];
    if (!v12)
    {
      sub_3309C();
      v12 = sub_3308C();
    }

    v13 = [objc_opt_self() applicationWithBundleIdentifier:v12];

    v14 = [v13 isHidden];
    return (v14 ^ 1);
  }

  return result;
}

id sub_2922C(SEL *a1)
{
  v3 = [v1 sectionID];
  if (!v3)
  {
    sub_3309C();
    v3 = sub_3308C();
  }

  v4 = [objc_opt_self() applicationWithBundleIdentifier:v3];

  v5 = [v4 *a1];
  return v5;
}

unint64_t sub_292D4(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 0xD000000000000010;
    if (a1 != 2)
    {
      v4 = 0xD00000000000001BLL;
    }

    if (a1 <= 1u)
    {
      return 0xD000000000000015;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0xD000000000000017;
    v2 = 0xD000000000000013;
    if (a1 != 7)
    {
      v2 = 0xD00000000000001ELL;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    if (a1 <= 5u)
    {
      return 0xD00000000000001ALL;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_293D8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000015;
  v3 = "com.apple.gamecenter";
  if (a1 <= 3u)
  {
    v4 = "SHOW_PREVIEW_GROUP_ID";
    v11 = 0xD000000000000010;
    if (a1 != 2)
    {
      v11 = 0xD00000000000001BLL;
      v4 = "SCREENSHARING_ID";
    }

    v8 = "SCHEDULED_DELIVERY_ID";
    if (!a1)
    {
      v8 = "com.apple.gamecenter";
    }

    v9 = a1 <= 1u;
    if (a1 <= 1u)
    {
      v10 = 0xD000000000000015;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v4 = "SUMMARIZE_NOTIFICATIONS_ID";
    v5 = 0xD000000000000017;
    v6 = "SPOKEN_NOTIFICATIONS_ID";
    v7 = 0xD000000000000013;
    if (a1 != 7)
    {
      v7 = 0xD00000000000001ELL;
      v6 = "SIRI_SUGGESTIONS_ID";
    }

    if (a1 != 6)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = "PRIORITIZE_NOTIFICATIONS_ID";
    if (a1 != 4)
    {
      v8 = "NOTIFICATION_FORWARDING_ID";
    }

    v9 = a1 <= 5u;
    if (a1 <= 5u)
    {
      v10 = 0xD00000000000001ALL;
    }

    else
    {
      v10 = v5;
    }
  }

  if (v9)
  {
    v12 = v8;
  }

  else
  {
    v12 = v4;
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v3 = "SHOW_PREVIEW_GROUP_ID";
        v2 = 0xD000000000000010;
      }

      else
      {
        v3 = "SCREENSHARING_ID";
        v2 = 0xD00000000000001BLL;
      }
    }

    else if (a2)
    {
      v3 = "SCHEDULED_DELIVERY_ID";
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v13 = "NOTIFICATION_FORWARDING_ID";
    }

    else
    {
      v13 = "SUMMARIZE_NOTIFICATIONS_ID";
    }

    v3 = v13 - 32;
    v2 = 0xD00000000000001ALL;
  }

  else if (a2 == 6)
  {
    v3 = "SUMMARIZE_NOTIFICATIONS_ID";
    v2 = 0xD000000000000017;
  }

  else if (a2 == 7)
  {
    v3 = "SPOKEN_NOTIFICATIONS_ID";
    v2 = 0xD000000000000013;
  }

  else
  {
    v3 = "SIRI_SUGGESTIONS_ID";
    v2 = 0xD00000000000001ELL;
  }

  if (v10 == v2 && (v12 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_3338C();
  }

  return v14 & 1;
}

Swift::Int sub_295FC()
{
  v1 = *v0;
  sub_333AC();
  sub_2964C(v3, v1);
  return sub_333DC();
}

uint64_t sub_2964C(uint64_t a1, unsigned __int8 a2)
{
  sub_330BC();
}

Swift::Int sub_29770(uint64_t a1)
{
  v2 = *v1;
  sub_333AC();
  sub_2964C(v4, v2);
  return sub_333DC();
}

unint64_t sub_297B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_29810(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_297E4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_292D4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_29810(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_4DDF8;
  v6._object = a2;
  v4 = sub_3337C(v3, v6);

  if (v4 >= 9)
  {
    return 9;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_29860()
{
  result = qword_5C3C0;
  if (!qword_5C3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5C3C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NotificationSettingsSpecifierIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NotificationSettingsSpecifierIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t static RemoteNotificationsManager.addObserver(_:)(uint64_t a1)
{
  if (qword_5CAB0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_5CDE0;
  v3 = *(qword_5CDE0 + OBJC_IVAR___NCRemoteNotificationsManager_queue);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2AB44;
  *(v5 + 24) = v4;
  aBlock[4] = sub_2AB4C;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2A6F4;
  aBlock[3] = &unk_4DFF8;
  v6 = _Block_copy(aBlock);
  v7 = v2;
  swift_unknownObjectRetain();

  dispatch_sync(v3, v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t *sub_29BC8()
{
  if (qword_5CAB0 != -1)
  {
    swift_once();
  }

  return &qword_5CDE0;
}

uint64_t RemoteNotificationsManager.addObserver(_:)(uint64_t a1)
{
  v3 = *&v1[OBJC_IVAR___NCRemoteNotificationsManager_queue];
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_30588;
  *(v5 + 24) = v4;
  v10[4] = sub_3058C;
  v10[5] = v5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_2A6F4;
  v10[3] = &unk_4E070;
  v6 = _Block_copy(v10);
  swift_unknownObjectRetain();
  v7 = v1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t static RemoteNotificationsManager.removeObserver(_:)(uint64_t a1)
{
  if (qword_5CAB0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_5CDE0;
  v3 = *(qword_5CDE0 + OBJC_IVAR___NCRemoteNotificationsManager_queue);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2AB8C;
  *(v5 + 24) = v4;
  aBlock[4] = sub_3058C;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2A6F4;
  aBlock[3] = &unk_4E0E8;
  v6 = _Block_copy(aBlock);
  v7 = v2;
  swift_unknownObjectRetain();

  dispatch_sync(v3, v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t RemoteNotificationsManager.removeObserver(_:)(uint64_t a1)
{
  v3 = *&v1[OBJC_IVAR___NCRemoteNotificationsManager_queue];
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_30590;
  *(v5 + 24) = v4;
  v10[4] = sub_3058C;
  v10[5] = v5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_2A6F4;
  v10[3] = &unk_4E160;
  v6 = _Block_copy(v10);
  swift_unknownObjectRetain();
  v7 = v1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2A0DC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = qword_5CAB0;
  swift_unknownObjectRetain();
  if (v6 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = qword_5CDE0;
  a4(a3);

  return swift_unknownObjectRelease();
}

uint64_t static RemoteNotificationsManager.featureIsAvailable.getter()
{
  if (qword_5CAB0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_5CDE0;
  v1 = OBJC_IVAR___NCRemoteNotificationsManager_protectedFeatureIsAvailable;
  swift_beginAccess();
  v2 = *&v0[v1];
  v3 = v0;

  os_unfair_lock_lock((v2 + 20));
  v4 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 20));

  return v4;
}

uint64_t RemoteNotificationsManager.featureIsAvailable.getter()
{
  v1 = OBJC_IVAR___NCRemoteNotificationsManager_protectedFeatureIsAvailable;
  swift_beginAccess();
  v2 = *(v0 + v1);

  os_unfair_lock_lock((v2 + 20));
  v3 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 20));

  return v3;
}

uint64_t sub_2A394(uint64_t a1, char *a2)
{
  v3 = sub_249EC(&qword_5C3D8, &qword_3BDA8);
  __chkstk_darwin(v3 - 8);
  v5 = &v16[-v4];
  sub_249EC(&qword_5C478, &qword_3BE10);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v7 = OBJC_IVAR___NCRemoteNotificationsManager_observers;
  swift_beginAccess();

  sub_2E88C(&v17, v6);
  swift_endAccess();

  v8 = *&a2[v7];
  if ((v8 & 0xC000000000000001) == 0)
  {
    if (*(v8 + 16) < 1)
    {
    }

    goto LABEL_3;
  }

  v9 = sub_332CC();

  if (v9 >= 1)
  {
LABEL_3:
    sub_3313C();
    v10 = sub_3315C();
    (*(*(v10 - 8) + 56))(v5, 0, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = a2;
    v12 = a2;
    v13 = sub_2C4D0(0, 0, v5, &unk_3BFB8, v11);

    v14 = OBJC_IVAR___NCRemoteNotificationsManager_monitor;
    swift_beginAccess();
    *&v12[v14] = v13;
  }
}

uint64_t sub_2A5B8()
{
  v1 = sub_249EC(&qword_5C3D8, &qword_3BDA8);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  sub_3313C();
  v4 = sub_3315C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;
  v6 = v0;
  v7 = sub_2C4D0(0, 0, v3, &unk_3BDB8, v5);
  v8 = OBJC_IVAR___NCRemoteNotificationsManager_monitor;
  swift_beginAccess();
  *&v6[v8] = v7;
}

uint64_t sub_2A734(uint64_t a1, uint64_t a2)
{
  sub_249EC(&qword_5C478, &qword_3BE10);
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v4 = OBJC_IVAR___NCRemoteNotificationsManager_observers;
  swift_beginAccess();
  sub_2F714(v3);
  swift_endAccess();

  v5 = *(a2 + v4);
  if ((v5 & 0xC000000000000001) == 0)
  {
    if (*(v5 + 16))
    {
    }

    goto LABEL_3;
  }

  v6 = sub_332CC();

  if (!v6)
  {
LABEL_3:
    sub_2A834();
  }
}

uint64_t sub_2A834()
{
  v1 = v0;
  if (qword_5CAB8 != -1)
  {
    swift_once();
  }

  v2 = sub_32EFC();
  sub_2E01C(v2, qword_5CAC0);
  v3 = sub_32EDC();
  v4 = sub_3319C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "Cancelling monitor...", v5, 2u);
  }

  v6 = OBJC_IVAR___NCRemoteNotificationsManager_monitor;
  swift_beginAccess();
  if (*(v1 + v6))
  {

    sub_3316C();
  }

  *(v1 + v6) = 0;
}

void sub_2A998(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

id sub_2AB10()
{
  result = [objc_allocWithZone(type metadata accessor for RemoteNotificationsManager()) init];
  qword_5CDE0 = result;
  return result;
}

uint64_t sub_2AB74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2ABA4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

id sub_2ABE4()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id _s21NotificationsSettings06RemoteA7ManagerC14sharedInstanceACvgZ_0()
{
  if (qword_5CAB0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_5CDE0;

  return v0;
}

void sub_2AC9C(uint64_t a1)
{
  if (qword_5CAB0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_5CDE0;
  qword_5CDE0 = a1;
}

uint64_t (*sub_2AD1C(uint64_t a1))(uint64_t a1)
{
  if (qword_5CAB0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t variable initialization expression of RemoteNotificationsManager.protectedFeatureIsAvailable()
{
  sub_249EC(&qword_5C3F0, &qword_3BDC0);
  result = swift_allocObject();
  *(result + 20) = 0;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_2AEE4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

uint64_t sub_2AFE8(uint64_t a1)
{
  v3 = OBJC_IVAR___NCRemoteNotificationsManager_monitor;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t variable initialization expression of RemoteNotificationsManager.queue()
{
  v7 = sub_331DC();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_331CC();
  __chkstk_darwin(v3);
  v4 = sub_32F7C();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_2E054();
  sub_32F6C();
  v8 = _swiftEmptyArrayStorage;
  sub_2FDC8(&qword_5C400, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_249EC(&qword_5C408, &qword_3BDC8);
  sub_2E0A0(&qword_5C410, &qword_5C408, &qword_3BDC8);
  sub_3328C();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  return sub_331EC();
}

id sub_2B2F4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_331DC();
  v13 = *(v2 - 8);
  v14 = v2;
  __chkstk_darwin(v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_331CC();
  __chkstk_darwin(v5);
  v6 = sub_32F7C();
  __chkstk_darwin(v6 - 8);
  v7 = OBJC_IVAR___NCRemoteNotificationsManager_companionDeviceManager;
  sub_32ECC();
  *&v0[v7] = sub_32EBC();
  v8 = OBJC_IVAR___NCRemoteNotificationsManager_protectedFeatureIsAvailable;
  sub_249EC(&qword_5C3F0, &qword_3BDC0);
  v9 = swift_allocObject();
  *(v9 + 20) = 0;
  *(v9 + 16) = 0;
  *&v1[v8] = v9;
  *&v1[OBJC_IVAR___NCRemoteNotificationsManager_monitor] = 0;
  *&v1[OBJC_IVAR___NCRemoteNotificationsManager_observers] = &_swiftEmptySetSingleton;
  v12 = OBJC_IVAR___NCRemoteNotificationsManager_queue;
  v11 = sub_2E054();
  sub_32F6C();
  v17 = _swiftEmptyArrayStorage;
  sub_2FDC8(&qword_5C400, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_249EC(&qword_5C408, &qword_3BDC8);
  sub_2E0A0(&qword_5C410, &qword_5C408, &qword_3BDC8);
  sub_3328C();
  (*(v13 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v14);
  *&v1[v12] = sub_331EC();
  v16.receiver = v1;
  v16.super_class = ObjectType;
  return objc_msgSendSuper2(&v16, "init");
}

uint64_t sub_2B60C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2B69C;

  return sub_2B944();
}

uint64_t sub_2B69C()
{

  return _swift_task_switch(sub_2B798, 0, 0);
}

uint64_t sub_2B798()
{
  if (qword_5CAB8 != -1)
  {
    swift_once();
  }

  v1 = sub_32EFC();
  sub_2E01C(v1, qword_5CAC0);
  v2 = sub_32EDC();
  v3 = sub_3319C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "Monitor finished.", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2B8B0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_30584;

  return sub_2B60C();
}

uint64_t sub_2B944()
{
  v1[11] = v0;
  v2 = sub_249EC(&qword_5C420, &qword_3BDD8);
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  v3 = sub_32E9C();
  v1[15] = v3;
  v1[16] = *(v3 - 8);
  v1[17] = swift_task_alloc();
  v4 = sub_249EC(&qword_5C428, &qword_3BDE0);
  v1[18] = v4;
  v1[19] = *(v4 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();

  return _swift_task_switch(sub_2BAE0, 0, 0);
}

uint64_t sub_2BAE0()
{
  v1 = v0[11];
  v2 = OBJC_IVAR___NCRemoteNotificationsManager_companionDeviceManager;
  swift_beginAccess();
  v0[22] = *(v1 + v2);
  sub_249EC(&qword_5C430, &qword_3BDE8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_3BD90;

  sub_32E8C();
  v0[8] = v3;
  sub_2FDC8(&qword_5C438, &type metadata accessor for CompanionDeviceManager.Options, &protocol conformance descriptor for CompanionDeviceManager.Options);
  sub_249EC(&qword_5C440, &qword_3BDF0);
  sub_2E0A0(&qword_5C448, &qword_5C440, &qword_3BDF0);
  sub_3328C();
  sub_32ECC();
  sub_2FDC8(&qword_5C450, &type metadata accessor for CompanionDeviceManager, &protocol conformance descriptor for CompanionDeviceManager);
  v5 = sub_330FC();

  return _swift_task_switch(sub_2BCC0, v5, v4);
}

uint64_t sub_2BCC0()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  sub_32EAC();

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_2BD5C, 0, 0);
}

uint64_t sub_2BD5C()
{
  (*(v0[19] + 16))(v0[20], v0[21], v0[18]);
  v0[23] = swift_getOpaqueTypeConformance2();
  sub_3317C();
  v0[24] = OBJC_IVAR___NCRemoteNotificationsManager_monitor;
  swift_beginAccess();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v2 = swift_task_alloc();
  v0[25] = v2;
  *v2 = v0;
  v2[1] = sub_2BEB0;
  v3 = v0[12];

  return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v0 + 9, 0, 0, v0 + 10, v3, AssociatedConformanceWitness);
}

uint64_t sub_2BEB0()
{

  if (v0)
  {
    v1 = sub_2C2D4;
  }

  else
  {
    v1 = sub_2BFC0;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_2BFC0()
{
  v1 = v0[9];
  if (v1)
  {
    if (qword_5CAB8 != -1)
    {
      swift_once();
    }

    v2 = sub_32EFC();
    sub_2E01C(v2, qword_5CAC0);

    v3 = sub_32EDC();
    v4 = sub_3319C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      *(v5 + 4) = *(v1 + 16);

      _os_log_impl(&dword_0, v3, v4, "Sequence yielded %ld devices.", v5, 0xCu);
    }

    else
    {
    }

    v8 = v0[24];
    v9 = v0[11];
    sub_2C7D0(v1);

    if (!*(v9 + v8) || (, isCancelled = swift_task_isCancelled(), , (isCancelled & 1) != 0))
    {
      v11 = sub_32EDC();
      v12 = sub_331BC();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_0, v11, v12, "Sequence cancelled.", v13, 2u);
      }
    }

    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v15 = swift_task_alloc();
    v0[25] = v15;
    *v15 = v0;
    v15[1] = sub_2BEB0;
    v16 = v0[12];

    return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v0 + 9, 0, 0, v0 + 10, v16, AssociatedConformanceWitness);
  }

  else
  {
    (*(v0[13] + 8))(v0[14], v0[12]);
    (*(v0[19] + 8))(v0[21], v0[18]);

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_2C2D4()
{
  (*(v0[13] + 8))(v0[14], v0[12]);
  if (qword_5CAB8 != -1)
  {
    swift_once();
  }

  v1 = sub_32EFC();
  sub_2E01C(v1, qword_5CAC0);
  swift_errorRetain();
  v2 = sub_32EDC();
  v3 = sub_331AC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&dword_0, v2, v3, "Device stream failed; %{public}@", v4, 0xCu);
    sub_2860C(v5, &qword_5C458, &qword_3BDF8);
  }

  else
  {
  }

  (*(v0[19] + 8))(v0[21], v0[18]);

  v7 = v0[1];

  return v7();
}

uint64_t sub_2C4D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_249EC(&qword_5C3D8, &qword_3BDA8);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_2FF50(a3, v25 - v10, &qword_5C3D8, &qword_3BDA8);
  v12 = sub_3315C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2860C(v11, &qword_5C3D8, &qword_3BDA8);
  }

  else
  {
    sub_3314C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_330FC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_330AC() + 32;
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

      sub_2860C(a3, &qword_5C3D8, &qword_3BDA8);

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

  sub_2860C(a3, &qword_5C3D8, &qword_3BDA8);
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

uint64_t sub_2C7D0(uint64_t a1)
{
  v2 = sub_249EC(&qword_5C3D8, &qword_3BDA8);
  v3 = __chkstk_darwin(v2 - 8);
  v121 = &v117 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v122 = &v117 - v5;
  v6 = sub_32E6C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v120 = &v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_249EC(&qword_5C460, &qword_3BE00);
  __chkstk_darwin(v136);
  v10 = &v117 - v9;
  v11 = sub_249EC(&qword_5C468, &qword_3BE08);
  v12 = __chkstk_darwin(v11 - 8);
  v135 = &v117 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v117 - v15;
  __chkstk_darwin(v14);
  v18 = &v117 - v17;
  v141 = sub_32E7C();
  v19 = __chkstk_darwin(v141);
  v127 = &v117 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v140 = &v117 - v22;
  v23 = *(a1 + 16);
  if (v23)
  {
    v137 = v16;
    v138 = v18;
    v25 = *(v21 + 16);
    v24 = v21 + 16;
    v133 = v25;
    v123 = (*(v24 + 64) + 32) & ~*(v24 + 64);
    v26 = a1 + v123;
    v27 = *(v24 + 56);
    v131 = enum case for CompanionDevice.PairingState.paired(_:);
    v130 = (v7 + 104);
    v129 = (v7 + 56);
    v28 = (v7 + 48);
    v118 = (v7 + 32);
    v124 = (v7 + 8);
    v125 = (v24 - 8);
    v126 = (v24 + 16);
    v128 = _swiftEmptyArrayStorage;
    v134 = v24;
    v132 = v27;
    while (1)
    {
      v139 = v23;
      v133(v140, v26, v141);
      v30 = v138;
      sub_32E5C();
      v31 = v137;
      (*v130)(v137, v131, v6);
      (*v129)(v31, 0, 1, v6);
      v32 = *(v136 + 48);
      sub_2FF50(v30, v10, &qword_5C468, &qword_3BE08);
      sub_2FF50(v31, &v10[v32], &qword_5C468, &qword_3BE08);
      v33 = *v28;
      if ((*v28)(v10, 1, v6) == 1)
      {
        break;
      }

      v34 = v135;
      sub_2FF50(v10, v135, &qword_5C468, &qword_3BE08);
      if (v33(&v10[v32], 1, v6) == 1)
      {
        sub_2860C(v137, &qword_5C468, &qword_3BE08);
        sub_2860C(v138, &qword_5C468, &qword_3BE08);
        (*v124)(v34, v6);
LABEL_4:
        sub_2860C(v10, &qword_5C460, &qword_3BE00);
        goto LABEL_5;
      }

      v35 = v120;
      (*v118)(v120, &v10[v32], v6);
      sub_2FDC8(&qword_5C470, &type metadata accessor for CompanionDevice.PairingState, &protocol conformance descriptor for CompanionDevice.PairingState);
      v36 = sub_3307C();
      v37 = *v124;
      v38 = v135;
      (*v124)(v35, v6);
      sub_2860C(v137, &qword_5C468, &qword_3BE08);
      sub_2860C(v138, &qword_5C468, &qword_3BE08);
      v37(v38, v6);
      sub_2860C(v10, &qword_5C468, &qword_3BE08);
      if (v36)
      {
        goto LABEL_12;
      }

LABEL_5:
      (*v125)(v140, v141);
      v29 = v132;
LABEL_6:
      v26 += v29;
      v23 = v139 - 1;
      if (v139 == 1)
      {
        goto LABEL_18;
      }
    }

    sub_2860C(v31, &qword_5C468, &qword_3BE08);
    sub_2860C(v30, &qword_5C468, &qword_3BE08);
    if (v33(&v10[v32], 1, v6) == 1)
    {
      sub_2860C(v10, &qword_5C468, &qword_3BE08);
LABEL_12:
      v39 = *v126;
      (*v126)(v127, v140, v141);
      v40 = v128;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42 = v40;
      v143[0] = v40;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2FDA8(0, *(v40 + 16) + 1, 1);
        v42 = v143[0];
      }

      v44 = *(v42 + 16);
      v43 = *(v42 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_2FDA8((v43 > 1), v44 + 1, 1);
        v42 = v143[0];
      }

      *(v42 + 16) = v44 + 1;
      v128 = v42;
      v29 = v132;
      v39((v42 + v123 + v44 * v132), v127, v141);
      goto LABEL_6;
    }

    goto LABEL_4;
  }

  v128 = _swiftEmptyArrayStorage;
LABEL_18:
  v45 = v128[2];

  if (qword_5CAB8 != -1)
  {
LABEL_101:
    swift_once();
  }

  v46 = sub_32EFC();
  sub_2E01C(v46, qword_5CAC0);
  v47 = sub_32EDC();
  v48 = sub_3319C();
  v49 = os_log_type_enabled(v47, v48);
  v50 = v119;
  if (v49)
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v143[0] = v52;
    *v51 = 136315138;
    if (v45)
    {
      v53 = 28239;
    }

    else
    {
      v53 = 6710863;
    }

    if (v45)
    {
      v54 = 0xE200000000000000;
    }

    else
    {
      v54 = 0xE300000000000000;
    }

    v55 = sub_2E2E4(v53, v54, v143);

    *(v51 + 4) = v55;
    _os_log_impl(&dword_0, v47, v48, "New state: %s.", v51, 0xCu);
    sub_28468(v52);
  }

  v56 = OBJC_IVAR___NCRemoteNotificationsManager_protectedFeatureIsAvailable;
  swift_beginAccess();
  v57 = *(v50 + v56);

  os_unfair_lock_lock((v57 + 20));
  if ((v45 != 0) != *(v57 + 16))
  {
    *(v57 + 16) = v45 != 0;
  }

  os_unfair_lock_unlock((v57 + 20));

  v58 = OBJC_IVAR___NCRemoteNotificationsManager_observers;
  swift_beginAccess();
  v137 = v58;
  v59 = *(v50 + v58);
  if ((v59 & 0xC000000000000001) != 0)
  {

    sub_332BC();
    sub_249EC(&qword_5C478, &qword_3BE10);
    sub_2FE10();
    sub_3318C();
    v59 = v146;
    v60 = v147;
    v61 = v148;
    v62 = v149;
    v63 = v150;
  }

  else
  {
    v64 = -1 << *(v59 + 32);
    v60 = v59 + 56;
    v61 = ~v64;
    v65 = -v64;
    if (v65 < 64)
    {
      v66 = ~(-1 << v65);
    }

    else
    {
      v66 = -1;
    }

    v63 = v66 & *(v59 + 56);

    v62 = 0;
  }

  v45 = v121;
  v136 = v61;
  v67 = (v61 + 64) >> 6;
  v138 = v59;
  v139 = v60;
  v140 = v67;
LABEL_38:
  if (v59 < 0)
  {
    v73 = sub_332EC();
    if (!v73)
    {
      return sub_2FE74(v59);
    }

    v145 = v73;
    sub_249EC(&qword_5C478, &qword_3BE10);
    swift_dynamicCast();
    v70 = v62;
    v71 = v63;
    if (!v143[0])
    {
      return sub_2FE74(v59);
    }
  }

  else
  {
    v68 = v62;
    v69 = v63;
    v70 = v62;
    if (!v63)
    {
      while (1)
      {
        v70 = v68 + 1;
        if (__OFADD__(v68, 1))
        {
          break;
        }

        if (v70 >= v67)
        {
          return sub_2FE74(v59);
        }

        v69 = *(v60 + 8 * v70);
        ++v68;
        if (v69)
        {
          goto LABEL_43;
        }
      }

      __break(1u);
      goto LABEL_101;
    }

LABEL_43:
    v71 = (v69 - 1) & v69;
    v72 = *(*(v59 + 48) + ((v70 << 9) | (8 * __clz(__rbit64(v69)))));

    if (!v72)
    {
      return sub_2FE74(v59);
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v141 = v71;
  if (Strong)
  {
    v75 = Strong;
    v76 = sub_3315C();
    v77 = *(v76 - 8);
    v78 = v122;
    (*(v77 + 56))(v122, 1, 1, v76);
    sub_3312C();
    swift_unknownObjectRetain();
    v79 = sub_3311C();
    v80 = swift_allocObject();
    v80[2] = v79;
    v80[3] = &protocol witness table for MainActor;
    v80[4] = v75;
    sub_2FF50(v78, v45, &qword_5C3D8, &qword_3BDA8);
    LODWORD(v79) = (*(v77 + 48))(v45, 1, v76);

    if (v79 == 1)
    {
      sub_2860C(v45, &qword_5C3D8, &qword_3BDA8);
    }

    else
    {
      sub_3314C();
      (*(v77 + 8))(v45, v76);
    }

    v90 = v80[2];
    swift_unknownObjectRetain();

    v59 = v138;
    v50 = v119;
    if (v90)
    {
      swift_getObjectType();
      v91 = sub_330FC();
      v93 = v92;
      swift_unknownObjectRelease();
    }

    else
    {
      v91 = 0;
      v93 = 0;
    }

    sub_2860C(v122, &qword_5C3D8, &qword_3BDA8);
    v94 = swift_allocObject();
    *(v94 + 16) = &unk_3BE20;
    *(v94 + 24) = v80;
    if (v93 | v91)
    {
      v142[1] = 0;
      v142[0] = 0;
      v142[2] = v91;
      v142[3] = v93;
    }

    v45 = v121;
    v60 = v139;
    swift_task_create();

    swift_unknownObjectRelease();

    v62 = v70;
    v63 = v141;
    goto LABEL_37;
  }

  v81 = v137;
  swift_beginAccess();
  v82 = *(v50 + v81);
  if ((v82 & 0xC000000000000001) == 0)
  {
    sub_333AC();
    v95 = swift_unknownObjectWeakLoadStrong();
    if (v95)
    {
      v96 = [v95 hash];
      swift_unknownObjectRelease();
      sub_333CC(1u);
      sub_333BC(v96);
    }

    else
    {
      sub_333CC(0);
    }

    v97 = sub_333DC();
    v98 = -1 << *(v82 + 32);
    v99 = v97 & ~v98;
    if (((*(v82 + 56 + ((v99 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v99) & 1) == 0)
    {
LABEL_73:
      v45 = v121;
      v59 = v138;
      v60 = v139;
      goto LABEL_98;
    }

    v100 = ~v98;
    while (1)
    {
      v101 = swift_unknownObjectWeakLoadStrong();
      v102 = swift_unknownObjectWeakLoadStrong();
      if (v101)
      {
        if (v101 == v102)
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
LABEL_95:
          v114 = v137;
          v115 = swift_isUniquelyReferenced_nonNull_native();
          v143[0] = *(v50 + v114);
          v45 = v121;
          v59 = v138;
          v60 = v139;
          if (!v115)
          {
            sub_2F34C();
          }

          sub_2FB98(v99);
          *(v50 + v114) = v143[0];
LABEL_98:
          v63 = v141;

          swift_endAccess();

          v62 = v70;
LABEL_37:
          v67 = v140;
          goto LABEL_38;
        }

        v103 = [v101 isEqual:v102];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v103)
        {
          goto LABEL_95;
        }
      }

      else
      {
        if (!v102)
        {
          goto LABEL_95;
        }

        swift_unknownObjectRelease();
      }

      v99 = (v99 + 1) & v100;
      if (((*(v82 + 56 + ((v99 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v99) & 1) == 0)
      {
        goto LABEL_73;
      }
    }
  }

  v83 = sub_332FC();

  if ((v83 & 1) == 0)
  {
LABEL_93:
    v45 = v121;
    goto LABEL_98;
  }

  v84 = sub_332CC();
  v85 = swift_unknownObjectRetain();
  v86 = sub_2EB74(v85, v84);
  v144 = v86;
  sub_333AC();
  v87 = swift_unknownObjectWeakLoadStrong();
  if (v87)
  {
    v88 = v87;

    v89 = [v88 hash];
    swift_unknownObjectRelease();
    sub_333CC(1u);
    sub_333BC(v89);
  }

  else
  {
    sub_333CC(0);
  }

  v104 = sub_333DC();
  v105 = -1 << *(v86 + 32);
  v106 = v104 & ~v105;
  if (((*(v86 + 56 + ((v106 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v106) & 1) == 0)
  {
    goto LABEL_103;
  }

  v107 = ~v105;
  while (1)
  {
    v108 = swift_unknownObjectWeakLoadStrong();
    v109 = swift_unknownObjectWeakLoadStrong();
    if (v108)
    {
      break;
    }

    if (!v109)
    {
      goto LABEL_85;
    }

    swift_unknownObjectRelease();
LABEL_77:
    v106 = (v106 + 1) & v107;
    if (((*(v86 + 56 + ((v106 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v106) & 1) == 0)
    {
      goto LABEL_103;
    }
  }

  if (v108 != v109)
  {
    v110 = [v108 isEqual:v109];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v110)
    {
      goto LABEL_85;
    }

    goto LABEL_77;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
LABEL_85:

  sub_2FB98(v106);
  v111 = swift_unknownObjectWeakLoadStrong();
  v112 = swift_unknownObjectWeakLoadStrong();
  if (!v111)
  {
    v50 = v119;
    v59 = v138;
    v60 = v139;
    if (v112)
    {
      goto LABEL_104;
    }

    goto LABEL_92;
  }

  v50 = v119;
  v59 = v138;
  v60 = v139;
  if (v111 == v112)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
LABEL_92:
    *&v137[v50] = v144;

    goto LABEL_93;
  }

  v113 = [v111 isEqual:v112];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v113)
  {
    *&v137[v50] = v144;

    swift_endAccess();

    v62 = v70;
    v63 = v141;
    v45 = v121;
    goto LABEL_37;
  }

  __break(1u);
LABEL_103:

  __break(1u);
LABEL_104:
  result = swift_unknownObjectRelease();
  __break(1u);
  return result;
}

uint64_t sub_2DACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_3312C();
  *(v4 + 24) = sub_3311C();
  v6 = sub_330FC();

  return _swift_task_switch(sub_2DB64, v6, v5);
}

uint64_t sub_2DB64()
{

  if (qword_5CAB8 != -1)
  {
    swift_once();
  }

  v1 = sub_32EFC();
  sub_2E01C(v1, qword_5CAC0);
  swift_unknownObjectRetain();
  v2 = sub_32EDC();
  v3 = sub_331BC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = sub_3306C();
    swift_unknownObjectRelease();
    _os_log_impl(&dword_0, v2, v3, "Notifying observer %ld of change.", v4, 0xCu);
  }

  else
  {
    swift_unknownObjectRelease();
  }

  [*(v0 + 16) remoteNotificationsStateDidChange];
  v5 = *(v0 + 8);

  return v5();
}

id RemoteNotificationsManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_2DD80(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (Strong != v3)
    {
      v4 = [Strong isEqual:v3];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return v4;
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else if (v3)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  return &dword_0 + 1;
}

void sub_2DE20()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = [Strong hash];
    swift_unknownObjectRelease();
    sub_333CC(1u);
    sub_333BC(v1);
  }

  else
  {
    sub_333CC(0);
  }
}

uint64_t sub_2DE8C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocClassInstance(v0, 24, 7);
}

Swift::Int sub_2DEC4()
{
  sub_333AC();
  sub_2DE20();
  return sub_333DC();
}

Swift::Int sub_2DF4C(uint64_t a1)
{
  sub_333AC();
  sub_2DE20();
  return sub_333DC();
}

uint64_t sub_2DF98()
{
  v0 = sub_32EFC();
  sub_303C4(v0, qword_5CAC0);
  sub_2E01C(v0, qword_5CAC0);
  return sub_32EEC();
}

uint64_t sub_2E01C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_2E054()
{
  result = qword_5C3F8;
  if (!qword_5C3F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_5C3F8);
  }

  return result;
}

uint64_t sub_2E0A0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_25080(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2E0F4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2E1EC;

  return v6(a1);
}

uint64_t sub_2E1EC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_2E2E4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2E3B0(v11, 0, 0, 1, a1, a2);
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
    sub_28404(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_28468(v11);
  return v7;
}

unint64_t sub_2E3B0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2E4BC(a5, a6);
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
    result = sub_3335C();
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

void *sub_2E4BC(uint64_t a1, unint64_t a2)
{
  v3 = sub_2E508(a1, a2);
  sub_2E638(&off_4DF80);
  return v3;
}

void *sub_2E508(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_2E724(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_3335C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_330CC();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_2E724(v10, 0);
        result = sub_3333C();
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

uint64_t sub_2E638(uint64_t result)
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

  result = sub_2E798(result, v11, 1, v3);
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

void *sub_2E724(uint64_t a1, uint64_t a2)
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

  sub_249EC(&qword_5C4B0, &qword_3BF90);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2E798(char *result, int64_t a2, char a3, char *a4)
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
    sub_249EC(&qword_5C4B0, &qword_3BF90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

uint64_t sub_2E88C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_332DC();

    if (v8)
    {

      sub_249EC(&qword_5C478, &qword_3BE10);
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
    }

    else
    {
      result = sub_332CC();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v12 = sub_2EB74(v7, result + 1);
        v13 = *(v12 + 16);
        if (*(v12 + 24) <= v13)
        {
          sub_2EDBC(v13 + 1);
        }

        sub_2F050(v14, v12);

        *v3 = v12;
        *a1 = a2;
        return 1;
      }
    }

    return result;
  }

  sub_333AC();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = [Strong hash];
    swift_unknownObjectRelease();
    sub_333CC(1u);
    sub_333BC(v11);
  }

  else
  {
    sub_333CC(0);
  }

  v15 = sub_333DC();
  v16 = -1 << *(v6 + 32);
  v17 = v15 & ~v16;
  if (((*(v6 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
  {
LABEL_23:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;

    sub_2F134(v23, v17, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
    *a1 = a2;
    return 1;
  }

  v18 = ~v16;
  while (1)
  {
    v19 = swift_unknownObjectWeakLoadStrong();
    v20 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      break;
    }

    if (!v20)
    {
LABEL_24:

      goto LABEL_26;
    }

    swift_unknownObjectRelease();
LABEL_16:
    v17 = (v17 + 1) & v18;
    if (((*(v6 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  if (v19 != v20)
  {
    v21 = [v19 isEqual:v20];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v21)
    {
      goto LABEL_24;
    }

    goto LABEL_16;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
LABEL_26:
  *a1 = *(*(v6 + 48) + 8 * v17);

  return 0;
}

Swift::Int sub_2EB74(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_249EC(&qword_5C4B8, &qword_3BF98);
    v2 = sub_3332C();
    v17 = v2;
    sub_332BC();
    for (; sub_332EC(); ++*(v2 + 16))
    {
      sub_249EC(&qword_5C478, &qword_3BE10);
      swift_dynamicCast();
      v4 = *(v2 + 16);
      if (*(v2 + 24) <= v4)
      {
        sub_2EDBC(v4 + 1);
        v2 = v17;
      }

      sub_333AC();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v6 = [Strong hash];
        swift_unknownObjectRelease();
        sub_333CC(1u);
        sub_333BC(v6);
      }

      else
      {
        sub_333CC(0);
      }

      result = sub_333DC();
      v8 = v2 + 56;
      v9 = -1 << *(v2 + 32);
      v10 = result & ~v9;
      v11 = v10 >> 6;
      if (((-1 << v10) & ~*(v2 + 56 + 8 * (v10 >> 6))) != 0)
      {
        v3 = __clz(__rbit64((-1 << v10) & ~*(v2 + 56 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v12 = 0;
        v13 = (63 - v9) >> 6;
        do
        {
          if (++v11 == v13 && (v12 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v14 = v11 == v13;
          if (v11 == v13)
          {
            v11 = 0;
          }

          v12 |= v14;
          v15 = *(v8 + 8 * v11);
        }

        while (v15 == -1);
        v3 = __clz(__rbit64(~v15)) + (v11 << 6);
      }

      *(v8 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v3;
      *(*(v2 + 48) + 8 * v3) = v16;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_2EDBC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_249EC(&qword_5C4B8, &qword_3BF98);
  result = sub_3331C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_333AC();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v19 = [Strong hash];
        swift_unknownObjectRelease();
        sub_333CC(1u);
        sub_333BC(v19);
      }

      else
      {
        sub_333CC(0);
      }

      result = sub_333DC();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v27;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_2F050(uint64_t a1, uint64_t a2)
{
  sub_333AC();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = [Strong hash];
    swift_unknownObjectRelease();
    sub_333CC(1u);
    sub_333BC(v5);
  }

  else
  {
    sub_333CC(0);
  }

  sub_333DC();
  result = sub_332AC();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_2F134(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_2EDBC(v7 + 1);
    }

    else
    {
      if (v8 > v7)
      {
        result = sub_2F34C();
        goto LABEL_20;
      }

      sub_2F49C(v7 + 1);
    }

    v9 = *v3;
    sub_333AC();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = [Strong hash];
      swift_unknownObjectRelease();
      sub_333CC(1u);
      sub_333BC(v11);
    }

    else
    {
      sub_333CC(0);
    }

    result = sub_333DC();
    v12 = -1 << *(v9 + 32);
    a2 = result & ~v12;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v13 = ~v12;
      do
      {
        v14 = swift_unknownObjectWeakLoadStrong();
        v15 = swift_unknownObjectWeakLoadStrong();
        if (v14)
        {
          if (v14 == v15)
          {
            goto LABEL_23;
          }

          v16 = [v14 isEqual:v15];
          swift_unknownObjectRelease();
          result = swift_unknownObjectRelease();
          if (v16)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (!v15)
          {
            goto LABEL_24;
          }

          result = swift_unknownObjectRelease();
        }

        a2 = (a2 + 1) & v13;
      }

      while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_20:
  v17 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + 8 * a2) = v6;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_23:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
LABEL_24:
    sub_249EC(&qword_5C478, &qword_3BE10);
    result = sub_3339C();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v20;
  }

  return result;
}

void *sub_2F34C()
{
  v1 = v0;
  sub_249EC(&qword_5C4B8, &qword_3BF98);
  v2 = *v0;
  v3 = sub_3330C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_2F49C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_249EC(&qword_5C4B8, &qword_3BF98);
  result = sub_3331C();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      sub_333AC();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v18 = Strong;

        v19 = [v18 hash];
        swift_unknownObjectRelease();
        sub_333CC(1u);
        sub_333BC(v19);
      }

      else
      {
        sub_333CC(0);
      }

      result = sub_333DC();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v27;
        goto LABEL_29;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_2F714(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = sub_332FC();

    if (v5)
    {
      v6 = sub_2F940(v4, a1);

      return v6;
    }

    return 0;
  }

  v20 = v1;
  sub_333AC();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = [Strong hash];
    swift_unknownObjectRelease();
    sub_333CC(1u);
    sub_333BC(v9);
  }

  else
  {
    sub_333CC(0);
  }

  v10 = sub_333DC();
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = swift_unknownObjectWeakLoadStrong();
    v15 = swift_unknownObjectWeakLoadStrong();
    if (v14)
    {
      break;
    }

    if (!v15)
    {
      goto LABEL_22;
    }

    swift_unknownObjectRelease();
LABEL_13:
    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  if (v14 != v15)
  {
    v16 = [v14 isEqual:v15];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v16)
    {
      goto LABEL_22;
    }

    goto LABEL_13;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
LABEL_22:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v20;
  v21 = *v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2F34C();
    v18 = v21;
  }

  v19 = *(*(v18 + 48) + 8 * v12);
  sub_2FB98(v12);
  result = v19;
  *v20 = v21;
  return result;
}

uint64_t sub_2F940(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = sub_332CC();
  v5 = swift_unknownObjectRetain();
  v6 = sub_2EB74(v5, v4);
  v23 = v6;
  sub_333AC();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;

    v9 = [v8 hash];
    swift_unknownObjectRelease();
    sub_333CC(1u);
    sub_333BC(v9);
  }

  else
  {
    sub_333CC(0);
  }

  v10 = sub_333DC();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_22:

    __break(1u);
    return result;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = swift_unknownObjectWeakLoadStrong();
    v15 = swift_unknownObjectWeakLoadStrong();
    if (v14)
    {
      break;
    }

    if (!v15)
    {
      goto LABEL_14;
    }

    swift_unknownObjectRelease();
LABEL_6:
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  if (v14 != v15)
  {
    v16 = [v14 isEqual:v15];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v16)
    {
      goto LABEL_14;
    }

    goto LABEL_6;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
LABEL_14:

  v17 = *(*(v6 + 48) + 8 * v12);
  sub_2FB98(v12);
  v18 = swift_unknownObjectWeakLoadStrong();
  v19 = swift_unknownObjectWeakLoadStrong();
  v20 = v19;
  if (!v18)
  {
LABEL_18:
    if (!v20)
    {
      goto LABEL_21;
    }

    swift_unknownObjectRelease();
    __break(1u);
    goto LABEL_20;
  }

  if (v18 == v19)
  {
LABEL_20:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_21;
  }

  v21 = [v18 isEqual:v19];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if ((v21 & 1) == 0)
  {
    __break(1u);
    goto LABEL_18;
  }

LABEL_21:
  *v3 = v23;
  return v17;
}

unint64_t sub_2FB98(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_3329C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_333AC();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v11 = Strong;

          v12 = [v11 hash];
          swift_unknownObjectRelease();
          sub_333CC(1u);
          sub_333BC(v12);
        }

        else
        {
          sub_333CC(0);
        }

        v13 = sub_333DC();

        v14 = v13 & v7;
        if (v2 >= v9)
        {
          if (v14 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v14 >= v9)
        {
          goto LABEL_14;
        }

        if (v2 >= v14)
        {
LABEL_14:
          v15 = *(v3 + 48);
          v16 = (v15 + 8 * v2);
          v17 = (v15 + 8 * v6);
          if (v2 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

void *sub_2FDA8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_301EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2FDC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2FE10()
{
  result = qword_5CAD8[0];
  if (!qword_5CAD8[0])
  {
    sub_25080(&qword_5C478, &qword_3BE10);
    result = swift_getWitnessTable();
    atomic_store(result, qword_5CAD8);
  }

  return result;
}

uint64_t sub_2FE7C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_2FEBC()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_279E4;

  return sub_2DACC(v3, v4, v5, v2);
}

uint64_t sub_2FF50(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_249EC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2FFB8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_2FFF0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_30584;

  return sub_2E0F4(a1, v4);
}

uint64_t sub_30138(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_30158(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_5C4A8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_5C4A8);
    }
  }
}

void *sub_301EC(void *result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_249EC(&qword_5C4C0, &qword_3BFA0);
  v10 = *(sub_32E7C() - 8);
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
  v15 = *(sub_32E7C() - 8);
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

uint64_t *sub_303C4(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_30428(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_279E4;

  return sub_2E0F4(a1, v4);
}

uint64_t sub_304E0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

id sub_305A4()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_5CC68 = result;
  return result;
}

uint64_t sub_305F8()
{
  v0 = sub_32E4C();
  sub_303C4(v0, qword_5CDE8);
  sub_2E01C(v0, qword_5CDE8);
  if (qword_5CC60 != -1)
  {
    swift_once();
  }

  v1 = qword_5CC68;
  return sub_32E3C();
}

uint64_t sub_30758()
{
  v0 = sub_32E4C();
  sub_303C4(v0, qword_5CE18);
  sub_2E01C(v0, qword_5CE18);
  if (qword_5CC60 != -1)
  {
    swift_once();
  }

  v1 = qword_5CC68;
  return sub_32E3C();
}

uint64_t sub_30848()
{
  v0 = sub_32E4C();
  sub_303C4(v0, qword_5CE30);
  sub_2E01C(v0, qword_5CE30);
  if (qword_5CC60 != -1)
  {
    swift_once();
  }

  v1 = qword_5CC68;
  return sub_32E3C();
}

uint64_t sub_30938()
{
  v0 = sub_32E4C();
  sub_303C4(v0, qword_5CE48);
  sub_2E01C(v0, qword_5CE48);
  if (qword_5CC60 != -1)
  {
    swift_once();
  }

  v1 = qword_5CC68;
  return sub_32E3C();
}

uint64_t sub_30A94()
{
  v0 = sub_32E4C();
  sub_303C4(v0, qword_5CE78);
  sub_2E01C(v0, qword_5CE78);
  if (qword_5CC60 != -1)
  {
    swift_once();
  }

  v1 = qword_5CC68;
  return sub_32E3C();
}

uint64_t sub_30BF4()
{
  v0 = sub_32E4C();
  sub_303C4(v0, qword_5CEA8);
  sub_2E01C(v0, qword_5CEA8);
  if (qword_5CC60 != -1)
  {
    swift_once();
  }

  v1 = qword_5CC68;
  return sub_32E3C();
}

uint64_t sub_30CE4()
{
  v0 = sub_32E4C();
  sub_303C4(v0, qword_5CEC0);
  sub_2E01C(v0, qword_5CEC0);
  if (qword_5CC60 != -1)
  {
    swift_once();
  }

  v1 = qword_5CC68;
  return sub_32E3C();
}

uint64_t sub_30DD4()
{
  v0 = sub_32E4C();
  sub_303C4(v0, qword_5CED8);
  sub_2E01C(v0, qword_5CED8);
  if (qword_5CC60 != -1)
  {
    swift_once();
  }

  v1 = qword_5CC68;
  return sub_32E3C();
}

uint64_t sub_30F30()
{
  v0 = sub_32E4C();
  sub_303C4(v0, qword_5CF08);
  sub_2E01C(v0, qword_5CF08);
  if (qword_5CC60 != -1)
  {
    swift_once();
  }

  v1 = qword_5CC68;
  return sub_32E3C();
}

uint64_t sub_31094()
{
  v0 = sub_32E4C();
  sub_303C4(v0, qword_5CF38);
  sub_2E01C(v0, qword_5CF38);
  if (qword_5CC60 != -1)
  {
    swift_once();
  }

  v1 = qword_5CC68;
  return sub_32E3C();
}

uint64_t sub_31184()
{
  v0 = sub_32E4C();
  sub_303C4(v0, qword_5CF50);
  sub_2E01C(v0, qword_5CF50);
  if (qword_5CC60 != -1)
  {
    swift_once();
  }

  v1 = qword_5CC68;
  return sub_32E3C();
}

uint64_t sub_31274()
{
  v0 = sub_32E4C();
  sub_303C4(v0, qword_5CF68);
  sub_2E01C(v0, qword_5CF68);
  if (qword_5CC60 != -1)
  {
    swift_once();
  }

  v1 = qword_5CC68;
  return sub_32E3C();
}

uint64_t sub_313D0()
{
  v0 = sub_32E4C();
  sub_303C4(v0, qword_5CF98);
  sub_2E01C(v0, qword_5CF98);
  if (qword_5CC60 != -1)
  {
    swift_once();
  }

  v1 = qword_5CC68;
  return sub_32E3C();
}

uint64_t sub_314C0()
{
  v0 = sub_32E4C();
  sub_303C4(v0, qword_5CFB0);
  sub_2E01C(v0, qword_5CFB0);
  if (qword_5CC60 != -1)
  {
    swift_once();
  }

  v1 = qword_5CC68;
  return sub_32E3C();
}

uint64_t sub_315B0()
{
  v0 = sub_32E4C();
  sub_303C4(v0, qword_5CFC8);
  sub_2E01C(v0, qword_5CFC8);
  if (qword_5CC60 != -1)
  {
    swift_once();
  }

  v1 = qword_5CC68;
  return sub_32E3C();
}

uint64_t sub_316A0()
{
  v0 = sub_32E4C();
  sub_303C4(v0, qword_5CFE0);
  sub_2E01C(v0, qword_5CFE0);
  if (qword_5CC60 != -1)
  {
    swift_once();
  }

  v1 = qword_5CC68;
  return sub_32E3C();
}

uint64_t sub_31804()
{
  v0 = sub_32E4C();
  sub_303C4(v0, qword_5D010);
  sub_2E01C(v0, qword_5D010);
  if (qword_5CC60 != -1)
  {
    swift_once();
  }

  v1 = qword_5CC68;
  return sub_32E3C();
}

uint64_t sub_318F4()
{
  v0 = sub_32E4C();
  sub_303C4(v0, qword_5D028);
  sub_2E01C(v0, qword_5D028);
  if (qword_5CC60 != -1)
  {
    swift_once();
  }

  v1 = qword_5CC68;
  return sub_32E3C();
}

uint64_t sub_319E4()
{
  v0 = sub_32E4C();
  sub_303C4(v0, qword_5D040);
  sub_2E01C(v0, qword_5D040);
  if (qword_5CC60 != -1)
  {
    swift_once();
  }

  v1 = qword_5CC68;
  return sub_32E3C();
}

uint64_t sub_31AD4()
{
  v0 = sub_32E4C();
  sub_303C4(v0, qword_5D058);
  sub_2E01C(v0, qword_5D058);
  if (qword_5CC60 != -1)
  {
    swift_once();
  }

  v1 = qword_5CC68;
  return sub_32E3C();
}

uint64_t sub_31BC4()
{
  v0 = sub_32E4C();
  sub_303C4(v0, qword_5D070);
  sub_2E01C(v0, qword_5D070);
  if (qword_5CC60 != -1)
  {
    swift_once();
  }

  v1 = qword_5CC68;
  return sub_32E3C();
}

uint64_t sub_31D28()
{
  v0 = sub_32E4C();
  sub_303C4(v0, qword_5D0A0);
  sub_2E01C(v0, qword_5D0A0);
  if (qword_5CC60 != -1)
  {
    swift_once();
  }

  v1 = qword_5CC68;
  return sub_32E3C();
}

uint64_t sub_31E18()
{
  v0 = sub_32E4C();
  sub_303C4(v0, qword_5D0B8);
  sub_2E01C(v0, qword_5D0B8);
  if (qword_5CC60 != -1)
  {
    swift_once();
  }

  v1 = qword_5CC68;
  return sub_32E3C();
}

uint64_t sub_31F08()
{
  v0 = sub_32E4C();
  sub_303C4(v0, qword_5D0D0);
  sub_2E01C(v0, qword_5D0D0);
  if (qword_5CC60 != -1)
  {
    swift_once();
  }

  v1 = qword_5CC68;
  return sub_32E3C();
}

uint64_t sub_31FF8()
{
  v0 = sub_32E4C();
  sub_303C4(v0, qword_5D0E8);
  sub_2E01C(v0, qword_5D0E8);
  if (qword_5CC60 != -1)
  {
    swift_once();
  }

  v1 = qword_5CC68;
  return sub_32E3C();
}

uint64_t sub_320E8()
{
  v0 = sub_32E4C();
  sub_303C4(v0, qword_5D100);
  sub_2E01C(v0, qword_5D100);
  if (qword_5CC60 != -1)
  {
    swift_once();
  }

  v1 = qword_5CC68;
  return sub_32E3C();
}

uint64_t sub_3224C()
{
  v0 = sub_32E4C();
  sub_303C4(v0, qword_5D130);
  sub_2E01C(v0, qword_5D130);
  if (qword_5CC60 != -1)
  {
    swift_once();
  }

  v1 = qword_5CC68;
  return sub_32E3C();
}

uint64_t sub_3233C()
{
  v0 = sub_32E4C();
  sub_303C4(v0, qword_5D148);
  sub_2E01C(v0, qword_5D148);
  if (qword_5CC60 != -1)
  {
    swift_once();
  }

  v1 = qword_5CC68;
  return sub_32E3C();
}

uint64_t sub_3242C()
{
  v0 = sub_32E4C();
  sub_303C4(v0, qword_5D160);
  sub_2E01C(v0, qword_5D160);
  if (qword_5CC60 != -1)
  {
    swift_once();
  }

  v1 = qword_5CC68;
  return sub_32E3C();
}

uint64_t sub_3251C()
{
  v0 = sub_32E4C();
  sub_303C4(v0, qword_5D178);
  sub_2E01C(v0, qword_5D178);
  if (qword_5CC60 != -1)
  {
    swift_once();
  }

  v1 = qword_5CC68;
  return sub_32E3C();
}

uint64_t sub_3260C()
{
  v0 = sub_32E4C();
  sub_303C4(v0, qword_5D190);
  sub_2E01C(v0, qword_5D190);
  if (qword_5CC60 != -1)
  {
    swift_once();
  }

  v1 = qword_5CC68;
  return sub_32E3C();
}

uint64_t sub_32770()
{
  v0 = sub_32E4C();
  sub_303C4(v0, qword_5D1C0);
  sub_2E01C(v0, qword_5D1C0);
  if (qword_5CC60 != -1)
  {
    swift_once();
  }

  v1 = qword_5CC68;
  return sub_32E3C();
}

uint64_t sub_32860()
{
  v0 = sub_32E4C();
  sub_303C4(v0, qword_5D1D8);
  sub_2E01C(v0, qword_5D1D8);
  if (qword_5CC60 != -1)
  {
    swift_once();
  }

  v1 = qword_5CC68;
  return sub_32E3C();
}

uint64_t sub_3297C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_32E4C();
  sub_303C4(v5, a2);
  sub_2E01C(v5, a2);
  if (qword_5CC60 != -1)
  {
    swift_once();
  }

  v6 = qword_5CC68;
  return sub_32E3C();
}

uint64_t sub_32A44(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = sub_32E4C();

  return sub_2E01C(v4, a2);
}

uint64_t sub_32ABC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_32E4C();
  v7 = sub_2E01C(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

void sub_32BC8(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1 >> 32;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "########### CT Error code: %ld", &v2, 0xCu);
}

void sub_32C44(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1 >> 32;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "### Error with CT Error code: %ld", &v2, 0xCu);
}

void sub_32CC0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 48);
  v3 = a2;
  v4 = [v2 localizedDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "AppProtection authentication failed with error %{public}@", &v5, 0xCu);
}