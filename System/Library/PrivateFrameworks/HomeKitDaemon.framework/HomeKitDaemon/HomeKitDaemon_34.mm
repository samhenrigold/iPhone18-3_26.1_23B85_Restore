id __parseLocalDestination(void *a1, void *a2)
{
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    if (a2)
    {
      v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
LABEL_10:
      v7 = 0;
      *a2 = v9;
      goto LABEL_18;
    }

LABEL_11:
    v7 = 0;
    goto LABEL_18;
  }

  if (([v3 hasPrefix:@"device:"] & 1) == 0)
  {
    if (a2)
    {
      v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:19 description:@"Invalid destination." reason:@"Missing local device prefix." suggestion:0];
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v5 = [v4 substringFromIndex:{objc_msgSend(@"device:", "length")}];
  if ([v5 length])
  {
    v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v5];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else if (a2)
    {
      *a2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:19 description:@"Invalid destination." reason:@"Invalid device identifier" suggestion:0];
    }
  }

  else if (a2)
  {
    [MEMORY[0x277CCA9B8] hmErrorWithCode:19 description:@"Invalid destination." reason:@"Missing device identifier." suggestion:0];
    *a2 = v7 = 0;
  }

  else
  {
    v7 = 0;
  }

LABEL_18:

  return v7;
}

void sub_229AF8610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id a38)
{
  objc_destroyWeak(&a38);
  objc_destroyWeak((v38 - 184));
  _Unwind_Resume(a1);
}

__CFString *HMDCloudShareTrustManagerConfigureStateAsString(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = MEMORY[0x277CCACA8];
    v3 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
    v1 = [v2 stringWithFormat:@"Unknown state %@", v3];
  }

  else
  {
    v1 = off_278672800[a1];
  }

  return v1;
}

void ____managedObjectClassFromProtocol_block_invoke()
{
  v0 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v1 = __managedObjectClassFromProtocol__hmf_once_v8;
  __managedObjectClassFromProtocol__hmf_once_v8 = v0;
}

void sub_229B07B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__38060(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229B07E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229B0BEC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229B0DC30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229B13724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__39842(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __sendChangeNotifications(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v7 = +[HMDAppleAccountManager sharedManager];
  v8 = [v7 account];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = ____sendChangeNotifications_block_invoke;
  v11[3] = &unk_278672AE8;
  v13 = v8;
  v14 = a3;
  v12 = v5;
  v9 = v8;
  v10 = v5;
  [v6 hmf_enumerateWithAutoreleasePoolUsingBlock:v11];
}

void ____sendChangeNotifications_block_invoke(uint64_t a1, void *a2)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 isObjectType:&unk_283EF7428] && *(a1 + 48) != 2)
  {
    v4 = *(a1 + 32);
    v5 = [v3 modelID];
    v6 = [v4 deviceForIdentifier:v5];

    if (v6)
    {
      logAndPostNotification(@"HMDDeviceUpdatedNotification", v6, 0);
    }
  }

  if ([v3 isObjectType:&unk_283F64610])
  {
    v7 = [*(a1 + 32) accounts];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = ____sendChangeNotifications_block_invoke_2;
    v20[3] = &unk_2786861F8;
    v21 = v3;
    [v7 hmf_enumerateWithAutoreleasePoolUsingBlock:v20];
  }

  if ([v3 isObjectType:&unk_283E8EE20])
  {
    v8 = [v3 modelID];
    v9 = [*(a1 + 40) modelIdentifier];
    v10 = [v8 isEqual:v9];

    if ((v10 & 1) == 0)
    {
      v11 = [*(a1 + 32) accounts];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = ____sendChangeNotifications_block_invoke_4;
      v18[3] = &unk_278672AC0;
      v19 = v3;
      v12 = [v11 na_firstObjectPassingTest:v18];

      if (!v12)
      {
LABEL_17:

        goto LABEL_18;
      }

      v13 = *(a1 + 48);
      if (v13 == 2)
      {
        v15 = [MEMORY[0x277CCAB98] defaultCenter];
        v16 = *(a1 + 32);
        v22 = @"HMDAccountNotificationKey";
        v23 = v12;
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
        [v15 postNotificationName:@"HMDAccountRegistryRemovedAccountNotification" object:v16 userInfo:v17];
      }

      else
      {
        if (v13 != 1)
        {
LABEL_16:

          goto LABEL_17;
        }

        v14 = *(a1 + 32);
        v24 = @"HMDAccountNotificationKey";
        v25[0] = v12;
        v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
        logAndPostNotification(@"HMDAccountRegistryAddedAccountNotification", v14, v15);
      }

      goto LABEL_16;
    }
  }

LABEL_18:
}

void ____sendChangeNotifications_block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = [v6 handles];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ____sendChangeNotifications_block_invoke_3;
  v9[3] = &unk_278672A98;
  v10 = *(a1 + 32);
  v11 = v6;
  v12 = a4;
  v8 = v6;
  [v7 hmf_enumerateWithAutoreleasePoolUsingBlock:v9];
}

uint64_t ____sendChangeNotifications_block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 modelIdentifier];
  v4 = [*(a1 + 32) modelID];
  v5 = [v3 isEqual:v4];

  return v5;
}

void ____sendChangeNotifications_block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 modelIdentifier];
  v7 = [*(a1 + 32) modelID];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    logAndPostNotification(@"HMDAccountHandlesUpdatedNotification", *(a1 + 40), 0);
    **(a1 + 48) = 1;
    *a4 = 1;
  }
}

void sub_229B145C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229B154D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __HMDAppleAccountSettingsPostUpdatedNotification(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (v1)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = v1;
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Notifying of updated Apple account settings", &v7, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 postNotificationName:@"HMDAppleAccountSettingsUpdatedNotification" object:v3];
  }
}

void sub_229B182FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229B18BE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __legacyWatchOSCategoryMap_block_invoke()
{
  v23[1] = *MEMORY[0x277D85DE8];
  if (BulletinDistributorCompanionLibraryCore(0))
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v0 = getBLTBulletinContextKeyWatchLegacyMapKeySymbolLoc_ptr;
    v17 = getBLTBulletinContextKeyWatchLegacyMapKeySymbolLoc_ptr;
    if (!getBLTBulletinContextKeyWatchLegacyMapKeySymbolLoc_ptr)
    {
      v1 = BulletinDistributorCompanionLibrary();
      v15[3] = dlsym(v1, "BLTBulletinContextKeyWatchLegacyMapKey");
      getBLTBulletinContextKeyWatchLegacyMapKeySymbolLoc_ptr = v15[3];
      v0 = v15[3];
    }

    _Block_object_dispose(&v14, 8);
    if (!v0)
    {
      goto LABEL_12;
    }

    v2 = *v0;
    v22 = v2;
    v3 = [&unk_283E72020 stringValue];
    v20 = v3;
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v4 = getBLTWatchLegacyMapCategoryIDKeySymbolLoc_ptr;
    v17 = getBLTWatchLegacyMapCategoryIDKeySymbolLoc_ptr;
    if (!getBLTWatchLegacyMapCategoryIDKeySymbolLoc_ptr)
    {
      v5 = BulletinDistributorCompanionLibrary();
      v15[3] = dlsym(v5, "BLTWatchLegacyMapCategoryIDKey");
      getBLTWatchLegacyMapCategoryIDKeySymbolLoc_ptr = v15[3];
      v4 = v15[3];
    }

    _Block_object_dispose(&v14, 8);
    if (!v4)
    {
LABEL_12:
      v13 = dlerror();
      abort_report_np("%s", v13);
      __break(1u);
    }

    v18 = *v4;
    v19 = MEMORY[0x277CBEBF8];
    v6 = MEMORY[0x277CBEAC0];
    v7 = v18;
    v8 = [v6 dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v21 = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v23[0] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v11 = legacyWatchOSCategoryMap_legacyWatchOSCategoryMap;
    legacyWatchOSCategoryMap_legacyWatchOSCategoryMap = v10;
  }

  else
  {
    v12 = legacyWatchOSCategoryMap_legacyWatchOSCategoryMap;
    legacyWatchOSCategoryMap_legacyWatchOSCategoryMap = MEMORY[0x277CBEC10];
  }
}

void sub_229B1DBEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t BulletinDistributorCompanionLibraryCore(uint64_t a1)
{
  if (!BulletinDistributorCompanionLibraryCore_frameworkLibrary)
  {
    BulletinDistributorCompanionLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return BulletinDistributorCompanionLibraryCore_frameworkLibrary;
}

void *__getBLTBulletinContextKeyWatchLegacyMapKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = BulletinDistributorCompanionLibrary();
  result = dlsym(v2, "BLTBulletinContextKeyWatchLegacyMapKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBLTBulletinContextKeyWatchLegacyMapKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t BulletinDistributorCompanionLibrary()
{
  v3 = 0;
  v0 = BulletinDistributorCompanionLibraryCore(&v3);
  v1 = v3;
  if (!v0)
  {
    v1 = abort_report_np("%s", v3);
    goto LABEL_5;
  }

  if (v3)
  {
LABEL_5:
    free(v1);
  }

  return v0;
}

void *__getBLTWatchLegacyMapCategoryIDKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = BulletinDistributorCompanionLibrary();
  result = dlsym(v2, "BLTWatchLegacyMapCategoryIDKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBLTWatchLegacyMapCategoryIDKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __BulletinDistributorCompanionLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  BulletinDistributorCompanionLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_229B2A088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229B2A43C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229B2ACA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _NCSchedulerDateWithMultiple(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v8 = MEMORY[0x277CBEAB8];
  v9 = a2;
  v10 = a1;
  v11 = objc_alloc_init(v8);
  if (v11)
  {
    v12 = [v7 era];
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v12 * a4;
    }

    [v11 setEra:v13];
    v14 = [v7 year];
    if (v14 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14 * a4;
    }

    [v11 setYear:v15];
    v16 = [v7 month];
    if (v16 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v17 = v16 * a4;
    }

    [v11 setMonth:v17];
    v18 = [v7 day];
    if (v18 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v19 = v18 * a4;
    }

    [v11 setDay:v19];
    v20 = [v7 hour];
    if (v20 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v21 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v21 = v20 * a4;
    }

    [v11 setHour:v21];
    v22 = [v7 minute];
    if (v22 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v23 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v22 * a4;
    }

    [v11 setMinute:v23];
    v24 = [v7 second];
    if (v24 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v25 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v25 = v24 * a4;
    }

    [v11 setSecond:v25];
    v26 = [v7 weekday];
    if (v26 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v27 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v27 = v26 * a4;
    }

    [v11 setWeekday:v27];
    v28 = [v7 weekdayOrdinal];
    if (v28 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v29 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v29 = v28 * a4;
    }

    [v11 setWeekdayOrdinal:v29];
    v30 = [v7 quarter];
    if (v30 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v31 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v31 = v30 * a4;
    }

    [v11 setQuarter:v31];
    v32 = [v7 weekOfMonth];
    if (v32 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v33 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v33 = v32 * a4;
    }

    [v11 setWeekOfMonth:v33];
    v34 = [v7 weekOfYear];
    if (v34 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v35 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v35 = v34 * a4;
    }

    [v11 setWeekOfYear:v35];
    v36 = [v7 yearForWeekOfYear];
    if (v36 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v37 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v37 = v36 * a4;
    }

    [v11 setYearForWeekOfYear:v37];
  }

  v38 = [v9 dateByAddingComponents:v11 toDate:v10 options:0];

  return v38;
}

void sub_229B38F04(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_229B4151C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t HMDRemoteEventRouterProtoChangeRegistrationsMessageReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 4)
      {
        if (v13 == 5)
        {
          v14 = objc_alloc_init(HMDRemoteEventRouterProtoTopic);
          [a1 addTopicAdditions:v14];
          goto LABEL_30;
        }

        if (v13 == 6)
        {
          v14 = objc_alloc_init(HMDRemoteEventRouterProtoTopic);
          [a1 addTopicRemovals:v14];
LABEL_30:
          v17[0] = 0;
          v17[1] = 0;
          if (!PBReaderPlaceMark() || !HMDRemoteEventRouterProtoTopicReadFrom(v14, a2))
          {

            return 0;
          }

          PBReaderRecallMark();
LABEL_33:

          goto LABEL_34;
        }
      }

      else
      {
        if (v13 == 3)
        {
          v14 = PBReaderReadString();
          if (v14)
          {
            [a1 addTopicFilterAdditions:v14];
          }

          goto LABEL_33;
        }

        if (v13 == 4)
        {
          v14 = PBReaderReadString();
          if (v14)
          {
            [a1 addTopicFilterRemovals:v14];
          }

          goto LABEL_33;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_34:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_229B441B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229B454AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t HMDUserActivityHomeAwayStateFromPresenceRegion(void *a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if ([v4 value] == 1)
  {
    v5 = [v3 value];
    if (v5 >= 3)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        v12 = HMFGetLogIdentifier();
        v13 = [v3 number];
        v15 = 138543618;
        v16 = v12;
        v17 = 2112;
        v18 = v13;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_FAULT, "%{public}@Cannot map presence region status to home away state: %@", &v15, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      v6 = 0;
    }

    else
    {
      v6 = v5 + 1;
    }
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v9;
      v17 = 2112;
      v18 = v4;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEBUG, "%{public}@No authorization to determine home away state: %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v6 = 1;
  }

  return v6;
}

void sub_229B49D34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__43810(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *HMDAccessorySettingsAuditReasonAsString(uint64_t a1)
{
  if ((a1 - 1) >= 8)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDMediaSystemSettingsAuditReason %tu", a1];
  }

  else
  {
    v2 = off_278672FF8[a1 - 1];
  }

  return v2;
}

__CFString *HMDEventTriggerActivationTypeAsString(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDEventTriggerActivationType %tu", a1];
  }

  else
  {
    v2 = off_278673038[a1];
  }

  return v2;
}

void sub_229B55328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  objc_destroyWeak((v10 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229B55440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229B55C18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  objc_destroyWeak((v10 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229B569EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  objc_destroyWeak((v10 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229B56C7C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_229B582C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229B591B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229B59738(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  objc_destroyWeak((v10 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229B5A6D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  objc_destroyWeak((v10 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229B5ACBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229B5D6AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  objc_destroyWeak((v10 + 40));
  objc_destroyWeak((v10 + 32));
  objc_destroyWeak(&a9);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229B5E018(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_229B5ED6C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_229B60460(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 128));
  _Unwind_Resume(a1);
}

void sub_229B66178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id a35)
{
  objc_destroyWeak(&a35);
  objc_destroyWeak((v35 - 168));
  _Unwind_Resume(a1);
}

void sub_229B68304(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id location)
{
  objc_destroyWeak((v32 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229B6C1E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229B70C20(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_229B70CC4(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_229B72770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229B733B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__48000(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229B79174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229B79520(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id HMDCameraAspectRatioForImageData(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = CGImageSourceCreateWithData(v1, 0);
  if (v2)
  {
    v3 = v2;
    ImageAtIndex = CGImageSourceCreateImageAtIndex(v2, 0, 0);
    CFRelease(v3);
    if (ImageAtIndex)
    {
      Width = CGImageGetWidth(ImageAtIndex);
      Height = CGImageGetHeight(ImageAtIndex);
      CFRelease(ImageAtIndex);
      v7 = [MEMORY[0x277CCABB0] numberWithDouble:Width / Height];
      goto LABEL_10;
    }

    v8 = objc_autoreleasePoolPush();
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v10;
      v11 = "%{public}@Failed to create image";
      goto LABEL_8;
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v10;
      v11 = "%{public}@Failed to create image source";
LABEL_8:
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, v11, &v13, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v8);
  v7 = 0;
LABEL_10:

  return v7;
}

id getIDSSessionOptionsAllowedClasses()
{
  v4[8] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v4[3] = objc_opt_class();
  v4[4] = objc_opt_class();
  v4[5] = objc_opt_class();
  v4[6] = objc_opt_class();
  v4[7] = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:8];
  v2 = [v0 setWithArray:v1];

  return v2;
}

void sub_229B7EFA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229B80E1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229B823C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __updateRegistration(void *a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a3;
  v7 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
  v8 = [v5 transaction:@"RegistrationModification" options:v7];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v15 + 1) + 8 * v13) modelObjectWithChangeType:a2 version:{4, v15}];
        [v14 setObjectChangeType:a2];
        [v8 add:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  [v8 run];
}

void sub_229B8399C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v30 - 208), 8);
  _Block_object_dispose((v30 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__49687(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void removeDictionaryEntry(void *a1, void *a2, void *a3)
{
  v8 = a1;
  v5 = a2;
  v6 = a3;
  v7 = [v8 objectForKeyedSubscript:v5];

  if (v7 == v6)
  {
    [v8 removeObjectForKey:v5];
  }
}

id __dependencySort(void *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if ([v1 count] > 1)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    v4 = [MEMORY[0x277CBEB18] array];
    v5 = MEMORY[0x277D85DD0];
    while (1)
    {
      v15[0] = v5;
      v15[1] = 3221225472;
      v15[2] = ____dependencySort_block_invoke;
      v15[3] = &unk_278673728;
      v6 = v1;
      v16 = v6;
      v7 = v4;
      v17 = v7;
      v8 = v3;
      v18 = v8;
      [v6 enumerateKeysAndObjectsUsingBlock:v15];
      v9 = [v7 count];
      if (v9 == [v6 count])
      {
        break;
      }

      if (![v7 count])
      {
        v10 = objc_autoreleasePoolPush();
        v11 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = HMFGetLogIdentifier();
          *buf = 138543362;
          v20 = v12;
          _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@LOOP IN OBJECT REFERENCES", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v10);
        v13 = [v6 allValues];
        [v8 addObjectsFromArray:v13];

        break;
      }

      [v6 removeObjectsForKeys:v7];
      [v7 removeAllObjects];
    }

    v2 = objc_msgSend_copy(v8);
  }

  else
  {
    v2 = [v1 allValues];
  }

  return v2;
}

void __lookup(void *a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if ([v6 count])
  {
    v8 = [v5 lookup];
    if (v8)
    {
      if (!v7)
      {
        v7 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
      }

      v9 = [[HMDBackingStoreTransactionActions alloc] initWithBackingStore:v5 options:v7];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = ____lookup_block_invoke;
      v18[3] = &unk_278673818;
      v19 = v8;
      v10 = v9;
      v20 = v10;
      v11 = v5;
      v21 = v11;
      [v6 hmf_enumerateWithAutoreleasePoolUsingBlock:v18];
      [(HMDBackingStoreTransactionActions *)v10 invokePostApplyActions];
      if ([(HMDBackingStoreTransactionActions *)v10 saveToAssistant])
      {
        v12 = [v11 homeManager];
        v13 = [v7 label];
        [v12 assistantSyncDataChanged:v13];
      }
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      v15 = v5;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543362;
        v23 = v17;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@HMDOBJECTLOOKUP IS NIL.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v14);
    }
  }
}

void ____lookup_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = ____lookup_block_invoke_2;
  v7[3] = &unk_27868A1D8;
  v8 = *(a1 + 48);
  v9 = v3;
  v6 = v3;
  [v4 lookUpAndApplyObjectChange:v6 previous:0 result:v5 completionHandler:v7];
}

void ____lookup_block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [*(a1 + 40) change];
      v9 = [v8 objectChangeType];
      if ((v9 - 1) > 2)
      {
        v10 = @"unknown";
      }

      else
      {
        v10 = off_278680560[v9 - 1];
      }

      v11 = v10;
      v12 = [*(a1 + 40) change];
      v13 = 138544130;
      v14 = v7;
      v15 = 2112;
      v16 = v11;
      v17 = 2112;
      v18 = objc_opt_class();
      v19 = 2112;
      v20 = v3;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@LOOKUP FAILED: %@ %@: %@", &v13, 0x2Au);
    }

    objc_autoreleasePoolPop(v4);
  }
}

void ____dependencySort_block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  v7 = [v6 change];
  v8 = [v7 dependentUUIDs];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ____dependencySort_block_invoke_2;
  v9[3] = &unk_278673700;
  v10 = a1[4];
  v11 = a1[5];
  v12 = &v13;
  [v8 hmf_enumerateWithAutoreleasePoolUsingBlock:v9];

  if (*(v14 + 24) == 1)
  {
    [a1[6] addObject:v6];
    [a1[5] addObject:v5];
  }

  _Block_object_dispose(&v13, 8);
}

void sub_229B85348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ____dependencySort_block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v5 = [*(a1 + 32) objectForKey:?];
  if (v5)
  {
    v6 = v5;
    v7 = [*(a1 + 40) containsObject:v8];

    if ((v7 & 1) == 0)
    {
      *(*(*(a1 + 48) + 8) + 24) = 0;
      *a3 = 1;
    }
  }
}

void __broadcastChanges(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v64 = *MEMORY[0x277D85DE8];
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  if ([v15 count] || (__objectsAreRelevantForBroadcast(v12) & 1) != 0 || (__objectsAreRelevantForBroadcast(v13) & 1) != 0 || (__objectsAreRelevantForBroadcast(v14) & 1) != 0)
  {
    v17 = [v12 mutableCopy];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = [MEMORY[0x277CBEB58] set];
    }

    v20 = v19;

    v21 = [v13 mutableCopy];
    v22 = v21;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = [MEMORY[0x277CBEB58] set];
    }

    v24 = v23;

    v25 = [v14 mutableCopy];
    v26 = v25;
    v46 = v13;
    v47 = v12;
    v45 = v14;
    v43 = v16;
    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = [MEMORY[0x277CBEB58] set];
    }

    v28 = v27;

    v29 = [MEMORY[0x277CBEB38] dictionary];
    v30 = [MEMORY[0x277CBEB38] dictionary];
    [v20 minusSet:v24];
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = ____broadcastChanges_block_invoke;
    v53[3] = &unk_278673750;
    v31 = v30;
    v54 = v31;
    v32 = v29;
    v55 = v32;
    v44 = v15;
    [v15 hmf_enumerateWithAutoreleasePoolUsingBlock:v53];
    v33 = [v11 context];
    v34 = [v33 partition];
    v35 = [v34 redirections];
    v36 = [v35 processInserts:v24 updates:v20 deletes:v28];

    if (v36)
    {
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = ____broadcastChanges_block_invoke_2;
      v50[3] = &unk_278673778;
      v51 = v24;
      v52 = v20;
      __removeItemsWithManagedObjectsPassingTest(v32, v50);
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = ____broadcastChanges_block_invoke_3;
      v48[3] = &unk_2786737A0;
      v49 = v28;
      __removeItemsWithManagedObjectsPassingTest(v31, v48);
    }

    v37 = __dependencySort(v31);
    __lookup(v11, v37, v43);
    __updateLegacy(v11, v20, v32, 2);
    __updateLegacy(v11, v24, v32, 1);
    v38 = __dependencySort(v32);
    __lookup(v11, v38, v43);
    [v11 dmKickClients];

    v16 = v43;
    v13 = v46;
    v12 = v47;
    v15 = v44;
    v14 = v45;
  }

  else
  {
    v39 = objc_autoreleasePoolPush();
    v40 = v11;
    v41 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      v42 = HMFGetLogIdentifier();
      *buf = 138544130;
      v57 = v42;
      v58 = 2112;
      v59 = v12;
      v60 = 2112;
      v61 = v13;
      v62 = 2112;
      v63 = v14;
      _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_DEBUG, "%{public}@Skipping broadcast: updates = %@, inserts = %@, deletes = %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v39);
  }
}

id __mirrorForeignObjects(void *a1, void *a2)
{
  v3 = a1;
  v4 = MEMORY[0x277CBEB58];
  v5 = a2;
  v6 = [[v4 alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = ____mirrorForeignObjects_block_invoke;
  v14 = &unk_278678F60;
  v15 = v6;
  v16 = v3;
  v7 = v3;
  v8 = v6;
  [v5 hmf_enumerateWithAutoreleasePoolUsingBlock:&v11];

  v9 = objc_msgSend_copy(v8, v11, v12, v13, v14);

  return v9;
}

void ____mirrorForeignObjects_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = [a2 objectID];
  v4 = [v3 objectWithID:v5];
  [v2 addObject:v4];
}

uint64_t __objectsAreRelevantForBroadcast(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (__objectsAreRelevantForBroadcast_once != -1)
  {
    dispatch_once(&__objectsAreRelevantForBroadcast_once, &__block_literal_global_95);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = v1;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = __objectsAreRelevantForBroadcast_ignoredEntityNames;
        v7 = [*(*(&v10 + 1) + 8 * i) objectID];
        v8 = [v7 entityName];
        LODWORD(v6) = [v6 containsObject:v8];

        if (!v6)
        {
          v3 = 1;
          goto LABEL_13;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

void ____broadcastChanges_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = [v3 change];
  v4 = [v8 objectChangeType];
  v5 = 40;
  if (v4 == 3)
  {
    v5 = 32;
  }

  v6 = *(a1 + v5);
  v7 = [v8 uuid];
  [v6 setObject:v3 forKeyedSubscript:v7];
}

uint64_t ____broadcastChanges_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) containsObject:v3])
  {
    v4 = 0;
  }

  else
  {
    v4 = [*(a1 + 40) containsObject:v3] ^ 1;
  }

  return v4;
}

void __removeItemsWithManagedObjectsPassingTest(void *a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277CBEB18];
  v5 = a1;
  v6 = [v4 array];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = ____removeItemsWithManagedObjectsPassingTest_block_invoke;
  v12 = &unk_2786737C8;
  v13 = v6;
  v14 = v3;
  v7 = v6;
  v8 = v3;
  [v5 enumerateKeysAndObjectsUsingBlock:&v9];
  [v5 removeObjectsForKeys:{v7, v9, v10, v11, v12}];
}

void __updateLegacy(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a1;
  v8 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = ____updateLegacy_block_invoke;
  v11[3] = &unk_2786737F0;
  v13 = v8;
  v14 = a4;
  v12 = v7;
  v9 = v8;
  v10 = v7;
  [a2 hmf_enumerateWithAutoreleasePoolUsingBlock:v11];
}

void ____updateLegacy_block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HMDCastIfManagedObjectBSORepresentable(v3);
  v5 = v4;
  if (v4)
  {
    v6 = *(a1 + 40);
    v7 = [v4 hmd_modelID];
    v8 = [v6 objectForKey:v7];

    if (!v8)
    {
      v9 = *(a1 + 48);
      v25 = 0;
      v10 = [v5 hmd_modelsWithChangeType:v9 detached:0 error:&v25];
      v11 = v25;
      if (v10)
      {
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = ____updateLegacy_block_invoke_97;
        v23[3] = &unk_2786743D8;
        v24 = *(a1 + 40);
        [v10 hmf_enumerateWithAutoreleasePoolUsingBlock:v23];
      }

      else
      {
        v19 = objc_autoreleasePoolPush();
        v20 = *(a1 + 32);
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = HMFGetLogIdentifier();
          *buf = 138543874;
          v27 = v22;
          v28 = 2112;
          v29 = v5;
          v30 = 2112;
          v31 = v11;
          _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Unable to turn managed object %@ into models: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v19);
      }
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = HMFGetLogIdentifier();
      v16 = *(a1 + 48) - 1;
      if (v16 > 2)
      {
        v17 = @"unknown";
      }

      else
      {
        v17 = off_278680560[v16];
      }

      v18 = v17;
      *buf = 138543874;
      v27 = v15;
      v28 = 2112;
      v29 = v3;
      v30 = 2112;
      v31 = v18;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Managed object %@ is not BSO-representable, ignoring it for %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
  }
}

void ____updateLegacy_block_invoke_97(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 uuid];
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];

  if (!v4)
  {
    v5 = [[HMDBackingStoreTransactionItem alloc] initWithChange:v6 message:0];
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v3];
  }
}

void ____removeItemsWithManagedObjectsPassingTest_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = [a3 change];
  v6 = HMDCastIfModelCDRepresentable(v5);
  v7 = [v6 managedObject];

  if (v7 && (*(*(a1 + 40) + 16))())
  {
    [*(a1 + 32) addObject:v8];
  }
}

void ____objectsAreRelevantForBroadcast_block_invoke()
{
  v0 = +[HMDCoreData entitiesExcludedFromWorkingStoreHistory];
  v1 = __objectsAreRelevantForBroadcast_ignoredEntityNames;
  __objectsAreRelevantForBroadcast_ignoredEntityNames = v0;
}

void sub_229B878A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ____createLegacyDeletes_block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HMDCastIfManagedObjectBSORepresentable(v3);
  v5 = v4;
  if (v4)
  {
    v18 = 0;
    v6 = [v4 hmd_modelsWithChangeType:3 detached:0 error:&v18];
    v7 = v18;
    if (v6)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = ____createLegacyDeletes_block_invoke_91;
      v16[3] = &unk_2786743D8;
      v17 = *(a1 + 40);
      [v6 hmf_enumerateWithAutoreleasePoolUsingBlock:v16];
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      v13 = *(a1 + 32);
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543874;
        v20 = v15;
        v21 = 2112;
        v22 = v5;
        v23 = 2112;
        v24 = v7;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Unable to turn managed object %@ into models: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v12);
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v20 = v11;
      v21 = 2112;
      v22 = v3;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Managed object %@ is not BSO-representable, ignoring it for delete", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }
}

void ____createLegacyDeletes_block_invoke_91(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [[HMDBackingStoreTransactionItem alloc] initWithChange:v3 message:0];

  [v2 addObject:v4];
}

HMDBackingStore *__backingStoreWithUUID(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  os_unfair_lock_lock_with_options();
  v5 = +[HMDBackingStore cdlsActiveBackingStores];
  v6 = [v5 objectForKey:v3];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v8 = [[HMDBackingStore alloc] initWithUUID:v3];
    v9 = +[HMDBackingStore cdlsActiveBackingStores];
    [v9 setObject:v8 forKey:v3];

    v10 = [(HMDBackingStore *)v8 coreData];
    if (v4)
    {
      [v10 contextWithHomeUUID:v4];
    }

    else
    {
      [v10 contextWithRootPartition];
    }
    v11 = ;

    [(HMDBackingStore *)v8 setContext:v11];
    [v11 setBackingStore:v8];
    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    [v12 addObserver:v8 selector:sel_handleCoreDataWillSaveNotification_ name:*MEMORY[0x277CBE1C0] object:0];

    v13 = [MEMORY[0x277CCAB98] defaultCenter];
    [v13 addObserver:v8 selector:sel_handleCoreDataDidSaveNotification_ name:*MEMORY[0x277CBE1A8] object:0];

    v7 = v8;
  }

  os_unfair_lock_unlock(&__backingStoreWithUUID_cdlsActiveBackingStoresLock);

  return v7;
}

void sub_229B8A504(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229B8F5D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229B90B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229B91218(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229B93734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229B94D44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak(&a22);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229B95BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33)
{
  objc_destroyWeak(&a33);
  objc_destroyWeak((v33 - 184));
  _Unwind_Resume(a1);
}

void sub_229B97F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, ...)
{
  va_start(va, a58);
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose(&a50, 8);
  _Block_object_dispose(&a54, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__50433(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229B9A6EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229B9DCD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229B9E404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229BA0A28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229BA5240(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sha256(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v24 = *MEMORY[0x277D85DE8];
  v9 = a1;
  memset(&c, 0, sizeof(c));
  CC_SHA256_Init(&c);
  v20 = &a9;
  v10 = v9;
  v11 = v10;
  if (v10)
  {
    v12 = v10;
    do
    {
      *md = 0;
      v23 = 0;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [v12 UTF8String];
        v14 = strlen(v13);
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            _HMFPreconditionFailureWithFormat();
          }

          v13 = md;
          [v12 getUUIDBytes:md];
          v15 = 16;
          goto LABEL_10;
        }

        v13 = [v12 bytes];
        v14 = [v12 length];
      }

      v15 = v14;
LABEL_10:
      CC_SHA256_Update(&c, v13, v15);
      v16 = v20++;
      v17 = *v16;

      v12 = v17;
    }

    while (v17);
  }

  CC_SHA256_Final(md, &c);
  v18 = [MEMORY[0x277CBEA90] dataWithBytes:md length:32];

  return v18;
}

void sub_229BACB30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id __findObjectInSet(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = ____findObjectInSet_block_invoke;
  v13[3] = &unk_278674148;
  v15 = v7;
  v16 = a4;
  v14 = v8;
  v9 = v7;
  v10 = v8;
  v11 = [a1 na_firstObjectPassingTest:v13];

  return v11;
}

void ____findObjectInSet_block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!a1[4])
  {
    objc_opt_isKindOfClass();
LABEL_6:

    return;
  }

  v5 = [v3 valueForKey:a1[5]];
  v6 = [v5 isEqual:a1[4]];

  if (!v6 || (objc_opt_isKindOfClass() & 1) != 0)
  {
    goto LABEL_6;
  }

  v7 = _HMFPreconditionFailure();
  [(NSManagedObject(HomeKitDaemon) *)v7 mkf_removeFromRelationship:v8 object:v9, v10];
}

id __createNewObject(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  v9 = a4;
  v10 = [a2 entity];
  v11 = [v7 entity];
  v12 = [v8 inverseRelationship];
  v13 = [v12 destinationEntity];
  v14 = [v11 isKindOfEntity:v13];

  if ((v14 & 1) == 0)
  {
    _HMFPreconditionFailure();
    goto LABEL_20;
  }

  v15 = objc_alloc(MEMORY[0x277CBE438]);
  v16 = [v7 managedObjectContext];
  v17 = [v15 initWithEntity:v10 insertIntoManagedObjectContext:v16];

  v18 = [v8 destinationEntity];
  v19 = [v18 managedObjectClassName];
  NSClassFromString(v19);
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_20:
    _HMFPreconditionFailure();
    goto LABEL_21;
  }

  v21 = __keyNameForEntity(v10);
  if (![v21 isEqual:@"modelID"])
  {
    if (v9)
    {
      [v17 setValue:v9 forKey:v21];
      v22 = [v10 attributesByName];
      v23 = [v22 objectForKey:@"modelID"];

      if (!v23)
      {
        goto LABEL_14;
      }

      if (objc_opt_respondsToSelector())
      {
        v24 = [a2 modelIDForKeyAttribute:v9 parent:v7];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v17 setValue:v24 forKey:@"modelID"];

          goto LABEL_14;
        }

LABEL_24:
        v32 = _HMFPreconditionFailure();
        return [(NSManagedObject(HomeKitDaemon) *)v32 mkf_materializeOrCreateRelationOnProperty:v33 modelProtocol:v34 keyValue:v35 createdNew:v36, v37];
      }

LABEL_23:
      _HMFPreconditionFailure();
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  if (!v9)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0 || ([a2 modelIDForParentRelationshipTo:v7], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
    {
LABEL_21:
      _HMFPreconditionFailure();
      goto LABEL_22;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_22:
    _HMFPreconditionFailure();
    goto LABEL_23;
  }

  [v17 setValue:v9 forKey:v21];
LABEL_14:
  v25 = [v10 relationshipsByName];
  v26 = [v8 inverseRelationship];
  v27 = [v26 name];
  v28 = [v25 objectForKey:v27];

  if (v28)
  {
    v29 = [v8 inverseRelationship];
    v30 = [v29 name];
    [v17 setValue:v7 forKey:v30];
  }

  return v17;
}

void sub_229BB38DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__53753(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229BB9318(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229BBEC78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__54800(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229BBEF0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229BBF904(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location)
{
  objc_destroyWeak((v31 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229BBFED0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229BC0484(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229BC0C18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id location)
{
  _Block_object_dispose((v38 - 160), 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id hds_log()
{
  if (hds_log__hmf_once_t0 != -1)
  {
    dispatch_once(&hds_log__hmf_once_t0, &__block_literal_global_56123);
  }

  v1 = hds_log__hmf_once_v1;

  return v1;
}

void __hds_log_block_invoke()
{
  v2 = [@"hds" stringByReplacingOccurrencesOfString:@"_" withString:@"."];
  v0 = HMFCreateOSLogHandle();
  v1 = hds_log__hmf_once_v1;
  hds_log__hmf_once_v1 = v0;
}

void sub_229BCA9B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__56247(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ____homeWithHomeManager_block_invoke(uint64_t a1)
{
  v197 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _homeWithUUID:*(a1 + 40)];

  if (v2)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 32);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = HMFGetLogIdentifier();
      v7 = *(a1 + 40);
      *buf = 138543618;
      v168 = v6;
      v169 = 2112;
      v170 = v7;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_ERROR, "%{public}@Not re-adding a home that already exists (%@)", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
  }

  else
  {
    HMFUptime();
    v9 = v8;
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = HMFGetLogIdentifier();
      v14 = *(a1 + 40);
      *buf = 138544898;
      v168 = v13;
      v169 = 2114;
      v170 = @"homeManagerInitStart";
      v171 = 2112;
      v172 = @"Fetching and creating home";
      v173 = 2114;
      v174 = @"state";
      v175 = 2112;
      v176 = @"homeManagerCreatingHome";
      v177 = 2114;
      v178 = @"homeUUID";
      v179 = 2112;
      v180 = v14;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEBUG, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@", buf, 0x48u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = [MEMORY[0x277D17DE8] sharedInstance];
    v16 = objc_alloc(MEMORY[0x277D17DF8]);
    v159 = *(a1 + 40);
    v17 = HMDTaggedLoggingCreateDictionary();
    v18 = [v16 initWithTag:@"homeManagerInitStart" data:{v17, @"state", @"homeManagerCreatingHome", @"homeUUID", v159}];
    v19 = [MEMORY[0x277D0F770] currentTagProcessorList];
    [v15 submitTaggedEvent:v18 processorList:v19];

    v21 = *(a1 + 40);
    v20 = *(a1 + 48);
    v166 = 0;
    v22 = [v20 cdlsFetchObjectWithUUID:v21 ofModelType:objc_opt_class() error:&v166];
    v23 = v166;
    v24 = *(*(a1 + 56) + 8);
    v25 = *(v24 + 40);
    *(v24 + 40) = v22;

    v26 = *(*(*(a1 + 56) + 8) + 40);
    if (v26)
    {
      v27 = *(a1 + 32);
      v28 = *(a1 + 48);
      v165 = v23;
      v29 = [HMDHome homeWithHomeManager:v27 backingStore:v28 model:v26 error:&v165];
      v30 = v165;

      v31 = objc_autoreleasePoolPush();
      v32 = *(a1 + 32);
      v33 = HMFGetOSLogHandle();
      v34 = 0x277CCA000;
      v35 = 0x277CCA000;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v36 = HMFGetLogIdentifier();
        v37 = MEMORY[0x277CCACA8];
        HMFUptime();
        v39 = [v37 stringWithFormat:@"%.3f", v38 - v9];
        v40 = [MEMORY[0x277CCABB0] numberWithInt:v29 != 0];
        v41 = [v30 domain];
        v162 = v31;
        v42 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v30, "code")}];
        v43 = *(a1 + 40);
        *buf = 138546946;
        v168 = v36;
        v169 = 2114;
        v170 = @"homeManagerInitStart";
        v171 = 2112;
        v172 = @"Created home from home model";
        v173 = 2114;
        v174 = @"state";
        v175 = 2112;
        v176 = @"homeManagerCreatedHome";
        v177 = 2114;
        v178 = @"duration";
        v179 = 2112;
        v180 = v39;
        v181 = 2114;
        v182 = @"success";
        v183 = 2112;
        v184 = v40;
        v185 = 2114;
        v186 = @"errorDomain";
        v187 = 2112;
        v188 = v41;
        v189 = 2114;
        v190 = @"errorCode";
        v191 = 2112;
        v192 = v42;
        v193 = 2114;
        v194 = @"homeUUID";
        v195 = 2112;
        v196 = v43;
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@", buf, 0x98u);

        v31 = v162;
        v34 = 0x277CCA000uLL;

        v35 = 0x277CCA000uLL;
      }

      v164 = v30;

      objc_autoreleasePoolPop(v31);
      v44 = [MEMORY[0x277D17DE8] sharedInstance];
      v45 = objc_alloc(MEMORY[0x277D17DF8]);
      v46 = *(v34 + 3240);
      HMFUptime();
      v48 = [v46 stringWithFormat:@"%.3f", v47 - v9];
      v49 = [*(v35 + 2992) numberWithInt:v29 != 0];
      v50 = [v30 domain];
      v51 = [*(v35 + 2992) numberWithInteger:{objc_msgSend(v30, "code")}];
      v161 = *(a1 + 40);
      v52 = HMDTaggedLoggingCreateDictionary();
      v53 = [v45 initWithTag:@"homeManagerInitStart" data:{v52, @"state", @"homeManagerCreatedHome", @"duration", v48, @"success", v49, @"errorDomain", v50, @"errorCode", v51, @"homeUUID", v161}];
      v54 = [MEMORY[0x277D0F770] currentTagProcessorList];
      [v44 submitTaggedEvent:v53 processorList:v54];

      if (v29)
      {
        HMFUptime();
        v56 = v55;
        v57 = objc_autoreleasePoolPush();
        v58 = *(a1 + 32);
        v59 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
        {
          v60 = HMFGetLogIdentifier();
          v61 = [v29 uuid];
          v62 = [v29 name];
          *buf = 138545410;
          v168 = v60;
          v169 = 2114;
          v170 = @"homeManagerInitStart";
          v171 = 2112;
          v172 = @"Adding home";
          v173 = 2114;
          v174 = @"state";
          v175 = 2112;
          v176 = @"homeManagerAddingHome";
          v177 = 2114;
          v178 = @"homeUUID";
          v179 = 2112;
          v180 = v61;
          v181 = 2114;
          v182 = @"homeName";
          v183 = 2112;
          v184 = v62;
          _os_log_impl(&dword_229538000, v59, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@", buf, 0x5Cu);
        }

        objc_autoreleasePoolPop(v57);
        v63 = [MEMORY[0x277D17DE8] sharedInstance];
        v64 = objc_alloc(MEMORY[0x277D17DF8]);
        v65 = [v29 uuid];
        v66 = [v29 name];
        v67 = HMDTaggedLoggingCreateDictionary();
        v68 = [v64 initWithTag:@"homeManagerInitStart" data:{v67, @"state", @"homeManagerAddingHome", @"homeUUID", v65, @"homeName", v66}];
        v69 = [MEMORY[0x277D0F770] currentTagProcessorList];
        [v63 submitTaggedEvent:v68 processorList:v69];

        v70 = [*(a1 + 32) incomingInvitations];
        v71 = [v29 uuid];
        v72 = [v70 hmf_firstObjectWithValue:v71 forKeyPath:@"homeUUID"];

        v163 = v72;
        if (v72)
        {
          v73 = objc_autoreleasePoolPush();
          v74 = *(a1 + 32);
          v75 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
          {
            v76 = HMFGetLogIdentifier();
            v77 = [v29 uuid];
            v78 = [v72 describeWithFormat];
            *buf = 138543874;
            v168 = v76;
            v169 = 2112;
            v170 = v77;
            v171 = 2112;
            v172 = v78;
            _os_log_impl(&dword_229538000, v75, OS_LOG_TYPE_INFO, "%{public}@Removing existing invitation for home with UUID: %@ in invite %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v73);
          [*(a1 + 32) _postIncomingInvitationStateChangedNotification:v72 newInvitationState:3];
          [*(a1 + 32) _removeIncomingInvitation:v72];
        }

        v79 = [*(a1 + 32) nameValidator];
        v80 = [v29 uuid];
        v81 = [v79 addNamespace:v80];

        v82 = *(a1 + 32);
        v83 = [v29 name];
        v84 = [*(a1 + 32) uuid];
        v85 = [v82 addName:v83 namespace:v84];

        v86 = *(a1 + 32);
        v87 = [v29 roomForEntireHome];
        v88 = [v87 name];
        v89 = [v29 uuid];
        v90 = [v86 addName:v88 namespace:v89];

        [*(a1 + 32) addHome:v29];
        v91 = objc_autoreleasePoolPush();
        v92 = *(a1 + 32);
        v93 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
        {
          v94 = HMFGetLogIdentifier();
          v95 = MEMORY[0x277CCACA8];
          HMFUptime();
          v97 = [v95 stringWithFormat:@"%.3f", v96 - v56];
          v98 = [v29 uuid];
          *buf = 138545410;
          v168 = v94;
          v169 = 2114;
          v170 = @"homeManagerInitStart";
          v171 = 2112;
          v172 = @"Added home";
          v173 = 2114;
          v174 = @"state";
          v175 = 2112;
          v176 = @"homeManagerAddedHome";
          v177 = 2114;
          v178 = @"duration";
          v179 = 2112;
          v180 = v97;
          v181 = 2114;
          v182 = @"homeUUID";
          v183 = 2112;
          v184 = v98;
          _os_log_impl(&dword_229538000, v93, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@", buf, 0x5Cu);
        }

        objc_autoreleasePoolPop(v91);
        v99 = [MEMORY[0x277D17DE8] sharedInstance];
        v100 = objc_alloc(MEMORY[0x277D17DF8]);
        v101 = MEMORY[0x277CCACA8];
        HMFUptime();
        v103 = [v101 stringWithFormat:@"%.3f", v102 - v56];
        v104 = [v29 uuid];
        v105 = HMDTaggedLoggingCreateDictionary();
        v106 = [v100 initWithTag:@"homeManagerInitStart" data:{v105, @"state", @"homeManagerAddedHome", @"duration", v103, @"homeUUID", v104}];
        v107 = [MEMORY[0x277D0F770] currentTagProcessorList];
        [v99 submitTaggedEvent:v106 processorList:v107];

        v108 = [*(*(*(a1 + 56) + 8) + 40) owned];
        [v29 setOwnerUser:{objc_msgSend(v108, "BOOLValue")}];

        HMFUptime();
        v110 = v109;
        v111 = objc_autoreleasePoolPush();
        v112 = *(a1 + 32);
        v113 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v113, OS_LOG_TYPE_DEBUG))
        {
          v114 = HMFGetLogIdentifier();
          v115 = [v29 uuid];
          *buf = 138544898;
          v168 = v114;
          v169 = 2114;
          v170 = @"homeManagerInitStart";
          v171 = 2112;
          v172 = @"Configuring home";
          v173 = 2114;
          v174 = @"state";
          v175 = 2112;
          v176 = @"homeManagerConfiguringHome";
          v177 = 2114;
          v178 = @"homeUUID";
          v179 = 2112;
          v180 = v115;
          _os_log_impl(&dword_229538000, v113, OS_LOG_TYPE_DEBUG, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@", buf, 0x48u);
        }

        objc_autoreleasePoolPop(v111);
        v116 = [MEMORY[0x277D17DE8] sharedInstance];
        v117 = objc_alloc(MEMORY[0x277D17DF8]);
        v118 = [v29 uuid];
        v119 = HMDTaggedLoggingCreateDictionary();
        v120 = [v117 initWithTag:@"homeManagerInitStart" data:{v119, @"state", @"homeManagerConfiguringHome", @"homeUUID", v118}];
        v121 = [MEMORY[0x277D0F770] currentTagProcessorList];
        [v116 submitTaggedEvent:v120 processorList:v121];

        [v29 configureWithHomeManager:*(a1 + 32) accessoriesPresent:0 uncommittedTransactions:MEMORY[0x277CBEBF8] source:1];
        v122 = objc_autoreleasePoolPush();
        v123 = *(a1 + 32);
        v124 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v124, OS_LOG_TYPE_INFO))
        {
          v125 = HMFGetLogIdentifier();
          v126 = MEMORY[0x277CCACA8];
          HMFUptime();
          v128 = [v126 stringWithFormat:@"%.3f", v127 - v110];
          v129 = [v29 uuid];
          *buf = 138545410;
          v168 = v125;
          v169 = 2114;
          v170 = @"homeManagerInitStart";
          v171 = 2112;
          v172 = @"Configured home";
          v173 = 2114;
          v174 = @"state";
          v175 = 2112;
          v176 = @"homeManagerConfiguredHome";
          v177 = 2114;
          v178 = @"duration";
          v179 = 2112;
          v180 = v128;
          v181 = 2114;
          v182 = @"homeUUID";
          v183 = 2112;
          v184 = v129;
          _os_log_impl(&dword_229538000, v124, OS_LOG_TYPE_INFO, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@", buf, 0x5Cu);
        }

        objc_autoreleasePoolPop(v122);
        v130 = [MEMORY[0x277D17DE8] sharedInstance];
        v131 = objc_alloc(MEMORY[0x277D17DF8]);
        v132 = MEMORY[0x277CCACA8];
        HMFUptime();
        v134 = [v132 stringWithFormat:@"%.3f", v133 - v110];
        v135 = [v29 uuid];
        v136 = HMDTaggedLoggingCreateDictionary();
        v137 = [v131 initWithTag:@"homeManagerInitStart" data:{v136, @"state", @"homeManagerConfiguredHome", @"duration", v134, @"homeUUID", v135}];
        v138 = [MEMORY[0x277D0F770] currentTagProcessorList];
        [v130 submitTaggedEvent:v137 processorList:v138];

        v139 = v163;
        v23 = v164;
      }

      else
      {
        v158 = *(*(a1 + 56) + 8);
        v139 = *(v158 + 40);
        *(v158 + 40) = 0;
        v23 = v164;
      }
    }

    else
    {
      v140 = objc_autoreleasePoolPush();
      v141 = *(a1 + 32);
      v142 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v142, OS_LOG_TYPE_ERROR))
      {
        v143 = HMFGetLogIdentifier();
        v144 = MEMORY[0x277CCACA8];
        HMFUptime();
        v146 = [v144 stringWithFormat:@"%.3f", v145 - v9];
        v147 = [v23 domain];
        v148 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v23, "code")}];
        v149 = *(a1 + 40);
        *buf = 138546434;
        v168 = v143;
        v169 = 2114;
        v170 = @"homeManagerInitStart";
        v171 = 2112;
        v172 = @"Unable to find home";
        v173 = 2114;
        v174 = @"state";
        v175 = 2112;
        v176 = @"homeManagerCreatedHome";
        v177 = 2114;
        v178 = @"duration";
        v179 = 2112;
        v180 = v146;
        v181 = 2114;
        v182 = @"errorDomain";
        v183 = 2112;
        v184 = v147;
        v185 = 2114;
        v186 = @"errorCode";
        v187 = 2112;
        v188 = v148;
        v189 = 2114;
        v190 = @"homeUUID";
        v191 = 2112;
        v192 = v149;
        _os_log_impl(&dword_229538000, v142, OS_LOG_TYPE_ERROR, "%{public}@tag=%{public}@ desc=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@ %{public}@=%@", buf, 0x84u);
      }

      objc_autoreleasePoolPop(v140);
      v29 = [MEMORY[0x277D17DE8] sharedInstance];
      v150 = objc_alloc(MEMORY[0x277D17DF8]);
      v151 = MEMORY[0x277CCACA8];
      HMFUptime();
      v139 = [v151 stringWithFormat:@"%.3f", v152 - v9];
      v153 = [v23 domain];
      v154 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v23, "code")}];
      v160 = *(a1 + 40);
      v155 = HMDTaggedLoggingCreateDictionary();
      v156 = [v150 initWithTag:@"homeManagerInitStart" data:{v155, @"state", @"homeManagerCreatedHome", @"duration", v139, @"errorDomain", v153, @"errorCode", v154, @"homeUUID", v160}];
      v157 = [MEMORY[0x277D0F770] currentTagProcessorList];
      [v29 submitTaggedEvent:v156 processorList:v157];
    }
  }
}

void sub_229BCF5BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id a27, id a28)
{
  objc_destroyWeak((v28 + 64));
  objc_destroyWeak((v28 + 56));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a28);
  objc_destroyWeak(&a27);
  objc_destroyWeak((v29 - 152));
  objc_destroyWeak((v29 - 144));
  _Unwind_Resume(a1);
}

void sub_229BD4F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__57059(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229BD6440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location)
{
  objc_destroyWeak((v31 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __getDenylistKeys_block_invoke(uint64_t a1)
{
  if (isInternalBuild())
  {
    [MEMORY[0x277CBEB98] setWithObjects:{@"kAuthorizationDataKey", 0, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15}];
  }

  else
  {
    [MEMORY[0x277CBEB98] setWithObjects:{@"kAuthorizationDataKey", *MEMORY[0x277CD1FD8], *MEMORY[0x277CD1FC8], *MEMORY[0x277CD2620], *MEMORY[0x277CD2040], *MEMORY[0x277CD2758], *MEMORY[0x277CD27B0], *MEMORY[0x277CD23D0], *MEMORY[0x277CD0D30], @"kAccessoryInfoSerialNumberKey", @"kUserIDKey", @"kUserIDsKey", @"kUserDisplayNameKey", @"kUserNamesKey", 0}];
  }
  v1 = ;
  v2 = getDenylistKeys_denylistKeys;
  getDenylistKeys_denylistKeys = v1;
}

void sub_229BD7334(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

id HMXPCClientEntitlementsToComponents(unint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:64];
  if (a1)
  {
    for (i = 1; i - 1 < a1; i *= 2)
    {
      if ((i & a1) != 0)
      {
        if (i <= 2047)
        {
          if (i <= 31)
          {
            if (i <= 3)
            {
              v4 = @"com.apple.developer.homekit";
              if (i == 1)
              {
                goto LABEL_56;
              }

              if (i == 2)
              {
                v4 = @"com.apple.developer.homekit.background-mode";
                goto LABEL_56;
              }
            }

            else
            {
              switch(i)
              {
                case 4:
                  v4 = @"com.apple.private.homekit";
                  goto LABEL_56;
                case 8:
                  v4 = @"com.apple.private.homekit.pairing-identity";
                  goto LABEL_56;
                case 16:
                  v4 = @"com.apple.private.homekit.pairing-identity.private";
                  goto LABEL_56;
              }
            }
          }

          else if (i > 255)
          {
            switch(i)
            {
              case 256:
                v4 = @"com.apple.private.homekit.connectivity-info";
                goto LABEL_56;
              case 512:
                v4 = @"com.apple.private.homekit.multi-user.setup";
                goto LABEL_56;
              case 1024:
                v4 = @"com.apple.private.homekit.location";
                goto LABEL_56;
            }
          }

          else
          {
            switch(i)
            {
              case 32:
                v4 = @"com.apple.private.homekit.remote-login.private";
                goto LABEL_56;
              case 64:
                v4 = @"com.apple.developer.homekit.allow-setup-payload";
                goto LABEL_56;
              case 128:
                v4 = @"com.apple.private.homekit.cameraclips";
                goto LABEL_56;
            }
          }
        }

        else if (i >= 0x20000)
        {
          if (i >= 0x100000)
          {
            switch(i)
            {
              case 0x100000:
                v4 = @"com.apple.private.homekit.location-feedback-debug";
                goto LABEL_56;
              case 0x200000:
                v4 = @"com.apple.developer.matter.allow-setup-payload";
                goto LABEL_56;
              case 0x400000:
                v4 = @"com.apple.private.homekit.modern-messaging";
                goto LABEL_56;
            }
          }

          else
          {
            switch(i)
            {
              case 0x20000:
                v4 = @"com.apple.private.homekit.wallet-key";
                goto LABEL_56;
              case 0x40000:
                v4 = @"com.apple.private.homekit.assistant-identifiers";
                goto LABEL_56;
              case 0x80000:
                v4 = @"com.apple.private.homekit.home-location";
                goto LABEL_56;
            }
          }
        }

        else if (i >= 0x4000)
        {
          switch(i)
          {
            case 0x4000:
              v4 = @"com.apple.private.homekit.allow-secure-access";
              goto LABEL_56;
            case 0x8000:
              v4 = @"com.apple.private.homekit.diagnostics";
              goto LABEL_56;
            case 0x10000:
              v4 = @"com.apple.private.homekit.state-dump";
              goto LABEL_56;
          }
        }

        else
        {
          switch(i)
          {
            case 0x800:
              v4 = @"com.apple.private.homekit.shortcuts-automation-access";
              goto LABEL_56;
            case 0x1000:
              v4 = @"com.apple.private.homekit.messaging";
              goto LABEL_56;
            case 0x2000:
              v4 = @"com.apple.private.homekit.person-manager";
LABEL_56:
              [v2 addObject:v4];
              break;
          }
        }
      }
    }
  }

  v5 = objc_msgSend_copy(v2);

  return v5;
}

void sub_229BDB444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose((v65 - 256), 8);
  _Block_object_dispose((v65 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__57771(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229BDE240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229BDE470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229BDE6A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229BE2270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  _Block_object_dispose(&a18, 8);
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229BE2884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229BE2AB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229BE2E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229BE3088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229BE3424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229BE3658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229BE4C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229BE6E78(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_229BEBA00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__59005(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229BEC018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229BF216C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229BF2E78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229C06814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, ...)
{
  va_start(va, a57);
  _Block_object_dispose(&a54, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__60566(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229C0C2C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229C0CB14(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_229C0D3F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __notifyDelegateAccountRemoved(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = [v3 clientQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = ____notifyDelegateAccountRemoved_block_invoke;
    v6[3] = &unk_27868A750;
    v7 = v3;
    v8 = v4;
    dispatch_async(v5, v6);
  }
}

void ____notifyDelegateAccountRemoved_block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) shortDescription];
    *buf = 138543618;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Account removed: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v11 = @"HMDAccountNotificationKey";
  v12 = v8;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  [v7 postNotificationName:@"HMDAccountRegistryRemovedAccountNotification" object:v9 userInfo:v10];
}

void __notifyDelegateAccountAdded(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = [v3 clientQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = ____notifyDelegateAccountAdded_block_invoke;
    v6[3] = &unk_27868A750;
    v7 = v3;
    v8 = v4;
    dispatch_async(v5, v6);
  }
}

void ____notifyDelegateAccountAdded_block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) shortDescription];
    *buf = 138543618;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Account added: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v11 = @"HMDAccountNotificationKey";
  v12 = v8;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  [v7 postNotificationName:@"HMDAccountRegistryAddedAccountNotification" object:v9 userInfo:v10];
}

void __cleanupRemoteDevicesWithHandles(void *a1, void *a2)
{
  v53 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  context = objc_autoreleasePoolPush();
  v35 = v3;
  [v3 remoteAccountManager];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v28 = v44 = 0u;
  obj = [v28 accounts];
  v31 = [obj countByEnumeratingWithState:&v41 objects:v52 count:16];
  if (v31)
  {
    v30 = *v42;
    v5 = 0x277CBE000uLL;
    v33 = v4;
    do
    {
      v6 = 0;
      do
      {
        if (*v42 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v32 = v6;
        v7 = *(*(&v41 + 1) + 8 * v6);
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v36 = v7;
        v34 = [v7 devices];
        v8 = [v34 countByEnumeratingWithState:&v37 objects:v51 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v38;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v38 != v10)
              {
                objc_enumerationMutation(v34);
              }

              v12 = *(*(&v37 + 1) + 8 * i);
              v13 = *(v5 + 2904);
              v14 = [v12 handles];
              v15 = [v13 setWithArray:v14];

              [v15 intersectSet:v4];
              if ([v15 count])
              {
                v16 = objc_autoreleasePoolPush();
                v17 = v35;
                v18 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
                {
                  v19 = HMFGetLogIdentifier();
                  v20 = [v12 shortDescription];
                  *buf = 138543874;
                  v46 = v19;
                  v47 = 2112;
                  v48 = v20;
                  v49 = 2112;
                  v50 = v36;
                  _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Removing duplicate device, %@, from account: %@", buf, 0x20u);

                  v4 = v33;
                  v5 = 0x277CBE000;
                }

                objc_autoreleasePoolPop(v16);
                [v36 removeDevice:v12];
              }
            }

            v9 = [v34 countByEnumeratingWithState:&v37 objects:v51 count:16];
          }

          while (v9);
        }

        v21 = [v36 devices];
        v22 = [v21 hmf_isEmpty];

        v5 = 0x277CBE000;
        if (v22)
        {
          v23 = objc_autoreleasePoolPush();
          v24 = v35;
          v25 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = HMFGetLogIdentifier();
            *buf = 138543618;
            v46 = v26;
            v47 = 2112;
            v48 = v36;
            _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@Removing duplicate empty account: %@", buf, 0x16u);

            v5 = 0x277CBE000;
          }

          objc_autoreleasePoolPop(v23);
          [v28 removeAccount:v36];
        }

        v6 = v32 + 1;
        v4 = v33;
      }

      while (v32 + 1 != v31);
      v31 = [obj countByEnumeratingWithState:&v41 objects:v52 count:16];
    }

    while (v31);
  }

  objc_autoreleasePoolPop(context);
}

void __cleanupRemoteAccountsRelatedToAccount(void *a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  context = objc_autoreleasePoolPush();
  v5 = [v3 remoteAccountManager];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = [v5 accounts];
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    v18 = v5;
    v19 = v3;
    v20 = v6;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        if (([v4 isEqual:v11] & 1) == 0 && objc_msgSend(v4, "isRelatedToAccount:", v11))
        {
          v12 = objc_autoreleasePoolPush();
          v13 = v3;
          v14 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = HMFGetLogIdentifier();
            v16 = [v11 shortDescription];
            *buf = 138543618;
            v26 = v15;
            v27 = 2112;
            v28 = v16;
            _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Detected stale account, %@, removing", buf, 0x16u);

            v3 = v19;
            v5 = v18;
          }

          objc_autoreleasePoolPop(v12);
          [v5 removeAccount:v11];
          v6 = v20;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v8);
  }

  objc_autoreleasePoolPop(context);
}

void __registerForAccountUpdates(void *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  v6 = v3;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v8;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Registering for account updates: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  [v9 removeObserver:v6 name:@"HMDAccountHandlesUpdatedNotification" object:0];

  v10 = [MEMORY[0x277CCAB98] defaultCenter];
  [v10 removeObserver:v6 name:@"HMDAccountAddedDeviceNotification" object:0];

  if (v4)
  {
    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 addObserver:v6 selector:sel___handleAppleAccountHandlesUpdated_ name:@"HMDAccountHandlesUpdatedNotification" object:v4];

    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    [v12 addObserver:v6 selector:sel___handleAppleAccountDeviceAdded_ name:@"HMDAccountAddedDeviceNotification" object:v4];
  }
}

id __deviceForDevice(void *a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v25;
      v19 = *v25;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v25 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v24 + 1) + 8 * i);
          v20 = 0u;
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v11 = v10;
          v12 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v21;
            while (2)
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v21 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v20 + 1) + 8 * j);
                if ([v4 isRelatedToDevice:v16])
                {
                  v17 = v16;

                  goto LABEL_21;
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
              if (v13)
              {
                continue;
              }

              break;
            }
          }

          v8 = v19;
        }

        v7 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
        v17 = 0;
      }

      while (v7);
    }

    else
    {
      v17 = 0;
    }

LABEL_21:
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

id __deviceForHandle(void *a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v14 + 1) + 8 * i) deviceForHandle:{v5, v14}];
          if (v12)
          {
            v6 = v12;
            goto LABEL_13;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v6 = 0;
LABEL_13:
  }

  return v6;
}

id __accountForHandle(void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          v10 = [v9 handles];
          v11 = [v10 containsObject:v4];

          if (v11)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_229C23E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229C23F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229C24214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__64390(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229C271D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, ...)
{
  va_start(va, a60);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(&a53, 8);
  _Unwind_Resume(a1);
}

void sub_229C278D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__64831(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229C2E7C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__65886(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __createBackboardWatcher(void *a1)
{
  location[3] = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (!+[HMDDeviceCapabilities supportsBackboard])
  {
    v6 = objc_autoreleasePoolPush();
    v7 = v1;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      LODWORD(location[0]) = 138543362;
      *(location + 4) = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@No backboardd support for device, skipping watcher", location, 0xCu);
    }

    goto LABEL_9;
  }

  ServerPort = CARenderServerGetServerPort();
  if ((ServerPort - 1) >= 0xFFFFFFFE)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = v1;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      LODWORD(location[0]) = 138543362;
      *(location + 4) = v10;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Unable to find port for default render server", location, 0xCu);
    }

LABEL_9:

    objc_autoreleasePoolPop(v6);
    goto LABEL_10;
  }

  v3 = ServerPort;
  objc_initWeak(location, v1);
  v4 = MEMORY[0x277CF0CB8];
  v5 = [objc_alloc(MEMORY[0x277CF0C60]) initWithPort:v3];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = ____createBackboardWatcher_block_invoke;
  v11[3] = &unk_278686B80;
  objc_copyWeak(&v12, location);
  [v4 monitorSendRight:v5 withHandler:v11];

  objc_destroyWeak(&v12);
  objc_destroyWeak(location);
LABEL_10:
}

void sub_229C2EBC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ____createBackboardWatcher_block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _backboardServicesRelaunched];
}

void sub_229C33FA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229C35304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak((v65 + 56));
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose((v66 - 160), 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229C382BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__67633(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t HMDRemoteEventRouterProtoTopicReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 3)
      {
        v13 = &OBJC_IVAR___HMDRemoteEventRouterProtoTopic__eventUUID;
LABEL_21:
        v14 = PBReaderReadString();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___HMDRemoteEventRouterProtoTopic__topic;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

id _findConstraintForType(void *a1, uint64_t a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = ___findConstraintForType_block_invoke;
  v4[3] = &__block_descriptor_40_e38_B16__0__HMAccessorySettingConstraint_8l;
  v4[4] = a2;
  v2 = [a1 na_firstObjectPassingTest:v4];

  return v2;
}

uint64_t HMDIsSiriClientIdentifier(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"com.apple.Siri"])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"assistant_service"];
  }

  return v2;
}

uint64_t HMDIsFirstPartyClientIdentifier(void *a1)
{
  v1 = a1;
  if (HMDIsFirstPartyClientIdentifier_onceToken != -1)
  {
    dispatch_once(&HMDIsFirstPartyClientIdentifier_onceToken, &__block_literal_global_68743);
  }

  if ([v1 hasPrefix:@"com.apple."] & 1) != 0 || (objc_msgSend(v1, "hasPrefix:", @"apple."))
  {
    v2 = 1;
  }

  else
  {
    v2 = [HMDIsFirstPartyClientIdentifier_knownClientIdentifiers containsObject:v1];
  }

  return v2;
}

void __HMDIsFirstPartyClientIdentifier_block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithObjects:{@"accountsd", @"amsaccountsd", @"announced", @"assistant_service", @"assistantd", @"Carousel", @"CarPlay", @"cloudmediaservicesd", @"companiond", @"coordinated", @"coreautomationd", @"diagnosticextensionsd", @"hdsutil", @"HDSViewService", @"HomeAppIntentsExtension", @"homeenergyd", @"homehubd", @"HomeIntegrationTests-Runner", @"HomeKitDiagnosticExtension", @"HomeKitIntentExtension", @"homepodsensoryreporterd", @"homepodsettingsd", @"homeutil", @"itunescloudd", @"knowledgeconstructiond", @"mediaanalysisd-service", @"mediaanalysisd", @"mediaremoted", @"mediasetupd", @"passd", @"PineBoard", @"proximitycontrold", @"rapportd", @"seserviced", @"sharingd", @"Shortcuts", @"Siri Debug", @"siri", @"siriinferenced", @"siriknowledged", @"sirittsd", @"SiriUI", @"SiriUserFeedbackLearningUnivers", @"SoundBoard", @"SpringBoard", @"taptoradard", @"tvairplayd", @"tvremoted", @"tvsetuputil", @"userprofilesd", @"voiced", @"wifid", 0}];
  v1 = HMDIsFirstPartyClientIdentifier_knownClientIdentifiers;
  HMDIsFirstPartyClientIdentifier_knownClientIdentifiers = v0;
}

__CFString *HMDRequestSourceAsString(uint64_t a1)
{
  if (a1 > 1059)
  {
    if (a1 <= 1139)
    {
      if (a1 > 1099)
      {
        if (a1 > 1119)
        {
          if (a1 == 1120)
          {
            v2 = @"HMDHome";

            return v2;
          }

          if (a1 == 1130)
          {
            v2 = @"PeriodicReader";

            return v2;
          }
        }

        else
        {
          if (a1 == 1100)
          {
            v2 = @"HMDService";

            return v2;
          }

          if (a1 == 1110)
          {
            v2 = @"WalletKeyAccessory";

            return v2;
          }
        }
      }

      else if (a1 > 1079)
      {
        if (a1 == 1080)
        {
          v2 = @"Climate";

          return v2;
        }

        if (a1 == 1090)
        {
          v2 = @"DataStream";

          return v2;
        }
      }

      else
      {
        if (a1 == 1060)
        {
          v2 = @"ActionSets";

          return v2;
        }

        if (a1 == 1070)
        {
          v2 = @"Camera";

          return v2;
        }
      }
    }

    else if (a1 <= 1179)
    {
      if (a1 > 1159)
      {
        if (a1 == 1160)
        {
          v2 = @"MediaAccessory";

          return v2;
        }

        if (a1 == 1170)
        {
          v2 = @"NetworkRouterController";

          return v2;
        }
      }

      else
      {
        if (a1 == 1140)
        {
          v2 = @"Light";

          return v2;
        }

        if (a1 == 1150)
        {
          v2 = @"NaturalLight";

          return v2;
        }
      }
    }

    else if (a1 <= 1199)
    {
      if (a1 == 1180)
      {
        v2 = @"WakeOnLan";

        return v2;
      }

      if (a1 == 1190)
      {
        v2 = @"SiriEndpoint";

        return v2;
      }
    }

    else
    {
      switch(a1)
      {
        case 1200:
          v2 = @"TargetControl";

          return v2;
        case 1210:
          v2 = @"Widgets";

          return v2;
        case 1220:
          v2 = @"WifiManagement";

          return v2;
      }
    }

LABEL_148:
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unexpected source value: %lu", a1];

    return v2;
  }

  if (a1 <= 7)
  {
    if (a1 > 3)
    {
      if (a1 > 5)
      {
        if (a1 == 6)
        {
          v2 = @"ThirdParty";
        }

        else
        {
          v2 = @"SourceInternalLegacy";
        }
      }

      else if (a1 == 4)
      {
        v2 = @"TimerTrigger";
      }

      else
      {
        v2 = @"FirstParty";
      }

      return v2;
    }

    if (a1 > 1)
    {
      if (a1 == 2)
      {
        v2 = @"User";
      }

      else
      {
        v2 = @"EventTrigger";
      }

      return v2;
    }

    if (!a1)
    {
      v2 = @"Unknown";

      return v2;
    }

    if (a1 == 1)
    {
      v2 = @"Siri";

      return v2;
    }

    goto LABEL_148;
  }

  if (a1 <= 1009)
  {
    if (a1 <= 9)
    {
      if (a1 == 8)
      {
        v2 = @"RemoteRequested";
      }

      else
      {
        v2 = @"IntentSuggestion";
      }

      return v2;
    }

    if (a1 == 10)
    {
      v2 = @"Shortcuts";

      return v2;
    }

    if (a1 == 1000)
    {
      v2 = @"AccessoryFirmwareUpdate";

      return v2;
    }

    goto LABEL_148;
  }

  if (a1 <= 1029)
  {
    if (a1 == 1010)
    {
      v2 = @"AccessoryMetrics";

      return v2;
    }

    if (a1 == 1020)
    {
      v2 = @"AccessoryDiagnostics";

      return v2;
    }

    goto LABEL_148;
  }

  switch(a1)
  {
    case 1030:
      v2 = @"ThreadNetworkManagement";

      break;
    case 1040:
      v2 = @"HAPAccessory";

      break;
    case 1050:
      v2 = @"SiriTVRemote";

      return v2;
    default:
      goto LABEL_148;
  }

  return v2;
}

id HMDRequestSourceAsLegacyMetricString(uint64_t a1)
{
  v1 = HMDRequestSourceAsString(a1);
  if (([v1 hasPrefix:@"Unexpected"] & 1) == 0)
  {
    v2 = [@"Source_" stringByAppendingString:v1];

    v1 = v2;
  }

  return v1;
}

void sub_229C414F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229C41BDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229C44AA4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_229C45404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229C46B88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229C48DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__70236(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __transactionAccessoryUpdated(void *a1, void *a2, void *a3)
{
  v285[1] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v240 = a3;
  v7 = [v240 transactionResult];
  [v7 source];
  v8 = MEMORY[0x277CBEB18];
  v9 = +[HMDAccessoryTransaction properties];
  obj = [v8 arrayWithCapacity:{objc_msgSend(v9, "count")}];

  v10 = [0 configurationTracker];
  v11 = v10;
  if (v10)
  {
    dispatch_group_enter(v10);
  }

  if (([v6 propertyWasSet:@"name"] & 1) != 0 || objc_msgSend(v6, "propertyWasSet:", @"configuredName"))
  {
    v12 = [v6 configuredName];
    v13 = [v5 configuredName];
    v14 = [v5 name];
    if ((HMFEqualObjects() & 1) == 0)
    {
      [v5 setConfiguredName:v12];
      [v7 markChanged];
    }

    v15 = [v5 name];
    v16 = HMFEqualObjects();
    if (v15 && (v16 & 1) == 0)
    {
      [v7 markSaveToAssistant];
      v17 = [v5 workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = ____transactionAccessoryUpdated_block_invoke;
      block[3] = &unk_27868A750;
      v262 = v5;
      v263 = v15;
      dispatch_async(v17, block);
    }
  }

  if ([v6 propertyWasSet:@"providedName"])
  {
    v18 = [v5 providedName];
    v19 = [v6 providedName];
    v20 = HMFEqualObjects();

    if ((v20 & 1) == 0)
    {
      v21 = [v5 name];
      v22 = [v5 providedName];
      v23 = [v6 providedName];
      [v5 setProvidedName:v23];

      v24 = [v5 name];
      if (v24 && (HMFEqualObjects() & 1) == 0)
      {
        [v7 markSaveToAssistant];
        v25 = [v5 workQueue];
        v258[0] = MEMORY[0x277D85DD0];
        v258[1] = 3221225472;
        v258[2] = ____transactionAccessoryUpdated_block_invoke_2;
        v258[3] = &unk_27868A750;
        v259 = v5;
        v260 = v24;
        dispatch_async(v25, v258);
      }

      v26 = [v5 providedName];
      v27 = HMFEqualObjects();

      if ((v27 & 1) == 0)
      {
        [v7 markChanged];
      }
    }
  }

  v28 = [v6 setProperties];
  v29 = [v28 containsObject:@"model"];
  v30 = v29;
  if (!v29)
  {
    goto LABEL_23;
  }

  v31 = [v6 model];
  v32 = [v5 model];
  v33 = HMFEqualObjects();

  if ((v33 & 1) == 0)
  {
    v34 = [v6 model];

    if (v34)
    {
      v28 = [v6 model];
      [v5 setModel:v28];
LABEL_23:

      goto LABEL_25;
    }
  }

  v30 = 0;
LABEL_25:
  v35 = [v6 setProperties];
  if (![v35 containsObject:@"manufacturer"])
  {
LABEL_29:

    goto LABEL_30;
  }

  v36 = [v6 manufacturer];
  v37 = [v5 manufacturer];
  v38 = HMFEqualObjects();

  if ((v38 & 1) == 0)
  {
    v39 = [v6 manufacturer];

    if (v39)
    {
      v35 = [v6 manufacturer];
      [v5 setManufacturer:v35];
      v30 = 1;
      goto LABEL_29;
    }
  }

LABEL_30:
  group = v11;
  v40 = [v6 firmwareVersion];
  v245 = v6;
  if (v40)
  {
    v41 = v40;
    v42 = [v6 firmwareVersion];
    v43 = [v5 firmwareVersion];
    v44 = [v43 rawVersionString];
    v45 = HMFEqualObjects();

    if ((v45 & 1) == 0)
    {
      v46 = v5;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v47 = v46;
      }

      else
      {
        v47 = 0;
      }

      v48 = v47;

      if (v48 && [v48 supportsCHIP])
      {
        v49 = [HMDAccessoryVersion alloc];
        v50 = [v6 firmwareVersion];
        v51 = [(HMDAccessoryVersion *)v49 initWithMatterVersionString:v50];
      }

      else
      {
        v52 = [HMDAccessoryVersion alloc];
        v50 = [v6 firmwareVersion];
        v51 = [(HMDAccessoryVersion *)v52 initWithString:v50];
      }

      v53 = v51;

      if (v53)
      {
        v54 = [v46 firmwareVersion];
        [v46 setFirmwareVersion:v53];
        if (([v53 isEqualToVersion:v54] & 1) == 0)
        {
          if (v54)
          {
            v284 = @"HMDAccessoryPreviousFirmwareVersionKey";
            v285[0] = v54;
            v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v285 forKeys:&v284 count:1];
          }

          else
          {
            v55 = 0;
          }

          logAndPostNotification(@"HMDAccessoryFirmwareVersionUpdatedNotification", v46, v55);
        }

        v30 = 1;
      }
    }
  }

  v56 = [v6 setProperties];
  if (![v56 containsObject:@"displayableFirmwareVersion"])
  {
    goto LABEL_56;
  }

  v57 = [v6 displayableFirmwareVersion];
  v58 = [v5 displayableFirmwareVersion];
  v59 = HMFEqualObjects();

  if ((v59 & 1) == 0)
  {
    v60 = [v6 displayableFirmwareVersion];

    if (v60)
    {
      v56 = [v5 displayableFirmwareVersion];
      v61 = [v6 displayableFirmwareVersion];
      [v5 setDisplayableFirmwareVersion:v61];

      v62 = [v6 displayableFirmwareVersion];
      v63 = [v62 isEqualToString:v56];

      if ((v63 & 1) == 0)
      {
        if (v56)
        {
          v282 = @"HMDAccessoryPreviousDisplayableFirmwareVersionKey";
          v283 = v56;
          v64 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v283 forKeys:&v282 count:1];
        }

        else
        {
          v64 = 0;
        }

        logAndPostNotification(@"HMDAccessoryFirmwareDisplayableVersionUpdatedNotification", v5, v64);
      }

      v30 = 1;
LABEL_56:
    }
  }

  v65 = [v6 setProperties];
  if ([v65 containsObject:@"serialNumber"])
  {
    v66 = [v6 serialNumber];
    v67 = [v5 serialNumber];
    v68 = HMFEqualObjects();

    if (v68)
    {
      goto LABEL_62;
    }

    v69 = [v6 serialNumber];

    if (!v69)
    {
      goto LABEL_62;
    }

    v65 = [v6 serialNumber];
    [v5 setSerialNumber:v65];
    v30 = 1;
  }

LABEL_62:
  v70 = [v6 hostAccessoryUUID];
  v239 = v70;
  if (v70)
  {
    v244 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v70];
  }

  else
  {
    v244 = 0;
  }

  if ([v6 propertyWasSet:@"hostAccessoryUUID"])
  {
    v71 = [v5 hostAccessory];
    v72 = [v71 uuid];
    v73 = [v72 hmf_isEqualToUUID:v244];

    if ((v73 & 1) == 0)
    {
      [v5 _updateHost:v244];
      [v7 markChanged];
      [v7 markSaveToAssistant];
    }
  }

  v74 = [v5 home];
  v243 = [v74 homeManager];
  v75 = [v5 productData];
  v76 = [v6 productDataV2];
  v247 = [v6 productData];
  v77 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v78 = v77;
  }

  else
  {
    v78 = 0;
  }

  v246 = v78;
  v251 = v77;

  v242 = v75;
  v236 = v76;
  if (v76 && (HMFEqualObjects() & 1) == 0)
  {
    v84 = v77;
    v85 = v76;
LABEL_86:
    [v84 setProductData:{v85, v236}];
    if (v246)
    {
      v91 = [v243 accessoryFirmwareUpdateManager];
      [v91 registerAccessory:v246];
    }

LABEL_88:
    v273 = v251;
    v92 = [MEMORY[0x277CBEA60] arrayWithObjects:&v273 count:{1, v236}];
    [v74 notifyClientsOfAccessoryInfoUpdatedForAccessories:v92];

    [v7 markChanged];
    goto LABEL_89;
  }

  if (v247 && !v75)
  {
    v79 = objc_autoreleasePoolPush();
    v80 = v251;
    v81 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
    {
      v82 = HMFGetLogIdentifier();
      v83 = +[HMDBackingStoreTransactionOptions stringForHMDBackingStoreTransactionSource:](HMDBackingStoreTransactionOptions, "stringForHMDBackingStoreTransactionSource:", [v7 source]);
      *buf = 138543874;
      v275 = v82;
      v276 = 2112;
      v277 = v247;
      v278 = 2112;
      v279 = v83;
      _os_log_impl(&dword_229538000, v81, OS_LOG_TYPE_INFO, "%{public}@Applying initial legacy productData %@ (source: %@)", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v79);
    v84 = v80;
    v85 = v247;
    goto LABEL_86;
  }

  if (v247 && (HMFEqualObjects() & 1) == 0)
  {
    v86 = objc_autoreleasePoolPush();
    v87 = v77;
    v88 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
    {
      v89 = HMFGetLogIdentifier();
      v90 = +[HMDBackingStoreTransactionOptions stringForHMDBackingStoreTransactionSource:](HMDBackingStoreTransactionOptions, "stringForHMDBackingStoreTransactionSource:", [v7 source]);
      *buf = 138544130;
      v275 = v89;
      v276 = 2112;
      v277 = v242;
      v278 = 2112;
      v279 = v247;
      v280 = 2112;
      v281 = v90;
      _os_log_impl(&dword_229538000, v88, OS_LOG_TYPE_INFO, "%{public}@Ignoring legacy productData change %@ -> %@ (source: %@)", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v86);
  }

  if (v30)
  {
    goto LABEL_88;
  }

LABEL_89:
  v93 = [v6 initialManufacturer];
  if (v93)
  {
    v94 = v93;
    v95 = [v6 initialManufacturer];
    v96 = [v251 initialManufacturer];
    v97 = HMFEqualObjects();

    if ((v97 & 1) == 0)
    {
      v98 = [v6 initialManufacturer];
      [v251 setInitialManufacturer:v98];

      logAndPostNotification(@"HMDAccessoryManufacturerUpdatedNotification", v251, 0);
      [v7 markChanged];
    }
  }

  v99 = [v6 initialModel];
  if (v99)
  {
    v100 = v99;
    v101 = [v6 initialModel];
    v102 = [v251 initialModel];
    v103 = HMFEqualObjects();

    if ((v103 & 1) == 0)
    {
      v104 = [v6 initialModel];
      [v251 setInitialModel:v104];

      [v7 markChanged];
    }
  }

  v105 = [v6 initialCategoryIdentifier];
  if (v105)
  {
    v106 = v105;
    v107 = [v6 initialCategoryIdentifier];
    v108 = [v251 initialCategoryIdentifier];
    v109 = HMFEqualObjects();

    if ((v109 & 1) == 0)
    {
      v110 = [v6 initialCategoryIdentifier];
      [v251 setInitialCategoryIdentifier:v110];

      logAndPostNotification(@"HMDAccessoryCategoryUpdatedNotification", v251, 0);
      [v7 markChanged];
    }
  }

  v111 = [v6 accessoryCategory];

  if (v111)
  {
    v112 = [v6 accessoryCategory];
    v113 = [v251 _updateCategory:v112 notifyClients:1];

    if (v113)
    {
      [obj addObject:v113];
      [v7 markChanged];
      if (v246)
      {
        [v246 updatePrimaryServiceIfNeeded];
      }
    }
  }

  if ([v6 propertyWasSet:@"networkClientIdentifier"])
  {
    v114 = [v6 networkClientIdentifier];
    v115 = [v251 networkClientIdentifier];
    v116 = HMFEqualObjects();

    if ((v116 & 1) == 0)
    {
      v117 = [v6 networkClientIdentifier];
      [v251 setNetworkClientIdentifier:v117];

      [v7 markChanged];
    }
  }

  if ([v6 propertyWasSet:@"networkRouterUUID"])
  {
    v118 = [v6 networkRouterUUID];
    v119 = [v251 networkRouterUUID];
    v120 = [v119 UUIDString];
    v121 = HMFEqualObjects();

    if ((v121 & 1) == 0)
    {
      v122 = objc_alloc(MEMORY[0x277CCAD78]);
      v123 = [v6 networkRouterUUID];
      v124 = [v122 initWithUUIDString:v123];
      [v251 setNetworkRouterUUID:v124];

      [v7 markChanged];
    }
  }

  v125 = [v6 currentNetworkProtectionMode];
  if (v125)
  {
    v126 = v125;
    v127 = [v6 currentNetworkProtectionMode];
    v128 = [v127 integerValue];
    v129 = [v251 currentNetworkProtectionMode];

    if (v128 != v129)
    {
      v130 = [v6 currentNetworkProtectionMode];
      [v251 setCurrentNetworkProtectionMode:{objc_msgSend(v130, "integerValue")}];

      [v7 markChanged];
    }
  }

  v131 = [v6 wiFiCredentialType];
  if (v131)
  {
    v132 = v131;
    v133 = [v6 wiFiCredentialType];
    v134 = [v133 integerValue];
    v135 = [v251 wiFiCredentialType];

    if (v134 != v135)
    {
      v136 = objc_autoreleasePoolPush();
      v137 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v137, OS_LOG_TYPE_INFO))
      {
        v138 = HMFGetLogIdentifier();
        v139 = [v251 wiFiCredentialType];
        v140 = [v6 wiFiCredentialType];
        v141 = [v140 integerValue];
        *buf = 138544130;
        v275 = v138;
        v276 = 2048;
        v277 = v139;
        v278 = 2048;
        v279 = v141;
        v280 = 2112;
        v281 = v251;
        _os_log_impl(&dword_229538000, v137, OS_LOG_TYPE_INFO, "%{public}@Updating wiFiCredentialType from [%lu] to [%lu] for accessory: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v136);
      v142 = [v6 wiFiCredentialType];
      [v251 setWiFiCredentialType:{objc_msgSend(v142, "integerValue")}];

      [v7 markChanged];
      v143 = MEMORY[0x277D0F818];
      v144 = *MEMORY[0x277CD0A10];
      v271[0] = *MEMORY[0x277CD0A08];
      v145 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v251, "supportsWiFiReconfiguration")}];
      v272[0] = v145;
      v271[1] = *MEMORY[0x277CD09F8];
      v146 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v251, "wiFiCredentialType")}];
      v272[1] = v146;
      v147 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v272 forKeys:v271 count:2];
      v148 = [v143 entitledMessageWithName:v144 messagePayload:v147];
      [obj addObject:v148];
    }
  }

  v149 = [v6 networkClientLAN];
  if (v149)
  {
    v150 = v149;
    v151 = [v6 networkClientLAN];
    v152 = [v151 integerValue];
    v153 = [v251 networkClientLAN];

    if (v152 != v153)
    {
      v154 = [v6 networkClientLAN];
      [v251 setNetworkClientLAN:{objc_msgSend(v154, "integerValue")}];

      [v7 markChanged];
    }
  }

  if ([v6 propertyWasSet:@"networkClientProfileFingerprint"])
  {
    v155 = [v6 networkClientProfileFingerprint];
    v156 = [v251 networkClientProfileFingerprint];
    v157 = [v156 UUIDString];
    v158 = HMFEqualObjects();

    if ((v158 & 1) == 0)
    {
      v159 = objc_alloc(MEMORY[0x277CCAD78]);
      v160 = [v6 networkClientProfileFingerprint];
      v161 = [v159 initWithUUIDString:v160];
      [v251 setNetworkClientProfileFingerprint:v161];

      [v7 markChanged];
    }
  }

  if ([v6 propertyWasSet:@"appliedFirewallWANRules"])
  {
    v162 = [v6 appliedFirewallWANRules];
    v163 = [HMDAccessoryAllowedHost allowedHostsFromJSONFirewallWANRules:v162];

    if (v163)
    {
      v164 = [v251 allowedHosts];
      v165 = HMFEqualObjects();

      if ((v165 & 1) == 0)
      {
        [v251 setAllowedHosts:v163];
        [v7 markChanged];
        v166 = MEMORY[0x277D0F818];
        v167 = *MEMORY[0x277CD09E8];
        v269 = *MEMORY[0x277CD09E0];
        v168 = [v251 allowedHosts];
        v169 = encodeRootObjectForSPIClients(v168);
        v270 = v169;
        v170 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v270 forKeys:&v269 count:1];
        v171 = [v166 entitledMessageWithName:v167 messagePayload:v170];

        [obj addObject:v171];
      }
    }
  }

  if ([v6 propertyWasSet:@"wiFiUniquePreSharedKey"])
  {
    v172 = [v6 wiFiUniquePreSharedKey];
    v173 = [v251 wiFiUniquePreSharedKey];
    v174 = HMFEqualObjects();

    if ((v174 & 1) == 0)
    {
      v175 = [v6 wiFiUniquePreSharedKey];
      [v251 setWiFiUniquePreSharedKey:v175];

      [v7 markChanged];
    }
  }

  if ([v6 propertyWasSet:@"pendingConfigurationIdentifier"])
  {
    v176 = [v6 pendingConfigurationIdentifier];
    v177 = [v251 pendingConfigurationIdentifier];
    v178 = HMFEqualObjects();

    if ((v178 & 1) == 0)
    {
      v179 = [v6 pendingConfigurationIdentifier];
      [v251 setPendingConfigurationIdentifier:v179];

      [v7 markChanged];
    }
  }

  v238 = v74;
  if ([v6 propertyWasSet:@"lastNetworkAccessViolationOccurrenceSince1970"] && objc_msgSend(v6, "propertyWasSet:", @"lastNetworkAccessViolationResetSince1970"))
  {
    v180 = [v251 networkAccessViolation];
    v181 = [HMDAccessoryNetworkAccessViolation alloc];
    v182 = [v6 lastNetworkAccessViolationOccurrenceSince1970];
    v183 = [v6 lastNetworkAccessViolationResetSince1970];
    v184 = [(HMDAccessoryNetworkAccessViolation *)v181 initWithLastViolationTimeInterval:v182 lastViolationResetTimeInterval:v183];

    if ((HMFEqualObjects() & 1) == 0)
    {
      [v251 setNetworkAccessViolation:v184];
      v185 = [(HMDAccessoryNetworkAccessViolation *)v184 hasCurrentViolation];
      v186 = v185 ^ [v180 hasCurrentViolation];
      v187 = [v180 lastViolationDate];
      v188 = [(HMDAccessoryNetworkAccessViolation *)v184 lastViolationDate];
      v189 = v188;
      v190 = 0;
      if (v187 && v184)
      {
        [v188 timeIntervalSinceDate:v187];
        v190 = v191 >= 86400.0;
      }

      v192 = v189;
      if ((v186 | v190))
      {
        [v7 markChanged];
      }

      else
      {
        [v7 markLocalChanged];
      }

      v6 = v245;
      v193 = encodeRootObjectForSPIClients(v184);
      v194 = MEMORY[0x277D0F818];
      v195 = *MEMORY[0x277CD09D8];
      v267 = *MEMORY[0x277CD09D0];
      v268 = v193;
      v196 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v268 forKeys:&v267 count:1];
      v197 = [v194 entitledMessageWithName:v195 messagePayload:v196];

      [obj addObject:v197];
    }
  }

  if ([v6 propertyWasSet:@"configuredNetworkProtectionGroupUUIDString"])
  {
    v198 = [v6 configuredNetworkProtectionGroupUUIDString];
    v199 = [v251 configuredNetworkProtectionGroupUUID];
    v200 = [v199 UUIDString];
    v201 = HMFEqualObjects();

    if ((v201 & 1) == 0)
    {
      v202 = [v6 configuredNetworkProtectionGroupUUIDString];
      if (v202)
      {
        v203 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v202];
      }

      else
      {
        v203 = 0;
      }

      v204 = [v251 configuredNetworkProtectionGroupUUID];
      [v251 setConfiguredNetworkProtectionGroupUUID:v203];
      if (v204)
      {
        v265 = @"HMDAccessoryPreviousConfiguredNetworkProtectionGroupUUIDKey";
        v266 = v204;
        v205 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v266 forKeys:&v265 count:1];
      }

      else
      {
        v205 = 0;
      }

      logAndPostNotification(@"HMDAccessoryConfiguredNetworkProtectionGroupUpdatedNotification", v251, v205);
      [v7 markChanged];
    }
  }

  v206 = [v6 suspendCapable];
  if (v206)
  {
    v207 = v206;
    v208 = [v251 isSuspendCapable];
    v209 = [v6 suspendCapable];
    v210 = [v209 BOOLValue];

    if (v208 != v210)
    {
      v211 = [v6 suspendCapable];
      [v251 setSuspendCapable:{objc_msgSend(v211, "BOOLValue")}];

      [v7 markChanged];
    }
  }

  v212 = [v6 lastSeenDate];
  if (v212)
  {
    v213 = v212;
    v214 = [v6 lastSeenDate];
    v215 = [v251 lastSeenDate];
    v216 = [v214 isEqualToDate:v215];

    if ((v216 & 1) == 0)
    {
      v217 = [v6 lastSeenDate];
      [v251 setLastSeenDate:v217];

      [v7 markChanged];
    }
  }

  v218 = [v6 lowBattery];
  if (v218)
  {
    v219 = v218;
    v220 = [v251 isLowBattery];
    v221 = [v6 lowBattery];
    v222 = [v221 BOOLValue];

    if (v220 != v222)
    {
      v223 = [v6 lowBattery];
      [v251 setLowBattery:{objc_msgSend(v223, "BOOLValue")}];

      [v7 markChanged];
    }
  }

  v250 = [v240 transport];
  v224 = dispatch_group_create();
  v254 = 0u;
  v255 = 0u;
  v256 = 0u;
  v257 = 0u;
  obja = obj;
  v225 = [obja countByEnumeratingWithState:&v254 objects:v264 count:16];
  if (v225)
  {
    v226 = v225;
    v227 = *v255;
    do
    {
      for (i = 0; i != v226; ++i)
      {
        if (*v255 != v227)
        {
          objc_enumerationMutation(obja);
        }

        v229 = *(*(&v254 + 1) + 8 * i);
        dispatch_group_enter(v224);
        if (v240)
        {
          v230 = [v229 mutableCopy];
          [v230 setTransport:v250];
          v231 = objc_msgSend_copy(v230);
        }

        else
        {
          v231 = v229;
        }

        v232 = [v251 msgDispatcher];
        v233 = [v251 uuid];
        v252[0] = MEMORY[0x277D85DD0];
        v252[1] = 3221225472;
        v252[2] = ____transactionAccessoryUpdated_block_invoke_1143;
        v252[3] = &unk_27868A728;
        v253 = v224;
        [v232 sendMessage:v231 target:v233 andInvokeCompletionHandler:v252];
      }

      v226 = [obja countByEnumeratingWithState:&v254 objects:v264 count:16];
    }

    while (v226);
  }

  dispatch_group_wait(v224, 0);
  v234 = [v240 responseHandler];

  if (v234)
  {
    v235 = [v240 responseHandler];
    v235[2](v235, 0, 0);
  }

  if (group)
  {
    dispatch_group_leave(group);
  }
}

id EpochIntervalFromDate(void *a1)
{
  if (a1)
  {
    v2 = MEMORY[0x277CCABB0];
    [a1 timeIntervalSince1970];
    a1 = [v2 numberWithDouble:?];
    v1 = vars8;
  }

  return a1;
}

void sub_229C5C83C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229C650C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229C664E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v4 - 112));
  _Unwind_Resume(a1);
}

void sub_229C66E94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229C67920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, id a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, id a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, id a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, id a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, id a61)
{
  objc_destroyWeak((v61 + 40));
  objc_destroyWeak(&a36);
  objc_destroyWeak(&a41);
  objc_destroyWeak(&a46);
  objc_destroyWeak(&a51);
  objc_destroyWeak(&a56);
  objc_destroyWeak(&a61);
  objc_destroyWeak((v62 - 248));
  _Unwind_Resume(a1);
}

void sub_229C6FBDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak(&a23);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229C75F08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229C7B6B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229C7DB90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, ...)
{
  va_start(va, a39);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__77661(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229C7EA10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void networkChangeCallback(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  v6 = a3;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = objc_autoreleasePoolPush();
      v8 = v6;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        *buf = 138543618;
        v16 = v10;
        v17 = 2112;
        v18 = a2;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Network change detected: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      objc_initWeak(buf, v8);
      v11 = dispatch_time(0, 1000000000);
      v12 = [v8 pathMonitorQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __networkChangeCallback_block_invoke;
      block[3] = &unk_278686B80;
      objc_copyWeak(&v14, buf);
      dispatch_after(v11, v12, block);

      objc_destroyWeak(&v14);
      objc_destroyWeak(buf);
    }
  }

  objc_autoreleasePoolPop(v5);
}

void __networkChangeCallback_block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _fetchPrimaryNetworkInfo];
    WeakRetained = v2;
  }
}

void sub_229C844C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

void sub_229C851D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id a25)
{
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a25);
  _Unwind_Resume(a1);
}

void sub_229C86B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229C88D10(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_229C8C950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_229C8CC28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__79670(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229C90840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v31 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__80429(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229C92A08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229C95320(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229C991DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__81022(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __transactionAccessoryUpdated_81024(void *a1, void *a2, void *a3)
{
  v457 = *MEMORY[0x277D85DE8];
  v437 = a1;
  v432 = a2;
  v436 = a3;
  v431 = [v436 transactionResult];
  v5 = MEMORY[0x277CBEB18];
  v6 = +[HMDHAPAccessoryTransaction properties];
  v429 = [v5 arrayWithCapacity:{objc_msgSend(v6, "count")}];

  v430 = [v437 home];
  v7 = [v432 uniqueIdentifier];
  if (v7)
  {
    v8 = [v437 uniqueIdentifier];
    v9 = [v432 uniqueIdentifier];
    v10 = [v8 isEqual:v9];

    if ((v10 & 1) == 0)
    {
      v11 = [v432 uniqueIdentifier];
      [v437 setUniqueIdentifier:v11];

      [v431 markChanged];
    }
  }

  v12 = [v432 bridgeUUID];
  if (v12)
  {
    v13 = [v437 bridge];
    v14 = [v13 uuid];
    v15 = [v14 UUIDString];
    v16 = [v432 bridgeUUID];
    v17 = [v15 isEqual:v16];

    if ((v17 & 1) == 0)
    {
      v18 = objc_alloc(MEMORY[0x277CCAD78]);
      v19 = [v432 bridgeUUID];
      v20 = [v18 initWithUUIDString:v19];
      [v437 _updateHost:v20];

      [v431 markChanged];
      [v431 markSaveToAssistant];
    }
  }

  v21 = [v432 roomUUID];

  if (v21)
  {
    v22 = [v437 room];
    v23 = [v22 name];

    v24 = objc_alloc(MEMORY[0x277CCAD78]);
    v25 = [v432 roomUUID];
    v26 = [v24 initWithUUIDString:v25];

    v27 = objc_autoreleasePoolPush();
    v28 = v437;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      objb = HMFGetLogIdentifier();
      v428 = [v28 home];
      v30 = [v428 roomWithUUID:v26];
      v31 = [v30 name];
      v32 = [v28 room];
      v33 = [v32 uuid];
      HMFEqualObjects();

      v34 = HMFBooleanToString();
      *buf = 138544130;
      v450 = objb;
      v451 = 2112;
      v452 = v23;
      v453 = 2112;
      v454 = v31;
      v455 = 2112;
      v456 = v34;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_INFO, "%{public}@transactionObjectUpdated: old: %@, new:%@, same Room: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v27);
    if (v26 && [v28 _updateRoom:v26 source:{objc_msgSend(v431, "source")}])
    {
      [v431 markChanged];
      [v431 markSaveToAssistant];
    }

    [v28 _handleRoomChangedFromOldRoomName:v23];
  }

  v35 = [v432 accessoryFlags];
  if (v35)
  {
    v36 = [v437 accessoryFlags];
    v37 = [v432 accessoryFlags];
    v38 = [v36 isEqual:v37];

    if ((v38 & 1) == 0)
    {
      v39 = [v432 accessoryFlags];
      v40 = [v437 updateAccessoryFlagsAndNotifyClients:v39];

      if (v40)
      {
        [v429 addObject:v40];
        [v431 markChanged];
      }
    }
  }

  v41 = [v432 certificationStatus];
  if (v41)
  {
    v42 = [v432 certificationStatus];
    if ([v42 unsignedIntegerValue])
    {
      v43 = [v437 certificationStatus];
      v44 = [v432 certificationStatus];
      v45 = v43 == [v44 unsignedIntegerValue];

      if (!v45)
      {
        v46 = [v432 certificationStatus];
        [v437 setCertificationStatus:{objc_msgSend(v46, "unsignedIntegerValue")}];

        [v431 markChanged];
      }
    }

    else
    {
    }
  }

  v47 = [v432 broadcastKey];
  if (v47)
  {
    v48 = [v437 broadcastKey];
    v49 = [v432 broadcastKey];
    v50 = [v48 isEqualToData:v49];

    if ((v50 & 1) == 0)
    {
      v51 = [v432 broadcastKey];
      [v437 setBroadcastKey:v51];

      v52 = [v432 broadcastKey];
      v53 = [v432 keyUpdatedStateNumber];
      v54 = [v432 keyUpdatedTime];
      [v437 setBroadcastKey:v52 keyUpdatedStateNumber:v53 keyUpdatedTime:v54];

      [v431 markChanged];
    }
  }

  v55 = [v432 pairingUsername];
  if (v55)
  {
    v56 = [v432 publicKey];
    if (!v56)
    {

      goto LABEL_35;
    }

    v57 = [v437 pairingUsername];
    v58 = [v432 pairingUsername];
    if ([v57 isEqual:v58])
    {
      v59 = [v437 publicKey];
      v60 = [v432 publicKey];
      v61 = [v59 isEqual:v60];

      if (v61)
      {
        goto LABEL_35;
      }
    }

    else
    {
    }

    v62 = [v432 pairingUsername];
    v63 = [v432 publicKey];
    [v437 setPairingUsername:v62 publicKey:v63];

    [v431 markChanged];
  }

LABEL_35:
  v64 = [v432 transportInformation];

  if (v64)
  {
    v65 = objc_autoreleasePoolPush();
    v66 = objc_opt_class();
    v67 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
    {
      v68 = HMFGetLogIdentifier();
      [v431 source];
      v69 = HMFBooleanToString();
      v70 = [v432 transportInformation];
      *buf = 138543874;
      v450 = v68;
      v451 = 2112;
      v452 = v69;
      v453 = 2112;
      v454 = v70;
      _os_log_impl(&dword_229538000, v67, OS_LOG_TYPE_INFO, "%{public}@Received updated transportInformation from localSource: %@, transportInformation: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v65);
    v71 = [v432 transportInformation];
    v72 = [v437 updateTransportInformation:v71 localSource:{objc_msgSend(v431, "source") < 2}];

    if (v72)
    {
      [v431 markChanged];
    }
  }

  v73 = [v432 communicationProtocol];
  if (v73)
  {
    v74 = [v432 communicationProtocol];
    v75 = [v74 integerValue];
    v76 = v75 == [v437 communicationProtocol];

    if (!v76)
    {
      v77 = objc_autoreleasePoolPush();
      v78 = v437;
      v79 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
      {
        v80 = HMFGetLogIdentifier();
        [v78 communicationProtocol];
        v81 = HAPCommunicationProtocolDescription();
        v82 = [v432 communicationProtocol];
        [v82 integerValue];
        v83 = HAPCommunicationProtocolDescription();
        *buf = 138543874;
        v450 = v80;
        v451 = 2112;
        v452 = v81;
        v453 = 2112;
        v454 = v83;
        _os_log_impl(&dword_229538000, v79, OS_LOG_TYPE_INFO, "%{public}@Updating communication protocol from %@ to %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v77);
      v84 = [v432 communicationProtocol];
      [v78 setCommunicationProtocol:{objc_msgSend(v84, "integerValue")}];

      [v431 markChanged];
    }
  }

  v85 = [v432 accessorySetupHash];
  if (v85)
  {
    v86 = [v437 setupHash];
    v87 = [v432 accessorySetupHash];
    v88 = [v86 isEqual:v87];

    if ((v88 & 1) == 0)
    {
      v89 = [v432 accessorySetupHash];
      [v437 setSetupHash:v89];

      [v431 markChanged];
    }
  }

  v90 = [v432 targetUUIDs];
  if (v90)
  {
    v91 = [v437 targetUUIDs];
    v92 = [v432 targetUUIDs];
    v93 = [v91 isEqual:v92];

    if ((v93 & 1) == 0)
    {
      v94 = [v432 targetUUIDs];
      [v437 updateTargetUUIDs:v94];

      [v431 markChanged];
    }
  }

  v95 = [v432 hardwareSupport];
  if (v95)
  {
    v96 = [v437 hardwareSupport];
    v97 = [v432 hardwareSupport];
    v98 = [v97 BOOLValue];

    if (v96 != v98)
    {
      v99 = [v432 hardwareSupport];
      [v437 setHardwareSupport:{objc_msgSend(v99, "BOOLValue")}];

      [v437 notifyClientsOfTargetControlSupportUpdate];
      [v431 markChanged];
    }
  }

  v100 = [v432 connectivityInfo];
  if (v100)
  {
    v101 = [v437 connectivityInfo];
    v102 = [v432 connectivityInfo];
    v103 = HMFEqualObjects();

    if ((v103 & 1) == 0)
    {
      v104 = objc_autoreleasePoolPush();
      v105 = v437;
      v106 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v106, OS_LOG_TYPE_INFO))
      {
        v107 = HMFGetLogIdentifier();
        v108 = [v105 connectivityInfo];
        v109 = [v432 connectivityInfo];
        *buf = 138543874;
        v450 = v107;
        v451 = 2112;
        v452 = v108;
        v453 = 2112;
        v454 = v109;
        _os_log_impl(&dword_229538000, v106, OS_LOG_TYPE_INFO, "%{public}@Updating connectivityInfo from %@ to %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v104);
      v110 = [v432 connectivityInfo];
      [v105 setConnectivityInfo:v110];

      [v431 markChanged];
    }
  }

  v111 = [v432 wiFiTransportCapabilities];
  if (v111)
  {
    v112 = [v437 wiFiTransportCapabilities];
    v113 = [v432 wiFiTransportCapabilities];
    v114 = [v112 isEqualToNumber:v113];

    if ((v114 & 1) == 0)
    {
      v115 = [v432 wiFiTransportCapabilities];
      [v437 setWiFiTransportCapabilities:v115];

      [v431 markChanged];
    }
  }

  v116 = [v432 sleepInterval];
  if (v116)
  {
    v117 = [v437 sleepInterval];
    v118 = [v432 sleepInterval];
    v119 = [v117 isEqualToNumber:v118];

    if ((v119 & 1) == 0)
    {
      v120 = [v432 sleepInterval];
      [v437 setSleepInterval:v120];

      [v431 markChanged];
    }
  }

  v121 = [v432 enhancedAuthMethod];
  if (v121)
  {
    v122 = [v437 internalEnhancedAuthMethod];
    v123 = [v432 enhancedAuthMethod];
    v124 = HMFEqualObjects();

    if ((v124 & 1) == 0)
    {
      os_unfair_recursive_lock_lock_with_options();
      v125 = [v432 enhancedAuthMethod];
      v126 = objc_msgSend_copy(v125);
      v127 = v437[63];
      v437[63] = v126;

      v128 = [v432 enhancedAuthConfigNumber];
      v129 = objc_msgSend_copy(v128);
      v130 = v437[62];
      v437[62] = v129;

      os_unfair_recursive_lock_unlock();
      [v437 handleUpdatedAuthMethod];
      [v431 markChanged];
    }
  }

  v131 = [v432 primaryProfileVersion];

  if (v131)
  {
    v132 = objc_alloc(MEMORY[0x277D0F940]);
    v133 = [v432 primaryProfileVersion];
    v134 = [v132 initWithString:v133];

    if (v134)
    {
      v135 = [v437 primaryProfileVersion];
      v136 = [v134 isEqualToVersion:v135];

      if ((v136 & 1) == 0)
      {
        [v437 setPrimaryProfileVersion:v134];
        v137 = [v437 networkRouterController];

        if (v137)
        {
          [v430 _evaluateNetworkRouterManagementForTransaction:v431];
        }

        [v431 markChanged];
      }
    }
  }

  v138 = [v432 hasOnboardedForNaturalLighting];
  if (v138)
  {
    v139 = [v437 hasOnboardedForNaturalLighting];
    v140 = [v432 hasOnboardedForNaturalLighting];
    v141 = [v139 isEqualToNumber:v140];

    if ((v141 & 1) == 0)
    {
      v142 = objc_autoreleasePoolPush();
      v143 = v437;
      v144 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v144, OS_LOG_TYPE_INFO))
      {
        v145 = HMFGetLogIdentifier();
        v146 = [v432 hasOnboardedForNaturalLighting];
        *buf = 138543618;
        v450 = v145;
        v451 = 2112;
        v452 = v146;
        _os_log_impl(&dword_229538000, v144, OS_LOG_TYPE_INFO, "%{public}@Updating has onboarded accessory for natural lighting: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v142);
      v147 = [v432 hasOnboardedForNaturalLighting];
      [v143 setHasOnboardedForNaturalLighting:v147];

      [v431 markChanged];
    }
  }

  v148 = [v432 initialServiceTypeUUIDs];
  if (v148)
  {
    v149 = [v432 initialServiceTypeUUIDs];
    v150 = [v437 initialServiceTypeUUIDs];
    v151 = HMFEqualObjects();

    if ((v151 & 1) == 0)
    {
      v152 = [v432 initialServiceTypeUUIDs];
      [v437 setInitialServiceTypeUUIDs:v152];

      [v431 markChanged];
    }
  }

  v153 = [v432 needsOnboarding];
  if (v153)
  {
    v154 = [v432 needsOnboarding];
    v155 = [v437 needsOnboarding];
    v156 = HMFEqualObjects();

    if ((v156 & 1) == 0)
    {
      v157 = [v432 needsOnboarding];
      [v437 setNeedsOnboarding:v157];

      [v431 markChanged];
    }
  }

  v158 = [v432 suspendedState];
  if (v158)
  {
    v159 = [v432 suspendedState];
    v160 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v437, "suspendedState")}];
    v161 = [v159 isEqualToNumber:v160];

    if ((v161 & 1) == 0)
    {
      v162 = objc_autoreleasePoolPush();
      v163 = v437;
      v164 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v164, OS_LOG_TYPE_INFO))
      {
        v165 = HMFGetLogIdentifier();
        [v163 suspendedState];
        v166 = HAPAccessorySuspendedStateDescription();
        v167 = [v432 suspendedState];
        [v167 unsignedIntegerValue];
        v168 = HAPAccessorySuspendedStateDescription();
        *buf = 138543874;
        v450 = v165;
        v451 = 2112;
        v452 = v166;
        v453 = 2112;
        v454 = v168;
        _os_log_impl(&dword_229538000, v164, OS_LOG_TYPE_INFO, "%{public}@Accessory Transaction updating suspendedState from %@ to %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v162);
      v169 = [v432 suspendedState];
      [v163 setSuspendedState:objc_msgSend(v169 shouldNotify:"unsignedIntegerValue") saveToBackingStore:{1, 0}];

      [v431 markChanged];
    }
  }

  [v437 handleUpdatedCHIPPropertiesOnAccessoryModel:v432 actions:v431];
  v170 = [v432 supportsMatterAccessCode];
  if (v170)
  {
    v171 = [v432 supportsMatterAccessCode];
    v172 = [v437 supportsMatterAccessCode];
    v173 = HMFEqualObjects();

    if ((v173 & 1) == 0)
    {
      v174 = objc_autoreleasePoolPush();
      v175 = [v430 accessCodeManager];
      v176 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v176, OS_LOG_TYPE_INFO))
      {
        v177 = HMFGetLogIdentifier();
        v178 = [v437 supportsMatterAccessCode];
        v179 = [v432 supportsMatterAccessCode];
        v180 = [v437 uuid];
        *buf = 138544130;
        v450 = v177;
        v451 = 2112;
        v452 = v178;
        v453 = 2112;
        v454 = v179;
        v455 = 2112;
        v456 = v180;
        _os_log_impl(&dword_229538000, v176, OS_LOG_TYPE_INFO, "%{public}@Updating supportsMatterAccessCode from: %@ to: %@ on accessory: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v174);
      v181 = [v432 supportsMatterAccessCode];
      [v437 setSupportsMatterAccessCode:v181];

      [v431 markChanged];
    }
  }

  v182 = [v432 supportsMatterWalletKey];
  if (v182 && ([v432 supportsMatterWalletKey], v183 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v437, "supportsMatterWalletKey"), v184 = objc_claimAutoreleasedReturnValue(), v185 = HMFEqualObjects(), v184, v183, v182, (v185 & 1) == 0))
  {
    v186 = objc_autoreleasePoolPush();
    v187 = [v430 nfcReaderKeyManager];
    v188 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v188, OS_LOG_TYPE_INFO))
    {
      v189 = HMFGetLogIdentifier();
      v190 = [v437 supportsMatterWalletKey];
      v191 = [v432 supportsMatterWalletKey];
      v192 = [v437 uuid];
      *buf = 138544130;
      v450 = v189;
      v451 = 2112;
      v452 = v190;
      v453 = 2112;
      v454 = v191;
      v455 = 2112;
      v456 = v192;
      _os_log_impl(&dword_229538000, v188, OS_LOG_TYPE_INFO, "%{public}@Updating supportsMatterWalletKey from: %@ to: %@ on accessory: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v186);
    v193 = [v432 supportsMatterWalletKey];
    [v437 setSupportsMatterWalletKey:v193];

    [v431 markChanged];
    obj = 1;
  }

  else
  {
    obj = 0;
  }

  v194 = [v432 supportsNaturalLighting];
  if (v194)
  {
    v195 = [v432 supportsNaturalLighting];
    v196 = [v437 supportsNaturalLighting];
    v197 = HMFEqualObjects();

    if ((v197 & 1) == 0)
    {
      v198 = objc_autoreleasePoolPush();
      v199 = v437;
      v200 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v200, OS_LOG_TYPE_INFO))
      {
        v201 = HMFGetLogIdentifier();
        v202 = [v199 supportsNaturalLighting];
        v203 = [v432 supportsNaturalLighting];
        *buf = 138543874;
        v450 = v201;
        v451 = 2112;
        v452 = v202;
        v453 = 2112;
        v454 = v203;
        _os_log_impl(&dword_229538000, v200, OS_LOG_TYPE_INFO, "%{public}@Updating supportsNaturalLighting from: %@ to: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v198);
      v204 = [v432 supportsNaturalLighting];
      [v199 setSupportsNaturalLighting:v204];

      [v431 markChanged];
    }
  }

  v205 = [v432 naturalLightingEnabled];
  if (v205)
  {
    v206 = [v432 naturalLightingEnabled];
    v207 = [v437 naturalLightingEnabled];
    v208 = HMFEqualObjects();

    if ((v208 & 1) == 0)
    {
      v209 = objc_autoreleasePoolPush();
      v210 = v437;
      v211 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v211, OS_LOG_TYPE_INFO))
      {
        v212 = HMFGetLogIdentifier();
        v213 = [v210 naturalLightingEnabled];
        v214 = [v432 naturalLightingEnabled];
        *buf = 138543874;
        v450 = v212;
        v451 = 2112;
        v452 = v213;
        v453 = 2112;
        v454 = v214;
        _os_log_impl(&dword_229538000, v211, OS_LOG_TYPE_INFO, "%{public}@Updating naturalLightingEnabled from: %@ to: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v209);
      v215 = [v432 naturalLightingEnabled];
      [v210 setNaturalLightingEnabled:v215];

      [v431 markChanged];
    }
  }

  v216 = [v432 supportsMatterWeekDaySchedule];
  if (v216)
  {
  }

  else
  {
    v217 = [v432 matterWeekDayScheduleCapacity];
    v218 = v217 == 0;

    if (v218)
    {
      goto LABEL_126;
    }
  }

  v219 = [v437 weekDayScheduleCapacity];
  v220 = [v432 supportsMatterWeekDaySchedule];
  if (v220)
  {
    v221 = [v432 supportsMatterWeekDaySchedule];
    v222 = [v221 BOOLValue];
    v223 = [v437 supportsMatterWeekDaySchedule];

    if (v222 != v223)
    {
      v224 = objc_autoreleasePoolPush();
      v225 = v437;
      v226 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v226, OS_LOG_TYPE_INFO))
      {
        v227 = HMFGetLogIdentifier();
        [v225 supportsMatterWeekDaySchedule];
        v228 = HMFBooleanToString();
        v229 = [v432 supportsMatterWeekDaySchedule];
        [v229 BOOLValue];
        v230 = HMFBooleanToString();
        *buf = 138543874;
        v450 = v227;
        v451 = 2112;
        v452 = v228;
        v453 = 2112;
        v454 = v230;
        _os_log_impl(&dword_229538000, v226, OS_LOG_TYPE_INFO, "%{public}@Updating supportsMatterWeekDaySchedule from: %@ to: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v224);
      v231 = [v432 supportsMatterWeekDaySchedule];
      [v225 setSupportsMatterWeekDaySchedule:{objc_msgSend(v231, "BOOLValue")}];

      [v431 markChanged];
    }
  }

  v232 = [v432 matterWeekDayScheduleCapacity];
  if (v232)
  {
    v233 = [v432 matterWeekDayScheduleCapacity];
    v234 = [v437 matterWeekDayScheduleCapacity];
    v235 = HMFEqualObjects();

    if ((v235 & 1) == 0)
    {
      v236 = objc_autoreleasePoolPush();
      v237 = v437;
      v238 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v238, OS_LOG_TYPE_INFO))
      {
        v239 = HMFGetLogIdentifier();
        v240 = [v237 matterWeekDayScheduleCapacity];
        v241 = [v432 matterWeekDayScheduleCapacity];
        *buf = 138543874;
        v450 = v239;
        v451 = 2112;
        v452 = v240;
        v453 = 2112;
        v454 = v241;
        _os_log_impl(&dword_229538000, v238, OS_LOG_TYPE_INFO, "%{public}@Updating matterWeekDayScheduleCapacity from: %@ to: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v236);
      v242 = [v432 matterWeekDayScheduleCapacity];
      [v237 setMatterWeekDayScheduleCapacity:v242];

      [v431 markChanged];
    }
  }

  v243 = [v437 weekDayScheduleCapacity];
  v244 = HMFEqualObjects();

  obj |= v244 ^ 1;
LABEL_126:
  v245 = [v432 supportsMatterYearDaySchedule];
  if (v245)
  {
  }

  else
  {
    v246 = [v432 matterYearDayScheduleCapacity];
    v247 = v246 == 0;

    if (v247)
    {
      goto LABEL_140;
    }
  }

  v248 = [v437 yearDayScheduleCapacity];
  v249 = [v432 supportsMatterYearDaySchedule];
  if (v249)
  {
    v250 = [v432 supportsMatterYearDaySchedule];
    v251 = [v250 BOOLValue];
    v252 = [v437 supportsMatterYearDaySchedule];

    if (v251 != v252)
    {
      v253 = objc_autoreleasePoolPush();
      v254 = v437;
      v255 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v255, OS_LOG_TYPE_INFO))
      {
        v256 = HMFGetLogIdentifier();
        [v254 supportsMatterYearDaySchedule];
        v257 = HMFBooleanToString();
        v258 = [v432 supportsMatterYearDaySchedule];
        [v258 BOOLValue];
        v259 = HMFBooleanToString();
        *buf = 138543874;
        v450 = v256;
        v451 = 2112;
        v452 = v257;
        v453 = 2112;
        v454 = v259;
        _os_log_impl(&dword_229538000, v255, OS_LOG_TYPE_INFO, "%{public}@Updating supportsMatterYearDaySchedule from: %@ to: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v253);
      v260 = [v432 supportsMatterYearDaySchedule];
      [v254 setSupportsMatterYearDaySchedule:{objc_msgSend(v260, "BOOLValue")}];

      [v431 markChanged];
    }
  }

  v261 = [v432 matterYearDayScheduleCapacity];
  if (v261)
  {
    v262 = [v432 matterYearDayScheduleCapacity];
    v263 = [v437 matterYearDayScheduleCapacity];
    v264 = HMFEqualObjects();

    if ((v264 & 1) == 0)
    {
      v265 = objc_autoreleasePoolPush();
      v266 = v437;
      v267 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v267, OS_LOG_TYPE_INFO))
      {
        v268 = HMFGetLogIdentifier();
        v269 = [v266 matterYearDayScheduleCapacity];
        v270 = [v432 matterYearDayScheduleCapacity];
        *buf = 138543874;
        v450 = v268;
        v451 = 2112;
        v452 = v269;
        v453 = 2112;
        v454 = v270;
        _os_log_impl(&dword_229538000, v267, OS_LOG_TYPE_INFO, "%{public}@Updating matterYearDayScheduleCapacity from: %@ to: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v265);
      v271 = [v432 matterYearDayScheduleCapacity];
      [v266 setMatterYearDayScheduleCapacity:v271];

      [v431 markChanged];
    }
  }

  v272 = [v437 yearDayScheduleCapacity];
  v273 = HMFEqualObjects();

  obj |= v273 ^ 1;
LABEL_140:
  v274 = [v432 hasOnboardedForAdaptiveTemperatureAutomations];

  if (v274)
  {
    v275 = [v437 hasOnboardedForAdaptiveTemperatureAutomations];
    v276 = [v432 hasOnboardedForAdaptiveTemperatureAutomations];
    if ((HMFEqualObjects() & 1) == 0)
    {
      v277 = objc_autoreleasePoolPush();
      v278 = v437;
      v279 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v279, OS_LOG_TYPE_INFO))
      {
        v280 = HMFGetLogIdentifier();
        [v275 BOOLValue];
        v281 = HMFBooleanToString();
        [v276 BOOLValue];
        v282 = HMFBooleanToString();
        *buf = 138543874;
        v450 = v280;
        v451 = 2112;
        v452 = v281;
        v453 = 2112;
        v454 = v282;
        _os_log_impl(&dword_229538000, v279, OS_LOG_TYPE_INFO, "%{public}@Updating hasOnboardedForAdaptiveTemperatureAutomations from: %@ to: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v277);
      v283 = [v432 hasOnboardedForAdaptiveTemperatureAutomations];
      [v278 setHasOnboardedForAdaptiveTemperatureAutomations:v283];

      [v431 markChanged];
    }
  }

  v284 = [v432 hasOnboardedForCleanEnergyAutomation];

  if (v284)
  {
    v285 = [v437 hasOnboardedForCleanEnergyAutomation];
    v286 = [v432 hasOnboardedForCleanEnergyAutomation];
    if ((HMFEqualObjects() & 1) == 0)
    {
      v287 = objc_autoreleasePoolPush();
      v288 = v437;
      v289 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v289, OS_LOG_TYPE_INFO))
      {
        v290 = HMFGetLogIdentifier();
        [v285 BOOLValue];
        v291 = HMFBooleanToString();
        [v286 BOOLValue];
        v292 = HMFBooleanToString();
        *buf = 138543874;
        v450 = v290;
        v451 = 2112;
        v452 = v291;
        v453 = 2112;
        v454 = v292;
        _os_log_impl(&dword_229538000, v289, OS_LOG_TYPE_INFO, "%{public}@Updating hasOnboardedForCleanEnergyAutomation from: %@ to: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v287);
      v293 = [v432 hasOnboardedForCleanEnergyAutomation];
      [v288 setHasOnboardedForCleanEnergyAutomation:v293];

      [v431 markChanged];
    }
  }

  v294 = [v432 supportsAdaptiveTemperatureAutomations];

  if (v294)
  {
    v295 = [v437 supportsAdaptiveTemperatureAutomations];
    v296 = [v432 supportsAdaptiveTemperatureAutomations];
    v297 = HMFEqualObjects();
    if ((v297 & 1) == 0)
    {
      v298 = objc_autoreleasePoolPush();
      v299 = v437;
      v300 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v300, OS_LOG_TYPE_INFO))
      {
        v301 = HMFGetLogIdentifier();
        [v295 BOOLValue];
        v302 = HMFBooleanToString();
        [v296 BOOLValue];
        v303 = HMFBooleanToString();
        *buf = 138543874;
        v450 = v301;
        v451 = 2112;
        v452 = v302;
        v453 = 2112;
        v454 = v303;
        _os_log_impl(&dword_229538000, v300, OS_LOG_TYPE_INFO, "%{public}@Updating supportsAdaptiveTemperatureAutomations from: %@ to: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v298);
      v304 = [v432 supportsAdaptiveTemperatureAutomations];
      [v299 setSupportsAdaptiveTemperatureAutomations:v304];

      [v431 markChanged];
    }

    v305 = v297 ^ 1;
  }

  else
  {
    v305 = 0;
  }

  v306 = [v432 supportsCleanEnergyAutomation];

  if (v306)
  {
    v307 = [v437 supportsCleanEnergyAutomation];
    v308 = [v432 supportsCleanEnergyAutomation];
    if ((HMFEqualObjects() & 1) == 0)
    {
      v309 = objc_autoreleasePoolPush();
      v310 = v437;
      v311 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v311, OS_LOG_TYPE_INFO))
      {
        v312 = HMFGetLogIdentifier();
        [v307 BOOLValue];
        v313 = HMFBooleanToString();
        [v308 BOOLValue];
        v314 = HMFBooleanToString();
        *buf = 138543874;
        v450 = v312;
        v451 = 2112;
        v452 = v313;
        v453 = 2112;
        v454 = v314;
        _os_log_impl(&dword_229538000, v311, OS_LOG_TYPE_INFO, "%{public}@Updating supportsCleanEnergyAutomation from: %@ to: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v309);
      v315 = [v432 supportsCleanEnergyAutomation];
      [v310 setSupportsCleanEnergyAutomation:v315];

      [v431 markChanged];
      logAndPostNotification(@"HMDSupportsCleanEnergyAutomationUpdatedNotification", v310, 0);
    }
  }

  v316 = [v432 supportsMatCredACP];
  if (v316)
  {
    v317 = [v432 supportsMatCredACP];
    v318 = [v317 BOOLValue];
    v319 = [v437 supportsACWGProvisioning];

    if (v318 != v319)
    {
      v320 = objc_autoreleasePoolPush();
      v321 = v437;
      v322 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v322, OS_LOG_TYPE_INFO))
      {
        v323 = HMFGetLogIdentifier();
        [v321 supportsACWGProvisioning];
        v324 = HMFBooleanToString();
        v325 = [v432 supportsMatCredACP];
        [v325 BOOLValue];
        v326 = HMFBooleanToString();
        *buf = 138543874;
        v450 = v323;
        v451 = 2112;
        v452 = v324;
        v453 = 2112;
        v454 = v326;
        _os_log_impl(&dword_229538000, v322, OS_LOG_TYPE_INFO, "%{public}@Updating supportsACWGProvisioning from: %@ to: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v320);
      v327 = [v432 supportsMatCredACP];
      [v321 setSupportsACWGProvisioning:{objc_msgSend(v327, "BOOLValue")}];

      [v431 markChanged];
      obj = 1;
    }
  }

  v328 = [v432 supportsMatCredACB];
  if (v328)
  {
    v329 = [v432 supportsMatCredACB];
    v330 = [v329 BOOLValue];
    v331 = [v437 supportsACWGUWB];

    if (v330 != v331)
    {
      v332 = objc_autoreleasePoolPush();
      v333 = v437;
      v334 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v334, OS_LOG_TYPE_INFO))
      {
        v335 = HMFGetLogIdentifier();
        [v333 supportsACWGUWB];
        v336 = HMFBooleanToString();
        v337 = [v432 supportsMatCredACB];
        [v337 BOOLValue];
        v338 = HMFBooleanToString();
        *buf = 138543874;
        v450 = v335;
        v451 = 2112;
        v452 = v336;
        v453 = 2112;
        v454 = v338;
        _os_log_impl(&dword_229538000, v334, OS_LOG_TYPE_INFO, "%{public}@Updating supportsACWGUWB from: %@ to: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v332);
      v339 = [v432 supportsMatCredACB];
      [v333 setSupportsACWGUWB:{objc_msgSend(v339, "BOOLValue")}];

      [v431 markChanged];
      obj = 1;
    }
  }

  v340 = [v432 expeditedTransactionSupportedVersions];
  if (v340)
  {
    v341 = [v432 expeditedTransactionSupportedVersions];
    v342 = [v437 expeditedTransactionSupportedVersions];
    v343 = HMFEqualObjects();

    if ((v343 & 1) == 0)
    {
      v344 = objc_autoreleasePoolPush();
      v345 = v437;
      v346 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v346, OS_LOG_TYPE_INFO))
      {
        v347 = HMFGetLogIdentifier();
        v348 = [v345 expeditedTransactionSupportedVersions];
        v349 = [v432 expeditedTransactionSupportedVersions];
        *buf = 138543874;
        v450 = v347;
        v451 = 2112;
        v452 = v348;
        v453 = 2112;
        v454 = v349;
        _os_log_impl(&dword_229538000, v346, OS_LOG_TYPE_INFO, "%{public}@Updating expeditedTransactionSupportedVersions from: %@ to: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v344);
      v350 = [v432 expeditedTransactionSupportedVersions];
      [v345 setExpeditedTransactionSupportedVersions:v350];

      [v431 markChanged];
      obj = 1;
    }
  }

  v351 = [v432 bleUWBSupportedVersions];
  if (v351)
  {
    v352 = [v432 bleUWBSupportedVersions];
    v353 = [v437 bleUWBSupportedVersions];
    v354 = HMFEqualObjects();

    if ((v354 & 1) == 0)
    {
      v355 = objc_autoreleasePoolPush();
      v356 = v437;
      v357 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v357, OS_LOG_TYPE_INFO))
      {
        v358 = HMFGetLogIdentifier();
        v359 = [v356 bleUWBSupportedVersions];
        v360 = [v432 bleUWBSupportedVersions];
        *buf = 138543874;
        v450 = v358;
        v451 = 2112;
        v452 = v359;
        v453 = 2112;
        v454 = v360;
        _os_log_impl(&dword_229538000, v357, OS_LOG_TYPE_INFO, "%{public}@Updating bleUWBSupportedVersions from: %@ to: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v355);
      v361 = [v432 bleUWBSupportedVersions];
      [v356 setBleUWBSupportedVersions:v361];

      [v431 markChanged];
      obj = 1;
    }
  }

  v362 = [v432 bleAdvertisingVersion];
  if (v362)
  {
    v363 = [v432 bleAdvertisingVersion];
    v364 = [v437 bleAdvertisingVersion];
    v365 = HMFEqualObjects();

    if ((v365 & 1) == 0)
    {
      v366 = objc_autoreleasePoolPush();
      v367 = v437;
      v368 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v368, OS_LOG_TYPE_INFO))
      {
        v369 = HMFGetLogIdentifier();
        v370 = [v367 bleAdvertisingVersion];
        v371 = [v432 bleAdvertisingVersion];
        *buf = 138543874;
        v450 = v369;
        v451 = 2112;
        v452 = v370;
        v453 = 2112;
        v454 = v371;
        _os_log_impl(&dword_229538000, v368, OS_LOG_TYPE_INFO, "%{public}@Updating bleAdvertisingVersion from: %@ to: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v366);
      v372 = [v432 bleAdvertisingVersion];
      [v367 setBleAdvertisingVersion:v372];

      [v431 markChanged];
      obj = 1;
    }
  }

  v373 = [v432 matCredRGSI];
  if (v373)
  {
    v374 = [v432 matCredRGSI];
    v375 = [v437 readerGroupSubIdentifierACWG];
    v376 = HMFEqualObjects();

    if ((v376 & 1) == 0)
    {
      v377 = objc_autoreleasePoolPush();
      v378 = v437;
      v379 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v379, OS_LOG_TYPE_INFO))
      {
        v380 = HMFGetLogIdentifier();
        v381 = [v378 readerGroupSubIdentifierACWG];
        v382 = [v432 matCredRGSI];
        *buf = 138543874;
        v450 = v380;
        v451 = 2112;
        v452 = v381;
        v453 = 2112;
        v454 = v382;
        _os_log_impl(&dword_229538000, v379, OS_LOG_TYPE_INFO, "%{public}@Updating readerGroupSubIdentifierACWG from: %@ to: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v377);
      v383 = [v432 matCredRGSI];
      [v378 setReaderGroupSubIdentifierACWG:v383];

      [v431 markChanged];
    }
  }

  v384 = [v432 preexistingMatCredRGI];
  if (v384)
  {
    v385 = [v432 preexistingMatCredRGI];
    v386 = [v437 preexistingReaderGroupIdentifierACWG];
    v387 = HMFEqualObjects();

    if ((v387 & 1) == 0)
    {
      v388 = objc_autoreleasePoolPush();
      v389 = v437;
      v390 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v390, OS_LOG_TYPE_INFO))
      {
        v391 = HMFGetLogIdentifier();
        v392 = [v389 preexistingReaderGroupIdentifierACWG];
        v393 = [v432 preexistingMatCredRGI];
        *buf = 138543874;
        v450 = v391;
        v451 = 2112;
        v452 = v392;
        v453 = 2112;
        v454 = v393;
        _os_log_impl(&dword_229538000, v390, OS_LOG_TYPE_INFO, "%{public}@Updating preexistingReaderGroupIdentifierACWG from: %@ to: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v388);
      v394 = [v432 preexistingMatCredRGI];
      [v389 setPreexistingReaderGroupIdentifierACWG:v394];

      [v431 markChanged];
    }
  }

  v395 = [v432 mfiCertifiedACWG];
  if (v395)
  {
    v396 = [v432 mfiCertifiedACWG];
    v397 = [v396 BOOLValue];
    v398 = [v437 mfiCertifiedACWG];

    if (v397 != v398)
    {
      v399 = objc_autoreleasePoolPush();
      v400 = v437;
      v401 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v401, OS_LOG_TYPE_INFO))
      {
        v402 = HMFGetLogIdentifier();
        [v400 mfiCertifiedACWG];
        v403 = HMFBooleanToString();
        v404 = [v432 mfiCertifiedACWG];
        [v404 BOOLValue];
        v405 = HMFBooleanToString();
        *buf = 138543874;
        v450 = v402;
        v451 = 2112;
        v452 = v403;
        v453 = 2112;
        v454 = v405;
        _os_log_impl(&dword_229538000, v401, OS_LOG_TYPE_INFO, "%{public}@Updating mfiCertifiedACWG from: %@ to: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v399);
      v406 = [v432 mfiCertifiedACWG];
      [v400 setMfiCertifiedACWG:{objc_msgSend(v406, "BOOLValue")}];

      [v431 markChanged];
    }
  }

  if (obj)
  {
    logAndPostNotification(@"HMDAccessorySupportsWalletKeyDidChangeNotification", v437, 0);
  }

  if (!v305)
  {
    goto LABEL_213;
  }

  if ([v430 isAllowedToEnableAdaptiveTemperatureAutomations])
  {
    v407 = [v437 supportsAdaptiveTemperatureAutomations];
    if ([v407 BOOLValue])
    {
      v408 = [v437 hasOnboardedForAdaptiveTemperatureAutomations];
      v409 = [v408 BOOLValue];

      if (v409)
      {
        goto LABEL_213;
      }

      v410 = [v437 workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = ____transactionAccessoryUpdated_block_invoke_81047;
      block[3] = &unk_27868A728;
      v447 = v437;
      dispatch_async(v410, block);

      v407 = v447;
    }

LABEL_213:
    v411 = dispatch_group_create();
    v442 = 0u;
    v443 = 0u;
    v444 = 0u;
    v445 = 0u;
    obja = v429;
    v412 = [obja countByEnumeratingWithState:&v442 objects:v448 count:16];
    if (v412)
    {
      v413 = *v443;
      do
      {
        for (i = 0; i != v412; ++i)
        {
          if (*v443 != v413)
          {
            objc_enumerationMutation(obja);
          }

          v415 = *(*(&v442 + 1) + 8 * i);
          dispatch_group_enter(v411);
          if (v436)
          {
            v416 = [v415 mutableCopy];
            v417 = [v436 transport];
            [v416 setTransport:v417];
            v418 = objc_msgSend_copy(v416);
          }

          else
          {
            v418 = v415;
          }

          v419 = [v437 msgDispatcher];
          v420 = [v437 uuid];
          v440[0] = MEMORY[0x277D85DD0];
          v440[1] = 3221225472;
          v440[2] = ____transactionAccessoryUpdated_block_invoke_2_81048;
          v440[3] = &unk_27868A728;
          v441 = v411;
          [v419 sendMessage:v418 target:v420 andInvokeCompletionHandler:v440];
        }

        v412 = [obja countByEnumeratingWithState:&v442 objects:v448 count:16];
      }

      while (v412);
    }

    dispatch_group_wait(v411, 0);
    v438[0] = MEMORY[0x277D85DD0];
    v438[1] = 3221225472;
    v438[2] = ____transactionAccessoryUpdated_block_invoke_3;
    v438[3] = &unk_278682310;
    v439 = v431;
    [v437 transactionAccessoryUpdatedForPreferredMediaUser:v432 completionHandler:v438];
    if (![v437 supportsCHIP])
    {
      goto LABEL_233;
    }

    v421 = [v430 featuresDataSource];
    if ([v421 isRVCEnabled])
    {
      v422 = [v432 supportsNativeMatter];
      if ([v422 BOOLValue])
      {
        v423 = [v437 convertingMatterAccessory];

        if (v423)
        {
LABEL_233:
          [v436 respondWithSuccess];

          goto LABEL_234;
        }

        v421 = [v437 matterAdapter];
        [v421 convertMatterAccessoryToNativeMatter:1];
      }

      else
      {
      }
    }

    goto LABEL_233;
  }

  v424 = objc_autoreleasePoolPush();
  v425 = v437;
  v426 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v426, OS_LOG_TYPE_INFO))
  {
    v427 = HMFGetLogIdentifier();
    *buf = 138543362;
    v450 = v427;
    _os_log_impl(&dword_229538000, v426, OS_LOG_TYPE_INFO, "%{public}@Not onboarding adaptive temperature automations, home is not qualified", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v424);
LABEL_234:
}

id *____transactionAccessoryUpdated_block_invoke_3(id *result, int a2)
{
  if (a2)
  {
    return [result[4] markChanged];
  }

  return result;
}

void sub_229C9C970(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229CA2248(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_229CA69FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_229CAB180(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak((v29 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229CAC7FC(_Unwind_Exception *a1)
{
  __HMFActivityScopeLeave();
  _Block_object_dispose(&STACK[0x2D8], 8);
  _Block_object_dispose(&STACK[0x308], 8);
  _Block_object_dispose(&STACK[0x338], 8);
  _Block_object_dispose(&STACK[0x358], 8);
  objc_destroyWeak(&STACK[0x378]);
  _Unwind_Resume(a1);
}

void sub_229CAF054(_Unwind_Exception *a1)
{
  objc_destroyWeak(&STACK[0x220]);
  objc_destroyWeak(&STACK[0x230]);
  _Block_object_dispose(&STACK[0x238], 8);
  _Block_object_dispose(&STACK[0x380], 8);
  _Unwind_Resume(a1);
}

void sub_229CB3CC0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 88));
  objc_destroyWeak((v2 - 160));
  _Unwind_Resume(a1);
}

void sub_229CB93FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak(&a28);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229CB9D1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229CBA5B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229CBD9D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 80));
  objc_destroyWeak((v2 - 224));
  _Unwind_Resume(a1);
}

void sub_229CBE9F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 64));
  objc_destroyWeak(&location);
  __HMFActivityScopeLeave();
  _Unwind_Resume(a1);
}

void sub_229CBFA04(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 80));
  objc_destroyWeak((v2 - 104));
  __HMFActivityScopeLeave();
  _Unwind_Resume(a1);
}

void sub_229CC0764(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_229CC0980(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 64));
  _Unwind_Resume(a1);
}

void sub_229CC1E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  objc_destroyWeak(va);
  objc_destroyWeak((v17 - 88));
  _Unwind_Resume(a1);
}

void sub_229CC2594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229CC9658(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void __handleUpdatedPassword(void *a1, void *a2)
{
  v80 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v43 = a2;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v41 = v3;
  v4 = [v3 services];
  v5 = objc_msgSend_copy(v4);

  obj = v5;
  v39 = [v5 countByEnumeratingWithState:&v51 objects:v58 count:16];
  if (v39)
  {
    v38 = *v52;
    do
    {
      v6 = 0;
      do
      {
        if (*v52 != v38)
        {
          v7 = v6;
          objc_enumerationMutation(obj);
          v6 = v7;
        }

        v40 = v6;
        v8 = *(*(&v51 + 1) + 8 * v6);
        v9 = [v8 type];
        v10 = [v9 isEqualToString:@"000000DA-0000-1000-8000-0026BB765291"];

        if (v10)
        {
          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          v42 = [v8 characteristics];
          v11 = [v42 countByEnumeratingWithState:&v47 objects:v57 count:16];
          if (!v11)
          {
            goto LABEL_46;
          }

          v44 = *v48;
          while (1)
          {
            v12 = 0;
            do
            {
              if (*v48 != v44)
              {
                objc_enumerationMutation(v42);
              }

              v13 = *(*(&v47 + 1) + 8 * v12);
              v14 = [v13 type];
              v15 = [v14 isEqualToString:@"000000E4-0000-1000-8000-0026BB765291"];

              if (v15)
              {
                v16 = [v13 value];

                if (v16)
                {
                  v17 = [v13 value];
                  v18 = v17;
                  if (v17)
                  {
                    v19 = v17;
                    v20 = v18;
                    [v20 bytes];
                    [v20 length];

                    *&buf = 0;
                    v55 = 0;
                    v56 = 0;
                    v21 = 0;
                    v22 = 0;
                    if (!TLV8Get() && v55 == 1)
                    {
                      v22 = *buf;
                      if (v22 > 1)
                      {
                        goto LABEL_21;
                      }

                      v23 = TLV8GetOrCopyCoalesced();
                      if (v23 == -6727 || !v55)
                      {
                        v21 = 0;
                        if (!v22)
                        {
                          goto LABEL_29;
                        }
                      }

                      else
                      {
                        if (v23)
                        {
LABEL_21:
                          v22 = 0;
                          v21 = 0;
                          goto LABEL_30;
                        }

                        v25 = objc_alloc(MEMORY[0x277CCACA8]);
                        v21 = [v25 initWithBytes:buf length:v55 encoding:4];
                        if (v56)
                        {
                          free(v56);
                          v56 = 0;
                        }

                        if (v21)
                        {
LABEL_29:
                          v26 = v21;
                          goto LABEL_30;
                        }
                      }

                      v22 = 0;
                    }

LABEL_30:
                  }

                  else
                  {
                    v22 = 0;
                    v21 = 0;
                  }

                  v24 = v21;
                }

                else
                {
                  v22 = 0;
                  v24 = 0;
                }

                v78 = 0u;
                v79 = 0u;
                v76 = 0u;
                v77 = 0u;
                v74 = 0u;
                v75 = 0u;
                v72 = 0u;
                v73 = 0u;
                v70 = 0u;
                v71 = 0u;
                v68 = 0u;
                v69 = 0u;
                v66 = 0u;
                v67 = 0u;
                v64 = 0u;
                v65 = 0u;
                v62 = 0u;
                v63 = 0u;
                v60 = 0u;
                v61 = 0u;
                buf = 0u;
                v27 = v43;
                TLV8BufferInit();
                v28 = v27;
                [v27 UTF8String];
                [v27 length];

                if (TLV8BufferAppend() || (LOBYTE(v56) = v43 != 0, TLV8BufferAppend()))
                {
                  v29 = 0;
                }

                else
                {
                  v29 = [MEMORY[0x277CBEA90] dataWithBytes:buf length:?];
                }

                TLV8BufferFree();
                if (v22 != (v43 != 0) || v43 && ([v24 isEqualToString:v27] & 1) == 0)
                {
                  v30 = objc_autoreleasePoolPush();
                  v31 = v41;
                  v32 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
                  {
                    v33 = HMFGetLogIdentifier();
                    LODWORD(buf) = 138543362;
                    *(&buf + 4) = v33;
                    _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_INFO, "%{public}@password does not match send update", &buf, 0xCu);
                  }

                  objc_autoreleasePoolPop(v30);
                  v34 = v29;
                  objc_initWeak(&buf, v31);
                  v35 = [v31 workQueue];
                  v45[0] = MEMORY[0x277D85DD0];
                  v45[1] = 3221225472;
                  v45[2] = ____handleUpdatedPassword_block_invoke;
                  v45[3] = &unk_278688A18;
                  objc_copyWeak(&v46, &buf);
                  [v31 writeValue:v34 toCharacteristic:v13 queue:v35 source:1040 completion:v45];

                  objc_destroyWeak(&v46);
                  objc_destroyWeak(&buf);
                }
              }

              ++v12;
            }

            while (v11 != v12);
            v36 = [v42 countByEnumeratingWithState:&v47 objects:v57 count:16];
            v11 = v36;
            if (!v36)
            {
LABEL_46:

              break;
            }
          }
        }

        v6 = v40 + 1;
      }

      while (v40 + 1 != v39);
      v39 = [obj countByEnumeratingWithState:&v51 objects:v58 count:16];
    }

    while (v39);
  }
}

void sub_229CD1668(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak(&STACK[0x220]);
  _Unwind_Resume(a1);
}

void ____handleUpdatedPassword_block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v8;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@unable to update password setting value with error: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
}

void __handleUpdatedMinimumUserPrivilege(void *a1, void *a2)
{
  v92 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = objc_autoreleasePoolPush();
  val = v2;
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier();
    v6 = HMUserPrivilegeToString();
    *buf = 138543874;
    v83 = v5;
    v84 = 2112;
    v85 = v6;
    v86 = 2048;
    v87 = a2;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Handling updated minimum user privilege: %@ (%ld)", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [val home];
  v8 = [v7 featuresDataSource];
  v9 = [v8 isMediaPrivilegeEnabled];

  if (v9)
  {
    obj = [val findCharacteristicType:@"000000EE-0000-1000-8000-0026BB765291" forServiceType:@"000000DA-0000-1000-8000-0026BB765291"];
    if (obj)
    {
      [val _scheduleMediaPrivilegeUpdate];
      goto LABEL_50;
    }

    v38 = [val findCharacteristicType:@"000000E5-0000-1000-8000-0026BB765291" forServiceType:@"000000DA-0000-1000-8000-0026BB765291"];
    v39 = v38;
    if (!v38)
    {
LABEL_49:

      obj = 0;
      goto LABEL_50;
    }

    v40 = [v38 value];
    v41 = v40;
    if (!a2 && !v40)
    {
      goto LABEL_36;
    }

    if ([v40 integerValue] == a2)
    {
LABEL_48:

      goto LABEL_49;
    }

    if (v41)
    {
      v42 = objc_autoreleasePoolPush();
      v47 = val;
      v44 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        v48 = HMFGetLogIdentifier();
        v49 = HMUserPrivilegeToString();
        [v41 integerValue];
        v50 = HMUserPrivilegeToString();
        *buf = 138544386;
        v83 = v48;
        v84 = 2112;
        v85 = v49;
        v86 = 2048;
        v87 = a2;
        v88 = 2112;
        v89 = v50;
        v90 = 2112;
        v91 = v41;
        _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_INFO, "%{public}@new privilege %@ (%ld) does not match current privilege %@ (%@). Send update", buf, 0x34u);
      }
    }

    else
    {
LABEL_36:
      v42 = objc_autoreleasePoolPush();
      v43 = val;
      v44 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        v45 = HMFGetLogIdentifier();
        v46 = HMUserPrivilegeToString();
        *buf = 138543874;
        v83 = v45;
        v84 = 2112;
        v85 = v46;
        v86 = 2048;
        v87 = a2;
        _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_INFO, "%{public}@new privilege %@ (%ld), no existing value. Send update", buf, 0x20u);
      }
    }

    objc_autoreleasePoolPop(v42);
    v51 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
    v52 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
    v79 = v51;
    v53 = [v39 validateValueForWrite:v52 outValue:&v79];
    v54 = v79;

    if (v53)
    {
      v55 = objc_autoreleasePoolPush();
      v56 = val;
      v57 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        v58 = HMFGetLogIdentifier();
        *buf = 138543874;
        v83 = v58;
        v84 = 2048;
        v85 = a2;
        v86 = 2112;
        v87 = v53;
        _os_log_impl(&dword_229538000, v57, OS_LOG_TYPE_ERROR, "%{public}@invalid privilege value - %ld, error - %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v55);
    }

    else
    {
      objc_initWeak(buf, val);
      v59 = [val workQueue];
      v77[0] = MEMORY[0x277D85DD0];
      v77[1] = 3221225472;
      v77[2] = ____handleUpdatedMinimumUserPrivilege_block_invoke;
      v77[3] = &unk_278688A18;
      objc_copyWeak(&v78, buf);
      [val writeValue:v54 toCharacteristic:v39 queue:v59 source:1040 completion:v77];

      objc_destroyWeak(&v78);
      objc_destroyWeak(buf);
    }

    goto LABEL_48;
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v10 = [val services];
  obj = objc_msgSend_copy(v10);

  v62 = [obj countByEnumeratingWithState:&v73 objects:v81 count:16];
  if (v62)
  {
    v61 = *v74;
    do
    {
      v11 = 0;
      do
      {
        if (*v74 != v61)
        {
          v12 = v11;
          objc_enumerationMutation(obj);
          v11 = v12;
        }

        v63 = v11;
        v13 = *(*(&v73 + 1) + 8 * v11);
        v14 = [v13 type];
        v15 = [v14 isEqualToString:@"000000DA-0000-1000-8000-0026BB765291"];

        if (v15)
        {
          v71 = 0u;
          v72 = 0u;
          v69 = 0u;
          v70 = 0u;
          v16 = [v13 characteristics];
          v17 = [v16 countByEnumeratingWithState:&v69 objects:v80 count:16];
          if (v17)
          {
            v18 = *v70;
            do
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v70 != v18)
                {
                  objc_enumerationMutation(v16);
                }

                v20 = *(*(&v69 + 1) + 8 * i);
                v21 = [v20 type];
                v22 = [v21 isEqualToString:@"000000E5-0000-1000-8000-0026BB765291"];

                if (v22)
                {
                  v23 = [v20 value];
                  v24 = [v23 integerValue] == a2;

                  if (!v24)
                  {
                    v25 = objc_autoreleasePoolPush();
                    v26 = val;
                    v27 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
                    {
                      v28 = HMFGetLogIdentifier();
                      *buf = 138543362;
                      v83 = v28;
                      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@privilege does not match send update", buf, 0xCu);
                    }

                    objc_autoreleasePoolPop(v25);
                    v29 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
                    v30 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
                    v68 = v29;
                    v31 = [v20 validateValueForWrite:v30 outValue:&v68];
                    v32 = v68;

                    if (v31)
                    {
                      v33 = objc_autoreleasePoolPush();
                      v34 = v26;
                      v35 = HMFGetOSLogHandle();
                      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                      {
                        v36 = HMFGetLogIdentifier();
                        *buf = 138543362;
                        v83 = v36;
                        _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@invalid minimum user privilege value", buf, 0xCu);
                      }

                      objc_autoreleasePoolPop(v33);
                    }

                    else
                    {
                      objc_initWeak(buf, v26);
                      v37 = [v26 workQueue];
                      v66[0] = MEMORY[0x277D85DD0];
                      v66[1] = 3221225472;
                      v66[2] = ____handleUpdatedMinimumUserPrivilege_block_invoke_2277;
                      v66[3] = &unk_278688A18;
                      objc_copyWeak(&v67, buf);
                      [v26 writeValue:v32 toCharacteristic:v20 queue:v37 source:1040 completion:v66];

                      objc_destroyWeak(&v67);
                      objc_destroyWeak(buf);
                    }
                  }
                }
              }

              v17 = [v16 countByEnumeratingWithState:&v69 objects:v80 count:16];
            }

            while (v17);
          }
        }

        v11 = v63 + 1;
      }

      while (v63 + 1 != v62);
      v62 = [obj countByEnumeratingWithState:&v73 objects:v81 count:16];
    }

    while (v62);
  }

LABEL_50:
}

void sub_229CD217C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 176));
  _Unwind_Resume(a1);
}

void ____handleUpdatedMinimumUserPrivilege_block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v8;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@updated privilege value with error: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
}

void ____handleUpdatedMinimumUserPrivilege_block_invoke_2277(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v8;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@unable to update user privilege value with error: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
}

void sub_229CDBE08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_229CE2664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__81952(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_229CE4870(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location, id a22)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a22);
  _Unwind_Resume(a1);
}

void completeWithError(void *a1, void *a2)
{
  v5 = a1;
  v3 = a2;
  if (v5)
  {
    if (v3)
    {
      v5[2](v5, v3);
    }

    else
    {
      v4 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
      v5[2](v5, v4);
    }
  }
}

id makeConfigurationControl(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CFECB0]);
  v3 = [objc_alloc(MEMORY[0x277CFECB8]) initWithValue:a1];
  [v2 setOperationType:v3];

  return v2;
}

id makeStationConfiguration(void *a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277CFECC8];
  v5 = a1;
  v6 = objc_alloc_init(v4);
  [v6 setSSID:v5];

  v7 = objc_alloc(MEMORY[0x277CFECC0]);
  if (v3)
  {
    v8 = [v7 initWithValue:1];
    [v6 setSecurityMode:v8];

    [v6 setPSK:v3];
  }

  else
  {
    v9 = [v7 initWithValue:0];
    [v6 setSecurityMode:v9];
  }

  return v6;
}

void sub_229CE8378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__82538(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id encodeRootObjectForRemote(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = objc_autoreleasePoolPush();
  v9 = [[HMDRemoteKeyedArchiver alloc] initForWritingWithRemoteDeviceIsOnSameAccount:0 remoteGateway:0 remoteUserIsAdministrator:0 user:v6 supportedFeatures:v7];
  [v9 encodeObject:v5 forKey:*MEMORY[0x277CCA308]];
  [v9 finishEncoding];
  v10 = [v9 encodedData];

  objc_autoreleasePoolPop(v8);

  return v10;
}

id encodeRootObjectForRemoteDeviceOnSameAccountMigrateToHH2(void *a1, int a2, int a3)
{
  v5 = a1;
  v6 = objc_autoreleasePoolPush();
  v7 = [objc_alloc(MEMORY[0x277D0F880]) initWithName:@"com.apple.homed.hmdutil.encode-remote-same."];
  if (a2)
  {
    v8 = homedSupportedFeatures;
    if (a3)
    {
      v9 = [MEMORY[0x277CBEB18] arrayWithArray:v8];
      [v9 addObject:&unk_283E72680];
      v10 = objc_msgSend_copy(v9);

      v11 = 4;
      v8 = v10;
    }

    else
    {
      v11 = 4;
    }
  }

  else
  {
    v8 = &unk_283E75758;
    v11 = 3;
  }

  v12 = [[HMDRemoteKeyedArchiver alloc] initForWritingWithRemoteDeviceIsOnSameAccount:1 remoteGateway:0 remoteUserIsAdministrator:1 user:0 dataVersion:v11 supportedFeatures:v8];
  [v12 encodeObject:v5 forKey:*MEMORY[0x277CCA308]];
  [v12 finishEncoding];
  v13 = [v12 encodedData];

  objc_autoreleasePoolPop(v6);

  return v13;
}

id encodeRootObjectForIncomingXPCMessage(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  v6 = [[HMDXPCKeyedArchiver alloc] initForWritingWithMessage:v4];
  [v6 encodeObject:v3 forKey:*MEMORY[0x277CCA308]];
  [v6 finishEncoding];
  v7 = [v6 encodedData];

  objc_autoreleasePoolPop(v5);
  v8 = objc_msgSend_copy(v7);

  return v8;
}

id encodeRootObjectForSPIClients(void *a1)
{
  v1 = MEMORY[0x277D0F818];
  v2 = a1;
  v3 = [v1 internalMessageWithName:@"kDummyMessageForEntitledXPC" messagePayload:0];
  v4 = encodeRootObjectForIncomingXPCMessage(v2, v3);

  return v4;
}

__CFString *locationAsString(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (isInternalBuild())
    {
      v2 = [v1 description];
    }

    else
    {
      v2 = @"[]";
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *regionAsString(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (isInternalBuild())
    {
      v2 = [v1 hm_description];
    }

    else
    {
      v2 = @"[]";
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void createDirectory(void *a1)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v19 = *MEMORY[0x277CCA180];
  v20[0] = &unk_283E72740;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v12 = 0;
  if (![v3 fileExistsAtPath:v1 isDirectory:&v12])
  {
    v11 = 0;
    v8 = [v3 createDirectoryAtPath:v1 withIntermediateDirectories:1 attributes:v2 error:&v11];
    v4 = v11;
    v12 = v8;
    if (!v8)
    {
      goto LABEL_3;
    }

LABEL_7:
    v10 = v4;
    [v3 setAttributes:v2 ofItemAtPath:v1 error:&v10];
    v9 = v10;

    v4 = v9;
    goto LABEL_8;
  }

  v4 = 0;
  if (v12)
  {
    goto LABEL_7;
  }

LABEL_3:
  v5 = objc_autoreleasePoolPush();
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543874;
    v14 = v7;
    v15 = 2112;
    v16 = v1;
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Could not create directory path %@ - error %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
LABEL_8:
}

id mapHAPPairingErrorToHMError(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  v3 = *MEMORY[0x277CFE770];

  if (v2 != v3)
  {
    goto LABEL_2;
  }

  v11 = [v1 code];
  if (v11 <= 24)
  {
    if (v11 <= 19)
    {
      if (v11 == 8)
      {
        v4 = MEMORY[0x277CCA9B8];
        v5 = @"Connection was lost with the accessory";
        v7 = @"Ensure there is good WiFi signal, reset the accessory and try again";
        v6 = 54;
        goto LABEL_4;
      }

      if (v11 == 18)
      {
        v4 = MEMORY[0x277CCA9B8];
        v5 = @"Accessory is already paired";
        v6 = 13;
        goto LABEL_3;
      }
    }

    else
    {
      switch(v11)
      {
        case 20:
          v4 = MEMORY[0x277CCA9B8];
          v5 = @"Currently associated WiFi network is not compatible with the accessory";
          v7 = @"Associate with a 2.4 GHz WiFi network and try again";
          v6 = 90;
          goto LABEL_4;
        case 21:
          v4 = MEMORY[0x277CCA9B8];
          v5 = @"This device is not currently associated to a Home WiFi network";
          v7 = @"Associate to a WiFi network (from Settings -> WiFi) and try again";
          v6 = 78;
          goto LABEL_4;
        case 23:
          v4 = MEMORY[0x277CCA9B8];
          v5 = @"Accessories cannot be added to enterprise network";
          v6 = 99;
          goto LABEL_3;
      }
    }

LABEL_2:
    v4 = MEMORY[0x277CCA9B8];
    v5 = @"Pairing Failed";
    v6 = 18;
LABEL_3:
    v7 = 0;
LABEL_4:
    v8 = [v4 hmErrorWithCode:v6 description:v5 reason:0 suggestion:v7 underlyingError:v1];
    goto LABEL_5;
  }

  if (v11 > 33)
  {
    if (v11 != 34)
    {
      if (v11 == 35)
      {
        v4 = MEMORY[0x277CCA9B8];
        v5 = @"Home hub required";
        v7 = @"Add a Home hub to Apple Home and try again";
        v6 = 91;
        goto LABEL_4;
      }

      if (v11 == 36)
      {
        v4 = MEMORY[0x277CCA9B8];
        v6 = 79;
        v5 = 0;
        goto LABEL_3;
      }

      goto LABEL_2;
    }

    v12 = MEMORY[0x277CCA9B8];
    v13 = @"Failed to connect";
    v14 = 2015;
  }

  else
  {
    switch(v11)
    {
      case 25:
        v12 = MEMORY[0x277CCA9B8];
        v13 = @"Accessory did not join the configured network";
        v14 = 2016;
        break;
      case 26:
        v4 = MEMORY[0x277CCA9B8];
        v5 = @"Failed to join WiFi network";
        v7 = @"Ensure there is good WiFi signal and try again";
        v6 = 102;
        goto LABEL_4;
      case 30:
        v12 = MEMORY[0x277CCA9B8];
        v13 = @"No supported Thread router or Thread credentials not found";
        v14 = 2010;
        break;
      default:
        goto LABEL_2;
    }
  }

  v8 = [v12 hmPrivateErrorWithCode:v14 description:v13 underlyingError:v1];
LABEL_5:
  v9 = v8;

  return v9;
}

id determineHomeKitDaemonRootStorePath()
{
  v0 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v1 = [v0 firstObject];
  if (v1)
  {
    v2 = v1;
    v3 = [MEMORY[0x277D0F8E8] productInfo];
    v4 = [v3 productPlatform];

    if (v4 == 1)
    {
      v5 = @"HomeKit";
    }

    else
    {
      v5 = @"homed";
    }

    v6 = [v2 stringByAppendingPathComponent:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void initializePaths()
{
  if (initializePaths_onceToken != -1)
  {
    dispatch_once(&initializePaths_onceToken, &__block_literal_global_82738);
  }
}

void __initializePaths_block_invoke()
{
  v68[1] = *MEMORY[0x277D85DE8];
  v0 = objc_autoreleasePoolPush();
  v1 = determineHomeKitDaemonRootStorePath();
  v2 = storeDirectoryPath;
  storeDirectoryPath = v1;

  if (storeDirectoryPath)
  {
    v3 = [storeDirectoryPath stringByAppendingPathComponent:@"protected-home.config"];
    v4 = configProtectedDataStorePath;
    configProtectedDataStorePath = v3;

    v5 = [storeDirectoryPath stringByAppendingPathComponent:@"vendor-id-store"];
    v6 = configVendorIDStorePath;
    configVendorIDStorePath = v5;

    v7 = [storeDirectoryPath stringByAppendingPathComponent:@"plain-metadata.config"];
    v8 = configPlainMetadataPath;
    configPlainMetadataPath = v7;

    v9 = [storeDirectoryPath stringByAppendingPathComponent:@"server-token"];
    v10 = serverTokenDataStorePath;
    serverTokenDataStorePath = v9;

    v11 = [storeDirectoryPath stringByAppendingPathComponent:@"transaction-journal"];
    v12 = transactionJournalDataStorePath;
    transactionJournalDataStorePath = v11;

    v13 = [storeDirectoryPath stringByAppendingPathComponent:@"datasync-journal"];
    v14 = idsDataSyncJournalDataStorePath;
    idsDataSyncJournalDataStorePath = v13;

    v15 = [storeDirectoryPath stringByAppendingPathComponent:@"blacklisted-bundles"];
    v16 = blacklistedBundlesStorePath;
    blacklistedBundlesStorePath = v15;

    v17 = [storeDirectoryPath stringByAppendingPathComponent:@"registered-applications"];
    v18 = registeredApplicationsDataStorePath;
    registeredApplicationsDataStorePath = v17;

    v19 = [storeDirectoryPath stringByAppendingPathComponent:@"bulletin-board"];
    v20 = bulletinBoardDataStorePath;
    bulletinBoardDataStorePath = v19;

    v21 = [storeDirectoryPath stringByAppendingPathComponent:@"cloud-cache"];
    v22 = cloudCachePath;
    cloudCachePath = v21;

    v23 = [storeDirectoryPath stringByAppendingPathComponent:@"datastore.sqlite"];
    v24 = sqlitePath;
    sqlitePath = v23;

    v25 = [storeDirectoryPath stringByAppendingPathComponent:@"eventstore-beta.sqlite"];
    v26 = eventStorePath;
    eventStorePath = v25;

    v27 = [storeDirectoryPath stringByAppendingString:@"/BLECache"];
    v28 = bleAccessoryCachePath;
    bleAccessoryCachePath = v27;

    v29 = [storeDirectoryPath stringByAppendingString:@"/AccessoryServerIPCache"];
    v30 = ipAccessoryCachePath;
    ipAccessoryCachePath = v29;

    v31 = [storeDirectoryPath stringByAppendingPathComponent:@"com.apple.relaunch.assertion.plist"];
    v32 = launchdAssertionPlistPath;
    launchdAssertionPlistPath = v31;

    v33 = [storeDirectoryPath stringByAppendingPathComponent:@"metricsCounters"];
    v34 = metricsCountersPersistentStorePath;
    metricsCountersPersistentStorePath = v33;

    v35 = [storeDirectoryPath stringByAppendingPathComponent:@"eventcounters-groupstore"];
    v36 = eventCountersDataStorePath;
    eventCountersDataStorePath = v35;

    v37 = [storeDirectoryPath stringByAppendingPathComponent:@"eventcounters-datastore"];
    v38 = eventCountersDataStoreLegacyPath;
    eventCountersDataStoreLegacyPath = v37;

    v39 = [storeDirectoryPath stringByAppendingPathComponent:@"eventflags-datastore"];
    v40 = eventFlagsDataStorePath;
    eventFlagsDataStorePath = v39;

    v41 = [storeDirectoryPath stringByAppendingPathComponent:@"core.sql"];
    v42 = coreDataDataStorePath;
    coreDataDataStorePath = v41;

    v43 = [storeDirectoryPath stringByAppendingPathComponent:@"/HH1ToHH2PerDeviceMigration"];
    v44 = hh1ToHH2PerDeviceMigrationDirectoryPath;
    hh1ToHH2PerDeviceMigrationDirectoryPath = v43;

    v45 = [storeDirectoryPath stringByAppendingPathComponent:@"/hh1TestArchives"];
    v46 = hh1TestArchivesDirectoryPath;
    hh1TestArchivesDirectoryPath = v45;

    v47 = [storeDirectoryPath stringByAppendingPathComponent:@"/demoMode"];
    v48 = demoModeV2ConfigPath;
    demoModeV2ConfigPath = v47;

    v49 = HMDCreateHomeKitDaemonCacheDirectory();
    v50 = [v49 stringByAppendingPathComponent:@"hh2MigratorRecordStore.plist"];
    v51 = hh2MigratorRecordStorePath;
    hh2MigratorRecordStorePath = v50;

    v52 = [v49 stringByAppendingPathComponent:@"hh2MigrationFailureRecordStore.plist"];
    v53 = hh2MigrationFailureRecordStorePath;
    hh2MigrationFailureRecordStorePath = v52;

    v54 = [v49 stringByAppendingPathComponent:@"hh2MigrationLogEventStore.plist"];
    v55 = hh2MigrationLogEventPath;
    hh2MigrationLogEventPath = v54;

    v67 = *MEMORY[0x277CCA180];
    v68[0] = &unk_283E72740;
    v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:&v67 count:1];
    v66[0] = storeDirectoryPath;
    v66[1] = bleAccessoryCachePath;
    v66[2] = hh1ToHH2PerDeviceMigrationDirectoryPath;
    v57 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:3];
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = ___initializeProtectedStorePaths_block_invoke;
    v64[3] = &unk_2786778F0;
    v65 = v56;
    v58 = v56;
    [v57 hmf_enumerateWithAutoreleasePoolUsingBlock:v64];
  }

  v59 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HomeKitDaemon"];
  v60 = [v59 pathForResource:@"plain-metadata-full.config" ofType:0];
  v61 = builtinConfigMetadataDictionaryPath;
  builtinConfigMetadataDictionaryPath = v60;

  if (!builtinConfigMetadataDictionaryPath)
  {
    v62 = [v59 pathForResource:@"plain-metadata.config" ofType:0];
    v63 = builtinConfigMetadataDictionaryPath;
    builtinConfigMetadataDictionaryPath = v62;
  }

  objc_autoreleasePoolPop(v0);
}

id HMDCreateHomeKitDaemonCacheDirectory()
{
  v48 = *MEMORY[0x277D85DE8];
  v0 = HMCacheSubdirectoryWithRelativePath();
  v1 = 0x277CCA000uLL;
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v40 = 0;
  v3 = [v2 createDirectoryAtPath:v0 withIntermediateDirectories:1 attributes:0 error:&v40];
  v4 = v40;

  if (v3)
  {
    v5 = v0;
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = getuid();
      *buf = 138544130;
      v42 = v8;
      v43 = 1024;
      *v44 = v9;
      *&v44[4] = 2114;
      *&v44[6] = v0;
      *&v44[14] = 2114;
      *&v44[16] = v4;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to create HomeKit daemon cache directory for user %d at %{public}@: %{public}@", buf, 0x26u);
    }

    v27 = v4;

    objc_autoreleasePoolPop(v6);
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v28 = v0;
    obj = [v0 pathComponents];
    v34 = [obj countByEnumeratingWithState:&v36 objects:v47 count:16];
    if (v34)
    {
      v33 = *v37;
      v32 = *MEMORY[0x277CCA180];
      v31 = *MEMORY[0x277CCA158];
      v30 = *MEMORY[0x277CCA118];
      v10 = &stru_283CF9D50;
      do
      {
        v11 = 0;
        v12 = v10;
        do
        {
          if (*v37 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v10 = [(__CFString *)v12 stringByAppendingPathComponent:*(*(&v36 + 1) + 8 * v11), v27];

          v13 = [*(v1 + 2560) defaultManager];
          v35 = 0;
          v14 = [v13 attributesOfItemAtPath:v10 error:&v35];
          v15 = v35;

          if (v14)
          {
            v16 = [v14 objectForKeyedSubscript:v32];
            v17 = [v14 objectForKeyedSubscript:v31];
            v18 = [v14 objectForKeyedSubscript:v30];
            v19 = objc_autoreleasePoolPush();
            v20 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              v21 = HMFGetLogIdentifier();
              v22 = [v16 shortValue];
              *buf = 138544386;
              v42 = v21;
              v43 = 2112;
              *v44 = v10;
              *&v44[8] = 1024;
              *&v44[10] = v22;
              *&v44[14] = 2112;
              *&v44[16] = v17;
              v45 = 2112;
              v46 = v18;
              _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Path: %@, permissions: %o, owner uid: %@, owner gid: %@", buf, 0x30u);

              v1 = 0x277CCA000;
            }

            objc_autoreleasePoolPop(v19);
          }

          else
          {
            v23 = objc_autoreleasePoolPush();
            v24 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              v25 = HMFGetLogIdentifier();
              *buf = 138543874;
              v42 = v25;
              v43 = 2112;
              *v44 = v10;
              *&v44[8] = 2112;
              *&v44[10] = v15;
              _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to get attributes for path %@: %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v23);
          }

          ++v11;
          v12 = v10;
        }

        while (v34 != v11);
        v34 = [obj countByEnumeratingWithState:&v36 objects:v47 count:16];
      }

      while (v34);
    }

    else
    {
      v10 = &stru_283CF9D50;
    }

    v5 = 0;
    v4 = v27;
    v0 = v28;
  }

  return v5;
}

void ___initializeProtectedStorePaths_block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = v4;
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  if ([v7 fileExistsAtPath:v5 isDirectory:0])
  {
    v13 = 0;
    [v7 setAttributes:v6 ofItemAtPath:v5 error:&v13];
    v8 = v13;
    v9 = objc_autoreleasePoolPush();
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543874;
      v15 = v11;
      v16 = 2112;
      v17 = v5;
      v18 = 2112;
      v19 = v8;
      v12 = "%{public}@Setting attributes to directory path %@ resulted into error : %@";
LABEL_6:
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, v12, buf, 0x20u);
    }
  }

  else
  {
    v13 = 0;
    [v7 createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:v6 error:&v13];
    v8 = v13;
    v9 = objc_autoreleasePoolPush();
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543874;
      v15 = v11;
      v16 = 2112;
      v17 = v5;
      v18 = 2112;
      v19 = v8;
      v12 = "%{public}@Create store directory path %@ finished with error %@";
      goto LABEL_6;
    }
  }

  objc_autoreleasePoolPop(v9);
}

void __initializeCapabilitiesAndTimeouts_block_invoke(uint64_t a1)
{
  v158 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277D0F8E8] productInfo];
  v5 = objc_autoreleasePoolPush();
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543618;
    v153 = v7;
    v154 = 2112;
    v155 = v4;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Initializing with product info: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v8 = MGCopyAnswer();
  if (v8)
  {
    v9 = v8;
    v10 = [MEMORY[0x277CCACA8] stringWithString:v8];
    v11 = uniqueDeviceId;
    uniqueDeviceId = v10;

    CFRelease(v9);
  }

  v12 = +[HMDDeviceCapabilities isAppleMediaAccessory];
  v13 = @"00000000-0000-0000-0000-C2EE6102B308";
  if (!v12)
  {
    v13 = @"20BC605A-C33B-4D36-B885-C2EE6102B308";
  }

  v14 = v13;
  if (([(__CFString *)v14 isEqualToString:@"20BC605A-C33B-4D36-B885-C2EE6102B308"]& 1) != 0)
  {
    v15 = @"NonMediaDevice/";
  }

  else if ([(__CFString *)v14 isEqualToString:@"00000000-0000-0000-0000-C2EE6102B308"])
  {
    v15 = @"UnknownMediaDevice/";
  }

  else
  {
    v15 = &stru_283CF9D50;
  }

  v16 = objc_autoreleasePoolPush();
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = HMFGetLogIdentifier();
    *buf = 138543874;
    v153 = v18;
    v154 = 2112;
    v155 = v15;
    v156 = 2112;
    v157 = v14;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Setting media remote ID: %@%@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v16);
  v19 = _mediaRouteIdentifier;
  _mediaRouteIdentifier = v14;

  v20 = +[HMDHomeKitVersion currentVersion];
  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%tu.%tu", objc_msgSend(v20, "majorVersion"), objc_msgSend(v20, "minorVersion")];
  v22 = MEMORY[0x277CCABB0];
  [v21 doubleValue];
  v23 = [v22 numberWithDouble:?];
  v24 = homedVersion;
  homedVersion = v23;

  v25 = +[HMDHomeKitVersion version3];
  v26 = minimumSupportedResidentHomeKitVersion;
  minimumSupportedResidentHomeKitVersion = v25;

  v27 = homedSupportedFeatures;
  homedSupportedFeatures = &unk_283E75770;

  if (isiOSDevice() || isTVOSDevice())
  {
    v28 = [homedSupportedFeatures arrayByAddingObjectsFromArray:&unk_283E75788];
    v29 = homedSupportedFeatures;
    homedSupportedFeatures = v28;
  }

  v30 = +[HMDDeviceCapabilities deviceCapabilities];
  v31 = [v30 supportsFaceClassification];

  if (v31)
  {
    v32 = [homedSupportedFeatures arrayByAddingObject:&unk_283E727D0];
    v33 = homedSupportedFeatures;
    homedSupportedFeatures = v32;
  }

  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"NSDebugDescription", @"NSLocalizedDescription", @"RequestUUID", @"ServerErrorDescription", @"CKErrorDescription", 0}];
  v35 = ckErrorUserInfoKeys;
  ckErrorUserInfoKeys = v34;

  if ((isInternalBuild() & 1) != 0 || ([MEMORY[0x277D0F8E8] productInfo], v36 = objc_claimAutoreleasedReturnValue(), v37 = objc_msgSend(v36, "productVariant"), v36, v37 == 2))
  {
    _overrideBoolValue(&skipAuthPromptDialog, @"allowSkipMFIPrompt");
    _overrideBoolValue(&showAuthDialog, @"showAuthDialog");
    _overrideBoolValue(&disableCloudDataSync, @"DisableCloudDataSync");
    _overrideBoolValue(&disableLegacyCloudDataSync, @"DisableLegacyCloudDataSync");
    _overrideBoolValue(&enableWakeNotifications, @"EnableWakeNotifications");
    _overrideBoolValue(&disableWACBrowser, @"disableWACBrowser");
    _overrideBoolValue(&delayBatchedReadWrite, @"delayBatchedReadWrite");
    _overrideBoolValue(&enableNetworkLogging, @"enableNetworkLogging");
    v151 = 0;
    CFDictionaryGetTypeID();
    v38 = CFPrefs_CopyTypedValue();
    v146 = v2;
    v39 = [MEMORY[0x277CBEB38] dictionary];
    v147 = 0u;
    v148 = 0u;
    v149 = 0u;
    v150 = 0u;
    v145 = v38;
    v40 = v38;
    v41 = [v40 countByEnumeratingWithState:&v147 objects:buf count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v148;
      do
      {
        for (i = 0; i != v42; ++i)
        {
          if (*v148 != v43)
          {
            objc_enumerationMutation(v40);
          }

          v45 = *(*(&v147 + 1) + 8 * i);
          v46 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v45];
          v47 = objc_alloc(MEMORY[0x277CCAD78]);
          v48 = [v40 objectForKey:v45];
          v49 = [v47 initWithUUIDString:v48];

          [v39 setObject:v49 forKey:v46];
        }

        v42 = [v40 countByEnumeratingWithState:&v147 objects:buf count:16];
      }

      while (v42);
    }

    v50 = preferredPrimaryForHome;
    preferredPrimaryForHome = v39;
    v51 = v39;

    v2 = v146;
    CFStringGetTypeID();
    v52 = CFPrefs_CopyTypedValue();
    if (v52)
    {
      v53 = v52;
      v54 = CKContainerEnvironmentFromString();
      v55 = objc_autoreleasePoolPush();
      v56 = HMFGetOSLogHandle();
      v57 = v56;
      if (v54)
      {
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          v58 = HMFGetLogIdentifier();
          *buf = 138543618;
          v153 = v58;
          v154 = 2112;
          v155 = v53;
          _os_log_impl(&dword_229538000, v57, OS_LOG_TYPE_DEFAULT, "%{public}@Overriding CloudKit container environment to %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v55);
        cloudKitContainerEnvironment = v54;
      }

      else
      {
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          v59 = HMFGetLogIdentifier();
          *buf = 138543618;
          v153 = v59;
          v154 = 2112;
          v155 = v53;
          _os_log_impl(&dword_229538000, v57, OS_LOG_TYPE_ERROR, "%{public}@Invalid CloudKit environment %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v55);
      }

      CFRelease(v53);
    }

    *buf = 0;
    Int64 = CFPrefs_GetInt64();
    if (!*buf)
    {
      cloudPushBatchLimit = Int64;
    }

    *buf = 0;
    v61 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maxCloudOperationRetries = v61;
    }

    CFPrefs_GetDouble();
    minimumTimerRecurrence = v62;
    *buf = 0;
    v63 = CFPrefs_GetInt64();
    if (!*buf)
    {
      cloudUploadTimerInterval = v63;
    }

    *buf = 0;
    v64 = CFPrefs_GetInt64();
    if (!*buf)
    {
      cloudUploadMaximumTimerInterval = v64;
    }

    *buf = 0;
    v65 = CFPrefs_GetInt64();
    if (!*buf)
    {
      cloudUploadTimerIntervalExponentialFactor = v65;
    }

    *buf = 0;
    v66 = CFPrefs_GetInt64();
    if (!*buf)
    {
      cloudZoneUploadTimerInitialInterval = v66;
    }

    *buf = 0;
    v67 = CFPrefs_GetInt64();
    if (!*buf)
    {
      cloudZoneUploadTimerInterval = v67;
    }

    *buf = 0;
    CFPrefs_GetInt64();
    *buf = 0;
    v68 = CFPrefs_GetInt64();
    if (!*buf)
    {
      userPushCacheTimeInterval = v68;
    }

    *buf = 0;
    v69 = CFPrefs_GetInt64();
    if (!*buf)
    {
      aggressiveControllerKeyPollInterval = v69;
    }

    *buf = 0;
    v70 = CFPrefs_GetInt64();
    if (!*buf)
    {
      watchdogControllerKeyPollTimeout = v70;
    }

    *buf = 0;
    v71 = CFPrefs_GetInt64();
    if (!*buf)
    {
      controllerKeyPollInterval = v71;
    }

    *buf = 0;
    v72 = CFPrefs_GetInt64();
    if (!*buf)
    {
      keychainPopupTimerInterval = v72;
    }

    *buf = 0;
    v73 = CFPrefs_GetInt64();
    if (!*buf)
    {
      checkRemoteAccessTimeout = v73;
    }

    *buf = 0;
    v74 = CFPrefs_GetInt64();
    if (!*buf)
    {
      hrsCommitTimeoutNanoseconds = 1000000000 * v74;
    }

    *buf = 0;
    v75 = CFPrefs_GetInt64();
    if (!*buf)
    {
      hrsIdleClientTimeoutNanoseconds = 1000000000 * v75;
    }

    *buf = 0;
    v76 = CFPrefs_GetInt64();
    if (!*buf)
    {
      hrsIdleServertTimeoutNanoseconds = 1000000000 * v76;
    }

    *buf = 0;
    v77 = CFPrefs_GetInt64();
    if (!*buf)
    {
      hrsSendInternalRequestTimeoutNanoseconds = 1000000000 * v77;
    }

    *buf = 0;
    v78 = CFPrefs_GetInt64();
    if (!*buf)
    {
      hrsSendInternalRequestToWatchTimeoutNanoseconds = 1000000000 * v78;
    }

    *buf = 0;
    v79 = CFPrefs_GetInt64();
    if (!*buf)
    {
      hrsSendUserRequestTimeoutNanoseconds = 1000000000 * v79;
    }

    *buf = 0;
    v80 = CFPrefs_GetInt64();
    if (!*buf)
    {
      btleReachabilityTimerNanoseconds = 1000000000 * v80;
    }

    *buf = 0;
    v81 = CFPrefs_GetInt64();
    if (!*buf)
    {
      btleReachabilityLeewayNanoseconds = 1000000000 * v81;
    }

    *buf = 0;
    v82 = CFPrefs_GetInt64();
    if (!*buf)
    {
      btleReachabilityProbeReduceFactor = v82;
    }

    *buf = 0;
    v83 = CFPrefs_GetInt64();
    if (!*buf)
    {
      remotePendingResponseTimerNanoseconds = 1000000000 * v83;
    }

    *buf = 0;
    v84 = CFPrefs_GetInt64();
    if (!*buf)
    {
      remotePendingResponseLeewayNanoseconds = 1000000000 * v84;
    }

    *buf = 0;
    v85 = CFPrefs_GetInt64();
    if (!*buf)
    {
      remotePendingResponseDecayScale = v85;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      accessoryConnectivityWaitPeriod = v86;
    }

    *buf = 0;
    v87 = CFPrefs_GetInt64();
    if (!*buf)
    {
      cloudDataSyncInProgressWaitPeriod = v87;
    }

    *buf = 0;
    v88 = CFPrefs_GetInt64();
    if (!*buf)
    {
      controllerKeyNotLandingWaitPeriod = v88;
    }

    *buf = 0;
    v89 = CFPrefs_GetInt64();
    if (!*buf)
    {
      controllerKeyNotLandingShortCircuitWaitPeriod = v89;
    }

    if (isHomePod())
    {
      assistantClientReadWriteTimeoutSeconds = 0x4022000000000000;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      assistantClientReadWriteTimeoutSeconds = v90;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      assistantClientActionSetTimeoutSeconds = v91;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      disableNotificationsDeferPeriod = v92;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      coalesceNotificationsPeriod = v93;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      pendingResponseTickPeriod = v94;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      pendingResponseMaxPeriod = v95;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      delayNotificationsPeriod = v96;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      remoteReachabilityNotificationsDeferPeriod = v97;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      remoteReachabilityDeregistrationDeferPeriod = v98;
    }

    *buf = 0;
    v99 = CFPrefs_GetInt64();
    if (!*buf)
    {
      deviceConnectionKeepAliveTimerPeriod = v99;
    }

    *buf = 0;
    v100 = CFPrefs_GetInt64();
    if (!*buf)
    {
      deviceConnectionKeepAliveResponseTimeoutPeriod = v100;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      pairingInterruptionGracePeriod = v101;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      pairingReconfirmWaitPeriod = v102;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      vendorInfoFetchPeriod = v103;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      attestationInfoFetchPeriod = v104;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      keyTransferBroadcastMaximumDelay = v105;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      mediaBrowserProcessingInterval = v106;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      disableReprivsionBrowsingPeriodInMinutes = v107;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      authServerRetryTimeIntervalInSeconds = v108;
    }

    *buf = 0;
    v109 = CFPrefs_GetInt64();
    if (!*buf)
    {
      authServerRetryCount = v109;
    }

    _overrideNumberArray(&supportedResolutions, @"SupportedResolutions");
    _overrideNumberArray(&supportedVideoCodecs, @"SupportedVideoCodecs");
    _overrideNumberArray(&supportedAudioCodecs, @"SupportedAudioCodecs");
    _overrideNumberArray(&supportedSRTPAuths, @"SupportedSRTPAuths");
    *buf = 0;
    v110 = CFPrefs_GetInt64();
    if (!*buf)
    {
      videoAttributesUpgradeDebouceTimer = v110;
    }

    *buf = 0;
    v111 = CFPrefs_GetInt64();
    if (!*buf)
    {
      videoAttributesDowngradeDebouceTimer = v111;
    }

    _overrideBoolValue(&cameraStreamNetworkAdaptation, @"CameraStreamNetworkAdaptation");
    _overrideNumber(&rtpPtime, @"RTPPtime");
    _overrideNumber(&snapshotResolution, @"SnapshotResolution");
    *buf = 0;
    v112 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumSimultaneousRemoteStreams = v112;
    }

    *buf = 0;
    v113 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumSecureRemoteStreams = v113;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      secureSessionMessageTimeout = v114;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      snapshotCacheValidPeriod = v115;
    }

    *buf = 0;
    v116 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumHomes = v116;
    }

    *buf = 0;
    v117 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumAccessoriesPerHome = v117;
    }

    *buf = 0;
    v118 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumRoomsPerHome = v118;
    }

    *buf = 0;
    v119 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumZonesPerHome = v119;
    }

    *buf = 0;
    v120 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumTriggersPerHome = v120;
    }

    *buf = 0;
    v121 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumActionSetsPerHome = v121;
    }

    *buf = 0;
    v122 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumServiceGroupsPerHome = v122;
    }

    *buf = 0;
    v123 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumUsersPerHome = v123;
    }

    *buf = 0;
    v124 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumRoomsPerZone = v124;
    }

    *buf = 0;
    v125 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumActionsPerActionSet = v125;
    }

    *buf = 0;
    v126 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumServicesPerServiceGroup = v126;
    }

    *buf = 0;
    v127 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumAccessoriesPerBridge = v127;
    }

    *buf = 0;
    v128 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumServicesPerAccessory = v128;
    }

    *buf = 0;
    v129 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumCharacteristicsPerService = v129;
    }

    *buf = 0;
    v130 = CFPrefs_GetInt64();
    if (!*buf)
    {
      maximumDataSyncFragmentSize = v130;
    }

    *buf = 0;
    v131 = CFPrefs_GetInt64();
    if (!*buf)
    {
      bulletinSecureTriggerTimeoutInSeconds = v131;
    }

    *buf = 0;
    v132 = CFPrefs_GetInt64();
    if (!*buf)
    {
      secureTriggerUserResponseTimeoutInSeconds = v132;
    }

    *buf = 0;
    v133 = CFPrefs_GetInt64();
    if (!*buf)
    {
      broadcastKeyRefreshTimeInSeconds = v133;
    }

    *buf = 0;
    v134 = CFPrefs_GetInt64();
    if (!*buf)
    {
      bluetoothGSNMaxValue = v134;
    }

    v135 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    allowAnonymousServerConnections = [v135 BOOLForKey:@"allowAnonymousServerConnections"];

    _overrideNSString(&vendorInfoDatabaseServerURLOverride, @"vendorInfoDatabaseServerURLOverride");
    _overrideNSString(&appleConfigurationServer, @"appleConfigurationServer");
    _overrideNSString(&homeKitConfigurationPath, @"homeKitConfigurationPath");
    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      remoteDeviceMonitorHealthTimerTimeInterval = v136;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      remoteDeviceMonitorRetryTimerMinimumTimeInterval = v137;
    }

    *buf = 0;
    CFPrefs_GetDouble();
    if (!*buf)
    {
      remoteDeviceMonitorRetryTimerMaximumTimeInterval = v138;
    }

    *buf = 0;
    v139 = CFPrefs_GetInt64();
    if (!*buf)
    {
      remoteDeviceMonitorRetryTimerFactor = v139;
    }

    *buf = 0;
    v140 = CFPrefs_GetInt64();
    if (!*buf)
    {
      presenceFeedRefreshInMinutes = v140;
    }

    *buf = 0;
    v141 = CFPrefs_GetInt64();
    if (!*buf)
    {
      presenceMonitorAuditInMinutes = v141;
    }

    *buf = 0;
    v142 = CFPrefs_GetInt64();
    if (!*buf)
    {
      presenceMonitorRefreshGracePeriodInMinutes = v142;
    }

    *buf = 0;
    v143 = CFPrefs_GetInt64();
    if (!*buf)
    {
      startCharacteristicsMonitorWaitPeriod = v143;
    }

    *buf = 0;
    v144 = CFPrefs_GetInt64();
    if (!*buf)
    {
      requestHomeDataSyncRetryPeriodInMinutes = v144;
    }
  }

  objc_autoreleasePoolPop(v2);
}