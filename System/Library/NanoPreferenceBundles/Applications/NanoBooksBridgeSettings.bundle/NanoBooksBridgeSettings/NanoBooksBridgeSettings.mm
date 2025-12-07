void sub_1ED4(id a1, BOOL a2)
{
  v2 = NBDefaultLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Finished showing audiobook store", v3, 2u);
  }
}

void sub_231C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2358(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_23E8;
  block[3] = &unk_206D8;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v2);
}

void sub_23E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

uint64_t sub_2E70(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2E88(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [a2 nb_dsids];
  [v2 unionSet:v3];
}

id NBDefaultLog(uint64_t a1)
{
  if (qword_27BE8 != -1)
  {
    sub_116D4();
  }

  v2 = qword_27BE0;

  return v2;
}

void sub_3218(id a1)
{
  qword_27BE0 = os_log_create("com.apple.iBooks", "NanoBooks");

  _objc_release_x1();
}

id NBInternalSettingsLog(uint64_t a1)
{
  if (qword_27BF8 != -1)
  {
    sub_116E8();
  }

  v2 = qword_27BF0;

  return v2;
}

void sub_32A0(id a1)
{
  qword_27BF0 = os_log_create("com.apple.iBooks", "NanoBooks.InternalSettings");

  _objc_release_x1();
}

id NBComplicationLog(uint64_t a1)
{
  if (qword_27C08 != -1)
  {
    sub_116FC();
  }

  v2 = qword_27C00;

  return v2;
}

void sub_3328(id a1)
{
  qword_27C00 = os_log_create("com.apple.iBooks", "NanoBooks.Complication");

  _objc_release_x1();
}

id NBCachingLog(uint64_t a1)
{
  if (qword_27C18 != -1)
  {
    sub_11710();
  }

  v2 = qword_27C10;

  return v2;
}

void sub_33B0(id a1)
{
  qword_27C10 = os_log_create("com.apple.iBooks", "NanoBooks.Caching");

  _objc_release_x1();
}

id NBPlaybackLog(uint64_t a1)
{
  if (qword_27C28 != -1)
  {
    sub_11724();
  }

  v2 = qword_27C20;

  return v2;
}

void sub_3438(id a1)
{
  qword_27C20 = os_log_create("com.apple.iBooks", "NanoBooks.Playback");

  _objc_release_x1();
}

id NBStreamingLog(uint64_t a1)
{
  if (qword_27C38 != -1)
  {
    sub_11738();
  }

  v2 = qword_27C30;

  return v2;
}

void sub_34C0(id a1)
{
  qword_27C30 = os_log_create("com.apple.iBooks", "NanoBooks.HLSStreaming");

  _objc_release_x1();
}

id NBBDSSyncLog(uint64_t a1)
{
  if (qword_27C48 != -1)
  {
    sub_1174C();
  }

  v2 = qword_27C40;

  return v2;
}

void sub_3548(id a1)
{
  qword_27C40 = os_log_create("com.apple.iBooks", "NanoBooks.BDSSync");

  _objc_release_x1();
}

id NBRecommendationsLog(uint64_t a1)
{
  if (qword_27C58 != -1)
  {
    sub_11760();
  }

  v2 = qword_27C50;

  return v2;
}

void sub_35D0(id a1)
{
  qword_27C50 = os_log_create("com.apple.iBooks", "NanoBooks.Recommendations");

  _objc_release_x1();
}

id NBTesting(uint64_t a1)
{
  if (qword_27C68 != -1)
  {
    sub_11774();
  }

  v2 = qword_27C60;

  return v2;
}

void sub_3658(id a1)
{
  qword_27C60 = os_log_create("com.apple.iBooks", "NanoBooks.Testing");

  _objc_release_x1();
}

id NBReachabilityLog(uint64_t a1)
{
  if (qword_27C78 != -1)
  {
    sub_11788();
  }

  v2 = qword_27C70;

  return v2;
}

void sub_36E0(id a1)
{
  qword_27C70 = os_log_create("com.apple.iBooks", "NanoBooks.Reachability");

  _objc_release_x1();
}

id NBIntentsLog(uint64_t a1)
{
  if (qword_27C88 != -1)
  {
    sub_1179C();
  }

  v2 = qword_27C80;

  return v2;
}

void sub_3768(id a1)
{
  qword_27C80 = os_log_create("com.apple.iBooks", "NanoBooks.Intents");

  _objc_release_x1();
}

uint64_t sub_3C40(uint64_t a1)
{
  qword_27C98 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_3DEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_3E04(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_3E1C(uint64_t a1)
{
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(*(a1 + 32) + 16);
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v18 + 1) + 8 * i);
        v8 = [v7 iCloudDSID];

        if (v8)
        {
          v9 = *(*(*(a1 + 40) + 8) + 40);
          v10 = [v7 iCloudDSID];
          [v9 addObject:v10];
        }

        v11 = [v7 iTunesDSID];
        if (v11)
        {
          v12 = v11;
          v13 = [v7 iTunesDSID];
          v14 = [v7 iCloudDSID];
          v15 = [v13 isEqualToNumber:v14];

          if ((v15 & 1) == 0)
          {
            v16 = *(*(*(a1 + 40) + 8) + 40);
            v17 = [v7 iTunesDSID];
            [v16 addObject:v17];
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }
}

void sub_428C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_42C0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = objc_opt_new();
  v9 = v8;
  if (v6)
  {
    v10 = NBDefaultLog(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_117B0(v6, v10);
    }

    goto LABEL_4;
  }

  v12 = [v5 familyMembers];
  v13 = [v12 count];

  if (!v13)
  {
    v10 = NBDefaultLog(v14);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_4;
    }

    *buf = 0;
    v26 = "You are not part of a Family Circle.";
LABEL_23:
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, v26, buf, 2u);
    goto LABEL_4;
  }

  v15 = [v5 isHeadOfHouseholdSharingPayment];
  if (!v15)
  {
    v10 = NBDefaultLog(v15);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_4;
    }

    *buf = 0;
    v26 = "Head of household disabled sharing. Hiding family members.";
    goto LABEL_23;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v16 = [v5 familyMembers];
  v17 = [v16 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v30;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v30 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v29 + 1) + 8 * i);
        if (([v21 isCurrentSignedInUser] & 1) == 0 && objc_msgSend(v21, "isSharingPurchases"))
        {
          v22 = [WeakRetained _profileImageForFamilyMember:v21];
          [v21 setNb_profileImage:v22];

          [v9 addObject:v21];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v18);
  }

  v10 = NBDefaultLog(v23);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [v5 familyMembers];
    v25 = [v24 count];
    *buf = 134217984;
    v34 = v25;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Retrieved Family Circle containing %lu members", buf, 0xCu);
  }

LABEL_4:

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_45E8;
  v27[3] = &unk_20928;
  v27[4] = WeakRetained;
  v28 = v9;
  v11 = v9;
  dispatch_async(&_dispatch_main_q, v27);
}

id sub_45E8(uint64_t a1)
{
  [*(a1 + 32) setFamilyMembers:*(a1 + 40)];
  [*(a1 + 32) _notifyDidFetchFamilyCircle];
  v2 = *(a1 + 32);

  return [v2 setRefreshing:&__kCFBooleanFalse];
}

void sub_4D74(id a1)
{
  qword_27CA8 = objc_alloc_init(NBJaliscoArtworkCatalogDataSource);

  _objc_release_x1();
}

void sub_52BC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  os_unfair_lock_lock((*(a1 + 32) + 8));
  if (v7 || (v8 = [v6 length]) == 0)
  {
    v9 = NBDefaultLog(v8);
    if (os_log_type_enabled(&v9->super, OS_LOG_TYPE_ERROR))
    {
      sub_118B4(a1, v7, &v9->super);
    }

    v10 = 0;
  }

  else
  {
    v11 = [UIImage imageWithData:v6];
    v12 = *(a1 + 32);
    [*(a1 + 40) scaledFittingSize];
    v13 = [v12 _cacheKeyForSize:*(a1 + 48) withBaseKey:?];
    [*(a1 + 40) scaledFittingSize];
    v9 = [v11 nb_scaleImageToSize:?];

    v14 = [*(a1 + 32) imageDirectoryPath];
    v15 = [v14 stringByAppendingPathComponent:v13];
    v16 = [NSURL fileURLWithPath:v15];

    v17 = UIImagePNGRepresentation(v9);
    v26 = 0;
    v18 = [v17 writeToURL:v16 options:0 error:&v26];
    v19 = v26;

    if (!v18 || v19)
    {
      v21 = NBDefaultLog(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_1183C(v16, v19, v21);
      }
    }

    [*(a1 + 40) scaledFittingSize];
    v10 = [MPArtworkRepresentation representationWithSize:v9 image:?];
    v22 = [*(a1 + 40) cache];
    [v22 setObject:v10 forKey:v13];
  }

  v23 = [*(a1 + 32) pendingTasks];
  [v23 removeObjectForKey:*(a1 + 48)];

  os_unfair_lock_unlock((*(a1 + 32) + 8));
  v24 = objc_retainBlock(*(a1 + 56));
  v25 = v24;
  if (v24)
  {
    (*(v24 + 2))(v24, v10, v7);
  }
}

void sub_5948(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_5A34(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  objc_opt_class();
  v8 = BUDynamicCast();

  if (v8)
  {
    v9 = +[MPMediaQuery nb_storeOnlyAudiobooksQuery];
    v10 = MPMediaItemPropertyStoreID;
    v11 = [NSSet setWithObject:v8];
    v12 = [MPMediaContainmentPredicate predicateWithProperty:v10 values:v11];

    [v9 addFilterPredicate:v12];
    v13 = [v9 items];
    v14 = [v13 firstObject];

    if (v14 || (v15 = *(a1 + 32), [v8 stringValue], v16 = objc_claimAutoreleasedReturnValue(), +[NSSet setWithObject:](NSSet, "setWithObject:", v16), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "fetchItemsForStoreIDs:", v17), v18 = objc_claimAutoreleasedReturnValue(), v17, v16, objc_msgSend(v18, "firstObject"), v14 = objc_claimAutoreleasedReturnValue(), v18, v14))
    {
      v20 = objc_retainBlock(*(a1 + 40));
      v21 = v20;
      if (v20)
      {
        (*(v20 + 2))(v20, v14, a3, a4);
      }
    }

    else
    {
      v14 = NBDefaultLog(v19);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_11930(v8, v14);
      }
    }
  }
}

id sub_5F94(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [v3 adamIDs];
  v5 = [v3 _artworkCatalogsForAdamIDs:v4];

  [objc_opt_class() _fillArtworkMutableArray:v5 toCount:a2];
  v6 = [v5 copy];

  return v6;
}

void sub_62AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 artworkCatalog];

  if (v4)
  {
    v6 = *(a1 + 32);
    v7 = [v3 artworkCatalog];
    [v6 addObject:v7];
  }

  else
  {
    v8 = NBRecommendationsLog(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "The recommended audiobook %@ is missing its artwork catalog.", &v9, 0xCu);
    }
  }
}

void sub_6B64(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_6BDC;
  block[3] = &unk_20A38;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

id sub_6BDC(uint64_t a1)
{
  v2 = [*(a1 + 32) searchDataSource];
  v3 = [v2 items];
  [*(a1 + 32) setSearchResults:v3];

  v4 = *(a1 + 32);

  return [v4 reloadSpecifiers];
}

void sub_7344(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

id NBBundle()
{
  v0 = objc_opt_class();

  return [NSBundle bundleForClass:v0];
}

uint64_t NBIsRunningInStoreDemoMode(uint64_t a1, uint64_t a2)
{
  if (qword_27CC0 != -1)
  {
    sub_11AE8();
  }

  return byte_27CB8;
}

void sub_74BC(id a1)
{
  byte_27CB8 = +[UIApplication isRunningInStoreDemoMode];
  if ((byte_27CB8 & 1) == 0)
  {
    v1 = +[NSUserDefaults standardUserDefaults];
    v2 = [v1 BOOLForKey:@"NBDebugStoreDemoMode"];

    if (v2)
    {
      v4 = NBDefaultLog(v3);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v5 = 0;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "Overriding store demo mode to ON.", v5, 2u);
      }

      byte_27CB8 = 1;
    }
  }
}

uint64_t NBIsRunningInPPTMode(uint64_t a1, uint64_t a2)
{
  if (qword_27CD0 != -1)
  {
    sub_11AFC();
  }

  return byte_27CC8;
}

void sub_75B0(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  byte_27CC8 = [v1 BOOLForKey:@"PPTDevice"];
}

uint64_t NBModeIgnoresAccounts(uint64_t a1, uint64_t a2)
{
  if (qword_27CC0 != -1)
  {
    sub_11AE8();
  }

  if (byte_27CB8)
  {
    v2 = 1;
  }

  else
  {
    if (qword_27CD0 != -1)
    {
      sub_11AFC();
    }

    v2 = byte_27CC8;
  }

  return v2 & 1;
}

BOOL NBModeSupportsNetworking(uint64_t a1, uint64_t a2)
{
  if (qword_27CC0 != -1)
  {
    sub_11AE8();
  }

  return (byte_27CB8 & 1) == 0;
}

uint64_t NBDemoCountrySupportsAudiobooks(uint64_t a1, uint64_t a2)
{
  if (qword_27CE0 != -1)
  {
    sub_11B10();
  }

  return byte_27CD8;
}

void sub_76E4(id a1)
{
  if (qword_27CC0 != -1)
  {
    sub_11AE8();
  }

  if (byte_27CB8 == 1)
  {
    v1 = +[NSUserDefaults standardUserDefaults];
    v2 = [v1 stringForKey:@"NBCountryAllowListPath"];

    v3 = @"/var/mobile/Media/Books/AudiobooksCountryAllowList.plist";
    if (v2)
    {
      v3 = v2;
    }

    v4 = v3;

    v6 = NBDefaultLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v18 = v4;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Loading country allow list from %{public}@.", buf, 0xCu);
    }

    v7 = [NSURL fileURLWithPath:v4];
    v16 = 0;
    v8 = [NSArray arrayWithContentsOfURL:v7 error:&v16];
    v9 = v16;

    if (v8)
    {
      v11 = +[NSLocale currentLocale];
      v12 = [v11 objectForKey:NSLocaleCountryCode];

      v13 = [v8 containsObject:v12];
      byte_27CD8 = v13;
      v14 = NBDefaultLog(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v18 = v12;
        v19 = 1024;
        v20 = byte_27CD8;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Current country is %{public}@. In allow list? %u", buf, 0x12u);
      }
    }

    else
    {
      v15 = NBDefaultLog(v10);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_11B24(v15);
      }

      byte_27CD8 = 1;
    }
  }

  else
  {
    byte_27CD8 = 1;
  }
}

void sub_7F14(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v12 = NBDefaultLog(v6);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_11B68(v7, v12);
    }
  }

  else
  {
    v8 = [*(a1 + 32) isStoreAvailable];
    v9 = [v5 BOOLValue];
    if (v8 != v9)
    {
      v10 = NBDefaultLog(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        sub_11BE0(v5, v10);
      }

      v11 = +[NSUserDefaults standardUserDefaults];
      [v11 setBool:objc_msgSend(v5 forKey:{"BOOLValue") ^ 1, @"NBAudiobookStoreDisabled"}];

      [*(a1 + 32) setStoreAvailable:{objc_msgSend(v5, "BOOLValue")}];
      objc_initWeak(&location, *(a1 + 32));
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_80A4;
      v13[3] = &unk_206D8;
      objc_copyWeak(&v14, &location);
      dispatch_async(&_dispatch_main_q, v13);
      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }
  }
}

void sub_80A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

void sub_8AC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_8AF0(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_8B80;
  block[3] = &unk_206D8;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v2);
}

void sub_8B80(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setRefreshingFamily:0];
  [WeakRetained _updateFooterIfNeeded];
  v1 = +[NBAudiobookRecommendationManager sharedManager];
  [v1 updatePinningManager];

  [WeakRetained reloadSpecifiers];
}

void sub_985C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5 = [v2 pinningManager];
  v3 = [v5 pinnedAudiobooks];
  if ([v3 count])
  {
    v4 = [*(a1 + 32) hasStoreAccount] ^ 1;
  }

  else
  {
    v4 = 1;
  }

  [v2 setEditingButtonHidden:v4 animated:0];
}

void sub_9D58(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = BUDynamicCast();
  if (v4)
  {
    v5 = [*(a1 + 32) _specifierWithItem:v4 showDownloadInfo:*(a1 + 64) showWarningIfAboveQuota:*(a1 + 65) downloadLimit:*(a1 + 56)];
    v6 = [v4 bk_storeID];
  }

  else
  {
    objc_opt_class();
    v7 = BUDynamicCast();
    if (v7)
    {
      v5 = [*(a1 + 32) _specifierWithJaliscoItem:v7 showDownloadInfo:*(a1 + 64) showWarningIfAboveQuota:*(a1 + 65) downloadLimit:*(a1 + 56)];
      v8 = [v7 storeID];
      v6 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v8 nb_uint64_t]);
    }

    else
    {
      v6 = 0;
      v5 = 0;
    }
  }

  v9 = [v5 setProperty:&__kCFBooleanTrue forKey:@"kNanoBooksCellIsEditable"];
  if (v5)
  {
    v9 = [*(a1 + 40) addObject:v5];
  }

  if (v6)
  {
    [*(a1 + 48) addObject:v6];
  }

  else
  {
    v10 = NBDefaultLog(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_11CD4();
    }
  }
}

void sub_9FC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_9FE8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = +[NSMutableArray array];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = *v18;
      do
      {
        v9 = 0;
        do
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = [WeakRetained _suggestionSpecifierWithRecommendation:*(*(&v17 + 1) + 8 * v9)];
          [v5 addObject:v10];

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    [WeakRetained setRecommendationSpecifiers:v5];
    objc_initWeak(&location, WeakRetained);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_A270;
    v14[3] = &unk_206D8;
    objc_copyWeak(&v15, &location);
    v11 = objc_retainBlock(v14);
    if (v11)
    {
      if (+[NSThread isMainThread])
      {
        (v11[2])(v11);
      }

      else
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_A2B0;
        block[3] = &unk_20B10;
        v13 = v11;
        dispatch_async(&_dispatch_main_q, block);
      }
    }

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

void sub_A24C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_A270(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

const __CFString *sub_BA48(unint64_t a1)
{
  if (a1 > 6)
  {
    return @"unknown";
  }

  else
  {
    return off_20B98[a1];
  }
}

void sub_D5BC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 2u);
}

void sub_E334(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_E358(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _combineSearchResults];
    v4 = [v3 _isSearchCancelled];
    if ((v4 & 1) == 0)
    {
      v5 = objc_retainBlock(*(a1 + 40));
      v6 = v5;
      if (v5)
      {
        (*(v5 + 2))(v5);
      }
    }

    v7 = NBDefaultLog(v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = 138412546;
      v10 = v8;
      v11 = 1024;
      v12 = [v3 _isSearchCancelled];
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "Completed search for term '%@' (cancelled? %d)", &v9, 0x12u);
    }
  }
}

void sub_EF64(uint64_t a1, void *a2, _BYTE *a3)
{
  v9 = a2;
  if ([*(a1 + 32) isCancelled])
  {
    *a3 = 1;
  }

  else
  {
    v5 = v9;
    if (!v9)
    {
      goto LABEL_6;
    }

    v6 = *(a1 + 32);
    v7 = v6[4];
    v8 = [v6 _representativeItemFromCollection:v9];
    [v7 addObject:v8];
  }

  v5 = v9;
LABEL_6:
}

void sub_F548(id a1)
{
  qword_27CE8 = objc_alloc_init(NBAudiobookRecommendationManager);

  _objc_release_x1();
}

void sub_F88C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_F8B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = NBRecommendationsLog(v3);
  WeakRetained = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_12248(v3, WeakRetained);
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_122C0(WeakRetained);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained reloadRecommendationsIfNeeded:0];
  }
}

void sub_FAD8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_FBA4;
  v3[3] = &unk_20CA0;
  objc_copyWeak(&v5, (a1 + 40));
  v4 = *(a1 + 32);
  [WeakRetained _reloadRecommendationsFromDefaultsWithCompletion:v3];

  objc_destroyWeak(&v5);
}

void sub_FBA4(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (a2)
  {
    [WeakRetained _notifyAudiobookRecommendationsDidUpdateNotification];
  }

  v4 = objc_retainBlock(*(a1 + 32));
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4);
  }
}

void sub_FCD0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = NBRecommendationsLog(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_12304(a1, v4, v5);
    }
  }
}

void sub_FED0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = dispatch_get_global_queue(21, 0);
  }

  v4 = v3;
  v5 = [*(a1 + 40) hasFetchedInitialRecommendations];
  if (v5)
  {
    v6 = NBRecommendationsLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 48);
      *buf = 138412290;
      v22 = v7;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Will return existing recommendations for request: %@", buf, 0xCu);
    }

    v8 = [*(a1 + 40) recommendations];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10130;
    block[3] = &unk_20D18;
    v18 = *(a1 + 48);
    v9 = *(a1 + 56);
    v19 = v8;
    v20 = v9;
    v10 = v8;
    dispatch_async(v4, block);
  }

  else
  {
    objc_initWeak(buf, *(a1 + 40));
    v11 = *(a1 + 40);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10200;
    v12[3] = &unk_20D40;
    v13 = *(a1 + 48);
    objc_copyWeak(&v16, buf);
    v14 = v4;
    v15 = *(a1 + 56);
    [v11 _reloadRecommendationsFromDefaultsWithCompletion:v12];

    objc_destroyWeak(&v16);
    objc_destroyWeak(buf);
  }
}

void sub_1010C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_10130(uint64_t a1)
{
  v2 = NBRecommendationsLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "Calling completion handler with existing recommendations for request: %@", &v6, 0xCu);
  }

  v4 = objc_retainBlock(*(a1 + 48));
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4, *(a1 + 40));
  }
}

void sub_10200(uint64_t a1)
{
  v2 = NBRecommendationsLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v15 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "Initial fetch complete for request: %@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setHasFetchedInitialRecommendations:1];
    v6 = [v5 recommendations];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1036C;
    block[3] = &unk_20D18;
    v7 = *(a1 + 40);
    v11 = *(a1 + 32);
    v8 = *(a1 + 48);
    v12 = v6;
    v13 = v8;
    v9 = v6;
    dispatch_async(v7, block);
  }
}

void sub_1036C(uint64_t a1)
{
  v2 = NBRecommendationsLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "Calling completion handler with newly fetched recommendations for request: %@", &v6, 0xCu);
  }

  v4 = objc_retainBlock(*(a1 + 48));
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4, *(a1 + 40));
  }
}

void sub_117B0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Family Circle lookup request timed out with error. (%@)", &v2, 0xCu);
}

void sub_1183C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = a1;
  *&v3[12] = 2114;
  *&v3[14] = a2;
  sub_5948(&dword_0, a2, a3, "Failed to save artwork file to %{public}@ (%{public}@)", *v3, *&v3[8], *&v3[16]);
}

void sub_118B4(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = *(a1 + 48);
  *&v3[12] = 2114;
  *&v3[14] = a2;
  sub_5948(&dword_0, a2, a3, "Failed to retrieve artwork image for %{public}@ (%{public}@)", *v3, *&v3[8], *&v3[16]);
}

void sub_11930(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Failed to look up item in media library or jalisco with ID %@", &v2, 0xCu);
}

void sub_119A8(void *a1, void *a2)
{
  v3 = [a1 searchResults];
  *v10 = 134218240;
  *&v10[4] = [v3 count];
  *&v10[12] = 2048;
  *&v10[14] = [a2 row];
  sub_7344(&dword_0, v4, v5, "Attempted to select search audiobook outside of range %lu (%lu).", v6, v7, v8, v9, *v10, *&v10[8], *&v10[16]);
}

void sub_11A58(uint64_t a1, void *a2)
{
  *v8 = 138412546;
  *&v8[4] = a1;
  *&v8[12] = 2048;
  *&v8[14] = [a2 row];
  sub_7344(&dword_0, v2, v3, "Invalid audiobook selected from search (%@) at index %lu.", v4, v5, v6, v7, *v8, *&v8[8], *&v8[16]);
}

void sub_11B68(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "Failed to check store status. %@", &v2, 0xCu);
}

void sub_11BE0(void *a1, NSObject *a2)
{
  v3[0] = 67109120;
  v3[1] = [a1 BOOLValue];
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "Found a new store availability status of %d.", v3, 8u);
}

void sub_11E4C(void *a1, NSObject *a2)
{
  v3 = [a1 progressView];
  [v3 progress];
  v5 = 134217984;
  v6 = v4;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "[progress] Showing progress of %.4f.", &v5, 0xCu);
}

void sub_11F20(void *a1, char a2, NSObject *a3)
{
  v5 = [a1 syncInfoController];
  v6 = [v5 syncInfo];
  v7 = [v6 status];
  if (v7 > 4)
  {
    v8 = @"unknown";
  }

  else
  {
    v8 = off_20BD0[v7];
  }

  v9 = 138543618;
  v10 = v8;
  v11 = 2048;
  v12 = a2 & 1;
  _os_log_debug_impl(&dword_0, a3, OS_LOG_TYPE_DEBUG, "[progress] syncInfoStatus:%{public}@ hasPinnedAudiobooks:%lu.", &v9, 0x16u);
}

void sub_12008(void *a1, int a2, NSObject *a3)
{
  v6 = [a1 syncManager];
  v7 = [v6 audiobooksProgressInfo];
  v8 = [v7 syncState];
  v9 = @"Unknown";
  switch(v8)
  {
    case 0uLL:
      break;
    case 1uLL:
      v9 = @"Idle";
      break;
    case 2uLL:
      v9 = @"Pending";
      break;
    case 3uLL:
      v9 = @"Waiting";
      break;
    case 4uLL:
      v9 = @"Updating";
      break;
    default:
      if (v8 == &stru_20.nsects + 2)
      {
        v9 = @"MetadataSyncing";
      }

      else if (v8 == &stru_20.nsects + 3)
      {
        v9 = @"AssetSyncing";
      }

      else
      {
        v9 = @"unknown";
      }

      break;
  }

  v10 = [a1 syncManager];
  v11 = [v10 audiobooksProgressInfo];
  v12[0] = 67109634;
  v12[1] = a2;
  v13 = 2114;
  v14 = v9;
  v15 = 1024;
  v16 = [v11 syncWaitingSubstate] & 1;
  _os_log_debug_impl(&dword_0, a3, OS_LOG_TYPE_DEBUG, "[progress] isWaitingOnPower:%d syncState:%{public}@ subStatePower:%d", v12, 0x18u);
}

void sub_12248(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Error trying to request to update recommendations: %@", &v2, 0xCu);
}

void sub_12304(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Error updating bitrate for item with adamID %@: %@", &v4, 0x16u);
}

void sub_12390(void *a1, void *a2, NSObject *a3)
{
  v6 = [a1 dsids];
  v7 = [a1 audiobooks];
  v8 = 138412802;
  v9 = v6;
  v10 = 2048;
  v11 = [v7 count];
  v12 = 2048;
  v13 = [a2 row];
  _os_log_error_impl(&dword_0, a3, OS_LOG_TYPE_ERROR, "Attempted to select family audiobook from account %@ outside of range %lu (%lu).", &v8, 0x20u);
}

void sub_12478(void *a1, void *a2, NSObject *a3)
{
  v5 = [a1 dsids];
  v6 = 138412546;
  v7 = v5;
  v8 = 2048;
  v9 = [a2 row];
  _os_log_error_impl(&dword_0, a3, OS_LOG_TYPE_ERROR, "Invalid family audiobook selected from account %@ at index %lu.", &v6, 0x16u);
}